<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Str;
use App\Models\Category;
use App\Models\News;
use App\Models\Comment;
use Illuminate\Support\Facades\Redirect;

class NewsController extends Controller
{

    public function checkValidate(Request $request)
    {

        $this->validate($request,
        [
            'title' =>'required|min:3|unique:news,title,'.$request->id.',id',
            'content' =>'required',
            'img' =>'image',
            'summery' =>'required'

        ],
        [
            'title.required' =>'bạn không thể bỏ trống tiêu đề',
            'title.min' =>'ít nhất từ 3 đến 100 ký tự',
            'title.unique' =>'Tiêu đề đã tồn tại',
            'content.required' =>'bạn không thể bỏ trống nội dung',
            'summery.required' =>'bạn không thể bỏ trống phần tóm tắt',
            'img.image' =>'Chọn đúng định dạng file ảnh',

        ]);
    }

    public function getList()
    {
        $news = News::all();
        return view('admin.news.list',['news'=>$news]);
    }

    public function getAdd()
    {
        $category = Category::all();
        return view('admin.news.add',['category'=>$category]);
    }

    public function postAdd(Request $request)
    {

        $this->checkValidate($request);
        $new = new News;
        $new->title= $request->title;
        $new->summery= $request->summery;
        $new->content= $request->content;
        $new->highlight= $request->highlight;
        $new->idcategory= $request->idcategory;

        if ($request->hasFile('img')) {
            $file = $request->file('img');
            $name =$file->getClientOriginalName();
            $newName = Str::random(5)."_".$name;
            while(file_exists('upload/image/'.$newName)){
                $newName = Str::random(5)."_".$name;
            }
            $file->move('upload/image',$newName);
            $new->image = $newName;
        }
        else{
            $new->image = "";
        }
        $new->save();
        return redirect('admin/news/add')->with('message','Thêm thành công');
    }

    public function getEdit($id)
    {
        $category = Category::all();
        $new = News::find($id);
        return view('admin.news.edit',['new'=>$new,'category'=>$category]);
    }

    public function postEdit(Request $request, $id)
    {
        $this->checkValidate($request);
        $new = News::find($id);
        $new->title= $request->title;
        $new->summery= $request->summery;
        $new->content= $request->content;
        $new->highlight= $request->highlight;
        $new->idcategory= $request->idcategory;

        if ($request->hasFile('img')) {
            $file = $request->file('img');
            $name =$file->getClientOriginalName();
            $newName = Str::random(5)."_".$name;
            while(file_exists('upload/image/'.$newName)){
                $newName = Str::random(5)."_".$name;
            }

            $file->move('upload/image',$newName);
            if(!empty($new->image)){
                unlink('upload/image/'.$new->image);
            }

            $new->image = $newName;
        }

         $new->save();

         return redirect('admin/news/edit/'.$id)->with('message','Sửa thành công');
    }

    public function getDelete($id)
    {
        $new = News::find($id);
        $new->delete();

        return redirect('admin/news/list')->with('message','Xóa thành công');
    }

}
