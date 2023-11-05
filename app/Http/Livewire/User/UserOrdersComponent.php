<?php

namespace App\Http\Livewire\User;

use Livewire\Component;
use App\Models\Order;
use Livewire\WithPaginate;
use Illuminate\Support\Facades\Auth;
use Livewire\WithPagination;

class UserOrdersComponent extends Component
{
    use WithPagination;
    public function render()
    {
        $orders = Order::where('user_id', Auth::user()->id)->paginate(12);
        $totalcost = Order::where('user_id', Auth::user()->id)->sum('order_amount');
        return view('livewire.user.user-orders-component', ['orders' => $orders, 'totalcost' => $totalcost])->layout('layouts.base');
    }
}
