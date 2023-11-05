<?php

namespace App\Http\Livewire;

use Livewire\Component;
use App\Models\Product;

class CompareComponent extends Component
{
    public $product_id;

    public function mount($id)
    {
        $this->product_id = $id;
    }
    public function render()
    {
        $product = Product::where('id', $this->product_id)->first();
        $compares = Product::inRandomOrder()->limit(2)->get();
        return view(
        'livewire.compare-component', ['product' => $product, 'compares' => $compares])->layout('layouts.base');
    }
}
