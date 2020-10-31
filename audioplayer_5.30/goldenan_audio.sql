-- phpMyAdmin SQL Dump
-- version 4.6.6deb5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: May 30, 2020 at 04:23 AM
-- Server version: 5.7.30-0ubuntu0.18.04.1
-- PHP Version: 7.2.24-0ubuntu0.18.04.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `goldenan_audio`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_user`
--

CREATE TABLE `admin_user` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `user_type_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `admin_user`
--

INSERT INTO `admin_user` (`id`, `name`, `username`, `email`, `password`, `user_type_id`) VALUES
(1, 'Admin Test', 'admin', 'admin', '8ff953dd97c4405234a04291dee39e0b', 1);

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `category_id` int(11) NOT NULL,
  `category_name` varchar(9999) CHARACTER SET utf8 DEFAULT NULL,
  `category_description` mediumtext CHARACTER SET utf8,
  `category_image` varchar(9999) DEFAULT NULL,
  `category_created_date` date DEFAULT NULL,
  `category_status` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`category_id`, `category_name`, `category_description`, `category_image`, `category_created_date`, `category_status`) VALUES
(1, 'Strength', 'Strength', 'no_image.png', '2020-05-03', 1),
(2, 'Flexibility', 'Flexibility', 'no_image.png', '2020-05-03', 1),
(4, 'Cardio', 'Cardio', 'no_image.png', '2020-05-07', 1),
(5, 'Balance', 'Balance', 'no_image.png', '2020-05-08', 1);

-- --------------------------------------------------------

--
-- Table structure for table `ci_sessions`
--

