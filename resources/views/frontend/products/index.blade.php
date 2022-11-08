@extends('layouts.front')

@section('title')
    {{$category->name}}
@endsection

@section('content')
<div class="py-3 mb-4 shadow-sm bg-warning border-top">
    <div class="container">
        <h6 class="mb-0">
            <a href="{{url('/') }}">
                Home
            </a> /
            <a href="{{url('category') }}" >
                Category
            </a> /
            <a> {{ $category->name }}</a>
          </h6>
    </div>
</div>

    <div class="py-5">
        <div class="container">
            <div class="row">
                <h2>{{$category->name}}</h2>
                    @foreach ($products as $prod)
                        <div class="col-md-3 mb-3">
                            <div class="card ">
                                <a href="{{ url('view-category/'.$category->slug.'/'.$prod->slug) }}">
                                    <img src="{{ asset('assets/uploads/products/'.$prod->image)}}"  alt="Product image" heigth="350px" width="300px">
                                    <div class="card-body">
                                        <h5>{{$prod->name}}</h5>
                                        <Small class="float-start">{{$prod->selling_price}}</small>
                                        <Small class="float-end"><s>{{$prod->original_price}}</s></small>
                                    </div>
                                </a>
                            </div>
                        </div>
                    @endforeach
            </div>
        </div>
    </div>
@endsection
