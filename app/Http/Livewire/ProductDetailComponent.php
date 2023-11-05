<?php

namespace App\Http\Livewire;

use Livewire\Component;
use App\Models\Category;
use App\Models\Product;
//use App\Models\Sale;
use Cart;

class ProductDetailComponent extends Component
{
    protected $listeners = ['refreshComponent' => '$refresh'];
    public $product_id;
    public $qty;
     
    public function mount($id)
    {
        $this->product_id = $id;
        $this->qty = 1;
    }
    public function store($product_id, $product_name, $product_price)
    {
        Cart::instance('cart')->add($product_id, $product_name, $this->qty, $product_price)->associate('App\Models\Product');
        session()->flash('success_message', 'Item added to Cart');
        $this->emitTo('cart-count-component', 'refreshComponent');
        $this->emitTo('mobile-cart-count-component', 'refreshComponent');
        //return redirect()->route('product.cart');
         //sleep(5);
        //return redirect()->back();
    }
    public function addToWishlist($product_id, $product_name, $product_price)
    {
        Cart::instance('wishlist')->add($product_id, $product_name, 1, $product_price)->associate('App\Models\Product');
        $this->emitTo('wishlist-count-component', 'refreshComponent');
    }
    public function removeFromWishlist($product_id)
    {
        foreach (Cart::instance('wishlist')->content() as $witems) {
            if ($witems->id == $product_id) {
                Cart::instance('wishlist')->remove($witems->rowId);
                $this->emitTo('wishlist-count-component', 'refreshComponent');
                return;
            }
        }
    }
    public function increaseQunatity()
    {
        $this->qty++;
    }
    public function decreaseQuantity()
    {
        if ($this->qty > 1) {
            $this->qty--;
        }
    }
    public function render()
    {
        $product = Product::find($this->product_id);
        //$popular_products=Product::inRandomOrder()->limit(4)->get();
        //$related_products=Product::where('category_id',$product->category_id)->inRandomOrder()->limit(5)->get();
        //$sale=Sale::find(1);

        return view(
        'livewire.product-detail-component', ['product' => $product])->layout('layouts.base');
    }
}
