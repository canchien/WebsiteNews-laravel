@extends('layout.index')
@section('title')
    Category
@endsection
@section('content')
<div class="whats-news">
    <div class="container">
        <div class="row">
        <div class="col-lg-10">
            <div class="row d-flex justify-content-between">
                <div class="col-lg-3 col-md-3">
                    <div class="section-tittle mb-30">
                        <h3>Whats New</h3>
                    </div>
                </div>
                <div class="col-lg-9 col-md-9">
                    <div class="properties__button">
                        <!--Nav Button  -->
                        <nav>
                            <div class="nav nav-tabs" id="nav-tab" role="tablist">
                                <a class="nav-item nav-link active" id="nav-home-tab" data-toggle="tab" href="#nav-home" role="tab" aria-controls="nav-home" aria-selected="true">All</a>
                                @foreach ($category as $cate)
                                    <a class="nav-item nav-link" data-toggle="tab" href="#category{{$cate->id}}"  aria-selected="false">
                                        {{$cate->name}}
                                    </a>
                                @endforeach

                            </div>
                        </nav>
                        <!--End Nav Button  -->
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-12">
                    <!-- Nav Card -->
                    <div class="tab-content" id="nav-tabContent">
                        <!-- card one -->

                        <div class="tab-pane active" id="nav-home" role="tabpanel" aria-labelledby="nav-home-tab">
                            <div class="whats-news-caption">
                                <div class="row">
                                    @foreach ($news as $new)
                                        <div class="col-lg-4 col-md-4">
                                            <div class="single-what-news mb-100">
                                                <div class="what-img">
                                                    <img src="upload/image/{{$new->image}}" alt="">
                                                </div>
                                                <div class="what-cap">
                                                    <span class="color{{rand(1,3)}}">{{$new->category->name}}</span>
                                                    <h4><a href="detailsNew/{{$new->id}}">{{$new->title}}</a></h4>
                                                </div>
                                            </div>
                                        </div>

                                    @endforeach
                                </div>
                            </div>
                        </div>
                        <!-- Card two -->
                        @foreach ($category as $cate)
                            @if(count($cate->news)> 0)
                                <div class="tab-pane fade" id="category{{$cate->id}}">
                                    <div class="whats-news-caption">
                                        <div class="row">
                                            @foreach ($cate->news as $new)
                                            <div class="col-lg-4 col-md-4">
                                                <div class="single-what-news">
                                                    <div class="what-img">
                                                        <img src="upload/image/{{$new->image}}" alt="">
                                                    </div>
                                                    <div class="what-cap">
                                                        <span class="color{{rand(1,3)}}">{{$cate->name}}</span>
                                                        <h4><a href="detailsNew/{{$new->id}}">{{$new->title}}</a></h4>
                                                    </div>
                                                </div>
                                            </div>
                                            @endforeach
                                        </div>
                                    </div>
                                </div>
                            @else
                            <div class="tab-pane fade" id="category{{$cate->id}}">
                                <div class="whats-news-caption">
                                    {{'Thể loại chưa có tin gì'}}
                                </div>
                            </div>
                            @endif
                        @endforeach

                    </div>
                <!-- End Nav Card -->
                </div>
            </div>
        </div>
        <div class="col-lg-2">
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

