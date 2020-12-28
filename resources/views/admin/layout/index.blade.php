<!DOCTYPE html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!--> <html class="no-js"> <!--<![endif]-->
<head>
	<meta charset="utf-8">
	<title>Welcome Admin</title>
	<meta name="description" content="">
	<!-- Mobile Specific Meta -->
	<meta name="viewport" content="width=device-width, initial-scale=1">

	<!-- <link rel="shortcut icon" href="img/favicon.png"> -->
    <!-- Bosstrap -->

	<link rel="stylesheet" href="{{asset('https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css')}}">
	<link rel="stylesheet" href="{{asset('https://use.fontawesome.com/releases/v5.6.3/css/all.css')}}">

	<link href='http://fonts.googleapis.com/css?family=Lato:300,400,700' rel='stylesheet'>

	<!-- Syntax Highlighter -->
	<link rel="stylesheet" type="text/css" href="{{asset('admin_asset/syntax-highlighter/styles/shCore.css')}}" media="all">
	<link rel="stylesheet" type="text/css" href="{{asset('admin_asset/syntax-highlighter/styles/shThemeDefault.css')}}" media="all">

	<!-- Font Awesome CSS-->
	<link rel="stylesheet" href="{{asset('admin_asset/css/font-awesome.min.css')}}">
	<!-- Normalize/Reset CSS-->
	<link rel="stylesheet" href="{{asset('admin_asset/css/normalize.min.css')}}">
	<!-- Main CSS-->
    <link rel="stylesheet" href="{{asset('admin_asset/css/main.css')}}">




    <base href="{{asset('')}}">
</head>

<body id="welcome">

	<aside class="left-sidebar">
		<div class="logo">
			<a href="#welcome">
				<h1>welcome</h1>
			</a>
		</div>
		<nav class="left-nav">
			<ul id="nav">
                @if (Auth::check())
                    <li class="dropdown">
                        <a data-toggle="collapse" data-target="#nav-info" href="#">
                            <img src="{{ Avatar::create(Auth::user()->name)->toBase64() }}" alt="avatar" width="20px" height="20px"> {{Auth::user()->name}}
                            <span class="sub-icon"></span>
                        </a>
                        <div id="nav-info" class="collapse">
                            <ul class="nav-slt">
                                <li><a href="admin/user/edit/{{Auth::user()->id}}"><i class="fas fa-id-card"></i> Profile</a></li>
                                <li><a href="admin/logout"><i class="fas fa-sign-out-alt"></i> Logout</a></li>
                            </ul>
                        </div>
                    </li>
                @endif
                <li class="current"><a href="admin/home"><i class="fas fa-tachometer-alt"></i>  Dashboard</a></li>
                <li class="dropdown">
                    <a data-toggle="collapse" data-target="#nav-cate" href="#"><i class="fas fa-stream"></i> Category <span class="sub-icon"></span></a>
                    <div id="nav-cate" class="collapse">
                        <ul class="nav-slt">
                            <li><a href="{{URL::to('admin/category/list')}}"><i class="fas fa-list-alt"></i> List Category</a></li>
                            <li><a href="{{URL::to('admin/category/add')}}"><i class="fas fa-plus-square"></i> Add Category</a></li>
                        </ul>
                    </div>
				</li>
                <li class="dropdown">
                    <a data-toggle="collapse" data-target="#nav-news" href="#"><i class="fas fa-newspaper"></i> News <span class="sub-icon"></span></a>
                    <div id="nav-news" class="collapse">
                        <ul class="nav-slt">
                            <li><a href="{{URL::to('admin/news/list')}}"><i class="fas fa-list-alt"></i> List News</a></li>
                            <li><a href="{{URL::to('admin/news/add')}}"><i class="fas fa-plus-square"></i> Add News</a></li>
                        </ul>
                    </div>
                </li>
                <li class="dropdown">
                    <a  href="{{URL::to('admin/comment/list')}}"><i class="fas fa-comments"></i> manage Comment</a>
                </li>
                <li class="dropdown">
                    <a data-toggle="collapse" data-target="#nav-user" href="#"><i class="fas fa-address-book"></i> User Account <span class="sub-icon"></span></a>
                    <div id="nav-user" class="collapse">
                        <ul class="nav-slt">
                            <li><a href="{{URL::to('admin/user/list')}}"><i class="fas fa-list-alt"></i> List User</a></li>
                            <li><a href="{{URL::to('admin/user/add')}}"><i class="fas fa-user-plus"></i> Add User</a></li>
                        </ul>
                    </div>
                </li>

			</ul>
		</nav>
	</aside>

    @yield('content')

		<!-- Essential JavaScript Libraries
			==============================================-->
			<script type="text/javascript" src="{{asset('admin_asset/js/jquery-1.11.0.min.js')}}"></script>
			<script type="text/javascript" src="{{asset('admin_asset/js/jquery.nav.j')}}s"></script>
			<script type="text/javascript" src="{{asset('admin_asset/syntax-highlighter/scripts/shCore.js')}}"></script>
			<script type="text/javascript" src="{{asset('admin_asset/syntax-highlighter/scripts/shBrushXml.js')}}"></script>
			<script type="text/javascript" src="{{asset('admin_asset/syntax-highlighter/scripts/shBrushCss.js')}}"></script>
			<script type="text/javascript" src="{{asset('admin_asset/syntax-highlighter/scripts/shBrushJScript.js')}}"></script>
			<script type="text/javascript" src="{{asset('admin_asset/syntax-highlighter/scripts/shBrushPhp.js')}}"></script>
			<script type="text/javascript">
				SyntaxHighlighter.all()
			</script>
			<script type="text/javascript" src="{{asset('admin_asset/js/custom.js')}}"></script>

			<script src="{{asset('https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js')}}"></script>
            <script src="{{asset('https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js')}}"></script>
            <script src="{{asset('https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js')}}"></script>
            <script src="{{asset('admin_asset/ckeditor/ckeditor.js')}}"></script>

    @yield('script')
	</body>
</html>
