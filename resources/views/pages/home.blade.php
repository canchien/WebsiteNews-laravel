@extends('layout.index')
@section('title')
    Home
@endsection
@section('content')
<div class="main">
    <div class="main-trending">
        <div class="container main-bbtn">
            <div class="row">
                <?php
                    $topTrending = $dataTrending->shift();
                    $bottomTrending = $dataTrending->slice(0,3);
                    $rightTrending = $dataTrending->slice(3);
                ?>
                <div class="col-lg-8">
                    <!-- Trending Top -->
                    <div class="trending-top mb-30">
                        <div class="trend-top-img">
                            <img src="upload/image/{{$topTrending['image']}}" alt="">
                            <div class="trend-top-cap">
                                <span class="color2">{{$topTrending->category->name}}</span>
                                <h2><a href="detailsNew/{{$topTrending['id']}}">{{$topTrending['title']}}</a></h2>
                            </div>
                        </div>
                    </div>
                    <!-- Trending Bottom -->
                    <div class="trending-bottom">
                        <div class="row">
                            @foreach ($bottomTrending->all() as $new)
                            <div class="col-lg-4">
                                <div class="single-bottom mb-35">
                                    <div class="trend-bottom-img mb-30">
                                        <img src="upload/image/{{$new['image']}}" alt="">
                                    </div>
                                    <div class="trend-bottom-cap">
                                        <span class="color{{rand(1,3)}}">{{$new->category->name}}</span>
                                        <h4><a href="detailsNew/{{$new['id']}}">{{$new['title']}}</a></h4>
                                    </div>
                                </div>
                            </div>
                            @endforeach
                        </div>
                    </div>
                </div>
                <!-- Trending right -->
                <div class="col-lg-4">
                    <div class="col-lg-12">
                        @foreach ($rightTrending->all() as $new)
                        <div class="trand-right-single d-flex">
                            <div class="trand-right-img">
                                <img src="upload/image/{{$new['image']}}" alt="">
                            </div>
                            <div class="trand-right-cap">
                                <span class="color{{rand(1,3)}}">{{$new->category->name}}</span>
                                <h4><a href="detailsNew/{{$new['id']}}">{{$new['title']}}</a></h4>
                            </div>
                        </div>
                        @endforeach
                    </div>
                </div>
            </div>
        </div>
    </div>
    {{-- category --}}
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
                            <?php
                                $dataAll = $news->where('highlight',1)->sortByDesc('created_at')->take(6);
                            ?>
                            <div class="tab-pane active" id="nav-home" role="tabpanel" aria-labelledby="nav-home-tab">
                                <div class="whats-news-caption">
                                    <div class="row">
                                        @foreach ($dataAll->all() as $new)

                                            <div class="col-lg-4 col-md-4">
                                                <div class="single-what-news mb-100">
                                                    <div class="what-img">
                                                        <img src="upload/image/{{$new['image']}}" alt="">
                                                    </div>
                                                    <div class="what-cap">
                                                        <span class="color{{rand(1,3)}}">{{$new->category->name}}</span>
                                                        <h4><a href="detailsNew/{{$new['id']}}">{{$new['title']}}</a></h4>
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
                                    <?php
                                        $data = $cate->news->sortByDesc('created_at')->take(6);
                                    ?>
                                    <div class="tab-pane fade" id="category{{$cate->id}}">
                                        <div class="whats-news-caption">
                                            <div class="row">

                                                @foreach ($data as $new)
                                                <div class="col-lg-4 col-md-4">
                                                    <div class="single-what-news">
                                                        <div class="what-img">
                                                            <img src="upload/image/{{$new['image']}}" alt="">
                                                        </div>
                                                        <div class="what-cap">
                                                            <span class="color{{rand(1,3)}}">{{$cate->name}}</span>
                                                            <h4><a href="detailsNew/{{$new['id']}}">{{$new['title']}}</a></h4>
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
    <div class="latest-news">
        <div class="container">
            <div class="latest-wrapper">
                <!-- section Tittle -->
                <div class="row">
                    <div class="col-lg-12">
                        <div class="section-tittle mb-30">
                            <h3>Latest News</h3>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-12">
                        <div class="latest-news-active d-flex row">
                            <?php
                                $latestNews = $news->sortByDesc('created_at')->take(8);
                            ?>
                            @foreach ($latestNews->all() as $new)
                                <div class="latest-single col-3 mb-30">
                                    <div class="latest-img" >
                                        <img src="upload/image/{{$new['image']}}" alt="">
                                    </div>
                                    <div class="latest-caption">
                                        <span class="color{{rand(1,3)}}">{{$new->category->name}}</span>
                                        <p>{{$new['created_at']}}</p>
                                        <h4><a href="detailsNew/{{$new['id']}}">{{$new['title']}}</a></h4>
                                    </div>
                                </div>
                            @endforeach
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection

