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
                    <img src="{{ asset('assets/images/iphone 14.png') }}" alt="">
                </div>
            </div>
        </div>
    </div>
</div>

@endsection
