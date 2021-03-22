<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Products extends Model
{
    public function currency()
    {
        return $this->belongsTo(Currencies::class, 'currency');
    }
}
