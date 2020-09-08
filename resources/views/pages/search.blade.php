@extends('layout.index')
@section('title')
    Search
@endsection
@section('content')
<div class="latest-news">
    <div class="container">
        <div class="latest-wrapper">
            <!-- section Tittle -->
            <?php
                function textColor($str,$keyWord)
                {
                    return str_replace($keyWord,"<i style='color: red;'>$keyWord</i>",$str);
                }
            ?>
            <div class="row">
                <div class="col-lg-12">
                    <div class="section-tittle mb-30">
                        <h3 style="color: darkcyan;">Kết quả tìm kiếm cho '{{$keyWord}}'</h3>
                    </div>
                </div>
            </div>
            <div class="row">
                @foreach ($news as $new)
                <div class="col-12">
                    <div class="latest-news-active d-flex row">

                            <div class="latest-single mb-30 d-flex">
                                <div class="latest-img" >
                                    <img src="upload/image/{{$new->image}}" alt="">
                                </div>
                                <div class="search-caption">
                                    <h4><a href="detailsNew/{{$new->id}}" style="font-size: 25px">{!! textColor($new->title,$keyWord) !!}</a></h4>
                                    <span class="color{{rand(1,3)}}">{{$new->category->name}}</span>
                                    <p>{{$new->created_at}}</p>
                                    <h5><small>{!! textColor($new->summery,$keyWord) !!}</small></h5>
                                </div>
                            </div>

                    </div>
                </div>
                 @endforeach
                {{-- <div style="margin: 0 auto">
                    {{ $latestNews->links() }}
                </div> --}}
            </div>

        </div>
    </div>
</div>
@endsection
