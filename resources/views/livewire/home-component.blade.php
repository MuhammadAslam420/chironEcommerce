

<main class="no-main">
    <div class="ps-home--full-width">
    <div class="container" wire:ignore>
            <div class="row ps-home__banner ">
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
            <div class="ps-component ps-component--category" style="border:none;">
                <div class="component__header" style="margin-top:40px;">
                    <h4 style="font-family: Tahoma, sans-serif;color:#36454F;">Browse By Categories <a class="component__view" href="#">All Categories <i class="fa fa-arrow-right"></i></a></h4>
                </div>
                <div class="component__content promotion__carousel" style="margin-top:2px;backgroud:transparent;">
                    <div class="owl-carousel" data-owl-auto="true" data-owl-loop="true" data-owl-speed="15000" data-owl-gap="0" data-owl-nav="true" data-owl-dots="true" data-owl-item="8" data-owl-item-xs="3" data-owl-item-sm="3" data-owl-item-md="5" data-owl-item-lg="8" data-owl-duration="1000" data-owl-mousedrag="on">
                        @foreach($categories as $category)
                        
                        <div class="ps-category__item"><a href="{{route('product.category',['category_id'=>$category->id])}}">
                            <img class="ps-categories__thumbnail" style="broder:4px solid black;border-radius:55px;height:75px;width:75px;" src="https://app.chiron.ae/storage/app/public/category/{{$category->image}}" alt></a>
                            <a class="ps-categories__name" href="{{route('product.category',['category_id'=>$category->id])}}">{{Str::limit($category->name,12)}} </a>
                        </div>
                        @endforeach
                    </div>
                </div>
            </div>
            <section class="ps-component ps-component--category" style="border:none;">
                <div class="component__header" style="margin-top:3px;">
                        <h4 style="font-family: Tahoma, sans-serif;color:#36454F;">Featured Brands <a class="component__view">All offers<i class="fa fa-arrow-right" style="padding:2px;"></i></a></h4>

                    </div>
                    <div class="component__content promotion__carousel ">
                        <div class="owl-carousel" data-owl-auto="true" data-owl-loop="true" data-owl-speed="7000" data-owl-gap="0" data-owl-nav="true" data-owl-dots="true" data-owl-item="4" data-owl-item-xs="1" data-owl-item-sm="1" data-owl-item-md="2" data-owl-item-lg="4" data-owl-duration="1000" data-owl-mousedrag="on">
                            @foreach($banners2 as $disc)
                            <div class="promotion__thumbnail  " style="margin-top:-5px;">
                                <a href="{{route('product.category',['category_id'=>$disc->category_id])}}"><img src="https://app.chiron.ae/storage/app/public/banner/{{$disc->image}}" class="img-thumbnail" style="height:150px; width:300px;"  alt></a>
                                <div class="col-md-12">
                                    <h4 style="padding-top:10px;justify-content:center;align-content:center;font-weight:400;">{{$disc->title}}</h4>
                                    
                                </div>
                            </div>
                            @endforeach
                          
                        </div>
                    </div>
            </section>


            <div class="ps-home--block" style="margin-top:10px;">
                <div class="ps-block__header mobile">
                    <div class="ps-block__title d-flex" ><h4 style="font-family: Tahoma, sans-serif;color:#36454F;">Ready Meals</h4> &nbsp;
                        <div class="ps-block__list component__view">
                            <ul style="margin-top:-8px;">
                                @foreach($options as $option)
                                <li ><a  href="{{route('product.category',['category_id'=>$option->id])}}">{{$option->name}}</a></li>
                                @endforeach

                            </ul>
                        </div>
                    </div>

                </div>
                <div class="ps-block__content">
                    <div class="desktop-only ps-block--products">
                        <div class="owl-carousel" data-owl-auto="true" data-owl-loop="true" data-owl-speed="10000" data-owl-gap="0" data-owl-nav="true" data-owl-dots="true" data-owl-item="6" data-owl-item-xs="2" data-owl-item-sm="2" data-owl-item-md="3" data-owl-item-lg="6" data-owl-duration="1000" data-owl-mousedrag="on">
                            @foreach($meals as $meal)
                            @php
                            $witems=Cart::instance('wishlist')->content()->pluck('id');
                            @endphp
                            <div class="ps-product--standard" ><a href="{{route('product-detail',['id'=>$meal->id])}}">
                                    <img class="ps-product__thumbnail" src="https://app.chiron.ae/storage/app/public/product/{{json_decode($meal['image'],true)[0]}}" alt="{{$meal->name}}" style="height:100px; width:100px;" /></a>
                                <a class="product-wish btnQuickView" data-link="{{route('product-detail',['id'=>$meal->id])}}" data-product-sku="{{$meal->SKU}}" data-product-cat="#" data-created="{{$meal->created_at}}" data-product-name="{{$meal->name}}" data-image="https://app.chiron.ae/storage/app/public/product/{{json_decode($meal['image'],true)[0]}}" data-product-price="{{$meal->price}}" data-product-qty="{{$meal->weight}}" data-product-status="{{$meal->stock_status}}"><i class="fa fa-expand"></i></a>
                                

                                <div class="ps-product__content">

                                    <h5><a class="ps-product__name" style="font-size:12px;" href="{{route('product-detail',['id'=>$meal->id])}}">{{$meal->name}}</a></h5>

                                    <p class="ps-product-price-block"><span class="ps-product__price-default" style="font-size:12px;">{{$meal->price}}د.إ</span>
                                        <span class=" d-inline-block">

                                    </p>
                                </div>
                                <div class="justify-content-center">
                                      <div class="def-number-input number-input safari_only">
                                            <button class="minus bg-danger" onclick="this.parentNode.querySelector('input[type=number]').stepDown()"><i class="fa fa-minus text-light pr-2 pl-2"></i></button>
                                            <input class="quantity" min="0" name="quantity" value="1" type="number" wire:model="qty" />
                                            <button class="plus bg-success" onclick="this.parentNode.querySelector('input[type=number]').stepUp()"><i class="fa fa-plus text-light pr-2 pl-2"></i></button>
                                        </div>
                                   

                                    <button style="margin-top:5px;" class="ps-product__addcart" wire:click.prevent="store({{$meal->id}},'{{$meal->name}}',{{$meal->price}})"><i class="fa fa-shopping-cart"></i>Add to cart</button>
                                   
                                </div>
                            </div>
                            @endforeach

                        </div>
                    </div>
                    <div class="mobile-only">
                        <div class="row">
                            @foreach($meals as $meal)
                            @php
                            $witems=Cart::instance('wishlist')->content()->pluck('id');
                            @endphp
                            <div class="col-6 col-md-4">
                                <div class="ps-product--standard"><a href="{{route('product-detail',['id'=>$meal->id])}}">
                                    <img class="ps-product__thumbnail" src="https://app.chiron.ae/storage/app/public/product/{{json_decode($meal['image'],true)[0]}}" alt="{{$meal->name}}" height="60" /></a>
                                    <a class="ps-product__expand" href="javascript:void(0);" data-toggle="modal" data-target="#popupQuickview"><i class="fa fa-expand"></i></a>
                                 
                                    <div class="ps-product__content">

                                        <h5><a class="ps-product__name" style="font-size:12px;" href="{{route('product-detail',['id'=>$meal->id])}}">{{$meal->name}}</a></h5>

                                        <p class="ps-product-price-block"><span class="ps-product__price-default" style="font-size:12px;">{{$meal->price}}د.إ</span>

                                        </p>
                                    </div>
                                    <div class="justify-content-center">
                                       <div class="def-number-input number-input safari_only">
                                            <button class="minus bg-danger" onclick="this.parentNode.querySelector('input[type=number]').stepDown()"><i class="fa fa-minus text-light pr-2 pl-2"></i></button>
                                            <input class="quantity" min="0" name="quantity" value="1" type="number" wire:model="qty" />
                                            <button class="plus bg-success" onclick="this.parentNode.querySelector('input[type=number]').stepUp()"><i class="fa fa-plus text-light pr-2 pl-2"></i></button>
                                        </div>

                                        <button style="margin-top:5px;" class="ps-product__addcart" wire:click.prevent="store({{$meal->id}},'{{$meal->name}}',{{$meal->price}})"><i class="fa fa-shopping-cart"></i>Add to cart</button>
                                        
                                    </div>
                                </div>
                            </div>
                            @endforeach
                        </div>
                    </div>
                </div>
            </div>
            <div class="ps-home--block ps-block--promo"  style="margin-top:5px;">
                <div class="row">
                    <div class="col-12 col-lg-4 ps-promo__item"><a href="/shop"><img src="{{asset('assets/img/promotion/full-width/promo-04.jpg')}}" alt></a></div>
                    <div class="col-12 col-lg-4 ps-promo__item"><a href="/shop"><img src="{{asset('assets/img/promotion/full-width/promo-05.jpg')}}" alt></a></div>
                    <div class="col-12 col-lg-4 ps-promo__item"><a href="/shop"><img src="{{asset('assets/img/promotion/full-width/promo-06.jpg')}}" alt></a></div>
                </div>
            </div>
            <div class="ps-home--block"  style="margin-top:10px;">
                <div class="ps-block__header mobile">
                    <div class="ps-block__title d-flex"><h4 style="font-family: Tahoma, sans-serif;color:#36454F;">Drinks, Tea & Coffee</h4> &nbsp;
                        <div class="ps-block__list component__view">
                            <ul style="margin-top:-8px;">
                                @foreach($options as $option)
                                <li><a href="{{route('product.category',['category_id'=>$option->id])}}">{{$option->name}}</a></li>
                                @endforeach
                            </ul>
                        </div>
                    </div>
                </div>
                <div class="ps-block__content"  style="margin-top:10px;">
                    <div class="desktop-only ps-block--products">
                        <div class="owl-carousel" data-owl-auto="true" data-owl-loop="true" data-owl-speed="15000" data-owl-gap="0" data-owl-nav="true" data-owl-dots="true" data-owl-item="6" data-owl-item-xs="2" data-owl-item-sm="2" data-owl-item-md="3" data-owl-item-lg="6" data-owl-duration="1000" data-owl-mousedrag="on">
                            @foreach($drinks as $drink)
                            @php
                            $witems=Cart::instance('wishlist')->content()->pluck('id');
                            @endphp
                            <div class="ps-product--standard">
                                <a href="{{route('product-detail',['id'=>$drink->id])}}">
                                    <img class="ps-product__thumbnail" src="https://app.chiron.ae/storage/app/public/product/{{json_decode($drink['image'],true)[0]}}" alt="{{$drink->name}}" style="height:100px; width:100px;" /></a>
                                <a class="product-wish btnQuickView" data-link="{{route('product-detail',['id'=>$drink->id])}}" data-product-sku="{{$drink->SKU}}" data-product-cat="#" data-created="{{$drink->created_at}}" data-product-name="{{$drink->name}}" data-image="https://app.chiron.ae/storage/app/public/product/{{json_decode($drink['image'],true)[0]}}" data-product-price="{{$drink->price}}" data-product-qty="{{$drink->weight}}" data-product-status="{{$drink->stock_status}}"><i class="fa fa-expand"></i></a>

                               

                                <div class="ps-product__content">

                                    <h5><a class="ps-product__name" style="font-size:12px;" href="{{route('product-detail',['id'=>$drink->id])}}">{{$drink->name}}</a></h5>

                                    <p class="ps-product-price-block"><span class="ps-product__price-default" style="font-size:12px;">{{$drink->price}}د.إ</span>

                                    </p>
                                </div>
                                <div class="justify-content-center">
                                   <div class="def-number-input number-input safari_only">
                                            <button class="minus bg-danger" onclick="this.parentNode.querySelector('input[type=number]').stepDown()"><i class="fa fa-minus text-light pr-2 pl-2"></i></button>
                                            <input class="quantity" min="0" name="quantity" value="1" type="number" wire:model="qty" />
                                            <button class="plus bg-success" onclick="this.parentNode.querySelector('input[type=number]').stepUp()"><i class="fa fa-plus text-light pr-2 pl-2"></i></button>
                                        </div>

                                    <button style="margin-top:5px;" class="ps-product__addcart" wire:click.prevent="store({{$drink->id}},'{{$drink->name}}',{{$drink->price}})"><i class="fa fa-shopping-cart"></i>Add to cart</button>
                                   
                                </div>
                            </div>
                            @endforeach

                        </div>
                    </div>
                    <div class="mobile-only">
                        <div class="row">
                            @foreach($drinks as $drink)
                            @php
                            $witems=Cart::instance('wishlist')->content()->pluck('id');
                            @endphp
                            <div class="col-6 col-md-4">
                                <div class="ps-product--standard"><a href="{{route('product-detail',['id'=>$drink->id])}}">
                                    <img class="ps-product__thumbnail" src="https://app.chiron.ae/storage/app/public/product/{{json_decode($drink['image'],true)[0]}}" alt="{{$drink->name}}" /></a>
                                    <a class="product-wish btnQuickView" data-link="{{route('product-detail',['id'=>$drink->id])}}" data-product-sku="{{$drink->SKU}}" data-product-cat="#" data-created="{{$drink->created_at}}" data-product-name="{{$drink->name}}" data-image="https://app.chiron.ae/storage/app/public/product/{{json_decode($drink['image'],true)[0]}}" data-product-price="{{$drink->price}}" data-product-qty="{{$drink->weight}}" data-product-status="{{$drink->stock_status}}"><i class="fa fa-expand"></i></a>
                                  
                                    <div class="ps-product__content">

                                        <h5><a class="ps-product__name" href="{{route('product-detail',['id'=>$drink->id])}}" style="font-size:12px;">{{$drink->name}}</a></h5>

                                        <p class="ps-product-price-block"><span class="ps-product__price-default" style="font-size:12px;">{{$drink->price}}د.إ</span>

                                        </p>
                                    </div>
                                    <div class="justify-content-center">
                                    <div class="def-number-input number-input safari_only">
                                            <button class="minus bg-danger" onclick="this.parentNode.querySelector('input[type=number]').stepDown()"><i class="fa fa-minus text-light pr-2 pl-2"></i></button>
                                            <input class="quantity" min="0" name="quantity" value="1" type="number" wire:model="qty" />
                                            <button class="plus bg-success" onclick="this.parentNode.querySelector('input[type=number]').stepUp()"><i class="fa fa-plus text-light pr-2 pl-2"></i></button>
                                        </div>

                                        <button style="margin-top:5px;" class="ps-product__addcart" wire:click.prevent="store({{$drink->id}},'{{$drink->name}}',{{$drink->price}})"><i class="fa fa-shopping-cart"></i>Add to cart</button>
                                     
                                    </div>
                                </div>
                            </div>
                            @endforeach

                        </div>
                    </div>
                </div>
            </div>
            <div class="ps-home--block"  style="margin-top:10px;margin-bottom:-40px;">
                <div class="ps-block__header mobile">
                    <div class="ps-block__title d-flex"><h4 style="font-family: Tahoma, sans-serif;color:#36454F;">Kitchen, Dishes</h4> &nbsp;
                        <div class="ps-block__list component__view">
                            <ul style="margin-top:-8px;">
                                @foreach($options as $option)
                                <li ><a href="{{route('product.category',['category_id'=>$option->id])}}">{{$option->name}}</a></li>
                                @endforeach
                            </ul>
                        </div>
                    </div>
                </div>

                <div class="ps-block__content"  style="margin-top:10px;">
                    <div class="desktop-only ps-block--products">
                        <div class="owl-carousel" data-owl-auto="true" data-owl-loop="true" data-owl-speed="15000" data-owl-gap="0" data-owl-nav="true" data-owl-dots="true" data-owl-item="6" data-owl-item-xs="2" data-owl-item-sm="2" data-owl-item-md="3" data-owl-item-lg="6" data-owl-duration="1000" data-owl-mousedrag="on">
                            @foreach($kitchens as $kitchen)
                            @php
                            $witems=Cart::instance('wishlist')->content()->pluck('id');
                            @endphp
                            <div class="ps-product--standard"><a href="{{route('product-detail',['id'=>$kitchen->id])}}">
                                <img class="ps-product__thumbnail" src="https://app.chiron.ae/storage/app/public/product/{{json_decode($kitchen['image'],true)[0]}}" alt="{{$kitchen->name}}" style="height:100px; width:100px;" /></a>
                                <a class="product-wish btnQuickView" data-link="{{route('product-detail',['id'=>$kitchen->id])}}" data-product-sku="{{$kitchen->SKU}}" data-product-cat="#" data-created="{{$kitchen->created_at}}" data-product-name="{{$kitchen->name}}" data-image="https://app.chiron.ae/storage/app/public/product/{{json_decode($kitchen['image'],true)[0]}}" data-product-price="{{$kitchen->price}}" data-product-qty="{{$kitchen->weight}}" data-product-status="{{$kitchen->stock_status}}"><i class="fa fa-expand"></i></a>
                            

                                <div class="ps-product__content">

                                    <h5><a class="ps-product__name" href="{{route('product-detail',['id'=>$kitchen->id])}}" style="font-size:12px;">{{$kitchen->name}}</a></h5>

                                    <p class="ps-product-price-block"><span class="ps-product__price-default" style="font-size:12px;">{{$kitchen->price}}د.إ</span>

                                    </p>
                                </div>
                                <div class="justify-content-center">
                            <div class="def-number-input number-input safari_only">
                                            <button class="minus bg-danger" onclick="this.parentNode.querySelector('input[type=number]').stepDown()"><i class="fa fa-minus text-light pr-2 pl-2"></i></button>
                                            <input class="quantity" min="0" name="quantity" value="1" type="number" wire:model="qty" />
                                            <button class="plus bg-success" onclick="this.parentNode.querySelector('input[type=number]').stepUp()"><i class="fa fa-plus text-light pr-2 pl-2"></i></button>
                                        </div>

                                    <button style="margin-top:5px;" class="ps-product__addcart" wire:click.prevent="store({{$kitchen->id}},'{{$kitchen->name}}',{{$kitchen->price}})"><i class="fa fa-shopping-cart"></i>Add to cart</button>
                                    
                                </div>
                            </div>
                            @endforeach

                        </div>
                    </div>
                    <div class="mobile-only">
                        <div class="row">
                            @foreach($kitchens as $kitchen)
                            @php
                            $witems=Cart::instance('wishlist')->content()->pluck('id');
                            @endphp
                            <div class="col-6 col-md-4">
                                <div class="ps-product--standard"><a href="{{route('product-detail',['id'=>$kitchen->id])}}">
                                    <img class="ps-product__thumbnail" src="https://app.chiron.ae/storage/app/public/product/{{json_decode($kitchen['image'],true)[0]}}" alt="{{$kitchen->name}}" /></a>
                                    <a class="product-wish btnQuickView" data-link="{{route('product-detail',['id'=>$kitchen->id])}}" data-product-sku="{{$kitchen->SKU}}" data-product-cat="#" data-created="{{$kitchen->created_at}}" data-product-name="{{$kitchen->name}}" data-image="https://app.chiron.ae/storage/app/public/product/{{json_decode($kitchen['image'],true)[0]}}" data-product-price="{{$kitchen->price}}" data-product-qty="{{$kitchen->weight}}" data-product-status="{{$kitchen->stock_status}}"><i class="fa fa-expand"></i></a>
                                  
                                    <div class="ps-product__content">

                                        <h5><a class="ps-product__name" href="{{route('product-detail',['id'=>$kitchen->id])}}" style="font-size:12px;">{{$kitchen->name}}</a></h5>

                                        <p class="ps-product-price-block"><span class="ps-product__price-default" style="font-size:12px;">{{$kitchen->price}}د.إ</span>


                                        </p>
                                    </div>
                                    <div class="justify-content-center">
                                       <div class="def-number-input number-input safari_only">
                                            <button class="minus bg-danger" onclick="this.parentNode.querySelector('input[type=number]').stepDown()"><i class="fa fa-minus text-light pr-2 pl-2"></i></button>
                                            <input class="quantity" min="0" name="quantity" value="1" type="number" wire:model="qty" />
                                            <button class="plus bg-success" onclick="this.parentNode.querySelector('input[type=number]').stepUp()"><i class="fa fa-plus text-light pr-2 pl-2"></i></button>
                                        </div>

                                        <button style="margin-top:5px;" class="ps-product__addcart" wire:click.prevent="store({{$kitchen->id}},'{{$kitchen->name}}',{{$kitchen->price}})"><i class="fa fa-shopping-cart"></i>Add to cart</button>
                                        
                                    </div>
                                </div>
                            </div>
                            @endforeach

                        </div>
                    </div>
                </div>
            </div>
            <br>
            <br>
            <hr style="opacity:.5">

        </div>
    </div>
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

                                <a class="btn btn-danger" id="modal-product-link" href=""> <img class="carousel__thumbnail" id="modal-product-image" src="" /></a>


                            </div>
                            <div class="col-12 col-lg-7">
                                <div class="quickview__product">
                                    <div class="product__header">
                                        <div class="product__title"><a id="modal-product-link" href="">
                                                <h3 id="modal-product-name"></h3>
                                            </a></div>
                                        <div class="product__meta">

                                            <div class="product__code">SKU:#<span id="modal-product-sku"></span></div>
                                        </div>
                                    </div>
                                    <div class="product__content">
                                        <p class="ps-product-price-block text-danger">Price: <span class="ps-product__price-default" id="modal-product-price"></span>د.إ</p>
                                        <p class="product__unit">Weight: <span id="modal-product-qty"></span>g</p>
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
                                        <a href="{{route('product-detail',['id'=>$item->model->id])}}"><img class="ps-product__thumbnail" src="{{asset('public/product')}}/{{$item->model->image}}" alt="{{$item->model->name}}" /></a>
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