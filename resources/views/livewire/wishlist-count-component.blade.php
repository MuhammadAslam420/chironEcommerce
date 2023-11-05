<a class="button-icon icon-md" href="{{route('product.wishlist')}}">
    <i class="fa fa-heart-o"></i>
    @if(Cart::instance('wishlist')->count() >0)
    <span class="badge bg-warning">{{Cart::instance('wishlist')->count()}}</span>
    @else
    <span class="badge bg-warning">0</span>
    @endif
</a>