<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>@yield('title')</title>
    <base href="{{asset('')}}">
    <!-- css -->
    <link href="{{asset('frontend/css/bootstrap.min.css') }}" rel="stylesheet" type="text/css">
    <link href="{{asset('frontend/css/style.css')}}" rel="stylesheet">
    <link href="{{asset('frontend/css/font-awesome.min.css')}}"  rel="stylesheet">
</head>
<body>
    @include('layout.header')

    @yield('content')

    @include('layout.footer')
    <button onclick="topFunction()" id="myBtn" title="Go to top">top</i></button>

    <script src="{{ asset('frontend/js/jquery.min.js') }}"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"
        integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous">
    </script>
    <script src="{{ asset('frontend/js/bootstrap.min.js') }}"></script>
    <script src="{{ asset('frontend/js/bootstrap.bundle.min.js') }}"></script>

    <script src="https://kit.fontawesome.com/a076d05399.js"></script>
    <script src="{{ asset('frontend/js/main.js') }}"></script>


    @yield('script')
</body>
</html>
