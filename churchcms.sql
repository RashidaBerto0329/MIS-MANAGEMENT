-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 06, 2024 at 03:11 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `churchcms`
--

-- --------------------------------------------------------

--
-- Table structure for table `acolytes`
--

CREATE TABLE `acolytes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `collection_record_id` bigint(20) UNSIGNED NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `middle_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `acolytes`
--

INSERT INTO `acolytes` (`id`, `collection_record_id`, `first_name`, `middle_name`, `last_name`, `created_at`, `updated_at`) VALUES
(1, 2, '123123', '123', '123123', '2024-11-12 05:50:26', '2024-11-12 05:50:26'),
(2, 3, 'asdasd', 'asdasd', 'asdads', '2024-11-12 05:55:51', '2024-11-12 05:55:51'),
(3, 4, 'qweq', 'weqwe', 'qwe', '2024-11-12 06:14:32', '2024-11-12 06:14:32'),
(4, 5, '123123', '123', '123123', '2024-11-12 06:14:52', '2024-11-12 06:14:52'),
(5, 5, '123123', '123', '13132', '2024-11-12 06:14:52', '2024-11-12 06:14:52'),
(6, 6, 'aaaa', 'aaa', 'aaa', '2024-12-01 04:49:01', '2024-12-01 04:49:01');

-- --------------------------------------------------------

--
-- Table structure for table `baptismfolder`
--

CREATE TABLE `baptismfolder` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `year` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `archived` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `baptismfolder`
--

INSERT INTO `baptismfolder` (`id`, `year`, `created_at`, `updated_at`, `archived`) VALUES
(1, 2001, '2024-09-15 01:29:01', '2024-11-23 00:33:05', 0),
(12, 2002, '2024-09-15 07:22:38', '2024-09-15 07:22:38', 0),
(13, 2003, '2024-09-18 01:13:06', '2024-11-14 02:12:04', 1),
(14, 2004, '2024-09-18 17:33:25', '2024-09-18 17:33:25', 0),
(15, 2006, '2024-09-18 17:33:37', '2024-09-18 17:33:37', 0),
(16, 2005, '2024-09-22 05:56:23', '2024-09-22 05:56:23', 0),
(17, 2020, '2024-09-26 04:20:27', '2024-09-26 04:20:27', 0);

-- --------------------------------------------------------

--
-- Table structure for table `bookfolder`
--

CREATE TABLE `bookfolder` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `book_number` int(11) NOT NULL,
  `baptism_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `archive` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bookfolder`
--

INSERT INTO `bookfolder` (`id`, `book_number`, `baptism_id`, `created_at`, `updated_at`, `archive`) VALUES
(4, 1, 1, '2024-09-15 06:39:39', '2024-11-23 00:33:05', 0),
(5, 5, 1, '2024-09-15 06:39:49', '2024-11-23 00:33:22', 0),
(6, 2, 1, '2024-09-15 06:44:38', '2024-11-23 00:33:22', 0),
(7, 3, 1, '2024-09-15 06:53:19', '2024-11-23 00:33:22', 0),
(8, 4, 1, '2024-09-15 07:22:28', '2024-11-23 00:33:22', 0),
(9, 1, 12, '2024-09-15 07:22:43', '2024-09-15 07:22:43', 0),
(10, 8, 1, '2024-09-21 00:07:15', '2024-11-23 00:33:22', 0);

-- --------------------------------------------------------

--
-- Table structure for table `bookrecord`
--

CREATE TABLE `bookrecord` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `book_id` bigint(20) UNSIGNED DEFAULT NULL,
  `series_year_no` varchar(255) NOT NULL,
  `book_no` varchar(255) NOT NULL,
  `page_no` varchar(255) NOT NULL,
  `record_code` varchar(255) NOT NULL,
  `baptism_date` date NOT NULL,
  `child_first_name` varchar(255) NOT NULL,
  `child_middle_name` varchar(255) NOT NULL,
  `child_last_name` varchar(255) NOT NULL,
  `child_dob` date NOT NULL,
  `child_province` varchar(255) NOT NULL,
  `child_city` varchar(255) NOT NULL,
  `father_first_name` varchar(255) NOT NULL,
  `father_middle_name` varchar(255) NOT NULL,
  `father_last_name` varchar(255) NOT NULL,
  `father_province` varchar(255) NOT NULL,
  `father_city` varchar(255) NOT NULL,
  `mother_first_name` varchar(255) NOT NULL,
  `mother_middle_name` varchar(255) NOT NULL,
  `mother_last_name` varchar(255) NOT NULL,
  `mother_province` varchar(255) NOT NULL,
  `mother_city` varchar(255) NOT NULL,
  `purok_no` varchar(255) NOT NULL,
  `street_address` varchar(255) NOT NULL,
  `barangay` varchar(255) NOT NULL,
  `residence_province` varchar(255) NOT NULL,
  `residence_city` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `archive` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bookrecord`
--

INSERT INTO `bookrecord` (`id`, `book_id`, `series_year_no`, `book_no`, `page_no`, `record_code`, `baptism_date`, `child_first_name`, `child_middle_name`, `child_last_name`, `child_dob`, `child_province`, `child_city`, `father_first_name`, `father_middle_name`, `father_last_name`, `father_province`, `father_city`, `mother_first_name`, `mother_middle_name`, `mother_last_name`, `mother_province`, `mother_city`, `purok_no`, `street_address`, `barangay`, `residence_province`, `residence_city`, `created_at`, `updated_at`, `archive`) VALUES
(1, 6, '2001', '2', '2', 'B2001 - 001', '2222-02-22', 'kim123', 'kim123', 'kim', '2222-02-22', 'Cavite', 'City of Tagaytay', 'kim', 'kim', 'kim', 'Batangas', 'Mataasnakahoy', 'kim', 'kim', 'kim', 'Pangasinan', 'Aguilar', 'kim', 'kim', 'kim', 'Batangas', 'Malvar', '2024-09-26 07:34:33', '2024-11-23 00:33:22', 0),
(2, 6, '2001', '2', '2', 'B2001 - 001', '2222-02-22', 'haha', 'kim1232', 'kim', '2222-02-22', 'Cavite', 'City of Tagaytay', 'kim', 'kim', 'kim', 'Batangas', 'Mataasnakahoy', 'kim', 'kim', 'kim', 'Pangasinan', 'Aguilar', 'kim', 'kim', 'kim', 'Batangas', 'Malvar', '2024-09-26 07:35:36', '2024-11-28 06:00:30', 0);

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cache`
--

