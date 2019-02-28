-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 31, 2018 at 08:38 PM
-- Server version: 10.1.34-MariaDB
-- PHP Version: 7.2.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `onlinenilkhet`
--

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
(1, '2018_08_17_203349_create_tb1_vendor_table', 1),
(2, '2018_08_18_025727_create_tb1_category_table', 2),
(3, '2018_08_18_205719_create_vendor_table', 3),
(4, '2018_08_18_231329_create_tb1_books_table', 4),
(5, '2018_08_20_034305_create_tb1_slider_table', 5),
(6, '2018_08_26_014115_create_tb1_customer_table', 6),
(7, '2018_08_27_154736_create_tb1_shipping_table', 7),
(8, '2018_08_29_194719_create_tb1_payment_table', 8),
(9, '2018_08_29_194804_create_tb1_order_table', 8),
(10, '2018_08_29_194838_create_tb1_order_details_table', 8);

-- --------------------------------------------------------

--
-- Table structure for table `tb1_books`
--

CREATE TABLE `tb1_books` (
  `book_id` int(10) UNSIGNED NOT NULL,
  `book_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` int(11) NOT NULL,
  `vendor_id` int(11) NOT NULL,
  `book_short_description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `book_long_description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `book_price` double(8,2) NOT NULL,
  `book_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `book_color` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `publication_status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tb1_books`
--

INSERT INTO `tb1_books` (`book_id`, `book_name`, `category_id`, `vendor_id`, `book_short_description`, `book_long_description`, `book_price`, `book_image`, `book_color`, `publication_status`, `created_at`, `updated_at`) VALUES
(1, 'Set For Life', 16, 1, 'abcd', 'abcd', 300.00, 'image/ElTUAFA6lOzovt7VYSc5.jpg', 'green', 1, NULL, NULL),
(3, 'A year of medical thinking', 14, 1, 'abcd', 'abcd', 350.00, 'image/g8L8svCmIg6bgIPInmM2.jpg', 'white', 1, NULL, NULL),
(8, 'Sandra Brown Friction', 13, 1, 'abcd', 'abcd', 245.00, 'image/cVk9NqYZKSt7Xfpditl3.jpg', 'white,black', 1, NULL, NULL),
(9, 'The C++ Programming Language', 15, 1, 'abcd', 'abcd', 230.00, 'image/3ak7YPtM6tm927LfYhRF.jpg', 'blue', 1, NULL, NULL),
(10, 'Green Logistic', 18, 1, 'abcd', 'abcd', 300.00, 'image/qDIOzec6mTtSt9m9bSRS.jpg', 'Sky-blue', 1, NULL, NULL),
(11, 'Essential Guide For Practical Orthopaedics', 14, 1, 'abccd', 'accdd', 500.00, 'image/oibbyrUU71Q5bMvo4jI8.jpg', 'green', 1, NULL, NULL),
(12, 'Security Engineering', 15, 1, 'abcd', 'abcd', 310.00, 'image/PNEfeNx1HDDTaOfMS4po.jpg', 'Black', 1, NULL, NULL),
(13, 'The Lies They Tell', 13, 1, 'abcd', 'abcd', 130.00, 'image/NcjFPqswPIDBbqmYIfQN.jpg', 'Dark-green', 1, NULL, NULL),
(21, 'Think Think Think', 18, 1, 'abcd', 'abcd', 110.00, 'image/OD7ghnMVlmlc7FD6BfG5.jpg', 'yellow', 0, NULL, NULL),
(22, 'The Lies They Tell', 22, 1, 'abcdabcd', 'abcd', 120.00, 'image/VmY7ItswrXTmSg3LAqJU.jpg', 'green', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tb1_category`
--

CREATE TABLE `tb1_category` (
  `category_id` int(10) UNSIGNED NOT NULL,
  `category_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `publication_status` int(2) DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tb1_category`
--

INSERT INTO `tb1_category` (`category_id`, `category_name`, `category_description`, `publication_status`, `created_at`, `updated_at`) VALUES
(14, 'Medical', 'medical category', 1, NULL, NULL),
(15, 'Engineering', 'This is engineering category', 1, NULL, NULL),
(16, 'Non-friction', 'This is non-friction category', 1, NULL, NULL),
(18, 'Others', 'This is others section', 1, NULL, NULL),
(22, 'Friction', 'gggg', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tb1_customer`
--

CREATE TABLE `tb1_customer` (
  `customer_id` int(10) UNSIGNED NOT NULL,
  `customer_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tb1_customer`
--

INSERT INTO `tb1_customer` (`customer_id`, `customer_name`, `customer_email`, `password`, `mobile_number`, `created_at`, `updated_at`) VALUES
(1, 'asd', 'ggg@fff', '698d51a19d8a121ce581499d7b701668', '0909', NULL, NULL),
(2, 'asd', 'ggg@fff', 'a5a7158118e59ee590424b55bb9aed17', '0909', NULL, NULL),
(3, 'asd66', 'ggg@fff', 'cfcd208495d565ef66e7dff9f98764da', '0909', NULL, NULL),
(4, 'abcd', 'abcd@abcd', 'cfcd208495d565ef66e7dff9f98764da', '08', NULL, NULL),
(5, 'abcd', 'abcd@abcd', 'cfcd208495d565ef66e7dff9f98764da', '08', NULL, NULL),
(6, 'abcd', 'abcde@abcde', 'cfcd208495d565ef66e7dff9f98764da', '00', NULL, NULL),
(7, 'a', 'a@gmail.com', 'cfcd208495d565ef66e7dff9f98764da', '000', NULL, NULL),
(8, 'dilshad', 'dilshad@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', '000', NULL, NULL),
(9, 'shuvo', 'suvo@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', '000', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tb1_order`
--

CREATE TABLE `tb1_order` (
  `order_id` int(10) UNSIGNED NOT NULL,
  `customer_id` int(11) NOT NULL,
  `shipping_id` int(11) NOT NULL,
  `payment_id` int(11) NOT NULL,
  `order_total` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tb1_order`
--

INSERT INTO `tb1_order` (`order_id`, `customer_id`, `shipping_id`, `payment_id`, `order_total`, `order_status`, `created_at`, `updated_at`) VALUES
(1, 9, 6, 4, '600.00', 'pending', '2018-08-30 18:24:39', NULL),
(2, 9, 6, 5, '600.00', 'pending', '2018-08-30 18:25:07', NULL),
(3, 9, 6, 6, '600.00', 'pending', '2018-08-30 19:37:45', NULL),
(4, 9, 6, 7, '600.00', 'pending', '2018-08-30 19:38:00', NULL),
(5, 9, 6, 8, '0.00', 'pending', '2018-08-30 19:38:58', NULL),
(6, 9, 7, 9, '350.00', 'pending', '2018-08-30 19:40:32', NULL),
(7, 9, 7, 10, '350.00', 'pending', '2018-08-30 19:40:33', NULL),
(8, 9, 7, 11, '0.00', 'pending', '2018-08-30 19:41:30', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tb1_order_details`
--

CREATE TABLE `tb1_order_details` (
  `order_details_id` int(10) UNSIGNED NOT NULL,
  `order_id` int(11) NOT NULL,
  `book_id` int(11) NOT NULL,
  `book_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `book_price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `book_sales_quantity` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tb1_order_details`
--

INSERT INTO `tb1_order_details` (`order_details_id`, `order_id`, `book_id`, `book_name`, `book_price`, `book_sales_quantity`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '1', '300', '2', NULL, NULL),
(2, 2, 1, '1', '300', '2', NULL, NULL),
(3, 3, 1, '1', '300', '2', NULL, NULL),
(4, 4, 1, '1', '300', '2', NULL, NULL),
(5, 6, 3, '3', '350', '1', NULL, NULL),
(6, 7, 3, '3', '350', '1', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tb1_payment`
--

CREATE TABLE `tb1_payment` (
  `payment_id` int(10) UNSIGNED NOT NULL,
  `payment_method` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tb1_payment`
--

INSERT INTO `tb1_payment` (`payment_id`, `payment_method`, `payment_status`, `created_at`, `updated_at`) VALUES
(1, 'handcash', 'pending', '2018-08-30 18:18:01', NULL),
(2, 'handcash', 'pending', '2018-08-30 18:19:23', NULL),
(3, 'handcash', 'pending', '2018-08-30 18:22:44', NULL),
(4, 'handcash', 'pending', '2018-08-30 18:24:39', NULL),
(5, 'handcash', 'pending', '2018-08-30 18:25:07', NULL),
(6, 'handcash', 'pending', '2018-08-30 19:37:45', NULL),
(7, 'handcash', 'pending', '2018-08-30 19:38:00', NULL),
(8, 'handcash', 'pending', '2018-08-30 19:38:58', NULL),
(9, 'handcash', 'pending', '2018-08-30 19:40:32', NULL),
(10, 'handcash', 'pending', '2018-08-30 19:40:33', NULL),
(11, 'handcash', 'pending', '2018-08-30 19:41:30', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tb1_shipping`
--

CREATE TABLE `tb1_shipping` (
  `shipping_id` int(10) UNSIGNED NOT NULL,
  `shipping_email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shipping_first_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shipping_last_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shipping_address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shipping_mobile_number` varchar(14) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shipping_city` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tb1_shipping`
--

INSERT INTO `tb1_shipping` (`shipping_id`, `shipping_email`, `shipping_first_name`, `shipping_last_name`, `shipping_address`, `shipping_mobile_number`, `shipping_city`, `created_at`, `updated_at`) VALUES
(1, 'johue', 'jik', 'oo', 'ooo', 'kk', 'dhaka', NULL, NULL),
(2, 'dilshad@gmasil.com', 'dilshad', 'jahan', '25/b', '000', 'dhaka', NULL, NULL),
(3, 'hhh', 'kkk', 'll', 'll', '000', 'hk', NULL, NULL),
(4, 'kk', 'll', 'mm', 'hh', 'bbb', 'bbb', NULL, NULL),
(5, 'dsf', 'sxdsdc', 'sxdsc', 'scdc', 'dcd', 'sdxs', NULL, NULL),
(6, 'ss', 'dd', 'aaa', 'ddd', 'eee', 'dhaka', NULL, NULL),
(7, 'rf', 'fr', 'drdf', 'rfrf', 'drf', 'frfr', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tb1_slider`
--

CREATE TABLE `tb1_slider` (
  `slider_id` int(10) UNSIGNED NOT NULL,
  `slider_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `publication_status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tb1_slider`
--

INSERT INTO `tb1_slider` (`slider_id`, `slider_image`, `publication_status`, `created_at`, `updated_at`) VALUES
(1, 'slider/ci4M8DoLv4lP6Z6U5Hdo.jpg', '1', NULL, NULL),
(2, 'slider/cVn6B3zf9Zi7DDVWDQjv.jpg', '1', NULL, NULL),
(3, 'slider/JXmNjAs9uLBKtfd5QGLg.jpg', '1', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tb1_vendor`
--

CREATE TABLE `tb1_vendor` (
  `vendor_id` int(10) UNSIGNED NOT NULL,
  `vendor_email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `vendor_password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `vendor_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `vendor_phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tb1_vendor`
--

INSERT INTO `tb1_vendor` (`vendor_id`, `vendor_email`, `vendor_password`, `vendor_name`, `vendor_phone`, `created_at`, `updated_at`) VALUES
(1, 'rupa@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', 'dilshad', '01689967647', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `vendor`
--

CREATE TABLE `vendor` (
  `vendor_id` int(10) UNSIGNED NOT NULL,
  `vendor_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `vendor_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `publication_status` int(11) NOT NULL,
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
-- Indexes for table `tb1_books`
--
ALTER TABLE `tb1_books`
  ADD PRIMARY KEY (`book_id`);

--
-- Indexes for table `tb1_category`
--
ALTER TABLE `tb1_category`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `tb1_customer`
--
ALTER TABLE `tb1_customer`
  ADD PRIMARY KEY (`customer_id`);

--
-- Indexes for table `tb1_order`
--
ALTER TABLE `tb1_order`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `tb1_order_details`
--
ALTER TABLE `tb1_order_details`
  ADD PRIMARY KEY (`order_details_id`);

--
-- Indexes for table `tb1_payment`
--
ALTER TABLE `tb1_payment`
  ADD PRIMARY KEY (`payment_id`);

--
-- Indexes for table `tb1_shipping`
--
ALTER TABLE `tb1_shipping`
  ADD PRIMARY KEY (`shipping_id`);

--
-- Indexes for table `tb1_slider`
--
ALTER TABLE `tb1_slider`
  ADD PRIMARY KEY (`slider_id`);

--
-- Indexes for table `tb1_vendor`
--
ALTER TABLE `tb1_vendor`
  ADD PRIMARY KEY (`vendor_id`);

--
-- Indexes for table `vendor`
--
ALTER TABLE `vendor`
  ADD PRIMARY KEY (`vendor_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tb1_books`
--
ALTER TABLE `tb1_books`
  MODIFY `book_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `tb1_category`
--
ALTER TABLE `tb1_category`
  MODIFY `category_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `tb1_customer`
--
ALTER TABLE `tb1_customer`
  MODIFY `customer_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tb1_order`
--
ALTER TABLE `tb1_order`
  MODIFY `order_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tb1_order_details`
--
ALTER TABLE `tb1_order_details`
  MODIFY `order_details_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tb1_payment`
--
ALTER TABLE `tb1_payment`
  MODIFY `payment_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `tb1_shipping`
--
ALTER TABLE `tb1_shipping`
  MODIFY `shipping_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tb1_slider`
--
ALTER TABLE `tb1_slider`
  MODIFY `slider_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tb1_vendor`
--
ALTER TABLE `tb1_vendor`
  MODIFY `vendor_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `vendor`
--
ALTER TABLE `vendor`
  MODIFY `vendor_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
