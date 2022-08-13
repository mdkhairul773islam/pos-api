<?php

namespace App\Models;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Partytransaction extends Model
{
    use HasFactory, SoftDeletes;

    protected $fillable = [
        'transaction_at', 
        'warehouse_code',
        'party_code',
        'relation',
        'transaction_method',
        'status'
    ];

    public function party()
    {  
        return $this->belongsTo('App\Models\Party', "party_code", "code");
    }
}
