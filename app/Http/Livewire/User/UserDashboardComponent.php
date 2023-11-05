<?php

namespace App\Http\Livewire\User;

use Livewire\Component;
use App\Models\Order;
use Illuminate\Support\Facades\Auth;
use Livewire\WithPagination;

class UserDashboardComponent extends Component
{
    use WithPagination;
    public function render()
    {
        $orders = Order::orderBy('created_at', 'DESC')->where('user_id', Auth::user()->id)->get()->take(10);
        $totalOrders = Order::where('user_id', Auth::user()->id)->count();
        $totalcost = Order::where('order_status', '!=', 'canceled')->where('user_id', Auth::user()->id)->sum('order_amount');
        //$totalpurchase=Order::where('status','!=','canceled')->where('user_id',Auth::user()->id)->count();
        $totaldelivered = Order::where('order_status', 'delivered')->where('user_id', Auth::user()->id)->count();
        $totalcancel = Order::where('order_status', 'canceled')->where('user_id', Auth::user()->id)->count();

        return view('livewire.user.user-dashboard-component', [
            'orders' => $orders, 'totalcost' => $totalcost,
            'totaldelivered' => $totaldelivered, 'totalcancel' => $totalcancel, 'totalOrders' => $totalOrders
        ])->layout('layouts.base');
    }
}
