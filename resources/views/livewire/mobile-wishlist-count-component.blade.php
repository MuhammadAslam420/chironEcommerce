<li class="nav-item"><a class="nav-link" href="/wishlist"><i class="fa fa-heart-o"></i>
        @if(Cart::instance('wishlist')->count() >0)
        <span class="badge bg-warning">{{Cart::instance('wishlist')->count()}}</span>
        @else
        <span class="badge bg-warning">0</span>
        @endif
        <span>Wishlist</span></a>
</li>