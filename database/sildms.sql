-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 21, 2022 at 06:39 AM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sildms`
--

-- --------------------------------------------------------

--
-- Table structure for table `branches`
--

CREATE TABLE `branches` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `duration` int(11) NOT NULL,
  `stream_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `branches`
--

INSERT INTO `branches` (`id`, `name`, `code`, `duration`, `stream_id`) VALUES
(1, 'Computer Enginering', 'CO', 4, 1),
(2, 'Mechanical Engineering', 'ME', 4, 1);

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE `courses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `credits` int(11) NOT NULL,
  `branch_id` bigint(20) UNSIGNED NOT NULL,
  `ut1` bigint(20) DEFAULT NULL,
  `ut2` bigint(20) DEFAULT NULL,
  `ese` bigint(20) DEFAULT NULL,
  `tw` bigint(20) DEFAULT NULL,
  `oral` bigint(20) DEFAULT NULL,
  `oral_practical` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`id`, `code`, `name`, `credits`, `branch_id`, `ut1`, `ut2`, `ese`, `tw`, `oral`, `oral_practical`) VALUES
(39, 'CSC801', 'Human Machine Interaction', 4, 1, 20, 20, 80, NULL, NULL, NULL),
(40, 'CSC802', 'Distributed Computing', 4, 1, 20, 20, 80, NULL, NULL, NULL),
(41, 'CSDLO801X', 'Department Level Optional Course -IV ', 4, 1, 20, 20, 80, NULL, NULL, NULL),
(42, 'ILO801X', 'Institute Level Optional Course-II', 3, 1, 20, 20, 80, NULL, NULL, NULL),
(43, 'CSL801', 'Human Machine Interaction Lab', 1, 1, NULL, NULL, NULL, 25, 25, NULL),
(44, 'CSL802', 'Distributed Computing Lab', 1, 1, NULL, NULL, NULL, 25, 25, NULL),
(45, 'CSL803', 'Cloud Computing Lab', 2, 1, NULL, NULL, NULL, 50, NULL, 25),
(46, 'CSL804', 'Computational Lab-II', 1, 1, NULL, NULL, NULL, 50, NULL, 25),
(47, 'CSL805', 'Major Project-II', 6, 1, NULL, NULL, NULL, 50, NULL, 50);

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `marks`
--

CREATE TABLE `marks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sem` int(11) NOT NULL,
  `sgpi` double(8,2) DEFAULT NULL,
  `credits` int(11) NOT NULL,
  `cxgp` int(11) NOT NULL,
  `attempt` int(11) NOT NULL,
  `result` int(11) NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `marks`
--

INSERT INTO `marks` (`id`, `sem`, `sgpi`, `credits`, `cxgp`, `attempt`, `result`, `user_id`) VALUES
(1, 4, 9.63, 27, 260, 1, 1, 9);

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
(4, '2020_03_09_135529_create_permission_tables', 1),
(5, '2016_06_01_000001_create_oauth_auth_codes_table', 2),
(6, '2016_06_01_000002_create_oauth_access_tokens_table', 2),
(7, '2016_06_01_000003_create_oauth_refresh_tokens_table', 2),
(8, '2016_06_01_000004_create_oauth_clients_table', 2),
(9, '2016_06_01_000005_create_oauth_personal_access_clients_table', 2),
(10, '2021_08_15_170340_create_streams_table', 3),
(11, '2021_08_15_182140_create_branches_table', 4),
(12, '2021_08_21_180717_create_courses_table', 5),
(13, '2021_08_21_185235_create_semesters_table', 6),
(18, '2021_08_21_185718_create_semester_has_courses_table', 7),
(19, '2021_08_28_115143_add_otp_column_on_users_table', 7),
(28, '2022_01_22_140112_create_tests_table', 8),
(29, '2022_02_04_062940_create_marks_table', 8),
(31, '2022_02_04_073008_add_rollno_to_users_table', 9),
(33, '2022_02_12_090000_add_prof_id_column_on_semester_has_courses_table', 10),
(34, '2022_02_26_113950_add_info_on_users_table', 11),
(35, '2022_02_27_102007_add_phone_adderss_on_users_table', 12),
(38, '2022_02_27_172858_create_skill_table', 13),
(41, '2022_02_28_154246_create_railways_table', 14),
(46, '2022_03_01_071958_add_avatar_to_users_table', 15),
(47, '2022_03_02_121814_create_results_table', 15),
(48, '2022_03_02_133413_add_marks_on_courses_table', 16);

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
(1, 'App\\User', 1),
(1, 'App\\User', 9),
(2, 'App\\User', 4),
(3, 'App\\User', 2),
(4, 'App\\User', 3),
(10, 'App\\User', 10),
(10, 'App\\User', 14),
(10, 'App\\User', 15),
(10, 'App\\User', 16),
(10, 'App\\User', 17),
(10, 'App\\User', 18),
(10, 'App\\User', 19),
(10, 'App\\User', 20),
(10, 'App\\User', 21),
(10, 'App\\User', 22),
(10, 'App\\User', 23),
(10, 'App\\User', 24),
(10, 'App\\User', 25),
(10, 'App\\User', 26),
(10, 'App\\User', 27),
(10, 'App\\User', 28),
(10, 'App\\User', 29),
(10, 'App\\User', 30),
(10, 'App\\User', 31),
(10, 'App\\User', 32),
(10, 'App\\User', 33),
(10, 'App\\User', 34),
(10, 'App\\User', 35),
(10, 'App\\User', 36),
(10, 'App\\User', 37),
(10, 'App\\User', 38),
(10, 'App\\User', 39),
(10, 'App\\User', 40),
(10, 'App\\User', 41),
(10, 'App\\User', 42),
(10, 'App\\User', 43),
(10, 'App\\User', 44),
(10, 'App\\User', 45),
(10, 'App\\User', 46),
(10, 'App\\User', 47),
(10, 'App\\User', 48),
(10, 'App\\User', 49),
(10, 'App\\User', 50),
(10, 'App\\User', 51),
(10, 'App\\User', 52),
(10, 'App\\User', 53),
(10, 'App\\User', 54),
(10, 'App\\User', 55),
(10, 'App\\User', 56),
(10, 'App\\User', 57),
(10, 'App\\User', 58),
(10, 'App\\User', 59),
(10, 'App\\User', 60),
(10, 'App\\User', 61),
(10, 'App\\User', 62),
(10, 'App\\User', 63),
(10, 'App\\User', 64),
(10, 'App\\User', 65),
(10, 'App\\User', 66),
(10, 'App\\User', 67),
(10, 'App\\User', 68),
(10, 'App\\User', 69),
(10, 'App\\User', 70),
(10, 'App\\User', 71),
(10, 'App\\User', 72),
(10, 'App\\User', 73),
(10, 'App\\User', 74),
(10, 'App\\User', 75),
(10, 'App\\User', 76),
(10, 'App\\User', 77),
(10, 'App\\User', 78),
(10, 'App\\User', 79),
(10, 'App\\User', 80),
(10, 'App\\User', 81),
(10, 'App\\User', 82),
(10, 'App\\User', 83),
(10, 'App\\User', 84),
(10, 'App\\User', 85),
(10, 'App\\User', 86),
(10, 'App\\User', 87),
(10, 'App\\User', 88),
(10, 'App\\User', 89),
(10, 'App\\User', 90),
(10, 'App\\User', 91),
(11, 'App\\User', 13);

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_access_tokens`
--

INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('03928e462062030a495ef0d6d0ef9befe0f5283fe56c978e2eb57a4bdb69910ffe62416ccfd83e88', 9, 1, 'authToken', '[]', 0, '2021-08-15 10:23:00', '2021-08-15 10:23:00', '2022-08-15 15:53:00'),
('093c11eb76e1b992fa89f3a8a231593411c15ba327ab67e3ebce2a2aa7b68d2cc830e403a279fdcc', 9, 1, 'authToken', '[]', 0, '2021-08-15 10:45:29', '2021-08-15 10:45:29', '2022-08-15 16:15:29'),
('4057faa21ca2a933f42a0676c5dbd54fb777e7c7208018c38b0a711b52bb0f66cad29d3056606087', 9, 1, 'authToken', '[]', 0, '2021-08-15 10:14:34', '2021-08-15 10:14:34', '2022-08-15 15:44:34'),
('631c0ad0011cd771e9de9af8fb2039003604dde1c61ba760f32896d0abd9014e12436e1f2ea77e93', 9, 1, 'authToken', '[]', 0, '2021-08-15 10:16:00', '2021-08-15 10:16:00', '2022-08-15 15:46:00'),
('6c44278ffd977b150a0935e925cdd7ea8883bdeca84939d4bdda5b0871b6b2b52390c8a0d51b45f1', 9, 1, 'authToken', '[]', 0, '2021-08-15 10:38:46', '2021-08-15 10:38:46', '2022-08-15 16:08:46'),
('6d386cfd647e841a5b0fcd0c3112881f5db6d350595ad8a55bc6585649d51c68b9160ccb321ee779', 9, 1, 'authToken', '[]', 0, '2021-08-15 10:23:03', '2021-08-15 10:23:03', '2022-08-15 15:53:03'),
('6f735b883703d1417277d1b12ab13c93a207166c5690c3f0324bf87ff57e54fe5fff566236d963c1', 9, 1, 'authToken', '[]', 1, '2021-08-15 10:32:16', '2021-08-15 10:32:16', '2022-08-15 16:02:16'),
('74cbc3578717cc180020426393ea5c86b3d80da2f120e5a658462dcdf048fb2e0d8e9bb367965c11', 9, 1, 'authToken', '[]', 0, '2021-08-17 10:10:45', '2021-08-17 10:10:45', '2022-08-17 15:40:45'),
('952d46ab11fef9ca031b68ecf733af00e3a89d4fce6703b859c3eceae112a8c19769f8a646366997', 9, 1, 'authToken', '[]', 0, '2021-09-09 10:17:55', '2021-09-09 10:17:55', '2022-09-09 15:47:55'),
('b03de05707c36f126747c1ef0beb8b1a83360c7bae57f4ce20b79bb1652dbdf204bb81aeb21c1c63', 9, 1, 'authToken', '[]', 0, '2021-08-15 10:23:04', '2021-08-15 10:23:04', '2022-08-15 15:53:04'),
('c4b6298024a1df63a5dc20a05d327e386efddaf0d0d9dd84db3a3aa0dd2c88977505ee5a373401a7', 9, 1, 'authToken', '[]', 0, '2021-08-15 10:36:55', '2021-08-15 10:36:55', '2022-08-15 16:06:55'),
('da01dcc2e090d9f7c2d9f6e23fa74acec2b8f0006f5c6a8002f8e1a1614e947208aadf0affb39c9e', 9, 1, 'authToken', '[]', 0, '2021-08-15 10:30:49', '2021-08-15 10:30:49', '2022-08-15 16:00:49');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_clients`
--

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `provider`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Themekit-Laravel-Admin-Panel Personal Access Client', 'UMWq3J9lINVBrWehpr7QJ9wOcoBp27o1PdJu5nN7', NULL, 'http://localhost', 1, 0, 0, '2020-05-09 15:21:41', '2020-05-09 15:21:41'),
(2, NULL, 'Themekit-Laravel-Admin-Panel Password Grant Client', 'A6CbTxyM5JHmF4Yk4BB2Bj23D4EnhEDac7TyuFCF', 'users', 'http://localhost', 0, 1, 0, '2020-05-09 15:21:41', '2020-05-09 15:21:41');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_personal_access_clients`
--

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2020-05-09 15:21:41', '2020-05-09 15:21:41');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(2, 'manage_role', 'web', '2020-03-10 12:40:57', '2022-03-01 09:03:06'),
(4, 'manage_user', 'web', '2020-03-10 12:41:41', '2020-03-10 12:41:41'),
(5, 'manage_sales', 'web', '2020-03-12 10:16:39', '2020-03-12 10:16:39'),
(6, 'manage_projects', 'web', '2020-03-12 10:16:54', '2020-03-12 10:16:54'),
(8, 'manage_stream', 'web', '2021-08-15 12:44:36', '2021-08-15 12:44:36'),
(9, 'manage_permission', 'web', '2021-08-15 12:45:04', '2021-08-15 12:45:04'),
(10, 'manage_profile', 'web', '2022-03-01 09:02:30', '2022-03-01 09:02:30'),
(11, 'manage_branch', 'web', '2022-03-01 09:03:47', '2022-03-01 09:03:47'),
(12, 'manage_course', 'web', '2022-03-01 09:03:55', '2022-03-01 09:03:55'),
(13, 'manage_railway', 'web', '2022-03-10 11:39:44', '2022-03-10 11:39:44');

-- --------------------------------------------------------

--
-- Table structure for table `railways`
--

