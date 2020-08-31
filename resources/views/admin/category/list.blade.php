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
                            <th>Tên</th>
                            <th class="action">Delete</th>
                            <th class="action">Edit</th>
                        </tr>
                    </thead>
                    <tbody>
                        @foreach ($category as $cate)
                            <tr>
                                <td>{{$cate->id}}</td>
                                <td>{{$cate->name}}</td>
                                <td><i class="fas fa-trash-alt"> </i><a href="admin/category/delete/{{$cate->id}}">Delete</a></td>
                                <td><i class="fas fa-edit"> </i><a href="admin/category/edit/{{$cate->id}}">Edit</a></td>
                            </tr>
                        @endforeach

                    </tbody>
                    </table>
                </div>
        </div>
    </div>
@endsection
