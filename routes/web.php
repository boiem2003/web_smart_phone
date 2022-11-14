<?php

use App\Models\Category;
use Illuminate\Support\Facades\Route;
use Illuminate\Support\Facades\Auth;
use App\Http\Controllers\Admin\CategoryController;
use App\Http\Controllers\Admin\DashboardController;
use App\Http\Controllers\Admin\OrderController;
use App\Http\Controllers\Admin\ProductController;
use App\Http\Controllers\Controller;
use App\Models\Product;
use App\Http\Controllers\Frontend\FrontendController;
use App\Http\Controllers\Frontend\CartController;
use App\Http\Controllers\Frontend\CheckoutController;
use App\Http\Controllers\Frontend\ProfileController;
use App\Http\Controllers\Frontend\RatingController;
use App\Http\Controllers\Frontend\ReviewController;
use App\Http\Controllers\Frontend\UserController;
use App\Http\Controllers\Frontend\WishlistController;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

// Route::get('/', function () {
//     return view('welcome');
// });

Route::get('/', [FrontendController::class, 'index']);
Route::get('category', [FrontendController::class, 'category']);
Route::get('product', [FrontendController::class, 'product']);
Route::get('view-category/{slug}', [FrontendController::class, 'viewcategory']);
Route::get('view-category/{cate_slug}/{prod_slug}', [FrontendController::class, 'productview']);

Route::get('product-list', [FrontendController::class, 'productlistAjax']);
Route::post('searchproduct', [FrontendController::class, 'searchProduct']);
Auth::routes();

Route::get('load-cart-data', [CartController::class, 'cartcount']);
Route::get('load-wishlist-count', [WishlistController::class, 'wishlistcount']);
Route::get('/home', [App\Http\Controllers\HomeController::class, 'index'])->name('home');
Route::post('add-to-cart', [CartController::class, 'addProduct']);
Route::post('delete-cart-item', [CartController::class, 'deleteproduct']);
Route::post('update-cart', [CartController::class, 'updatecart']);
Route::post('add-to-wishlist', [WishlistController::class, 'add']);
Route::post('delete-wishlist-item',[WishlistController::class, 'deleteitem']);


Route::middleware(['auth'])->group(function(){
    Route::get('cart', [CartController::class, 'viewcart']);
    Route::get('checkout', [CheckoutController::class, 'index']);
    Route::post('place-order', [CheckoutController::class, 'placeorder']);

    //Route profile
    Route::get('profile', [ProfileController::class, 'index']);
    //Route::get('insert-profile', [ProfileController::class, 'insert']);
    Route::get('edit-profile/{id}', [ProfileController::class, 'edit']);
    Route::put('update-profile/{id}', [ProfileController::class, 'update']);

    //Route order
    Route::get('my-orders', [UserController::class, 'index']);
    Route::get('view-order/{id}', [UserController::class, 'view']);

    //Route rating
    Route::get('add-rating', [RatingController::class, 'add']);

    //Route review
    Route::get('add-review/{product_slug}/userreview', [ReviewController::class, 'add']);
    Route::post('add-review', [ReviewController::class, 'create']);
    Route::get('edit-review/{product_slug}/userreview', [ReviewController::class, 'edit']);
    Route::put('update-review', [ReviewController::class, 'update']);

    //Route wishlist
    Route::get('wishlist',[WishlistController::class, 'index']);

    //Route payment
    Route::post('vnpay_payment', [CheckoutController::class, 'vnpay']);
    Route::post('momo_payment', [CheckoutController::class, 'momo']);
});



Route::middleware(['auth','isAdmin'])->group(function () {
    Route::get('/dashboard', 'Admin\FrontendController@index');
    // Category
    Route::get('categories', 'Admin\CategoryController@index');
    Route::get('add-category', 'Admin\CategoryController@add');
    Route::put('insert-category', 'Admin\CategoryController@insert');
    Route::get('edit-category/{id}', [CategoryController::class , 'edit']);
    Route::put('update-category/{id}', [CategoryController::class, 'update']);
    Route::get('delete-category/{id}', [CategoryController::class , 'destroy']);

    // Products
    Route::get('products', [ProductController::class, 'index']);
    Route::get('add-products', [ProductController::class, 'add']);
    Route::put('insert-product', [ProductController::class, 'insert']);
    Route::get('edit-product/{id}', [ProductController::class, 'edit']);
    Route::put('update-product/{id}', [ProductController::class, 'update']);
    Route::get('delete-product/{id}', [ProductController::class, 'destroy']);

    //Orders
    Route::get('orders', [OrderController::class, 'index']);
    Route::get('admin/view-order/{id}', [OrderController::class, 'view']);
    Route::put('update-order/{id}', [OrderController::class, 'updateorder']);
    Route::get('order-history', [OrderController::class, 'orderhistory']);

    //Users
    Route::get('users', [DashboardController::class, 'users']);
    Route::get('view-user/{id}', [DashboardController::class, 'viewuser']);

});
