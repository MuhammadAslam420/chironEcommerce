<main class="no-main">
    <div class="container p-5">
        @if(Session::has('can_msg'))
        <div class="alert alert-danger">{{Session::get('can_msg')}}</div>
        @endif
        <style>
            .modal-content {
                background-color: skyblue;
                border-color: #42469d;
                border-radius: 1rem
            }

            @media (min-width: 576px) {
                .modal-dialog {
                    max-width: 750px;
                    margin: 1.75rem auto
                }
            }

            .show {
                padding: 0
            }

            .modal-header {
                border-bottom: none;
                text-align: center
            }

            .modal-header .close {
                padding: 1rem 1rem;
                margin: -1rem -1rem -1rem 0;
                color: #fff
            }

            :-moz-any-link:focus {
                outline: none
            }

            .modal-title {
                line-height: 3rem
            }

            .modal-body {
                padding: 1rem
            }

            #progressbar {
                margin-bottom: 3vh;
                overflow: hidden;
                color: #ed1d2d;
                padding-left: 0px;
                margin-top: 3vh
            }

            #progressbar li {
                list-style-type: none;
                font-size: 1.6rem;
                width: 25%;
                float: left;
                position: relative;
                font-weight: 700;
                color: #ed1d2d;
            }

            #progressbar #step1:before {
                content: "";
                color: #ed1d2d;
                width: 20px;
                height: 20px;
                margin-left: 0px !important
            }

            #progressbar #step2:before {
                content: "";
                color: #ed1d2d;
                width: 20px;
                height: 20px;
                margin-left: 32%
            }

            #progressbar #step3:before {
                content: "";
                color: #ed1d2d;
                width: 20px;
                height: 20px;
                margin-right: 32%
            }

            #progressbar #step4:before {
                content: "";
                color: #ed1d2d;
                width: 20px;
                height: 20px;
                margin-right: 0px !important
            }

            #progressbar li:before {
                line-height: 29px;
                display: block;
                font-size: 12px;
                background: rgb(151, 149, 149);
                border-radius: 50%;
                margin: auto;
                z-index: -1;
                margin-bottom: 1vh
            }

            #progressbar li:after {
                content: '';
                height: 3px;
                background: rgb(151, 149, 149, 0.651);
                position: absolute;
                left: 0%;
                right: 0%;
                margin-bottom: 2vh;
                top: 8px;
                z-index: 1
            }

            .progress-track {
                padding: 0 8%
            }

            #progressbar li:nth-child(2):after {
                margin-right: auto
            }

            #progressbar li:nth-child(1):after {
                margin: auto
            }

            #progressbar li:nth-child(3):after {
                float: left;
                width: 68%
            }

            #progressbar li:nth-child(4):after {
                margin-left: auto;
                width: 132%
            }

            #progressbar li.active:before,
            #progressbar li.active:after {
                background: #ed1d2d;
            }

            #three {
                font-size: 1.6rem
            }

            @media (max-width: 767px) {
                #three {
                    font-size: 1rem
                }
            }

            .details {
                padding: 2rem;
                font-size: 1.6rem;
                line-height: 3.5rem
            }

            @media (max-width: 767px) {
                .details {
                    padding: 2rem 0;
                    font-size: 2rem;
                    line-height: 2.5rem
                }
            }

            button:active {
                outline: none
            }

            button:focus {
                outline: none
            }
        </style>
        <div claass="row">
            <div class="container p-5">
                <div class="col-md-12">
                    <div class="card">
                        <div class="card-header" style="background:#ed1d2d;color:white;">
                            <div class="card-title">
                                <h2 class="text-light">Order Detail</h2>
                            </div>
                        </div>
                        <div class="card-body">
                            <table class="table table-striped">

                                <thead>
                                    <tr>
                                        <th class="justify-content-center"><a href="{{route('user.orders')}}" class="btn btn-info justify-content-center text-center">
                                                <h4 class="text-center text-light">My Orders</h4>
                                            </a> </th>
                                        <th class="justify-content-center"><button type="button" data-toggle="modal" data-target="#myModal" class="btn btn-primary trigger">
                                                <h4 class="text-center text-light">Track Your Order</h4>
                                            </button></th>
                                        <th class="justify-content-center">
                                            @if($order->order_status =='pending')
                                            <a href="#" wire:click.prevent="cancelOrder" class="btn btn-danger">
                                                <h4 class="text-center text-light">Canceled Order</h4>
                                            </a>
                                            @endif
                                        </th>
                                    </tr>
                                </thead>
                            </table>

                            <table class="table">
                                <tr>
                                    <th>Order Id</th>
                                    <td>{{$order->id}}</td>
                                </tr>
                                <tr>
                                    <th>Order Date</th>
                                    <td>{{$order->created_at}}</td>
                                </tr>
                                <tr>
                                    <th>Order Status</th>
                                    <td>{{$order->order_status}}</td>
                                </tr>
                                @if($order->order_status =='delivered')
                                <tr>
                                    <th>Order Delivery Date</th>
                                    <td>{{$order->delivery_date}}</td>
                                    @elseif($order->order_status == 'canceled')
                                    <th>Order Canceled date</th>
                                    <td>{{$order->canceled_date}}</td>
                                    @endif
                                </tr>

                            </table>
                            <div class="modal fade" id="myModal" role="dialog">
                                <div class="modal-dialog modal-dialog-centered">
                                    <div class="modal-content">
                                        <!-- Modal Header -->
                                        <div class="modal-header justify-content-start">
                                            <button type="button" class="close" data-dismiss="modal">&times;</button>
                                        </div> <!-- Modal body -->
                                        <div class="modal-body">
                                            <h4 class="modal-title text-center p-5 "> Chiron Order Status Number-{{$order->id}}</h4>
                                            <div class="progress-track">
                                                <ul id="progressbar">
                                                    @if($order->status ==='ordered')
                                                    <li class="step0 active " id="step1" id="three">Order placed</li>
                                                    <li class="step0  text-center" id="step2">Farword To Shipping Team</li>
                                                    <li class="step0  text-right" id="step3"><span>On The Way</span></li>
                                                    <li class="step0 text-right" id="step4">Delivered</li>
                                                    @elseif($order->status ==='process')
                                                    <li class="step0 active " id="step1">Order placed</li>
                                                    <li class="step0 active text-center" id="step2" id="three">Farword To Shipping Team</li>
                                                    <li class="step0  text-right" id="step3"><span>On The Way</span></li>
                                                    <li class="step0 text-right" id="step4">Delivered</li>
                                                    @elseif($order->status ==='dispatch')
                                                    <li class="step0 active " id="step1">Order placed</li>
                                                    <li class="step0 active text-center" id="step2">Farword To Shipping Team</li>
                                                    <li class="step0  text-right" id="step3"><span id="three">On The Way</span></li>
                                                    <li class="step0 text-right" id="step4">Delivered</li>
                                                    @elseif($order->status ==='onaway')
                                                    <li class="step0 active " id="step1">Order placed</li>
                                                    <li class="step0 active text-center" id="step2">Farword To Shipping Team</li>
                                                    <li class="step0 active text-right" id="step3"><span id="three">On The Way</span></li>
                                                    <li class="step0 text-right" id="step4">Delivered</li>
                                                    @elseif($order->status === 'delivered')
                                                    <li class="step0 active " id="step1">Order placed</li>
                                                    <li class="step0 active text-center" id="step2">Farword To Shipping Team</li>
                                                    <li class="step0 active text-right" id="step3"><span>On The Way</span></li>
                                                    <li class="step0 active text-right" id="step4" id="three">Delivered</li>
                                                    @elseif($order->status ==='cancel')
                                                    <li class="step0 text-right" id="step4">Your Order is Canceled</li>
                                                    @else

                                                    @endif
                                                </ul>
                                            </div>

                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                    </div>
                </div>
            </div>
            <div class="container p-5">
                <div class="col-md-12">
                    <div class="card">
                        <div class="card-header" style="background:#ed1d2d;color:white;">
                            <h2 class="text-light">Order Items</h2>
                        </div>

                        <div class="card-body">
                            <div class="wrap-iten-in-cart">
                                <h3 class="box-title">Products Detail</h3>
                                <ul class="products-cart" style="list-style:none;">
                                    @foreach ($order->details as $item)
                                    <li class="pr-cart-item">
                                        <div class="product-image">
                                            <figure><img src="https://app.chiron.ae/storage/app/public/product/{{json_decode($item->product['image'],true)[0]}}" alt="{{$item->product->name}}" style="width:175px; height:125px;"></figure>
                                        </div>
                                        <div class="product-name">
                                            <a class="link-to-product" href="{{route('product-detail',['id'=>$item->product->id])}}">
                                                <h4>Item Name:&nbsp;{{$item->product->name}}</h4>
                                            </a>
                                        </div>
                                        <div class="price-field produtc-price">
                                            <h4>price:&nbsp;{{$item->price}} د.إ</h4>
                                        </div>
                                        <div class="quantity">
                                            <h4>Item Quantity:&nbsp;{{$item->quantity}}</h4>
                                        </div>
                                        <div class="price-field sub-total">
                                            <h4>price:&nbsp;{{$item->price * $item->quantity}} د.إ</h4>
                                        </div>
                                        @if($order->order_status =='delivered')
                                        <div class="price-field sub-total">
                                            <h4><a href="{{route('user.review',['order_item_id'=>$item->product->id,'order_id'=>$order->id])}}" class="btn btn-success">Write Review</a></h4>
                                        </div>
                                        @endif

                                    </li>
                                    @endforeach

                                </ul>

                            </div>
                            <div class="summary">
                                <div class="order-summary">
                                    <h4 class="title-box">Order Summary</h4>
                                    <p class="summary-info"><span class="title">Grand Total:&nbsp;</span><b class="index">{{$order->order_amount + $order->delivery_charge + $order->coupon_discount_amount}} د.إ</b></p>
                                    <p class="summary-info"><span class="title">Discount:&nbsp;</span><b class="index">{{$order->coupon_discount_amount}} د.إ</b></p>
                                    <p class="summary-info"><span class="title">Tax:&nbsp;</span><b class="index">{{$order->total_tax_amount}} د.إ</b></p>
                                    @if($order->delivery_charge > 0)
                                     <p class="summary-info"><span class="title">Shipping Charges:&nbsp;</span><b class="index">{{$order->delivery_charge}}</b></p>
                                    @else
                                    <p class="summary-info"><span class="title">Shipping Charges:&nbsp;</span><b class="index">Free Shipping</b></p>
                                    @endif
                                    <p class="summary-info"><span class="title">Payable Order Amount:&nbsp;</span><b class="index">{{$order->order_amount + $order->delivery_charge }} د.إ</b></p>

                                </div>
                            </div>
                        </div>
                    </div>
                </div>

            </div>
            <div class="container p-5">
                <div class="col-md-12">
                    <div class="card">
                        <div class="card-header" style="background:#ed1d2d;color:white;">
                            <h2 class="text-light">Billing & Shipping Details</h2>

                        </div>
                        <div class="card-body">
                            <table class="table table-responsive">
                                @php
                                $customer=DB::table('customer_addresses')->where('id',$order->delivery_address_id)->first();
                                @endphp
                                <tr>
                                    <th>First Name</th>
                                    <td>{{Auth::user()->f_name}}</td>

                                    <th>Last Name</th>
                                    <td>{{Auth::user()->l_name}}</td>
                                </tr>
                                <tr>
                                    <th>Email </th>
                                    <td>{{Auth::user()->email}}</td>

                                    <th>Mobile</th>
                                    <td>{{$customer->contact_person_number}}</td>
                                </tr>
                                <tr>
                                    <th>Address</th>
                                    <td>{{$customer->address}}</td>
                                    <th>Latitude</th>
                                    <td>{{$customer->latitude}}</td>

                                    <th>Longitude</th>
                                    <td>{{$customer->longitude}}</td>

                                </tr>
                                <tr>

                                </tr>
                                <tr>


                                </tr>

                            </table>

                        </div>
                    </div>

                </div>

            </div>


        </div>
    </div>
</main>