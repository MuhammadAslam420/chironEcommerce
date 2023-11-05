<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Order status</title>
</head>
<body>
    <p>Hi {{$order->firstname}} {{$order->lastname}}</p>
    <p>Your Order has been {{$order->status}}.Thanks to buy items with us. we looking forward to seeing you again to come and avail our new promotions.</p>
    <br>
    <table style="width:600px;text-align:right;">
    <thead>
        <tr>
            <th>Name</th>
            <th>Quantity</th>
            <th>Price</th>

        </tr>
    </thead>
    <tbody>
        @foreach($order->details as $item)
        <tr>
            <td>{{$item->product->name}}</td>
            <td>{{$item->quantity}}</td>
            <td>{{$item->price * $item->quantity}}</td>
        </tr>
        @endforeach
        <tr>
            <td colspan="3"></td>
            <td style="font-size:15px; font-weight:400;border-top:1px solid #ccc;">Subtotal: {{$order->subtotal}}</td>
        </tr>
        <tr>
            <td colspan="3"></td>
            <td style="font-size:15px; font-weight:400;border-top:1px solid #ccc;">Tax: {{$order->tax}}</td>
        </tr>
        <tr>
            <td colspan="3"></td>
            <td style="font-size:15px; font-weight:400;border-top:1px solid #ccc;">Shipping: Free shipping</td>
        </tr>  <tr>
            <td colspan="3"></td>
            <td style="font-size:15px; font-weight:400;border-top:1px solid #ccc;">Discount: {{$order->discount}}</td>
        </tr>
        <tr>
            <td colspan="3"></td>
            <td style="font-size:15px; font-weight:400;border-top:1px solid #ccc;">Total: {{$order->total}}</td>
        </tr>
    </tbody>
</table>
</body>
</html>