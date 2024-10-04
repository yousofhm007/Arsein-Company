<?php

namespace App\Http\Controllers\Index;

use App\Http\Controllers\Controller;
use App\Models\Front\Blog;
use Illuminate\Support\Facades\Cache;
use Illuminate\Http\Request;
use SEO;


class BlogController extends Controller
{
    public function list(Request $request)
    {
        SEO::setTitle('وبلاگ ها');

        Cache::flush();
        $page = empty($request->page) ? 1 : $request->page;
        $search = empty($request->s) ? null : $request->s;
        $cat2 = empty($request->category) ? null : $request->category;
        $blogs =  Blog::orderByDesc("updated_at")->Like('title','%'.$search.'%')->Like('text','%'.$search.'%')->Like('category',$cat2)->paginate(2, ["*"], "page", $page);


        $viewblogs = Cache::remember('viewblogs', 1728000, function () {
            return Blog::orderByDesc('view')->limit(4)->get();

        });



        $cat = Cache::remember('category', 1728000, function () {
            return Blog::groupBy('category')->get('category');
        });

        $tag = Cache::remember('tags', 259200, function () {
            return Blog::inRandomOrder()->limit(30)->get('tag');
        });


        $data = ['blogs' => $blogs, 'page' => $page, 'viewblogs' => $viewblogs, 'serach' => $search, 'category' => $cat, 'cat' => $request->category
    ,'tag' => $tag];
        return view("blog.list", ['data' => $data]);
    }
}
