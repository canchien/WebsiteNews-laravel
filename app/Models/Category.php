<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Category extends Model
{
    //
    protected $table ="category";

    public function news()
    {
        return $this->hasMany('App\Models\News','idcategory','id');
    }
}
