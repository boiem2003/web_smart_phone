<?php

namespace App\Http\Controllers\Frontend;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\User;
use Illuminate\Support\Facades\Auth;

class ProfileController extends Controller
{
    public function index()
    {
        $users = User::where('id', Auth::id())->first();
        return view('frontend.profile.index', compact('users'));
    }

    public function edit($id)
    {
        $users = User::find($id);
        return view('frontend.profile.edit', compact('users'));
    }

    public function update(Request $request, $id)
    {
        $users = User::find($id);
        $users->lname= $request->input('lname');
        $users->phone= $request->input('phone');
        $users->address1= $request->input('address1');
        $users->address2= $request->input('address2');
        $users->city= $request->input('city');
        $users->state= $request->input('state');
        $users->country= $request->input('country');
        $users->pincode= $request->input('pincode');
        $users->update();
        return redirect('/profile') -> with('status', "Profile Updated Successfully");
    }
}
