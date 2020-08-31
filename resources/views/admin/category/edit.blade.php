@extends('admin.layout.index')

@section('content')

    <div id="main-wrapper">
        <div class="main-content">
            <div class="content-header">
                <h1>Category Update</h1>
            </div>
            <div class="content-body" style=" width: 50%; margin: 3em auto;">
                @if (count($errors) > 0)
                    <div class="alert alert-danger">
                        @foreach ($errors->all() as $err)
                            {{$err}} <br>
                        @endforeach
                    </div>

                @endif

                @if (session('message'))
                <div class="alert alert-success">
                        {{session('message')}}
                </div>
                @endif
                <form action="admin/category/edit/{{$category->id}}" method="POST">
                    <input type="hidden" name="_token" value="{{ csrf_token() }}">
                    <div class="form-group">
                    <label for="name"><h3>Category <small>({{$category->name}})</small></h3></label>
                    <br>
                    <label for="id"><h3>name: </h3></label>
                    <input type="text" class="form-control" name="name" value="{{$category->name}}">
                    </div>
                    <button type="submit" class="btn btn-info">Update</button>
                    <button type="reset" class="btn btn-info">Clear</button>
                </form>
            </div>
        </div>
    </div>
@endsection