INSERT INTO `cache` (`key`, `value`, `expiration`) VALUES
('admin@gmail.com|127.0.0.1', 'i:3;', 1732689463),
('admin@gmail.com|127.0.0.1:timer', 'i:1732689463;', 1732689463);

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
-- Table structure for table `collection_records`
--

CREATE TABLE `collection_records` (
  `id` int(11) NOT NULL,
  `collection_date` date NOT NULL,
  `start_time` time NOT NULL,
  `end_time` time NOT NULL,
  `money_amount` decimal(10,2) DEFAULT 0.00,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `archive` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `collection_records`
--

INSERT INTO `collection_records` (`id`, `collection_date`, `start_time`, `end_time`, `money_amount`, `created_at`, `updated_at`, `archive`) VALUES
(2, '1111-11-11', '00:31:00', '12:03:00', 123123.00, '2024-11-12 05:50:26', '2024-11-12 05:50:26', 0),
(3, '2024-11-06', '12:21:00', '12:31:00', 123123.00, '2024-11-12 05:55:51', '2024-11-12 05:55:51', 0),
(4, '2312-12-31', '12:31:00', '12:31:00', 123123.00, '2024-11-12 06:14:32', '2024-11-12 06:14:32', 0),
(5, '1332-12-22', '12:31:00', '12:31:00', 123123.00, '2024-11-12 06:14:52', '2024-12-01 07:26:08', 0),
(6, '2024-12-11', '11:11:00', '12:32:00', 123123.00, '2024-12-01 04:49:01', '2024-12-01 04:49:01', 0);

-- --------------------------------------------------------

--
-- Table structure for table `confirmationfolder`
--

CREATE TABLE `confirmationfolder` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `year` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `archive` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `confirmationfolder`
--

INSERT INTO `confirmationfolder` (`id`, `year`, `created_at`, `updated_at`, `archive`) VALUES
(1, 2001, '2024-09-29 22:40:15', '2024-11-27 22:34:31', 0),
(2, 2002, '2024-09-29 22:41:25', '2024-11-24 22:09:56', 0);

-- --------------------------------------------------------

--
-- Table structure for table `confirmationrecord`
--

CREATE TABLE `confirmationrecord` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `confirmation_id` bigint(20) UNSIGNED NOT NULL,
  `page_no` varchar(255) NOT NULL,
  `series_year_no` varchar(255) NOT NULL,
  `record_code` varchar(255) NOT NULL,
  `confirmation_date` date NOT NULL,
  `child_first_name` varchar(255) NOT NULL,
  `child_middle_name` varchar(255) DEFAULT NULL,
  `child_last_name` varchar(255) NOT NULL,
  `child_dob` date NOT NULL,
  `child_province` varchar(255) NOT NULL,
  `child_city` varchar(255) NOT NULL,
  `father_first_name` varchar(255) NOT NULL,
  `father_middle_name` varchar(255) DEFAULT NULL,
  `father_last_name` varchar(255) NOT NULL,
  `mother_first_name` varchar(255) NOT NULL,
  `mother_middle_name` varchar(255) DEFAULT NULL,
  `mother_last_name` varchar(255) NOT NULL,
  `purok_no` varchar(255) NOT NULL,
  `street_address` varchar(255) NOT NULL,
  `barangay` varchar(255) NOT NULL,
  `residence_province` varchar(255) NOT NULL,
  `residence_city` varchar(255) NOT NULL,
  `godparent_first_name` varchar(255) NOT NULL,
  `godparent_middle_name` varchar(255) DEFAULT NULL,
  `godparent_last_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `archive` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `confirmationrecord`
--

INSERT INTO `confirmationrecord` (`id`, `confirmation_id`, `page_no`, `series_year_no`, `record_code`, `confirmation_date`, `child_first_name`, `child_middle_name`, `child_last_name`, `child_dob`, `child_province`, `child_city`, `father_first_name`, `father_middle_name`, `father_last_name`, `mother_first_name`, `mother_middle_name`, `mother_last_name`, `purok_no`, `street_address`, `barangay`, `residence_province`, `residence_city`, `godparent_first_name`, `godparent_middle_name`, `godparent_last_name`, `created_at`, `updated_at`, `archive`) VALUES
(1, 1, '2', '', '2', '2024-09-04', '2', '2', '2', '2024-09-03', '2', '2', '2', '2', '2', '2', '2', '2', '2', '2', '2', '2', '2', '2', '2', '2', '2024-09-04 08:13:50', '2024-11-27 22:34:31', 0),
(2, 1, '2', '2001', 'C2001 - 003', '2222-02-22', 'haha22asd', 'haha2', 'haha2', '2222-02-22', 'Ilocos Sur', 'Burgos', '2131', '23123', '1231', '23123', '3123', '123', '123123', '12313', '123123', 'Aurora', 'Casiguran', '1231', '23123', '123', '2024-09-30 00:56:57', '2024-12-01 11:16:36', 0);

-- --------------------------------------------------------

--
-- Table structure for table `donations`
--

CREATE TABLE `donations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `type` varchar(255) NOT NULL,
  `cash_amount` decimal(10,2) DEFAULT NULL,
  `inkind_details` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `archive` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `donations`
--

INSERT INTO `donations` (`id`, `type`, `cash_amount`, `inkind_details`, `created_at`, `updated_at`, `archive`) VALUES
(1, 'cash', 123123.00, NULL, '2024-11-11 19:35:39', '2024-11-30 23:18:57', 0),
(5, 'cash', 123.00, NULL, '2024-11-11 20:03:31', '2024-11-11 20:03:31', 0),
(6, 'inkind', NULL, 'asdad', '2024-11-11 20:06:13', '2024-11-11 20:06:13', 0),
(7, 'both', NULL, 'qweqwe', '2024-11-11 20:28:14', '2024-11-11 20:28:14', 0),
(8, 'Cash and In-kind', 21.00, '123', '2024-11-11 20:54:48', '2024-11-11 20:54:48', 0),
(9, 'Cash', 1111.00, NULL, '2024-12-01 04:44:43', '2024-12-01 04:44:43', 0),
(10, 'Cash and In-kind', 100000.00, 'asdasd', '2024-12-01 04:59:15', '2024-12-01 04:59:15', 0);

-- --------------------------------------------------------

--
-- Table structure for table `donors`
--

CREATE TABLE `donors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `donation_id` bigint(20) UNSIGNED NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `middle_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) NOT NULL,
  `contact_no` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `donors`
