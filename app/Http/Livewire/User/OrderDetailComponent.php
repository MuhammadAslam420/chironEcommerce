<?php

namespace App\Http\Livewire\User;

use Livewire\Component;
use App\Models\Order;
use Illuminate\Support\Facades\Auth;
use  Illuminate\Support\Facades\DB;
use Carbon\Carbon;

class OrderDetailComponent extends Component
{
    public $order_id;

    public function mount($order_id)
    {
        $this->order_id = $order_id;
    }
    public function cancelOrder()
    {
        $order = Order::find($this->order_id);
        $order->order_status = "canceled";
        $order->updated_at = Carbon::now();
        $order->save();
        session()->flash('can_msg', 'Order has been Canceled');
    }
    public function render()
    {
        $order = Order::where('user_id', Auth::user()->id)->where('id', $this->order_id)->first();
        return view(
        'livewire.user.order-detail-component', ['order' => $order])->layout('layouts.base');
    }
}
