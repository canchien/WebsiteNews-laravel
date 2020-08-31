@extends('layout.index')
@section('title')
    Lastest news
@endsection
@section('content')
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
                        @foreach ($latestNews as $new)
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
                <div style="margin: 0 auto">
                    {{ $latestNews->links() }}
                </div>
            </div>

        </div>
    </div>
</div>
@endsection