--

INSERT INTO `donors` (`id`, `donation_id`, `first_name`, `middle_name`, `last_name`, `contact_no`, `created_at`, `updated_at`) VALUES
(1, 1, 'qweqwe', 'qwe', 'qweqwe', 'qweqwe', '2024-11-11 19:35:39', '2024-11-11 19:35:39'),
(2, 2, 'Kim', 'Kim', 'Kim', 'Kim', '2024-11-11 19:36:29', '2024-11-11 19:36:29'),
(3, 3, 'zxc', 'zxc', 'zxc', '213', '2024-11-11 19:39:43', '2024-11-11 19:39:43'),
(4, 4, 'asd', 'asd', 'asd', 'asd', '2024-11-11 20:02:46', '2024-11-11 20:02:46'),
(5, 5, 'aaa', 'aaa', 'aaa', 'aaa', '2024-11-11 20:03:31', '2024-11-11 20:03:31'),
(6, 6, 'sss', 'sss', 'ss', 'ss', '2024-11-11 20:06:13', '2024-11-11 20:06:13'),
(7, 7, 'aaa', 'aaa', 'aaa', 'aa', '2024-11-11 20:28:14', '2024-11-11 20:28:14'),
(8, 7, 'vvv', 'vv', 'vv', 'vv', '2024-11-11 20:28:14', '2024-11-11 20:28:14'),
(9, 8, 'aasdasdasd', 'asdas', 'asdasd', 'asdasd', '2024-11-11 20:54:48', '2024-11-11 20:54:48'),
(10, 8, 'asdasd', 'asd', 'asdasd', 'asdasdasd', '2024-11-11 20:54:48', '2024-11-11 20:54:48'),
(11, 9, 'qweq', 'qwe', 'qew', 'qwe', '2024-12-01 04:44:43', '2024-12-01 04:44:43'),
(12, 10, 'vcx', 'vcx', 'vxc', '00000000000', '2024-12-01 04:59:15', '2024-12-01 04:59:15');

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE `events` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `occasion` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `year` int(11) NOT NULL,
  `month` int(11) NOT NULL,
  `day` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `events`
