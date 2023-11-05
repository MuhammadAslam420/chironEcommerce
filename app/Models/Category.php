<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Category extends Model
{
    use HasFactory;
    protected $casts = [
        'parent_id' => 'integer',
        'position' => 'integer',
        'status' => 'integer'
    ];
    public function scopeActive($query)
    {
        return $query->where('status', '=', 1);
    }
    public function childes()
    {
        return $this->hasMany(Category::class, 'parent_id');
    }

    public function parent()
    {
        return $this->belongsTo(Category::class, 'parent_id');
    }
    Public function products()
    {
        return $this->hasMany(Product::class,'category_ids');
    }

}
