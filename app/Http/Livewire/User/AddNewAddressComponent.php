<?php

namespace App\Http\Livewire\User;

use Livewire\Component;
use App\Models\CustomerAddress;
use Illuminate\Support\Facades\Auth;
class AddNewAddressComponent extends Component
{
    public $address_type;
    public $address;
    public $contact_person_number;
    public $contact_person_name;
    public $latitude;
    public $longitude;
    public function addNewAddress()
    {
        $custmer = new CustomerAddress();
        $custmer->address_type = $this->address_type;
        $custmer->contact_person_number = $this->contact_person_number;
        $custmer->address = $this->address;
        $custmer->latitude = $this->latitude;
        $custmer->longitude = $this->longitude;
        $custmer->contact_person_name = $this->contact_person_name;
        $custmer->user_id = Auth::user()->id;
        $custmer->save();
        session()->flash('message', 'Address  has been updated successfully');
    }
    public function render()
    {
        return view('livewire.user.add-new-address-component')->layout('layouts.base');
    }
}
