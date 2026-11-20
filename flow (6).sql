-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 20, 2026 at 07:56 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `flow`
--

-- --------------------------------------------------------

--
-- Table structure for table `app_settings`
--

CREATE TABLE `app_settings` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `theme` enum('light','dark','system') NOT NULL DEFAULT 'system',
  `sound_enabled` tinyint(1) NOT NULL DEFAULT 1,
  `vibration_enabled` tinyint(1) NOT NULL DEFAULT 1,
  `groot_suggestions_enabled` tinyint(1) NOT NULL DEFAULT 1,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `app_settings`
--

INSERT INTO `app_settings` (`id`, `user_id`, `theme`, `sound_enabled`, `vibration_enabled`, `groot_suggestions_enabled`, `updated_at`) VALUES
(1, 3, 'light', 1, 1, 1, '2026-10-28 03:43:22');

-- --------------------------------------------------------

--
-- Table structure for table `distraction_logs`
--

CREATE TABLE `distraction_logs` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `reason` text NOT NULL,
  `category` varchar(100) NOT NULL DEFAULT 'Other',
  `duration_seconds` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `distraction_logs`
--

INSERT INTO `distraction_logs` (`id`, `user_id`, `reason`, `category`, `duration_seconds`, `created_at`) VALUES
(4, 25, 'Opened Instagram during strict focus', 'Social Media', 0, '2026-11-17 04:11:52'),
(5, 25, 'App backgrounded during focus', 'Digital', 10, '2026-11-17 04:11:59'),
(6, 25, 'Opened Instagram during strict focus', 'Social Media', 0, '2026-11-17 04:12:11'),
(7, 25, 'App backgrounded during focus', 'Digital', 10, '2026-11-17 04:12:37'),
(8, 25, 'Opened Instagram during strict focus', 'Social Media', 0, '2026-11-17 04:16:01'),
(9, 25, 'Opened Instagram during strict focus', 'Social Media', 0, '2026-11-17 04:16:28'),
(10, 25, 'Opened Instagram during strict focus', 'Social Media', 0, '2026-11-17 04:16:44'),
(11, 25, 'Opened Instagram during strict focus', 'Social Media', 0, '2026-11-17 04:17:07'),
(12, 25, 'Opened Instagram during strict focus', 'Social Media', 0, '2026-11-17 04:17:22'),
(13, 25, 'Opened Instagram during strict focus', 'Social Media', 0, '2026-11-17 04:17:38'),
(14, 25, 'Opened Instagram during strict focus', 'Social Media', 0, '2026-11-17 04:17:54'),
(15, 25, 'Opened Instagram during strict focus', 'Social Media', 0, '2026-11-17 04:22:22'),
(16, 25, 'Opened Instagram during strict focus', 'Social Media', 0, '2026-11-17 04:22:37'),
(17, 25, 'Opened Instagram during strict focus', 'Social Media', 0, '2026-11-17 04:22:53'),
(18, 25, 'Opened Instagram during strict focus', 'Social Media', 0, '2026-11-17 04:23:11'),
(19, 25, 'App backgrounded during focus', 'Digital', 10, '2026-11-17 04:44:56'),
(20, 25, 'Opened Instagram during strict focus', 'Social Media', 0, '2026-11-17 04:45:26'),
(21, 25, 'Blocked app opened: Instagram', 'Social Media', 0, '2026-11-17 04:45:41'),
(22, 25, 'App backgrounded during focus', 'Digital', 10, '2026-11-17 04:45:50'),
(23, 25, 'Opened Instagram during strict focus', 'Social Media', 0, '2026-11-17 06:47:47'),
(24, 25, 'Blocked app opened: Instagram', 'Social Media', 0, '2026-11-17 06:47:47'),
(25, 25, 'Opened Amazon Music during strict focus', 'Video &amp; Streaming', 0, '2026-11-17 06:48:05'),
(26, 25, 'Blocked app opened: Amazon Music', 'Video &amp; Streaming', 0, '2026-11-17 06:48:06'),
(27, 25, 'Blocked app opened: DLS26', 'Games', 0, '2026-11-17 06:48:51'),
(28, 1, 'Social Media', 'Digital', 120, '2026-11-17 08:44:43'),
(29, 25, 'App backgrounded during focus', 'Digital', 10, '2026-11-17 09:20:54'),
(30, 25, 'Blocked app opened: Instagram', 'Social Media', 0, '2026-11-17 09:20:57'),
(31, 25, 'Opened DLS26 during strict focus', 'Games', 0, '2026-11-17 09:21:04'),
(32, 26, 'Opened Instagram during strict focus', 'Social Media', 0, '2026-11-18 03:41:44'),
(33, 26, 'Blocked app opened: Instagram', 'Social Media', 0, '2026-11-18 03:41:44'),
(34, 1, 'Opened YouTube during focus', 'Entertainment', 25, '2026-11-18 04:27:05'),
(35, 27, 'App backgrounded during focus', 'Digital', 10, '2026-11-18 04:36:34'),
(36, 27, 'Opened Instagram during strict focus', 'Social Media', 0, '2026-11-18 04:36:47'),
(37, 27, 'App backgrounded during focus', 'Digital', 10, '2026-11-18 04:40:02'),
(38, 29, 'App backgrounded during focus', 'Digital', 10, '2026-11-18 06:35:03'),
(39, 29, 'Blocked app opened: Instagram', 'Social Media', 0, '2026-11-18 06:35:16'),
(40, 29, 'Blocked app opened: Instagram', 'Social Media', 0, '2026-11-18 06:37:23'),
(41, 29, 'App backgrounded during focus', 'Digital', 10, '2026-11-18 06:37:31'),
(42, 26, 'Opened YouTube during strict focus', 'Video &amp; Streaming', 0, '2026-11-18 06:44:25'),
(43, 30, 'Blocked app opened: YouTube', 'Video &amp; Streaming', 0, '2026-11-18 06:55:22'),
(44, 30, 'Blocked app opened: Instagram', 'Social Media', 0, '2026-11-18 06:55:39'),
(45, 30, 'Blocked app opened: Free Fire India', 'Games', 0, '2026-11-18 06:55:59'),
(46, 30, 'App backgrounded during focus', 'Digital', 10, '2026-11-18 06:58:17'),
(47, 30, 'Opened Instagram during strict focus', 'Social Media', 0, '2026-11-18 07:52:29'),
(48, 30, 'Blocked app opened: YouTube', 'Video &amp; Streaming', 0, '2026-11-18 07:52:35'),
(49, 30, 'Opened YouTube during strict focus', 'Video &amp; Streaming', 0, '2026-11-18 07:52:49'),
(50, 30, 'App backgrounded during focus', 'Digital', 10, '2026-11-18 07:52:56'),
(51, 30, 'App backgrounded during focus', 'Digital', 10, '2026-11-18 07:54:10'),
(52, 30, 'App backgrounded during focus', 'Digital', 10, '2026-11-18 07:57:11'),
(53, 30, 'App backgrounded during focus', 'Digital', 10, '2026-11-18 08:01:39'),
(54, 30, 'App backgrounded during focus', 'Digital', 10, '2026-11-18 08:03:19'),
(55, 30, 'Opened Instagram during strict focus', 'Social Media', 0, '2026-11-19 03:17:03'),
(56, 30, 'Blocked app opened: Instagram', 'Social Media', 0, '2026-11-19 03:17:03'),
(57, 30, 'App backgrounded during focus', 'Digital', 10, '2026-11-19 03:17:23'),
(58, 30, 'Opened Free Fire India during strict focus', 'Games', 0, '2026-11-19 03:17:27'),
(59, 30, 'Blocked app opened: System navigation', 'Utilities', 0, '2026-11-19 03:28:45'),
(60, 30, 'App backgrounded during focus', 'Digital', 20, '2026-11-19 03:28:54'),
(61, 30, 'Opened Amazon Music during strict focus', 'Video &amp; Streaming', 0, '2026-11-19 03:28:56'),
(62, 30, 'Blocked app opened: System navigation', 'Utilities', 0, '2026-11-19 03:29:48'),
(63, 30, 'App backgrounded during focus', 'Digital', 20, '2026-11-19 03:54:23'),
(64, 30, 'Blocked app opened: System UI kits', 'Utilities', 0, '2026-11-19 03:55:00'),
(65, 30, 'App backgrounded during focus', 'Digital', 20, '2026-11-19 03:55:51'),
(66, 30, 'Blocked app opened: System navigation', 'Utilities', 0, '2026-11-19 03:56:04'),
(67, 30, 'Opened Amazon Music during strict focus', 'Video &amp; Streaming', 0, '2026-11-19 03:56:30'),
(68, 30, 'App backgrounded during focus', 'Digital', 10, '2026-11-19 03:56:54'),
(69, 30, 'Blocked app opened: System navigation', 'Utilities', 0, '2026-11-19 03:59:13'),
(70, 30, 'Blocked app opened: System navigation', 'Utilities', 0, '2026-11-19 04:12:23'),
(71, 30, 'App backgrounded during focus', 'Digital', 20, '2026-11-19 04:12:32'),
(72, 30, 'Blocked app opened: System navigation', 'Utilities', 0, '2026-11-19 04:15:57'),
(73, 30, 'Blocked item opened: YouTube', 'Video &amp; Streaming', 0, '2026-11-19 04:43:27'),
(74, 30, 'Blocked app opened: System navigation', 'Utilities', 0, '2026-11-19 04:51:16'),
(75, 30, 'App backgrounded during focus', 'Digital', 10, '2026-11-19 04:52:11'),
(76, 30, 'Blocked app opened: FingerprintUI', 'Utilities', 0, '2026-11-19 04:52:58'),
(77, 30, 'Blocked app opened: System UI kits', 'Utilities', 0, '2026-11-19 04:54:16'),
(78, 30, 'Blocked app opened: System UI kits', 'Utilities', 0, '2026-11-19 04:55:32'),
(79, 30, 'Blocked app opened: System UI kits', 'Utilities', 0, '2026-11-19 04:59:17'),
(80, 30, 'Blocked app opened: System UI kits', 'Utilities', 0, '2026-11-19 05:00:53'),
(81, 30, 'Blocked app opened: Always On Display', 'Utilities', 0, '2026-11-19 05:01:59'),
(82, 30, 'Blocked app opened: WhatsApp', 'Messaging', 0, '2026-11-19 05:03:26'),
(83, 30, 'Opened Instagram during strict focus', 'Social Media', 0, '2026-11-19 05:03:29'),
(84, 30, 'App backgrounded during focus', 'Digital', 10, '2026-11-19 05:03:37'),
(85, 30, 'Opened YouTube during strict focus', 'Video &amp; Streaming', 0, '2026-11-19 05:17:38'),
(86, 30, 'Blocked app opened: YouTube', 'Video &amp; Streaming', 0, '2026-11-19 05:17:38'),
(87, 31, 'Blocked app opened: WhatsApp', 'Messaging', 0, '2026-11-19 06:32:40'),
(88, 33, 'App backgrounded during focus', 'Digital', 10, '2026-11-20 03:46:33'),
(89, 33, 'Blocked app opened: Instagram', 'Social Media', 0, '2026-11-20 03:47:26'),
(90, 33, 'App backgrounded during focus', 'Digital', 10, '2026-11-20 03:47:35'),
(91, 33, 'Opened Instagram during strict focus', 'Social Media', 0, '2026-11-20 03:50:52'),
(92, 33, 'Blocked app opened: Instagram', 'Social Media', 0, '2026-11-20 03:50:53'),
(93, 33, 'Blocked app opened: WhatsApp', 'Messaging', 0, '2026-11-20 05:05:44'),
(94, 34, 'Opened Instagram during strict focus', 'Social Media', 0, '2026-11-20 06:48:24'),
(95, 34, 'Blocked app opened: Instagram', 'Social Media', 0, '2026-11-20 06:48:25'),
(96, 34, 'App backgrounded during focus', 'Digital', 10, '2026-11-20 06:48:33'),
(97, 34, 'Opened Amazon Music during strict focus', 'Video &amp; Streaming', 0, '2026-11-20 06:48:40');

