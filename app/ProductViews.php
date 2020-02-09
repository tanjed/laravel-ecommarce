<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class ProductViews extends Model
{
    protected $guarded = ['id'];

    public function products()
    {
        return $this->belongsTo(Products_model::class,'product_id');
    }

    public function reviews()
    {
        return $this->hasManyThrough(Review::class, Products_model::class, 'id', 'product_id', 'product_id', 'id');
    }
}
