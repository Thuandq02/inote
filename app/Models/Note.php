<?php

namespace App\Models;

use App\Http\Controllers\NoteTypeController;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Note extends Model
{
    use HasFactory;
    protected $fillable = [
        'title',
        'content',
        'type_id'
    ];

    public function note_type()
    {
       return $this->belongsTo(Note_type::class, 'type_id');
    }
}
