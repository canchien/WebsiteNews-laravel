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
                                <th>Tiêu đề</th>
                                <th>Tóm Tắt</th>
                                <th>Thể loại</th>
                                <th>Lượt xem</th>
                                <th>Nổi bật</th>
                                <th class="action">Delete</th>
                                <th class="action">Edit</th>
                            </tr>
                        </thead>
                        <tbody>
                            @foreach ($news as $new)
                                <tr>
                                    <td>{{$new->id}}</td>
                                    <td><p>{{$new->title}}</p> <img src="upload/image/{{$new->image}}" alt="" width=" 150px"></td>
                                    <td>{{$new->summery}}</td>
                                    <td>{{$new->category->name}}</td>
                                    <td>{{$new->view}}</td>
                                    <td>
                                        @if($new->highlight==0)
                                            {{'không'}}
                                        @else
                                            {{'có'}}
                                        @endif
                                    </td>
                                    <td><i class="fas fa-trash-alt"> </i> <a href="admin/news/delete/{{$new->id}}">Delete</a></td>
                                    <td><i class="fas fa-edit"> </i><a href="admin/news/edit/{{$new->id}}">Edit</a></td>
                                </tr>

                            @endforeach

                        </tbody>
                    </table>
                </div>
        </div>
    </div>

@endsection
