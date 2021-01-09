@extends('master')
@section('title', 'Danh sách Note')
@section('content')

    <div id="page-wrapper">
        <div class="main-page">
            <div class="tables">
                <h2 class="title1">Danh Sách Note</h2>
                <div class="panel-body widget-shadow">

                    <table class="table">
                        <thead>
                        <form method="post" action="{{ route('note.search') }}" class="form-inline">
                            @csrf
                            <input class="form-control mr-sm-2" type="search" name="search" placeholder="Search" aria-label="Search">
                            <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
                        </form>
                        </thead>
                        <tbody>
                        <table class="table table-striped">
                            <thead>
                            <tr>
                                <th scope="col">#</th>
                                <th scope="col">Title</th>
                                <th scope="col">Content</th>
                                <th scope="col">Note Type</th>
                                <th scope="col" colspan="2">Action</th>
                            </tr>
                            </thead>
                            <tbody>
                            @if(count($notes) == 0)
                                <tr>
                                    <td colspan="7" class="text-center">Không có dữ liệu</td>
                                </tr>
                            @else
                                @foreach($notes as $key => $note)
                                    <tr>
                                        <th scope="row">{{ ++$key }}</th>
                                        <td>{{ $note->title }}</td>
                                        <td>{{ $note->content }}</td>
                                        <td>{{ $note->note_type->name }}</td>
                                        <td>
                                            <a href="{{ route('note.edit', $note->id) }}">sửa</a> |
                                            <a href="{{ route('note.destroy', $note->id) }}" class="text-danger" onclick="return confirm('Bạn chắc chắn muốn xóa?')">xóa</a>
                                        </td>
                                    </tr>
                                @endforeach
                            @endif
                            </tbody>
                        </table>
                        <div>
                            <div class="text-center">{{ $notes->links( "pagination::bootstrap-4") }}</div>
                            <a class="btn btn-primary" href="{{ route('note.create') }}">Thêm mới</a>
                            <button class="btn btn-secondary" onclick="window.history.go(-1); return false;">Hủy
                            </button>
                        </div>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
@endsection