--

INSERT INTO `events` (`id`, `occasion`, `name`, `year`, `month`, `day`, `created_at`, `updated_at`) VALUES
(37, '123', '123', 2024, 11, 13, '2024-11-12 21:11:06', '2024-11-12 21:11:06'),
(38, '123', '123', 2024, 11, 13, '2024-11-12 21:11:06', '2024-11-12 21:11:06'),
(39, 'qweqwe', 'qwe', 2024, 11, 15, '2024-11-12 21:11:49', '2024-11-12 21:11:49'),
(40, 'qweqwe', 'qwe', 2024, 11, 15, '2024-11-12 21:11:49', '2024-11-12 21:11:49'),
(41, 'qwe', 'qwe', 2024, 11, 21, '2024-11-12 21:12:34', '2024-11-12 21:12:34'),
(42, 'Wedding', 'erick', 2024, 11, 14, '2024-11-14 01:58:30', '2024-11-14 01:58:30');

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
-- Table structure for table `funeralfolder`
--

CREATE TABLE `funeralfolder` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `year` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `archive` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `funeralfolder`
--

INSERT INTO `funeralfolder` (`id`, `year`, `created_at`, `updated_at`, `archive`) VALUES
(1, 2024, '2024-09-26 03:53:08', '2024-11-24 22:24:51', 1),
(2, 2001, '2024-09-26 04:12:13', '2024-11-14 21:24:55', 0);

-- --------------------------------------------------------

--
-- Table structure for table `funeralrecord`
--

CREATE TABLE `funeralrecord` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `funeral_id` bigint(20) UNSIGNED NOT NULL,
  `record_code` varchar(255) NOT NULL,
  `funeral_date` date NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `middle_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `dob` date NOT NULL,
  `dod` date NOT NULL,
  `contact` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `archive` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `funeralrecord`
--

INSERT INTO `funeralrecord` (`id`, `funeral_id`, `record_code`, `funeral_date`, `first_name`, `middle_name`, `last_name`, `dob`, `dod`, `contact`, `created_at`, `updated_at`, `archive`) VALUES
(1, 1, 'F2024 - 001', '2024-09-12', 'Kim', 'Kim', 'mad', '2024-10-01', '2024-09-17', '09909009', '2024-09-26 06:54:26', '2024-11-24 22:24:51', 1),
(2, 1, 'F2024 - 002', '2024-09-13', 'admin', 'Wowo', 'mad', '2024-10-03', '2024-09-27', '12312312313', '2024-09-26 06:54:46', '2024-11-24 22:24:51', 1),
(3, 2, 'F2001 - 001', '2024-09-17', '12313', '131', '31313', '2024-09-15', '2024-10-09', '1231313', '2024-09-26 06:55:00', '2024-11-25 02:06:37', 1),
(4, 2, 'F2001 - 002', '2024-10-29', 'Kim2', 'Kim', 'mad', '2024-11-04', '2024-11-21', '012311123123', '2024-11-26 05:56:58', '2024-11-26 11:30:18', 0);

-- --------------------------------------------------------

--
-- Table structure for table `godparents`
--

CREATE TABLE `godparents` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `baptism_id` bigint(20) UNSIGNED NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `middle_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) NOT NULL,
  `purok_no` varchar(255) DEFAULT NULL,
  `street_address` varchar(255) DEFAULT NULL,
  `barangay` varchar(255) DEFAULT NULL,
  `municipality_city` varchar(255) NOT NULL,
  `province` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `godparents`
--

INSERT INTO `godparents` (`id`, `baptism_id`, `first_name`, `middle_name`, `last_name`, `purok_no`, `street_address`, `barangay`, `municipality_city`, `province`, `created_at`, `updated_at`) VALUES
(2, 22, '1231312', '31313', '1231231', '31313', '1313', '1231313', '041019000', '041000000', '2024-09-20 23:28:42', '2024-09-20 23:28:42'),
(3, 22, '1231', '2313123', '1231231', '312313', '13131', '1231', '037707000', '037700000', '2024-09-20 23:28:42', '2024-09-20 23:28:42'),
(4, 23, 'madaee', 'asdasd', 'qweqe', '123', 'asda', 'asdad', '037702000', '037700000', '2024-09-20 23:31:03', '2024-09-20 23:31:03'),
(5, 3, 'Sting', 'Sting', 'Sting', 'Sting', 'Sting', 'Sting', 'Paete', 'Laguna', '2024-09-21 06:29:31', '2024-09-21 06:29:31'),
(6, 4, 'Sting123123aaa', 'Sting123123', 'Sting', 'Sting', 'Sting', 'Sting', 'Casiguran', 'Aurora', '2024-09-21 06:30:53', '2024-09-25 06:03:16'),
(7, 4, 'Stingasdasd123123', 'Stingadsa', 'Stingasd', 'Stingasdbbb', 'Sting123123', 'Sting123123', 'Nasugbu12312', 'Batangas3123', '2024-09-21 06:30:53', '2024-09-25 06:03:16'),
(8, 5, 'Sting123123aaa', 'Sting123123', 'Sting', 'Sting', 'Sting', 'Sting', 'Casiguran', 'Aurora', '2024-09-26 07:32:48', '2024-09-26 07:32:48'),
(9, 5, 'Stingasdasd123123', 'Stingadsa', 'Stingasd', 'Stingasdbbb', 'Sting123123', 'Sting123123', 'Nasugbu12312', 'Batangas3123', '2024-09-26 07:32:48', '2024-09-26 07:32:48'),
(10, 2, '12', '12', '12', '12', '12', '12', 'Malvar', 'Batangas', '2024-09-26 07:35:36', '2024-09-26 07:35:36');

