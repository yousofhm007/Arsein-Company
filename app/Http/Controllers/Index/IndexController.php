<?php

namespace App\Http\Controllers\Index;

use App\Http\Controllers\Controller;
use App\Models\Front\Blog;
use App\Models\Front\Brand;
use App\Models\Front\Category;
use App\Models\Front\Option;
use App\Models\Front\Project;
use App\Models\Front\Service;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Cache;
use App\Models\Front\Slider;
use App\Models\Front\Setting;
use App\Models\Front\Team;
use SEO;
use Illuminate\Support\Str;

class IndexController extends Controller
{
    public function Welcome()
    {

        SEO::setTitle('صفحه اصلی');

        $slider = Cache::remember('slide', 1728000, function () {
            return Slider::all();
        });

        $setting_slider = Cache::remember('setting_slider', 1728000, function () {
            return Setting::first();
        });

        $categories = Cache::remember('categories', 1728000, function () {
            return Category::limit('4')->get();
        });


        $services = Cache::remember('services', 1728000, function () {
            return Service::whereStatus('1')->limit('8')->orderByDesc('active')->get(['icon', 'title', 'id']);
        });

        $options = Cache::remember('options', 1728000, function () {
            return Option::whereStatus('1')->limit('6')->orderByDesc('active')->get();
        });

        $team = Cache::remember('team', 1728000, function () {
            return Team::limit(9)->get();
        });


        $projects = Cache::remember('projects', 1728000, function () {
            return Project::whereStatus('1')->limit(9)->orderByDesc('active')->get();
        });

        $brands = Cache::remember('brands', 1728000, function () {
            return Brand::whereStatus('1')->select('name','image','link')->limit(18)->orderByDesc('active')->get();
        });

        $blog = Cache::remember('blogs', 1728000, function () {
            return Blog::whereStatus('1')->select('title','image','id','text','updated_at')->limit(9)->orderByDesc('updated_at')->get();
        });

        $data = [
            'slider' => $slider,
            'setting_slider' => $setting_slider,
            'categories' => $categories,
            'services' => $services,
            'options' => $options,
            'team' => $team,
            'projects' => $projects,
            'brands' => $brands,
            'blog' => $blog,
        ];


        return view('welcome', ['data' => $data]);
    }

    public function Service(Service $service)
    {

        SEO::setTitle(' سرویس: ' . $service->title);
        SEO::setDescription(Str::limit(strip_tags($service->text), 150));

        $services = Cache::remember('services_' . $service->id, 1728000, function () use ($service) {
            return $service;
        });

        return view('services.services_single', ['data' => $services]);
    }



    public function Project(Project $project)
    {


        SEO::setTitle(' پروژه: ' . $project->title);
        SEO::setDescription(Str::limit(strip_tags($project->text), 150));
        if ($project->status == 0) {
            abort(404, 'Page not found');
        }
        $projects = Cache::remember('project_' . $project->id, 1728000, function () use ($project) {
            return $project;
        });
        $setting = Cache::get('setting_slider', function () {
            return Setting::first();
        });


        return view('services.project_single', ['data' => $projects, 'setting' => $setting]);
    }
}
