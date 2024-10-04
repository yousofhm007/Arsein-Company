<?php

namespace App\Models\Front;

use Illuminate\Database\Eloquent\Model;

class Blog extends Model
{
    public function scopeLike($query, $field, $value,$amalgar = 'LIKE'){
        return $query->where($field, $amalgar, $value);
}
}
