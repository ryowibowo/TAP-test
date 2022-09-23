-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Sep 23, 2022 at 09:42 AM
-- Server version: 5.7.24
-- PHP Version: 7.4.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tap-test`
--

-- --------------------------------------------------------

--
-- Table structure for table `achievements`
--

CREATE TABLE `achievements` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `werks` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `afd_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `actual_vs_bbc` double NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `achievements`
--

INSERT INTO `achievements` (`id`, `werks`, `afd_code`, `actual_vs_bbc`, `created_at`, `updated_at`) VALUES
(1, '6421', ' D', 63.5, NULL, NULL),
(2, '6421', ' A', 41.3, NULL, NULL),
(3, '6421', ' B', 76.01, NULL, NULL),
(4, '6421', ' J', 87.62, NULL, NULL),
(5, '6421', ' I', 84.39, NULL, NULL),
(6, '6421', ' K', 66.03, NULL, NULL),
(7, '6421', ' F', 102.14, NULL, NULL),
(8, '6421', ' E', 146.54, NULL, NULL),
(9, '6421', ' C', 78.44, NULL, NULL),
(10, '6421', ' H', 79.14, NULL, NULL),
(11, '6421', ' G', 44.07, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `actuals`
--

CREATE TABLE `actuals` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `kode_ba` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `actual_vs_bbc` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `actuals`
--

INSERT INTO `actuals` (`id`, `kode_ba`, `actual_vs_bbc`, `created_at`, `updated_at`) VALUES
(1, '6421', 77, NULL, NULL);

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
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `maps`
--

CREATE TABLE `maps` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_maps` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `color` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `maps`
--

INSERT INTO `maps` (`id`, `id_maps`, `color`, `created_at`, `updated_at`) VALUES
(1, '6421217', ' #FF0000 ', NULL, NULL),
(2, '6421041', ' #00FF00 ', NULL, NULL),
(3, '6421186', ' #00FF00 ', NULL, NULL),
(4, '6421256', ' #FF0000 ', NULL, NULL),
(5, '6421074', ' #00FF00 ', NULL, NULL),
(6, '6421201', ' #00FF00 ', NULL, NULL),
(7, '6421151', ' #00FF00 ', NULL, NULL),
(8, '6421067', ' #00FF00 ', NULL, NULL),
(9, '6421227', ' #00FF00 ', NULL, NULL),
(10, '6421138', ' #FFFF00 ', NULL, NULL),
(11, '6421093', ' #FF0000 ', NULL, NULL),
(12, '6421184', ' #FF0000 ', NULL, NULL),
(13, '6421170', ' #FFB300 ', NULL, NULL),
(14, '6421090', ' #FF0000 ', NULL, NULL),
(15, '6421050', ' #00FF00 ', NULL, NULL),
(16, '6421174', ' #FF0000 ', NULL, NULL),
(17, '6421097', ' #FF0000 ', NULL, NULL),
(18, '6421104', ' #FFFF00 ', NULL, NULL),
(19, '6421128', ' #00FF00 ', NULL, NULL),
(20, '6421240', ' #00FF00 ', NULL, NULL),
(21, '6421014', ' #FF0000 ', NULL, NULL),
(22, '6421145', ' #00FF00 ', NULL, NULL),
(23, '6421203', ' #FF0000 ', NULL, NULL),
(24, '6421192', ' #00FF00 ', NULL, NULL),
(25, '6421044', ' #00FF00 ', NULL, NULL),
(26, '6421134', ' #FFFF00 ', NULL, NULL),
(27, '6421013', ' #00FF00 ', NULL, NULL),
(28, '6421079', ' #FFFF00 ', NULL, NULL),
(29, '6421081', ' #00FF00 ', NULL, NULL),
(30, '6421008', ' #FF0000 ', NULL, NULL),
(31, '6421062', ' #00FF00 ', NULL, NULL),
(32, '6421153', ' #FFB300 ', NULL, NULL),
(33, '6421113', ' #00FF00 ', NULL, NULL),
(34, '6421245', ' #FFB300 ', NULL, NULL),
(35, '6421100', ' #FF0000 ', NULL, NULL),
(36, '6421700', ' #FFFFFF ', NULL, NULL),
(37, '6421126', ' #00FF00 ', NULL, NULL),
(38, '6421205', ' #00FF00 ', NULL, NULL),
(39, '6421142', ' #00FF00 ', NULL, NULL),
(40, '6421149', ' #00FF00 ', NULL, NULL),
(41, '6421198', ' #FFFF00 ', NULL, NULL),
(42, '6421063', ' #FFFF00 ', NULL, NULL),
(43, '6421005', ' #00FF00 ', NULL, NULL),
(44, '6421084', ' #FF0000 ', NULL, NULL),
(45, '6421024', ' #00FF00 ', NULL, NULL),
(46, '6421253', ' #FF0000 ', NULL, NULL),
(47, '6421021', ' #00FF00 ', NULL, NULL),
(48, '6421223', ' #00FF00 ', NULL, NULL),
(49, '6421038', ' #FF0000 ', NULL, NULL),
(50, '6421105', ' #00FF00 ', NULL, NULL),
(51, '6421121', ' #00FF00 ', NULL, NULL),
(52, '6421216', ' #FF0000 ', NULL, NULL),
(53, '6421233', ' #FF0000 ', NULL, NULL),
(54, '6421157', ' #FFFF00 ', NULL, NULL),
(55, '6421006', ' #FF0000 ', NULL, NULL),
(56, '6421164', ' #FF0000 ', NULL, NULL),
(57, '6421078', ' #00FF00 ', NULL, NULL),
(58, '6421015', ' #FF0000 ', NULL, NULL),
(59, '6421180', ' #FFFF00 ', NULL, NULL),
(60, '6421060', ' #FF0000 ', NULL, NULL),
(61, '6421187', ' #00FF00 ', NULL, NULL),
(62, '6421068', ' #00FF00 ', NULL, NULL),
(63, '6421053', ' #00FF00 ', NULL, NULL),
(64, '6421221', ' #FFFF00 ', NULL, NULL),
(65, '6421124', ' #FFFF00 ', NULL, NULL),
(66, '6421087', ' #00FF00 ', NULL, NULL),
(67, '6421206', ' #00FF00 ', NULL, NULL),
(68, '6421188', ' #00FF00 ', NULL, NULL),
(69, '6421103', ' #00FF00 ', NULL, NULL),
(70, '6421141', ' #00FF00 ', NULL, NULL),
(71, '6421226', ' #00FF00 ', NULL, NULL),
(72, '6421140', ' #FFFF00 ', NULL, NULL),
(73, '6421091', ' #00FF00 ', NULL, NULL),
(74, '6421247', ' #00FF00 ', NULL, NULL),
(75, '6421046', ' #FF0000 ', NULL, NULL),
(76, '6421051', ' #00FF00 ', NULL, NULL),
(77, '6421246', ' #00FF00 ', NULL, NULL),
(78, '6421117', ' #00FF00 ', NULL, NULL),
(79, '6421191', ' #00FF00 ', NULL, NULL),
(80, '6421183', ' #00FF00 ', NULL, NULL),
(81, '6421017', ' #FF0000 ', NULL, NULL),
(82, '6421018', ' #00FF00 ', NULL, NULL),
(83, '6421009', ' #FF0000 ', NULL, NULL),
(84, '6421088', ' #FF0000 ', NULL, NULL),
(85, '6421137', ' #00FF00 ', NULL, NULL),
(86, '6421159', ' #00FF00 ', NULL, NULL),
(87, '6421011', ' #FF0000 ', NULL, NULL),
(88, '6421118', ' #00FF00 ', NULL, NULL),
(89, '6421243', ' #00FF00 ', NULL, NULL),
(90, '6421071', ' #00FF00 ', NULL, NULL),
(91, '6421194', ' #00FF00 ', NULL, NULL),
(92, '6421195', ' #00FF00 ', NULL, NULL),
(93, '6421160', ' #00FF00 ', NULL, NULL),
(94, '6421239', ' #00FF00 ', NULL, NULL),
(95, '6421175', ' #FFB300 ', NULL, NULL),
(96, '6421131', ' #00FF00 ', NULL, NULL),
(97, '6421218', ' #00FF00 ', NULL, NULL),
(98, '6421080', ' #FF0000 ', NULL, NULL),
(99, '6421098', ' #FF0000 ', NULL, NULL),
(100, '6421012', ' #00FF00 ', NULL, NULL),
(101, '6421085', ' #FF0000 ', NULL, NULL),
(102, '6421032', ' #00FF00 ', NULL, NULL),
(103, '6421176', ' #00FF00 ', NULL, NULL),
(104, '6421016', ' #FF0000 ', NULL, NULL),
(105, '6421083', ' #FF0000 ', NULL, NULL),
(106, '6421168', ' #00FF00 ', NULL, NULL),
(107, '6421146', ' #00FF00 ', NULL, NULL),
(108, '6421043', ' #FFB300 ', NULL, NULL),
(109, '6421040', ' #FF0000 ', NULL, NULL),
(110, '6421242', ' #FF0000 ', NULL, NULL),
(111, '6421133', ' #FFB300 ', NULL, NULL),
(112, '6421169', ' #00FF00 ', NULL, NULL),
(113, '6421178', ' #00FF00 ', NULL, NULL),
(114, '6421254', ' #FF0000 ', NULL, NULL),
(115, '6421148', ' #00FF00 ', NULL, NULL),
(116, '6421049', ' #00FF00 ', NULL, NULL),
(117, '6421082', ' #00FF00 ', NULL, NULL),
(118, '6421058', ' #FFFF00 ', NULL, NULL),
(119, '6421064', ' #00FF00 ', NULL, NULL),
(120, '6421209', ' #FF0000 ', NULL, NULL),
(121, '6421185', ' #00FF00 ', NULL, NULL),
(122, '6421251', ' #00FF00 ', NULL, NULL),
(123, '6421225', ' #FF0000 ', NULL, NULL),
(124, '6421108', ' #00FF00 ', NULL, NULL),
(125, '6421161', ' #00FF00 ', NULL, NULL),
(126, '6421208', ' #FF0000 ', NULL, NULL),
(127, '6421003', ' #00FF00 ', NULL, NULL),
(128, '6421136', ' #00FF00 ', NULL, NULL),
(129, '6421197', ' #FFFF00 ', NULL, NULL),
(130, '6421250', ' #FFFF00 ', NULL, NULL),
(131, '6421102', ' #00FF00 ', NULL, NULL),
(132, '6421190', ' #00FF00 ', NULL, NULL),
(133, '6421030', ' #00FF00 ', NULL, NULL),
(134, '6421073', ' #00FF00 ', NULL, NULL),
(135, '6421119', ' #00FF00 ', NULL, NULL),
(136, '6421156', ' #FF0000 ', NULL, NULL),
(137, '6421215', ' #00FF00 ', NULL, NULL),
(138, '6421004', ' #00FF00 ', NULL, NULL),
(139, '6421211', ' #00FF00 ', NULL, NULL),
(140, '6421130', ' #00FF00 ', NULL, NULL),
(141, '6421066', ' #00FF00 ', NULL, NULL),
(142, '6421210', ' #00FF00 ', NULL, NULL),
(143, '6421257', ' #FF0000 ', NULL, NULL),
(144, '6421196', ' #00FF00 ', NULL, NULL),
(145, '6421177', ' #00FF00 ', NULL, NULL),
(146, '6421212', ' #00FF00 ', NULL, NULL),
(147, '6421179', ' #00FF00 ', NULL, NULL),
(148, '6421052', ' #00FF00 ', NULL, NULL),
(149, '6421031', ' #00FF00 ', NULL, NULL),
(150, '6421075', ' #00FF00 ', NULL, NULL),
(151, '6421048', ' #00FF00 ', NULL, NULL),
(152, '6421193', ' #00FF00 ', NULL, NULL),
(153, '6421094', ' #FF0000 ', NULL, NULL),
(154, '6421070', ' #00FF00 ', NULL, NULL),
(155, '6421035', ' #00FF00 ', NULL, NULL),
(156, '6421228', ' #FFFF00 ', NULL, NULL),
(157, '6421181', ' #FFB300 ', NULL, NULL),
(158, '6421163', ' #FF0000 ', NULL, NULL),
(159, '6421120', ' #FFB300 ', NULL, NULL),
(160, '6421129', ' #00FF00 ', NULL, NULL),
(161, '6421027', ' #00FF00 ', NULL, NULL),
(162, '6421112', ' #00FF00 ', NULL, NULL),
(163, '6421259', ' #FFFFFF ', NULL, NULL),
(164, '6421701', ' #FFFFFF ', NULL, NULL),
(165, '6421234', ' #FFFFFF ', NULL, NULL),
(166, '6421248', ' #FFFF00 ', NULL, NULL),
(167, '6421249', ' #00FF00 ', NULL, NULL),
(168, '6421122', ' #00FF00 ', NULL, NULL),
(169, '6421101', ' #FF0000 ', NULL, NULL),
(170, '6421054', ' #00FF00 ', NULL, NULL),
(171, '6421086', ' #00FF00 ', NULL, NULL),
(172, '6421022', ' #FF0000 ', NULL, NULL),
(173, '6421132', ' #00FF00 ', NULL, NULL),
(174, '6421125', ' #FFB300 ', NULL, NULL),
(175, '6421092', ' #FFFF00 ', NULL, NULL),
(176, '6421235', ' #00FF00 ', NULL, NULL),
(177, '6421095', ' #FF0000 ', NULL, NULL),
(178, '6421189', ' #00FF00 ', NULL, NULL),
(179, '6421036', ' #00FF00 ', NULL, NULL),
(180, '6421076', ' #00FF00 ', NULL, NULL),
(181, '6421123', ' #FFB300 ', NULL, NULL),
(182, '6421172', ' #00FF00 ', NULL, NULL),
(183, '6421220', ' #FF0000 ', NULL, NULL),
(184, '6421244', ' #00FF00 ', NULL, NULL),
(185, '6421204', ' #00FF00 ', NULL, NULL),
(186, '6421019', ' #FF0000 ', NULL, NULL),
(187, '6421069', ' #00FF00 ', NULL, NULL),
(188, '6421167', ' #00FF00 ', NULL, NULL),
(189, '6421135', ' #00FF00 ', NULL, NULL),
(190, '6421025', ' #FF0000 ', NULL, NULL),
(191, '6421061', ' #00FF00 ', NULL, NULL),
(192, '6421238', ' #00FF00 ', NULL, NULL),
(193, '6421107', ' #00FF00 ', NULL, NULL),
(194, '6421231', ' #00FF00 ', NULL, NULL),
(195, '6421258', ' #FFFFFF ', NULL, NULL),
(196, '6421007', ' #FFFF00 ', NULL, NULL),
(197, '6421001', ' #00FF00 ', NULL, NULL),
(198, '6421143', ' #00FF00 ', NULL, NULL),
(199, '6421222', ' #00FF00 ', NULL, NULL),
(200, '6421039', ' #FFB300 ', NULL, NULL),
(201, '6421173', ' #00FF00 ', NULL, NULL),
(202, '6421089', ' #FFB300 ', NULL, NULL),
(203, '6421109', ' #00FF00 ', NULL, NULL),
(204, '6421029', ' #00FF00 ', NULL, NULL),
(205, '6421055', ' #00FF00 ', NULL, NULL),
(206, '6421077', ' #00FF00 ', NULL, NULL),
(207, '6421147', ' #00FF00 ', NULL, NULL),
(208, '6421230', ' #FFB300 ', NULL, NULL),
(209, '6421236', ' #00FF00 ', NULL, NULL),
(210, '6421045', ' #00FF00 ', NULL, NULL),
(211, '6421229', ' #00FF00 ', NULL, NULL),
(212, '6421166', ' #00FF00 ', NULL, NULL),
(213, '6421026', ' #00FF00 ', NULL, NULL),
(214, '6421002', ' #00FF00 ', NULL, NULL),
(215, '6421056', ' #00FF00 ', NULL, NULL),
(216, '6421042', ' #00FF00 ', NULL, NULL),
(217, '6421034', ' #00FF00 ', NULL, NULL),
(218, '6421241', ' #00FF00 ', NULL, NULL),
(219, '6421152', ' #FF0000 ', NULL, NULL),
(220, '6421023', ' #FF0000 ', NULL, NULL),
(221, '6421057', ' #00FF00 ', NULL, NULL),
(222, '6421232', ' #00FF00 ', NULL, NULL),
(223, '6421106', ' #00FF00 ', NULL, NULL),
(224, '6421139', ' #FFFF00 ', NULL, NULL),
(225, '6421162', ' #FFFF00 ', NULL, NULL),
(226, '6421059', ' #00FF00 ', NULL, NULL),
(227, '6421214', ' #00FF00 ', NULL, NULL),
(228, '6421255', ' #FF0000 ', NULL, NULL),
(229, '6421224', ' #00FF00 ', NULL, NULL),
(230, '6421182', ' #FFB300 ', NULL, NULL),
(231, '6421213', ' #00FF00 ', NULL, NULL),
(232, '6421110', ' #00FF00 ', NULL, NULL),
(233, '6421155', ' #00FF00 ', NULL, NULL),
(234, '6421116', ' #00FF00 ', NULL, NULL),
(235, '6421065', ' #00FF00 ', NULL, NULL),
(236, '6421033', ' #FFB300 ', NULL, NULL),
(237, '6421114', ' #FF0000 ', NULL, NULL),
(238, '6421200', ' #00FF00 ', NULL, NULL),
(239, '6421096', ' #00FF00 ', NULL, NULL),
(240, '6421202', ' #00FF00 ', NULL, NULL),
(241, '6421028', ' #00FF00 ', NULL, NULL),
(242, '6421207', ' #00FF00 ', NULL, NULL),
(243, '6421037', ' #FF0000 ', NULL, NULL),
(244, '6421115', ' #00FF00 ', NULL, NULL),
(245, '6421127', ' #00FF00 ', NULL, NULL),
(246, '6421072', ' #00FF00 ', NULL, NULL),
(247, '6421199', ' #00FF00 ', NULL, NULL),
(248, '6421150', ' #00FF00 ', NULL, NULL),
(249, '6421252', ' #00FF00 ', NULL, NULL),
(250, '6421237', ' #00FF00 ', NULL, NULL),
(251, '6421010', ' #FF0000 ', NULL, NULL),
(252, '6421111', ' #00FF00 ', NULL, NULL),
(253, '6421020', ' #FF0000 ', NULL, NULL),
(254, '6421099', ' #00FF00 ', NULL, NULL),
(255, '6421219', ' #00FF00 ', NULL, NULL),
(256, '6421165', ' #FF0000 ', NULL, NULL),
(257, '6421047', ' #FF0000 ', NULL, NULL),
(258, '6421144', ' #00FF00 ', NULL, NULL),
(259, '6421154', ' #00FF00 ', NULL, NULL),
(260, '6421171', ' #FFFFFF ', NULL, NULL),
(261, '6421158', ' #FFFFFF ', NULL, NULL);

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
(5, '2022_09_21_073321_create_actuals_table', 1),
(6, '2022_09_21_073350_create_achievements_table', 1),
(7, '2022_09_21_073410_create_monitoring_table', 2),
(8, '2022_09_21_074401_create_maps_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `monitoring`
--

CREATE TABLE `monitoring` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `kode_ba` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tgl` int(11) NOT NULL DEFAULT '0',
  `actual` double DEFAULT NULL,
  `target` double DEFAULT NULL,
  `bbc` float DEFAULT NULL,
  `avg_actual` double DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `monitoring`
--

INSERT INTO `monitoring` (`id`, `kode_ba`, `tgl`, `actual`, `target`, `bbc`, `avg_actual`, `created_at`, `updated_at`) VALUES
(1, '6421', 4, 810.34, 703.06, 836.5, 894.36, NULL, NULL),
(2, '6421', 5, 918.21, 703.06, 836.5, 894.36, NULL, NULL),
(3, '6421', 6, 911.46, 703.06, 836.5, 894.36, NULL, NULL),
(4, '6421', 7, 843.51, 703.06, 836.5, 894.36, NULL, NULL),
(5, '6421', 8, 458.67, 703.06, 836.5, 894.36, NULL, NULL),
(6, '6421', 9, 1005.45, 703.06, 836.5, 894.36, NULL, NULL),
(7, '6421', 10, 864.32, 703.06, 836.5, 894.36, NULL, NULL),
(8, '6421', 11, 985.11, 703.06, 836.5, 894.36, NULL, NULL),
(9, '6421', 12, 844.03, 703.06, 836.5, 894.36, NULL, NULL),
(10, '6421', 13, 803.82, 703.06, 836.5, 894.36, NULL, NULL),
(11, '6421', 14, 860.81, 703.06, 836.5, 894.36, NULL, NULL),
(12, '6421', 15, 59.11, 703.06, 836.5, 894.36, NULL, NULL),
(13, '6421', 16, 285.27, 703.06, 836.5, 894.36, NULL, NULL),
(14, '6421', 17, 899.41, 703.06, 836.5, 894.36, NULL, NULL),
(15, '6421', 18, 1029.83, 703.06, 836.5, 894.36, NULL, NULL),
(16, '6421', 19, 958.78, 703.06, 836.5, 894.36, NULL, NULL),
(17, '6421', 20, 1028.21, 703.06, 836.5, 894.36, NULL, NULL),
(18, '6421', 21, 835.44, 703.06, 836.5, 894.36, NULL, NULL),
(19, '6421', 22, 75.26, 703.06, 836.5, 894.36, NULL, NULL),
(20, '6421', 23, 914.73, 703.06, 836.5, 894.36, NULL, NULL),
(21, '6421', 24, 1003.11, 703.06, 836.5, 894.36, NULL, NULL),
(22, '6421', 25, 837.29, 703.06, 836.5, 894.36, NULL, NULL),
(23, '6421', 27, 469.67, 703.06, 836.5, 894.36, NULL, NULL),
(24, '6421', 28, 1006.59, 703.06, 836.5, 894.36, NULL, NULL),
(25, '6421', 30, 995.5, 703.06, 836.5, 894.36, NULL, NULL),
(26, '6421', 31, 850.26, 703.06, 836.5, 894.36, NULL, NULL),
(27, '6421', 1, NULL, 703.06, 836.5, 894.36, NULL, NULL),
(28, '6421', 2, NULL, 703.06, 836.5, 894.36, NULL, NULL),
(29, '6421', 3, NULL, 703.06, 836.5, 894.36, NULL, NULL),
(30, '6421', 26, NULL, 703.06, 836.5, 894.36, NULL, NULL),
(31, '6421', 29, NULL, 703.06, 836.5, 894.36, NULL, NULL);

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
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `achievements`
--
ALTER TABLE `achievements`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `actuals`
--
ALTER TABLE `actuals`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `maps`
--
ALTER TABLE `maps`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `monitoring`
--
ALTER TABLE `monitoring`
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
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `users_phone_unique` (`phone`),
  ADD KEY `users_id_index` (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `achievements`
--
ALTER TABLE `achievements`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `actuals`
--
ALTER TABLE `actuals`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `maps`
--
ALTER TABLE `maps`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=262;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `monitoring`
--
ALTER TABLE `monitoring`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
