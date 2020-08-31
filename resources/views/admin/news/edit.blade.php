@extends('admin.layout.index')

@section('content')

    <div id="main-wrapper">

        <div class="main-content">
            <div class="content-header">
                <h1>News Update</h1>
            </div>
            <div class="content-body" style=" width: 80%; margin: 1em auto;">
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
                <form action="admin/news/edit/{{$new->id}}" method="POST" enctype="multipart/form-data">
                    <input type="hidden" name="_token" value="{{ csrf_token() }}">
                    <div class="form-group">
                        <label for="name"><h3>New <small>({{$new->title}})</small></h3></label>
                        <br>
                        <label for="name"><h3>Thể loại</h3></label>

                        <select class="form-control" id="sel1" name="idcategory">
                            @foreach ($category as $cate)
                                <option
                                @if ($new->category->id==$cate->id)
                                    {{"selected"}}
                                @endif
                                value="{{$cate->id}}">{{$cate->name}}</option>
                            @endforeach
                        </select>
                    </div>
                    <div class="form-group">
                        <label for="name"><h3>Tiêu đề</h3></label>
                        <input type="text" class="form-control" name="title" placeholder="Nhập tên thể loại" value="{{$new->title}}">
                    </div>
                    <div class="form-group">
                        <label for="name"><h3>Tóm tắt tiêu đề</h3></label>
                        <textarea class="form-control" name="summery" rows="5">{{$new->summery}}</textarea>
                    </div>
                    <div class="form-group">
                        <label for="name"><h3>Nội dung</h3></label>
                        <textarea class="form-control ckeditor" name="content" rows="5">{{$new->content}}</textarea>
                    </div>
                    <div class="form-group">
                        <label for="name"><h3>hình ảnh</h3></label>
                        <p>
                            <img src="upload/image/{{$new->image}}" alt="no picture" width="300px">
                        </p>

                        <input type="file" class="form-control-file" name="img">
                    </div>
                    <div class="form-group">
                        <label><h3>Tin nổi bật: </h3></label>
                        <div class="form-check-inline">
                            <label class="form-check-label" for="radio1">
                              <input type="radio" class="form-check-input" id="radio1" name="highlight" value="1"
                                @if ($new->highlight==1)
                                    {{"checked"}}
                                @endif
                              >Có
                            </label>
                        </div>
                        <div class="form-check-inline">
                            <label class="form-check-label" for="radio2">
                              <input type="radio" class="form-check-input" id="radio2" name="highlight" value="0"
                                @if ($new->highlight==0)
                                    {{"checked"}}
                                @endif
                              >Không
                            </label>
                        </div>
                    </div>
                    <div class="form-group">
                        <button type="submit" class="btn btn-info">Update</button>
                        <button type="reset" class="btn btn-info">Clear</button>
                    </div>

                </form>
            </div>
        </div>
    </div>

@endsection
