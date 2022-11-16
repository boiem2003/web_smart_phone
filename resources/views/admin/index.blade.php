@extends('layouts.admin')

@section('title')
    Dashboard
@endsection

@section('content')
    <div class="container-fluid px-4">
        <h1 class="mt-4">TEAM 17</h1>
        <ol class="breadcrumb mb-4">
            <li class="breadcrumb-item active">Dashboard</h1>
        </ol>
        <div class="row">
            <div class="col-xl-3 col-md-6 ">
                <div class="card bg-primary text-white mb-4">
                    <div class="card-body">
                        Total Categories
                        <h2>{{ $categories }}</h2>
                    </div>
                    <div class="card-footer d-flex alig-items center justify-content-between">
                        <a class="small text-white stretched-link" href="{{ url('categories') }}">View Details</a>
                        <div class="small text-white"></div>
                    </div>
                </div>
            </div>

            <div class="col-xl-3 col-md-6 ">
                <div class="card bg-info text-white mb-4">
                    <div class="card-body">
                        Total Products
                        <h2>{{ $products }}</h2>
                    </div>
                    <div class="card-footer d-flex alig-items center justify-content-between">
                        <a class="small text-white stretched-link" href="{{ url('products') }}">View Details</a>
                        <div class="small text-white"></div>
                    </div>
                </div>
            </div>

            <div class="col-xl-3 col-md-6 ">
                <div class="card bg-warning text-white mb-4">
                    <div class="card-body">
                        Total Orders
                        <h2>{{ $orders }}</h2>
                    </div>
                    <div class="card-footer d-flex alig-items center justify-content-between">
                        <a class="small text-white stretched-link" href="{{ url('orders') }}">View Details</a>
                        <div class="small text-white"></div>
                    </div>
                </div>
            </div>

            <div class="col-xl-3 col-md-6 ">
                <div class="card bg-secondary text-white mb-4">
                    <div class="card-body">
                        Total Users
                        <h2>{{ $users }}</h2>
                    </div>
                    <div class="card-footer d-flex alig-items center justify-content-between">
                        <a class="small text-white stretched-link" href="{{ url('users') }}">View Details</a>
                        <div class="small text-white"></div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    
@endsection