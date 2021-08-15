<?php

namespace App;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Branch extends Model
{
    use HasFactory;
    protected $fillable = [
        'name','code','duration','stream_id'
    ];
    public $timestamps = false;
    public function stream()
    {
        return $this->belongsTo(Stream::class);
    }
}
