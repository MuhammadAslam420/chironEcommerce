<?php

namespace App\Http\Livewire;

use Livewire\Component;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Mail;
use App\Models\Order;
use Cart;
use App\Models\Product;
use App\Models\OrderItem;
use App\Models\Shipping;
use App\Models\Transaction;
use App\Mail\OrderConfirmation;
use Stripe;
use Illuminate\Support\Facades\DB;
use App\Http\Livewire\Exception;
use App\Models\CustomerAddress;
use App\Models\TimeSlot;
use App\CentralLogics\helpers;
use App\Models\OrderDetail;

class CheckoutComponent extends Component
{
    public $thankyou;
    public $time_slot_id;
    public $paymentmode;
    public $order_note;
    public $order_type;
    public $delivery_address_id;
    public $delivery_date;
    public $distance;


    public $card_no;
    public $exp_month;
    public $exp_year;
    public $cvc;


    public function update($fields)
    {
        $this->validateOnly($fields, [
            'paymentmode' => 'required',

        ]);

        if ($this->paymentmode == 'card') {
            $this->validateOnly($fields, [
                'card_no' => 'required|numeric',
                'exp_month' => 'required|numeric',
                'exp_year' => 'required|numeric',
                'cvc' => 'required|numeric',
            ]);
        }
    }
    public function placeOrder()
    {
        $this->validate([
            'paymentmode' => 'required',
        ]);
        if ($this->paymentmode == 'card') {
            $this->validate([
                'card_no' => 'required|numeric',
                'exp_month' => 'required|numeric',
                'exp_year' => 'required|numeric',
                'cvc' => 'required|numeric',
            ]);
        }
        $order = new Order();
        $order->user_id = Auth::user()->id;


        if (!session()->get('coupon')) {
            $order->coupon_discount_amount = 0;
            $order->coupon_discount_title = null;
        } else {
            $order->coupon_discount_amount = session()->get('checkout')['discount'];
            $order->coupon_discount_title = session()->get('coupon')['title'];
        }
        $order->total_tax_amount = session()->get('checkout')['tax'];
        $order->order_amount = session()->get('checkout')['total'];
        if ($this->paymentmode == 'card') {
            $order->order_status = 'pending';
            $order->payment_status = 'paid';
        } else {
            $order->order_status = 'pending';
            $order->payment_status = 'unpaid';
        }

        if (!session()->get('coupon')) {
            $order->coupon_discount_title = '';
        } else {
            $order->coupon_code = session()->get('coupon')['code'];
        }

        $order->payment_method = $this->paymentmode;
        $order->transaction_reference = null;
        $order->order_note = $this->order_note;
        $order->order_type = $this->order_type;
        $order->branch_id = 1;
        $order->delivery_address_id = $this->delivery_address_id;
        $order->time_slot_id = $this->time_slot_id;
        $order->delivery_date = $this->delivery_date;
        $order->delivery_address = json_encode(CustomerAddress::find([$this->delivery_address_id]) ?? null);
        $order->date = date('y-m-d');
        if ($this->order_type == 'delivery') {
            if ($this->distance <= 4) {
                $order->delivery_charge = 0;
            } else {
                $order->delivery_charge = helpers::get_delivery_charge($this->distance);
            }
        } else {
            $order->delivery_charge = 0;
        }
        $order->save();

        foreach (Cart::instance('cart')->content() as $item) {

            $orderItem = new OrderDetail();
            $orderItem->product_id = $item->id;
            $orderItem->order_id = $order->id;
            $orderItem->price = $item->price;
            $orderItem->product_details = json_encode(['id' => $item->id, 'name' => $item->name, 'description' => $item->description]);
            $orderItem->variation = '[{"type":null}]';
            if ($item->discount_type == 'percent') {
                $order->discount_on_product = ($item->price / 100) * $item->discount;
                $order->discount_type = $item->discount_type;
            } else {
                $order->discount_on_product = $item->discount;
                $order->discount_type = 'discount_on_product';
            }

            $orderItem->quantity = $item->qty;
            $orderItem->tax_amount = session()->get('checkout')['tax'];
            $orderItem->unit = 'kg';

            Product::where('id', $item->id)->decrement('total_stock', $item->qty);

            $orderItem->is_stock_decreased = 1;
            $orderItem->time_slot_id = $this->time_slot_id;
            $orderItem->delivery_date = $this->delivery_date;
            $orderItem->save();
        }


        if ($this->paymentmode  == 'card') {
            $stripe = Stripe::make(env('STRIPE_KEY'));

            try {
                $token = $stripe->tokens()->create([
                    'card' => [
                        'number' => $this->card_no,
                        'exp_month' => $this->exp_month,
                        'exp_year' => $this->exp_year,
                        'cvc' => $this->cvc
                    ]
                ]);
                if (!isset($token['id'])) {
                    session()->flash('message', 'Your Input card information is not correct please try later with valid card!');
                    $this->thankyou = 0;
                }
                $user = CustomerAddress::where('id', $this->delivery_address_id)->first();
                $customer = $stripe->customers()->create([

                    'name' => Auth::user()->f_name . '' . Auth::user()->l_name,
                    'email' => Auth::user()->email,
                    'phone' => $user->contact_person_number,
                    'address' => [
                        'line1' => $user->address,
                        'city' => $user->latitude,
                        'state' => $user->longitude,
                        'country' => 'AE'
                    ],

                    'source' => $token['id']
                ]);




                $charge = $stripe->charges()->create([
                    'customer' => $customer['id'],
                    'currency' => 'AED',
                    'amount' => session()->get('checkout')['total'],
                    'description' => 'Payment for order number' . $order->id

                ]);
                if ($charge['status'] == 'succeeded') {

                    $this->resetcart();
                } else {
                    session()->flash('message', 'Error in transaction');
                    $this->thankyou = 0;
                }
            } catch (Exception $e) {
                session()->flash('message', $e->getMessage());
                $this->thankyou = 0;
            }
        }


        $this->orderConfirmationMail($order);
        $this->resetcart();
    }
    public function resetcart()
    {
        $this->thankyou = 1;
        Cart::instance('cart')->destroy();
        session()->forget('checkout');
    }

    public function orderConfirmationMail($order)
    {
        Mail::to(Auth::user()->email)->send(new OrderConfirmation($order));
    }

    public function verifyForCheckout()
    {
        if (!Auth::check()) {
            return redirect()->route('login');
        } else if ($this->thankyou) {
            return redirect()->route('thankyou');
        } else if (!session()->get('checkout')) {
            return redirect()->route('product.cart');
        }
    }
    public function render()
    {

        $timeslots = TimeSlot::all();
        $this->verifyForCheckout();

        return view('livewire.checkout-component',['timeslots'=>$timeslots])->layout('layouts.base');
    }
}