-- --------------------------------------------------------

--
-- Table structure for table `inkind`
--

CREATE TABLE `inkind` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `collection_id` bigint(20) UNSIGNED NOT NULL,
  `inkind_details` text DEFAULT NULL,
  `inkind_pieces` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `in_kind_collections`
--

CREATE TABLE `in_kind_collections` (
  `id` int(11) NOT NULL,
  `collection_record_id` int(11) DEFAULT NULL,
  `item_name` varchar(255) NOT NULL,
  `pieces` varchar(111) DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `in_kind_collections`
--

INSERT INTO `in_kind_collections` (`id`, `collection_record_id`, `item_name`, `pieces`, `created_at`, `updated_at`) VALUES
(1, 2, '123123', '123123', '2024-11-12 05:50:26', '2024-11-12 05:50:26'),
(2, 3, '123123', '123123', '2024-11-12 05:55:51', '2024-11-12 05:55:51'),
(3, 4, '123123', '123123', '2024-11-12 06:14:32', '2024-11-12 06:14:32'),
(4, 5, '123123', '123', '2024-11-12 06:14:52', '2024-11-12 06:14:52'),
(5, 5, '13212', '3123', '2024-11-12 06:14:52', '2024-11-12 06:14:52'),
(6, 6, '12312', '3123', '2024-12-01 04:49:01', '2024-12-01 04:49:01');

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
-- Table structure for table `members`
--

CREATE TABLE `members` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `status` varchar(255) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `middle_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) NOT NULL,
  `dob` date NOT NULL,
  `civil_status` varchar(255) NOT NULL,
  `age` int(11) NOT NULL,
  `gender` varchar(255) NOT NULL,
  `position` varchar(255) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `contact_number` varchar(255) NOT NULL,
  `purok_no` varchar(255) NOT NULL,
  `street_address` varchar(255) NOT NULL,
  `barangay` varchar(255) NOT NULL,
  `municipality` varchar(255) NOT NULL,
  `province` varchar(255) NOT NULL,
  `picture` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `archive` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `members`
--

INSERT INTO `members` (`id`, `status`, `first_name`, `middle_name`, `last_name`, `dob`, `civil_status`, `age`, `gender`, `position`, `email`, `contact_number`, `purok_no`, `street_address`, `barangay`, `municipality`, `province`, `picture`, `created_at`, `updated_at`, `archive`) VALUES
(1, 'Active', 'admin123', 'Kim', 'mad', '2024-10-02', 'Single', 123, 'Male', 'Youth', 'mad@mail.com', 'qwe1231', 'qweqwe', 'mad', 'qweqw', 'qweqe', 'mad', NULL, '2024-09-21 19:18:53', '2024-09-21 20:57:23', 0),
(2, 'Inactive', 'Kimasdasd', 'Kim', 'Kim', '2024-10-09', 'Single', 123, 'Male', 'Youth', 'mad@mail.com', '123131', '123123', 'mad', '12313', '123', 'mad', 'pictures/YyfIXcvP6Tn6ncUEL3xdVMGBIbUdlvIIg3kDWFcX.jpg', '2024-09-21 19:19:42', '2024-09-21 23:33:56', 0),
(3, 'Active', 'hurley', 'Wowo', 'Wowo', '2024-09-03', 'Married', 40, 'Male', 'Youth', 'wowo@gmail.com', 'Wowo', 'Wowo', 'Wowo', 'Wowo', 'Wowo', 'Wowo', 'pictures/6wl2ecZDnjXEEWwg1a6bqvvBjkrzWp0mdyby6DIB.jpg', '2024-09-22 05:24:38', '2024-09-22 05:24:54', 0),
(4, 'Inactive', 'wqe', 'qwe', 'qwweqweqw', '2024-10-01', 'Widowed', 1231, 'Female', 'Youth', 'admin@admin.com', '12312313', '123', '123123', '123', '1231231', '3123', 'pictures/1727602285.jpg', '2024-09-29 01:17:12', '2024-11-14 21:31:55', 1),
(5, 'Active', 'asda', 'sdasd', 'asdasd', '2323-12-31', 'Married', 213, 'Male', 'Youth', 'admin@admin.com', '123123123', '123123', '12312', '3123', '123123123', '123123', '1727602030.png', '2024-09-29 01:24:51', '2024-09-29 01:27:10', 0);

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
(4, '2024_09_11_155212_create_events_table', 2),
(5, '2024_09_11_155444_create_events_table', 3),
(6, '2024_09_15_083815_create_baptismfolder_table', 4),
(7, '2024_09_15_090131_create_confirmationfolder_table', 5),
(8, '2024_09_15_090211_create_weddingfolder_table', 5),
(9, '2024_09_15_090309_create_funeralfolder_table', 5),
(10, '2024_09_15_131823_create_bookfolder_table', 6),
(11, '2024_09_15_140150_create_bookfolder_table', 7),
(12, '2024_09_17_141841_create_bookrecord_table', 8),
(13, '2024_09_20_140317_create_godparents_table', 9),
(14, '2024_09_20_141014_add_book_id_to_bookrecord_table', 10),
(15, '2024_09_22_025707_create_members_table', 11),
(16, '2024_09_22_075149_create_volunteers_table', 12),
(17, '2024_09_26_115633_create_funeralrecord_table', 13),
(18, '2024_09_30_050041_create_confirmationrecord_table', 14),
(19, '2024_09_30_050634_create_confirmationrecord_table', 15),
(20, '2024_11_07_063415_create_weddingrecord_table', 16),
(21, '2024_11_07_064319_create_weddingrecord_table', 17),
(22, '2024_11_10_072810_create_payment_table', 18),
(23, '2024_11_12_030801_create_donations_table', 19),
(24, '2024_11_12_030813_create_donors_table', 19),
(25, '2024_11_12_054628_create_collection_table', 20),
(26, '2024_11_12_054638_create_acolytes_table', 20),
(27, '2024_11_12_054706_create_inkind_table', 20),
(28, '2024_11_14_100439_add_archived_to_baptismfolder_table', 21),
(29, '2024_11_14_101348_add_archive_to_bookfolder_table', 22),
(30, '2024_11_14_103254_add_archive_to_bookrecord_table', 23),
(31, '2024_11_14_120225_add_archive_to_confirmationfolder_table', 24),
(32, '2024_11_15_050346_add_archive_to_confirmationrecord_table', 25),
(33, '2024_11_15_051255_add_archive_to_weddingfolder_table', 26),
(34, '2024_11_15_051756_add_archive_to_weddingrecord_table', 27),
(35, '2024_11_15_052220_add_archive_to_funeralfolder_table', 28),
(36, '2024_11_15_052533_add_archive_to_funeralrecord_table', 29),
(37, '2024_11_15_053000_add_archive_to_members_table', 30),
(38, '2024_11_15_053245_add_archive_to_volunteers_table', 31),
(39, '2024_11_15_053637_add_archive_to_donations_table', 32),
(40, '2024_11_15_054030_add_archive_to_collection_records_table', 33),
(41, '2024_11_15_054420_add_archive_to_payment_table', 34),
(42, '2024_11_27_060755_create_schedules_table', 35);

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
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `middle_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) NOT NULL,
  `reason` varchar(255) NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `payment_date` date NOT NULL,
  `payment_time` time NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `archive` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`id`, `first_name`, `middle_name`, `last_name`, `reason`, `amount`, `payment_date`, `payment_time`, `created_at`, `updated_at`, `archive`) VALUES
