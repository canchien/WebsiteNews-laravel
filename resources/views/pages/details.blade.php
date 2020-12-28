@extends('layout.index')
@section('title')
    {{$detailsNew->title}}
@endsection
@section('content')
<div class="whats-news">
    <div class="container">
        <div class="section-tittle mb-30">
            <h3>{{$detailsNew->title}}</h3>
            <p class="date">{{$detailsNew->created_at}} </p>
        </div>
        <div class="row">
            <div class="col-lg-9">
                <div class="about-left mb-90">
                    <div class="section-tittle mb-25">
                        <h3><small>{{$detailsNew->summery}}</small></h5>
                    </div>
                    <div class="details-img mb-30">
                        <img src="upload/image/{{$detailsNew->image}}" alt="">
                    </div>

                    <div class="about-prea">
                        {!!$detailsNew->content!!}
                    </div>
                </div>

                {{-- comments --}}
                <div class="comments-area" id="accordion">
                    <h5 class=" mb-5">{{$comments->count()}} <i class="far fa-comment"></i></h5>
                    @foreach ($comments as $comment)
                        @if ($comment->comment_parent == 0)
                        <div class="comment-list mb-4">
                            <div class="single-comment-parent">
                                <div class="user d-flex">
                                    <div class="thumb avatar-comment mr-3">
                                        <img class="avatar-img" src=@if($comment->users->avatar != "" && $comment->users->avatar != null)
                                        {!!asset('admin_asset/image/upload/'.$comment->users->avatar)!!}
                                    @else
                                        {{Avatar::create($comment->users->name)->toBase64()}}
                                    @endif alt="">
                                    </div>
                                    <div class="desc">
                                        <div class="d-flex justify-content-between">
                                            @if ($comment->users->role == 1 || $comment->users->role == 2)
                                                <h6 style="color: #5b5fca">
                                                    {{$comment->users->name}}
                                                    <small class="badge badge-danger">Admin</small>
                                                </h6>
                                            @else
                                                <h6>
                                                    {{$comment->users->name}}
                                                </h6>
                                            @endif
                                        </div>
                                        <div>
                                            <p class="comment-content">{{$comment->comment_content}}</p>
                                            <div class="d-flex mb-2">
                                                <a href="javascrip:0;"> <small class="date">{{$comment->created_at}}</small></a>
                                                @if (Auth::Check())

                                                    @if (Auth::User()->role == 2 || Auth::User()->id == $comment->author)
                                                        <a href="{{ route('removeComment',['id'=>$comment->id,'post_id'=>$postDetail->id])}}" class="text-delete mr-1 ml-2" onclick="return removeItem()"><small>Delete</small> </a>
                                                        <p>-</p>
                                                        @endif
                                                    @if (Auth::User()->id == $comment->author)
                                                        <a href="#" data-toggle="modal" class="update-comment mx-1" id="{{$comment->id}}"> <small>Update</small> </a>
                                                        <p>-</p>
                                                    @endif

                                                    <a data-target="#commentReply{{$comment->id}}" class="ml-1" data-toggle="collapse"><small class="action-comment">Reply</small></a>
                                                @endif

                                            </div>

                                        </div>
                                    </div>
                                </div>
                                <div id="commentReply{{$comment->id}}" data-parent="#accordion" class="collapse border p-3 navbar-collapse ml-5" >
                                    <form action="{{route('addComment')}}" method="POST">
                                        <div class="form-group">
                                            @csrf
                                            <input type="hidden" name="post_id" value="{{$postDetail->id}}">
                                            <input type="hidden" name="parent_id" value="{{$comment->id}}">
                                            <label for="content" class=" col-form-label input-label">Content reply</label>
                                            <div class="input-group">
                                                <textarea class="form-control" name="content" id="contentReply" rows="3"></textarea>
                                            </div>
                                            <div class="alert alert-danger errorMessage" id="contentError" style="display:none">
                                            </div>
                                        </div>
                                    <button type="submit" class="btn btn-success">Submit</button>
                                    <button type="button" class="btn btn-light closeCollapse">close</button>
                                    </form>
                                </div>
                                @foreach ($comments as $cmt)
                                @if ($cmt->comment_parent == $comment->id)
                                <div class="comment-list mb-2 ml-5">
                                    <div class="single-comment">
                                        <div class="user d-flex">
                                            <div class="thumb avatar-comment mr-3">
                                                <img class="avatar-img" src=@if($cmt->users->avatar != "" && $cmt->users->avatar != null)
                                                {!!asset('admin_asset/image/upload/'.$cmt->users->avatar)!!}
                                            @else
                                                {{Avatar::create($cmt->users->name)->toBase64()}}
                                            @endif alt="">
                                            </div>
                                            <div class="desc">
                                                <div class="d-flex justify-content-between">
                                                    @if ($cmt->users->role == 1 || $cmt->users->role == 2)
                                                        <h6 style="color: #5b5fca">
                                                            {{$cmt->users->name}}
                                                            <small class="badge badge-danger">Admin</small>
                                                        </h6>
                                                    @else
                                                        <h6>
                                                            {{$cmt->users->name}}
                                                        </h6>
                                                    @endif
                                                </div>
                                                <div>
                                                    <p class="comment-content">{{$cmt->comment_content}}</p>
                                                    <div class="d-flex">
                                                        <a href="javascrip:0;"> <small class="date">{{$cmt->created_at}}</small></a>
                                                        @if (Auth::Check())
                                                            @if (Auth::User()->role == 2 || Auth::User()->id == $cmt->author)
                                                                <a href="{{ route('removeComment',['id'=>$cmt->id,'post_id'=>$postDetail->id])}}" class="text-delete mr-1 ml-2" onclick="return removeItem()"><small>Delete</small> </a>
                                                                <p>-</p>
                                                            @endif
                                                            @if (Auth::User()->id == $cmt->author)
                                                                <a href="#" data-toggle="modal" class="update-comment mx-1" id="{{$cmt->id}}"> <small>Update</small> </a>
                                                                <p>-</p>
                                                            @endif
                                                            <a data-target="#commentReply{{$comment->id}}" class="ml-1" data-toggle="collapse"><small>Reply</small></a>
                                                        @endif

                                                    </div>

                                                </div>
                                            </div>
                                        </div>


                                    </div>
                                </div>
                                @endif

                            @endforeach
                            </div>
                        </div>
                        @endif

                    @endforeach

                    <form action="" method="POST" id="updateComment">
                        <meta name="csrf-token" content="{{ csrf_token() }}">
                    <div class="modal fade" id="UpdateComment">
                        <div class="modal-dialog modal-lg">
                          <div class="modal-content">

                            <!-- Modal Header -->
                            <div class="modal-header">
                              <h4 class="modal-title">Update your Comment</h4>
                              <button type="button" class="close" data-dismiss="modal">&times;</button>
                            </div>

                            <!-- Modal body -->
                            <div class="modal-body">

                                    <input type="hidden" name="id" id="comment_id">
                                    <div class="form-group">
                                        <label for="content" class=" col-form-label input-label">Content</label>
                                        <div class="input-group">
                                            <textarea class="form-control" name="content" id="content" rows="5"></textarea>
                                        </div>
                                        <div class="alert alert-danger errorMessage" id="contentError" style="display:none">
                                        </div>
                                    </div>

                            </div>

                            <!-- Modal footer -->
                            <div class="modal-footer">
                              <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                              <button type="submit" class="btn btn-primary" name="">Save changes</button>
                            </div>

                          </div>
                        </div>
                      </div>
                    </form>
                </div>
                <div class="comment-form">
                    @if (Auth::check())
                        <h4 class="mb-3 mt-2">Leave a Reply</h4>
                        <form class="form-contact comment_form" action="{{route('addComment')}}" method="POST" id="commentForm">
                            <input type="hidden" value="{{ csrf_token() }}" name="_token">
                            <input type="hidden" name="post_id" value="{{$postDetail->id}}">
                            <div class="row">
                                <div class="col-12">
                                    <div class="form-group">
                                        <textarea class="form-control w-100" name="content" id="comment" cols="30" rows="9"
                                        placeholder="Write Comment" required></textarea>
                                    </div>
                                </div>
                            </div>
                            <div class="form-group">
                                <button type="submit" class="button button-contactForm btn_1 boxed-btn">Send Message</button>
                            </div>
                        </form>
                    @else
                        <div class="">
                            <a  class="boxed-btn btn" href="{{route('login')}}">Login to comments</a>
                        </div>
                    @endif
                </div>
                {{-- end comments --}}

            </div>
            <div class="col-lg-3">
                <div class="section-tittle mb-40">
                    <h3>Related News</h3>
                </div>
                <div class="col-lg-12">

                    @foreach ($relatedNews as $new)
                    <div class="relate-right-single d-flex">
                        <div class="relate-right-img">
                            <img src="upload/image/{{$new['image']}}" alt="">
                        </div>
                        <div class="relate-right-cap">
                            <span class="color{{rand(1,3)}}">{{$new->category->name}}</span>
                            <h4><a href="detailsNew/{{$new['id']}}">{{$new['title']}}</a></h4>
                        </div>
                    </div>
                    @endforeach
                </div>
                <!-- Section Tittle -->
                <div class="section-tittle mb-40">
                    <h3>Follow Us</h3>
                </div>
                <!-- Flow Socail -->
                <div class="single-follow mb-45">
                    <div class="single-box">
                        <div class="follow-us d-flex align-items-center">
                            <div class="follow-social">
                                <a href="https://www.facebook.com/chienhihe"><img src="frontend/img/icon-fb.png" alt=""></a>
                            </div>
                            <div class="follow-count">
                                <span>8,045</span>
                                <p>Fans</p>
                            </div>
                        </div>
                        <div class="follow-us d-flex align-items-center">
                            <div class="follow-social">
                                <a href="#"><img src="frontend/img/icon-tw.png" alt=""></a>
                            </div>
                            <div class="follow-count">
                                <span>8,045</span>
                                <p>Fans</p>
                            </div>
                        </div>
                            <div class="follow-us d-flex align-items-center">
                            <div class="follow-social">
                                <a href="#"><img src="frontend/img/icon-ins.png" alt=""></a>
                            </div>
                            <div class="follow-count">
                                <span>8,045</span>
                                <p>Fans</p>
                            </div>
                        </div>
                        <div class="follow-us d-flex align-items-center">
                            <div class="follow-social">
                                <a href="#"><img src="frontend/img/icon-yo.png" alt=""></a>
                            </div>
                            <div class="follow-count">
                                <span>8,045</span>
                                <p>Fans</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection

