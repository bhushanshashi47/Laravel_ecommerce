-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 14, 2019 at 07:56 PM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.3.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `2018-19`
--
CREATE DATABASE IF NOT EXISTS `2018-19` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `2018-19`;

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE `courses` (
  `id` int(10) UNSIGNED NOT NULL,
  `CourseCode` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `CourseName` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `CourseDuration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Price` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`id`, `CourseCode`, `CourseName`, `CourseDuration`, `Price`, `created_at`, `updated_at`) VALUES
(1, 'INT212', 'DBM', '1weeks', '20$', '2019-02-22 02:15:40', '2019-02-22 02:15:40'),
(2, 'INT212', 'DBghvb', '1weeks', '20$', '2019-02-22 04:13:27', '2019-02-22 04:13:27'),
(3, 'INT217', 'DBghv', '3weeks', '40$', '2019-02-22 04:14:07', '2019-02-22 04:14:07'),
(4, 'INT213', 'D', '3weeks', '40$', '2019-02-22 04:14:38', '2019-02-22 04:15:08');

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
(22, '2014_10_12_000000_create_users_table', 1),
(23, '2014_10_12_100000_create_password_resets_table', 1),
(24, '2019_02_22_071243_create_courses_table', 1),
(25, '2019_03_01_073825_create_posts', 2);

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
  `id` int(10) UNSIGNED NOT NULL,
  `subject` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT for table `courses`
--
ALTER TABLE `courses`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Database: `abc`
--
CREATE DATABASE IF NOT EXISTS `abc` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `abc`;
--
-- Database: `bestlaravel2018`
--
CREATE DATABASE IF NOT EXISTS `bestlaravel2018` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `bestlaravel2018`;

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(10) UNSIGNED NOT NULL,
  `products_id` int(11) NOT NULL,
  `product_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_color` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `size` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` double(8,2) NOT NULL,
  `quantity` int(11) NOT NULL,
  `user_email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `session_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `products_id`, `product_name`, `product_code`, `product_color`, `size`, `price`, `quantity`, `user_email`, `session_id`, `created_at`, `updated_at`) VALUES
(35, 34, 'Lenovo ThinkPad', 'SKU-Lenovo X1', 'Black', '15 inch', 10.00, 2, 'weshare@gmail.com', 'OrHCEFHcACdGNXet3m2jVbzlJS0VybkkeknXXilx', '2018-12-06 01:32:01', '2018-12-06 01:32:01'),
(36, 28, 'Lexus Rx 330', 'SKU-Lexus2', 'White', 'Size Black', 11.00, 2, 'weshare@gmail.com', 'B83RzHDOKMXecDTtpwm4rlF7JXqzQOnx7IkKdalD', '2019-04-13 14:49:16', '2019-04-13 14:49:16'),
(37, 32, 'Vionic Shoes Brand', 'SKU-Vionic1', 'All Colors', '20', 10.00, 1, 'weshare@gmail.com', 'tgESYYbzLTwQ0me00b6kPeqQtj7EFJdeqU30FgVg', '2019-04-14 05:34:11', '2019-04-14 05:34:11'),
(38, 31, 'House', 'SKU-House1', 'White and Brown', '5*20', 25.00, 4, 'weshare@gmail.com', 'tgESYYbzLTwQ0me00b6kPeqQtj7EFJdeqU30FgVg', '2019-04-14 05:49:51', '2019-04-14 05:49:51'),
(41, 47, 'Apple MacBook Air', '1466', 'Grey', '14.1', 1006.00, 20, 'weshare@gmail.com', 'YHazxzfZdalZbSApE9dZitE7kkuGfGx1j6mCv9L2', '2019-04-14 12:12:29', '2019-04-14 12:12:29');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '0',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `parent_id`, `name`, `description`, `url`, `status`, `remember_token`, `created_at`, `updated_at`) VALUES
(35, 33, 'Notebook', 'HP Notebook Laptops', 'http://www.hp.com/', 1, NULL, '2019-04-14 11:29:02', '2019-04-14 11:29:02'),
(36, 33, 'Pavilion', 'HP Pavilion Laptops', 'http://www.hp.com/', 1, NULL, '2019-04-14 11:29:49', '2019-04-14 11:29:49'),
(31, 30, 'Inspiron', 'Dell Inspiron', 'http://www.dell.com/', 1, NULL, '2019-04-14 10:30:55', '2019-04-14 10:30:55'),
(32, 30, 'Vostro', 'Dell Vostro Laptops', 'http://www.dell.com/', 1, NULL, '2019-04-14 10:31:40', '2019-04-14 10:31:40'),
(33, 0, 'HP', 'HP products', 'http://www.hp.com/', 1, NULL, '2019-04-14 11:24:23', '2019-04-14 11:24:23'),
(34, 0, 'MacBook Air', 'Apple Laptops', 'https://www.apple.com/in', 1, NULL, '2019-04-14 11:26:12', '2019-04-14 11:26:12'),
(30, 0, 'DELL', 'Inspiron and Vostro Laptops', 'http://www.dell.com/', 1, NULL, '2019-04-14 10:28:51', '2019-04-14 10:28:51'),
(27, 0, 'Lenovo', 'New Generation Laptop', 'https://www.lenovo.com/in', 1, NULL, '2019-04-14 04:23:35', '2019-04-14 04:23:35'),
(28, 27, 'Ideapad', 'Lenovo Ideapad Laptops', 'https://www.lenovo.com/in', 1, NULL, '2019-04-14 04:26:15', '2019-04-14 04:26:15'),
(29, 27, 'Yoga', 'Lenovo Yoga', 'https://www.lenovo.com/in', 1, NULL, '2019-04-14 04:27:35', '2019-04-14 04:27:35');

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `id` int(10) UNSIGNED NOT NULL,
  `country_code` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`id`, `country_code`, `country_name`, `created_at`, `updated_at`) VALUES
(6, 'GE', 'GERMANY', '2019-04-07 18:30:00', '2019-04-13 18:30:04'),
(5, 'FR', 'FRANCE', '2019-04-13 18:33:00', '2019-04-13 18:39:00'),
(4, 'SL', 'SRI LANKA', '2019-04-08 18:30:00', '2019-04-08 18:41:00'),
(3, 'BA', 'BANGLADESH', '2019-04-13 18:38:05', '2019-04-11 18:40:07'),
(2, 'AU', 'AUSTRALIA', '2019-04-08 18:36:00', '2019-04-13 18:39:00'),
(1, 'IN', 'INDIA', '2019-04-08 18:30:00', '2019-04-08 21:30:00');

-- --------------------------------------------------------

--
-- Table structure for table `coupons`
--

CREATE TABLE `coupons` (
  `id` int(10) UNSIGNED NOT NULL,
  `coupon_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` int(11) NOT NULL,
  `amount_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiry_date` date NOT NULL,
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `coupons`
--

INSERT INTO `coupons` (`id`, `coupon_code`, `amount`, `amount_type`, `expiry_date`, `status`, `created_at`, `updated_at`) VALUES
(8, 'DELL001', 20, 'Percentage', '2019-09-01', 1, '2019-04-14 11:52:53', '2019-04-14 11:52:53'),
(7, 'LENOVO001', 40, 'Percentage', '2019-09-01', 1, '2019-04-13 14:48:12', '2019-04-14 10:25:04'),
(9, 'HP001', 40, 'Percentage', '2019-09-01', 1, '2019-04-14 11:53:52', '2019-04-14 11:53:52'),
(10, 'MAC01', 10, 'Percentage', '2019-09-01', 1, '2019-04-14 11:54:19', '2019-04-14 11:54:19');

-- --------------------------------------------------------

--
-- Table structure for table `delivery_address`
--

CREATE TABLE `delivery_address` (
  `id` int(10) UNSIGNED NOT NULL,
  `users_id` int(11) NOT NULL,
  `users_email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pincode` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `delivery_address`
--

INSERT INTO `delivery_address` (`id`, `users_id`, `users_email`, `name`, `address`, `city`, `state`, `country`, `pincode`, `mobile`, `created_at`, `updated_at`) VALUES
(2, 4, 'weshare@gmail.com', 'weshare', 'address', 'city', 'state', 'Cambodia', 'pincode', 'mobile', NULL, NULL),
(3, 1, 'demo@gmail.com', 'HENG MENGHEANG', 'esrdtfcg', 'bk', 'bj', 'INDIA', '45', '598+', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(3, '2014_10_12_000000_create_users_table', 2),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(8, '2018_10_20_040609_create_categories_table', 3),
(9, '2018_10_24_075802_create_products_table', 4),
(10, '2018_11_08_024109_create_product_att_table', 5),
(11, '2018_11_20_055123_create_tblgallery_table', 6),
(12, '2018_11_26_070031_create_cart_table', 7),
(13, '2018_11_28_072535_create_coupons_table', 8),
(15, '2018_12_01_042342_create_countries_table', 10),
(19, '2018_12_03_043804_add_more_fields_to_users_table', 14),
(17, '2018_12_03_093548_create_delivery_address_table', 12),
(18, '2018_12_05_024718_create_orders_table', 13);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(10) UNSIGNED NOT NULL,
  `users_id` int(11) NOT NULL,
  `users_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pincode` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shipping_charges` double(8,2) NOT NULL,
  `coupon_code` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `coupon_amount` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_status` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_method` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `grand_total` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `users_id`, `users_email`, `name`, `address`, `city`, `state`, `pincode`, `country`, `mobile`, `shipping_charges`, `coupon_code`, `coupon_amount`, `order_status`, `payment_method`, `grand_total`, `created_at`, `updated_at`) VALUES
