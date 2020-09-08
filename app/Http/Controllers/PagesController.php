<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Category;
use App\Models\News;
use App\Models\Comment;

class PagesController extends Controller
{
    function __construct()
    {
        $news = News::all();
        $category = Category::all();

        view()->share('news',$news);
        view()->share('category',$category);
    }

    function home()
    {
        $dataTrending  = News::where('highlight',1)->inRandomOrder()->take(9)->get();
        return view('pages.home',['dataTrending'=>$dataTrending]);
    }

    function contact()
    {
        return view('pages.contact');
    }

    function about()
    {
        return view('pages.about');
    }

    function category()
    {
        return view('pages.category');
    }

    function lastestNews()
    {
        $latestNews= News::orderBy('created_at','desc')->paginate(8);
        return view('pages.lastestnews',['latestNews'=>$latestNews]);
    }

    function detailsNew($id)
    {
        $detailsNew= News::find($id);
        $comments = Comment::where('idnews',$id)->orderBy('created_at','desc')->get();
        $relatedNews= News::where([['idcategory',$detailsNew->idcategory],['id','<>',$id]])->inRandomOrder()->take(4)->get();
        return view('pages.details',['detailsNew'=>$detailsNew,'relatedNews'=>$relatedNews,'comments'=>$comments]);
    }

    function getSearch(Request $request)
    {
        $keyWord = $request->keyWord;
        $news = News::where("title","like","%$keyWord%")->orWhere("summery","like","%$keyWord%")->paginate(6);
        return view('pages.search',['news'=>$news,'keyWord'=>$keyWord]);
    }
}
