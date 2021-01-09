<?php

namespace App\Models;

use App\Http\Controllers\NoteController;
use App\Http\Controllers\NoteTypeController;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Note_type extends Model
{
    use HasFactory;
    protected $fillable = [
        'name',
        'description'
    ];

    public function note()
    {
        return $this->hasMany(Note::class, 'type_id','id');
    }
}
