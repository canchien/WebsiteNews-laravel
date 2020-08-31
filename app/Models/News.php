<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class News extends Model
{
    //
    protected $table ="news";

    public function category()
    {
        return $this->belongsTo('App\Models\Category','idcategory','id');
    }

    public function commnet()
    {
        return $this->hasMany('App\Models\Comment','idnews','id');
    }
}
