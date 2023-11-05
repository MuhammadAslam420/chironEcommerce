<?php

namespace App\Http\Livewire;

use Livewire\Component;
use App\Models\Product;

class MobileSearchComponent extends Component
{
    public function render()
    {
        $s_products = Product::inRandomOrder()->limit(6)->get();
        return view(
        'livewire.mobile-search-component', ['s_products' => $s_products])->layout('layouts.base');
    }
}
