@extends('admin.layout.index')

@section('content')

    <div id="main-wrapper">
        <div class="main-content">
                <div class="content-header">
                    <h1>News list</h1>
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
                                <th>Name</th>
                                <th>Email</th>

                                <th>Created At</th>
                                <th class="action">Delete</th>
                                <th class="action">Edit</th>
                            </tr>
                        </thead>
                        <tbody>
                            @foreach ($users as $user)
                                <tr>
                                    <td>{{$user->id}}</td>
                                    <td>{{$user->name}}</td>
                                    <td>{{$user->email}}</td>
                                    <td>{{$user->created_at}}</td>
                                    <td><i class="fas fa-trash-alt"> </i> <a href="admin/user/delete/{{$user->id}}">Delete</a></td>
                                    <td><i class="fas fa-edit"> </i><a href="admin/user/edit/{{$user->id}}">Edit</a></td>
                                </tr>
                            @endforeach

                        </tbody>
                    </table>
                </div>
        </div>
    </div>
@endsection
