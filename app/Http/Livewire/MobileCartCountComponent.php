<?php

namespace App\Http\Livewire;

use Livewire\Component;
use Cart;

class MobileCartCountComponent extends Component
{
    protected $listeners = ['refreshComponent' => '$refresh'];
    public function destroy($rowId)
    {
        Cart::instance('cart')->remove($rowId);
        $this->emitTo('cart-count-component', 'refreshComponent');
    }
    public function render()
    {
        return view('livewire.mobile-cart-count-component');
    }
}
