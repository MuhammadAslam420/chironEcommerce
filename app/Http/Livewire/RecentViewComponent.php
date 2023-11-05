<?php

namespace App\Http\Livewire;

use Livewire\Component;
use App\Models\Product;

class RecentViewComponent extends Component
{
    public function render()
    {

        $recents = Product::inRandomOrder()->limit(12)->get();
        return view('livewire.recent-view-component', ['recents' => $recents])->layout('layouts.base');
    }
}
