<main class="no-main">
    <div class="container" style="padding:20px 0;">
        <div class="row">
            <div class="col-md-12 mt-4 mb-4"><a href="{{route('user.dashboard')}}" class="btn btn-info float-right">
                    <p class="text-light">Dashboard</p>
                </a></div>

            <div class="col-md-12">
                <div class="card">
                    <div class="card-header">
                        Customer Address
                    </div>
                    <div class="card-body">
                        @if(Session::has('message'))
                        <div class="alert alert-success">{{Session::get('message')}}</div>
                        @endif
                        <form enctype="multipart/form-data" wire:submit.prevent="addNewAddress">
                            <div class="row">

                                <div class="col-md-12">

                                    <div class="form-group">
                                        <label for="addres_type">Address Type*</label>
                                        <input type="text" required class="form-control" name="address_type" placeholder="Address Type" wire:model="address_type">
                                        @error('address_type') <div class="alert alert-danger">{{$message}}</div>@enderror
                                    </div>
                                    <div class="form-group">
                                        <label for="addres_type">Contact Person Number*</label>
                                        <input type="text" required class="form-control" name="contact_person_number" placeholder="Contact Person Number" wire:model="contact_person_number">
                                        @error('contact_person_number') <div class="alert alert-danger">{{$message}}</div>@enderror
                                    </div>
                                    <div class="form-group">
                                        <label for="addres_type">Contact Person Name*</label>
                                        <input type="text" required class="form-control" name="contact_person_name" placeholder="Contact Person Name" wire:model="contact_person_name">
                                        @error('contact_person_name') <div class="alert alert-danger">{{$message}}</div>@enderror
                                    </div>
                                    <div class="form-group">
                                        <label for="addres_type">Address*</label>
                                        <input type="text" required class="form-control" name="address" placeholder="Address" wire:model="address">
                                        @error('address') <div class="alert alert-danger">{{$message}}</div>@enderror
                                    </div>
                                    <div class="form-group">
                                        <label for="addres_type">Latitude*</label>
                                        <input type="text" required class="form-control" name="latitude" placeholder="Latitude" wire:model="latitude">
                                        @error('latitude') <div class="alert alert-danger">{{$message}}</div>@enderror
                                    </div>
                                    <div class="form-group">
                                        <label for="addres_type">longitude*</label>
                                        <input type="text" required class="form-control" name="longitude" placeholder="Longitude" wire:model="longitude">
                                        @error('longitude') <div class="alert alert-danger">{{$message}}</div>@enderror
                                    </div>

                                    <button type="submit" class="btn btn-success pull-right btn-md"><b class="text-light">Add New Address</b></button>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>

    </div>
</main>