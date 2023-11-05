<main class="no-main">
    <div class="ps-breadcrumb">
        <div class="container">
            <ul class="ps-breadcrumb__list">
                <li class="active"><a href="/">Home</a></li>
                <li><a href="javascript:void(0);">Search</a></li>
            </ul>
        </div>
    </div>
    <section class="section-shop">
        <div class="shop__header">
            <div class="container">
                <div class="row">
                    <div class="col-12 col-lg-12">
                        <div class="owl-carousel shop__header--carousel" data-owl-auto="true" data-owl-loop="true" data-owl-speed="5000" data-owl-gap="0" data-owl-nav="true" data-owl-dots="true" data-owl-item="1" data-owl-item-xs="1" data-owl-item-sm="1" data-owl-item-md="1" data-owl-item-lg="1" data-owl-item-xl="1" data-owl-duration="1000" data-owl-mousedrag="on">
                            @foreach($banners as $banner)
                            <a href="/shop"><img src="https://app.chiron.ae/storage/app/public/banner/{{$banner->image}}" style="height:400px;" alt></a>
                            @endforeach

                        </div>
                    </div>

                </div>
            </div>
        </div>
        <div class="shop__header mobile">
            <div class="owl-carousel shop__header--carousel" data-owl-auto="true" data-owl-loop="true" data-owl-speed="5000" data-owl-gap="0" data-owl-nav="true" data-owl-dots="true" data-owl-item="1" data-owl-item-xs="1" data-owl-item-sm="1" data-owl-item-md="1" data-owl-item-lg="1" data-owl-item-xl="1" data-owl-duration="1000" data-owl-mousedrag="on">
                @foreach($banners as $banner)
                <a href="/shop"><img src="https://app.chiron.ae/storage/app/public/banner/{{$banner->image}}" style="height:400px;" alt></a>
                @endforeach
            </div>
            <div class="container">
                <div class="shop__header__promo">
                    <div class="promo-item"><a href="#"><img src="{{asset('assets/img/shop/shop-grid-mobile-promo-1.jpg')}}" alt></a></div>
                    <div class="promo-item"><a href="#"><img src="{{asset('assets/img/shop/shop-grid-mobile-promo-2.jpg')}}" alt></a></div>
                </div>
            </div>
        </div>
        <div class="container">
            <div class="shop__content">
                <div class="row">
                    <div class="col-12 col-lg-3">
                        <div class="ps-shop--sidebar">
                            <div class="sidebar__category">
                                <div class="sidebar__title">ALL CATEGORIES</div>
                                <ul class="menu--mobile">
                                    @foreach($categories as $category)
                                    <li class="daily-deals category-item"><a href="#">{{$category->name}}</a></li>
                                    @endforeach

                                </ul>
                            </div>
                            <div class="sidebar__sort">

                                <div class="sidebar__block open">
                                    <div class="sidebar__title">BY PRICE<span class="shop-widget-toggle"><i class="fa fa-minus"></i></span></div>
                                    <div class="block__content">
                                        <div class="block__price p-5">
                                            <div id="slider" wire:ignore></div>
                                        </div>
                                        <div class="block__input p-5">
                                            {{$min_price}} - {{$max_price}}

                                        </div>
                                    </div>
                                </div>

                            </div>

                        </div>
                    </div>
                    <div class="col-12 col-lg-9">
                        <div class="shop__block">
                            <div class="shop__block__header">
                                <div class="block__title"> <i class="fa fa-bars"></i>Top Featured Categories</div><a class="block__view" href="shop-categories.html">View all<i class="fa fa-arrow-right"></i></a>
                            </div>
                            <div class="shop__block__content" wire:ignore>
                                <div class="owl-carousel" data-owl-auto="true" data-owl-loop="true" data-owl-speed="15000" data-owl-gap="0" data-owl-nav="true" data-owl-dots="true" data-owl-item="4" data-owl-item-xs="2" data-owl-item-sm="2" data-owl-item-md="3" data-owl-item-lg="4" data-owl-item-xl="4" data-owl-duration="1000" data-owl-mousedrag="on">
                                    @foreach($categories as $category)
                                    <div class="categogy-item"><img src="https://app.chiron.ae/storage/app/public/category/{{$category->image}}" alt="{{$category->name}}">
                                        <div class="categogy-name"><a href="{{route('product.category',['category_id'=>$category->id])}}">{{$category->name}}</a></div>

                                    </div>
                                    @endforeach
                                </div>
                            </div>
                        </div>

                        <div class="result__header">
                            <h4 class="title">{{$products->count()}}<span>Product Found</span></h4>

                        </div>
                        <div class="filter__mobile">
                            <div class="viewtype--block">
                                <div class="viewtype__sortby">
                                    <div class="select">
                                        <select class="single-select2-no-search" name="orderby" wire:model="sorting">
                                            <option value="default" selected="selected">Default sorting</option>
                                            <option value="date">Sort by newness</option>
                                            <option value="price">Sort by price: low to high</option>
                                            <option value="price-desc">Sort by price: high to low</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="viewtype__select"> <span class="text ps-mobile-filter"><i class="icon-equalizer"></i>Filter</span>
                                    <div class="type"><a href="#"><span class="active"><i class="fa fa-th"></i></span></a><a href="shop-view-listing.html"><span><i class="fa fa-list"></i></span></a></div>
                                </div>
                            </div>
                        </div>

                        <div class="result__sort">
                            <div class="viewtype--block">
                                <div class="viewtype__sortby">
                                    <div class="select">
                                        <select class="single-select2-no-search" name="orderby" wire:model="sorting">
                                            <option value="default" selected="selected">Default sorting</option>
                                            <option value="date">Sort by newness</option>
                                            <option value="price">Sort by price: low to high</option>
                                            <option value="price-desc">Sort by price: high to low</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="viewtype__select"> <span class="text">View: </span>
                                    <div class="select">
                                        <select class="single-select2-no-search" name="post-per-page" wire:model="pagesize">
                                            <option value="12" selected="selected">12 per page</option>
                                            <option value="16">16 per page</option>
                                            <option value="18">18 per page</option>
                                            <option value="21">21 per page</option>
                                            <option value="24">24 per page</option>
                                            <option value="30">30 per page</option>
                                            <option value="32">32 per page</option>
                                        </select>
                                    </div>
                                    <div class="type"><a href="shop-view-grid.html"><span class="active"><i class="fa fa-th"></i></span></a><a href="shop-view-listing.html"><span><i class="fa fa-list"></i></span></a></div>
                                </div>
                            </div>
                        </div>
                        <div class="result__header mobile">
                            <h4 class="title">{{$products->count()}}<span>Product Found</span></h4>
                        </div>
                        <div class="result__content">
                            <div class="section-shop--grid">
                                @php
                                $witems=Cart::instance('wishlist')->content()->pluck('id');
                                @endphp

                                <div class="row m-0">
                                    @foreach($products as $product)
                                    <div class="col-6 col-md-4 col-lg-3 p-0">
                                        <div class="ps-product--standard"><a href="{{route('product-detail',['id'=>$product->id])}}">
                                                <img class="ps-product__thumbnail" src="https://app.chiron.ae/storage/app/public/product/{{json_decode($product['image'],true)[0]}}" alt="{{$product->name}}" /></a>
                                            <a class="product-wish btnQuickView" data-link="{{route('product-detail',['id'=>$product->id])}}" data-product-sku="#" data-product-cat="#" data-created="{{$product->created_at}}" data-product-name="{{$product->name}}" data-image="https://app.chiron.ae/storage/app/public/product/{{json_decode($product['image'],true)[0]}}" data-product-price="{{$product->price}}" data-product-qty="{{$product->unit}}" data-product-status="{{$product->total_stock}}"><i class="fa fa-expand"></i></a>
                                            @if($witems->contains($product->id))
                                            <a class="product-wish" style="margin-top:30px;" href="#" wire:click.prevent="removeFromWishlist({{$product->id}})"><i class="fa fa-heart fill-heart"></i></a>
                                            @else
                                            <a class="product-wish" style="margin-top:30px;" href="#" wire:click.prevent="addToWishlist({{$product->id}},'{{$product->name}}',{{$product->price}})"><i class="fa fa-heart-o"></i></a>
                                            @endif
                                            <a class="product-wish" style="margin-top:60px;" href="{{route('compare',['id'=>$product->id])}}"><i class="fa fa-retweet"></i></a>

                                            <div class="ps-product__content">

                                                <h5><a class="ps-product__name" href="{{route('product-detail',['id'=>$product->id])}}">{{ Str::limit($product->name,12)}}</a></h5>
                                                <p class="ps-product-price-block "><span class="ps-product__price-default">د.إ{{$product->price}}</span>
                                                    <span class=" d-inline-block pl-2">
                                                        @php
                                                        $reviews=DB::table('reviews')->where('product_id',$product->id)->count();
                                                        $ratings=DB::table('reviews')->where('product_id',$product->id)->sum('rating');
                                                        $avgrating=0;
                                                        @endphp

                                                        @if($reviews >0)

                                                        @for($i=1; $i<=5; $i++) @if($i<=($ratings / $reviews)) <i class="fa fa-star" aria-hidden="true" style="color:gold;"></i>
                                                            @else
                                                            <i class="fa fa-star" aria-hidden="true" style="color:gray;"></i>
                                                            @endif
                                                            @endfor

                                                            @endif
                                                            <a href="#" class="count-review"> ({{$reviews}})</a></span>
                                                    @if($product->discount > 0)
                                                <p class="ps-product-price-block "><span class="ps-product__price-default">د.إ{{($product->price - ($product->discount /100)*$product->price)}} &nbsp;|&nbsp;Today Deals</span>
                                                    @endif


                                                    </span>
                                                </p>

                                            </div>

                                            <div class="justify-content-center">
                                                <div class="def-number-input number-input safari_only">
                                                    <button class="minus" onclick="this.parentNode.querySelector('input[type=number]').stepDown()"><i class="fa fa-minus"></i></button>
                                                    <input class="quantity" min="0" name="quantity" value="1" type="number" />
                                                    <button class="plus" onclick="this.parentNode.querySelector('input[type=number]').stepUp()"><i class="fa fa-plus"></i></button>
                                                </div>

                                                @if($product->discount > 0)
                                                @php
                                                $d_price=($product->price - ($product->discount /100)*$product->price);
                                                @endphp

                                                <button class="ps-product__addcart mt-2" href="#" wire:click.prevent="store({{$product->id}},'{{$product->name}}',{{$d_price}})"><i class="fa fa-shopping-cart"></i>Add to cart</button>
                                                @else
                                                <button class="ps-product__addcart mt-2" href="#" wire:click.prevent="store({{$product->id}},'{{$product->name}}',{{$product->price}})"><i class="fa fa-shopping-cart"></i>Add to cart</button>
                                                @endif

                                            </div>
                                        </div>
                                    </div>
                                    @endforeach

                                </div>
                            </div>

                            {{$products->links('pagination::bootstrap-5')}}

                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <div class="modal fade" id="quickViewModal" role="dialog" data-backdrop="static" data-keyboard="false" tabindex="-1" aria-hidden="true">
        <div class="modal-dialog modal-dialog-centered modal-xl ps-quickview">
            <div class="modal-content">
                <div class="modal-header">
                    <button class="close" type="button" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                </div>
                <div class="modal-body">
                    <div class="container-fluid quickview-body">
                        <div class="row">
                            <div class="col-12 col-lg-5">

                                <a class="btn btn-danger" id="modal-product-link" href=""> <img class="carousel__thumbnail" id="modal-product-image" src="" alt="alt" /></a>


                            </div>
                            <div class="col-12 col-lg-7">
                                <div class="quickview__product">
                                    <div class="product__header">
                                        <div class="product__title"><a id="modal-product-link" href="">
                                                <h3 id="modal-product-name"></h3>
                                            </a></div>
                                    </div>
                                    <div class="product__content">
                                        <p class="ps-product-price-block text-danger">Price: <span class="ps-product__price-default" id="modal-product-price"></span>د.إ</p>
                                        <p class="product__unit">Measuring Unit: <span id="modal-product-qty"></span></p>
                                        <div class="alert__success">Availability: <span id="modal-product-status"></span></div>
                                        <ul>
                                            <li>Type: <span id="modal-product-cat"></span></li>
                                            <li><a class="text-center" style="font-size:15px; font-weight:700;" id="modal-product-link" href=""><i class="fa fa-eye text-danger"></i> Product Detail</a></li>

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
    <div class="modal fade" wire:ignore id="popupAddToCart" role="dialog" data-keyboard="false" tabindex="-1" aria-hidden="true">
        <div class="modal-dialog modal-dialog-centered modal-xl ps-addcart">
            <div class="modal-content">
                <div class="modal-header">
                    <button class="close" type="button" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                </div>
                <div class="modal-body">
                    <div class="container-fluid">
                        @if(Cart::instance('cart')->count()>0)

                        <div class="alert__success " style="color:#ed1d2d;font-size:22px;font-weight:600;text-align:center;">
                            <i class="fa fa-shopping-cart fa-2x"></i>&nbsp; New Item Has been successfully added to you cart.
                            {{Cart::instance('cart')->count()}}
                        </div>

                        @else
                        <div class="alert__success text-center" style="color:#ed1d2d; font-size:22px;font-weight:600;text-align:center;">
                            <i class="fa fa-shopping-cart fa-2x"></i>&nbsp;
                            New Item Has been successfully added to you cart. &nbsp;1
                        </div>
                        @endif
                        <hr>
                        <h3 class="cart__title"><a href="/cart" class="btn btn-success">
                                <h5 class="text-light">View your cart</h5>
                            </a></h3>
                        <h3 class="cart__title">Previously added items in your cart are following</h3>
                        @if(Cart::instance('cart')->count() > 0)
                        <div class="cart__content">
                            <div class="owl-carousel" data-owl-auto="true" data-owl-loop="true" data-owl-speed="5000" data-owl-gap="0" data-owl-nav="false" data-owl-dots="true" data-owl-item="{{Cart::count()}}" data-owl-item-xs="2" data-owl-item-sm="2" data-owl-item-md="2" data-owl-item-lg="{{Cart::count()}}" data-owl-item-xl="4" data-owl-duration="1000" data-owl-mousedrag="on">
                                @foreach(Cart::instance('cart')->content() as $item)
                                <div class="cart-item">
                                    <div class="ps-product--standard">
                                        <a href="{{route('product-detail',['id'=>$item->model->id])}}"><img class="ps-product__thumbnail" src="{{asset('assets/img/products')}}/{{$item->model->image}}" alt="{{$item->model->name}}" /></a>
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
                                                <span class=" d-inline-block pl-2">


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
@push('scripts')
<script>
    var slider = document.getElementById('slider');
    noUiSlider.create(slider, {
        start: [1, 1000],
        connect: true,
        range: {
            'min': 1,
            'max': 1000,
        },
        pips: {
            mode: 'steps',
            stepped: true,
            density: 3
        }
    });
    slider.noUiSlider.on('update', function(value) {
        @this.set('min_price', value[0]);
        @this.set('max_price', value[1]);

    });
</script>
<script>
    $(function() {
        $('body').on('click', '.btnQuickView', function(e) {
            e.preventDefault();

            var data = $(this).data();
            $('#quickViewModal #modal-product-name').html(data.productName);
            $('#quickViewModal #modal-product-image').attr('src', data.image);
            $('#quickViewModal #modal-product-link').attr('href', data.link);
            $('#quickViewModal #modal-product-sku').html(data.productSku);
            $('#quickViewModal #modal-product-price').html(data.productPrice);
            $('#quickViewModal #modal-product-qty').html(data.productQty);
            $('#quickViewModal #modal-product-status').html(data.productStatus);
            $('#quickViewModal #modal-product-cat').html(data.productCat);
            $('#quickViewModal #modal-product-created').html(data.created);
            $('#quickViewModal').modal();
        });
    });
</script>
@endpush