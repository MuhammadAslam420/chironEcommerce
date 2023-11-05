<main class="no-main">
    <div class="ps-breadcrumb">
        <div class="container">
            <ul class="ps-breadcrumb__list">
                <li class="active"><a href="/">Home</a></li>
                <li class="active"><a href="/shop">Shop</a></li>
                <li><a href="javascript:void(0);">Shopping Cart</a></li>
            </ul>
        </div>
    </div>
    <section class="section--shopping-cart">
        <div class="container shopping-container">
            <h2 class="page__title">Shopping Cart</h2>
            <div class="shopping-cart__content">
                <div class="row m-0">
                    @if(Cart::instance('cart')->count() > 0)
                    <div class="col-12 col-lg-8">
                        <div class="shopping-cart__products">
                            <div class="shopping-cart__table">
                                <div class="shopping-cart-light">
                                    <div class="shopping-cart-row">
                                        <div class="cart-product">Product</div>
                                        <div class="cart-price">Price</div>
                                        <div class="cart-quantity">Quantity</div>
                                        <div class="cart-total">Total</div>
                                        <div class="cart-action">Delete</div>
                                        <div class="cart-action">SaveForLater</div>
                                    </div>
                                </div>

                                <div class="shopping-cart-body">
                                    @foreach(Cart::instance('cart')->content() as $item)
                                    <div class="shopping-cart-row">
                                        <div class="cart-product">
                                            <div class="ps-product--mini-cart"><a href="{{route('product-detail',['id'=>$item->model->id])}}"><img class="ps-product__thumbnail" src="https://app.chiron.ae/storage/app/public/product/{{json_decode($item->model['image'],true)[0]}}" alt="{{$item->model->name}}" /></a>
                                                <div class="ps-product__content">
                                                    <h5><a class="ps-product__name" href="{{route('product-detail',['id'=>$item->model->id])}}">{{ Str::limit($item->model->name,10)}}</a></h5>
                                                    <p class=" ps-product__unit">{{$item->model->unit}}</p>
                                                    <p class="ps-product__soldby">Sold by <span>Chiron</span></p>
                                                    <div class="def-number-input number-input safari_only">
                                                        <a href="#" class="minus" wire:click.prevent="decreaseQuantity('{{$item->rowId}}')"><i class="fa fa-minus text-light p-1" style="background:red;"></i></a>
                                                        <input type="number" class="quantity" min="0" value="{{$item->qty}}" data-max="120" pattern="[0-9]*" />
                                                        <a href="#" class="plus" wire:click.prevent="increaseQuantity('{{$item->rowId}}')"><i class="fa fa-plus text-light p-1" style="background:red;"></i></a>
                                                    </div><span class="ps-product__total">Total: <span>د.إ{{Cart::subtotal()}} </span></span>
                                                </div>

                                            </div>
                                        </div>

                                        <div class="cart-price">
                                            @if($item->model->discount > 0)
                                            <span class="ps-product__price">{{($item->model->price - ($item->model->discount /100)*$item->model->price)}}&nbsp;Today Deals</span>
                                            @else
                                            <span class="ps-product__price">د.إ{{$item->model->price}}</span>
                                            @endif
                                        </div>
                                        <div class="cart-quantity">
                                            <div class="def-number-input number-input safari_only">
                                                <a href="#" class="minus" wire:click.prevent="decreaseQuantity('{{$item->rowId}}')"><i class="fa fa-minus text-light p-1" style="background:red;"></i></a>
                                                <input type="number" class="quantity" min="0" value="{{$item->qty}}" data-max="120" pattern="[0-9]*" />
                                                <a href="#" class="plus" wire:click.prevent="increaseQuantity('{{$item->rowId}}')"><i class="fa fa-plus text-light p-1" style="background:red;"></i></a>
                                            </div>
                                        </div>
                                        <div class="cart-total"> <span class="ps-product__total">د.إ{{Cart::subtotal()}} </span>
                                        </div>
                                        <div class="cart-action"> <a href="#" class="btn btn-danger" wire:click.prevent="destroy('{{$item->rowId}}')">
                                                <i class="fa fa-trash text-light" aria-hidden="true"></i>

                                            </a>

                                        </div>
                                        <div class="cart-action">
                                            <a href="#" class="text-success" style="font-weight:700;font-size:9px;" wire:click.prevent="switchToSaveForLater('{{$item->rowId}}')">Save For Later</a>

                                        </div>
                                    </div>
                                    @endforeach

                                </div>

                            </div>


                            <div class="row">
                                @if(!Session::has('coupon'))
                                <div class="col-12 col-lg-6">

                                    <div class="form-group--block">
                                        <input class="form-check-input" name="have-code" id="have-code" value="1" type="checkbox" wire:model="havecouponCode">
                                        <label class="label-checkbox" for="have-code"><b class="text-heading">I Have Coupon Code?</b></label>
                                    </div>
                                    @if($havecouponCode == 1)
                                    <div class="shopping-cart__block">

                                        <h3 class="block__title">Using A Promo Code?</h3>
                                        <form wire:submit.prevent="applyCouponCode">
                                            @if(Session::has('message'))
                                            <div class="alert alert-success" role="alert">
                                                <p>{{Session::get('message')}}</p>
                                            </div>
                                            @endif
                                            <div class="input-group">
                                                <input class="form-control" type="text" name="coupon-code" wire:model="couponCode">
                                                <div class="input-group-append">
                                                    <button type="submit" class="btn">Apply</button>
                                                </div>
                                            </div>
                                        </form>
                                    </div>
                                    @endif
                                    @endif
                                </div>

                            </div>
                        </div>
                    </div>
                    @else
                    <div class="col-12 col-lg-8">
                        <h2>Your Cart is empty</h2>
                        <h3>continue shopping by clicking shop Icon</h3>
                        <p><a href="/shop" class="btn btn-danger"><i class="fa fa-home fa-4x text-light"></i></a></p>
                    </div>
                </div>
                @endif
                <div class="col-12 col-lg-4">
                    <div class="shopping-cart__right">
                        @if(Session::has('coupon'))
                        <div class="shopping-cart__total">

                            <p class="shopping-cart__subtotal"><span class="title">Discount ({{Session::get('coupon')['code']}}) <a href="#" wire:click.prevent="removeCoupon"><i class="fa fa-times text-danger fa-2x"></i></a> </span><b class="index"> -Rs.{{number_format($dis,2)}}</b></p>
                            <p class="shopping-cart__subtotal"><span class="title">SubTotal with Discount</span><b class="index">د.إ{{number_format($subtotalAfterDiscount,2)}}</b></p>
                            <p class="shopping-cart__subtotal"><span class="title">Tax ({{config('cart.tax')}}%)</span><b class="index">د.إ{{number_format($taxAfetrDiscount,2)}}</b></p>
                            <p class="shopping-cart__shipping">Shipping<br><span>FREE SHIPPING</span></p>
                            <p class="shopping-cart__subtotal"><span class="title">Total</span><b class="index">د.إ{{number_format($totalAfterDiscount,2)}}</b></p>

                        </div>
                        @else
                        <div class="shopping-cart__total">


                            <p class="shopping-cart__subtotal"><span>Subtotal</span><span class="price">د.إ{{Cart::subtotal()}}</span></p>
                            <p class="shopping-cart__subtotal"><span>Tax</span><span class="price">د.إ{{Cart::tax()}}</span></p>
                            <p class="shopping-cart__shipping">Shipping<br><span>FREE SHIPPING</span></p>
                            <p class="shopping-cart__subtotal"><span><b>TOTAL</b></span><span class="price-total">د.إ{{Cart::total()}}</span></p>

                        </div>

                        @endif<a class="btn shopping-cart__checkout" href="/checkout">Proceed to Checkout</a>
                    </div>
                </div>
            </div>
            <div class="row">
                <h2 class="text-primary text-center">{{Cart::instance('saveForLater')->count()}} Items(s) Save For Later Items</h2>
                @if(Session::has('success_message'))
                <div class="alert alert-success">
                    <strong>Success</strong> {{Session::get('success_message')}}
                </div>
                @endif
                @if(Cart::instance('saveForLater')->count() > 0)
                <div class="col-12 col-lg-8">
                    <div class="shopping-cart__products">
                        <div class="shopping-cart__table">
                            <div class="shopping-cart-light">
                                <div class="shopping-cart-row">
                                    <div class="cart-product">Product</div>
                                    <div class="cart-quantity">Quantity</div>
                                    <div class="cart-price">Price</div>
                                    <div class="cart-total">MoveToCart</div>
                                    <div class="cart-action">Delete</div>
                                </div>
                            </div>

                            <div class="shopping-cart-body">
                                @foreach(Cart::instance('saveForLater')->content() as $item)
                                <div class="shopping-cart-row">
                                    <div class="cart-product">
                                        <div class="ps-product--mini-cart"><img class="ps-product__thumbnail" src="https://app.chiron.ae/storage/app/public/product/{{json_decode($item->model['image'],true)[0]}}" alt=""><a href="{{route('product-detail',['id'=>$item->model->id])}}"></a>
                                            <div class="ps-product__content">
                                                <h5><a class="ps-product__name" href="{{route('product-detail',['id'=>$item->model->id])}}">{{$item->model->name}}</a></h5>
                                                <p class=" ps-product__unit">{{$item->model->unit}}</p>
                                                <p class="ps-product__soldby">Sold by <span>Chiron</span></p>
                                                <p class="ps-product__meta">Price: <span class="ps-product__price">د.إ{{$item->model->price}}</span></p>

                                            </div>

                                        </div>
                                    </div>
                                    <div class="cart-price"><span class="ps-product__price">{{$item->qty}}</span>
                                    </div>
                                    <div class="cart-price"><span class="ps-product__price">د.إ{{$item->model->price}}</span>
                                    </div>


                                    <div class="cart-action"> <a href="#" class="btn btn-success" wire:click.prevent="moveToCart('{{$item->rowId}}')">
                                            <i class="fa fa-shopping-cart text-light" aria-hidden="true"></i>

                                        </a>
                                    </div>
                                    <div class="justify-content-end mr-3 mt-4">
                                        <a href="#" wire:click.prevent="removeFromSave('{{$item->rowId}}')" class="btn btn-warning" title="">
                                            <span>Save To Later</span>
                                            <i class="fa fa-trash" aria-hidden="true"></i>
                                        </a>
                                    </div>

                                </div>
                                @endforeach

                            </div>

                        </div>

                    </div>
                </div>
                @else
                <div class="col-12 col-lg-8">
                    <p>No item in Save For Later</p>
                </div>
            </div>
            @endif
        </div>
        </div>
        </div>
    </section>
</main>