<main class="no-main">
    <section class="section--product-type section-product--fullwidth">
        <div class="container">
            <div class="product__detail">
                <div class="row">
                    <div class="col-12 col-lg-12">
                        <div class="ps-product--detail">
                            <div class="row">
                                <div class="col-12 col-lg-6">
                                    <div class="ps-product__variants">
                                        <div class="ps-product__gallery">
                                            @foreach(json_decode($product['image'],true) as $img)
                                            <div class="ps-gallery__item active" style="border:none;"><img src="https://app.chiron.ae/storage/app/public/product/{{$img}}" alt="{{$product->name}}" style="width:50%;" /></div>
                                            @endforeach
                                        </div>
                                        <div class="ps-product__thumbnail">
                                            <div class="ps-product__zoom">
                                                <img id="ps-product-zoom" src="https://app.chiron.ae/storage/app/public/product/{{json_decode($product['image'],true)[0]}}" style="width:70%;" alt="{{$product->name}}" />
                                                <ul class="ps-gallery--poster" id="ps-lightgallery-videos" data-video-url="#">
                                                    <li data-html="#video-play"><span></span><i class="fa fa-play-circle"></i></li>
                                                </ul>
                                            </div>
                                            <div style="display:none;" id="video-play">
                                                <video class="lg-video-object lg-html5" controls="controls" preload="none">
                                                    <source src="#" type="video/mp4" />Your browser does not support HTML5 video.
                                                </video>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-12 col-lg-6" style="border-left:1px solid #d6d6d6;">
                                    <div class="ps-breadcrumb">
                                        <div class="container">
                                            <ul class="ps-breadcrumb__list">
                                                <li class="active"><a href="/">Home</a></li>
                                                <li class="active"><a href="/shop">Fresh</a></li>

                                                <li><a href="javascript:void(0);">{{$product->name}}</a></li>
                                            </ul>
                                        </div>
                                    </div>
                                    @php
                                    $witems=Cart::instance('wishlist')->content()->pluck('id');
                                    @endphp
                                    <div class="ps-product__header">
                                        <h3 class="ps-product__name" style="font-size:16px;padding-top:5px;">{{$product->name}}</h3>
                                        <div class="ps-product__sub">
                                            <div class="ps-product__rating">
                                                <!--reviews-->

                                            </div>
                                            @php
                                            $reviews=DB::table('reviews')->where('product_id',$product->id)->count();



                                            $ratings=DB::table('reviews')->where('product_id',$product->id)->sum('rating');
                                            $avgrating=0;
                                            @endphp
                                           
                                        </div>
                                    </div>
                                    <div class="ps-product__sale">
                                        @if($product->discount)
                                        <span class="price-sale">د.إ{{($product->price - ($product->discount/100) * $product->price)}}</span><span class="price">د.إ{{$product->price}}</span>
                                        @else
                                        <span class="price-sale">{{$product->price}}د.إ</span>
                                        @endif

                                    </div>
                                    <div class="ps-product__unit">Measure In:&nbsp;<b>{{$product->unit}}</b></div>
                                    <div class="ps-product__avai alert__success">Availability: <span>
                                        @if($product->total_stock > 0)
                                        <b>InStock</b>
                                        @else
                                        <b class="text-danger">Out of Stock</b>
                                        @endif
                                         </span>
                                    </div>
                                   
                                    <div class="ps-product__shopping">
                                        <div class="ps-product__quantity">
                                            <label>Quantity: </label>
                                            <div class="def-number-input number-input safari_only">
                                                <button class="minus" href="#" wire:click.prevent="decreaseQuantity"><i class="fa fa-minus"></i></button>
                                                <input class="quantity" type="number" min="0" name="product-quatity" value="1" data-max="120" pattern="[0-9]*" wire:model="qty" />
                                                <button class="plus" href="#" href="#" wire:click.prevent="increaseQunatity"><i class="fa fa-plus"></i></button>
                                            </div>
                                        </div>
                                        @if($product->discount > 0)
                                        @php
                                        $d_price=($product->price - ($product->discount /100)*$product->price);
                                        @endphp

                                        <button class="ps-product__addcart ps-button" href="#" wire:click.prevent="store({{$product->id}},'{{$product->name}}',{{$d_price}})"><i class="fa fa-shopping-cart"></i>Add to cart</button>
                                        @else
                                        <button class="ps-product__addcart ps-button" href="#" wire:click.prevent="store({{$product->id}},'{{$product->name}}',{{$product->price}})"><i class="fa fa-shopping-cart"></i>Add to cart</button>
                                        @endif
                                        @if($witems->contains($product->id))
                                        <a class="ps-product__icon" href="#" wire:click.prevent="removeFromWishlist({{$product->id}})"><i class="fa fa-heart fill-heart"></i></a>
                                        @else
                                        <a class="ps-product__icon" href="#" wire:click.prevent="addToWishlist({{$product->id}},'{{$product->name}}',{{$product->price}})"><i class="fa fa-heart-o"></i></a>
                                        @endif
                                        <a class="ps-product__icon" href="{{route('compare',['id'=>$product->id])}}"><i class="fa fa-retweet"></i></a>
                                    </div>
                                    <div class="ps-product__footer"><a class="ps-product__shop" href="#"><i class="fa fa-home"></i><span>Store</span></a><a class="ps-product__addcart ps-button" data-toggle="modal" data-target="#popupAddToCart"><i class="fa fa-shopping-cart"></i>Add to cart</a></div>
                                </div>
                            </div>
                        </div>
                        <div class="product__content">
                            <ul class="nav nav-pills" role="tablist" id="productTabDetail">
                                <li class="nav-item"><a class="nav-link active" id="description-tab" data-toggle="tab" href="#description-content" role="tab" aria-controls="description-content" aria-selected="true">Description</a></li>
                                <li class="nav-item"><a class="nav-link" id="reviews-tab" data-toggle="tab" href="#reviews-content" role="tab" aria-controls="reviews-content" aria-selected="false">Reviews</a></li>
                            </ul>
                            <div class="tab-content">
                                <div class="tab-pane fade show active" id="description-content" role="tabpanel" aria-labelledby="description-tab">
                                    <p class="block-content">{!! $product->description !!}</p>

                                </div>
                                <div class="tab-pane fade" id="reviews-content" role="tabpanel" aria-labelledby="reviews-tab">
                                    <div class="ps-product--reviews" style="border:1px solid #d6d6d6;">
                                        <div class="row">

                                            @php
                                            $avgrating=0;
                                            $reviews=DB::table('reviews')->where('product_id',$product->id)->count();
                                            $ratings=DB::table('reviews')->where('product_id',$product->id)->sum('rating');

                                            @endphp


                                            <div class="col-12 col-lg-12">
                                                <div class="review__box" style="border:none;">
                                                    @if($reviews > 0 )
                                                    <div class="product__rate">{{($ratings / $reviews)}} star &nbsp;<span>out of ( {{$reviews}} Reviews )</span></div>
                                                    @for($i=1; $i<=5; $i++) @if($i<=($ratings / $reviews)) <i class="fa fa-star" aria-hidden="true" style="color:gold;"></i>
                                                        @else
                                                        <i class="fa fa-star" aria-hidden="true" style="color:gray;"></i>
                                                        @endif
                                                        @endfor
                                                        @endif
                                                        <p>Avg. Star Rating: <b class="text-black">( {{$reviews}} Reviews )</b></p>

                                                </div>
                                            </div>

                                        </div>
                                        <div class="ps--comments p-5">
                                            <h5 class="comment__title">Comments</h5>
                                            <ul class="comment__list">
                                                @php
                                                $comments=DB::table('reviews')->where('product_id',$product_id)->get();
                                                @endphp
                                                @foreach($comments as $comment)
                                                <li class="comment__item">
                                                    <div class="item__avatar"><img src="#" alt="alt" /></div>
                                                    <div class="item__content">
                                                        @php
                                                        $user=DB::table('users')->where('id',$comment->user_id)->first();
                                                        @endphp
                                                        <div class="item__name">{{$user->f_name }} &nbsp;{{$user->l_name}}</div>
                                                        <div class="item__date"> {{$comment->created_at}}</div>
                                                        <div class="item__check"> <i class="fa fa-check"></i>Verified Purchase</div>
                                                        <div class="item__rate">
                                                            @if($reviews > 0 )
                                                            @for($i=1; $i<=5; $i++) @if($i<=($ratings / $reviews)) <i class="fa fa-star" aria-hidden="true" style="color:gold;"></i>
                                                                @else
                                                                <i class="fa fa-star" aria-hidden="true" style="color:gray;"></i>
                                                                @endif
                                                                @endfor
                                                                @endif
                                                        </div>
                                                        <p class="item__des">{{$comment->comment}}</p>
                                                    </div>
                                                </li>
                                                @endforeach
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
    </section>

    <div class="modal fade" wire:ignore id="popupAddToCart" role="dialog" data-keyboard="false" tabindex="-1" aria-hidden="true">
        <div class="modal-dialog modal-dialog-centered modal-xl ps-addcart">
            <div class="modal-content">
                <div class="modal-header">
                    <button class="close" type="button" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                </div>
                <div class="modal-body">
                    <div class="container-fluid">
                        @if(Cart::instance('cart')->count()>0)

                        <div class="alert__success"><i class="fa fa-shopping-cart"></i> New Item Has been successfully added to you cart. <a href="shopping-cart.html">{{Cart::instance('cart')->count()}}</a></div>

                        @else
                        <div class="alert__success"><i class="fa fa-shopping-cart"></i> "Morrisons The Best Beef Topside" successfully added to you cart. <a href="shopping-cart.html">0</a></div>
                        @endif
                        <hr>
                        <h3 class="cart__title">Your Shopping Cart Consist of following Items:</h3>
                        @if(Cart::instance('cart')->count() > 0)
                        <div class="cart__content">
                            <div class="owl-carousel" data-owl-auto="true" data-owl-loop="true" data-owl-speed="5000" data-owl-gap="0" data-owl-nav="false" data-owl-dots="true" data-owl-item="4" data-owl-item-xs="2" data-owl-item-sm="2" data-owl-item-md="2" data-owl-item-lg="4" data-owl-item-xl="4" data-owl-duration="1000" data-owl-mousedrag="on">
                                @foreach(Cart::instance('cart')->content() as $item)
                                <div class="cart-item">
                                    <div class="ps-product--standard">
                                        <a href="{{route('product-detail',['id'=>$item->model->id])}}"><img class="ps-product__thumbnail" src="{{asset('public/product')}}/{{json_decode($product['image'],true)[0]}}ge}}" alt="{{$item->model->name}}" /></a>
                                        <div class="ps-product__content">
                                            <a href="{{route('product-detail',['id'=>$item->model->id])}}">
                                                <h5 class="ps-product__name">{{$item->model->name}}</h5>
                                            </a>
                                            <p class="ps-product__unit">{{$item->model->weight}}g</p>

                                            <p class="ps-product-price-block">
                                                @if($item->model->sale_price)
                                                <span class="ps-product__sale">{{$item->model->sale_price}}</span><span class="ps-product__price">{{$item->model->price}}</span>
                                                @else
                                                <span class="ps-product__sale">{{$item->model->price}}</span>
                                                @endif

                                            </p>
                                        </div>
                                    </div>
                                </div>
                                @endforeach

                            </div>
                        </div>
                        @endif
                    </div>
                </div>
            </div>
        </div>
    </div>
</main>