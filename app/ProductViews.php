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
}