CREATE TABLE `ci_sessions` (
  `session_id` varchar(40) CHARACTER SET latin1 NOT NULL DEFAULT '0',
  `ip_address` varchar(45) CHARACTER SET latin1 NOT NULL DEFAULT '0',
  `user_agent` varchar(120) CHARACTER SET latin1 NOT NULL,
  `last_activity` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `user_data` text CHARACTER SET latin1 NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ci_sessions`
--

INSERT INTO `ci_sessions` (`session_id`, `ip_address`, `user_agent`, `last_activity`, `user_data`) VALUES
('29768d8018cd80cb2aa82e62718ac497', '188.43.235.177', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.92 Safari/537.36', 1590800308, 'a:4:{s:9:\"user_data\";s:0:\"\";s:12:\"is_logged_in\";b:1;s:9:\"user_name\";s:5:\"admin\";s:4:\"role\";s:1:\"1\";}'),
('6cd19ce5dc6d255bb4fa1c804c358357', '91.135.175.155', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/51.0.2704.103 Safari/537.36', 1590802448, ''),
('c34ca7fd9a7b98df508638f1d9cd47fb', '5.59.133.185', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/601.7.7 (KHTML, like Gecko) Version/9.1.2 Safari/601.7.7', 1590803122, ''),
('c2565e9f06a242d11039f9ee723f23bb', '188.43.235.177', 'okhttp/4.7.1', 1590803605, ''),
('48cbfb795b501918e5f3da839610ba67', '188.43.235.177', 'okhttp/4.7.1', 1590797907, ''),
('468d697391893a8b7bcd070b6fe326c7', '188.43.235.177', 'exercise_music/1 CFNetwork/1125.2 Darwin/19.4.0', 1590798014, ''),
('20a1c42142a18cebb10034f633ab2887', '188.43.235.177', 'exercise_music/1 CFNetwork/1125.2 Darwin/19.4.0', 1590798014, ''),
('a4c03e2082f93c1b2f6ff4e721a98901', '195.54.160.130', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', 1590799688, ''),
('8292bb984da89397ca628bb4cc3781ad', '188.43.235.177', 'okhttp/4.7.1', 1590803680, ''),
('5aa66af768bfa676eb47c34a695fe4c2', '206.189.135.73', 'masscan/1.0 (https://github.com/robertdavidgraham/masscan)', 1590804528, ''),
('86051892ea89fb2a297490edcbb26c8b', '188.43.235.177', 'okhttp/4.7.1', 1590803618, ''),
('4f52a9fdfd0992debf0f2504c07c0b16', '188.43.235.177', 'okhttp/4.7.1', 1590803627, ''),
('02296e0c6506a5bd0c35bbb2c9e73ea2', '188.43.235.177', 'okhttp/4.7.1', 1590803628, ''),
('9ecb7685a6c9ba33307747e3ddb40006', '188.43.235.177', 'okhttp/4.7.1', 1590806324, ''),
('8fdde27e4c3dc375348865f6f6aa28b0', '188.43.235.177', 'PostmanRuntime/7.25.0', 1590809120, ''),
('1642f3e84c7fda4475adc8cd1c9fce70', '188.43.235.177', 'PostmanRuntime/7.25.0', 1590808466, ''),
('19ed048ca1886f606e0b21bd87520a59', '139.162.106.181', 'HTTP Banner Detection (https://security.ipip.net)', 1590809734, ''),
('3fc5f016c3b937bc2e47bf162e5bc06c', '1.203.161.58', 'XTC BOTNET', 1590810559, '');

-- --------------------------------------------------------

--
-- Table structure for table `content_management`
--

CREATE TABLE `content_management` (
  `content_management_id` int(11) NOT NULL,
  `about_us` text CHARACTER SET utf8 NOT NULL,
  `terms_conditions` text CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `content_management`
--

INSERT INTO `content_management` (`content_management_id`, `about_us`, `terms_conditions`) VALUES
(1, '<h2 style=\"font-style:italic\"><span style=\"color:#FF0000\"><strong>L.orem ipsum dolor sit er elit lamet, consectetaur cillium adipisicing pecu, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</strong> </span></h2>\n\n<h2 style=\"font-style:italic\"><img alt=\"heart\" src=\"http://localhost/app_backend/assets/global/plugins/ckeditor/plugins/smiley/images/heart.png\" style=\"height:23px; width:23px\" title=\"heart\" /><img alt=\"broken heart\" src=\"http://localhost/app_backend/assets/global/plugins/ckeditor/plugins/smiley/images/broken_heart.png\" style=\"height:23px; width:23px\" title=\"broken heart\" />Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;commodo consequat.</h2>\n\n<h2 style=\"font-style:italic\"><img alt=\"yes\" src=\"http://localhost/app_backend/assets/global/plugins/ckeditor/plugins/smiley/images/thumbs_up.png\" style=\"height:23px; width:23px\" title=\"yes\" /><img alt=\"yes\" src=\"http://localhost/app_backend/assets/global/plugins/ckeditor/plugins/smiley/images/thumbs_up.png\" style=\"height:23px; width:23px\" title=\"yes\" />Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;pariatur.</h2>\n\n<blockquote>\n<h2 style=\"font-style:italic\">Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Nam liber te conscient to factor tum poen legum odioque civiuda.</h2>\n</blockquote>\n', '<h2 style=\"font-style:italic\"><span style=\"color:#000000\"><strong><em>our terms and conditions</em></strong></span></h2>\n\n<p>&nbsp;</p>\n\n<p><span style=\"font-size:14px\">Lorem ipsum dolor sit er elit lamet, consectetaur cillium adipisicing pecu, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Nam liber te conscient to factor tum poen legum odioque civiuda.</span></p>\n\n<p>&nbsp;</p>\n\n<p><span style=\"font-size:14px\">Lorem ipsum dolor sit er elit lamet, consectetaur cillium adipisicing pecu, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Nam liber te conscient to factor tum poen legum odioque civiuda.</span></p>\n\n<p><span style=\"font-size:14px\">Lorem ipsum dolor sit er elit lamet, consectetaur cillium adipisicing pecu, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Nam liber te conscient to factor tum poen legum odioque civiuda.</span></p>\n');

-- --------------------------------------------------------

--
-- Table structure for table `gcm_user`
--

CREATE TABLE `gcm_user` (
  `gcm_user_id` int(11) NOT NULL,
  `username` mediumtext CHARACTER SET utf8,
  `email` mediumtext CHARACTER SET utf8,
  `password` varchar(255) DEFAULT NULL,
  `favorite_items` varchar(255) DEFAULT NULL,
  `extra_time` int(11) DEFAULT '0',
  `user_created_date` int(11) DEFAULT NULL,
  `user_status` tinyint(1) DEFAULT '1',
  `device_id` mediumtext
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `gcm_user`
--

INSERT INTO `gcm_user` (`gcm_user_id`, `username`, `email`, `password`, `favorite_items`, `extra_time`, `user_created_date`, `user_status`, `device_id`) VALUES
(37, 't', 'rgbcat@gmail.com', '7694f4a66316e53c8cdd9d9954bd611d', '48,41', 0, 1588807000, 1, '0'),
(39, 'user1', 'fordevelop0401@yandex.com', '47bce5c74f589f4867dbd57e9ca9f808', '39', 0, 1589500800, 1, '0'),
(40, 'star', 'star@star.com', '47bce5c74f589f4867dbd57e9ca9f808', '39,39,41,39,39,39,39', 0, 1589932800, 1, '0'),
(42, 'ccc', 'ccc@gmail.com', '900442d50f5e53d69bc5711ed55fa52c', NULL, 0, 1590192000, 1, '0'),
(43, 'ttt', 'ttt@gmail.com', '9990775155c3518a0d7917f7780b24aa', NULL, 0, 1590364800, 1, '0'),
(44, 'sex', 'sex@gmail.com', '99dc064e3cdbc94e934408ce507db39c', NULL, 0, 1590364800, 1, '0'),
(45, 'Kirill', 'fordevelop0401@gmail.com', '594f803b380a41396ed63dca39503542', '39', 10, 1590710400, 1, '7D4EEFD1-DAA7-4926-9B88-0300B67476F0');

-- --------------------------------------------------------

--
-- Table structure for table `item`
--

CREATE TABLE `item` (
  `item_id` int(11) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `item_name` mediumtext CHARACTER SET utf8,
  `item_description` mediumtext CHARACTER SET utf8,
  `item_file` mediumtext CHARACTER SET utf8,
  `item_video` mediumtext CHARACTER SET utf8,
  `item_lyrics` mediumtext CHARACTER SET utf8,
  `item_url` varchar(255) DEFAULT NULL,
  `item_image` mediumtext CHARACTER SET utf8,
  `item_created_date` date NOT NULL,
  `item_status` tinyint(1) NOT NULL DEFAULT '1',
  `number_of_play` int(255) NOT NULL DEFAULT '0',
  `number_of_download` int(255) NOT NULL DEFAULT '0',
  `sort_order` int(255) NOT NULL DEFAULT '100000'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `item`
--

INSERT INTO `item` (`item_id`, `category_id`, `item_name`, `item_description`, `item_file`, `item_video`, `item_lyrics`, `item_url`, `item_image`, `item_created_date`, `item_status`, `number_of_play`, `number_of_download`, `sort_order`) VALUES
(38, 2, 'Arms Strech', 'Four minutes hands and arms exercise.', '1588785094.mp3', '', NULL, NULL, 'Untitled-6.jpg', '2020-05-06', 1, 0, 0, 100000),
(39, 1, 'Lift Round', 'Three minutes lift round.', '1588785128.mp3', '', NULL, NULL, 'Untitled-5.jpg', '2020-05-06', 1, 20, 1, 100000),
(40, 5, 'Easy Balance', 'Six minutes of balance exercise.', '1588785168.mp3', '', NULL, NULL, 'Untitled-31.jpg', '2020-05-06', 1, 0, 0, 100000),
(41, 1, 'Muscle build', 'Four minutes strength exercise.', '1588785202.mp3', '', NULL, NULL, 'shaun-stafford.jpg', '2020-05-06', 1, 0, 1, 100000),
(43, 4, 'Bike sprint', 'Six minutes bike sprint.', '1588785276.mp3', '', NULL, NULL, 'WomanExercising-650x450.jpg', '2020-05-06', 1, 2, 1, 100000),
(44, 4, 'Sprint Run', 'Two minutes sprint.', '1588950780.mp3', '', NULL, NULL, 'Untitled-3.jpg', '2020-05-06', 1, 3, 0, 100000),
(48, 2, 'Quick Strech', 'One minute for super quick strech. Just do it.', '1588872343.mp3', '', NULL, NULL, 'Untitled-4.jpg', '2020-05-07', 1, 0, 1, 100000);

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `session_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `item_id` int(11) DEFAULT NULL,
  `playing_time` float DEFAULT NULL,
  `timestamp` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`session_id`, `user_id`, `item_id`, `playing_time`, `timestamp`) VALUES
(37, 22, 39, 5, '2020-05-08 07:28:53'),
(38, 22, 39, 9, '2020-05-08 07:33:00'),
(39, 22, 39, 109, '2020-05-08 07:43:30'),
(40, 19, 48, 2, '2020-05-07 09:34:02'),
(41, 19, 48, 2, '2020-05-07 09:34:02'),
(42, 19, 48, 2, '2020-05-07 09:34:02'),
(43, 19, 41, 0, '2020-05-08 00:36:24'),
(44, 19, 48, 1, '2020-05-08 00:38:23'),
(45, 19, 48, 1, '2020-05-08 00:38:23'),
(46, 19, 48, 13, '2020-05-08 00:40:31'),
(47, 22, 39, 46, '2020-05-08 15:42:50'),
(48, 23, 40, 1, '2020-05-08 09:53:24'),
(49, 22, 39, 36, '2020-05-08 22:57:04'),
(50, 22, 39, 36, '2020-05-08 22:57:04'),
(51, 22, 40, 35, '2020-05-08 22:58:21'),
(52, 22, 40, 35, '2020-05-08 22:58:21'),
(53, 22, 40, 35, '2020-05-08 22:58:21'),
(54, 22, 40, 35, '2020-05-08 22:58:21'),
(55, 22, 40, 35, '2020-05-08 22:58:21'),
(56, 22, 43, 43, '2020-05-08 23:58:27'),
(57, 22, 43, 43, '2020-05-08 23:58:27'),
(58, 23, 48, 1, '2020-05-08 11:05:57'),
(59, 23, 39, 59, '2020-05-08 11:42:03'),
(60, 23, 39, 59, '2020-05-08 11:42:03'),
(61, 23, 39, 59, '2020-05-08 11:42:03'),
(62, 22, 44, 52, '2020-05-09 00:44:16'),
(63, 22, 44, 48, '2020-05-09 00:44:16'),
(64, 22, 39, 54, '2020-05-09 03:14:22'),
(65, 22, 39, 3, '2020-05-09 03:15:01'),
(66, 22, 39, 3, '2020-05-09 03:15:01'),
(67, 22, 39, 3, '2020-05-09 03:18:17'),
(68, 23, 39, 0, '2020-05-08 16:42:08'),
(69, 23, 39, 0, '2020-05-08 16:45:15'),
(70, 23, 39, 0, '2020-05-08 16:45:15'),
(71, 23, 38, 0, '2020-05-08 16:46:57'),
(72, 23, 38, 0, '2020-05-08 16:46:57'),
(73, 23, 38, 0, '2020-05-08 16:46:57'),
(74, 23, 38, 0, '2020-05-08 16:48:17'),
(75, 23, 38, 0, '2020-05-08 16:48:17'),
(76, 23, 38, 0, '2020-05-08 16:48:17'),
(77, 23, 38, 0, '2020-05-08 16:48:17'),
(78, 23, 38, 0, '2020-05-08 16:48:17'),
(79, 23, 38, 0, '2020-05-08 16:48:59'),
(80, 23, 38, 0, '2020-05-08 16:48:59'),
(81, 23, 38, 0, '2020-05-08 16:48:59'),
(82, 23, 38, 0, '2020-05-08 16:48:59'),
(83, 23, 38, 0, '2020-05-08 16:48:59'),
(84, 23, 38, 0, '2020-05-08 16:48:59'),
(85, 23, 38, 0, '2020-05-08 16:48:59'),
(86, 23, 38, 0, '2020-05-08 16:48:59'),
(87, 23, 38, 84, '2020-05-08 16:50:29'),
(88, 23, 38, 13, '2020-05-08 16:50:29'),
(89, 23, 38, 13, '2020-05-08 16:50:29'),
(90, 23, 38, 13, '2020-05-08 16:50:29'),
(91, 23, 38, 13, '2020-05-08 16:50:29'),
(92, 23, 38, 13, '2020-05-08 16:50:29'),
(93, 23, 38, 13, '2020-05-08 16:50:29'),
(94, 23, 38, 13, '2020-05-08 16:50:29'),
(95, 23, 38, 13, '2020-05-08 16:50:29'),
(96, 23, 39, 0, '2020-05-08 16:52:43'),
(97, 23, 39, 0, '2020-05-08 16:52:43'),
(98, 24, 39, 186, '2020-05-08 16:53:46'),
(99, 24, 39, 1, '2020-05-08 16:53:46'),
(100, 24, 39, 1, '2020-05-08 16:53:46'),
(101, 24, 39, 184, '2020-05-08 16:55:08'),
(102, 24, 39, 1, '2020-05-08 16:55:08'),
(103, 24, 39, 1, '2020-05-08 16:55:08'),
(104, 24, 39, 1, '2020-05-08 16:55:08'),
(105, 24, 39, 1, '2020-05-08 16:55:08'),
(106, 24, 39, 0, '2020-05-08 16:55:30'),
(107, 24, 39, 0, '2020-05-08 16:55:30'),
(108, 24, 39, 0, '2020-05-08 16:55:30'),
(109, 24, 39, 0, '2020-05-08 16:55:30'),
(110, 24, 39, 0, '2020-05-08 16:55:30'),
(111, 24, 39, 0, '2020-05-08 16:55:30'),
(112, 24, 39, 0, '2020-05-08 16:55:53'),
(113, 24, 39, 0, '2020-05-08 16:55:53'),
(114, 24, 39, 0, '2020-05-08 16:55:53'),
(115, 24, 39, 0, '2020-05-08 16:55:53'),
(116, 24, 39, 0, '2020-05-08 16:55:53'),
(117, 24, 39, 0, '2020-05-08 16:55:53'),
(118, 24, 39, 0, '2020-05-08 16:55:53'),
(119, 25, 39, 1, '2020-05-08 16:59:59'),
(120, 25, 39, 0, '2020-05-08 17:00:07'),
(121, 25, 39, 0, '2020-05-08 17:00:07'),
(122, 25, 39, 0, '2020-05-08 17:00:25'),
(123, 25, 39, 0, '2020-05-08 17:00:25'),
(124, 25, 39, 0, '2020-05-08 17:00:25'),
(125, 25, 39, 1, '2020-05-08 17:01:56'),
(126, 25, 39, 0, '2020-05-08 17:02:08'),
(127, 25, 39, 0, '2020-05-08 17:02:08'),
(128, 25, 39, 0, '2020-05-08 17:02:25'),
(129, 25, 39, 0, '2020-05-08 17:02:25'),
(130, 25, 39, 0, '2020-05-08 17:02:25'),
(131, 25, 39, 1, '2020-05-08 17:03:33'),
(132, 25, 39, 191, '2020-05-08 17:06:13'),
(133, 26, 39, 10, '2020-05-09 09:39:02'),
(134, 26, 39, 3, '2020-05-09 09:53:56'),
(135, 26, 39, 1, '2020-05-09 09:55:54'),
(136, 26, 39, 3, '2020-05-09 09:58:38'),
(137, 26, 39, 205, '2020-05-09 10:01:42'),
(138, 26, 39, 176, '2020-05-09 10:05:07'),
(139, 26, 39, 205, '2020-05-09 10:05:36'),
(140, 26, 39, 192, '2020-05-09 10:07:34'),
(141, 26, 39, 205, '2020-05-09 10:33:50'),
(142, 25, 39, 205, '2020-05-08 22:40:49'),
(143, 25, 39, 72, '2020-05-08 22:40:56'),
(144, 25, 39, 205, '2020-05-08 22:41:13'),
(145, 25, 39, 205, '2020-05-08 22:41:27'),
(146, 25, 39, 205, '2020-05-08 22:41:41'),
(147, 25, 39, 205, '2020-05-08 22:41:55'),
(148, 25, 39, 205, '2020-05-08 22:42:09'),
(149, 25, 39, 205, '2020-05-08 22:42:37'),
(150, 25, 39, 205, '2020-05-08 22:42:52'),
(151, 25, 39, 205, '2020-05-08 22:43:10'),
(152, 19, 41, 0, '2020-05-08 23:02:17'),
(153, 19, 41, 47, '2020-05-08 23:03:42'),
(154, 26, 39, 4, '2020-05-09 12:03:19'),
(155, 26, 39, 3, '2020-05-09 12:06:05'),
(156, 28, 39, 8, '2020-05-10 01:06:33'),
(157, 28, 39, 205, '2020-05-10 01:06:50'),
(158, 28, 41, 274, '2020-05-11 16:26:05'),
(159, 28, 39, 6, '2020-05-13 23:43:33'),
(160, 28, 39, 182, '2020-05-13 23:43:51'),
(161, 28, 39, 205, '2020-05-13 23:44:18'),
(162, 28, 38, 5, '2020-05-13 23:47:24'),
(163, 28, 40, 11, '2020-05-13 23:47:49'),
(164, 26, 39, 205, '2020-05-14 14:15:56'),
(165, 35, 39, 205, '2020-05-14 15:03:48'),
(166, 35, 39, 205, '2020-05-14 15:06:05'),
(167, 35, 39, 205, '2020-05-14 15:07:18'),
(168, 35, 39, 205, '2020-05-14 15:07:57'),
(169, 36, 39, 1, '2020-05-14 02:16:15'),
(170, 36, 39, 205, '2020-05-14 02:16:34'),
(171, 35, 39, 205, '2020-05-14 15:19:07'),
(172, 35, 39, 205, '2020-05-14 15:19:49'),
(173, 36, 39, 205, '2020-05-14 15:33:31'),
(174, 36, 39, 205, '2020-05-14 15:39:27'),
(175, 36, 39, 205, '2020-05-14 08:24:33'),
(176, 36, 39, 205, '2020-05-14 08:25:36'),
(177, 37, 39, 1, '2020-05-15 09:43:20'),
(178, 37, 39, 0, '2020-05-15 09:44:35'),
(179, 37, 39, 205, '2020-05-15 09:45:14'),
(180, 37, 39, 2, '2020-05-15 09:46:26'),
(181, 39, 39, 108, '2020-05-15 22:54:17'),
(182, 37, 39, 2, '2020-05-15 11:01:18'),
(183, 37, 39, 0, '2020-05-15 11:01:31'),
(184, 37, 39, 1, '2020-05-15 11:01:55'),
(185, 37, 38, 1, '2020-05-15 11:02:11'),
(186, 37, 44, 14, '2020-05-15 18:12:48'),
(187, 37, 43, 5, '2020-05-15 18:13:21'),
(188, 39, 39, 205, '2020-05-16 08:40:41'),
(189, 37, 40, 1, '2020-05-15 21:12:38'),
(190, 37, 38, 1, '2020-05-15 21:32:02'),
(191, 37, 48, 20, '2020-05-15 21:33:05'),
(192, 37, 48, 73, '2020-05-15 21:33:19'),
(193, 37, 39, 0, '2020-05-15 22:10:11'),
(194, 37, 41, 0, '2020-05-15 22:13:21'),
(195, 37, 48, 1, '2020-05-15 22:20:51'),
(196, 37, 48, 1, '2020-05-15 22:21:04'),
(197, 37, 48, 73, '2020-05-15 22:22:16'),
(198, 37, 48, 73, '2020-05-15 22:22:29'),
(199, 37, 48, 70, '2020-05-15 22:22:41'),
(200, 37, 48, 20, '2020-05-15 22:27:09'),
(201, 37, 39, 11, '2020-05-15 22:27:53'),
(202, 37, 48, 0, '2020-05-15 22:28:57'),
(203, 37, 48, 73, '2020-05-15 22:30:26'),
(204, 39, 39, 205, '2020-05-16 12:01:22'),
(205, 39, 39, 205, '2020-05-16 12:03:06'),
(206, 39, 39, 205, '2020-05-16 12:07:26'),
(207, 39, 39, 205, '2020-05-16 12:08:14'),
(208, 39, 39, 205, '2020-05-16 12:10:42'),
(209, 39, 39, 205, '2020-05-16 12:13:00'),
(210, 39, 39, 205, '2020-05-16 12:14:20'),
(211, 39, 39, 205, '2020-05-16 12:15:37'),
(212, 39, 39, 205, '2020-05-16 12:16:35'),
(213, 39, 39, 205, '2020-05-16 12:16:59'),
(214, 39, 39, 205, '2020-05-16 12:17:28'),
(215, 39, 39, 205, '2020-05-16 12:17:58'),
(216, 39, 39, 205, '2020-05-16 12:18:29'),
(217, 39, 39, 205, '2020-05-16 12:22:03'),
(218, 39, 39, 205, '2020-05-16 13:45:58'),
(219, 39, 39, 205, '2020-05-16 13:46:45'),
(220, 39, 39, 205, '2020-05-16 13:47:12'),
(221, 39, 39, 205, '2020-05-16 13:47:42'),
(222, 39, 39, 205, '2020-05-16 13:48:12'),
(223, 39, 39, 205, '2020-05-16 13:49:03'),
(224, 39, 39, 205, '2020-05-16 13:49:27'),
(225, 39, 39, 205, '2020-05-16 13:49:53'),
(226, 37, 48, 8, '2020-05-16 07:39:41'),
(227, 37, 39, 4, '2020-05-16 07:40:20'),
(228, 37, 39, 0, '2020-05-16 07:41:56'),
(229, 37, 48, 73, '2020-05-16 07:42:34'),
(230, 39, 39, 205, '2020-05-16 20:58:58'),
(231, 39, 39, 205, '2020-05-16 21:01:03'),
(232, 39, 39, 205, '2020-05-16 21:01:52'),
(233, 39, 39, 205, '2020-05-16 21:02:49'),
(234, 39, 39, 205, '2020-05-16 21:03:31'),
(235, 39, 39, 205, '2020-05-16 21:04:17'),
(236, 39, 39, 205, '2020-05-16 21:05:04'),
(237, 37, 41, 274, '2020-05-16 12:27:37'),
(238, 37, 41, 274, '2020-05-16 12:28:22'),
(239, 37, 48, 73, '2020-05-16 12:29:12'),
(240, 37, 48, 9, '2020-05-16 12:29:37'),
(241, 37, 48, 5, '2020-05-16 13:00:03'),
(242, 12, 123, 22, '2020-05-05 00:00:00'),
(243, 39, 39, 205, '2020-05-22 20:42:52'),
(244, 45, 39, 205, '2020-05-30 02:10:08'),
(245, 45, 39, 205, '2020-05-30 09:18:05');

