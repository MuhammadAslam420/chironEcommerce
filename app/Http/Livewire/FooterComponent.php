<?php

namespace App\Http\Livewire;

use Livewire\Component;
use App\Models\BusinessSetting;

class FooterComponent extends Component
{
    public function render()
    {
        $settings=BusinessSetting::all();
        //$phone=BusinessSetting::where(['key'=>'phone'])->first();
         return view('livewire.footer-component',['settings'=>$settings])->layout('layouts.base');
    }
}
