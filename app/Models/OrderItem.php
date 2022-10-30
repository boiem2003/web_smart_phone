<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class OrderItem extends Model
{
    use HasFactory;
    protected $table= 'orders_items';
    protected $fillable= [
        'order_id',
        'prod_id',
        'price',
        'qty',
    ];
}
