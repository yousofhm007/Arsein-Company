-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 04, 2024 at 08:48 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `blog`
--

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

CREATE TABLE `blogs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `text` longtext NOT NULL,
  `category` varchar(255) NOT NULL,
  `tag` varchar(255) NOT NULL,
  `status` enum('0','1') NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `view` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blogs`
--

INSERT INTO `blogs` (`id`, `title`, `image`, `text`, `category`, `tag`, `status`, `created_at`, `updated_at`, `view`) VALUES
(1, 'خطرات امنیتی تغییر صاحبان مشاغل', 'https://preview.envytheme.ir/startp/rtl/assets/img/blog-image/1.jpg', '<div class=\"article-content\">\r\n                             <h3>خطرات امنیتی تغییر صاحبان مشاغل</h3>\r\n\r\n                                <p>لورم ایپسوم به سادگی ساختار چاپ و متن را در بر می گیرد. لورم ایپسوم به مدت 40 سال استاندارد صنعت بوده است. لورم ایپسوم به سادگی ساختار چاپ و متن را در بر می گیرد. لورم ایپسوم به مدت 40 سال استاندارد صنعت بوده است.</p>\r\n\r\n                                <p>لورم ایپسوم به سادگی ساختار چاپ و متن را در بر می گیرد. لورم ایپسوم به مدت 40 سال استاندارد صنعت بوده است. لورم ایپسوم به سادگی ساختار چاپ و متن را در بر می گیرد. لورم ایپسوم به مدت 40 سال استاندارد صنعت بوده است. لورم ایپسوم به سادگی ساختار چاپ و متن را در بر می گیرد. لورم ایپسوم به مدت 40 سال استاندارد صنعت بوده است. لورم ایپسوم به سادگی ساختار چاپ و متن را در بر می گیرد. لورم ایپسوم به مدت 40 سال استاندارد صنعت بوده است.</p>\r\n\r\n                                <blockquote class=\"wp-block-quote\">\r\n                                    <p>لورم ایپسوم به سادگی ساختار چاپ و متن را در بر می گیرد. لورم ایپسوم به مدت 40 سال استاندارد صنعت بوده است.</p>\r\n\r\n                                    <cite>تام کروز</cite>\r\n                                </blockquote>\r\n\r\n                                <p>لورم ایپسوم به سادگی ساختار چاپ و متن را در بر می گیرد. لورم ایپسوم به مدت 40 سال استاندارد صنعت بوده است. لورم ایپسوم به سادگی ساختار چاپ و متن را در بر می گیرد. لورم ایپسوم به مدت 40 سال استاندارد صنعت بوده است.</p>\r\n\r\n                                <ul class=\"wp-block-gallery columns-3\">\r\n                                    <li class=\"blocks-gallery-item\">\r\n                                        <figure>\r\n                                            <img src=\"assets/img/blog-image/8.jpg\" alt=\"image\">\r\n                                        </figure>\r\n                                    </li>\r\n\r\n                                    <li class=\"blocks-gallery-item\">\r\n                                        <figure>\r\n                                            <img src=\"assets/img/blog-image/7.jpg\" alt=\"image\">\r\n                                        </figure>\r\n                                    </li>\r\n\r\n                                    <li class=\"blocks-gallery-item\">\r\n                                        <figure>\r\n                                            <img src=\"assets/img/blog-image/9.jpg\" alt=\"image\">\r\n                                        </figure>\r\n                                    </li>\r\n                                </ul>\r\n\r\n                                <h3>چهار عنصر اصلی که ارائه می دهیم:</h3>\r\n\r\n                                <ul class=\"features-list\">\r\n                                    <li><svg xmlns=\"http://www.w3.org/2000/svg\" width=\"24\" height=\"24\" viewBox=\"0 0 24 24\" fill=\"none\" stroke=\"currentColor\" stroke-width=\"2\" stroke-linecap=\"round\" stroke-linejoin=\"round\" class=\"feather feather-check\"><polyline points=\"20 6 9 17 4 12\"></polyline></svg> مهارت های علمی برای به دست آوردن نتیجه بهتر</li>\r\n                                    <li><svg xmlns=\"http://www.w3.org/2000/svg\" width=\"24\" height=\"24\" viewBox=\"0 0 24 24\" fill=\"none\" stroke=\"currentColor\" stroke-width=\"2\" stroke-linecap=\"round\" stroke-linejoin=\"round\" class=\"feather feather-check\"><polyline points=\"20 6 9 17 4 12\"></polyline></svg> مهارت های ارتباطی مهارت های برقراری ارتباط</li>\r\n                                    <li><svg xmlns=\"http://www.w3.org/2000/svg\" width=\"24\" height=\"24\" viewBox=\"0 0 24 24\" fill=\"none\" stroke=\"currentColor\" stroke-width=\"2\" stroke-linecap=\"round\" stroke-linejoin=\"round\" class=\"feather feather-check\"><polyline points=\"20 6 9 17 4 12\"></polyline></svg> فرصت اجمالی شغلی موجود است</li>\r\n                                    <li><svg xmlns=\"http://www.w3.org/2000/svg\" width=\"24\" height=\"24\" viewBox=\"0 0 24 24\" fill=\"none\" stroke=\"currentColor\" stroke-width=\"2\" stroke-linecap=\"round\" stroke-linejoin=\"round\" class=\"feather feather-check\"><polyline points=\"20 6 9 17 4 12\"></polyline></svg> یک محیط کار خوب برای کار</li>\r\n                                </ul>\r\n\r\n                                <h3>مهارتهای علمی</h3>\r\n                                <p>لورم ایپسوم به سادگی ساختار چاپ و متن را در بر می گیرد. لورم ایپسوم به مدت 40 سال استاندارد صنعت بوده است. لورم ایپسوم به سادگی ساختار چاپ و متن را در بر می گیرد. لورم ایپسوم به مدت 40 سال استاندارد صنعت بوده است. لورم ایپسوم به سادگی ساختار چاپ و متن را در بر می گیرد. لورم ایپسوم به مدت 40 سال استاندارد صنعت بوده است. لورم ایپسوم به سادگی ساختار چاپ و متن را در بر می گیرد. لورم ایپسوم به مدت 40 سال استاندارد صنعت بوده است.</p>\r\n\r\n                                <h3>ظهور اشتغال ورزی و چرا به آن احتیاج دارید</h3>\r\n                                <p>لورم ایپسوم به سادگی ساختار چاپ و متن را در بر می گیرد. لورم ایپسوم به مدت 40 سال استاندارد صنعت بوده است. لورم ایپسوم به سادگی ساختار چاپ و متن را در بر می گیرد. لورم ایپسوم به مدت 40 سال استاندارد صنعت بوده است.</p>\r\n                            </div>', 'علمی', 'هوشمند | تکنولوژی | حریم خصوصی |تجارت', '1', '2024-09-25 14:11:41', '2024-09-09 14:11:41', 1),
(2, 'خطرات امنیتی تغییر صاحبان مشاغل', 'https://preview.envytheme.ir/startp/rtl/assets/img/blog-image/3.jpg', '<div class=\"article-content\">\r\n                             <h3>خطرات امنیتی تغییر صاحبان مشاغل</h3>\r\n\r\n                                <p>لورم ایپسوم به سادگی ساختار چاپ و متن را در بر می گیرد. لورم ایپسوم به مدت 40 سال استاندارد صنعت بوده است. لورم ایپسوم به سادگی ساختار چاپ و متن را در بر می گیرد. لورم ایپسوم به مدت 40 سال استاندارد صنعت بوده است.</p>\r\n\r\n                                <p>لورم ایپسوم به سادگی ساختار چاپ و متن را در بر می گیرد. لورم ایپسوم به مدت 40 سال استاندارد صنعت بوده است. لورم ایپسوم به سادگی ساختار چاپ و متن را در بر می گیرد. لورم ایپسوم به مدت 40 سال استاندارد صنعت بوده است. لورم ایپسوم به سادگی ساختار چاپ و متن را در بر می گیرد. لورم ایپسوم به مدت 40 سال استاندارد صنعت بوده است. لورم ایپسوم به سادگی ساختار چاپ و متن را در بر می گیرد. لورم ایپسوم به مدت 40 سال استاندارد صنعت بوده است.</p>\r\n\r\n                                <blockquote class=\"wp-block-quote\">\r\n                                    <p>لورم ایپسوم به سادگی ساختار چاپ و متن را در بر می گیرد. لورم ایپسوم به مدت 40 سال استاندارد صنعت بوده است.</p>\r\n\r\n                                    <cite>تام کروز</cite>\r\n                                </blockquote>\r\n\r\n                                <p>لورم ایپسوم به سادگی ساختار چاپ و متن را در بر می گیرد. لورم ایپسوم به مدت 40 سال استاندارد صنعت بوده است. لورم ایپسوم به سادگی ساختار چاپ و متن را در بر می گیرد. لورم ایپسوم به مدت 40 سال استاندارد صنعت بوده است.</p>\r\n\r\n                                <ul class=\"wp-block-gallery columns-3\">\r\n                                    <li class=\"blocks-gallery-item\">\r\n                                        <figure>\r\n                                            <img src=\"assets/img/blog-image/8.jpg\" alt=\"image\">\r\n                                        </figure>\r\n                                    </li>\r\n\r\n                                    <li class=\"blocks-gallery-item\">\r\n                                        <figure>\r\n                                            <img src=\"assets/img/blog-image/7.jpg\" alt=\"image\">\r\n                                        </figure>\r\n                                    </li>\r\n\r\n                                    <li class=\"blocks-gallery-item\">\r\n                                        <figure>\r\n                                            <img src=\"assets/img/blog-image/9.jpg\" alt=\"image\">\r\n                                        </figure>\r\n                                    </li>\r\n                                </ul>\r\n\r\n                                <h3>چهار عنصر اصلی که ارائه می دهیم:</h3>\r\n\r\n                                <ul class=\"features-list\">\r\n                                    <li><svg xmlns=\"http://www.w3.org/2000/svg\" width=\"24\" height=\"24\" viewBox=\"0 0 24 24\" fill=\"none\" stroke=\"currentColor\" stroke-width=\"2\" stroke-linecap=\"round\" stroke-linejoin=\"round\" class=\"feather feather-check\"><polyline points=\"20 6 9 17 4 12\"></polyline></svg> مهارت های علمی برای به دست آوردن نتیجه بهتر</li>\r\n                                    <li><svg xmlns=\"http://www.w3.org/2000/svg\" width=\"24\" height=\"24\" viewBox=\"0 0 24 24\" fill=\"none\" stroke=\"currentColor\" stroke-width=\"2\" stroke-linecap=\"round\" stroke-linejoin=\"round\" class=\"feather feather-check\"><polyline points=\"20 6 9 17 4 12\"></polyline></svg> مهارت های ارتباطی مهارت های برقراری ارتباط</li>\r\n                                    <li><svg xmlns=\"http://www.w3.org/2000/svg\" width=\"24\" height=\"24\" viewBox=\"0 0 24 24\" fill=\"none\" stroke=\"currentColor\" stroke-width=\"2\" stroke-linecap=\"round\" stroke-linejoin=\"round\" class=\"feather feather-check\"><polyline points=\"20 6 9 17 4 12\"></polyline></svg> فرصت اجمالی شغلی موجود است</li>\r\n                                    <li><svg xmlns=\"http://www.w3.org/2000/svg\" width=\"24\" height=\"24\" viewBox=\"0 0 24 24\" fill=\"none\" stroke=\"currentColor\" stroke-width=\"2\" stroke-linecap=\"round\" stroke-linejoin=\"round\" class=\"feather feather-check\"><polyline points=\"20 6 9 17 4 12\"></polyline></svg> یک محیط کار خوب برای کار</li>\r\n                                </ul>\r\n\r\n                                <h3>مهارتهای علمی</h3>\r\n                                <p>لورم ایپسوم به سادگی ساختار چاپ و متن را در بر می گیرد. لورم ایپسوم به مدت 40 سال استاندارد صنعت بوده است. لورم ایپسوم به سادگی ساختار چاپ و متن را در بر می گیرد. لورم ایپسوم به مدت 40 سال استاندارد صنعت بوده است. لورم ایپسوم به سادگی ساختار چاپ و متن را در بر می گیرد. لورم ایپسوم به مدت 40 سال استاندارد صنعت بوده است. لورم ایپسوم به سادگی ساختار چاپ و متن را در بر می گیرد. لورم ایپسوم به مدت 40 سال استاندارد صنعت بوده است.</p>\r\n\r\n                                <h3>ظهور اشتغال ورزی و چرا به آن احتیاج دارید</h3>\r\n                                <p>لورم ایپسوم به سادگی ساختار چاپ و متن را در بر می گیرد. لورم ایپسوم به مدت 40 سال استاندارد صنعت بوده است. لورم ایپسوم به سادگی ساختار چاپ و متن را در بر می گیرد. لورم ایپسوم به مدت 40 سال استاندارد صنعت بوده است.</p>\r\n                            </div>', 'تست 1', 'هوشمند | تکنولوژی | حریم خصوصی |تجارت', '1', '2024-09-25 14:11:41', '2024-09-09 14:11:41', 1),
(3, 'خطرات امنیتی تغییر صاحبان مشاغل', 'https://preview.envytheme.ir/startp/rtl/assets/img/blog-image/1.jpg', '<div class=\"article-content\">\r\n                             <h3>خطرات امنیتی تغییر صاحبان مشاغل</h3>\r\n\r\n                                <p>لورم ایپسوم به سادگی ساختار چاپ و متن را در بر می گیرد. لورم ایپسوم به مدت 40 سال استاندارد صنعت بوده است. لورم ایپسوم به سادگی ساختار چاپ و متن را در بر می گیرد. لورم ایپسوم به مدت 40 سال استاندارد صنعت بوده است.</p>\r\n\r\n                                <p>لورم ایپسوم به سادگی ساختار چاپ و متن را در بر می گیرد. لورم ایپسوم به مدت 40 سال استاندارد صنعت بوده است. لورم ایپسوم به سادگی ساختار چاپ و متن را در بر می گیرد. لورم ایپسوم به مدت 40 سال استاندارد صنعت بوده است. لورم ایپسوم به سادگی ساختار چاپ و متن را در بر می گیرد. لورم ایپسوم به مدت 40 سال استاندارد صنعت بوده است. لورم ایپسوم به سادگی ساختار چاپ و متن را در بر می گیرد. لورم ایپسوم به مدت 40 سال استاندارد صنعت بوده است.</p>\r\n\r\n                                <blockquote class=\"wp-block-quote\">\r\n                                    <p>لورم ایپسوم به سادگی ساختار چاپ و متن را در بر می گیرد. لورم ایپسوم به مدت 40 سال استاندارد صنعت بوده است.</p>\r\n\r\n                                    <cite>تام کروز</cite>\r\n                                </blockquote>\r\n\r\n                                <p>لورم ایپسوم به سادگی ساختار چاپ و متن را در بر می گیرد. لورم ایپسوم به مدت 40 سال استاندارد صنعت بوده است. لورم ایپسوم به سادگی ساختار چاپ و متن را در بر می گیرد. لورم ایپسوم به مدت 40 سال استاندارد صنعت بوده است.</p>\r\n\r\n                                <ul class=\"wp-block-gallery columns-3\">\r\n                                    <li class=\"blocks-gallery-item\">\r\n                                        <figure>\r\n                                            <img src=\"assets/img/blog-image/8.jpg\" alt=\"image\">\r\n                                        </figure>\r\n                                    </li>\r\n\r\n                                    <li class=\"blocks-gallery-item\">\r\n                                        <figure>\r\n                                            <img src=\"assets/img/blog-image/7.jpg\" alt=\"image\">\r\n                                        </figure>\r\n                                    </li>\r\n\r\n                                    <li class=\"blocks-gallery-item\">\r\n                                        <figure>\r\n                                            <img src=\"assets/img/blog-image/9.jpg\" alt=\"image\">\r\n                                        </figure>\r\n                                    </li>\r\n                                </ul>\r\n\r\n                                <h3>چهار عنصر اصلی که ارائه می دهیم:</h3>\r\n\r\n                                <ul class=\"features-list\">\r\n                                    <li><svg xmlns=\"http://www.w3.org/2000/svg\" width=\"24\" height=\"24\" viewBox=\"0 0 24 24\" fill=\"none\" stroke=\"currentColor\" stroke-width=\"2\" stroke-linecap=\"round\" stroke-linejoin=\"round\" class=\"feather feather-check\"><polyline points=\"20 6 9 17 4 12\"></polyline></svg> مهارت های علمی برای به دست آوردن نتیجه بهتر</li>\r\n                                    <li><svg xmlns=\"http://www.w3.org/2000/svg\" width=\"24\" height=\"24\" viewBox=\"0 0 24 24\" fill=\"none\" stroke=\"currentColor\" stroke-width=\"2\" stroke-linecap=\"round\" stroke-linejoin=\"round\" class=\"feather feather-check\"><polyline points=\"20 6 9 17 4 12\"></polyline></svg> مهارت های ارتباطی مهارت های برقراری ارتباط</li>\r\n                                    <li><svg xmlns=\"http://www.w3.org/2000/svg\" width=\"24\" height=\"24\" viewBox=\"0 0 24 24\" fill=\"none\" stroke=\"currentColor\" stroke-width=\"2\" stroke-linecap=\"round\" stroke-linejoin=\"round\" class=\"feather feather-check\"><polyline points=\"20 6 9 17 4 12\"></polyline></svg> فرصت اجمالی شغلی موجود است</li>\r\n                                    <li><svg xmlns=\"http://www.w3.org/2000/svg\" width=\"24\" height=\"24\" viewBox=\"0 0 24 24\" fill=\"none\" stroke=\"currentColor\" stroke-width=\"2\" stroke-linecap=\"round\" stroke-linejoin=\"round\" class=\"feather feather-check\"><polyline points=\"20 6 9 17 4 12\"></polyline></svg> یک محیط کار خوب برای کار</li>\r\n                                </ul>\r\n\r\n                                <h3>مهارتهای علمی</h3>\r\n                                <p>لورم ایپسوم به سادگی ساختار چاپ و متن را در بر می گیرد. لورم ایپسوم به مدت 40 سال استاندارد صنعت بوده است. لورم ایپسوم به سادگی ساختار چاپ و متن را در بر می گیرد. لورم ایپسوم به مدت 40 سال استاندارد صنعت بوده است. لورم ایپسوم به سادگی ساختار چاپ و متن را در بر می گیرد. لورم ایپسوم به مدت 40 سال استاندارد صنعت بوده است. لورم ایپسوم به سادگی ساختار چاپ و متن را در بر می گیرد. لورم ایپسوم به مدت 40 سال استاندارد صنعت بوده است.</p>\r\n\r\n                                <h3>ظهور اشتغال ورزی و چرا به آن احتیاج دارید</h3>\r\n                                <p>لورم ایپسوم به سادگی ساختار چاپ و متن را در بر می گیرد. لورم ایپسوم به مدت 40 سال استاندارد صنعت بوده است. لورم ایپسوم به سادگی ساختار چاپ و متن را در بر می گیرد. لورم ایپسوم به مدت 40 سال استاندارد صنعت بوده است.</p>\r\n                            </div>', 'تست 1', 'هوشمند | تکنولوژی | حریم خصوصی |تجارت', '1', '2024-09-25 14:11:41', '2024-09-09 14:11:41', 1);

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `image` text NOT NULL,
  `description` text NOT NULL,
  `link` text NOT NULL,
  `status` enum('0','1') NOT NULL,
  `active` enum('0','1') NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `name`, `image`, `description`, `link`, `status`, `active`, `created_at`, `updated_at`) VALUES
