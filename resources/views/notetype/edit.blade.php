@extends('master')
@section('title', 'Sửa Note Type')
@section('content')
    <div id="page-wrapper">
        <div class="main-page">
            <div class="tables">
                <h2 class="title1">Sửa Note Type</h2>
                <form method="post" action="{{ route('notetype.update', $note_type->id) }}">
                    @csrf
                    <div class="form-group">
                        <label>Name</label>
                        <input type="text" class="form-control" name="name" required value="{{ $note_type->name }}">
                    </div>
                    <div class="form-group">
                        <label>Description</label><br>
                        <textarea name="description" cols="30" rows="5" class="form-control" required>{{ $note_type->description }}</textarea>
                    </div>
                    <button type="submit" class="btn btn-primary">Update</button>
                    <button class="btn btn-secondary" onclick="window.history.go(-1); return false;">Hủy</button>
                </form>
            </div>
        </div>
    </div>

@endsection
