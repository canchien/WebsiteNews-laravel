@extends('admin.layout.index')

@section('content')

    <div id="main-wrapper">
        <div class="main-content">
            <div class="content-header">
                <h1>Register</h1>
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
                <form action="admin/user/add" method="POST">
                    <input type="hidden" name="_token" value="{{ csrf_token() }}">
                    <div class="form-group">
                        <label for="name"><h3>Tên</h3></label>
                        <input type="text" class="form-control" name="name" placeholder="Nhập tên">
                    </div>
                    <div class="form-group">
                        <label for="name"><h3>Email</h3></label>
                        <input type="email" class="form-control" name="email" placeholder="Nhập Email">
                    </div>
                    <div class="form-group">
                        <label for="name"><h3>Password</h3></label>
                        <input type="password" class="form-control" name="password" placeholder="Nhập Password">
                    </div>
                    <div class="form-group">
                        <label for="name"><h3>Nhập lại Password</h3></label>
                        <input type="password" class="form-control" name="repassword" placeholder="Nhập lại Password">
                    </div>
                    <button type="submit" class="btn btn-info">User Add</button>
                    <button type="reset" class="btn btn-info">Clear</button>
                </form>
            </div>
        </div>
    </div>
@endsection