CREATE TABLE `railways` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `class` int(11) NOT NULL,
  `period` int(11) NOT NULL,
  `from` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `to` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Panvel',
  `date` date NOT NULL,
  `ticket_no` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `prev_certi_no` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_of_expiry` date DEFAULT NULL,
  `prev_from` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `prev_to` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'Panvel',
  `prev_class` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `prev_dated` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `railways`
--

INSERT INTO `railways` (`id`, `user_id`, `class`, `period`, `from`, `to`, `date`, `ticket_no`, `prev_certi_no`, `date_of_expiry`, `prev_from`, `prev_to`, `prev_class`, `prev_dated`, `status`) VALUES
(1, 9, 1, 1, 'Thane', 'Panvel', '2022-02-28', 'J1qwert', '543267', '2022-02-27', 'Thane', 'Panvel', '1', NULL, 1),
(2, 9, 1, 1, 'Thane', 'Panvel', '2022-03-01', 'J2asdfg', '6789', '2022-02-28', 'Thane', 'Panvel', '1', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `results`
--

CREATE TABLE `results` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `semester_id` bigint(20) UNSIGNED DEFAULT NULL,
  `course_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ut1` bigint(20) DEFAULT NULL,
  `ut2` bigint(20) DEFAULT NULL,
  `tw` bigint(20) DEFAULT NULL,
  `ese` bigint(20) DEFAULT NULL,
  `oral` bigint(20) DEFAULT NULL,
  `oral_practical` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `results`
--

INSERT INTO `results` (`id`, `user_id`, `semester_id`, `course_id`, `ut1`, `ut2`, `tw`, `ese`, `oral`, `oral_practical`) VALUES
(1, 17, 9, 39, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 17, 9, 40, NULL, NULL, NULL, NULL, NULL, NULL),
(3, 17, 9, 41, NULL, NULL, NULL, NULL, NULL, NULL),
(4, 17, 9, 42, NULL, NULL, NULL, NULL, NULL, NULL),
(5, 17, 9, 43, NULL, NULL, NULL, NULL, NULL, NULL),
(6, 17, 9, 44, NULL, NULL, NULL, NULL, NULL, NULL),
(7, 17, 9, 45, NULL, NULL, NULL, NULL, NULL, NULL),
(8, 17, 9, 46, NULL, NULL, NULL, NULL, NULL, NULL),
(9, 17, 9, 47, NULL, NULL, NULL, NULL, NULL, NULL),
(10, 18, 9, 39, NULL, NULL, NULL, NULL, NULL, NULL),
(11, 18, 9, 40, NULL, NULL, NULL, NULL, NULL, NULL),
(12, 18, 9, 41, NULL, NULL, NULL, NULL, NULL, NULL),
(13, 18, 9, 42, NULL, NULL, NULL, NULL, NULL, NULL),
(14, 18, 9, 43, NULL, NULL, NULL, NULL, NULL, NULL),
(15, 18, 9, 44, NULL, NULL, NULL, NULL, NULL, NULL),
(16, 18, 9, 45, NULL, NULL, NULL, NULL, NULL, NULL),
(17, 18, 9, 46, NULL, NULL, NULL, NULL, NULL, NULL),
(18, 18, 9, 47, NULL, NULL, NULL, NULL, NULL, NULL),
(19, 19, 9, 39, NULL, NULL, NULL, NULL, NULL, NULL),
(20, 19, 9, 40, NULL, NULL, NULL, NULL, NULL, NULL),
(21, 19, 9, 41, NULL, NULL, NULL, NULL, NULL, NULL),
(22, 19, 9, 42, NULL, NULL, NULL, NULL, NULL, NULL),
(23, 19, 9, 43, NULL, NULL, NULL, NULL, NULL, NULL),
(24, 19, 9, 44, NULL, NULL, NULL, NULL, NULL, NULL),
(25, 19, 9, 45, NULL, NULL, NULL, NULL, NULL, NULL),
(26, 19, 9, 46, NULL, NULL, NULL, NULL, NULL, NULL),
(27, 19, 9, 47, NULL, NULL, NULL, NULL, NULL, NULL),
(28, 20, 9, 39, NULL, NULL, NULL, NULL, NULL, NULL),
(29, 20, 9, 40, NULL, NULL, NULL, NULL, NULL, NULL),
(30, 20, 9, 41, NULL, NULL, NULL, NULL, NULL, NULL),
(31, 20, 9, 42, NULL, NULL, NULL, NULL, NULL, NULL),
(32, 20, 9, 43, NULL, NULL, NULL, NULL, NULL, NULL),
(33, 20, 9, 44, NULL, NULL, NULL, NULL, NULL, NULL),
(34, 20, 9, 45, NULL, NULL, NULL, NULL, NULL, NULL),
(35, 20, 9, 46, NULL, NULL, NULL, NULL, NULL, NULL),
(36, 20, 9, 47, NULL, NULL, NULL, NULL, NULL, NULL),
(37, 21, 9, 39, NULL, NULL, NULL, NULL, NULL, NULL),
(38, 21, 9, 40, NULL, NULL, NULL, NULL, NULL, NULL),
(39, 21, 9, 41, NULL, NULL, NULL, NULL, NULL, NULL),
(40, 21, 9, 42, NULL, NULL, NULL, NULL, NULL, NULL),
(41, 21, 9, 43, NULL, NULL, NULL, NULL, NULL, NULL),
(42, 21, 9, 44, NULL, NULL, NULL, NULL, NULL, NULL),
(43, 21, 9, 45, NULL, NULL, NULL, NULL, NULL, NULL),
(44, 21, 9, 46, NULL, NULL, NULL, NULL, NULL, NULL),
(45, 21, 9, 47, NULL, NULL, NULL, NULL, NULL, NULL),
(46, 22, 9, 39, NULL, NULL, NULL, NULL, NULL, NULL),
(47, 22, 9, 40, NULL, NULL, NULL, NULL, NULL, NULL),
(48, 22, 9, 41, NULL, NULL, NULL, NULL, NULL, NULL),
(49, 22, 9, 42, NULL, NULL, NULL, NULL, NULL, NULL),
(50, 22, 9, 43, NULL, NULL, NULL, NULL, NULL, NULL),
(51, 22, 9, 44, NULL, NULL, NULL, NULL, NULL, NULL),
(52, 22, 9, 45, NULL, NULL, NULL, NULL, NULL, NULL),
(53, 22, 9, 46, NULL, NULL, NULL, NULL, NULL, NULL),
(54, 22, 9, 47, NULL, NULL, NULL, NULL, NULL, NULL),
(55, 23, 9, 39, NULL, NULL, NULL, NULL, NULL, NULL),
(56, 23, 9, 40, NULL, NULL, NULL, NULL, NULL, NULL),
(57, 23, 9, 41, NULL, NULL, NULL, NULL, NULL, NULL),
(58, 23, 9, 42, NULL, NULL, NULL, NULL, NULL, NULL),
(59, 23, 9, 43, NULL, NULL, NULL, NULL, NULL, NULL),
(60, 23, 9, 44, NULL, NULL, NULL, NULL, NULL, NULL),
(61, 23, 9, 45, NULL, NULL, NULL, NULL, NULL, NULL),
(62, 23, 9, 46, NULL, NULL, NULL, NULL, NULL, NULL),
(63, 23, 9, 47, NULL, NULL, NULL, NULL, NULL, NULL),
(64, 24, 9, 39, NULL, NULL, NULL, NULL, NULL, NULL),
(65, 24, 9, 40, NULL, NULL, NULL, NULL, NULL, NULL),
(66, 24, 9, 41, NULL, NULL, NULL, NULL, NULL, NULL),
(67, 24, 9, 42, NULL, NULL, NULL, NULL, NULL, NULL),
(68, 24, 9, 43, NULL, NULL, NULL, NULL, NULL, NULL),
(69, 24, 9, 44, NULL, NULL, NULL, NULL, NULL, NULL),
(70, 24, 9, 45, NULL, NULL, NULL, NULL, NULL, NULL),
(71, 24, 9, 46, NULL, NULL, NULL, NULL, NULL, NULL),
(72, 24, 9, 47, NULL, NULL, NULL, NULL, NULL, NULL),
(73, 25, 9, 39, NULL, NULL, NULL, NULL, NULL, NULL),
(74, 25, 9, 40, NULL, NULL, NULL, NULL, NULL, NULL),
(75, 25, 9, 41, NULL, NULL, NULL, NULL, NULL, NULL),
(76, 25, 9, 42, NULL, NULL, NULL, NULL, NULL, NULL),
(77, 25, 9, 43, NULL, NULL, NULL, NULL, NULL, NULL),
(78, 25, 9, 44, NULL, NULL, NULL, NULL, NULL, NULL),
(79, 25, 9, 45, NULL, NULL, NULL, NULL, NULL, NULL),
(80, 25, 9, 46, NULL, NULL, NULL, NULL, NULL, NULL),
(81, 25, 9, 47, NULL, NULL, NULL, NULL, NULL, NULL),
(82, 26, 9, 39, NULL, NULL, NULL, NULL, NULL, NULL),
(83, 26, 9, 40, NULL, NULL, NULL, NULL, NULL, NULL),
(84, 26, 9, 41, NULL, NULL, NULL, NULL, NULL, NULL),
(85, 26, 9, 42, NULL, NULL, NULL, NULL, NULL, NULL),
(86, 26, 9, 43, NULL, NULL, NULL, NULL, NULL, NULL),
(87, 26, 9, 44, NULL, NULL, NULL, NULL, NULL, NULL),
(88, 26, 9, 45, NULL, NULL, NULL, NULL, NULL, NULL),
(89, 26, 9, 46, NULL, NULL, NULL, NULL, NULL, NULL),
(90, 26, 9, 47, NULL, NULL, NULL, NULL, NULL, NULL),
(91, 27, 9, 39, NULL, NULL, NULL, NULL, NULL, NULL),
(92, 27, 9, 40, NULL, NULL, NULL, NULL, NULL, NULL),
(93, 27, 9, 41, NULL, NULL, NULL, NULL, NULL, NULL),
(94, 27, 9, 42, NULL, NULL, NULL, NULL, NULL, NULL),
(95, 27, 9, 43, NULL, NULL, NULL, NULL, NULL, NULL),
(96, 27, 9, 44, NULL, NULL, NULL, NULL, NULL, NULL),
(97, 27, 9, 45, NULL, NULL, NULL, NULL, NULL, NULL),
(98, 27, 9, 46, NULL, NULL, NULL, NULL, NULL, NULL),
(99, 27, 9, 47, NULL, NULL, NULL, NULL, NULL, NULL),
(100, 28, 9, 39, NULL, NULL, NULL, NULL, NULL, NULL),
(101, 28, 9, 40, NULL, NULL, NULL, NULL, NULL, NULL),
(102, 28, 9, 41, NULL, NULL, NULL, NULL, NULL, NULL),
(103, 28, 9, 42, NULL, NULL, NULL, NULL, NULL, NULL),
(104, 28, 9, 43, NULL, NULL, NULL, NULL, NULL, NULL),
(105, 28, 9, 44, NULL, NULL, NULL, NULL, NULL, NULL),
(106, 28, 9, 45, NULL, NULL, NULL, NULL, NULL, NULL),
(107, 28, 9, 46, NULL, NULL, NULL, NULL, NULL, NULL),
(108, 28, 9, 47, NULL, NULL, NULL, NULL, NULL, NULL),
(109, 29, 9, 39, NULL, NULL, NULL, NULL, NULL, NULL),
(110, 29, 9, 40, NULL, NULL, NULL, NULL, NULL, NULL),
(111, 29, 9, 41, NULL, NULL, NULL, NULL, NULL, NULL),
(112, 29, 9, 42, NULL, NULL, NULL, NULL, NULL, NULL),
(113, 29, 9, 43, NULL, NULL, NULL, NULL, NULL, NULL),
(114, 29, 9, 44, NULL, NULL, NULL, NULL, NULL, NULL),
(115, 29, 9, 45, NULL, NULL, NULL, NULL, NULL, NULL),
(116, 29, 9, 46, NULL, NULL, NULL, NULL, NULL, NULL),
(117, 29, 9, 47, NULL, NULL, NULL, NULL, NULL, NULL),
(118, 30, 9, 39, NULL, NULL, NULL, NULL, NULL, NULL),
(119, 30, 9, 40, NULL, NULL, NULL, NULL, NULL, NULL),
(120, 30, 9, 41, NULL, NULL, NULL, NULL, NULL, NULL),
(121, 30, 9, 42, NULL, NULL, NULL, NULL, NULL, NULL),
(122, 30, 9, 43, NULL, NULL, NULL, NULL, NULL, NULL),
(123, 30, 9, 44, NULL, NULL, NULL, NULL, NULL, NULL),
(124, 30, 9, 45, NULL, NULL, NULL, NULL, NULL, NULL),
(125, 30, 9, 46, NULL, NULL, NULL, NULL, NULL, NULL),
(126, 30, 9, 47, NULL, NULL, NULL, NULL, NULL, NULL),
(127, 31, 9, 39, NULL, NULL, NULL, NULL, NULL, NULL),
(128, 31, 9, 40, NULL, NULL, NULL, NULL, NULL, NULL),
(129, 31, 9, 41, NULL, NULL, NULL, NULL, NULL, NULL),
(130, 31, 9, 42, NULL, NULL, NULL, NULL, NULL, NULL),
(131, 31, 9, 43, NULL, NULL, NULL, NULL, NULL, NULL),
(132, 31, 9, 44, NULL, NULL, NULL, NULL, NULL, NULL),
(133, 31, 9, 45, NULL, NULL, NULL, NULL, NULL, NULL),
(134, 31, 9, 46, NULL, NULL, NULL, NULL, NULL, NULL),
(135, 31, 9, 47, NULL, NULL, NULL, NULL, NULL, NULL),
(136, 32, 9, 39, NULL, NULL, NULL, NULL, NULL, NULL),
(137, 32, 9, 40, NULL, NULL, NULL, NULL, NULL, NULL),
(138, 32, 9, 41, NULL, NULL, NULL, NULL, NULL, NULL),
(139, 32, 9, 42, NULL, NULL, NULL, NULL, NULL, NULL),
(140, 32, 9, 43, NULL, NULL, NULL, NULL, NULL, NULL),
(141, 32, 9, 44, NULL, NULL, NULL, NULL, NULL, NULL),
(142, 32, 9, 45, NULL, NULL, NULL, NULL, NULL, NULL),
(143, 32, 9, 46, NULL, NULL, NULL, NULL, NULL, NULL),
(144, 32, 9, 47, NULL, NULL, NULL, NULL, NULL, NULL),
(145, 33, 9, 39, NULL, NULL, NULL, NULL, NULL, NULL),
(146, 33, 9, 40, NULL, NULL, NULL, NULL, NULL, NULL),
(147, 33, 9, 41, NULL, NULL, NULL, NULL, NULL, NULL),
(148, 33, 9, 42, NULL, NULL, NULL, NULL, NULL, NULL),
(149, 33, 9, 43, NULL, NULL, NULL, NULL, NULL, NULL),
(150, 33, 9, 44, NULL, NULL, NULL, NULL, NULL, NULL),
(151, 33, 9, 45, NULL, NULL, NULL, NULL, NULL, NULL),
(152, 33, 9, 46, NULL, NULL, NULL, NULL, NULL, NULL),
(153, 33, 9, 47, NULL, NULL, NULL, NULL, NULL, NULL),
(154, 34, 9, 39, NULL, NULL, NULL, NULL, NULL, NULL),
(155, 34, 9, 40, NULL, NULL, NULL, NULL, NULL, NULL),
(156, 34, 9, 41, NULL, NULL, NULL, NULL, NULL, NULL),
(157, 34, 9, 42, NULL, NULL, NULL, NULL, NULL, NULL),
(158, 34, 9, 43, NULL, NULL, NULL, NULL, NULL, NULL),
(159, 34, 9, 44, NULL, NULL, NULL, NULL, NULL, NULL),
(160, 34, 9, 45, NULL, NULL, NULL, NULL, NULL, NULL),
(161, 34, 9, 46, NULL, NULL, NULL, NULL, NULL, NULL),
(162, 34, 9, 47, NULL, NULL, NULL, NULL, NULL, NULL),
(163, 35, 9, 39, NULL, NULL, NULL, NULL, NULL, NULL),
(164, 35, 9, 40, NULL, NULL, NULL, NULL, NULL, NULL),
(165, 35, 9, 41, NULL, NULL, NULL, NULL, NULL, NULL),
(166, 35, 9, 42, NULL, NULL, NULL, NULL, NULL, NULL),
(167, 35, 9, 43, NULL, NULL, NULL, NULL, NULL, NULL),
(168, 35, 9, 44, NULL, NULL, NULL, NULL, NULL, NULL),
(169, 35, 9, 45, NULL, NULL, NULL, NULL, NULL, NULL),
(170, 35, 9, 46, NULL, NULL, NULL, NULL, NULL, NULL),
(171, 35, 9, 47, NULL, NULL, NULL, NULL, NULL, NULL),
(172, 36, 9, 39, NULL, NULL, NULL, NULL, NULL, NULL),
(173, 36, 9, 40, NULL, NULL, NULL, NULL, NULL, NULL),
(174, 36, 9, 41, NULL, NULL, NULL, NULL, NULL, NULL),
(175, 36, 9, 42, NULL, NULL, NULL, NULL, NULL, NULL),
(176, 36, 9, 43, NULL, NULL, NULL, NULL, NULL, NULL),
(177, 36, 9, 44, NULL, NULL, NULL, NULL, NULL, NULL),
(178, 36, 9, 45, NULL, NULL, NULL, NULL, NULL, NULL),
(179, 36, 9, 46, NULL, NULL, NULL, NULL, NULL, NULL),
(180, 36, 9, 47, NULL, NULL, NULL, NULL, NULL, NULL),
(181, 37, 9, 39, NULL, NULL, NULL, NULL, NULL, NULL),
(182, 37, 9, 40, NULL, NULL, NULL, NULL, NULL, NULL),
(183, 37, 9, 41, NULL, NULL, NULL, NULL, NULL, NULL),
(184, 37, 9, 42, NULL, NULL, NULL, NULL, NULL, NULL),
(185, 37, 9, 43, NULL, NULL, NULL, NULL, NULL, NULL),
(186, 37, 9, 44, NULL, NULL, NULL, NULL, NULL, NULL),
(187, 37, 9, 45, NULL, NULL, NULL, NULL, NULL, NULL),
(188, 37, 9, 46, NULL, NULL, NULL, NULL, NULL, NULL),
(189, 37, 9, 47, NULL, NULL, NULL, NULL, NULL, NULL),
(190, 38, 9, 39, NULL, NULL, NULL, NULL, NULL, NULL),
(191, 38, 9, 40, NULL, NULL, NULL, NULL, NULL, NULL),
(192, 38, 9, 41, NULL, NULL, NULL, NULL, NULL, NULL),
(193, 38, 9, 42, NULL, NULL, NULL, NULL, NULL, NULL),
(194, 38, 9, 43, NULL, NULL, NULL, NULL, NULL, NULL),
(195, 38, 9, 44, NULL, NULL, NULL, NULL, NULL, NULL),
(196, 38, 9, 45, NULL, NULL, NULL, NULL, NULL, NULL),
(197, 38, 9, 46, NULL, NULL, NULL, NULL, NULL, NULL),
(198, 38, 9, 47, NULL, NULL, NULL, NULL, NULL, NULL),
(199, 39, 9, 39, NULL, NULL, NULL, NULL, NULL, NULL),
(200, 39, 9, 40, NULL, NULL, NULL, NULL, NULL, NULL),
(201, 39, 9, 41, NULL, NULL, NULL, NULL, NULL, NULL),
(202, 39, 9, 42, NULL, NULL, NULL, NULL, NULL, NULL),
(203, 39, 9, 43, NULL, NULL, NULL, NULL, NULL, NULL),
(204, 39, 9, 44, NULL, NULL, NULL, NULL, NULL, NULL),
(205, 39, 9, 45, NULL, NULL, NULL, NULL, NULL, NULL),
(206, 39, 9, 46, NULL, NULL, NULL, NULL, NULL, NULL),
(207, 39, 9, 47, NULL, NULL, NULL, NULL, NULL, NULL),
(208, 40, 9, 39, NULL, NULL, NULL, NULL, NULL, NULL),
(209, 40, 9, 40, NULL, NULL, NULL, NULL, NULL, NULL),
(210, 40, 9, 41, NULL, NULL, NULL, NULL, NULL, NULL),
(211, 40, 9, 42, NULL, NULL, NULL, NULL, NULL, NULL),
(212, 40, 9, 43, NULL, NULL, NULL, NULL, NULL, NULL),
(213, 40, 9, 44, NULL, NULL, NULL, NULL, NULL, NULL),
(214, 40, 9, 45, NULL, NULL, NULL, NULL, NULL, NULL),
(215, 40, 9, 46, NULL, NULL, NULL, NULL, NULL, NULL),
(216, 40, 9, 47, NULL, NULL, NULL, NULL, NULL, NULL),
(217, 41, 9, 39, NULL, NULL, NULL, NULL, NULL, NULL),
(218, 41, 9, 40, NULL, NULL, NULL, NULL, NULL, NULL),
(219, 41, 9, 41, NULL, NULL, NULL, NULL, NULL, NULL),
(220, 41, 9, 42, NULL, NULL, NULL, NULL, NULL, NULL),
(221, 41, 9, 43, NULL, NULL, NULL, NULL, NULL, NULL),
(222, 41, 9, 44, NULL, NULL, NULL, NULL, NULL, NULL),
(223, 41, 9, 45, NULL, NULL, NULL, NULL, NULL, NULL),
(224, 41, 9, 46, NULL, NULL, NULL, NULL, NULL, NULL),
(225, 41, 9, 47, NULL, NULL, NULL, NULL, NULL, NULL),
(226, 42, 9, 39, NULL, NULL, NULL, NULL, NULL, NULL),
(227, 42, 9, 40, NULL, NULL, NULL, NULL, NULL, NULL),
(228, 42, 9, 41, NULL, NULL, NULL, NULL, NULL, NULL),
(229, 42, 9, 42, NULL, NULL, NULL, NULL, NULL, NULL),
(230, 42, 9, 43, NULL, NULL, NULL, NULL, NULL, NULL),
(231, 42, 9, 44, NULL, NULL, NULL, NULL, NULL, NULL),
(232, 42, 9, 45, NULL, NULL, NULL, NULL, NULL, NULL),
(233, 42, 9, 46, NULL, NULL, NULL, NULL, NULL, NULL),
(234, 42, 9, 47, NULL, NULL, NULL, NULL, NULL, NULL),
(235, 43, 9, 39, NULL, NULL, NULL, NULL, NULL, NULL),
(236, 43, 9, 40, NULL, NULL, NULL, NULL, NULL, NULL),
(237, 43, 9, 41, NULL, NULL, NULL, NULL, NULL, NULL),
(238, 43, 9, 42, NULL, NULL, NULL, NULL, NULL, NULL),
(239, 43, 9, 43, NULL, NULL, NULL, NULL, NULL, NULL),
(240, 43, 9, 44, NULL, NULL, NULL, NULL, NULL, NULL),
(241, 43, 9, 45, NULL, NULL, NULL, NULL, NULL, NULL),
(242, 43, 9, 46, NULL, NULL, NULL, NULL, NULL, NULL),
(243, 43, 9, 47, NULL, NULL, NULL, NULL, NULL, NULL),
(244, 44, 9, 39, NULL, NULL, NULL, NULL, NULL, NULL),
(245, 44, 9, 40, NULL, NULL, NULL, NULL, NULL, NULL),
(246, 44, 9, 41, NULL, NULL, NULL, NULL, NULL, NULL),
(247, 44, 9, 42, NULL, NULL, NULL, NULL, NULL, NULL),
(248, 44, 9, 43, NULL, NULL, NULL, NULL, NULL, NULL),
(249, 44, 9, 44, NULL, NULL, NULL, NULL, NULL, NULL),
(250, 44, 9, 45, NULL, NULL, NULL, NULL, NULL, NULL),
(251, 44, 9, 46, NULL, NULL, NULL, NULL, NULL, NULL),
(252, 44, 9, 47, NULL, NULL, NULL, NULL, NULL, NULL),
(253, 45, 9, 39, NULL, NULL, NULL, NULL, NULL, NULL),
(254, 45, 9, 40, NULL, NULL, NULL, NULL, NULL, NULL),
(255, 45, 9, 41, NULL, NULL, NULL, NULL, NULL, NULL),
(256, 45, 9, 42, NULL, NULL, NULL, NULL, NULL, NULL),
(257, 45, 9, 43, NULL, NULL, NULL, NULL, NULL, NULL),
(258, 45, 9, 44, NULL, NULL, NULL, NULL, NULL, NULL),
(259, 45, 9, 45, NULL, NULL, NULL, NULL, NULL, NULL),
(260, 45, 9, 46, NULL, NULL, NULL, NULL, NULL, NULL),
(261, 45, 9, 47, NULL, NULL, NULL, NULL, NULL, NULL),
(262, 46, 9, 39, NULL, NULL, NULL, NULL, NULL, NULL),
(263, 46, 9, 40, NULL, NULL, NULL, NULL, NULL, NULL),
(264, 46, 9, 41, NULL, NULL, NULL, NULL, NULL, NULL),
(265, 46, 9, 42, NULL, NULL, NULL, NULL, NULL, NULL),
(266, 46, 9, 43, NULL, NULL, NULL, NULL, NULL, NULL),
(267, 46, 9, 44, NULL, NULL, NULL, NULL, NULL, NULL),
(268, 46, 9, 45, NULL, NULL, NULL, NULL, NULL, NULL),
(269, 46, 9, 46, NULL, NULL, NULL, NULL, NULL, NULL),
(270, 46, 9, 47, NULL, NULL, NULL, NULL, NULL, NULL),
(271, 9, 9, 39, NULL, NULL, NULL, NULL, NULL, NULL),
(272, 9, 9, 40, NULL, NULL, NULL, NULL, NULL, NULL),
(273, 9, 9, 41, NULL, NULL, NULL, NULL, NULL, NULL),
(274, 9, 9, 42, NULL, NULL, NULL, NULL, NULL, NULL),
(275, 9, 9, 43, NULL, NULL, NULL, NULL, NULL, NULL),
(276, 9, 9, 44, NULL, NULL, NULL, NULL, NULL, NULL),
(277, 9, 9, 45, NULL, NULL, NULL, NULL, NULL, NULL),
(278, 9, 9, 46, NULL, NULL, NULL, NULL, NULL, NULL),
(279, 9, 9, 47, NULL, NULL, NULL, NULL, NULL, NULL),
(280, 48, 9, 39, NULL, NULL, NULL, NULL, NULL, NULL),
(281, 48, 9, 40, NULL, NULL, NULL, NULL, NULL, NULL),
(282, 48, 9, 41, NULL, NULL, NULL, NULL, NULL, NULL),
(283, 48, 9, 42, NULL, NULL, NULL, NULL, NULL, NULL),
(284, 48, 9, 43, NULL, NULL, NULL, NULL, NULL, NULL),
(285, 48, 9, 44, NULL, NULL, NULL, NULL, NULL, NULL),
(286, 48, 9, 45, NULL, NULL, NULL, NULL, NULL, NULL),
(287, 48, 9, 46, NULL, NULL, NULL, NULL, NULL, NULL),
(288, 48, 9, 47, NULL, NULL, NULL, NULL, NULL, NULL),
(289, 49, 9, 39, NULL, NULL, NULL, NULL, NULL, NULL),
(290, 49, 9, 40, NULL, NULL, NULL, NULL, NULL, NULL),
(291, 49, 9, 41, NULL, NULL, NULL, NULL, NULL, NULL),
(292, 49, 9, 42, NULL, NULL, NULL, NULL, NULL, NULL),
(293, 49, 9, 43, NULL, NULL, NULL, NULL, NULL, NULL),
(294, 49, 9, 44, NULL, NULL, NULL, NULL, NULL, NULL),
(295, 49, 9, 45, NULL, NULL, NULL, NULL, NULL, NULL),
(296, 49, 9, 46, NULL, NULL, NULL, NULL, NULL, NULL),
(297, 49, 9, 47, NULL, NULL, NULL, NULL, NULL, NULL),
(298, 50, 9, 39, NULL, NULL, NULL, NULL, NULL, NULL),
(299, 50, 9, 40, NULL, NULL, NULL, NULL, NULL, NULL),
(300, 50, 9, 41, NULL, NULL, NULL, NULL, NULL, NULL),
(301, 50, 9, 42, NULL, NULL, NULL, NULL, NULL, NULL),
(302, 50, 9, 43, NULL, NULL, NULL, NULL, NULL, NULL),
(303, 50, 9, 44, NULL, NULL, NULL, NULL, NULL, NULL),
(304, 50, 9, 45, NULL, NULL, NULL, NULL, NULL, NULL),
(305, 50, 9, 46, NULL, NULL, NULL, NULL, NULL, NULL),
(306, 50, 9, 47, NULL, NULL, NULL, NULL, NULL, NULL),
(307, 51, 9, 39, NULL, NULL, NULL, NULL, NULL, NULL),
(308, 51, 9, 40, NULL, NULL, NULL, NULL, NULL, NULL),
(309, 51, 9, 41, NULL, NULL, NULL, NULL, NULL, NULL),
(310, 51, 9, 42, NULL, NULL, NULL, NULL, NULL, NULL),
(311, 51, 9, 43, NULL, NULL, NULL, NULL, NULL, NULL),
(312, 51, 9, 44, NULL, NULL, NULL, NULL, NULL, NULL),
(313, 51, 9, 45, NULL, NULL, NULL, NULL, NULL, NULL),
(314, 51, 9, 46, NULL, NULL, NULL, NULL, NULL, NULL),
(315, 51, 9, 47, NULL, NULL, NULL, NULL, NULL, NULL),
(316, 52, 9, 39, 18, 16, NULL, 70, NULL, NULL),
(317, 52, 9, 40, NULL, NULL, NULL, NULL, NULL, NULL),
(318, 52, 9, 41, NULL, NULL, NULL, NULL, NULL, NULL),
(319, 52, 9, 42, NULL, NULL, NULL, NULL, NULL, NULL),
(320, 52, 9, 43, NULL, NULL, NULL, NULL, NULL, NULL),
(321, 52, 9, 44, NULL, NULL, NULL, NULL, NULL, NULL),
(322, 52, 9, 45, NULL, NULL, NULL, NULL, NULL, NULL),
(323, 52, 9, 46, NULL, NULL, NULL, NULL, NULL, NULL),
(324, 52, 9, 47, NULL, NULL, NULL, NULL, NULL, NULL),
(325, 53, 9, 39, NULL, NULL, NULL, NULL, NULL, NULL),
(326, 53, 9, 40, NULL, NULL, NULL, NULL, NULL, NULL),
(327, 53, 9, 41, NULL, NULL, NULL, NULL, NULL, NULL),
(328, 53, 9, 42, NULL, NULL, NULL, NULL, NULL, NULL),
(329, 53, 9, 43, NULL, NULL, NULL, NULL, NULL, NULL),
(330, 53, 9, 44, NULL, NULL, NULL, NULL, NULL, NULL),
(331, 53, 9, 45, NULL, NULL, NULL, NULL, NULL, NULL),
(332, 53, 9, 46, NULL, NULL, NULL, NULL, NULL, NULL),
(333, 53, 9, 47, NULL, NULL, NULL, NULL, NULL, NULL),
(334, 54, 9, 39, NULL, NULL, NULL, NULL, NULL, NULL),
(335, 54, 9, 40, NULL, NULL, NULL, NULL, NULL, NULL),
(336, 54, 9, 41, NULL, NULL, NULL, NULL, NULL, NULL),
(337, 54, 9, 42, NULL, NULL, NULL, NULL, NULL, NULL),
(338, 54, 9, 43, NULL, NULL, NULL, NULL, NULL, NULL),
(339, 54, 9, 44, NULL, NULL, NULL, NULL, NULL, NULL),
(340, 54, 9, 45, NULL, NULL, NULL, NULL, NULL, NULL),
(341, 54, 9, 46, NULL, NULL, NULL, NULL, NULL, NULL),
(342, 54, 9, 47, NULL, NULL, NULL, NULL, NULL, NULL),
(343, 55, 9, 39, NULL, NULL, NULL, NULL, NULL, NULL),
(344, 55, 9, 40, NULL, NULL, NULL, NULL, NULL, NULL),
(345, 55, 9, 41, NULL, NULL, NULL, NULL, NULL, NULL),
(346, 55, 9, 42, NULL, NULL, NULL, NULL, NULL, NULL),
(347, 55, 9, 43, NULL, NULL, NULL, NULL, NULL, NULL),
(348, 55, 9, 44, NULL, NULL, NULL, NULL, NULL, NULL),
(349, 55, 9, 45, NULL, NULL, NULL, NULL, NULL, NULL),
(350, 55, 9, 46, NULL, NULL, NULL, NULL, NULL, NULL),
(351, 55, 9, 47, NULL, NULL, NULL, NULL, NULL, NULL),
(352, 56, 9, 39, NULL, NULL, NULL, NULL, NULL, NULL),
(353, 56, 9, 40, NULL, NULL, NULL, NULL, NULL, NULL),
(354, 56, 9, 41, NULL, NULL, NULL, NULL, NULL, NULL),
(355, 56, 9, 42, NULL, NULL, NULL, NULL, NULL, NULL),
(356, 56, 9, 43, NULL, NULL, NULL, NULL, NULL, NULL),
(357, 56, 9, 44, NULL, NULL, NULL, NULL, NULL, NULL),
(358, 56, 9, 45, NULL, NULL, NULL, NULL, NULL, NULL),
(359, 56, 9, 46, NULL, NULL, NULL, NULL, NULL, NULL),
(360, 56, 9, 47, NULL, NULL, NULL, NULL, NULL, NULL),
(361, 57, 9, 39, NULL, NULL, NULL, NULL, NULL, NULL),
(362, 57, 9, 40, NULL, NULL, NULL, NULL, NULL, NULL),
(363, 57, 9, 41, NULL, NULL, NULL, NULL, NULL, NULL),
(364, 57, 9, 42, NULL, NULL, NULL, NULL, NULL, NULL),
(365, 57, 9, 43, NULL, NULL, NULL, NULL, NULL, NULL),
(366, 57, 9, 44, NULL, NULL, NULL, NULL, NULL, NULL),
(367, 57, 9, 45, NULL, NULL, NULL, NULL, NULL, NULL),
(368, 57, 9, 46, NULL, NULL, NULL, NULL, NULL, NULL),
(369, 57, 9, 47, NULL, NULL, NULL, NULL, NULL, NULL),
(370, 58, 9, 39, NULL, NULL, NULL, NULL, NULL, NULL),
(371, 58, 9, 40, NULL, NULL, NULL, NULL, NULL, NULL),
(372, 58, 9, 41, NULL, NULL, NULL, NULL, NULL, NULL),
(373, 58, 9, 42, NULL, NULL, NULL, NULL, NULL, NULL),
(374, 58, 9, 43, NULL, NULL, NULL, NULL, NULL, NULL),
(375, 58, 9, 44, NULL, NULL, NULL, NULL, NULL, NULL),
(376, 58, 9, 45, NULL, NULL, NULL, NULL, NULL, NULL),
(377, 58, 9, 46, NULL, NULL, NULL, NULL, NULL, NULL),
(378, 58, 9, 47, NULL, NULL, NULL, NULL, NULL, NULL),
(379, 59, 9, 39, NULL, NULL, NULL, NULL, NULL, NULL),
(380, 59, 9, 40, NULL, NULL, NULL, NULL, NULL, NULL),
(381, 59, 9, 41, NULL, NULL, NULL, NULL, NULL, NULL),
(382, 59, 9, 42, NULL, NULL, NULL, NULL, NULL, NULL),
(383, 59, 9, 43, NULL, NULL, NULL, NULL, NULL, NULL),
(384, 59, 9, 44, NULL, NULL, NULL, NULL, NULL, NULL),
(385, 59, 9, 45, NULL, NULL, NULL, NULL, NULL, NULL),
(386, 59, 9, 46, NULL, NULL, NULL, NULL, NULL, NULL),
(387, 59, 9, 47, NULL, NULL, NULL, NULL, NULL, NULL),
(388, 60, 9, 39, NULL, NULL, NULL, NULL, NULL, NULL),
(389, 60, 9, 40, NULL, NULL, NULL, NULL, NULL, NULL),
(390, 60, 9, 41, NULL, NULL, NULL, NULL, NULL, NULL),
(391, 60, 9, 42, NULL, NULL, NULL, NULL, NULL, NULL),
(392, 60, 9, 43, NULL, NULL, NULL, NULL, NULL, NULL),
(393, 60, 9, 44, NULL, NULL, NULL, NULL, NULL, NULL),
(394, 60, 9, 45, NULL, NULL, NULL, NULL, NULL, NULL),
(395, 60, 9, 46, NULL, NULL, NULL, NULL, NULL, NULL),
(396, 60, 9, 47, NULL, NULL, NULL, NULL, NULL, NULL),
(397, 61, 9, 39, NULL, NULL, NULL, NULL, NULL, NULL),
(398, 61, 9, 40, NULL, NULL, NULL, NULL, NULL, NULL),
(399, 61, 9, 41, NULL, NULL, NULL, NULL, NULL, NULL),
(400, 61, 9, 42, NULL, NULL, NULL, NULL, NULL, NULL),
(401, 61, 9, 43, NULL, NULL, NULL, NULL, NULL, NULL),
(402, 61, 9, 44, NULL, NULL, NULL, NULL, NULL, NULL),
(403, 61, 9, 45, NULL, NULL, NULL, NULL, NULL, NULL),
(404, 61, 9, 46, NULL, NULL, NULL, NULL, NULL, NULL),
(405, 61, 9, 47, NULL, NULL, NULL, NULL, NULL, NULL),
(406, 62, 9, 39, NULL, NULL, NULL, NULL, NULL, NULL),
(407, 62, 9, 40, NULL, NULL, NULL, NULL, NULL, NULL),
(408, 62, 9, 41, NULL, NULL, NULL, NULL, NULL, NULL),
(409, 62, 9, 42, NULL, NULL, NULL, NULL, NULL, NULL),
(410, 62, 9, 43, NULL, NULL, NULL, NULL, NULL, NULL),
(411, 62, 9, 44, NULL, NULL, NULL, NULL, NULL, NULL),
(412, 62, 9, 45, NULL, NULL, NULL, NULL, NULL, NULL),
(413, 62, 9, 46, NULL, NULL, NULL, NULL, NULL, NULL),
(414, 62, 9, 47, NULL, NULL, NULL, NULL, NULL, NULL),
(415, 63, 9, 39, NULL, NULL, NULL, NULL, NULL, NULL),
(416, 63, 9, 40, NULL, NULL, NULL, NULL, NULL, NULL),
(417, 63, 9, 41, NULL, NULL, NULL, NULL, NULL, NULL),
(418, 63, 9, 42, NULL, NULL, NULL, NULL, NULL, NULL),
(419, 63, 9, 43, NULL, NULL, NULL, NULL, NULL, NULL),
(420, 63, 9, 44, NULL, NULL, NULL, NULL, NULL, NULL),
(421, 63, 9, 45, NULL, NULL, NULL, NULL, NULL, NULL),
(422, 63, 9, 46, NULL, NULL, NULL, NULL, NULL, NULL),
(423, 63, 9, 47, NULL, NULL, NULL, NULL, NULL, NULL),
(424, 64, 9, 39, NULL, NULL, NULL, NULL, NULL, NULL),
(425, 64, 9, 40, NULL, NULL, NULL, NULL, NULL, NULL),
(426, 64, 9, 41, NULL, NULL, NULL, NULL, NULL, NULL),
(427, 64, 9, 42, NULL, NULL, NULL, NULL, NULL, NULL),
(428, 64, 9, 43, NULL, NULL, NULL, NULL, NULL, NULL),
(429, 64, 9, 44, NULL, NULL, NULL, NULL, NULL, NULL),
(430, 64, 9, 45, NULL, NULL, NULL, NULL, NULL, NULL),
(431, 64, 9, 46, NULL, NULL, NULL, NULL, NULL, NULL),
(432, 64, 9, 47, NULL, NULL, NULL, NULL, NULL, NULL),
(433, 65, 9, 39, NULL, NULL, NULL, NULL, NULL, NULL),
(434, 65, 9, 40, NULL, NULL, NULL, NULL, NULL, NULL),
(435, 65, 9, 41, NULL, NULL, NULL, NULL, NULL, NULL),
(436, 65, 9, 42, NULL, NULL, NULL, NULL, NULL, NULL),
(437, 65, 9, 43, NULL, NULL, NULL, NULL, NULL, NULL),
(438, 65, 9, 44, NULL, NULL, NULL, NULL, NULL, NULL),
(439, 65, 9, 45, NULL, NULL, NULL, NULL, NULL, NULL),
(440, 65, 9, 46, NULL, NULL, NULL, NULL, NULL, NULL),
(441, 65, 9, 47, NULL, NULL, NULL, NULL, NULL, NULL),
(442, 66, 9, 39, NULL, NULL, NULL, NULL, NULL, NULL),
(443, 66, 9, 40, NULL, NULL, NULL, NULL, NULL, NULL),
(444, 66, 9, 41, NULL, NULL, NULL, NULL, NULL, NULL),
(445, 66, 9, 42, NULL, NULL, NULL, NULL, NULL, NULL),
(446, 66, 9, 43, NULL, NULL, NULL, NULL, NULL, NULL),
(447, 66, 9, 44, NULL, NULL, NULL, NULL, NULL, NULL),
(448, 66, 9, 45, NULL, NULL, NULL, NULL, NULL, NULL),
(449, 66, 9, 46, NULL, NULL, NULL, NULL, NULL, NULL),
(450, 66, 9, 47, NULL, NULL, NULL, NULL, NULL, NULL),
(451, 67, 9, 39, NULL, NULL, NULL, NULL, NULL, NULL),
(452, 67, 9, 40, NULL, NULL, NULL, NULL, NULL, NULL),
(453, 67, 9, 41, NULL, NULL, NULL, NULL, NULL, NULL),
(454, 67, 9, 42, NULL, NULL, NULL, NULL, NULL, NULL),
(455, 67, 9, 43, NULL, NULL, NULL, NULL, NULL, NULL),
(456, 67, 9, 44, NULL, NULL, NULL, NULL, NULL, NULL),
(457, 67, 9, 45, NULL, NULL, NULL, NULL, NULL, NULL),
(458, 67, 9, 46, NULL, NULL, NULL, NULL, NULL, NULL),
(459, 67, 9, 47, NULL, NULL, NULL, NULL, NULL, NULL),
(460, 68, 9, 39, NULL, NULL, NULL, NULL, NULL, NULL),
(461, 68, 9, 40, NULL, NULL, NULL, NULL, NULL, NULL),
(462, 68, 9, 41, NULL, NULL, NULL, NULL, NULL, NULL),
(463, 68, 9, 42, NULL, NULL, NULL, NULL, NULL, NULL),
(464, 68, 9, 43, NULL, NULL, NULL, NULL, NULL, NULL),
(465, 68, 9, 44, NULL, NULL, NULL, NULL, NULL, NULL),
(466, 68, 9, 45, NULL, NULL, NULL, NULL, NULL, NULL),
(467, 68, 9, 46, NULL, NULL, NULL, NULL, NULL, NULL),
(468, 68, 9, 47, NULL, NULL, NULL, NULL, NULL, NULL),
(469, 69, 9, 39, NULL, NULL, NULL, NULL, NULL, NULL),
(470, 69, 9, 40, NULL, NULL, NULL, NULL, NULL, NULL),
(471, 69, 9, 41, NULL, NULL, NULL, NULL, NULL, NULL),
(472, 69, 9, 42, NULL, NULL, NULL, NULL, NULL, NULL),
(473, 69, 9, 43, NULL, NULL, NULL, NULL, NULL, NULL),
(474, 69, 9, 44, NULL, NULL, NULL, NULL, NULL, NULL),
(475, 69, 9, 45, NULL, NULL, NULL, NULL, NULL, NULL),
(476, 69, 9, 46, NULL, NULL, NULL, NULL, NULL, NULL),
(477, 69, 9, 47, NULL, NULL, NULL, NULL, NULL, NULL),
(478, 70, 9, 39, NULL, NULL, NULL, NULL, NULL, NULL),
(479, 70, 9, 40, NULL, NULL, NULL, NULL, NULL, NULL),
(480, 70, 9, 41, NULL, NULL, NULL, NULL, NULL, NULL),
(481, 70, 9, 42, NULL, NULL, NULL, NULL, NULL, NULL),
(482, 70, 9, 43, NULL, NULL, NULL, NULL, NULL, NULL),
(483, 70, 9, 44, NULL, NULL, NULL, NULL, NULL, NULL),
(484, 70, 9, 45, NULL, NULL, NULL, NULL, NULL, NULL),
(485, 70, 9, 46, NULL, NULL, NULL, NULL, NULL, NULL),
(486, 70, 9, 47, NULL, NULL, NULL, NULL, NULL, NULL),
(487, 71, 9, 39, NULL, NULL, NULL, NULL, NULL, NULL),
(488, 71, 9, 40, NULL, NULL, NULL, NULL, NULL, NULL),
(489, 71, 9, 41, NULL, NULL, NULL, NULL, NULL, NULL),
(490, 71, 9, 42, NULL, NULL, NULL, NULL, NULL, NULL),
(491, 71, 9, 43, NULL, NULL, NULL, NULL, NULL, NULL),
(492, 71, 9, 44, NULL, NULL, NULL, NULL, NULL, NULL),
(493, 71, 9, 45, NULL, NULL, NULL, NULL, NULL, NULL),
(494, 71, 9, 46, NULL, NULL, NULL, NULL, NULL, NULL),
(495, 71, 9, 47, NULL, NULL, NULL, NULL, NULL, NULL),
(496, 72, 9, 39, NULL, NULL, NULL, NULL, NULL, NULL),
(497, 72, 9, 40, NULL, NULL, NULL, NULL, NULL, NULL),
(498, 72, 9, 41, NULL, NULL, NULL, NULL, NULL, NULL),
(499, 72, 9, 42, NULL, NULL, NULL, NULL, NULL, NULL),
(500, 72, 9, 43, NULL, NULL, NULL, NULL, NULL, NULL),
(501, 72, 9, 44, NULL, NULL, NULL, NULL, NULL, NULL),
(502, 72, 9, 45, NULL, NULL, NULL, NULL, NULL, NULL),
(503, 72, 9, 46, NULL, NULL, NULL, NULL, NULL, NULL),
(504, 72, 9, 47, NULL, NULL, NULL, NULL, NULL, NULL),
(505, 73, 9, 39, NULL, NULL, NULL, NULL, NULL, NULL),
(506, 73, 9, 40, NULL, NULL, NULL, NULL, NULL, NULL),
(507, 73, 9, 41, NULL, NULL, NULL, NULL, NULL, NULL),
(508, 73, 9, 42, NULL, NULL, NULL, NULL, NULL, NULL),
(509, 73, 9, 43, NULL, NULL, NULL, NULL, NULL, NULL),
(510, 73, 9, 44, NULL, NULL, NULL, NULL, NULL, NULL),
(511, 73, 9, 45, NULL, NULL, NULL, NULL, NULL, NULL),
(512, 73, 9, 46, NULL, NULL, NULL, NULL, NULL, NULL),
(513, 73, 9, 47, NULL, NULL, NULL, NULL, NULL, NULL),
(514, 74, 9, 39, NULL, NULL, NULL, NULL, NULL, NULL),
(515, 74, 9, 40, NULL, NULL, NULL, NULL, NULL, NULL),
(516, 74, 9, 41, NULL, NULL, NULL, NULL, NULL, NULL),
(517, 74, 9, 42, NULL, NULL, NULL, NULL, NULL, NULL),
(518, 74, 9, 43, NULL, NULL, NULL, NULL, NULL, NULL),
(519, 74, 9, 44, NULL, NULL, NULL, NULL, NULL, NULL),
(520, 74, 9, 45, NULL, NULL, NULL, NULL, NULL, NULL),
(521, 74, 9, 46, NULL, NULL, NULL, NULL, NULL, NULL),
(522, 74, 9, 47, NULL, NULL, NULL, NULL, NULL, NULL),
(523, 75, 9, 39, NULL, NULL, NULL, NULL, NULL, NULL),
(524, 75, 9, 40, NULL, NULL, NULL, NULL, NULL, NULL),
(525, 75, 9, 41, NULL, NULL, NULL, NULL, NULL, NULL),
(526, 75, 9, 42, NULL, NULL, NULL, NULL, NULL, NULL),
(527, 75, 9, 43, NULL, NULL, NULL, NULL, NULL, NULL),
(528, 75, 9, 44, NULL, NULL, NULL, NULL, NULL, NULL),
(529, 75, 9, 45, NULL, NULL, NULL, NULL, NULL, NULL),
(530, 75, 9, 46, NULL, NULL, NULL, NULL, NULL, NULL),
(531, 75, 9, 47, NULL, NULL, NULL, NULL, NULL, NULL),
(532, 76, 9, 39, NULL, NULL, NULL, NULL, NULL, NULL),
(533, 76, 9, 40, NULL, NULL, NULL, NULL, NULL, NULL),
(534, 76, 9, 41, NULL, NULL, NULL, NULL, NULL, NULL),
(535, 76, 9, 42, NULL, NULL, NULL, NULL, NULL, NULL),
(536, 76, 9, 43, NULL, NULL, NULL, NULL, NULL, NULL),
(537, 76, 9, 44, NULL, NULL, NULL, NULL, NULL, NULL),
(538, 76, 9, 45, NULL, NULL, NULL, NULL, NULL, NULL),
(539, 76, 9, 46, NULL, NULL, NULL, NULL, NULL, NULL),
(540, 76, 9, 47, NULL, NULL, NULL, NULL, NULL, NULL),
(541, 77, 9, 39, NULL, NULL, NULL, NULL, NULL, NULL),
(542, 77, 9, 40, NULL, NULL, NULL, NULL, NULL, NULL),
(543, 77, 9, 41, NULL, NULL, NULL, NULL, NULL, NULL),
(544, 77, 9, 42, NULL, NULL, NULL, NULL, NULL, NULL),
(545, 77, 9, 43, NULL, NULL, NULL, NULL, NULL, NULL),
(546, 77, 9, 44, NULL, NULL, NULL, NULL, NULL, NULL),
(547, 77, 9, 45, NULL, NULL, NULL, NULL, NULL, NULL),
(548, 77, 9, 46, NULL, NULL, NULL, NULL, NULL, NULL),
(549, 77, 9, 47, NULL, NULL, NULL, NULL, NULL, NULL),
(550, 78, 9, 39, NULL, NULL, NULL, NULL, NULL, NULL),
(551, 78, 9, 40, NULL, NULL, NULL, NULL, NULL, NULL),
(552, 78, 9, 41, NULL, NULL, NULL, NULL, NULL, NULL),
(553, 78, 9, 42, NULL, NULL, NULL, NULL, NULL, NULL),
(554, 78, 9, 43, NULL, NULL, NULL, NULL, NULL, NULL),
(555, 78, 9, 44, NULL, NULL, NULL, NULL, NULL, NULL),
(556, 78, 9, 45, NULL, NULL, NULL, NULL, NULL, NULL),
(557, 78, 9, 46, NULL, NULL, NULL, NULL, NULL, NULL),
(558, 78, 9, 47, NULL, NULL, NULL, NULL, NULL, NULL),
(559, 79, 9, 39, NULL, NULL, NULL, NULL, NULL, NULL),
(560, 79, 9, 40, NULL, NULL, NULL, NULL, NULL, NULL),
(561, 79, 9, 41, NULL, NULL, NULL, NULL, NULL, NULL),
(562, 79, 9, 42, NULL, NULL, NULL, NULL, NULL, NULL),
(563, 79, 9, 43, NULL, NULL, NULL, NULL, NULL, NULL),
(564, 79, 9, 44, NULL, NULL, NULL, NULL, NULL, NULL),
(565, 79, 9, 45, NULL, NULL, NULL, NULL, NULL, NULL),
(566, 79, 9, 46, NULL, NULL, NULL, NULL, NULL, NULL),
(567, 79, 9, 47, NULL, NULL, NULL, NULL, NULL, NULL),
(568, 80, 9, 39, NULL, NULL, NULL, NULL, NULL, NULL),
(569, 80, 9, 40, NULL, NULL, NULL, NULL, NULL, NULL),
(570, 80, 9, 41, NULL, NULL, NULL, NULL, NULL, NULL),
(571, 80, 9, 42, NULL, NULL, NULL, NULL, NULL, NULL),
(572, 80, 9, 43, NULL, NULL, NULL, NULL, NULL, NULL),
(573, 80, 9, 44, NULL, NULL, NULL, NULL, NULL, NULL),
(574, 80, 9, 45, NULL, NULL, NULL, NULL, NULL, NULL),
(575, 80, 9, 46, NULL, NULL, NULL, NULL, NULL, NULL),
(576, 80, 9, 47, NULL, NULL, NULL, NULL, NULL, NULL),
(577, 81, 9, 39, NULL, NULL, NULL, NULL, NULL, NULL),
(578, 81, 9, 40, NULL, NULL, NULL, NULL, NULL, NULL),
(579, 81, 9, 41, NULL, NULL, NULL, NULL, NULL, NULL),
(580, 81, 9, 42, NULL, NULL, NULL, NULL, NULL, NULL),
(581, 81, 9, 43, NULL, NULL, NULL, NULL, NULL, NULL),
(582, 81, 9, 44, NULL, NULL, NULL, NULL, NULL, NULL),
(583, 81, 9, 45, NULL, NULL, NULL, NULL, NULL, NULL),
(584, 81, 9, 46, NULL, NULL, NULL, NULL, NULL, NULL),
(585, 81, 9, 47, NULL, NULL, NULL, NULL, NULL, NULL),
(586, 82, 9, 39, NULL, NULL, NULL, NULL, NULL, NULL),
(587, 82, 9, 40, NULL, NULL, NULL, NULL, NULL, NULL),
(588, 82, 9, 41, NULL, NULL, NULL, NULL, NULL, NULL),
(589, 82, 9, 42, NULL, NULL, NULL, NULL, NULL, NULL),
(590, 82, 9, 43, NULL, NULL, NULL, NULL, NULL, NULL),
(591, 82, 9, 44, NULL, NULL, NULL, NULL, NULL, NULL),
(592, 82, 9, 45, NULL, NULL, NULL, NULL, NULL, NULL),
(593, 82, 9, 46, NULL, NULL, NULL, NULL, NULL, NULL),
(594, 82, 9, 47, NULL, NULL, NULL, NULL, NULL, NULL),
(595, 83, 9, 39, NULL, NULL, NULL, NULL, NULL, NULL),
(596, 83, 9, 40, NULL, NULL, NULL, NULL, NULL, NULL),
(597, 83, 9, 41, NULL, NULL, NULL, NULL, NULL, NULL),
(598, 83, 9, 42, NULL, NULL, NULL, NULL, NULL, NULL),
(599, 83, 9, 43, NULL, NULL, NULL, NULL, NULL, NULL),
(600, 83, 9, 44, NULL, NULL, NULL, NULL, NULL, NULL),
(601, 83, 9, 45, NULL, NULL, NULL, NULL, NULL, NULL),
(602, 83, 9, 46, NULL, NULL, NULL, NULL, NULL, NULL),
(603, 83, 9, 47, NULL, NULL, NULL, NULL, NULL, NULL),
(604, 84, 9, 39, NULL, NULL, NULL, NULL, NULL, NULL),
(605, 84, 9, 40, NULL, NULL, NULL, NULL, NULL, NULL),
(606, 84, 9, 41, NULL, NULL, NULL, NULL, NULL, NULL),
(607, 84, 9, 42, NULL, NULL, NULL, NULL, NULL, NULL),
(608, 84, 9, 43, NULL, NULL, NULL, NULL, NULL, NULL),
(609, 84, 9, 44, NULL, NULL, NULL, NULL, NULL, NULL),
(610, 84, 9, 45, NULL, NULL, NULL, NULL, NULL, NULL),
(611, 84, 9, 46, NULL, NULL, NULL, NULL, NULL, NULL),
(612, 84, 9, 47, NULL, NULL, NULL, NULL, NULL, NULL),
(613, 85, 9, 39, NULL, NULL, NULL, NULL, NULL, NULL),
(614, 85, 9, 40, NULL, NULL, NULL, NULL, NULL, NULL),
(615, 85, 9, 41, NULL, NULL, NULL, NULL, NULL, NULL),
(616, 85, 9, 42, NULL, NULL, NULL, NULL, NULL, NULL),
(617, 85, 9, 43, NULL, NULL, NULL, NULL, NULL, NULL),
(618, 85, 9, 44, NULL, NULL, NULL, NULL, NULL, NULL),
(619, 85, 9, 45, NULL, NULL, NULL, NULL, NULL, NULL),
(620, 85, 9, 46, NULL, NULL, NULL, NULL, NULL, NULL),
(621, 85, 9, 47, NULL, NULL, NULL, NULL, NULL, NULL),
(622, 86, 9, 39, NULL, NULL, NULL, NULL, NULL, NULL),
(623, 86, 9, 40, NULL, NULL, NULL, NULL, NULL, NULL),
(624, 86, 9, 41, NULL, NULL, NULL, NULL, NULL, NULL),
(625, 86, 9, 42, NULL, NULL, NULL, NULL, NULL, NULL),
(626, 86, 9, 43, NULL, NULL, NULL, NULL, NULL, NULL),
(627, 86, 9, 44, NULL, NULL, NULL, NULL, NULL, NULL),
(628, 86, 9, 45, NULL, NULL, NULL, NULL, NULL, NULL),
(629, 86, 9, 46, NULL, NULL, NULL, NULL, NULL, NULL),
(630, 86, 9, 47, NULL, NULL, NULL, NULL, NULL, NULL),
(631, 87, 9, 39, NULL, NULL, NULL, NULL, NULL, NULL),
(632, 87, 9, 40, NULL, NULL, NULL, NULL, NULL, NULL),
(633, 87, 9, 41, NULL, NULL, NULL, NULL, NULL, NULL),
(634, 87, 9, 42, NULL, NULL, NULL, NULL, NULL, NULL),
(635, 87, 9, 43, NULL, NULL, NULL, NULL, NULL, NULL),
(636, 87, 9, 44, NULL, NULL, NULL, NULL, NULL, NULL),
(637, 87, 9, 45, NULL, NULL, NULL, NULL, NULL, NULL),
(638, 87, 9, 46, NULL, NULL, NULL, NULL, NULL, NULL),
(639, 87, 9, 47, NULL, NULL, NULL, NULL, NULL, NULL),
(640, 88, 9, 39, NULL, NULL, NULL, NULL, NULL, NULL),
(641, 88, 9, 40, NULL, NULL, NULL, NULL, NULL, NULL),
(642, 88, 9, 41, NULL, NULL, NULL, NULL, NULL, NULL),
(643, 88, 9, 42, NULL, NULL, NULL, NULL, NULL, NULL),
(644, 88, 9, 43, NULL, NULL, NULL, NULL, NULL, NULL),
(645, 88, 9, 44, NULL, NULL, NULL, NULL, NULL, NULL),
(646, 88, 9, 45, NULL, NULL, NULL, NULL, NULL, NULL),
(647, 88, 9, 46, NULL, NULL, NULL, NULL, NULL, NULL),
(648, 88, 9, 47, NULL, NULL, NULL, NULL, NULL, NULL),
(649, 89, 9, 39, NULL, NULL, NULL, NULL, NULL, NULL),
(650, 89, 9, 40, NULL, NULL, NULL, NULL, NULL, NULL),
(651, 89, 9, 41, NULL, NULL, NULL, NULL, NULL, NULL),
(652, 89, 9, 42, NULL, NULL, NULL, NULL, NULL, NULL),
(653, 89, 9, 43, NULL, NULL, NULL, NULL, NULL, NULL),
(654, 89, 9, 44, NULL, NULL, NULL, NULL, NULL, NULL),
(655, 89, 9, 45, NULL, NULL, NULL, NULL, NULL, NULL),
(656, 89, 9, 46, NULL, NULL, NULL, NULL, NULL, NULL),
(657, 89, 9, 47, NULL, NULL, NULL, NULL, NULL, NULL),
(658, 90, 9, 39, NULL, NULL, NULL, NULL, NULL, NULL),
(659, 90, 9, 40, NULL, NULL, NULL, NULL, NULL, NULL),
(660, 90, 9, 41, NULL, NULL, NULL, NULL, NULL, NULL),
(661, 90, 9, 42, NULL, NULL, NULL, NULL, NULL, NULL),
(662, 90, 9, 43, NULL, NULL, NULL, NULL, NULL, NULL),
(663, 90, 9, 44, NULL, NULL, NULL, NULL, NULL, NULL),
(664, 90, 9, 45, NULL, NULL, NULL, NULL, NULL, NULL),
(665, 90, 9, 46, NULL, NULL, NULL, NULL, NULL, NULL),
(666, 90, 9, 47, NULL, NULL, NULL, NULL, NULL, NULL),
(667, 91, 9, 39, NULL, NULL, NULL, NULL, NULL, NULL),
(668, 91, 9, 40, NULL, NULL, NULL, NULL, NULL, NULL),
(669, 91, 9, 41, NULL, NULL, NULL, NULL, NULL, NULL),
(670, 91, 9, 42, NULL, NULL, NULL, NULL, NULL, NULL),
(671, 91, 9, 43, NULL, NULL, NULL, NULL, NULL, NULL),
(672, 91, 9, 44, NULL, NULL, NULL, NULL, NULL, NULL),
(673, 91, 9, 45, NULL, NULL, NULL, NULL, NULL, NULL),
(674, 91, 9, 46, NULL, NULL, NULL, NULL, NULL, NULL),
(675, 91, 9, 47, NULL, NULL, NULL, NULL, NULL, NULL);

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
(1, 'Super Admin', 'web', '2020-03-10 12:10:47', '2020-03-10 12:10:47'),
(2, 'Admin', 'web', '2020-03-10 13:09:23', '2020-03-10 13:09:23'),
(3, 'Project Manager', 'web', '2020-03-12 12:41:50', '2020-03-12 12:41:50'),
(4, 'Sales Manager', 'web', '2020-03-12 12:42:07', '2020-03-12 12:42:07'),
(5, 'Member', 'web', '2020-05-10 06:12:51', '2020-05-10 06:12:51'),
(10, 'Student', 'web', '2021-08-15 06:34:24', '2021-08-15 06:34:24'),
(11, 'Instructor', 'web', '2022-01-01 04:32:05', '2022-01-01 04:32:05');

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
(4, 2),
(4, 11),
(5, 2),
(5, 4),
(5, 11),
(6, 2),
(6, 3),
(6, 11),
(8, 2),
(8, 11),
(9, 2),
(9, 3),
(9, 11);

-- --------------------------------------------------------

--
-- Table structure for table `semesters`
--

CREATE TABLE `semesters` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `number` int(11) NOT NULL,
  `batch` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `branch_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `semesters`
