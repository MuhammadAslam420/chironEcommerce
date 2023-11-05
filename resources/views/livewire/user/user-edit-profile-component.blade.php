<main class="no-main">
    <div class="container" style="padding:20px 0;">
        <div class="row">
            <div class="col-md-12 mt-4 mb-4"><a href="{{route('user.dashboard')}}" class="btn btn-info float-right">
                    <p class="text-light">Dashboard</p>
                </a>
            </div>

            <div class="col-md-12">
                <div class="card">
                    <div class="card-header">
                        Customer Address
                    </div>
                    <div class="card-body">
                        @if(Session::has('message'))
                        <div class="alert alert-success">{{Session::get('message')}}</div>
                        @endif
                        <form enctype="multipart/form-data" wire:submit.prevent=" updateAddress">
                            <div class="row">

                                <div class="col-md-12">


                                    <p><b>Mobile</b><input type="text" class="form-control input-md" placeholder="Contact Number" wire:model="mobile"></p>
                                    <p><b>Address Type: </b> <input type="text" class="form-control input-md" placeholder="Address type" wire:model="address_type"></p>
                                    <p><b>Address: </b> <input type="text" class="form-control input-md" placeholder="Address" wire:model="address"></p>
                                    <p><b>Latitude: </b> <input type="text" class="form-control input-md" placeholder="Latitude" wire:model="latitude"></p>
                                    <p><b>Longitude: </b> <input type="text" class="form-control input-md" placeholder="Longitude" wire:model="longitude"></p>
                                    <p><b>contact Person Name: </b> <input type="text" class="form-control input-md" placeholder="Contact Person Name" wire:model="contact_person_name"></p>
                                    <button type="submit" class="btn btn-warning pull-right">Update Shipping Address</button>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>

    </div>
</main>