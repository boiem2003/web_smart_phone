@extends('layouts.front')

@section('title')
    Welcome to my shop
@endsection

@section('content')
    @include('layouts.inc.slider')
    
    <div class="py-5">
        <div class="container">
            <div class="row">
                <h2>Featured Products</h2>
                <h6>
                    <a href="{{ url('/product') }}" class="float-end">
                        All Product
                    </a>
                </h6>
                <div class="owl-carousel featured-carousel owl-theme">
                    @foreach ($featured_products as $prod)
                        <div class="item">
                            <a href="{{ url('view-category/'.$prod->category->slug.'/'.$prod->slug)}}">
                                <div class="card ">
                                    <img src="{{ asset('assets/uploads/products/'.$prod->image)}}"  alt="Product image">
                                    <div class="card-body">
                                    <h5 style="display: -webkit-box; -webkit-line-clamp: 1; -webkit-box-orient: vertical; overflow: hidden;">{{$prod->name}}</h5>
                                        <small class="float-start"><s>{{$prod->original_price}}₫</s></small>
                                        <h5 class="float-end">{{$prod->selling_price}}₫</h5>
                                    </div>
                                </div>
                            </a>
                        </div>
                    @endforeach
                </div>
            </div>
        </div>
    </div>

    <div class="py-5">
        <div class="container">
            <div class="row">
                <h2>Trending category</h2>
                <h6>
                    <a href="{{ url('/category') }}" class="float-end">
                        All Category
                    </a>
                </h6>
                <div class="owl-carousel trending-carousel owl-theme" hight="20px">
                    @foreach ($trending_category as $trencate)
                        <div class="item">
                            <a href="{{ url('view-category/'.$trencate->slug)}}">
                                <div class="card">
                                    <img src="{{ asset('assets/uploads/category/'.$trencate->image)}}"  alt="Category image">
                                    <!--<div class="card-body">
                                         <h5>{{$trencate->name}}</h5>
                                        <p>
                                            {{ $trencate->description }}
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
@endsection

@section('scripts')
    <script>
        $('.featured-carousel').owlCarousel({
            loop:true,
            margin:10,
            nav:true,
            dots:false,
            responsive:{
                0:{
                    items:1
                },
                600:{
                    items:3
                },
                1000:{
                    items:5
                }
            }
        })
    </script>
    <script>
        $('.trending-carousel').owlCarousel({
            loop:true,
            margin:10,
            nav:true,
            dots:false,
            responsive:{
                0:{
                    items:1
                },
                600:{
                    items:3
                },
                1000:{
                    items:5
                }
            }
        })
    </script>
@endsection
