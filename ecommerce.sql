-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th10 07, 2022 lúc 05:10 AM
-- Phiên bản máy phục vụ: 10.4.25-MariaDB
-- Phiên bản PHP: 7.4.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `ecommerce`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `carts`
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
-- Đang đổ dữ liệu cho bảng `carts`
--

INSERT INTO `carts` (`id`, `user_id`, `prod_id`, `prod_qty`, `created_at`, `updated_at`) VALUES
(1, '2', '1', '1', '2022-10-30 01:08:12', '2022-10-30 01:08:12');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `categories`
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
  `meta_descrip` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_keywords` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `description`, `status`, `popular`, `image`, `meta_title`, `meta_descrip`, `meta_keywords`, `created_at`, `updated_at`) VALUES
(1, 'Apple', 'apple', 'Điện thoại iPhone đến từ thương hiệu Apple nổi tiếng của thế giới, được sản xuất với tiêu chuẩn của Mỹ, nên có mức giá khá cạnh tranh.', 0, 1, '1667790596.png', 'Apple Inc', 'Apple Inc. là một tập đoàn công nghệ đa quốc gia của Mỹ có trụ sở chính tại Cupertino, California, chuyên thiết kế, phát triển và bán thiết bị điện tử', 'iPhone, iPhone 14 Pro, iPad,  iPad Air, iPad, Mac, MacBook Pro - MacBook Air - iMac 24 , Watch', '2022-10-30 00:53:25', '2022-11-06 20:38:51'),
(2, 'Samsung', 'samsung', 'Samsung là một công ty điện tử đa quốc gia của Hàn Quốc', 0, 1, '1667790797.png', 'Samsung', 'Samsung', 'Samsung', '2022-10-30 09:09:03', '2022-11-06 20:13:17'),
(3, 'OPPO', 'oppo', 'OPPO Electronics Corp là nhà sản xuất thiết bị điện tử, điện thoại di động Android Trung Quốc', 0, 1, '1667791101.png', 'OPPO', 'OPPO', 'OPPO', '2022-10-30 09:09:39', '2022-11-06 20:18:21'),
(4, 'Xiaomi', 'xiaomi', 'Xiaomi Mi 11 Xiaomi Inc. là một Tập đoàn sản xuất hàng điện tử Trung Quốc có trụ sở tại Thâm Quyến', 0, 1, '1667791352.png', 'Xiaomi Mi', 'Xiaomi Mi', 'Xiaomi Mi', '2022-10-30 09:10:53', '2022-11-06 20:22:32'),
(5, 'Vivo', 'vivo', 'Vivo là một công ty Trung Quốc chuyên thiết kế, phát triển và sản xuất điện thoại thông minh Android', 0, 0, '1667791467.png', 'Vivo', 'Vivo', 'Vivo', '2022-10-30 09:11:50', '2022-11-06 21:00:57'),
(6, 'OnePlus', 'one-plus', 'Điện thoại OnePlus mang đến cho người dùng những sản phẩm có cấu hình siêu khủng với mức giá rẻ, hấp dẫn đến người sử dụng.', 0, 0, '1667791915.png', 'Điện thoại OnePlus', 'Điện thoại OnePlus mang đến cho người dùng những sản phẩm có cấu hình siêu khủng với mức giá rẻ, hấp dẫn đến người sử dụng.\r\nDo đó các sản phẩm của OnePlus chủ yếu tập trung vào phân khúc \"smartphone cao cấp\".', 'oneplus', '2022-11-06 20:31:55', '2022-11-06 21:01:03'),
(7, 'Google', 'google', 'Google LLC là một công ty công nghệ đa quốc gia của Mỹ, chuyên về các dịch vụ và sản phẩm liên quan đến Internet, bao gồm các công nghệ quảng cáo trực tuyến, công cụ tìm kiếm, điện toán đám mây, phần mềm và phần cứng.', 0, 1, '1667793613.png', 'google', 'google pixel', 'google, google pixel, pixel', '2022-11-06 21:00:13', '2022-11-06 21:00:13');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `failed_jobs`
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
-- Cấu trúc bảng cho bảng `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `migrations`
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
(41, '2022_11_04_013725_create_ratings_table', 4),
(42, '2022_11_05_141930_create_reviews_table', 4);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fname` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lname` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address1` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address2` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
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
-- Đang đổ dữ liệu cho bảng `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `fname`, `lname`, `email`, `phone`, `address1`, `address2`, `city`, `state`, `country`, `pincode`, `total_price`, `status`, `message`, `tracking_no`, `created_at`, `updated_at`) VALUES
(1, '4', 'Thanh', 'Thu', 'adminboi@gmail.com', '0973674869', '34 Nghúds', '56 Au co', 'HCM', 'dhfhf', 'Việt Nam', '777777', '71480000', 0, NULL, 'Nhóm 17 3759', '2022-11-04 06:53:33', '2022-11-04 06:53:33'),
(2, '3', 'Phạm', 'Bội', 'phamngocboi109@gmail.com', '0795889435', '606/154 đường 3/2 phường 14 quận 10', NULL, 'TP HCM', '112', '122', '12121', '17980000', 0, NULL, 'Nhóm 17 7237', '2022-11-05 08:15:35', '2022-11-05 08:15:35'),
(3, '3', 'Phạm', 'Bội', 'phamngocboi109@gmail.com', '0795889435', '606/154 đường 3/2 phường 14 quận 10', NULL, 'TP HCM', '123', '123', '123', '59980000', 0, NULL, 'Nhóm 17 9952', '2022-11-05 19:43:11', '2022-11-05 19:43:11'),
(4, '1', 'Phạm', 'Bội', 'phamngocboi109@gmail.com', '0795889435', '606/154 đường 3/2 phường 14 quận 10', NULL, 'TP HCM', 'asdasd', 'asdasd', 'asdasd', '29990000', 0, NULL, 'Nhóm 17 8548', '2022-11-06 04:39:36', '2022-11-06 04:39:36'),
(5, '1', 'ád', 'ádd', 'sadads', 'ádasd', 'ádas', 'đâsd', 'ádaasdasd', 'ádasd', 'ádasd', 'ádasd', '29990000', 0, NULL, 'Nhóm 17 2980', '2022-11-06 04:44:29', '2022-11-06 04:44:29'),
(6, '4', 'user', 'boi', 'userboi@gmail.com', '123456789', '123456sdf', 'sdfdsf', 'dsfdf', 'sdfsdf', 'sdfsdf', 'sdfsdfdsff', '25980000', 0, NULL, 'Nhóm 17 8296', '2022-11-06 06:17:52', '2022-11-06 06:17:52'),
(7, '4', 'userboi', 'boi', 'userboi@gmail.com', '123456987', '123sdf', NULL, 'sdfsdfsd', 'sdfsdf', 'sdfsdf', 'dsfsdf', '10490000', 0, NULL, 'Nhóm 17 1605', '2022-11-06 06:20:14', '2022-11-06 06:20:14'),
(8, '4', 'userboi', 'boiem', 'userboi@gmail.com', '123456798', 'sdfsdf', 'fsfsdf', 'sdfsdfsf', 'sdfsdf', 'sfsdfsdf', 'sdfsdfsdf', '16990000', 0, NULL, 'Nhóm 17 4163', '2022-11-06 06:22:21', '2022-11-06 06:22:21'),
(9, '4', 'userboi', 'boiem', 'adminboi@gmail.com', '123456798', 'sdfsdf', 'fsfsdf', 'sdfsdfsf', 'sdfsdf', 'sfsdfsdf', 'sdfsdfsdf', '16990000', 0, NULL, 'Nhóm 17 1693', '2022-11-06 06:28:13', '2022-11-06 06:28:13'),
(10, '4', 'userboi', 'boiem', 'adminboi@gmail.com', '123456798', 'sdfsdf', 'fsfsdf', 'sdfsdfsf', 'sdfsdf', 'sfsdfsdf', 'sdfsdfsdf', '17980000', 0, NULL, 'Nhóm 17 3965', '2022-11-06 06:32:42', '2022-11-06 06:32:42'),
(11, '4', 'userboi', 'boiem', 'adminboi@gmail.com', '123456798', 'sdfsdf', 'fsfsdf', 'sdfsdfsf', 'sdfsdf', 'sfsdfsdf', 'sdfsdfsdf', '84950000', 0, NULL, 'Nhóm 17 1778', '2022-11-06 06:40:17', '2022-11-06 06:40:17'),
(12, '4', 'userboi', 'boiem', 'adminboi@gmail.com', '123456798', 'sdfsdf', 'fsfsdf', 'sdfsdfsf', 'sdfsdf', 'sfsdfsdf', 'sdfsdfsdf', '59980000', 0, NULL, 'Nhóm 17 9130', '2022-11-06 06:43:27', '2022-11-06 06:43:27');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orders_items`
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
-- Đang đổ dữ liệu cho bảng `orders_items`
--

INSERT INTO `orders_items` (`id`, `order_id`, `prod_id`, `qty`, `price`, `created_at`, `updated_at`) VALUES
(1, '1', '1', '1', '29990000', '2022-11-04 06:53:33', '2022-11-04 06:53:33'),
(2, '1', '3', '1', '41490000', '2022-11-04 06:53:33', '2022-11-04 06:53:33'),
(3, '2', '2', '2', '8990000', '2022-11-05 08:15:35', '2022-11-05 08:15:35'),
(4, '3', '1', '2', '29990000', '2022-11-05 19:43:11', '2022-11-05 19:43:11'),
(5, '4', '1', '1', '29990000', '2022-11-06 04:39:36', '2022-11-06 04:39:36'),
(6, '5', '1', '1', '29990000', '2022-11-06 04:44:29', '2022-11-06 04:44:29'),
(7, '6', '2', '1', '8990000', '2022-11-06 06:17:52', '2022-11-06 06:17:52'),
(8, '6', '4', '1', '16990000', '2022-11-06 06:17:52', '2022-11-06 06:17:52'),
(9, '7', '5', '1', '10490000', '2022-11-06 06:20:14', '2022-11-06 06:20:14'),
(10, '8', '4', '1', '16990000', '2022-11-06 06:22:21', '2022-11-06 06:22:21'),
(11, '9', '4', '1', '16990000', '2022-11-06 06:28:13', '2022-11-06 06:28:13'),
(12, '10', '2', '2', '8990000', '2022-11-06 06:32:42', '2022-11-06 06:32:42'),
(13, '11', '4', '5', '16990000', '2022-11-06 06:40:17', '2022-11-06 06:40:17'),
(14, '12', '1', '2', '29990000', '2022-11-06 06:43:27', '2022-11-06 06:43:27');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('boipham2003@gmail.com', '$2y$10$xJYha0vlyuQ1tC54v0rV7.9cl8cCPgLKm045h6ZHkd/y5L.rO.j.e', '2022-11-06 07:11:54');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `personal_access_tokens`
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
-- Cấu trúc bảng cho bảng `products`
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
-- Đang đổ dữ liệu cho bảng `products`
--

