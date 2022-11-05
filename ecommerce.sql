-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 04, 2022 at 03:01 PM
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

--
-- Dumping data for table `carts`
--

INSERT INTO `carts` (`id`, `user_id`, `prod_id`, `prod_qty`, `created_at`, `updated_at`) VALUES
(1, '2', '1', '1', '2022-10-30 01:08:12', '2022-10-30 01:08:12'),
(4, '1', '1', '7', '2022-10-30 08:15:49', '2022-10-30 08:45:20'),
(7, '3', '1', '2', '2022-10-30 22:19:24', '2022-11-01 02:58:51'),
(11, '3', '2', '4', '2022-11-01 04:29:10', '2022-11-01 04:29:10'),
(13, '3', '3', '1', '2022-11-01 05:19:44', '2022-11-01 05:19:44'),
(14, '4', '1', '1', '2022-11-04 04:45:44', '2022-11-04 04:45:44'),
(15, '4', '3', '1', '2022-11-04 05:54:34', '2022-11-04 05:54:34');

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
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
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
(1, 'Apple', 'Apple', 'Apple Inc. là một tập đoàn công nghệ đa quốc gia của Mỹ', 1, 1, '1667116405.png', 'Apple Inc', 'Apple Inc. là một tập đoàn công nghệ đa quốc gia của Mỹ có trụ sở chính tại Cupertino, California, chuyên thiết kế, phát triển và bán thiết bị điện tử', 'iPhone, iPhone 14 Pro, iPad,  iPad Air, iPad, Mac, MacBook Pro - MacBook Air - iMac 24 , Watch', '2022-10-30 00:53:25', '2022-10-30 00:53:25'),
(2, 'Samsung', 'Samsung', 'Samsung là một công ty điện tử đa quốc gia của Hàn Quốc', 0, 1, '1667146143.png', 'Samsung', 'Samsung', 'Samsung', '2022-10-30 09:09:03', '2022-10-30 09:09:03'),
(3, 'OPPO', 'OPPO', 'OPPO Electronics Corp là nhà sản xuất thiết bị điện tử, điện thoại di động Android Trung Quốc', 0, 1, '1667146179.png', 'OPPO', 'OPPO', 'OPPO', '2022-10-30 09:09:39', '2022-10-30 09:09:39'),
(4, 'Xiaomi', 'Xiaomi', 'Xiaomi Mi 11 Xiaomi Inc. là một Tập đoàn sản xuất hàng điện tử Trung Quốc có trụ sở tại Thâm Quyến', 0, 1, '1667146253.png', 'Xiaomi Mi', 'Xiaomi Mi', 'Xiaomi Mi', '2022-10-30 09:10:53', '2022-10-30 09:10:53'),
(5, 'Vivo', 'Vivo', 'Vivo là một công ty Trung Quốc chuyên thiết kế, phát triển và sản xuất điện thoại thông minh Android', 0, 1, '1667146310.png', 'Vivo', 'Vivo', 'Vivo', '2022-10-30 09:11:50', '2022-10-30 09:11:50');

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
(26, '2014_10_12_000000_create_users_table', 1),
(27, '2014_10_12_100000_create_password_resets_table', 1),
(28, '2019_08_19_000000_create_failed_jobs_table', 1),
(29, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(30, '2022_10_16_072918_create_categories_table', 1),
(31, '2022_10_17_074652_create_products_table', 1),
(32, '2022_10_24_074822_create_carts_table', 1),
(33, '2022_10_30_061513_create_orders_table', 1),
(34, '2022_11_01_053414_create_wishlists_table', 2),
(35, '2022_11_01_063232_create_orders_items', 3),
(36, '2022_11_04_013725_create_ratings_table', 4);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fname` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lname` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address1` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address2` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pincode` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_price` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `message` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tracking_no` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `fname`, `lname`, `email`, `phone`, `address1`, `address2`, `city`, `state`, `country`, `pincode`, `total_price`, `status`, `message`, `tracking_no`, `created_at`, `updated_at`) VALUES
(1, '4', 'Thanh', 'Thu', 'adminboi@gmail.com', '0973674869', '34 Nghúds', '56 Au co', 'HCM', 'dhfhf', 'Việt Nam', '777777', '71480000', 0, NULL, 'Nhóm 17 3759', '2022-11-04 06:53:33', '2022-11-04 06:53:33');

-- --------------------------------------------------------

--
-- Table structure for table `orders_items`
--

CREATE TABLE `orders_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prod_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `qty` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders_items`
--

INSERT INTO `orders_items` (`id`, `order_id`, `prod_id`, `qty`, `price`, `created_at`, `updated_at`) VALUES
(1, '1', '1', '1', '29990000', '2022-11-04 06:53:33', '2022-11-04 06:53:33'),
(2, '1', '3', '1', '41490000', '2022-11-04 06:53:33', '2022-11-04 06:53:33');

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
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `small_description` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `original_price` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `selling_price` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `qty` int(50) NOT NULL,
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
(1, 1, 'iPhone 13 Pro Max 256GB', 'iPhone 13 Pro Max 256GB', 'Siêu phẩm được mong chờ nhất 2021 – iPhone 13 Pro Max đã chính thức xuất hiện', 'Siêu phẩm được mong chờ nhất 2021 – iPhone 13 Pro Max đã chính thức xuất hiện. Ngoại hình không có nhiều đột phá nhưng bên trong là sức mạnh vô địch. Màn hình siêu lớn 6.7 inch hỗ trợ tần số quét 120Hz, chip Apple A15 Bionic hạ gục mọi đối thủ, vượt qua mọi thách thức.', '32990000', '29990000', '1667117230.jpg', 100, '20', 0, 1, 'iPhone 13 Pro Max 256GB', 'iPhone 13 Pro Max 256GB', 'iPhone 13 Pro Max 256GB', '2022-10-30 01:07:10', '2022-10-30 09:27:52'),
(2, 3, 'OPPO Reno8 4G 8GB - 256GB', 'OPPO Reno8 4G 8GB - 256GB', 'Với OPPO Reno8, trải nghiệm nhiếp ảnh trên smartphone đã đột phá ranh giới cũ.', 'Với OPPO Reno8, trải nghiệm nhiếp ảnh trên smartphone đã đột phá ranh giới cũ. Sự kết hợp giữa cảm biến camera siêu nhạy IMX709 với ống kính Micro30x giúp chiếc Reno mới nhất hóa thân thành một công cụ chụp ảnh chuyên nghiệp, một chuyên gia chụp chân dung hàng đầu.', '8990000', '8990000', '1667146582.jpg', 100, '10', 0, 1, 'OPPO Reno8 4G 8GB - 256GB', 'OPPO Reno8 4G 8GB - 256GB', 'OPPO Reno8 4G 8GB - 256GB', '2022-10-30 09:16:22', '2022-10-30 09:16:22'),
(3, 2, 'Samsung Galaxy Z Fold4 5G 512GB', 'Samsung Galaxy Z Fold4 5G 512GB', 'Galaxy Z Fold4 có lẽ là cái tên nhận được nhiều sự quan tâm', 'Galaxy Z Fold4 có lẽ là cái tên nhận được nhiều sự quan tâm, chú ý đến từ sự kiện Unpacked thường niên của Samsung nhờ sở hữu màn hình lớn cùng cơ chế gấp gọn giúp bạn có thể dễ dàng mang theo bên mình đi bất kỳ nơi đâu. Cùng với đó là sự nâng cấp về hiệu năng và phần mềm giúp thiết bị xử lý tốt hầu hết mọi tác vụ từ làm việc, học tập đến giải trí.', '44490000', '41490000', '1667146680.jpg', 100, '10', 0, 1, 'Samsung Galaxy Z Fold4 5G 512GB', 'Samsung Galaxy Z Fold4 5G 512GB', 'Samsung Galaxy Z Fold4 5G 512GB', '2022-10-30 09:18:00', '2022-10-30 09:18:00'),
(4, 4, 'Xiaomi 12T Pro 12/256GB', 'Xiaomi 12T Pro 12-256GB', 'Xiaomi 12T Pro - ứng cử viên sáng giá trong phân khúc cận cao cấp', 'Xiaomi 12T Pro - ứng cử viên sáng giá trong phân khúc cận cao cấp. Không chỉ khoác trên mình bộ cánh sang trọng và cao cấp, 12T Pro còn sở hữu thông số kỹ thuật vô cùng ấn tượng. Đặc biệt là khả năng nhiếp ảnh đỉnh cao với camera lên tới 200MP, màn hình cực sắc nét và một trái tim mạnh mẽ.', '16990000', '16990000', '1667146754.jpg', 150, '10', 0, 1, 'Xiaomi 12T Pro 12/256GB', 'Xiaomi 12T Pro 12/256GB', 'Xiaomi 12T Pro 12/256GB', '2022-10-30 09:19:14', '2022-10-30 09:19:14'),
(5, 5, 'Vivo V25 5G', 'Vivo V25 5G', 'Năm 2022 dường như là một năm bùng nổ của nhà Vivo khi mang đến cho người dùng nhiều sản phẩm với thiết kế và thông số cấu hình vô cùng ấn tượng', 'Năm 2022 dường như là một năm bùng nổ của nhà Vivo khi mang đến cho người dùng nhiều sản phẩm với thiết kế và thông số cấu hình vô cùng ấn tượng. Nổi bật trong số đó là Vivo V25 5G mới trình làng vào tháng 10 vừa qua. Với vẻ ngoại bắt mắt cùng hiệu năng mạnh mẽ, sản phẩm hứa hẹn sẽ gây sốt thị trường trong dịp cuối năm nay.', '10490000', '10490000', '1667146820.jpg', 152, '10', 0, 1, 'Vivo V25 5G', 'Vivo V25 5G', 'Vivo V25 5G', '2022-10-30 09:20:20', '2022-10-30 09:20:20');

-- --------------------------------------------------------

--
-- Table structure for table `ratings`
--

CREATE TABLE `ratings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prod_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `stars_rated` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ratings`
--

INSERT INTO `ratings` (`id`, `user_id`, `prod_id`, `stars_rated`, `created_at`, `updated_at`) VALUES
(1, '4', '1', '4', '2022-11-04 06:54:33', '2022-11-04 06:54:33');

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
  `lname` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` int(191) DEFAULT NULL,
  `address1` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address2` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pincode` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `role_as` tinyint(4) NOT NULL DEFAULT 0,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `lname`, `phone`, `address1`, `address2`, `city`, `state`, `country`, `pincode`, `role_as`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Thành', 'user@user.com', NULL, '$2y$10$iJPzj3l9ticQpk7Tujx2n.dxH37zuujQg9ScawlfxmM5UU.TQxGMa', '', 0, '', '', '', '', '', '', 0, NULL, '2022-10-30 00:36:51', '2022-10-30 00:36:51'),
(2, 'Nhóm 17', 'admin@gmail.com', NULL, '$2y$10$BpBjeCpU8YqSboILsHAJaec2jyZOOtUoddEDgeWAinQgEzTQEGI5C', '', 0, '', '', '', '', '', '', 1, NULL, '2022-10-30 00:38:51', '2022-10-30 00:38:51'),
(3, 'userboi', 'userboi@gmail.com', NULL, '$2y$10$FfgVSHd2DvSdMVy9vgTvDOeaHOKdkvAOyp8KFXEpGOPp2DIzVFL/C', '', 0, '', '', '', '', '', '', 0, NULL, '2022-10-30 09:46:13', '2022-10-30 09:46:13'),
(4, 'adminboi', 'adminboi@gmail.com', NULL, '$2y$10$ySoZqwhxMiTmP7Y9.kpK6uxejIuVp2rPQUCUviduHEluCzVlz0TRC', '', 0, '', '', '', '', '', '', 1, NULL, '2022-10-31 00:32:33', '2022-10-31 00:32:33'),
(5, 'abc', 'abc@gmail.com', NULL, '$2y$10$HTctKGFJmuVuPY0CBj1euukBD00LrwxY3VxoSZLUhXxhKaHHR8FIe', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '2022-10-31 06:54:59', '2022-10-31 06:54:59');

-- --------------------------------------------------------

--
-- Table structure for table `wishlists`
--

CREATE TABLE `wishlists` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prod_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wishlists`
--

INSERT INTO `wishlists` (`id`, `user_id`, `prod_id`, `created_at`, `updated_at`) VALUES
(6, '3', '3', '2022-11-01 05:19:50', '2022-11-01 05:19:50'),
(7, '3', '3', '2022-11-01 05:19:54', '2022-11-01 05:19:54');

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
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders_items`
--
ALTER TABLE `orders_items`
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
-- Indexes for table `ratings`
--
ALTER TABLE `ratings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `wishlists`
--
ALTER TABLE `wishlists`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `carts`
--
ALTER TABLE `carts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `orders_items`
--
ALTER TABLE `orders_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `ratings`
--
ALTER TABLE `ratings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `wishlists`
--
ALTER TABLE `wishlists`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
