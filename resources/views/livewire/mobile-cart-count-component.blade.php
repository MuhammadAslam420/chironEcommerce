<li class="nav-item"><a class="nav-link footer-cart" href="/cart"><i class="fa fa-shopping-cart"></i>
        @if(Cart::instance('cart')->count()>0)
        <span class="badge bg-warning">{{Cart::instance('cart')->count()}}</span>
        @else
        <span class="badge bg-warning">0</span>
        @endif
        <span>Cart</span></a>
</li>