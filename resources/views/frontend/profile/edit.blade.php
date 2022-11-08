@extends('layouts.front')

@section('title')
    My Profile
@endsection
@section('content')
    <div class="py-3 mb-4 shadow-sm bg-warning border-top">
        <div class="container">
            <h6 class="mb-0">
                <a href="{{url('/') }}">
                    Home
                </a> /
                <a>
                    My Profile
                </a>
            </h6>
        </div>
    </div>

    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <div class="card">
                    <div class="card-header">
                        <h4>Edit Profile</h4>
                    </div>
                    <div class="card-body">
                        <form action ="{{ url('update-profile/'.$users->id) }}" method = "POST" enctype="multipart/form-data">
                            @csrf
                            @method('PUT')
                            <div class="row">
                                <div class="col-md-4 mb-3">
                                <label for="">First Name</label>
                                    <input type="text" value="{{ $users->name }}" class="form-control" name="name">
                                </div>
                                <div class="col-md-4 mb-3">
                                    <label for="">Last Name</label>
                                    <input type="text" value="{{ $users->lname }}" class="form-control" name="lname">
                                </div>
                                <div class="col-md-4 mb-3">
                                    <label for="">Email</label>
                                    <div class="form-control">{{ $users->email }}</div>
                                </div>
                                <div class="col-md-4 mb-3">
                                    <label for="">Phone</label>
                                    <input type="text" value="{{ $users->phone }}" class="form-control" name="phone">
                                </div>
                                <div class="col-md-4 mb-3">
                                    <label for="">Address 1</label>
                                    <input type="text" value="{{ $users->address1 }}" class="form-control" name="address1">
                                </div>
                                <div class="col-md-4 mb-3">
                                    <label for="">Address 2</label>
                                    <input type="text" value="{{ $users->address2 }}" class="form-control" name="address2">
                                </div>
                                <div class="col-md-4 mb-3">
                                    <label for="">City</label>
                                    <input type="text" value="{{ $users->city }}" class="form-control" name="city">
                                </div>
                                <div class="col-md-4 mb-3">
                                    <label for="">State</label>
                                    <input type="text" value="{{ $users->state }}" class="form-control" name="state">
                                </div>
                                <div class="col-md-4 mb-3">
                                    <label for="">Country</label>
                                    <input type="text" value="{{ $users->country }}" class="form-control" name="country">
                                </div>
                                <div class="col-md-4 mb-3">
                                    <label for="">Pin Code</label>
                                    <input type="text" value="{{ $users->pincode }}" class="form-control" name="pincode">
                                </div>
                                <div class="col-md-12">
                                    <button type="submit " class="btn btn-primary">Submit</button>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>

@endsection