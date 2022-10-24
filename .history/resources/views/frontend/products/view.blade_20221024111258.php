@extends('layouts.front')

@section('title',$products->name)


@section('content')

<div class="py-3 mb-4 shadow-sm bg-warning border-top">
    <div class="container">
        <h6 class="mb-0">Collections / Category Name/ Product Name </h6>
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
                        <label style="font-size: 16px" class="float-end badge bg-danger trending_tag">Trending</label>
                    </h2>

                    <hr>
                    <label class="me-3">Original Price : <s>Rs {{ $products->original_price }}</s></label>
                    <label class="fw-bold">Selling Price : Rs {{ $products->selling_price }}</label>
                    <p class="mt-3">
                        {!! $products->small_description !!}
                    </p>
                    <hr>
                    @if ($products-> qty > 0)
                        <label class="badge bg-success">In stock</label>
                    @else
                        <label class="badge bg-danger">Out of stock</label>
                    @endif
                </div>
            </div>
        </div>
    </div>
</div>

@endsection
