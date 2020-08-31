@extends('admin.layout.index')

@section('content')

    <div id="main-wrapper">
        <div class="main-content">
                <div class="content-header">
                    <h1>Category List</h1>
                </div>
                <div class="content-body">
                    @if (session('message'))
                        <div class="alert alert-success">
                                {{session('message')}}
                        </div>
                    @endif
                    <table class="table table-hover">
                    <thead>
                        <tr>
                            <th>ID</th>
                            <th>Gmail</th>
                            <th>Nội dung</th>
                            <th>Ngày đăng</th>
                            <th class="action">DELETE</th>
                        </tr>
                    </thead>
                    <tbody>
                        @foreach ($comment as $cmt)
                            <tr>
                                <td>{{$cmt->id}}</td>
                                <td>{{$cmt->email}}</td>
                                <td>{{$cmt->content}}</td>
                                <td>{{$cmt->created_at}}</td>
                                <td><i class="far fa-trash-alt"> </i> <a href="admin/comment/delete/{{$cmt->id}}">Delete</a></td>
                            </tr>
                        @endforeach

                    </tbody>
                    </table>
                </div>
        </div>
    </div>
@endsection
