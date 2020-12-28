<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Comment extends Model
{
    //
    protected $table ="comments";

    public function news()
    {
        return $this->belongsTo('App\Models\News','post_id','id');
    }
    public function users()
    {
        return $this->belongsTo('App\Models\User','comment_author','id');
    }
}