(1, 'شرکت 1', 'https://preview.envytheme.ir/startp/rtl/assets/img/partner-img/partner-hover1.png', 'سلام', '#', '1', '1', NULL, NULL),
(2, 'شرکت 2', 'https://preview.envytheme.ir/startp/rtl/assets/img/partner-img/partner-hover2.png', 'توضیحات ', '#', '1', '1', NULL, NULL),
(3, 'شرکت 1', 'https://preview.envytheme.ir/startp/rtl/assets/img/partner-img/partner-hover1.png', 'سلام', '#', '1', '1', NULL, NULL),
(4, 'شرکت 2', 'https://preview.envytheme.ir/startp/rtl/assets/img/partner-img/partner-hover2.png', 'توضیحات ', '#', '1', '1', NULL, NULL),
(5, 'شرکت 1', 'https://preview.envytheme.ir/startp/rtl/assets/img/partner-img/partner-hover1.png', 'سلام', '#', '1', '1', NULL, NULL),
(6, 'شرکت 2', 'https://preview.envytheme.ir/startp/rtl/assets/img/partner-img/partner-hover2.png', 'توضیحات ', '#', '1', '1', NULL, NULL),
(7, 'شرکت 1', 'https://preview.envytheme.ir/startp/rtl/assets/img/partner-img/partner-hover1.png', 'سلام', '#', '1', '1', NULL, NULL),
(8, 'شرکت 2', 'https://preview.envytheme.ir/startp/rtl/assets/img/partner-img/partner-hover2.png', 'توضیحات ', '#', '1', '1', NULL, NULL),
(9, 'شرکت 1', 'https://preview.envytheme.ir/startp/rtl/assets/img/partner-img/partner-hover1.png', 'سلام', '#', '1', '1', NULL, NULL),
(10, 'شرکت 2', 'https://preview.envytheme.ir/startp/rtl/assets/img/partner-img/partner-hover2.png', 'توضیحات ', '#', '1', '1', NULL, NULL),
(11, 'شرکت 1', 'https://preview.envytheme.ir/startp/rtl/assets/img/partner-img/partner-hover1.png', 'سلام', '#', '1', '1', NULL, NULL),
(12, 'شرکت 2', 'https://preview.envytheme.ir/startp/rtl/assets/img/partner-img/partner-hover2.png', 'توضیحات ', '#', '1', '1', NULL, NULL),
(13, 'شرکت 1', 'https://preview.envytheme.ir/startp/rtl/assets/img/partner-img/partner-hover1.png', 'سلام', '#', '1', '1', NULL, NULL),
(14, 'شرکت 2', 'https://preview.envytheme.ir/startp/rtl/assets/img/partner-img/partner-hover2.png', 'توضیحات ', '#', '1', '1', NULL, NULL),
(15, 'شرکت 1', 'https://preview.envytheme.ir/startp/rtl/assets/img/partner-img/partner-hover1.png', 'سلام', '#', '1', '1', NULL, NULL),
(16, 'شرکت 2', 'https://preview.envytheme.ir/startp/rtl/assets/img/partner-img/partner-hover2.png', 'توضیحات ', '#', '1', '1', NULL, NULL),
(17, 'شرکت 1', 'https://preview.envytheme.ir/startp/rtl/assets/img/partner-img/partner-hover1.png', 'سلام', '#', '1', '1', NULL, NULL),
(18, 'شرکت 2', 'https://preview.envytheme.ir/startp/rtl/assets/img/partner-img/partner-hover2.png', 'توضیحات ', '#', '1', '1', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `icon` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `caption` text NOT NULL,
  `color` varchar(20) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `icon`, `title`, `caption`, `color`, `created_at`, `updated_at`) VALUES
