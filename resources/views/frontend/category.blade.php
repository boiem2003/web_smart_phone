@extends('layouts.front')

@section('title')
    Category
@endsection

@section('content')
<div class="py-3 mb-4 shadow-sm bg-warning border-top">
    <div class="container">
        <h6 class="mb-0">
            <a href="{{url('/') }}">
                Home
            </a> /
            <a>
                Category
            </a>
        </h6>
    </div>
</div>
    <div class="py-5">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <h2>All Categories</h2>
                    <div class="row">
                        @foreach ($category as $cate)
                            <div class="col-md-2 mt-4">
                                <a href="{{ url('view-category/'.$cate->slug)}}">
                                    <div class="card">
                                        <img src="{{ asset('assets/uploads/category/'.$cate->image)}}"  alt="Category image">
                                        <!--<div class="card-body">
                                             <h5>{{$cate->name}}</h5>
                                            <p>
                                                {{ $cate->description }}
                                            </p> 
                                        </div>-->
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