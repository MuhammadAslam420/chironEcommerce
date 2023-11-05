<?php

namespace App\Http\Livewire;

use Livewire\Component;
use App\Models\Product;
use Livewire\WithPagination;
use App\Models\Category;
use Cart;
use App\Models\Banner;

class DailyNeedComponent extends Component
{
    use WithPagination;
    public $sorting;
    public $pagesize;
    public $min_price;
    public $max_price;
    protected $listeners = ['refreshComponent' => '$refresh'];
    public function mount()
    {
        $this->sorting = 'default';
        $this->pagesize = 12;
        $this->min_price = 0;
        $this->max_price = 1000;
    }
    public function store($product_id, $product_name, $product_price)
    {
        Cart::instance('cart')->add($product_id, $product_name, 1, $product_price)->associate('App\Models\Product');
        $this->emitTo('cart-count-component', 'refreshComponent');
        $this->emitTo('mobile-cart-count-component', 'refreshComponent');
        // session()->flash('success_message','Item added to Cart');
        //sleep(5);
        return redirect()->back();
    }
    public function addToWishlist($product_id, $product_name, $product_price)
    {
        Cart::instance('wishlist')->add($product_id, $product_name, 1, $product_price)->associate('App\Models\Product');
        $this->emitTo('wishlist-count-component', 'refreshComponent');
        $this->emitTo('mobile-wishlist-count-component', 'refreshComponent');
        return redirect()->back();
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

    public function render()
    {
        if ($this->sorting == 'date') {
            $products = Product::where('daily_needs', 1)->whereBetween('price', [$this->min_price, $this->max_price])->orderBy('created_at', 'DESC')->paginate($this->pagesize);
        } elseif ($this->sorting == 'price') {
            $products = Product::where('daily_needs', 1)->whereBetween('price', [$this->min_price, $this->max_price])->orderBy('price', 'ASC')->paginate($this->pagesize);
        } elseif ($this->sorting == 'price-desc') {
            $products = Product::where('daily_needs', 1)->whereBetween('price', [$this->min_price, $this->max_price])->orderBy('price', 'DESC')->paginate($this->pagesize);
        } else {
            $products = Product::where('daily_needs', 1)->whereBetween('price', [$this->min_price, $this->max_price])->paginate($this->pagesize);
        }
        $categories = Category::where('parent_id',0)->get();
        $banners = Banner::where('status', 1)->get();

        return view(
        'livewire.daily-need-component', ['categories' => $categories, 'products' => $products, 'banners' => $banners])->layout('layouts.base');
    }
}
