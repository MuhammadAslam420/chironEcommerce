<div class="mobile-search__result">

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