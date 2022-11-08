@extends('layouts.front')

@section('title', "Edit your Review")

@section('content')
    <div class="container py-5">
        <div class="row">
            <div class="col-md-12">
                <div class="card">
                    <div class="card-body">
                        <h5>You are writing a review for {{ $review->product->name }}</h5>
                        <form action="{{ url('/update-review') }}" method="POST">
                            @csrf
                            @method('PUT')
                            <input type="hidden" name="review_id" value="{{ $review->id }}">
                            <textarea class="form-control" name="user_review" rows="5" placeholder="Write a review">{{ $review->user_review }}</textarea>
                            <button type="submit" class="btn btn-primary mt-3">Update Review</button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection