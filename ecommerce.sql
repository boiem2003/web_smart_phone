-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
<<<<<<< HEAD
<<<<<<< HEAD
-- Generation Time: Oct 26, 2022 at 10:29 AM
=======
-- Generation Time: Oct 27, 2022 at 10:00 AM
>>>>>>> 4145724182bae299eb53c0a9db191835a707c491
=======
-- Generation Time: Oct 27, 2022 at 10:00 AM
=======
-- Generation Time: Oct 26, 2022 at 10:29 AM
>>>>>>> 945acfba8e10f3615bcee744a61a1b6527fa6cd8
>>>>>>> 5fc7c9ca5ec26a26e4babaaac4f844f4c5eabaa5
-- Server version: 10.4.25-MariaDB
-- PHP Version: 7.4.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ecommerce`
--

-- --------------------------------------------------------

--
-- Table structure for table `carts`
--

CREATE TABLE `carts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prod_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prod_qty` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

<<<<<<< HEAD
<<<<<<< HEAD
=======
=======
>>>>>>> 5fc7c9ca5ec26a26e4babaaac4f844f4c5eabaa5
--
-- Dumping data for table `carts`
--

INSERT INTO `carts` (`id`, `user_id`, `prod_id`, `prod_qty`, `created_at`, `updated_at`) VALUES
(4, '4', '5', '9', '2022-10-26 23:49:45', '2022-10-27 00:59:02'),
(5, '4', '6', '1', '2022-10-27 00:58:19', '2022-10-27 00:58:19');

<<<<<<< HEAD
>>>>>>> 4145724182bae299eb53c0a9db191835a707c491
=======
=======
>>>>>>> 945acfba8e10f3615bcee744a61a1b6527fa6cd8
>>>>>>> 5fc7c9ca5ec26a26e4babaaac4f844f4c5eabaa5
-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `popular` tinyint(4) NOT NULL DEFAULT 0,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_descrip` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_keywords` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `description`, `status`, `popular`, `image`, `meta_title`, `meta_descrip`, `meta_keywords`, `created_at`, `updated_at`) VALUES
(1, 'iphone', 'iphone', 'test', 0, 1, '1665978824.png', 'all kinds of iphone items', 'test', 'test123456789', '2022-10-16 02:05:11', '2022-10-23 22:32:59'),
(2, 'iphone 14', 'iphone', 'test', 1, 1, '1665978802.png', 'all kinds of iphone items', 'iphone 123', 'iphone', '2022-10-16 05:10:25', '2022-10-20 01:54:12'),
(3, 'iphone 14', 'iphone', 'test', 0, 0, '1665978790.png', 'all kinds of iphone items', 'test1111', 'test', '2022-10-16 05:11:07', '2022-10-16 20:53:10'),
(4, 'iphone 14 pro max', 'iphone', 'test', 1, 0, '1665978759.png', 'all kinds of iphone items', 'test', 'test', '2022-10-16 05:28:02', '2022-10-23 22:40:50'),
(8, 'Samsung Galaxy Z Flip3', 'samsung', 'test', 0, 1, '1665990803.png', 'test24', 'test24', 'test24', '2022-10-17 00:11:05', '2022-10-17 00:13:23');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_10_16_072918_create_categories_table', 2),
(6, '2022_10_17_074652_create_products_table', 3),
(7, '2022_10_24_074822_create_carts_table', 4);

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
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
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
  `cate_id` bigint(20) NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `small_description` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `original_price` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `selling_price` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `qty` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tax` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL,
  `trending` tinyint(4) NOT NULL,
  `meta_title` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_keywords` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `cate_id`, `name`, `slug`, `small_description`, `description`, `original_price`, `selling_price`, `image`, `qty`, `tax`, `status`, `trending`, `meta_title`, `meta_keywords`, `meta_description`, `created_at`, `updated_at`) VALUES
(3, 8, 'oppo reno8', 'oppo', 'OPPO Reno8 có thiết kế nguyên khối, màn hình AMOLED 6.43 inch, độ phân giải Full HD+. Máy chạy trên hệ điều hành Android 12 và hoạt động tốt nhờ chipset MediaTek Dimensity 1300 8 nhân. Camera chính 50MP, dung lượng pin 4500mAh và hỗ trợ sạc nhanh lên đến 80W', 'OPPO Reno8 - chuyên gia chụp ảnh chân dung hàng đầu nhờ sự kết hợp giữa cảm biến cao cấp Sony IMX709(camera trước) và IMX766(camera sau) với ống kính Micro30x. Ngoài ra, phiên bản Reno 8 mang lại cho người dùng khả năng cân bằng cuộc sống theo khung giờ 8 tiếng giúp làm việc hiệu quả và nghỉ ngơi đầy đủ. Hiệu năng mà OPPO Reno 8 sở hữu 8GB RAM, 256GB bộ nhớ trong đi cùng với vi xử lý MediaTek Dimensity 1300 giúp tối ưu các tác vụ hiệu quả cùng hiệu năng chơi game đỉnh cao.', '8990000', '8690000', '1666168996.png', '100', '100', 0, 0, 'OPPO Reno8', 'OPPO Reno8, oppo new', 'Chuyên gia chân dung, bừng sáng khoảnh khắc đêm - Cụm camera 64MP + 2MP + 2MP hiện đại\r\nDẫn đầu xu hướng nhờ thiết kế tinh xảo, cao cấp và mỏng nhẹ, phù hợp với trải nghiệm hàng ngày\r\nSạc nhanh siêu tốc, tràn đầy năng lượng cho cả ngày - Viên pin 4500mAh, Sạc nhanh siêu tốc 33W\r\nGấp đôi hiệu suất, xử lí mọi tác vụ - Con chip Qualcomm Snapdragon 680 mạnh mẽ trong phân khúc', '2022-10-19 01:43:16', '2022-10-19 01:43:16'),
(5, 1, 'iphonedfgd', 'sdfsda', NULL, 'dfg', '5654', '5436', '1666253443.jfif', '150', '456', 0, 1, 'drfg', 'dfg', 'dfg', '2022-10-20 01:10:43', '2022-10-26 01:19:56'),
(6, 1, 'dfgd', 'dfg', NULL, 'dfg', '5453', '453', '1666253508.jfif', '10', '45', 0, 1, 'sdfsd', 'dfg', 'jrt', '2022-10-20 01:11:48', '2022-10-26 01:15:12'),
(7, 1, 'iphone 7', 'iphone', 'iPhone 13 Pro Max 512G - smartphone sở hữu hệ thống camera chuyên nghiệp tiên tiến nhất trên iPhone. Màn hình  Super Retina XDR với ProMotion tiết kiệm pin tối đa cùng chip A15 Bionic mạnh nhất từ trước tới giờ mang tới sự hài lòng trên mọi phương diện. Dung lượng khủng 512GB giúp bạn tha hồ sử dụng và lưu trữ. ', 'sdfsdf', '424', '42', '1666277114.jfif', '100', '4524', 1, 1, 'sdfsd', 'sdfs', 'sdf', '2022-10-20 07:45:14', '2022-10-20 07:45:14');

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
  `role_as` tinyint(4) NOT NULL DEFAULT 0,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `role_as`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'NCThanh', 'user@user.com', NULL, '$2y$10$w0axIBdFlhxeRJdn1BZ2vezxEyDailHwTe8HTNs8NYnIXYyJKw78e', 1, NULL, '2022-10-15 05:17:20', '2022-10-15 05:17:20'),
(2, 'dangkhoa', 'nguyendkhoa147@gmail.com', NULL, '$2y$10$S879/v2GI7TbZcDqvaapJeXs7AwWzqpO3o9F42zHYZegYoKOY4wu.', 1, NULL, '2022-10-16 04:11:17', '2022-10-16 04:11:17'),
(3, 'thao', 'Thao@gmail.com', NULL, '$2y$10$toh1ybs/X4TyNiYiWfgPxOLfmerJGTEGtnDPIRX.8sLJcnWr.b7VG', 1, NULL, '2022-10-16 23:18:00', '2022-10-16 23:18:00'),
(4, 'adminboi', 'adminboi@gmail.com', NULL, '$2y$10$mXStWWe8XkQuO5naUTjIouuM8/tNo885foRUuMesQDW1nXzwk1Pj6', 0, NULL, '2022-10-17 22:36:21', '2022-10-17 22:36:21');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `carts`
--
ALTER TABLE `carts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

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
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `carts`
--
ALTER TABLE `carts`
<<<<<<< HEAD
<<<<<<< HEAD
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
=======
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
>>>>>>> 4145724182bae299eb53c0a9db191835a707c491
=======
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
=======
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
>>>>>>> 945acfba8e10f3615bcee744a61a1b6527fa6cd8
>>>>>>> 5fc7c9ca5ec26a26e4babaaac4f844f4c5eabaa5

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
