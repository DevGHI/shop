<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use App\ProductPhoto;

class Product extends Model
{
    protected $guarded = ['id'];

    public function photo()
    {
    	return $this->hasMany('App\ProductPhoto','product_id','id');
    }
}
