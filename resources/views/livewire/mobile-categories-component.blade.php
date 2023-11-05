<div class="ps-category--mobile">
    <div class="category__header">
        <div class="category__title">All Categories</div><span class="category__close"><i class="fa fa-bars"></i></span>
    </div>
    <div class="category__content">
        <ul class="menu--mobile">
            <li class="daily-deals category-item"><a href="flash-sale.html">Daily Deals</a></li>
            <li class="category-item"><a href="shop-categories.html">Top Promotions</a></li>
            <li class="category-item"><a href="shop-categories.html">New Arrivals</a></li>
            @foreach($categories as $cat)
            <li class="category-item"><a href="#">{{$cat->name}}</a><span class="sub-toggle"><i class="fa fa-arrow-down text-dark"></i></span>

            </li>
            @endforeach

        </ul>
    </div>
</div>