(7, 1, 'demo@gmail.com', 'HENG MENGHEANG', 'esrdtfcg', 'bk', 'bj', '45', 'Belize', '598+', 0.00, 'Coupon001', '2.2', 'success', 'COD', '19.8', '2019-04-13 14:51:46', '2019-04-13 14:51:46'),
(8, 1, 'demo@gmail.com', 'HENG MENGHEANG', 'esrdtfcg', 'bk', 'bj', '45', 'GERMANY', '598+', 0.00, 'DELL001', '1080', 'success', 'COD', '4320', '2019-04-14 12:08:49', '2019-04-14 12:08:49'),
(9, 1, 'demo@gmail.com', 'HENG MENGHEANG', 'esrdtfcg', 'bk', 'bj', '45', 'INDIA', '598+', 0.00, 'DELL001', '4024', 'success', 'Paypal', '16096', '2019-04-14 12:13:28', '2019-04-14 12:13:28');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(10) UNSIGNED NOT NULL,
  `categories_id` int(11) NOT NULL,
  `p_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `p_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `p_color` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` double(8,2) NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `categories_id`, `p_name`, `p_code`, `p_color`, `description`, `price`, `image`, `created_at`, `updated_at`) VALUES
(43, 30, 'Dell Inspiron 14', '3000', 'Grey, Red, Black, Blue', 'The Dell Inspiron 14 3467 Laptop is a wonderful combination of style and performance which improves your productivity and offers immersive entertainment. This device features a 7th Gen Intel Core i3 Processor, Ubuntu Linux Operating System, and a 35.56 cm (14) TrueLife LED-Backlit Display to make it ideal for work and play.', 26490.00, '1555258045-dell-inspiron-14.jpeg', '2019-04-14 10:37:25', '2019-04-14 10:37:25'),
(39, 28, 'Lenovo Ideapad 330', '330', 'Grey, Red', 'Amp up your productivity, Rapid Charge, any time, Ample storage for your photos, movies, &amp; more,Windows 10 keeps getting better', 26490.00, '1555237661-lenovo-ideapad-330.jpg', '2019-04-14 04:32:09', '2019-04-14 10:20:34'),
(40, 29, 'Lenovo Yoga 530', '530', 'Grey, Red, Black', 'The Lenovo Ideapad 330 (81F400GLIN) laptop features a 14-inch FHD IPS LED Anti-glare display with a screen resolution of 1,920 x 1,080 pixels. The laptop is available in Platinum Grey coloured option and it weighs of around 1.67Kg. The device is driven by a 2.2GHz Intel Core i3-8130U (8th Gen) processor assisted by a 4GB of DDR4 RAM. Furthermore, the combination is assisted by an Intel HD 620. The laptop runs on Windows 10 Home Premium operating system sailing upon 64-bit architecture.<br>', 47282.00, '1555255796-lenovo-yoga-730.png', '2019-04-14 09:59:58', '2019-04-14 10:18:14'),
(41, 27, 'Lenovo Yoga 730', 'Yoga530', 'Grey, Red, Black', 'Stylish 14-inch Intel-powered 2-in-1, Active Pen support,&nbsp; Optional fingerprint reader<br>', 49780.00, '1555256481-lenovo-yoga-730.png', '2019-04-14 10:11:23', '2019-04-14 10:17:36'),
(42, 27, 'Lenovo Ideapad 530', 'Idea330', 'Grey, Red, Blue', 'The Lenovo Ideapad 330 (81F400GLIN) laptop features a 14-inch FHD IPS LED Anti-glare display with a screen resolution of 1,920 x 1,080 pixels. The laptop is available in Platinum Grey coloured option and it weighs of around 1.67Kg. The device is driven by a 2.2GHz Intel Core i3-8130U (8th Gen) processor assisted by a 4GB of DDR4 RAM. Furthermore, the combination is assisted by an Intel HD 620. The laptop runs on Windows 10 Home Premium operating system sailing upon 64-bit architecture.', 31965.00, '1555256675-lenovo-ideapad-330.jpg', '2019-04-14 10:14:35', '2019-04-14 10:16:46'),
(44, 30, 'Dell Inspiron 15', '3000 series', 'Grey, Red, Blue', 'The Dell Inspiron 14 3467 Laptop is a wonderful combination of style and performance which improves your productivity and offers immersive entertainment. This device features a 7th Gen Intel Core i3 Processor, Ubuntu Linux Operating System, and a 35.56 cm (14) TrueLife LED-Backlit Display to make it ideal for work and play.', 26490.00, '1555258294-dell-inspiron-14.jpg', '2019-04-14 10:41:36', '2019-04-14 10:42:17'),
(45, 31, 'Dell Inspiron 14', '14 series', 'Black, Red, Blue', 'The Dell Inspiron 14 3467 Laptop is a wonderful combination of style and performance which improves your productivity and offers immersive entertainment. This device features a 7th Gen Intel Core i3 Processor, Ubuntu Linux Operating System, and a 35.56 cm (14) TrueLife LED-Backlit Display to make it ideal for work and play.', 36490.00, '1555260053-dell-inspiron-14.jpeg', '2019-04-14 11:10:55', '2019-04-14 11:10:55'),
(46, 32, 'Dell Vostro 15', 'Vostro 15', 'Black, white', 'Dell Vostro 15 3000 Pentium Dual Core - (4 GB/1 TB HDD/Linux) 3568 Laptop&nbsp;&nbsp;(15.6 inch, Black, 2.18 kg)', 24175.00, '1555260440-dell-vostro-15.jpeg', '2019-04-14 11:17:21', '2019-04-14 11:17:21'),
(47, 34, 'Apple MacBook Air', 'A1466', 'Grey', 'Apple MacBook Air Core i5 8th Gen - (8 GB/128 GB SSD/Mac OS Mojave) MRE82HN/A&nbsp;&nbsp;(13.3 inch, Space Grey, 1.25 kg)', 106500.00, '1555261525-apple-macbook-air.jpeg', '2019-04-14 11:35:26', '2019-04-14 11:35:26'),
(48, 35, 'HP 14q Core', '14q', 'Black', 'HP 14q Core i3 7th Gen - (4 GB/1 TB HDD/DOS) 14q-cs0009TU Thin and Light Laptop&nbsp;&nbsp;(14 inch, Jet Black, 1.47 kg)', 26490.00, '1555261863-hp-14q-core.jpeg', '2019-04-14 11:41:03', '2019-04-14 11:41:03'),
(49, 36, 'HP Pavilion', '15-CS1052TX', 'Silver, Grey', 'HP Pavilion Core i7 7th Gen - (8 GB/2 TB HDD/Windows 10 Home/4 GB Graphics) 15-CS1052TX Thin and Light Laptop&nbsp;&nbsp;(15.6 inch, Mineral Silver, With MS Office)', 72490.00, '1555262110-hp-pavilion.jpeg', '2019-04-14 11:45:11', '2019-04-14 11:45:11'),
(50, 33, 'HP Spectre Folio', 'X360', 'Brown', 'HP Spectre Folio x360 Core i7 8th Gen - (16 GB/512 GB SSD/Windows 10 Pro) 13-ak0040TU 2 in 1 Laptop&nbsp;&nbsp;(13.3 inch, Cognac Brown, 1.47 kg, With MS Office)', 215909.00, '1555262331-hp-spectre-folio.jpeg', '2019-04-14 11:48:52', '2019-04-14 11:48:52');

-- --------------------------------------------------------

--
-- Table structure for table `product_att`
--

CREATE TABLE `product_att` (
  `id` int(10) UNSIGNED NOT NULL,
  `products_id` int(11) NOT NULL,
  `sku` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `size` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` double(8,2) NOT NULL,
  `stock` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_att`
--

INSERT INTO `product_att` (`id`, `products_id`, `sku`, `size`, `price`, `stock`, `created_at`, `updated_at`) VALUES
(49, 50, 'x360', '14', 2000.00, 1, '2019-04-14 11:50:07', '2019-04-14 11:50:13'),
(48, 48, '14q', '15.6', 400.00, 5, '2019-04-14 11:42:06', '2019-04-14 11:42:11'),
(47, 47, '1466', '14.1', 1006.00, 20, '2019-04-14 11:38:03', '2019-04-14 11:38:11'),
(46, 46, '15 series', '15.6', 400.00, 1, '2019-04-14 11:19:01', '2019-04-14 11:19:06'),
(45, 45, '3000 series', '14', 500.00, 10, '2019-04-14 11:12:21', '2019-04-14 11:12:28'),
(44, 44, '15 series', '14', 800.00, 5, '2019-04-14 10:43:12', '2019-04-14 10:43:25'),
(43, 43, '3000 series', '14', 400.00, 2, '2019-04-14 10:39:12', '2019-04-14 10:39:18'),
(42, 41, '530 Yoga Series', '16.2', 800.00, 10, '2019-04-14 10:21:47', '2019-04-14 10:22:02'),
(41, 41, '330 Yoga Series', '14.5', 500.00, 10, '2019-04-14 10:21:25', '2019-04-14 10:22:02'),
(40, 42, '530 Series', '15.5', 500.00, 10, '2019-04-14 10:19:06', '2019-04-14 10:23:43'),
(39, 42, '330 Series', '16.2', 700.00, 10, '2019-04-14 10:18:47', '2019-04-14 10:23:43'),
(38, 39, '530 Series', '16.5', 500.00, 10, '2019-04-14 10:04:13', '2019-04-14 10:04:27'),
(37, 40, '530 Series', '16.5', 600.00, 10, '2019-04-14 10:02:52', '2019-04-14 10:03:01'),
(36, 40, '730 Series', '14', 800.00, 5, '2019-04-14 10:02:13', '2019-04-14 10:03:01'),
(35, 39, 'BLUE', '14.5', 600.00, 10, '2019-04-14 05:04:56', '2019-04-14 10:04:27');

-- --------------------------------------------------------

--
-- Table structure for table `tblgallery`
--

CREATE TABLE `tblgallery` (
  `id` int(10) UNSIGNED NOT NULL,
  `products_id` int(11) NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tblgallery`
--

INSERT INTO `tblgallery` (`id`, `products_id`, `image`, `created_at`, `updated_at`) VALUES
(42, 50, '5037941555262360.jpeg', '2019-04-14 11:49:20', '2019-04-14 11:49:20'),
(41, 49, '4365181555262146.jpeg', '2019-04-14 11:45:47', '2019-04-14 11:45:47'),
(40, 48, '5317091555261887.jpeg', '2019-04-14 11:41:28', '2019-04-14 11:41:28'),
(39, 47, '7291861555261551.jpeg', '2019-04-14 11:35:51', '2019-04-14 11:35:51'),
(38, 46, '4546831555260471.jpeg', '2019-04-14 11:17:52', '2019-04-14 11:17:52'),
(37, 45, '2255991555260076.jpeg', '2019-04-14 11:11:17', '2019-04-14 11:11:17'),
(33, 35, '5320811544065510.jpg', '2018-12-05 20:05:11', '2018-12-05 20:05:11'),
(34, 35, '1153181544065511.jpg', '2018-12-05 20:05:11', '2018-12-05 20:05:11'),
(35, 40, '1241131555256275.jpg', '2019-04-14 10:07:56', '2019-04-14 10:07:56'),
(36, 43, '7169191555258076.jpg', '2019-04-14 10:37:57', '2019-04-14 10:37:57');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `admin` tinyint(4) DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci,
  `city` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pincode` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `admin`, `remember_token`, `created_at`, `updated_at`, `address`, `city`, `state`, `country`, `pincode`, `mobile`) VALUES
(1, 'xz', 'demo@gmail.com', NULL, '$2y$10$m9fNpTgwyBVqqVfsJ9bXUensvx5iqlYhzqmL3khhSpKpgqNQnW0t2', 1, 'GgbMljnITQ8exWXGWsNDYDhJfmr6wvJWOSMAtWpc9QwPfNJLImU8EF4qFjW0', '2018-10-15 02:32:54', '2018-12-05 01:39:52', 'esrdtfcg', 'bk', 'bj', 'INDIA', '45', '598+'),
(4, 'rahul', 'weshare@gmail.com', NULL, '$2y$10$3Ccxg17LYw/.qS7ib5Xcr.T5po6AXUsnjEcEI4IHcQ0MGkcuRfO.O', NULL, NULL, '2018-12-06 01:40:27', '2018-12-06 01:40:27', NULL, NULL, NULL, NULL, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `slug` (`name`);

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `coupons`
--
ALTER TABLE `coupons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `delivery_address`
--
ALTER TABLE `delivery_address`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_att`
--
ALTER TABLE `product_att`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblgallery`
--
ALTER TABLE `tblgallery`
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
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=298;

--
-- AUTO_INCREMENT for table `coupons`
--
ALTER TABLE `coupons`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `delivery_address`
--
ALTER TABLE `delivery_address`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `product_att`
--
ALTER TABLE `product_att`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `tblgallery`
--
ALTER TABLE `tblgallery`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- Database: `book_store`
--
CREATE DATABASE IF NOT EXISTS `book_store` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `book_store`;

-- --------------------------------------------------------

--
-- Table structure for table `book`
--

CREATE TABLE `book` (
  `b_id` int(4) NOT NULL,
  `b_nm` varchar(60) NOT NULL,
  `b_subcat` varchar(25) NOT NULL,
  `b_desc` longtext NOT NULL,
  `b_publisher` varchar(40) NOT NULL,
  `b_edition` varchar(20) NOT NULL,
  `b_isbn` varchar(10) NOT NULL,
  `b_page` int(5) NOT NULL,
  `b_price` int(5) NOT NULL,
  `b_img` longtext NOT NULL,
  `b_pdf` longtext NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `book`
--

INSERT INTO `book` (`b_id`, `b_nm`, `b_subcat`, `b_desc`, `b_publisher`, `b_edition`, `b_isbn`, `b_page`, `b_price`, `b_img`, `b_pdf`) VALUES
(1, 'A Dictionary of Architecture ', '1', 'Containing over 5,000 entries from Aalto to ziggurat, this is the most comprehensive and up-to-date dictionary of architecture in paperback. Beautifully illustrated and written in a clear and concise style, it is an invaluable work of reference for both students of architecture and the general reader, as well as professional architects. Covers all periods of Western architectural history, from ancient times to the present day Concise biographies of leading architects, from Brunelleschi and Imhotep to Le Corbusier and Richard Rogers Over 250 illustrations specially drawn for this volume', 'THE BOOK SHOP', '2007', '89564636 ', 200, 500, 'upload_image/ARC9.jpg', 'upload_ebook/arc.txt'),
(2, 'Elephant Kingdom : Sculptures from Indian Architecture ', '1', 'Elephants occupy a special place in the life and art of India. Since ancient times, they have been treasured and pampered as the ultimate beasts of burden, venerated as the vehicles of gods and kings and even worshipped in their own right. Their legendary attributes of strength, intelligence, nobility and longevity are eulogized in myth, epic and popular literature. In the figural and decorative arts, elephants provide an enduring fascination. Elephant Kingdom traces the myriad stories and symbolisms behind India\'s much-loved animal, through its depictions in architectural sculpture. At the heart of the study is a collection of over 60 colour photographs from a diversity of antique settings-many of them in remote parts of the subcontinent. At centuries-old temples, monasteries, forts and palaces, elephants flank ceremonial entrances, enrich columns and capitals, form balustrades to stairways or stand as enigmatic sentinels of vast courtyards. Some are legendary characters in tales of dreams and salvation; others enact scenes from a faithfully observed natural history. Some transport kings and heroes into battle and the hunt; others are celestial messengers of rain, fertility and good fortune. From monumental freestanding sculptures to finely-worked narrative friezes, the warmth and energy of these depictions bear testimony to the achievements of countless anonymous artisans. ', 'Vikramjit Ram', '2006', '81-88204-6', 250, 1000, 'upload_image/ARC8.jpg', 'upload_ebook/arc2.txt'),
(3, 'Close to Events-Works of Bikash Bhattacharjee', '2', 'Launching his creative career in the late ?50s, Bikash Bhattacharjee stood out among his contemporaries by making hard-edged chiseled realism the core appeal of his canvases when realism or naturalism of every shade was considered a retrograde trend. Bikash?s strengths were his exceptional technical mastery and his power to charge the tangible appearance of the surface with the reality of the depth beneath. He was admired not merely for the near-illusionist evocation of realistic details, but for the obvious or subtle distortions in his imagery as a key to their complex multi-layered meanings. His realistic idiom is fascinatingly robust and compulsive, laced with rich irony, strong-veined allegory and lush visual metaphors. His portrait-based images enact the artist?s own experience of our time with all its dark social and moral tones and textures. Close to Events: Works of Bikash Bhattacharjee deals with Bikash?s early life in an old North Calcutta locality, the urban social ambience that shaped his creative personality and explores why he chose to remain ?close to events? and free from the dominant trends in post-Independence Indian art. It also analyses the technical and stylistic development of art with detailed exposition of some of the themes and subjects in the major series of his paintings. ', 'Manasij Majumder', '2008', '978818973', 250, 2000, 'upload_image/ART6.JPG', 'upload_ebook/art1.docx'),
(4, 'A Social History of Indian Architecture ', '1', 'Studies in Indian architecture have been confined to those exploring the building techniques of palaces, temples, and tombs. Little attention has traditionally been paid by scholars to the patterns and influences involved in the making of domestic residences, market places, inns, community halls, courts, and other \'lesser\' buildings. The result is the emergence of a very partial picture of what constitutes architecture in India. This volume se eks to overcome this inadequacy by examining the geographical, historical, and functional aspects of architecture in India. Looking beyond the point of view of dynasties, periods or religions, the book traces the various social and historical developments in the field. Following a multi-disciplinary approach that emphasizes sociological aspects, the volume examines in detail, settlement patterns, the architecture of individual houses and chaityas, as also structural materials used for their construction, in addition to those of palaces, funerary monuments, temples, mosques, and monasteries. While examining the planning and design orientation of peoples and architectural techniques across India, the volume pays special attention to that of western India especially Gujarat and Rajasthan. The author also addresses rural and urban patterns of setlement and the linkages between the two. He explains regional and period-specific phenomena, while also quoting from ancient accounts of towns. These vary from the typical urban and rural houses to the Muslim aristocratic residences and Rajput palaces. Based on extensive fieldwork, the author also documents family histories, lifestyles and usage of space to provide a comprehensive social history of Indian architecture. Complemented by over eighty figures including photographs, plans, and detailed diagrams, this book will interest scholars of architecture, history, sociology, and the informed lay reader', 'V.S. Pramar ', '2007', '87558769 ', 300, 1000, 'upload_image/ARC10.jpg', 'upload_ebook/arc3.txt'),
(5, 'YOGIS, DESTINY & THE WHEEL OF TIME ', '5', 'Contents: Dedication; Acknowledgements; About the author; Preface; Preface to the 2nd edition; 1. That great guru; 2. Profile of a guru\'s life; 3. Prabhu bejoy Krishna Goswami; 4. I meet my guru; 5. Awakened kundalini; 6. Astrological instruction; 7. Pre-destination: The negative side; 8. Rokadia Hanuman Baba; 9. My Jyotish guru-1; 10. My Jyotish guru-2; 11. Pre-destination & divine bliss; 12. Nagari Das Baba; 13. Ranga Avadhoot; 14. Religion of yogis; 15. Caution & warning; 16. Ecstasies spring from fire-1; 17. Ecstasies spring from fire-2; 18. Ecstasies spring from fire-3; 19. Ecstasies spring from fire-4; 20. Ecstasies spring from fire-5; 21. Ecstasies spring from fire-6; 22. The seers; 23. Astrology, when it is an illumination; 24. Memory glows; 25. Why astrology at all?; 26. Poetical guidance; 27. Bliss & confusion; Index.', 'K.N. Rao', '2005', '2589697 ', 285, 300, 'upload_image/ASTRO1.jpg', 'upload_ebook/ASTR1.doc'),
(6, 'You Deserve, We Conserve A Biotechnological Approach to Wild', '3', 'There is a tremendous wealth of mega-biodiversity in the world. But the very existence of this wealth is under threat due to habitat destruction, pushing animals towards inbreeding depression and thereby paving way for their extinction. This has made essential human intervention and assisted reproductive technologies. Thus, the issues of conservation of wildlife and biodiversity have become the need of the hour, especially in terms of policy making at the government level. You deserve, We Conserve: A Biotechnological Approach to Wildlife Conservation contains 16 articles by scientists engaged in research on the conservation of wildlife, role of reproductive technologies and modern approaches being followed in wildlife conservation. It also deals with various techniques used in field conditions such as chemical capture, molecular genetics, ultrasonography, cryopreservation, wildlife forensics, etc. The present book will be of special interest to professionals engaged in forest and environment related activities, particularly wildlife conservationists, students pursuing their career in veterinary discipline of wild animals and policy makers. It will also be useful for nature enthusiasts, who have an interest in wildlif', 'M W Pandit / S Shivaji', '2006', '9788189866', 160, 659, 'upload_image/forest.jpg', 'upload_ebook/forest.docx'),
(7, 'Visual Basic 2005', '17', '\'VB connectivity\'', 'Pearson', '2009', 'VB111', 350, 120, 'upload_image/comp8.jpg', 'upload_ebook/read.pdf'),
(8, 'Java & Xml', '17', '\'Complete Reference\'', 'TATA Mcgerw Hill', '2010', 'JJ123', 1800, 500, 'upload_image/comp9.jpg', 'upload_ebook/java.pdf'),
(9, 'Microsoft Windows Powershell Step By Step', '29', '\'Learn Microsoft Windows PowerShell step by step with hands-on instruction from a leading Microsoft scripting trainer. This guide features self-paced labs, timesaving tips, and dozens of sample scripts', 'Wilson', '2006', '9788120332', 755, 295, 'upload_image/comp6.jpg', 'upload_ebook/wave.doc'),
(10, 'C# Programming', '17', '\'C# is platform independent,includes namespace,garbage collection,automatic memory management', 'Pearson', '1999', 'c#abd', 450, 300, 'upload_image/1861004877.jpg', 'upload_ebook/intro_C#.pdf'),
(11, 'Java Server Programming', '17', '\'jsp uses  html tags and run on java platform\'', 'BPB Prakashan', '2000', 'jsp123', 1800, 560, 'upload_image/1861004656.jpg', 'upload_ebook/Java_2_5th-www.netbks.com.pdf'),
(12, 'Programming with Perl', '17', 'Perl is programming langauge which is not comfortable to handle.', 'Wrox', '1995', 'perl123', 560, 450, 'upload_image/0596000278.jpg', 'upload_ebook/perl.docx'),
(13, 'HTML for world wide web', '19', 'html uses tags,it\'\'s  not case sensitive,work with own html tagswhich must be enclosed.', 'Elizabeth', '2005', 'htmlabc12', 560, 400, 'upload_image/0201354934.jpg', 'upload_ebook/html.pdf'),
(14, 'ASP Server Pages 3.0', '17', 'Active server pages uses xml files ,it run on internet explorer or other browser..', 'Microsoft', '1995', 'asp123', 1150, 950, 'upload_image/1861003382.jpg', 'upload_ebook/asp.doc'),
(15, 'Perl and CGI', '17', 'CGI for graphics purpose', 'Pearson', '1999', 'pc2343', 450, 300, 'upload_image/020135358X.gif', 'upload_ebook/perl1.pdf'),
(16, 'A Biological Survey for the Nation', '27', 'The National Biological Survey will produce the map we need to avoid the\\r\\neconomic and environmental \"train wrecks\" we see scattered across the country.\\r\\nNBS will provide the scientific knowledge America needs to balance the\\r\\ncompatible goals of ecosystem protection and economic progress', 'National Research Council', '1994', '0-309-5860', 224, 450, 'upload_image/biology.gif', 'upload_ebook/g.pdf'),
(17, 'Book of Tea', '23', 'The Philosophy of Tea is not mere aestheticism in the ordinary acceptance of the term, for it expresses conjointly with ethics and religion our whole point of view about man and nature. It is hygiene, for it enforces cleanliness.It represents the true spirit of Eastern democracy by making all its votaries aristocrats in taste. (from \"The Book of Tea\")', 'Kakuzo Okakura', '2008', 'tea1', 80, 100, 'upload_image/bookoftea.jpg', 'upload_ebook/tea.docx'),
(18, 'Coffee : Scrumptious Drinks', '23', 'Every day, millions search for The Perfect Cup of Coffee in caf s, diners, and kitchens around the world. Here, coffee guru Betty Rosbottom offers easy-to-follow recipes guaranteed to please \\r\\nanyone who takes delight in sampling, sipping, and serving exquisite coffee concoctions.', 'Chronicle Books', '2007', 'cofee1', 96, 100, 'upload_image/cofee.jpg', 'upload_ebook/cofee.docx'),
(19, 'Stone Soup', '24', 'A hungry traveler tricks a little old lady into cooking him soup starting with a stone.', 'Marcia Brown', '1970', 'soup45', 120, 350, 'upload_image/stonesoup.jpg', 'upload_ebook/soup.docx'),
(20, 'Pasta Perfection', '22', 'This new series will help you get back into the kitchen and experience the fun of creating sensationalmouth-watering meals thought he simplicity of easy-to-read, step-by-step ...', 'Belina Jeffer', '2004', 'p12', 80, 100, 'upload_image/pasta1.jpg', 'upload_ebook/pasta1.docx'),
(21, 'Bhartiya Vynjano ka khajana', '25', 'Vyanjan made by Sanjeev kapoor,he makes very sweet and delicious dishes', 'Sanjeev Kapoor', '2009', 'vya12', 120, 350, 'upload_image/bhartiya.jpg', 'upload_ebook/Vyanjan.docx'),
(22, 'Descriptious du Cafeier', '23', 'millions search for The Perfect Cup of Coffee in caf s, diners, and kitchens around the world. Here, coffee guru Betty Rosbottom offers easy-to-follow recipes guaranteed to please anyone who takes delight in sampling, sipping, and serving exquisite coffee concoctions.', 'International resource institute', '1996', 'caffee2', 96, 100, 'upload_image/cofee2.jpg', 'upload_ebook/Coffee1.docx'),
(23, 'Your Income-Tax 2010', '8', 'A guide to income tax returns provides information on the most recent tax legislation, tax-filing tips, advice on how to reduce tax liabilities, helpful financial advice, and sample tax forms, worksheets,', 'J K Lasser Institute', '2009', 'it-3433', 848, 1000, 'upload_image/tax1.jpg', 'upload_ebook/Income Tax.pptx'),
(24, 'Your Income-Tax Professional Edition', '8', 'Provides information about filing requirements, exemptions, income, deductions, tax credits, shelters, and tax law.', 'J K Lasser Institute', '2009', 'it-121', 1024, 120, 'upload_image/tax2.jpg', 'upload_ebook/itax2.pptx'),
(25, 'J K Lesser\'s Tax Savings in your Pocket', '8', '*  Save more for your child education now!\r\n   * Increase your retirement savings\r\n   * New deductions, tax breaks, and planning tips', 'John Wiley and Sons', '2002', 'it-122', 212, 300, 'upload_image/tax3.jpg', 'upload_ebook/Saving.pptx'),
(26, 'On Liberty', '8', 'the liberal tradition, revered for his defense of liberal principles and expansive personal liberty.', 'Princeton University Press', '2001', 'li-11', 264, 300, 'upload_image/li1.jpg', 'upload_ebook/lib1.docx'),
(27, 'On Liberty in Focus', '8', 'his book gathers together for the first time J.S. Mill\'\'s On Liberty and a selection of importantessays by the eminent scholars Isaiah Berlin, Alan Ryan, John Rees C.L. Ten\'', 'John Stuart Mill', '2002', 'li-22', 296, 350, 'upload_image/li2.jpg', 'upload_ebook/lib2.docx'),
(28, 'Debugging Microsoft .NET 2.0 Applications', '17', 'Get hands-on instruction for using the tools in Microsoft Visual Studio? 2005 to debug, tune, and test applications. This guide features practical advice and code samples for developers at all levels from a leading authority on improving code. Traditionally, tools for performance tuning, testing applications, and debugging code have been expensive, hard to learn, and difficult to use. While previous versions of Microsoft Visual Studio? have included debuggers and other code-improvement tools, Visual Studio 2005 presents developers with robust and useful tools and processes to help ensure top-quality code. In this guide, an expert on improving code, John Robbins, steps back from the expert-level information that characterized his previous debugging books to present hands-on, practical advice for working developers on how to use the debugging, testing, and tuning features in Visual Studio 2005', 'John Robbins (Wintellect)', '2006', 'net-1', 464, 699, 'upload_image/comp2.jpg', 'upload_ebook/net2005.docx'),
(29, 'The Mad, Mad World of Cricket', '4', 'The funny side of the gentleman?s game?captured by a master cartoonist In India cricket is more than a game; it is a national obsession. And with a World Cup always around the corner, there is no better way to prepare for the excitement of seeing the men in blue in action than with renowned cartoonist Sudhir Dar?s creations.', 'Sudhir Dar', '2005', '0143101846', 96, 125, 'upload_image/c1.jpg', 'upload_ebook/cricket1.pptx'),
(30, 'Dream Team India: The Best World Cup Squad Ever !', '4', 'Are you one of those who just knows India will win the match the moment the game starts? Do you drown yourself in cricket and cricket-related trivia every four years and dream of seeing India win the World Cup? If the answer is ?yes? to any of the above, here is the team that will bring home the Cup for you. ', 'Book shop', '2007', '014333015', 147, 200, 'upload_image/c2.jpg', 'upload_ebook/cricket2.docx'),
(31, 'HOW TO PREPARE FOR QUANTITATIVE APTITUDE FOR CAT', '33', 'More than 3000 questions categorised into three levels of difficulty - LOD1, LOD2 and LOD3 * Notes emphasising relative importance of topics in the CAT, at appropriate places in the book * Short-cut methods to aid faster solutions to problems * Five practice CAT tests (actual CAT questions based on memory)', 'Arun Sharma', '2006', '0070483493', 310, 325, 'upload_image/COMPETITIVE8.jpg', 'upload_ebook/cat1.docx'),
(32, 'Physics', '26', 'Get all you need to know with Super Reviews! Each Super Review is packed with in-depth, student-friendly topic reviews that fully explain everything about the subject.', 'Unknown', '1995', '08', 1000, 495, 'upload_image/p2.jpg', 'upload_ebook/pysics1.pptx'),
(33, 'Thermal Physics', '26', 'The book presents a lucid and systematic exposition of the fundamental principles of Thermal Physics.', 'S.C.Garg', '2001', '0074601342', 412, 163, 'upload_image/p6.jpg', 'upload_ebook/thermal.pptx'),
(34, 'The Rough Guide to the Earth?', '2', 'From the opening and closing of oceans over millions of years to the overnight reshaping of landscapes by volcanoes, the Earth beneath our feet is constantly changing. The Rough Guide to the Earth explores all aspects of our dynamic planet, from the planet?s origins and evolution and the seasons and tides to melting ice caps, glaciers and climate change. Featuring many spectacular images and helpful diagrams, this Rough Guide provides a fascinating and accessible introduction to Earth science.', 'Martin Ince', '2006', '1843535890', 320, 650, 'upload_image/ART3.JPG', 'upload_ebook/Earth science.pptx'),
(35, 'A TEXTBOOK OF COST AND MANAGEMENT ACCOUNTING 8th ed.', '6', ' Student friendly and examination oriented approach # Innovative, comprehensive and systematic presentation of the subject matter # Use of diagrams and exhibits to help students understand concepts easily and clearly # Around 500 solved problems and illustrations with working notes # Solved and unsolved practical questions from various university and professional examinations like BCom, MCom, CA, CS, ICWA, etc. # Objective type questions and select theory questions # Ideal for self study.', 'M N ARORA', '2006', '812910945', 400, 395, 'upload_image/busi7.jpg', 'upload_ebook/cost_a_c.pptx'),
(36, 'Computer Networks, 4th Ed', '20', '(38, \'Computer Networks, 4th Ed\', \'46\', \'updated, this classic bestseller, now in its fourth edition, reflects the newest and most important networking technologies with a special emphasis on wireless networking. The material on wireless networks includes detailed coverage of 802.11, wireless local loops, 2G and 3G cellular networks, BluetoothTM, WAP, i-mode, and others. It prepares students to work with wireless technologies in networks of all sizes-both local and wide area networks. There is also lots of new material on applications, including the Web, Internet radio, voice over IP, and video on demand. Finally, an entirely new chapter is devoted exclusively to security to help students deal with one of the most crucial topics in networking today. Despite a large amount of material added on wireless networks, fixed networks have not been ignored-topics covered include ADLS, Internet over cable, gigabit Ethernet, peer-to-peer networks, NAT, and MPLS. Each chapter follows a consistent approach. The author first presents the key principles-underlying hardware at the physical layer up through the top-level application layer-and then illustrates them utilizing real-world examples drawn from the Internet and wireless networks, all in Tanenbaum\'\'s classic entertaining style.', 'ANDREW S.TANENBAUM', '2007', '8120321758', 912, 325, 'upload_image/comp7.jpg', 'upload_ebook/SLIP and PPP.docx'),
(37, 'Investing for Beginners', '6', 'Investment Risks and Rewards: How to overcome the fear of investment risk and how taking a few risks can reap long-term benefits. Your Starting Point: How to assess your investment goals. Diversification: How to allocate your money among various investment avenues for safety, steady income and capital growth. How to Pick Stocks: How to use fundamental indicators of value to pick good stocks. Investing in Bonds: Why you need bonds in your portfolio and which bonds to choose. Mutual Funds Primer: What they are and how to select the ones that suit your needs. Disinvesting: How to figure out when it\'\'s time to get out of an investment. Keeping in Touch: How to understand financial information. Keeping Track of Your Investments: Simple record-keeping tricks.', 'Kathy Kristof', '2006', '8170944821', 140, 195, 'upload_image/business.jpg', 'upload_ebook/Investment.docx'),
(38, 'Games Lawyers need to Play - Moot Court Problems ', '8', 'The Raj Anand Moot Court Competition was initiated in 1998 with its focus centrally on Intellectual Property law. Over the years the scope of the Competition has widened though Intellectual Property remains the core area. One of its primary aims is to sharpen the skills of ?mooting? among aspiring lawyers. Games Lawyers Need to Play brings together the Problems and ten of the finest Memorials of the Competition. Each chapter deals with a specific year beginning with 2004 and going back to 1998. The problems deal with various aspects of Intellectual Property but are ?out of ordinary?, to enable participants to combine good quality research with creativity and originality. The book has a foreword by Judge Michael Fysh, QC, SC. The Introduction is written by Pravin Anand.', 'Raj Anand Moot Court Competition ', '2006', '818028025X', 424, 595, 'upload_image/lawyer.jpg', 'upload_ebook/lawyer.doc'),
(39, 'An ABC of Indian Culture : A Personal Padayatra of Half a Ce', '2', 'An authentic interpretation of over 400 Indian concepts and practices derived from a personal exploration of India over a period of 50 years. Arranged alphabetically, these range from key traditional ones such as \'dharma\' to more contemporary ones such as \'secularism\' and \'democracy\' to popular ones such as Indian films! \'Padayatra\' is a journey on foot and each selected concept and practice is treated as a stepping-stone in a journey to understanding what India is all about. Descriptions are based on personal experience maturing over half a century, and written in cultural essays that present the essence of the Indian tradition. Malformations of the tradition are explained but without polemics. The book is a sensitive, cultured and sophisticated introduction to India for an intelligent and serious readership, and will be invaluable also as a handy reference text for libraries, cultural exchange agencies, business orientation courses especially for those anticipating an extended interaction with India, and the like.', 'Peggy Holroyde', '2005', '818820417X', 480, 595, 'upload_image/cul1.jpg', 'upload_ebook/culture1.docx'),
(40, 'HOW TO PREPARE FOR THE CAT, 2/E ', '33', 'More than 3000 questions categorised into three levels of difficulty - LOD1, LOD2 and LOD3 * Notes emphasising relative importance of topics in the CAT, at appropriate places in the book * Short-cut methods to aid faster solutions to problems * Five practice CAT tests (actual CAT questions based on memory)', 'MUNEER, MUHAMED', '2006', '0070528462', 380, 499, 'upload_image/CAT.jpg', 'upload_ebook/cat2.docx'),
(41, 'Safe and Simple Steps to Fruitful Meditation', '10', 'Meditation has been widely accepted as a tested method to reduce mental tensions and achieve inner peace and tranquillity, leading to spiritual growth. In this book, various techniques are presented in an easy step-by-step manner, starting with simple techniques that can be practised for just a few minutes', 'Dr. N. K. Srinivasan', '2003', '8122308910', 150, 80, 'upload_image/yoga1.jpg', 'upload_ebook/yoga1.docx'),
(42, 'STATISTICS FOR BUSINESS AND ECONOMICS', '7', 'This book covers various aspects of the field of statistics in 20 chapters, making each topic relevant and useful. A unique feature of this book is the inclusion of databases to be utilized by computers and software statistical packages. Contents - Introduction ? Statistical Terms and Concepts ? Data Collection ? Data Presentation ? Data Characteristics: Descriptive Measures ? Basic Concepts of Probability ? Probability Distribution ? Sampling Distribution ? Statistical Inference: Estimation ? Hypothesis Testing I ? Hypothesis Testing II ? Hypothesis Testing III ? Hypothesis Testing IV (Comparing Several Proportions Chi Square Test) ? Hypothesis Testing V(Comparing Several Population Means) One-Way Analysis of Variance (ANOVA) ? Regression and Correlation Analysis ? Multiple Regression ? Non-Parametric Statistics ? Time Series Analysis ? Statistical Decision Making ? Statistical Quality.', 'J S CHANDAN ', '2007', '8125904182', 212, 372, 'upload_image/9062999.jpg', 'upload_ebook/maths.doc'),
(43, 'Himalayan Vignettes : The Garhwal and Sikkim Treks', '14', 'In the 1950s Himalayan trekking was not as popular as it is now. The network of roads deep into the Himalayas did not exist and the hills were more pristine and undeveloped.', 'Kekoo Naoroji ', '2004', '8188204234', 300, 2000, 'upload_image/1445.jpg', 'upload_ebook/track1.txt'),
(44, 'Insight Guide Iceland', '9', 'A travel series unlike any other, Insight Guides go beyond the sights and into reality.', 'Perrottet, Tony (Edt)', '0887291767', '0887291767', 300, 935, 'upload_image/t2.jpg', 'upload_ebook/tour1.txt'),
(45, 'SPIDER MAN', '16', 'second 100 issues as May Mayday Parker learns that she can\'t escape her great responsibilities! Featuring the original Hobgoblin, the Black Tarantula and more! Plus: the saga of Spider-Girl! Collects Amazing Spider-Girl #0-6. ', 'Marvel Comics ', '2001', '0785123415', 160, 606, 'upload_image/comic1.jpg', 'upload_ebook/spider.doc'),
(46, 'The Missing ', '15', 'The woman missing for five years. The Crime Scene Investigator who finds her. And the serial killer who wants them both dead? When Boston CSI Darby McCormick finds a raving and emaciated woman hiding at the scene of a violent kidnap, she runs a DNA search to identify the Jane Doe. The result confirms that the woman was abducted five years earlier and has somehow managed to escape from the dungeon in which she?s been caged. With a teenage couple also missing and the Jane Doe seriously ill, the clock is ticking for Darby as she hunts for the dungeon before anyone else disappears or dies. And when the FBI takes over the investigation, it becomes clear that a sadistic serial killer has been on the prowl for decades ? and is poised to strike again at any moment. A killer with links to horrors that Darby has desperately tried to bury in her past?\r\n\r\n', 'Chris Mooning ', '2006', '0141030852', 416, 240, 'upload_image/fic1.jpg', 'upload_ebook/fiction1.docx'),
(47, 'Bhagavata Purana ', '11', 'Even after he has composed the awesome Mahabharata, the Maharishi Vyasa finds no peace.', 'Ramesh Menon ', '2004', '8129109956', 1500, 995, 'upload_image/re7.jpg', 'upload_ebook/bagvad.txt'),
(48, 'Bill and Dave: How Hewlett and Packard Built the World`s Gre', '12', 'This is not a history of the Hewlett-Packard Company, or a book of business theory, or a definitive biography of William Hewlett and David Packard. I have chosen to write this book this way because of the desperate need the business world has right now for an archetype of enlightened management, enduring quality, and perpetual innovation. It is not enough to simply tell the story of Hewlett, Packard and their company. What are needed are the why? and the how?? The most momentous first meeting in modern business history took place in the unlikely setting of a bench beside a football field, between two Stanford University students in pads and helmets. A few years later, in 1938, Bill Hewlett and Dave Packard were working in a small garage in Palo Alto, California, building their first product, an audio oscillator. It was the start not only of a legendary company but also of an entire way of life in Silicon Valley?and, ultimately, of our modern digital age. Acclaimed journalist Michael S. Malone is the first to get the full story, based on unlimited and exclusive access to corporate and private archives, along with hundreds of employee interviews. He draws on new material to show how some of the most influential products of our time were invented and how a culture of innovation led HP to unparalleled success for decades. Malone also shows what was really behind the groundbreaking management philosophy??the HP way??that put people ahead of products or profits. Bill and Dave, at its heart, is a character study of two amazing men who revealed their character in how they structured their business, in the men and women they hired, and, most of all, in the power they entrusted to even the lowliest HP employee. Their story is something of a miracle?one from which we can never stop learning.', 'Michael S. Malone ', '2005', '0143102397', 345, 500, 'upload_image/MANAGEMENT2.jpg', 'upload_ebook/mgmt1.pptx'),
(49, 'PAKISTAN`S DRIFT INTO EXTREMISM', '13', 'The book studies the rise of religious extremism in pakistan and analyses its connection to the pakistani army policies and fluctuating US - Pakistani Relationship. It is a book which readers as well as students of Political Science and history will enjoy thoroughly.', 'Hassan Abbas ', '2001', '8182741580', 350, 600, 'upload_image/terr2.jpg', 'upload_ebook/terror1.txt'),
(50, 'Learning SQL on SQL Server 2005 : The Simplest Way', '18', 'Anyone who interacts with today?s modern databases needs to know SQL (Structured Query Language), the standard language for generating, manipulating, and retrieving database information. In recent years, the dramatic rise in the popularity of relational databases and multiuser databases has fueled a healthy demand for application devel?opers and others who can write SQL code efficiently and correctly. If you?re new to databases or need a SQL refresher, Learning SQL on SQL Server 2005 is an ideal step-by-step introduction to this database query tool, with everything you need for programming SQL using Microsoft?s SQL Server 2005?one of the most powerful and popular database engines used today. Plenty of books explain database theory. This guide lets you apply the theory as you learn SQL. You don?t need prior database knowledge, or even prior computer knowledge. Based on a popular university-level course designed by authors Sikha Saha Bagui and Richard Walsh Earp, Learning SQL on SQL Server 2005 starts with very simple SQL concepts, and slowly builds into more complex query development. Every topic, concept, and idea comes with examples of code and output, along with exercises to help you gain proficiency in SQL and SQL Server 2005. With this book, you?ll learn: * Beginning SQL commands, such as how and where to type an SQL query, and how to create, populate, alter, and delete tables * How to customize SQL Server 2005?s settings and about SQL Server 2005?s functions * About joins, a common database mechanism for combining tables * Query development, the use of views and other derived structures, and simple set operations * Subqueries, aggregate functions, and correlated subqueries, as well as indexes and constraints that can be added to tables in SQL Server 2005 Whether you?re a self-learner who has access to the new Microsoft database, working on SQL Server with access at your company, or a computer science student or MIS student, Learning SQL on SQL Server 2005 will get you up to speed on SQL in no time.\r\n\r\n', 'Sikha Saha Bagui, Richard Walsh Earp ', '2005', '9788184040', 360, 350, 'upload_image/comp10.jpg', 'upload_ebook/sql1.docx');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `cat_id` int(4) NOT NULL,
  `cat_nm` varchar(30) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`cat_id`, `cat_nm`) VALUES
(1, 'Architecture'),
(2, 'Art And Culture'),
(3, 'Forest'),
(4, 'Sports'),
(5, 'Astrology'),
(6, 'Business'),
(7, 'Economics'),
(8, 'Low Books'),
(9, 'Tourism'),
(10, 'Yoga'),
(11, 'Religion'),
(12, 'Management'),
(13, 'Terrorism'),
(14, 'Tracking'),
(15, 'Fiction'),
(16, 'Comics'),
(17, 'Computer'),
(18, 'Cooking'),
(19, 'Science'),
(20, 'Compititive Exam'),
(21, 'tess');

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `con_id` int(4) NOT NULL,
  `con_nm` varchar(25) NOT NULL,
  `con_email` varchar(35) NOT NULL,
  `con_query` longtext NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`con_id`, `con_nm`, `con_email`, `con_query`) VALUES
(1, 'Hiren', 'hiru@gmail.com', 'English Novels...'),
(2, 'Shital', 'shital@yahoo.com', 'Are you send me medical books?'),
(3, 'Manali', 'manali@yahoo.com', 'Java Complete Reference is available?'),
(4, 'Rina', 'rina@gmail.com', 'Artificial Intelligence');

-- --------------------------------------------------------

--
-- Table structure for table `shipping_details`
--

