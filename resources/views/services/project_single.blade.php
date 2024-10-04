@extends('base.base')

@section('body')
    <!-- Start Page Title -->
    <div class="page-title-area">
        <div class="d-table">
            <div class="d-table-cell">
                <div class="container">
                    <h2>{{ $data->title }}</h2>
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
    <!-- End Page Title -->

    <!-- Start Project Details Area -->
    <section class="project-details-area ptb-80">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 col-md-12 col-sm-12">
                    <div class="project-details-image">
                        <img src="{{ $data->image }}" alt="{{ $data->title }}">

                    </div>
                </div>


                <div class="col-lg-12 col-md-12">
                    <div class="project-details-desc">
                        <br>
                        {!! $data->text !!}

                        <div class="project-details-information">
                            <div class="single-info-box">
                                <h4>مشتری</h4>
                                <p>{{ $data->customer }}</p>
                            </div>

                            <div class="single-info-box">
                                <h4>دسته بندی</h4>
                                <p>{{ $data->category }}</p>
                            </div>

                            <div class="single-info-box">
                                <h4>تاریخ</h4>
                                <p>{{ $data->date }}</p>
                            </div>

                            <div class="single-info-box">
                                <h4>اشتراک گذاری</h4>
                                <ul>
                                    {{-- @dd()) --}}
                                    @forelse (explode("|",$setting->link_media) as $icon)
                                        @if ($loop->index < 5)
                                            <li><a href="{{ $icon }}"><i
                                                        data-feather="{{ icon_team($icon) }}"></i></a>
                                            </li>
                                        @endif

                                    @empty
                                    @endforelse
                                </ul>
                            </div>

                            <div class="single-info-box">
                                <a href="{{ $data->link_preview }}" class="btn btn-primary">پیشنمایش زنده</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- End Project Details Area -->
@endsection
