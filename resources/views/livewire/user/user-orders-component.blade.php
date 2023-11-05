<main class="no-main">
    <div class="container" style="padding:20px;">
        <div class="row">
            <div class="col-12 col-lg-12 col-md-12 col-sm-6">
                <div class="card">
                    <div class="card-header" style="background:#ed1d2d;">
                        <div class="card-title">
                            <h4 class="text-light">My Orders</h4>
                        </div>
                        <div class="card-title mr-5 float-right">
                            <a href="{{route('user.dashboard')}}" class="btn btn-info" style="font-size:15px;font-weight:700;">Dashboard</a>
                        </div>
                    </div>
                    <div class="card-body">

                        <table class="table table-striped table-bordered table-responsive">
                            <thead>
                                <tr>
                                    <th scope="col">Order No</th>
                                    <th scope="col">Order ID</th>
                                    <th scope="col">Order Payment</th>
                                    <th scope="col">Email Address</th>
                                    <th scope="col">Order Payment Modes</th>
                                    <th scope="col">Shipping</th>
                                    <th scope="col">Order Status</th>
                                    <th scope="col">Order Date</th>
                                    <th scope="col">Order Detail</th>
                                </tr>
                            </thead>
                            <tbody>
                                @php
                                $i=1;
                                @endphp
                                @foreach($orders as $order)
                                <tr>
                                    <td>{{$i++}}</td>
                                    <td>{{$order->id}}</td>
                                    <td>{{$order->order_amount}}د.إ</td>
                                    <td>{{Auth::user()->email}}</td>

                                    <td>{{$order->payment_method}}</td>
                                    <td>
                                        @if($order->delivery_charge > 0)
                                        {{$order->delivery_charge}}د.إ
                                        @else
                                        Free Shipping
                                        @endif
                                    </td>
                                    <td>{{$order->order_status}}</td>
                                    <td>{{$order->created_at}}</td>
                                    <td><a href="{{route('user.orderdetail',['order_id'=>$order->id])}}" class="btn btn-primary"><i class="fa fa-eye fa-2x text-light"></i></a></td>
                                </tr>
                                @endforeach
                            </tbody>
                            <tfoot>
                                <tr>
                                    <th scope="col">Total Orders</th>
                                    <th scope="col">Total Cost</th>


                                </tr>
                                <tr>
                                    <td>{{$orders->count()}}</td>
                                    <td>{{$totalcost}}د.إ</td>
                                </tr>
                            </tfoot>
                        </table>
                        {{$orders->links("pagination::bootstrap-4")}}
                    </div>
                </div>
            </div>
        </div>
    </div>
</main>