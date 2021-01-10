<?php

namespace App\Http\Controllers;

use App\Models\Note;
use App\Models\Note_type;
use Illuminate\Http\Request;

class NoteController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $notes = Note::paginate(5);
        $notetype = Note_type::all();
        return view('note.list',compact('notes', 'notetype'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $notetype = Note_type::all();
        return view('note.create',compact('notetype'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $note = new Note();
        $note->fill($request->all());
        $note->save();
        return redirect()->route('note.index');
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Note  $note
     * @return \Illuminate\Http\Response
     */
    public function show(Note $note)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\Note  $note
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $note = Note::findOrFail($id);
        $notetype = Note_type::all();
        return view('note.edit',compact('note','notetype'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Note  $note
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        $note = Note::findOrFail($id);
        $note->fill($request->all());
        $note->save();
        return redirect()->route('note.index');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Note  $note
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $note = Note::findOrFail($id);
        $note->delete();
        return redirect()->route('note.index');
    }
    public function search(Request $request)
    {
        $search = $request->input('search');
        $notes = Note::where('title', 'LIKE', "%$search%")->orWhere('content', 'LIKE', "%$search%")->paginate(10);
        return view("note.list", compact('notes'));
    }
}
