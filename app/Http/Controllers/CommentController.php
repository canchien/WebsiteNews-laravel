<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Str;
use App\Models\Category;
use App\Models\News;
use App\Models\Comment;
use Illuminate\Support\Facades\Redirect;

class CommentController extends Controller
{
    //COMMENT

    public function commentList()
    {
        $comment = Comment::all();

        return view('admin.comment.list',['comment'=>$comment]);
    }

    public function commentDelete($id)
    {
        $cmt = Comment::find($id);
        $cmt->delete();

        return redirect('admin/comment/list')->with('message','Xóa thành công');
    }

    public function addComment(Request $request, $id)
    {
        $comment = new Comment;
        $comment->email = $request->email;
        $comment->idNews = $id;
        $comment->content = $request->comment;
        $comment->save();
        return redirect('detailsNew/'.$id)->with('message','Viết bình luận thành công.');;
    }
}
