<div class="button-icon btn-cart-header">
    <i class="fa fa-shopping-cart"></i>
    @if(Cart::instance('cart')->count()>0)
    <span class="badge bg-warning">{{Cart::instance('cart')->count()}}</span>
    @else
    <span class="badge bg-warning">0</span>
    @endif
    @if(Cart::instance('cart')->count() > 0)
    <div class="mini-cart">
        <div class="mini-cart--content">
            <div class="mini-cart--overlay"></div>
            <div class="mini-cart--slidebar cart--box">
                <div class="mini-cart__header">
                    <div class="cart-header-title">
                        <h5>{{Cart::instance('cart')->count()}}</h5><a class="close-cart" href="javascript:void(0);"><i class="fa fa-arrow-right"></i></a>

                    </div>
                </div>
                <div class="mini-cart__products">
                    <div class="out-box-cart">
                        <div class="triangle-box">
                            <div class="triangle"></div>
                        </div>
                    </div>
                    <ul class="list-cart">
                        @foreach(Cart::instance('cart')->content() as $item)
                        <li class="cart-item">
                            <div class="ps-product--mini-cart"><a href="{{route('product-detail',['id'=>$item->model->id])}}"><img class="ps-product__thumbnail" src="https://app.chiron.ae/storage/app/public/product/{{json_decode($item->model['image'],true)[0]}}" alt="{{$item->model->name}}" /></a>
                                <div class="ps-product__content"><a class="ps-product__name" href="{{route('product-detail',['id'=>$item->model->id])}}">{{ Str::limit($item->model->name,20)}}</a>
                                    <p class="ps-product__unit">weight:&nbsp;{{$item->model->unit}}</p>
                                    @if($item->model->discount_type)
                                    @if($item->model->discount_type ==='percent')
                                    <p class="ps-product__meta"> <span class="ps-product__price">{{$item->model->discount}} %</span>
                                        @else
                                    <p class="ps-product__meta"> <span class="ps-product__price">{{$item->model->discount}}د.إ</span>
                                        @endif
                                    <p class="ps-product__meta"> <span class="ps-product__price">{{$item->model->price}}د.إ</span>
                                        @else
                                    <p class="ps-product__meta"> <span class="ps-product__price">{{$item->model->price}}د.إ</span>
                                        @endif

                                    </p>
                                </div>
                                <div class="ps-product__remove"><a href="#" wire:click.prevent="destroy('{{$item->rowId}}')"><i class="fa fa-trash"></i></a></div>
                            </div>
                        </li>
                        @endforeach
                    </ul>
                </div>
                <div class="mini-cart__footer row">
                    <div class="col-6 title">TOTAL</div>
                    <div class="col-6 text-right total">{{Cart::total()}}د.إ</div>
                    <div class="col-12 d-flex"><a class="view-cart" href="/cart">View cart</a><a class="checkout" href="/checkout">Checkout</a></div>
                </div>
            </div>
        </div>
    </div>
    @endif
</div>
<div class="ps-top__total">Your Cart<b>{{Cart::total()}}د.إ</b></div>