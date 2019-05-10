-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: May 10, 2019 at 10:24 AM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `project_laravel`
--

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_05_02_163824_create_posts_table', 1),
(4, '2019_05_03_183302_add_user_id_to_posts', 2),
(5, '2019_05_04_001534_add_cover_image_to_posts', 3);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `cover_image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `title`, `body`, `created_at`, `updated_at`, `user_id`, `cover_image`) VALUES
(10, 'post one', '<p>this is post one</p>', '2019-05-04 07:54:03', '2019-05-04 07:54:16', 2, 'timg (4)_1556931256.jpeg'),
(11, 'post two', '<p>this is post two without image</p>', '2019-05-04 07:57:17', '2019-05-04 07:57:17', 2, 'noimage.jpg'),
(12, 'Hello there', '<p>check out my new post</p>', '2019-05-04 08:03:49', '2019-05-04 08:03:49', 1, 'timg (2)_1556931829.jpeg'),
(13, 'Looking for roommate', '<p>&nbsp;I want to look for a roommate!!!</p>', '2019-05-04 12:07:36', '2019-05-04 12:07:36', 3, 'timg (1)_1556946456.jpeg'),
(14, 'Looking for roommate', '<p>sdasdasdada</p>', '2019-05-08 02:51:01', '2019-05-08 02:51:01', 4, 'timg (7)_1557258661.jpeg'),
(15, 'A post', '<p>a post</p>', '2019-05-09 01:41:33', '2019-05-09 01:41:33', 2, '25-fatos-incríveis-sobre-a-Internet-711x400_1557340893.jpg'),
(16, 'b post', '<p>b post</p>', '2019-05-09 01:42:00', '2019-05-09 01:42:00', 2, '20150819 (693)_1557340920.jpg'),
(17, 'c post', '<p>c post</p>', '2019-05-09 01:42:33', '2019-05-09 01:42:33', 2, 'X2p5So8_1557340953.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Astro', 'astro@gmail.com', NULL, '$2y$10$OcX68oZp8041SIG6mWq/6uJtnvJVzorSVRcH80WxFA.GJFqZGw6UW', NULL, '2019-05-04 01:24:49', '2019-05-04 01:24:49'),
(2, 'sam', 'sam@gmail.com', NULL, '$2y$10$O349J3shDsVZOTRuUcgXLOvkUja.5CxeoC2B6zSa1/3vNv848riY2', NULL, '2019-05-04 05:29:18', '2019-05-04 05:29:18'),
(3, 'bella', 'bella@gmail.com', NULL, '$2y$10$jER1mVqV0LtOLTW54QIrJOo3lO9X.bst4pvUK9L73.Vf3QPXV6RYa', NULL, '2019-05-04 12:07:02', '2019-05-04 12:07:02'),
(4, 'luki', 'luki@gmail.com', NULL, '$2y$10$nfqrltq3xrNpIrmO8xISBOBtI/NY8x1RNEuC1.BaF0V3cDjY9.pq.', NULL, '2019-05-08 02:50:26', '2019-05-08 02:50:26');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
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
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