-- --------------------------------------------------------

--
-- Table structure for table `focus_sessions`
--

CREATE TABLE `focus_sessions` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `task_id` int(11) DEFAULT NULL,
  `duration_minutes` int(11) NOT NULL DEFAULT 25,
  `session_type` varchar(50) NOT NULL DEFAULT 'pomodoro',
  `status` enum('completed','abandoned') NOT NULL DEFAULT 'completed',
  `started_at` datetime NOT NULL,
  `completed_at` datetime DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `session_uuid` varchar(64) DEFAULT NULL,
  `tag` varchar(100) DEFAULT 'General'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `focus_sessions`
--

INSERT INTO `focus_sessions` (`id`, `user_id`, `task_id`, `duration_minutes`, `session_type`, `status`, `started_at`, `completed_at`, `created_at`, `session_uuid`, `tag`) VALUES
(1, 3, NULL, 45, 'deep_work', 'completed', '2026-10-27 09:42:47', '2026-10-27 10:27:47', '2026-10-27 09:27:47', NULL, 'General'),
(2, 3, NULL, 15, 'pomodoro', 'abandoned', '2026-10-27 10:12:50', '2026-10-27 10:27:50', '2026-10-27 09:27:50', NULL, 'General'),
(3, 7, NULL, 18, 'deep_work', 'completed', '2026-10-28 04:16:04', '2026-10-28 04:34:04', '2026-10-28 03:34:04', NULL, 'General'),
(4, 7, NULL, 3, 'pomodoro', 'abandoned', '2026-10-28 04:31:43', '2026-10-28 04:34:43', '2026-10-28 03:34:43', NULL, 'General'),
(5, 1, NULL, 1, 'pomodoro', 'completed', '2026-11-05 04:36:02', '2026-11-05 04:37:02', '2026-11-05 03:37:02', NULL, 'General'),
(6, 19, NULL, 5, 'pomodoro', 'completed', '2026-11-05 09:13:11', '2026-11-05 09:18:11', '2026-11-05 03:48:13', NULL, 'General'),
(7, 23, NULL, 5, 'pomodoro', 'completed', '2026-11-05 12:45:05', '2026-11-05 12:50:05', '2026-11-05 07:20:06', NULL, 'General'),
(14, 25, NULL, 5, 'pomodoro', 'completed', '2026-11-16 09:05:32', '2026-11-16 09:10:32', '2026-11-16 03:44:26', NULL, 'General'),
(15, 25, NULL, 5, 'pomodoro', 'completed', '2026-11-16 10:45:55', '2026-11-16 10:50:55', '2026-11-16 05:20:58', NULL, 'General'),
(16, 25, NULL, 10, 'pomodoro', 'completed', '2026-11-16 12:36:53', '2026-11-16 12:46:53', '2026-11-16 07:16:54', NULL, 'General'),
(17, 25, NULL, 5, 'pomodoro', 'completed', '2026-11-17 08:22:27', '2026-11-17 08:27:27', '2026-11-17 02:57:28', NULL, 'General'),
(18, 25, NULL, 25, 'pomodoro', 'completed', '2026-11-17 09:41:54', '2026-11-17 10:06:54', '2026-11-17 04:36:57', NULL, 'General'),
(19, 25, NULL, 5, 'pomodoro', 'completed', '2026-11-17 10:17:57', '2026-11-17 10:22:57', '2026-11-17 04:52:58', NULL, 'General'),
(20, 25, NULL, 2, 'pomodoro', 'completed', '2026-11-17 12:17:15', '2026-11-17 12:19:15', '2026-11-17 06:49:16', NULL, 'Focus Sprint'),
(21, 1, NULL, 25, 'pomodoro', 'completed', '2026-11-17 09:18:49', '2026-11-17 09:43:49', '2026-11-17 08:43:49', NULL, 'Deep Work'),
(22, 26, NULL, 5, 'pomodoro', 'completed', '2026-11-18 09:11:22', '2026-11-18 09:16:22', '2026-11-18 03:46:23', NULL, 'Focus Sprint'),
(23, 1, NULL, 25, 'pomodoro', 'completed', '2026-11-18 09:30:00', '2026-11-18 09:55:00', '2026-11-18 04:27:36', NULL, 'Test Sprint'),
(24, 27, NULL, 5, 'pomodoro', 'completed', '2026-11-18 10:05:41', '2026-11-18 10:10:41', '2026-11-18 04:40:42', NULL, 'Focus Sprint'),
(25, 30, NULL, 5, 'pomodoro', 'completed', '2026-11-18 12:25:16', '2026-11-18 12:30:16', '2026-11-18 07:00:16', NULL, 'Focus Sprint'),
(26, 30, NULL, 5, 'pomodoro', 'completed', '2026-11-18 12:58:51', '2026-11-18 13:03:51', '2026-11-18 07:33:52', NULL, 'Focus Sprint'),
(27, 30, NULL, 1, 'pomodoro', 'completed', '2026-11-19 09:26:07', '2026-11-19 09:27:07', '2026-11-19 03:57:07', NULL, 'Focus Sprint'),
(28, 31, NULL, 1, 'pomodoro', 'completed', '2026-11-19 10:54:14', '2026-11-19 10:55:14', '2026-11-19 05:25:14', NULL, 'Focus Sprint'),
(29, 33, NULL, 5, 'pomodoro', 'completed', '2026-11-20 09:16:15', '2026-11-20 09:21:15', '2026-11-20 03:51:16', NULL, 'Focus Sprint'),
(30, 33, NULL, 5, 'pomodoro', 'completed', '2026-11-20 10:35:07', '2026-11-20 10:40:07', '2026-11-20 05:10:08', NULL, 'Focus Sprint'),
(31, 34, NULL, 5, 'pomodoro', 'completed', '2026-11-20 12:15:03', '2026-11-20 12:20:03', '2026-11-20 06:50:03', NULL, 'Focus Sprint');

