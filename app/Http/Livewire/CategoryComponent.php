<?php

namespace App\Http\Livewire;

use Livewire\Component;
use Livewire\WithPagination;
use Cart;
use App\Models\Category;
use App\Models\Product;
use Illuminate\Support\Facades\Auth;
use App\Models\Banner;

class CategoryComponent extends Component
{
    protected $listeners = ['refreshComponent' => '$refresh'];
    public $sorting;
    public $pagesize;
    public $min_price;
    public $max_price;
    public $category_id;

    public function mount($category_id)
    {
        $this->sorting = 'default';
        $this->pagesize = 12;
        $this->min_price = 10;
        $this->max_price = 1000;
        $this->category_id = $category_id;
    }
    public function store($product_id, $product_name, $product_price)
    {
        Cart::instance('cart')->add($product_id, $product_name, 1, $product_price)->associate('App\Models\Product');
        $this->emitTo('cart-count-component', 'refreshComponent');
        $this->emitTo('mobile-cart-count-component', 'refreshComponent');
        // session()->flash('success_message','Item added to Cart');
       // sleep(5);
        //return redirect()->back();
    }
    public function addToWishlist($product_id, $product_name, $product_price)
    {
        Cart::instance('wishlist')->add($product_id, $product_name, 1, $product_price)->associate('App\Models\Product');
        $this->emitTo('wishlist-count-component', 'refreshComponent');
        $this->emitTo('mobile-wishlist-count-component', 'refreshComponent');
        //return redirect()->back();
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

    use WithPagination;
    public function render()
    {
        $category = Category::where('id', $this->category_id)->first();
        $category_id = $category->id;
        $category_name = $category->name;
        if ($this->sorting == 'date') {
            $products = Product::where('category_ids', 'LIKE', "%{$category_id}%")->orderBy('created_at', 'DESC')->paginate($this->pagesize);
        } elseif ($this->sorting == 'price') {
            $products = Product::where('category_ids', 'LIKE', "%{$category_id}%")->orderBy('regular_price', 'ASC')->paginate($this->pagesize);
        } elseif ($this->sorting == 'price-desc') {
            $products = Product::where('category_ids', 'LIKE', "%{$category_id}%")->orderBy('regular_price', 'DESC')->paginate($this->pagesize);
        } else {
            $products = Product::where('category_ids', 'LIKE', "%{$category_id}%")->paginate($this->pagesize);
        }
        $categories = Category::where('parent_id',0)->get();
        $banners = Banner::where('status', 1)->get();
        return view(
        'livewire.category-component', ['categories' => $categories, 'products' => $products, 'category_name' => $category_name, 'banners' => $banners])->layout('layouts.base');
    }
}
