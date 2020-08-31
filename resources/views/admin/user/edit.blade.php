@extends('admin.layout.index')

@section('content')

    <div id="main-wrapper">
        <div class="main-content">
            <div class="content-header">
                <h1>Update user <small>({{$user->name}})</small></h1>
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
                <form action="admin/user/edit/{{$user->id}}" method="POST">
                    <input type="hidden" name="_token" value="{{ csrf_token() }}">
                    <div class="form-group">
                        <label for="name"><h3>Tên</h3></label>
                        <input type="text" class="form-control" name="name" placeholder="Nhập tên" value="{{$user->name}}">
                    </div>
                    <div class="form-group">
                        <label for="name"><h3>Email</h3></label>
                        <input type="email" class="form-control" name="email" placeholder="Nhập Email" value="{{$user->email}}" readonly>
                    </div>
                    <div class="form-group">
                        <input type="checkbox" name="changePassword" id="changepw">
                        <label for="name"><h3>New Password</h3></label>
                        <input type="password" class="form-control password" name="password" placeholder="Nhập Password mới" disabled>
                    </div>
                    <div class="form-group">
                        <label for="name"><h3>Nhập lại Password</h3></label>
                        <input type="password" class="form-control password" name="repassword" placeholder="Nhập lại Password" disabled>
                    </div>
                    <button type="submit" class="btn btn-info">Update</button>
                    <button type="reset" class="btn btn-info">Clear</button>
                </form>
            </div>
        </div>
    </div>
@endsection

@section('script')
    <script>
        $(document).ready(function(){
            $("#changepw").change(function(){
                if ($(this).is(":checked")) {
                    $(".password").removeAttr('disabled');
                }
                else
                {
                    $(".password").attr('disabled','');
                }
            });
        });
    </script>
@endsection
