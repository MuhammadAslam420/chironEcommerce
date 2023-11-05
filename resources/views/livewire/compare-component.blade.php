<main class="no-main">
    <div class="ps-breadcrumb">
        <div class="container">
            <ul class="ps-breadcrumb__list">
                <li class="active"><a href="/">Home</a></li>
                <li><a href="javascript:void(0);">Compare</a></li>
            </ul>
        </div>
    </div>
    <section class="section-shop">
        <div class="container mt-5">
            <div class="col-lg-12">
                <div class="row">
                    <div class="col-lg-4">

                        <div class="card">
                            <div class="card-title text-center p-5">
                                <h4 style="font-weight:700;">Product 1</h4>
                            </div>
                            <div class="card-body">
                                <table class="table table-striped table-responsive">
                                    <tr class="justify-content-center">
                                        <td class="justify-content-center"><img src="https://app.chiron.ae/storage/app/public/product/{{json_decode($product['image'],true)[0]}}" alt=""></td>
                                    </tr>
                                    <tr>
                                        <td>Name &nbsp;</td>
                                        <td>{{$product->name}}</td>
                                    </tr>
                                    <tr>
                                        <td>Price &nbsp;</td>
                                        <td>{{$product->price}}</td>
                                    </tr>

                                    <tr>
                                        <td>Unit &nbsp;</td>
                                        <td>{{$product->unit}}</td>
                                    </tr>
                                    <tr>
                                        <td>Stock &nbsp;</td>
                                        <td>{{$product->total_stock}}</td>
                                    </tr>
                                </table>
                            </div>
                        </div>

                    </div>
                    @php
                    $i=2;
                    @endphp
                    @foreach($compares as $product)
                    <div class="col-lg-4">

                        <div class="card">
                            <div class="card-title text-center p-5">
                                <h4 style="font-weight:700;">Product {{$i++}}</h4>
                            </div>
                            <div class="card-body">
                                <table class="table table-striped table-responsive">
                                    <tr class="justify-content-center">
                                        <td class="justify-content-center"><img src="https://app.chiron.ae/storage/app/public/product/{{json_decode($product['image'],true)[0]}}" alt=""></td>
                                    </tr>
                                    <tr>
                                        <td>Name &nbsp;</td>
                                        <td>{{$product->name}}</td>
                                    </tr>
                                    <tr>
                                        <td>Price &nbsp;</td>
                                        <td>{{$product->price}}</td>
                                    </tr>

                                    <tr>
                                        <td>Measuring Unit &nbsp;</td>
                                        <td>{{$product->unit}}</td>
                                    </tr>
                                    <tr>
                                        <td>Stock &nbsp;</td>
                                        <td>{{$product->total_stock}}</td>
                                    </tr>
                                </table>
                            </div>
                        </div>

                    </div>
                    @endforeach
                </div>
            </div>
        </div>
    </section>


</main>