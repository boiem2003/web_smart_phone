@extends('layouts.front')

@section('title')
    Product
@endsection

@section('content')
<div class="py-3 mb-4 shadow-sm bg-warning border-top">
    <div class="container">
        <h6 class="mb-0">
            <a href="{{url('/') }}">
                Home
            </a> /
            <a>
                Product
            </a>
        </h6>
    </div>
</div>
    <div class="py-5">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <h2>All Products</h2>
                    <div class="row">
                        @foreach ($product as $prod)
                            <div class="col-md-3 md-3">
                                <a href="{{ url('view-category/'.$prod->category->name.'/'.$prod->slug)}}">
                                    <div class="card mt-3">
                                        <img src="{{ asset('assets/uploads/products/'.$prod->image)}}"  alt="Product image">
                                        <div class="card-body">
                                            <h5 style="display: -webkit-box; -webkit-line-clamp: 1; -webkit-box-orient: vertical; overflow: hidden;">{{$prod->name}}</h5>
                                            <small class="float-start"><s>{{$prod->original_price}}₫</s></small>
                                            <h4 class="float-end">{{$prod->selling_price}}₫</h4>
                                        </div>
                                    </div>
                                </a>
                            </div>
                        @endforeach
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection