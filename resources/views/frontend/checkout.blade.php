@extends('layouts.front')

@section('title')
    Checkout
@endsection

@section('content')
    <div class="py-3 mb-4 shadow-sm bg-warning border-top">
        <div class="container">
            <h6 class="mb-0">
                <a href="{{url('/') }}">
                    Home
                </a> /
                <a href="{{url('cart') }}">
                    Cart
                </a> /
                <a>Check Out</a>
            </h6>
        </div>
    </div>
    <div class="container mt-3">
        <form action="{{ url('place-order') }}" method="POST">
            {{ csrf_field() }}
            <div class="row">
                <div class="col-md-7">
                    <div class="card">
                        <div class="card-body">
                            <h6> Basic Details</h6>
                            <hr>
                            <div class="row checkout-form">
                                <div class="col-md-6">
                                    <label for="">First Name</label>
                                    <input type="text" class="form-control" value="{{ Auth::user()->name }}" name="fname" placeholder="Enter First Name">
                                </div>
                                <div class="col-md-6">
                                    <label for="">Last Name</label>
                                    <input type="text" class="form-control" value="{{ Auth::user()->lname }}" name="lname" placeholder="Enter Last Name">
                                </div>
                                <div class="col-md-6 mt-3">
                                    <label for="">Email</label>
                                    <input type="text" class="form-control" value="{{ Auth::user()->email }}" name="email" placeholder="Enter Email">
                                </div>
                                <div class="col-md-6 mt-3">
                                    <label for="">Phone Number</label>
                                    <input type="text" class="form-control" value="{{ Auth::user()->phone }}" name="phone" placeholder="Enter Phone Number">
                                </div>
                                <div class="col-md-6 mt-3">
                                    <label for="">Address 1</label>
                                    <input type="text" class="form-control" value="{{ Auth::user()->address1 }}" name="address1" placeholder="Enter Address 1">
                                </div>
                                <div class="col-md-6 mt-3">
                                    <label for="">Address 2</label>
                                    <input type="text" class="form-control" value="{{ Auth::user()->address2 }}" name="address2" placeholder="Enter Address 2">
                                </div>
                                <div class="col-md-6 mt-3">
                                    <label for="">City</label>
                                    <input type="text" class="form-control" value="{{ Auth::user()->city }}" name="city" placeholder="Enter City">
                                </div>
                                <div class="col-md-6 mt-3">
                                    <label for="">State</label>
                                    <input type="text" class="form-control" value="{{ Auth::user()->state }}" name="state" placeholder="Enter State">
                                </div>
                                <div class="col-md-6 mt-3">
                                    <label for="">Country</label>
                                    <input type="text" class="form-control" value="{{ Auth::user()->country }}" name="country" placeholder="Enter Country">
                                </div>
                                <div class="col-md-6 mt-3">
                                    <label for="">Pin code</label>
                                    <input type="text" class="form-control" value="{{ Auth::user()->pincode }}" name="pincode" placeholder="Enter Pin code">
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-5">
                    <div class="card">
                        <div class="card-body">
                            <h6>Order Details</h6>
                            <hr>
                            @if($cartitems->count() > 0)
                                <table class="table table-striped table-bordered">
                                    <thead>
                                        <tr>
                                            <th>Name</th>
                                            <th>Quantity</th>
                                            <th>Price</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        @php $total = 0;@endphp
                                        @foreach ($cartitems as $item)
                                            <tr>
                                                @php $total += ($item->products->selling_price * $item->prod_qty) @endphp
                                                <td>{{ $item->products->name }}</td>
                                                <td>{{ $item->prod_qty }}</td>
                                                <td>{{ $item->products->selling_price }}</td>
                                            </tr>
                                        @endforeach
                                    </tbody>
                                </table>
                                <h6 class="px-2">Grand Total <span class="float-end">{{$total}} VND </span></h6>
                                <hr>
                                <button type="submit" class="btn btn-primary w-100">Place Order | COD</button>
                            @else
                                <h4 class="text-center">No products in cart</h4>
                            @endif
                        </div>
                    </div>
                </div>
            </div>
        </form>
    </div>
@endsection
