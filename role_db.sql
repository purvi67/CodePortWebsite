-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 15, 2022 at 06:38 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `role_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `feedbacks`
--

CREATE TABLE `feedbacks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `f_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `f_email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `f_date` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `feedbacks`
--

INSERT INTO `feedbacks` (`id`, `f_name`, `f_email`, `message`, `f_date`, `created_at`, `updated_at`) VALUES
(1, 'hello', 'rakeshsoni.rs37@gmail.com', 'hellok', '2022-09-25', '2022-09-25 03:35:07', '2022-09-25 03:35:07'),
(2, 'hello', 'hello@gmail.com', 'hello how are you', '2022-09-25', '2022-09-25 03:36:11', '2022-09-25 03:36:11'),
(3, 'he', 'sem33qq@gmail.com', 'hweeeeeeeeeeeeeeyyyyyyyyyyyyyy', '2022-09-25', '2022-09-25 03:38:28', '2022-09-25 03:38:28');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_06_14_060810_create_permission_tables', 1),
(7, '2022_06_14_061958_create_products_table', 2),
(8, '2022_06_22_061406_create_tags_table', 3),
(10, '2022_06_24_072235_create_questions_table', 4),
(11, '2022_07_22_082215_create_replies_table', 5),
(13, '2022_09_12_150102_create_feedbacks_table', 6);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\Models\\User', 1),
(1, 'App\\Models\\User', 22),
(2, 'App\\Models\\User', 4),
(2, 'App\\Models\\User', 18),
(2, 'App\\Models\\User', 19),
(2, 'App\\Models\\User', 20),
(2, 'App\\Models\\User', 21),
(2, 'App\\Models\\User', 23),
(2, 'App\\Models\\User', 24),
(2, 'App\\Models\\User', 25),
(2, 'App\\Models\\User', 26),
(2, 'App\\Models\\User', 27),
(2, 'App\\Models\\User', 28);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('hello0@gmail.com', '$2y$10$.vVw77cLnD7sG8TRkx1Pau24y54pqTsRA7zbmml7jXyyDHSe617Wq', '2022-08-13 02:47:30'),
('rakeshsoni.rs37@gmail.com', '$2y$10$NvqDll0ZCMfyPPjCVbVVvuLlJot6GPwI4GcOAGg4ugQwEaKgGhRky', '2022-09-22 06:08:42'),
('mitprajapati@gmail.com', '$2y$10$FJxRnYqSQZ4e3vNrWM7w8e3R6uotNW2vEb4exEjjJIixYjmTSn1Du', '2022-09-23 02:52:07'),
('admin@gmail.com', '$2y$10$ZutVOqWvkqBpleMeUJxxMeJyh3zF3Ey/KpcpVTB2Xllf75Jk5zocq', '2022-09-23 10:21:16'),
('kaushik_prajapati@gmial.com', '$2y$10$nOYbrzxr9P8JqQ1c8WJFD.ORqeTjWOm.6yJwq.laJWAM6oNyBIze2', '2022-09-23 10:22:02');

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'role-list', 'web', '2022-06-14 09:22:10', '2022-06-14 09:22:10'),
(2, 'role-create', 'web', '2022-06-14 09:22:14', '2022-06-14 09:22:14'),
(3, 'role-edit', 'web', '2022-06-14 09:22:14', '2022-06-14 09:22:14'),
(4, 'role-delete', 'web', '2022-06-14 09:22:14', '2022-06-14 09:22:14'),
(5, 'product-list', 'web', '2022-06-14 09:22:15', '2022-06-14 09:22:15'),
(6, 'product-create', 'web', '2022-06-14 09:22:15', '2022-06-14 09:22:15'),
(7, 'product-edit', 'web', '2022-06-14 09:22:15', '2022-06-14 09:22:15'),
(8, 'product-delete', 'web', '2022-06-14 09:22:16', '2022-06-14 09:22:16');

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `detail` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `q_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `q_body` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `t_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`id`, `q_title`, `q_body`, `user_id`, `t_id`, `created_at`, `updated_at`) VALUES
(6, 'margin-top', 'How to add a margin-top to a hr in a div?', '23', '12', '2022-09-02 03:52:33', '2022-09-02 03:52:33'),
(7, 'How to style Markdown file without HTML tags', 'Can we add style to the markdown file without HTML tags within that file itself like inline CSS??', '23', '13', '2022-09-02 03:54:41', '2022-09-02 03:54:41'),
(8, 'Calling a function of a module by using its name (a string)', 'How do I call a function, using a string with the function\'s name? For example: import foo func_name = \"bar\" call(foo, func_name) # calls foo.bar()', '19', '22', '2022-09-02 04:18:44', '2022-09-02 04:18:44'),
(9, 'validate white space at the beginning and end of string with regex', 'someone who can help me with a regular expression to be able to validate the blank spaces at the beginning and end of a string, currently I manage this but it does not work for me', '19', '16', '2022-09-04 01:46:36', '2022-09-04 01:46:36'),
(10, 'Layout', 'Describe HTML layout structure.', '27', '12', '2022-09-04 05:55:27', '2022-09-04 05:55:27'),
(11, 'Adding a Chrome /Metal filter to an image with CSS', 'I have an image being displayed on a webpage, I need that image to have a chrome effect. Whenever I Google anything with the word \"Chrome\", it just brings up results linked to Google Chrome browser - which is not what I am after\r\n\r\nIt is used for a car dealerships website to make the first featured image stand out.\r\n\r\nThis is what they already use (which they manually add the Chrome effect to on Paintshop Pro), I would like the website to use this effect using CSS (or another language if easier)\r\n\r\nORIGINAL IMAGE: https://f7432d8eadcf865aa9d9-9c672a3a4ecaaacdf2fee3b3e6fd2716.ssl.cf3.rackcdn.com/C642/U1793/IMG_7200-large.jpg\r\n\r\nCHROMED IMAGE: https://f7432d8eadcf865aa9d9-9c672a3a4ecaaacdf2fee3b3e6fd2716.ssl.cf3.rackcdn.com/C642/U1793/IMG_7117-large.jpg\r\n\r\nIf anyone has any Advanced CSS to add this Chrome filter to the image, to make it like the above as possible, that would be great', '27', '12', '2022-09-04 06:03:28', '2022-09-04 06:03:28'),
(12, 'How do I get the query builder to output its raw SQL query as a string?', 'Given the following code:\r\n\r\nDB::table(\'users\')->get();\r\nI want to get the raw SQL query string that the database query builder above will generate. In this example, it would be SELECT * FROM users.\r\n\r\nHow do I do this?', '19', '16', '2022-09-04 13:50:45', '2022-09-04 13:50:45'),
(13, 'How can I remove a package from Laravel using PHP Composer?', 'What is the correct way to remove a package from Laravel using PHP Composer?\n\nSo far I\'ve tried:\n\nRemove declaration from file composer.json (in the \"require\" section)\nRemove any class aliases from file app.php\nRemove any references to the package from my code :-)\nRun composer update\nRun composer dump-autoload\nNone of these options are working! What am I missing?', '19', '16', '2022-09-04 13:52:08', '2022-09-04 13:52:08'),
(14, 'How can I horizontally center an element?', 'How can I horizontally center a <div> within another <div> using CSS? <div id=\"outer\"> <div id=\"inner\">Foo foo</div> </div>', '24', '13', '2022-09-05 11:05:56', '2022-09-05 11:05:56'),
(15, 'How do I disable the resizable property of a textarea?', 'I want to disable the resizable property of a textarea.\r\n\r\nCurrently, I can resize a textarea by clicking on the bottom right corner of the textarea and dragging the mouse. How can I disable this?', '24', '13', '2022-09-05 11:11:20', '2022-09-05 11:11:20'),
(16, 'How can I remove a specific item from an array?', 'How do I remove a specific value from an array? Something like: array.remove(value); // removes all elements with value I have to use core JavaScript. Frameworks are not allowed.', '24', '14', '2022-09-05 11:45:48', '2022-09-05 11:45:48'),
(17, 'How do I check if an element is hidden in jQuery?', 'How do I toggle the visibility of an element using .hide(), .show(), or .toggle()? How do I test if an element is visible or hidden?', '24', '14', '2022-09-05 11:46:32', '2022-09-05 11:46:32'),
(18, 'How do I redirect to another webpage?', 'How can I redirect the user from one page to another using jQuery or pure JavaScript?', '24', '14', '2022-09-05 11:47:07', '2022-09-05 11:47:07'),
(19, 'How do I get a YouTube video thumbnail from the YouTube API?', 'If I have a YouTube video URL, is there any way to use PHP and cURL to get the associated thumbnail from the YouTube API?', '24', '15', '2022-09-05 11:49:01', '2022-09-05 11:49:01'),
(20, 'How do you parse and process HTML/XML in PHP?', 'How can one parse HTML/XML and extract information from it?', '25', '15', '2022-09-06 00:10:07', '2022-09-06 00:10:07'),
(21, 'When should I use \'self\' over \'$this\'?', 'In PHP 5, what is the difference between using self and $this? When is each appropriate?', '25', '15', '2022-09-06 00:10:42', '2022-09-06 00:10:42'),
(22, 'Change navbar color in Twitter Bootstrap', 'How would I go about modifying the CSS to change the color of the navbar in Twitter Bootstrap?', '26', '18', '2022-09-06 00:28:35', '2022-09-06 00:28:35'),
(23, 'Bootstrap 5 navbar align items right', 'How do you align Bootstrap 5 navbar items to the right? In Bootstrap 3 it\'s navbar-right. In Bootstrap 4 it\'s ml-auto. But not work for Bootstrap 5.', '26', '18', '2022-09-06 00:29:21', '2022-09-06 00:29:21'),
(24, 'When should I use container and row in Twitter Bootstrap?', 'Please explain to me when to use the classes container and row. I\'m not sure because the documentation of Bootstrap is quite unclear about this part. I\'m using Bootstrap 3.', '26', '18', '2022-09-06 00:31:37', '2022-09-06 00:31:37'),
(25, 'How do I set, clear, and toggle a single bit?', 'How do I set, clear, and toggle a bit?', '21', '20', '2022-09-06 00:53:14', '2022-09-06 00:53:14'),
(26, 'What is the difference between #include <filename> and #include \"filename\"?', 'What is the difference between using angle brackets and quotes in an include directive?\r\n\r\n#include <filename>\r\n#include \"filename\"', '21', '20', '2022-09-06 01:02:24', '2022-09-06 01:02:24'),
(28, 'Adding a Chrome /Metal filter to an image with CSS', 'jjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjj', '19', '18', '2022-09-25 03:36:52', '2022-09-25 03:36:52');

