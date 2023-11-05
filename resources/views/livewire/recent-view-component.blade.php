<div class="navigation-text"  style="justify-content:center;padding-top:7px;">
    <ul class="menu">
        <li class="menu-item-has-children has-mega-menu">
            <a class="nav-link text-dark" href="javascript:void(0);" style="font-size:11px;"><i class="fa fa-history"></i> Recent Viewed</a>
            <div class="mega-menu recent-view ">
                <div class="mega-anchor"></div>
                <div class="container">
                    <div class="slick-many-item">
                        @foreach($recents as $product)
                        <a class="recent-item" href="{{route('product-detail',['id'=>$product->id])}}">
                            <img src="https://app.chiron.ae/storage/app/public/product/{{json_decode($product['image'],true)[0]}}" style="height:90px;" alt="{{$product->name}}" /></a>
                        @endforeach
                    </div>
                </div>
            </div>
        </li>
    </ul>
</div>