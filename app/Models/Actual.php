<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Actual extends Model
{
    use HasFactory;
    
    protected $fillable = [
        'kode_ba', 'actual_vs_bbc'
    ];
}


