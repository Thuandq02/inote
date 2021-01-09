<?php

namespace App\Http\Controllers;

use App\Models\Note_type;
use Illuminate\Http\Request;

class NoteTypeController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $notetypes = Note_type::paginate(5);
        $notetyps = Note_type::all();
        return view('notetype.list',compact('notetypes','notetyps'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('notetype.create');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $note_type = new Note_type();
        $note_type->fill($request->all());
        $note_type->save();
        return redirect()->route('notetype.index');
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Note_type  $note_type
     * @return \Illuminate\Http\Response
     */
    public function show(Note_type $note_type)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\Note_type  $note_type
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $note_type = Note_type::findOrFail($id);
        return view('notetype.edit',compact('note_type'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Note_type  $note_type
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        $note_type = Note_type::findOrFail($id);
        $note_type->fill($request->all());
        $note_type->save();
        return redirect()->route('notetype.index');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Note_type  $note_type
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $note_type = Note_type::findOrFail($id);
        $note_type->delete();
        return redirect()->route('notetype.index');
    }
    public function search(Request $request)
    {
        $search = $request->input('search');
        $notetyps = Note_type::where('name', 'LIKE', "%$search%")->orWhere('description', 'LIKE', "%$search%")->get();
        return view("notetype.list", compact('notetyps'));
    }
}
