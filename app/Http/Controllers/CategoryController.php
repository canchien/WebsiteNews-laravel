<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Category;


class CategoryController extends Controller
{
    //
    public function getList()
    {
        $category = Category::all();
        return view('admin.category.list',['category'=>$category]);
    }

    public function getAdd()
    {
        return view('admin.category.add');
    }

    public function checkValidate(Request $request)
    {

        $this->validate($request,
        [
            'name' =>'required|min:3|max:100|unique:category,name'
        ],
        [
            'name.required' =>'bạn không thể bỏ trống tên thể loại',
            'name.min' =>'ít nhất từ 3 đến 100 ký tự',
            'name.max' =>'ít nhất từ 3 đến 100 ký tự',
            'name.unique' =>'thể loại đã tồn tại',
        ]);
    }

    public function postAdd(Request $request)
    {
        $this->checkValidate($request);
        $category = new Category;
        $category->name = $request->name;
        $category->save();

        return redirect()->back()->with('message','Thêm thành công');

    }

    public function getEdit($id)
    {
        $category = Category::find($id);
        return view('admin.category.edit',['category'=>$category]);
    }

    public function postEdit(Request $request,$id)
    {
        $category = Category::find($id);
        $this->checkValidate($request);

        $category->name = $request->name;
        $category->save();
        return redirect('admin/category/edit/'.$id)->with('message','Sửa thành công');
    }

    public function getDelete($id)
    {
        $category = Category::find($id);
        $category->delete();

        return redirect('admin/category/list/')->with('message','Xóa thành công');
    }
}
