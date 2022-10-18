<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\Category;
use App\Models\Product;
use Illuminate\Http\Request;

class ProductController extends Controller
{
    public function index()
    {
        $products = Product::all();
        return view('admin.product.index', compact('products'));

    }

    public function add()
    {
        $category = Category::all();
        return view('admin.product.add', compact('category'));
    }
    public function insert(Request $request)
    {
        $products = new Product();
        if($request-> hasFile ('image')){
            $file= $request->file ('image');
            $ext= $file->getclientoriginalExtension();
            $filename= time().'.'.$ext;
            $file->move('assets/uploads/products',$filename) ;
            $products->image=$filename;
        }
        $products->cate_id =$request->input('cate_id');
        $products->name =$request->input('name');
        $products->slug =$request->input('slug');
        $products->small_desciption =$request->input('small_description');
        $products->description =$request->input('description');
        $products->original_price =$request->input('original_price ');
        $products->selling_price =$request->input('selling_price ');
        $products->tax =$request->input('tax');
        $products->qty =$request->input('qty');
        $products->status =$request->input('status');
        $products->trending =$request->input('trending');
        $products->meta_title =$request->input('meta_title');
        $products->meta_keywords =$request->input('meta_keywords');
        $products->meta_description =$request->input('meta_description');
        $products->save();
        return redirect('products')->with('status',"Product Added Successfully");
    }
}
