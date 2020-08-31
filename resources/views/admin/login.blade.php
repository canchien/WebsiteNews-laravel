
<!DOCTYPE html>
<html>
<head lang="vi">
    <link rel="stylesheet" href="{{asset('admin_asset/css/styleLoginAd.css')}}">
    <link rel="stylesheet" href="{{asset('https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css')}}">
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
    <title>Login</title>
    <base href="{{asset('')}}">
</head>

<body class="background-img">
    <div class="login w3_login">
        <h2 class="login-header w3_header">Log in</h2>
        <div class="w3l_grid">
            <form class="login-container" action="" method="POST">
                <input type="hidden" name="_token"  value="{{ csrf_token() }}">
                <input type="email" placeholder="Email" name="email" required="" >
                <input type="password" placeholder="Password" name="password" required="">
                <input type="submit" name="submit" value="Login">
            </form>
            @if (session('message'))
                <div class="alert alert-danger">
                        {{session('message')}}
                </div>
            @endif
        </div>
    </div>
    <?php
    ?>
</body>

</html>
