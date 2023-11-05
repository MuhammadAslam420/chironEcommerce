<?php

namespace App\Http\Livewire\User;

use Livewire\Component;
use App\Models\OrderDetail;
use App\Models\Review;
use App\Models\Product;
use Illuminate\Support\Facades\Auth;

class UserReviewComponent extends Component
{
    public $order_item_id;
    public $order_id;
    public  $rating;
    public $comment;

    public function mount($order_item_id,$order_id)
    {
        $this->order_item_id = $order_item_id;
        $this->order_id=$order_id;
    }
    public function updated($fields)
    {
        $this->validateOnly($fields, [
            'rating' => 'required',
            'comment' => 'required',
        ]);
    }
    public function addReview()
    {
        $this->validate([
            'rating' => 'required',
            'comment' => 'required',

        ]);
        $review = new Review();
        $review->product_id = $this->order_item_id;
        $review->user_id=Auth::user()->id;
        $review->comment = $this->comment;
        $review->rating = $this->rating; 
        $review->order_id=$this->order_id; 
        $review->save();
        session()->flash('re_msg', 'Review and Rating has been added successfully!');
    }
    public function render()
    {
        $orderItem=Product::find($this->order_item_id);
        return view('livewire.user.user-review-component',['orderItem'=>$orderItem])->layout('layouts.base');
    }
}
