@extends('layout.index')
@section('title')
    Contact
@endsection
@section('content')
<div class="contact-section">
    <div class="container">

        <div class="maps mb-90">
            <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d29790.24806802662!2d105.558376878698!3d21.041446653441575!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x313459f3cfb1b39f%3A0xcce2cb9865b0388b!2zS2ltIFF1YW4sIFRo4bqhY2ggVGjhuqV0LCBIw6AgTuG7mWk!5e0!3m2!1svi!2s!4v1597735123459!5m2!1svi!2s" width="1000" height="400" frameborder="0" style="border:0;" allowfullscreen="" aria-hidden="false" tabindex="0"></iframe>
        </div>
        <div class="row">
            <div class="col-12">
                <h2 class="contact-title">Get in Touch</h2>
            </div>
            <div class="col-lg-8">
                <form class="form-contact contact_form" action="#" method="post" id="contactForm">
                    <div class="row">
                        <div class="col-12">
                            <div class="form-group mb-30">
                                <textarea class="form-control w-100" name="message" id="message" cols="30" rows="9" placeholder=" Enter Message" required></textarea>
                            </div>
                        </div>
                        <div class="col-sm-6">
                            <div class="form-group mb-30">
                                <input class="form-control valid" name="name" id="name" type="text"  placeholder="Enter your name" required>
                            </div>
                        </div>
                        <div class="col-sm-6">
                            <div class="form-group mb-30">
                                <input class="form-control valid" name="email" id="email" type="email"  placeholder="Email" required>
                            </div>
                        </div>
                        <div class="col-12">
                            <div class="form-group mb-30">
                                <input class="form-control" name="subject" id="subject" type="text" placeholder="Enter Subject" required>
                            </div>
                        </div>
                    </div>
                    <div class="form-group mt-3">
                        <button type="submit" class="button boxed-btn">Send</button>
                    </div>

                </form>
            </div>
            <div class="col-lg-3 offset-lg-1">
                <div class="media contact-info mb-25">
                    <span class="contact-info__icon"><i class="fas fa-home"></i></span>
                    <div class="media-body">
                        <h3>Kim Quan, Thạch Thất, Hà Nội.</h3>
                        <p>Hà nội, Việt Nam.</p>
                    </div>
                </div>
                <div class="media contact-info mb-25">
                    <span class="contact-info__icon"><i class="fas fa-tablet-alt"></i></span>
                    <div class="media-body">
                        <h3>+84 34 721 4898</h3>
                        <p>Mon to Fri 9am to 6pm</p>
                    </div>
                </div>
                <div class="media contact-info mb-25">
                    <span class="contact-info__icon"><i class="far fa-envelope"></i></span>
                    <div class="media-body">
                        <h3>canchien123@gmail.com</h3>
                        <p>Send us your query anytime!</p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection
