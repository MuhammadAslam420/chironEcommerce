<ul class="menu">
    <li class="menu-item-has-children has-mega-menu">
        <button class="category-toggler" style="background:red;color:white; border:none;border-radius:5px; padding:4px 10px;font-weight:700; font-size:14px;"><i class="fa fa-bars text-light" style="padding-right:10px;"></i>Shop By Categories</button>
        <div class="mega-menu mega-menu-category">
            <ul class="menu--mobile menu--horizontal">

                <li class="daily-deals category-item"><a href="{{route('daily-needs')}}">Daily Deals</a></li>
                @foreach($categories as $cat)
                <li class="{{count($cat->childes) > 0 ? 'has-mega-menu':''}} category-item"><a href="{{route('product.category',['category_id'=>$cat->id])}}">{{$cat->name}}</a>
                @if(count($cat->childes)>0)
                <span class="sub-toggle"><i class="fa fa-arrow-right"></i></span>
                    <div class="mega-menu">
                        <div class="mega-anchor"></div>
                        <div class="mega-menu__column">
                            <h4>{{$cat->name}}<span class="sub-toggle"></span></h4>
                            <ul class="sub-menu--mega">
                            
                                <div class="row">
                                    <div class="col-md-6">
                                    @foreach($cat->childes as $scategory)
                                    <li><a href="{{route('product.category',['category_id'=>$cat->id,'scategory_id'=>$scategory->id])}}">{{$scategory->name}}</a></li>
                                    @endforeach
                                    </div>
                                    <div class="col-md-6 p-1">
                                        <img src="https://app.chiron.ae/storage/app/public/category/{{$cat->image}}" alt="">
                                    </div>
                                </div>
                           
                                
                            </ul>
                        </div>
                        <!-- <div class="mega-menu__column">
                            <h4>Vegetables<span class="sub-toggle"></span></h4>
                            <ul class="sub-menu--mega">
                                <li><a href="shop-view-grid.html">Potatoes</a></li>
                                <li><a href="shop-view-grid.html">Carrots & Root Vegetables</a></li>
                                <li><a href="shop-view-grid.html">Broccoli & Cauliflower</a></li>
                                <li><a href="shop-view-grid.html">Cabbage, Spinach & Greens</a></li>
                                <li><a href="shop-view-grid.html">Onions, Leeks & Garlic</a></li>
                                <li><a href="shop-view-grid.html">Mushrooms</a></li>
                                <li><a href="shop-view-grid.html">Tomatoes</a></li>
                                <li><a href="shop-view-grid.html">Beans, Peas & Sweetcom</a></li>
                            </ul>
                        </div> -->
                    </div>
                    @endif
                </li>
                
                <!-- <li class="has-mega-menu category-item"><a href="javascript:void(0);">Fresh</a><span class="sub-toggle"><i class="fa fa-arrow-right"></i></span>
                    <div class="mega-menu">
                        <div class="mega-anchor"></div>
                        <div class="mega-menu__column">
                            <h4>Fruit<span class="sub-toggle"></span></h4>
                            <ul class="sub-menu--mega">
                                <li><a href="shop-view-grid.html">Apples</a></li>
                                <li><a href="shop-view-grid.html">Bananas</a></li>
                                <li><a href="shop-view-grid.html">Berries</a></li>
                                <li><a href="shop-view-grid.html">Oranges & Easy Peelers</a></li>
                                <li><a href="shop-view-grid.html">Grapes</a></li>
                                <li><a href="shop-view-grid.html">Lemons & Limes</a></li>
                                <li><a href="shop-view-grid.html">Peaches & Nectarines</a></li>
                                <li><a href="shop-view-grid.html">Pears</a></li>
                                <li><a href="shop-view-grid.html">Melon</a></li>
                                <li><a href="shop-view-grid.html">Avocados</a></li>
                                <li><a href="shop-view-grid.html">Plums & Apricots</a></li>
                                <li class="see-all"><a href="shop-view-grid.html">See all products <i class='fa fa-arrow-right'></i></a></li>
                            </ul>
                        </div>
                        <div class="mega-menu__column">
                            <h4>Vegetables<span class="sub-toggle"></span></h4>
                            <ul class="sub-menu--mega">
                                <li><a href="shop-view-grid.html">Potatoes</a></li>
                                <li><a href="shop-view-grid.html">Carrots & Root Vegetables</a></li>
                                <li><a href="shop-view-grid.html">Broccoli & Cauliflower</a></li>
                                <li><a href="shop-view-grid.html">Cabbage, Spinach & Greens</a></li>
                                <li><a href="shop-view-grid.html">Onions, Leeks & Garlic</a></li>
                                <li><a href="shop-view-grid.html">Mushrooms</a></li>
                                <li><a href="shop-view-grid.html">Tomatoes</a></li>
                                <li><a href="shop-view-grid.html">Beans, Peas & Sweetcom</a></li>
                            </ul>
                        </div>
                    </div>
                </li>
                <li class="has-mega-menu category-item"><a href="javascript:void(0);">Food Cupboard</a><span class="sub-toggle"><i class="fa fa-arrow-left"></i></span>
                    <div class="mega-menu">
                        <div class="mega-anchor"></div>
                        <div class="mega-menu__column">
                            <h4>Crisps, Snacks &amp; Nuts<span class="sub-toggle"></span></h4>
                            <ul class="sub-menu--mega">
                                <li><a href="shop-view-grid.html">Crisps & Popcorn</a></li>
                                <li><a href="shop-view-grid.html">Nuts & Seeds</a></li>
                                <li><a href="shop-view-grid.html">Lighter Options</a></li>
                                <li><a href="shop-view-grid.html">Cereal Bars</a></li>
                                <li><a href="shop-view-grid.html">Breadsticks & Pretzels</a></li>
                                <li><a href="shop-view-grid.html">Fruit Snacking</a></li>
                                <li><a href="shop-view-grid.html">Rice & Corn Cakes</a></li>
                                <li><a href="shop-view-grid.html">Protein & Energy Snacks</a></li>
                                <li><a href="shop-view-grid.html">Toddler Snacks</a></li>
                                <li><a href="shop-view-grid.html">Meat Snacks</a></li>
                                <li><a href="shop-view-grid.html">Beans</a></li>
                                <li><a href="shop-view-grid.html">Lentils</a></li>
                                <li><a href="shop-view-grid.html">Chickpeas</a></li>
                                <li class="see-all"><a href="shop-view-grid.html">See all products <i class='fa fa-arrow-right'></i></a></li>
                            </ul>
                        </div>
                        <div class="mega-menu__column">
                            <h4>Tins &amp; Cans<span class="sub-toggle"></span></h4>
                            <ul class="sub-menu--mega">
                                <li><a href="shop-view-grid.html">Tomatoes</a></li>
                                <li><a href="shop-view-grid.html">Baked Beans, Spaghetti</a></li>
                                <li><a href="shop-view-grid.html">Fish</a></li>
                                <li><a href="shop-view-grid.html">Beans & Pulses</a></li>
                                <li><a href="shop-view-grid.html">Fruit</a></li>
                                <li><a href="shop-view-grid.html">Caconut Milk & Cream</a></li>
                                <li><a href="shop-view-grid.html">Lighter Options</a></li>
                                <li><a href="shop-view-grid.html">Olives</a></li>
                                <li><a href="shop-view-grid.html">Sweetcorn</a></li>
                                <li><a href="shop-view-grid.html">Carrots</a></li>
                                <li><a href="shop-view-grid.html">Peas</a></li>
                                <li><a href="shop-view-grid.html">Mixed Vegetables</a></li>
                            </ul>
                        </div>
                        <div class="mega-menu__column"><a class="mega-menu__thumbnail" href="flash-sale.html"><img src="img/promotion/mega_food.jpg" alt="alt" /></a>
                        </div>
                    </div>
                </li>
                <li class="category-item"><a href="shop-categories.html">Bakery</a></li>
                <li class="category-item"><a href="shop-categories.html">Frozen Foods</a></li>
                <li class="has-mega-menu category-item"><a href="javascript:void(0);">Ready Meals</a><span class="sub-toggle"><i class="fa fa-arrow-left"></i></span>
                    <div class="mega-menu">
                        <div class="mega-anchor"></div>
                        <div class="mega-menu__column">
                            <h4>Ready Meals<span class="sub-toggle"></span></h4>
                            <ul class="sub-menu--mega">
                                <li><a href="#">Meals for 1</a></li>
                                <li><a href="#">Meals for 2</a></li>
                                <li><a href="#">Indian</a></li>
                                <li><a href="#">Italian</a></li>
                                <li><a href="#">Chinese</a></li>
                                <li><a href="#">Traditional British</a></li>
                                <li><a href="#">Thai & Oriental</a></li>
                                <li><a href="#">Mediterrancan & Moroccan</a></li>
                                <li><a href="#">Mexican & Caribbean</a></li>
                                <li><a href="#">Lighter Meals</a></li>
                                <li><a href="#">Lunch & Veg Pots</a></li>
                                <li class="see-all"><a href="#">See all products <i class='fa fa-arrow-right'></i></a></li>
                            </ul>
                        </div>
                        <div class="mega-menu__column">
                            <h4>Salad &amp; Herbs<span class="sub-toggle"></span></h4>
                            <ul class="sub-menu--mega">
                                <li><a href="#">Salad Bags</a></li>
                                <li><a href="#">Cucumber</a></li>
                                <li><a href="#">Tomatoes</a></li>
                                <li><a href="#">Lettuce</a></li>
                                <li><a href="#">Lunch Salad Bowls</a></li>
                                <li><a href="#">Fresh Herbs</a></li>
                                <li><a href="#">Avccados</a></li>
                                <li><a href="#">Peppers</a></li>
                                <li><a href="#">Coleslaw & Potato Salad</a></li>
                                <li><a href="#">Spring Onions</a></li>
                                <li><a href="#">Chili, Ginger & Ganic</a></li>
                            </ul>
                        </div>
                        <div class="mega-menu__column"><a class="mega-menu__thumbnail" href="flash-sale.html"><img src="img/promotion/mega_ready.jpg" alt="alt" /></a>
                        </div>
                    </div>
                </li>
                <li class="category-item"><a href="shop-categories.html">Drinks, Tea & Coffee</a></li>
                <li class="category-item"><a href="shop-categories.html">Beer, Wine & Spirits</a></li>
                <li class="category-item"><a href="shop-categories.html">Baby & Child</a></li>
                <li class="category-item"><a href="shop-categories.html">Kitchen & Dining</a></li> -->
                @endforeach
            </ul>
        </div>
    </li>
</ul>