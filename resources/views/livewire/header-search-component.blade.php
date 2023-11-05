<div class="header-inner__center" style="min-width:50%;">
    <div class="input-group">
        <div class="input-group-prepend">
            <div class="header-search-select"><span class="current">ALL CATEGORIES<i class="fa fa-arrow-down" style="padding:0 5px;"></i></span>
                <ul class="list" wire:ignore>
                    <li class="category-option active"><a href="{{route('product.search')}}">All</a></li>
                    @foreach($categories as $cat)
                    <li class="category"><a href="{{route('product.category',['category_id'=>$cat->id])}}">{{$cat->name}}</a></li>
                    @endforeach
                </ul>
            </div>
        </div>

        <input class="form-control input-search" placeholder="I'm searchching for..." style="background:#f3f3f3;border:none;">

    </div>
    <!-- <div class="trending-search">
                            <ul class="list-trending">
                                <li class="title"><a>Trending search: </a></li>
                                <li class="trending-item"><a href="#">meat</a></li>
                                <li class="trending-item"><a href="#">fruit</a></li>
                                <li class="trending-item"><a href="#">vegetables</a></li>
                                <li class="trending-item"><a href="#">salad</a></li>
                                <li class="trending-item"><a href="#">yoghurts</a></li>
                                <li class="trending-item"><a href="#">apple</a></li>
                            </ul>
                        </div>-->
    <div class="result-search">
        <ul class="list-result">
            @foreach($s_products as $product)
            <li class="cart-item">
                <div class="ps-product--mini-cart"><a href="{{route('product-detail',['id'=>$product->id])}}"><img class="ps-product__thumbnail" src="https://app.chiron.ae/storage/app/public/product/{{json_decode($product['image'],true)[0]}}" alt="{{$product->name}}" /></a>
                    <div class="ps-product__content"><a class="ps-product__name" href="{{route('product-detail',['id'=>$product->id])}}"><u>Organic</u> {{$product->name}}</a>

                        <p class="ps-product__meta"> <span class="ps-product__price">{{$product->price}} د.إ</span>
                        </p>
                    </div>
                </div>
            </li>
            @endforeach
        </ul>
    </div>
</div>