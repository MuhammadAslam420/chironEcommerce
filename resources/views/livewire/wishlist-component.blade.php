<main class="no-main">
    <div class="ps-breadcrumb">
        <div class="container">
            <ul class="ps-breadcrumb__list">
                <li class="active"><a href="/">Home</a></li>
                <li class="active"><a href="/shop">Shop</a></li>
                <li><a href="javascript:void(0);">My Wishlist</a></li>
            </ul>
        </div>
    </div>
    <section class="section--shopping-cart">
        <div class="container shopping-container">
            <h2 class="page__title">My Wishlist</h2>
            <div class="shopping-cart__content">
                <div class="row m-0">
                    @if(Cart::instance('wishlist')->count() > 0)
                    <div class="col-12 col-lg-12">
                        <div class="card">

                            <div class="card-body">
                                <table class="table table-striped">
                                    <thead>
                                        <tr>
                                            <th>Product</th>
                                            <th>Price</th>
                                            <th>Quantity</th>
                                            <th>Remove From Wishlist</th>
                                            <th>Move To Cart</th>
                                        </tr>

                                    </thead>
                                    <tbody>
                                        @foreach(Cart::instance('wishlist')->content() as $item)
                                        <tr>
                                            <td class="justify-content-center"><a href="{{route('product-detail',['id'=>$item->model->id])}}"><img class="ps-product__thumbnail" src="{{asset('public/product')}}/{{json_decode($item->model['image'],true)[0]}}" alt="{{$item->model->name}}" width="150" /></a>
                                                <h5><a class="ps-product__name" href="{{route('product-detail',['id'=>$item->model->id])}}">{{$item->model->name}}</a></h5>
                                                <p class=" ps-product__unit">{{$item->model->weight}}g</p>
                                                <p class="ps-product__soldby">Sold by <span>Chiron</span></p>
                                            </td>
                                            <td class="justify-content-center">
                                                <p class="ps-product__meta">Price: <span class="ps-product__price">{{$item->model->price}}</span></p>
                                            </td>
                                            <td class="justify-content-center">
                                                <p class="ps-product_meta">{{$item->qty}}</p>
                                            </td>
                                            <td class="justify-content-center">
                                                <a href="#" wire:click.prevent="removeFromWishlist({{$item->model->id}})">
                                                    <i class="fa fa-heart text-danger fa-2x" aria-hidden="true"></i>
                                                </a>
                                            </td>
                                            <td class="justify-content-center"><a href="#" wire:click.prevent="moveProductFromWishlistToCart('{{$item->rowId}}')"><i class="fa fa-shopping-cart text-success fa-2x" aria-hidden="true"></i></a></td>
                                        </tr>
                                        @endforeach
                                        @else
                                        <tr>No Item found in Your Wishlist</tr>
                                        @endif
                                    </tbody>
                                </table>
                            </div>
                        </div>

                    </div>

                </div>
            </div>
        </div>
        </div>
    </section>
</main>