CREATE TABLE `shipping_details` (
  `id` int(11) NOT NULL,
  `name` char(50) NOT NULL,
  `address` text NOT NULL,
  `postal_code` bigint(20) NOT NULL,
  `city` varchar(50) NOT NULL,
  `state` varchar(50) NOT NULL,
  `phone` bigint(20) NOT NULL,
  `f_id` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `shipping_details`
--

INSERT INTO `shipping_details` (`id`, `name`, `address`, `postal_code`, `city`, `state`, `phone`, `f_id`) VALUES
(1, 'sanjeev kumar', ' 141 delhi', 110009, 'delhi', 'delhi', 9015501897, 'sanjeev'),
(2, 'sanjeev kumar', ' 141 delhi', 110009, 'delhi', 'delhi', 9015501897, 'sanjeev');

-- --------------------------------------------------------

--
-- Table structure for table `subcat`
--

CREATE TABLE `subcat` (
  `subcat_id` int(4) NOT NULL,
  `parent_id` int(4) NOT NULL,
  `subcat_nm` varchar(35) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subcat`
--

INSERT INTO `subcat` (`subcat_id`, `parent_id`, `subcat_nm`) VALUES
(1, 1, 'Architecture'),
(2, 2, 'Art And Culture'),
(3, 3, 'Forest'),
(4, 4, 'Sports'),
(5, 5, 'Astrology'),
(6, 6, 'Business'),
(7, 7, 'Economics'),
(8, 8, 'Low Books'),
(9, 9, 'Tourism'),
(10, 10, 'Yoga'),
(11, 11, 'Religion'),
(12, 12, 'Management'),
(13, 13, 'Terrorism'),
(14, 14, 'Tracking'),
(15, 15, 'Fiction'),
(16, 16, 'Comics'),
(17, 17, 'Programming'),
(18, 17, 'Database'),
(19, 17, 'Web-Design'),
(20, 17, 'Networking'),
(22, 18, 'Pasta'),
(23, 18, 'Tea - Coffee'),
(24, 18, 'Soup - Sauce'),
(25, 18, 'Vegetarian Item'),
(26, 19, 'Physics'),
(27, 19, 'Biology'),
(28, 19, 'Medical'),
(29, 17, 'O.S.'),
(33, 20, 'CAT'),
(31, 20, 'GMAT'),
(32, 20, 'MBA'),
(34, 20, 'BBA'),
(35, 21, 'test1');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `u_id` int(4) NOT NULL,
  `u_fnm` varchar(35) NOT NULL,
  `u_unm` varchar(25) NOT NULL,
  `u_pwd` varchar(20) NOT NULL,
  `u_gender` varchar(7) NOT NULL,
  `u_email` varchar(35) NOT NULL,
  `u_contact` varchar(12) NOT NULL,
  `u_city` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`u_id`, `u_fnm`, `u_unm`, `u_pwd`, `u_gender`, `u_email`, `u_contact`, `u_city`) VALUES
(1, 'Hiren Bhaliya', 'Hiren', 'hiru', 'Male', 'hiru@gmail.com', '9925136522', 'Rajkot'),
(2, 'Shital', 'shital', 'shital', 'Female', 'shital@yahoo.com', '9985689856', 'Rajkot'),
(3, 'Lina', 'Lina123', '123', 'Female', 'lina123@gmail.com', '9456325663', 'Amreli'),
(4, 'admin', 'admin', 'admin123', 'Female', 'admin@gmail.com', '9859632561', 'Rajkot'),
(5, 'Kaushik', 'Darcy', '160160160', 'Male', 'darcy@gmail.com', '9016388880', 'Rajkot'),
(6, 'sanjeev', 'kumar', 'sanjeev', 'Male', 'sanjeevtech2@gmail.com', '9015501897', 'Ahmedabad');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `book`
--
ALTER TABLE `book`
  ADD PRIMARY KEY (`b_id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`con_id`);

--
-- Indexes for table `shipping_details`
--
ALTER TABLE `shipping_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subcat`
--
ALTER TABLE `subcat`
  ADD PRIMARY KEY (`subcat_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`u_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `book`
--
ALTER TABLE `book`
  MODIFY `b_id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `cat_id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `con_id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `shipping_details`
--
ALTER TABLE `shipping_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `subcat`
--
ALTER TABLE `subcat`
  MODIFY `subcat_id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `u_id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- Database: `contact`
--
CREATE DATABASE IF NOT EXISTS `contact` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `contact`;
--
-- Database: `contact_manager`
--
CREATE DATABASE IF NOT EXISTS `contact_manager` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `contact_manager`;

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` int(11) NOT NULL,
  `first` varchar(200) NOT NULL,
  `last` varchar(200) NOT NULL,
  `title` varchar(200) NOT NULL,
  `phone` varchar(200) NOT NULL,
  `address` varchar(200) NOT NULL,
  `city` varchar(200) NOT NULL,
  `state` varchar(200) NOT NULL,
  `zipcode` varchar(200) NOT NULL,
  `notes` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `first`, `last`, `title`, `phone`, `address`, `city`, `state`, `zipcode`, `notes`) VALUES
(7, 'Joe', 'Smith', 'Human Resources Director ', '501-378-3499', 'Washington Ave.', 'Washington', 'DC', '27516', 'Meeting Tuesday. '),
(12, 'Stephanie', 'Lamm', 'Multimedia Director', '290-472-0171', '555 University Dr.', 'Chapel Hill', 'NC', '27588', 'Working together on proposal for client. '),
(14, 'Rebecca', 'Smith', 'CEO', '330-997-321', '521 State St.', 'Raleigh', 'NC', '27511', 'Respond to email by Wednesday.'),
(15, 'Jeannie', 'Meyers', 'Client', '764-213-4455', '1212 Capitol Ave.', 'Miami', 'FL', '34512', 'Needs draft by Friday.');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- Database: `db`
--
CREATE DATABASE IF NOT EXISTS `db` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `db`;

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `book_id` int(200) NOT NULL,
  `author` varchar(25) NOT NULL,
  `keywords` varchar(255) NOT NULL,
  `title` varchar(80) NOT NULL,
  `price` int(200) NOT NULL,
  `image` varchar(200) NOT NULL,
  `description` text NOT NULL,
  `category` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`book_id`, `author`, `keywords`, `title`, `price`, `image`, `description`, `category`) VALUES
(11, 'Margaret Mitchell ', 'gone, wind, margaret, mitchell', 'Gone With The Wind', 550, 'gonewithwind.jpg', '<p><span style=\"color: #333333; font-family: Arial, sans-serif; font-size: 14px;\">Since its original publication in 1936,&nbsp;</span><em style=\"color: #333333; font-family: Arial, sans-serif; font-size: 14px;\">Gone With the Wind</em><span style=\"color: #333333; font-family: Arial, sans-serif; font-size: 14px;\">&mdash;winner of the Pulitzer Prize and one of the bestselling novels of all time&mdash;has been heralded by readers everywhere as The Great American Novel.</span><br style=\"color: #333333; font-family: Arial, sans-serif; font-size: 14px;\" /><br style=\"color: #333333; font-family: Arial, sans-serif; font-size: 14px;\" /><span style=\"color: #333333; font-family: Arial, sans-serif; font-size: 14px;\">Widely considered The Great American Novel, and often remembered for its epic film version,&nbsp;</span><em style=\"color: #333333; font-family: Arial, sans-serif; font-size: 14px;\">Gone With the Wind</em><span style=\"color: #333333; font-family: Arial, sans-serif; font-size: 14px;\">&nbsp;explores the depth of human passions with an intensity as bold as its setting in the red hills of Georgia. A superb piece of storytelling, it vividly depicts the drama of the Civil War and Reconstruction.</span><br style=\"color: #333333; font-family: Arial, sans-serif; font-size: 14px;\" /><br style=\"color: #333333; font-family: Arial, sans-serif; font-size: 14px;\" /><span style=\"color: #333333; font-family: Arial, sans-serif; font-size: 14px;\">This is the tale of Scarlett O&rsquo;Hara, the spoiled, manipulative daughter of a wealthy plantation owner, who arrives at young womanhood just in time to see the Civil War forever change her way of life. A sweeping story of tangled passion and courage, in the pages of&nbsp;</span><em style=\"color: #333333; font-family: Arial, sans-serif; font-size: 14px;\">Gone With the Wind</em><span style=\"color: #333333; font-family: Arial, sans-serif; font-size: 14px;\">, Margaret Mitchell brings to life the unforgettable characters that have captured readers for over seventy years.</span></p>', 'Romance'),
(17, 'Stephen King', 'Stephen, king, it', 'It', 320, 'it.jpg', '<p><span style=\"color: #333333; font-family: Arial, sans-serif; font-size: 14px;\">Soon to be a major motion picture&mdash;Stephen King&rsquo;s terrifying, classic #1&nbsp;</span><em style=\"color: #333333; font-family: Arial, sans-serif; font-size: 14px;\">New York Times</em><span style=\"color: #333333; font-family: Arial, sans-serif; font-size: 14px;\">&nbsp;bestseller, &ldquo;a landmark in American literature&rdquo; (</span><em style=\"color: #333333; font-family: Arial, sans-serif; font-size: 14px;\">Chicago Sun-Times</em><span style=\"color: #333333; font-family: Arial, sans-serif; font-size: 14px;\">)&mdash;about seven adults who return to their hometown to confront a nightmare they had first stumbled on as teenagers&hellip;an evil without a name:&nbsp;</span><em style=\"color: #333333; font-family: Arial, sans-serif; font-size: 14px;\">It</em><span style=\"color: #333333; font-family: Arial, sans-serif; font-size: 14px;\">.</span><br style=\"color: #333333; font-family: Arial, sans-serif; font-size: 14px;\" /><br style=\"color: #333333; font-family: Arial, sans-serif; font-size: 14px;\" /><span style=\"color: #333333; font-family: Arial, sans-serif; font-size: 14px;\">Welcome to Derry, Maine. It&rsquo;s a small city, a place as hauntingly familiar as your own hometown. Only in Derry the haunting is real.</span><br style=\"color: #333333; font-family: Arial, sans-serif; font-size: 14px;\" /><br style=\"color: #333333; font-family: Arial, sans-serif; font-size: 14px;\" /><span style=\"color: #333333; font-family: Arial, sans-serif; font-size: 14px;\">They were seven teenagers when they first stumbled upon the horror. Now they are grown-up men and women who have gone out into the big world to gain success and happiness. But the promise they made twenty-eight years ago calls them reunite in the same place where, as teenagers, they battled an evil creature that preyed on the city&rsquo;s children. Now, children are being murdered again and their repressed memories of that terrifying summer return as they prepare to once again battle the monster lurking in Derry&rsquo;s sewers.</span><br style=\"color: #333333; font-family: Arial, sans-serif; font-size: 14px;\" /><br style=\"color: #333333; font-family: Arial, sans-serif; font-size: 14px;\" /><span style=\"color: #333333; font-family: Arial, sans-serif; font-size: 14px;\">Readers of Stephen King know that Derry, Maine, is a place with a deep, dark hold on the author. It reappears in many of his books, including&nbsp;</span><em style=\"color: #333333; font-family: Arial, sans-serif; font-size: 14px;\">Bag of Bones</em><span style=\"color: #333333; font-family: Arial, sans-serif; font-size: 14px;\">,&nbsp;</span><em style=\"color: #333333; font-family: Arial, sans-serif; font-size: 14px;\">Hearts in Atlantis</em><span style=\"color: #333333; font-family: Arial, sans-serif; font-size: 14px;\">, and&nbsp;</span><em style=\"color: #333333; font-family: Arial, sans-serif; font-size: 14px;\">11/22/63</em><span style=\"color: #333333; font-family: Arial, sans-serif; font-size: 14px;\">. But it all starts with&nbsp;</span><em style=\"color: #333333; font-family: Arial, sans-serif; font-size: 14px;\">It</em><span style=\"color: #333333; font-family: Arial, sans-serif; font-size: 14px;\">.</span><br style=\"color: #333333; font-family: Arial, sans-serif; font-size: 14px;\" /><br style=\"color: #333333; font-family: Arial, sans-serif; font-size: 14px;\" /><span style=\"color: #333333; font-family: Arial, sans-serif; font-size: 14px;\">&ldquo;Stephen King&rsquo;s most mature work&rdquo; (</span><em style=\"color: #333333; font-family: Arial, sans-serif; font-size: 14px;\">St. Petersburg Times</em><span style=\"color: #333333; font-family: Arial, sans-serif; font-size: 14px;\">), &ldquo;</span><em style=\"color: #333333; font-family: Arial, sans-serif; font-size: 14px;\">It&nbsp;</em><span style=\"color: #333333; font-family: Arial, sans-serif; font-size: 14px;\">will overwhelm you&hellip; to be read in a well-lit room only&rdquo; (</span><em style=\"color: #333333; font-family: Arial, sans-serif; font-size: 14px;\">Los Angeles Times</em><span style=\"color: #333333; font-family: Arial, sans-serif; font-size: 14px;\">).</span></p>', 'Horror'),
(18, 'E L James', 'James, fifty, shades, grey', 'Fifty Shades Of Grey', 250, 'fiftyshades.jpg', '<p><span style=\"color: #333333; font-family: Arial, sans-serif; font-size: 14px;\">When literature student Anastasia Steele goes to interview young entrepreneur Christian Grey, she encounters a man who is beautiful, brilliant, and intimidating. The unworldly, innocent Ana is startled to realize she wants this man and, despite his enigmatic reserve, finds she is desperate to get close to him. Unable to resist Ana&rsquo;s quiet beauty, wit, and independent spirit, Grey admits he wants her, too&mdash;but on his own terms.</span><br style=\"color: #333333; font-family: Arial, sans-serif; font-size: 14px;\" /><span style=\"color: #333333; font-family: Arial, sans-serif; font-size: 14px;\">&nbsp;</span><br style=\"color: #333333; font-family: Arial, sans-serif; font-size: 14px;\" /><span style=\"color: #333333; font-family: Arial, sans-serif; font-size: 14px;\">Shocked yet thrilled by Grey&rsquo;s singular erotic tastes, Ana hesitates. For all the trappings of success&mdash;his multinational businesses, his vast wealth, his loving family&mdash;Grey is a man tormented by demons and consumed by the need to control. When the couple embarks on a daring, passionately physical affair, Ana discovers Christian Grey&rsquo;s secrets and explores her own dark desires.</span><br style=\"color: #333333; font-family: Arial, sans-serif; font-size: 14px;\" /><br style=\"color: #333333; font-family: Arial, sans-serif; font-size: 14px;\" /><span style=\"color: #333333; font-family: Arial, sans-serif; font-size: 14px;\">This book is intended for mature audiences.</span></p>', 'Romance'),
(19, ' John Grisham', 'Whistler,  John, Grisham', 'The Whistler', 280, 'the whistler.jpg', '<p><span style=\"color: #333333; font-family: Arial, sans-serif; font-size: 14px;\">We expect our judges to be honest and wise.&nbsp;Their integrity and impartiality are the bedrock of the entire judicial system. We trust them to ensure fair trials, to protect the rights of all litigants, to punish those who do wrong, and to oversee the orderly and efficient flow of justice.</span><br style=\"color: #333333; font-family: Arial, sans-serif; font-size: 14px;\" /><span style=\"color: #333333; font-family: Arial, sans-serif; font-size: 14px;\">&nbsp; &nbsp; &nbsp;But what happens when a judge bends the law or takes a bribe?&nbsp;It&rsquo;s rare, but it happens.</span><br style=\"color: #333333; font-family: Arial, sans-serif; font-size: 14px;\" /><span style=\"color: #333333; font-family: Arial, sans-serif; font-size: 14px;\">&nbsp; &nbsp; &nbsp;Lacy Stoltz is an investigator for the Florida Board on Judicial Conduct. She is a lawyer, not a cop, and it is her job to respond to complaints dealing with judicial misconduct. After nine years with the Board, she knows that most problems are caused by incompetence, not corruption.&nbsp;</span><br style=\"color: #333333; font-family: Arial, sans-serif; font-size: 14px;\" /><span style=\"color: #333333; font-family: Arial, sans-serif; font-size: 14px;\">&nbsp; &nbsp; &nbsp;But a corruption case eventually crosses her desk.&nbsp;A previously disbarred lawyer is back in business with a new identity. He now goes by the name Greg Myers, and he claims to know of a Florida judge who has stolen more money than all other crooked judges combined. And not just crooked judges in Florida.&nbsp;All judges, from all states, and throughout U.S. history.</span><br style=\"color: #333333; font-family: Arial, sans-serif; font-size: 14px;\" /><span style=\"color: #333333; font-family: Arial, sans-serif; font-size: 14px;\">&nbsp; &nbsp; &nbsp;What&rsquo;s the source of the ill-gotten gains? It seems the judge was secretly involved with the construction of a large casino on Native American land. The Coast Mafia financed the casino and is now helping itself to a sizable skim of each month&rsquo;s cash. The judge is getting a cut and looking the other way.&nbsp;It&rsquo;s a sweet deal: Everyone is making money.</span><br style=\"color: #333333; font-family: Arial, sans-serif; font-size: 14px;\" /><span style=\"color: #333333; font-family: Arial, sans-serif; font-size: 14px;\">&nbsp; &nbsp; &nbsp;But now Greg wants to put a stop to it. His only client is a person who knows the truth and wants to blow the whistle and collect millions under Florida law.&nbsp;Greg files a complaint with the Board on Judicial Conduct, and the case is assigned to Lacy Stoltz, who immediately suspects that this one could be dangerous.</span><br style=\"color: #333333; font-family: Arial, sans-serif; font-size: 14px;\" /><span style=\"color: #333333; font-family: Arial, sans-serif; font-size: 14px;\">&nbsp; &nbsp; &nbsp;Dangerous is one thing.&nbsp;Deadly is something else.</span></p>', 'Horror'),
(20, ' Sir Arthur Conan Doyle', ' Arthur, Conan, Doyle, Sherlock, Holmes', 'Sherlock Holmes', 600, 'sherlock.jpg', '<p><span style=\"color: #333333; font-family: Arial, sans-serif; font-size: 14px;\">Since his first appearance in&nbsp;</span><em style=\"color: #333333; font-family: Arial, sans-serif; font-size: 14px;\">Beeton&rsquo;s Christmas Annual</em><span style=\"color: #333333; font-family: Arial, sans-serif; font-size: 14px;\">&nbsp;in 1887, Sir Arthur Conan Doyle&rsquo;s Sherlock Holmes has been one of the most beloved fictional characters ever created. Now, in two paperback volumes, Bantam presents all fifty-six short stories and four novels featuring Conan Doyle&rsquo;s classic hero--a truly complete collection of Sherlock Holmes&rsquo;s adventures in crime!</span><br style=\"color: #333333; font-family: Arial, sans-serif; font-size: 14px;\" /><br style=\"color: #333333; font-family: Arial, sans-serif; font-size: 14px;\" /><span style=\"color: #333333; font-family: Arial, sans-serif; font-size: 14px;\">Volume I includes the early novel&nbsp;</span><strong style=\"color: #333333; font-family: Arial, sans-serif; font-size: 14px;\">A Study in Scarlet</strong><span style=\"color: #333333; font-family: Arial, sans-serif; font-size: 14px;\">, which introduced the eccentric genius of Sherlock Holmes to the world. This baffling murder mystery, with the cryptic word Rache written in blood, first brought Holmes together with Dr. John Watson. Next,&nbsp;</span><strong style=\"color: #333333; font-family: Arial, sans-serif; font-size: 14px;\">The Sign of Four</strong><span style=\"color: #333333; font-family: Arial, sans-serif; font-size: 14px;\">&nbsp;presents Holmes&rsquo;s famous &ldquo;seven percent solution&rdquo; and the strange puzzle of Mary Morstan in the quintessential locked-room mystery.&nbsp;</span><br style=\"color: #333333; font-family: Arial, sans-serif; font-size: 14px;\" /><br style=\"color: #333333; font-family: Arial, sans-serif; font-size: 14px;\" /><span style=\"color: #333333; font-family: Arial, sans-serif; font-size: 14px;\">Also included are Holmes&rsquo;s feats of extraordinary detection in such famous cases as the chilling&nbsp;</span><strong style=\"color: #333333; font-family: Arial, sans-serif; font-size: 14px;\">&ldquo; The Adventure of the Speckled Band,&rdquo;</strong><span style=\"color: #333333; font-family: Arial, sans-serif; font-size: 14px;\">&nbsp;the baffling riddle of&nbsp;</span><strong style=\"color: #333333; font-family: Arial, sans-serif; font-size: 14px;\">&ldquo;The Musgrave Ritual,&rdquo;</strong><span style=\"color: #333333; font-family: Arial, sans-serif; font-size: 14px;\">&nbsp;and the ingeniously plotted&nbsp;</span><strong style=\"color: #333333; font-family: Arial, sans-serif; font-size: 14px;\">&ldquo;The Five Orange Pips,&rdquo;</strong><span style=\"color: #333333; font-family: Arial, sans-serif; font-size: 14px;\">&nbsp;tales that bring to life a Victorian England of horse-drawn cabs, fogs, and the famous lodgings at 221B Baker Street, where Sherlock Holmes earned his undisputed reputation as the greatest fictional detective of all time.</span></p>', 'Mystery'),
(21, ' J.K. Rowling', 'Harry, Potter,Cursed, Child J.K., Rowling, ', 'Harry Potter and the Cursed Child', 460, 'hpcc.jpg', '<p><span style=\"color: #333333; font-family: Arial, sans-serif; font-size: 14px;\">Based on an original new story by J.K. Rowling, John Tiffany and Jack Thorne, a new play by Jack Thorne, Harry Potter and the Cursed Child is the eighth story in the Harry Potter series and the first official Harry Potter story to be presented on stage. The play received its world premiere in London&rsquo;s West End on 30th July 2016.</span><br style=\"color: #333333; font-family: Arial, sans-serif; font-size: 14px;\" /><br style=\"color: #333333; font-family: Arial, sans-serif; font-size: 14px;\" /><span style=\"color: #333333; font-family: Arial, sans-serif; font-size: 14px;\">It was always difficult being Harry Potter and it isn&rsquo;t much easier now that he is an overworked employee of the Ministry of Magic, a husband and father of three school-age children.</span><br style=\"color: #333333; font-family: Arial, sans-serif; font-size: 14px;\" /><br style=\"color: #333333; font-family: Arial, sans-serif; font-size: 14px;\" /><span style=\"color: #333333; font-family: Arial, sans-serif; font-size: 14px;\">While Harry grapples with a past that refuses to stay where it belongs, his youngest son Albus must struggle with the weight of a family legacy he never wanted. As past and present fuse ominously, both father and son learn the uncomfortable truth: sometimes, darkness comes from unexpected places.</span></p>', 'Science Fiction'),
(23, 'Timothy Zahn', 'Timothy, Zahn, Thrawn, star, war ', 'Thrawn (Star Wars)', 550, 'starwar.jpg', '<p>This is the most famous novel .this book needs no introduction.</p>\r\n<p>The Star Wars legacy with a deep look at Thrawn</p>', 'Science Fiction'),
(24, 'Half GirlFriend', 'Half, Girl,Friend, Chetan, Bhagat', 'Half Girlfriend', 300, 'half gf.jpg', '<p>Half Girlfriend is a story of Bihari boy Madhav whofalls in love with Ria.</p>\n<p>Madhav belongs to middle class family while Ria is from higher class and both have different lifestyles.</p>\n<p>The story revolves around how will Madhav make RIa fall in love with him to.</p>\n<p>To know more read the book.</p>', 'Drama');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `bookid` int(10) NOT NULL,
  `ip_add` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `name` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`name`) VALUES
('Drama'),
('Horror'),
('Mystery'),
('Romance'),
('Science Fiction');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `cust_id` int(200) NOT NULL,
  `cust_ip` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(80) NOT NULL,
  `phone` bigint(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`cust_id`, `cust_ip`, `name`, `email`, `password`, `phone`) VALUES
(11, '::1', 'priyesh patel', 'safal.priyesh@gmail.com', '12341234', 9757104581),
(12, '::1', 'Krish Parekh', 'kp@gmail.com', '10101010', 9898989863);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`book_id`),
  ADD UNIQUE KEY `title` (`title`),
  ADD KEY `category` (`category`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD UNIQUE KEY `bookid_2` (`bookid`),
  ADD KEY `bookid` (`bookid`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`name`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`cust_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `books`
--
ALTER TABLE `books`
  MODIFY `book_id` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `cust_id` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `books`
--
ALTER TABLE `books`
  ADD CONSTRAINT `cat` FOREIGN KEY (`category`) REFERENCES `category` (`name`);

--
-- Constraints for table `cart`
--
ALTER TABLE `cart`
  ADD CONSTRAINT `bfk` FOREIGN KEY (`bookid`) REFERENCES `books` (`book_id`);
--
-- Database: `first`
--
CREATE DATABASE IF NOT EXISTS `first` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `first`;

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
(3, '2014_10_12_000000_create_users_table', 1),
(4, '2014_10_12_100000_create_password_resets_table', 1),
(5, '2019_04_04_210716_create_projects_table', 2);

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
-- Table structure for table `projects`
--

CREATE TABLE `projects` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `projects`
--

INSERT INTO `projects` (`id`, `title`, `description`, `created_at`, `updated_at`) VALUES
(2, 'shappit', 'movie', '2019-04-04 15:51:42', '2019-04-09 00:12:25'),
(4, 'c++', 'programing', '2019-04-04 17:16:00', '2019-04-04 17:16:00'),
(5, 'ad', 'vgb', '2019-04-05 00:26:31', '2019-04-05 00:26:31'),
(6, 'ad', 'xgfcbv', '2019-04-08 23:47:58', '2019-04-08 23:47:58');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
-- Indexes for table `projects`
--
ALTER TABLE `projects`
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
-- AUTO_INCREMENT for table `projects`
--
ALTER TABLE `projects`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Database: `forge`
--
CREATE DATABASE IF NOT EXISTS `forge` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `forge`;
--
-- Database: `hello`
--
CREATE DATABASE IF NOT EXISTS `hello` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `hello`;

-- --------------------------------------------------------

--
-- Table structure for table `myguests`
--

CREATE TABLE `myguests` (
  `id` int(6) UNSIGNED NOT NULL,
  `firstname` varchar(30) NOT NULL,
  `lastname` varchar(30) NOT NULL,
  `email` varchar(50) DEFAULT NULL,
  `reg_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `myguests`
--

INSERT INTO `myguests` (`id`, `firstname`, `lastname`, `email`, `reg_date`) VALUES
(1, 'John', 'Doe', 'john@example.com', '2019-03-16 10:55:08'),
(2, 'John', 'D', 'jcb@example.com', '2019-03-16 11:09:19'),
(3, 'JRAj', 'asd', 'raj@example.com', '2019-03-18 09:04:26');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `myguests`
--
ALTER TABLE `myguests`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `myguests`
--
ALTER TABLE `myguests`
  MODIFY `id` int(6) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- Database: `library`
--
CREATE DATABASE IF NOT EXISTS `library` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `library`;
--
-- Database: `mydb`
--
CREATE DATABASE IF NOT EXISTS `mydb` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `mydb`;

-- --------------------------------------------------------

--
-- Table structure for table `myguests`
--

CREATE TABLE `myguests` (
  `id` int(6) UNSIGNED NOT NULL,
  `firstname` varchar(30) NOT NULL,
  `lastname` varchar(30) NOT NULL,
  `email` varchar(50) DEFAULT NULL,
  `reg_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `myguests`
--
ALTER TABLE `myguests`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `myguests`
--
ALTER TABLE `myguests`
  MODIFY `id` int(6) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Database: `new`
--
CREATE DATABASE IF NOT EXISTS `new` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `new`;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Database: `onlineshopping`
--
CREATE DATABASE IF NOT EXISTS `onlineshopping` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `onlineshopping`;
--
-- Database: `phpmyadmin`
--
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- Table structure for table `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int(11) NOT NULL,
  `dbase` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `query` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- Table structure for table `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_length` text COLLATE utf8_bin,
  `col_collation` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) COLLATE utf8_bin DEFAULT '',
  `col_default` text COLLATE utf8_bin
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

-- --------------------------------------------------------

--
-- Table structure for table `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int(5) UNSIGNED NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `column_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `settings_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

-- --------------------------------------------------------

--
-- Table structure for table `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `export_type` varchar(10) COLLATE utf8_bin NOT NULL,
  `template_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `template_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

--
-- Dumping data for table `pma__export_templates`
--

INSERT INTO `pma__export_templates` (`id`, `username`, `export_type`, `template_name`, `template_data`) VALUES
(1, 'root', 'database', 'www_project', '{\"quick_or_custom\":\"quick\",\"what\":\"sql\",\"structure_or_data_forced\":\"0\",\"table_select[]\":[\"admin\",\"books\",\"customers\",\"orders\",\"order_items\",\"publisher\"],\"table_structure[]\":[\"admin\",\"books\",\"customers\",\"orders\",\"order_items\",\"publisher\"],\"table_data[]\":[\"admin\",\"books\",\"customers\",\"orders\",\"order_items\",\"publisher\"],\"aliases_new\":\"\",\"output_format\":\"sendit\",\"filename_template\":\"@DATABASE@\",\"remember_template\":\"on\",\"charset\":\"utf-8\",\"compression\":\"none\",\"maxsize\":\"\",\"codegen_structure_or_data\":\"data\",\"codegen_format\":\"0\",\"csv_separator\":\",\",\"csv_enclosed\":\"\\\"\",\"csv_escaped\":\"\\\"\",\"csv_terminated\":\"AUTO\",\"csv_null\":\"NULL\",\"csv_structure_or_data\":\"data\",\"excel_null\":\"NULL\",\"excel_columns\":\"something\",\"excel_edition\":\"win\",\"excel_structure_or_data\":\"data\",\"json_structure_or_data\":\"data\",\"json_unicode\":\"something\",\"latex_caption\":\"something\",\"latex_structure_or_data\":\"structure_and_data\",\"latex_structure_caption\":\"Structure of table @TABLE@\",\"latex_structure_continued_caption\":\"Structure of table @TABLE@ (continued)\",\"latex_structure_label\":\"tab:@TABLE@-structure\",\"latex_relation\":\"something\",\"latex_comments\":\"something\",\"latex_mime\":\"something\",\"latex_columns\":\"something\",\"latex_data_caption\":\"Content of table @TABLE@\",\"latex_data_continued_caption\":\"Content of table @TABLE@ (continued)\",\"latex_data_label\":\"tab:@TABLE@-data\",\"latex_null\":\"\\\\textit{NULL}\",\"mediawiki_structure_or_data\":\"structure_and_data\",\"mediawiki_caption\":\"something\",\"mediawiki_headers\":\"something\",\"htmlword_structure_or_data\":\"structure_and_data\",\"htmlword_null\":\"NULL\",\"ods_null\":\"NULL\",\"ods_structure_or_data\":\"data\",\"odt_structure_or_data\":\"structure_and_data\",\"odt_relation\":\"something\",\"odt_comments\":\"something\",\"odt_mime\":\"something\",\"odt_columns\":\"something\",\"odt_null\":\"NULL\",\"pdf_report_title\":\"\",\"pdf_structure_or_data\":\"structure_and_data\",\"phparray_structure_or_data\":\"data\",\"sql_include_comments\":\"something\",\"sql_header_comment\":\"\",\"sql_use_transaction\":\"something\",\"sql_compatibility\":\"NONE\",\"sql_structure_or_data\":\"structure_and_data\",\"sql_create_table\":\"something\",\"sql_auto_increment\":\"something\",\"sql_create_view\":\"something\",\"sql_procedure_function\":\"something\",\"sql_create_trigger\":\"something\",\"sql_backquotes\":\"something\",\"sql_type\":\"INSERT\",\"sql_insert_syntax\":\"both\",\"sql_max_query_size\":\"50000\",\"sql_hex_for_binary\":\"something\",\"sql_utc_time\":\"something\",\"texytext_structure_or_data\":\"structure_and_data\",\"texytext_null\":\"NULL\",\"xml_structure_or_data\":\"data\",\"xml_export_events\":\"something\",\"xml_export_functions\":\"something\",\"xml_export_procedures\":\"something\",\"xml_export_tables\":\"something\",\"xml_export_triggers\":\"something\",\"xml_export_views\":\"something\",\"xml_export_contents\":\"something\",\"yaml_structure_or_data\":\"data\",\"\":null,\"lock_tables\":null,\"as_separate_files\":null,\"csv_removeCRLF\":null,\"csv_columns\":null,\"excel_removeCRLF\":null,\"json_pretty_print\":null,\"htmlword_columns\":null,\"ods_columns\":null,\"sql_dates\":null,\"sql_relation\":null,\"sql_mime\":null,\"sql_disable_fk\":null,\"sql_views_as_tables\":null,\"sql_metadata\":null,\"sql_create_database\":null,\"sql_drop_table\":null,\"sql_if_not_exists\":null,\"sql_truncate\":null,\"sql_delayed\":null,\"sql_ignore\":null,\"texytext_columns\":null}');

-- --------------------------------------------------------

--
-- Table structure for table `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- Table structure for table `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `sqlquery` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- Table structure for table `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

--
-- Dumping data for table `pma__recent`
--

INSERT INTO `pma__recent` (`username`, `tables`) VALUES
('root', '[{\"db\":\"bestlaravel2018\",\"table\":\"categories\"},{\"db\":\"bestlaravel2018\",\"table\":\"countries\"},{\"db\":\"bestlaravel2018\",\"table\":\"users\"},{\"db\":\"bestlaravel2018\",\"table\":\"orders\"},{\"db\":\"bestlaravel2018\",\"table\":\"tblgallery\"},{\"db\":\"bestlaravel2018\",\"table\":\"products\"},{\"db\":\"bestlaravel2018\",\"table\":\"product_att\"},{\"db\":\"bestlaravel2018\",\"table\":\"password_resets\"},{\"db\":\"ecomm\",\"table\":\"categories\"},{\"db\":\"ecomm\",\"table\":\"tblgallery\"}]');

-- --------------------------------------------------------

--
-- Table structure for table `pma__relation`
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Table structure for table `pma__savedsearches`
--

CREATE TABLE `pma__savedsearches` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT '0',
  `x` float UNSIGNED NOT NULL DEFAULT '0',
  `y` float UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `display_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `prefs` text COLLATE utf8_bin NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

--
-- Dumping data for table `pma__table_uiprefs`
--

INSERT INTO `pma__table_uiprefs` (`username`, `db_name`, `table_name`, `prefs`, `last_update`) VALUES
('root', 'bestlaravel2018', 'countries', '{\"sorted_col\":\"`id` ASC\"}', '2019-04-14 08:36:23');

-- --------------------------------------------------------

--
-- Table structure for table `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text COLLATE utf8_bin NOT NULL,
  `schema_sql` text COLLATE utf8_bin,
  `data_sql` longtext COLLATE utf8_bin,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') COLLATE utf8_bin DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `config_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Dumping data for table `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2019-04-14 17:50:13', '{\"Console\\/Mode\":\"collapse\",\"NavigationWidth\":0}');

-- --------------------------------------------------------

--
-- Table structure for table `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL,
  `tab` varchar(64) COLLATE utf8_bin NOT NULL,
  `allowed` enum('Y','N') COLLATE utf8_bin NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Table structure for table `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- Indexes for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Indexes for table `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- Indexes for table `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Indexes for table `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Indexes for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- Indexes for table `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Indexes for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Indexes for table `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Indexes for table `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Indexes for table `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Indexes for table `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Indexes for table `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Indexes for table `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Database: `pqr`
--
CREATE DATABASE IF NOT EXISTS `pqr` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `pqr`;

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
(10, '2014_10_12_000000_create_users_table', 1),
(11, '2014_10_12_100000_create_password_resets_table', 1),
(12, '2019_02_22_043511_create_posts_table', 1);

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
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Database: `project2`
--
CREATE DATABASE IF NOT EXISTS `project2` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `project2`;

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
(3, '2019_04_09_095620_create_projects', 1);

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
-- Table structure for table `projects`
--

CREATE TABLE `projects` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `C_Name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Username` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `projects`
--

INSERT INTO `projects` (`id`, `C_Name`, `Username`, `password`, `created_at`, `updated_at`) VALUES
(1, 'shashi', 'atcyfgjbhc', 'vgcjabn', '2019-04-09 05:39:59', '2019-04-09 05:39:59');

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
(1, 'rahul', 'prataprahul47@outlook.com', NULL, '$2y$10$cMhOGqPnzw0TmN.vuxRH4u8BfE8.SX..yyNnF/j.ZtuI.AW9lNfrS', NULL, '2019-04-09 05:36:54', '2019-04-09 05:36:54');

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
-- Indexes for table `projects`
--
ALTER TABLE `projects`
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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `projects`
--
ALTER TABLE `projects`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- Database: `second`
--
CREATE DATABASE IF NOT EXISTS `second` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `second`;
--
-- Database: `sports`
--
CREATE DATABASE IF NOT EXISTS `sports` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `sports`;
--
-- Database: `test`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `test`;
--
-- Database: `todolist`
--
CREATE DATABASE IF NOT EXISTS `todolist` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `todolist`;

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
(3, '2017_05_08_152842_create_todos_table', 1);

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
-- Table structure for table `todos`
--

CREATE TABLE `todos` (
  `id` int(10) UNSIGNED NOT NULL,
  `text` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `due` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `todos`
--

INSERT INTO `todos` (`id`, `text`, `body`, `due`, `created_at`, `updated_at`) VALUES
(2, 'rahul', 'stdgfhv', '13322', '2019-04-08 23:44:30', '2019-04-08 23:44:30');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
-- Indexes for table `todos`
--
ALTER TABLE `todos`
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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `todos`
--
ALTER TABLE `todos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Database: `www_project`
--
CREATE DATABASE IF NOT EXISTS `www_project` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `www_project`;

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `name` varchar(20) COLLATE latin1_general_ci NOT NULL,
  `pass` varchar(40) COLLATE latin1_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`name`, `pass`) VALUES
('admin', 'd033e22ae348aeb5660fc2140aec35850c4da997');

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `book_isbn` varchar(20) COLLATE latin1_general_ci NOT NULL,
  `book_title` varchar(60) COLLATE latin1_general_ci DEFAULT NULL,
  `book_author` varchar(60) COLLATE latin1_general_ci DEFAULT NULL,
  `book_image` varchar(40) COLLATE latin1_general_ci DEFAULT NULL,
  `book_descr` text COLLATE latin1_general_ci,
  `book_price` decimal(6,2) NOT NULL,
  `publisherid` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`book_isbn`, `book_title`, `book_author`, `book_image`, `book_descr`, `book_price`, `publisherid`) VALUES
('978-0-1434-2018-7', 'Pax Indica', 'Shashi Tharoor', 'pax.jpg', 'The book is fascinating and one cannot think to put it down, once started. Shashi Tharoor takes us on an arduous journey, comprehensively explaining each theme. The book is exceptional in its own way, and that\'s not a surprise as the writer is no one else than under-secretary-general of the United Nations.', '30.00', 1),
('978-0-321-94786-4', 'Half GirlFriend', 'Chetan Bhagat', 'halfgf.jpg', 'Chetan Bhagat, who has been slapped with Rs 1 crore defamation suit, has denied that \"Half Girlfriend\" has any reference to the family of erstwhile princely state of Dumraon in Bihar. The author said there was some \"misunderstanding\" as his book is a work of fiction', '20.00', 7),
('978-0-7303-1474-9', 'How to Stop Worrying and Start Living', 'Dale Carnegie', 'how.jpg', 'If worry fills up your mind and you end up struggling to conquer it, this book is all you need!\r\nâ€œThe secret of being miserable \r\nis to have the leisure to bother about \r\nwhether you are happy or not.â€\r\nFrom the fundamental facts that one must know about worry to the techniques in analyzing it, this book introduces ways to prevent fatigue and worry and cultivate a mental attitude that will bring peace and happiness. it offers insights on how to break the worry habit and brings for you not only a magic formula for solving worry situations but a way to conquer it altogether. \r\nA result of his own experiences and realizations, Dale Carnegieâ€™s How to Stop Worrying and Start Living has inspired many and helped them triumph over their worries. with timeless practical advice, this classic bestseller holds the power to change your future.', '88.00', 7),
('978-1-328-91124-7', 'Friday Black', 'Nana Kwame Adjei-Brenyah', 'black.jpg', 'Friday Black is the 2018 debut book by author Nana Kwame Adjei-Brenyah. Set in a dystopian near-future of twisted prosaic settings, the collection of short stories explores themes surrounding black identity as it relates to a range of contemporary social issues. The book enjoyed an overall positive reception, including the naming of Adjei-Brenyah as one of the \"5 Under 35 Authors\" for 2018, by the National Book Foundation.', '35.00', 4),
('978-1-49192-706-0', 'Girl in Room 105', 'Chetan Bhagat', 'the_girl.jpg', 'The Girl in Room 105 is the eighth fictional novel and the tenth overall book written by the Indian author Chetan Bhagat.[1][2] The book became a bestseller based on pre-order sales alone.', '44.00', 8),
('978-1-5098-7135-3', 'Children of Blood and Bone', 'Adeyemi Tomi', 'blood.jpg', 'Zelie is a diviner who lives with her brother Tzain and father. Her mother was killed in an attempt to wipe out all majis from Orisha. Shortly after her graduation, the guards arrive to demand tax from her family. This forces her to travel to the city to come up with the money which is when she bumps into princess Amari, who herself has stolen a powerful scroll that had the potential to restore magic to the kingdom. However, Amari also happens to be the daughter of the king who orchestrated the raid. What will happen to Zelie now when they cross paths? Will she be killed by the princess just like her mother or will they team up against the evil forces? Buy Children of Blood and Bone online and unravel the mystery and action of this fantasy book.', '100.00', 3),
('978-1-8440-8447-0', 'The Thorn Birds', 'McCullough Colleen', 'birds.jpg', 'Based in the Australian sheep country, this book tells the story of three generations of one family. It is centred around Meggie Cleary who is in love with a man she can never have. Her love haunts her throughout her life, and in bleak irony, she herself is the object of Ralph de Bricassartâ€™s attentions. Ralph is a humble parish priest who becomes a part of the innermost circles of the Vatican. Ralph can never consummate his feelings for Meggie because of his affiliation with the Church and his vow of celibacy. Yet, thoughts of her continue to seduce him constantly. The story of their doomed love is a haunting tale of romance, tragedy and one familyâ€™s fortunes and misfortunes over a period of forty years.', '20.00', 5),
('978-8-1722-3563-5', 'Eleven Minutes', 'Paulo Coelho', 'eleven.jpg', 'Eleven Minutes is a 2003 novel by Brazilian novelist Paulo Coelho that recounts the experiences of a young Brazilian prostitute and her journey to self-realization through sexual experience.', '60.00', 6),
('978-8-1840-0569-1', 'Getting India Back on Track', 'Bibek Debroy', 'back.jpg', 'Getting India Back on Track is a book for how Indian policymakers can help India return to the path of sustained economic growth and development. India is fallen behind from the amazing growth rates it enjoyed in the beginning of the 21st century. To make this happen, the government of India has to bring about a lot of reforms and reflect on its policy choices across a wide range of issues. This book coincides with the 2014 Indian elections to bring up a public debate on the reforms the new government should pursue in order for them to bring India back on the path of high growth. The book comprises of seventeen concise and focused memoranda, which will offer the readers a clear picture of Indiaâ€™s future.', '24.00', 2),
('978-9-3513-6080-3', 'Beyond Religion', 'Lama Dalai', 'beyond.jpg', 'Beyond Religion: Ethics for a Whole World is a 2011 book by 14th Dalai Lama. It is about Secular ethics use in our everyday life. Those are ethics that can be used by both religious and non-religious people. There are many suggestions about getting rid of destructive emotions and helping other people', '28.00', 6);

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `customerid` int(10) UNSIGNED NOT NULL,
  `name` varchar(60) COLLATE latin1_general_ci NOT NULL,
  `address` varchar(80) COLLATE latin1_general_ci NOT NULL,
  `city` varchar(30) COLLATE latin1_general_ci NOT NULL,
  `zip_code` varchar(10) COLLATE latin1_general_ci NOT NULL,
  `country` varchar(60) COLLATE latin1_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`customerid`, `name`, `address`, `city`, `zip_code`, `country`) VALUES
(1, 'a', 'a', 'a', 'a', 'a'),
(2, 'b', 'b', 'b', 'b', 'b'),
(3, 'test', '123 test', '12121', 'test', 'test'),
(4, 'cfgvhb', 'gvhbnn', 'bjanksnbb', '444122', 'jknsnmxn'),
(5, 'admin', 'gvhbnn', 'de ', '', ''),
(6, '  bfd', 'gvhbnn', 'Jalandhar', '444122', 'india'),
(7, 'admin', 'gvhbnn', 'Jalandhar', '444122', 'india'),
(8, 'dtfgv', 'gvhbnn', 'Jalandhar', '444122', 'india'),
(9, 'xgfv', 'xgfvb ', 'Jalandhar', '542', ''),
(10, '', '', '', '', ''),
(11, 'Shashi Bhushan', 'gvhbnn', 'Jalandhar', '1452121', 'india'),
(12, 'Shashi Bhushan', 'gvhbnn', 'Jalandhar', '144411', 'india'),
(13, 'admin', 'gvhbnn', 'Jalandhar', '144411', 'india'),
(14, 'admin', 'hbcj', 'bjanksnbb', '144411', 'india'),
(15, 'admin', 'gvhbnn', 'de ', '121445', 'india'),
(16, 'ff', 'gfgf', 'gfgg', '111111', 'f'),
(17, 'Shashi Bhushan', 'esrdtfcg', 'bk', '45', 'Germany');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `orderid` int(10) UNSIGNED NOT NULL,
  `customerid` int(10) UNSIGNED NOT NULL,
  `amount` decimal(6,2) DEFAULT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `ship_name` char(60) COLLATE latin1_general_ci NOT NULL,
  `ship_address` char(80) COLLATE latin1_general_ci NOT NULL,
  `ship_city` char(30) COLLATE latin1_general_ci NOT NULL,
  `ship_zip_code` char(10) COLLATE latin1_general_ci NOT NULL,
  `ship_country` char(20) COLLATE latin1_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`orderid`, `customerid`, `amount`, `date`, `ship_name`, `ship_address`, `ship_city`, `ship_zip_code`, `ship_country`) VALUES
(1, 7, '20.00', '2019-04-09 14:36:46', 'admin', 'gvhbnn', 'Jalandhar', '444122', 'india'),
(2, 8, '108.00', '2019-04-09 14:38:20', 'dtfgv', 'gvhbnn', 'Jalandhar', '444122', 'india'),
(10, 9, '28.00', '2019-04-09 17:15:26', 'xgfv', 'xgfvb', 'Jalandhar', '542', ''),
(11, 10, '0.00', '2019-04-09 17:15:27', '', '', '', '', ''),
(12, 11, '65.00', '2019-04-09 17:17:13', 'Shashi Bhushan', 'gvhbnn', 'Jalandhar', '1452121', 'india'),
(13, 12, '20.00', '2019-04-10 00:55:18', 'Shashi Bhushan', 'gvhbnn', 'Jalandhar', '144411', 'india'),
(14, 7, '20.00', '2019-04-10 01:13:45', 'admin', 'gvhbnn', 'Jalandhar', '444122', 'india'),
(15, 13, '78.00', '2019-04-10 02:11:20', 'admin', 'gvhbnn', 'Jalandhar', '144411', 'india'),
(16, 14, '72.00', '2019-04-10 04:10:07', 'admin', 'hbcj', 'bjanksnbb', '144411', 'india'),
(17, 15, '84.00', '2019-04-10 04:13:05', 'admin', 'gvhbnn', 'de', '121445', 'india'),
(18, 16, '88.00', '2019-04-10 05:19:47', 'ff', 'gfgf', 'gfgg', '111111', 'f'),
(19, 17, '20.00', '2019-04-14 14:17:27', 'Shashi Bhushan', 'esrdtfcg', 'bk', '45', 'Germany');

-- --------------------------------------------------------

--
-- Table structure for table `order_items`
--

CREATE TABLE `order_items` (
  `orderid` int(10) UNSIGNED NOT NULL,
  `book_isbn` varchar(20) COLLATE latin1_general_ci NOT NULL,
  `item_price` decimal(6,2) NOT NULL,
  `quantity` tinyint(3) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `order_items`
--

INSERT INTO `order_items` (`orderid`, `book_isbn`, `item_price`, `quantity`) VALUES
(1, '978-1-118-94924-5', '20.00', 1),
(1, '978-1-44937-019-0', '20.00', 1),
(1, '978-1-49192-706-9', '20.00', 1),
(2, '978-1-118-94924-5', '20.00', 1),
(2, '978-1-44937-019-0', '20.00', 1),
(2, '978-1-49192-706-9', '20.00', 1),
(3, '978-0-321-94786-4', '20.00', 1),
(1, '978-1-49192-706-9', '20.00', 1),
(5, '978-1-484217-26-9', '20.00', 1),
(6, '978-0-7303-1474-9', '88.00', 2),
(7, '978-1-611-97206-1', '0.00', 1),
(7, '978-0-321-94786-4', '20.00', 20),
(8, '978-0-321-94786-4', '20.00', 1),
(9, '978-0-7303-1474-9', '88.00', 1),
(9, '978-0-7303-1484-4', '20.00', 1),
(10, '978-9-3513-6080-3', '28.00', 1),
(12, '978-1-328-91124-7', '35.00', 1),
(12, '978-0-1434-2018-7', '30.00', 1),
(13, '978-1-8440-8447-0', '20.00', 1),
(1, '978-0-321-94786-4', '20.00', 1),
(15, '978-9-3513-6080-3', '28.00', 1),
(15, '978-0-1434-2018-7', '30.00', 1),
(15, '978-1-8440-8447-0', '20.00', 1),
(16, '978-9-3513-6080-3', '28.00', 1),
(16, '978-1-49192-706-0', '44.00', 1),
(17, '978-8-1840-0569-1', '24.00', 1),
(17, '978-8-1722-3563-5', '60.00', 1),
(18, '978-8-1840-0569-1', '24.00', 2),
(18, '978-0-321-94786-4', '20.00', 2),
(19, '978-1-8440-8447-0', '20.00', 1);

-- --------------------------------------------------------

--
-- Table structure for table `publisher`
--

CREATE TABLE `publisher` (
  `publisherid` int(10) UNSIGNED NOT NULL,
  `publisher_name` varchar(60) COLLATE latin1_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `publisher`
--

INSERT INTO `publisher` (`publisherid`, `publisher_name`) VALUES
(1, 'Penguin Random House India'),
(2, 'Penguin'),
(3, 'Macmillan Children\'s Books'),
(4, 'Mariner Books'),
(5, 'Hachette'),
(6, 'Harper'),
(7, 'Chetan Bhagat'),
(8, 'Westland');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`name`,`pass`);

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`book_isbn`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`customerid`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`orderid`);

--
-- Indexes for table `publisher`
--
ALTER TABLE `publisher`
  ADD PRIMARY KEY (`publisherid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `customerid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `orderid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `publisher`
--
ALTER TABLE `publisher`
  MODIFY `publisherid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- Database: `xyz`
--
CREATE DATABASE IF NOT EXISTS `xyz` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `xyz`;

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
(3, '2019_02_21_174533_create_rahul_table', 2),
(4, '2019_02_21_175137_add_is_admin_to_rahul_tables', 3),
(5, '2019_02_21_175513_add_is_admin_to_rahul_tables', 4);

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
-- Table structure for table `rahul`
--

CREATE TABLE `rahul` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
-- Indexes for table `rahul`
--
ALTER TABLE `rahul`
  ADD PRIMARY KEY (`id`),
  ADD KEY `rahul_email_index` (`email`);

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
-- AUTO_INCREMENT for table `rahul`
--
ALTER TABLE `rahul`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