(1, 'qweq', 'weqwe', 'qwe', 'qweqwe', 123123.00, '3232-12-31', '14:13:00', '2024-11-09 23:40:17', '2024-11-09 23:40:17', 0),
(2, 'qweq', 'weqwe', 'qweqe', '1231qwe', 123123.00, '1111-11-11', '04:47:00', '2024-11-14 21:47:04', '2024-11-14 21:47:07', 1),
(3, 'asd', 'asd', 'asd', 'asdad', 2000.00, '2024-12-11', '11:56:00', '2024-12-01 04:56:55', '2024-12-01 04:56:55', 0),
(4, 'jkl', 'jkl', 'jkl', 'sad', 50000.00, '2024-12-20', '09:58:00', '2024-12-01 04:57:36', '2024-12-01 04:57:36', 0),
(5, 'bnb', 'bnb', 'bnb', 'Funeral', 500.00, '2024-12-28', '20:00:00', '2024-12-01 04:58:27', '2024-12-01 04:58:27', 0),
(6, 'Kim', 'Kim', 'mad', 'wedding', 1000.00, '2024-12-03', '09:00:00', '2024-12-01 05:00:39', '2024-12-01 05:00:39', 0);

-- --------------------------------------------------------

--
-- Table structure for table `schedules`
--

CREATE TABLE `schedules` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `start_date` datetime NOT NULL,
  `end_date` datetime NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `schedules`
--

