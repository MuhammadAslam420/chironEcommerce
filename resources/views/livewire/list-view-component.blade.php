<main class="no-main">
        <div class="ps-breadcrumb">
        <div class="container">
            <ul class="ps-breadcrumb__list">
                <li class="active"><a href="/">Home</a></li>
                <li><a href="javascript:void(0);">Categories</a></li>
            </ul>
        </div>
    </div>
        <section class="section-shop">
            <div class="shop__header">
                <div class="container">
                    <div class="row">
                    <div class="col-12 col-lg-12">
                       <div class="section-slide--default"style="margin-top:-15px;" >
                          <div class="owl-carousel" data-owl-auto="true" data-owl-loop="true" data-owl-speed="15000" data-owl-gap="0" data-owl-nav="true" data-owl-dots="true" data-owl-item="1" data-owl-item-xs="1" data-owl-item-sm="1" data-owl-item-md="1" data-owl-item-lg="1" data-owl-duration="1000" data-owl-mousedrag="on">
                         @foreach($banners as $banner)
                        <div class="ps-banner">
                            <img class="mobile-only img-fluid"  src="https://app.chiron.ae/storage/app/public/banner/{{$banner->image}}"  alt="{{$banner->title}}" />
                            <img class="desktop-only img-fluid" style="z-index:-1;"  src="https://app.chiron.ae/storage/app/public/banner/{{$banner->image}}"  alt="{{$banner->title}}" />
                        </div>
                        @endforeach
                    </div>
                      
                    </div>
                    </div>

                </div>
                </div>
            </div>
            <div class="shop__header mobile">
           <div class="section-slide--default"style="margin-top:-15px;" >
                          <div class="owl-carousel" data-owl-auto="true" data-owl-loop="true" data-owl-speed="15000" data-owl-gap="0" data-owl-nav="true" data-owl-dots="true" data-owl-item="1" data-owl-item-xs="1" data-owl-item-sm="1" data-owl-item-md="1" data-owl-item-lg="1" data-owl-duration="1000" data-owl-mousedrag="on">
                         @foreach($banners as $banner)
                        <div class="ps-banner">
                            <img class="mobile-only img-fluid"  src="https://app.chiron.ae/storage/app/public/banner/{{$banner->image}}"  alt="{{$banner->title}}" />
                            <img class="desktop-only img-fluid" style="z-index:-1;"  src="https://app.chiron.ae/storage/app/public/banner/{{$banner->image}}"  alt="{{$banner->title}}" />
                        </div>
                        @endforeach
                    </div>
                      
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
                                    <li class="daily-deals category-item"><a style="font-size:11px;" href="{{route('product.category',['category_id'=>$category->id])}}">{{$category->name}}</a></li>
                                    @endforeach

                                </ul>
                            </div>
                            

                        </div>
                    </div>
                        <div class="col-12 col-lg-9">
                      
                            <div class="result__header">
                                <h6 class="title" style="font-size:13px;">{{$products->count()}}<span style="font-size:13px;">Product Found</span></h6>
                               
                            </div>
                           <div class="filter__mobile">
                            <div class="viewtype--block">
                                <div class="viewtype__sortby">
                                    <div class="select">
                                        <select class="form-control" name="orderby" wire:model="sorting">
                                            <option value="default" selected="selected">Default sorting</option>
                                            <option value="date">Sort by newness</option>
                                            <option value="price">Sort by price: low to high</option>
                                            <option value="price-desc">Sort by price: high to low</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="viewtype__select"> <span class="text ps-mobile-filter"><i class="icon-equalizer"></i>Filter</span>
                                    <div class="type"><a href="/shop"><span ><i class="fa fa-th"></i></span></a><a href="{{route('list-view')}}"><span class="active"><i class="fa fa-list"></i></span></a></div>
                                </div>
                            </div>
                        </div>

                        <div class="result__sort">
                            <div class="viewtype--block">
                                <div class="viewtype__sortby">
                                    <div class="select">
                                        <select class="form-control" name="orderby" wire:model="sorting">
                                            <option value="default" selected="selected">Default sorting</option>
                                            <option value="date">Sort by newness</option>
                                            <option value="price">Sort by price: low to high</option>
                                            <option value="price-desc">Sort by price: high to low</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="viewtype__select"> <span class="text">View: </span>
                                    <div class="select">
                                        <select class="form-control" name="post-per-page" wire:model="pagesize">
                                            <option value="12" selected="selected">12 per page</option>
                                            <option value="16">16 per page</option>
                                            <option value="18">18 per page</option>
                                            <option value="21">21 per page</option>
                                            <option value="24">24 per page</option>
                                            <option value="30">30 per page</option>
                                            <option value="32">32 per page</option>
                                        </select>
                                    </div>
                                    <div class="type"><a href="/shop"><span ><i class="fa fa-th"></i></span></a><a href="{{route('list-view')}}"><span class="active"><i class="fa fa-list"></i></span></a></div>
                                </div>
                            </div>
                        </div>
                        
                            <div class="result__header mobile">
                                <h6 class="title" style="font-size:13px;">{{$products->count()}}<span style="font-size:13px;">Product Found</span></h6>
                            </div>
                            <div class="result__content">
                                <div class="section-shop--listing">
                                    @foreach($products as $product)
                                    <div class="product-item" style="padding:10px 0;">
                                        <div class="ps-product--list">
                                            <div class="ps-product__left">
                                                <div class="ps-product__extent" wire:ignore>
                                                     <a href="{{route('product-detail',['id'=>$product->id])}}">
                                                    <img class="ps-product__thumbnail" src="https://app.chiron.ae/storage/app/public/product/{{json_decode($product['image'],true)[0]}}" style="height:100px;"  alt="{{$product->name}}" />
                                                    </a>
                                                       <div class="def-number-input number-input safari_only" style="margin-top:10px;">
                                                    <button class="minus" onclick="this.parentNode.querySelector('input[type=number]').stepDown()"><i class="fa fa-minus"></i></button>
                                                    <input class="quantity" min="0" name="quantity" value="1" type="number" />
                                                    <button class="plus" onclick="this.parentNode.querySelector('input[type=number]').stepUp()"><i class="fa fa-plus"></i></button>
                                                </div>
                                                <div class="ps-product__total">Price: <span>د.إ{{$product->price}}</span>
                                                        </div>
                                            <a class="product-wish btnQuickView" data-link="{{route('product-detail',['id'=>$product->id])}}" data-product-sku="#" data-product-cat="#" data-created="{{$product->created_at}}" data-product-name="{{$product->name}}" data-image="https://app.chiron.ae/storage/app/public/product/{{json_decode($product['image'],true)[0]}}" data-product-price="{{$product->price}}" data-product-qty="{{$product->unit}}" data-product-status="{{$product->total_stock}}"><i class="fa fa-expand"></i></a>
                                                    
                                                </div>
                                                <div class="ps-product__content" style="padding-left:10px;">
                                                <a class="ps-product__name" href="{{route('product-detail',['id'=>$product->id])}}">{{$product->name}}</a>
                                                    <div class="ps-product__rating">
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
                                                            <a href="#" class="count-review">Customer review</a>({{$reviews}})</span>
                                                    @if($product->discount > 0)
                                                <p class="ps-product-price-block "><span class="ps-product__price-default">د.إ{{($product->price - ($product->discount /100)*$product->price)}} &nbsp;|&nbsp;Today Deals</span>
                                                    @endif


                                                    </span>
                                                    </div>
                                                    <div class="ps-product__des">
                                                        <ul class="ps-list--rectangle">
                                                            @php
                                                            $actegory=DB::table('categories')->where('id',$product->category_id)->first();
                                                            @endphp
                                                            <li> <span><i class="fa fa-square"></i></span>Category Type:&nbsp;{{$category->name}}</li>
                                                            
                                                            
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="ps-product__right">
                                                <div class="ps-product__price">Price:&nbsp;د.إ{{$product->price}}</div>
                                                <div class="ps-product__unit">Measurment Unit:&nbsp;{{$product->unit}}</div>
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
                                <div class="ps-pagination blog--pagination">
                                   {{$products->links('pagination::bootstrap-4')}}
                                </div>
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
 

