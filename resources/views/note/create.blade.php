@extends('master')
@section('title', 'Thêm mới Note')
@section('content')
    <div id="page-wrapper">
        <div class="main-page">
            <div class="tables">
                <h2 class="title1">Thêm mới Note</h2>
                <form method="post" action="{{ route('note.store') }}">
                    @csrf
                    <div class="form-group">
                        <label>Title</label>
                        <input type="text" class="form-control" name="title" placeholder="Title" required>
                    </div>
                    <div class="form-group">
                        <label>Content</label>
                        <input type="text" class="form-control" name="content" placeholder="Content" required>
                    </div>
                    <div class="form-group">
                        <label>Note Type</label>
                        <select class="form-control" name="type_id">
                            @foreach($notetype as $notety)
                                <option value="{{ $notety->id }}">{{ $notety->name }}</option>
                            @endforeach
                        </select>
                    </div>
                    <button type="submit" class="btn btn-primary">Thêm mới</button>
                    <button class="btn btn-secondary" onclick="window.history.go(-1); return false;">Hủy</button>
                </form>
            </div>
        </div>
    </div>

@endsection