-- --------------------------------------------------------

--
-- Table structure for table `replies`
--

CREATE TABLE `replies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `reply` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `r_date` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `q_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `u_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `replies`
--

INSERT INTO `replies` (`id`, `reply`, `r_date`, `q_id`, `u_id`, `created_at`, `updated_at`) VALUES
(13, 'Code:-\r\n   HTML:-\r\n<div id=\"new_information_section\">\r\n    <div class=\"tabbable\">\r\n        <ul class=\"nav nav-pills\" id=\"info_nav\">\r\n          <li class=\"active\"><a href=\"#\">Admissions</a></li>\r\n          <li><a href=\"#\">The School</a></li>\r\n        </ul>\r\n\r\n        <div class=\"tab-content\">\r\n            <div class=\"tab-pane active\" id=\"tab1\">\r\n                <section id=\"sat_scores\">\r\n                    <div class=\"chunk\">\r\n                        <h3>SAT Scores</h3>\r\n                        <ul>\r\n                            <li>Math: 600-690</li>\r\n                            <li>Reading: 570-690</li>\r\n                            <li>Writing: 560-660</li>\r\n                            <li>Composite: 1130-1320</li>\r\n                            <hr />\r\n                            <li>89% submit</li>\r\n                        </ul>\r\n                    </div>\r\n\r\n                    <div class=\"chunk\">\r\n                        <canvas id=\"sat_math\" width=\"200\" height=\"200\"></canvas>\r\n                    </div>\r\n                </section> <!-- SAT Scores -->\r\n\r\n\r\n            </div>\r\n\r\n            <div class=\"tab-pane\" id=\"tab2\">\r\n                <p>Howdy, I\'m in Section 2.</p>\r\n            </div>\r\n        </div>\r\n    </div>\r\n\r\n</div>\r\ncss:-\r\n    #new_information_section {\r\n    #info_nav {\r\n        margin-top: 50px;\r\n    }\r\n    .chunk {\r\n        display: inline;\r\n        float: left;\r\n        clear: none;\r\n        margin-right: 100px;\r\n    }\r\n    h3 {\r\n        font-family: Verdana;\r\n    }\r\n    ul {\r\n        li {\r\n            margin: 10px 0;\r\n        }\r\n        hr {\r\n            width: 50%;\r\n        }\r\n    }\r\n}', '2022-09-04 09:44:19', '6', 'janvi mokasana', '2022-09-04 04:14:19', '2022-09-04 04:14:19'),
(14, 'And what did you try yourself? Where is your starting point in code? – \r\nRoy\r\n 1 hour ago\r\nI have used the CSS \"Filters\", but that doesn\'t give me the results I am after – \r\nRyan\r\n 1 hour ago\r\nw3schools.com/howto/howto_css_image_effects.asp visit here maybe it will help you to create what you want. – \r\niqbal hossain\r\n 1 hour ago', '2022-09-04 11:34:59', '11', 'janvi mokasana', '2022-09-04 06:04:59', '2022-09-04 06:04:59'),
(15, 'https://img.youtube.com/vi/<insert-youtube-video-id-here>/0.jpg\r\nhttps://img.youtube.com/vi/<insert-youtube-video-id-here>/1.jpg\r\nhttps://img.youtube.com/vi/<insert-youtube-video-id-here>/2.jpg\r\nhttps://img.youtube.com/vi/<insert-youtube-video-id-here>/3.jpg', '2022-09-06 05:43:41', '19', 'umangi rojasara', '2022-09-06 00:13:41', '2022-09-06 00:13:41'),
(16, '=>A HTML DOM parser written in PHP 5+ that lets you manipulate HTML in a very easy way!\r\n1)Require PHP 5+.\r\n2)Supports invalid HTML.\r\n3)Find tags on an HTML page with selectors just like jQuery.\r\n4)Extract contents from HTML in a single line.\r\n5)Download', '2022-09-06 05:50:02', '20', 'umangi rojasara', '2022-09-06 00:20:02', '2022-09-06 00:20:02'),
(17, 'Here is an example of correct usage of $this and self for non-static and static member variables:---\r\n\r\n<?php\r\nclass X {\r\n    private $non_static_member = 1;\r\n    private static $static_member = 2;\r\n\r\n    function __construct() {\r\n        echo $this->non_static_member . \' \'\r\n           . self::$static_member;\r\n    }\r\n}\r\n\r\nnew X();\r\n?>', '2022-09-06 05:53:24', '21', 'umangi rojasara', '2022-09-06 00:23:25', '2022-09-06 00:23:25'),
(18, 'hhghgjhkljnjlkkikl', '2022-09-22 11:25:13', '6', 'kuldeep satapara', '2022-09-22 05:55:13', '2022-09-22 05:55:13'),
(19, 'hello', '2022-09-23 08:24:02', '6', 'kaushik prajapati', '2022-09-23 02:54:02', '2022-09-23 02:54:02'),
(20, 'hello here', '2022-09-23', '6', 'kaushik prajapati', '2022-09-23 02:57:46', '2022-09-23 02:57:46');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'web', '2022-06-14 09:31:39', '2022-06-14 09:31:39'),
(2, 'User', 'web', '2022-06-25 09:28:37', '2022-06-25 09:28:37');

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(1, 1),
(1, 2),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(5, 2),
(6, 1),
(6, 2),
(7, 1),
(7, 2),
(8, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

CREATE TABLE `tags` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `t_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `t_des` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `t_icon` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tags`
--

INSERT INTO `tags` (`id`, `t_title`, `t_des`, `t_icon`, `created_at`, `updated_at`) VALUES
(12, 'HTML', 'HTML is the standard markup language for Web pages. With HTML you can create your own Website.', '1662025246html_logo.png', '2022-09-01 04:10:46', '2022-09-01 04:10:46'),
(13, 'CSS', 'CSS is the language we use to style an HTML document. CSS describes how HTML elements should be displayed', '1662025322css_logo.png', '2022-09-01 04:12:02', '2022-09-01 04:12:02'),
(14, 'javascript', 'JavaScript is the world\'s most popular programming language. JavaScript is the programming language of the Web.', '1662025420javascript_logo.png', '2022-09-01 04:13:40', '2022-09-01 04:13:40'),
(15, 'PHP', 'PHP is a server scripting language, and a powerful tool for making dynamic and interactive Web pages.It was created by Danish-Canadian', '1662025549php_logo.png', '2022-09-01 04:15:49', '2022-09-01 04:15:49'),
(16, 'LARAVEL', 'Laravel is an open-source PHP framework, which is robust and easy to understand. It follows a model-view-controller design pattern.', '1662034990laravel_logo.png', '2022-09-01 06:53:10', '2022-09-01 06:53:10'),
(17, 'React.js', 'React is a free and open source front - end javascript library for building user interface based on UI components.React is a JavaScript library.', '1662036061React.js_logo.png', '2022-09-01 07:11:01', '2022-09-01 07:11:01'),
(18, 'Bootstrap', 'Bootstrap is a free and open-source CSS framework directed at responsive, mobile-first front-end web development. It contains HTML, CSS and JavaScript-based design templates for typography, forms, buttons, navigation, and other interface components.', '1662036259Bootstrap_logo.png', '2022-09-01 07:14:19', '2022-09-01 07:14:19'),
(20, 'C language', 'C is a general-purpose computer programming language. It was created in the 1970s by Dennis Ritchie, and remains very widely used and influential. By design, C\'s features cleanly reflect the capabilities of the targeted CPUs.', '1662036734The_C_Programming_Language_logo.png', '2022-09-01 07:22:14', '2022-09-01 07:22:14'),
(22, 'Python', 'Python is a high-level, general-purpose programming language. Its design philosophy emphasizes code readability with the use of significant indentation. Python is dynamically-typed and garbage-collected.Python is a popular programming language.', '1662037034Python_logo.png', '2022-09-01 07:27:14', '2022-09-01 07:27:14'),
(24, 'JAVA', 'Java is a high-level, class-based, object-oriented programming language that is designed to have as few implementation dependencies as possible.', '1662037409Java_logo.png', '2022-09-01 07:33:29', '2022-09-01 07:33:29');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `b_date` date DEFAULT NULL,
  `p_no` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `u_age` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `b_date`, `p_no`, `u_age`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Prajesh Rojasara', '2003-03-18', '9054145123', NULL, 'admin@gmail.com', NULL, '$2y$10$qMwOjXhbNsHFeLBMVzxEiuGiU.Y4E08uSjlOODPNjM5YXfBuVw0Na', 'sddZhvsKLhMiUeRdCd5tH0dPoYFuljIsVehTd4RNUKaVTtDRVOIOvfUo5B4I', '2022-06-14 09:31:36', '2022-08-23 00:28:42'),
(4, 'User', NULL, NULL, NULL, 'user0@gmail.com', NULL, '$2y$10$FeBG.sVducPLN39Ft29rZuzocssKJrEbmSB84nhvoYNMQw2of4UN6', 'gMApb1y69smWVTFyolXsoJ1QB1HE306BLSSkRHBI4c6YfyQo1Gv2LQVcqc4S', '2022-07-26 01:28:04', '2022-07-26 01:28:04'),
(18, 'Prajesh Soni', '2001-01-20', '9825426629', NULL, 'rakeshsoni.rs37@gmail.com', NULL, '$2y$10$rysTw5QbZbDGaEELkjgXRO71XlvHo.Kk69so5SuAzTv1zOpuwI8aW', NULL, '2022-08-22 10:48:21', '2022-08-27 07:23:13'),
(19, 'janvi mokasana', '2002-11-12', '9876543212', '19', 'janvi54@gmail.com', NULL, '$2y$10$xCnn/un3a1jKOzT9Ssi/HeH7BIB7lFK6LUqS0PAEcunG.fZhHe6ji', 'ZaSeYBEdTVwMVmOilOyHjGIQQWKsf6M5YbRrqqRQRkPZvdvRawZfon6nrijS', '2022-08-27 07:35:03', '2022-09-24 11:27:36'),
(20, 'moxa soni', '2005-08-24', '9569836548', '17', 'moxa_soni24@gmail.com', NULL, '$2y$10$q7LLjjgQfQ17Fdf9eIPJN.FZDNqjmUN1X.394.Vh7ZSJJqC7NNd2O', NULL, '2022-08-30 11:05:25', '2022-08-30 12:28:51'),
(21, 'tejas pandya', '2002-11-04', '9664356789', '19', 'tejas04pandya@gmail.com', NULL, '$2y$10$PwWYDOYnwf2EJ6Tg/.yMSO0A9WRbDQmO1vIYFBsN69vMpoegF3Q0.', NULL, '2022-08-30 11:08:47', '2022-08-30 12:29:21'),
(22, 'radhika satapara', '2002-12-11', '9974433372', '19', 'radhisatapara@gmail.com', NULL, '$2y$10$p4JbD011I0cc7HuXi72Ad.3PWk1F08WIndf.DDh3CKjNmOOy4d2am', NULL, '2022-08-30 12:25:10', '2022-08-30 12:30:08'),
(23, 'heer soni', '2021-06-25', '9876543256', '2', 'heer25@gmail.com', NULL, '$2y$10$y1vdXXNuMEMwAgML8bQeKuYuC6jThdhoPQv6tE2oJQxVSGc3w4TYi', NULL, '2022-08-30 12:33:15', '2022-08-30 12:44:33'),
(24, 'mitesh satapara', '2008-01-24', '9837653781', '16', 'mitprajapati@gmail.com', NULL, '$2y$10$ufrrkE3oYIwuRdhmYqQQD.OyiofBBA/oILSP5rBBsnq2fQhBynDGi', NULL, '2022-08-30 12:35:54', '2022-08-30 12:45:10'),
(25, 'kaushik prajapati', '2003-09-19', '6389567902', '19', 'kaushik_prajapati@gmial.com', NULL, '$2y$10$WqXuamyVKsQs3TctcX7TReGM7BvwXyOQouryXosvHxJgUuUq770Mm', 'E9bk338aLLZ6dslUR5Wi8YdoNrgBj33H0Ph3qWKBCZyY6Gk1FFhVSBMNdoUg', '2022-08-30 12:37:40', '2022-09-13 21:50:57'),
(26, 'umangi rojasara', '2003-03-28', '9128736495', '20', 'umangi.112@gmail.com', NULL, '$2y$10$pY5/1DGZD5xxpIfsnroP7eyfgs.U/ZDbWffGKF3WZ3cPPaEbmnpPC', NULL, '2022-08-30 12:40:28', '2022-08-30 12:46:57'),
(27, 'kuldeep satapara', '2018-10-09', '9785498214', '4', 'kuldeep_._09@gmail.com', NULL, '$2y$10$KHwzgKROvVybQWlZ0ezeyu7pVjDRT4Ju9BIx4yRlmv7n5oQnV8KzW', 'wJgJiXVFgh8PvZb8YCxVBZ0Db5wiZbxyBo3w3NjDyahuJkjCUcflSoCfCEO7', '2022-08-30 12:42:45', '2022-08-30 12:47:23'),
(28, 'Rutt Soni', '2003-03-21', '9081212807', '20', 'ruttsoni.rs13@gmail.com', NULL, '$2y$10$gRJSvkUhCbu38yMtKfrZKuFxzFWJivzoRNQORAkqDBE7/mKNgjAiO', NULL, '2022-09-12 10:38:01', '2022-09-23 10:35:53');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `feedbacks`
--
ALTER TABLE `feedbacks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `replies`
--
ALTER TABLE `replies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indexes for table `tags`
--
ALTER TABLE `tags`
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
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `feedbacks`
--
ALTER TABLE `feedbacks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `questions`
--
ALTER TABLE `questions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `replies`
--
ALTER TABLE `replies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tags`
--
ALTER TABLE `tags`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
