<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Order Confirmation</title>
</head>
<body>
    <p>Hi {{$order->firstname}} {{$order->lastname}}</p>
    <p>Your Order has been successfully Placed</p>
    <br>
    <table style="width:600px;text-align:right;">
    <thead>
        <tr>
            <th>OrderId</th>
            <th>Product Id</th>
            <th>Name</th>
            <th>Quantity</th>
            <th>Price</th>

        </tr>
    </thead>
    <tbody>
   @foreach($order->details as $item)
        <tr>
            <td>{{$order->id}}</td>
            <td>{{$item->id}}</td>
            <td>{{$item->product->name}}</td>
            <td>{{$item->quantity}}</td>
            <td>{{$item->price}}</td>
        </tr>
    @endforeach
        <tr>
            <td colspan="3"></td>
            <td style="font-size:15px; font-weight:400;border-top:1px solid #ccc;">Subtotal: {{$order->order_amount}}د.إ</td>
        </tr>
        <tr>
            <td colspan="3"></td>
            <td style="font-size:15px; font-weight:400;border-top:1px solid #ccc;">Tax: {{$order->total_tax_amount}}د.إ</td>
        </tr>
        <tr>
            <td colspan="3"></td>
            <td style="font-size:15px; font-weight:400;border-top:1px solid #ccc;">Shipping: {{$order->delivery_charge}}د.إ</td>
        </tr>  <tr>
            <td colspan="3"></td>
            <td style="font-size:15px; font-weight:400;border-top:1px solid #ccc;">Discount: {{$order->coupon_discount_amount}}</td>
        </tr>
       
    </tbody>
</table>
</body>
</html>