-- --------------------------------------------------------

--
-- Table structure for table `habits`
--

CREATE TABLE `habits` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `icon` varchar(50) NOT NULL DEFAULT '⚡',
  `frequency` varchar(50) NOT NULL DEFAULT 'daily',
  `streak_count` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `habits`
--

INSERT INTO `habits` (`id`, `user_id`, `title`, `icon`, `frequency`, `streak_count`, `created_at`) VALUES
(1, 7, 'Deep Focus Session', '⚡', 'daily', 5, '2026-10-29 07:07:41'),
(2, 7, 'Read Technical Docs', '📖', 'daily', 3, '2026-10-29 07:07:41'),
(3, 7, 'Daily Code Review', '💻', 'daily', 2, '2026-10-29 07:07:41'),
(4, 10, 'Deep Focus Session', '⚡', 'daily', 0, '2026-10-29 07:12:05'),
(5, 10, 'Read Technical Docs', '📖', 'daily', 0, '2026-10-29 07:12:05'),
(6, 10, 'Daily Code Review', '💻', 'daily', 0, '2026-10-29 07:12:05'),
(7, 10, 'read', 'repeat', 'weekly', 0, '2026-10-29 08:33:20'),
(8, 11, 'djsjej', 'bolt', 'daily', 1, '2026-10-30 07:44:55'),
(9, 12, 'reaf', 'book', 'weekly', 1, '2026-10-31 06:30:04'),
(10, 14, 'ngyjd', 'bolt', 'daily', 1, '2026-11-02 07:05:15'),
(11, 18, 'workout', 'fitness', 'weekdays', 1, '2026-11-04 03:52:17'),
(12, 18, 'Read 20 pages daily', 'bolt', 'daily', 1, '2026-11-04 04:47:44'),
(13, 22, 'called editing', 'bolt', 'daily', 0, '2026-11-05 07:07:54'),
(14, 23, 'cmydlue', 'star', 'daily', 1, '2026-11-05 07:27:02'),
(15, 23, 'z x x', 'star', 'daily', 1, '2026-11-05 07:27:33'),
(16, 24, 'read', 'star', 'daily', 0, '2026-11-06 03:04:11'),
(17, 24, 'code', 'code', 'daily', 0, '2026-11-06 03:04:17'),
(18, 25, 'dhdhsj', 'book', 'daily', 3, '2026-11-06 08:36:07'),
(19, 25, 'bdbdb', 'book', 'daily', 2, '2026-11-06 08:36:12'),
(20, 26, 'read', 'book', 'daily', 1, '2026-11-18 03:40:25'),
(21, 29, 'Coding', 'bolt', 'daily', 1, '2026-11-18 06:40:27'),
(22, 30, 'brush', 'bolt', 'daily', 0, '2026-11-19 03:11:17'),
(23, 30, 'workout with dumbbell avatar', 'bolt', 'daily', 0, '2026-11-19 04:15:51'),
(24, 31, 'read', 'book', 'daily', 1, '2026-11-19 05:23:46'),
(25, 33, 'Read 15 pages', 'book', 'weekly', 1, '2026-11-20 03:41:55'),
(26, 33, 'j', 'star', 'Wed,Thu', 1, '2026-11-20 05:00:23'),
(27, 33, 'jo', 'star', 'weekdays', 1, '2026-11-20 05:00:40'),
(28, 33, 'hdbd', 'star', 'Sun,Sat', 1, '2026-11-20 05:00:56'),
(29, 33, 'dj7r', 'book', 'Sat', 1, '2026-11-20 05:01:30'),
(30, 33, 'uufu', 'star', 'Fri', 1, '2026-11-20 05:01:55'),
(31, 33, 'fc', 'star', 'Fri', 1, '2026-11-20 05:02:22'),
(32, 34, 'h', 'star', 'Fri', 1, '2026-11-20 06:45:21');