-- --------------------------------------------------------

--
-- Table structure for table `subscribe_data`
--

CREATE TABLE `subscribe_data` (
  `id` int(11) NOT NULL,
  `device_id` mediumtext NOT NULL,
  `expired_date` int(11) NOT NULL,
  `premium_start` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `subscribe_data`
--

INSERT INTO `subscribe_data` (`id`, `device_id`, `expired_date`, `premium_start`) VALUES
(1, 'A11610F6-8F16-4626-A496-A951914BB429', 1591567200, 1588893400),
(3, 'fordevelop0401@yandex.com', 1592438400, 1589760000),
(4, 'A11610F6', 1592438400, 1589760000),
(5, 'B0FD55C0-BDFC-4EDE-BF6C-694EAA43239C', 1589760000, 1589760000),
(6, '52007111-B09F-40E2-8C1E-8B552F35962F', 1589760000, 1589760000),
(7, '11111111111', 1592524800, 1589846400),
(8, 'random udid (ex: 1)', 1589846400, 1589846400),
(9, '7D4EEFD1-DAA7-4926-9B88-0300B67476F0', 1590710400, 1590710400);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_user`
--
ALTER TABLE `admin_user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `ci_sessions`
--
ALTER TABLE `ci_sessions`
  ADD PRIMARY KEY (`session_id`),
  ADD KEY `last_activity_idx` (`last_activity`);

--
-- Indexes for table `content_management`
--
ALTER TABLE `content_management`
  ADD PRIMARY KEY (`content_management_id`);

--
-- Indexes for table `gcm_user`
--
ALTER TABLE `gcm_user`
  ADD PRIMARY KEY (`gcm_user_id`);

--
-- Indexes for table `item`
--
ALTER TABLE `item`
  ADD PRIMARY KEY (`item_id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`session_id`);

--
-- Indexes for table `subscribe_data`
--
ALTER TABLE `subscribe_data`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_user`
--
ALTER TABLE `admin_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `gcm_user`
--
ALTER TABLE `gcm_user`
  MODIFY `gcm_user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;
--
-- AUTO_INCREMENT for table `item`
--
ALTER TABLE `item`
  MODIFY `item_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;
--
-- AUTO_INCREMENT for table `sessions`
--
ALTER TABLE `sessions`
  MODIFY `session_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=246;
--
-- AUTO_INCREMENT for table `subscribe_data`
--
ALTER TABLE `subscribe_data`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
