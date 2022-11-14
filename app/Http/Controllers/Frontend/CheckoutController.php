<?php

namespace App\Http\Controllers\Frontend;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use App\Models\Cart;
use App\Models\Product;
use App\Models\Order;
use App\Models\OrderItem;
use App\Models\User;

class CheckoutController extends Controller
{
    public function index(){
        $old_cartitems= Cart::where('user_id', Auth::id())->get();
        foreach($old_cartitems as $item){
            if(!Product::where('id', $item->prod_id)->where ('qty','>=',$item->prod_qty)->exists()){
                $removeItem= Cart::where('user_id', Auth::id())->where('prod_id', $item->prod_id)->first();
                $removeItem->delete();
            }
        }
        $cartitems= cart::where('user_id',Auth::id())->get();
        return view("frontend.checkout",compact('cartitems'));
    }

    public function placeorder(Request $request)
    {
        $order= new Order();
        $order->user_id = Auth::id();
        $order->fname= $request->input('fname');
        $order->lname= $request->input('lname');
        $order->email= $request->input('email');
        $order->phone= $request->input('phone');
        $order->address1= $request->input('address1') ;
        $order->address2= $request->input('address2');
        $order->city= $request->input('city');
        $order->state= $request->input('state');
        $order->country= $request->input('country');
        $order->pincode= $request->input('pincode');
        $order->tracking_no= 'Nhóm 17 '.rand (1111, 9999);
        

        //Total Calculate the total price
        $total = 0;
        $cartitems_total = Cart::where('user_id', Auth::id())->get();
        foreach($cartitems_total as $prod)
        {
            $total += $prod->products->selling_price * $prod->prod_qty;
        }

        $order->total_price = $total;

        //$order->tracking_no = 'Nhom17'.rand(123,456);
        $order->save() ;

        $cartitems= Cart::where('user_id',Auth::id())->get();
        foreach($cartitems as $item){
            OrderItem::create([
                'order_id'=> $order->id,
                'prod_id'=> $item->prod_id,
                'qty'=> $item->prod_qty,
                'price'=> $item->products->selling_price,
            ]);

            $prod = Product::where('id', $item->prod_id)->first();
            $prod->qty = $prod->qty - $item->prod_qty;
            $prod->update();
        }

        if(Auth::user()->address1== NULL)
        {
            $user= User::where('id', Auth::id())->first();
             $user->name= $request->input('fname');
             $user->lname= $request->input('lname');
             $user->phone= $request->input('phone');
             $user->address1= $request->input('address1');
             $user->address2= $request->input('address2');
             $user->city= $request->input('city');
             $user->state= $request->input('state');
             $user->country= $request->input('country');
             $user->pincode= $request->input('pincode');
             $user->update();
        }  
        
        $cartitems= Cart::where('user_id',Auth::id())->get();
        Cart::destroy($cartitems);

        return redirect('/')->with('status', "Order placed Successfully");
    }

    public function vnpay(Request $request)
    {
        $data = $request->all();
        $code_order = rand(00,9999);
        $vnp_Url = "https://sandbox.vnpayment.vn/paymentv2/vpcpay.html";
        $vnp_Returnurl = "http://127.0.0.1:8000/";
        $vnp_TmnCode = "Q01WPJ4M";//Mã website tại VNPAY 
        $vnp_HashSecret = "FELLRXUNHJVMBUGRKKTYDMJELKPETTPQ"; //Chuỗi bí mật

        $vnp_TxnRef = $code_order; //Mã đơn hàng. Trong thực tế Merchant cần insert đơn hàng vào DB và gửi mã này sang VNPAY
        $vnp_OrderInfo = 'Thanh toán đơn hàng';
        $vnp_OrderType = 'billpayment';
        $vnp_Amount = $data['total_vnpay'] * 100;
        $vnp_Locale = 'VN';
        $vnp_BankCode = 'NCB';
        $vnp_IpAddr = $_SERVER['REMOTE_ADDR'];
        $inputData = array(
            "vnp_Version" => "2.1.0",
            "vnp_TmnCode" => $vnp_TmnCode,
            "vnp_Amount" => $vnp_Amount,
            "vnp_Command" => "pay",
            "vnp_CreateDate" => date('YmdHis'),
            "vnp_CurrCode" => "VND",
            "vnp_IpAddr" => $vnp_IpAddr,
            "vnp_Locale" => $vnp_Locale,
            "vnp_OrderInfo" => $vnp_OrderInfo,
            "vnp_OrderType" => $vnp_OrderType,
            "vnp_ReturnUrl" => $vnp_Returnurl,
            "vnp_TxnRef" => $vnp_TxnRef
        );

        if (isset($vnp_BankCode) && $vnp_BankCode != "") {
            $inputData['vnp_BankCode'] = $vnp_BankCode;
        }
        if (isset($vnp_Bill_State) && $vnp_Bill_State != "") {
            $inputData['vnp_Bill_State'] = $vnp_Bill_State;
        }

        //var_dump($inputData);
        ksort($inputData);
        $query = "";
        $i = 0;
        $hashdata = "";
        foreach ($inputData as $key => $value) {
            if ($i == 1) {
                $hashdata .= '&' . urlencode($key) . "=" . urlencode($value);
            } else {
                $hashdata .= urlencode($key) . "=" . urlencode($value);
                $i = 1;
            }
            $query .= urlencode($key) . "=" . urlencode($value) . '&';
        }

        $vnp_Url = $vnp_Url . "?" . $query;
        if (isset($vnp_HashSecret)) {
            $vnpSecureHash =   hash_hmac('sha512', $hashdata, $vnp_HashSecret);//  
            $vnp_Url .= 'vnp_SecureHash=' . $vnpSecureHash;
        }
        $returnData = array('code' => '00'
            , 'message' => 'success'
            , 'data' => $vnp_Url);
            if (isset($_POST['redirect'])) {
                header('Location: ' . $vnp_Url);
                die();
            } else {
                echo json_encode($returnData);
            }
    }

    public function momo(Request $request)
    {
        # code...
    }
}