--

INSERT INTO `semesters` (`id`, `number`, `batch`, `branch_id`) VALUES
(9, 8, '2018', 1);

-- --------------------------------------------------------

--
-- Table structure for table `semester_has_courses`
--

CREATE TABLE `semester_has_courses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `semester_id` bigint(20) UNSIGNED NOT NULL,
  `course_id` bigint(20) UNSIGNED NOT NULL,
  `prof_id` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `semester_has_courses`
--

INSERT INTO `semester_has_courses` (`id`, `semester_id`, `course_id`, `prof_id`) VALUES
(20, 9, 39, 13),
(21, 9, 40, 13),
(22, 9, 41, NULL),
(23, 9, 42, NULL),
(24, 9, 43, NULL),
(25, 9, 44, NULL),
(26, 9, 45, NULL),
(27, 9, 46, NULL),
(28, 9, 47, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `skills`
--

CREATE TABLE `skills` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `percentage` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `skills`
--

INSERT INTO `skills` (`id`, `user_id`, `name`, `percentage`) VALUES
(1, 9, 'Laravel', 90),
(2, 9, 'Php', 75),
(3, 9, 'CorelDraw', 80),
(4, 9, 'Python', 80),
(5, 47, 'Laravel', 80),
(6, 47, 'PHP', 60);

-- --------------------------------------------------------

--
-- Table structure for table `streams`
--

CREATE TABLE `streams` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `streams`
--

INSERT INTO `streams` (`id`, `name`) VALUES
(1, 'School of Engineering and Technology'),
(2, 'School of Architecture'),
(4, 'School of Pharmacy');

-- --------------------------------------------------------

--
-- Table structure for table `tests`
--

CREATE TABLE `tests` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `otp` int(11) NOT NULL DEFAULT 0,
  `rollno` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gender` int(11) DEFAULT NULL,
  `year_of_study` bigint(20) DEFAULT NULL,
  `batch_year` bigint(20) DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `current_semester` bigint(20) DEFAULT NULL,
  `branch_id` bigint(20) UNSIGNED DEFAULT NULL,
  `phone` bigint(20) DEFAULT NULL,
  `address` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bio` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'default.jpg'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `otp`, `rollno`, `email2`, `gender`, `year_of_study`, `batch_year`, `dob`, `current_semester`, `branch_id`, `phone`, `address`, `bio`, `avatar`) VALUES
(1, 'Super Admin', 'admin@test.com', NULL, '$2y$10$40lQm5lnWgtElBwnko7ASuUr.Obu2CI.hPecZ8ZciGsYKkXw2Kf3.', NULL, NULL, '2020-05-10 05:09:49', 0, NULL, NULL, 1, 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, 'default.jpg'),
(2, 'Project Manager', 'pm@test.com', NULL, '$2y$10$rm0yp.fuqPZevIkxlActtuBpMuTHLGwPRYFaNlA5TToZZqx.i7Tra', NULL, '2020-03-12 12:48:59', '2020-03-12 12:48:59', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'default.jpg'),
(3, 'Sales Manager', 'sm@test.com', NULL, '$2y$10$40lQm5lnWgtElBwnko7ASuUr.Obu2CI.hPecZ8ZciGsYKkXw2Kf3.', NULL, '2020-03-12 12:50:15', '2020-03-12 12:50:15', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'default.jpg'),
(4, 'HR', 'hr@test.com', NULL, '$2y$10$sFgFRrOZS4mzhRlAHbDIie.Kz.G3YSIYynnmcljjxVzyl0gkMQT6a', NULL, '2020-03-12 12:55:25', '2020-03-12 12:55:25', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'default.jpg'),
(9, 'Omkar Babrekar', 'babrekaromkar@gmail.com', NULL, '$2y$10$VBSL1d4EgjtH87M0eo8DROfE204WTTTEKx6JEV0B.JkFmxFmpahEW', 'kY0wCtjyJ1Sxp39Zmki9v96jAdWoSrEt0RN7w478s9texZ6nFBgWJGWalAIe', '2021-08-12 03:17:32', '2022-02-27 09:21:43', 0, '18CO20', '18co20@aiktc.ac.in', 1, 4, 2018, '2000-09-21', 8, 1, 9930923562, 'Vartak Nagar,\r\nThane (W) 400606', 'Hey, I am Omkar Babrekar,  a Computer Engineer.\r\n\r\nI will teach you how you can use Python just like I do. I take care to explain the programming concepts assuming the students don\'t have a computer science background. Indeed, you don\'t need a computer science degree to become a programmer.\r\n\r\nI have experience in Python, Java, C and Learning new Technologies.\r\n\r\nIf you like to learn things quickly and thoroughly and like to have loads of fun on the way, then I cannot wait to work with you and help you to achieve your goals!', 'default.jpg'),
(13, 'salamshaikh', 'salamshaikh@gmail.com', NULL, '$2y$10$yBsnx1HT1yAXzTXSnBGLZOoQCuAEEQ6JFt1on/Gv8BMP1o1P8sIcy', NULL, '2022-01-01 04:36:24', '2022-01-01 04:36:24', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, 'default.jpg'),
(15, 'Test User', '18co90@aiktc.ac.in', NULL, '$2y$10$.yZa8UmlJREYMPMn07zwHu5.V/Zch8WPzPC/5YTDa4Q1M9tF9MQLO', NULL, '2022-02-26 11:55:56', '2022-02-26 12:23:36', 0, '18CO90', 'testperson90@gmail.com', 0, 4, 2018, '2000-09-21', 8, 1, NULL, NULL, NULL, 'default.jpg'),
(16, 'Test User', '18co91@aiktc.ac.in', NULL, '$2y$10$VxnPpbZMVpo0Mc7H8Z/XveOWDDxJuFSv4HaoJAWc9gX6guIhqB/BC', NULL, '2022-02-26 11:59:48', '2022-02-27 06:55:25', 0, '18CO91', 'testperson91@gmail.com', 1, 4, 2018, '2000-09-21', 8, 1, 9930923562, 'Vartak\r\nNagar,\r\nThane', NULL, 'default.jpg'),
(17, 'JAMADAR ABDUL HADI SADIQUE TABASSUM', '16co24@aiktc.ac.in', NULL, '$2y$10$TTwcVOlFoxt9W2eHXr.71.33mySUTvd7I4LzZfeiVcNF5g5i/vJpe', NULL, '2022-03-02 11:50:19', '2022-03-02 11:50:19', 0, '16CO24', 'jamadarabdulhadisadiquetabassum@gmail.com', 1, 4, 2018, '2000-01-28', 8, 1, 9448622306, '163, Chick Bazaar Road, Opp Shivjinagar Bus Stand, Shivaji Nagar', NULL, 'default.jpg'),
(18, 'KM KHUSHBOO SURENDRA MALTI', '17co03@aiktc.ac.in', NULL, '$2y$10$A/CfdEqfFRwhqCXOv3oPTOcsp/rBtDmOmbUxIgKRQTalwcBYr9mf2', NULL, '2022-03-02 11:50:19', '2022-03-02 11:50:19', 0, '17CO03', 'kmkhushboosurendramalti@gmail.com', 0, 4, 2018, '2000-07-10', 8, 1, 9865104815, '163, Chick Bazaar Road, Opp Shivjinagar Bus Stand, Shivaji Nagar', NULL, 'default.jpg'),
(19, 'MASTER FARHEEN ADAM SHABNAM', '17co05@aiktc.ac.in', NULL, '$2y$10$GS.XGs7l/prldjO2yjD0J.vMUrKSunMptW9prXRbheDSZSlBkRC6C', NULL, '2022-03-02 11:50:19', '2022-03-02 11:50:19', 0, '17CO05', 'masterfarheenadamshabnam@gmail.com', 0, 4, 2018, '2000-10-16', 8, 1, 1754849330, '163, Chick Bazaar Road, Opp Shivjinagar Bus Stand, Shivaji Nagar', NULL, 'default.jpg'),
(20, 'RAZA AHMED NAGOURI HUR BANA', '17co14@aiktc.ac.in', NULL, '$2y$10$Miy.kpW2UTyi8Ly6aE/pXuLo3he8meXNFLm0AzmZDxld8p3sPX/QW', NULL, '2022-03-02 11:50:19', '2022-03-02 11:50:19', 0, '17CO14', 'razaahmednagourihurbana@gmail.com', 1, 4, 2018, '2000-12-16', 8, 1, 5345611989, '163, Chick Bazaar Road, Opp Shivjinagar Bus Stand, Shivaji Nagar', NULL, 'default.jpg'),
(21, 'ANSARI ASHIF NASSU SUBUKTARA', '17co19@aiktc.ac.in', NULL, '$2y$10$7y7zhz9K.1nLyciQMtzQr.bDotRl8ohkNsb8tTlsVgeL1UuaZuJBy', NULL, '2022-03-02 11:50:20', '2022-03-02 11:50:20', 0, '17CO19', 'ansariashifnassusubuktara@gmail.com', 1, 4, 2018, '2000-09-24', 8, 1, 6285387147, '163, Chick Bazaar Road, Opp Shivjinagar Bus Stand, Shivaji Nagar', NULL, 'default.jpg'),
(22, 'DADAN UMAIR ALTAF ROZINA', '17co21@aiktc.ac.in', NULL, '$2y$10$LLFVD42bTZzt4kZhFgPswOtFYrIM4/hKSHPRyKkHDsyxhYehq3d7G', NULL, '2022-03-02 11:50:20', '2022-03-02 11:50:20', 0, '17CO21', 'dadanumairaltafrozina@gmail.com', 1, 4, 2018, '2000-01-07', 8, 1, 1349339547, '163, Chick Bazaar Road, Opp Shivjinagar Bus Stand, Shivaji Nagar', NULL, 'default.jpg'),
(23, 'INAMDAR RIHAN JAMIL AHMED SAMEERA', '17co27@aiktc.ac.in', NULL, '$2y$10$p/KdaXOm0O8r0r7dg9oG7ugHBD9QBhUflQnWmMgfLhPsawkZTdQX2', NULL, '2022-03-02 11:50:20', '2022-03-02 11:50:20', 0, '17CO27', 'inamdarrihanjamilahmedsameera@gmail.com', 1, 4, 2018, '2000-10-30', 8, 1, 3049691122, '163, Chick Bazaar Road, Opp Shivjinagar Bus Stand, Shivaji Nagar', NULL, 'default.jpg'),
(24, 'KHAN JOREZ AHMED HAYATULLAH SHAMSUNNISHA', '17co28@aiktc.ac.in', NULL, '$2y$10$Wj4rRfsDz1QfpXFj2pNXtu.KmhI.R4DEdWnjmFIoyaEDsTzm..pOG', NULL, '2022-03-02 11:50:20', '2022-03-02 11:50:20', 0, '17CO28', 'khanjorezahmedhayatullahshamsunnisha@gmail.com', 1, 4, 2018, '2000-10-05', 8, 1, 5883743932, '163, Chick Bazaar Road, Opp Shivjinagar Bus Stand, Shivaji Nagar', NULL, 'default.jpg'),
(25, 'KHAN MAAZ SAAD SABIHA', '17co29@aiktc.ac.in', NULL, '$2y$10$JGiJykhc3aWFIgA7l6mbVeFjJi7cGNFDPIKJbbA2/gz8IUSYx4g/.', NULL, '2022-03-02 11:50:20', '2022-03-02 11:50:20', 0, '17CO29', 'khanmaazsaadsabiha@gmail.com', 1, 4, 2018, '2000-12-09', 8, 1, 5615478306, '163, Chick Bazaar Road, Opp Shivjinagar Bus Stand, Shivaji Nagar', NULL, 'default.jpg'),
(26, 'MERCHANT SHAHRUKH FAIYAZ TAHESIN', '17co36@aiktc.ac.in', NULL, '$2y$10$g9hPjNbk6c7bdzCrhJPUGuVmQFXgLMlM7qzjjrhuiThxqiYD19t/e', NULL, '2022-03-02 11:50:20', '2022-03-02 11:50:20', 0, '17CO36', 'merchantshahrukhfaiyaztahesin@gmail.com', 1, 4, 2018, '2000-04-12', 8, 1, 1002622081, '163, Chick Bazaar Road, Opp Shivjinagar Bus Stand, Shivaji Nagar', NULL, 'default.jpg'),
(27, 'SAYYED FARAZ ALI AKBAR ALI AFROZA', '17co42@aiktc.ac.in', NULL, '$2y$10$W6D/AsXja1I9/1S7OtFvOuKqwq3ioei/ANpM1tAUh0cjgopfax15a', NULL, '2022-03-02 11:50:21', '2022-03-02 11:50:21', 0, '17CO42', 'sayyedfarazaliakbaraliafroza@gmail.com', 1, 4, 2018, '2000-03-17', 8, 1, 3020734533, '163, Chick Bazaar Road, Opp Shivjinagar Bus Stand, Shivaji Nagar', NULL, 'default.jpg'),
(28, 'ZEESHAN REHMANI SAMIUR REHMAN NAFISA KHATOON', '17co55@aiktc.ac.in', NULL, '$2y$10$Zm8z2aYNO6bLHIpvOOHk7e1nI2oQGCtlQBDVDTpUyn6SFFDgtPlXC', NULL, '2022-03-02 11:50:21', '2022-03-02 11:50:21', 0, '17CO55', 'zeeshanrehmanisamiurrehmannafisakhatoon@gmail.com', 1, 4, 2018, '2000-01-05', 8, 1, 8546008491, '163, Chick Bazaar Road, Opp Shivjinagar Bus Stand, Shivaji Nagar', NULL, 'default.jpg'),
(29, 'ANSARI ADEEBA ANJUM NAEEMUDDIN NEELAM PARVEEN', '18co01@aiktc.ac.in', NULL, '$2y$10$mR5lTR3z6ooyXBmCFtCjruDDrsyEcB2y9qknm9Hry/iEou9Nh.FmG', NULL, '2022-03-02 11:50:21', '2022-03-02 11:50:21', 0, '18CO01', 'ansariadeebaanjumnaeemuddinneelamparveen@gmail.com', 0, 4, 2018, '2000-08-14', 8, 1, 4980971420, '163, Chick Bazaar Road, Opp Shivjinagar Bus Stand, Shivaji Nagar', NULL, 'default.jpg'),
(30, 'KARIA JANVI VINAYKUMAR SEEMA', '18co02@aiktc.ac.in', NULL, '$2y$10$.IOHPp1rBPlCd6CQq5VXs.ffiadICR94AW6Mvd3Gc08bO96xy9E9G', NULL, '2022-03-02 11:50:21', '2022-03-02 11:50:21', 0, '18CO02', 'kariajanvivinaykumarseema@gmail.com', 0, 4, 2018, '2000-11-22', 8, 1, 8803919462, '163, Chick Bazaar Road, Opp Shivjinagar Bus Stand, Shivaji Nagar', NULL, 'default.jpg'),
(31, 'KHAN ANWARI ALI QAMAR KISMATONNISSA', '18co03@aiktc.ac.in', NULL, '$2y$10$y40iMpT6CPye1ZCBHaTMKeUWKBDFd5JEKgXSc.fQxH2wXtEvjTv3W', NULL, '2022-03-02 11:50:21', '2022-03-02 11:50:21', 0, '18CO03', 'khananwarialiqamarkismatonnissa@gmail.com', 0, 4, 2018, '2000-10-30', 8, 1, 5271458161, '163, Chick Bazaar Road, Opp Shivjinagar Bus Stand, Shivaji Nagar', NULL, 'default.jpg'),
(32, 'KHAN MASEERAH SAJID ZUBAIDA', '18co04@aiktc.ac.in', NULL, '$2y$10$X.xE5smISEZmSbrujdrPSuwLpBLL3DcIIDPMgJmCoDuyKyjCYyDr2', NULL, '2022-03-02 11:50:21', '2022-03-02 11:50:21', 0, '18CO04', 'khanmaseerahsajidzubaida@gmail.com', 0, 4, 2018, '2000-04-21', 8, 1, 4252225279, '163, Chick Bazaar Road, Opp Shivjinagar Bus Stand, Shivaji Nagar', NULL, 'default.jpg'),
(33, 'KHAN ZARIN BEGUM MOHAMMED SHAFI TARANNUM', '18co05@aiktc.ac.in', NULL, '$2y$10$mW6wQv3ZQYBLokYlbl0esO8PRIkxLjU7kq/9zLfm7Bjn5tbq5ykd2', NULL, '2022-03-02 11:50:21', '2022-03-02 11:50:21', 0, '18CO05', 'khanzarinbegummohammedshafitarannum@gmail.com', 0, 4, 2018, '2000-06-28', 8, 1, 3243870594, '163, Chick Bazaar Road, Opp Shivjinagar Bus Stand, Shivaji Nagar', NULL, 'default.jpg'),
(34, 'KOCHIKAR RUKAIYA ABDUL RAHIM HALIMA', '18co06@aiktc.ac.in', NULL, '$2y$10$liFvDwciLrVSA8zCW6mKPe72XPQTclssI4Tyln6Jh0ta5TtlsCSFK', NULL, '2022-03-02 11:50:21', '2022-03-02 11:50:21', 0, '18CO06', 'kochikarrukaiyaabdulrahimhalima@gmail.com', 0, 4, 2018, '2000-02-18', 8, 1, 7302485091, '163, Chick Bazaar Road, Opp Shivjinagar Bus Stand, Shivaji Nagar', NULL, 'default.jpg'),
(35, 'MOMIN ATRUBA MUJEEB IRFANA', '18co07@aiktc.ac.in', NULL, '$2y$10$9KTpM8wO4/Q4VlRKRK5qZexEOSKSNbs7SMfguT4GWtFYO2.6/ThIi', NULL, '2022-03-02 11:50:21', '2022-03-02 11:50:21', 0, '18CO07', 'mominatrubamujeebirfana@gmail.com', 0, 4, 2018, '2000-07-31', 8, 1, 6610121693, '163, Chick Bazaar Road, Opp Shivjinagar Bus Stand, Shivaji Nagar', NULL, 'default.jpg'),
(36, 'NAIR SHRUTI UNNIKRISHNAN PRASANNA', '18co08@aiktc.ac.in', NULL, '$2y$10$A2hsTW/sfrvF9Gt5PImX3OT8st/shS0Ung1Cp86lRSb83ziOHLbZ.', NULL, '2022-03-02 11:50:22', '2022-03-02 11:50:22', 0, '18CO08', 'nairshrutiunnikrishnanprasanna@gmail.com', 0, 4, 2018, '2000-12-18', 8, 1, 5400543842, '163, Chick Bazaar Road, Opp Shivjinagar Bus Stand, Shivaji Nagar', NULL, 'default.jpg'),
(37, 'PATHAN ASIYA IQBAL JAIBUN', '18co09@aiktc.ac.in', NULL, '$2y$10$aiNsL5EKu.P9GDhC5TIzhevhM7OIIc0SsRKIZGc7zs5EPlwpG.qme', NULL, '2022-03-02 11:50:22', '2022-03-02 11:50:22', 0, '18CO09', 'pathanasiyaiqbaljaibun@gmail.com', 0, 4, 2018, '2000-07-27', 8, 1, 4857550464, '163, Chick Bazaar Road, Opp Shivjinagar Bus Stand, Shivaji Nagar', NULL, 'default.jpg'),
(38, 'TISEKAR SALWA ASLAM FEROZA', '18co10@aiktc.ac.in', NULL, '$2y$10$8yB80u5mtLNqXTrJ3wFpJeDxgT3cPHrOBGbm2CI6A1GnyxqWce9US', NULL, '2022-03-02 11:50:22', '2022-03-02 11:50:22', 0, '18CO10', 'tisekarsalwaaslamferoza@gmail.com', 0, 4, 2018, '2000-09-01', 8, 1, 6410526540, '163, Chick Bazaar Road, Opp Shivjinagar Bus Stand, Shivaji Nagar', NULL, 'default.jpg'),
(39, 'SHAIKH MISBAH ABDUL KARIM SHABANA', '18co11@aiktc.ac.in', NULL, '$2y$10$Q7JOIxsBgUsJ02oXUh2coeNZsXQZrilZDYiz8Q/XEx/IdjfBNvRFa', NULL, '2022-03-02 11:50:22', '2022-03-02 11:50:22', 0, '18CO11', 'shaikhmisbahabdulkarimshabana@gmail.com', 0, 4, 2018, '2000-10-03', 8, 1, 2445671243, '163, Chick Bazaar Road, Opp Shivjinagar Bus Stand, Shivaji Nagar', NULL, 'default.jpg'),
(40, 'CHIMAOKAR SHIFA SHAHNAWAZ SHAHEEN', '18co12@aiktc.ac.in', NULL, '$2y$10$ZTP.IDcOYwzOYBD7Dtnd5.CEHxce4KzFOjY8F6sjoYGp6WNV2i18i', NULL, '2022-03-02 11:50:23', '2022-03-02 11:50:23', 0, '18CO12', 'chimaokarshifashahnawazshaheen@gmail.com', 0, 4, 2018, '2000-07-11', 8, 1, 2220819097, '163, Chick Bazaar Road, Opp Shivjinagar Bus Stand, Shivaji Nagar', NULL, 'default.jpg'),
(41, 'SHAIKH ABDUL KARIM ABDUL RASHID REHANA', '18co14@aiktc.ac.in', NULL, '$2y$10$M1ZA6drkYmL.IBN3SUM7r.eS.LU7LrCvhJG3mt8HJTHY20V4KJMCe', NULL, '2022-03-02 11:50:24', '2022-03-02 11:50:24', 0, '18CO14', 'shaikhabdulkarimabdulrashidrehana@gmail.com', 1, 4, 2018, '2000-05-22', 8, 1, 6876460161, '163, Chick Bazaar Road, Opp Shivjinagar Bus Stand, Shivaji Nagar', NULL, 'default.jpg'),
(42, 'ABDUL RAHIM AKBARALI RAMJANBEE', '18co15@aiktc.ac.in', NULL, '$2y$10$NVgXjodvEU6RqyVUPnWwUOKwKsAccUwm/qpIkprYhD3t/XkGYWIQO', NULL, '2022-03-02 11:50:24', '2022-03-02 11:50:24', 0, '18CO15', 'abdulrahimakbaraliramjanbee@gmail.com', 1, 4, 2018, '2000-04-20', 8, 1, 1669525968, '163, Chick Bazaar Road, Opp Shivjinagar Bus Stand, Shivaji Nagar', NULL, 'default.jpg'),
(43, 'SYED ABUZAR ALI MUNAWWAR ALI FARZANA', '18co16@aiktc.ac.in', NULL, '$2y$10$33mIabCd.j7XbnRLI5YKr.xJUkTDFjaOuxB9F7J3D/VAb8zO4uk1u', NULL, '2022-03-02 11:50:25', '2022-03-02 11:50:25', 0, '18CO16', 'syedabuzaralimunawwaralifarzana@gmail.com', 1, 4, 2018, '2000-02-10', 8, 1, 5935357170, '163, Chick Bazaar Road, Opp Shivjinagar Bus Stand, Shivaji Nagar', NULL, 'default.jpg'),
(44, 'PALLAVKAR AFIF RAFIQUE MEHLAQA', '18co17@aiktc.ac.in', NULL, '$2y$10$2//jl4xJ/1UVSPAULrRxJu5wB2c4wPiZRRK9J27f5NfuTL4besXcO', NULL, '2022-03-02 11:50:25', '2022-03-02 11:50:25', 0, '18CO17', 'pallavkarafifrafiquemehlaqa@gmail.com', 1, 4, 2018, '2000-05-09', 8, 1, 8669397172, '163, Chick Bazaar Road, Opp Shivjinagar Bus Stand, Shivaji Nagar', NULL, 'default.jpg'),
(45, 'ANSARI MOHD SHAKEEL LAEEQUE AHMED FARIDA BANO', '18co18@aiktc.ac.in', NULL, '$2y$10$hGpvg1BRtZQlDnBU0TYIluDuxDTC/wBJQNnSIOa50vdopZq7Obq3O', NULL, '2022-03-02 11:50:25', '2022-03-02 11:50:25', 0, '18CO18', 'ansarimohdshakeellaeequeahmedfaridabano@gmail.com', 1, 4, 2018, '2000-11-08', 8, 1, 4222742149, '163, Chick Bazaar Road, Opp Shivjinagar Bus Stand, Shivaji Nagar', NULL, 'default.jpg'),
(46, 'ARKATE SAKIB MUKHTAR ZARINA', '18co19@aiktc.ac.in', NULL, '$2y$10$T3TU4XE7D8rryfo1FTTLOeTSm4z6jPsnIQzBo1UDvMNxFcJ7qJf9a', NULL, '2022-03-02 11:50:25', '2022-03-02 11:50:25', 0, '18CO19', 'arkatesakibmukhtarzarina@gmail.com', 1, 4, 2018, '2000-12-01', 8, 1, 5088749265, '163, Chick Bazaar Road, Opp Shivjinagar Bus Stand, Shivaji Nagar', NULL, 'default.jpg'),
(47, 'BABREKAR OMKAR AVINASH ASHWINI', '18co20@aiktc.ac.in', NULL, '$2y$10$po2KyRBCiog/VESvRIFNM.MeBmmfeXd4emy0IrE7zl4FUxjoV6Jpe', NULL, '2022-03-02 11:50:25', '2022-03-02 11:52:19', 0, '18CO20', 'babrekaromkaravinashashwini@gmail.com', 1, 4, 2018, '2000-01-23', 8, 1, 2777646431, '163, Chick Bazaar Road, Opp Shivjinagar Bus Stand, Shivaji Nagar', 'Hey, I am Omkar Babrekar,  a Computer Engineer.\r\n\r\nI will teach you how you can use Python just like I do. I take care to explain the programming concepts assuming the students don\'t have a computer science background. Indeed, you don\'t need a computer science degree to become a programmer.\r\n\r\nI have experience in Python, Java, C and Learning new Technologies.\r\n\r\nIf you like to learn things quickly and thoroughly and like to have loads of fun on the way, then I cannot wait to work with you and help you to achieve your goals!', 'default.jpg'),
(48, 'DARJI MOHD HUSAIN MOHD ASLAM FATIMA', '18co21@aiktc.ac.in', NULL, '$2y$10$mvCKOrdTwDMY3Y/.KXsfyevDOXMaDMryB9sNbOX3FYUWrLGGY1RBi', NULL, '2022-03-02 11:50:25', '2022-03-02 11:50:25', 0, '18CO21', 'darjimohdhusainmohdaslamfatima@gmail.com', 1, 4, 2018, '2000-02-25', 8, 1, 2616459954, '163, Chick Bazaar Road, Opp Shivjinagar Bus Stand, Shivaji Nagar', NULL, 'default.jpg'),
(49, 'FAKIH TALHA ASJAD SHABANA', '18co22@aiktc.ac.in', NULL, '$2y$10$gzMXucCRraOZtS0yx3JhCOg1kR43gIHP7MgbMI/eBiO11odzSwYmS', NULL, '2022-03-02 11:50:26', '2022-03-02 11:50:26', 0, '18CO22', 'fakihtalhaasjadshabana@gmail.com', 1, 4, 2018, '2000-10-15', 8, 1, 3367948049, '163, Chick Bazaar Road, Opp Shivjinagar Bus Stand, Shivaji Nagar', NULL, 'default.jpg'),
(50, 'SARGUROH IBRAHIM JAWED SADAF', '18co24@aiktc.ac.in', NULL, '$2y$10$wCkG0.PM/qNIImqomAxnRunkEnDYo36np26SezaYCwFlwKckdEsOm', NULL, '2022-03-02 11:50:26', '2022-03-02 11:50:26', 0, '18CO24', 'sargurohibrahimjawedsadaf@gmail.com', 1, 4, 2018, '2000-10-09', 8, 1, 7428233495, '163, Chick Bazaar Road, Opp Shivjinagar Bus Stand, Shivaji Nagar', NULL, 'default.jpg'),
(51, 'KHAN K ABU OSAMA HAFEEZ ALAUDDIN K NOORJAHAN', '18co26@aiktc.ac.in', NULL, '$2y$10$Ti6kUZ4yCdL20i2bbfBTWejwr9LZiK96YBEDAxVmQrvlBbAYjfvjm', NULL, '2022-03-02 11:50:26', '2022-03-02 11:50:26', 0, '18CO26', 'khankabuosamahafeezalauddinknoorjahan@gmail.com', 1, 4, 2018, '2000-04-01', 8, 1, 1920112326, '163, Chick Bazaar Road, Opp Shivjinagar Bus Stand, Shivaji Nagar', NULL, 'default.jpg'),
(52, 'KAZI AMAN AKRAM RUBINA', '18co27@aiktc.ac.in', NULL, '$2y$10$sWbxTg7yS7V0DxDMmPRdCOsI6ia69DetJMziwom7gIQAnlfU.2/Y2', NULL, '2022-03-02 11:50:26', '2022-03-02 11:50:26', 0, '18CO27', 'kaziamanakramrubina@gmail.com', 1, 4, 2018, '2000-06-28', 8, 1, 3560690015, '163, Chick Bazaar Road, Opp Shivjinagar Bus Stand, Shivaji Nagar', NULL, 'default.jpg'),
(53, 'KAZI MOHAMMED AARIS TABRAIZ NAUSHINA', '18co28@aiktc.ac.in', NULL, '$2y$10$SgrNo7kXuzkZ6NiCIezy6OD9WGWIFOjA82j5UTirvlvJBwgLOtL/m', NULL, '2022-03-02 11:50:26', '2022-03-02 11:50:26', 0, '18CO28', 'kazimohammedaaristabraiznaushina@gmail.com', 1, 4, 2018, '2000-07-23', 8, 1, 2599721743, '163, Chick Bazaar Road, Opp Shivjinagar Bus Stand, Shivaji Nagar', NULL, 'default.jpg'),
(54, 'KHAN ASRAF SHAMSAD ABIDA', '18co29@aiktc.ac.in', NULL, '$2y$10$H03oDYsZR3IelvYeXNV47uTeOiyTxRgXZQUpmRMr.q5vPX/SazMZa', NULL, '2022-03-02 11:50:26', '2022-03-02 11:50:26', 0, '18CO29', 'khanasrafshamsadabida@gmail.com', 1, 4, 2018, '2000-12-09', 8, 1, 5892654938, '163, Chick Bazaar Road, Opp Shivjinagar Bus Stand, Shivaji Nagar', NULL, 'default.jpg'),
(55, 'KHAN ISRAR AHMED ALI HUSAIN ASMA', '18co30@aiktc.ac.in', NULL, '$2y$10$HNkwdl20jZv/VSlV05IiaenWwdV5cQlWfunZIHVed0w33bkSaLpnW', NULL, '2022-03-02 11:50:26', '2022-03-02 11:50:26', 0, '18CO30', 'khanisrarahmedalihusainasma@gmail.com', 1, 4, 2018, '2000-02-04', 8, 1, 9289581306, '163, Chick Bazaar Road, Opp Shivjinagar Bus Stand, Shivaji Nagar', NULL, 'default.jpg'),
(56, 'KHAN MAZHAR SULTAN NAFISA', '18co31@aiktc.ac.in', NULL, '$2y$10$/uzVYduXi/PDqk.WqXJPfeF4VeoDGUuyxJgR9i90OKaUtaPlaE/0K', NULL, '2022-03-02 11:50:26', '2022-03-02 11:50:26', 0, '18CO31', 'khanmazharsultannafisa@gmail.com', 1, 4, 2018, '2000-10-24', 8, 1, 8251044675, '163, Chick Bazaar Road, Opp Shivjinagar Bus Stand, Shivaji Nagar', NULL, 'default.jpg'),
(57, 'KHAN ALTAMASH SUALEH ZUBEDA', '18co32@aiktc.ac.in', NULL, '$2y$10$2F9VIAJmMOUJU2.p8E0QyeGTiiFkJEPO3/WyjabvbpeWJ5/G9g6RO', NULL, '2022-03-02 11:50:27', '2022-03-02 11:50:27', 0, '18CO32', 'khanaltamashsualehzubeda@gmail.com', 1, 4, 2018, '2000-10-30', 8, 1, 4811054299, '163, Chick Bazaar Road, Opp Shivjinagar Bus Stand, Shivaji Nagar', NULL, 'default.jpg'),
(58, 'MANIKWARE AHMED MUSTUFA FARZANA', '18co36@aiktc.ac.in', NULL, '$2y$10$b9DGFZAYxPdTGEEq2cox2uAOMDNBKdwZ7fA0P3ws/81r09qISLLz2', NULL, '2022-03-02 11:50:27', '2022-03-02 11:50:27', 0, '18CO36', 'manikwareahmedmustufafarzana@gmail.com', 1, 4, 2018, '2000-12-02', 8, 1, 3400375332, '163, Chick Bazaar Road, Opp Shivjinagar Bus Stand, Shivaji Nagar', NULL, 'default.jpg'),
(59, 'MODAK EMAZ BASHIR MUHIBBA', '18co37@aiktc.ac.in', NULL, '$2y$10$QMgYCka5CFePgfKZJ4r3X.7AxbV1rGd7b8lUImq/YlU4LmuF6fMOC', NULL, '2022-03-02 11:50:27', '2022-03-02 11:50:27', 0, '18CO37', 'modakemazbashirmuhibba@gmail.com', 1, 4, 2018, '2000-06-06', 8, 1, 3254378507, '163, Chick Bazaar Road, Opp Shivjinagar Bus Stand, Shivaji Nagar', NULL, 'default.jpg'),
(60, 'MOHD INAYAT MOHD NAJREALAM ANJUM BANO', '18co38@aiktc.ac.in', NULL, '$2y$10$hg1g0/p7vt1WVfwUwvV3t.7hkDurcIJlyeOyYHXAaSgySqP11Sg4u', NULL, '2022-03-02 11:50:27', '2022-03-02 11:50:27', 0, '18CO38', 'mohdinayatmohdnajrealamanjumbano@gmail.com', 1, 4, 2018, '2000-04-21', 8, 1, 8683132016, '163, Chick Bazaar Road, Opp Shivjinagar Bus Stand, Shivaji Nagar', NULL, 'default.jpg'),
(61, 'MOHD YUSUF AIJAZUDDIN NOORIA', '18co39@aiktc.ac.in', NULL, '$2y$10$HUU0SMy.Y.sMhzm2VFqt1uqrtZ9bnMTqB46M2g/SrxM2kV1DF99Si', NULL, '2022-03-02 11:50:27', '2022-03-02 11:50:27', 0, '18CO39', 'mohdyusufaijazuddinnooria@gmail.com', 1, 4, 2018, '2000-01-19', 8, 1, 9757889054, '163, Chick Bazaar Road, Opp Shivjinagar Bus Stand, Shivaji Nagar', NULL, 'default.jpg'),
(62, 'MULANI SAHIL SALIM JAHIDA', '18co41@aiktc.ac.in', NULL, '$2y$10$EyEVZOuS1hN5uz2vZY2K7OzHyLgl/m6slqDZMBb2NMdaXweAgTYO6', NULL, '2022-03-02 11:50:27', '2022-03-02 11:50:27', 0, '18CO41', 'mulanisahilsalimjahida@gmail.com', 1, 4, 2018, '2000-11-18', 8, 1, 3405542091, '163, Chick Bazaar Road, Opp Shivjinagar Bus Stand, Shivaji Nagar', NULL, 'default.jpg'),
(63, 'PARKAR UBAID ALI SHAISTA', '18co42@aiktc.ac.in', NULL, '$2y$10$G0eIfi37ghXGUq1PZi9vQum9g8wR0QZaMELma7y4MlVLiQ8GiuF4C', NULL, '2022-03-02 11:50:27', '2022-03-02 11:50:27', 0, '18CO42', 'parkarubaidalishaista@gmail.com', 1, 4, 2018, '2000-04-04', 8, 1, 9344544596, '163, Chick Bazaar Road, Opp Shivjinagar Bus Stand, Shivaji Nagar', NULL, 'default.jpg'),
(64, 'ANSARI RAHBARE AZAM ABDUL DAYEM RUKHSANA', '18co43@aiktc.ac.in', NULL, '$2y$10$aRzQp5k5s3Ftq.T2fnMdrOZv4lefj7kxNAuGBdRYNXr6AdqGx5TdS', NULL, '2022-03-02 11:50:27', '2022-03-02 11:50:27', 0, '18CO43', 'ansarirahbareazamabduldayemrukhsana@gmail.com', 1, 4, 2018, '2000-12-08', 8, 1, 3543308871, '163, Chick Bazaar Road, Opp Shivjinagar Bus Stand, Shivaji Nagar', NULL, 'default.jpg'),
(65, 'HARCHIRKAR SAFWAN MAKSUD RIZWANA', '18co44@aiktc.ac.in', NULL, '$2y$10$YJ3bBLGo3iJvBci41hAQnuHeRKE0nu0Tpsf7c8NoaHGhMA6nk3sGG', NULL, '2022-03-02 11:50:27', '2022-03-02 11:50:27', 0, '18CO44', 'harchirkarsafwanmaksudrizwana@gmail.com', 1, 4, 2018, '2000-12-05', 8, 1, 2576738791, '163, Chick Bazaar Road, Opp Shivjinagar Bus Stand, Shivaji Nagar', NULL, 'default.jpg'),
(66, 'SAIFEE WASIM JAFAR FATIMA', '18co45@aiktc.ac.in', NULL, '$2y$10$IOHpbT115fa3qHdVeDgJqeKdXZfekUF2FYhdaFnDALTIr7NIqadOa', NULL, '2022-03-02 11:50:28', '2022-03-02 11:50:28', 0, '18CO45', 'saifeewasimjafarfatima@gmail.com', 1, 4, 2018, '2000-12-08', 8, 1, 5951692999, '163, Chick Bazaar Road, Opp Shivjinagar Bus Stand, Shivaji Nagar', NULL, 'default.jpg'),
(67, 'SAYED ANAS ISRAR AYESHA', '18co46@aiktc.ac.in', NULL, '$2y$10$zbZXfXlRRH0tqNevZRlvru4s.g1ibOalASfqljz3WidELPBaugpGq', NULL, '2022-03-02 11:50:28', '2022-03-02 11:50:28', 0, '18CO46', 'sayedanasisrarayesha@gmail.com', 1, 4, 2018, '2000-10-09', 8, 1, 2112820255, '163, Chick Bazaar Road, Opp Shivjinagar Bus Stand, Shivaji Nagar', NULL, 'default.jpg'),
(68, 'SAYED MOHD KAZIM MEHDI MOHD MAZHAR HASAN', '18co47@aiktc.ac.in', NULL, '$2y$10$3KaYhG3WK7KO9JMY3lifXudPDKAmXVR5DJEjrma0q5yebpu4B/V2u', NULL, '2022-03-02 11:50:28', '2022-03-02 11:50:28', 0, '18CO47', 'sayedmohdkazimmehdimohdmazharhasan@gmail.com', 1, 4, 2018, '2000-12-08', 8, 1, 1066818920, '163, Chick Bazaar Road, Opp Shivjinagar Bus Stand, Shivaji Nagar', NULL, 'default.jpg'),
(69, 'SAYYED SOHAIL RASHID MEHRUNNISA', '18co48@aiktc.ac.in', NULL, '$2y$10$KgZyeI3afcCn5sUQTXTO0eWCNt5mIu1xJ1QsbmCE27WdzhKwZyj4m', NULL, '2022-03-02 11:50:28', '2022-03-02 11:50:28', 0, '18CO48', 'sayyedsohailrashidmehrunnisa@gmail.com', 1, 4, 2018, '2000-09-22', 8, 1, 8311329507, '163, Chick Bazaar Road, Opp Shivjinagar Bus Stand, Shivaji Nagar', NULL, 'default.jpg'),
(70, 'SHAIKH AMAAN FAKRUDDIN JAIBUNISSA', '18co49@aiktc.ac.in', NULL, '$2y$10$A.XNwum/U2iXV3sM11s1VuWvDnZZnb0oaI/WZIdRtDAdpMFBxcLm2', NULL, '2022-03-02 11:50:28', '2022-03-02 11:50:28', 0, '18CO49', 'shaikhamaanfakruddinjaibunissa@gmail.com', 1, 4, 2018, '2000-06-26', 8, 1, 7378870103, '163, Chick Bazaar Road, Opp Shivjinagar Bus Stand, Shivaji Nagar', NULL, 'default.jpg'),
(71, 'SHAIKH HASSAN AHMAD AIJAZ AHMAD SHEHNAZ', '18co50@aiktc.ac.in', NULL, '$2y$10$E7pdnvoT5ujDKbabnWOAt.ruLuNVVU.qVK2O9J.m11x2/91kM6lgi', NULL, '2022-03-02 11:50:28', '2022-03-02 11:50:28', 0, '18CO50', 'shaikhhassanahmadaijazahmadshehnaz@gmail.com', 1, 4, 2018, '2000-08-29', 8, 1, 8224647884, '163, Chick Bazaar Road, Opp Shivjinagar Bus Stand, Shivaji Nagar', NULL, 'default.jpg'),
(72, 'SHAIKH MEARAJ ABDUL QAISH QAISAR JAHAN', '18co51@aiktc.ac.in', NULL, '$2y$10$zgGCMmY.1XZzLgdcPAl0DOwOF7FAG0DA6vKbdTeVruVTEDECI7Am6', NULL, '2022-03-02 11:50:28', '2022-03-02 11:50:28', 0, '18CO51', 'shaikhmearajabdulqaishqaisarjahan@gmail.com', 1, 4, 2018, '2000-10-14', 8, 1, 3874235454, '163, Chick Bazaar Road, Opp Shivjinagar Bus Stand, Shivaji Nagar', NULL, 'default.jpg'),
(73, 'SHAIKH MOHAMMED TALHA ABDUL HAFIZ SALMA', '18co52@aiktc.ac.in', NULL, '$2y$10$teJ366AzR/accg88Jp/VJOse3dnzfJMtnmXzZPMuotS4hkCoGpCau', NULL, '2022-03-02 11:50:28', '2022-03-02 11:50:28', 0, '18CO52', 'shaikhmohammedtalhaabdulhafizsalma@gmail.com', 1, 4, 2018, '2000-05-20', 8, 1, 8959196446, '163, Chick Bazaar Road, Opp Shivjinagar Bus Stand, Shivaji Nagar', NULL, 'default.jpg'),
(74, 'SHAIKH MOHD TAHA MOHD RASHID QAMAR JAHAN', '18co53@aiktc.ac.in', NULL, '$2y$10$y27RjdTs1aEU0j7lzchccePjWkwO17pH6YAeixMR5d5KyWlJkdc3e', NULL, '2022-03-02 11:50:29', '2022-03-02 11:50:29', 0, '18CO53', 'shaikhmohdtahamohdrashidqamarjahan@gmail.com', 1, 4, 2018, '2000-07-04', 8, 1, 9606069122, '163, Chick Bazaar Road, Opp Shivjinagar Bus Stand, Shivaji Nagar', NULL, 'default.jpg'),
(75, 'SHAIKH MOHIBODDIN AMANODDIN SAFIYA', '18co54@aiktc.ac.in', NULL, '$2y$10$hNINXBq.9M4eBjxrl2tsqep.qMOVoj79nF4lhzmPaGYmCvqoGCwmC', NULL, '2022-03-02 11:50:29', '2022-03-02 11:50:29', 0, '18CO54', 'shaikhmohiboddinamanoddinsafiya@gmail.com', 1, 4, 2018, '2000-07-19', 8, 1, 6213328318, '163, Chick Bazaar Road, Opp Shivjinagar Bus Stand, Shivaji Nagar', NULL, 'default.jpg'),
(76, 'SHAIKH RAUF YOOSAF ROSHAN', '18co55@aiktc.ac.in', NULL, '$2y$10$XemlcbMSslby67usBR4t/.J7GQ1HT/fm9hxOHrvBJu4waVDNPCTgm', NULL, '2022-03-02 11:50:29', '2022-03-02 11:50:29', 0, '18CO55', 'shaikhraufyoosafroshan@gmail.com', 1, 4, 2018, '2000-08-07', 8, 1, 2524629932, '163, Chick Bazaar Road, Opp Shivjinagar Bus Stand, Shivaji Nagar', NULL, 'default.jpg'),
(77, 'SHAIKH SHAHIDRAJA MOHMAD VAKEEL ASHGARI', '18co56@aiktc.ac.in', NULL, '$2y$10$/IT4TcC1AXOo5CJsR.n38Ot.fJceVIt80MUJOPTCTbsBLOdwci7YS', NULL, '2022-03-02 11:50:29', '2022-03-02 11:50:29', 0, '18CO56', 'shaikhshahidrajamohmadvakeelashgari@gmail.com', 1, 4, 2018, '2000-11-01', 8, 1, 4906872853, '163, Chick Bazaar Road, Opp Shivjinagar Bus Stand, Shivaji Nagar', NULL, 'default.jpg'),
(78, 'SIDDIQUEE MOHD AFFAN MOHAMMAD ARIF TAHSEEN', '18co57@aiktc.ac.in', NULL, '$2y$10$irLaZOjuQYLHblxs7avBp.BI6BGY4vZ4SG3Cj.6U4XuiUWbwmptTC', NULL, '2022-03-02 11:50:29', '2022-03-02 11:50:29', 0, '18CO57', 'siddiqueemohdaffanmohammadariftahseen@gmail.com', 1, 4, 2018, '2000-05-22', 8, 1, 9202240709, '163, Chick Bazaar Road, Opp Shivjinagar Bus Stand, Shivaji Nagar', NULL, 'default.jpg'),
(79, 'SIDDIQUI HOZAIFA SHAKEEL AHAMD SABEEHA', '18co58@aiktc.ac.in', NULL, '$2y$10$w7d4M8CcfA4tcTZg0ZmtUeVRGZmCvc8yXLBo4HQg/Yv2.kdTnNbS.', NULL, '2022-03-02 11:50:29', '2022-03-02 11:50:29', 0, '18CO58', 'siddiquihozaifashakeelahamdsabeeha@gmail.com', 1, 4, 2018, '2000-08-12', 8, 1, 5335499710, '163, Chick Bazaar Road, Opp Shivjinagar Bus Stand, Shivaji Nagar', NULL, 'default.jpg'),
(80, 'SIDDIQUI SUFIYAN KAMRUDDIN AKHATAR JAHAN', '18co59@aiktc.ac.in', NULL, '$2y$10$hlu55BxKpIn6U5UmATqcf.16pw2sNvyWJjmmfmoDxZbTJMdaC8Ps.', NULL, '2022-03-02 11:50:29', '2022-03-02 11:50:29', 0, '18CO59', 'siddiquisufiyankamruddinakhatarjahan@gmail.com', 1, 4, 2018, '2000-04-13', 8, 1, 9825090618, '163, Chick Bazaar Road, Opp Shivjinagar Bus Stand, Shivaji Nagar', NULL, 'default.jpg'),
(81, 'SINGH VAIBHAV LALENDRA PRATAP ARTI', '18co60@aiktc.ac.in', NULL, '$2y$10$Wh8yFo/7W7NsDRERgkw0fuNuPUaATQN9Hp.xr0C78r4V5WrzvH8Ka', NULL, '2022-03-02 11:50:29', '2022-03-02 11:50:29', 0, '18CO60', 'singhvaibhavlalendraprataparti@gmail.com', 1, 4, 2018, '2000-04-05', 8, 1, 3101837088, '163, Chick Bazaar Road, Opp Shivjinagar Bus Stand, Shivaji Nagar', NULL, 'default.jpg'),
(82, 'SYED NADEEM UR RAHMAN KHALIQUR RAHMAN', '18co61@aiktc.ac.in', NULL, '$2y$10$.UWEdIQo0xtISXCaf6Y7J.tYZ1XgdkDKnci8UiAWtxxZ2nv2h0WXC', NULL, '2022-03-02 11:50:30', '2022-03-02 11:50:30', 0, '18CO61', 'syednadeemurrahmankhaliqurrahman@gmail.com', 1, 4, 2018, '2000-01-14', 8, 1, 8373060168, '163, Chick Bazaar Road, Opp Shivjinagar Bus Stand, Shivaji Nagar', NULL, 'default.jpg'),
(83, 'TAMBOLI SADIKALI SHAUKATALI JARINA Bl', '18co62@aiktc.ac.in', NULL, '$2y$10$BvbgMVGqTrKfIb3n1t64qeXBlIfXEEwDJN48XjDuJIkK5iVVQk9PO', NULL, '2022-03-02 11:50:30', '2022-03-02 11:50:30', 0, '18CO62', 'tambolisadikalishaukatalijarinabl@gmail.com', 1, 4, 2018, '2000-03-12', 8, 1, 9994518143, '163, Chick Bazaar Road, Opp Shivjinagar Bus Stand, Shivaji Nagar', NULL, 'default.jpg'),
(84, 'SHAIKH TAUSEEF MUSHTAQUE ALI NAHID', '18co63@aiktc.ac.in', NULL, '$2y$10$jTCqSyV44v1q0006o/rulOUsXbNildhamDT7W.Psf5Jql4CHdT1sO', NULL, '2022-03-02 11:50:30', '2022-03-02 11:50:30', 0, '18CO63', 'shaikhtauseefmushtaquealinahid@gmail.com', 1, 4, 2018, '2000-09-11', 8, 1, 8240789358, '163, Chick Bazaar Road, Opp Shivjinagar Bus Stand, Shivaji Nagar', NULL, 'default.jpg'),
(85, 'KOLSAWALA MOHAMMAD YUNUS KASAM', '18dco08@aiktc.ac.in', NULL, '$2y$10$xU8PT1Z69aQcPhBUMAoYGuOYSSLMjFVOd3ylwcwysQKow47IpV07O', NULL, '2022-03-02 11:50:30', '2022-03-02 11:50:30', 0, '18DCO08', 'kolsawalamohammadyunuskasam@gmail.com', 1, 4, 2018, '2000-04-17', 8, 1, 3832604974, '163, Chick Bazaar Road, Opp Shivjinagar Bus Stand, Shivaji Nagar', NULL, 'default.jpg'),
(86, 'ABDUL HAQUE IZHAR ALI KHUSHBUNNISA', '19dco01@aiktc.ac.in', NULL, '$2y$10$u6tTVWmKxSJ/5vLoQJRi9OJ/oEzhHpJmgLgbdbd3nmUH.qO09r1fS', NULL, '2022-03-02 11:50:30', '2022-03-02 11:50:30', 0, '19DCO01', 'abdulhaqueizharalikhushbunnisa@gmail.com', 1, 4, 2018, '2000-12-30', 8, 1, 4640966697, '163, Chick Bazaar Road, Opp Shivjinagar Bus Stand, Shivaji Nagar', NULL, 'default.jpg'),
(87, 'AHMED DOSTAM TUFAIL SHEEBA', '19dco02@aiktc.ac.in', NULL, '$2y$10$dIa7.Fv2OHPWJlA4Q5vEveTewq0t../TWM7ZE640duTLshZMd0ani', NULL, '2022-03-02 11:50:30', '2022-03-02 11:50:30', 0, '19DCO02', 'ahmeddostamtufailsheeba@gmail.com', 1, 4, 2018, '2000-07-05', 8, 1, 6788870563, '163, Chick Bazaar Road, Opp Shivjinagar Bus Stand, Shivaji Nagar', NULL, 'default.jpg'),
(88, 'KHAN MOHD SAALEM SHAKILUDDIN RUBINA', '19dco03@aiktc.ac.in', NULL, '$2y$10$qYdvPQ2CimATyOQaKCfkyO0xPixLeISeR305cgmZBRIYyRhJ2kNBW', NULL, '2022-03-02 11:50:31', '2022-03-02 11:50:31', 0, '19DCO03', 'khanmohdsaalemshakiluddinrubina@gmail.com', 1, 4, 2018, '2000-04-14', 8, 1, 6409096728, '163, Chick Bazaar Road, Opp Shivjinagar Bus Stand, Shivaji Nagar', NULL, 'default.jpg'),
(89, 'NAKHWA ARBAAZ IQBAL RUKHSANA', '19dco04@aiktc.ac.in', NULL, '$2y$10$78vsjaQmE2v1tf1F1tEsGOL8gfZIdINXiyM5VeGBtOHJjqIn5/4tm', NULL, '2022-03-02 11:50:31', '2022-03-02 11:50:31', 0, '19DCO04', 'nakhwaarbaaziqbalrukhsana@gmail.com', 1, 4, 2018, '2000-05-22', 8, 1, 2418466550, '163, Chick Bazaar Road, Opp Shivjinagar Bus Stand, Shivaji Nagar', NULL, 'default.jpg'),
(90, 'SAYED MOHAMMAD OBAID EJAZUDDIN ZAHEDA', '19dco05@aiktc.ac.in', NULL, '$2y$10$9hwD/A1g/zzO9qksNgg8veyEiFzUHUJP97jYdpplabchAdVbwTPFC', NULL, '2022-03-02 11:50:31', '2022-03-02 11:50:31', 0, '19DCO05', 'sayedmohammadobaidejazuddinzaheda@gmail.com', 1, 4, 2018, '2000-04-07', 8, 1, 4268619459, '163, Chick Bazaar Road, Opp Shivjinagar Bus Stand, Shivaji Nagar', NULL, 'default.jpg'),
(91, 'SHAIKH SAMEER FAKRUDDIN KHATOON BEE', '19dco06@aiktc.ac.in', NULL, '$2y$10$TRB6ujMZzNGVRaGB8nZ1Our0haMoXVoBdKddpArHm6VH6NQSCdjo.', NULL, '2022-03-02 11:50:32', '2022-03-02 11:50:32', 0, '19DCO06', 'shaikhsameerfakruddinkhatoonbee@gmail.com', 1, 4, 2018, '2000-11-25', 8, 1, 8191101724, '163, Chick Bazaar Road, Opp Shivjinagar Bus Stand, Shivaji Nagar', NULL, 'default.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `branches`
--
ALTER TABLE `branches`
  ADD PRIMARY KEY (`id`),
  ADD KEY `branches_stream_id_index` (`stream_id`);

--
-- Indexes for table `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `courses_branch_id_index` (`branch_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `marks`
--
ALTER TABLE `marks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `marks_user_id_index` (`user_id`);

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
-- Indexes for table `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_access_tokens_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_auth_codes`
--
ALTER TABLE `oauth_auth_codes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_auth_codes_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_clients_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `railways`
--
ALTER TABLE `railways`
  ADD PRIMARY KEY (`id`),
  ADD KEY `railways_user_id_index` (`user_id`);

--
-- Indexes for table `results`
--
ALTER TABLE `results`
  ADD PRIMARY KEY (`id`),
  ADD KEY `results_user_id_index` (`user_id`),
  ADD KEY `results_semester_id_index` (`semester_id`),
  ADD KEY `results_course_id_index` (`course_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indexes for table `semesters`
--
ALTER TABLE `semesters`
  ADD PRIMARY KEY (`id`),
  ADD KEY `semesters_branch_id_index` (`branch_id`);

--
-- Indexes for table `semester_has_courses`
--
ALTER TABLE `semester_has_courses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `semester_has_courses_semester_id_index` (`semester_id`),
  ADD KEY `semester_has_courses_course_id_index` (`course_id`),
  ADD KEY `semester_has_courses_prof_id_index` (`prof_id`);

--
-- Indexes for table `skills`
--
ALTER TABLE `skills`
  ADD PRIMARY KEY (`id`),
  ADD KEY `skills_user_id_index` (`user_id`);

--
-- Indexes for table `streams`
--
ALTER TABLE `streams`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tests`
--
ALTER TABLE `tests`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_branch_id_index` (`branch_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `branches`
--
ALTER TABLE `branches`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `courses`
--
ALTER TABLE `courses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `marks`
--
ALTER TABLE `marks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `railways`
--
ALTER TABLE `railways`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `results`
--
ALTER TABLE `results`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=676;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `semesters`
--
ALTER TABLE `semesters`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `semester_has_courses`
--
ALTER TABLE `semester_has_courses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `skills`
--
ALTER TABLE `skills`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `streams`
--
ALTER TABLE `streams`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tests`
--
ALTER TABLE `tests`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=92;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `branches`
--
ALTER TABLE `branches`
  ADD CONSTRAINT `branches_stream_id_foreign` FOREIGN KEY (`stream_id`) REFERENCES `streams` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `courses`
--
ALTER TABLE `courses`
  ADD CONSTRAINT `courses_branch_id_foreign` FOREIGN KEY (`branch_id`) REFERENCES `branches` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `marks`
--
ALTER TABLE `marks`
  ADD CONSTRAINT `marks_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

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
-- Constraints for table `railways`
--
ALTER TABLE `railways`
  ADD CONSTRAINT `railways_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `results`
--
ALTER TABLE `results`
  ADD CONSTRAINT `results_course_id_foreign` FOREIGN KEY (`course_id`) REFERENCES `courses` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `results_semester_id_foreign` FOREIGN KEY (`semester_id`) REFERENCES `semesters` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `results_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `semesters`
--
ALTER TABLE `semesters`
  ADD CONSTRAINT `semesters_branch_id_foreign` FOREIGN KEY (`branch_id`) REFERENCES `branches` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `semester_has_courses`
--
ALTER TABLE `semester_has_courses`
  ADD CONSTRAINT `semester_has_courses_course_id_foreign` FOREIGN KEY (`course_id`) REFERENCES `courses` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `semester_has_courses_prof_id_foreign` FOREIGN KEY (`prof_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `semester_has_courses_semester_id_foreign` FOREIGN KEY (`semester_id`) REFERENCES `semesters` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `skills`
--
ALTER TABLE `skills`
  ADD CONSTRAINT `skills_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_branch_id_foreign` FOREIGN KEY (`branch_id`) REFERENCES `branches` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
