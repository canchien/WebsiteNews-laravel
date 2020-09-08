<div class="header">
    <div class="top-header">
        <div class="container">
            <div class="row row-header">
                <div class="col-xl-6 date-header">
                    <img src="app/img/header_icon2.png" alt=""><script> document.write(" Ngày "+new Date().getDate()+" Tháng "+new Date().getMonth()+" Năm "+new Date().getFullYear());</script>
                </div>
                <div class="col-xl-6 info-header">
                    <a href="#"><i class="fab fa-twitter"></i></a>
                    <a href="#"><i class="fab fa-instagram"></i></a>
                    <a href="#"><i class="fab fa-facebook"></i></a>
                </div>
            </div>

        </div>


    </div>
    <div id="navbar" style="display: flex;">
        <div class="logo">
            <a href="">
                <img src="app/img/your-logo.png" alt="">
            </a>
        </div>
        <ul id="navigation">
            <li><a href="home">Home</a></li>
            <li><a href="{{URL::to('category')}}">Category</a></li>
            <li><a href="{{URL::to('about')}}">About</a></li>
            <li><a href="{{URL::to('lastestnews')}}">Latest News</a></li>
            <li><a href="{{URL::to('contact')}}">Contact</a></li>
            <li><a href="#">Pages</a>
                <ul class="sub-menu">
                    <li><a href="elements.html">Element</a></li>
                    <li><a href="blog.html">Blog</a></li>
                    <li><a href="details.html">Categori Details</a></li>
                </ul>
            </li>

        </ul>
    </div>
    <div class="container" style="display: flex;">
        <div class="trending-title">
            <marquee >Chúc bạn ngày mới tốt lành.</marquee>
        </div>
        <div class="search-box">
            <form action="search" method="GET">
                <input type="hidden" name="_tokken" value="{{ csrf_token() }}">
                <input type="text" placeholder=" Search" name="keyWord">
                <button type="submit"><i class="fas fa-search special-tag"></i></button>
            </form>
        </div>
    </div>
</div>
