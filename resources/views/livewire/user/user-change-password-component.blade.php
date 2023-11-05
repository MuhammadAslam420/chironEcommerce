<main class="no-main">
    <div class="container" style="padding:20px 0;">
        <div class="row">
            <div class="col-md-12 mt-4 mb-4"><a href="{{route('user.dashboard')}}" class="btn btn-info float-right">
                    <p class="text-light">Dashboard</p>
                </a></div>
            <div class="col-12">
                <div class="card">
                    @if(Session::has('pass_msg'))
                    <div class="alert alert-success">{{Session::get('pass_msg')}}</div>
                    @endif
                    @if(Session::has('fail_msg'))
                    <div class="alert alert-danger">{{Session::get('fail_msg')}}</div>
                    @endif
                    <div class="card-title text-center">
                        <h4 class="p-2">Account Setting</h4>
                    </div>
                    <div class="card-body">
                        <div class="row">
                            <div class="col-md-6">


                                <div class="col-md-12">
                                    <p><b>Name</b> {{$user->f_name}}&nbsp;{{$user->l_name}}</p>

                                    <p><b>Email</b> {{$user->email}}</p>
                                    @php
                                    $i=1;
                                    @endphp
                                    @foreach($user->customer as $cust)
                                    <p><b>Address # :&nbsp;</b>{{$i++}}</p>
                                    <p><b>Address Type:</b>{{$cust->address_type}}</p>
                                    <p><b>Mobile</b> {{$cust->contact_person_number}}</p>
                                    <p><b>Address: </b> {{$cust->address}}</p>
                                    <p><b>Latitude:</b>{{$cust->latitude}}</p>
                                    <p><b>Longitude:</b>{{$cust->longitude}}</p>
                                    <p><b>Contact Person Name:</b>{{$cust->contact_person_name}}</p>
                                    <a href="{{route('user.editprofile',['id'=>$cust->id])}}" class="btn btn-info pull-left" style="font-size:17px; font-weight:700;">Update Addres</a>
                                    <br><br>
                                    @endforeach
                                    <a href="{{route('user.addnewaddress')}}" class="btn btn-info pull-right" style="font-size:17px; font-weight:700;">Add New Address</a>

                                </div>
                            </div>
                            <div class="col-md-6" style="border-left:1px solid #666666;">
                                <div class="card-title">
                                    <h4 class="text-dark p4">Change Password</h4>
                                </div>
                                <form wire:submit.prevent="changePassword" class="form form-horizontal">
                                    <div class="form-group">
                                        <label for="old-password">Current Password <b class="text-danger">*</b></label>
                                        <input type="password" name="current_password" wire:model="current_password" class="form-control">
                                        @error('current_password') <div class="alert alert-danger">{{$message}}</div>@enderror
                                    </div>
                                    <div class="form-group">
                                        <label for="current-password">New Password <b class="text-danger">*</b></label>
                                        <input type="password" name="password" wire:model="password" class="form-control">
                                        @error('password') <div class="alert alert-danger">{{$message}}</div>@enderror
                                    </div>
                                    <div class="form-group">
                                        <label for="confirm-password">Confirm Password <b class="text-danger">*</b></label>
                                        <input type="password" class="form-control" name="password_confirmation" wire:model="password_confirmation">
                                        @error('password_confirmation') <div class="alert alert-danger">{{$message}}</div>@enderror
                                    </div>
                                    <button type="submit" class="btn btn-info float-right mt-5 p-4" style="font-size:17px; font-weight:700;">Update Password</button>


                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</main>