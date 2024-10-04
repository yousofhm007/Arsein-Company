@extends('base.base')

@section('body')
    <!-- Start Page Title -->
    <div class="page-title-area">
        <div class="d-table">
            <div class="d-table-cell">
                <div class="container">
                    <h2> وبلاگ ها </h2>
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

    <!-- Start Blog Area -->
    <section class="blog-area ptb-80">
        <div class="container">
            <div class="row">
                <div class="col-lg-8 col-md-12">
                    <div class="row">
                        @forelse ($data['blogs'] as $row)
                            <div class="col-lg-6 col-md-6">
                                <div class="single-blog-post">
                                    <div class="blog-image">
                                        <a href="{{ route('blogs.list', ['blog' => $row->id]) }}">
                                            <img src="{{ $row->image }}" alt="{{ $row->title }}">
                                        </a>
                                        <div class="date">
                                            <i data-feather="calendar"></i>
                                            {{ jdate::strftime('%d %B %Y', $row->updated_at) }}
                                        </div>
                                    </div>

                                    <div class="blog-post-content">
                                        <h3><a
                                                href="{{ route('blogs.list', ['blog' => $row->id]) }}">{{ $row->title }}</a>
                                        </h3>


                                        <p> {{ Str::limit(strip_tags($row->text), 300) }} </p>


                                        <a href="{{ route('blogs.list', ['blog' => $row->id]) }}"
                                            class="read-more-btn">ادامه خواندن <i data-feather="arrow-left"></i> </a>
                                    </div>
                                </div>
                            </div>
                        @empty
                            خالی
                        @endforelse

                        @if ($data['blogs']->lastPage() != 1)
                            <div class="col-lg-12 col-md-12">
                                <div class="pagination-area">
                                    <nav aria-label="Page navigation">
                                        <ul class="pagination justify-content-center">
                                            @if (1 != $data['blogs']->currentPage())
                                                <li class="page-item"><a class="page-link"
                                                        href="{{ route('blogs.list', 's=' . $data['serach'] . '&&category = ' . $data['cat'] . '&&page=' . $data['blogs']->currentPage() - 1) }}">قبلی</a>
                                                </li>
                                            @endif

                                            @for ($i = 1; $i <= $data['blogs']->perPage(); $i++)
                                                <li class="page-item {{ $active = $data['page'] == $i ? 'active' : null }}">
                                                    <a class="page-link"
                                                        href="{{ route('blogs.list', 's=' . $data['serach'] . '&&category = ' . $data['cat'] . '&&page=' . $i) }}">{{ $i }}</a>
                                                </li>
                                            @endfor

                                            @if ($data['blogs']->lastPage() != $data['blogs']->currentPage())
                                                <li class="page-item"><a class="page-link"
                                                        href="{{ route('blogs.list', 's=' . $data['serach'] . '&&category = ' . $data['cat'] . '&&page=' . $data['blogs']->currentPage() + 1) }}">بعدی</a>
                                                </li>
                                            @endif
                                        </ul>
                                    </nav>
                                </div>
                            </div>
                        @endif
                    </div>
                </div>

                <div class="col-lg-4 col-md-12">
                    <aside class="widget-area" id="secondary">
                        <section class="widget widget_search">
                            <form class="search-form" method="GET">
                                <label>
                                    <span class="screen-reader-text">جستجو:</span>
                                    <input type="text" name="s" class="search-field" placeholder="جستجو ...">
                                </label>
                                <button type="submit"><i data-feather="search"></i></button>
                            </form>
                        </section>

                        <section class="widget widget_startp_posts_thumb">
                            <h3 class="widget-title">پست های محبوب</h3>

                            @foreach ($data['viewblogs'] as $row)
                                <article class="item">
                                    <a href="{{ route('blogs.list', ['blog' => $row->id]) }}" class="thumb">
                                        <span class="fullimage cover bg1" role="img"></span>
                                    </a>
                                    <div class="info">
                                        <time
                                            datetime="2019-06-30">{{ jdate::strftime('%d %B %Y', $row->updated_at) }}</time>
                                        <h4 class="title usmall"><a href="#">{{ $row->title }}</a>
                                        </h4>
                                    </div>

                                    <div class="clear"></div>
                                </article>
                            @endforeach


                        </section>

                        <section class="widget widget_categories">
                            <h3 class="widget-title">دسته بندی</h3>

                            <ul>
                                @foreach ($data['category'] as $row)
                                    <li><a @if ($row->category == $data['cat']) style="color:#44ce6f" @endif
                                            href="{{ route('blogs.list', 's=' . $data['serach'] . '&&category=' . $row->category) }}">{{ $row->category }}</a>
                                    </li>
                                @endforeach

                            </ul>
                        </section>

                        @php
                            $tags = '';
                            foreach ($data['tag'] as $row) {
                                $tags .= $row->tag;
                            }
                            $tag = explode('|', $tags);
                            $tag = array_unique($tag);

                        @endphp

                        <section class="widget widget_tag_cloud">
                            <h3 class="widget-title">برچسب ها</h3>

                            <div class="tagcloud">
                                @foreach ($tag as $row)
                                <a href="#">{{ $row }} </a>

                                @endforeach
                            </div>
                        </section>
                    </aside>
                </div>
            </div>
        </div>
    </section>
    <!-- End Blog Area -->
@endsection