INSERT INTO `schedules` (`id`, `title`, `description`, `start_date`, `end_date`, `created_at`, `updated_at`) VALUES
(2, 'asdasd', 'asd', '2024-11-27 20:32:49', '2024-11-27 20:32:49', NULL, NULL),
(4, 'qwe', NULL, '2024-11-13 00:00:00', '2024-11-14 00:00:00', '2024-11-27 11:39:15', '2024-11-27 11:40:28'),
(5, '123123', NULL, '2024-10-29 00:00:00', '2024-10-30 00:00:00', '2024-11-27 11:39:25', '2024-11-27 20:57:50'),
(8, 'adasd', NULL, '2024-11-24 00:00:00', '2024-11-24 06:30:00', '2024-11-27 11:43:04', '2024-11-27 21:20:34'),
(11, 'qweqe', NULL, '2024-11-27 00:00:00', '2024-11-27 06:30:00', '2024-11-27 11:47:57', '2024-11-27 21:01:19'),
(13, 'qweqw', NULL, '2024-11-28 09:00:00', '2024-11-28 19:30:00', '2024-11-27 11:53:27', '2024-11-27 21:15:27'),
(14, 'qweqwe', NULL, '2024-11-28 00:30:00', '2024-11-28 18:00:00', '2024-11-27 21:19:03', '2024-11-27 21:22:32'),
(15, 'asdad', 'asdads', '2024-12-01 21:00:00', '2024-12-02 00:00:00', '2024-12-01 05:14:27', '2024-12-01 05:14:27');

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

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('dzouezrNOIfnCcrglLiTDYCq4uQMG6EYrxmxJTr4', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', 'YTo2OntzOjY6Il90b2tlbiI7czo0MDoiWHJwU1lRVlBHekdvcXZWZUp5VzR0elFpc056clhaYnBpVnBnTndOciI7czozOiJ1cmwiO2E6MDp7fXM6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjMyOiJodHRwOi8vMTI3LjAuMC4xOjgwMDAvZ2V0LWV2ZW50cyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjE7czo0OiJhdXRoIjthOjE6e3M6MjE6InBhc3N3b3JkX2NvbmZpcm1lZF9hdCI7aToxNzMzMDczMjI5O319', 1733080597);

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
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin@admin.com', NULL, '$2y$12$AHDV/D1CPw9GDtnUzwCxmuAzp6.82SRRN0m8/JHrpIj0FErnFx8fG', '8Oo14Xq5F5qlM3Xr824pjEUrfztqiaeIvRZrLFe3f9P327lY8IueK3mwEKYT', '2024-09-11 04:36:46', '2024-09-11 04:36:46');

-- --------------------------------------------------------

--
-- Table structure for table `volunteers`
--

CREATE TABLE `volunteers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `status` varchar(255) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `middle_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) NOT NULL,
  `dob` date NOT NULL,
  `civil_status` varchar(255) NOT NULL,
  `age` int(11) NOT NULL,
  `gender` varchar(255) NOT NULL,
  `position` varchar(255) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `contact_number` varchar(255) NOT NULL,
  `purok_no` varchar(255) NOT NULL,
  `street_address` varchar(255) NOT NULL,
  `barangay` varchar(255) NOT NULL,
  `municipality` varchar(255) NOT NULL,
  `province` varchar(255) NOT NULL,
  `picture` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `archive` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `volunteers`
--

INSERT INTO `volunteers` (`id`, `status`, `first_name`, `middle_name`, `last_name`, `dob`, `civil_status`, `age`, `gender`, `position`, `email`, `contact_number`, `purok_no`, `street_address`, `barangay`, `municipality`, `province`, `picture`, `created_at`, `updated_at`, `archive`) VALUES
(1, 'Active', 'jibsasdasd', 'jibs', 'jibs', '2024-09-06', 'Married', 12, 'Male', 'Youth', 'jibs@gmail.com', 'jibs', 'jibs', 'jibs', 'jibs', 'jibs', 'jibs', 'pictures/raIn8QDNHtrFwfwQoVAotd47nxLobpLhwMEv48Do.jpg', '2024-09-22 00:10:45', '2024-09-22 00:13:22', 0),
(2, 'Active', 'qwe', 'qweqwe', 'weqwe', '1111-11-11', 'Married', 11, 'Female', '123', '123123@gmsmd.com', '3123', '1231', '23123', '123', '13123', '132', NULL, '2024-11-14 21:34:55', '2024-11-14 21:35:16', 1);

-- --------------------------------------------------------

--
-- Table structure for table `weddingfolder`
--

CREATE TABLE `weddingfolder` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `year` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `archive` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `weddingfolder`
--

INSERT INTO `weddingfolder` (`id`, `year`, `created_at`, `updated_at`, `archive`) VALUES
(1, 2001, '2024-11-06 23:03:11', '2024-11-24 22:23:16', 0),
(2, 2002, '2024-11-06 23:08:06', '2024-11-24 22:58:17', 0),
(3, 2005, '2024-11-26 05:58:52', '2024-11-26 05:58:52', 0);

-- --------------------------------------------------------

--
-- Table structure for table `weddingrecord`
--

