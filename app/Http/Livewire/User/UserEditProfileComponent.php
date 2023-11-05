<?php

namespace App\Http\Livewire\User;

use Livewire\Component;
use Illuminate\Support\Facades\Auth;
use App\Models\Profile;
use Illuminate\Support\Str;
use Carbon\Carbon;
use Livewire\WithFileUploads;
use App\Models\User;
use App\Models\CustomerAddress;

class UserEditProfileComponent extends Component
{
    use WithFileUploads;
    public $address_type;
    public $mobile;
    public $address;
    public $latitude;
    public $longitude;
    public $contact_person_name;
    public $add_id;
    public function mount($id)
    {
        $this->add_id = $id;
        $customer = CustomerAddress::find($this->add_id);
        $this->address_type = $customer->address_type;
        $this->mobile = $customer->contact_person_number;

        $this->address = $customer->address;
        $this->latitude = $customer->latitude;
        $this->longitude = $customer->longitude;
        $this->contact_person_name = $customer->contact_person_name;
    }
    public function updateAddress()
    {
        $custmer = CustomerAddress::find($this->add_id);
        $custmer->contact_person_number = $this->mobile;
        $custmer->address_type = $this->address_type;
        $custmer->address = $this->address;
        $custmer->latitude = $this->latitude;
        $custmer->longitude = $this->longitude;
        $custmer->contact_person_name = $this->contact_person_name;
        $custmer->save();
        session()->flash('message', 'Address  has been updated successfully');
    }
    public function render()
    {
        return view('livewire.user.user-edit-profile-component')->layout('layouts.base');
    }
}
