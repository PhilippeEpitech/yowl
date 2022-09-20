<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use App\Models\Articles;
use App\Models\User;


class Comments extends Model
{
    use HasFactory;

    protected $fillable = ['comment', 'user_id', 'article_id'];

    public function article()
    {
        return $this->belongsTo(Articles::class);
    }

    public function user(){
        return $this->belongsTo(User::class);
    }
}