CREATE TABLE `weddingrecord` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `wedding_id` bigint(20) UNSIGNED NOT NULL,
  `record_code` varchar(255) NOT NULL,
  `wedding_date` date NOT NULL,
  `groom_first_name` varchar(255) NOT NULL,
  `groom_middle_name` varchar(255) DEFAULT NULL,
  `groom_last_name` varchar(255) NOT NULL,
  `groom_dob` date NOT NULL,
  `groom_purok_no` varchar(255) NOT NULL,
  `groom_street_address` varchar(255) NOT NULL,
  `groom_barangay` varchar(255) NOT NULL,
  `groom_residence_province` varchar(255) NOT NULL,
  `groom_residence_city` varchar(255) NOT NULL,
  `groom_contact` varchar(255) DEFAULT NULL,
  `bride_first_name` varchar(255) NOT NULL,
  `bride_middle_name` varchar(255) DEFAULT NULL,
  `bride_last_name` varchar(255) NOT NULL,
  `bride_dob` date NOT NULL,
  `bride_purok_no` varchar(255) NOT NULL,
  `bride_street_address` varchar(255) NOT NULL,
  `bride_barangay` varchar(255) NOT NULL,
  `bride_residence_province` varchar(255) NOT NULL,
  `bride_residence_city` varchar(255) NOT NULL,
  `bride_contact` varchar(255) DEFAULT NULL,
  `document` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `archive` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `weddingrecord`
--

INSERT INTO `weddingrecord` (`id`, `wedding_id`, `record_code`, `wedding_date`, `groom_first_name`, `groom_middle_name`, `groom_last_name`, `groom_dob`, `groom_purok_no`, `groom_street_address`, `groom_barangay`, `groom_residence_province`, `groom_residence_city`, `groom_contact`, `bride_first_name`, `bride_middle_name`, `bride_last_name`, `bride_dob`, `bride_purok_no`, `bride_street_address`, `bride_barangay`, `bride_residence_province`, `bride_residence_city`, `bride_contact`, `document`, `created_at`, `updated_at`, `archive`) VALUES
(3, 1, 'W2001 - 001', '2024-11-13', 'Kimqweqew', 'asdasd', 'Kardashian', '2024-10-31', 'dasd', 'asda', 'asdasd', 'Zambales', 'Santa Cruz', 'asdasd', 'asdads', 'asd', 'asdad', '2322-12-31', 'asdadsa', 'asd', 'asdasd', 'Cavite', 'Silang', 'sdad', 'uploads/1732998406_68fe7bdb6256b63a26beefe376f1dad0.png', '2024-11-09 22:40:01', '2024-11-30 12:26:46', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `acolytes`
--
ALTER TABLE `acolytes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `baptismfolder`
--
ALTER TABLE `baptismfolder`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bookfolder`
--
ALTER TABLE `bookfolder`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bookrecord`
--
ALTER TABLE `bookrecord`
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
-- Indexes for table `collection_records`
--
ALTER TABLE `collection_records`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `confirmationfolder`
--
ALTER TABLE `confirmationfolder`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `confirmationrecord`
--
ALTER TABLE `confirmationrecord`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `donations`
--
ALTER TABLE `donations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `donors`
--
ALTER TABLE `donors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `funeralfolder`
--
ALTER TABLE `funeralfolder`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `funeralrecord`
--
ALTER TABLE `funeralrecord`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `godparents`
--
ALTER TABLE `godparents`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inkind`
--
ALTER TABLE `inkind`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `in_kind_collections`
--
ALTER TABLE `in_kind_collections`
  ADD PRIMARY KEY (`id`),
  ADD KEY `collection_record_id` (`collection_record_id`);

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
-- Indexes for table `members`
--
ALTER TABLE `members`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `schedules`
--
ALTER TABLE `schedules`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `volunteers`
--
ALTER TABLE `volunteers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `weddingfolder`
--
ALTER TABLE `weddingfolder`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `weddingrecord`
--
ALTER TABLE `weddingrecord`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `acolytes`
--
ALTER TABLE `acolytes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `baptismfolder`
--
ALTER TABLE `baptismfolder`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `bookfolder`
--
ALTER TABLE `bookfolder`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `bookrecord`
--
ALTER TABLE `bookrecord`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `collection_records`
--
ALTER TABLE `collection_records`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `confirmationfolder`
--
ALTER TABLE `confirmationfolder`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `confirmationrecord`
--
ALTER TABLE `confirmationrecord`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `donations`
--
ALTER TABLE `donations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `donors`
--
ALTER TABLE `donors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `events`
--
ALTER TABLE `events`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `funeralfolder`
--
ALTER TABLE `funeralfolder`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `funeralrecord`
--
ALTER TABLE `funeralrecord`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `godparents`
--
ALTER TABLE `godparents`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `inkind`
--
ALTER TABLE `inkind`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `in_kind_collections`
--
ALTER TABLE `in_kind_collections`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `members`
--
ALTER TABLE `members`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `schedules`
--
ALTER TABLE `schedules`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `volunteers`
--
ALTER TABLE `volunteers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `weddingfolder`
--
ALTER TABLE `weddingfolder`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `weddingrecord`
--
ALTER TABLE `weddingrecord`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `in_kind_collections`
--
ALTER TABLE `in_kind_collections`
  ADD CONSTRAINT `in_kind_collections_ibfk_1` FOREIGN KEY (`collection_record_id`) REFERENCES `collection_records` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