INSERT INTO `products` (`id`, `cate_id`, `name`, `slug`, `small_description`, `description`, `original_price`, `selling_price`, `image`, `qty`, `tax`, `status`, `trending`, `meta_title`, `meta_keywords`, `meta_description`, `created_at`, `updated_at`) VALUES
(1, 1, 'iPhone 13 Pro Max 256GB', 'iphone-13-pro-max-256gb', 'Siêu phẩm được mong chờ nhất 2021 – iPhone 13 Pro Max đã chính thức xuất hiện', 'Siêu phẩm được mong chờ nhất 2021 – iPhone 13 Pro Max đã chính thức xuất hiện. Ngoại hình không có nhiều đột phá nhưng bên trong là sức mạnh vô địch. Màn hình siêu lớn 6.7 inch hỗ trợ tần số quét 120Hz, chip Apple A15 Bionic hạ gục mọi đối thủ, vượt qua mọi thách thức.', '32990000', '29990000', '1667792434.png', 10, '20', 0, 1, 'iPhone 13 Pro Max 256GB', 'iphone 13', 'iPhone 13 Pro Max 256GB', '2022-10-30 01:07:10', '2022-11-06 20:53:48'),
(2, 3, 'OPPO Reno8 4G 8GB - 256GB', 'oppo-reno8-4g-8gb-256gb', 'Với OPPO Reno8, trải nghiệm nhiếp ảnh trên smartphone đã đột phá ranh giới cũ.', 'Với OPPO Reno8, trải nghiệm nhiếp ảnh trên smartphone đã đột phá ranh giới cũ. Sự kết hợp giữa cảm biến camera siêu nhạy IMX709 với ống kính Micro30x giúp chiếc Reno mới nhất hóa thân thành một công cụ chụp ảnh chuyên nghiệp, một chuyên gia chụp chân dung hàng đầu.', '8990000', '8990000', '1667146582.jpg', 100, '10', 0, 1, 'OPPO Reno8 4G 8GB - 256GB', 'oppo reno', 'OPPO Reno8 4G 8GB - 256GB', '2022-10-30 09:16:22', '2022-11-05 21:04:00'),
(3, 2, 'Samsung Galaxy Z Fold4 5G 512GB', 'samsung-galaxy-zfold4-5g-512gb', 'Galaxy Z Fold4 có lẽ là cái tên nhận được nhiều sự quan tâm', 'Galaxy Z Fold4 có lẽ là cái tên nhận được nhiều sự quan tâm, chú ý đến từ sự kiện Unpacked thường niên của Samsung nhờ sở hữu màn hình lớn cùng cơ chế gấp gọn giúp bạn có thể dễ dàng mang theo bên mình đi bất kỳ nơi đâu. Cùng với đó là sự nâng cấp về hiệu năng và phần mềm giúp thiết bị xử lý tốt hầu hết mọi tác vụ từ làm việc, học tập đến giải trí.', '44490000', '41490000', '1667146680.jpg', 100, '10', 0, 1, 'Samsung Galaxy Z Fold4 5G 512GB', 'samsung galaxy', 'Samsung Galaxy Z Fold4 5G 512GB', '2022-10-30 09:18:00', '2022-10-30 09:18:00'),
(4, 4, 'Xiaomi 12T Pro 12/256GB', 'xiaomi-12t-pro-12-256gb', 'Xiaomi 12T Pro - ứng cử viên sáng giá trong phân khúc cận cao cấp', 'Xiaomi 12T Pro - ứng cử viên sáng giá trong phân khúc cận cao cấp. Không chỉ khoác trên mình bộ cánh sang trọng và cao cấp, 12T Pro còn sở hữu thông số kỹ thuật vô cùng ấn tượng. Đặc biệt là khả năng nhiếp ảnh đỉnh cao với camera lên tới 200MP, màn hình cực sắc nét và một trái tim mạnh mẽ.', '16990000', '16990000', '1667146754.jpg', 145, '10', 0, 1, 'Xiaomi 12T Pro 12/256GB', 'xiaomi 12t pro', 'Xiaomi 12T Pro 12/256GB', '2022-10-30 09:19:14', '2022-11-06 06:40:17'),
(5, 5, 'Vivo V25 5G', 'vivo-v25-5g', 'Năm 2022 dường như là một năm bùng nổ của nhà Vivo khi mang đến cho người dùng nhiều sản phẩm với thiết kế và thông số cấu hình vô cùng ấn tượng', 'Năm 2022 dường như là một năm bùng nổ của nhà Vivo khi mang đến cho người dùng nhiều sản phẩm với thiết kế và thông số cấu hình vô cùng ấn tượng. Nổi bật trong số đó là Vivo V25 5G mới trình làng vào tháng 10 vừa qua. Với vẻ ngoại bắt mắt cùng hiệu năng mạnh mẽ, sản phẩm hứa hẹn sẽ gây sốt thị trường trong dịp cuối năm nay.', '10490000', '10490000', '1667146820.jpg', 152, '10', 0, 1, 'Vivo V25 5G', 'vivo v25', 'Vivo V25 5G', '2022-10-30 09:20:20', '2022-10-30 09:20:20'),
(6, 1, 'iPhone 14 Pro Max 256GB', 'iphone-14-pro-max-256gb', 'Màn hình Dynamic Island - Sự biến mất của màn hình tai thỏ thay thế bằng thiết kế viên thuốc, OLED 6,7 inch, hỗ trợ always-on display.\r\n\r\nCấu hình iPhone 14 Pro Max mạnh mẽ, hiệu năng cực khủng từ chipset A16 Bionic.\r\n\r\nLàm chủ công nghệ nhiếp ảnh - Camera sau 48MP, cảm biến TOF sống động.\r\n\r\nPin liền lithium-ion kết hợp cùng công nghệ sạc nhanh cải tiến.', 'iPhone 14 Pro Max có sự cải thiện lớn màn hình so với iPhone 13 Pro Max. Sự khác biệt giữ phiên bản iPhone 14 Pro Max 256GB và bản tiêu chuẩn 128GB chỉ là bộ nhớ trong. Dưới đây là một số cải tiến nổi bật trên iPhone 14 Pro Max mà có thể bạn chưa biết!\r\n\r\nKích thước màn hình iPhone 14 Pro Max vẫn là 6.1 inch tuy nhiên phần “tai thỏ” đã được thay thế bằng một đường cắt hình viên thuốc. Apple gọi đây là Dynamic Island - nơi chứa camera Face ID và một đường cắt hình tròn thứ hai cho camera trước.\r\n\r\nNgoài ra, iPhone 14 Pro Max có tính năng màn hình luôn bật hoạt động (Always-on Display) với tiện ích màn hình khóa mới trên iOS 16. Người dùng có thể xem các thông tin như lời nhắc, sự kiện lịch và thời tiết mà không cần bật máy lên để xem. Thậm chí, có một trạng thái ngủ cho hình nền, trạng thái này sẽ làm tối hình nền để sử dụng ít pin hơn.\r\n\r\niPhone 14 Pro Max được trang bị bộ vi xử lý Apple A16 Bionic. Apple đã tập trung vào hiệu quả sử dụng năng lượng, màn hình và camera với con chip mới của mình. CPU sáu nhân bao gồm hai nhân hiệu suất cao sử dụng năng lượng thấp hơn 20% và bốn nhân tiết kiệm pin chỉ sử dụng một phần ba năng lượng so với chip của các đối thủ cạnh tranh.', '39000000', '38999999', '1667793049.png', 20, '10', 0, 1, 'iPhone 14 Pro Max', 'iphone 14', 'iPhone 14 Pro Max', '2022-11-06 20:50:49', '2022-11-06 20:50:49');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `ratings`
--

