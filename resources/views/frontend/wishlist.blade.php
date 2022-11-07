@extends('layouts.front')

@section('title')
    My Wishlist
@endsection

@section('content')
<div class="py-3 mb-4 shadow-sm bg-warning border-top">
    <div class="container">
        <h6 class="mb-0">
            <a href="{{url('/') }}">
                Home
            </a> /
            <a>
                Wishlist
            </a>
          </h6>
    </div>
</div>

<div class="container my-5">
    <div class="card shadow wishlistitems">
        <div class="card-body">
            @if ($wishlist-> count() > 0)
                @foreach ($wishlist as $item)
                    <div class="row product_data">
                        <div class= "col-md-2 my-auto">
                            <img src="{{ asset('assets/uploads/products/' .$item->products->image) }}" height="70px" width="70px" alt="Image here">
                        </div>
                        <div class="col-md-2 my-auto">
                            <h6>{{ $item->products->name }}</h6>
                        </div>
                        <div class="col-md-2 my-auto">
                            <h6> Rs {{ $item->products->selling_price }}</h6>
                        </div>
                        <div class="col-md-2 my-auto">
                            <input type="hidden" class="prod_id" value="{{ $item->prod_id }}">
                            @if($item->products->qty > $item->prod_qty)
                                <h6>In Stock</h6>
                                <label for="Quantity">Quantity</label>
                                <div class="input-group text-center mb-3" style="width: 130px;">
                                    <button class="input-group-text decrement-btn">-</button>
                                    <input type="text" name="quantity" class="form-control qty-input text-center" value="1">
                                    <button class="input-group-text increment-btn">+</button>
                                </div>
                            @else
                                <h6>Out of Stock</h6>
                            @endif
                        </div>
                        <div class= "col-md-2 my-auto">
                            <button class="btn btn-success addToCartBtn"> <i class="fa fa-shopping-cart"></i>Add to Cart</button>
                        </div>
                        <div class= "col-md-2 my-auto">
                            <button class="btn btn-danger remove-wishlist-item"> <i class="fa fa-trash"></i>Remove</button>
                        </div>
                    </div>
                @endforeach
            </div>
            @else
                <div class="card-body text-center">
                    <h2><i class="fa fa-heart-o"></i> There are no products in your Wishlist</h2>
                </div>
            @endif
        </div>
    </div>
</div>
@endsection
