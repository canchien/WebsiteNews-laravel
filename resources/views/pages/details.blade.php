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

                <div class="comments-area">
                    <?php
                        $total = count($comments);
                    ?>
                    @if($total > 0)
                    <h4 class="">{{$total}} Comments</h4>
                    @foreach ($comments as $cmt)
                    <div class="comment-list">
                        <div class="single-comment justify-content-between d-flex">
                           <div class="user justify-content-between d-flex">
                              <div class="thumb ml">
                                 <img src="app/img/127434465-portrait-of-young-man-beautiful-handsome-boy-avatar-guy-smiling-male-character-isolated-vector-illus.jpg" alt="">
                              </div>
                              <div class="desc">
                                 <div class="d-flex justify-content-between">
                                        <h5>{{$cmt->email}}</h5>
                                  </div>
                                 <p class="date">{{$cmt->created_at}}</p>
                                 <p class="comment">{{$cmt->content}}</p>
                              </div>
                           </div>
                        </div>
                     </div>
                    @endforeach

                    @endif
                 </div>
                 <div class="comment-form">
                    @if (session('message'))
                    <div class="alert alert-success">
                            {{session('message')}}
                    </div>
                    @endif
                    <h4>Leave a Reply</h4>
                    <form class="form-contact comment_form" action="sendComment/{{$detailsNew->id}}" method="POST" id="commentForm">
                        <input type="hidden" value="{{ csrf_token() }}" name="_token">
                        <div class="row">
                            <div class="col-12">
                                <div class="form-group">
                                    <textarea class="form-control w-100" name="comment" id="comment" cols="30" rows="9"
                                    placeholder="Write Comment" required></textarea>
                                </div>
                            </div>
                            <div class="col-sm-6">
                                <div class="form-group">
                                    <input class="form-control" name="email" id="email" type="email" placeholder="Email" required>
                                </div>
                            </div>
                       </div>
                       <div class="form-group">
                          <button type="submit" class="button button-contactForm btn_1 boxed-btn">Send Message</button>
                       </div>
                    </form>
                 </div>
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
                                <a href="https://www.facebook.com/chienhihe"><img src="app/img/icon-fb.png" alt=""></a>
                            </div>
                            <div class="follow-count">
                                <span>8,045</span>
                                <p>Fans</p>
                            </div>
                        </div>
                        <div class="follow-us d-flex align-items-center">
                            <div class="follow-social">
                                <a href="#"><img src="app/img/icon-tw.png" alt=""></a>
                            </div>
                            <div class="follow-count">
                                <span>8,045</span>
                                <p>Fans</p>
                            </div>
                        </div>
                            <div class="follow-us d-flex align-items-center">
                            <div class="follow-social">
                                <a href="#"><img src="app/img/icon-ins.png" alt=""></a>
                            </div>
                            <div class="follow-count">
                                <span>8,045</span>
                                <p>Fans</p>
                            </div>
                        </div>
                        <div class="follow-us d-flex align-items-center">
                            <div class="follow-social">
                                <a href="#"><img src="app/img/icon-yo.png" alt=""></a>
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

