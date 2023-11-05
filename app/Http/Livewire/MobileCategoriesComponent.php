<?php

namespace App\Http\Livewire;

use Livewire\Component;
use App\Models\Category;

class MobileCategoriesComponent extends Component
{
    public function render()
    {
        $categories = Category::where('parent_id',0)->get();
        return view(
        'livewire.mobile-categories-component', ['categories' => $categories])->layout('layouts.base');
    }
}
