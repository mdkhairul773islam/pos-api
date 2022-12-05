<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Party extends Model
{
    use HasFactory, SoftDeletes;

    protected $fillable = ['name', 'party_type', 'initial_balance'];

    public function partytransaction()
    {  
        return $this->hasMany(Partytransaction::class, 'party_code', 'code')
        ->selectRaw('partytransactions.party_code, SUM(partytransactions.credit) as credit,
        SUM(partytransactions.debit) as debit,
        SUM(partytransactions.commission) as commission') 
        ->groupBy('partytransactions.party_code');
    }
}