-- --------------------------------------------------------

--
-- Table structure for table `habit_logs`
--

CREATE TABLE `habit_logs` (
  `id` int(11) NOT NULL,
  `habit_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `completed_date` date NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `habit_logs`
--

INSERT INTO `habit_logs` (`id`, `habit_id`, `user_id`, `completed_date`, `created_at`) VALUES
(14, 8, 11, '2026-10-31', '2026-10-31 05:08:41'),
(15, 9, 12, '2026-10-31', '2026-10-31 06:30:05'),
(16, 10, 14, '2026-11-02', '2026-11-02 07:05:16'),
(19, 11, 18, '2026-11-04', '2026-11-04 04:18:06'),
(20, 12, 18, '2026-11-04', '2026-11-04 04:47:57'),
(71, 14, 23, '2026-11-05', '2026-11-05 07:27:09'),
(72, 15, 23, '2026-11-05', '2026-11-05 07:27:39'),
(78, 19, 25, '2026-11-06', '2026-11-06 09:00:59'),
(79, 18, 25, '2026-11-06', '2026-11-06 09:01:03'),
(81, 19, 25, '2026-11-16', '2026-11-16 03:00:40'),
(82, 18, 25, '2026-11-16', '2026-11-16 03:28:26'),
(83, 18, 25, '2026-11-17', '2026-11-17 02:52:41'),
(86, 20, 26, '2026-11-18', '2026-11-18 03:40:45'),
(89, 21, 29, '2026-11-18', '2026-11-18 06:40:35'),
(106, 24, 31, '2026-11-19', '2026-11-19 05:23:51'),
(121, 29, 33, '2026-11-20', '2026-11-20 05:02:08'),
(122, 28, 33, '2026-11-20', '2026-11-20 05:02:09'),
(123, 30, 33, '2026-11-20', '2026-11-20 05:02:10'),
(124, 27, 33, '2026-11-20', '2026-11-20 05:02:12'),
(125, 26, 33, '2026-11-20', '2026-11-20 05:02:12'),
(127, 25, 33, '2026-11-20', '2026-11-20 05:02:14'),
(128, 31, 33, '2026-11-20', '2026-11-20 05:02:24'),
(130, 32, 34, '2026-11-20', '2026-11-20 06:45:33');

-- --------------------------------------------------------

--
-- Table structure for table `tasks`
--

CREATE TABLE `tasks` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `category` varchar(100) NOT NULL DEFAULT 'General',
  `priority` enum('low','medium','high') NOT NULL DEFAULT 'medium',
  `due_date` date DEFAULT NULL,
  `is_completed` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `scheduled_time` varchar(100) DEFAULT NULL,
  `deadline_timestamp` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tasks`
--

INSERT INTO `tasks` (`id`, `user_id`, `title`, `description`, `category`, `priority`, `due_date`, `is_completed`, `created_at`, `updated_at`, `scheduled_time`, `deadline_timestamp`) VALUES
(2, 3, 'Implement Flow Backend Endpoints', 'Build and verify all 5 core modules with PDO', 'Development', 'high', '2026-10-30', 0, '2026-10-28 03:09:44', '2026-10-28 03:09:44', NULL, NULL),
(7, 7, 'Complete FocusFlow MVVM Architecture', 'Connect Jetpack Compose with Retrofit backend', 'Coding', 'high', '2026-10-29', 1, '2026-10-29 07:09:02', '2026-10-29 07:09:08', NULL, NULL),
(8, 7, 'Review Pomodoro Session Cycles', 'Ensure 25m focus and 5m short break rhythm works', 'Focus', 'medium', '2026-10-29', 1, '2026-10-29 07:09:02', '2026-10-29 07:09:10', NULL, NULL),
(9, 7, 'Weekly Strategy Planning', 'Set intentions for the upcoming project sprint', 'Planning', 'low', '2026-10-30', 1, '2026-10-29 07:09:02', '2026-10-29 07:09:13', NULL, NULL),
(17, 10, 'snskysiy', '', 'Creative', 'high', '0000-00-00', 0, '2026-10-29 09:00:33', '2026-11-04 07:45:47', NULL, NULL),
(19, 11, 'editing', '', 'Creative', 'medium', '0000-00-00', 1, '2026-10-30 05:07:58', '2026-10-30 07:52:38', NULL, NULL),
(20, 11, 'editing', '', 'Creative', 'medium', '0000-00-00', 0, '2026-10-31 05:10:27', '2026-10-31 05:13:25', NULL, NULL),
(21, 12, 'eye5', '', 'Deep Work', 'medium', '0000-00-00', 1, '2026-10-31 06:30:38', '2026-10-31 06:30:39', NULL, NULL),
(28, 24, 'sido', '', 'Deep Work', 'medium', '0000-00-00', 0, '2026-11-06 03:08:38', '2026-11-06 03:10:57', NULL, NULL),
(29, 25, 'hdhsdhej', '', 'Deep Work', 'medium', '0000-00-00', 1, '2026-11-06 08:35:08', '2026-11-16 03:28:24', NULL, NULL),
(30, 25, 'dhejdjdb', '', 'Deep Work', 'medium', '0000-00-00', 1, '2026-11-06 08:35:17', '2026-11-06 09:00:54', NULL, NULL),
(31, 25, 'jydodi', '', 'Deep Work', 'medium', '0000-00-00', 1, '2026-11-16 03:00:35', '2026-11-16 03:00:36', NULL, NULL),
(32, 25, 'jccjjc', '', 'Deep Work', 'medium', '0000-00-00', 1, '2026-11-17 04:54:08', '2026-11-17 08:12:17', NULL, NULL),
(33, 25, 'snsn', '', 'Deep Work', 'medium', '0000-00-00', 1, '2026-11-17 04:54:31', '2026-11-17 08:12:17', NULL, NULL),
(34, 1, 'Test Audit Task', 'Testing regression', 'Work', 'high', '2026-11-17', 0, '2026-11-17 08:43:01', '2026-11-17 08:43:01', '14:30', NULL),
(35, 26, 'code', '', 'Deep Work', 'high', '0000-00-00', 1, '2026-11-18 03:39:49', '2026-11-18 03:43:56', '02:00 PM', NULL),
(36, 26, 'edit', '', 'Deep Work', 'medium', '0000-00-00', 1, '2026-11-18 03:40:03', '2026-11-18 03:43:58', '09:00 AM', NULL),
(37, 29, 'Coding', '', 'Coding', 'medium', '0000-00-00', 1, '2026-11-18 06:38:59', '2026-11-18 06:39:02', '09:00 AM', NULL),
(38, 29, 'hj', '', 'Deep Work', 'medium', '0000-00-00', 1, '2026-11-18 06:40:01', '2026-11-18 06:40:10', '09:00 AM', NULL),
(39, 26, 'fth', '', 'Deep Work', 'medium', '0000-00-00', 0, '2026-11-18 06:43:51', '2026-11-18 06:43:51', '09:00 AM', NULL),
(40, 30, 'edit', '', 'Creative', 'high', '0000-00-00', 1, '2026-11-18 07:15:44', '2026-11-18 07:50:20', '07:00 PM', NULL),
(42, 30, 'edit', '', 'Deep Work', 'high', '0000-00-00', 1, '2026-11-18 07:40:12', '2026-11-18 07:50:12', '01:11 PM', 1794987660000),
(57, 30, 'Finish ML Report with high priority', 'Created automatically by Groot AI', 'General', 'medium', '0000-00-00', 0, '2026-11-19 03:11:02', '2026-11-19 03:11:02', NULL, NULL),
(58, 31, 'edit', '', 'Creative', 'high', '0000-00-00', 1, '2026-11-19 05:23:29', '2026-11-19 05:25:10', '09:00 AM', 1795750200000),
(59, 31, 'editing', '', 'Deep Work', 'medium', '0000-00-00', 0, '2026-11-19 06:31:50', '2026-11-19 06:31:50', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `avatar` text DEFAULT NULL,
  `bio` text DEFAULT NULL,
  `email` varchar(150) NOT NULL,
  `fcm_token` text DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `otp` varchar(6) DEFAULT NULL,
  `otp_expiry` datetime DEFAULT NULL,
  `is_verified` tinyint(1) DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `avatar_url` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `avatar`, `bio`, `email`, `fcm_token`, `phone`, `password`, `otp`, `otp_expiry`, `is_verified`, `created_at`, `avatar_url`) VALUES
(1, 'Sri Sai', NULL, NULL, 'sri.sai@example.com', 'ehM8iXbcRgKpY9j-7zdZOQ:APA91bFnCbVSVOM7phC-srlKTJc0xjutP1iXfVnxKErBxpEWDCDNmLvl8AmJdfPOfP2gruVPpPwe8SHryQwLikDuFCXdJSHC1XYwMjK7H6Ekui77kfKa4KE', NULL, 'password123', NULL, NULL, 0, '2026-10-31 05:21:03', NULL),
(3, 'Sai Kumar', 'uploads/user_3_1793076594.jpg', 'B.sc AI&DS Student', 'sai123@gmail.com', NULL, NULL, '$2y$10$QYJEkyZ0MXow.ZguYy3NduR5qqRltacXuPeLD9wWV5Bs7TOD9CCaK', NULL, NULL, 0, '2026-10-26 06:50:22', NULL),
(4, 'dev', NULL, NULL, 'dev321@gmail.com', NULL, NULL, '$2y$10$LnM7wDdwQ.kJF04YBkQrq.x7aAhI1e5xnZfJ3I7R9GWex1fW.VD3S', NULL, NULL, 0, '2026-10-26 06:54:54', NULL),
(5, 'Flow User', NULL, NULL, 'test_flow@example.com', NULL, NULL, '$2y$10$RObxKsnYX6HI3kN7sslcA.bcCr5xhsdHDMA6TNguCer3lB0FZnBtu', NULL, NULL, 0, '2026-10-27 08:33:52', NULL),
(6, 'Sai Kumar', NULL, NULL, 'sai_dev@example.com', NULL, NULL, '$2y$10$8x1jUl2Y7UhyXJXwBeP4WuSeBNMu82udHBtUNaJoLcS5s9WOzpAcK', NULL, NULL, 0, '2026-10-27 09:26:26', NULL),
(7, 'YUVANDHAN', '👤', 'Deep work enthusiast & Computer Science researcher', 'yuvadhamsubah@gmail.com', NULL, NULL, '$2y$10$/oIo/Fm2fRUmjK9HsejCGu2GQ5AN9GZMEoiloajIombAMNV4bv7zK', NULL, NULL, 0, '2026-10-28 02:54:20', NULL),
(8, 'sri sai', NULL, NULL, 'saiprince7329@gmail.com', NULL, NULL, '$2y$10$UIOvK7MeoflFeJ./YAY79uv0D6aOiFu1KFWFCYOEIFbPRh.dUxpTK', NULL, NULL, 0, '2026-10-29 04:34:34', NULL),
(9, 'Kishore', NULL, NULL, 'kishore12345@gmail.com', NULL, NULL, '$2y$10$ysvW124uOxRW.DKZu9z87udxaOgRmHacb46rjd/30W9NQ/ML8ISTu', NULL, NULL, 0, '2026-10-29 04:40:44', NULL),
(10, 'jp', 'http://reaction-union-sublevel.ngrok-free.dev/flow_backend/uploads/avatars/user_10_1793774218.jpg', 'Student', 'jp123@gmail.com', 'fME-7A6mT32_ZmB_rDXgxK:APA91bGfApnDyJl7QLqS_s-rBEK8-drgpZcw5NVAKz51SVQunVCUpKcHraoihXWfoTJof3c1FdrrwAKMTDdStpVcpYqOYGhy2oIvZccuonMBqeeIzdfBhik', NULL, '$2y$10$3DXY9hL/IPLnanX8mepmYeadULQH.uAhn1VgsG/8DDpv6UTJcJbT2', NULL, NULL, 0, '2026-10-29 05:01:43', 'http://reaction-union-sublevel.ngrok-free.dev/flow_backend/uploads/avatars/user_10_1793774218.jpg'),
(11, 'vetri', 'http://reaction-union-sublevel.ngrok-free.dev/flow_backend/uploads/avatars/user_11_1793430298.jpg', 'student', 'vetriff@gmail.com', NULL, NULL, '$2y$10$KiY8tFS2wUcNOEAAGgubiespqPFWujLZRKre.b5veTv6VroDFv3JO', NULL, NULL, 0, '2026-10-30 03:32:04', 'http://reaction-union-sublevel.ngrok-free.dev/flow_backend/uploads/avatars/user_11_1793430298.jpg'),
(12, 'AKASH', 'content://media/picker_get_content/0/com.android.providers.media.photopicker/media/1000071707', 'student', 'user@focusflow.app', NULL, NULL, '$2y$10$eSj9PjYNrGb5qXCwzAjdOuJMX0Dk5mLbDl6j145pdrLHmtZBPBi6e', NULL, NULL, 0, '2026-10-31 06:28:16', 'content://media/picker_get_content/0/com.android.providers.media.photopicker/media/1000071707'),
(13, 'yuvadhan kishore', NULL, NULL, 'vetiff@gmail.com', NULL, NULL, '$2y$10$rf0VVvkdfJEQ7.z68eH6H.uOZC3jFYmu71n7GSIWQ2varj2EV7xPe', NULL, NULL, 0, '2026-10-31 07:06:50', NULL),
(14, 'Ajay', 'http://reaction-union-sublevel.ngrok-free.dev/flow_backend/uploads/avatars/user_14_1793587976.jpg', 'Student', 'ajay123@gmail.com', NULL, NULL, '$2y$10$QAy1qHx1zo4s7runD6KS0OfKhUSfb/Q3U9cOW6JPnpWx8hWB5cmCG', NULL, NULL, 0, '2026-11-02 02:51:05', 'http://reaction-union-sublevel.ngrok-free.dev/flow_backend/uploads/avatars/user_14_1793587976.jpg'),
(15, 'madesh', 'http://reaction-union-sublevel.ngrok-free.dev/flow_backend/uploads/avatars/user_15_1793610510.jpg', 'student', 'gopi123@gmail.com', 'fME-7A6mT32_ZmB_rDXgxK:APA91bGfApnDyJl7QLqS_s-rBEK8-drgpZcw5NVAKz51SVQunVCUpKcHraoihXWfoTJof3c1FdrrwAKMTDdStpVcpYqOYGhy2oIvZccuonMBqeeIzdfBhik', NULL, '$2y$10$S7LLkpe7JnbLgOaWkEVlyenlkkmA/dtTcqwlJvb0HhWA.dmMoCax6', NULL, NULL, 0, '2026-11-02 03:29:53', 'http://reaction-union-sublevel.ngrok-free.dev/flow_backend/uploads/avatars/user_15_1793610510.jpg'),
(16, 'Arul', NULL, NULL, 'arul@gmail.com', 'fME-7A6mT32_ZmB_rDXgxK:APA91bGfApnDyJl7QLqS_s-rBEK8-drgpZcw5NVAKz51SVQunVCUpKcHraoihXWfoTJof3c1FdrrwAKMTDdStpVcpYqOYGhy2oIvZccuonMBqeeIzdfBhik', NULL, '$2y$10$KuXhbtFXdfH8Ex3KDqD1weANrIKOwDk9LTEry7DHXhuYWHhrsi8Iy', NULL, NULL, 0, '2026-11-02 08:38:56', NULL),
(17, 'Pammal kishore', 'avatar:code', 'stu', 'pammal123@gmail.com', 'fME-7A6mT32_ZmB_rDXgxK:APA91bGfApnDyJl7QLqS_s-rBEK8-drgpZcw5NVAKz51SVQunVCUpKcHraoihXWfoTJof3c1FdrrwAKMTDdStpVcpYqOYGhy2oIvZccuonMBqeeIzdfBhik', NULL, '$2y$10$vceqwGTtmc/I0upp8jGAf.mNjl.hOnBV7T8eup0Y4yhmuWGHKXzYa', NULL, NULL, 0, '2026-11-04 03:26:53', 'avatar:code'),
(18, 'jp', 'http://reaction-union-sublevel.ngrok-free.dev/flow_backend/uploads/avatars/user_18_1793768883.jpg', 'learning', 'jp1234@gmail.com', 'fME-7A6mT32_ZmB_rDXgxK:APA91bGfApnDyJl7QLqS_s-rBEK8-drgpZcw5NVAKz51SVQunVCUpKcHraoihXWfoTJof3c1FdrrwAKMTDdStpVcpYqOYGhy2oIvZccuonMBqeeIzdfBhik', NULL, '$2y$10$Fjh0AR1zqomQR/6hwVG7GeHndvE2OjX0Xfm4l6SbCfDGoi4.w9a9y', NULL, NULL, 0, '2026-11-04 03:43:29', 'http://reaction-union-sublevel.ngrok-free.dev/flow_backend/uploads/avatars/user_18_1793768883.jpg'),
(19, 'devi', NULL, 'hiii', 'devi123@gmail.com', 'fME-7A6mT32_ZmB_rDXgxK:APA91bGfApnDyJl7QLqS_s-rBEK8-drgpZcw5NVAKz51SVQunVCUpKcHraoihXWfoTJof3c1FdrrwAKMTDdStpVcpYqOYGhy2oIvZccuonMBqeeIzdfBhik', NULL, '$2y$10$uJyWUrdSK8c.Y0IWpMEdBuRSGAsYl7xXHAkHePke25bSKUnMKTe7i', NULL, NULL, 0, '2026-11-05 03:40:00', NULL),
(20, 'lak', NULL, NULL, 'lak123@gmail.com', 'fME-7A6mT32_ZmB_rDXgxK:APA91bGfApnDyJl7QLqS_s-rBEK8-drgpZcw5NVAKz51SVQunVCUpKcHraoihXWfoTJof3c1FdrrwAKMTDdStpVcpYqOYGhy2oIvZccuonMBqeeIzdfBhik', NULL, '$2y$10$MHI7X7jhdEftApdAS5n.AeRNOKz8B41vGS6aXT/xyolLzz.jFifG2', NULL, NULL, 0, '2026-11-05 04:43:20', NULL),
(21, 'Nakku', NULL, NULL, 'nak123@gmail.com', 'djRtLYrGSOGOzitCVF3Ktv:APA91bEZH6C4BFcHqrq6xSTQuLV_1lPChlZiZXlZU-TVf4BcloVJU6wsT6jogi48zqrx5MM3nbgZiHuS64VzKT3FmObQRI72-TjOaewy9SCo7M61UzfzCkQ', NULL, '$2y$10$IqR8EFFlBHLblD/5LXHsVe8lZJdbIe6SocEByz2FLyvfVr6S7k/7K', NULL, NULL, 0, '2026-11-05 04:59:10', NULL),
(22, 'aju', NULL, NULL, 'aj56@gmail.com', 'fME-7A6mT32_ZmB_rDXgxK:APA91bGfApnDyJl7QLqS_s-rBEK8-drgpZcw5NVAKz51SVQunVCUpKcHraoihXWfoTJof3c1FdrrwAKMTDdStpVcpYqOYGhy2oIvZccuonMBqeeIzdfBhik', NULL, '$2y$10$CucuuPPXtPqoXzT.euLMf.oGebWhv56D1sBANq3aFLRjimLKsHxF6', NULL, NULL, 0, '2026-11-05 07:03:42', NULL),
(23, 'Yuva', 'http://reaction-union-sublevel.ngrok-free.dev/flow_backend/uploads/avatars/user_23_1793863188.jpg', 'hogif', 'yuv123@gmail.com', 'cy_SYqeDTRWWRPeYrnER1S:APA91bFyLwvxAQF_nz2zWorE3WgWJrXrb9VlD_jMo8SubB3GolCJUEHcDUInB1V1b0E_1fDDa_O6Kl3dD6dAEXvvTyNmM6kJ9JaD-Gq9mcszJHrb2p7Tt_8', NULL, '$2y$10$DYyaeussRNDsBog6bq6GJuBWE329mG2.Oy/a2AHJOkP5TQrGCWOaa', NULL, NULL, 0, '2026-11-05 07:14:28', 'http://reaction-union-sublevel.ngrok-free.dev/flow_backend/uploads/avatars/user_23_1793863188.jpg'),
(24, 'vijay', 'http://reaction-union-sublevel.ngrok-free.dev/flow_backend/uploads/avatars/user_24_1793934502.jpg', 'student', 'vj12@gmail.xom', 'fME-7A6mT32_ZmB_rDXgxK:APA91bGfApnDyJl7QLqS_s-rBEK8-drgpZcw5NVAKz51SVQunVCUpKcHraoihXWfoTJof3c1FdrrwAKMTDdStpVcpYqOYGhy2oIvZccuonMBqeeIzdfBhik', NULL, '$2y$10$62qqprYsISkKs6TKp9/Fmev4MG.nwjTT0CMSpROR3mQCqGsPr3A5e', NULL, NULL, 0, '2026-11-05 07:17:14', 'http://reaction-union-sublevel.ngrok-free.dev/flow_backend/uploads/avatars/user_24_1793934502.jpg'),
(25, 'kk', 'http://reaction-union-sublevel.ngrok-free.dev/flow_backend/uploads/avatars/user_25_1794907312.jpg', 'stud', 'alex1@gmail.com', 'e9xGozqORU-vY0kqrm78jK:APA91bGWkkq9zuczTaejUB-i49A-wzaxWSMCNHrOggiiFhzJoKKMAJAP2INhyf71KNDmdZMmyO7HuKBc2EELqz2O2r0F_574cmOxKSNctprHNkcmH5lX8Dg', NULL, '$2y$10$S5lg0ODd/wPq0xDDTIuIFemEBA1kGUiYcOn008CeYyFrwF03z98Pe', NULL, NULL, 0, '2026-11-06 04:59:28', 'http://reaction-union-sublevel.ngrok-free.dev/flow_backend/uploads/avatars/user_25_1794907312.jpg'),
(26, 'sri', 'avatar:brain', 'engineer', 'sri1@gmail.com', 'eOTbtyR0TPiEUnRtCppoEe:APA91bE92XtREkTvtf4zYjgcmdBfh_z7qa_B34SnaYQ-ynwrTHywjDlbk7VP9W-oJG4BrBkqJu5-L00gtRWChdj_-c_A2M3zUyrexrxfVyBl3Z3WpLHmvWA', NULL, '$2y$10$kENMv28qL7SFv2j3Yxr2XO2rpu6igkUfFfjb7kEoQJLWW1TNI//lG', NULL, NULL, 0, '2026-11-18 03:28:35', 'avatar:brain'),
(27, 'dka', 'http://reaction-union-sublevel.ngrok-free.dev/flow_backend/uploads/avatars/user_27_1794976747.jpg', 'hi', 'dka19@gmail.coz', 'e9xGozqORU-vY0kqrm78jK:APA91bGWkkq9zuczTaejUB-i49A-wzaxWSMCNHrOggiiFhzJoKKMAJAP2INhyf71KNDmdZMmyO7HuKBc2EELqz2O2r0F_574cmOxKSNctprHNkcmH5lX8Dg', NULL, '$2y$10$LLo2sHwJ1ZTKR1LgjjFrfepZxj.vdq9M4EbxNEDT5HD6fVxHa0mJ6', NULL, NULL, 0, '2026-11-18 04:31:46', 'http://reaction-union-sublevel.ngrok-free.dev/flow_backend/uploads/avatars/user_27_1794976747.jpg'),
(28, 'bala', 'http://reaction-union-sublevel.ngrok-free.dev/flow_backend/uploads/avatars/user_28_1794978909.jpg', NULL, 'bm@gmqil.com', 'e9xGozqORU-vY0kqrm78jK:APA91bGWkkq9zuczTaejUB-i49A-wzaxWSMCNHrOggiiFhzJoKKMAJAP2INhyf71KNDmdZMmyO7HuKBc2EELqz2O2r0F_574cmOxKSNctprHNkcmH5lX8Dg', NULL, '$2y$10$q1yj8RZ5rMKGps5miHpyNOAkbFIBLROX.p4RnU7EjDiMzuHIkAKrW', NULL, NULL, 0, '2026-11-18 05:14:33', 'http://reaction-union-sublevel.ngrok-free.dev/flow_backend/uploads/avatars/user_28_1794978909.jpg'),
(29, 'nag', NULL, NULL, 'nag@gmail.com', 'eOTbtyR0TPiEUnRtCppoEe:APA91bE92XtREkTvtf4zYjgcmdBfh_z7qa_B34SnaYQ-ynwrTHywjDlbk7VP9W-oJG4BrBkqJu5-L00gtRWChdj_-c_A2M3zUyrexrxfVyBl3Z3WpLHmvWA', NULL, '$2y$10$.poHVXhv21jvGIjyMA95u.bPZuBn2pp0mxAxCgN7d2XhP0MWE7Qh.', NULL, NULL, 0, '2026-11-18 05:26:54', NULL),
(30, 'Sri Sai', 'http://reaction-union-sublevel.ngrok-free.dev/flow_backend/uploads/avatars/user_30_1795058772.jpg', 'student', 'srisai7329@gmail.com', 'ek9gkasNTEC931YyTVZ16s:APA91bHr_J4lx-vgOW8ea9QPLgeqKgwFdRa9aqqWYciz73FFnafmg-oIsZtjjdKHsq9bSvfNKiMHb79xREXsiA1l0blhdOCgiVyZFSXwfYBEwe2SJnB2UEY', NULL, '$2y$10$4zO.YacfyRFJyNr2viDuPOw.cwm5hJl5ZxXleQcCHzuuavllQtG9W', NULL, NULL, 0, '2026-11-18 06:51:32', 'http://reaction-union-sublevel.ngrok-free.dev/flow_backend/uploads/avatars/user_30_1795058772.jpg'),
(31, 'Logan', 'avatar:palette', 'working professional', 'logan9@gmail.com', 'ek9gkasNTEC931YyTVZ16s:APA91bHr_J4lx-vgOW8ea9QPLgeqKgwFdRa9aqqWYciz73FFnafmg-oIsZtjjdKHsq9bSvfNKiMHb79xREXsiA1l0blhdOCgiVyZFSXwfYBEwe2SJnB2UEY', NULL, '$2y$10$c2Rj/JU0VYf9qnopLXlrCuaBFMnkUHLvroN36ZznNwChBM0DkMBSO', NULL, NULL, 0, '2026-11-19 05:20:20', 'avatar:palette'),
(32, 'Sai', NULL, NULL, 'sai7829@gmail.com', 'eg_gboo1TFWFzPNs_4h_rS:APA91bFQcpYNnaa7dvAcMbQSrSkqeLXQSLuVFUnM1Hviljgvl-sYtnWLNjwU2ej6SR9Gzyn-6jEUZKDVtsB8EUFB1h4EqxAwWQYtUNuvRLzhh51Y-bTs4_o', NULL, '$2y$10$WlbvM5E9jEBXvDnu95.fRO.r9CZUbmSsC9Ahd6tixHUMAtR7BQZie', NULL, NULL, 0, '2026-11-20 03:22:15', NULL),
(33, 'Nitesh', 'http://reaction-union-sublevel.ngrok-free.dev/flow_backend/uploads/avatars/user_33_1795145794.jpg', 'Clg student at saveetha university', 'toffee123@gmail.com', 'eg_gboo1TFWFzPNs_4h_rS:APA91bFQcpYNnaa7dvAcMbQSrSkqeLXQSLuVFUnM1Hviljgvl-sYtnWLNjwU2ej6SR9Gzyn-6jEUZKDVtsB8EUFB1h4EqxAwWQYtUNuvRLzhh51Y-bTs4_o', NULL, '$2y$10$/3gbkA6USsaD.Oh4g99Mx.tErpt.myecFQxcHkXbXrW1qw32fiFAi', NULL, NULL, 0, '2026-11-20 03:25:45', 'http://reaction-union-sublevel.ngrok-free.dev/flow_backend/uploads/avatars/user_33_1795145794.jpg'),
(34, 'kishore', NULL, NULL, 'kishore1@gmail.com', 'ehM8iXbcRgKpY9j-7zdZOQ:APA91bFnCbVSVOM7phC-srlKTJc0xjutP1iXfVnxKErBxpEWDCDNmLvl8AmJdfPOfP2gruVPpPwe8SHryQwLikDuFCXdJSHC1XYwMjK7H6Ekui77kfKa4KE', NULL, '$2y$10$ASlthBAXDcvLMTDMjvJW5eafCoDmFZS4Pa.2XpVgh8.WhFSzcWEHu', NULL, NULL, 0, '2026-11-20 06:43:05', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user_preferences`
--

CREATE TABLE `user_preferences` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `primary_goal` varchar(100) NOT NULL DEFAULT 'Study',
  `preferred_focus_duration` int(11) NOT NULL DEFAULT 45,
  `daily_focus_goal_minutes` int(11) NOT NULL DEFAULT 210,
  `reminders_enabled` tinyint(1) NOT NULL DEFAULT 1,
  `reminder_time` varchar(10) NOT NULL DEFAULT '09:00 AM',
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_preferences`
--

INSERT INTO `user_preferences` (`id`, `user_id`, `primary_goal`, `preferred_focus_duration`, `daily_focus_goal_minutes`, `reminders_enabled`, `reminder_time`, `updated_at`) VALUES
(1, 3, 'Work', 45, 210, 1, '09:00 AM', '2026-10-27 09:27:25'),
(3, 7, 'Work', 60, 120, 1, '06:00 AM', '2026-10-28 03:07:13'),
(8, 10, 'Study', 60, 720, 1, '09:00 AM', '2026-11-04 07:46:03'),
(11, 11, 'Creative Work', 25, 180, 1, '09:00 AM', '2026-10-30 03:32:33'),
(13, 1, 'Study', 50, 300, 1, '09:00 AM', '2026-10-31 05:21:48'),
(15, 12, 'Coding & Projects', 60, 720, 1, '09:00 AM', '2026-10-31 06:29:12'),
(20, 13, 'Creative Work', 60, 480, 1, '09:00 AM', '2026-10-31 07:07:16'),
(21, 14, 'Coding & Projects', 25, 240, 1, '09:00 AM', '2026-11-02 02:51:17'),
(22, 15, 'Study', 45, 210, 1, '02:52 PM', '2026-11-02 09:22:43'),
(23, 16, 'Coding & Projects', 45, 240, 1, '09:00 AM', '2026-11-04 04:09:16'),
(36, 17, 'Study & Academics', 60, 720, 1, '09:00 AM', '2026-11-04 03:27:03'),
(37, 18, 'Study', 45, 210, 1, '09:50 AM', '2026-11-04 05:08:52'),
(65, 19, 'Deep Work', 60, 720, 1, '09:00 AM', '2026-11-05 03:40:08'),
(66, 20, 'Coding & Projects', 25, 240, 1, '09:00 AM', '2026-11-05 04:43:25'),
(67, 21, 'Coding & Projects', 25, 240, 1, '09:00 AM', '2026-11-05 04:59:12'),
(68, 22, 'Coding & Projects', 25, 240, 1, '09:00 AM', '2026-11-05 07:03:44'),
(69, 23, 'Study', 45, 210, 1, '02:30 PM', '2026-11-05 07:25:47'),
(70, 24, 'Study', 60, 720, 1, '09:00 AM', '2026-11-06 03:09:39'),
(88, 25, 'Study', 45, 210, 1, '08:30 AM', '2026-11-17 02:53:41'),
(108, 26, 'Study', 25, 180, 1, '09:00 AM', '2026-11-18 06:44:03'),
(111, 27, 'editing', 25, 720, 1, '09:00 AM', '2026-11-18 04:32:35'),
(112, 28, 'Coding &amp; Projects', 25, 240, 1, '09:00 AM', '2026-11-18 05:14:54'),
(113, 29, 'Coding &amp; Projects', 25, 240, 1, '09:00 AM', '2026-11-18 05:26:57'),
(117, 30, 'Study', 60, 720, 1, '09:00 AM', '2026-11-19 03:26:44'),
(122, 31, 'Study', 45, 210, 1, '06:30 PM', '2026-11-19 05:22:16'),
(129, 32, 'Video editing', 25, 60, 1, '09:00 AM', '2026-11-20 03:23:48'),
(130, 33, 'Study', 45, 210, 1, '09:08 AM', '2026-11-20 03:37:12'),
(137, 34, 'Creative Work', 25, 120, 1, '09:00 AM', '2026-11-20 06:43:16');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `app_settings`
--
ALTER TABLE `app_settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_id` (`user_id`);

--
-- Indexes for table `distraction_logs`
--
ALTER TABLE `distraction_logs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_distraction_user` (`user_id`),
  ADD KEY `idx_distraction_created` (`user_id`,`created_at`);

--
-- Indexes for table `focus_sessions`
--
ALTER TABLE `focus_sessions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `session_uuid` (`session_uuid`),
  ADD KEY `idx_focus_user_started` (`user_id`,`started_at`),
  ADD KEY `idx_focus_user_status` (`user_id`,`status`),
  ADD KEY `fk_focus_task` (`task_id`),
  ADD KEY `idx_focus_user_created` (`user_id`,`created_at`),
  ADD KEY `idx_focus_user_status_created` (`user_id`,`status`,`created_at`);

--
-- Indexes for table `habits`
--
ALTER TABLE `habits`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_habits_user` (`user_id`);

--
-- Indexes for table `habit_logs`
--
ALTER TABLE `habit_logs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uniq_habit_date` (`habit_id`,`completed_date`),
  ADD KEY `idx_habit_logs_user` (`user_id`),
  ADD KEY `idx_habit_logs_user_date` (`user_id`,`completed_date`),
  ADD KEY `idx_habit_logs_habit_date` (`habit_id`,`completed_date`);

--
-- Indexes for table `tasks`
--
ALTER TABLE `tasks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_tasks_user_status` (`user_id`,`is_completed`),
  ADD KEY `idx_tasks_user_due` (`user_id`,`due_date`),
  ADD KEY `idx_tasks_user_completed` (`user_id`,`is_completed`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `phone` (`phone`);

--
-- Indexes for table `user_preferences`
--
ALTER TABLE `user_preferences`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uniq_user_id` (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `app_settings`
--
ALTER TABLE `app_settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `distraction_logs`
--
ALTER TABLE `distraction_logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=98;

--
-- AUTO_INCREMENT for table `focus_sessions`
--
ALTER TABLE `focus_sessions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `habits`
--
ALTER TABLE `habits`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `habit_logs`
--
ALTER TABLE `habit_logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=131;

--
-- AUTO_INCREMENT for table `tasks`
--
ALTER TABLE `tasks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `user_preferences`
--
ALTER TABLE `user_preferences`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=138;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `app_settings`
--
ALTER TABLE `app_settings`
  ADD CONSTRAINT `fk_app_settings_user` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `distraction_logs`
--
ALTER TABLE `distraction_logs`
  ADD CONSTRAINT `fk_distraction_user` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `focus_sessions`
--
ALTER TABLE `focus_sessions`
  ADD CONSTRAINT `fk_focus_task` FOREIGN KEY (`task_id`) REFERENCES `tasks` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `fk_focus_user` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `tasks`
--
ALTER TABLE `tasks`
  ADD CONSTRAINT `fk_tasks_user` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `user_preferences`
--
ALTER TABLE `user_preferences`
  ADD CONSTRAINT `fk_user_preferences_user` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
