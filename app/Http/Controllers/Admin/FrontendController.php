<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\Category;
use App\Models\Product;
use App\Models\Order;
use App\Models\User;
use Illuminate\Http\Request;

class FrontendController extends Controller
{
    public function index(){
        $categories = Category::count();
        $products = Product::count();
        $orders = Order::count();
        $users = User::where('role_as', '0')->count();
        return view('admin.index', compact('categories', 'products', 'orders', 'users'));
    }
}
