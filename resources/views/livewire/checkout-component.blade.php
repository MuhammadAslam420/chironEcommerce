<main class="no-main">
    <div class="ps-breadcrumb">
        <div class="container">
            <ul class="ps-breadcrumb__list">
                <li class="active"><a href="/">Home</a></li>
                <li class="active"><a href="/shop">Shop</a></li>
                <li><a href="javascript:void(0);">Checkout</a></li>
            </ul>
        </div>
    </div>
    <section class="section--checkout">
        <div class="container">
            <h2 class="page__title">Checkout</h2>
            <div class="checkout__content">

                <div class="row">
                    <div class="col-12 col-lg-7">
                        <h3 class="checkout__title">Billing Details</h3>
                        <div class="checkout__form">
                            <form wire:submit.prevent="placeOrder" onsubmit="$('#processing').show()">
                                <div class="form-row">

                                    <div class="col-12 col-lg-12 form-group--block">
                                        <label>Select Shipping Address<span>*</span></label><br>
                                        @php
                                        $customer_addresses=DB::table('customer_addresses')->where('user_id',Auth::user()->id)->get();
                                        @endphp
                                        @if($customer_addresses->count() > 0)
                                        <select class="form-control" name="customer_address" wire:model="delivery_address_id">
                                            <option value="">Select Shipping Address</option>
                                            @foreach($customer_addresses as $add)
                                            <option value="{{$add->id}}">{{$add->address_type}}</option>
                                            @endforeach
                                        </select>
                                        @else
                                        <span><b>Please First Add your Shipping Address</b></span>
                                        @endif
                                        @error('delivery_address_id') <span class="text-danger">{{$message}}</span> @enderror
                                    </div>
                                    <div class="col-12 col-lg-6 form-group--block">
                                        <label>Select Delivery Date<span>*</span></label><br>
                                        <input type="date" class="form-control" name="delivery_date" wire:model="delivery_date">
                                        @error('delivery_date') <span class="text-danger">{{$message}}</span> @enderror
                                    </div>
                                    <div class="col-12 col-lg-6 form-group--block">
                                        <label>Enter Distance<span>*</span></label><br>
                                        <input type="text" class="form-control" name="distance" placeholder="enter your distance in digit from store" wire:model="distance">
                                        @error('distance') <span class="text-danger">{{$message}}</span> @enderror
                                    </div>



                                    <div class="col-12 form-group--block">
                                        <div class="form-group--block">
                                            <label>Select Delivery Time Slot : <span>*</span></label><br>
                                            @foreach($timeslots as $slot)
                                            <input class="form-check-input" type="radio" name="time_slot" id="different-add" value="{{$slot->id}}" wire:model="time_slot_id">&nbsp;&nbsp;&nbsp;
                                            <label class="label-checkbox" for="different-add"><b class="text-heading">{{$slot->start_time}}&nbsp; To &nbsp;{{$slot->end_time}}</b></label>

                                            @endforeach
                                        </div>
                                    </div>
                                    <div class="col-12 form-group--block">
                                        <div class="form-group--block">
                                            <label>Order Pick / Delivery: <span>*</span></label><br>
                                            <input class="form-check-input" type="radio" name="order_type" id="order-type" value="pick_up" wire:model="order_type">&nbsp;&nbsp;&nbsp;
                                            <label class="label-checkbox" for="order-type"><b class="text-heading">Pickup</b></label>
                                            <input class="form-check-input" type="radio" name="order_type" id="order-type" value="delivery" wire:model="order_type">&nbsp;&nbsp;&nbsp;
                                            <label class="label-checkbox" for="order-type"><b class="text-heading">Delivery</b></label>


                                        </div>
                                    </div>
                                    <div class="col-12 form-group--block">
                                        <div class="form-group--block">
                                            <label>Order Note : <span>*</span></label><br>

                                            <textarea name="order_note" id="" cols="30" rows="10" wire:model="order_note" placeholder="Order Note" class="form-control"></textarea>


                                        </div>
                                    </div>

                                </div>


                        </div>
                    </div>
                    <div class="col-12 col-lg-5">
                        <h3 class="checkout__title">Your Order</h3>
                        <div class="checkout__products">


                            <div class="row">
                                <div class="col-8">
                                    <div class="checkout__label">Subtotal</div>
                                </div>
                                <div class="col-4 text-right">
                                    <div class="checkout__label">{{Session::get('checkout')['subtotal']}}د.إ</div>
                                </div>
                            </div>
                            <hr>
                            <div class="checkout__label">Shipping</div>
                            <p>Free shipping</p>
                            <p>Note: </p>
                             @php
                            ($delivery=DB::table('business_settings')->where(['key'=>'delivery_charge'])->first()->value);
                            @endphp
                            <p class="alert alert-warning mb-5 pb-2">(Over 4km Shipping Charges is {{$delivery}}د.إ which was not included in grand total taken at the delivery time.)</p>
                            <div class="row">
                                <div class="col-8">
                                    <div class="checkout__total">Total</div>
                                </div>
                                <div class="col-4 text-right">
                                    <div class="checkout__money">{{Session::get('checkout')['total']}}د.إ</div>
                                </div>
                            </div>
                        </div>
                        <div class="checkout__payment">
                            <div class="checkout__label mb-3">SELECT PAYMENT</div>
                            <div class="form-group--block">
                                <input class="form-check-input" name="payment-method" id="payment-method-visa" value="card" type="radio" wire:model="paymentmode">
                                <label class="label-checkbox" for="payment-method-visa"><b class="text-heading"><span style="margin-left:20px;">Debit / CreditCard Payment</span></b></label>

                            </div>
                            <div class="checkout__payment__detail">Pay Right Now


                                @if($paymentmode == 'card')
                                <h4 class="title-box">Payment Method</h4>
                                <div class="warp-address-billing">
                                    @if(Session::has('message'))
                                    <div class="text-danger">{{Session::get('message')}}</div>
                                    @endif
                                    <p class="row-in-form">
                                        <label for="card-no">Card Number:</label>
                                        <input class="form-control" type="text" name="card-no" value="" placeholder="car number" wire:model="card_no" style=" font-size: 13px;line-height: 19px;height: 43px;padding: 2px 20px;max-width: 300px; width: 100%; border: 1px solid #e6e6e6;">
                                        @error('card_no') <span class="text-danger">{{$message}}</span> @enderror
                                    </p>
                                    <p class="row-in-form">
                                        <label for="exp-month">Expiry Month:</label>
                                        <input class="form-control" type="text" name="exp-mont" value="" placeholder="MM" wire:model="exp_month" style=" font-size: 13px;line-height: 19px;height: 43px;padding: 2px 20px;max-width: 300px; width: 100%; border: 1px solid #e6e6e6;">
                                        @error('exp_month') <span class="text-danger">{{$message}}</span> @enderror
                                    </p>
                                    <p class="row-in-form">
                                        <label for="exp-year">Expiry year:</label>
                                        <input class="form-control" type="text" name="exp-year" value="" placeholder="YY" wire:model="exp_year" style=" font-size: 13px;line-height: 19px;height: 43px;padding: 2px 20px;max-width: 300px; width: 100%; border: 1px solid #e6e6e6;">
                                        @error('exp_year') <span class="text-danger">{{$message}}</span> @enderror
                                    </p>
                                    <p class="row-in-form">
                                        <label for="cvc">CVC:</label>
                                        <input class="form-control" type="password" name="cvc" value="" placeholder="cvc number" wire:model="cvc" style=" font-size: 13px;line-height: 19px;height: 43px;padding: 2px 20px;max-width: 300px; width: 100%; border: 1px solid #e6e6e6;">
                                        @error('cvc') <span class="text-danger">{{$message}}</span> @enderror
                                    </p>
                                </div>
                                @endif

                            </div>
                            <div class="form-group--block">
                                <input class="form-check-input" name="payment-method" id="payment-method-bank" value="cash_on_delivery" type="radio" wire:model="paymentmode">
                                <label class="label-checkbox" for="checkboxCash"><b class="text-heading"><span style="margin-left:20px;">Cash on delivery</span></b></label>
                            </div>
                            <div class="checkout__payment__detail">Order Now and Pay On Delivery
                                <div class="triangle-box">
                                    <div class="triangle">

                                    </div>
                                </div>
                            </div>
                            @error('paymentmode') <span class="text-danger">{{$message}}</span> @enderror
                            <!-- <div class="form-group--block">
                                <input class="form-check-input" type="checkbox" id="checkboxPaypal" value="paypal">
                                <label class="label-checkbox" for="checkboxPaypal"><b class="text-heading">PayPal </b><img src="img/promotion/payment_visa.jpg" alt><img src="img/promotion/payment_mastercart.jpg" alt><img src="img/promotion/payment_electron.jpg" alt><a>What is PayPal?</a></label>
                            </div> -->

                        </div>
                        <!-- <p>Your personal data will be used to process your order, support your experience throughout this website, and for other purposes described in our <span class="text-success">privacy policy.</span></p>
                        <div class="form-group--block">
                            <input class="form-check-input" type="checkbox" id="checkboxAgree" value="agree">
                            <label class="label-checkbox" for="checkboxAgree"><b class="text-heading">I have read and agree to the website
                                    <u class="text-success">terms and conditions </u><span>*</span></b></label>
                        </div> -->
                        @if(Session::has('checkout'))
                        <p class="summary-info grand-total"><span>Grand Total</span> <span class="grand-total-price">Rs. {{Session::get('checkout')['total']}}</span></p>
                        @endif
                        @if($errors->isEmpty())
                        <div wire:ignore id="processing" style="font-size:22px; margin-bottom:20px; padding-left:27px; color:green; display:none;">
                            <i class="fa fa-spinner fa-pulse fa-fw"></i>
                            <span>Processing....</span>

                        </div>
                        @endif
                        <button type="submit" class="checkout__order">Place an order</button>
                    </div>
                    </form>
                </div>
            </div>
        </div>
    </section>
</main>