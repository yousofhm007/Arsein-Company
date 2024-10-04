@extends('base.base')

@section('body')
    <!-- Start ML Main Banner -->
    @php
        $len = count($data['slider']) - 1;
        $rand = rand(0, $len);
        $setting_slider_rand = rand(0, 10);
    @endphp
    @if (
        $data['setting_slider']->slider == 'pic_1' ||
            ($data['setting_slider']->slider == 'pic_1_2' && $setting_slider_rand % 2 != 0))
        <div class="ml-main-section">
            <div class="container">
                <div class="row">
                    <div class="col-lg-6 col-md-12">
                        <div class="ml-banner-content">
                            <h1>{!! $data['slider'][$rand]->title !!}</h1>
                            <p>{{ $data['slider'][$rand]->des }}</p>
                            <a href="{{ $data['slider'][$rand]->link_but }}"
                                class="btn btn-secondary">{{ $data['slider'][$rand]->text_but }}</a>
                        </div>
                    </div>

                    <div class="col-lg-6 col-md-12">

                        <div class="ml-banner-image">
                            <img src="assets/img/ml-banner-image/1.png" class="wow animate__animated animate__fadeIn"
                                data-wow-delay="2s" alt="image">
                            <img src="assets/img/ml-banner-image/2.png" class="wow animate__animated animate__fadeInUp"
                                data-wow-delay="1s" alt="image">
                            <img src="assets/img/ml-banner-image/3.png" class="wow animate__animated animate__fadeInUp"
                                data-wow-delay="0.5s" alt="image">
                            <img src="assets/img/ml-banner-image/4.png" class="wow animate__animated animate__fadeInUp"
                                data-wow-delay="2s" alt="image">
                            <img src="assets/img/ml-banner-image/5.png" class="wow animate__animated animate__fadeInDown"
                                data-wow-delay="2.5s" alt="image">
                            <img src="assets/img/ml-banner-image/6.png" class="wow animate__animated animate__fadeInDown"
                                data-wow-delay="1.9s" alt="image">
                            <img src="assets/img/ml-banner-image/7.png" class="wow animate__animated animate__fadeInDown"
                                data-wow-delay="2.1s" alt="image">
                            <img src="assets/img/ml-banner-image/8.png" class="wow animate__animated animate__fadeInDown"
                                data-wow-delay="1.9s" alt="image">
                            <img src="assets/img/ml-banner-image/9.png" class="wow animate__animated animate__fadeInDown"
                                data-wow-delay="1.7s" alt="image">
                            <img src="assets/img/ml-banner-image/10.png" class="wow animate__animated animate__fadeInDown"
                                data-wow-delay="1.5s" alt="image">
                            <img src="assets/img/ml-banner-image/11.png" class="wow animate__animated animate__fadeInUp"
                                data-wow-delay="0.4s" alt="image">
                            <img src="assets/img/ml-banner-image/main-pic.png"
                                class="wow animate__animated animate__fadeInUp" data-wow-delay="0.5s" alt="image">
                        @elseif (
                            $data['setting_slider']->slider == 'pic_2' ||
                                ($data['setting_slider']->slider == 'pic_1_2' && $setting_slider_rand % 2 == 0))
                            <div class="main-banner">
                                <div class="d-table">
                                    <div class="d-table-cell">
                                        <div class="container">
                                            <div class="row h-100 justify-content-center align-items-center">
                                                <div class="col-lg-5">
                                                    <div class="hero-content">
                                                        <h1>{!! $data['slider'][$rand]->title !!}</h1>
                                                        <p>{{ $data['slider'][$rand]->des }}</p>
                                                        <a href="{{ $data['slider'][$rand]->link_but }}"
                                                            class="btn btn-secondary">{{ $data['slider'][$rand]->text_but }}</a>
                                                    </div>
                                                </div>

                                                <div class="col-lg-6 offset-lg-1">
                                                    <div class="banner-image">
                                                        <img src="assets/img/banner-image/man.png"
                                                            class="wow animate__animated animate__fadeInDown"
                                                            data-wow-delay="0.6s" alt="man">
                                                        <img src="assets/img/banner-image/code.png"
                                                            class="wow animate__animated animate__fadeInUp"
                                                            data-wow-delay="0.6s" alt="code">
                                                        <img src="assets/img/banner-image/carpet.png"
                                                            class="wow animate__animated animate__fadeInRight"
                                                            data-wow-delay="0.6s" alt="carpet">
                                                        <img src="assets/img/banner-image/bin.png"
                                                            class="wow animate__animated animate__zoomIn"
                                                            data-wow-delay="0.6s" alt="bin">
                                                        <img src="assets/img/banner-image/book.png"
                                                            class="wow animate__animated animate__bounceIn"
                                                            data-wow-delay="0.6s" alt="book">
                                                        <img src="assets/img/banner-image/dekstop.png"
                                                            class="wow animate__animated animate__fadeInDown"
                                                            data-wow-delay="0.6s" alt="dekstop">
                                                        <img src="assets/img/banner-image/dot.png"
                                                            class="wow animate__animated animate__zoomIn"
                                                            data-wow-delay="0.6s" alt="dot">
                                                        <img src="assets/img/banner-image/flower-top-big.png"
                                                            class="wow animate__animated animate__fadeInUp"
                                                            data-wow-delay="0.6s" alt="flower-top-big">
                                                        <img src="assets/img/banner-image/flower-top.png"
                                                            class="wow animate__animated animate__rotateIn"
                                                            data-wow-delay="0.6s" alt="flower-top">
                                                        <img src="assets/img/banner-image/keyboard.png"
                                                            class="wow animate__animated animate__fadeInUp"
                                                            data-wow-delay="0.6s" alt="keyboard">
                                                        <img src="assets/img/banner-image/pen.png"
                                                            class="wow animate__animated animate__zoomIn"
                                                            data-wow-delay="0.6s" alt="pen">
                                                        <img src="assets/img/banner-image/table.png"
                                                            class="wow animate__animated animate__zoomIn"
                                                            data-wow-delay="0.6s" alt="table">
                                                        <img src="assets/img/banner-image/tea-cup.png"
                                                            class="wow animate__animated animate__fadeInRight"
                                                            data-wow-delay="0.6s" alt="tea-cup">
                                                        <img src="assets/img/banner-image/headphone.png"
                                                            class="wow animate__animated animate__rollIn"
                                                            data-wow-delay="0.6s" alt="headphone">
                                                        <img src="assets/img/banner-image/main-pic.png"
                                                            class="wow animate__animated animate__fadeInUp"
                                                            data-wow-delay="0.6s" alt="main-pic">
                                                    </div>
                                                </div>
    @endif
    </div>
    </div>
    </div>
    </div>
    <div class="shape1"><img src="assets/img/shape1.png" alt="shape"></div>
    <div class="shape2 rotateme"><img src="assets/img/shape2.svg" alt="shape"></div>
    <div class="shape3"><img src="assets/img/shape3.svg" alt="shape"></div>
    <div class="shape4"><img src="assets/img/shape4.svg" alt="shape"></div>
    <div class="shape5"><img src="assets/img/shape5.png" alt="shape"></div>
    <div class="shape6 rotateme"><img src="assets/img/shape4.svg" alt="shape"></div>
    <div class="shape7"><img src="assets/img/shape4.svg" alt="shape"></div>
    <div class="shape8 rotateme"><img src="assets/img/shape2.svg" alt="shape"></div>
    </div>

    <!-- End ML Main Banner -->

    <!-- Start Boxes Area -->
    <section class="boxes-area mt-1">
        <div class="container">
            <div class="row">
                @foreach ($data['categories'] as $category)
                    <div class="col-lg-3 col-md-6 col-sm-6">
                        <div class="single-box {{ $category->color }}">
                            <div class="icon">
                                <i data-feather="{{ $category->icon }}"></i>
                            </div>
                            <h3> {{ $category->title }} </h3>
                            <p> {{ $category->caption }} </p>
                        </div>
                    </div>
                @endforeach



            </div>
        </div>
    </section>
    <!-- End Boxes Area -->
    <!-- Start Design & Development Services -->
    <section class="services-area ptb-80">
        <div class="container">
            <div class="row h-100 justify-content-center align-items-center">
                <div class="col-lg-6 col-md-12 services-left-image">
                    <img src="assets/img/services-left-image/big-monitor.png"
                        class="wow animate__animated animate__fadeInDown" data-wow-delay="0.6s" alt="big-monitor">
                    <img src="assets/img/services-left-image/creative.png" class="wow animate__animated animate__fadeInUp"
                        data-wow-delay="0.6s" alt="creative">
                    <img src="assets/img/services-left-image/developer.png"
                        class="wow animate__animated animate__fadeInLeft" data-wow-delay="0.6s" alt="developer">
                    <img src="assets/img/services-left-image/flower-top.png" class="wow animate__animated animate__zoomIn"
                        data-wow-delay="0.6s" alt="flower-top">
                    <img src="assets/img/services-left-image/small-monitor.png"
                        class="wow animate__animated animate__bounceIn" data-wow-delay="0.6s" alt="small-monitor">
                    <img src="assets/img/services-left-image/small-top.png"
                        class="wow animate__animated animate__fadeInDown" data-wow-delay="0.6s" alt="small-top">
                    <img src="assets/img/services-left-image/table.png" class="wow animate__animated animate__zoomIn"
                        data-wow-delay="0.6s" alt="table">
                    <img src="assets/img/services-left-image/target.png" class="wow animate__animated animate__fadeInUp"
                        data-wow-delay="0.6s" alt="target">
                    <img src="assets/img/services-left-image/cercle-shape.png" class="bg-image rotateme" alt="shape">

                    <img src="assets/img/services-left-image/main-pic.png" class="wow animate__animated animate__fadeInUp"
                        data-wow-delay="0.6s" alt="main-pic">
                </div>

                <div class="col-lg-6 col-md-12 services-content">
                    <div class="section-title">
                        <h2>طراحی و توسعه</h2>
                        <div class="bar"></div>
                        <p>لورم ایپسوم به سادگی ساختار چاپ و متن را در بر می گیرد. لورم ایپسوم به مدت 40 سال استاندارد صنعت
                            بوده است.</p>
                    </div>

                    <div class="row">
                        @forelse ($data['services'] as $row)
                            <a class="col-lg-6 col-md-6 col-sm-6" href="{{ route('Service' ,['service' => $row->id]) }}">
                                <div class="box">
                                    <i data-feather="{{ $row->icon }}"></i> {{ $row->title }}
                                </div>
                            </a>
                        @empty
                            <h1>خدمات وارد کنید</h1>
                        @endforelse
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- End Design & Development Services -->



    <!-- Start Features Area -->
    <section class="features-area ptb-80 bg-f7fafd">
        <div class="container">
            <div class="section-title">
                <h2>ویژگی های ما</h2>
                <div class="bar"></div>
                <p>لورم ایپسوم به سادگی ساختار چاپ و متن را در بر می گیرد. لورم ایپسوم به مدت 40 سال استاندارد صنعت بوده
                    است.</p>
            </div>

            <div class="row">
                @foreach ($data['options'] as $row)
                    <div class="col-lg-6 col-md-6 col-sm-6">
                        <div class="single-features">
                            <div class="icon {{ $row->color }}">
                                <i data-feather="{{ $row->icon }}"></i>
                            </div>

                            <h3> {{ $row->title }} </h3>
                            <p> {{ $row->caption }} </p>
                        </div>
                    </div>
                @endforeach
            </div>
        </div>
    </section>
    <!-- End Features Area -->


    <section class="team-area ptb-80 bg-f9f6f6">
        <div class="container">
            <div class="section-title">
                <h2>تیم فنی ما</h2>
                <div class="bar"></div>
                <p>لورم ایپسوم به سادگی ساختار چاپ و متن را در بر می گیرد. لورم ایپسوم به مدت 40 سال استاندارد صنعت بوده
                    است. لورم ایپسوم به سادگی ساختار چاپ و متن را در بر می گیرد.</p>
            </div>
        </div>

        <div class="team-slides owl-carousel owl-theme">

            @forelse ($data['team'] as $row)
                <div class="single-team">
                    <div class="team-image">
                        <img src="{{ $row->img }}" alt="{{ $row->title }}">
                    </div>

                    <div class="team-content">
                        <div class="team-info">
                            <h3>{{ $row->name }}</h3>
                            <span>{{ $row->job }}</span>
                        </div>
                        <ul>

                            @forelse (explode("|",$row->link) as $icon)
                                <li><a href="{{ $icon }}"><i data-feather="{{ icon_team($icon) }}"></i></a></li>
                            @empty
                            @endforelse
                        </ul>

                        <p>{{ $row->text }}</p>
                    </div>
                </div>
            @empty
            @endforelse
        </div>
    </section>




    <section class="funfacts-area ptb-80">
        <div class="container">
            <div class="section-title">
                <h2>ما همیشه سعی می کنیم انتظار کاربران را درک کنیم</h2>
                <div class="bar"></div>
                <p>لورم ایپسوم به سادگی ساختار چاپ و متن را در بر می گیرد. لورم ایپسوم به مدت 40 سال استاندارد صنعت بوده
                    است. لورم ایپسوم به مدت 40 سال استاندارد صنعت بوده است</p>
            </div>

            <div class="row">
                <div class="col-lg-3 col-md-3 col-6 col-sm-3">
                    <div class="funfact">
                        <h3><span style="direction: ltr;" class="odometer"
                                data-count="{{ explode('|', $data['setting_slider']->pram_1)[1] }}">00</span></h3>
                        <p>{{ explode('|', $data['setting_slider']->pram_1)[0] }}</p>
                    </div>
                </div>

                <div class="col-lg-3 col-md-3 col-6 col-sm-3">
                    <div class="funfact">
                        <h3><span style="direction: ltr;" class="odometer"
                                data-count="{{ explode('|', $data['setting_slider']->pram_2)[1] }}">00</span></h3>
                        <p>{{ explode('|', $data['setting_slider']->pram_2)[0] }}</p>
                    </div>
                </div>

                <div class="col-lg-3 col-md-3 col-6 col-sm-3">
                    <div class="funfact">
                        <h3><span style="direction: ltr;" class="odometer"
                                data-count="{{ explode('|', $data['setting_slider']->pram_3)[1] }}">00</span></h3>
                        <p>{{ explode('|', $data['setting_slider']->pram_3)[0] }}</p>
                    </div>
                </div>

                <div class="col-lg-3 col-md-3 col-6 col-sm-3">
                    <div class="funfact">
                        <h3><span style="direction: ltr;" class="odometer"
                                data-count="{{ explode('|', $data['setting_slider']->pram_4)[1] }}">00</span></h3>
                        <p>{{ explode('|', $data['setting_slider']->pram_4)[0] }}</p>
                    </div>
                </div>
            </div>

            <div class="contact-cta-box">
                <h3>سوالی در مورد ما دارید؟</h3>
                <p>شک نکنید با ما تماس بگیرید</p>
                <a href="#" class="btn btn-primary">تماس با ما</a>
            </div>

            <div class="map-bg">
                <img src="assets/img/map.png" alt="map">
            </div>
        </div>
    </section>



    <!-- Start Works Area -->
    <section class="works-area ptb-80 bg-f7fafd">
        <div class="container">
            <div class="section-title">
                <h2>آخرین کارهای ما</h2>
                <div class="bar"></div>
                <p>لورم ایپسوم به سادگی ساختار چاپ و متن را در بر می گیرد. لورم ایپسوم به مدت 40 سال استاندارد صنعت بوده
                    است.</p>
            </div>
        </div>

        <div class="works-slides owl-carousel owl-theme">
            @forelse ($data['projects'] as $row)
                <div class="single-works">
                    <img src="{{ $row->image }}" alt="{{ $row->title }}">

                    <a href="{{ route('Project' ,['project' => $row->id]) }}" class="icon"><i data-feather="settings"></i></a>

                    <div class="works-content">
                        <h3><a href="{{ route('Project' ,['project' => $row->id]) }}"> {{ $row->title }} </a></h3>
                        <p> {{ Str::limit(strip_tags($row->text), 300) }} </p>

                    </div>
                </div>
            @empty
                نمونه کار ندارد
            @endforelse


        </div>

        <div class="shape8 rotateme"><img src="assets/img/shape2.svg" alt="shape"></div>
        <div class="shape2 rotateme"><img src="assets/img/shape2.svg" alt="shape"></div>
        <div class="shape7"><img src="assets/img/shape4.svg" alt="shape"></div>
        <div class="shape4"><img src="assets/img/shape4.svg" alt="shape"></div>
    </section>
    <!-- End Works Area -->




    <section class="ready-to-talk">
        <div class="container">
            <h3>آماده صحبت کردن هستید؟</h3>
            <p>تیم ما برای پاسخگویی به سؤال شما درباره شروع کار اینجاست</p>
            <a href="#" class="btn btn-primary">تماس با ما</a>
            <span><a href="#">یا ، اکنون با یک آزمایش رایگان شروع کنید</a></span>
        </div>
    </section>
    <!-- End Ready To Talk Area -->

    <!-- Start Partner Area -->
    <div class="partner-area partner-section">
        <div class="container">
            <h5>بیش از 1.5 میلیون مشاغل و سازمانها از استارتپی استفاده می کنند</h5>

            <div class="partner-inner">
                <div class="row">
                    @forelse ($data['brands'] as $row)
                    <div class="col-lg-2 col-md-3 col-6 col-sm-4">
                        <a href="{{ $row->link }}">
                            <img src="{{ $row->image }}" style="-webkit-filter: grayscale(121%);"
                                alt="{{ $row->name }}">
                            <img src="{{ $row->image }}" alt="{{ $row->name }}">
                        </a>
                    </div>
                    @empty

                    @endforelse


                </div>
            </div>
        </div>
    </div>
    <!-- End Partner Area -->

    <!-- Start Blog Area -->
    <section class="blog-area ptb-80">
        <div class="container">
            <div class="section-title">
                <h2>اخبار وبلاگ ما</h2>
                <div class="bar"></div>
                <p>لورم ایپسوم به سادگی ساختار چاپ و متن را در بر می گیرد. لورم ایپسوم به مدت 40 سال استاندارد صنعت بوده
                    است.</p>
            </div>

            <div class="row">

                @forelse ($data['blog'] as $row)
                <div class="col-lg-4 col-md-6">
                    <div class="single-blog-post">
                        <div class="blog-image">
                            <a href="{{ route('blogs.list' ,['blog' => $row->id]) }}">
                                <img src="{{ $row->image }}" alt="{{ $row->title }}">
                            </a>
                            <div class="date">
                                <i data-feather="calendar"></i> {{ jdate::strftime('%d %B %Y', $row->updated_at) }}
                            </div>
                        </div>

                        <div class="blog-post-content">
                            <h3><a href="{{ route('blogs.list' ,['blog' => $row->id]) }}">{{ $row->title }}</a></h3>


                            <p> {{ Str::limit(strip_tags($row->text), 300) }} </p>


                            <a href="{{ route('blogs.list' ,['blog' => $row->id]) }}" class="read-more-btn">ادامه خواندن <i data-feather="arrow-left"></i> </a>
                        </div>
                    </div>
                </div>
                @empty

                @endforelse


            </div>
        </div>
    </section>



    <!-- Start Free Trial Area -->
    <section class="free-trial-area">
        <div class="container-fluid">
            <div class="row align-items-center">
                <div class="col-lg-6 col-md-12">
                    <div class="free-trial-image">
                        <img src="assets/img/free-trial-img.png" alt="image">
                    </div>
                </div>

                <div class="col-lg-6 col-md-12">
                    <div class="free-trial-content">
                        <h2>آزمایش رایگان را شروع کنید</h2>

                        <form class="newsletter-form">
                            <input type="email" class="input-newsletter" placeholder="ایمیل خود را اینجا وارد کنید">
                            <button type="submit">ثبت نام رایگان</button>
                        </form>

                        <p>ویژگی های آموزش ماشین را به مدت 14 روز آزمایش کنید ، بدون نیاز به کارت اعتباری.</p>
                    </div>
                </div>
            </div>
        </div>

        <div class="shape2 rotateme"><img src="assets/img/shape2.svg" alt="shape"></div>
        <div class="shape6 rotateme"><img src="assets/img/shape4.svg" alt="shape"></div>
        <div class="shape7"><img src="assets/img/shape4.svg" alt="shape"></div>
        <div class="shape8 rotateme"><img src="assets/img/shape2.svg" alt="shape"></div>
    </section>
    <!-- End Free Trial Area -->





@endsection
