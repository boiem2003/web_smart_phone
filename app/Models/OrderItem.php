<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsTo;

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
    /**
     * @return \Illuminate\Database\Eloquent\Relations\BelongsTo
     */
    public function products():BelongsTo
    {
        return $this->belongsTo(Product::class, 'prod_id', 'id');
    }
}
