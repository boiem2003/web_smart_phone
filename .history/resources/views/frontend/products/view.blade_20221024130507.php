@extends('layouts.front')

@section('title',$products->name)


@section('content')

<div class="py-3 mb-4 shadow-sm bg-warning border-top">
    <div class="container">
        <h6 class="mb-0">Collections / {{ $products->category->name }} / {{ $products->name }} </h6>
    </div>
</div>

<div class="container">
    <div class="card shadow">
        <div class="card-body">
            <div class="row">
                <div class="col-md-4 border-right">
                    <img src="{{ asset('assets/uploads/products/'.$products->image) }}" class="w-100" alt="">
                </div>
                <div class="col-md-8">
                    <h2 class="mb-0">
                        {{ $products->name }}
                        @if($products->trending == '1')
                            <label style="font-size: 16px;" class="float-end badge bg-danger trending_tag"></label>Trending</label>
                        @endif
                    </h2>

                    <hr>
                    <label class="me-3">Original Price : <s>Rs {{ $products->original_price }}</s></label>
                    <label class="fw-bold">Selling Price : Rs {{ $products->selling_price }}</label>
                    <p class="mt-3">
                        {!! $products->small_description !!}
                    </p>
                    <hr>
                    @if ($products->qty > 0)
                        <label class="badge bg-success">In stock</label>
                    @else
                        <label class="badge bg-danger">Out of stock</label>
                    @endif
                    <div class="row mt-2">
                        <div class="col-md-3">
                            <label for="Quantity">Quantity</label>
                            <div class="input-group text-center mb-3" style="width: 130px;">
                                <span class="input-group-text">-</span>
                                <input type="text" name="quantity" value="1" class="form-control text-center">
                                <span class="input-group-text">+</span>
                            </div>
                        </div>
                        <div class="col-md-9">
                            <br>
                            <button type="button" class="btn btn-success me-3 float-start">Add to wishlist <i class="fa fa-heart"></i></button>
                            <button type="button" class="btn btn-primary me-3 float-start">Add to cart <i class="fa fa-shopping-cart"></i></button>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-md-12">
                <hr>
                <h3>Description</h3>
                <p class="mt-3">
                    {!! $products->description !!}
                </p>
            </div>
        </div>
    </div>
</div>

@endsection
