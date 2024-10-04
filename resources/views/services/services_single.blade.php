@extends('base.base')

@section('body')
    <!-- Start Page Title -->
    <div class="page-title-area">
        <div class="d-table">
            <div class="d-table-cell">
                <div class="container">
                    <h2> {{ $data->title }} </h2>
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

    <!-- Start Services Details Area -->
    <section class="services-details-area ptb-80">
        <div class="container">
            {!! $data->text !!}

            <div class="separate"></div>

            <div class="row align-items-center">
                <div class="col-lg-6 services-details-image">
                    <img src="assets/img/undraw_Faq_re_31cw.png" class="wow animate__animated animate__fadeInUp"
                        alt="image">
                </div>

                <div class="col-lg-6 services-details">
                    <div class="services-details-desc">
                        <p>لورم ایپسوم به سادگی ساختار چاپ و متن را در بر می گیرد. لورم ایپسوم به مدت 40 سال استاندارد صنعت
                            بوده است. لورم ایپسوم به سادگی ساختار چاپ و متن را در بر می گیرد. لورم ایپسوم به مدت 40 سال
                            استاندارد صنعت بوده است. لورم ایپسوم به سادگی ساختار چاپ و متن را در بر می گیرد. لورم ایپسوم به
                            مدت 40 سال استاندارد صنعت بوده است.</p>

                        <div class="services-details-accordion">
                            <ul class="accordion">

                                @php
                                    $answer = explode('|', $data->answer);
                                @endphp

                                @forelse (explode("|",$data->question) as $row)
                                    <li class="accordion-item">
                                        <a class="accordion-title @if ($loop->first) active @endif"
                                            href="javascript:void(0)">
                                            <i class="flaticon-plus"></i>
                                            {{ $row }}
                                        </a>

                                        <p class="accordion-content @if ($loop->first) show @endif">
                                            {{ $answer[$loop->index] }}
                                        </p>
                                    </li>
                                @empty
                                    <li class="accordion-item">
                                        <a class="accordion-title  active " href="javascript:void(0)">
                                            <i class="flaticon-plus"></i>
                                            خالی
                                        </a>

                                        <p class="accordion-content ">
                                            خالی
                                        </p>
                                    </li>
                                @endforelse



                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- End Services Details Area -->

@endsection