CREATE TABLE `ratings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prod_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `stars_rated` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `reviews`
--

CREATE TABLE `reviews` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prod_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_review` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
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
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `lname`, `phone`, `address1`, `address2`, `city`, `state`, `country`, `pincode`, `role_as`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Thành', 'user@user.com', NULL, '$2y$10$iJPzj3l9ticQpk7Tujx2n.dxH37zuujQg9ScawlfxmM5UU.TQxGMa', '', 0, '', '', '', '', '', '', 0, NULL, '2022-10-30 00:36:51', '2022-10-30 00:36:51'),
(2, 'Nhóm 17', 'admin@gmail.com', NULL, '$2y$10$BpBjeCpU8YqSboILsHAJaec2jyZOOtUoddEDgeWAinQgEzTQEGI5C', '', 0, '', '', '', '', '', '', 1, NULL, '2022-10-30 00:38:51', '2022-10-30 00:38:51'),
(3, 'userboi', 'userboi@gmail.com', NULL, '$2y$10$FfgVSHd2DvSdMVy9vgTvDOeaHOKdkvAOyp8KFXEpGOPp2DIzVFL/C', '', 0, '', '', '', '', '', '', 0, NULL, '2022-10-30 09:46:13', '2022-10-30 09:46:13'),
(4, 'userboi', 'adminboi@gmail.com', NULL, '$2y$10$ySoZqwhxMiTmP7Y9.kpK6uxejIuVp2rPQUCUviduHEluCzVlz0TRC', 'boiem', 123456798, 'sdfsdf', 'fsfsdf', 'sdfsdfsf', 'sdfsdf', 'sfsdfsdf', 'sdfsdfsdf', 1, NULL, '2022-10-31 00:32:33', '2022-11-06 06:22:21'),
(5, 'abc', 'abc@gmail.com', NULL, '$2y$10$HTctKGFJmuVuPY0CBj1euukBD00LrwxY3VxoSZLUhXxhKaHHR8FIe', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '2022-10-31 06:54:59', '2022-10-31 06:54:59'),
(6, 'boi', 'boipham2003@gmail.com', NULL, '$2y$10$ymp3CCQRsMnvYaDTSmkxv.Yhnwx/I.p6M8DwuV4lLbWkVrB5526KO', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '2022-11-06 07:11:00', '2022-11-06 07:11:00');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wishlists`
--

CREATE TABLE `wishlists` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prod_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `wishlists`
--

INSERT INTO `wishlists` (`id`, `user_id`, `prod_id`, `created_at`, `updated_at`) VALUES
(10, '4', '2', '2022-11-06 06:32:34', '2022-11-06 06:32:34');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `carts`
--
ALTER TABLE `carts`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Chỉ mục cho bảng `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `orders_items`
--
ALTER TABLE `orders_items`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Chỉ mục cho bảng `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Chỉ mục cho bảng `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `ratings`
--
ALTER TABLE `ratings`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Chỉ mục cho bảng `wishlists`
--
ALTER TABLE `wishlists`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `carts`
--
ALTER TABLE `carts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT cho bảng `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT cho bảng `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT cho bảng `orders_items`
--
ALTER TABLE `orders_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT cho bảng `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `ratings`
--
ALTER TABLE `ratings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `wishlists`
--
ALTER TABLE `wishlists`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
