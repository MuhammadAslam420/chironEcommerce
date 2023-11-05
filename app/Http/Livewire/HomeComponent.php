<?php

namespace App\Http\Livewire;

use Livewire\Component;
use App\Models\Product;
use App\Models\Category;
use Cart;
use App\Models\Banner;


class HomeComponent extends Component
{

    public $qty;
    protected $listeners = ['refreshComponent' => '$refresh'];
    public function mount()
    {

        $this->qty = 1;
    }
    public function store($product_id, $product_name, $product_price)
    {
        Cart::instance('cart')->add($product_id, $product_name, $this->qty, $product_price)->associate('App\Models\Product');
        $this->emitTo('cart-count-component', 'refreshComponent');
        $this->emitTo('mobile-cart-count-component', 'refreshComponent');
        // session()->flash('success_message','Item added to Cart'
    }
    public function addToWishlist($product_id, $product_name, $product_price)
    {
        Cart::instance('wishlist')->add($product_id, $product_name, $this->qty, $product_price)->associate('App\Models\Product');
        $this->emitTo('wishlist-count-component', 'refreshComponent');
        $this->emitTo('mobile-wishlist-count-component', 'refreshComponent');
    }

    public function removeFromWishlist($product_id)
    {
        foreach (Cart::instance('wishlist')->content() as $witems) {
            if ($witems->id == $product_id) {
                Cart::instance('wishlist')->remove($witems->rowId);
                $this->emitTo('wishlist-count-component', 'refreshComponent');
                $this->emitTo('mobile-wishlist-count-component', 'refreshComponent');
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
        $categories = Category::where('parent_id',0)->get();
        $banners = Banner::where('status', 1)->get();
        $banners2=Banner::where('status',0)->get();
        $options = Category::InRandomOrder()->limit(3)->get();
        $meals = Product::where('category_ids', 'LIKE', '%{"id":"10","position":1}%')->where('discount', '=', 0)->inRandomOrder()->take(8)->get();
        $drinks = Product::where('category_ids', 'LIKE', '%{"id":"3","position":1}%')->where('discount', '=', 0)->inRandomOrder()->take(8)->get();
        $kitchens = Product::where('category_ids', 'LIKE', '%{"id":"10","position":1}%')->where('discount', '=', 0)->inRandomOrder()->take(8)->get();
        return view('livewire.home-component', ['categories' => $categories, 'meals' => $meals, 'drinks' => $drinks, 'kitchens' => $kitchens, 'options' => $options, 'banners' => $banners,
        'banners2'=>$banners2])->layout('layouts.base');
    }
}
