<?php

namespace App\Http\Controllers\Frontend;

use App\Models\Wishlist;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Auth;

class WishlistController extends Controller
{
    public function index()
    {
        $wishlist = Wishlist::where('user_id', Auth::id()) ->get();
        return view('frontend.wishlist', compact('wishlist'));
    }

    public function add(Type $var = null)
    {
        # code...
    }
}
