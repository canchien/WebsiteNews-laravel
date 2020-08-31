<?php

namespace App\Http\Controllers;

use Illuminate\Support\Facades\Auth;

use App\Models\User;
use Illuminate\Http\Request;



class UserController extends Controller
{
    //
    public function userList()
    {
        $users = User::all();
        return view('admin.user.list',['users'=>$users]);
    }

    public function userAdd()
    {
        return view('admin.user.add');
    }

    public function checkValidate(Request $request)
    {

        $this->validate($request,
        [
            'name' =>'required|min:3|max:100',
            'email' =>'required|email|unique:users,email,'.$request->id.',id',
            'password' =>'required|min:3|max:32',
            'repassword' =>'required|same:password'
        ],
        [
            'name.required' =>'bạn không thể bỏ trống tên',
            'name.min' =>'ít nhất từ 3 đến 100 ký tự',
            'name.max' =>'ít nhất từ 3 đến 100 ký tự',
            'email.required' =>'bạn không thể bỏ trống Email',
            'email.email' =>'Email sai định dạng',
            'email.unique' =>'Email đã tồn tại',
            'password.required' =>'bạn không thể bỏ trống Password',
            'password.min' =>'ít nhất từ 3 đến 32 ký tự',
            'password.max' =>'ít nhất từ 3 đến 32 ký tự',
            'repassword.required' =>'hãy nhập lại Password',
            'repassword.same' =>'Password không giống nhau',
        ]);
    }

    public function postAdd(Request $request)
    {
        $this->checkValidate($request);
        $user = new User;
        $user->name = $request->name;
        $user->email = $request->email;
        $user->password = bcrypt($request->password);
        $user->save();

        return redirect()->back()->with('message','Thêm thành công');

    }

    public function userEdit($id)
    {
        $user = User::find($id);
        return view('admin.user.edit',['user'=>$user]);
    }

    public function postEdit(Request $request,$id)
    {
        $user = User::find($id);
        $this->validate($request,
        [
            'name' =>'required|min:3|max:100',
        ],
        [
            'name.required' =>'bạn không thể bỏ trống tên',
            'name.min' =>'ít nhất từ 3 đến 100 ký tự',
            'name.max' =>'ít nhất từ 3 đến 100 ký tự',
        ]);

        $user->name = $request->name;
        if(isset($request->changePassword)){
            $this->validate($request,
            [
                'password' =>'required|min:3|max:32',
                'repassword' =>'required|same:password'
            ],
            [
                'password.required' =>'bạn không thể bỏ trống Password',
                'password.min' =>'ít nhất từ 3 đến 32 ký tự',
                'password.max' =>'ít nhất từ 3 đến 32 ký tự',
                'repassword.required' =>'hãy nhập lại Password',
                'repassword.same' =>'Password không giống nhau'
            ]);
            $user->password = bcrypt($request->password);

        }

        $user->save();
        return redirect('admin/user/edit/'.$id)->with('message','Update thành công');
    }

    public function userDelete($id)
    {
        $user = User::find($id);
        $user->delete();

        return redirect()->back()->with('message','Xóa thành công user: '.$user->name );
    }

    public function getLogin()
    {
        return view('admin.login');
    }

    public function postLogin(Request $request)
    {
        if (Auth::attempt(['email' => $request->email, 'password' => $request->password])) {
            return redirect('admin/home');
        }
        else{
            return redirect('admin/login')->with('message','Sai email hoặc password');
        }
    }

    public function getLogout()
    {
        Auth::logout();
        return redirect('admin/login');
    }
}