(1, 'server', 'پیکربندی\r\n', 'لورم ایپسوم به سادگی ساختار چاپ و متن را در بر می گیرد. لورم ایپسوم به مدت 40 سال استاندارد صنعت بوده است.\r\n\r\n', '', NULL, NULL),
(2, 'code', 'کد امنیتی\r\n', 'لورم ایپسوم به سادگی ساختار چاپ و متن را در بر می گیرد. لورم ایپسوم به مدت 40 سال استاندارد صنعت بوده است.\r\n\r\n', 'bg-c679e3', NULL, NULL),
(3, 'trash', 'مدیریت تیم', 'لورم ایپسوم به سادگی ساختار چاپ و متن را در بر می گیرد. لورم ایپسوم به مدت 40 سال استاندارد صنعت بوده است.\r\n\r\n', 'bg-eb6b3d', NULL, NULL),
(4, 'send', 'دسترسی کنترل شده\r\n', 'لورم ایپسوم به سادگی ساختار چاپ و متن را در بر می گیرد. لورم ایپسوم به مدت 40 سال استاندارد صنعت بوده است.\r\n\r\n', 'bg-f78acb', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `companies`
--

CREATE TABLE `companies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2024_08_24_120708_create_sliders_table', 1),
(6, '2024_08_24_123529_create_settings_table', 2),
(7, '2024_08_24_132855_create_companies_table', 3),
(8, '2024_08_24_133931_create_categories_table', 3),
(9, '2024_08_25_114711_create_services_table', 4),
(10, '2024_08_25_125514_create_options_table', 5),
(11, '2024_09_01_123014_create_teams_table', 6),
(12, '2024_09_01_140141_create_projects_table', 7),
(13, '2024_09_08_162620_create_brands_table', 8),
(14, '2024_09_09_135643_create_blogs_table', 9);

-- --------------------------------------------------------

--
-- Table structure for table `options`
--

CREATE TABLE `options` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `color` varchar(255) NOT NULL,
  `icon` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `caption` varchar(255) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `active` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `options`
--

INSERT INTO `options` (`id`, `color`, `icon`, `title`, `caption`, `status`, `active`, `created_at`, `updated_at`) VALUES
(1, 'bg-f7fafd', 'trash', 'سرویس', 'لورم ایپسوم به سادگی ساختار چاپ و متن را در بر می گیرد. لورم ایپسوم به مدت 40 سال استاندارد صنعت بوده است.', 1, 1, NULL, NULL),
(2, 'bg-c679e3', 'send', 'اعلان های ایمیل', 'لورم ایپسوم به سادگی ساختار چاپ و متن را در بر می گیرد. لورم ایپسوم به مدت 40 سال استاندارد صنعت بوده است.', 1, 0, NULL, NULL),
(3, 'bg-eb6b3d', 'settings', 'داشبورد ساده', 'لورم ایپسوم به سادگی ساختار چاپ و متن را در بر می گیرد. لورم ایپسوم به مدت 40 سال استاندارد صنعت بوده است.', 1, 1, NULL, NULL),
(4, 'bg-eb6b3d', 'mail', 'بازیابی اطلاعات', 'لورم ایپسوم به سادگی ساختار چاپ و متن را در بر می گیرد. لورم ایپسوم به مدت 40 سال استاندارد صنعت بوده است.', 1, 0, NULL, NULL),
(5, 'bg-eb6b3d', 'mail', 'عملکردها', 'لورم ایپسوم به سادگی ساختار چاپ و متن را در بر می گیرد. لورم ایپسوم به مدت 40 سال استاندارد صنعت بوده است.', 1, 1, NULL, NULL),
(6, 'bg-eb6b3d', 'settings', 'یادآوری مهلت', 'لورم ایپسوم به سادگی ساختار چاپ و متن را در بر می گیرد. لورم ایپسوم به مدت 40 سال استاندارد صنعت بوده است.', 1, 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `projects`
--

CREATE TABLE `projects` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `text` longtext NOT NULL,
  `image` text NOT NULL,
  `customer` varchar(255) NOT NULL,
  `category` varchar(255) NOT NULL,
  `date` varchar(255) NOT NULL,
  `link_preview` varchar(255) NOT NULL,
  `status` enum('0','1') NOT NULL,
  `active` enum('0','1') NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `projects`
--

INSERT INTO `projects` (`id`, `title`, `text`, `image`, `customer`, `category`, `date`, `link_preview`, `status`, `active`, `created_at`, `updated_at`) VALUES
(1, 'بازاریابی شبکه ای', '<div class=\"row align-items-center\">\r\n					<div class=\"col-lg-6 services-details\">\r\n						<div class=\"services-details-desc\">\r\n							<h3>زیرساخت باور نکردنی</h3>\r\n							<p>لورم ایپسوم به سادگی ساختار چاپ و متن را در بر می گیرد. لورم ایپسوم به مدت 40 سال استاندارد صنعت بوده است.</p>\r\n\r\n							<p>لورم ایپسوم به سادگی ساختار چاپ و متن را در بر می گیرد. لورم ایپسوم به مدت 40 سال استاندارد صنعت بوده است. لورم ایپسوم به سادگی ساختار چاپ و متن را در بر می گیرد. لورم ایپسوم به مدت 40 سال استاندارد صنعت بوده است. لورم ایپسوم به سادگی ساختار چاپ و متن را در بر می گیرد. لورم ایپسوم به مدت 40 سال استاندارد صنعت بوده است.</p>\r\n						</div>\r\n					</div>\r\n\r\n					<div class=\"col-lg-6 services-details-image\">\r\n						<img src=\"assets/img/services-details-image/1.png\" class=\"wow animate__ animate__fadeInUp animated\" alt=\"image\" style=\"visibility: visible; animation-name: fadeInUp;\">\r\n					</div>\r\n				</div>', 'https://preview.envytheme.ir/startp/rtl/assets/img/works-image/2.jpg', 'جان تری', 'نمونه کار ، شخصی', '28 دی 1398', 'https://rtlr.ir/108580', '1', '0', NULL, NULL),
(2, 'بازاریابی شبکه ای', '<div class=\"row align-items-center\">\r\n					<div class=\"col-lg-6 services-details\">\r\n						<div class=\"services-details-desc\">\r\n							<h3>زیرساخت باور نکردنی</h3>\r\n							<p>لورم ایپسوم به سادگی ساختار چاپ و متن را در بر می گیرد. لورم ایپسوم به مدت 40 سال استاندارد صنعت بوده است.</p>\r\n\r\n							<p>لورم ایپسوم به سادگی ساختار چاپ و متن را در بر می گیرد. لورم ایپسوم به مدت 40 سال استاندارد صنعت بوده است. لورم ایپسوم به سادگی ساختار چاپ و متن را در بر می گیرد. لورم ایپسوم به مدت 40 سال استاندارد صنعت بوده است. لورم ایپسوم به سادگی ساختار چاپ و متن را در بر می گیرد. لورم ایپسوم به مدت 40 سال استاندارد صنعت بوده است.</p>\r\n						</div>\r\n					</div>\r\n\r\n					<div class=\"col-lg-6 services-details-image\">\r\n						<img src=\"assets/img/services-details-image/1.png\" class=\"wow animate__ animate__fadeInUp animated\" alt=\"image\" style=\"visibility: visible; animation-name: fadeInUp;\">\r\n					</div>\r\n				</div>', 'https://preview.envytheme.ir/startp/rtl/assets/img/works-image/3.jpg', 'جان تری', 'نمونه کار ، شخصی', '28 دی 1398', 'https://rtlr.ir/108580', '1', '0', NULL, NULL),
(3, 'بازاریابی شبکه ای', '<div class=\"row align-items-center\">\r\n					<div class=\"col-lg-6 services-details\">\r\n						<div class=\"services-details-desc\">\r\n							<h3>زیرساخت باور نکردنی</h3>\r\n							<p>لورم ایپسوم به سادگی ساختار چاپ و متن را در بر می گیرد. لورم ایپسوم به مدت 40 سال استاندارد صنعت بوده است.</p>\r\n\r\n							<p>لورم ایپسوم به سادگی ساختار چاپ و متن را در بر می گیرد. لورم ایپسوم به مدت 40 سال استاندارد صنعت بوده است. لورم ایپسوم به سادگی ساختار چاپ و متن را در بر می گیرد. لورم ایپسوم به مدت 40 سال استاندارد صنعت بوده است. لورم ایپسوم به سادگی ساختار چاپ و متن را در بر می گیرد. لورم ایپسوم به مدت 40 سال استاندارد صنعت بوده است.</p>\r\n						</div>\r\n					</div>\r\n\r\n					<div class=\"col-lg-6 services-details-image\">\r\n						<img src=\"assets/img/services-details-image/1.png\" class=\"wow animate__ animate__fadeInUp animated\" alt=\"image\" style=\"visibility: visible; animation-name: fadeInUp;\">\r\n					</div>\r\n				</div>', 'https://preview.envytheme.ir/startp/rtl/assets/img/works-image/4.jpg', 'جان تری', 'نمونه کار ، شخصی', '28 دی 1398', 'https://rtlr.ir/108580', '1', '0', NULL, NULL),
(4, 'بازاریابی شبکه ای', '<div class=\"row align-items-center\">\r\n					<div class=\"col-lg-6 services-details\">\r\n						<div class=\"services-details-desc\">\r\n							<h3>زیرساخت باور نکردنی</h3>\r\n							<p>لورم ایپسوم به سادگی ساختار چاپ و متن را در بر می گیرد. لورم ایپسوم به مدت 40 سال استاندارد صنعت بوده است.</p>\r\n\r\n							<p>لورم ایپسوم به سادگی ساختار چاپ و متن را در بر می گیرد. لورم ایپسوم به مدت 40 سال استاندارد صنعت بوده است. لورم ایپسوم به سادگی ساختار چاپ و متن را در بر می گیرد. لورم ایپسوم به مدت 40 سال استاندارد صنعت بوده است. لورم ایپسوم به سادگی ساختار چاپ و متن را در بر می گیرد. لورم ایپسوم به مدت 40 سال استاندارد صنعت بوده است.</p>\r\n						</div>\r\n					</div>\r\n\r\n					<div class=\"col-lg-6 services-details-image\">\r\n						<img src=\"assets/img/services-details-image/1.png\" class=\"wow animate__ animate__fadeInUp animated\" alt=\"image\" style=\"visibility: visible; animation-name: fadeInUp;\">\r\n					</div>\r\n				</div>', 'https://preview.envytheme.ir/startp/rtl/assets/img/works-image/1.jpg', 'جان تری', 'نمونه کار ، شخصی', '28 دی 1398', 'https://rtlr.ir/108580', '1', '0', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `icon` varchar(255) NOT NULL,
  `text` longtext NOT NULL,
  `question` text NOT NULL,
  `answer` text NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `active` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`id`, `title`, `icon`, `text`, `question`, `answer`, `status`, `active`, `created_at`, `updated_at`) VALUES
(1, ' طراحی تعاملی', 'trash', '<div class=\"row align-items-center\">\n					<div class=\"col-lg-6 services-details\">\n						<div class=\"services-details-desc\">\n							<h3>زیرساخت باور نکردنی</h3>\n							<p>لورم ایپسوم به سادگی ساختار چاپ و متن را در بر می گیرد. لورم ایپسوم به مدت 40 سال استاندارد صنعت بوده است.</p>\n\n							<p>لورم ایپسوم به سادگی ساختار چاپ و متن را در بر می گیرد. لورم ایپسوم به مدت 40 سال استاندارد صنعت بوده است. لورم ایپسوم به سادگی ساختار چاپ و متن را در بر می گیرد. لورم ایپسوم به مدت 40 سال استاندارد صنعت بوده است. لورم ایپسوم به سادگی ساختار چاپ و متن را در بر می گیرد. لورم ایپسوم به مدت 40 سال استاندارد صنعت بوده است.</p>\n						</div>\n					</div>\n\n					<div class=\"col-lg-6 services-details-image\">\n						<img src=\"assets/img/services-details-image/1.png\" class=\"wow animate__ animate__fadeInUp animated\" alt=\"image\" style=\"visibility: visible; animation-name: fadeInUp;\">\n					</div>\n				</div>', 'سوالات متداول 2؟ | سوالات متداول 1؟', 'لورم ایپسوم به سادگی ساختار چاپ و متن را در بر می گیرد. لورم ایپسوم به مدت 40 سال استاندارد صنعت بوده است. لورم ایپسوم به سادگی ساختار چاپ و متن را در بر می گیرد. لورم ایپسوم به مدت 40 سال استاندارد صنعت بوده است. |\r\nلورم ایپسوم به سادگی ساختار چاپ و متن را در بر می گیرد. لورم ایپسوم به مدت 40 سال استاندارد صنعت بوده است. لورم ایپسوم به سادگی ساختار چاپ و متن را در بر می گیرد. لورم ایپسوم به مدت 40 سال استاندارد صنعت بوده است. \r\n', 1, 0, NULL, NULL),
(2, ' توسعه وب ', 'send', '<div class=\"row align-items-center\">\r\n					<div class=\"col-lg-6 services-details\">\r\n						<div class=\"services-details-desc\">\r\n							<h3>زیرساخت باور نکردنی</h3>\r\n							<p>لورم ایپسوم به سادگی ساختار چاپ و متن را در بر می گیرد. لورم ایپسوم به مدت 40 سال استاندارد صنعت بوده است.</p>\r\n\r\n							<p>لورم ایپسوم به سادگی ساختار چاپ و متن را در بر می گیرد. لورم ایپسوم به مدت 40 سال استاندارد صنعت بوده است. لورم ایپسوم به سادگی ساختار چاپ و متن را در بر می گیرد. لورم ایپسوم به مدت 40 سال استاندارد صنعت بوده است. لورم ایپسوم به سادگی ساختار چاپ و متن را در بر می گیرد. لورم ایپسوم به مدت 40 سال استاندارد صنعت بوده است.</p>\r\n						</div>\r\n					</div>\r\n\r\n					<div class=\"col-lg-6 services-details-image\">\r\n						<img src=\"assets/img/services-details-image/1.png\" class=\"wow animate__ animate__fadeInUp animated\" alt=\"image\" style=\"visibility: visible; animation-name: fadeInUp;\">\r\n					</div>\r\n				</div>', 'سوالات متداول 2؟ | سوالات متداول 1؟', 'لورم ایپسوم به سادگی ساختار چاپ و متن را در بر می گیرد. لورم ایپسوم به مدت 40 سال استاندارد صنعت بوده است. لورم ایپسوم به سادگی ساختار چاپ و متن را در بر می گیرد. لورم ایپسوم به مدت 40 سال استاندارد صنعت بوده است. |\r\nلورم ایپسوم به سادگی ساختار چاپ و متن را در بر می گیرد. لورم ایپسوم به مدت 40 سال استاندارد صنعت بوده است. لورم ایپسوم به سادگی ساختار چاپ و متن را در بر می گیرد. لورم ایپسوم به مدت 40 سال استاندارد صنعت بوده است. \r\n', 1, 1, NULL, NULL),
(3, ' طراحی تعاملی', 'trash', '<div class=\"row align-items-center\">\r\n					<div class=\"col-lg-6 services-details\">\r\n						<div class=\"services-details-desc\">\r\n							<h3>زیرساخت باور نکردنی</h3>\r\n							<p>لورم ایپسوم به سادگی ساختار چاپ و متن را در بر می گیرد. لورم ایپسوم به مدت 40 سال استاندارد صنعت بوده است.</p>\r\n\r\n							<p>لورم ایپسوم به سادگی ساختار چاپ و متن را در بر می گیرد. لورم ایپسوم به مدت 40 سال استاندارد صنعت بوده است. لورم ایپسوم به سادگی ساختار چاپ و متن را در بر می گیرد. لورم ایپسوم به مدت 40 سال استاندارد صنعت بوده است. لورم ایپسوم به سادگی ساختار چاپ و متن را در بر می گیرد. لورم ایپسوم به مدت 40 سال استاندارد صنعت بوده است.</p>\r\n						</div>\r\n					</div>\r\n\r\n					<div class=\"col-lg-6 services-details-image\">\r\n						<img src=\"assets/img/services-details-image/1.png\" class=\"wow animate__ animate__fadeInUp animated\" alt=\"image\" style=\"visibility: visible; animation-name: fadeInUp;\">\r\n					</div>\r\n				</div>', 'سوالات متداول 2؟ | سوالات متداول 1؟', 'لورم ایپسوم به سادگی ساختار چاپ و متن را در بر می گیرد. لورم ایپسوم به مدت 40 سال استاندارد صنعت بوده است. لورم ایپسوم به سادگی ساختار چاپ و متن را در بر می گیرد. لورم ایپسوم به مدت 40 سال استاندارد صنعت بوده است. |\r\nلورم ایپسوم به سادگی ساختار چاپ و متن را در بر می گیرد. لورم ایپسوم به مدت 40 سال استاندارد صنعت بوده است. لورم ایپسوم به سادگی ساختار چاپ و متن را در بر می گیرد. لورم ایپسوم به مدت 40 سال استاندارد صنعت بوده است. \r\n', 1, 1, NULL, NULL),
(4, ' توسعه وب ', 'send', '<div class=\"row align-items-center\">\r\n					<div class=\"col-lg-6 services-details\">\r\n						<div class=\"services-details-desc\">\r\n							<h3>زیرساخت باور نکردنی</h3>\r\n							<p>لورم ایپسوم به سادگی ساختار چاپ و متن را در بر می گیرد. لورم ایپسوم به مدت 40 سال استاندارد صنعت بوده است.</p>\r\n\r\n							<p>لورم ایپسوم به سادگی ساختار چاپ و متن را در بر می گیرد. لورم ایپسوم به مدت 40 سال استاندارد صنعت بوده است. لورم ایپسوم به سادگی ساختار چاپ و متن را در بر می گیرد. لورم ایپسوم به مدت 40 سال استاندارد صنعت بوده است. لورم ایپسوم به سادگی ساختار چاپ و متن را در بر می گیرد. لورم ایپسوم به مدت 40 سال استاندارد صنعت بوده است.</p>\r\n						</div>\r\n					</div>\r\n\r\n					<div class=\"col-lg-6 services-details-image\">\r\n						<img src=\"assets/img/services-details-image/1.png\" class=\"wow animate__ animate__fadeInUp animated\" alt=\"image\" style=\"visibility: visible; animation-name: fadeInUp;\">\r\n					</div>\r\n				</div>', 'سوالات متداول 2؟ | سوالات متداول 1؟', 'لورم ایپسوم به سادگی ساختار چاپ و متن را در بر می گیرد. لورم ایپسوم به مدت 40 سال استاندارد صنعت بوده است. لورم ایپسوم به سادگی ساختار چاپ و متن را در بر می گیرد. لورم ایپسوم به مدت 40 سال استاندارد صنعت بوده است. |\r\nلورم ایپسوم به سادگی ساختار چاپ و متن را در بر می گیرد. لورم ایپسوم به مدت 40 سال استاندارد صنعت بوده است. لورم ایپسوم به سادگی ساختار چاپ و متن را در بر می گیرد. لورم ایپسوم به مدت 40 سال استاندارد صنعت بوده است. \r\n', 1, 0, NULL, NULL),
(5, ' طراحی تعاملی', 'trash', '<div class=\"row align-items-center\">\r\n					<div class=\"col-lg-6 services-details\">\r\n						<div class=\"services-details-desc\">\r\n							<h3>زیرساخت باور نکردنی</h3>\r\n							<p>لورم ایپسوم به سادگی ساختار چاپ و متن را در بر می گیرد. لورم ایپسوم به مدت 40 سال استاندارد صنعت بوده است.</p>\r\n\r\n							<p>لورم ایپسوم به سادگی ساختار چاپ و متن را در بر می گیرد. لورم ایپسوم به مدت 40 سال استاندارد صنعت بوده است. لورم ایپسوم به سادگی ساختار چاپ و متن را در بر می گیرد. لورم ایپسوم به مدت 40 سال استاندارد صنعت بوده است. لورم ایپسوم به سادگی ساختار چاپ و متن را در بر می گیرد. لورم ایپسوم به مدت 40 سال استاندارد صنعت بوده است.</p>\r\n						</div>\r\n					</div>\r\n\r\n					<div class=\"col-lg-6 services-details-image\">\r\n						<img src=\"assets/img/services-details-image/1.png\" class=\"wow animate__ animate__fadeInUp animated\" alt=\"image\" style=\"visibility: visible; animation-name: fadeInUp;\">\r\n					</div>\r\n				</div>', 'سوالات متداول 2؟ | سوالات متداول 1؟', 'لورم ایپسوم به سادگی ساختار چاپ و متن را در بر می گیرد. لورم ایپسوم به مدت 40 سال استاندارد صنعت بوده است. لورم ایپسوم به سادگی ساختار چاپ و متن را در بر می گیرد. لورم ایپسوم به مدت 40 سال استاندارد صنعت بوده است. |\r\nلورم ایپسوم به سادگی ساختار چاپ و متن را در بر می گیرد. لورم ایپسوم به مدت 40 سال استاندارد صنعت بوده است. لورم ایپسوم به سادگی ساختار چاپ و متن را در بر می گیرد. لورم ایپسوم به مدت 40 سال استاندارد صنعت بوده است. \r\n', 1, 1, NULL, NULL),
(6, ' توسعه وب ', 'send', '<div class=\"row align-items-center\">\r\n					<div class=\"col-lg-6 services-details\">\r\n						<div class=\"services-details-desc\">\r\n							<h3>زیرساخت باور نکردنی</h3>\r\n							<p>لورم ایپسوم به سادگی ساختار چاپ و متن را در بر می گیرد. لورم ایپسوم به مدت 40 سال استاندارد صنعت بوده است.</p>\r\n\r\n							<p>لورم ایپسوم به سادگی ساختار چاپ و متن را در بر می گیرد. لورم ایپسوم به مدت 40 سال استاندارد صنعت بوده است. لورم ایپسوم به سادگی ساختار چاپ و متن را در بر می گیرد. لورم ایپسوم به مدت 40 سال استاندارد صنعت بوده است. لورم ایپسوم به سادگی ساختار چاپ و متن را در بر می گیرد. لورم ایپسوم به مدت 40 سال استاندارد صنعت بوده است.</p>\r\n						</div>\r\n					</div>\r\n\r\n					<div class=\"col-lg-6 services-details-image\">\r\n						<img src=\"assets/img/services-details-image/1.png\" class=\"wow animate__ animate__fadeInUp animated\" alt=\"image\" style=\"visibility: visible; animation-name: fadeInUp;\">\r\n					</div>\r\n				</div>', 'سوالات متداول 2؟ | سوالات متداول 1؟', 'لورم ایپسوم به سادگی ساختار چاپ و متن را در بر می گیرد. لورم ایپسوم به مدت 40 سال استاندارد صنعت بوده است. لورم ایپسوم به سادگی ساختار چاپ و متن را در بر می گیرد. لورم ایپسوم به مدت 40 سال استاندارد صنعت بوده است. |\r\nلورم ایپسوم به سادگی ساختار چاپ و متن را در بر می گیرد. لورم ایپسوم به مدت 40 سال استاندارد صنعت بوده است. لورم ایپسوم به سادگی ساختار چاپ و متن را در بر می گیرد. لورم ایپسوم به مدت 40 سال استاندارد صنعت بوده است. \r\n', 1, 0, NULL, NULL),
(7, ' طراحی تعاملی', 'trash', '<div class=\"row align-items-center\">\r\n					<div class=\"col-lg-6 services-details\">\r\n						<div class=\"services-details-desc\">\r\n							<h3>زیرساخت باور نکردنی</h3>\r\n							<p>لورم ایپسوم به سادگی ساختار چاپ و متن را در بر می گیرد. لورم ایپسوم به مدت 40 سال استاندارد صنعت بوده است.</p>\r\n\r\n							<p>لورم ایپسوم به سادگی ساختار چاپ و متن را در بر می گیرد. لورم ایپسوم به مدت 40 سال استاندارد صنعت بوده است. لورم ایپسوم به سادگی ساختار چاپ و متن را در بر می گیرد. لورم ایپسوم به مدت 40 سال استاندارد صنعت بوده است. لورم ایپسوم به سادگی ساختار چاپ و متن را در بر می گیرد. لورم ایپسوم به مدت 40 سال استاندارد صنعت بوده است.</p>\r\n						</div>\r\n					</div>\r\n\r\n					<div class=\"col-lg-6 services-details-image\">\r\n						<img src=\"assets/img/services-details-image/1.png\" class=\"wow animate__ animate__fadeInUp animated\" alt=\"image\" style=\"visibility: visible; animation-name: fadeInUp;\">\r\n					</div>\r\n				</div>', 'سوالات متداول 2؟ | سوالات متداول 1؟', 'لورم ایپسوم به سادگی ساختار چاپ و متن را در بر می گیرد. لورم ایپسوم به مدت 40 سال استاندارد صنعت بوده است. لورم ایپسوم به سادگی ساختار چاپ و متن را در بر می گیرد. لورم ایپسوم به مدت 40 سال استاندارد صنعت بوده است. |\r\nلورم ایپسوم به سادگی ساختار چاپ و متن را در بر می گیرد. لورم ایپسوم به مدت 40 سال استاندارد صنعت بوده است. لورم ایپسوم به سادگی ساختار چاپ و متن را در بر می گیرد. لورم ایپسوم به مدت 40 سال استاندارد صنعت بوده است. \r\n', 1, 0, NULL, NULL),
(8, ' توسعه وب ', 'send', '<div class=\"row align-items-center\">\r\n					<div class=\"col-lg-6 services-details\">\r\n						<div class=\"services-details-desc\">\r\n							<h3>زیرساخت باور نکردنی</h3>\r\n							<p>لورم ایپسوم به سادگی ساختار چاپ و متن را در بر می گیرد. لورم ایپسوم به مدت 40 سال استاندارد صنعت بوده است.</p>\r\n\r\n							<p>لورم ایپسوم به سادگی ساختار چاپ و متن را در بر می گیرد. لورم ایپسوم به مدت 40 سال استاندارد صنعت بوده است. لورم ایپسوم به سادگی ساختار چاپ و متن را در بر می گیرد. لورم ایپسوم به مدت 40 سال استاندارد صنعت بوده است. لورم ایپسوم به سادگی ساختار چاپ و متن را در بر می گیرد. لورم ایپسوم به مدت 40 سال استاندارد صنعت بوده است.</p>\r\n						</div>\r\n					</div>\r\n\r\n					<div class=\"col-lg-6 services-details-image\">\r\n						<img src=\"assets/img/services-details-image/1.png\" class=\"wow animate__ animate__fadeInUp animated\" alt=\"image\" style=\"visibility: visible; animation-name: fadeInUp;\">\r\n					</div>\r\n				</div>', 'سوالات متداول 2؟ | سوالات متداول 1؟', 'لورم ایپسوم به سادگی ساختار چاپ و متن را در بر می گیرد. لورم ایپسوم به مدت 40 سال استاندارد صنعت بوده است. لورم ایپسوم به سادگی ساختار چاپ و متن را در بر می گیرد. لورم ایپسوم به مدت 40 سال استاندارد صنعت بوده است. |\r\nلورم ایپسوم به سادگی ساختار چاپ و متن را در بر می گیرد. لورم ایپسوم به مدت 40 سال استاندارد صنعت بوده است. لورم ایپسوم به سادگی ساختار چاپ و متن را در بر می گیرد. لورم ایپسوم به مدت 40 سال استاندارد صنعت بوده است. \r\n', 1, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `slider` enum('pic_1','pic_2','pic_1_2') DEFAULT NULL,
  `pram_1` varchar(500) DEFAULT NULL,
  `pram_2` varchar(500) DEFAULT NULL,
  `pram_3` varchar(500) DEFAULT NULL,
  `pram_4` varchar(500) DEFAULT NULL,
  `link_media` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `slider`, `pram_1`, `pram_2`, `pram_3`, `pram_4`, `link_media`, `created_at`, `updated_at`) VALUES
(1, 'pic_1_2', 'مشارکت کنندگان | 70\r\n\r\n', 'کارگران | 190', 'بازخورد | 1820', 'بارگیری شده | 8731', 't.me | twitter.com | facebook.com | instagram.com', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sliders`
--

CREATE TABLE `sliders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `des` text NOT NULL,
  `text_but` varchar(255) NOT NULL,
  `link_but` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sliders`
--

INSERT INTO `sliders` (`id`, `title`, `des`, `text_but`, `link_but`, `created_at`, `updated_at`) VALUES
(3, 'راه حل های امن IT را برای یک محیط امن تر کنید', 'لورم ایپسوم به سادگی ساختار چاپ و متن را در بر می گیرد. لورم ایپسوم به مدت 40 سال استاندارد صنعت بوده است. لورم ایپسوم به سادگی ساختار چاپ و متن را در بر می گیرد. لورم ایپسوم به مدت 40 سال استاندارد صنعت بوده است.', 'شروع', '', NULL, NULL),
(4, 'پیشرو در جهان و شرکت یادگیری ماشینی', 'لورم ایپسوم به سادگی ساختار چاپ و متن را در بر می گیرد. لورم ایپسوم به مدت 40 سال استاندارد صنعت بوده است. لورم ایپسوم به سادگی ساختار چاپ و متن را در بر می گیرد. لورم ایپسوم به مدت 40 سال استاندارد صنعت بوده است.', 'شروع', '', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `teams`
--

CREATE TABLE `teams` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `job` varchar(255) NOT NULL,
  `img` varchar(255) NOT NULL,
  `text` text NOT NULL,
  `link` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `teams`
--

INSERT INTO `teams` (`id`, `name`, `job`, `img`, `text`, `link`, `created_at`, `updated_at`) VALUES
(1, 'جاش باتلر', 'سئوکار وب', 'https://preview.envytheme.ir/startp/rtl/assets/img/team-image/2.jpg', 'لورم ایپسوم ساختار چاپ و متن را در بر می گیرد. لورم ایپسوم استاندارد صنعت بوده است. ', 't.me | instagram | facebook | linkdin | twitter', NULL, NULL),
(2, 'جاش باتلر', 'سئوکار وب', 'https://preview.envytheme.ir/startp/rtl/assets/img/team-image/3.jpg', 'لورم ایپسوم ساختار چاپ و متن را در بر می گیرد. لورم ایپسوم استاندارد صنعت بوده است. ', 'linkdin | t.me | facebook| instagram ', NULL, NULL),
(3, 'جاش باتلر', 'سئوکار وب', 'https://preview.envytheme.ir/startp/rtl/assets/img/team-image/1.jpg', 'لورم ایپسوم ساختار چاپ و متن را در بر می گیرد. لورم ایپسوم استاندارد صنعت بوده است. ', 't.me | instagram | facebook | linkdin | twitter', NULL, NULL),
(4, 'جاش باتلر', 'سئوکار وب', 'https://preview.envytheme.ir/startp/rtl/assets/img/team-image/2.jpg', 'لورم ایپسوم ساختار چاپ و متن را در بر می گیرد. لورم ایپسوم استاندارد صنعت بوده است. ', 'linkdin | t.me | facebook | instagram ', NULL, NULL),
(5, 'جاش باتلر', 'سئوکار وب', 'https://preview.envytheme.ir/startp/rtl/assets/img/team-image/5.jpg', 'لورم ایپسوم ساختار چاپ و متن را در بر می گیرد. لورم ایپسوم استاندارد صنعت بوده است. ', 'linkdin | t.me | facebook | instagram ', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `companies`
--
ALTER TABLE `companies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `options`
--
ALTER TABLE `options`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `projects`
--
ALTER TABLE `projects`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `teams`
--
ALTER TABLE `teams`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `companies`
--
ALTER TABLE `companies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `options`
--
ALTER TABLE `options`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `projects`
--
ALTER TABLE `projects`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `teams`
--
ALTER TABLE `teams`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
