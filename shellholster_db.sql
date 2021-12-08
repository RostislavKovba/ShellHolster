-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Час створення: Гру 08 2021 р., 23:24
-- Версія сервера: 10.3.22-MariaDB
-- Версія PHP: 7.4.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База даних: `shellholster_db`
--

-- --------------------------------------------------------

--
-- Структура таблиці `wp_actionscheduler_actions`
--

CREATE TABLE `wp_actionscheduler_actions` (
  `action_id` bigint(20) UNSIGNED NOT NULL,
  `hook` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `scheduled_date_gmt` datetime DEFAULT '0000-00-00 00:00:00',
  `scheduled_date_local` datetime DEFAULT '0000-00-00 00:00:00',
  `args` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `schedule` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `group_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `attempts` int(11) NOT NULL DEFAULT 0,
  `last_attempt_gmt` datetime DEFAULT '0000-00-00 00:00:00',
  `last_attempt_local` datetime DEFAULT '0000-00-00 00:00:00',
  `claim_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `extended_args` varchar(8000) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп даних таблиці `wp_actionscheduler_actions`
--

INSERT INTO `wp_actionscheduler_actions` (`action_id`, `hook`, `status`, `scheduled_date_gmt`, `scheduled_date_local`, `args`, `schedule`, `group_id`, `attempts`, `last_attempt_gmt`, `last_attempt_local`, `claim_id`, `extended_args`) VALUES
(6, 'action_scheduler/migration_hook', 'complete', '2021-11-23 16:43:01', '2021-11-23 16:43:01', '[]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1637685781;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1637685781;}', 1, 1, '2021-11-23 16:43:11', '2021-11-23 16:43:11', 0, NULL),
(7, 'wc-admin_import_customers', 'complete', '2021-12-06 10:13:44', '2021-12-06 10:13:44', '[1]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1638785624;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1638785624;}', 2, 1, '2021-12-06 10:15:56', '2021-12-06 10:15:56', 0, NULL),
(8, 'action_scheduler/migration_hook', 'complete', '2021-12-06 15:07:06', '2021-12-06 15:07:06', '[]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1638803226;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1638803226;}', 1, 1, '2021-12-06 15:07:09', '2021-12-06 15:07:09', 0, NULL),
(9, 'woocommerce_update_marketplace_suggestions', 'complete', '2021-12-06 18:29:53', '2021-12-06 18:29:53', '[]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1638815393;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1638815393;}', 0, 1, '2021-12-06 18:30:04', '2021-12-06 18:30:04', 0, NULL),
(10, 'woocommerce_admin/stored_state_setup_for_products/async/run_remote_notifications', 'complete', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '[]', 'O:28:\"ActionScheduler_NullSchedule\":0:{}', 0, 1, '2021-12-06 18:33:21', '2021-12-06 18:33:21', 0, NULL),
(11, 'woocommerce_admin/stored_state_setup_for_products/async/run_remote_notifications', 'complete', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '[]', 'O:28:\"ActionScheduler_NullSchedule\":0:{}', 0, 1, '2021-12-06 18:34:20', '2021-12-06 18:34:20', 0, NULL),
(12, 'woocommerce_admin/stored_state_setup_for_products/async/run_remote_notifications', 'complete', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '[]', 'O:28:\"ActionScheduler_NullSchedule\":0:{}', 0, 1, '2021-12-06 18:36:37', '2021-12-06 18:36:37', 0, NULL),
(13, 'woocommerce_admin/stored_state_setup_for_products/async/run_remote_notifications', 'complete', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '[]', 'O:28:\"ActionScheduler_NullSchedule\":0:{}', 0, 1, '2021-12-06 18:36:38', '2021-12-06 18:36:38', 0, NULL),
(14, 'woocommerce_admin/stored_state_setup_for_products/async/run_remote_notifications', 'complete', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '[]', 'O:28:\"ActionScheduler_NullSchedule\":0:{}', 0, 1, '2021-12-06 18:37:44', '2021-12-06 18:37:44', 0, NULL),
(15, 'woocommerce_admin/stored_state_setup_for_products/async/run_remote_notifications', 'complete', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '[]', 'O:28:\"ActionScheduler_NullSchedule\":0:{}', 0, 1, '2021-12-06 18:40:02', '2021-12-06 18:40:02', 0, NULL),
(16, 'woocommerce_admin/stored_state_setup_for_products/async/run_remote_notifications', 'complete', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '[]', 'O:28:\"ActionScheduler_NullSchedule\":0:{}', 0, 1, '2021-12-06 18:53:16', '2021-12-06 18:53:16', 0, NULL),
(17, 'wc-admin_import_customers', 'complete', '2021-12-07 09:01:26', '2021-12-07 09:01:26', '[1]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1638867686;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1638867686;}', 2, 1, '2021-12-07 09:02:27', '2021-12-07 09:02:27', 0, NULL),
(18, 'woocommerce_admin/stored_state_setup_for_products/async/run_remote_notifications', 'complete', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '[]', 'O:28:\"ActionScheduler_NullSchedule\":0:{}', 0, 1, '2021-12-07 11:57:00', '2021-12-07 11:57:00', 0, NULL),
(19, 'woocommerce_admin/stored_state_setup_for_products/async/run_remote_notifications', 'complete', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '[]', 'O:28:\"ActionScheduler_NullSchedule\":0:{}', 0, 1, '2021-12-07 12:05:18', '2021-12-07 12:05:18', 0, NULL),
(20, 'woocommerce_admin/stored_state_setup_for_products/async/run_remote_notifications', 'complete', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '[]', 'O:28:\"ActionScheduler_NullSchedule\":0:{}', 0, 1, '2021-12-07 12:05:18', '2021-12-07 12:05:18', 0, NULL),
(21, 'woocommerce_admin/stored_state_setup_for_products/async/run_remote_notifications', 'complete', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '[]', 'O:28:\"ActionScheduler_NullSchedule\":0:{}', 0, 1, '2021-12-07 12:05:18', '2021-12-07 12:05:18', 0, NULL),
(22, 'woocommerce_admin/stored_state_setup_for_products/async/run_remote_notifications', 'complete', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '[]', 'O:28:\"ActionScheduler_NullSchedule\":0:{}', 0, 1, '2021-12-07 12:48:22', '2021-12-07 12:48:22', 0, NULL),
(23, 'woocommerce_admin/stored_state_setup_for_products/async/run_remote_notifications', 'complete', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '[]', 'O:28:\"ActionScheduler_NullSchedule\":0:{}', 0, 1, '2021-12-07 12:48:22', '2021-12-07 12:48:22', 0, NULL),
(24, 'woocommerce_admin/stored_state_setup_for_products/async/run_remote_notifications', 'complete', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '[]', 'O:28:\"ActionScheduler_NullSchedule\":0:{}', 0, 1, '2021-12-07 12:48:22', '2021-12-07 12:48:22', 0, NULL),
(25, 'woocommerce_admin/stored_state_setup_for_products/async/run_remote_notifications', 'complete', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '[]', 'O:28:\"ActionScheduler_NullSchedule\":0:{}', 0, 1, '2021-12-07 13:57:38', '2021-12-07 13:57:38', 0, NULL),
(26, 'wc-admin_import_customers', 'complete', '2021-12-08 08:29:03', '2021-12-08 08:29:03', '[1]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1638952143;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1638952143;}', 2, 1, '2021-12-08 08:30:06', '2021-12-08 08:30:06', 0, NULL),
(27, 'wc_schedule_update_product_default_cat', 'complete', '2021-12-08 17:54:42', '2021-12-08 17:54:42', '[]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1638986082;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1638986082;}', 3, 1, '2021-12-08 17:55:26', '2021-12-08 17:55:26', 0, NULL),
(28, 'wc_schedule_update_product_default_cat', 'complete', '2021-12-08 17:54:45', '2021-12-08 17:54:45', '[]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1638986085;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1638986085;}', 3, 1, '2021-12-08 17:55:26', '2021-12-08 17:55:26', 0, NULL),
(29, 'wc_schedule_update_product_default_cat', 'complete', '2021-12-08 17:54:47', '2021-12-08 17:54:47', '[]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1638986087;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1638986087;}', 3, 1, '2021-12-08 17:55:26', '2021-12-08 17:55:26', 0, NULL),
(30, 'woocommerce_admin/stored_state_setup_for_products/async/run_remote_notifications', 'complete', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '[]', 'O:28:\"ActionScheduler_NullSchedule\":0:{}', 0, 1, '2021-12-08 18:26:49', '2021-12-08 18:26:49', 0, NULL),
(31, 'woocommerce_admin/stored_state_setup_for_products/async/run_remote_notifications', 'complete', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '[]', 'O:28:\"ActionScheduler_NullSchedule\":0:{}', 0, 1, '2021-12-08 18:32:36', '2021-12-08 18:32:36', 0, NULL),
(32, 'woocommerce_admin/stored_state_setup_for_products/async/run_remote_notifications', 'complete', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '[]', 'O:28:\"ActionScheduler_NullSchedule\":0:{}', 0, 1, '2021-12-08 18:58:21', '2021-12-08 18:58:21', 0, NULL),
(33, 'woocommerce_admin/stored_state_setup_for_products/async/run_remote_notifications', 'complete', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '[]', 'O:28:\"ActionScheduler_NullSchedule\":0:{}', 0, 1, '2021-12-08 18:58:22', '2021-12-08 18:58:22', 0, NULL);

-- --------------------------------------------------------

--
-- Структура таблиці `wp_actionscheduler_claims`
--

CREATE TABLE `wp_actionscheduler_claims` (
  `claim_id` bigint(20) UNSIGNED NOT NULL,
  `date_created_gmt` datetime DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблиці `wp_actionscheduler_groups`
--

CREATE TABLE `wp_actionscheduler_groups` (
  `group_id` bigint(20) UNSIGNED NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп даних таблиці `wp_actionscheduler_groups`
--

INSERT INTO `wp_actionscheduler_groups` (`group_id`, `slug`) VALUES
(1, 'action-scheduler-migration'),
(2, 'wc-admin-data'),
(3, 'wc_update_product_default_cat');

-- --------------------------------------------------------

--
-- Структура таблиці `wp_actionscheduler_logs`
--

CREATE TABLE `wp_actionscheduler_logs` (
  `log_id` bigint(20) UNSIGNED NOT NULL,
  `action_id` bigint(20) UNSIGNED NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `log_date_gmt` datetime DEFAULT '0000-00-00 00:00:00',
  `log_date_local` datetime DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп даних таблиці `wp_actionscheduler_logs`
--

INSERT INTO `wp_actionscheduler_logs` (`log_id`, `action_id`, `message`, `log_date_gmt`, `log_date_local`) VALUES
(1, 6, 'action created', '2021-11-23 16:42:01', '2021-11-23 16:42:01'),
(2, 6, 'action started via Async Request', '2021-11-23 16:43:10', '2021-11-23 16:43:10'),
(3, 6, 'action complete via Async Request', '2021-11-23 16:43:11', '2021-11-23 16:43:11'),
(4, 7, 'action created', '2021-12-06 10:13:40', '2021-12-06 10:13:40'),
(5, 7, 'action started via Async Request', '2021-12-06 10:15:56', '2021-12-06 10:15:56'),
(6, 7, 'action complete via Async Request', '2021-12-06 10:15:56', '2021-12-06 10:15:56'),
(7, 8, 'action created', '2021-12-06 15:06:06', '2021-12-06 15:06:06'),
(8, 8, 'action started via Async Request', '2021-12-06 15:07:08', '2021-12-06 15:07:08'),
(9, 8, 'action complete via Async Request', '2021-12-06 15:07:08', '2021-12-06 15:07:08'),
(10, 9, 'action created', '2021-12-06 18:29:53', '2021-12-06 18:29:53'),
(11, 9, 'action started via Async Request', '2021-12-06 18:30:04', '2021-12-06 18:30:04'),
(12, 9, 'action complete via Async Request', '2021-12-06 18:30:04', '2021-12-06 18:30:04'),
(13, 10, 'action created', '2021-12-06 18:32:31', '2021-12-06 18:32:31'),
(14, 10, 'action started via WP Cron', '2021-12-06 18:33:20', '2021-12-06 18:33:20'),
(15, 10, 'action complete via WP Cron', '2021-12-06 18:33:21', '2021-12-06 18:33:21'),
(16, 11, 'action created', '2021-12-06 18:33:39', '2021-12-06 18:33:39'),
(17, 11, 'action started via WP Cron', '2021-12-06 18:34:20', '2021-12-06 18:34:20'),
(18, 11, 'action complete via WP Cron', '2021-12-06 18:34:20', '2021-12-06 18:34:20'),
(19, 12, 'action created', '2021-12-06 18:34:42', '2021-12-06 18:34:42'),
(20, 13, 'action created', '2021-12-06 18:34:54', '2021-12-06 18:34:54'),
(21, 12, 'action started via WP Cron', '2021-12-06 18:36:37', '2021-12-06 18:36:37'),
(22, 12, 'action complete via WP Cron', '2021-12-06 18:36:37', '2021-12-06 18:36:37'),
(23, 13, 'action started via WP Cron', '2021-12-06 18:36:38', '2021-12-06 18:36:38'),
(24, 13, 'action complete via WP Cron', '2021-12-06 18:36:38', '2021-12-06 18:36:38'),
(25, 14, 'action created', '2021-12-06 18:37:26', '2021-12-06 18:37:26'),
(26, 14, 'action started via Async Request', '2021-12-06 18:37:43', '2021-12-06 18:37:43'),
(27, 14, 'action complete via Async Request', '2021-12-06 18:37:44', '2021-12-06 18:37:44'),
(28, 15, 'action created', '2021-12-06 18:39:37', '2021-12-06 18:39:37'),
(29, 15, 'action started via Async Request', '2021-12-06 18:40:02', '2021-12-06 18:40:02'),
(30, 15, 'action complete via Async Request', '2021-12-06 18:40:02', '2021-12-06 18:40:02'),
(31, 16, 'action created', '2021-12-06 18:52:54', '2021-12-06 18:52:54'),
(32, 16, 'action started via WP Cron', '2021-12-06 18:53:16', '2021-12-06 18:53:16'),
(33, 16, 'action complete via WP Cron', '2021-12-06 18:53:16', '2021-12-06 18:53:16'),
(34, 17, 'action created', '2021-12-07 09:01:21', '2021-12-07 09:01:21'),
(35, 17, 'action started via WP Cron', '2021-12-07 09:02:27', '2021-12-07 09:02:27'),
(36, 17, 'action complete via WP Cron', '2021-12-07 09:02:27', '2021-12-07 09:02:27'),
(37, 18, 'action created', '2021-12-07 11:55:55', '2021-12-07 11:55:55'),
(38, 18, 'action started via WP Cron', '2021-12-07 11:57:00', '2021-12-07 11:57:00'),
(39, 18, 'action complete via WP Cron', '2021-12-07 11:57:00', '2021-12-07 11:57:00'),
(40, 19, 'action created', '2021-12-07 12:04:49', '2021-12-07 12:04:49'),
(41, 20, 'action created', '2021-12-07 12:04:50', '2021-12-07 12:04:50'),
(42, 21, 'action created', '2021-12-07 12:04:51', '2021-12-07 12:04:51'),
(43, 19, 'action started via WP Cron', '2021-12-07 12:05:17', '2021-12-07 12:05:17'),
(44, 19, 'action complete via WP Cron', '2021-12-07 12:05:17', '2021-12-07 12:05:17'),
(45, 20, 'action started via WP Cron', '2021-12-07 12:05:18', '2021-12-07 12:05:18'),
(46, 20, 'action complete via WP Cron', '2021-12-07 12:05:18', '2021-12-07 12:05:18'),
(47, 21, 'action started via WP Cron', '2021-12-07 12:05:18', '2021-12-07 12:05:18'),
(48, 21, 'action complete via WP Cron', '2021-12-07 12:05:18', '2021-12-07 12:05:18'),
(49, 22, 'action created', '2021-12-07 12:47:33', '2021-12-07 12:47:33'),
(50, 23, 'action created', '2021-12-07 12:47:42', '2021-12-07 12:47:42'),
(51, 24, 'action created', '2021-12-07 12:47:47', '2021-12-07 12:47:47'),
(52, 22, 'action started via WP Cron', '2021-12-07 12:48:22', '2021-12-07 12:48:22'),
(53, 22, 'action complete via WP Cron', '2021-12-07 12:48:22', '2021-12-07 12:48:22'),
(54, 23, 'action started via WP Cron', '2021-12-07 12:48:22', '2021-12-07 12:48:22'),
(55, 23, 'action complete via WP Cron', '2021-12-07 12:48:22', '2021-12-07 12:48:22'),
(56, 24, 'action started via WP Cron', '2021-12-07 12:48:22', '2021-12-07 12:48:22'),
(57, 24, 'action complete via WP Cron', '2021-12-07 12:48:22', '2021-12-07 12:48:22'),
(58, 25, 'action created', '2021-12-07 13:57:34', '2021-12-07 13:57:34'),
(59, 25, 'action started via Async Request', '2021-12-07 13:57:38', '2021-12-07 13:57:38'),
(60, 25, 'action complete via Async Request', '2021-12-07 13:57:38', '2021-12-07 13:57:38'),
(61, 26, 'action created', '2021-12-08 08:28:58', '2021-12-08 08:28:58'),
(62, 26, 'action started via WP Cron', '2021-12-08 08:30:05', '2021-12-08 08:30:05'),
(63, 26, 'action complete via WP Cron', '2021-12-08 08:30:05', '2021-12-08 08:30:05'),
(64, 27, 'action created', '2021-12-08 17:54:42', '2021-12-08 17:54:42'),
(65, 28, 'action created', '2021-12-08 17:54:45', '2021-12-08 17:54:45'),
(66, 29, 'action created', '2021-12-08 17:54:47', '2021-12-08 17:54:47'),
(67, 27, 'action started via WP Cron', '2021-12-08 17:55:25', '2021-12-08 17:55:25'),
(68, 27, 'action complete via WP Cron', '2021-12-08 17:55:26', '2021-12-08 17:55:26'),
(69, 28, 'action started via WP Cron', '2021-12-08 17:55:26', '2021-12-08 17:55:26'),
(70, 28, 'action complete via WP Cron', '2021-12-08 17:55:26', '2021-12-08 17:55:26'),
(71, 29, 'action started via WP Cron', '2021-12-08 17:55:26', '2021-12-08 17:55:26'),
(72, 29, 'action complete via WP Cron', '2021-12-08 17:55:26', '2021-12-08 17:55:26'),
(73, 30, 'action created', '2021-12-08 18:26:33', '2021-12-08 18:26:33'),
(74, 30, 'action started via Async Request', '2021-12-08 18:26:49', '2021-12-08 18:26:49'),
(75, 30, 'action complete via Async Request', '2021-12-08 18:26:49', '2021-12-08 18:26:49'),
(76, 31, 'action created', '2021-12-08 18:32:34', '2021-12-08 18:32:34'),
(77, 31, 'action started via Async Request', '2021-12-08 18:32:36', '2021-12-08 18:32:36'),
(78, 31, 'action complete via Async Request', '2021-12-08 18:32:36', '2021-12-08 18:32:36'),
(79, 32, 'action created', '2021-12-08 18:57:47', '2021-12-08 18:57:47'),
(80, 33, 'action created', '2021-12-08 18:57:53', '2021-12-08 18:57:53'),
(81, 32, 'action started via WP Cron', '2021-12-08 18:58:21', '2021-12-08 18:58:21'),
(82, 32, 'action complete via WP Cron', '2021-12-08 18:58:21', '2021-12-08 18:58:21'),
(83, 33, 'action started via WP Cron', '2021-12-08 18:58:21', '2021-12-08 18:58:21'),
(84, 33, 'action complete via WP Cron', '2021-12-08 18:58:22', '2021-12-08 18:58:22');

-- --------------------------------------------------------

--
-- Структура таблиці `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп даних таблиці `wp_commentmeta`
--

INSERT INTO `wp_commentmeta` (`meta_id`, `comment_id`, `meta_key`, `meta_value`) VALUES
(1, 2, 'rating', '4'),
(2, 2, 'verified', '0');

-- --------------------------------------------------------

--
-- Структура таблиці `wp_comments`
--

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `comment_author` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT 0,
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'comment',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп даних таблиці `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(2, 94, 'Admin', 'rostik22988@gmail.com', '', '127.0.0.1', '2021-12-07 12:04:26', '2021-12-07 12:04:26', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aperiam aspernatur beatae eos maxime natus officia quasi quos! Autem cupiditate dolorum est exercitationem hic incidunt numquam odit praesentium quaerat rerum. Molestiae.', 0, '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.45 Safari/537.36', 'review', 0, 0);

-- --------------------------------------------------------

--
-- Структура таблиці `wp_links`
--

CREATE TABLE `wp_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT 1,
  `link_rating` int(11) NOT NULL DEFAULT 0,
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблиці `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп даних таблиці `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://shellholster', 'yes'),
(2, 'home', 'http://shellholster', 'yes'),
(3, 'blogname', 'ShellHolster', 'yes'),
(4, 'blogdescription', 'Best Cell Phone Cases', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'rostik22988@gmail.com', 'yes'),
(7, 'start_of_week', '1', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '1', 'yes'),
(12, 'posts_per_rss', '3', 'yes'),
(13, 'rss_use_excerpt', '0', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', 'open', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '1', 'yes'),
(22, 'posts_per_page', '3', 'yes'),
(23, 'date_format', 'F j, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'F j, Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:161:{s:24:\"^wc-auth/v([1]{1})/(.*)?\";s:63:\"index.php?wc-auth-version=$matches[1]&wc-auth-route=$matches[2]\";s:22:\"^wc-api/v([1-3]{1})/?$\";s:51:\"index.php?wc-api-version=$matches[1]&wc-api-route=/\";s:24:\"^wc-api/v([1-3]{1})(.*)?\";s:61:\"index.php?wc-api-version=$matches[1]&wc-api-route=$matches[2]\";s:7:\"shop/?$\";s:27:\"index.php?post_type=product\";s:37:\"shop/feed/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?post_type=product&feed=$matches[1]\";s:32:\"shop/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?post_type=product&feed=$matches[1]\";s:24:\"shop/page/([0-9]{1,})/?$\";s:45:\"index.php?post_type=product&paged=$matches[1]\";s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:17:\"^wp-sitemap\\.xml$\";s:23:\"index.php?sitemap=index\";s:17:\"^wp-sitemap\\.xsl$\";s:36:\"index.php?sitemap-stylesheet=sitemap\";s:23:\"^wp-sitemap-index\\.xsl$\";s:34:\"index.php?sitemap-stylesheet=index\";s:48:\"^wp-sitemap-([a-z]+?)-([a-z\\d_-]+?)-(\\d+?)\\.xml$\";s:75:\"index.php?sitemap=$matches[1]&sitemap-subtype=$matches[2]&paged=$matches[3]\";s:34:\"^wp-sitemap-([a-z]+?)-(\\d+?)\\.xml$\";s:47:\"index.php?sitemap=$matches[1]&paged=$matches[2]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:32:\"category/(.+?)/wc-api(/(.*))?/?$\";s:54:\"index.php?category_name=$matches[1]&wc-api=$matches[3]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:29:\"tag/([^/]+)/wc-api(/(.*))?/?$\";s:44:\"index.php?tag=$matches[1]&wc-api=$matches[3]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:55:\"product-category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_cat=$matches[1]&feed=$matches[2]\";s:50:\"product-category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_cat=$matches[1]&feed=$matches[2]\";s:31:\"product-category/(.+?)/embed/?$\";s:44:\"index.php?product_cat=$matches[1]&embed=true\";s:43:\"product-category/(.+?)/page/?([0-9]{1,})/?$\";s:51:\"index.php?product_cat=$matches[1]&paged=$matches[2]\";s:25:\"product-category/(.+?)/?$\";s:33:\"index.php?product_cat=$matches[1]\";s:52:\"product-tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_tag=$matches[1]&feed=$matches[2]\";s:47:\"product-tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_tag=$matches[1]&feed=$matches[2]\";s:28:\"product-tag/([^/]+)/embed/?$\";s:44:\"index.php?product_tag=$matches[1]&embed=true\";s:40:\"product-tag/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?product_tag=$matches[1]&paged=$matches[2]\";s:22:\"product-tag/([^/]+)/?$\";s:33:\"index.php?product_tag=$matches[1]\";s:32:\"shop/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:42:\"shop/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:62:\"shop/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:57:\"shop/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:57:\"shop/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:38:\"shop/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:21:\"shop/([^/]+)/embed/?$\";s:40:\"index.php?product=$matches[1]&embed=true\";s:25:\"shop/([^/]+)/trackback/?$\";s:34:\"index.php?product=$matches[1]&tb=1\";s:45:\"shop/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?product=$matches[1]&feed=$matches[2]\";s:40:\"shop/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?product=$matches[1]&feed=$matches[2]\";s:33:\"shop/([^/]+)/page/?([0-9]{1,})/?$\";s:47:\"index.php?product=$matches[1]&paged=$matches[2]\";s:40:\"shop/([^/]+)/comment-page-([0-9]{1,})/?$\";s:47:\"index.php?product=$matches[1]&cpage=$matches[2]\";s:30:\"shop/([^/]+)/wc-api(/(.*))?/?$\";s:48:\"index.php?product=$matches[1]&wc-api=$matches[3]\";s:36:\"shop/[^/]+/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:47:\"shop/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:29:\"shop/([^/]+)(?:/([0-9]+))?/?$\";s:46:\"index.php?product=$matches[1]&page=$matches[2]\";s:21:\"shop/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:31:\"shop/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:51:\"shop/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:46:\"shop/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:46:\"shop/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:27:\"shop/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:12:\"robots\\.txt$\";s:18:\"index.php?robots=1\";s:13:\"favicon\\.ico$\";s:19:\"index.php?favicon=1\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:38:\"index.php?&page_id=2&cpage=$matches[1]\";s:17:\"wc-api(/(.*))?/?$\";s:29:\"index.php?&wc-api=$matches[2]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:26:\"comments/wc-api(/(.*))?/?$\";s:29:\"index.php?&wc-api=$matches[2]\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:29:\"search/(.+)/wc-api(/(.*))?/?$\";s:42:\"index.php?s=$matches[1]&wc-api=$matches[3]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:32:\"author/([^/]+)/wc-api(/(.*))?/?$\";s:52:\"index.php?author_name=$matches[1]&wc-api=$matches[3]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:54:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/wc-api(/(.*))?/?$\";s:82:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&wc-api=$matches[5]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:41:\"([0-9]{4})/([0-9]{1,2})/wc-api(/(.*))?/?$\";s:66:\"index.php?year=$matches[1]&monthnum=$matches[2]&wc-api=$matches[4]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:28:\"([0-9]{4})/wc-api(/(.*))?/?$\";s:45:\"index.php?year=$matches[1]&wc-api=$matches[3]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:25:\"(.?.+?)/wc-api(/(.*))?/?$\";s:49:\"index.php?pagename=$matches[1]&wc-api=$matches[3]\";s:28:\"(.?.+?)/order-pay(/(.*))?/?$\";s:52:\"index.php?pagename=$matches[1]&order-pay=$matches[3]\";s:33:\"(.?.+?)/order-received(/(.*))?/?$\";s:57:\"index.php?pagename=$matches[1]&order-received=$matches[3]\";s:25:\"(.?.+?)/orders(/(.*))?/?$\";s:49:\"index.php?pagename=$matches[1]&orders=$matches[3]\";s:29:\"(.?.+?)/view-order(/(.*))?/?$\";s:53:\"index.php?pagename=$matches[1]&view-order=$matches[3]\";s:28:\"(.?.+?)/downloads(/(.*))?/?$\";s:52:\"index.php?pagename=$matches[1]&downloads=$matches[3]\";s:31:\"(.?.+?)/edit-account(/(.*))?/?$\";s:55:\"index.php?pagename=$matches[1]&edit-account=$matches[3]\";s:31:\"(.?.+?)/edit-address(/(.*))?/?$\";s:55:\"index.php?pagename=$matches[1]&edit-address=$matches[3]\";s:34:\"(.?.+?)/payment-methods(/(.*))?/?$\";s:58:\"index.php?pagename=$matches[1]&payment-methods=$matches[3]\";s:32:\"(.?.+?)/lost-password(/(.*))?/?$\";s:56:\"index.php?pagename=$matches[1]&lost-password=$matches[3]\";s:34:\"(.?.+?)/customer-logout(/(.*))?/?$\";s:58:\"index.php?pagename=$matches[1]&customer-logout=$matches[3]\";s:37:\"(.?.+?)/add-payment-method(/(.*))?/?$\";s:61:\"index.php?pagename=$matches[1]&add-payment-method=$matches[3]\";s:40:\"(.?.+?)/delete-payment-method(/(.*))?/?$\";s:64:\"index.php?pagename=$matches[1]&delete-payment-method=$matches[3]\";s:45:\"(.?.+?)/set-default-payment-method(/(.*))?/?$\";s:69:\"index.php?pagename=$matches[1]&set-default-payment-method=$matches[3]\";s:31:\".?.+?/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:42:\".?.+?/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";s:27:\"[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\"[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\"[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"([^/]+)/embed/?$\";s:37:\"index.php?name=$matches[1]&embed=true\";s:20:\"([^/]+)/trackback/?$\";s:31:\"index.php?name=$matches[1]&tb=1\";s:40:\"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:35:\"([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:28:\"([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&paged=$matches[2]\";s:35:\"([^/]+)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&cpage=$matches[2]\";s:25:\"([^/]+)/wc-api(/(.*))?/?$\";s:45:\"index.php?name=$matches[1]&wc-api=$matches[3]\";s:31:\"[^/]+/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:42:\"[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:24:\"([^/]+)(?:/([0-9]+))?/?$\";s:43:\"index.php?name=$matches[1]&page=$matches[2]\";s:16:\"[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:26:\"[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:46:\"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:22:\"[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:5:{i:0;s:34:\"advanced-custom-fields-pro/acf.php\";i:1;s:75:\"auto-cart-update-on-quantity-change/auto-cart-update-on-quantity-change.php\";i:2;s:33:\"classic-editor/classic-editor.php\";i:3;s:36:\"contact-form-7/wp-contact-form-7.php\";i:4;s:27:\"woocommerce/woocommerce.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'shellholster', 'yes'),
(41, 'stylesheet', 'shellholster', 'yes'),
(42, 'comment_registration', '0', 'yes'),
(43, 'html_type', 'text/html', 'yes'),
(44, 'use_trackback', '0', 'yes'),
(45, 'default_role', 'subscriber', 'yes'),
(46, 'db_version', '49752', 'yes'),
(47, 'uploads_use_yearmonth_folders', '1', 'yes'),
(48, 'upload_path', '', 'yes'),
(49, 'blog_public', '1', 'yes'),
(50, 'default_link_category', '2', 'yes'),
(51, 'show_on_front', 'page', 'yes'),
(52, 'tag_base', '', 'yes'),
(53, 'show_avatars', '1', 'yes'),
(54, 'avatar_rating', 'G', 'yes'),
(55, 'upload_url_path', '', 'yes'),
(56, 'thumbnail_size_w', '150', 'yes'),
(57, 'thumbnail_size_h', '150', 'yes'),
(58, 'thumbnail_crop', '1', 'yes'),
(59, 'medium_size_w', '300', 'yes'),
(60, 'medium_size_h', '300', 'yes'),
(61, 'avatar_default', 'mystery', 'yes'),
(62, 'large_size_w', '1024', 'yes'),
(63, 'large_size_h', '1024', 'yes'),
(64, 'image_default_link_type', 'none', 'yes'),
(65, 'image_default_size', '', 'yes'),
(66, 'image_default_align', '', 'yes'),
(67, 'close_comments_for_old_posts', '0', 'yes'),
(68, 'close_comments_days_old', '14', 'yes'),
(69, 'thread_comments', '1', 'yes'),
(70, 'thread_comments_depth', '5', 'yes'),
(71, 'page_comments', '0', 'yes'),
(72, 'comments_per_page', '50', 'yes'),
(73, 'default_comments_page', 'newest', 'yes'),
(74, 'comment_order', 'asc', 'yes'),
(75, 'sticky_posts', 'a:0:{}', 'yes'),
(76, 'widget_categories', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(77, 'widget_text', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(78, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'uninstall_plugins', 'a:0:{}', 'no'),
(80, 'timezone_string', '', 'yes'),
(81, 'page_for_posts', '0', 'yes'),
(82, 'page_on_front', '2', 'yes'),
(83, 'default_post_format', '0', 'yes'),
(84, 'link_manager_enabled', '0', 'yes'),
(85, 'finished_splitting_shared_terms', '1', 'yes'),
(86, 'site_icon', '0', 'yes'),
(87, 'medium_large_size_w', '768', 'yes'),
(88, 'medium_large_size_h', '0', 'yes'),
(89, 'wp_page_for_privacy_policy', '3', 'yes'),
(90, 'show_comments_cookies_opt_in', '1', 'yes'),
(91, 'admin_email_lifespan', '1653236955', 'yes'),
(92, 'disallowed_keys', '', 'no'),
(93, 'comment_previously_approved', '1', 'yes'),
(94, 'auto_plugin_theme_update_emails', 'a:0:{}', 'no'),
(95, 'auto_update_core_dev', 'enabled', 'yes'),
(96, 'auto_update_core_minor', 'enabled', 'yes'),
(97, 'auto_update_core_major', 'enabled', 'yes'),
(98, 'wp_force_deactivated_plugins', 'a:0:{}', 'yes'),
(99, 'initial_db_version', '49752', 'yes'),
(100, 'wp_user_roles', 'a:7:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:114:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;s:18:\"manage_woocommerce\";b:1;s:24:\"view_woocommerce_reports\";b:1;s:12:\"edit_product\";b:1;s:12:\"read_product\";b:1;s:14:\"delete_product\";b:1;s:13:\"edit_products\";b:1;s:20:\"edit_others_products\";b:1;s:16:\"publish_products\";b:1;s:21:\"read_private_products\";b:1;s:15:\"delete_products\";b:1;s:23:\"delete_private_products\";b:1;s:25:\"delete_published_products\";b:1;s:22:\"delete_others_products\";b:1;s:21:\"edit_private_products\";b:1;s:23:\"edit_published_products\";b:1;s:20:\"manage_product_terms\";b:1;s:18:\"edit_product_terms\";b:1;s:20:\"delete_product_terms\";b:1;s:20:\"assign_product_terms\";b:1;s:15:\"edit_shop_order\";b:1;s:15:\"read_shop_order\";b:1;s:17:\"delete_shop_order\";b:1;s:16:\"edit_shop_orders\";b:1;s:23:\"edit_others_shop_orders\";b:1;s:19:\"publish_shop_orders\";b:1;s:24:\"read_private_shop_orders\";b:1;s:18:\"delete_shop_orders\";b:1;s:26:\"delete_private_shop_orders\";b:1;s:28:\"delete_published_shop_orders\";b:1;s:25:\"delete_others_shop_orders\";b:1;s:24:\"edit_private_shop_orders\";b:1;s:26:\"edit_published_shop_orders\";b:1;s:23:\"manage_shop_order_terms\";b:1;s:21:\"edit_shop_order_terms\";b:1;s:23:\"delete_shop_order_terms\";b:1;s:23:\"assign_shop_order_terms\";b:1;s:16:\"edit_shop_coupon\";b:1;s:16:\"read_shop_coupon\";b:1;s:18:\"delete_shop_coupon\";b:1;s:17:\"edit_shop_coupons\";b:1;s:24:\"edit_others_shop_coupons\";b:1;s:20:\"publish_shop_coupons\";b:1;s:25:\"read_private_shop_coupons\";b:1;s:19:\"delete_shop_coupons\";b:1;s:27:\"delete_private_shop_coupons\";b:1;s:29:\"delete_published_shop_coupons\";b:1;s:26:\"delete_others_shop_coupons\";b:1;s:25:\"edit_private_shop_coupons\";b:1;s:27:\"edit_published_shop_coupons\";b:1;s:24:\"manage_shop_coupon_terms\";b:1;s:22:\"edit_shop_coupon_terms\";b:1;s:24:\"delete_shop_coupon_terms\";b:1;s:24:\"assign_shop_coupon_terms\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}s:8:\"customer\";a:2:{s:4:\"name\";s:8:\"Customer\";s:12:\"capabilities\";a:1:{s:4:\"read\";b:1;}}s:12:\"shop_manager\";a:2:{s:4:\"name\";s:12:\"Shop manager\";s:12:\"capabilities\";a:92:{s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:4:\"read\";b:1;s:18:\"read_private_pages\";b:1;s:18:\"read_private_posts\";b:1;s:10:\"edit_posts\";b:1;s:10:\"edit_pages\";b:1;s:20:\"edit_published_posts\";b:1;s:20:\"edit_published_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"edit_private_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:17:\"edit_others_pages\";b:1;s:13:\"publish_posts\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_posts\";b:1;s:12:\"delete_pages\";b:1;s:20:\"delete_private_pages\";b:1;s:20:\"delete_private_posts\";b:1;s:22:\"delete_published_pages\";b:1;s:22:\"delete_published_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:19:\"delete_others_pages\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:17:\"moderate_comments\";b:1;s:12:\"upload_files\";b:1;s:6:\"export\";b:1;s:6:\"import\";b:1;s:10:\"list_users\";b:1;s:18:\"edit_theme_options\";b:1;s:18:\"manage_woocommerce\";b:1;s:24:\"view_woocommerce_reports\";b:1;s:12:\"edit_product\";b:1;s:12:\"read_product\";b:1;s:14:\"delete_product\";b:1;s:13:\"edit_products\";b:1;s:20:\"edit_others_products\";b:1;s:16:\"publish_products\";b:1;s:21:\"read_private_products\";b:1;s:15:\"delete_products\";b:1;s:23:\"delete_private_products\";b:1;s:25:\"delete_published_products\";b:1;s:22:\"delete_others_products\";b:1;s:21:\"edit_private_products\";b:1;s:23:\"edit_published_products\";b:1;s:20:\"manage_product_terms\";b:1;s:18:\"edit_product_terms\";b:1;s:20:\"delete_product_terms\";b:1;s:20:\"assign_product_terms\";b:1;s:15:\"edit_shop_order\";b:1;s:15:\"read_shop_order\";b:1;s:17:\"delete_shop_order\";b:1;s:16:\"edit_shop_orders\";b:1;s:23:\"edit_others_shop_orders\";b:1;s:19:\"publish_shop_orders\";b:1;s:24:\"read_private_shop_orders\";b:1;s:18:\"delete_shop_orders\";b:1;s:26:\"delete_private_shop_orders\";b:1;s:28:\"delete_published_shop_orders\";b:1;s:25:\"delete_others_shop_orders\";b:1;s:24:\"edit_private_shop_orders\";b:1;s:26:\"edit_published_shop_orders\";b:1;s:23:\"manage_shop_order_terms\";b:1;s:21:\"edit_shop_order_terms\";b:1;s:23:\"delete_shop_order_terms\";b:1;s:23:\"assign_shop_order_terms\";b:1;s:16:\"edit_shop_coupon\";b:1;s:16:\"read_shop_coupon\";b:1;s:18:\"delete_shop_coupon\";b:1;s:17:\"edit_shop_coupons\";b:1;s:24:\"edit_others_shop_coupons\";b:1;s:20:\"publish_shop_coupons\";b:1;s:25:\"read_private_shop_coupons\";b:1;s:19:\"delete_shop_coupons\";b:1;s:27:\"delete_private_shop_coupons\";b:1;s:29:\"delete_published_shop_coupons\";b:1;s:26:\"delete_others_shop_coupons\";b:1;s:25:\"edit_private_shop_coupons\";b:1;s:27:\"edit_published_shop_coupons\";b:1;s:24:\"manage_shop_coupon_terms\";b:1;s:22:\"edit_shop_coupon_terms\";b:1;s:24:\"delete_shop_coupon_terms\";b:1;s:24:\"assign_shop_coupon_terms\";b:1;}}}', 'yes'),
(101, 'fresh_site', '0', 'yes'),
(102, 'widget_block', 'a:2:{i:2;a:1:{s:7:\"content\";s:103:\"<!-- wp:woocommerce/product-search {\"label\":\"Product Search\",\"formId\":\"wc-block-product-search-0\"} /-->\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(103, 'sidebars_widgets', 'a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:14:\"sidebar-filter\";a:5:{i:0;s:7:\"block-2\";i:1;s:26:\"woocommerce_price_filter-2\";i:2;s:25:\"woocommerce_layered_nav-2\";i:3;s:25:\"woocommerce_layered_nav-3\";i:4;s:33:\"woocommerce_layered_nav_filters-2\";}s:13:\"array_version\";i:3;}', 'yes'),
(104, 'cron', 'a:19:{i:1638995114;a:1:{s:26:\"action_scheduler_run_queue\";a:1:{s:32:\"0d04ed39571b55704c122d726248bbac\";a:3:{s:8:\"schedule\";s:12:\"every_minute\";s:4:\"args\";a:1:{i:0;s:7:\"WP Cron\";}s:8:\"interval\";i:60;}}}i:1638995365;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1638996110;a:1:{s:33:\"wc_admin_process_orders_milestone\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1638996195;a:1:{s:29:\"wc_admin_unsnooze_admin_notes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1638996504;a:1:{s:32:\"woocommerce_cancel_unpaid_orders\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:2:{s:8:\"schedule\";b:0;s:4:\"args\";a:0:{}}}}i:1639003302;a:1:{s:28:\"woocommerce_cleanup_sessions\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1639008000;a:1:{s:27:\"woocommerce_scheduled_sales\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1639024165;a:2:{s:18:\"wp_https_detection\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1639024166;a:2:{s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1639067364;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1639067373;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1639067375;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1639068112;a:1:{s:33:\"woocommerce_cleanup_personal_data\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1639068113;a:1:{s:30:\"woocommerce_tracker_send_event\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1639068114;a:1:{s:14:\"wc_admin_daily\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1639078902;a:1:{s:24:\"woocommerce_cleanup_logs\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1639585765;a:1:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}i:1640277762;a:1:{s:25:\"woocommerce_geoip_updater\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:11:\"fifteendays\";s:4:\"args\";a:0:{}s:8:\"interval\";i:1296000;}}}s:7:\"version\";i:2;}', 'yes'),
(105, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(106, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_archives', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(112, 'widget_meta', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(113, 'widget_search', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(114, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(115, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(116, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(118, 'recovery_keys', 'a:0:{}', 'yes'),
(119, 'theme_mods_twentytwentyone', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1638787537;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";}s:9:\"sidebar-2\";a:2:{i:0;s:7:\"block-5\";i:1;s:7:\"block-6\";}}}}', 'yes'),
(120, 'https_detection_errors', 'a:1:{s:23:\"ssl_verification_failed\";a:1:{i:0;s:24:\"SSL verification failed.\";}}', 'yes'),
(121, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.8.2.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.8.2.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.8.2-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.8.2-new-bundled.zip\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:5:\"5.8.2\";s:7:\"version\";s:5:\"5.8.2\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.6\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1638981002;s:15:\"version_checked\";s:5:\"5.8.2\";s:12:\"translations\";a:0:{}}', 'no'),
(126, '_site_transient_update_themes', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1638989634;s:7:\"checked\";a:1:{s:12:\"shellholster\";s:5:\"1.0.0\";}s:8:\"response\";a:0:{}s:9:\"no_update\";a:0:{}s:12:\"translations\";a:0:{}}', 'no'),
(136, 'can_compress_scripts', '1', 'no'),
(147, 'finished_updating_comment_type', '1', 'yes'),
(148, 'recently_activated', 'a:1:{s:56:\"advanced-custom-fields-font-awesome/acf-font-awesome.php\";i:1638803166;}', 'yes'),
(153, 'action_scheduler_hybrid_store_demarkation', '5', 'yes'),
(154, 'schema-ActionScheduler_StoreSchema', '5.0.1637685673', 'yes'),
(155, 'schema-ActionScheduler_LoggerSchema', '3.0.1637685674', 'yes'),
(158, 'woocommerce_schema_version', '430', 'yes'),
(159, 'woocommerce_store_address', '', 'yes'),
(160, 'woocommerce_store_address_2', '', 'yes'),
(161, 'woocommerce_store_city', '', 'yes'),
(162, 'woocommerce_default_country', 'US:CA', 'yes'),
(163, 'woocommerce_store_postcode', '', 'yes'),
(164, 'woocommerce_allowed_countries', 'all', 'yes'),
(165, 'woocommerce_all_except_countries', '', 'yes'),
(166, 'woocommerce_specific_allowed_countries', '', 'yes'),
(167, 'woocommerce_ship_to_countries', '', 'yes'),
(168, 'woocommerce_specific_ship_to_countries', '', 'yes'),
(169, 'woocommerce_default_customer_address', 'base', 'yes'),
(170, 'woocommerce_calc_taxes', 'no', 'yes'),
(171, 'woocommerce_enable_coupons', 'yes', 'yes'),
(172, 'woocommerce_calc_discounts_sequentially', 'no', 'no'),
(173, 'woocommerce_currency', 'USD', 'yes'),
(174, 'woocommerce_currency_pos', 'left', 'yes'),
(175, 'woocommerce_price_thousand_sep', ',', 'yes'),
(176, 'woocommerce_price_decimal_sep', '.', 'yes'),
(177, 'woocommerce_price_num_decimals', '2', 'yes'),
(178, 'woocommerce_shop_page_id', '6', 'yes'),
(179, 'woocommerce_cart_redirect_after_add', 'no', 'yes'),
(180, 'woocommerce_enable_ajax_add_to_cart', 'yes', 'yes'),
(181, 'woocommerce_placeholder_image', '5', 'yes'),
(182, 'woocommerce_weight_unit', 'kg', 'yes'),
(183, 'woocommerce_dimension_unit', 'cm', 'yes'),
(184, 'woocommerce_enable_reviews', 'yes', 'yes'),
(185, 'woocommerce_review_rating_verification_label', 'yes', 'no'),
(186, 'woocommerce_review_rating_verification_required', 'no', 'no'),
(187, 'woocommerce_enable_review_rating', 'yes', 'yes'),
(188, 'woocommerce_review_rating_required', 'yes', 'no'),
(189, 'woocommerce_manage_stock', 'yes', 'yes'),
(190, 'woocommerce_hold_stock_minutes', '60', 'no'),
(191, 'woocommerce_notify_low_stock', 'yes', 'no'),
(192, 'woocommerce_notify_no_stock', 'yes', 'no'),
(193, 'woocommerce_stock_email_recipient', 'rostik22988@gmail.com', 'no'),
(194, 'woocommerce_notify_low_stock_amount', '2', 'no'),
(195, 'woocommerce_notify_no_stock_amount', '0', 'yes'),
(196, 'woocommerce_hide_out_of_stock_items', 'no', 'yes'),
(197, 'woocommerce_stock_format', '', 'yes'),
(198, 'woocommerce_file_download_method', 'force', 'no'),
(199, 'woocommerce_downloads_redirect_fallback_allowed', 'no', 'no'),
(200, 'woocommerce_downloads_require_login', 'no', 'no'),
(201, 'woocommerce_downloads_grant_access_after_payment', 'yes', 'no'),
(202, 'woocommerce_downloads_add_hash_to_filename', 'yes', 'yes'),
(203, 'woocommerce_prices_include_tax', 'no', 'yes'),
(204, 'woocommerce_tax_based_on', 'shipping', 'yes'),
(205, 'woocommerce_shipping_tax_class', 'inherit', 'yes'),
(206, 'woocommerce_tax_round_at_subtotal', 'no', 'yes'),
(207, 'woocommerce_tax_classes', '', 'yes'),
(208, 'woocommerce_tax_display_shop', 'excl', 'yes'),
(209, 'woocommerce_tax_display_cart', 'excl', 'yes'),
(210, 'woocommerce_price_display_suffix', '', 'yes'),
(211, 'woocommerce_tax_total_display', 'itemized', 'no'),
(212, 'woocommerce_enable_shipping_calc', 'yes', 'no'),
(213, 'woocommerce_shipping_cost_requires_address', 'no', 'yes'),
(214, 'woocommerce_ship_to_destination', 'billing', 'no'),
(215, 'woocommerce_shipping_debug_mode', 'no', 'yes'),
(216, 'woocommerce_enable_guest_checkout', 'yes', 'no'),
(217, 'woocommerce_enable_checkout_login_reminder', 'no', 'no'),
(218, 'woocommerce_enable_signup_and_login_from_checkout', 'no', 'no'),
(219, 'woocommerce_enable_myaccount_registration', 'no', 'no'),
(220, 'woocommerce_registration_generate_username', 'yes', 'no'),
(221, 'woocommerce_registration_generate_password', 'yes', 'no'),
(222, 'woocommerce_erasure_request_removes_order_data', 'no', 'no'),
(223, 'woocommerce_erasure_request_removes_download_data', 'no', 'no'),
(224, 'woocommerce_allow_bulk_remove_personal_data', 'no', 'no'),
(225, 'woocommerce_registration_privacy_policy_text', 'Your personal data will be used to support your experience throughout this website, to manage access to your account, and for other purposes described in our [privacy_policy].', 'yes'),
(226, 'woocommerce_checkout_privacy_policy_text', 'Your personal data will be used to process your order, support your experience throughout this website, and for other purposes described in our [privacy_policy].', 'yes'),
(227, 'woocommerce_delete_inactive_accounts', 'a:2:{s:6:\"number\";s:0:\"\";s:4:\"unit\";s:6:\"months\";}', 'no'),
(228, 'woocommerce_trash_pending_orders', '', 'no'),
(229, 'woocommerce_trash_failed_orders', '', 'no'),
(230, 'woocommerce_trash_cancelled_orders', '', 'no'),
(231, 'woocommerce_anonymize_completed_orders', 'a:2:{s:6:\"number\";s:0:\"\";s:4:\"unit\";s:6:\"months\";}', 'no'),
(232, 'woocommerce_email_from_name', 'ShellHolster', 'no'),
(233, 'woocommerce_email_from_address', 'rostik22988@gmail.com', 'no'),
(234, 'woocommerce_email_header_image', '', 'no'),
(235, 'woocommerce_email_footer_text', '{site_title} &mdash; Built with {WooCommerce}', 'no'),
(236, 'woocommerce_email_base_color', '#96588a', 'no'),
(237, 'woocommerce_email_background_color', '#f7f7f7', 'no'),
(238, 'woocommerce_email_body_background_color', '#ffffff', 'no'),
(239, 'woocommerce_email_text_color', '#3c3c3c', 'no'),
(240, 'woocommerce_merchant_email_notifications', 'no', 'no'),
(241, 'woocommerce_cart_page_id', '7', 'no'),
(242, 'woocommerce_checkout_page_id', '8', 'no'),
(243, 'woocommerce_myaccount_page_id', '9', 'no'),
(244, 'woocommerce_terms_page_id', '', 'no'),
(246, 'woocommerce_force_ssl_checkout', 'no', 'yes'),
(247, 'woocommerce_unforce_ssl_checkout', 'no', 'yes'),
(248, 'woocommerce_checkout_pay_endpoint', 'order-pay', 'yes'),
(249, 'woocommerce_checkout_order_received_endpoint', 'order-received', 'yes'),
(250, 'woocommerce_myaccount_add_payment_method_endpoint', 'add-payment-method', 'yes'),
(251, 'woocommerce_myaccount_delete_payment_method_endpoint', 'delete-payment-method', 'yes'),
(252, 'woocommerce_myaccount_set_default_payment_method_endpoint', 'set-default-payment-method', 'yes'),
(253, 'woocommerce_myaccount_orders_endpoint', 'orders', 'yes'),
(254, 'woocommerce_myaccount_view_order_endpoint', 'view-order', 'yes'),
(255, 'woocommerce_myaccount_downloads_endpoint', 'downloads', 'yes'),
(256, 'woocommerce_myaccount_edit_account_endpoint', 'edit-account', 'yes'),
(257, 'woocommerce_myaccount_edit_address_endpoint', 'edit-address', 'yes'),
(258, 'woocommerce_myaccount_payment_methods_endpoint', 'payment-methods', 'yes'),
(259, 'woocommerce_myaccount_lost_password_endpoint', 'lost-password', 'yes'),
(260, 'woocommerce_logout_endpoint', 'customer-logout', 'yes'),
(261, 'woocommerce_api_enabled', 'no', 'yes'),
(262, 'woocommerce_allow_tracking', 'no', 'no'),
(263, 'woocommerce_show_marketplace_suggestions', 'yes', 'no'),
(264, 'woocommerce_single_image_width', '600', 'yes'),
(265, 'woocommerce_thumbnail_image_width', '300', 'yes'),
(266, 'woocommerce_checkout_highlight_required_fields', 'yes', 'yes'),
(267, 'woocommerce_demo_store', 'no', 'no'),
(268, 'woocommerce_permalinks', 'a:5:{s:12:\"product_base\";s:5:\"/shop\";s:13:\"category_base\";s:16:\"product-category\";s:8:\"tag_base\";s:11:\"product-tag\";s:14:\"attribute_base\";s:0:\"\";s:22:\"use_verbose_page_rules\";b:1;}', 'yes'),
(269, 'current_theme_supports_woocommerce', 'yes', 'yes'),
(270, 'woocommerce_queue_flush_rewrite_rules', 'no', 'yes'),
(273, 'default_product_cat', '15', 'yes'),
(275, 'woocommerce_refund_returns_page_id', '10', 'yes'),
(278, 'woocommerce_paypal_settings', 'a:23:{s:7:\"enabled\";s:2:\"no\";s:5:\"title\";s:6:\"PayPal\";s:11:\"description\";s:85:\"Pay via PayPal; you can pay with your credit card if you don\'t have a PayPal account.\";s:5:\"email\";s:21:\"rostik22988@gmail.com\";s:8:\"advanced\";s:0:\"\";s:8:\"testmode\";s:2:\"no\";s:5:\"debug\";s:2:\"no\";s:16:\"ipn_notification\";s:3:\"yes\";s:14:\"receiver_email\";s:21:\"rostik22988@gmail.com\";s:14:\"identity_token\";s:0:\"\";s:14:\"invoice_prefix\";s:3:\"WC-\";s:13:\"send_shipping\";s:3:\"yes\";s:16:\"address_override\";s:2:\"no\";s:13:\"paymentaction\";s:4:\"sale\";s:9:\"image_url\";s:0:\"\";s:11:\"api_details\";s:0:\"\";s:12:\"api_username\";s:0:\"\";s:12:\"api_password\";s:0:\"\";s:13:\"api_signature\";s:0:\"\";s:20:\"sandbox_api_username\";s:0:\"\";s:20:\"sandbox_api_password\";s:0:\"\";s:21:\"sandbox_api_signature\";s:0:\"\";s:12:\"_should_load\";s:2:\"no\";}', 'yes'),
(279, 'woocommerce_version', '5.9.0', 'yes'),
(280, 'woocommerce_db_version', '5.9.0', 'yes'),
(281, 'woocommerce_inbox_variant_assignment', '2', 'yes'),
(285, '_transient_jetpack_autoloader_plugin_paths', 'a:1:{i:0;s:29:\"{{WP_PLUGIN_DIR}}/woocommerce\";}', 'yes'),
(286, 'action_scheduler_lock_async-request-runner', '1638995111', 'yes'),
(287, 'woocommerce_admin_notices', 'a:1:{i:0;s:20:\"no_secure_connection\";}', 'yes'),
(288, 'woocommerce_maxmind_geolocation_settings', 'a:1:{s:15:\"database_prefix\";s:32:\"LI6tRxpxPQHIU0WUqwWPITPEOQD8V9Va\";}', 'yes'),
(289, '_transient_woocommerce_webhook_ids_status_active', 'a:0:{}', 'yes'),
(290, 'widget_woocommerce_widget_cart', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(291, 'widget_woocommerce_layered_nav_filters', 'a:2:{i:2;a:1:{s:5:\"title\";s:14:\"Active filters\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(292, 'widget_woocommerce_layered_nav', 'a:3:{i:2;a:4:{s:5:\"title\";s:12:\"Device Brand\";s:9:\"attribute\";s:5:\"brand\";s:12:\"display_type\";s:8:\"dropdown\";s:10:\"query_type\";s:3:\"and\";}i:3;a:4:{s:5:\"title\";s:12:\"Device Model\";s:9:\"attribute\";s:5:\"model\";s:12:\"display_type\";s:8:\"dropdown\";s:10:\"query_type\";s:3:\"and\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(293, 'widget_woocommerce_price_filter', 'a:2:{i:2;a:1:{s:5:\"title\";s:15:\"Filter by price\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(294, 'widget_woocommerce_product_categories', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(295, 'widget_woocommerce_product_search', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(296, 'widget_woocommerce_product_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(297, 'widget_woocommerce_products', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(298, 'widget_woocommerce_recently_viewed_products', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(299, 'widget_woocommerce_top_rated_products', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(300, 'widget_woocommerce_recent_reviews', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(301, 'widget_woocommerce_rating_filter', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(304, 'woocommerce_admin_version', '2.8.0', 'yes'),
(305, 'woocommerce_admin_install_timestamp', '1637685715', 'yes'),
(306, 'wc_remote_inbox_notifications_wca_updated', '', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(307, 'wc_remote_inbox_notifications_specs', 'a:30:{s:27:\"stripe_applepay_holiday2021\";O:8:\"stdClass\":8:{s:4:\"slug\";s:27:\"stripe_applepay_holiday2021\";s:4:\"type\";s:9:\"marketing\";s:6:\"status\";s:10:\"unactioned\";s:12:\"is_snoozable\";i:0;s:6:\"source\";s:15:\"woocommerce.com\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":3:{s:6:\"locale\";s:5:\"en_US\";s:5:\"title\";s:47:\"Boost sales this holiday season with Apple Pay!\";s:7:\"content\";s:380:\"Increase your conversion rate by letting your customers know that you accept Apple Pay. It’s seamless to <a href=\"https://docs.woocommerce.com/document/stripe/?_ga=2.90941597.642705274.1635776464-1391993999.1621950839#apple-pay\">enable Apple Pay with Stripe</a> and easy to communicate it with this <a href=\"https://developer.apple.com/apple-pay/marketing/\">marketing guide</a>.\";}}s:7:\"actions\";a:1:{i:0;O:8:\"stdClass\":6:{s:4:\"name\";s:27:\"stripe_applepay_holiday2021\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:16:\"Accept Apple Pay\";}}s:3:\"url\";s:34:\"https://woocommerce.com/apple-pay/\";s:18:\"url_is_admin_query\";b:0;s:10:\"is_primary\";b:1;s:6:\"status\";s:8:\"actioned\";}}s:5:\"rules\";a:3:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:18:\"publish_after_time\";s:13:\"publish_after\";s:19:\"2021-11-08 00:00:00\";}i:1;O:8:\"stdClass\":2:{s:4:\"type\";s:19:\"publish_before_time\";s:14:\"publish_before\";s:19:\"2021-12-26 00:00:00\";}i:2;O:8:\"stdClass\":2:{s:4:\"type\";s:17:\"plugins_activated\";s:7:\"plugins\";a:1:{i:0;s:26:\"woocommerce-gateway-stripe\";}}}}s:27:\"square_applepay_holiday2021\";O:8:\"stdClass\":8:{s:4:\"slug\";s:27:\"square_applepay_holiday2021\";s:4:\"type\";s:9:\"marketing\";s:6:\"status\";s:10:\"unactioned\";s:12:\"is_snoozable\";i:0;s:6:\"source\";s:15:\"woocommerce.com\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":3:{s:6:\"locale\";s:5:\"en_US\";s:5:\"title\";s:47:\"Boost sales this holiday season with Apple Pay!\";s:7:\"content\";s:393:\"Increase your conversion rate by letting your customers know that you accept Apple Pay. It’s seamless to <a href=\"https://docs.woocommerce.com/document/woocommerce-square/?_ga=2.90941597.642705274.1635776464-1391993999.1621950839#section-14\">enable Apple Pay with Square</a> and easy to communicate it with this <a href=\"https://developer.apple.com/apple-pay/marketing/\">marketing guide</a>.\";}}s:7:\"actions\";a:1:{i:0;O:8:\"stdClass\":6:{s:4:\"name\";s:27:\"square_applepay_holiday2021\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:16:\"Accept Apple Pay\";}}s:3:\"url\";s:34:\"https://woocommerce.com/apple-pay/\";s:18:\"url_is_admin_query\";b:0;s:10:\"is_primary\";b:1;s:6:\"status\";s:8:\"actioned\";}}s:5:\"rules\";a:3:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:18:\"publish_after_time\";s:13:\"publish_after\";s:19:\"2021-11-08 00:00:00\";}i:1;O:8:\"stdClass\":2:{s:4:\"type\";s:19:\"publish_before_time\";s:14:\"publish_before\";s:19:\"2021-12-26 00:00:00\";}i:2;O:8:\"stdClass\":2:{s:4:\"type\";s:17:\"plugins_activated\";s:7:\"plugins\";a:1:{i:0;s:18:\"woocommerce-square\";}}}}s:26:\"wcpay_applepay_holiday2021\";O:8:\"stdClass\":8:{s:4:\"slug\";s:26:\"wcpay_applepay_holiday2021\";s:4:\"type\";s:9:\"marketing\";s:6:\"status\";s:10:\"unactioned\";s:12:\"is_snoozable\";i:0;s:6:\"source\";s:15:\"woocommerce.com\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":3:{s:6:\"locale\";s:5:\"en_US\";s:5:\"title\";s:47:\"Boost sales this holiday season with Apple Pay!\";s:7:\"content\";s:338:\"Increase your conversion rate by letting your customers know that you accept Apple Pay. It’s seamless to <a href=\"https://docs.woocommerce.com/document/payments/apple-pay/\">enable Apple Pay with WooCommerce Payments</a> and easy to communicate it with this <a href=\"https://developer.apple.com/apple-pay/marketing/\">marketing guide</a>.\";}}s:7:\"actions\";a:1:{i:0;O:8:\"stdClass\":6:{s:4:\"name\";s:26:\"wcpay_applepay_holiday2021\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:16:\"Accept Apple Pay\";}}s:3:\"url\";s:34:\"https://woocommerce.com/apple-pay/\";s:18:\"url_is_admin_query\";b:0;s:10:\"is_primary\";b:1;s:6:\"status\";s:8:\"actioned\";}}s:5:\"rules\";a:3:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:18:\"publish_after_time\";s:13:\"publish_after\";s:19:\"2021-11-08 00:00:00\";}i:1;O:8:\"stdClass\":2:{s:4:\"type\";s:19:\"publish_before_time\";s:14:\"publish_before\";s:19:\"2021-12-26 00:00:00\";}i:2;O:8:\"stdClass\":2:{s:4:\"type\";s:17:\"plugins_activated\";s:7:\"plugins\";a:1:{i:0;s:20:\"woocommerce-payments\";}}}}s:27:\"new_in_app_marketplace_2021\";O:8:\"stdClass\":8:{s:4:\"slug\";s:27:\"new_in_app_marketplace_2021\";s:4:\"type\";s:4:\"info\";s:6:\"status\";s:10:\"unactioned\";s:12:\"is_snoozable\";i:0;s:6:\"source\";s:15:\"woocommerce.com\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":3:{s:6:\"locale\";s:5:\"en_US\";s:5:\"title\";s:36:\"Customize your store with extensions\";s:7:\"content\";s:164:\"Check out our NEW Extensions tab to see our favorite extensions for customizing your store, and discover the most popular extensions in the WooCommerce Marketplace.\";}}s:7:\"actions\";a:1:{i:0;O:8:\"stdClass\":6:{s:4:\"name\";s:17:\"browse_extensions\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:17:\"Browse extensions\";}}s:3:\"url\";s:15:\"&page=wc-addons\";s:18:\"url_is_admin_query\";b:1;s:10:\"is_primary\";b:1;s:6:\"status\";s:10:\"unactioned\";}}s:5:\"rules\";a:1:{i:0;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\">=\";s:7:\"version\";s:3:\"5.7\";}}}s:21:\"wayflyer_bnpl_q4_2021\";O:8:\"stdClass\":8:{s:4:\"slug\";s:21:\"wayflyer_bnpl_q4_2021\";s:4:\"type\";s:9:\"marketing\";s:6:\"status\";s:10:\"unactioned\";s:12:\"is_snoozable\";i:0;s:6:\"source\";s:15:\"woocommerce.com\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":3:{s:6:\"locale\";s:5:\"en_US\";s:5:\"title\";s:48:\"Grow your business with funding through Wayflyer\";s:7:\"content\";s:259:\"Fast, flexible financing to boost cash flow and help your business grow – one fee, no interest rates, penalties, equity, or personal guarantees. Based on your store\'s performance, Wayflyer provides funding and analytical insights to invest in your business.\";}}s:7:\"actions\";a:1:{i:0;O:8:\"stdClass\":6:{s:4:\"name\";s:21:\"wayflyer_bnpl_q4_2021\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:21:\"Level up with funding\";}}s:3:\"url\";s:42:\"https://woocommerce.com/products/wayflyer/\";s:18:\"url_is_admin_query\";b:0;s:10:\"is_primary\";b:1;s:6:\"status\";s:8:\"actioned\";}}s:5:\"rules\";a:4:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:18:\"publish_after_time\";s:13:\"publish_after\";s:19:\"2021-11-17 00:00:00\";}i:1;O:8:\"stdClass\":2:{s:4:\"type\";s:19:\"publish_before_time\";s:14:\"publish_before\";s:19:\"2021-12-18 00:00:00\";}i:2;O:8:\"stdClass\":2:{s:4:\"type\";s:2:\"or\";s:8:\"operands\";a:7:{i:0;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"AU\";}i:1;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"BE\";}i:2;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"CA\";}i:3;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"IE\";}i:4;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"NL\";}i:5;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"GB\";}i:6;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"US\";}}}i:3;O:8:\"stdClass\":2:{s:4:\"type\";s:2:\"or\";s:8:\"operands\";a:3:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:17:\"plugins_activated\";s:7:\"plugins\";a:1:{i:0;s:26:\"woocommerce-gateway-affirm\";}}i:1;O:8:\"stdClass\":2:{s:4:\"type\";s:17:\"plugins_activated\";s:7:\"plugins\";a:1:{i:0;s:32:\"afterpay-gateway-for-woocommerce\";}}i:2;O:8:\"stdClass\":2:{s:4:\"type\";s:17:\"plugins_activated\";s:7:\"plugins\";a:1:{i:0;s:31:\"klarna-payments-for-woocommerce\";}}}}}}s:35:\"wc_shipping_mobile_app_usps_q4_2021\";O:8:\"stdClass\":8:{s:4:\"slug\";s:35:\"wc_shipping_mobile_app_usps_q4_2021\";s:4:\"type\";s:9:\"marketing\";s:6:\"status\";s:10:\"unactioned\";s:12:\"is_snoozable\";i:0;s:6:\"source\";s:15:\"woocommerce.com\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":3:{s:6:\"locale\";s:5:\"en_US\";s:5:\"title\";s:94:\"Print and manage your shipping labels with WooCommerce Shipping and the WooCommerce Mobile App\";s:7:\"content\";s:210:\"Save time by printing, purchasing, refunding, and tracking shipping labels generated by <a href=\"https://woocommerce.com/woocommerce-shipping/\">WooCommerce Shipping</a> – all directly from your mobile device!\";}}s:7:\"actions\";a:1:{i:0;O:8:\"stdClass\":6:{s:4:\"name\";s:35:\"wc_shipping_mobile_app_usps_q4_2021\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:24:\"Get WooCommerce Shipping\";}}s:3:\"url\";s:45:\"https://woocommerce.com/woocommerce-shipping/\";s:18:\"url_is_admin_query\";b:0;s:10:\"is_primary\";b:1;s:6:\"status\";s:8:\"actioned\";}}s:5:\"rules\";a:5:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:18:\"publish_after_time\";s:13:\"publish_after\";s:19:\"2021-11-12 00:00:00\";}i:1;O:8:\"stdClass\":2:{s:4:\"type\";s:19:\"publish_before_time\";s:14:\"publish_before\";s:19:\"2021-11-27 00:00:00\";}i:2;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"US\";}i:3;O:8:\"stdClass\":2:{s:4:\"type\";s:17:\"plugins_activated\";s:7:\"plugins\";a:1:{i:0;s:25:\"woocommerce-shipping-usps\";}}i:4;O:8:\"stdClass\":2:{s:4:\"type\";s:3:\"not\";s:7:\"operand\";a:1:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:17:\"plugins_activated\";s:7:\"plugins\";a:1:{i:0;s:20:\"woocommerce-services\";}}}}}}s:30:\"wc_shipping_mobile_app_q4_2021\";O:8:\"stdClass\":8:{s:4:\"slug\";s:30:\"wc_shipping_mobile_app_q4_2021\";s:4:\"type\";s:9:\"marketing\";s:6:\"status\";s:10:\"unactioned\";s:12:\"is_snoozable\";i:0;s:6:\"source\";s:15:\"woocommerce.com\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":3:{s:6:\"locale\";s:5:\"en_US\";s:5:\"title\";s:69:\"Print and manage your shipping labels with the WooCommerce Mobile App\";s:7:\"content\";s:210:\"Save time by printing, purchasing, refunding, and tracking shipping labels generated by <a href=\"https://woocommerce.com/woocommerce-shipping/\">WooCommerce Shipping</a> – all directly from your mobile device!\";}}s:7:\"actions\";a:1:{i:0;O:8:\"stdClass\":6:{s:4:\"name\";s:30:\"wc_shipping_mobile_app_q4_2021\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:30:\"Get the WooCommerce Mobile App\";}}s:3:\"url\";s:31:\"https://woocommerce.com/mobile/\";s:18:\"url_is_admin_query\";b:0;s:10:\"is_primary\";b:1;s:6:\"status\";s:8:\"actioned\";}}s:5:\"rules\";a:4:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:18:\"publish_after_time\";s:13:\"publish_after\";s:19:\"2021-11-12 00:00:00\";}i:1;O:8:\"stdClass\":2:{s:4:\"type\";s:19:\"publish_before_time\";s:14:\"publish_before\";s:19:\"2021-11-27 00:00:00\";}i:2;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"US\";}i:3;O:8:\"stdClass\":2:{s:4:\"type\";s:17:\"plugins_activated\";s:7:\"plugins\";a:1:{i:0;s:20:\"woocommerce-services\";}}}}s:37:\"ecomm-need-help-setting-up-your-store\";O:8:\"stdClass\":8:{s:4:\"slug\";s:37:\"ecomm-need-help-setting-up-your-store\";s:4:\"type\";s:4:\"info\";s:6:\"status\";s:10:\"unactioned\";s:12:\"is_snoozable\";i:0;s:6:\"source\";s:15:\"woocommerce.com\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":3:{s:6:\"locale\";s:5:\"en_US\";s:5:\"title\";s:32:\"Need help setting up your Store?\";s:7:\"content\";s:350:\"Schedule a free 30-min <a href=\"https://wordpress.com/support/concierge-support/\">quick start session</a> and get help from our specialists. We’re happy to walk through setup steps, show you around the WordPress.com dashboard, troubleshoot any issues you may have, and help you the find the features you need to accomplish your goals for your site.\";}}s:7:\"actions\";a:1:{i:0;O:8:\"stdClass\":6:{s:4:\"name\";s:16:\"set-up-concierge\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:21:\"Schedule free session\";}}s:3:\"url\";s:34:\"https://wordpress.com/me/concierge\";s:18:\"url_is_admin_query\";b:0;s:10:\"is_primary\";b:1;s:6:\"status\";s:8:\"actioned\";}}s:5:\"rules\";a:1:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:17:\"plugins_activated\";s:7:\"plugins\";a:3:{i:0;s:35:\"woocommerce-shipping-australia-post\";i:1;s:32:\"woocommerce-shipping-canada-post\";i:2;s:30:\"woocommerce-shipping-royalmail\";}}}}s:20:\"woocommerce-services\";O:8:\"stdClass\":8:{s:4:\"slug\";s:20:\"woocommerce-services\";s:4:\"type\";s:4:\"info\";s:6:\"status\";s:10:\"unactioned\";s:12:\"is_snoozable\";i:0;s:6:\"source\";s:15:\"woocommerce.com\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":3:{s:6:\"locale\";s:5:\"en_US\";s:5:\"title\";s:26:\"WooCommerce Shipping & Tax\";s:7:\"content\";s:255:\"WooCommerce Shipping & Tax helps get your store “ready to sell” as quickly as possible. You create your products. We take care of tax calculation, payment processing, and shipping label printing! Learn more about the extension that you just installed.\";}}s:7:\"actions\";a:1:{i:0;O:8:\"stdClass\":6:{s:4:\"name\";s:10:\"learn-more\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:10:\"Learn more\";}}s:3:\"url\";s:84:\"https://docs.woocommerce.com/document/woocommerce-shipping-and-tax/?utm_source=inbox\";s:18:\"url_is_admin_query\";b:0;s:10:\"is_primary\";b:1;s:6:\"status\";s:10:\"unactioned\";}}s:5:\"rules\";a:2:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:17:\"plugins_activated\";s:7:\"plugins\";a:1:{i:0;s:20:\"woocommerce-services\";}}i:1;O:8:\"stdClass\":3:{s:4:\"type\";s:18:\"wcadmin_active_for\";s:9:\"operation\";s:1:\"<\";s:4:\"days\";i:2;}}}s:32:\"ecomm-unique-shopping-experience\";O:8:\"stdClass\":8:{s:4:\"slug\";s:32:\"ecomm-unique-shopping-experience\";s:4:\"type\";s:4:\"info\";s:6:\"status\";s:10:\"unactioned\";s:12:\"is_snoozable\";i:0;s:6:\"source\";s:15:\"woocommerce.com\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":3:{s:6:\"locale\";s:5:\"en_US\";s:5:\"title\";s:53:\"For a shopping experience as unique as your customers\";s:7:\"content\";s:274:\"Product Add-Ons allow your customers to personalize products while they’re shopping on your online store. No more follow-up email requests—customers get what they want, before they’re done checking out. Learn more about this extension that comes included in your plan.\";}}s:7:\"actions\";a:1:{i:0;O:8:\"stdClass\":6:{s:4:\"name\";s:43:\"learn-more-ecomm-unique-shopping-experience\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:10:\"Learn more\";}}s:3:\"url\";s:71:\"https://docs.woocommerce.com/document/product-add-ons/?utm_source=inbox\";s:18:\"url_is_admin_query\";b:0;s:10:\"is_primary\";b:1;s:6:\"status\";s:8:\"actioned\";}}s:5:\"rules\";a:2:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:17:\"plugins_activated\";s:7:\"plugins\";a:3:{i:0;s:35:\"woocommerce-shipping-australia-post\";i:1;s:32:\"woocommerce-shipping-canada-post\";i:2;s:30:\"woocommerce-shipping-royalmail\";}}i:1;O:8:\"stdClass\":3:{s:4:\"type\";s:18:\"wcadmin_active_for\";s:9:\"operation\";s:1:\"<\";s:4:\"days\";i:2;}}}s:37:\"wc-admin-getting-started-in-ecommerce\";O:8:\"stdClass\":8:{s:4:\"slug\";s:37:\"wc-admin-getting-started-in-ecommerce\";s:4:\"type\";s:4:\"info\";s:6:\"status\";s:10:\"unactioned\";s:12:\"is_snoozable\";i:0;s:6:\"source\";s:15:\"woocommerce.com\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":3:{s:6:\"locale\";s:5:\"en_US\";s:5:\"title\";s:38:\"Getting Started in eCommerce - webinar\";s:7:\"content\";s:174:\"We want to make eCommerce and this process of getting started as easy as possible for you. Watch this webinar to get tips on how to have our store up and running in a breeze.\";}}s:7:\"actions\";a:1:{i:0;O:8:\"stdClass\":6:{s:4:\"name\";s:17:\"watch-the-webinar\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:17:\"Watch the webinar\";}}s:3:\"url\";s:28:\"https://youtu.be/V_2XtCOyZ7o\";s:18:\"url_is_admin_query\";b:0;s:10:\"is_primary\";b:1;s:6:\"status\";s:8:\"actioned\";}}s:5:\"rules\";a:2:{i:0;O:8:\"stdClass\":4:{s:4:\"type\";s:18:\"onboarding_profile\";s:5:\"index\";s:12:\"setup_client\";s:9:\"operation\";s:2:\"!=\";s:5:\"value\";b:1;}i:1;O:8:\"stdClass\":2:{s:4:\"type\";s:2:\"or\";s:8:\"operands\";a:3:{i:0;O:8:\"stdClass\":4:{s:4:\"type\";s:18:\"onboarding_profile\";s:5:\"index\";s:13:\"product_count\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:1:\"0\";}i:1;O:8:\"stdClass\":4:{s:4:\"type\";s:18:\"onboarding_profile\";s:5:\"index\";s:7:\"revenue\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:4:\"none\";}i:2;O:8:\"stdClass\":4:{s:4:\"type\";s:18:\"onboarding_profile\";s:5:\"index\";s:7:\"revenue\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:10:\"up-to-2500\";}}}}}s:18:\"your-first-product\";O:8:\"stdClass\":8:{s:4:\"slug\";s:18:\"your-first-product\";s:4:\"type\";s:4:\"info\";s:6:\"status\";s:10:\"unactioned\";s:12:\"is_snoozable\";i:0;s:6:\"source\";s:15:\"woocommerce.com\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":3:{s:6:\"locale\";s:5:\"en_US\";s:5:\"title\";s:18:\"Your first product\";s:7:\"content\";s:461:\"That\'s huge! You\'re well on your way to building a successful online store — now it’s time to think about how you\'ll fulfill your orders.<br/><br/>Read our shipping guide to learn best practices and options for putting together your shipping strategy. And for WooCommerce stores in the United States, you can print discounted shipping labels via USPS with <a href=\"https://href.li/?https://woocommerce.com/shipping\" target=\"_blank\">WooCommerce Shipping</a>.\";}}s:7:\"actions\";a:1:{i:0;O:8:\"stdClass\":6:{s:4:\"name\";s:10:\"learn-more\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:10:\"Learn more\";}}s:3:\"url\";s:82:\"https://woocommerce.com/posts/ecommerce-shipping-solutions-guide/?utm_source=inbox\";s:18:\"url_is_admin_query\";b:0;s:10:\"is_primary\";b:1;s:6:\"status\";s:8:\"actioned\";}}s:5:\"rules\";a:4:{i:0;O:8:\"stdClass\":4:{s:4:\"type\";s:12:\"stored_state\";s:5:\"index\";s:22:\"there_were_no_products\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";b:1;}i:1;O:8:\"stdClass\":4:{s:4:\"type\";s:12:\"stored_state\";s:5:\"index\";s:22:\"there_are_now_products\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";b:1;}i:2;O:8:\"stdClass\":3:{s:4:\"type\";s:13:\"product_count\";s:9:\"operation\";s:2:\">=\";s:5:\"value\";i:1;}i:3;O:8:\"stdClass\":5:{s:4:\"type\";s:18:\"onboarding_profile\";s:5:\"index\";s:13:\"product_types\";s:9:\"operation\";s:8:\"contains\";s:5:\"value\";s:8:\"physical\";s:7:\"default\";a:0:{}}}}s:37:\"wc-admin-optimizing-the-checkout-flow\";O:8:\"stdClass\":8:{s:4:\"slug\";s:37:\"wc-admin-optimizing-the-checkout-flow\";s:4:\"type\";s:4:\"info\";s:6:\"status\";s:10:\"unactioned\";s:12:\"is_snoozable\";i:0;s:6:\"source\";s:15:\"woocommerce.com\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":3:{s:6:\"locale\";s:5:\"en_US\";s:5:\"title\";s:28:\"Optimizing the checkout flow\";s:7:\"content\";s:171:\"It\'s crucial to get your store\'s checkout as smooth as possible to avoid losing sales. Let\'s take a look at how you can optimize the checkout experience for your shoppers.\";}}s:7:\"actions\";a:1:{i:0;O:8:\"stdClass\":6:{s:4:\"name\";s:28:\"optimizing-the-checkout-flow\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:10:\"Learn more\";}}s:3:\"url\";s:78:\"https://woocommerce.com/posts/optimizing-woocommerce-checkout?utm_source=inbox\";s:18:\"url_is_admin_query\";b:0;s:10:\"is_primary\";b:1;s:6:\"status\";s:8:\"actioned\";}}s:5:\"rules\";a:2:{i:0;O:8:\"stdClass\":3:{s:4:\"type\";s:18:\"wcadmin_active_for\";s:9:\"operation\";s:1:\">\";s:4:\"days\";i:3;}i:1;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:45:\"woocommerce_task_list_tracked_completed_tasks\";s:9:\"operation\";s:8:\"contains\";s:5:\"value\";s:8:\"payments\";s:7:\"default\";a:0:{}}}}s:39:\"wc-admin-first-five-things-to-customize\";O:8:\"stdClass\":8:{s:4:\"slug\";s:39:\"wc-admin-first-five-things-to-customize\";s:4:\"type\";s:4:\"info\";s:6:\"status\";s:10:\"unactioned\";s:12:\"is_snoozable\";i:0;s:6:\"source\";s:15:\"woocommerce.com\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":3:{s:6:\"locale\";s:5:\"en_US\";s:5:\"title\";s:45:\"The first 5 things to customize in your store\";s:7:\"content\";s:173:\"Deciding what to start with first is tricky. To help you properly prioritize, we\'ve put together this short list of the first few things you should customize in WooCommerce.\";}}s:7:\"actions\";a:1:{i:0;O:8:\"stdClass\":6:{s:4:\"name\";s:10:\"learn-more\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:10:\"Learn more\";}}s:3:\"url\";s:82:\"https://woocommerce.com/posts/first-things-customize-woocommerce/?utm_source=inbox\";s:18:\"url_is_admin_query\";b:0;s:10:\"is_primary\";b:1;s:6:\"status\";s:10:\"unactioned\";}}s:5:\"rules\";a:2:{i:0;O:8:\"stdClass\":3:{s:4:\"type\";s:18:\"wcadmin_active_for\";s:9:\"operation\";s:1:\">\";s:4:\"days\";i:2;}i:1;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:45:\"woocommerce_task_list_tracked_completed_tasks\";s:5:\"value\";s:9:\"NOT EMPTY\";s:7:\"default\";s:9:\"NOT EMPTY\";s:9:\"operation\";s:2:\"!=\";}}}s:32:\"wc-payments-qualitative-feedback\";O:8:\"stdClass\":8:{s:4:\"slug\";s:32:\"wc-payments-qualitative-feedback\";s:4:\"type\";s:4:\"info\";s:6:\"status\";s:10:\"unactioned\";s:12:\"is_snoozable\";i:0;s:6:\"source\";s:15:\"woocommerce.com\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":3:{s:6:\"locale\";s:5:\"en_US\";s:5:\"title\";s:55:\"WooCommerce Payments setup - let us know what you think\";s:7:\"content\";s:146:\"Congrats on enabling WooCommerce Payments for your store. Please share your feedback in this 2 minute survey to help us improve the setup process.\";}}s:7:\"actions\";a:1:{i:0;O:8:\"stdClass\":6:{s:4:\"name\";s:35:\"qualitative-feedback-from-new-users\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:14:\"Share feedback\";}}s:3:\"url\";s:39:\"https://automattic.survey.fm/wc-pay-new\";s:18:\"url_is_admin_query\";b:0;s:10:\"is_primary\";b:1;s:6:\"status\";s:8:\"actioned\";}}s:5:\"rules\";a:1:{i:0;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:45:\"woocommerce_task_list_tracked_completed_tasks\";s:9:\"operation\";s:8:\"contains\";s:5:\"value\";s:20:\"woocommerce-payments\";s:7:\"default\";a:0:{}}}}s:29:\"share-your-feedback-on-paypal\";O:8:\"stdClass\":8:{s:4:\"slug\";s:29:\"share-your-feedback-on-paypal\";s:4:\"type\";s:4:\"info\";s:6:\"status\";s:10:\"unactioned\";s:12:\"is_snoozable\";i:0;s:6:\"source\";s:15:\"woocommerce.com\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":3:{s:6:\"locale\";s:5:\"en_US\";s:5:\"title\";s:29:\"Share your feedback on PayPal\";s:7:\"content\";s:127:\"Share your feedback in this 2 minute survey about how we can make the process of accepting payments more useful for your store.\";}}s:7:\"actions\";a:1:{i:0;O:8:\"stdClass\":6:{s:4:\"name\";s:14:\"share-feedback\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:14:\"Share feedback\";}}s:3:\"url\";s:43:\"http://automattic.survey.fm/paypal-feedback\";s:18:\"url_is_admin_query\";b:0;s:10:\"is_primary\";b:1;s:6:\"status\";s:10:\"unactioned\";}}s:5:\"rules\";a:2:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:3:\"not\";s:7:\"operand\";a:1:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:17:\"plugins_activated\";s:7:\"plugins\";a:1:{i:0;s:26:\"woocommerce-gateway-stripe\";}}}}i:1;O:8:\"stdClass\":2:{s:4:\"type\";s:17:\"plugins_activated\";s:7:\"plugins\";a:1:{i:0;s:43:\"woocommerce-gateway-paypal-express-checkout\";}}}}s:31:\"google_listings_and_ads_install\";O:8:\"stdClass\":8:{s:4:\"slug\";s:31:\"google_listings_and_ads_install\";s:4:\"type\";s:9:\"marketing\";s:6:\"status\";s:10:\"unactioned\";s:12:\"is_snoozable\";i:0;s:6:\"source\";s:15:\"woocommerce.com\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":3:{s:6:\"locale\";s:5:\"en_US\";s:5:\"title\";s:35:\"Drive traffic and sales with Google\";s:7:\"content\";s:123:\"Reach online shoppers to drive traffic and sales for your store by showcasing products across Google, for free or with ads.\";}}s:7:\"actions\";a:1:{i:0;O:8:\"stdClass\":6:{s:4:\"name\";s:11:\"get-started\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:11:\"Get started\";}}s:3:\"url\";s:56:\"https://woocommerce.com/products/google-listings-and-ads\";s:18:\"url_is_admin_query\";b:0;s:10:\"is_primary\";b:1;s:6:\"status\";s:8:\"actioned\";}}s:5:\"rules\";a:3:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:18:\"publish_after_time\";s:13:\"publish_after\";s:19:\"2021-06-09 00:00:00\";}i:1;O:8:\"stdClass\":2:{s:4:\"type\";s:3:\"not\";s:7:\"operand\";a:1:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:17:\"plugins_activated\";s:7:\"plugins\";a:1:{i:0;s:23:\"google_listings_and_ads\";}}}}i:2;O:8:\"stdClass\":3:{s:4:\"type\";s:11:\"order_count\";s:9:\"operation\";s:1:\">\";s:5:\"value\";i:10;}}}s:39:\"wc-subscriptions-security-update-3-0-15\";O:8:\"stdClass\":8:{s:4:\"slug\";s:39:\"wc-subscriptions-security-update-3-0-15\";s:4:\"type\";s:4:\"info\";s:6:\"status\";s:10:\"unactioned\";s:12:\"is_snoozable\";i:0;s:6:\"source\";s:15:\"woocommerce.com\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":3:{s:6:\"locale\";s:5:\"en_US\";s:5:\"title\";s:42:\"WooCommerce Subscriptions security update!\";s:7:\"content\";s:736:\"We recently released an important security update to WooCommerce Subscriptions. To ensure your site\'s data is protected, please upgrade <strong>WooCommerce Subscriptions to version 3.0.15</strong> or later.<br/><br/>Click the button below to view and update to the latest Subscriptions version, or log in to <a href=\"https://woocommerce.com/my-dashboard\">WooCommerce.com Dashboard</a> and navigate to your <strong>Downloads</strong> page.<br/><br/>We recommend always using the latest version of WooCommerce Subscriptions, and other software running on your site, to ensure maximum security.<br/><br/>If you have any questions we are here to help — just <a href=\"https://woocommerce.com/my-account/create-a-ticket/\">open a ticket</a>.\";}}s:7:\"actions\";a:1:{i:0;O:8:\"stdClass\":6:{s:4:\"name\";s:30:\"update-wc-subscriptions-3-0-15\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:19:\"View latest version\";}}s:3:\"url\";s:30:\"&page=wc-addons&section=helper\";s:18:\"url_is_admin_query\";b:1;s:10:\"is_primary\";b:1;s:6:\"status\";s:8:\"actioned\";}}s:5:\"rules\";a:1:{i:0;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:25:\"woocommerce-subscriptions\";s:8:\"operator\";s:1:\"<\";s:7:\"version\";s:6:\"3.0.15\";}}}s:29:\"woocommerce-core-update-5-4-0\";O:8:\"stdClass\":8:{s:4:\"slug\";s:29:\"woocommerce-core-update-5-4-0\";s:4:\"type\";s:4:\"info\";s:6:\"status\";s:10:\"unactioned\";s:12:\"is_snoozable\";i:0;s:6:\"source\";s:15:\"woocommerce.com\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":3:{s:6:\"locale\";s:5:\"en_US\";s:5:\"title\";s:31:\"Update to WooCommerce 5.4.1 now\";s:7:\"content\";s:140:\"WooCommerce 5.4.1 addresses a checkout issue discovered in WooCommerce 5.4. We recommend upgrading to WooCommerce 5.4.1 as soon as possible.\";}}s:7:\"actions\";a:1:{i:0;O:8:\"stdClass\":6:{s:4:\"name\";s:20:\"update-wc-core-5-4-0\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:25:\"How to update WooCommerce\";}}s:3:\"url\";s:64:\"https://docs.woocommerce.com/document/how-to-update-woocommerce/\";s:18:\"url_is_admin_query\";b:0;s:10:\"is_primary\";b:1;s:6:\"status\";s:8:\"actioned\";}}s:5:\"rules\";a:1:{i:0;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"5.4.0\";}}}s:19:\"wcpay-promo-2020-11\";O:8:\"stdClass\":7:{s:4:\"slug\";s:19:\"wcpay-promo-2020-11\";s:4:\"type\";s:9:\"marketing\";s:6:\"status\";s:10:\"unactioned\";s:12:\"is_snoozable\";i:0;s:6:\"source\";s:15:\"woocommerce.com\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":3:{s:6:\"locale\";s:5:\"en_US\";s:5:\"title\";s:19:\"wcpay-promo-2020-11\";s:7:\"content\";s:19:\"wcpay-promo-2020-11\";}}s:5:\"rules\";a:0:{}}s:19:\"wcpay-promo-2020-12\";O:8:\"stdClass\":7:{s:4:\"slug\";s:19:\"wcpay-promo-2020-12\";s:4:\"type\";s:9:\"marketing\";s:6:\"status\";s:10:\"unactioned\";s:12:\"is_snoozable\";i:0;s:6:\"source\";s:15:\"woocommerce.com\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":3:{s:6:\"locale\";s:5:\"en_US\";s:5:\"title\";s:19:\"wcpay-promo-2020-12\";s:7:\"content\";s:19:\"wcpay-promo-2020-12\";}}s:5:\"rules\";a:0:{}}s:30:\"wcpay-promo-2021-6-incentive-1\";O:8:\"stdClass\":8:{s:4:\"slug\";s:30:\"wcpay-promo-2021-6-incentive-1\";s:4:\"type\";s:9:\"marketing\";s:6:\"status\";s:10:\"unactioned\";s:12:\"is_snoozable\";i:0;s:6:\"source\";s:15:\"woocommerce.com\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":3:{s:6:\"locale\";s:5:\"en_US\";s:5:\"title\";s:82:\"Simplify the payments process for you and your customers with WooCommerce Payments\";s:7:\"content\";s:702:\"With <a href=\"https://woocommerce.com/payments/?utm_medium=notification&utm_source=product&utm_campaign=wcpay601\">WooCommerce Payments</a>, you can securely accept all major cards, Apple Pay®, and recurring revenue in over 100 currencies.\n				Built into your store’s WooCommerce dashboard, track cash flow and manage all of your transactions in one place – with no setup costs or monthly fees.\n				<br/><br/>\n				By clicking \"Get WooCommerce Payments,\" you agree to the <a href=\"https://wordpress.com/tos/?utm_medium=notification&utm_source=product&utm_campaign=wcpay601\">Terms of Service</a>\n				and acknowledge you have read the <a href=\"https://automattic.com/privacy/\">Privacy Policy</a>.\n				\";}}s:7:\"actions\";a:1:{i:0;O:8:\"stdClass\":6:{s:4:\"name\";s:25:\"get-woo-commerce-payments\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:24:\"Get WooCommerce Payments\";}}s:3:\"url\";s:57:\"admin.php?page=wc-admin&action=setup-woocommerce-payments\";s:18:\"url_is_admin_query\";b:0;s:10:\"is_primary\";b:1;s:6:\"status\";s:8:\"actioned\";}}s:5:\"rules\";a:12:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:2:\"or\";s:8:\"operands\";a:6:{i:0;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:36:\"woocommerce_inbox_variant_assignment\";s:5:\"value\";s:1:\"1\";s:7:\"default\";b:0;s:9:\"operation\";s:1:\"=\";}i:1;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:36:\"woocommerce_inbox_variant_assignment\";s:5:\"value\";s:1:\"3\";s:7:\"default\";b:0;s:9:\"operation\";s:1:\"=\";}i:2;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:36:\"woocommerce_inbox_variant_assignment\";s:5:\"value\";s:1:\"5\";s:7:\"default\";b:0;s:9:\"operation\";s:1:\"=\";}i:3;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:36:\"woocommerce_inbox_variant_assignment\";s:5:\"value\";s:1:\"7\";s:7:\"default\";b:0;s:9:\"operation\";s:1:\"=\";}i:4;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:36:\"woocommerce_inbox_variant_assignment\";s:5:\"value\";s:1:\"9\";s:7:\"default\";b:0;s:9:\"operation\";s:1:\"=\";}i:5;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:36:\"woocommerce_inbox_variant_assignment\";s:5:\"value\";s:2:\"11\";s:7:\"default\";b:0;s:9:\"operation\";s:1:\"=\";}}}i:1;O:8:\"stdClass\":2:{s:4:\"type\";s:3:\"not\";s:7:\"operand\";a:1:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:17:\"plugins_activated\";s:7:\"plugins\";a:4:{i:0;s:17:\"crowdsignal-forms\";i:1;s:11:\"layout-grid\";i:2;s:17:\"full-site-editing\";i:3;s:13:\"page-optimize\";}}}}i:2;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"US\";s:9:\"operation\";s:1:\"=\";}i:3;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:26:\"woocommerce_allow_tracking\";s:5:\"value\";s:3:\"yes\";s:7:\"default\";b:0;s:9:\"operation\";s:1:\"=\";}i:4;O:8:\"stdClass\":3:{s:4:\"type\";s:18:\"wcadmin_active_for\";s:9:\"operation\";s:2:\">=\";s:4:\"days\";i:31;}i:5;O:8:\"stdClass\":2:{s:4:\"type\";s:3:\"not\";s:7:\"operand\";a:1:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:17:\"plugins_activated\";s:7:\"plugins\";a:1:{i:0;s:20:\"woocommerce-payments\";}}}}i:6;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\">=\";s:7:\"version\";s:3:\"4.0\";}i:7;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:10:\"db_version\";s:5:\"value\";s:5:\"45805\";s:7:\"default\";i:0;s:9:\"operation\";s:2:\">=\";}i:8;O:8:\"stdClass\":4:{s:4:\"type\";s:11:\"note_status\";s:9:\"note_name\";s:19:\"wcpay-promo-2020-11\";s:6:\"status\";s:8:\"actioned\";s:9:\"operation\";s:2:\"!=\";}i:9;O:8:\"stdClass\":4:{s:4:\"type\";s:11:\"note_status\";s:9:\"note_name\";s:19:\"wcpay-promo-2020-11\";s:6:\"status\";s:10:\"unactioned\";s:9:\"operation\";s:2:\"!=\";}i:10;O:8:\"stdClass\":4:{s:4:\"type\";s:11:\"note_status\";s:9:\"note_name\";s:19:\"wcpay-promo-2020-12\";s:6:\"status\";s:8:\"actioned\";s:9:\"operation\";s:2:\"!=\";}i:11;O:8:\"stdClass\":4:{s:4:\"type\";s:11:\"note_status\";s:9:\"note_name\";s:19:\"wcpay-promo-2020-12\";s:6:\"status\";s:10:\"unactioned\";s:9:\"operation\";s:2:\"!=\";}}}s:30:\"wcpay-promo-2021-6-incentive-2\";O:8:\"stdClass\":8:{s:4:\"slug\";s:30:\"wcpay-promo-2021-6-incentive-2\";s:4:\"type\";s:9:\"marketing\";s:6:\"status\";s:10:\"unactioned\";s:12:\"is_snoozable\";i:0;s:6:\"source\";s:15:\"woocommerce.com\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":3:{s:6:\"locale\";s:5:\"en_US\";s:5:\"title\";s:82:\"Simplify the payments process for you and your customers with WooCommerce Payments\";s:7:\"content\";s:702:\"With <a href=\"https://woocommerce.com/payments/?utm_medium=notification&utm_source=product&utm_campaign=wcpay601\">WooCommerce Payments</a>, you can securely accept all major cards, Apple Pay®, and recurring revenue in over 100 currencies.\n				Built into your store’s WooCommerce dashboard, track cash flow and manage all of your transactions in one place – with no setup costs or monthly fees.\n				<br/><br/>\n				By clicking \"Get WooCommerce Payments,\" you agree to the <a href=\"https://wordpress.com/tos/?utm_medium=notification&utm_source=product&utm_campaign=wcpay601\">Terms of Service</a>\n				and acknowledge you have read the <a href=\"https://automattic.com/privacy/\">Privacy Policy</a>.\n				\";}}s:7:\"actions\";a:1:{i:0;O:8:\"stdClass\":6:{s:4:\"name\";s:24:\"get-woocommerce-payments\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:24:\"Get WooCommerce Payments\";}}s:3:\"url\";s:57:\"admin.php?page=wc-admin&action=setup-woocommerce-payments\";s:18:\"url_is_admin_query\";b:0;s:10:\"is_primary\";b:1;s:6:\"status\";s:8:\"actioned\";}}s:5:\"rules\";a:12:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:2:\"or\";s:8:\"operands\";a:6:{i:0;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:36:\"woocommerce_inbox_variant_assignment\";s:5:\"value\";s:1:\"2\";s:7:\"default\";b:0;s:9:\"operation\";s:1:\"=\";}i:1;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:36:\"woocommerce_inbox_variant_assignment\";s:5:\"value\";s:1:\"4\";s:7:\"default\";b:0;s:9:\"operation\";s:1:\"=\";}i:2;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:36:\"woocommerce_inbox_variant_assignment\";s:5:\"value\";s:1:\"6\";s:7:\"default\";b:0;s:9:\"operation\";s:1:\"=\";}i:3;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:36:\"woocommerce_inbox_variant_assignment\";s:5:\"value\";s:1:\"8\";s:7:\"default\";b:0;s:9:\"operation\";s:1:\"=\";}i:4;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:36:\"woocommerce_inbox_variant_assignment\";s:5:\"value\";s:2:\"10\";s:7:\"default\";b:0;s:9:\"operation\";s:1:\"=\";}i:5;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:36:\"woocommerce_inbox_variant_assignment\";s:5:\"value\";s:2:\"12\";s:7:\"default\";b:0;s:9:\"operation\";s:1:\"=\";}}}i:1;O:8:\"stdClass\":2:{s:4:\"type\";s:3:\"not\";s:7:\"operand\";a:1:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:17:\"plugins_activated\";s:7:\"plugins\";a:4:{i:0;s:17:\"crowdsignal-forms\";i:1;s:11:\"layout-grid\";i:2;s:17:\"full-site-editing\";i:3;s:13:\"page-optimize\";}}}}i:2;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"US\";s:9:\"operation\";s:1:\"=\";}i:3;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:26:\"woocommerce_allow_tracking\";s:5:\"value\";s:3:\"yes\";s:7:\"default\";b:0;s:9:\"operation\";s:1:\"=\";}i:4;O:8:\"stdClass\":3:{s:4:\"type\";s:18:\"wcadmin_active_for\";s:9:\"operation\";s:2:\">=\";s:4:\"days\";i:31;}i:5;O:8:\"stdClass\":2:{s:4:\"type\";s:3:\"not\";s:7:\"operand\";a:1:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:17:\"plugins_activated\";s:7:\"plugins\";a:1:{i:0;s:20:\"woocommerce-payments\";}}}}i:6;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\">=\";s:7:\"version\";s:3:\"4.0\";}i:7;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:10:\"db_version\";s:5:\"value\";s:5:\"45805\";s:7:\"default\";i:0;s:9:\"operation\";s:2:\">=\";}i:8;O:8:\"stdClass\":4:{s:4:\"type\";s:11:\"note_status\";s:9:\"note_name\";s:19:\"wcpay-promo-2020-11\";s:6:\"status\";s:8:\"actioned\";s:9:\"operation\";s:2:\"!=\";}i:9;O:8:\"stdClass\":4:{s:4:\"type\";s:11:\"note_status\";s:9:\"note_name\";s:19:\"wcpay-promo-2020-11\";s:6:\"status\";s:10:\"unactioned\";s:9:\"operation\";s:2:\"!=\";}i:10;O:8:\"stdClass\":4:{s:4:\"type\";s:11:\"note_status\";s:9:\"note_name\";s:19:\"wcpay-promo-2020-12\";s:6:\"status\";s:8:\"actioned\";s:9:\"operation\";s:2:\"!=\";}i:11;O:8:\"stdClass\":4:{s:4:\"type\";s:11:\"note_status\";s:9:\"note_name\";s:19:\"wcpay-promo-2020-12\";s:6:\"status\";s:10:\"unactioned\";s:9:\"operation\";s:2:\"!=\";}}}s:34:\"ppxo-pps-upgrade-paypal-payments-1\";O:8:\"stdClass\":8:{s:4:\"slug\";s:34:\"ppxo-pps-upgrade-paypal-payments-1\";s:4:\"type\";s:4:\"info\";s:6:\"status\";s:10:\"unactioned\";s:12:\"is_snoozable\";i:0;s:6:\"source\";s:15:\"woocommerce.com\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":3:{s:6:\"locale\";s:5:\"en_US\";s:5:\"title\";s:47:\"Get the latest PayPal extension for WooCommerce\";s:7:\"content\";s:440:\"Heads up! There\'s a new PayPal on the block!<br/><br/>Now is a great time to upgrade to our latest <a href=\"https://woocommerce.com/products/woocommerce-paypal-payments/\" target=\"_blank\">PayPal extension</a> to continue to receive support and updates with PayPal.<br/><br/>Get access to a full suite of PayPal payment methods, extensive currency and country coverage, and pay later options with the all-new PayPal extension for WooCommerce.\";}}s:7:\"actions\";a:1:{i:0;O:8:\"stdClass\":6:{s:4:\"name\";s:34:\"ppxo-pps-install-paypal-payments-1\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:18:\"View upgrade guide\";}}s:3:\"url\";s:96:\"https://docs.woocommerce.com/document/woocommerce-paypal-payments/paypal-payments-upgrade-guide/\";s:18:\"url_is_admin_query\";b:0;s:10:\"is_primary\";b:1;s:6:\"status\";s:8:\"actioned\";}}s:5:\"rules\";a:4:{i:0;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\">=\";s:7:\"version\";s:3:\"5.5\";}i:1;O:8:\"stdClass\":2:{s:4:\"type\";s:3:\"not\";s:7:\"operand\";a:1:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:17:\"plugins_activated\";s:7:\"plugins\";a:1:{i:0;s:27:\"woocommerce-paypal-payments\";}}}}i:2;O:8:\"stdClass\":2:{s:4:\"type\";s:2:\"or\";s:8:\"operands\";a:2:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:17:\"plugins_activated\";s:7:\"plugins\";a:1:{i:0;s:43:\"woocommerce-gateway-paypal-express-checkout\";}}i:1;O:8:\"stdClass\":6:{s:4:\"type\";s:6:\"option\";s:12:\"transformers\";a:1:{i:0;O:8:\"stdClass\":2:{s:3:\"use\";s:12:\"dot_notation\";s:9:\"arguments\";O:8:\"stdClass\":1:{s:4:\"path\";s:7:\"enabled\";}}}s:11:\"option_name\";s:27:\"woocommerce_paypal_settings\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:3:\"yes\";s:7:\"default\";b:0;}}}i:3;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:36:\"woocommerce_inbox_variant_assignment\";s:5:\"value\";i:7;s:7:\"default\";i:1;s:9:\"operation\";s:1:\"<\";}}}s:34:\"ppxo-pps-upgrade-paypal-payments-2\";O:8:\"stdClass\":8:{s:4:\"slug\";s:34:\"ppxo-pps-upgrade-paypal-payments-2\";s:4:\"type\";s:4:\"info\";s:6:\"status\";s:10:\"unactioned\";s:12:\"is_snoozable\";i:0;s:6:\"source\";s:15:\"woocommerce.com\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":3:{s:6:\"locale\";s:5:\"en_US\";s:5:\"title\";s:31:\"Upgrade your PayPal experience!\";s:7:\"content\";s:513:\"We\'ve developed a whole new <a href=\"https://woocommerce.com/products/woocommerce-paypal-payments/\" target=\"_blank\">PayPal extension for WooCommerce</a> that combines the best features of our many PayPal extensions into just one extension.<br/><br/>Get access to a full suite of PayPal payment methods, extensive currency and country coverage, offer subscription and recurring payments, and the new PayPal pay later options.<br/><br/>Start using our latest PayPal today to continue to receive support and updates.\";}}s:7:\"actions\";a:1:{i:0;O:8:\"stdClass\":6:{s:4:\"name\";s:34:\"ppxo-pps-install-paypal-payments-2\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:18:\"View upgrade guide\";}}s:3:\"url\";s:96:\"https://docs.woocommerce.com/document/woocommerce-paypal-payments/paypal-payments-upgrade-guide/\";s:18:\"url_is_admin_query\";b:0;s:10:\"is_primary\";b:1;s:6:\"status\";s:8:\"actioned\";}}s:5:\"rules\";a:4:{i:0;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\">=\";s:7:\"version\";s:3:\"5.5\";}i:1;O:8:\"stdClass\":2:{s:4:\"type\";s:3:\"not\";s:7:\"operand\";a:1:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:17:\"plugins_activated\";s:7:\"plugins\";a:1:{i:0;s:27:\"woocommerce-paypal-payments\";}}}}i:2;O:8:\"stdClass\":2:{s:4:\"type\";s:2:\"or\";s:8:\"operands\";a:2:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:17:\"plugins_activated\";s:7:\"plugins\";a:1:{i:0;s:43:\"woocommerce-gateway-paypal-express-checkout\";}}i:1;O:8:\"stdClass\":6:{s:4:\"type\";s:6:\"option\";s:12:\"transformers\";a:1:{i:0;O:8:\"stdClass\":2:{s:3:\"use\";s:12:\"dot_notation\";s:9:\"arguments\";O:8:\"stdClass\":1:{s:4:\"path\";s:7:\"enabled\";}}}s:11:\"option_name\";s:27:\"woocommerce_paypal_settings\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:3:\"yes\";s:7:\"default\";b:0;}}}i:3;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:36:\"woocommerce_inbox_variant_assignment\";s:5:\"value\";i:6;s:7:\"default\";i:1;s:9:\"operation\";s:1:\">\";}}}s:46:\"woocommerce-core-sqli-july-2021-need-to-update\";O:8:\"stdClass\":8:{s:4:\"slug\";s:46:\"woocommerce-core-sqli-july-2021-need-to-update\";s:4:\"type\";s:6:\"update\";s:6:\"status\";s:10:\"unactioned\";s:12:\"is_snoozable\";i:0;s:6:\"source\";s:15:\"woocommerce.com\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":3:{s:6:\"locale\";s:5:\"en_US\";s:5:\"title\";s:56:\"Action required: Critical vulnerabilities in WooCommerce\";s:7:\"content\";s:570:\"In response to a critical vulnerability identified on July 13, 2021, we are working with the WordPress Plugins Team to deploy software updates to stores running WooCommerce (versions 3.3 to 5.5) and the WooCommerce Blocks feature plugin (versions 2.5 to 5.5).<br/><br/>Our investigation into this vulnerability is ongoing, but <strong>we wanted to let you know now about the importance of updating immediately</strong>.<br/><br/>For more information on which actions you should take, as well as answers to FAQs, please urgently review our blog post detailing this issue.\";}}s:7:\"actions\";a:2:{i:0;O:8:\"stdClass\":6:{s:4:\"name\";s:10:\"learn-more\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:10:\"Learn more\";}}s:3:\"url\";s:146:\"https://woocommerce.com/posts/critical-vulnerability-detected-july-2021/?utm_source=inbox_note&utm_medium=product&utm_campaign=vulnerability_comms\";s:18:\"url_is_admin_query\";b:0;s:10:\"is_primary\";b:1;s:6:\"status\";s:10:\"unactioned\";}i:1;O:8:\"stdClass\":6:{s:4:\"name\";s:7:\"dismiss\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:7:\"Dismiss\";}}s:3:\"url\";b:0;s:18:\"url_is_admin_query\";b:0;s:10:\"is_primary\";b:0;s:6:\"status\";s:8:\"actioned\";}}s:5:\"rules\";a:38:{i:0;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"3.3.6\";}i:1;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"3.4.8\";}i:2;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"3.5.9\";}i:3;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"3.6.6\";}i:4;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"3.7.2\";}i:5;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"3.8.2\";}i:6;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"3.9.4\";}i:7;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"4.0.2\";}i:8;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"4.0.3\";}i:9;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"4.1.2\";}i:10;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"4.1.3\";}i:11;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"4.2.3\";}i:12;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"4.2.4\";}i:13;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"4.3.4\";}i:14;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"4.3.5\";}i:15;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"4.4.2\";}i:16;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"4.4.3\";}i:17;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"4.5.3\";}i:18;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"4.5.4\";}i:19;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"4.6.3\";}i:20;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"4.6.4\";}i:21;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"4.7.2\";}i:22;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"4.7.3\";}i:23;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"4.8.1\";}i:24;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"4.8.2\";}i:25;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"4.9.3\";}i:26;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"4.9.4\";}i:27;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"5.0.1\";}i:28;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"5.0.2\";}i:29;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"5.1.1\";}i:30;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"5.1.2\";}i:31;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"5.2.3\";}i:32;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"5.2.4\";}i:33;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"5.3.1\";}i:34;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"5.3.2\";}i:35;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"5.4.2\";}i:36;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"5.4.3\";}i:37;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"<\";s:7:\"version\";s:5:\"5.5.1\";}}}s:48:\"woocommerce-blocks-sqli-july-2021-need-to-update\";O:8:\"stdClass\":8:{s:4:\"slug\";s:48:\"woocommerce-blocks-sqli-july-2021-need-to-update\";s:4:\"type\";s:6:\"update\";s:6:\"status\";s:10:\"unactioned\";s:12:\"is_snoozable\";i:0;s:6:\"source\";s:15:\"woocommerce.com\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":3:{s:6:\"locale\";s:5:\"en_US\";s:5:\"title\";s:63:\"Action required: Critical vulnerabilities in WooCommerce Blocks\";s:7:\"content\";s:570:\"In response to a critical vulnerability identified on July 13, 2021, we are working with the WordPress Plugins Team to deploy software updates to stores running WooCommerce (versions 3.3 to 5.5) and the WooCommerce Blocks feature plugin (versions 2.5 to 5.5).<br/><br/>Our investigation into this vulnerability is ongoing, but <strong>we wanted to let you know now about the importance of updating immediately</strong>.<br/><br/>For more information on which actions you should take, as well as answers to FAQs, please urgently review our blog post detailing this issue.\";}}s:7:\"actions\";a:2:{i:0;O:8:\"stdClass\":6:{s:4:\"name\";s:10:\"learn-more\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:10:\"Learn more\";}}s:3:\"url\";s:146:\"https://woocommerce.com/posts/critical-vulnerability-detected-july-2021/?utm_source=inbox_note&utm_medium=product&utm_campaign=vulnerability_comms\";s:18:\"url_is_admin_query\";b:0;s:10:\"is_primary\";b:1;s:6:\"status\";s:10:\"unactioned\";}i:1;O:8:\"stdClass\":6:{s:4:\"name\";s:7:\"dismiss\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:7:\"Dismiss\";}}s:3:\"url\";b:0;s:18:\"url_is_admin_query\";b:0;s:10:\"is_primary\";b:0;s:6:\"status\";s:8:\"actioned\";}}s:5:\"rules\";a:31:{i:0;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:6:\"2.5.16\";}i:1;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"2.6.2\";}i:2;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"2.7.2\";}i:3;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"2.8.1\";}i:4;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"2.9.1\";}i:5;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"3.0.1\";}i:6;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"3.1.1\";}i:7;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"3.2.1\";}i:8;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"3.3.1\";}i:9;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"3.4.1\";}i:10;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"3.5.1\";}i:11;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"3.6.1\";}i:12;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"3.7.2\";}i:13;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"3.8.1\";}i:14;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"3.9.1\";}i:15;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"4.0.1\";}i:16;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"4.1.1\";}i:17;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"4.2.1\";}i:18;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"4.3.1\";}i:19;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"4.4.3\";}i:20;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"4.5.3\";}i:21;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"4.6.1\";}i:22;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"4.7.1\";}i:23;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"4.8.1\";}i:24;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"4.9.2\";}i:25;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"5.0.1\";}i:26;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"5.1.1\";}i:27;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"5.2.1\";}i:28;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"5.3.2\";}i:29;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"5.4.1\";}i:30;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:1:\"<\";s:7:\"version\";s:5:\"5.5.1\";}}}s:45:\"woocommerce-core-sqli-july-2021-store-patched\";O:8:\"stdClass\":8:{s:4:\"slug\";s:45:\"woocommerce-core-sqli-july-2021-store-patched\";s:4:\"type\";s:6:\"update\";s:6:\"status\";s:10:\"unactioned\";s:12:\"is_snoozable\";i:0;s:6:\"source\";s:15:\"woocommerce.com\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":3:{s:6:\"locale\";s:5:\"en_US\";s:5:\"title\";s:55:\"Solved: Critical vulnerabilities patched in WooCommerce\";s:7:\"content\";s:433:\"In response to a critical vulnerability identified on July 13, 2021, we worked with the WordPress Plugins Team to deploy software updates to stores running WooCommerce (versions 3.3 to 5.5) and the WooCommerce Blocks feature plugin (versions 2.5 to 5.5).<br/><br/><strong>Your store has been updated to the latest secure version(s)</strong>. For more information and answers to FAQs, please review our blog post detailing this issue.\";}}s:7:\"actions\";a:2:{i:0;O:8:\"stdClass\":6:{s:4:\"name\";s:10:\"learn-more\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:10:\"Learn more\";}}s:3:\"url\";s:146:\"https://woocommerce.com/posts/critical-vulnerability-detected-july-2021/?utm_source=inbox_note&utm_medium=product&utm_campaign=vulnerability_comms\";s:18:\"url_is_admin_query\";b:0;s:10:\"is_primary\";b:1;s:6:\"status\";s:10:\"unactioned\";}i:1;O:8:\"stdClass\":6:{s:4:\"name\";s:7:\"dismiss\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:7:\"Dismiss\";}}s:3:\"url\";b:0;s:18:\"url_is_admin_query\";b:0;s:10:\"is_primary\";b:0;s:6:\"status\";s:8:\"actioned\";}}s:5:\"rules\";a:3:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:3:\"not\";s:7:\"operand\";a:1:{i:0;O:8:\"stdClass\":4:{s:4:\"type\";s:11:\"note_status\";s:9:\"note_name\";s:46:\"woocommerce-core-sqli-july-2021-need-to-update\";s:6:\"status\";s:7:\"pending\";s:9:\"operation\";s:1:\"=\";}}}i:1;O:8:\"stdClass\":2:{s:4:\"type\";s:3:\"not\";s:7:\"operand\";a:1:{i:0;O:8:\"stdClass\":4:{s:4:\"type\";s:11:\"note_status\";s:9:\"note_name\";s:48:\"woocommerce-blocks-sqli-july-2021-need-to-update\";s:6:\"status\";s:7:\"pending\";s:9:\"operation\";s:1:\"=\";}}}i:2;O:8:\"stdClass\":2:{s:4:\"type\";s:2:\"or\";s:8:\"operands\";a:23:{i:0;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"3.3.6\";}i:1;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"3.4.8\";}i:2;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"3.5.9\";}i:3;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"3.6.6\";}i:4;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"3.7.2\";}i:5;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"3.8.2\";}i:6;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"3.9.4\";}i:7;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"4.0.2\";}i:8;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"4.1.2\";}i:9;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"4.2.3\";}i:10;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"4.3.4\";}i:11;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"4.4.2\";}i:12;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"4.5.3\";}i:13;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"4.6.3\";}i:14;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"4.7.2\";}i:15;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"4.8.1\";}i:16;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"4.9.3\";}i:17;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"5.0.1\";}i:18;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"5.1.1\";}i:19;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"5.2.3\";}i:20;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"5.3.1\";}i:21;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"5.4.2\";}i:22;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\">=\";s:7:\"version\";s:5:\"5.5.1\";}}}}}s:47:\"woocommerce-blocks-sqli-july-2021-store-patched\";O:8:\"stdClass\":8:{s:4:\"slug\";s:47:\"woocommerce-blocks-sqli-july-2021-store-patched\";s:4:\"type\";s:6:\"update\";s:6:\"status\";s:10:\"unactioned\";s:12:\"is_snoozable\";i:0;s:6:\"source\";s:15:\"woocommerce.com\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":3:{s:6:\"locale\";s:5:\"en_US\";s:5:\"title\";s:62:\"Solved: Critical vulnerabilities patched in WooCommerce Blocks\";s:7:\"content\";s:433:\"In response to a critical vulnerability identified on July 13, 2021, we worked with the WordPress Plugins Team to deploy software updates to stores running WooCommerce (versions 3.3 to 5.5) and the WooCommerce Blocks feature plugin (versions 2.5 to 5.5).<br/><br/><strong>Your store has been updated to the latest secure version(s)</strong>. For more information and answers to FAQs, please review our blog post detailing this issue.\";}}s:7:\"actions\";a:2:{i:0;O:8:\"stdClass\":6:{s:4:\"name\";s:10:\"learn-more\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:10:\"Learn more\";}}s:3:\"url\";s:146:\"https://woocommerce.com/posts/critical-vulnerability-detected-july-2021/?utm_source=inbox_note&utm_medium=product&utm_campaign=vulnerability_comms\";s:18:\"url_is_admin_query\";b:0;s:10:\"is_primary\";b:1;s:6:\"status\";s:10:\"unactioned\";}i:1;O:8:\"stdClass\":6:{s:4:\"name\";s:7:\"dismiss\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:7:\"Dismiss\";}}s:3:\"url\";b:0;s:18:\"url_is_admin_query\";b:0;s:10:\"is_primary\";b:0;s:6:\"status\";s:8:\"actioned\";}}s:5:\"rules\";a:3:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:3:\"not\";s:7:\"operand\";a:1:{i:0;O:8:\"stdClass\":4:{s:4:\"type\";s:11:\"note_status\";s:9:\"note_name\";s:46:\"woocommerce-core-sqli-july-2021-need-to-update\";s:6:\"status\";s:7:\"pending\";s:9:\"operation\";s:1:\"=\";}}}i:1;O:8:\"stdClass\":2:{s:4:\"type\";s:3:\"not\";s:7:\"operand\";a:1:{i:0;O:8:\"stdClass\":4:{s:4:\"type\";s:11:\"note_status\";s:9:\"note_name\";s:48:\"woocommerce-blocks-sqli-july-2021-need-to-update\";s:6:\"status\";s:7:\"pending\";s:9:\"operation\";s:1:\"=\";}}}i:2;O:8:\"stdClass\":2:{s:4:\"type\";s:2:\"or\";s:8:\"operands\";a:31:{i:0;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:6:\"2.5.16\";}i:1;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"2.6.2\";}i:2;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"2.7.2\";}i:3;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"2.8.1\";}i:4;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"2.9.1\";}i:5;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"3.0.1\";}i:6;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"3.1.1\";}i:7;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"3.2.1\";}i:8;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"3.3.1\";}i:9;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"3.4.1\";}i:10;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"3.5.1\";}i:11;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"3.6.1\";}i:12;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"3.7.2\";}i:13;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"3.8.1\";}i:14;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"3.9.1\";}i:15;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"4.0.1\";}i:16;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"4.1.1\";}i:17;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"4.2.1\";}i:18;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"4.3.1\";}i:19;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"4.4.3\";}i:20;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"4.5.3\";}i:21;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"4.6.1\";}i:22;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"4.7.1\";}i:23;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"4.8.1\";}i:24;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"4.9.2\";}i:25;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"5.0.1\";}i:26;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"5.1.1\";}i:27;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"5.2.1\";}i:28;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"5.3.2\";}i:29;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"5.4.1\";}i:30;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:2:\">=\";s:7:\"version\";s:5:\"5.5.1\";}}}}}s:19:\"habit-moment-survey\";O:8:\"stdClass\":8:{s:4:\"slug\";s:19:\"habit-moment-survey\";s:4:\"type\";s:9:\"marketing\";s:6:\"status\";s:10:\"unactioned\";s:12:\"is_snoozable\";i:0;s:6:\"source\";s:15:\"woocommerce.com\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":3:{s:6:\"locale\";s:5:\"en_US\";s:5:\"title\";s:61:\"We\'re all ears! Share your experience so far with WooCommerce\";s:7:\"content\";s:134:\"We\'d love your input to shape the future of WooCommerce together. Feel free to share any feedback, ideas or suggestions that you have.\";}}s:7:\"actions\";a:1:{i:0;O:8:\"stdClass\":6:{s:4:\"name\";s:14:\"share-feedback\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:14:\"Share feedback\";}}s:3:\"url\";s:45:\"https://automattic.survey.fm/store-management\";s:18:\"url_is_admin_query\";b:0;s:10:\"is_primary\";b:1;s:6:\"status\";s:10:\"unactioned\";}}s:5:\"rules\";a:3:{i:0;O:8:\"stdClass\":3:{s:4:\"type\";s:18:\"wcadmin_active_for\";s:9:\"operation\";s:1:\">\";s:4:\"days\";i:3;}i:1;O:8:\"stdClass\":3:{s:4:\"type\";s:11:\"order_count\";s:9:\"operation\";s:1:\">\";s:5:\"value\";i:30;}i:2;O:8:\"stdClass\":3:{s:4:\"type\";s:13:\"product_count\";s:9:\"operation\";s:1:\">\";s:5:\"value\";i:0;}}}}', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(308, 'wc_remote_inbox_notifications_stored_state', 'O:8:\"stdClass\":2:{s:22:\"there_were_no_products\";b:1;s:22:\"there_are_now_products\";b:1;}', 'no'),
(314, 'wc_blocks_surface_cart_checkout_probability', '33', 'yes'),
(315, 'wc_blocks_db_schema_version', '260', 'yes'),
(318, 'woocommerce_meta_box_errors', 'a:0:{}', 'yes'),
(321, '_transient_woocommerce_reports-transient-version', '1637685726', 'yes'),
(328, 'woocommerce_onboarding_profile', 'a:1:{s:7:\"skipped\";b:1;}', 'yes'),
(339, 'woocommerce_task_list_welcome_modal_dismissed', 'yes', 'yes'),
(352, '_site_transient_timeout_browser_b4088f046bf9a570f2964ffc86d258ff', '1639390423', 'no'),
(353, '_site_transient_browser_b4088f046bf9a570f2964ffc86d258ff', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:12:\"96.0.4664.45\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(354, '_site_transient_timeout_php_check_f9714bbe413cc376a70847d9c1f86fcc', '1639390424', 'no'),
(355, '_site_transient_php_check_f9714bbe413cc376a70847d9c1f86fcc', 'a:5:{s:19:\"recommended_version\";s:3:\"7.4\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:1;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}', 'no'),
(358, '_transient_health-check-site-status-result', '{\"good\":14,\"recommended\":4,\"critical\":1}', 'yes'),
(361, '_transient_shipping-transient-version', '1638785634', 'yes'),
(363, '_transient_timeout_wc_shipping_method_count_legacy', '1641377634', 'no'),
(366, '_transient_wc_shipping_method_count_legacy', 'a:2:{s:7:\"version\";s:10:\"1638785634\";s:5:\"value\";i:0;}', 'no'),
(408, 'current_theme', 'shellholster', 'yes'),
(409, 'theme_mods_shellholster', 'a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:3:{s:12:\"menu-primary\";i:16;s:13:\"menu-footer-1\";i:17;s:13:\"menu-footer-2\";i:18;}s:18:\"custom_css_post_id\";i:-1;s:11:\"custom_logo\";i:19;}', 'yes'),
(410, 'theme_switched', '', 'yes'),
(413, 'woocommerce_catalog_rows', '1', 'yes'),
(414, 'woocommerce_catalog_columns', '3', 'yes'),
(415, 'woocommerce_maybe_regenerate_images_hash', '0354fa9fd89ed0769e68ad19ec0251fa', 'yes'),
(424, '_transient_timeout_orders-all-statuses', '1639392349', 'no'),
(425, '_transient_orders-all-statuses', 'a:2:{s:7:\"version\";s:10:\"1637685726\";s:5:\"value\";a:0:{}}', 'no'),
(432, 'wpcf7', 'a:2:{s:7:\"version\";s:5:\"5.5.3\";s:13:\"bulk_validate\";a:4:{s:9:\"timestamp\";i:1638787756;s:7:\"version\";s:5:\"5.5.3\";s:11:\"count_valid\";i:1;s:13:\"count_invalid\";i:0;}}', 'yes'),
(434, 'acf_version', '5.8.1', 'yes'),
(444, '_transient_product_query-transient-version', '1638989873', 'yes'),
(445, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}', 'yes'),
(455, 'widget_recent-comments', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(456, 'widget_recent-posts', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(460, 'site_logo', '19', 'yes'),
(466, '_transient_timeout_wc_report_customers_stats_5ff75cebf84d86c9115c2c6a07ac292c', '1639394423', 'no'),
(467, '_transient_wc_report_customers_stats_5ff75cebf84d86c9115c2c6a07ac292c', 'a:2:{s:7:\"version\";s:10:\"1637685726\";s:5:\"value\";O:8:\"stdClass\":4:{s:15:\"customers_count\";i:0;s:16:\"avg_orders_count\";d:0;s:15:\"avg_total_spend\";d:0;s:19:\"avg_avg_order_value\";d:0;}}', 'no'),
(608, 'category_children', 'a:0:{}', 'yes'),
(614, 'contact_email', 'support@shellholster.com', 'no'),
(615, '_contact_email', 'field_607802f563c73', 'no'),
(616, 'contact_phones_0_phone', '856-336-8157', 'no'),
(617, '_contact_phones_0_phone', 'field_6103eb13fd2c3', 'no'),
(618, 'contact_phones', '1', 'no'),
(619, '_contact_phones', 'field_607802ea63c72', 'no'),
(620, 'contact_socials_instagram', '', 'no'),
(621, '_contact_socials_instagram', 'field_608a5d5a78f17', 'no'),
(622, 'contact_socials_facebook', '', 'no'),
(623, '_contact_socials_facebook', 'field_608a5d6e78f18', 'no'),
(624, 'contact_socials_linkedin', '', 'no'),
(625, '_contact_socials_linkedin', 'field_6149b91258089', 'no'),
(626, 'contact_socials', '4', 'no'),
(627, '_contact_socials', 'field_6078030963c74', 'no'),
(628, 'contact_messengers_telegram', '', 'no'),
(629, '_contact_messengers_telegram', 'field_608c190db233f', 'no'),
(630, 'contact_messengers_viber', '', 'no'),
(631, '_contact_messengers_viber', 'field_608c1975b2342', 'no'),
(632, 'contact_messengers_whatsapp', '', 'no'),
(633, '_contact_messengers_whatsapp', 'field_608c195cb2341', 'no'),
(634, 'contact_messengers', '', 'no'),
(635, '_contact_messengers', 'field_608c190cb233e', 'no'),
(647, 'contact_socials_0_social', 'a:3:{s:5:\"title\";s:8:\"Facebook\";s:3:\"url\";s:25:\"https://www.facebook.com/\";s:6:\"target\";s:6:\"_blank\";}', 'no'),
(648, '_contact_socials_0_social', 'field_61ae17904cf2b', 'no'),
(649, 'contact_socials_1_social', 'a:3:{s:5:\"title\";s:9:\"Instagram\";s:3:\"url\";s:26:\"https://www.instagram.com/\";s:6:\"target\";s:6:\"_blank\";}', 'no'),
(650, '_contact_socials_1_social', 'field_61ae17904cf2b', 'no'),
(651, 'contact_socials_2_social', 'a:3:{s:5:\"title\";s:7:\"Twitter\";s:3:\"url\";s:20:\"https://twitter.com/\";s:6:\"target\";s:6:\"_blank\";}', 'no'),
(652, '_contact_socials_2_social', 'field_61ae17904cf2b', 'no'),
(653, 'contact_socials_3_social', 'a:3:{s:5:\"title\";s:8:\"Linkedin\";s:3:\"url\";s:25:\"https://www.linkedin.com/\";s:6:\"target\";s:6:\"_blank\";}', 'no'),
(654, '_contact_socials_3_social', 'field_61ae17904cf2b', 'no'),
(720, 'action_scheduler_migration_status', 'complete', 'yes'),
(722, 'contact_socials_0_icon', '<i class=\"fab fa-facebook-f\"></i>', 'no'),
(723, '_contact_socials_0_icon', 'field_61ae23c1de2fa', 'no'),
(724, 'contact_socials_1_icon', '<i class=\"fab fa-instagram\"></i>', 'no'),
(725, '_contact_socials_1_icon', 'field_61ae23c1de2fa', 'no'),
(726, 'contact_socials_2_icon', '<i class=\"fab fa-twitter\"></i>', 'no'),
(727, '_contact_socials_2_icon', 'field_61ae23c1de2fa', 'no'),
(728, 'contact_socials_3_icon', '<i class=\"fab fa-linkedin-in\"></i>', 'no'),
(729, '_contact_socials_3_icon', 'field_61ae23c1de2fa', 'no'),
(743, 'contact_address', '2 Pin Oak Lane Ste 200 Cherry Hill, NJ 08003', 'no'),
(744, '_contact_address', 'field_61ae2a1147a78', 'no'),
(752, 'contact_map', ' <div id=\"map\" data-lat=\"49.4207235\" data-lng=\"26.9857634\"></div>', 'no'),
(753, '_contact_map', 'field_61ae2bddb9153', 'no'),
(831, 'woocommerce_marketplace_suggestions', 'a:2:{s:11:\"suggestions\";a:27:{i:0;a:4:{s:4:\"slug\";s:28:\"product-edit-meta-tab-header\";s:7:\"context\";s:28:\"product-edit-meta-tab-header\";s:5:\"title\";s:22:\"Recommended extensions\";s:13:\"allow-dismiss\";b:0;}i:1;a:6:{s:4:\"slug\";s:39:\"product-edit-meta-tab-footer-browse-all\";s:7:\"context\";s:28:\"product-edit-meta-tab-footer\";s:9:\"link-text\";s:21:\"Browse all extensions\";s:3:\"url\";s:64:\"https://woocommerce.com/product-category/woocommerce-extensions/\";s:8:\"promoted\";s:31:\"category-woocommerce-extensions\";s:13:\"allow-dismiss\";b:0;}i:2;a:9:{s:4:\"slug\";s:46:\"product-edit-mailchimp-woocommerce-memberships\";s:7:\"product\";s:33:\"woocommerce-memberships-mailchimp\";s:14:\"show-if-active\";a:1:{i:0;s:23:\"woocommerce-memberships\";}s:7:\"context\";a:1:{i:0;s:26:\"product-edit-meta-tab-body\";}s:4:\"icon\";s:116:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/marketplace-suggestions/icons/mailchimp-for-memberships.svg\";s:5:\"title\";s:25:\"Mailchimp for Memberships\";s:4:\"copy\";s:79:\"Completely automate your email lists by syncing membership changes to Mailchimp\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:67:\"https://woocommerce.com/products/mailchimp-woocommerce-memberships/\";}i:3;a:9:{s:4:\"slug\";s:19:\"product-edit-addons\";s:7:\"product\";s:26:\"woocommerce-product-addons\";s:14:\"show-if-active\";a:2:{i:0;s:25:\"woocommerce-subscriptions\";i:1;s:20:\"woocommerce-bookings\";}s:7:\"context\";a:1:{i:0;s:26:\"product-edit-meta-tab-body\";}s:4:\"icon\";s:106:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/marketplace-suggestions/icons/product-add-ons.svg\";s:5:\"title\";s:15:\"Product Add-Ons\";s:4:\"copy\";s:93:\"Offer add-ons like gift wrapping, special messages or other special options for your products\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:49:\"https://woocommerce.com/products/product-add-ons/\";}i:4;a:9:{s:4:\"slug\";s:46:\"product-edit-woocommerce-subscriptions-gifting\";s:7:\"product\";s:33:\"woocommerce-subscriptions-gifting\";s:14:\"show-if-active\";a:1:{i:0;s:25:\"woocommerce-subscriptions\";}s:7:\"context\";a:1:{i:0;s:26:\"product-edit-meta-tab-body\";}s:4:\"icon\";s:116:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/marketplace-suggestions/icons/gifting-for-subscriptions.svg\";s:5:\"title\";s:25:\"Gifting for Subscriptions\";s:4:\"copy\";s:70:\"Let customers buy subscriptions for others - they\'re the ultimate gift\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:67:\"https://woocommerce.com/products/woocommerce-subscriptions-gifting/\";}i:5;a:9:{s:4:\"slug\";s:42:\"product-edit-teams-woocommerce-memberships\";s:7:\"product\";s:33:\"woocommerce-memberships-for-teams\";s:14:\"show-if-active\";a:1:{i:0;s:23:\"woocommerce-memberships\";}s:7:\"context\";a:1:{i:0;s:26:\"product-edit-meta-tab-body\";}s:4:\"icon\";s:112:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/marketplace-suggestions/icons/teams-for-memberships.svg\";s:5:\"title\";s:21:\"Teams for Memberships\";s:4:\"copy\";s:123:\"Adds B2B functionality to WooCommerce Memberships, allowing sites to sell team, group, corporate, or family member accounts\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:63:\"https://woocommerce.com/products/teams-woocommerce-memberships/\";}i:6;a:8:{s:4:\"slug\";s:29:\"product-edit-variation-images\";s:7:\"product\";s:39:\"woocommerce-additional-variation-images\";s:7:\"context\";a:1:{i:0;s:26:\"product-edit-meta-tab-body\";}s:4:\"icon\";s:118:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/marketplace-suggestions/icons/additional-variation-images.svg\";s:5:\"title\";s:27:\"Additional Variation Images\";s:4:\"copy\";s:72:\"Showcase your products in the best light with a image for each variation\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:73:\"https://woocommerce.com/products/woocommerce-additional-variation-images/\";}i:7;a:9:{s:4:\"slug\";s:47:\"product-edit-woocommerce-subscription-downloads\";s:7:\"product\";s:34:\"woocommerce-subscription-downloads\";s:14:\"show-if-active\";a:1:{i:0;s:25:\"woocommerce-subscriptions\";}s:7:\"context\";a:1:{i:0;s:26:\"product-edit-meta-tab-body\";}s:4:\"icon\";s:113:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/marketplace-suggestions/icons/subscription-downloads.svg\";s:5:\"title\";s:22:\"Subscription Downloads\";s:4:\"copy\";s:57:\"Give customers special downloads with their subscriptions\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:68:\"https://woocommerce.com/products/woocommerce-subscription-downloads/\";}i:8;a:8:{s:4:\"slug\";s:31:\"product-edit-min-max-quantities\";s:7:\"product\";s:30:\"woocommerce-min-max-quantities\";s:7:\"context\";a:1:{i:0;s:26:\"product-edit-meta-tab-body\";}s:4:\"icon\";s:109:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/marketplace-suggestions/icons/min-max-quantities.svg\";s:5:\"title\";s:18:\"Min/Max Quantities\";s:4:\"copy\";s:81:\"Specify minimum and maximum allowed product quantities for orders to be completed\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:52:\"https://woocommerce.com/products/min-max-quantities/\";}i:9;a:8:{s:4:\"slug\";s:28:\"product-edit-name-your-price\";s:7:\"product\";s:27:\"woocommerce-name-your-price\";s:7:\"context\";a:1:{i:0;s:26:\"product-edit-meta-tab-body\";}s:4:\"icon\";s:106:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/marketplace-suggestions/icons/name-your-price.svg\";s:5:\"title\";s:15:\"Name Your Price\";s:4:\"copy\";s:70:\"Let customers pay what they want - useful for donations, tips and more\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:49:\"https://woocommerce.com/products/name-your-price/\";}i:10;a:8:{s:4:\"slug\";s:42:\"product-edit-woocommerce-one-page-checkout\";s:7:\"product\";s:29:\"woocommerce-one-page-checkout\";s:7:\"context\";a:1:{i:0;s:26:\"product-edit-meta-tab-body\";}s:4:\"icon\";s:108:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/marketplace-suggestions/icons/one-page-checkout.svg\";s:5:\"title\";s:17:\"One Page Checkout\";s:4:\"copy\";s:92:\"Don\'t make customers click around - let them choose products, checkout & pay all on one page\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:63:\"https://woocommerce.com/products/woocommerce-one-page-checkout/\";}i:11;a:4:{s:4:\"slug\";s:19:\"orders-empty-header\";s:7:\"context\";s:24:\"orders-list-empty-header\";s:5:\"title\";s:20:\"Tools for your store\";s:13:\"allow-dismiss\";b:0;}i:12;a:6:{s:4:\"slug\";s:30:\"orders-empty-footer-browse-all\";s:7:\"context\";s:24:\"orders-list-empty-footer\";s:9:\"link-text\";s:21:\"Browse all extensions\";s:3:\"url\";s:64:\"https://woocommerce.com/product-category/woocommerce-extensions/\";s:8:\"promoted\";s:31:\"category-woocommerce-extensions\";s:13:\"allow-dismiss\";b:0;}i:13;a:8:{s:4:\"slug\";s:19:\"orders-empty-wc-pay\";s:7:\"context\";s:22:\"orders-list-empty-body\";s:7:\"product\";s:20:\"woocommerce-payments\";s:4:\"icon\";s:111:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/marketplace-suggestions/icons/woocommerce-payments.svg\";s:5:\"title\";s:20:\"WooCommerce Payments\";s:4:\"copy\";s:125:\"Securely accept payments and manage transactions directly from your WooCommerce dashboard – no setup costs or monthly fees.\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:54:\"https://woocommerce.com/products/woocommerce-payments/\";}i:14;a:8:{s:4:\"slug\";s:19:\"orders-empty-zapier\";s:7:\"context\";s:22:\"orders-list-empty-body\";s:7:\"product\";s:18:\"woocommerce-zapier\";s:4:\"icon\";s:97:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/marketplace-suggestions/icons/zapier.svg\";s:5:\"title\";s:6:\"Zapier\";s:4:\"copy\";s:88:\"Save time and increase productivity by connecting your store to more than 1000+ services\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:52:\"https://woocommerce.com/products/woocommerce-zapier/\";}i:15;a:8:{s:4:\"slug\";s:30:\"orders-empty-shipment-tracking\";s:7:\"context\";s:22:\"orders-list-empty-body\";s:7:\"product\";s:29:\"woocommerce-shipment-tracking\";s:4:\"icon\";s:108:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/marketplace-suggestions/icons/shipment-tracking.svg\";s:5:\"title\";s:17:\"Shipment Tracking\";s:4:\"copy\";s:86:\"Let customers know when their orders will arrive by adding shipment tracking to emails\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:51:\"https://woocommerce.com/products/shipment-tracking/\";}i:16;a:8:{s:4:\"slug\";s:32:\"orders-empty-table-rate-shipping\";s:7:\"context\";s:22:\"orders-list-empty-body\";s:7:\"product\";s:31:\"woocommerce-table-rate-shipping\";s:4:\"icon\";s:110:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/marketplace-suggestions/icons/table-rate-shipping.svg\";s:5:\"title\";s:19:\"Table Rate Shipping\";s:4:\"copy\";s:122:\"Advanced, flexible shipping. Define multiple shipping rates based on location, price, weight, shipping class or item count\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:53:\"https://woocommerce.com/products/table-rate-shipping/\";}i:17;a:8:{s:4:\"slug\";s:40:\"orders-empty-shipping-carrier-extensions\";s:7:\"context\";s:22:\"orders-list-empty-body\";s:4:\"icon\";s:118:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/marketplace-suggestions/icons/shipping-carrier-extensions.svg\";s:5:\"title\";s:27:\"Shipping Carrier Extensions\";s:4:\"copy\";s:116:\"Show live rates from FedEx, UPS, USPS and more directly on your store - never under or overcharge for shipping again\";s:11:\"button-text\";s:13:\"Find Carriers\";s:8:\"promoted\";s:26:\"category-shipping-carriers\";s:3:\"url\";s:99:\"https://woocommerce.com/product-category/woocommerce-extensions/shipping-methods/shipping-carriers/\";}i:18;a:8:{s:4:\"slug\";s:32:\"orders-empty-google-product-feed\";s:7:\"context\";s:22:\"orders-list-empty-body\";s:7:\"product\";s:25:\"woocommerce-product-feeds\";s:4:\"icon\";s:110:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/marketplace-suggestions/icons/google-product-feed.svg\";s:5:\"title\";s:19:\"Google Product Feed\";s:4:\"copy\";s:76:\"Increase sales by letting customers find you when they\'re shopping on Google\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:53:\"https://woocommerce.com/products/google-product-feed/\";}i:19;a:4:{s:4:\"slug\";s:35:\"products-empty-header-product-types\";s:7:\"context\";s:26:\"products-list-empty-header\";s:5:\"title\";s:23:\"Other types of products\";s:13:\"allow-dismiss\";b:0;}i:20;a:6:{s:4:\"slug\";s:32:\"products-empty-footer-browse-all\";s:7:\"context\";s:26:\"products-list-empty-footer\";s:9:\"link-text\";s:21:\"Browse all extensions\";s:3:\"url\";s:64:\"https://woocommerce.com/product-category/woocommerce-extensions/\";s:8:\"promoted\";s:31:\"category-woocommerce-extensions\";s:13:\"allow-dismiss\";b:0;}i:21;a:8:{s:4:\"slug\";s:30:\"products-empty-product-vendors\";s:7:\"context\";s:24:\"products-list-empty-body\";s:7:\"product\";s:27:\"woocommerce-product-vendors\";s:4:\"icon\";s:106:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/marketplace-suggestions/icons/product-vendors.svg\";s:5:\"title\";s:15:\"Product Vendors\";s:4:\"copy\";s:47:\"Turn your store into a multi-vendor marketplace\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:49:\"https://woocommerce.com/products/product-vendors/\";}i:22;a:8:{s:4:\"slug\";s:26:\"products-empty-memberships\";s:7:\"context\";s:24:\"products-list-empty-body\";s:7:\"product\";s:23:\"woocommerce-memberships\";s:4:\"icon\";s:102:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/marketplace-suggestions/icons/memberships.svg\";s:5:\"title\";s:11:\"Memberships\";s:4:\"copy\";s:76:\"Give members access to restricted content or products, for a fee or for free\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:57:\"https://woocommerce.com/products/woocommerce-memberships/\";}i:23;a:9:{s:4:\"slug\";s:35:\"products-empty-woocommerce-deposits\";s:7:\"context\";s:24:\"products-list-empty-body\";s:7:\"product\";s:20:\"woocommerce-deposits\";s:14:\"show-if-active\";a:1:{i:0;s:20:\"woocommerce-bookings\";}s:4:\"icon\";s:99:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/marketplace-suggestions/icons/deposits.svg\";s:5:\"title\";s:8:\"Deposits\";s:4:\"copy\";s:75:\"Make it easier for customers to pay by offering a deposit or a payment plan\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:54:\"https://woocommerce.com/products/woocommerce-deposits/\";}i:24;a:8:{s:4:\"slug\";s:40:\"products-empty-woocommerce-subscriptions\";s:7:\"context\";s:24:\"products-list-empty-body\";s:7:\"product\";s:25:\"woocommerce-subscriptions\";s:4:\"icon\";s:104:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/marketplace-suggestions/icons/subscriptions.svg\";s:5:\"title\";s:13:\"Subscriptions\";s:4:\"copy\";s:97:\"Let customers subscribe to your products or services and pay on a weekly, monthly or annual basis\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:59:\"https://woocommerce.com/products/woocommerce-subscriptions/\";}i:25;a:8:{s:4:\"slug\";s:35:\"products-empty-woocommerce-bookings\";s:7:\"context\";s:24:\"products-list-empty-body\";s:7:\"product\";s:20:\"woocommerce-bookings\";s:4:\"icon\";s:99:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/marketplace-suggestions/icons/bookings.svg\";s:5:\"title\";s:8:\"Bookings\";s:4:\"copy\";s:99:\"Allow customers to book appointments, make reservations or rent equipment without leaving your site\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:54:\"https://woocommerce.com/products/woocommerce-bookings/\";}i:26;a:8:{s:4:\"slug\";s:30:\"products-empty-product-bundles\";s:7:\"context\";s:24:\"products-list-empty-body\";s:7:\"product\";s:27:\"woocommerce-product-bundles\";s:4:\"icon\";s:106:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/marketplace-suggestions/icons/product-bundles.svg\";s:5:\"title\";s:15:\"Product Bundles\";s:4:\"copy\";s:49:\"Offer customizable bundles and assembled products\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:49:\"https://woocommerce.com/products/product-bundles/\";}}s:7:\"updated\";i:1638815404;}', 'no'),
(839, '_transient_product-transient-version', '1638989873', 'yes'),
(865, '_transient_timeout_wc_blocks_query_53a93426a80f70c288c24d142acf14c4', '1641408093', 'no'),
(866, '_transient_wc_blocks_query_53a93426a80f70c288c24d142acf14c4', 'a:2:{s:7:\"version\";s:10:\"1638815977\";s:5:\"value\";a:3:{i:0;i:96;i:1;i:95;i:2;i:94;}}', 'no'),
(869, '_transient_timeout_wc_blocks_query_8ead99c4e93e453aac77df5171d13640', '1641408145', 'no'),
(870, '_transient_wc_blocks_query_8ead99c4e93e453aac77df5171d13640', 'a:2:{s:7:\"version\";s:10:\"1638815977\";s:5:\"value\";a:3:{i:0;i:96;i:1;i:95;i:2;i:94;}}', 'no'),
(1056, '_transient_orders-transient-version', '1638878666', 'yes'),
(1057, '_transient_timeout_wc_customer_bought_product_57dfa883e906f188951c15696216dc80', '1641470667', 'no'),
(1058, '_transient_wc_customer_bought_product_57dfa883e906f188951c15696216dc80', 'a:2:{s:7:\"version\";s:10:\"1638878666\";s:5:\"value\";a:0:{}}', 'no'),
(1138, '_transient_wc_count_comments', 'O:8:\"stdClass\":7:{s:14:\"total_comments\";i:1;s:3:\"all\";i:1;s:8:\"approved\";s:1:\"1\";s:9:\"moderated\";i:0;s:4:\"spam\";i:0;s:5:\"trash\";i:0;s:12:\"post-trashed\";i:0;}', 'yes'),
(1194, '_transient_timeout_wc_related_94', '1639073349', 'no'),
(1195, '_transient_wc_related_94', 'a:1:{s:50:\"limit=3&exclude_ids%5B0%5D=0&exclude_ids%5B1%5D=94\";a:3:{i:0;s:2:\"95\";i:1;s:2:\"96\";i:2;s:3:\"108\";}}', 'no'),
(1223, '_transient_timeout_wc_shipping_method_count', '1641477636', 'no'),
(1224, '_transient_wc_shipping_method_count', 'a:2:{s:7:\"version\";s:10:\"1638785634\";s:5:\"value\";i:0;}', 'no'),
(1248, 'recovery_mode_email_last_sent', '1638886730', 'yes'),
(1573, '_transient_timeout__woocommerce_helper_updates', '1638995275', 'no'),
(1574, '_transient__woocommerce_helper_updates', 'a:4:{s:4:\"hash\";s:32:\"d751713988987e9331980363e24189ce\";s:7:\"updated\";i:1638952075;s:8:\"products\";a:0:{}s:6:\"errors\";a:1:{i:0;s:10:\"http-error\";}}', 'no'),
(1629, '_transient_timeout_wc_onboarding_product_data', '1639050668', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1630, '_transient_wc_onboarding_product_data', 'a:6:{s:7:\"headers\";O:42:\"Requests_Utility_CaseInsensitiveDictionary\":1:{s:7:\"\0*\0data\";a:19:{s:6:\"server\";s:5:\"nginx\";s:4:\"date\";s:29:\"Wed, 08 Dec 2021 11:51:08 GMT\";s:12:\"content-type\";s:31:\"application/json; charset=UTF-8\";s:14:\"content-length\";s:5:\"12346\";s:12:\"x-robots-tag\";s:7:\"noindex\";s:4:\"link\";s:60:\"<https://woocommerce.com/wp-json/>; rel=\"https://api.w.org/\"\";s:22:\"x-content-type-options\";s:7:\"nosniff\";s:29:\"access-control-expose-headers\";s:33:\"X-WP-Total, X-WP-TotalPages, Link\";s:28:\"access-control-allow-headers\";s:73:\"Authorization, X-WP-Nonce, Content-Disposition, Content-MD5, Content-Type\";s:13:\"x-wccom-cache\";s:3:\"HIT\";s:13:\"cache-control\";s:10:\"max-age=60\";s:5:\"allow\";s:3:\"GET\";s:4:\"x-rq\";s:13:\"vie2 0 4 9980\";s:16:\"content-encoding\";s:4:\"gzip\";s:3:\"age\";s:2:\"41\";s:7:\"x-cache\";s:3:\"hit\";s:4:\"vary\";s:23:\"Accept-Encoding, Origin\";s:13:\"accept-ranges\";s:5:\"bytes\";s:25:\"strict-transport-security\";s:16:\"max-age=31536000\";}}s:4:\"body\";s:64909:\"{\"products\":[{\"title\":\"WooCommerce Google Analytics\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/GA-Dark.png\",\"excerpt\":\"Understand your customers and increase revenue with world\\u2019s leading analytics platform - integrated with WooCommerce for free.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-google-analytics\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"2d21f7de14dfb8e9885a4622be701ddf\",\"slug\":\"woocommerce-google-analytics-integration\",\"id\":1442927,\"rating\":null,\"reviews_count\":null,\"vendor_name\":\"WooCommerce\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/woocommerce\\/\",\"icon\":null},{\"title\":\"WooCommerce Tax\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Woo-Tax-Dark.png\",\"excerpt\":\"Automatically calculate how much sales tax should be collected for WooCommerce orders - by city, country, or state - at checkout.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/tax\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"f31b3b9273cce188cc2b27f7849d02dd\",\"slug\":\"woocommerce-services\",\"id\":3220291,\"rating\":null,\"reviews_count\":null,\"vendor_name\":\"WooCommerce\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/woocommerce\\/\",\"icon\":null},{\"title\":\"Stripe\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Stripe-Dark-1.png\",\"excerpt\":\"Accept all major debit and credit cards as well as local payment methods with Stripe.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/stripe\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"50bb7a985c691bb943a9da4d2c8b5efd\",\"slug\":\"woocommerce-gateway-stripe\",\"id\":18627,\"rating\":null,\"reviews_count\":null,\"vendor_name\":\"WooCommerce\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/woocommerce\\/\",\"icon\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/woocommerce_uploads\\/2011\\/12\\/stripe-app-icon-7m1xi7.png\"},{\"title\":\"Jetpack\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Jetpack-Dark.png\",\"excerpt\":\"Security, performance, and marketing tools made for WooCommerce stores by the WordPress experts. Get started with basic security and speed tools for free.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/jetpack\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"d5bfef9700b62b2b132c74c74c3193eb\",\"slug\":\"jetpack\",\"id\":2725249,\"rating\":null,\"reviews_count\":null,\"vendor_name\":\"Jetpack\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/jetpack\\/\",\"icon\":null},{\"title\":\"Facebook for WooCommerce\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Facebook-Dark.png\",\"excerpt\":\"Get the Official Facebook for WooCommerce plugin for three powerful ways to help grow your business.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/facebook\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"0ea4fe4c2d7ca6338f8a322fb3e4e187\",\"slug\":\"facebook-for-woocommerce\",\"id\":2127297,\"rating\":2.1,\"reviews_count\":51,\"vendor_name\":\"WooCommerce\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/woocommerce\\/\",\"icon\":null},{\"title\":\"WooCommerce Payments\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Woo-Pay-Dark.png\",\"excerpt\":\"Securely accept payments, track cash flow, and manage recurring revenue from your dashboard \\u2014 all without setup costs or monthly fees.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-payments\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"8c6319ca-8f41-4e69-be63-6b15ee37773b\",\"slug\":\"woocommerce-payments\",\"id\":5278104,\"rating\":null,\"reviews_count\":null,\"vendor_name\":\"WooCommerce\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/woocommerce\\/\",\"icon\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/woocommerce_uploads\\/2020\\/02\\/wcpay-icon-fv4tef.png\"},{\"title\":\"Amazon Pay\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Amazon-Pay-Dark.png\",\"excerpt\":\"Amazon Pay is embedded in your WooCommerce store. Transactions take place via\\u00a0Amazon widgets, so the buyer never leaves your site.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/pay-with-amazon\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"9865e043bbbe4f8c9735af31cb509b53\",\"slug\":\"woocommerce-gateway-amazon-payments-advanced\",\"id\":238816,\"rating\":3.5,\"reviews_count\":10,\"vendor_name\":\"WooCommerce\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/woocommerce\\/\",\"icon\":null},{\"title\":\"Square for WooCommerce\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Square-Dark.png\",\"excerpt\":\"Accepting payments is easy with Square. Clear rates, fast deposits (1-2 business days). Sell online and in person, and sync all payments, items and inventory.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/square\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"e907be8b86d7df0c8f8e0d0020b52638\",\"slug\":\"woocommerce-square\",\"id\":1770503,\"rating\":3.2,\"reviews_count\":64,\"vendor_name\":\"WooCommerce\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/woocommerce\\/\",\"icon\":null},{\"title\":\"WooCommerce Shipping\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Woo-Ship-Dark-1.png\",\"excerpt\":\"Print USPS and DHL labels right from your WooCommerce dashboard and instantly save up to 90%. WooCommerce Shipping is free to use and saves you time and money.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/shipping\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"f31b3b9273cce188cc2b27f7849d02dd\",\"slug\":\"woocommerce-services\",\"id\":2165910,\"rating\":null,\"reviews_count\":null,\"vendor_name\":\"WooCommerce\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/woocommerce\\/\",\"icon\":null},{\"title\":\"WooCommerce Subscriptions\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Woo-Subscriptions-Dark.png\",\"excerpt\":\"Let customers subscribe to your products or services and pay on a weekly, monthly or annual basis.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-subscriptions\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;199.00\",\"hash\":\"6115e6d7e297b623a169fdcf5728b224\",\"slug\":\"woocommerce-subscriptions\",\"id\":27147,\"rating\":3.6,\"reviews_count\":37,\"vendor_name\":\"WooCommerce\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/woocommerce\\/\",\"icon\":null},{\"title\":\"Mailchimp for WooCommerce\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/09\\/logo-mailchimp-dark-v2.png\",\"excerpt\":\"Increase traffic, drive repeat purchases, and personalize your marketing when you connect to Mailchimp.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/mailchimp-for-woocommerce\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"b4481616ebece8b1ff68fc59b90c1a91\",\"slug\":\"mailchimp-for-woocommerce\",\"id\":2545166,\"rating\":null,\"reviews_count\":null,\"vendor_name\":\"Mailchimp\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/mailchimp\\/\",\"icon\":null},{\"title\":\"Product Add-Ons\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Woo-Product-Add-Ons-Dark.png\",\"excerpt\":\"Offer add-ons like gift wrapping, special messages or other special options for your products.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/product-add-ons\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"147d0077e591e16db9d0d67daeb8c484\",\"slug\":\"woocommerce-product-addons\",\"id\":18618,\"rating\":3.1,\"reviews_count\":19,\"vendor_name\":\"WooCommerce\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/woocommerce\\/\",\"icon\":null},{\"title\":\"ShipStation Integration\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Shipstation-Dark.png\",\"excerpt\":\"Fulfill all your Woo orders (and wherever else you sell) quickly and easily using ShipStation. Try it free for 30 days today!\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/shipstation-integration\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"9de8640767ba64237808ed7f245a49bb\",\"slug\":\"woocommerce-shipstation-integration\",\"id\":18734,\"rating\":null,\"reviews_count\":null,\"vendor_name\":\"WooCommerce\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/woocommerce\\/\",\"icon\":null},{\"title\":\"PayFast Payment Gateway\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Payfast-Dark-1.png\",\"excerpt\":\"Take payments on your WooCommerce store via PayFast (redirect method).\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/payfast-payment-gateway\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"557bf07293ad916f20c207c6c9cd15ff\",\"slug\":\"woocommerce-payfast-gateway\",\"id\":18596,\"rating\":null,\"reviews_count\":null,\"vendor_name\":\"WooCommerce\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/woocommerce\\/\",\"icon\":null},{\"title\":\"Google Listings &amp; Ads\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2021\\/06\\/marketplace-card.png\",\"excerpt\":\"Reach millions of engaged shoppers across Google with free product listings and ads. Built in partnership with Google.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/google-listings-and-ads\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"118f4d86-f126-4c3a-8525-644e3170d161\",\"slug\":\"google-listings-and-ads\",\"id\":7623964,\"rating\":null,\"reviews_count\":null,\"vendor_name\":\"WooCommerce\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/woocommerce\\/\",\"icon\":null},{\"title\":\"USPS Shipping Method\",\"image\":\"\",\"excerpt\":\"Get shipping rates from the USPS API which handles both domestic and international parcels.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/usps-shipping-method\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"83d1524e8f5f1913e58889f83d442c32\",\"slug\":\"woocommerce-shipping-usps\",\"id\":18657,\"rating\":null,\"reviews_count\":null,\"vendor_name\":\"WooCommerce\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/woocommerce\\/\",\"icon\":null},{\"title\":\"UPS Shipping Method\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/UPS-Shipping-Method-Dark.png\",\"excerpt\":\"Get shipping rates from the UPS API which handles both domestic and international parcels.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/ups-shipping-method\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"8dae58502913bac0fbcdcaba515ea998\",\"slug\":\"woocommerce-shipping-ups\",\"id\":18665,\"rating\":3.4,\"reviews_count\":10,\"vendor_name\":\"WooCommerce\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/woocommerce\\/\",\"icon\":null},{\"title\":\"Google Ads &amp; Marketing by Kliken\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/woocommerce_uploads\\/2019\\/02\\/GA-for-Woo-Logo-374x192px-qu3duk.png\",\"excerpt\":\"Get in front of shoppers and drive traffic to your store so you can grow your business with Smart Shopping Campaigns and free listings.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/google-ads-and-marketing\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"bf66e173-a220-4da7-9512-b5728c20fc16\",\"slug\":\"kliken-marketing-for-google\",\"id\":3866145,\"rating\":4.4,\"reviews_count\":109,\"vendor_name\":\"Kliken\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/kliken\\/\",\"icon\":null},{\"title\":\"Shipment Tracking\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Woo-Ship-Tracking-Dark-1.png\",\"excerpt\":\"Add shipment tracking information to your orders.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/shipment-tracking\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"1968e199038a8a001c9f9966fd06bf88\",\"slug\":\"woocommerce-shipment-tracking\",\"id\":18693,\"rating\":null,\"reviews_count\":null,\"vendor_name\":\"WooCommerce\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/woocommerce\\/\",\"icon\":null},{\"title\":\"Checkout Field Editor\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Woo-Checkout-Field-Editor-Dark.png\",\"excerpt\":\"Optimize your checkout process by adding, removing or editing fields to suit your needs.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-checkout-field-editor\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"2b8029f0d7cdd1118f4d843eb3ab43ff\",\"slug\":\"woocommerce-checkout-field-editor\",\"id\":184594,\"rating\":null,\"reviews_count\":null,\"vendor_name\":\"WooCommerce\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/woocommerce\\/\",\"icon\":null},{\"title\":\"Table Rate Shipping\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Product-Table-Rate-Shipping-Dark.png\",\"excerpt\":\"Advanced, flexible shipping. Define multiple shipping rates based on location, price, weight, shipping class or item count.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/table-rate-shipping\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;99.00\",\"hash\":\"3034ed8aff427b0f635fe4c86bbf008a\",\"slug\":\"woocommerce-table-rate-shipping\",\"id\":18718,\"rating\":null,\"reviews_count\":null,\"vendor_name\":\"WooCommerce\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/woocommerce\\/\",\"icon\":null},{\"title\":\"WooCommerce Bookings\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Woo-Bookings-Dark.png\",\"excerpt\":\"Allow customers to book appointments, make reservations or rent equipment without leaving your site.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-bookings\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"https:\\/\\/themes.woocommerce.com\\/hotel\\/\",\"price\":\"&#36;249.00\",\"hash\":\"911c438934af094c2b38d5560b9f50f3\",\"slug\":\"WooCommerce Bookings\",\"id\":390890,\"rating\":2.7,\"reviews_count\":18,\"vendor_name\":\"WooCommerce\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/woocommerce\\/\",\"icon\":null},{\"title\":\"PayPal Payments\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/woocommerce_uploads\\/2020\\/10\\/PPCP-Tile-PayPal-Logo-and-Cart-Art-2x-2-uozwz8.jpg\",\"excerpt\":\"PayPal\'s latest, all-in-one checkout solution. Securely accept PayPal Digital Payments, credit\\/debit cards and local payment methods.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-paypal-payments\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"934115ab-e3f3-4435-9580-345b1ce21899\",\"slug\":\"woocommerce-paypal-payments\",\"id\":6410731,\"rating\":null,\"reviews_count\":null,\"vendor_name\":\"WooCommerce\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/woocommerce\\/\",\"icon\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/woocommerce_uploads\\/2020\\/10\\/pp_v_rgb-didybc.jpg\"},{\"title\":\"Braintree for WooCommerce\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2016\\/02\\/braintree-black-copy.png\",\"excerpt\":\"Accept PayPal, credit cards and debit cards with a single payment gateway solution \\u2014 PayPal Powered by Braintree.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-gateway-paypal-powered-by-braintree\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"27f010c8e34ca65b205ddec88ad14536\",\"slug\":\"woocommerce-gateway-paypal-powered-by-braintree\",\"id\":1489837,\"rating\":null,\"reviews_count\":null,\"vendor_name\":\"WooCommerce\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/woocommerce\\/\",\"icon\":null},{\"title\":\"Min\\/Max Quantities\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Woo-Min-Max-Qua-Dark.png\",\"excerpt\":\"Specify minimum and maximum allowed product quantities for orders to be completed.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/minmax-quantities\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;29.00\",\"hash\":\"2b5188d90baecfb781a5aa2d6abb900a\",\"slug\":\"woocommerce-min-max-quantities\",\"id\":18616,\"rating\":null,\"reviews_count\":null,\"vendor_name\":\"WooCommerce\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/woocommerce\\/\",\"icon\":null},{\"title\":\"WooCommerce Memberships\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2015\\/06\\/Thumbnail-Memberships-updated.png\",\"excerpt\":\"Power your membership association, online magazine, elearning sites, and more with access control to content\\/products and member discounts.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-memberships\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;199.00\",\"hash\":\"9288e7609ad0b487b81ef6232efa5cfc\",\"slug\":\"woocommerce-memberships\",\"id\":958589,\"rating\":4.4,\"reviews_count\":78,\"vendor_name\":\"SkyVerge\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/skyverge\\/\",\"icon\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/woocommerce_uploads\\/2015\\/06\\/skyverge-wc-icon-b2vhw6.png\"},{\"title\":\"Australia Post Shipping Method\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2012\\/09\\/australia-post.gif\",\"excerpt\":\"Get shipping rates for your WooCommerce store from the Australia Post API, which handles both domestic and international parcels.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/australia-post-shipping-method\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"1dbd4dc6bd91a9cda1bd6b9e7a5e4f43\",\"slug\":\"woocommerce-shipping-australia-post\",\"id\":18622,\"rating\":null,\"reviews_count\":null,\"vendor_name\":\"WooCommerce\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/woocommerce\\/\",\"icon\":null},{\"title\":\"Canada Post Shipping Method\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2012\\/09\\/canada-post.png\",\"excerpt\":\"Get shipping rates from the Canada Post Ratings API which handles both domestic and international parcels.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/canada-post-shipping-method\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"ac029cdf3daba20b20c7b9be7dc00e0e\",\"slug\":\"woocommerce-shipping-canada-post\",\"id\":18623,\"rating\":null,\"reviews_count\":null,\"vendor_name\":\"WooCommerce\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/woocommerce\\/\",\"icon\":null},{\"title\":\"Product Bundles\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/woocommerce_uploads\\/2012\\/07\\/Bundles_logo-0cllvb.png\",\"excerpt\":\"Offer personalized product bundles, bulk discount packages, and assembled\\u00a0products.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/product-bundles\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"aa2518b5-ab19-4b75-bde9-60ca51e20f28\",\"slug\":\"woocommerce-product-bundles\",\"id\":18716,\"rating\":4.9,\"reviews_count\":114,\"vendor_name\":\"WooCommerce\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/woocommerce\\/\",\"icon\":null},{\"title\":\"FedEx Shipping Method\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/woocommerce_uploads\\/2013\\/01\\/FedEx_Logo_Wallpaper.jpeg\",\"excerpt\":\"Get shipping rates from the FedEx API which handles both domestic and international parcels.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/fedex-shipping-module\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"1a48b598b47a81559baadef15e320f64\",\"slug\":\"woocommerce-shipping-fedex\",\"id\":18620,\"rating\":null,\"reviews_count\":null,\"vendor_name\":\"WooCommerce\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/woocommerce\\/\",\"icon\":null},{\"title\":\"Product CSV Import Suite\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Woo-Product-CSV-Import-Dark.png\",\"excerpt\":\"Import, merge, and export products and variations to and from WooCommerce using a CSV file.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/product-csv-import-suite\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"7ac9b00a1fe980fb61d28ab54d167d0d\",\"slug\":\"woocommerce-product-csv-import-suite\",\"id\":18680,\"rating\":null,\"reviews_count\":null,\"vendor_name\":\"WooCommerce\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/woocommerce\\/\",\"icon\":null},{\"title\":\"Multichannel for WooCommerce: Google, Amazon, eBay &amp; Walmart Integration\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2018\\/10\\/Woo-Extension-Store-Logo-v2.png\",\"excerpt\":\"Get the official Google, Amazon, eBay and Walmart extension and create, sync and manage multichannel listings directly from WooCommerce.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/amazon-ebay-integration\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"e4000666-9275-4c71-8619-be61fb41c9f9\",\"slug\":\"woocommerce-amazon-ebay-integration\",\"id\":3545890,\"rating\":3.2,\"reviews_count\":32,\"vendor_name\":\"Codisto\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/codisto\\/\",\"icon\":null},{\"title\":\"Follow-Ups\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Woo-Follow-Ups-Dark.png\",\"excerpt\":\"Automatically contact customers after purchase - be it everyone, your most loyal or your biggest spenders - and keep your store top-of-mind.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/follow-up-emails\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;99.00\",\"hash\":\"05ece68fe94558e65278fe54d9ec84d2\",\"slug\":\"woocommerce-follow-up-emails\",\"id\":18686,\"rating\":null,\"reviews_count\":null,\"vendor_name\":\"WooCommerce\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/woocommerce\\/\",\"icon\":null},{\"title\":\"Royal Mail\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/woocommerce_uploads\\/2013\\/04\\/royalmail.png\",\"excerpt\":\"Offer Royal Mail shipping rates to your customers\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/royal-mail\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"03839cca1a16c4488fcb669aeb91a056\",\"slug\":\"woocommerce-shipping-royalmail\",\"id\":182719,\"rating\":null,\"reviews_count\":null,\"vendor_name\":\"WooCommerce\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/woocommerce\\/\",\"icon\":null},{\"title\":\"Product Vendors\",\"image\":\"\",\"excerpt\":\"Turn your store into a multi-vendor marketplace\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/product-vendors\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"a97d99fccd651bbdd728f4d67d492c31\",\"slug\":\"woocommerce-product-vendors\",\"id\":219982,\"rating\":3,\"reviews_count\":16,\"vendor_name\":\"WooCommerce\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/woocommerce\\/\",\"icon\":null},{\"title\":\"LiveChat for WooCommerce\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/woocommerce_uploads\\/2015\\/11\\/LC_woo_regular-zmiaym.png\",\"excerpt\":\"Live Chat and messaging platform for sales and support -- increase average order value and overall sales through live conversations.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/livechat\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"https:\\/\\/www.livechat.com\\/livechat-for-ecommerce\\/?a=woocommerce&amp;utm_source=woocommerce.com&amp;utm_medium=integration&amp;utm_campaign=woocommerce.com\",\"price\":\"&#36;0.00\",\"hash\":\"5344cc1f-ed4a-4d00-beff-9d67f6d372f3\",\"slug\":\"livechat-woocommerce\",\"id\":1348888,\"rating\":null,\"reviews_count\":null,\"vendor_name\":\"Live Chat\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/live-chat\\/\",\"icon\":null},{\"title\":\"WooCommerce Accommodation Bookings\",\"image\":\"\",\"excerpt\":\"Book accommodation using WooCommerce and the WooCommerce Bookings extension.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-accommodation-bookings\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"99b2a7a4af90b6cefd2a733b3b1f78e7\",\"slug\":\"woocommerce-accommodation-bookings\",\"id\":1412069,\"rating\":null,\"reviews_count\":null,\"vendor_name\":\"WooCommerce\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/woocommerce\\/\",\"icon\":null},{\"title\":\"Storefront Homepage Contact Section\",\"image\":\"\",\"excerpt\":\"Add a Contact section to the Storefront homepage.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/storefront-homepage-contact-section\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"cb12b87f8bbb0139dafbf92ca1f871ef\",\"slug\":\"storefront-homepage-contact-section\",\"id\":1468793,\"rating\":null,\"reviews_count\":null,\"vendor_name\":\"WooCommerce\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/woocommerce\\/\",\"icon\":null},{\"title\":\"Authorize.Net\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2013\\/04\\/Thumbnail-Authorize.net-updated.png\",\"excerpt\":\"Authorize.Net gateway with support for pre-orders and subscriptions.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/authorize-net\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"8b61524fe53add7fdd1a8d1b00b9327d\",\"slug\":\"woocommerce-gateway-authorize-net-cim\",\"id\":178481,\"rating\":4.8,\"reviews_count\":39,\"vendor_name\":\"SkyVerge\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/skyverge\\/\",\"icon\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/woocommerce_uploads\\/2015\\/06\\/skyverge-wc-icon-b2vhw6.png\"},{\"title\":\"Xero\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/woocommerce_uploads\\/2012\\/08\\/xero2.png\",\"excerpt\":\"Save time with automated sync between WooCommerce and your Xero account.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/xero\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"f0dd29d338d3c67cf6cee88eddf6869b\",\"slug\":\"woocommerce-xero\",\"id\":18733,\"rating\":null,\"reviews_count\":null,\"vendor_name\":\"WooCommerce\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/woocommerce\\/\",\"icon\":null},{\"title\":\"AutomateWoo\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-AutomateWoo-Dark-1.png\",\"excerpt\":\"Powerful marketing automation for WooCommerce. AutomateWoo has the tools you need to grow your store and make more money.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/automatewoo\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;99.00\",\"hash\":\"ba9299b8-1dba-4aa0-a313-28bc1755cb88\",\"slug\":\"automatewoo\",\"id\":4652610,\"rating\":null,\"reviews_count\":null,\"vendor_name\":\"WooCommerce\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/woocommerce\\/\",\"icon\":null},{\"title\":\"WooCommerce Brands\",\"image\":\"\",\"excerpt\":\"Create, assign and list brands for products, and allow customers to view by brand.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/brands\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;29.00\",\"hash\":\"8a88c7cbd2f1e73636c331c7a86f818c\",\"slug\":\"woocommerce-brands\",\"id\":18737,\"rating\":null,\"reviews_count\":null,\"vendor_name\":\"WooCommerce\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/woocommerce\\/\",\"icon\":null},{\"title\":\"Storefront Footer Bar\",\"image\":\"\",\"excerpt\":\"Adds a full-width widget region above the Storefront footer widget area, which can be customized with colors and a background image.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/storefront-footer-bar\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"6cfd3d4f923cafa16e4801ae801751f4\",\"slug\":\"storefront-footer-bar\",\"id\":1434472,\"rating\":null,\"reviews_count\":null,\"vendor_name\":\"WooCommerce\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/woocommerce\\/\",\"icon\":null},{\"title\":\"Advanced Notifications\",\"image\":\"\",\"excerpt\":\"Easily setup \\\"new order\\\" and stock email notifications for multiple recipients of your choosing.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/advanced-notifications\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;29.00\",\"hash\":\"112372c44b002fea2640bd6bfafbca27\",\"slug\":\"woocommerce-advanced-notifications\",\"id\":18740,\"rating\":null,\"reviews_count\":null,\"vendor_name\":\"WooCommerce\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/woocommerce\\/\",\"icon\":null},{\"title\":\"WooCommerce Points and Rewards\",\"image\":\"\",\"excerpt\":\"Reward your customers for purchases and other actions with points which can be redeemed for discounts.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-points-and-rewards\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;129.00\",\"hash\":\"1649b6cca5da8b923b01ca56b5cdd246\",\"slug\":\"woocommerce-points-and-rewards\",\"id\":210259,\"rating\":2.9,\"reviews_count\":11,\"vendor_name\":\"WooCommerce\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/woocommerce\\/\",\"icon\":null},{\"title\":\"WooCommerce Pre-Orders\",\"image\":\"\",\"excerpt\":\"Allow customers to order products before they are available.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-pre-orders\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;129.00\",\"hash\":\"b2dc75e7d55e6f5bbfaccb59830f66b7\",\"slug\":\"woocommerce-pre-orders\",\"id\":178477,\"rating\":null,\"reviews_count\":null,\"vendor_name\":\"WooCommerce\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/woocommerce\\/\",\"icon\":null},{\"title\":\"WooCommerce Customer \\/ Order \\/ Coupon Export\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2012\\/02\\/Thumbnail-Customer-Order-Coupon-Export-updated.png\",\"excerpt\":\"Export customers, orders, and coupons from WooCommerce manually or on an automated schedule.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/ordercustomer-csv-export\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"914de15813a903c767b55445608bf290\",\"slug\":\"woocommerce-customer-order-csv-export\",\"id\":18652,\"rating\":4.5,\"reviews_count\":21,\"vendor_name\":\"SkyVerge\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/skyverge\\/\",\"icon\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/woocommerce_uploads\\/2015\\/06\\/skyverge-wc-icon-b2vhw6.png\"},{\"title\":\"WooCommerce Additional Variation Images\",\"image\":\"\",\"excerpt\":\"Add gallery images per variation on variable products within WooCommerce.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-additional-variation-images\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"https:\\/\\/themes.woocommerce.com\\/storefront\\/product\\/woo-single-1\\/\",\"price\":\"&#36;49.00\",\"hash\":\"c61dd6de57dcecb32bd7358866de4539\",\"slug\":\"woocommerce-additional-variation-images\",\"id\":477384,\"rating\":null,\"reviews_count\":null,\"vendor_name\":\"WooCommerce\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/woocommerce\\/\",\"icon\":null},{\"title\":\"WooCommerce Subscription Downloads\",\"image\":\"\",\"excerpt\":\"Offer additional downloads to your subscribers, via downloadable products listed in your store.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-subscription-downloads\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"5be9e21c13953253e4406d2a700382ec\",\"slug\":\"woocommerce-subscription-downloads\",\"id\":420458,\"rating\":null,\"reviews_count\":null,\"vendor_name\":\"WooCommerce\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/woocommerce\\/\",\"icon\":null},{\"title\":\"WooCommerce Deposits\",\"image\":\"\",\"excerpt\":\"Enable customers to pay for products using a deposit or a payment plan.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-deposits\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;179.00\",\"hash\":\"de192a6cf12c4fd803248da5db700762\",\"slug\":\"woocommerce-deposits\",\"id\":977087,\"rating\":null,\"reviews_count\":null,\"vendor_name\":\"WooCommerce\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/woocommerce\\/\",\"icon\":null},{\"title\":\"Smart Coupons\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/10\\/wc-product-smart-coupons.png\",\"excerpt\":\"Everything you need for discounts, coupons, credits, gift cards, product giveaways, offers, and promotions. Most popular and complete coupons plugin for WooCommerce.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/smart-coupons\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"http:\\/\\/demo.storeapps.org\\/?demo=sc\",\"price\":\"&#36;99.00\",\"hash\":\"05c45f2aa466106a466de4402fff9dde\",\"slug\":\"woocommerce-smart-coupons\",\"id\":18729,\"rating\":4.6,\"reviews_count\":120,\"vendor_name\":\"StoreApps\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/storeapps\\/\",\"icon\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/woocommerce_uploads\\/2012\\/08\\/wc-icon-smart-coupons-160-p8fwgu.png\"},{\"title\":\"Amazon S3 Storage\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2012\\/09\\/amazon.png\",\"excerpt\":\"Serve digital products via Amazon S3\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/amazon-s3-storage\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;29.00\",\"hash\":\"473bf6f221b865eff165c97881b473bb\",\"slug\":\"woocommerce-amazon-s3-storage\",\"id\":18663,\"rating\":null,\"reviews_count\":null,\"vendor_name\":\"WooCommerce\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/woocommerce\\/\",\"icon\":null},{\"title\":\"Cart Add-ons\",\"image\":\"\",\"excerpt\":\"A powerful tool for driving incremental and impulse purchases by customers once they are in the shopping cart\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/cart-add-ons\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;29.00\",\"hash\":\"3a8ef25334396206f5da4cf208adeda3\",\"slug\":\"woocommerce-cart-add-ons\",\"id\":18717,\"rating\":null,\"reviews_count\":null,\"vendor_name\":\"WooCommerce\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/woocommerce\\/\",\"icon\":null},{\"title\":\"Shipping Multiple Addresses\",\"image\":\"\",\"excerpt\":\"Allow your customers to ship individual items in a single order to multiple addresses.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/shipping-multiple-addresses\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"aa0eb6f777846d329952d5b891d6f8cc\",\"slug\":\"woocommerce-shipping-multiple-addresses\",\"id\":18741,\"rating\":null,\"reviews_count\":null,\"vendor_name\":\"WooCommerce\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/woocommerce\\/\",\"icon\":null},{\"title\":\"WooCommerce Zapier\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/woocommerce-zapier-logo.png\",\"excerpt\":\"Integrate your WooCommerce store with 4000+ cloud apps and services today. Trusted by 11,000+ users.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-zapier\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;59.00\",\"hash\":\"0782bdbe932c00f4978850268c6cfe40\",\"slug\":\"woocommerce-zapier\",\"id\":243589,\"rating\":4.4,\"reviews_count\":32,\"vendor_name\":\"OM4\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/om4\\/\",\"icon\":null},{\"title\":\"Bulk Stock Management\",\"image\":\"\",\"excerpt\":\"Edit product and variation stock levels in bulk via this handy interface\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/bulk-stock-management\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"02f4328d52f324ebe06a78eaaae7934f\",\"slug\":\"woocommerce-bulk-stock-management\",\"id\":18670,\"rating\":null,\"reviews_count\":null,\"vendor_name\":\"WooCommerce\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/woocommerce\\/\",\"icon\":null},{\"title\":\"WooCommerce Email Customizer\",\"image\":\"\",\"excerpt\":\"Connect with your customers with each email you send by visually modifying your email templates via the WordPress Customizer.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-email-customizer\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"bd909fa97874d431f203b5336c7e8873\",\"slug\":\"woocommerce-email-customizer\",\"id\":853277,\"rating\":null,\"reviews_count\":null,\"vendor_name\":\"WooCommerce\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/woocommerce\\/\",\"icon\":null},{\"title\":\"TaxJar\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2014\\/10\\/taxjar-logotype.png\",\"excerpt\":\"Automate sales tax compliance for your multi-channel e-commerce business. Accurate sales tax calculations, data aggregation, quality reporting, and filing for your WooCommerce store.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/taxjar\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"12072d8e-e933-4561-97b1-9db3c7eeed91\",\"slug\":\"taxjar-simplified-taxes-for-woocommerce\",\"id\":514914,\"rating\":null,\"reviews_count\":null,\"vendor_name\":\"TaxJar\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/taxjar\\/\",\"icon\":null},{\"title\":\"Force Sells\",\"image\":\"\",\"excerpt\":\"Force products to be added to the cart\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/force-sells\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"3ebddfc491ca168a4ea4800b893302b0\",\"slug\":\"woocommerce-force-sells\",\"id\":18678,\"rating\":null,\"reviews_count\":null,\"vendor_name\":\"WooCommerce\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/woocommerce\\/\",\"icon\":null},{\"title\":\"WooCommerce Quick View\",\"image\":\"\",\"excerpt\":\"Show a quick-view button to view product details and add to cart via lightbox popup\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-quick-view\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;29.00\",\"hash\":\"619c6e57ce72c49c4b57e15b06eddb65\",\"slug\":\"woocommerce-quick-view\",\"id\":187509,\"rating\":null,\"reviews_count\":null,\"vendor_name\":\"WooCommerce\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/woocommerce\\/\",\"icon\":null},{\"title\":\"WooCommerce Purchase Order Gateway\",\"image\":\"\",\"excerpt\":\"Receive purchase orders via your WooCommerce-powered online store.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-gateway-purchase-order\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"573a92318244ece5facb449d63e74874\",\"slug\":\"woocommerce-gateway-purchase-order\",\"id\":478542,\"rating\":null,\"reviews_count\":null,\"vendor_name\":\"WooCommerce\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/woocommerce\\/\",\"icon\":null},{\"title\":\"Returns and Warranty Requests\",\"image\":\"\",\"excerpt\":\"Manage the RMA process, add warranties to products &amp; let customers request &amp; manage returns \\/ exchanges from their account.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/warranty-requests\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"9b4c41102e6b61ea5f558e16f9b63e25\",\"slug\":\"woocommerce-warranty\",\"id\":228315,\"rating\":null,\"reviews_count\":null,\"vendor_name\":\"WooCommerce\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/woocommerce\\/\",\"icon\":null},{\"title\":\"WooCommerce Box Office\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Woo-BO-Dark.png\",\"excerpt\":\"Sell tickets for your next event, concert, function, fundraiser or conference directly on your own site\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-box-office\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;129.00\",\"hash\":\"e704c9160de318216a8fa657404b9131\",\"slug\":\"woocommerce-box-office\",\"id\":1628717,\"rating\":null,\"reviews_count\":null,\"vendor_name\":\"WooCommerce\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/woocommerce\\/\",\"icon\":null},{\"title\":\"Product Enquiry Form\",\"image\":\"\",\"excerpt\":\"Allow visitors to contact you directly from the product details page via a reCAPTCHA protected form to enquire about a product.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/product-enquiry-form\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"5a0f5d72519a8ffcc86669f042296937\",\"slug\":\"woocommerce-product-enquiry-form\",\"id\":18601,\"rating\":null,\"reviews_count\":null,\"vendor_name\":\"WooCommerce\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/woocommerce\\/\",\"icon\":null},{\"title\":\"WooCommerce Order Barcodes\",\"image\":\"\",\"excerpt\":\"Generates a unique barcode for each order on your site - perfect for e-tickets, packing slips, reservations and a variety of other uses.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-order-barcodes\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"889835bb29ee3400923653e1e44a3779\",\"slug\":\"woocommerce-order-barcodes\",\"id\":391708,\"rating\":null,\"reviews_count\":null,\"vendor_name\":\"WooCommerce\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/woocommerce\\/\",\"icon\":null},{\"title\":\"Sensei LMS Course Progress\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2021\\/07\\/sensei-course-progress.png\",\"excerpt\":\"Enable your students to easily see their progress and pick up where they left off in a course.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/sensei-course-progress\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"ec0f55d8fa7c517dc1844f5c873a77da\",\"slug\":\"sensei-course-progress\",\"id\":435833,\"rating\":null,\"reviews_count\":null,\"vendor_name\":\"Automattic\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/automattic\\/\",\"icon\":null},{\"title\":\"WooCommerce 360\\u00ba Image\",\"image\":\"\",\"excerpt\":\"An easy way to add a dynamic, controllable 360\\u00ba image rotation to your WooCommerce site, by adding a group of images to a product\\u2019s gallery.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-360-image\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"24eb2cfa3738a66bf3b2587876668cd2\",\"slug\":\"woocommerce-360-image\",\"id\":512186,\"rating\":null,\"reviews_count\":null,\"vendor_name\":\"WooCommerce\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/woocommerce\\/\",\"icon\":null},{\"title\":\"Dynamic Pricing\",\"image\":\"\",\"excerpt\":\"Bulk discounts, role-based pricing and much more\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/dynamic-pricing\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;129.00\",\"hash\":\"9a41775bb33843f52c93c922b0053986\",\"slug\":\"woocommerce-dynamic-pricing\",\"id\":18643,\"rating\":3.4,\"reviews_count\":27,\"vendor_name\":\"Element Stark\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/element-stark\\/\",\"icon\":null},{\"title\":\"WooCommerce Photography\",\"image\":\"\",\"excerpt\":\"Sell photos in the blink of an eye using this simple as dragging &amp; dropping interface.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-photography\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"ee76e8b9daf1d97ca4d3874cc9e35687\",\"slug\":\"woocommerce-photography\",\"id\":583602,\"rating\":null,\"reviews_count\":null,\"vendor_name\":\"WooCommerce\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/woocommerce\\/\",\"icon\":null},{\"title\":\"WooCommerce Bookings Availability\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Woo-Bookings-Aval-Dark.png\",\"excerpt\":\"Sell more bookings by presenting a calendar or schedule of available slots in a page or post.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/bookings-availability\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"30770d2a-e392-4e82-baaa-76cfc7d02ae3\",\"slug\":\"woocommerce-bookings-availability\",\"id\":4228225,\"rating\":null,\"reviews_count\":null,\"vendor_name\":\"WooCommerce\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/woocommerce\\/\",\"icon\":null},{\"title\":\"Name Your Price\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/woocommerce_uploads\\/2012\\/09\\/nyp-icon-dark-v83owf.png\",\"excerpt\":\"Allow customers to define the product price. Also useful for accepting user-set donations.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/name-your-price\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"31b4e11696cd99a3c0572975a84f1c08\",\"slug\":\"woocommerce-name-your-price\",\"id\":18738,\"rating\":5,\"reviews_count\":52,\"vendor_name\":\"Backcourt Development\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/backcourt-development\\/\",\"icon\":null},{\"title\":\"Software Add-on\",\"image\":\"\",\"excerpt\":\"Sell License Keys for Software\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/software-add-on\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;129.00\",\"hash\":\"79f6dbfe1f1d3a56a86f0509b6d6b04b\",\"slug\":\"woocommerce-software-add-on\",\"id\":18683,\"rating\":null,\"reviews_count\":null,\"vendor_name\":\"WooCommerce\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/woocommerce\\/\",\"icon\":null},{\"title\":\"WooCommerce Products Compare\",\"image\":\"\",\"excerpt\":\"WooCommerce Products Compare will allow your potential customers to easily compare products within your store.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-products-compare\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"c3ba0a4a3199a0cc7a6112eb24414548\",\"slug\":\"woocommerce-products-compare\",\"id\":853117,\"rating\":null,\"reviews_count\":null,\"vendor_name\":\"WooCommerce\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/woocommerce\\/\",\"icon\":null},{\"title\":\"WooCommerce Store Catalog PDF Download\",\"image\":\"\",\"excerpt\":\"Offer your customers a PDF download of your product catalog, generated by WooCommerce.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-store-catalog-pdf-download\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"79ca7aadafe706364e2d738b7c1090c4\",\"slug\":\"woocommerce-store-catalog-pdf-download\",\"id\":675790,\"rating\":null,\"reviews_count\":null,\"vendor_name\":\"WooCommerce\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/woocommerce\\/\",\"icon\":null},{\"title\":\"Storefront Reviews\",\"image\":\"\",\"excerpt\":\"Reviews can often be the deciding factor when making a purchase online. Highlight your best reviews on your homepage, or across your site with Storefront Reviews.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/storefront-reviews\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"https:\\/\\/themes.woocommerce.com\\/storefront\\/reviews\\/\",\"price\":\"&#36;19.00\",\"hash\":\"0c8a1d86b8eff9f1edffa923aeb3fc1f\",\"slug\":\"storefront-reviews\",\"id\":1044976,\"rating\":null,\"reviews_count\":null,\"vendor_name\":\"WooCommerce\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/woocommerce\\/\",\"icon\":null},{\"title\":\"WooCommerce Print Invoices &amp; Packing lists\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2012\\/03\\/Thumbnail-Print-Invoices-Packing-lists-updated.png\",\"excerpt\":\"Generate invoices, packing slips, and pick lists for your WooCommerce orders.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/print-invoices-packing-lists\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"465de1126817cdfb42d97ebca7eea717\",\"slug\":\"woocommerce-pip\",\"id\":18666,\"rating\":4.3,\"reviews_count\":27,\"vendor_name\":\"SkyVerge\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/skyverge\\/\",\"icon\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/woocommerce_uploads\\/2015\\/06\\/skyverge-wc-icon-b2vhw6.png\"},{\"title\":\"Klarna Checkout\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2018\\/01\\/Partner_marketing_Klarna_Checkout_Black-1.png\",\"excerpt\":\"Klarna Checkout is a full checkout experience embedded on your site that includes all popular payment methods (Pay Now, Pay Later, Financing, Installments).\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/klarna-checkout\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"https:\\/\\/demo.krokedil.se\\/klarnacheckout\\/\",\"price\":\"&#36;0.00\",\"hash\":\"90f8ce584e785fcd8c2d739fd4f40d78\",\"slug\":\"klarna-checkout-for-woocommerce\",\"id\":2754152,\"rating\":null,\"reviews_count\":null,\"vendor_name\":\"Krokedil\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/krokedil\\/\",\"icon\":null},{\"title\":\"Google Product Feed\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/woocommerce_uploads\\/2011\\/11\\/logo-regular-lscryp.png\",\"excerpt\":\"Feed rich product data to Google Merchant Center for setting up free product listings, product ads, and local inventory campaigns. Full control over your field mappings, and feed content so you can maximize campaign performance and ad spend.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/google-product-feed\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"d55b4f852872025741312839f142447e\",\"slug\":\"woocommerce-product-feeds\",\"id\":18619,\"rating\":4.3,\"reviews_count\":36,\"vendor_name\":\"Ademti Software\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/ademti-software\\/\",\"icon\":null},{\"title\":\"WooCommerce AvaTax\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2016\\/01\\/Thumbnail-Avalara-updated.png\",\"excerpt\":\"Get 100% accurate sales tax calculations and on-time tax filing. No more tracking sales tax rates and rules.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-avatax\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"57077a4b28ba71cacf692bcf4a1a7f60\",\"slug\":\"woocommerce-avatax\",\"id\":1389326,\"rating\":null,\"reviews_count\":null,\"vendor_name\":\"SkyVerge\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/skyverge\\/\",\"icon\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/woocommerce_uploads\\/2015\\/06\\/skyverge-wc-icon-b2vhw6.png\"},{\"title\":\"Sensei LMS Certificates\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2021\\/07\\/sensei-certificates.png\",\"excerpt\":\"Award your students with a certificate of completion and a sense of accomplishment after finishing a course.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/sensei-certificates\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"625ee5fe1bf36b4c741ab07507ba2ffd\",\"slug\":\"sensei-certificates\",\"id\":247548,\"rating\":null,\"reviews_count\":null,\"vendor_name\":\"Automattic\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/automattic\\/\",\"icon\":null},{\"title\":\"Composite Products\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/woocommerce_uploads\\/2013\\/06\\/Composites_logo-8dctno.png\",\"excerpt\":\"Create product kit builders and custom product configurators using existing products.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/composite-products\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;99.00\",\"hash\":\"0343e0115bbcb97ccd98442b8326a0af\",\"slug\":\"woocommerce-composite-products\",\"id\":216836,\"rating\":4.9,\"reviews_count\":99,\"vendor_name\":\"WooCommerce\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/woocommerce\\/\",\"icon\":null},{\"title\":\"Gravity Forms Product Add-ons\",\"image\":\"\",\"excerpt\":\"Powerful product add-ons, Gravity style\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/gravity-forms-add-ons\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"https:\\/\\/www.elementstark.com\\/woocommerce-extension-demos\\/product-category\\/gravity-forms\\/\",\"price\":\"&#36;99.00\",\"hash\":\"a6ac0ab1a1536e3a357ccf24c0650ed0\",\"slug\":\"woocommerce-gravityforms-product-addons\",\"id\":18633,\"rating\":null,\"reviews_count\":null,\"vendor_name\":\"Element Stark\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/element-stark\\/\",\"icon\":null},{\"title\":\"PayPal Payments Pro\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Paypal-Payments-Pro-Dark.png\",\"excerpt\":\"Take credit card payments directly on your checkout using PayPal Pro.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/paypal-pro\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"6d23ba7f0e0198937c0029f9e865b40e\",\"slug\":\"woocommerce-gateway-paypal-pro\",\"id\":18594,\"rating\":null,\"reviews_count\":null,\"vendor_name\":\"WooCommerce\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/woocommerce\\/\",\"icon\":null},{\"title\":\"Eway\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2011\\/10\\/51456-Eway-logo-tagline-RGB-H-yellow-_-grey.png\",\"excerpt\":\"Take credit card payments securely via Eway (SG, MY, HK, AU, and NZ) keeping customers on your site.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/eway\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"2c497769d98d025e0d340cd0b5ea5da1\",\"slug\":\"woocommerce-gateway-eway\",\"id\":18604,\"rating\":null,\"reviews_count\":null,\"vendor_name\":\"WooCommerce\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/woocommerce\\/\",\"icon\":null},{\"title\":\"WooCommerce Paid Courses\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2021\\/07\\/wc-paid-courses.png\",\"excerpt\":\"Sell your online courses using Sensei LMS with WooCommerce.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-paid-courses\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;129.00\",\"hash\":\"bad2a02a063555b7e2bee59924690763\",\"slug\":\"woothemes-sensei\",\"id\":152116,\"rating\":null,\"reviews_count\":null,\"vendor_name\":\"Automattic\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/automattic\\/\",\"icon\":null},{\"title\":\"Sensei LMS Media Attachments\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2021\\/07\\/sensei-media-attachments.png\",\"excerpt\":\"Provide your students with easy access to additional learning materials, from audio files to slideshows and PDFs.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/sensei-media-attachments\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"788647a9a1d8ef5c95371f0e69223a0f\",\"slug\":\"sensei-media-attachments\",\"id\":290551,\"rating\":null,\"reviews_count\":null,\"vendor_name\":\"Automattic\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/automattic\\/\",\"icon\":null},{\"title\":\"QuickBooks Sync for WooCommerce\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/woocommerce_uploads\\/2019\\/04\\/woocommerce-com-logo-1-hyhzbh.png\",\"excerpt\":\"Automatic two-way sync for orders, customers, products, inventory and more between WooCommerce and QuickBooks (Online, Desktop, or POS).\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/quickbooks-sync-for-woocommerce\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"c5e32e20-7c1f-4585-8b15-d930c2d842ac\",\"slug\":\"myworks-woo-sync-for-quickbooks-online\",\"id\":4065824,\"rating\":null,\"reviews_count\":null,\"vendor_name\":\"MyWorks Software\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/myworks-software\\/\",\"icon\":null},{\"title\":\"WooCommerce Blocks\",\"image\":\"\",\"excerpt\":\"WooCommerce Blocks offers a range of Gutenberg blocks you can use to build and customise your site.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-gutenberg-products-block\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"c2e9f13a-f90c-4ffe-a8a5-b432399ec263\",\"slug\":\"woo-gutenberg-products-block\",\"id\":3076677,\"rating\":null,\"reviews_count\":null,\"vendor_name\":\"WooCommerce\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/woocommerce\\/\",\"icon\":null},{\"title\":\"Catalog Visibility Options\",\"image\":\"\",\"excerpt\":\"Transform WooCommerce into an online catalog by removing eCommerce functionality\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/catalog-visibility-options\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"12e791110365fdbb5865c8658907967e\",\"slug\":\"woocommerce-catalog-visibility-options\",\"id\":18648,\"rating\":null,\"reviews_count\":null,\"vendor_name\":\"Element Stark\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/element-stark\\/\",\"icon\":null},{\"title\":\"Conditional Shipping and Payments\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/woocommerce_uploads\\/2015\\/03\\/CSP_Logo-abcc0f.png\",\"excerpt\":\"Use conditional logic to restrict the shipping and payment options available on your store.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/conditional-shipping-and-payments\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"1f56ff002fa830b77017b0107505211a\",\"slug\":\"woocommerce-conditional-shipping-and-payments\",\"id\":680253,\"rating\":4.8,\"reviews_count\":42,\"vendor_name\":\"WooCommerce\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/woocommerce\\/\",\"icon\":null},{\"title\":\"WooCommerce Order Status Manager\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2015\\/02\\/Thumbnail-Order-Status-Manager-updated.png\",\"excerpt\":\"Create, edit, and delete completely custom order statuses and integrate them seamlessly into your order management flow.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-order-status-manager\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"51fd9ab45394b4cad5a0ebf58d012342\",\"slug\":\"woocommerce-order-status-manager\",\"id\":588398,\"rating\":null,\"reviews_count\":null,\"vendor_name\":\"SkyVerge\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/skyverge\\/\",\"icon\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/woocommerce_uploads\\/2015\\/06\\/skyverge-wc-icon-b2vhw6.png\"},{\"title\":\"Sequential Order Numbers Pro\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2012\\/05\\/Thumbnail-Sequential-Order-Numbers-Pro-updated.png\",\"excerpt\":\"Tame your order numbers! Upgrade from Sequential Order Numbers with advanced features and with optional prefixes\\/suffixes.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/sequential-order-numbers-pro\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"0b18a2816e016ba9988b93b1cd8fe766\",\"slug\":\"woocommerce-sequential-order-numbers-pro\",\"id\":18688,\"rating\":null,\"reviews_count\":null,\"vendor_name\":\"SkyVerge\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/skyverge\\/\",\"icon\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/woocommerce_uploads\\/2015\\/06\\/skyverge-wc-icon-b2vhw6.png\"},{\"title\":\"WooCommerce Google Analytics Pro\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2016\\/01\\/Thumbnail-GAPro-updated.png\",\"excerpt\":\"Add advanced event tracking and enhanced eCommerce tracking to your WooCommerce site.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-google-analytics-pro\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"d8aed8b7306b509eec1589e59abe319f\",\"slug\":\"woocommerce-google-analytics-pro\",\"id\":1312497,\"rating\":4,\"reviews_count\":19,\"vendor_name\":\"SkyVerge\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/skyverge\\/\",\"icon\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/woocommerce_uploads\\/2015\\/06\\/skyverge-wc-icon-b2vhw6.png\"},{\"title\":\"WooCommerce Checkout Add-Ons\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2014\\/07\\/Thumbnail-Checkout-Add-Ons-updated.png\",\"excerpt\":\"Highlight relevant products, offers like free shipping and other up-sells during checkout.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-checkout-add-ons\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"8fdca00b4000b7a8cc26371d0e470a8f\",\"slug\":\"woocommerce-checkout-add-ons\",\"id\":466854,\"rating\":null,\"reviews_count\":null,\"vendor_name\":\"SkyVerge\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/skyverge\\/\",\"icon\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/woocommerce_uploads\\/2015\\/06\\/skyverge-wc-icon-b2vhw6.png\"},{\"title\":\"Coupon Shortcodes\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/woocommerce_uploads\\/2013\\/09\\/woocommerce-coupon-shortcodes-product-image-1870x960-1-vc5gux.png\",\"excerpt\":\"Show coupon discount info using shortcodes. Allows to render coupon information and content conditionally, based on the validity of coupons.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/coupon-shortcodes\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"ac5d9d51-70b2-4d8f-8b89-24200eea1394\",\"slug\":\"woocommerce-coupon-shortcodes\",\"id\":244762,\"rating\":null,\"reviews_count\":null,\"vendor_name\":\"itthinx\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/itthinx\\/\",\"icon\":null},{\"title\":\"WooCommerce Product Search\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/woocommerce_uploads\\/2014\\/10\\/woocommerce-product-search-product-image-1870x960-1-jvsljj.png\",\"excerpt\":\"The perfect search engine helps customers to find and buy products quickly \\u2013 essential for every WooCommerce store.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-product-search\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"https:\\/\\/demo.itthinx.com\\/wps\\/\",\"price\":\"&#36;49.00\",\"hash\":\"c84cc8ca16ddac3408e6b6c5871133a8\",\"slug\":\"woocommerce-product-search\",\"id\":512174,\"rating\":4.4,\"reviews_count\":136,\"vendor_name\":\"itthinx\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/itthinx\\/\",\"icon\":null},{\"title\":\"WooCommerce One Page Checkout\",\"image\":\"\",\"excerpt\":\"Create special pages where customers can choose products, checkout &amp; pay all on the one page.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-one-page-checkout\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"c9ba8f8352cd71b5508af5161268619a\",\"slug\":\"woocommerce-one-page-checkout\",\"id\":527886,\"rating\":null,\"reviews_count\":null,\"vendor_name\":\"WooCommerce\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/woocommerce\\/\",\"icon\":null},{\"title\":\"Klarna Payments\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2018\\/01\\/Partner_marketing_Klarna_Payments_Pink.png\",\"excerpt\":\"With Klarna Payments\\u00a0you can choose the payment that you want, Pay Now, Pay Later or Slice It. No credit card numbers, no passwords, no worries.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/klarna-payments\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"https:\\/\\/demo.krokedil.se\\/klarnapayments\\/\",\"price\":\"&#36;0.00\",\"hash\":\"a19c689325bc8ea63c620765dd54b33a\",\"slug\":\"klarna-payments-for-woocommerce\",\"id\":2754217,\"rating\":null,\"reviews_count\":null,\"vendor_name\":\"Krokedil\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/krokedil\\/\",\"icon\":null},{\"title\":\"First Data\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2012\\/02\\/Thumbnail-FirstData-updated.png\",\"excerpt\":\"Accept payment with First Data using the Payeezy Gateway, Payeezy, or legacy Global Gateway payment gateways.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/firstdata\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"eb3e32663ec0810592eaf0d097796230\",\"slug\":\"woocommerce-gateway-firstdata\",\"id\":18645,\"rating\":null,\"reviews_count\":null,\"vendor_name\":\"SkyVerge\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/skyverge\\/\",\"icon\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/woocommerce_uploads\\/2015\\/06\\/skyverge-wc-icon-b2vhw6.png\"},{\"title\":\"WooCommerce Order Status Control\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2014\\/06\\/Thumbnail-Order-Status-Control-updated.png\",\"excerpt\":\"Use this extension to automatically change the order status to \\\"completed\\\" after successful payment.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-order-status-control\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;29.00\",\"hash\":\"32400e509c7c36dcc1cd368e8267d981\",\"slug\":\"woocommerce-order-status-control\",\"id\":439037,\"rating\":null,\"reviews_count\":null,\"vendor_name\":\"SkyVerge\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/skyverge\\/\",\"icon\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/woocommerce_uploads\\/2015\\/06\\/skyverge-wc-icon-b2vhw6.png\"}]}\";s:8:\"response\";a:2:{s:4:\"code\";i:200;s:7:\"message\";s:2:\"OK\";}s:7:\"cookies\";a:0:{}s:8:\"filename\";N;s:13:\"http_response\";O:25:\"WP_HTTP_Requests_Response\":5:{s:11:\"\0*\0response\";O:17:\"Requests_Response\":10:{s:4:\"body\";s:64909:\"{\"products\":[{\"title\":\"WooCommerce Google Analytics\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/GA-Dark.png\",\"excerpt\":\"Understand your customers and increase revenue with world\\u2019s leading analytics platform - integrated with WooCommerce for free.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-google-analytics\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"2d21f7de14dfb8e9885a4622be701ddf\",\"slug\":\"woocommerce-google-analytics-integration\",\"id\":1442927,\"rating\":null,\"reviews_count\":null,\"vendor_name\":\"WooCommerce\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/woocommerce\\/\",\"icon\":null},{\"title\":\"WooCommerce Tax\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Woo-Tax-Dark.png\",\"excerpt\":\"Automatically calculate how much sales tax should be collected for WooCommerce orders - by city, country, or state - at checkout.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/tax\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"f31b3b9273cce188cc2b27f7849d02dd\",\"slug\":\"woocommerce-services\",\"id\":3220291,\"rating\":null,\"reviews_count\":null,\"vendor_name\":\"WooCommerce\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/woocommerce\\/\",\"icon\":null},{\"title\":\"Stripe\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Stripe-Dark-1.png\",\"excerpt\":\"Accept all major debit and credit cards as well as local payment methods with Stripe.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/stripe\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"50bb7a985c691bb943a9da4d2c8b5efd\",\"slug\":\"woocommerce-gateway-stripe\",\"id\":18627,\"rating\":null,\"reviews_count\":null,\"vendor_name\":\"WooCommerce\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/woocommerce\\/\",\"icon\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/woocommerce_uploads\\/2011\\/12\\/stripe-app-icon-7m1xi7.png\"},{\"title\":\"Jetpack\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Jetpack-Dark.png\",\"excerpt\":\"Security, performance, and marketing tools made for WooCommerce stores by the WordPress experts. Get started with basic security and speed tools for free.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/jetpack\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"d5bfef9700b62b2b132c74c74c3193eb\",\"slug\":\"jetpack\",\"id\":2725249,\"rating\":null,\"reviews_count\":null,\"vendor_name\":\"Jetpack\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/jetpack\\/\",\"icon\":null},{\"title\":\"Facebook for WooCommerce\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Facebook-Dark.png\",\"excerpt\":\"Get the Official Facebook for WooCommerce plugin for three powerful ways to help grow your business.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/facebook\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"0ea4fe4c2d7ca6338f8a322fb3e4e187\",\"slug\":\"facebook-for-woocommerce\",\"id\":2127297,\"rating\":2.1,\"reviews_count\":51,\"vendor_name\":\"WooCommerce\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/woocommerce\\/\",\"icon\":null},{\"title\":\"WooCommerce Payments\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Woo-Pay-Dark.png\",\"excerpt\":\"Securely accept payments, track cash flow, and manage recurring revenue from your dashboard \\u2014 all without setup costs or monthly fees.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-payments\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"8c6319ca-8f41-4e69-be63-6b15ee37773b\",\"slug\":\"woocommerce-payments\",\"id\":5278104,\"rating\":null,\"reviews_count\":null,\"vendor_name\":\"WooCommerce\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/woocommerce\\/\",\"icon\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/woocommerce_uploads\\/2020\\/02\\/wcpay-icon-fv4tef.png\"},{\"title\":\"Amazon Pay\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Amazon-Pay-Dark.png\",\"excerpt\":\"Amazon Pay is embedded in your WooCommerce store. Transactions take place via\\u00a0Amazon widgets, so the buyer never leaves your site.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/pay-with-amazon\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"9865e043bbbe4f8c9735af31cb509b53\",\"slug\":\"woocommerce-gateway-amazon-payments-advanced\",\"id\":238816,\"rating\":3.5,\"reviews_count\":10,\"vendor_name\":\"WooCommerce\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/woocommerce\\/\",\"icon\":null},{\"title\":\"Square for WooCommerce\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Square-Dark.png\",\"excerpt\":\"Accepting payments is easy with Square. Clear rates, fast deposits (1-2 business days). Sell online and in person, and sync all payments, items and inventory.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/square\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"e907be8b86d7df0c8f8e0d0020b52638\",\"slug\":\"woocommerce-square\",\"id\":1770503,\"rating\":3.2,\"reviews_count\":64,\"vendor_name\":\"WooCommerce\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/woocommerce\\/\",\"icon\":null},{\"title\":\"WooCommerce Shipping\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Woo-Ship-Dark-1.png\",\"excerpt\":\"Print USPS and DHL labels right from your WooCommerce dashboard and instantly save up to 90%. WooCommerce Shipping is free to use and saves you time and money.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/shipping\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"f31b3b9273cce188cc2b27f7849d02dd\",\"slug\":\"woocommerce-services\",\"id\":2165910,\"rating\":null,\"reviews_count\":null,\"vendor_name\":\"WooCommerce\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/woocommerce\\/\",\"icon\":null},{\"title\":\"WooCommerce Subscriptions\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Woo-Subscriptions-Dark.png\",\"excerpt\":\"Let customers subscribe to your products or services and pay on a weekly, monthly or annual basis.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-subscriptions\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;199.00\",\"hash\":\"6115e6d7e297b623a169fdcf5728b224\",\"slug\":\"woocommerce-subscriptions\",\"id\":27147,\"rating\":3.6,\"reviews_count\":37,\"vendor_name\":\"WooCommerce\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/woocommerce\\/\",\"icon\":null},{\"title\":\"Mailchimp for WooCommerce\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/09\\/logo-mailchimp-dark-v2.png\",\"excerpt\":\"Increase traffic, drive repeat purchases, and personalize your marketing when you connect to Mailchimp.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/mailchimp-for-woocommerce\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"b4481616ebece8b1ff68fc59b90c1a91\",\"slug\":\"mailchimp-for-woocommerce\",\"id\":2545166,\"rating\":null,\"reviews_count\":null,\"vendor_name\":\"Mailchimp\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/mailchimp\\/\",\"icon\":null},{\"title\":\"Product Add-Ons\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Woo-Product-Add-Ons-Dark.png\",\"excerpt\":\"Offer add-ons like gift wrapping, special messages or other special options for your products.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/product-add-ons\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"147d0077e591e16db9d0d67daeb8c484\",\"slug\":\"woocommerce-product-addons\",\"id\":18618,\"rating\":3.1,\"reviews_count\":19,\"vendor_name\":\"WooCommerce\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/woocommerce\\/\",\"icon\":null},{\"title\":\"ShipStation Integration\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Shipstation-Dark.png\",\"excerpt\":\"Fulfill all your Woo orders (and wherever else you sell) quickly and easily using ShipStation. Try it free for 30 days today!\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/shipstation-integration\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"9de8640767ba64237808ed7f245a49bb\",\"slug\":\"woocommerce-shipstation-integration\",\"id\":18734,\"rating\":null,\"reviews_count\":null,\"vendor_name\":\"WooCommerce\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/woocommerce\\/\",\"icon\":null},{\"title\":\"PayFast Payment Gateway\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Payfast-Dark-1.png\",\"excerpt\":\"Take payments on your WooCommerce store via PayFast (redirect method).\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/payfast-payment-gateway\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"557bf07293ad916f20c207c6c9cd15ff\",\"slug\":\"woocommerce-payfast-gateway\",\"id\":18596,\"rating\":null,\"reviews_count\":null,\"vendor_name\":\"WooCommerce\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/woocommerce\\/\",\"icon\":null},{\"title\":\"Google Listings &amp; Ads\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2021\\/06\\/marketplace-card.png\",\"excerpt\":\"Reach millions of engaged shoppers across Google with free product listings and ads. Built in partnership with Google.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/google-listings-and-ads\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"118f4d86-f126-4c3a-8525-644e3170d161\",\"slug\":\"google-listings-and-ads\",\"id\":7623964,\"rating\":null,\"reviews_count\":null,\"vendor_name\":\"WooCommerce\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/woocommerce\\/\",\"icon\":null},{\"title\":\"USPS Shipping Method\",\"image\":\"\",\"excerpt\":\"Get shipping rates from the USPS API which handles both domestic and international parcels.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/usps-shipping-method\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"83d1524e8f5f1913e58889f83d442c32\",\"slug\":\"woocommerce-shipping-usps\",\"id\":18657,\"rating\":null,\"reviews_count\":null,\"vendor_name\":\"WooCommerce\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/woocommerce\\/\",\"icon\":null},{\"title\":\"UPS Shipping Method\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/UPS-Shipping-Method-Dark.png\",\"excerpt\":\"Get shipping rates from the UPS API which handles both domestic and international parcels.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/ups-shipping-method\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"8dae58502913bac0fbcdcaba515ea998\",\"slug\":\"woocommerce-shipping-ups\",\"id\":18665,\"rating\":3.4,\"reviews_count\":10,\"vendor_name\":\"WooCommerce\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/woocommerce\\/\",\"icon\":null},{\"title\":\"Google Ads &amp; Marketing by Kliken\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/woocommerce_uploads\\/2019\\/02\\/GA-for-Woo-Logo-374x192px-qu3duk.png\",\"excerpt\":\"Get in front of shoppers and drive traffic to your store so you can grow your business with Smart Shopping Campaigns and free listings.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/google-ads-and-marketing\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"bf66e173-a220-4da7-9512-b5728c20fc16\",\"slug\":\"kliken-marketing-for-google\",\"id\":3866145,\"rating\":4.4,\"reviews_count\":109,\"vendor_name\":\"Kliken\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/kliken\\/\",\"icon\":null},{\"title\":\"Shipment Tracking\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Woo-Ship-Tracking-Dark-1.png\",\"excerpt\":\"Add shipment tracking information to your orders.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/shipment-tracking\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"1968e199038a8a001c9f9966fd06bf88\",\"slug\":\"woocommerce-shipment-tracking\",\"id\":18693,\"rating\":null,\"reviews_count\":null,\"vendor_name\":\"WooCommerce\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/woocommerce\\/\",\"icon\":null},{\"title\":\"Checkout Field Editor\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Woo-Checkout-Field-Editor-Dark.png\",\"excerpt\":\"Optimize your checkout process by adding, removing or editing fields to suit your needs.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-checkout-field-editor\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"2b8029f0d7cdd1118f4d843eb3ab43ff\",\"slug\":\"woocommerce-checkout-field-editor\",\"id\":184594,\"rating\":null,\"reviews_count\":null,\"vendor_name\":\"WooCommerce\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/woocommerce\\/\",\"icon\":null},{\"title\":\"Table Rate Shipping\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Product-Table-Rate-Shipping-Dark.png\",\"excerpt\":\"Advanced, flexible shipping. Define multiple shipping rates based on location, price, weight, shipping class or item count.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/table-rate-shipping\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;99.00\",\"hash\":\"3034ed8aff427b0f635fe4c86bbf008a\",\"slug\":\"woocommerce-table-rate-shipping\",\"id\":18718,\"rating\":null,\"reviews_count\":null,\"vendor_name\":\"WooCommerce\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/woocommerce\\/\",\"icon\":null},{\"title\":\"WooCommerce Bookings\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Woo-Bookings-Dark.png\",\"excerpt\":\"Allow customers to book appointments, make reservations or rent equipment without leaving your site.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-bookings\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"https:\\/\\/themes.woocommerce.com\\/hotel\\/\",\"price\":\"&#36;249.00\",\"hash\":\"911c438934af094c2b38d5560b9f50f3\",\"slug\":\"WooCommerce Bookings\",\"id\":390890,\"rating\":2.7,\"reviews_count\":18,\"vendor_name\":\"WooCommerce\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/woocommerce\\/\",\"icon\":null},{\"title\":\"PayPal Payments\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/woocommerce_uploads\\/2020\\/10\\/PPCP-Tile-PayPal-Logo-and-Cart-Art-2x-2-uozwz8.jpg\",\"excerpt\":\"PayPal\'s latest, all-in-one checkout solution. Securely accept PayPal Digital Payments, credit\\/debit cards and local payment methods.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-paypal-payments\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"934115ab-e3f3-4435-9580-345b1ce21899\",\"slug\":\"woocommerce-paypal-payments\",\"id\":6410731,\"rating\":null,\"reviews_count\":null,\"vendor_name\":\"WooCommerce\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/woocommerce\\/\",\"icon\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/woocommerce_uploads\\/2020\\/10\\/pp_v_rgb-didybc.jpg\"},{\"title\":\"Braintree for WooCommerce\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2016\\/02\\/braintree-black-copy.png\",\"excerpt\":\"Accept PayPal, credit cards and debit cards with a single payment gateway solution \\u2014 PayPal Powered by Braintree.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-gateway-paypal-powered-by-braintree\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"27f010c8e34ca65b205ddec88ad14536\",\"slug\":\"woocommerce-gateway-paypal-powered-by-braintree\",\"id\":1489837,\"rating\":null,\"reviews_count\":null,\"vendor_name\":\"WooCommerce\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/woocommerce\\/\",\"icon\":null},{\"title\":\"Min\\/Max Quantities\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Woo-Min-Max-Qua-Dark.png\",\"excerpt\":\"Specify minimum and maximum allowed product quantities for orders to be completed.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/minmax-quantities\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;29.00\",\"hash\":\"2b5188d90baecfb781a5aa2d6abb900a\",\"slug\":\"woocommerce-min-max-quantities\",\"id\":18616,\"rating\":null,\"reviews_count\":null,\"vendor_name\":\"WooCommerce\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/woocommerce\\/\",\"icon\":null},{\"title\":\"WooCommerce Memberships\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2015\\/06\\/Thumbnail-Memberships-updated.png\",\"excerpt\":\"Power your membership association, online magazine, elearning sites, and more with access control to content\\/products and member discounts.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-memberships\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;199.00\",\"hash\":\"9288e7609ad0b487b81ef6232efa5cfc\",\"slug\":\"woocommerce-memberships\",\"id\":958589,\"rating\":4.4,\"reviews_count\":78,\"vendor_name\":\"SkyVerge\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/skyverge\\/\",\"icon\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/woocommerce_uploads\\/2015\\/06\\/skyverge-wc-icon-b2vhw6.png\"},{\"title\":\"Australia Post Shipping Method\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2012\\/09\\/australia-post.gif\",\"excerpt\":\"Get shipping rates for your WooCommerce store from the Australia Post API, which handles both domestic and international parcels.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/australia-post-shipping-method\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"1dbd4dc6bd91a9cda1bd6b9e7a5e4f43\",\"slug\":\"woocommerce-shipping-australia-post\",\"id\":18622,\"rating\":null,\"reviews_count\":null,\"vendor_name\":\"WooCommerce\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/woocommerce\\/\",\"icon\":null},{\"title\":\"Canada Post Shipping Method\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2012\\/09\\/canada-post.png\",\"excerpt\":\"Get shipping rates from the Canada Post Ratings API which handles both domestic and international parcels.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/canada-post-shipping-method\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"ac029cdf3daba20b20c7b9be7dc00e0e\",\"slug\":\"woocommerce-shipping-canada-post\",\"id\":18623,\"rating\":null,\"reviews_count\":null,\"vendor_name\":\"WooCommerce\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/woocommerce\\/\",\"icon\":null},{\"title\":\"Product Bundles\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/woocommerce_uploads\\/2012\\/07\\/Bundles_logo-0cllvb.png\",\"excerpt\":\"Offer personalized product bundles, bulk discount packages, and assembled\\u00a0products.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/product-bundles\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"aa2518b5-ab19-4b75-bde9-60ca51e20f28\",\"slug\":\"woocommerce-product-bundles\",\"id\":18716,\"rating\":4.9,\"reviews_count\":114,\"vendor_name\":\"WooCommerce\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/woocommerce\\/\",\"icon\":null},{\"title\":\"FedEx Shipping Method\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/woocommerce_uploads\\/2013\\/01\\/FedEx_Logo_Wallpaper.jpeg\",\"excerpt\":\"Get shipping rates from the FedEx API which handles both domestic and international parcels.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/fedex-shipping-module\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"1a48b598b47a81559baadef15e320f64\",\"slug\":\"woocommerce-shipping-fedex\",\"id\":18620,\"rating\":null,\"reviews_count\":null,\"vendor_name\":\"WooCommerce\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/woocommerce\\/\",\"icon\":null},{\"title\":\"Product CSV Import Suite\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Woo-Product-CSV-Import-Dark.png\",\"excerpt\":\"Import, merge, and export products and variations to and from WooCommerce using a CSV file.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/product-csv-import-suite\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"7ac9b00a1fe980fb61d28ab54d167d0d\",\"slug\":\"woocommerce-product-csv-import-suite\",\"id\":18680,\"rating\":null,\"reviews_count\":null,\"vendor_name\":\"WooCommerce\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/woocommerce\\/\",\"icon\":null},{\"title\":\"Multichannel for WooCommerce: Google, Amazon, eBay &amp; Walmart Integration\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2018\\/10\\/Woo-Extension-Store-Logo-v2.png\",\"excerpt\":\"Get the official Google, Amazon, eBay and Walmart extension and create, sync and manage multichannel listings directly from WooCommerce.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/amazon-ebay-integration\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"e4000666-9275-4c71-8619-be61fb41c9f9\",\"slug\":\"woocommerce-amazon-ebay-integration\",\"id\":3545890,\"rating\":3.2,\"reviews_count\":32,\"vendor_name\":\"Codisto\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/codisto\\/\",\"icon\":null},{\"title\":\"Follow-Ups\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Woo-Follow-Ups-Dark.png\",\"excerpt\":\"Automatically contact customers after purchase - be it everyone, your most loyal or your biggest spenders - and keep your store top-of-mind.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/follow-up-emails\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;99.00\",\"hash\":\"05ece68fe94558e65278fe54d9ec84d2\",\"slug\":\"woocommerce-follow-up-emails\",\"id\":18686,\"rating\":null,\"reviews_count\":null,\"vendor_name\":\"WooCommerce\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/woocommerce\\/\",\"icon\":null},{\"title\":\"Royal Mail\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/woocommerce_uploads\\/2013\\/04\\/royalmail.png\",\"excerpt\":\"Offer Royal Mail shipping rates to your customers\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/royal-mail\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"03839cca1a16c4488fcb669aeb91a056\",\"slug\":\"woocommerce-shipping-royalmail\",\"id\":182719,\"rating\":null,\"reviews_count\":null,\"vendor_name\":\"WooCommerce\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/woocommerce\\/\",\"icon\":null},{\"title\":\"Product Vendors\",\"image\":\"\",\"excerpt\":\"Turn your store into a multi-vendor marketplace\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/product-vendors\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"a97d99fccd651bbdd728f4d67d492c31\",\"slug\":\"woocommerce-product-vendors\",\"id\":219982,\"rating\":3,\"reviews_count\":16,\"vendor_name\":\"WooCommerce\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/woocommerce\\/\",\"icon\":null},{\"title\":\"LiveChat for WooCommerce\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/woocommerce_uploads\\/2015\\/11\\/LC_woo_regular-zmiaym.png\",\"excerpt\":\"Live Chat and messaging platform for sales and support -- increase average order value and overall sales through live conversations.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/livechat\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"https:\\/\\/www.livechat.com\\/livechat-for-ecommerce\\/?a=woocommerce&amp;utm_source=woocommerce.com&amp;utm_medium=integration&amp;utm_campaign=woocommerce.com\",\"price\":\"&#36;0.00\",\"hash\":\"5344cc1f-ed4a-4d00-beff-9d67f6d372f3\",\"slug\":\"livechat-woocommerce\",\"id\":1348888,\"rating\":null,\"reviews_count\":null,\"vendor_name\":\"Live Chat\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/live-chat\\/\",\"icon\":null},{\"title\":\"WooCommerce Accommodation Bookings\",\"image\":\"\",\"excerpt\":\"Book accommodation using WooCommerce and the WooCommerce Bookings extension.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-accommodation-bookings\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"99b2a7a4af90b6cefd2a733b3b1f78e7\",\"slug\":\"woocommerce-accommodation-bookings\",\"id\":1412069,\"rating\":null,\"reviews_count\":null,\"vendor_name\":\"WooCommerce\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/woocommerce\\/\",\"icon\":null},{\"title\":\"Storefront Homepage Contact Section\",\"image\":\"\",\"excerpt\":\"Add a Contact section to the Storefront homepage.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/storefront-homepage-contact-section\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"cb12b87f8bbb0139dafbf92ca1f871ef\",\"slug\":\"storefront-homepage-contact-section\",\"id\":1468793,\"rating\":null,\"reviews_count\":null,\"vendor_name\":\"WooCommerce\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/woocommerce\\/\",\"icon\":null},{\"title\":\"Authorize.Net\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2013\\/04\\/Thumbnail-Authorize.net-updated.png\",\"excerpt\":\"Authorize.Net gateway with support for pre-orders and subscriptions.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/authorize-net\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"8b61524fe53add7fdd1a8d1b00b9327d\",\"slug\":\"woocommerce-gateway-authorize-net-cim\",\"id\":178481,\"rating\":4.8,\"reviews_count\":39,\"vendor_name\":\"SkyVerge\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/skyverge\\/\",\"icon\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/woocommerce_uploads\\/2015\\/06\\/skyverge-wc-icon-b2vhw6.png\"},{\"title\":\"Xero\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/woocommerce_uploads\\/2012\\/08\\/xero2.png\",\"excerpt\":\"Save time with automated sync between WooCommerce and your Xero account.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/xero\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"f0dd29d338d3c67cf6cee88eddf6869b\",\"slug\":\"woocommerce-xero\",\"id\":18733,\"rating\":null,\"reviews_count\":null,\"vendor_name\":\"WooCommerce\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/woocommerce\\/\",\"icon\":null},{\"title\":\"AutomateWoo\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-AutomateWoo-Dark-1.png\",\"excerpt\":\"Powerful marketing automation for WooCommerce. AutomateWoo has the tools you need to grow your store and make more money.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/automatewoo\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;99.00\",\"hash\":\"ba9299b8-1dba-4aa0-a313-28bc1755cb88\",\"slug\":\"automatewoo\",\"id\":4652610,\"rating\":null,\"reviews_count\":null,\"vendor_name\":\"WooCommerce\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/woocommerce\\/\",\"icon\":null},{\"title\":\"WooCommerce Brands\",\"image\":\"\",\"excerpt\":\"Create, assign and list brands for products, and allow customers to view by brand.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/brands\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;29.00\",\"hash\":\"8a88c7cbd2f1e73636c331c7a86f818c\",\"slug\":\"woocommerce-brands\",\"id\":18737,\"rating\":null,\"reviews_count\":null,\"vendor_name\":\"WooCommerce\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/woocommerce\\/\",\"icon\":null},{\"title\":\"Storefront Footer Bar\",\"image\":\"\",\"excerpt\":\"Adds a full-width widget region above the Storefront footer widget area, which can be customized with colors and a background image.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/storefront-footer-bar\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"6cfd3d4f923cafa16e4801ae801751f4\",\"slug\":\"storefront-footer-bar\",\"id\":1434472,\"rating\":null,\"reviews_count\":null,\"vendor_name\":\"WooCommerce\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/woocommerce\\/\",\"icon\":null},{\"title\":\"Advanced Notifications\",\"image\":\"\",\"excerpt\":\"Easily setup \\\"new order\\\" and stock email notifications for multiple recipients of your choosing.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/advanced-notifications\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;29.00\",\"hash\":\"112372c44b002fea2640bd6bfafbca27\",\"slug\":\"woocommerce-advanced-notifications\",\"id\":18740,\"rating\":null,\"reviews_count\":null,\"vendor_name\":\"WooCommerce\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/woocommerce\\/\",\"icon\":null},{\"title\":\"WooCommerce Points and Rewards\",\"image\":\"\",\"excerpt\":\"Reward your customers for purchases and other actions with points which can be redeemed for discounts.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-points-and-rewards\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;129.00\",\"hash\":\"1649b6cca5da8b923b01ca56b5cdd246\",\"slug\":\"woocommerce-points-and-rewards\",\"id\":210259,\"rating\":2.9,\"reviews_count\":11,\"vendor_name\":\"WooCommerce\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/woocommerce\\/\",\"icon\":null},{\"title\":\"WooCommerce Pre-Orders\",\"image\":\"\",\"excerpt\":\"Allow customers to order products before they are available.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-pre-orders\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;129.00\",\"hash\":\"b2dc75e7d55e6f5bbfaccb59830f66b7\",\"slug\":\"woocommerce-pre-orders\",\"id\":178477,\"rating\":null,\"reviews_count\":null,\"vendor_name\":\"WooCommerce\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/woocommerce\\/\",\"icon\":null},{\"title\":\"WooCommerce Customer \\/ Order \\/ Coupon Export\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2012\\/02\\/Thumbnail-Customer-Order-Coupon-Export-updated.png\",\"excerpt\":\"Export customers, orders, and coupons from WooCommerce manually or on an automated schedule.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/ordercustomer-csv-export\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"914de15813a903c767b55445608bf290\",\"slug\":\"woocommerce-customer-order-csv-export\",\"id\":18652,\"rating\":4.5,\"reviews_count\":21,\"vendor_name\":\"SkyVerge\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/skyverge\\/\",\"icon\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/woocommerce_uploads\\/2015\\/06\\/skyverge-wc-icon-b2vhw6.png\"},{\"title\":\"WooCommerce Additional Variation Images\",\"image\":\"\",\"excerpt\":\"Add gallery images per variation on variable products within WooCommerce.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-additional-variation-images\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"https:\\/\\/themes.woocommerce.com\\/storefront\\/product\\/woo-single-1\\/\",\"price\":\"&#36;49.00\",\"hash\":\"c61dd6de57dcecb32bd7358866de4539\",\"slug\":\"woocommerce-additional-variation-images\",\"id\":477384,\"rating\":null,\"reviews_count\":null,\"vendor_name\":\"WooCommerce\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/woocommerce\\/\",\"icon\":null},{\"title\":\"WooCommerce Subscription Downloads\",\"image\":\"\",\"excerpt\":\"Offer additional downloads to your subscribers, via downloadable products listed in your store.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-subscription-downloads\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"5be9e21c13953253e4406d2a700382ec\",\"slug\":\"woocommerce-subscription-downloads\",\"id\":420458,\"rating\":null,\"reviews_count\":null,\"vendor_name\":\"WooCommerce\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/woocommerce\\/\",\"icon\":null},{\"title\":\"WooCommerce Deposits\",\"image\":\"\",\"excerpt\":\"Enable customers to pay for products using a deposit or a payment plan.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-deposits\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;179.00\",\"hash\":\"de192a6cf12c4fd803248da5db700762\",\"slug\":\"woocommerce-deposits\",\"id\":977087,\"rating\":null,\"reviews_count\":null,\"vendor_name\":\"WooCommerce\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/woocommerce\\/\",\"icon\":null},{\"title\":\"Smart Coupons\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/10\\/wc-product-smart-coupons.png\",\"excerpt\":\"Everything you need for discounts, coupons, credits, gift cards, product giveaways, offers, and promotions. Most popular and complete coupons plugin for WooCommerce.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/smart-coupons\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"http:\\/\\/demo.storeapps.org\\/?demo=sc\",\"price\":\"&#36;99.00\",\"hash\":\"05c45f2aa466106a466de4402fff9dde\",\"slug\":\"woocommerce-smart-coupons\",\"id\":18729,\"rating\":4.6,\"reviews_count\":120,\"vendor_name\":\"StoreApps\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/storeapps\\/\",\"icon\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/woocommerce_uploads\\/2012\\/08\\/wc-icon-smart-coupons-160-p8fwgu.png\"},{\"title\":\"Amazon S3 Storage\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2012\\/09\\/amazon.png\",\"excerpt\":\"Serve digital products via Amazon S3\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/amazon-s3-storage\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;29.00\",\"hash\":\"473bf6f221b865eff165c97881b473bb\",\"slug\":\"woocommerce-amazon-s3-storage\",\"id\":18663,\"rating\":null,\"reviews_count\":null,\"vendor_name\":\"WooCommerce\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/woocommerce\\/\",\"icon\":null},{\"title\":\"Cart Add-ons\",\"image\":\"\",\"excerpt\":\"A powerful tool for driving incremental and impulse purchases by customers once they are in the shopping cart\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/cart-add-ons\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;29.00\",\"hash\":\"3a8ef25334396206f5da4cf208adeda3\",\"slug\":\"woocommerce-cart-add-ons\",\"id\":18717,\"rating\":null,\"reviews_count\":null,\"vendor_name\":\"WooCommerce\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/woocommerce\\/\",\"icon\":null},{\"title\":\"Shipping Multiple Addresses\",\"image\":\"\",\"excerpt\":\"Allow your customers to ship individual items in a single order to multiple addresses.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/shipping-multiple-addresses\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"aa0eb6f777846d329952d5b891d6f8cc\",\"slug\":\"woocommerce-shipping-multiple-addresses\",\"id\":18741,\"rating\":null,\"reviews_count\":null,\"vendor_name\":\"WooCommerce\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/woocommerce\\/\",\"icon\":null},{\"title\":\"WooCommerce Zapier\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/woocommerce-zapier-logo.png\",\"excerpt\":\"Integrate your WooCommerce store with 4000+ cloud apps and services today. Trusted by 11,000+ users.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-zapier\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;59.00\",\"hash\":\"0782bdbe932c00f4978850268c6cfe40\",\"slug\":\"woocommerce-zapier\",\"id\":243589,\"rating\":4.4,\"reviews_count\":32,\"vendor_name\":\"OM4\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/om4\\/\",\"icon\":null},{\"title\":\"Bulk Stock Management\",\"image\":\"\",\"excerpt\":\"Edit product and variation stock levels in bulk via this handy interface\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/bulk-stock-management\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"02f4328d52f324ebe06a78eaaae7934f\",\"slug\":\"woocommerce-bulk-stock-management\",\"id\":18670,\"rating\":null,\"reviews_count\":null,\"vendor_name\":\"WooCommerce\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/woocommerce\\/\",\"icon\":null},{\"title\":\"WooCommerce Email Customizer\",\"image\":\"\",\"excerpt\":\"Connect with your customers with each email you send by visually modifying your email templates via the WordPress Customizer.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-email-customizer\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"bd909fa97874d431f203b5336c7e8873\",\"slug\":\"woocommerce-email-customizer\",\"id\":853277,\"rating\":null,\"reviews_count\":null,\"vendor_name\":\"WooCommerce\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/woocommerce\\/\",\"icon\":null},{\"title\":\"TaxJar\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2014\\/10\\/taxjar-logotype.png\",\"excerpt\":\"Automate sales tax compliance for your multi-channel e-commerce business. Accurate sales tax calculations, data aggregation, quality reporting, and filing for your WooCommerce store.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/taxjar\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"12072d8e-e933-4561-97b1-9db3c7eeed91\",\"slug\":\"taxjar-simplified-taxes-for-woocommerce\",\"id\":514914,\"rating\":null,\"reviews_count\":null,\"vendor_name\":\"TaxJar\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/taxjar\\/\",\"icon\":null},{\"title\":\"Force Sells\",\"image\":\"\",\"excerpt\":\"Force products to be added to the cart\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/force-sells\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"3ebddfc491ca168a4ea4800b893302b0\",\"slug\":\"woocommerce-force-sells\",\"id\":18678,\"rating\":null,\"reviews_count\":null,\"vendor_name\":\"WooCommerce\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/woocommerce\\/\",\"icon\":null},{\"title\":\"WooCommerce Quick View\",\"image\":\"\",\"excerpt\":\"Show a quick-view button to view product details and add to cart via lightbox popup\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-quick-view\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;29.00\",\"hash\":\"619c6e57ce72c49c4b57e15b06eddb65\",\"slug\":\"woocommerce-quick-view\",\"id\":187509,\"rating\":null,\"reviews_count\":null,\"vendor_name\":\"WooCommerce\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/woocommerce\\/\",\"icon\":null},{\"title\":\"WooCommerce Purchase Order Gateway\",\"image\":\"\",\"excerpt\":\"Receive purchase orders via your WooCommerce-powered online store.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-gateway-purchase-order\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"573a92318244ece5facb449d63e74874\",\"slug\":\"woocommerce-gateway-purchase-order\",\"id\":478542,\"rating\":null,\"reviews_count\":null,\"vendor_name\":\"WooCommerce\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/woocommerce\\/\",\"icon\":null},{\"title\":\"Returns and Warranty Requests\",\"image\":\"\",\"excerpt\":\"Manage the RMA process, add warranties to products &amp; let customers request &amp; manage returns \\/ exchanges from their account.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/warranty-requests\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"9b4c41102e6b61ea5f558e16f9b63e25\",\"slug\":\"woocommerce-warranty\",\"id\":228315,\"rating\":null,\"reviews_count\":null,\"vendor_name\":\"WooCommerce\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/woocommerce\\/\",\"icon\":null},{\"title\":\"WooCommerce Box Office\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Woo-BO-Dark.png\",\"excerpt\":\"Sell tickets for your next event, concert, function, fundraiser or conference directly on your own site\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-box-office\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;129.00\",\"hash\":\"e704c9160de318216a8fa657404b9131\",\"slug\":\"woocommerce-box-office\",\"id\":1628717,\"rating\":null,\"reviews_count\":null,\"vendor_name\":\"WooCommerce\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/woocommerce\\/\",\"icon\":null},{\"title\":\"Product Enquiry Form\",\"image\":\"\",\"excerpt\":\"Allow visitors to contact you directly from the product details page via a reCAPTCHA protected form to enquire about a product.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/product-enquiry-form\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"5a0f5d72519a8ffcc86669f042296937\",\"slug\":\"woocommerce-product-enquiry-form\",\"id\":18601,\"rating\":null,\"reviews_count\":null,\"vendor_name\":\"WooCommerce\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/woocommerce\\/\",\"icon\":null},{\"title\":\"WooCommerce Order Barcodes\",\"image\":\"\",\"excerpt\":\"Generates a unique barcode for each order on your site - perfect for e-tickets, packing slips, reservations and a variety of other uses.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-order-barcodes\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"889835bb29ee3400923653e1e44a3779\",\"slug\":\"woocommerce-order-barcodes\",\"id\":391708,\"rating\":null,\"reviews_count\":null,\"vendor_name\":\"WooCommerce\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/woocommerce\\/\",\"icon\":null},{\"title\":\"Sensei LMS Course Progress\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2021\\/07\\/sensei-course-progress.png\",\"excerpt\":\"Enable your students to easily see their progress and pick up where they left off in a course.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/sensei-course-progress\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"ec0f55d8fa7c517dc1844f5c873a77da\",\"slug\":\"sensei-course-progress\",\"id\":435833,\"rating\":null,\"reviews_count\":null,\"vendor_name\":\"Automattic\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/automattic\\/\",\"icon\":null},{\"title\":\"WooCommerce 360\\u00ba Image\",\"image\":\"\",\"excerpt\":\"An easy way to add a dynamic, controllable 360\\u00ba image rotation to your WooCommerce site, by adding a group of images to a product\\u2019s gallery.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-360-image\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"24eb2cfa3738a66bf3b2587876668cd2\",\"slug\":\"woocommerce-360-image\",\"id\":512186,\"rating\":null,\"reviews_count\":null,\"vendor_name\":\"WooCommerce\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/woocommerce\\/\",\"icon\":null},{\"title\":\"Dynamic Pricing\",\"image\":\"\",\"excerpt\":\"Bulk discounts, role-based pricing and much more\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/dynamic-pricing\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;129.00\",\"hash\":\"9a41775bb33843f52c93c922b0053986\",\"slug\":\"woocommerce-dynamic-pricing\",\"id\":18643,\"rating\":3.4,\"reviews_count\":27,\"vendor_name\":\"Element Stark\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/element-stark\\/\",\"icon\":null},{\"title\":\"WooCommerce Photography\",\"image\":\"\",\"excerpt\":\"Sell photos in the blink of an eye using this simple as dragging &amp; dropping interface.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-photography\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"ee76e8b9daf1d97ca4d3874cc9e35687\",\"slug\":\"woocommerce-photography\",\"id\":583602,\"rating\":null,\"reviews_count\":null,\"vendor_name\":\"WooCommerce\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/woocommerce\\/\",\"icon\":null},{\"title\":\"WooCommerce Bookings Availability\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Woo-Bookings-Aval-Dark.png\",\"excerpt\":\"Sell more bookings by presenting a calendar or schedule of available slots in a page or post.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/bookings-availability\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"30770d2a-e392-4e82-baaa-76cfc7d02ae3\",\"slug\":\"woocommerce-bookings-availability\",\"id\":4228225,\"rating\":null,\"reviews_count\":null,\"vendor_name\":\"WooCommerce\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/woocommerce\\/\",\"icon\":null},{\"title\":\"Name Your Price\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/woocommerce_uploads\\/2012\\/09\\/nyp-icon-dark-v83owf.png\",\"excerpt\":\"Allow customers to define the product price. Also useful for accepting user-set donations.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/name-your-price\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"31b4e11696cd99a3c0572975a84f1c08\",\"slug\":\"woocommerce-name-your-price\",\"id\":18738,\"rating\":5,\"reviews_count\":52,\"vendor_name\":\"Backcourt Development\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/backcourt-development\\/\",\"icon\":null},{\"title\":\"Software Add-on\",\"image\":\"\",\"excerpt\":\"Sell License Keys for Software\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/software-add-on\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;129.00\",\"hash\":\"79f6dbfe1f1d3a56a86f0509b6d6b04b\",\"slug\":\"woocommerce-software-add-on\",\"id\":18683,\"rating\":null,\"reviews_count\":null,\"vendor_name\":\"WooCommerce\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/woocommerce\\/\",\"icon\":null},{\"title\":\"WooCommerce Products Compare\",\"image\":\"\",\"excerpt\":\"WooCommerce Products Compare will allow your potential customers to easily compare products within your store.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-products-compare\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"c3ba0a4a3199a0cc7a6112eb24414548\",\"slug\":\"woocommerce-products-compare\",\"id\":853117,\"rating\":null,\"reviews_count\":null,\"vendor_name\":\"WooCommerce\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/woocommerce\\/\",\"icon\":null},{\"title\":\"WooCommerce Store Catalog PDF Download\",\"image\":\"\",\"excerpt\":\"Offer your customers a PDF download of your product catalog, generated by WooCommerce.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-store-catalog-pdf-download\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"79ca7aadafe706364e2d738b7c1090c4\",\"slug\":\"woocommerce-store-catalog-pdf-download\",\"id\":675790,\"rating\":null,\"reviews_count\":null,\"vendor_name\":\"WooCommerce\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/woocommerce\\/\",\"icon\":null},{\"title\":\"Storefront Reviews\",\"image\":\"\",\"excerpt\":\"Reviews can often be the deciding factor when making a purchase online. Highlight your best reviews on your homepage, or across your site with Storefront Reviews.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/storefront-reviews\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"https:\\/\\/themes.woocommerce.com\\/storefront\\/reviews\\/\",\"price\":\"&#36;19.00\",\"hash\":\"0c8a1d86b8eff9f1edffa923aeb3fc1f\",\"slug\":\"storefront-reviews\",\"id\":1044976,\"rating\":null,\"reviews_count\":null,\"vendor_name\":\"WooCommerce\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/woocommerce\\/\",\"icon\":null},{\"title\":\"WooCommerce Print Invoices &amp; Packing lists\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2012\\/03\\/Thumbnail-Print-Invoices-Packing-lists-updated.png\",\"excerpt\":\"Generate invoices, packing slips, and pick lists for your WooCommerce orders.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/print-invoices-packing-lists\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"465de1126817cdfb42d97ebca7eea717\",\"slug\":\"woocommerce-pip\",\"id\":18666,\"rating\":4.3,\"reviews_count\":27,\"vendor_name\":\"SkyVerge\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/skyverge\\/\",\"icon\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/woocommerce_uploads\\/2015\\/06\\/skyverge-wc-icon-b2vhw6.png\"},{\"title\":\"Klarna Checkout\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2018\\/01\\/Partner_marketing_Klarna_Checkout_Black-1.png\",\"excerpt\":\"Klarna Checkout is a full checkout experience embedded on your site that includes all popular payment methods (Pay Now, Pay Later, Financing, Installments).\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/klarna-checkout\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"https:\\/\\/demo.krokedil.se\\/klarnacheckout\\/\",\"price\":\"&#36;0.00\",\"hash\":\"90f8ce584e785fcd8c2d739fd4f40d78\",\"slug\":\"klarna-checkout-for-woocommerce\",\"id\":2754152,\"rating\":null,\"reviews_count\":null,\"vendor_name\":\"Krokedil\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/krokedil\\/\",\"icon\":null},{\"title\":\"Google Product Feed\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/woocommerce_uploads\\/2011\\/11\\/logo-regular-lscryp.png\",\"excerpt\":\"Feed rich product data to Google Merchant Center for setting up free product listings, product ads, and local inventory campaigns. Full control over your field mappings, and feed content so you can maximize campaign performance and ad spend.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/google-product-feed\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"d55b4f852872025741312839f142447e\",\"slug\":\"woocommerce-product-feeds\",\"id\":18619,\"rating\":4.3,\"reviews_count\":36,\"vendor_name\":\"Ademti Software\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/ademti-software\\/\",\"icon\":null},{\"title\":\"WooCommerce AvaTax\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2016\\/01\\/Thumbnail-Avalara-updated.png\",\"excerpt\":\"Get 100% accurate sales tax calculations and on-time tax filing. No more tracking sales tax rates and rules.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-avatax\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"57077a4b28ba71cacf692bcf4a1a7f60\",\"slug\":\"woocommerce-avatax\",\"id\":1389326,\"rating\":null,\"reviews_count\":null,\"vendor_name\":\"SkyVerge\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/skyverge\\/\",\"icon\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/woocommerce_uploads\\/2015\\/06\\/skyverge-wc-icon-b2vhw6.png\"},{\"title\":\"Sensei LMS Certificates\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2021\\/07\\/sensei-certificates.png\",\"excerpt\":\"Award your students with a certificate of completion and a sense of accomplishment after finishing a course.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/sensei-certificates\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"625ee5fe1bf36b4c741ab07507ba2ffd\",\"slug\":\"sensei-certificates\",\"id\":247548,\"rating\":null,\"reviews_count\":null,\"vendor_name\":\"Automattic\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/automattic\\/\",\"icon\":null},{\"title\":\"Composite Products\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/woocommerce_uploads\\/2013\\/06\\/Composites_logo-8dctno.png\",\"excerpt\":\"Create product kit builders and custom product configurators using existing products.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/composite-products\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;99.00\",\"hash\":\"0343e0115bbcb97ccd98442b8326a0af\",\"slug\":\"woocommerce-composite-products\",\"id\":216836,\"rating\":4.9,\"reviews_count\":99,\"vendor_name\":\"WooCommerce\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/woocommerce\\/\",\"icon\":null},{\"title\":\"Gravity Forms Product Add-ons\",\"image\":\"\",\"excerpt\":\"Powerful product add-ons, Gravity style\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/gravity-forms-add-ons\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"https:\\/\\/www.elementstark.com\\/woocommerce-extension-demos\\/product-category\\/gravity-forms\\/\",\"price\":\"&#36;99.00\",\"hash\":\"a6ac0ab1a1536e3a357ccf24c0650ed0\",\"slug\":\"woocommerce-gravityforms-product-addons\",\"id\":18633,\"rating\":null,\"reviews_count\":null,\"vendor_name\":\"Element Stark\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/element-stark\\/\",\"icon\":null},{\"title\":\"PayPal Payments Pro\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Paypal-Payments-Pro-Dark.png\",\"excerpt\":\"Take credit card payments directly on your checkout using PayPal Pro.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/paypal-pro\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"6d23ba7f0e0198937c0029f9e865b40e\",\"slug\":\"woocommerce-gateway-paypal-pro\",\"id\":18594,\"rating\":null,\"reviews_count\":null,\"vendor_name\":\"WooCommerce\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/woocommerce\\/\",\"icon\":null},{\"title\":\"Eway\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2011\\/10\\/51456-Eway-logo-tagline-RGB-H-yellow-_-grey.png\",\"excerpt\":\"Take credit card payments securely via Eway (SG, MY, HK, AU, and NZ) keeping customers on your site.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/eway\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"2c497769d98d025e0d340cd0b5ea5da1\",\"slug\":\"woocommerce-gateway-eway\",\"id\":18604,\"rating\":null,\"reviews_count\":null,\"vendor_name\":\"WooCommerce\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/woocommerce\\/\",\"icon\":null},{\"title\":\"WooCommerce Paid Courses\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2021\\/07\\/wc-paid-courses.png\",\"excerpt\":\"Sell your online courses using Sensei LMS with WooCommerce.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-paid-courses\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;129.00\",\"hash\":\"bad2a02a063555b7e2bee59924690763\",\"slug\":\"woothemes-sensei\",\"id\":152116,\"rating\":null,\"reviews_count\":null,\"vendor_name\":\"Automattic\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/automattic\\/\",\"icon\":null},{\"title\":\"Sensei LMS Media Attachments\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2021\\/07\\/sensei-media-attachments.png\",\"excerpt\":\"Provide your students with easy access to additional learning materials, from audio files to slideshows and PDFs.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/sensei-media-attachments\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"788647a9a1d8ef5c95371f0e69223a0f\",\"slug\":\"sensei-media-attachments\",\"id\":290551,\"rating\":null,\"reviews_count\":null,\"vendor_name\":\"Automattic\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/automattic\\/\",\"icon\":null},{\"title\":\"QuickBooks Sync for WooCommerce\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/woocommerce_uploads\\/2019\\/04\\/woocommerce-com-logo-1-hyhzbh.png\",\"excerpt\":\"Automatic two-way sync for orders, customers, products, inventory and more between WooCommerce and QuickBooks (Online, Desktop, or POS).\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/quickbooks-sync-for-woocommerce\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"c5e32e20-7c1f-4585-8b15-d930c2d842ac\",\"slug\":\"myworks-woo-sync-for-quickbooks-online\",\"id\":4065824,\"rating\":null,\"reviews_count\":null,\"vendor_name\":\"MyWorks Software\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/myworks-software\\/\",\"icon\":null},{\"title\":\"WooCommerce Blocks\",\"image\":\"\",\"excerpt\":\"WooCommerce Blocks offers a range of Gutenberg blocks you can use to build and customise your site.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-gutenberg-products-block\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"c2e9f13a-f90c-4ffe-a8a5-b432399ec263\",\"slug\":\"woo-gutenberg-products-block\",\"id\":3076677,\"rating\":null,\"reviews_count\":null,\"vendor_name\":\"WooCommerce\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/woocommerce\\/\",\"icon\":null},{\"title\":\"Catalog Visibility Options\",\"image\":\"\",\"excerpt\":\"Transform WooCommerce into an online catalog by removing eCommerce functionality\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/catalog-visibility-options\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"12e791110365fdbb5865c8658907967e\",\"slug\":\"woocommerce-catalog-visibility-options\",\"id\":18648,\"rating\":null,\"reviews_count\":null,\"vendor_name\":\"Element Stark\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/element-stark\\/\",\"icon\":null},{\"title\":\"Conditional Shipping and Payments\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/woocommerce_uploads\\/2015\\/03\\/CSP_Logo-abcc0f.png\",\"excerpt\":\"Use conditional logic to restrict the shipping and payment options available on your store.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/conditional-shipping-and-payments\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"1f56ff002fa830b77017b0107505211a\",\"slug\":\"woocommerce-conditional-shipping-and-payments\",\"id\":680253,\"rating\":4.8,\"reviews_count\":42,\"vendor_name\":\"WooCommerce\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/woocommerce\\/\",\"icon\":null},{\"title\":\"WooCommerce Order Status Manager\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2015\\/02\\/Thumbnail-Order-Status-Manager-updated.png\",\"excerpt\":\"Create, edit, and delete completely custom order statuses and integrate them seamlessly into your order management flow.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-order-status-manager\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"51fd9ab45394b4cad5a0ebf58d012342\",\"slug\":\"woocommerce-order-status-manager\",\"id\":588398,\"rating\":null,\"reviews_count\":null,\"vendor_name\":\"SkyVerge\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/skyverge\\/\",\"icon\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/woocommerce_uploads\\/2015\\/06\\/skyverge-wc-icon-b2vhw6.png\"},{\"title\":\"Sequential Order Numbers Pro\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2012\\/05\\/Thumbnail-Sequential-Order-Numbers-Pro-updated.png\",\"excerpt\":\"Tame your order numbers! Upgrade from Sequential Order Numbers with advanced features and with optional prefixes\\/suffixes.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/sequential-order-numbers-pro\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"0b18a2816e016ba9988b93b1cd8fe766\",\"slug\":\"woocommerce-sequential-order-numbers-pro\",\"id\":18688,\"rating\":null,\"reviews_count\":null,\"vendor_name\":\"SkyVerge\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/skyverge\\/\",\"icon\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/woocommerce_uploads\\/2015\\/06\\/skyverge-wc-icon-b2vhw6.png\"},{\"title\":\"WooCommerce Google Analytics Pro\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2016\\/01\\/Thumbnail-GAPro-updated.png\",\"excerpt\":\"Add advanced event tracking and enhanced eCommerce tracking to your WooCommerce site.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-google-analytics-pro\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"d8aed8b7306b509eec1589e59abe319f\",\"slug\":\"woocommerce-google-analytics-pro\",\"id\":1312497,\"rating\":4,\"reviews_count\":19,\"vendor_name\":\"SkyVerge\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/skyverge\\/\",\"icon\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/woocommerce_uploads\\/2015\\/06\\/skyverge-wc-icon-b2vhw6.png\"},{\"title\":\"WooCommerce Checkout Add-Ons\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2014\\/07\\/Thumbnail-Checkout-Add-Ons-updated.png\",\"excerpt\":\"Highlight relevant products, offers like free shipping and other up-sells during checkout.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-checkout-add-ons\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"8fdca00b4000b7a8cc26371d0e470a8f\",\"slug\":\"woocommerce-checkout-add-ons\",\"id\":466854,\"rating\":null,\"reviews_count\":null,\"vendor_name\":\"SkyVerge\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/skyverge\\/\",\"icon\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/woocommerce_uploads\\/2015\\/06\\/skyverge-wc-icon-b2vhw6.png\"},{\"title\":\"Coupon Shortcodes\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/woocommerce_uploads\\/2013\\/09\\/woocommerce-coupon-shortcodes-product-image-1870x960-1-vc5gux.png\",\"excerpt\":\"Show coupon discount info using shortcodes. Allows to render coupon information and content conditionally, based on the validity of coupons.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/coupon-shortcodes\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"ac5d9d51-70b2-4d8f-8b89-24200eea1394\",\"slug\":\"woocommerce-coupon-shortcodes\",\"id\":244762,\"rating\":null,\"reviews_count\":null,\"vendor_name\":\"itthinx\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/itthinx\\/\",\"icon\":null},{\"title\":\"WooCommerce Product Search\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/woocommerce_uploads\\/2014\\/10\\/woocommerce-product-search-product-image-1870x960-1-jvsljj.png\",\"excerpt\":\"The perfect search engine helps customers to find and buy products quickly \\u2013 essential for every WooCommerce store.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-product-search\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"https:\\/\\/demo.itthinx.com\\/wps\\/\",\"price\":\"&#36;49.00\",\"hash\":\"c84cc8ca16ddac3408e6b6c5871133a8\",\"slug\":\"woocommerce-product-search\",\"id\":512174,\"rating\":4.4,\"reviews_count\":136,\"vendor_name\":\"itthinx\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/itthinx\\/\",\"icon\":null},{\"title\":\"WooCommerce One Page Checkout\",\"image\":\"\",\"excerpt\":\"Create special pages where customers can choose products, checkout &amp; pay all on the one page.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-one-page-checkout\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"c9ba8f8352cd71b5508af5161268619a\",\"slug\":\"woocommerce-one-page-checkout\",\"id\":527886,\"rating\":null,\"reviews_count\":null,\"vendor_name\":\"WooCommerce\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/woocommerce\\/\",\"icon\":null},{\"title\":\"Klarna Payments\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2018\\/01\\/Partner_marketing_Klarna_Payments_Pink.png\",\"excerpt\":\"With Klarna Payments\\u00a0you can choose the payment that you want, Pay Now, Pay Later or Slice It. No credit card numbers, no passwords, no worries.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/klarna-payments\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"https:\\/\\/demo.krokedil.se\\/klarnapayments\\/\",\"price\":\"&#36;0.00\",\"hash\":\"a19c689325bc8ea63c620765dd54b33a\",\"slug\":\"klarna-payments-for-woocommerce\",\"id\":2754217,\"rating\":null,\"reviews_count\":null,\"vendor_name\":\"Krokedil\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/krokedil\\/\",\"icon\":null},{\"title\":\"First Data\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2012\\/02\\/Thumbnail-FirstData-updated.png\",\"excerpt\":\"Accept payment with First Data using the Payeezy Gateway, Payeezy, or legacy Global Gateway payment gateways.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/firstdata\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"eb3e32663ec0810592eaf0d097796230\",\"slug\":\"woocommerce-gateway-firstdata\",\"id\":18645,\"rating\":null,\"reviews_count\":null,\"vendor_name\":\"SkyVerge\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/skyverge\\/\",\"icon\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/woocommerce_uploads\\/2015\\/06\\/skyverge-wc-icon-b2vhw6.png\"},{\"title\":\"WooCommerce Order Status Control\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2014\\/06\\/Thumbnail-Order-Status-Control-updated.png\",\"excerpt\":\"Use this extension to automatically change the order status to \\\"completed\\\" after successful payment.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-order-status-control\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;29.00\",\"hash\":\"32400e509c7c36dcc1cd368e8267d981\",\"slug\":\"woocommerce-order-status-control\",\"id\":439037,\"rating\":null,\"reviews_count\":null,\"vendor_name\":\"SkyVerge\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/skyverge\\/\",\"icon\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/woocommerce_uploads\\/2015\\/06\\/skyverge-wc-icon-b2vhw6.png\"}]}\";s:3:\"raw\";s:65589:\"HTTP/1.1 200 OK\r\nServer: nginx\r\nDate: Wed, 08 Dec 2021 11:51:08 GMT\r\nContent-Type: application/json; charset=UTF-8\r\nContent-Length: 12346\r\nConnection: close\r\nX-Robots-Tag: noindex\r\nLink: <https://woocommerce.com/wp-json/>; rel=\"https://api.w.org/\"\r\nX-Content-Type-Options: nosniff\r\nAccess-Control-Expose-Headers: X-WP-Total, X-WP-TotalPages, Link\r\nAccess-Control-Allow-Headers: Authorization, X-WP-Nonce, Content-Disposition, Content-MD5, Content-Type\r\nX-WCCOM-Cache: HIT\r\nCache-Control: max-age=60\r\nAllow: GET\r\nX-rq: vie2 0 4 9980\r\nContent-Encoding: gzip\r\nAge: 41\r\nX-Cache: hit\r\nVary: Accept-Encoding, Origin\r\nAccept-Ranges: bytes\r\nStrict-Transport-Security: max-age=31536000\r\n\r\n{\"products\":[{\"title\":\"WooCommerce Google Analytics\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/GA-Dark.png\",\"excerpt\":\"Understand your customers and increase revenue with world\\u2019s leading analytics platform - integrated with WooCommerce for free.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-google-analytics\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"2d21f7de14dfb8e9885a4622be701ddf\",\"slug\":\"woocommerce-google-analytics-integration\",\"id\":1442927,\"rating\":null,\"reviews_count\":null,\"vendor_name\":\"WooCommerce\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/woocommerce\\/\",\"icon\":null},{\"title\":\"WooCommerce Tax\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Woo-Tax-Dark.png\",\"excerpt\":\"Automatically calculate how much sales tax should be collected for WooCommerce orders - by city, country, or state - at checkout.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/tax\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"f31b3b9273cce188cc2b27f7849d02dd\",\"slug\":\"woocommerce-services\",\"id\":3220291,\"rating\":null,\"reviews_count\":null,\"vendor_name\":\"WooCommerce\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/woocommerce\\/\",\"icon\":null},{\"title\":\"Stripe\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Stripe-Dark-1.png\",\"excerpt\":\"Accept all major debit and credit cards as well as local payment methods with Stripe.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/stripe\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"50bb7a985c691bb943a9da4d2c8b5efd\",\"slug\":\"woocommerce-gateway-stripe\",\"id\":18627,\"rating\":null,\"reviews_count\":null,\"vendor_name\":\"WooCommerce\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/woocommerce\\/\",\"icon\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/woocommerce_uploads\\/2011\\/12\\/stripe-app-icon-7m1xi7.png\"},{\"title\":\"Jetpack\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Jetpack-Dark.png\",\"excerpt\":\"Security, performance, and marketing tools made for WooCommerce stores by the WordPress experts. Get started with basic security and speed tools for free.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/jetpack\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"d5bfef9700b62b2b132c74c74c3193eb\",\"slug\":\"jetpack\",\"id\":2725249,\"rating\":null,\"reviews_count\":null,\"vendor_name\":\"Jetpack\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/jetpack\\/\",\"icon\":null},{\"title\":\"Facebook for WooCommerce\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Facebook-Dark.png\",\"excerpt\":\"Get the Official Facebook for WooCommerce plugin for three powerful ways to help grow your business.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/facebook\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"0ea4fe4c2d7ca6338f8a322fb3e4e187\",\"slug\":\"facebook-for-woocommerce\",\"id\":2127297,\"rating\":2.1,\"reviews_count\":51,\"vendor_name\":\"WooCommerce\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/woocommerce\\/\",\"icon\":null},{\"title\":\"WooCommerce Payments\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Woo-Pay-Dark.png\",\"excerpt\":\"Securely accept payments, track cash flow, and manage recurring revenue from your dashboard \\u2014 all without setup costs or monthly fees.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-payments\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"8c6319ca-8f41-4e69-be63-6b15ee37773b\",\"slug\":\"woocommerce-payments\",\"id\":5278104,\"rating\":null,\"reviews_count\":null,\"vendor_name\":\"WooCommerce\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/woocommerce\\/\",\"icon\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/woocommerce_uploads\\/2020\\/02\\/wcpay-icon-fv4tef.png\"},{\"title\":\"Amazon Pay\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Amazon-Pay-Dark.png\",\"excerpt\":\"Amazon Pay is embedded in your WooCommerce store. Transactions take place via\\u00a0Amazon widgets, so the buyer never leaves your site.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/pay-with-amazon\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"9865e043bbbe4f8c9735af31cb509b53\",\"slug\":\"woocommerce-gateway-amazon-payments-advanced\",\"id\":238816,\"rating\":3.5,\"reviews_count\":10,\"vendor_name\":\"WooCommerce\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/woocommerce\\/\",\"icon\":null},{\"title\":\"Square for WooCommerce\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Square-Dark.png\",\"excerpt\":\"Accepting payments is easy with Square. Clear rates, fast deposits (1-2 business days). Sell online and in person, and sync all payments, items and inventory.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/square\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"e907be8b86d7df0c8f8e0d0020b52638\",\"slug\":\"woocommerce-square\",\"id\":1770503,\"rating\":3.2,\"reviews_count\":64,\"vendor_name\":\"WooCommerce\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/woocommerce\\/\",\"icon\":null},{\"title\":\"WooCommerce Shipping\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Woo-Ship-Dark-1.png\",\"excerpt\":\"Print USPS and DHL labels right from your WooCommerce dashboard and instantly save up to 90%. WooCommerce Shipping is free to use and saves you time and money.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/shipping\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"f31b3b9273cce188cc2b27f7849d02dd\",\"slug\":\"woocommerce-services\",\"id\":2165910,\"rating\":null,\"reviews_count\":null,\"vendor_name\":\"WooCommerce\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/woocommerce\\/\",\"icon\":null},{\"title\":\"WooCommerce Subscriptions\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Woo-Subscriptions-Dark.png\",\"excerpt\":\"Let customers subscribe to your products or services and pay on a weekly, monthly or annual basis.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-subscriptions\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;199.00\",\"hash\":\"6115e6d7e297b623a169fdcf5728b224\",\"slug\":\"woocommerce-subscriptions\",\"id\":27147,\"rating\":3.6,\"reviews_count\":37,\"vendor_name\":\"WooCommerce\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/woocommerce\\/\",\"icon\":null},{\"title\":\"Mailchimp for WooCommerce\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/09\\/logo-mailchimp-dark-v2.png\",\"excerpt\":\"Increase traffic, drive repeat purchases, and personalize your marketing when you connect to Mailchimp.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/mailchimp-for-woocommerce\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"b4481616ebece8b1ff68fc59b90c1a91\",\"slug\":\"mailchimp-for-woocommerce\",\"id\":2545166,\"rating\":null,\"reviews_count\":null,\"vendor_name\":\"Mailchimp\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/mailchimp\\/\",\"icon\":null},{\"title\":\"Product Add-Ons\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Woo-Product-Add-Ons-Dark.png\",\"excerpt\":\"Offer add-ons like gift wrapping, special messages or other special options for your products.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/product-add-ons\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"147d0077e591e16db9d0d67daeb8c484\",\"slug\":\"woocommerce-product-addons\",\"id\":18618,\"rating\":3.1,\"reviews_count\":19,\"vendor_name\":\"WooCommerce\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/woocommerce\\/\",\"icon\":null},{\"title\":\"ShipStation Integration\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Shipstation-Dark.png\",\"excerpt\":\"Fulfill all your Woo orders (and wherever else you sell) quickly and easily using ShipStation. Try it free for 30 days today!\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/shipstation-integration\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"9de8640767ba64237808ed7f245a49bb\",\"slug\":\"woocommerce-shipstation-integration\",\"id\":18734,\"rating\":null,\"reviews_count\":null,\"vendor_name\":\"WooCommerce\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/woocommerce\\/\",\"icon\":null},{\"title\":\"PayFast Payment Gateway\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Payfast-Dark-1.png\",\"excerpt\":\"Take payments on your WooCommerce store via PayFast (redirect method).\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/payfast-payment-gateway\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"557bf07293ad916f20c207c6c9cd15ff\",\"slug\":\"woocommerce-payfast-gateway\",\"id\":18596,\"rating\":null,\"reviews_count\":null,\"vendor_name\":\"WooCommerce\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/woocommerce\\/\",\"icon\":null},{\"title\":\"Google Listings &amp; Ads\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2021\\/06\\/marketplace-card.png\",\"excerpt\":\"Reach millions of engaged shoppers across Google with free product listings and ads. Built in partnership with Google.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/google-listings-and-ads\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"118f4d86-f126-4c3a-8525-644e3170d161\",\"slug\":\"google-listings-and-ads\",\"id\":7623964,\"rating\":null,\"reviews_count\":null,\"vendor_name\":\"WooCommerce\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/woocommerce\\/\",\"icon\":null},{\"title\":\"USPS Shipping Method\",\"image\":\"\",\"excerpt\":\"Get shipping rates from the USPS API which handles both domestic and international parcels.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/usps-shipping-method\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"83d1524e8f5f1913e58889f83d442c32\",\"slug\":\"woocommerce-shipping-usps\",\"id\":18657,\"rating\":null,\"reviews_count\":null,\"vendor_name\":\"WooCommerce\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/woocommerce\\/\",\"icon\":null},{\"title\":\"UPS Shipping Method\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/UPS-Shipping-Method-Dark.png\",\"excerpt\":\"Get shipping rates from the UPS API which handles both domestic and international parcels.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/ups-shipping-method\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"8dae58502913bac0fbcdcaba515ea998\",\"slug\":\"woocommerce-shipping-ups\",\"id\":18665,\"rating\":3.4,\"reviews_count\":10,\"vendor_name\":\"WooCommerce\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/woocommerce\\/\",\"icon\":null},{\"title\":\"Google Ads &amp; Marketing by Kliken\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/woocommerce_uploads\\/2019\\/02\\/GA-for-Woo-Logo-374x192px-qu3duk.png\",\"excerpt\":\"Get in front of shoppers and drive traffic to your store so you can grow your business with Smart Shopping Campaigns and free listings.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/google-ads-and-marketing\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"bf66e173-a220-4da7-9512-b5728c20fc16\",\"slug\":\"kliken-marketing-for-google\",\"id\":3866145,\"rating\":4.4,\"reviews_count\":109,\"vendor_name\":\"Kliken\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/kliken\\/\",\"icon\":null},{\"title\":\"Shipment Tracking\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Woo-Ship-Tracking-Dark-1.png\",\"excerpt\":\"Add shipment tracking information to your orders.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/shipment-tracking\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"1968e199038a8a001c9f9966fd06bf88\",\"slug\":\"woocommerce-shipment-tracking\",\"id\":18693,\"rating\":null,\"reviews_count\":null,\"vendor_name\":\"WooCommerce\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/woocommerce\\/\",\"icon\":null},{\"title\":\"Checkout Field Editor\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Woo-Checkout-Field-Editor-Dark.png\",\"excerpt\":\"Optimize your checkout process by adding, removing or editing fields to suit your needs.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-checkout-field-editor\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"2b8029f0d7cdd1118f4d843eb3ab43ff\",\"slug\":\"woocommerce-checkout-field-editor\",\"id\":184594,\"rating\":null,\"reviews_count\":null,\"vendor_name\":\"WooCommerce\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/woocommerce\\/\",\"icon\":null},{\"title\":\"Table Rate Shipping\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Product-Table-Rate-Shipping-Dark.png\",\"excerpt\":\"Advanced, flexible shipping. Define multiple shipping rates based on location, price, weight, shipping class or item count.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/table-rate-shipping\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;99.00\",\"hash\":\"3034ed8aff427b0f635fe4c86bbf008a\",\"slug\":\"woocommerce-table-rate-shipping\",\"id\":18718,\"rating\":null,\"reviews_count\":null,\"vendor_name\":\"WooCommerce\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/woocommerce\\/\",\"icon\":null},{\"title\":\"WooCommerce Bookings\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Woo-Bookings-Dark.png\",\"excerpt\":\"Allow customers to book appointments, make reservations or rent equipment without leaving your site.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-bookings\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"https:\\/\\/themes.woocommerce.com\\/hotel\\/\",\"price\":\"&#36;249.00\",\"hash\":\"911c438934af094c2b38d5560b9f50f3\",\"slug\":\"WooCommerce Bookings\",\"id\":390890,\"rating\":2.7,\"reviews_count\":18,\"vendor_name\":\"WooCommerce\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/woocommerce\\/\",\"icon\":null},{\"title\":\"PayPal Payments\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/woocommerce_uploads\\/2020\\/10\\/PPCP-Tile-PayPal-Logo-and-Cart-Art-2x-2-uozwz8.jpg\",\"excerpt\":\"PayPal\'s latest, all-in-one checkout solution. Securely accept PayPal Digital Payments, credit\\/debit cards and local payment methods.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-paypal-payments\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"934115ab-e3f3-4435-9580-345b1ce21899\",\"slug\":\"woocommerce-paypal-payments\",\"id\":6410731,\"rating\":null,\"reviews_count\":null,\"vendor_name\":\"WooCommerce\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/woocommerce\\/\",\"icon\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/woocommerce_uploads\\/2020\\/10\\/pp_v_rgb-didybc.jpg\"},{\"title\":\"Braintree for WooCommerce\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2016\\/02\\/braintree-black-copy.png\",\"excerpt\":\"Accept PayPal, credit cards and debit cards with a single payment gateway solution \\u2014 PayPal Powered by Braintree.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-gateway-paypal-powered-by-braintree\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"27f010c8e34ca65b205ddec88ad14536\",\"slug\":\"woocommerce-gateway-paypal-powered-by-braintree\",\"id\":1489837,\"rating\":null,\"reviews_count\":null,\"vendor_name\":\"WooCommerce\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/woocommerce\\/\",\"icon\":null},{\"title\":\"Min\\/Max Quantities\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Woo-Min-Max-Qua-Dark.png\",\"excerpt\":\"Specify minimum and maximum allowed product quantities for orders to be completed.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/minmax-quantities\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;29.00\",\"hash\":\"2b5188d90baecfb781a5aa2d6abb900a\",\"slug\":\"woocommerce-min-max-quantities\",\"id\":18616,\"rating\":null,\"reviews_count\":null,\"vendor_name\":\"WooCommerce\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/woocommerce\\/\",\"icon\":null},{\"title\":\"WooCommerce Memberships\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2015\\/06\\/Thumbnail-Memberships-updated.png\",\"excerpt\":\"Power your membership association, online magazine, elearning sites, and more with access control to content\\/products and member discounts.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-memberships\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;199.00\",\"hash\":\"9288e7609ad0b487b81ef6232efa5cfc\",\"slug\":\"woocommerce-memberships\",\"id\":958589,\"rating\":4.4,\"reviews_count\":78,\"vendor_name\":\"SkyVerge\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/skyverge\\/\",\"icon\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/woocommerce_uploads\\/2015\\/06\\/skyverge-wc-icon-b2vhw6.png\"},{\"title\":\"Australia Post Shipping Method\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2012\\/09\\/australia-post.gif\",\"excerpt\":\"Get shipping rates for your WooCommerce store from the Australia Post API, which handles both domestic and international parcels.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/australia-post-shipping-method\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"1dbd4dc6bd91a9cda1bd6b9e7a5e4f43\",\"slug\":\"woocommerce-shipping-australia-post\",\"id\":18622,\"rating\":null,\"reviews_count\":null,\"vendor_name\":\"WooCommerce\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/woocommerce\\/\",\"icon\":null},{\"title\":\"Canada Post Shipping Method\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2012\\/09\\/canada-post.png\",\"excerpt\":\"Get shipping rates from the Canada Post Ratings API which handles both domestic and international parcels.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/canada-post-shipping-method\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"ac029cdf3daba20b20c7b9be7dc00e0e\",\"slug\":\"woocommerce-shipping-canada-post\",\"id\":18623,\"rating\":null,\"reviews_count\":null,\"vendor_name\":\"WooCommerce\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/woocommerce\\/\",\"icon\":null},{\"title\":\"Product Bundles\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/woocommerce_uploads\\/2012\\/07\\/Bundles_logo-0cllvb.png\",\"excerpt\":\"Offer personalized product bundles, bulk discount packages, and assembled\\u00a0products.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/product-bundles\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"aa2518b5-ab19-4b75-bde9-60ca51e20f28\",\"slug\":\"woocommerce-product-bundles\",\"id\":18716,\"rating\":4.9,\"reviews_count\":114,\"vendor_name\":\"WooCommerce\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/woocommerce\\/\",\"icon\":null},{\"title\":\"FedEx Shipping Method\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/woocommerce_uploads\\/2013\\/01\\/FedEx_Logo_Wallpaper.jpeg\",\"excerpt\":\"Get shipping rates from the FedEx API which handles both domestic and international parcels.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/fedex-shipping-module\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"1a48b598b47a81559baadef15e320f64\",\"slug\":\"woocommerce-shipping-fedex\",\"id\":18620,\"rating\":null,\"reviews_count\":null,\"vendor_name\":\"WooCommerce\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/woocommerce\\/\",\"icon\":null},{\"title\":\"Product CSV Import Suite\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Woo-Product-CSV-Import-Dark.png\",\"excerpt\":\"Import, merge, and export products and variations to and from WooCommerce using a CSV file.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/product-csv-import-suite\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"7ac9b00a1fe980fb61d28ab54d167d0d\",\"slug\":\"woocommerce-product-csv-import-suite\",\"id\":18680,\"rating\":null,\"reviews_count\":null,\"vendor_name\":\"WooCommerce\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/woocommerce\\/\",\"icon\":null},{\"title\":\"Multichannel for WooCommerce: Google, Amazon, eBay &amp; Walmart Integration\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2018\\/10\\/Woo-Extension-Store-Logo-v2.png\",\"excerpt\":\"Get the official Google, Amazon, eBay and Walmart extension and create, sync and manage multichannel listings directly from WooCommerce.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/amazon-ebay-integration\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"e4000666-9275-4c71-8619-be61fb41c9f9\",\"slug\":\"woocommerce-amazon-ebay-integration\",\"id\":3545890,\"rating\":3.2,\"reviews_count\":32,\"vendor_name\":\"Codisto\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/codisto\\/\",\"icon\":null},{\"title\":\"Follow-Ups\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Woo-Follow-Ups-Dark.png\",\"excerpt\":\"Automatically contact customers after purchase - be it everyone, your most loyal or your biggest spenders - and keep your store top-of-mind.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/follow-up-emails\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;99.00\",\"hash\":\"05ece68fe94558e65278fe54d9ec84d2\",\"slug\":\"woocommerce-follow-up-emails\",\"id\":18686,\"rating\":null,\"reviews_count\":null,\"vendor_name\":\"WooCommerce\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/woocommerce\\/\",\"icon\":null},{\"title\":\"Royal Mail\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/woocommerce_uploads\\/2013\\/04\\/royalmail.png\",\"excerpt\":\"Offer Royal Mail shipping rates to your customers\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/royal-mail\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"03839cca1a16c4488fcb669aeb91a056\",\"slug\":\"woocommerce-shipping-royalmail\",\"id\":182719,\"rating\":null,\"reviews_count\":null,\"vendor_name\":\"WooCommerce\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/woocommerce\\/\",\"icon\":null},{\"title\":\"Product Vendors\",\"image\":\"\",\"excerpt\":\"Turn your store into a multi-vendor marketplace\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/product-vendors\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"a97d99fccd651bbdd728f4d67d492c31\",\"slug\":\"woocommerce-product-vendors\",\"id\":219982,\"rating\":3,\"reviews_count\":16,\"vendor_name\":\"WooCommerce\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/woocommerce\\/\",\"icon\":null},{\"title\":\"LiveChat for WooCommerce\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/woocommerce_uploads\\/2015\\/11\\/LC_woo_regular-zmiaym.png\",\"excerpt\":\"Live Chat and messaging platform for sales and support -- increase average order value and overall sales through live conversations.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/livechat\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"https:\\/\\/www.livechat.com\\/livechat-for-ecommerce\\/?a=woocommerce&amp;utm_source=woocommerce.com&amp;utm_medium=integration&amp;utm_campaign=woocommerce.com\",\"price\":\"&#36;0.00\",\"hash\":\"5344cc1f-ed4a-4d00-beff-9d67f6d372f3\",\"slug\":\"livechat-woocommerce\",\"id\":1348888,\"rating\":null,\"reviews_count\":null,\"vendor_name\":\"Live Chat\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/live-chat\\/\",\"icon\":null},{\"title\":\"WooCommerce Accommodation Bookings\",\"image\":\"\",\"excerpt\":\"Book accommodation using WooCommerce and the WooCommerce Bookings extension.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-accommodation-bookings\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"99b2a7a4af90b6cefd2a733b3b1f78e7\",\"slug\":\"woocommerce-accommodation-bookings\",\"id\":1412069,\"rating\":null,\"reviews_count\":null,\"vendor_name\":\"WooCommerce\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/woocommerce\\/\",\"icon\":null},{\"title\":\"Storefront Homepage Contact Section\",\"image\":\"\",\"excerpt\":\"Add a Contact section to the Storefront homepage.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/storefront-homepage-contact-section\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"cb12b87f8bbb0139dafbf92ca1f871ef\",\"slug\":\"storefront-homepage-contact-section\",\"id\":1468793,\"rating\":null,\"reviews_count\":null,\"vendor_name\":\"WooCommerce\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/woocommerce\\/\",\"icon\":null},{\"title\":\"Authorize.Net\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2013\\/04\\/Thumbnail-Authorize.net-updated.png\",\"excerpt\":\"Authorize.Net gateway with support for pre-orders and subscriptions.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/authorize-net\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"8b61524fe53add7fdd1a8d1b00b9327d\",\"slug\":\"woocommerce-gateway-authorize-net-cim\",\"id\":178481,\"rating\":4.8,\"reviews_count\":39,\"vendor_name\":\"SkyVerge\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/skyverge\\/\",\"icon\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/woocommerce_uploads\\/2015\\/06\\/skyverge-wc-icon-b2vhw6.png\"},{\"title\":\"Xero\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/woocommerce_uploads\\/2012\\/08\\/xero2.png\",\"excerpt\":\"Save time with automated sync between WooCommerce and your Xero account.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/xero\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"f0dd29d338d3c67cf6cee88eddf6869b\",\"slug\":\"woocommerce-xero\",\"id\":18733,\"rating\":null,\"reviews_count\":null,\"vendor_name\":\"WooCommerce\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/woocommerce\\/\",\"icon\":null},{\"title\":\"AutomateWoo\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-AutomateWoo-Dark-1.png\",\"excerpt\":\"Powerful marketing automation for WooCommerce. AutomateWoo has the tools you need to grow your store and make more money.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/automatewoo\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;99.00\",\"hash\":\"ba9299b8-1dba-4aa0-a313-28bc1755cb88\",\"slug\":\"automatewoo\",\"id\":4652610,\"rating\":null,\"reviews_count\":null,\"vendor_name\":\"WooCommerce\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/woocommerce\\/\",\"icon\":null},{\"title\":\"WooCommerce Brands\",\"image\":\"\",\"excerpt\":\"Create, assign and list brands for products, and allow customers to view by brand.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/brands\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;29.00\",\"hash\":\"8a88c7cbd2f1e73636c331c7a86f818c\",\"slug\":\"woocommerce-brands\",\"id\":18737,\"rating\":null,\"reviews_count\":null,\"vendor_name\":\"WooCommerce\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/woocommerce\\/\",\"icon\":null},{\"title\":\"Storefront Footer Bar\",\"image\":\"\",\"excerpt\":\"Adds a full-width widget region above the Storefront footer widget area, which can be customized with colors and a background image.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/storefront-footer-bar\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"6cfd3d4f923cafa16e4801ae801751f4\",\"slug\":\"storefront-footer-bar\",\"id\":1434472,\"rating\":null,\"reviews_count\":null,\"vendor_name\":\"WooCommerce\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/woocommerce\\/\",\"icon\":null},{\"title\":\"Advanced Notifications\",\"image\":\"\",\"excerpt\":\"Easily setup \\\"new order\\\" and stock email notifications for multiple recipients of your choosing.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/advanced-notifications\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;29.00\",\"hash\":\"112372c44b002fea2640bd6bfafbca27\",\"slug\":\"woocommerce-advanced-notifications\",\"id\":18740,\"rating\":null,\"reviews_count\":null,\"vendor_name\":\"WooCommerce\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/woocommerce\\/\",\"icon\":null},{\"title\":\"WooCommerce Points and Rewards\",\"image\":\"\",\"excerpt\":\"Reward your customers for purchases and other actions with points which can be redeemed for discounts.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-points-and-rewards\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;129.00\",\"hash\":\"1649b6cca5da8b923b01ca56b5cdd246\",\"slug\":\"woocommerce-points-and-rewards\",\"id\":210259,\"rating\":2.9,\"reviews_count\":11,\"vendor_name\":\"WooCommerce\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/woocommerce\\/\",\"icon\":null},{\"title\":\"WooCommerce Pre-Orders\",\"image\":\"\",\"excerpt\":\"Allow customers to order products before they are available.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-pre-orders\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;129.00\",\"hash\":\"b2dc75e7d55e6f5bbfaccb59830f66b7\",\"slug\":\"woocommerce-pre-orders\",\"id\":178477,\"rating\":null,\"reviews_count\":null,\"vendor_name\":\"WooCommerce\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/woocommerce\\/\",\"icon\":null},{\"title\":\"WooCommerce Customer \\/ Order \\/ Coupon Export\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2012\\/02\\/Thumbnail-Customer-Order-Coupon-Export-updated.png\",\"excerpt\":\"Export customers, orders, and coupons from WooCommerce manually or on an automated schedule.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/ordercustomer-csv-export\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"914de15813a903c767b55445608bf290\",\"slug\":\"woocommerce-customer-order-csv-export\",\"id\":18652,\"rating\":4.5,\"reviews_count\":21,\"vendor_name\":\"SkyVerge\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/skyverge\\/\",\"icon\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/woocommerce_uploads\\/2015\\/06\\/skyverge-wc-icon-b2vhw6.png\"},{\"title\":\"WooCommerce Additional Variation Images\",\"image\":\"\",\"excerpt\":\"Add gallery images per variation on variable products within WooCommerce.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-additional-variation-images\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"https:\\/\\/themes.woocommerce.com\\/storefront\\/product\\/woo-single-1\\/\",\"price\":\"&#36;49.00\",\"hash\":\"c61dd6de57dcecb32bd7358866de4539\",\"slug\":\"woocommerce-additional-variation-images\",\"id\":477384,\"rating\":null,\"reviews_count\":null,\"vendor_name\":\"WooCommerce\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/woocommerce\\/\",\"icon\":null},{\"title\":\"WooCommerce Subscription Downloads\",\"image\":\"\",\"excerpt\":\"Offer additional downloads to your subscribers, via downloadable products listed in your store.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-subscription-downloads\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"5be9e21c13953253e4406d2a700382ec\",\"slug\":\"woocommerce-subscription-downloads\",\"id\":420458,\"rating\":null,\"reviews_count\":null,\"vendor_name\":\"WooCommerce\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/woocommerce\\/\",\"icon\":null},{\"title\":\"WooCommerce Deposits\",\"image\":\"\",\"excerpt\":\"Enable customers to pay for products using a deposit or a payment plan.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-deposits\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;179.00\",\"hash\":\"de192a6cf12c4fd803248da5db700762\",\"slug\":\"woocommerce-deposits\",\"id\":977087,\"rating\":null,\"reviews_count\":null,\"vendor_name\":\"WooCommerce\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/woocommerce\\/\",\"icon\":null},{\"title\":\"Smart Coupons\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/10\\/wc-product-smart-coupons.png\",\"excerpt\":\"Everything you need for discounts, coupons, credits, gift cards, product giveaways, offers, and promotions. Most popular and complete coupons plugin for WooCommerce.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/smart-coupons\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"http:\\/\\/demo.storeapps.org\\/?demo=sc\",\"price\":\"&#36;99.00\",\"hash\":\"05c45f2aa466106a466de4402fff9dde\",\"slug\":\"woocommerce-smart-coupons\",\"id\":18729,\"rating\":4.6,\"reviews_count\":120,\"vendor_name\":\"StoreApps\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/storeapps\\/\",\"icon\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/woocommerce_uploads\\/2012\\/08\\/wc-icon-smart-coupons-160-p8fwgu.png\"},{\"title\":\"Amazon S3 Storage\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2012\\/09\\/amazon.png\",\"excerpt\":\"Serve digital products via Amazon S3\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/amazon-s3-storage\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;29.00\",\"hash\":\"473bf6f221b865eff165c97881b473bb\",\"slug\":\"woocommerce-amazon-s3-storage\",\"id\":18663,\"rating\":null,\"reviews_count\":null,\"vendor_name\":\"WooCommerce\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/woocommerce\\/\",\"icon\":null},{\"title\":\"Cart Add-ons\",\"image\":\"\",\"excerpt\":\"A powerful tool for driving incremental and impulse purchases by customers once they are in the shopping cart\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/cart-add-ons\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;29.00\",\"hash\":\"3a8ef25334396206f5da4cf208adeda3\",\"slug\":\"woocommerce-cart-add-ons\",\"id\":18717,\"rating\":null,\"reviews_count\":null,\"vendor_name\":\"WooCommerce\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/woocommerce\\/\",\"icon\":null},{\"title\":\"Shipping Multiple Addresses\",\"image\":\"\",\"excerpt\":\"Allow your customers to ship individual items in a single order to multiple addresses.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/shipping-multiple-addresses\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"aa0eb6f777846d329952d5b891d6f8cc\",\"slug\":\"woocommerce-shipping-multiple-addresses\",\"id\":18741,\"rating\":null,\"reviews_count\":null,\"vendor_name\":\"WooCommerce\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/woocommerce\\/\",\"icon\":null},{\"title\":\"WooCommerce Zapier\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/woocommerce-zapier-logo.png\",\"excerpt\":\"Integrate your WooCommerce store with 4000+ cloud apps and services today. Trusted by 11,000+ users.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-zapier\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;59.00\",\"hash\":\"0782bdbe932c00f4978850268c6cfe40\",\"slug\":\"woocommerce-zapier\",\"id\":243589,\"rating\":4.4,\"reviews_count\":32,\"vendor_name\":\"OM4\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/om4\\/\",\"icon\":null},{\"title\":\"Bulk Stock Management\",\"image\":\"\",\"excerpt\":\"Edit product and variation stock levels in bulk via this handy interface\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/bulk-stock-management\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"02f4328d52f324ebe06a78eaaae7934f\",\"slug\":\"woocommerce-bulk-stock-management\",\"id\":18670,\"rating\":null,\"reviews_count\":null,\"vendor_name\":\"WooCommerce\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/woocommerce\\/\",\"icon\":null},{\"title\":\"WooCommerce Email Customizer\",\"image\":\"\",\"excerpt\":\"Connect with your customers with each email you send by visually modifying your email templates via the WordPress Customizer.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-email-customizer\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"bd909fa97874d431f203b5336c7e8873\",\"slug\":\"woocommerce-email-customizer\",\"id\":853277,\"rating\":null,\"reviews_count\":null,\"vendor_name\":\"WooCommerce\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/woocommerce\\/\",\"icon\":null},{\"title\":\"TaxJar\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2014\\/10\\/taxjar-logotype.png\",\"excerpt\":\"Automate sales tax compliance for your multi-channel e-commerce business. Accurate sales tax calculations, data aggregation, quality reporting, and filing for your WooCommerce store.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/taxjar\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"12072d8e-e933-4561-97b1-9db3c7eeed91\",\"slug\":\"taxjar-simplified-taxes-for-woocommerce\",\"id\":514914,\"rating\":null,\"reviews_count\":null,\"vendor_name\":\"TaxJar\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/taxjar\\/\",\"icon\":null},{\"title\":\"Force Sells\",\"image\":\"\",\"excerpt\":\"Force products to be added to the cart\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/force-sells\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"3ebddfc491ca168a4ea4800b893302b0\",\"slug\":\"woocommerce-force-sells\",\"id\":18678,\"rating\":null,\"reviews_count\":null,\"vendor_name\":\"WooCommerce\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/woocommerce\\/\",\"icon\":null},{\"title\":\"WooCommerce Quick View\",\"image\":\"\",\"excerpt\":\"Show a quick-view button to view product details and add to cart via lightbox popup\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-quick-view\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;29.00\",\"hash\":\"619c6e57ce72c49c4b57e15b06eddb65\",\"slug\":\"woocommerce-quick-view\",\"id\":187509,\"rating\":null,\"reviews_count\":null,\"vendor_name\":\"WooCommerce\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/woocommerce\\/\",\"icon\":null},{\"title\":\"WooCommerce Purchase Order Gateway\",\"image\":\"\",\"excerpt\":\"Receive purchase orders via your WooCommerce-powered online store.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-gateway-purchase-order\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"573a92318244ece5facb449d63e74874\",\"slug\":\"woocommerce-gateway-purchase-order\",\"id\":478542,\"rating\":null,\"reviews_count\":null,\"vendor_name\":\"WooCommerce\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/woocommerce\\/\",\"icon\":null},{\"title\":\"Returns and Warranty Requests\",\"image\":\"\",\"excerpt\":\"Manage the RMA process, add warranties to products &amp; let customers request &amp; manage returns \\/ exchanges from their account.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/warranty-requests\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"9b4c41102e6b61ea5f558e16f9b63e25\",\"slug\":\"woocommerce-warranty\",\"id\":228315,\"rating\":null,\"reviews_count\":null,\"vendor_name\":\"WooCommerce\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/woocommerce\\/\",\"icon\":null},{\"title\":\"WooCommerce Box Office\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Woo-BO-Dark.png\",\"excerpt\":\"Sell tickets for your next event, concert, function, fundraiser or conference directly on your own site\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-box-office\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;129.00\",\"hash\":\"e704c9160de318216a8fa657404b9131\",\"slug\":\"woocommerce-box-office\",\"id\":1628717,\"rating\":null,\"reviews_count\":null,\"vendor_name\":\"WooCommerce\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/woocommerce\\/\",\"icon\":null},{\"title\":\"Product Enquiry Form\",\"image\":\"\",\"excerpt\":\"Allow visitors to contact you directly from the product details page via a reCAPTCHA protected form to enquire about a product.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/product-enquiry-form\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"5a0f5d72519a8ffcc86669f042296937\",\"slug\":\"woocommerce-product-enquiry-form\",\"id\":18601,\"rating\":null,\"reviews_count\":null,\"vendor_name\":\"WooCommerce\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/woocommerce\\/\",\"icon\":null},{\"title\":\"WooCommerce Order Barcodes\",\"image\":\"\",\"excerpt\":\"Generates a unique barcode for each order on your site - perfect for e-tickets, packing slips, reservations and a variety of other uses.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-order-barcodes\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"889835bb29ee3400923653e1e44a3779\",\"slug\":\"woocommerce-order-barcodes\",\"id\":391708,\"rating\":null,\"reviews_count\":null,\"vendor_name\":\"WooCommerce\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/woocommerce\\/\",\"icon\":null},{\"title\":\"Sensei LMS Course Progress\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2021\\/07\\/sensei-course-progress.png\",\"excerpt\":\"Enable your students to easily see their progress and pick up where they left off in a course.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/sensei-course-progress\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"ec0f55d8fa7c517dc1844f5c873a77da\",\"slug\":\"sensei-course-progress\",\"id\":435833,\"rating\":null,\"reviews_count\":null,\"vendor_name\":\"Automattic\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/automattic\\/\",\"icon\":null},{\"title\":\"WooCommerce 360\\u00ba Image\",\"image\":\"\",\"excerpt\":\"An easy way to add a dynamic, controllable 360\\u00ba image rotation to your WooCommerce site, by adding a group of images to a product\\u2019s gallery.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-360-image\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"24eb2cfa3738a66bf3b2587876668cd2\",\"slug\":\"woocommerce-360-image\",\"id\":512186,\"rating\":null,\"reviews_count\":null,\"vendor_name\":\"WooCommerce\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/woocommerce\\/\",\"icon\":null},{\"title\":\"Dynamic Pricing\",\"image\":\"\",\"excerpt\":\"Bulk discounts, role-based pricing and much more\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/dynamic-pricing\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;129.00\",\"hash\":\"9a41775bb33843f52c93c922b0053986\",\"slug\":\"woocommerce-dynamic-pricing\",\"id\":18643,\"rating\":3.4,\"reviews_count\":27,\"vendor_name\":\"Element Stark\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/element-stark\\/\",\"icon\":null},{\"title\":\"WooCommerce Photography\",\"image\":\"\",\"excerpt\":\"Sell photos in the blink of an eye using this simple as dragging &amp; dropping interface.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-photography\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"ee76e8b9daf1d97ca4d3874cc9e35687\",\"slug\":\"woocommerce-photography\",\"id\":583602,\"rating\":null,\"reviews_count\":null,\"vendor_name\":\"WooCommerce\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/woocommerce\\/\",\"icon\":null},{\"title\":\"WooCommerce Bookings Availability\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Woo-Bookings-Aval-Dark.png\",\"excerpt\":\"Sell more bookings by presenting a calendar or schedule of available slots in a page or post.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/bookings-availability\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"30770d2a-e392-4e82-baaa-76cfc7d02ae3\",\"slug\":\"woocommerce-bookings-availability\",\"id\":4228225,\"rating\":null,\"reviews_count\":null,\"vendor_name\":\"WooCommerce\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/woocommerce\\/\",\"icon\":null},{\"title\":\"Name Your Price\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/woocommerce_uploads\\/2012\\/09\\/nyp-icon-dark-v83owf.png\",\"excerpt\":\"Allow customers to define the product price. Also useful for accepting user-set donations.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/name-your-price\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"31b4e11696cd99a3c0572975a84f1c08\",\"slug\":\"woocommerce-name-your-price\",\"id\":18738,\"rating\":5,\"reviews_count\":52,\"vendor_name\":\"Backcourt Development\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/backcourt-development\\/\",\"icon\":null},{\"title\":\"Software Add-on\",\"image\":\"\",\"excerpt\":\"Sell License Keys for Software\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/software-add-on\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;129.00\",\"hash\":\"79f6dbfe1f1d3a56a86f0509b6d6b04b\",\"slug\":\"woocommerce-software-add-on\",\"id\":18683,\"rating\":null,\"reviews_count\":null,\"vendor_name\":\"WooCommerce\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/woocommerce\\/\",\"icon\":null},{\"title\":\"WooCommerce Products Compare\",\"image\":\"\",\"excerpt\":\"WooCommerce Products Compare will allow your potential customers to easily compare products within your store.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-products-compare\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"c3ba0a4a3199a0cc7a6112eb24414548\",\"slug\":\"woocommerce-products-compare\",\"id\":853117,\"rating\":null,\"reviews_count\":null,\"vendor_name\":\"WooCommerce\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/woocommerce\\/\",\"icon\":null},{\"title\":\"WooCommerce Store Catalog PDF Download\",\"image\":\"\",\"excerpt\":\"Offer your customers a PDF download of your product catalog, generated by WooCommerce.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-store-catalog-pdf-download\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"79ca7aadafe706364e2d738b7c1090c4\",\"slug\":\"woocommerce-store-catalog-pdf-download\",\"id\":675790,\"rating\":null,\"reviews_count\":null,\"vendor_name\":\"WooCommerce\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/woocommerce\\/\",\"icon\":null},{\"title\":\"Storefront Reviews\",\"image\":\"\",\"excerpt\":\"Reviews can often be the deciding factor when making a purchase online. Highlight your best reviews on your homepage, or across your site with Storefront Reviews.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/storefront-reviews\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"https:\\/\\/themes.woocommerce.com\\/storefront\\/reviews\\/\",\"price\":\"&#36;19.00\",\"hash\":\"0c8a1d86b8eff9f1edffa923aeb3fc1f\",\"slug\":\"storefront-reviews\",\"id\":1044976,\"rating\":null,\"reviews_count\":null,\"vendor_name\":\"WooCommerce\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/woocommerce\\/\",\"icon\":null},{\"title\":\"WooCommerce Print Invoices &amp; Packing lists\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2012\\/03\\/Thumbnail-Print-Invoices-Packing-lists-updated.png\",\"excerpt\":\"Generate invoices, packing slips, and pick lists for your WooCommerce orders.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/print-invoices-packing-lists\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"465de1126817cdfb42d97ebca7eea717\",\"slug\":\"woocommerce-pip\",\"id\":18666,\"rating\":4.3,\"reviews_count\":27,\"vendor_name\":\"SkyVerge\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/skyverge\\/\",\"icon\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/woocommerce_uploads\\/2015\\/06\\/skyverge-wc-icon-b2vhw6.png\"},{\"title\":\"Klarna Checkout\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2018\\/01\\/Partner_marketing_Klarna_Checkout_Black-1.png\",\"excerpt\":\"Klarna Checkout is a full checkout experience embedded on your site that includes all popular payment methods (Pay Now, Pay Later, Financing, Installments).\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/klarna-checkout\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"https:\\/\\/demo.krokedil.se\\/klarnacheckout\\/\",\"price\":\"&#36;0.00\",\"hash\":\"90f8ce584e785fcd8c2d739fd4f40d78\",\"slug\":\"klarna-checkout-for-woocommerce\",\"id\":2754152,\"rating\":null,\"reviews_count\":null,\"vendor_name\":\"Krokedil\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/krokedil\\/\",\"icon\":null},{\"title\":\"Google Product Feed\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/woocommerce_uploads\\/2011\\/11\\/logo-regular-lscryp.png\",\"excerpt\":\"Feed rich product data to Google Merchant Center for setting up free product listings, product ads, and local inventory campaigns. Full control over your field mappings, and feed content so you can maximize campaign performance and ad spend.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/google-product-feed\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"d55b4f852872025741312839f142447e\",\"slug\":\"woocommerce-product-feeds\",\"id\":18619,\"rating\":4.3,\"reviews_count\":36,\"vendor_name\":\"Ademti Software\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/ademti-software\\/\",\"icon\":null},{\"title\":\"WooCommerce AvaTax\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2016\\/01\\/Thumbnail-Avalara-updated.png\",\"excerpt\":\"Get 100% accurate sales tax calculations and on-time tax filing. No more tracking sales tax rates and rules.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-avatax\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"57077a4b28ba71cacf692bcf4a1a7f60\",\"slug\":\"woocommerce-avatax\",\"id\":1389326,\"rating\":null,\"reviews_count\":null,\"vendor_name\":\"SkyVerge\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/skyverge\\/\",\"icon\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/woocommerce_uploads\\/2015\\/06\\/skyverge-wc-icon-b2vhw6.png\"},{\"title\":\"Sensei LMS Certificates\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2021\\/07\\/sensei-certificates.png\",\"excerpt\":\"Award your students with a certificate of completion and a sense of accomplishment after finishing a course.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/sensei-certificates\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"625ee5fe1bf36b4c741ab07507ba2ffd\",\"slug\":\"sensei-certificates\",\"id\":247548,\"rating\":null,\"reviews_count\":null,\"vendor_name\":\"Automattic\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/automattic\\/\",\"icon\":null},{\"title\":\"Composite Products\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/woocommerce_uploads\\/2013\\/06\\/Composites_logo-8dctno.png\",\"excerpt\":\"Create product kit builders and custom product configurators using existing products.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/composite-products\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;99.00\",\"hash\":\"0343e0115bbcb97ccd98442b8326a0af\",\"slug\":\"woocommerce-composite-products\",\"id\":216836,\"rating\":4.9,\"reviews_count\":99,\"vendor_name\":\"WooCommerce\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/woocommerce\\/\",\"icon\":null},{\"title\":\"Gravity Forms Product Add-ons\",\"image\":\"\",\"excerpt\":\"Powerful product add-ons, Gravity style\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/gravity-forms-add-ons\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"https:\\/\\/www.elementstark.com\\/woocommerce-extension-demos\\/product-category\\/gravity-forms\\/\",\"price\":\"&#36;99.00\",\"hash\":\"a6ac0ab1a1536e3a357ccf24c0650ed0\",\"slug\":\"woocommerce-gravityforms-product-addons\",\"id\":18633,\"rating\":null,\"reviews_count\":null,\"vendor_name\":\"Element Stark\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/element-stark\\/\",\"icon\":null},{\"title\":\"PayPal Payments Pro\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Paypal-Payments-Pro-Dark.png\",\"excerpt\":\"Take credit card payments directly on your checkout using PayPal Pro.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/paypal-pro\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"6d23ba7f0e0198937c0029f9e865b40e\",\"slug\":\"woocommerce-gateway-paypal-pro\",\"id\":18594,\"rating\":null,\"reviews_count\":null,\"vendor_name\":\"WooCommerce\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/woocommerce\\/\",\"icon\":null},{\"title\":\"Eway\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2011\\/10\\/51456-Eway-logo-tagline-RGB-H-yellow-_-grey.png\",\"excerpt\":\"Take credit card payments securely via Eway (SG, MY, HK, AU, and NZ) keeping customers on your site.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/eway\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"2c497769d98d025e0d340cd0b5ea5da1\",\"slug\":\"woocommerce-gateway-eway\",\"id\":18604,\"rating\":null,\"reviews_count\":null,\"vendor_name\":\"WooCommerce\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/woocommerce\\/\",\"icon\":null},{\"title\":\"WooCommerce Paid Courses\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2021\\/07\\/wc-paid-courses.png\",\"excerpt\":\"Sell your online courses using Sensei LMS with WooCommerce.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-paid-courses\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;129.00\",\"hash\":\"bad2a02a063555b7e2bee59924690763\",\"slug\":\"woothemes-sensei\",\"id\":152116,\"rating\":null,\"reviews_count\":null,\"vendor_name\":\"Automattic\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/automattic\\/\",\"icon\":null},{\"title\":\"Sensei LMS Media Attachments\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2021\\/07\\/sensei-media-attachments.png\",\"excerpt\":\"Provide your students with easy access to additional learning materials, from audio files to slideshows and PDFs.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/sensei-media-attachments\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"788647a9a1d8ef5c95371f0e69223a0f\",\"slug\":\"sensei-media-attachments\",\"id\":290551,\"rating\":null,\"reviews_count\":null,\"vendor_name\":\"Automattic\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/automattic\\/\",\"icon\":null},{\"title\":\"QuickBooks Sync for WooCommerce\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/woocommerce_uploads\\/2019\\/04\\/woocommerce-com-logo-1-hyhzbh.png\",\"excerpt\":\"Automatic two-way sync for orders, customers, products, inventory and more between WooCommerce and QuickBooks (Online, Desktop, or POS).\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/quickbooks-sync-for-woocommerce\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"c5e32e20-7c1f-4585-8b15-d930c2d842ac\",\"slug\":\"myworks-woo-sync-for-quickbooks-online\",\"id\":4065824,\"rating\":null,\"reviews_count\":null,\"vendor_name\":\"MyWorks Software\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/myworks-software\\/\",\"icon\":null},{\"title\":\"WooCommerce Blocks\",\"image\":\"\",\"excerpt\":\"WooCommerce Blocks offers a range of Gutenberg blocks you can use to build and customise your site.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-gutenberg-products-block\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"c2e9f13a-f90c-4ffe-a8a5-b432399ec263\",\"slug\":\"woo-gutenberg-products-block\",\"id\":3076677,\"rating\":null,\"reviews_count\":null,\"vendor_name\":\"WooCommerce\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/woocommerce\\/\",\"icon\":null},{\"title\":\"Catalog Visibility Options\",\"image\":\"\",\"excerpt\":\"Transform WooCommerce into an online catalog by removing eCommerce functionality\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/catalog-visibility-options\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"12e791110365fdbb5865c8658907967e\",\"slug\":\"woocommerce-catalog-visibility-options\",\"id\":18648,\"rating\":null,\"reviews_count\":null,\"vendor_name\":\"Element Stark\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/element-stark\\/\",\"icon\":null},{\"title\":\"Conditional Shipping and Payments\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/woocommerce_uploads\\/2015\\/03\\/CSP_Logo-abcc0f.png\",\"excerpt\":\"Use conditional logic to restrict the shipping and payment options available on your store.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/conditional-shipping-and-payments\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"1f56ff002fa830b77017b0107505211a\",\"slug\":\"woocommerce-conditional-shipping-and-payments\",\"id\":680253,\"rating\":4.8,\"reviews_count\":42,\"vendor_name\":\"WooCommerce\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/woocommerce\\/\",\"icon\":null},{\"title\":\"WooCommerce Order Status Manager\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2015\\/02\\/Thumbnail-Order-Status-Manager-updated.png\",\"excerpt\":\"Create, edit, and delete completely custom order statuses and integrate them seamlessly into your order management flow.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-order-status-manager\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"51fd9ab45394b4cad5a0ebf58d012342\",\"slug\":\"woocommerce-order-status-manager\",\"id\":588398,\"rating\":null,\"reviews_count\":null,\"vendor_name\":\"SkyVerge\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/skyverge\\/\",\"icon\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/woocommerce_uploads\\/2015\\/06\\/skyverge-wc-icon-b2vhw6.png\"},{\"title\":\"Sequential Order Numbers Pro\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2012\\/05\\/Thumbnail-Sequential-Order-Numbers-Pro-updated.png\",\"excerpt\":\"Tame your order numbers! Upgrade from Sequential Order Numbers with advanced features and with optional prefixes\\/suffixes.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/sequential-order-numbers-pro\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"0b18a2816e016ba9988b93b1cd8fe766\",\"slug\":\"woocommerce-sequential-order-numbers-pro\",\"id\":18688,\"rating\":null,\"reviews_count\":null,\"vendor_name\":\"SkyVerge\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/skyverge\\/\",\"icon\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/woocommerce_uploads\\/2015\\/06\\/skyverge-wc-icon-b2vhw6.png\"},{\"title\":\"WooCommerce Google Analytics Pro\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2016\\/01\\/Thumbnail-GAPro-updated.png\",\"excerpt\":\"Add advanced event tracking and enhanced eCommerce tracking to your WooCommerce site.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-google-analytics-pro\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"d8aed8b7306b509eec1589e59abe319f\",\"slug\":\"woocommerce-google-analytics-pro\",\"id\":1312497,\"rating\":4,\"reviews_count\":19,\"vendor_name\":\"SkyVerge\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/skyverge\\/\",\"icon\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/woocommerce_uploads\\/2015\\/06\\/skyverge-wc-icon-b2vhw6.png\"},{\"title\":\"WooCommerce Checkout Add-Ons\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2014\\/07\\/Thumbnail-Checkout-Add-Ons-updated.png\",\"excerpt\":\"Highlight relevant products, offers like free shipping and other up-sells during checkout.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-checkout-add-ons\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"8fdca00b4000b7a8cc26371d0e470a8f\",\"slug\":\"woocommerce-checkout-add-ons\",\"id\":466854,\"rating\":null,\"reviews_count\":null,\"vendor_name\":\"SkyVerge\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/skyverge\\/\",\"icon\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/woocommerce_uploads\\/2015\\/06\\/skyverge-wc-icon-b2vhw6.png\"},{\"title\":\"Coupon Shortcodes\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/woocommerce_uploads\\/2013\\/09\\/woocommerce-coupon-shortcodes-product-image-1870x960-1-vc5gux.png\",\"excerpt\":\"Show coupon discount info using shortcodes. Allows to render coupon information and content conditionally, based on the validity of coupons.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/coupon-shortcodes\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"ac5d9d51-70b2-4d8f-8b89-24200eea1394\",\"slug\":\"woocommerce-coupon-shortcodes\",\"id\":244762,\"rating\":null,\"reviews_count\":null,\"vendor_name\":\"itthinx\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/itthinx\\/\",\"icon\":null},{\"title\":\"WooCommerce Product Search\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/woocommerce_uploads\\/2014\\/10\\/woocommerce-product-search-product-image-1870x960-1-jvsljj.png\",\"excerpt\":\"The perfect search engine helps customers to find and buy products quickly \\u2013 essential for every WooCommerce store.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-product-search\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"https:\\/\\/demo.itthinx.com\\/wps\\/\",\"price\":\"&#36;49.00\",\"hash\":\"c84cc8ca16ddac3408e6b6c5871133a8\",\"slug\":\"woocommerce-product-search\",\"id\":512174,\"rating\":4.4,\"reviews_count\":136,\"vendor_name\":\"itthinx\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/itthinx\\/\",\"icon\":null},{\"title\":\"WooCommerce One Page Checkout\",\"image\":\"\",\"excerpt\":\"Create special pages where customers can choose products, checkout &amp; pay all on the one page.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-one-page-checkout\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"c9ba8f8352cd71b5508af5161268619a\",\"slug\":\"woocommerce-one-page-checkout\",\"id\":527886,\"rating\":null,\"reviews_count\":null,\"vendor_name\":\"WooCommerce\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/woocommerce\\/\",\"icon\":null},{\"title\":\"Klarna Payments\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2018\\/01\\/Partner_marketing_Klarna_Payments_Pink.png\",\"excerpt\":\"With Klarna Payments\\u00a0you can choose the payment that you want, Pay Now, Pay Later or Slice It. No credit card numbers, no passwords, no worries.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/klarna-payments\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"https:\\/\\/demo.krokedil.se\\/klarnapayments\\/\",\"price\":\"&#36;0.00\",\"hash\":\"a19c689325bc8ea63c620765dd54b33a\",\"slug\":\"klarna-payments-for-woocommerce\",\"id\":2754217,\"rating\":null,\"reviews_count\":null,\"vendor_name\":\"Krokedil\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/krokedil\\/\",\"icon\":null},{\"title\":\"First Data\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2012\\/02\\/Thumbnail-FirstData-updated.png\",\"excerpt\":\"Accept payment with First Data using the Payeezy Gateway, Payeezy, or legacy Global Gateway payment gateways.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/firstdata\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"eb3e32663ec0810592eaf0d097796230\",\"slug\":\"woocommerce-gateway-firstdata\",\"id\":18645,\"rating\":null,\"reviews_count\":null,\"vendor_name\":\"SkyVerge\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/skyverge\\/\",\"icon\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/woocommerce_uploads\\/2015\\/06\\/skyverge-wc-icon-b2vhw6.png\"},{\"title\":\"WooCommerce Order Status Control\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2014\\/06\\/Thumbnail-Order-Status-Control-updated.png\",\"excerpt\":\"Use this extension to automatically change the order status to \\\"completed\\\" after successful payment.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-order-status-control\\/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;29.00\",\"hash\":\"32400e509c7c36dcc1cd368e8267d981\",\"slug\":\"woocommerce-order-status-control\",\"id\":439037,\"rating\":null,\"reviews_count\":null,\"vendor_name\":\"SkyVerge\",\"vendor_url\":\"https:\\/\\/woocommerce.com\\/vendor\\/skyverge\\/\",\"icon\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/woocommerce_uploads\\/2015\\/06\\/skyverge-wc-icon-b2vhw6.png\"}]}\";s:7:\"headers\";O:25:\"Requests_Response_Headers\":1:{s:7:\"\0*\0data\";a:19:{s:6:\"server\";a:1:{i:0;s:5:\"nginx\";}s:4:\"date\";a:1:{i:0;s:29:\"Wed, 08 Dec 2021 11:51:08 GMT\";}s:12:\"content-type\";a:1:{i:0;s:31:\"application/json; charset=UTF-8\";}s:14:\"content-length\";a:1:{i:0;s:5:\"12346\";}s:12:\"x-robots-tag\";a:1:{i:0;s:7:\"noindex\";}s:4:\"link\";a:1:{i:0;s:60:\"<https://woocommerce.com/wp-json/>; rel=\"https://api.w.org/\"\";}s:22:\"x-content-type-options\";a:1:{i:0;s:7:\"nosniff\";}s:29:\"access-control-expose-headers\";a:1:{i:0;s:33:\"X-WP-Total, X-WP-TotalPages, Link\";}s:28:\"access-control-allow-headers\";a:1:{i:0;s:73:\"Authorization, X-WP-Nonce, Content-Disposition, Content-MD5, Content-Type\";}s:13:\"x-wccom-cache\";a:1:{i:0;s:3:\"HIT\";}s:13:\"cache-control\";a:1:{i:0;s:10:\"max-age=60\";}s:5:\"allow\";a:1:{i:0;s:3:\"GET\";}s:4:\"x-rq\";a:1:{i:0;s:13:\"vie2 0 4 9980\";}s:16:\"content-encoding\";a:1:{i:0;s:4:\"gzip\";}s:3:\"age\";a:1:{i:0;s:2:\"41\";}s:7:\"x-cache\";a:1:{i:0;s:3:\"hit\";}s:4:\"vary\";a:1:{i:0;s:23:\"Accept-Encoding, Origin\";}s:13:\"accept-ranges\";a:1:{i:0;s:5:\"bytes\";}s:25:\"strict-transport-security\";a:1:{i:0;s:16:\"max-age=31536000\";}}}s:11:\"status_code\";i:200;s:16:\"protocol_version\";d:1.1;s:7:\"success\";b:1;s:9:\"redirects\";i:0;s:3:\"url\";s:59:\"https://woocommerce.com/wp-json/wccom-extensions/1.0/search\";s:7:\"history\";a:0:{}s:7:\"cookies\";O:19:\"Requests_Cookie_Jar\":1:{s:10:\"\0*\0cookies\";a:0:{}}}s:11:\"\0*\0filename\";N;s:4:\"data\";N;s:7:\"headers\";N;s:6:\"status\";N;}}', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1805, '_transient_timeout_acf_plugin_updates', '1639153802', 'no'),
(1806, '_transient_acf_plugin_updates', 'a:4:{s:7:\"plugins\";a:1:{s:34:\"advanced-custom-fields-pro/acf.php\";a:8:{s:4:\"slug\";s:26:\"advanced-custom-fields-pro\";s:6:\"plugin\";s:34:\"advanced-custom-fields-pro/acf.php\";s:11:\"new_version\";s:6:\"5.11.4\";s:3:\"url\";s:36:\"https://www.advancedcustomfields.com\";s:6:\"tested\";s:5:\"5.8.1\";s:7:\"package\";s:0:\"\";s:5:\"icons\";a:1:{s:7:\"default\";s:63:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png\";}s:7:\"banners\";a:2:{s:3:\"low\";s:77:\"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=1729102\";s:4:\"high\";s:78:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=1729099\";}}}s:10:\"expiration\";i:172800;s:6:\"status\";i:1;s:7:\"checked\";a:1:{s:34:\"advanced-custom-fields-pro/acf.php\";s:5:\"5.8.1\";}}', 'no'),
(1809, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1638981004;s:8:\"response\";a:1:{s:34:\"advanced-custom-fields-pro/acf.php\";O:8:\"stdClass\":8:{s:4:\"slug\";s:26:\"advanced-custom-fields-pro\";s:6:\"plugin\";s:34:\"advanced-custom-fields-pro/acf.php\";s:11:\"new_version\";s:6:\"5.11.4\";s:3:\"url\";s:36:\"https://www.advancedcustomfields.com\";s:6:\"tested\";s:5:\"5.8.1\";s:7:\"package\";s:0:\"\";s:5:\"icons\";a:1:{s:7:\"default\";s:63:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png\";}s:7:\"banners\";a:2:{s:3:\"low\";s:77:\"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=1729102\";s:4:\"high\";s:78:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=1729099\";}}}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:4:{s:75:\"auto-cart-update-on-quantity-change/auto-cart-update-on-quantity-change.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:49:\"w.org/plugins/auto-cart-update-on-quantity-change\";s:4:\"slug\";s:35:\"auto-cart-update-on-quantity-change\";s:6:\"plugin\";s:75:\"auto-cart-update-on-quantity-change/auto-cart-update-on-quantity-change.php\";s:11:\"new_version\";s:3:\"1.0\";s:3:\"url\";s:66:\"https://wordpress.org/plugins/auto-cart-update-on-quantity-change/\";s:7:\"package\";s:82:\"https://downloads.wordpress.org/plugin/auto-cart-update-on-quantity-change.1.0.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:88:\"https://ps.w.org/auto-cart-update-on-quantity-change/assets/icon-256x256.gif?rev=2341009\";s:2:\"1x\";s:88:\"https://ps.w.org/auto-cart-update-on-quantity-change/assets/icon-128x128.gif?rev=2341009\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:91:\"https://ps.w.org/auto-cart-update-on-quantity-change/assets/banner-1544x500.jpg?rev=2341009\";s:2:\"1x\";s:90:\"https://ps.w.org/auto-cart-update-on-quantity-change/assets/banner-772x250.png?rev=2341009\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"5.0\";}s:33:\"classic-editor/classic-editor.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:28:\"w.org/plugins/classic-editor\";s:4:\"slug\";s:14:\"classic-editor\";s:6:\"plugin\";s:33:\"classic-editor/classic-editor.php\";s:11:\"new_version\";s:5:\"1.6.2\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/classic-editor/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/plugin/classic-editor.1.6.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/classic-editor/assets/icon-256x256.png?rev=1998671\";s:2:\"1x\";s:67:\"https://ps.w.org/classic-editor/assets/icon-128x128.png?rev=1998671\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:70:\"https://ps.w.org/classic-editor/assets/banner-1544x500.png?rev=1998671\";s:2:\"1x\";s:69:\"https://ps.w.org/classic-editor/assets/banner-772x250.png?rev=1998676\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.9\";}s:36:\"contact-form-7/wp-contact-form-7.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:28:\"w.org/plugins/contact-form-7\";s:4:\"slug\";s:14:\"contact-form-7\";s:6:\"plugin\";s:36:\"contact-form-7/wp-contact-form-7.php\";s:11:\"new_version\";s:5:\"5.5.3\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/contact-form-7/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/plugin/contact-form-7.5.5.3.zip\";s:5:\"icons\";a:3:{s:2:\"2x\";s:67:\"https://ps.w.org/contact-form-7/assets/icon-256x256.png?rev=2279696\";s:2:\"1x\";s:59:\"https://ps.w.org/contact-form-7/assets/icon.svg?rev=2339255\";s:3:\"svg\";s:59:\"https://ps.w.org/contact-form-7/assets/icon.svg?rev=2339255\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:69:\"https://ps.w.org/contact-form-7/assets/banner-1544x500.png?rev=860901\";s:2:\"1x\";s:68:\"https://ps.w.org/contact-form-7/assets/banner-772x250.png?rev=880427\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"5.7\";}s:27:\"woocommerce/woocommerce.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:25:\"w.org/plugins/woocommerce\";s:4:\"slug\";s:11:\"woocommerce\";s:6:\"plugin\";s:27:\"woocommerce/woocommerce.php\";s:11:\"new_version\";s:5:\"5.9.0\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/woocommerce/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/woocommerce.5.9.0.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/woocommerce/assets/icon-256x256.png?rev=2366418\";s:2:\"1x\";s:64:\"https://ps.w.org/woocommerce/assets/icon-128x128.png?rev=2366418\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/woocommerce/assets/banner-1544x500.png?rev=2366418\";s:2:\"1x\";s:66:\"https://ps.w.org/woocommerce/assets/banner-772x250.png?rev=2366418\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"5.6\";}}s:7:\"checked\";a:5:{s:34:\"advanced-custom-fields-pro/acf.php\";s:5:\"5.8.1\";s:75:\"auto-cart-update-on-quantity-change/auto-cart-update-on-quantity-change.php\";s:3:\"1.0\";s:33:\"classic-editor/classic-editor.php\";s:5:\"1.6.2\";s:36:\"contact-form-7/wp-contact-form-7.php\";s:5:\"5.5.3\";s:27:\"woocommerce/woocommerce.php\";s:5:\"5.9.0\";}}', 'no'),
(1975, '_transient_wc_attribute_taxonomies', 'a:5:{i:0;O:8:\"stdClass\":6:{s:12:\"attribute_id\";s:1:\"1\";s:14:\"attribute_name\";s:5:\"brand\";s:15:\"attribute_label\";s:5:\"Brand\";s:14:\"attribute_type\";s:6:\"select\";s:17:\"attribute_orderby\";s:10:\"menu_order\";s:16:\"attribute_public\";s:1:\"0\";}i:1;O:8:\"stdClass\":6:{s:12:\"attribute_id\";s:1:\"4\";s:14:\"attribute_name\";s:5:\"color\";s:15:\"attribute_label\";s:5:\"Color\";s:14:\"attribute_type\";s:6:\"select\";s:17:\"attribute_orderby\";s:10:\"menu_order\";s:16:\"attribute_public\";s:1:\"0\";}i:2;O:8:\"stdClass\":6:{s:12:\"attribute_id\";s:1:\"2\";s:14:\"attribute_name\";s:5:\"model\";s:15:\"attribute_label\";s:5:\"Model\";s:14:\"attribute_type\";s:6:\"select\";s:17:\"attribute_orderby\";s:10:\"menu_order\";s:16:\"attribute_public\";s:1:\"0\";}i:3;O:8:\"stdClass\":6:{s:12:\"attribute_id\";s:1:\"5\";s:14:\"attribute_name\";s:6:\"series\";s:15:\"attribute_label\";s:6:\"Series\";s:14:\"attribute_type\";s:6:\"select\";s:17:\"attribute_orderby\";s:10:\"menu_order\";s:16:\"attribute_public\";s:1:\"0\";}i:4;O:8:\"stdClass\":6:{s:12:\"attribute_id\";s:1:\"3\";s:14:\"attribute_name\";s:5:\"style\";s:15:\"attribute_label\";s:5:\"Style\";s:14:\"attribute_type\";s:6:\"select\";s:17:\"attribute_orderby\";s:10:\"menu_order\";s:16:\"attribute_public\";s:1:\"0\";}}', 'yes'),
(1981, '_transient_timeout_wc_layered_nav_counts_pa_model', '1639077184', 'no'),
(1982, '_transient_wc_layered_nav_counts_pa_model', 'a:4:{i:0;b:0;s:32:\"63a7b0fb8c60693027ebfce997c0b373\";a:2:{i:25;i:1;i:28;i:1;}s:32:\"387695c4a5d964a64bb03c095e05e8c7\";a:1:{i:28;i:1;}s:32:\"17bf56a639deee0ea7f99200fa9cfd25\";a:1:{i:28;i:1;}}', 'no'),
(2009, 'product_cat_children', 'a:0:{}', 'yes'),
(2019, '_site_transient_timeout_theme_roots', '1638991434', 'no'),
(2020, '_site_transient_theme_roots', 'a:1:{s:12:\"shellholster\";s:7:\"/themes\";}', 'no'),
(2027, '_transient_timeout_wc_term_counts', '1641582126', 'no'),
(2028, '_transient_wc_term_counts', 'a:2:{i:30;s:1:\"1\";i:15;s:1:\"4\";}', 'no'),
(2029, '_transient_timeout_wc_layered_nav_counts_pa_brand', '1639077184', 'no'),
(2030, '_transient_wc_layered_nav_counts_pa_brand', 'a:4:{i:0;b:0;s:32:\"2181a842e9ce4a5da0da4b92f1090d1a\";a:3:{i:22;i:1;i:27;i:1;i:31;i:2;}s:32:\"8baccc18e24734e31219f644d24c6af4\";a:1:{i:27;i:1;}s:32:\"884812bd8493b31d49f87776a7cba370\";a:1:{i:27;i:1;}}', 'no'),
(2035, '_transient_timeout_wc_related_108', '1639076526', 'no'),
(2036, '_transient_wc_related_108', 'a:1:{s:51:\"limit=3&exclude_ids%5B0%5D=0&exclude_ids%5B1%5D=108\";a:3:{i:0;s:2:\"94\";i:1;s:2:\"95\";i:2;s:2:\"96\";}}', 'no'),
(2038, '_transient_timeout_wc_related_96', '1639076540', 'no'),
(2039, '_transient_wc_related_96', 'a:1:{s:50:\"limit=3&exclude_ids%5B0%5D=0&exclude_ids%5B1%5D=96\";a:3:{i:0;s:2:\"94\";i:1;s:2:\"95\";i:2;s:3:\"108\";}}', 'no');

-- --------------------------------------------------------

--
-- Структура таблиці `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп даних таблиці `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'page-templates/home.php'),
(2, 3, '_wp_page_template', 'default'),
(3, 5, '_wp_attached_file', 'woocommerce-placeholder.png'),
(4, 5, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1200;s:6:\"height\";i:1200;s:4:\"file\";s:27:\"woocommerce-placeholder.png\";s:5:\"sizes\";a:7:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:35:\"woocommerce-placeholder-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:35:\"woocommerce-placeholder-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:35:\"woocommerce-placeholder-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:35:\"woocommerce-placeholder-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:37:\"woocommerce-placeholder-1024x1024.png\";s:5:\"width\";i:1024;s:6:\"height\";i:1024;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:35:\"woocommerce-placeholder-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:35:\"woocommerce-placeholder-768x768.png\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(7, 2, '_edit_lock', '1638984798:1'),
(8, 2, '_edit_last', '1'),
(9, 13, '_form', '<label> Your name\n    [text* your-name] </label>\n\n<label> Your email\n    [email* your-email] </label>\n\n<label> Subject\n    [text* your-subject] </label>\n\n<label> Your message (optional)\n    [textarea your-message] </label>\n\n[submit \"Submit\"]'),
(10, 13, '_mail', 'a:8:{s:7:\"subject\";s:30:\"[_site_title] \"[your-subject]\"\";s:6:\"sender\";s:38:\"[_site_title] <wordpress@shellholster>\";s:4:\"body\";s:163:\"From: [your-name] <[your-email]>\nSubject: [your-subject]\n\nMessage Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on [_site_title] ([_site_url])\";s:9:\"recipient\";s:19:\"[_site_admin_email]\";s:18:\"additional_headers\";s:22:\"Reply-To: [your-email]\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";i:0;s:13:\"exclude_blank\";i:0;}'),
(11, 13, '_mail_2', 'a:9:{s:6:\"active\";b:0;s:7:\"subject\";s:30:\"[_site_title] \"[your-subject]\"\";s:6:\"sender\";s:38:\"[_site_title] <wordpress@shellholster>\";s:4:\"body\";s:105:\"Message Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on [_site_title] ([_site_url])\";s:9:\"recipient\";s:12:\"[your-email]\";s:18:\"additional_headers\";s:29:\"Reply-To: [_site_admin_email]\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";i:0;s:13:\"exclude_blank\";i:0;}'),
(12, 13, '_messages', 'a:12:{s:12:\"mail_sent_ok\";s:45:\"Thank you for your message. It has been sent.\";s:12:\"mail_sent_ng\";s:71:\"There was an error trying to send your message. Please try again later.\";s:16:\"validation_error\";s:61:\"One or more fields have an error. Please check and try again.\";s:4:\"spam\";s:71:\"There was an error trying to send your message. Please try again later.\";s:12:\"accept_terms\";s:69:\"You must accept the terms and conditions before sending your message.\";s:16:\"invalid_required\";s:22:\"The field is required.\";s:16:\"invalid_too_long\";s:22:\"The field is too long.\";s:17:\"invalid_too_short\";s:23:\"The field is too short.\";s:13:\"upload_failed\";s:46:\"There was an unknown error uploading the file.\";s:24:\"upload_file_type_invalid\";s:49:\"You are not allowed to upload files of this type.\";s:21:\"upload_file_too_large\";s:20:\"The file is too big.\";s:23:\"upload_failed_php_error\";s:38:\"There was an error uploading the file.\";}'),
(13, 13, '_additional_settings', ''),
(14, 13, '_locale', 'en_US'),
(51, 18, '_menu_item_type', 'post_type'),
(52, 18, '_menu_item_menu_item_parent', '0'),
(53, 18, '_menu_item_object_id', '6'),
(54, 18, '_menu_item_object', 'page'),
(55, 18, '_menu_item_target', ''),
(56, 18, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(57, 18, '_menu_item_xfn', ''),
(58, 18, '_menu_item_url', ''),
(60, 19, '_wp_attached_file', '2021/12/SHLogo.png'),
(61, 19, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:637;s:6:\"height\";i:386;s:4:\"file\";s:18:\"2021/12/SHLogo.png\";s:5:\"sizes\";a:8:{s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"SHLogo-300x182.png\";s:5:\"width\";i:300;s:6:\"height\";i:182;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"SHLogo-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:18:\"SHLogo-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:18:\"SHLogo-300x182.png\";s:5:\"width\";i:300;s:6:\"height\";i:182;s:9:\"mime-type\";s:9:\"image/png\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:18:\"SHLogo-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:18:\"SHLogo-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:18:\"SHLogo-300x182.png\";s:5:\"width\";i:300;s:6:\"height\";i:182;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:18:\"SHLogo-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(62, 20, '_wp_trash_meta_status', 'publish'),
(63, 20, '_wp_trash_meta_time', '1638789573'),
(64, 21, '_wp_trash_meta_status', 'publish'),
(65, 21, '_wp_trash_meta_time', '1638789614'),
(66, 22, '_edit_last', '1'),
(67, 22, '_edit_lock', '1638985718:1'),
(72, 2, 'hero_slider_0_image', '35'),
(73, 2, '_hero_slider_0_image', 'field_61adf3c451df5'),
(74, 2, 'hero_slider_1_image', '34'),
(75, 2, '_hero_slider_1_image', 'field_61adf3c451df5'),
(76, 2, 'hero_slider', '2'),
(77, 2, '_hero_slider', 'field_61adf3a651df4'),
(84, 2, 'hero_slider_0_link', 'a:3:{s:5:\"title\";s:4:\"Shop\";s:3:\"url\";s:25:\"http://shellholster/shop/\";s:6:\"target\";s:0:\"\";}'),
(85, 2, '_hero_slider_0_link', 'field_61adf6d0aeb08'),
(86, 2, 'hero_slider_1_link', ''),
(87, 2, '_hero_slider_1_link', 'field_61adf6d0aeb08'),
(108, 34, '_wp_attached_file', '2021/12/Пиксель-баннер-SH.webp'),
(109, 34, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:578;s:4:\"file\";s:43:\"2021/12/Пиксель-баннер-SH.webp\";s:5:\"sizes\";a:11:{s:6:\"medium\";a:4:{s:4:\"file\";s:42:\"Пиксель-баннер-SH-300x90.webp\";s:5:\"width\";i:300;s:6:\"height\";i:90;s:9:\"mime-type\";s:10:\"image/webp\";}s:5:\"large\";a:4:{s:4:\"file\";s:44:\"Пиксель-баннер-SH-1024x308.webp\";s:5:\"width\";i:1024;s:6:\"height\";i:308;s:9:\"mime-type\";s:10:\"image/webp\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:43:\"Пиксель-баннер-SH-150x150.webp\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/webp\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:43:\"Пиксель-баннер-SH-768x231.webp\";s:5:\"width\";i:768;s:6:\"height\";i:231;s:9:\"mime-type\";s:10:\"image/webp\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:44:\"Пиксель-баннер-SH-1536x462.webp\";s:5:\"width\";i:1536;s:6:\"height\";i:462;s:9:\"mime-type\";s:10:\"image/webp\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:43:\"Пиксель-баннер-SH-150x150.webp\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/webp\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:42:\"Пиксель-баннер-SH-300x90.webp\";s:5:\"width\";i:300;s:6:\"height\";i:90;s:9:\"mime-type\";s:10:\"image/webp\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:43:\"Пиксель-баннер-SH-100x100.webp\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/webp\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:43:\"Пиксель-баннер-SH-150x150.webp\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/webp\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:42:\"Пиксель-баннер-SH-300x90.webp\";s:5:\"width\";i:300;s:6:\"height\";i:90;s:9:\"mime-type\";s:10:\"image/webp\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:43:\"Пиксель-баннер-SH-100x100.webp\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/webp\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(110, 35, '_wp_attached_file', '2021/12/main-slide-1-min.webp'),
(111, 35, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:704;s:4:\"file\";s:29:\"2021/12/main-slide-1-min.webp\";s:5:\"sizes\";a:11:{s:6:\"medium\";a:4:{s:4:\"file\";s:29:\"main-slide-1-min-300x110.webp\";s:5:\"width\";i:300;s:6:\"height\";i:110;s:9:\"mime-type\";s:10:\"image/webp\";}s:5:\"large\";a:4:{s:4:\"file\";s:30:\"main-slide-1-min-1024x375.webp\";s:5:\"width\";i:1024;s:6:\"height\";i:375;s:9:\"mime-type\";s:10:\"image/webp\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:29:\"main-slide-1-min-150x150.webp\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/webp\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:29:\"main-slide-1-min-768x282.webp\";s:5:\"width\";i:768;s:6:\"height\";i:282;s:9:\"mime-type\";s:10:\"image/webp\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:30:\"main-slide-1-min-1536x563.webp\";s:5:\"width\";i:1536;s:6:\"height\";i:563;s:9:\"mime-type\";s:10:\"image/webp\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:29:\"main-slide-1-min-150x150.webp\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/webp\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:29:\"main-slide-1-min-300x110.webp\";s:5:\"width\";i:300;s:6:\"height\";i:110;s:9:\"mime-type\";s:10:\"image/webp\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:29:\"main-slide-1-min-100x100.webp\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/webp\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:29:\"main-slide-1-min-150x150.webp\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/webp\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:29:\"main-slide-1-min-300x110.webp\";s:5:\"width\";i:300;s:6:\"height\";i:110;s:9:\"mime-type\";s:10:\"image/webp\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:29:\"main-slide-1-min-100x100.webp\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/webp\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(122, 37, '_menu_item_type', 'post_type'),
(123, 37, '_menu_item_menu_item_parent', '0'),
(124, 37, '_menu_item_object_id', '9'),
(125, 37, '_menu_item_object', 'page'),
(126, 37, '_menu_item_target', ''),
(127, 37, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(128, 37, '_menu_item_xfn', ''),
(129, 37, '_menu_item_url', ''),
(131, 38, '_menu_item_type', 'post_type'),
(132, 38, '_menu_item_menu_item_parent', '0'),
(133, 38, '_menu_item_object_id', '6'),
(134, 38, '_menu_item_object', 'page'),
(135, 38, '_menu_item_target', ''),
(136, 38, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(137, 38, '_menu_item_xfn', ''),
(138, 38, '_menu_item_url', ''),
(140, 39, '_menu_item_type', 'post_type'),
(141, 39, '_menu_item_menu_item_parent', '0'),
(142, 39, '_menu_item_object_id', '7'),
(143, 39, '_menu_item_object', 'page'),
(144, 39, '_menu_item_target', ''),
(145, 39, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(146, 39, '_menu_item_xfn', ''),
(147, 39, '_menu_item_url', ''),
(149, 40, '_edit_last', '1'),
(150, 40, '_edit_lock', '1638798701:1'),
(151, 40, '_wp_page_template', 'page-templates/about.php'),
(152, 42, '_menu_item_type', 'post_type'),
(153, 42, '_menu_item_menu_item_parent', '0'),
(154, 42, '_menu_item_object_id', '40'),
(155, 42, '_menu_item_object', 'page'),
(156, 42, '_menu_item_target', ''),
(157, 42, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(158, 42, '_menu_item_xfn', ''),
(159, 42, '_menu_item_url', ''),
(161, 44, '_edit_last', '1'),
(162, 44, '_edit_lock', '1638798618:1'),
(163, 44, '_wp_page_template', 'page-templates/faq.php'),
(164, 46, '_edit_last', '1'),
(165, 46, '_edit_lock', '1638884323:1'),
(166, 46, '_wp_page_template', 'page-templates/contacts.php'),
(167, 48, '_menu_item_type', 'post_type'),
(168, 48, '_menu_item_menu_item_parent', '0'),
(169, 48, '_menu_item_object_id', '46'),
(170, 48, '_menu_item_object', 'page'),
(171, 48, '_menu_item_target', ''),
(172, 48, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(173, 48, '_menu_item_xfn', ''),
(174, 48, '_menu_item_url', ''),
(176, 49, '_menu_item_type', 'post_type'),
(177, 49, '_menu_item_menu_item_parent', '0'),
(178, 49, '_menu_item_object_id', '44'),
(179, 49, '_menu_item_object', 'page'),
(180, 49, '_menu_item_target', ''),
(181, 49, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(182, 49, '_menu_item_xfn', ''),
(183, 49, '_menu_item_url', ''),
(191, 3, '_edit_lock', '1638798551:1'),
(192, 3, '_edit_last', '1'),
(193, 54, '_menu_item_type', 'post_type'),
(194, 54, '_menu_item_menu_item_parent', '0'),
(195, 54, '_menu_item_object_id', '3'),
(196, 54, '_menu_item_object', 'page'),
(197, 54, '_menu_item_target', ''),
(198, 54, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(199, 54, '_menu_item_xfn', ''),
(200, 54, '_menu_item_url', ''),
(202, 57, '_edit_last', '1'),
(203, 57, '_edit_lock', '1638798326:1'),
(204, 44, 'faq-list_0_question', 'How can I order?'),
(205, 44, '_faq-list_0_question', 'field_61ae1260f47e8'),
(206, 44, 'faq-list_0_answer', 'You can order easily using our online platform. When you find a product you need, you can add it to cart, fill in the form and go through the ordering process. After the order is ready, you will receive order summary to your email. Order summary will also be stored to your account.'),
(207, 44, '_faq-list_0_answer', 'field_61ae126af47e9'),
(208, 44, 'faq-list_1_question', 'Can i pay for my order by credit card?'),
(209, 44, '_faq-list_1_question', 'field_61ae1260f47e8'),
(210, 44, 'faq-list_1_answer', 'Yes, you can pay for your order by a credit card using such payment systems as PayPal and Stripe. You can pay for your order using the system that is most convenient for you to use.'),
(211, 44, '_faq-list_1_answer', 'field_61ae126af47e9'),
(212, 44, 'faq-list', '2'),
(213, 44, '_faq-list', 'field_61ae123ef47e7'),
(214, 62, 'faq-list_0_question', 'How can I order?'),
(215, 62, '_faq-list_0_question', 'field_61ae1260f47e8'),
(216, 62, 'faq-list_0_answer', 'You can order easily using our online platform. When you find a product you need, you can add it to cart, fill in the form and go through the ordering process. After the order is ready, you will receive order summary to your email. Order summary will also be stored to your account.'),
(217, 62, '_faq-list_0_answer', 'field_61ae126af47e9'),
(218, 62, 'faq-list_1_question', 'Can i pay for my order by credit card?'),
(219, 62, '_faq-list_1_question', 'field_61ae1260f47e8'),
(220, 62, 'faq-list_1_answer', 'Yes, you can pay for your order by a credit card using such payment systems as PayPal and Stripe. You can pay for your order using the system that is most convenient for you to use.'),
(221, 62, '_faq-list_1_answer', 'field_61ae126af47e9'),
(222, 62, 'faq-list', '2'),
(223, 62, '_faq-list', 'field_61ae123ef47e7'),
(224, 64, '_edit_lock', '1638798696:1'),
(225, 64, '_edit_last', '1'),
(226, 3, 'hero_subtitle', 'Check Out Our Privacy Policy'),
(227, 3, '_hero_subtitle', 'field_61ae149273b33'),
(228, 69, 'hero_subtitle', 'Check Out Our Privacy Policy'),
(229, 69, '_hero_subtitle', 'field_61ae149273b33'),
(230, 44, 'hero_subtitle', 'Take a look at the most frequently asked questions. You may find here some useful information.'),
(231, 44, '_hero_subtitle', 'field_61ae149273b33'),
(232, 70, 'faq-list_0_question', 'How can I order?'),
(233, 70, '_faq-list_0_question', 'field_61ae1260f47e8'),
(234, 70, 'faq-list_0_answer', 'You can order easily using our online platform. When you find a product you need, you can add it to cart, fill in the form and go through the ordering process. After the order is ready, you will receive order summary to your email. Order summary will also be stored to your account.'),
(235, 70, '_faq-list_0_answer', 'field_61ae126af47e9'),
(236, 70, 'faq-list_1_question', 'Can i pay for my order by credit card?'),
(237, 70, '_faq-list_1_question', 'field_61ae1260f47e8'),
(238, 70, 'faq-list_1_answer', 'Yes, you can pay for your order by a credit card using such payment systems as PayPal and Stripe. You can pay for your order using the system that is most convenient for you to use.'),
(239, 70, '_faq-list_1_answer', 'field_61ae126af47e9'),
(240, 70, 'faq-list', '2'),
(241, 70, '_faq-list', 'field_61ae123ef47e7'),
(242, 70, 'hero_subtitle', 'Take a look at the most frequently asked questions. You may find here some useful information.'),
(243, 70, '_hero_subtitle', 'field_61ae149273b33'),
(244, 46, 'hero_subtitle', 'Get answers to all your questions! We will answer you as soon as we receive your message.'),
(245, 46, '_hero_subtitle', 'field_61ae149273b33'),
(246, 71, 'hero_subtitle', 'Get answers to all your questions! We will answer you as soon as we receive your message.'),
(247, 71, '_hero_subtitle', 'field_61ae149273b33'),
(248, 40, 'hero_subtitle', 'Purchase Our Featured Products'),
(249, 40, '_hero_subtitle', 'field_61ae149273b33'),
(250, 72, 'hero_subtitle', 'Purchase Our Featured Products'),
(251, 72, '_hero_subtitle', 'field_61ae149273b33'),
(252, 74, '_edit_lock', '1638805021:1'),
(253, 74, '_edit_last', '1'),
(254, 6, '_edit_lock', '1638893825:1'),
(255, 7, '_edit_lock', '1638806041:1'),
(256, 94, '_edit_last', '1'),
(257, 94, '_edit_lock', '1638881267:1'),
(258, 94, '_regular_price', '19.99'),
(259, 94, 'total_sales', '0'),
(260, 94, '_tax_status', 'taxable'),
(261, 94, '_tax_class', ''),
(262, 94, '_manage_stock', 'no'),
(263, 94, '_backorders', 'no'),
(264, 94, '_sold_individually', 'no'),
(265, 94, '_virtual', 'no'),
(266, 94, '_downloadable', 'no'),
(267, 94, '_download_limit', '-1'),
(268, 94, '_download_expiry', '-1'),
(269, 94, '_stock', NULL),
(270, 94, '_stock_status', 'instock'),
(271, 94, '_wc_average_rating', '4.00'),
(272, 94, '_wc_review_count', '1'),
(273, 94, '_product_version', '5.9.0'),
(274, 94, '_price', '19.99'),
(275, 95, '_edit_last', '1'),
(276, 95, '_edit_lock', '1638987981:1'),
(277, 95, '_regular_price', '13.99'),
(278, 95, 'total_sales', '0'),
(279, 95, '_tax_status', 'taxable'),
(280, 95, '_tax_class', ''),
(281, 95, '_manage_stock', 'no'),
(282, 95, '_backorders', 'no'),
(283, 95, '_sold_individually', 'no'),
(284, 95, '_virtual', 'no'),
(285, 95, '_downloadable', 'no'),
(286, 95, '_download_limit', '-1'),
(287, 95, '_download_expiry', '-1'),
(288, 95, '_stock', NULL),
(289, 95, '_stock_status', 'instock'),
(290, 95, '_wc_average_rating', '0'),
(291, 95, '_wc_review_count', '0'),
(292, 95, '_product_version', '5.9.0'),
(293, 95, '_price', '13.99'),
(294, 96, '_edit_last', '1'),
(295, 96, '_edit_lock', '1638989978:1'),
(296, 96, '_regular_price', '13.99'),
(297, 96, 'total_sales', '0'),
(298, 96, '_tax_status', 'taxable'),
(299, 96, '_tax_class', ''),
(300, 96, '_manage_stock', 'no'),
(301, 96, '_backorders', 'no'),
(302, 96, '_sold_individually', 'no'),
(303, 96, '_virtual', 'no'),
(304, 96, '_downloadable', 'no'),
(305, 96, '_download_limit', '-1'),
(306, 96, '_download_expiry', '-1'),
(307, 96, '_stock', NULL),
(308, 96, '_stock_status', 'onbackorder'),
(309, 96, '_wc_average_rating', '0'),
(310, 96, '_wc_review_count', '0'),
(311, 96, '_product_version', '5.9.0'),
(312, 96, '_price', '13.99'),
(313, 96, '_product_attributes', 'a:5:{s:8:\"pa_brand\";a:6:{s:4:\"name\";s:8:\"pa_brand\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:0;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:1;}s:8:\"pa_model\";a:6:{s:4:\"name\";s:8:\"pa_model\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:1;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:1;}s:8:\"pa_style\";a:6:{s:4:\"name\";s:8:\"pa_style\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:2;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:1;}s:8:\"pa_color\";a:6:{s:4:\"name\";s:8:\"pa_color\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:3;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:1;}s:9:\"pa_series\";a:6:{s:4:\"name\";s:9:\"pa_series\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:4;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:1;}}'),
(314, 94, '_product_attributes', 'a:5:{s:8:\"pa_brand\";a:6:{s:4:\"name\";s:8:\"pa_brand\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:0;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:1;}s:8:\"pa_model\";a:6:{s:4:\"name\";s:8:\"pa_model\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:1;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:1;}s:8:\"pa_style\";a:6:{s:4:\"name\";s:8:\"pa_style\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:2;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:1;}s:8:\"pa_color\";a:6:{s:4:\"name\";s:8:\"pa_color\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:3;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:1;}s:9:\"pa_series\";a:6:{s:4:\"name\";s:9:\"pa_series\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:5;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:1;}}'),
(352, 6, '_edit_last', '1'),
(353, 6, 'hero_subtitle', 'Purchase Our Featured Products'),
(354, 6, '_hero_subtitle', 'field_61ae149273b33'),
(355, 101, 'hero_subtitle', 'Purchase Our Featured Products'),
(356, 101, '_hero_subtitle', 'field_61ae149273b33'),
(357, 102, '_menu_item_type', 'custom'),
(358, 102, '_menu_item_menu_item_parent', '0'),
(359, 102, '_menu_item_object_id', '102'),
(360, 102, '_menu_item_object', 'custom'),
(361, 102, '_menu_item_target', ''),
(362, 102, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(363, 102, '_menu_item_xfn', ''),
(364, 102, '_menu_item_url', '#'),
(366, 18, '_wp_old_date', '2021-12-06'),
(370, 94, '_wc_rating_count', 'a:1:{i:4;i:1;}'),
(374, 104, '_menu_item_type', 'post_type'),
(375, 104, '_menu_item_menu_item_parent', '0'),
(376, 104, '_menu_item_object_id', '46'),
(377, 104, '_menu_item_object', 'page'),
(378, 104, '_menu_item_target', ''),
(379, 104, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(380, 104, '_menu_item_xfn', ''),
(381, 104, '_menu_item_url', ''),
(383, 105, '_menu_item_type', 'post_type'),
(384, 105, '_menu_item_menu_item_parent', '0'),
(385, 105, '_menu_item_object_id', '44'),
(386, 105, '_menu_item_object', 'page'),
(387, 105, '_menu_item_target', ''),
(388, 105, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(389, 105, '_menu_item_xfn', ''),
(390, 105, '_menu_item_url', ''),
(392, 106, '_menu_item_type', 'post_type'),
(393, 106, '_menu_item_menu_item_parent', '0'),
(394, 106, '_menu_item_object_id', '40'),
(395, 106, '_menu_item_object', 'page'),
(396, 106, '_menu_item_target', ''),
(397, 106, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(398, 106, '_menu_item_xfn', ''),
(399, 106, '_menu_item_url', ''),
(410, 108, '_regular_price', '19.99'),
(411, 108, 'total_sales', '0'),
(412, 108, '_tax_status', 'taxable'),
(413, 108, '_tax_class', ''),
(414, 108, '_manage_stock', 'no'),
(415, 108, '_backorders', 'no'),
(416, 108, '_sold_individually', 'no'),
(417, 108, '_virtual', 'no'),
(418, 108, '_downloadable', 'no'),
(419, 108, '_download_limit', '-1'),
(420, 108, '_download_expiry', '-1'),
(421, 108, '_stock', NULL),
(422, 108, '_stock_status', 'outofstock'),
(423, 108, '_wc_average_rating', '0'),
(424, 108, '_wc_review_count', '0'),
(425, 108, '_product_version', '5.9.0'),
(426, 108, '_price', '13.99'),
(427, 108, '_edit_lock', '1638989873:1'),
(428, 108, '_edit_last', '1'),
(429, 109, '_wp_trash_meta_status', 'publish'),
(430, 109, '_wp_trash_meta_time', '1638885511'),
(431, 110, '_edit_last', '1'),
(432, 110, '_edit_lock', '1638989462:1'),
(433, 112, 'hero_subtitle', 'Purchase Our Featured Products'),
(434, 112, '_hero_subtitle', 'field_61ae149273b33'),
(435, 113, 'hero_subtitle', 'Purchase Our Featured Products'),
(436, 113, '_hero_subtitle', 'field_61ae149273b33'),
(437, 115, '_wp_trash_meta_status', 'publish'),
(438, 115, '_wp_trash_meta_time', '1638888015'),
(439, 116, '_wp_trash_meta_status', 'publish'),
(440, 116, '_wp_trash_meta_time', '1638888188'),
(441, 117, '_wp_trash_meta_status', 'publish'),
(442, 117, '_wp_trash_meta_time', '1638888426'),
(443, 2, 'cases_title', 'Use Only Best Phones Cases'),
(444, 2, '_cases_title', 'field_61af89d008910'),
(445, 2, 'cases_text', 'The Shell Holster Combo it is best case for cell phone. It is durable, sturdy. It provides high protection and improves the phone usability. It defends your gadget from dirt, dust, moisture and scratches thanks to our rubberized holster. Using new technologies makes it possible to increase the safety of the device in case of a fall. Using a 180-degree rotatable holster with a ratchet clip will provide comfortable wearing, great fit and convenient positioning. The highest quality of rubberized texture provides a secure grip on your phone. With the built-in kickstand, you can place your mobile phone horizontally or vertically for video calls or watching multimedia. All holes are fully compatible with buttons, sensors and cameras. Supports wireless charging. Based on all the characteristics, our holster can stand on a par with the best phone case in the world.'),
(446, 2, '_cases_text', 'field_61af8a0e08911'),
(447, 2, 'cases_button', 'a:3:{s:5:\"title\";s:9:\"Read more\";s:3:\"url\";s:6:\"/shop/\";s:6:\"target\";s:0:\"\";}'),
(448, 2, '_cases_button', 'field_61af8a2808912'),
(449, 2, 'series_suptitle', 'CASE SERIES'),
(450, 2, '_series_suptitle', 'field_61af8a7808914'),
(451, 2, 'series_title', 'Choose Your Functionality.'),
(452, 2, '_series_title', 'field_61af8a5608913'),
(453, 2, 'series_list', '4'),
(454, 2, '_series_list', 'field_61af8abe08915'),
(455, 2, 'design_suptitle', 'FUNCTIONAL DESIGN'),
(456, 2, '_design_suptitle', 'field_61af8b340891b'),
(457, 2, 'design_title', 'More Features. More Protection.'),
(458, 2, '_design_title', 'field_61af8b2e0891a'),
(459, 2, 'design_img', '163'),
(460, 2, '_design_img', 'field_61af8b520891c'),
(461, 2, 'portability_suptitle', 'easy portability'),
(462, 2, '_portability_suptitle', 'field_61af8ba10891f'),
(463, 2, 'portability_title', '180 Belt Clip.'),
(464, 2, '_portability_title', 'field_61af8ba408920'),
(465, 2, 'portability_img', '165'),
(466, 2, '_portability_img', 'field_61af8bcb08921'),
(467, 2, 'features_suptitle', 'Quality Cases'),
(468, 2, '_features_suptitle', 'field_61af8c1108923'),
(469, 2, 'features_title', 'Extra Features for Your Comfort'),
(470, 2, '_features_title', 'field_61af8c1408924'),
(471, 2, 'features_list', '4'),
(472, 2, '_features_list', 'field_61af8c2f08926'),
(473, 2, 'features_video', '188'),
(474, 2, '_features_video', 'field_61af8c7e0892a'),
(475, 2, 'types_suptitle', 'BUILT-IN FEATURES'),
(476, 2, '_types_suptitle', 'field_61af8ccc0892c'),
(477, 2, 'types_title', 'CHOOSE YOUR PHONE CASE'),
(478, 2, '_types_title', 'field_61af8cce0892d'),
(479, 2, 'brands_list', 'a:6:{i:0;s:3:\"181\";i:1;s:3:\"182\";i:2;s:3:\"183\";i:3;s:3:\"184\";i:4;s:3:\"185\";i:5;s:3:\"186\";}'),
(480, 2, '_brands_list', 'field_61af8de30892f'),
(481, 2, 'reviews_suptitle', 'CUSTOMER REVIEWS'),
(482, 2, '_reviews_suptitle', 'field_61af8e1308932'),
(483, 2, 'reviews_title', 'Reviews'),
(484, 2, '_reviews_title', 'field_61af8e1608933'),
(485, 2, 'about_title', 'ABOUT ROME TECH'),
(486, 2, '_about_title', 'field_61af943608935'),
(487, 2, 'about_text', '<b>Bringing People &amp; Technology Together</b>\r\n\r\nShellHolster.com thrives off of your 100% satisfaction. Our phone cases website wouldn’t exist today if our customers weren’t happy with the products and services we provide. Our skilled Customer Happiness reps are available to help with any questions about our products, billing, transactions, or even for a casual hello. We know how it feels to be frustrated with products that don’t fit, don’t look like they were described, or receiving broken items in the mail, which is why we offer a 100% satisfaction guarantee. Message Us for ANY reason and we’ll take care of the issue as fast as we can.'),
(488, 2, '_about_text', 'field_61af944e08937'),
(489, 2, 'about_button', 'a:3:{s:5:\"title\";s:9:\"Read more\";s:3:\"url\";s:26:\"http://shellholster/about/\";s:6:\"target\";s:0:\"\";}'),
(490, 2, '_about_button', 'field_61af946408938'),
(549, 155, '_wp_attached_file', '2021/12/ChooseYourFunctionalityDefender.png'),
(550, 155, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:409;s:6:\"height\";i:388;s:4:\"file\";s:43:\"2021/12/ChooseYourFunctionalityDefender.png\";s:5:\"sizes\";a:8:{s:6:\"medium\";a:4:{s:4:\"file\";s:43:\"ChooseYourFunctionalityDefender-300x285.png\";s:5:\"width\";i:300;s:6:\"height\";i:285;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:43:\"ChooseYourFunctionalityDefender-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:43:\"ChooseYourFunctionalityDefender-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:43:\"ChooseYourFunctionalityDefender-300x285.png\";s:5:\"width\";i:300;s:6:\"height\";i:285;s:9:\"mime-type\";s:9:\"image/png\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:43:\"ChooseYourFunctionalityDefender-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:43:\"ChooseYourFunctionalityDefender-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:43:\"ChooseYourFunctionalityDefender-300x285.png\";s:5:\"width\";i:300;s:6:\"height\";i:285;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:43:\"ChooseYourFunctionalityDefender-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(551, 156, '_wp_attached_file', '2021/12/Choose-Your-Functionality-Dual-Layer-2.png'),
(552, 156, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:396;s:6:\"height\";i:388;s:4:\"file\";s:50:\"2021/12/Choose-Your-Functionality-Dual-Layer-2.png\";s:5:\"sizes\";a:8:{s:6:\"medium\";a:4:{s:4:\"file\";s:50:\"Choose-Your-Functionality-Dual-Layer-2-300x294.png\";s:5:\"width\";i:300;s:6:\"height\";i:294;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:50:\"Choose-Your-Functionality-Dual-Layer-2-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:50:\"Choose-Your-Functionality-Dual-Layer-2-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:50:\"Choose-Your-Functionality-Dual-Layer-2-300x294.png\";s:5:\"width\";i:300;s:6:\"height\";i:294;s:9:\"mime-type\";s:9:\"image/png\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:50:\"Choose-Your-Functionality-Dual-Layer-2-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:50:\"Choose-Your-Functionality-Dual-Layer-2-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:50:\"Choose-Your-Functionality-Dual-Layer-2-300x294.png\";s:5:\"width\";i:300;s:6:\"height\";i:294;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:50:\"Choose-Your-Functionality-Dual-Layer-2-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(553, 157, '_wp_attached_file', '2021/12/Choose-Your-Functionality-Dual-Layer.png'),
(554, 157, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:430;s:6:\"height\";i:392;s:4:\"file\";s:48:\"2021/12/Choose-Your-Functionality-Dual-Layer.png\";s:5:\"sizes\";a:8:{s:6:\"medium\";a:4:{s:4:\"file\";s:48:\"Choose-Your-Functionality-Dual-Layer-300x273.png\";s:5:\"width\";i:300;s:6:\"height\";i:273;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:48:\"Choose-Your-Functionality-Dual-Layer-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:48:\"Choose-Your-Functionality-Dual-Layer-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:48:\"Choose-Your-Functionality-Dual-Layer-300x273.png\";s:5:\"width\";i:300;s:6:\"height\";i:273;s:9:\"mime-type\";s:9:\"image/png\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:48:\"Choose-Your-Functionality-Dual-Layer-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:48:\"Choose-Your-Functionality-Dual-Layer-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:48:\"Choose-Your-Functionality-Dual-Layer-300x273.png\";s:5:\"width\";i:300;s:6:\"height\";i:273;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:48:\"Choose-Your-Functionality-Dual-Layer-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(555, 158, '_wp_attached_file', '2021/12/Choose-Your-Functionality-Shell-Holster.png'),
(556, 158, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:426;s:6:\"height\";i:396;s:4:\"file\";s:51:\"2021/12/Choose-Your-Functionality-Shell-Holster.png\";s:5:\"sizes\";a:8:{s:6:\"medium\";a:4:{s:4:\"file\";s:51:\"Choose-Your-Functionality-Shell-Holster-300x279.png\";s:5:\"width\";i:300;s:6:\"height\";i:279;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:51:\"Choose-Your-Functionality-Shell-Holster-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:51:\"Choose-Your-Functionality-Shell-Holster-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:51:\"Choose-Your-Functionality-Shell-Holster-300x279.png\";s:5:\"width\";i:300;s:6:\"height\";i:279;s:9:\"mime-type\";s:9:\"image/png\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:51:\"Choose-Your-Functionality-Shell-Holster-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:51:\"Choose-Your-Functionality-Shell-Holster-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:51:\"Choose-Your-Functionality-Shell-Holster-300x279.png\";s:5:\"width\";i:300;s:6:\"height\";i:279;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:51:\"Choose-Your-Functionality-Shell-Holster-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(557, 2, 'series_list_0_title', 'Shell Holster'),
(558, 2, '_series_list_0_title', 'field_61af8aeb08918'),
(559, 2, 'series_list_0_image', '158'),
(560, 2, '_series_list_0_image', 'field_61af8abe08916'),
(561, 2, 'series_list_0_link', 'a:3:{s:5:\"title\";s:9:\"Read more\";s:3:\"url\";s:25:\"http://shellholster/shop/\";s:6:\"target\";s:0:\"\";}'),
(562, 2, '_series_list_0_link', 'field_61af8abe08917'),
(563, 2, 'series_list_1_title', 'Defender'),
(564, 2, '_series_list_1_title', 'field_61af8aeb08918'),
(565, 2, 'series_list_1_image', '155'),
(566, 2, '_series_list_1_image', 'field_61af8abe08916'),
(567, 2, 'series_list_1_link', 'a:3:{s:5:\"title\";s:9:\"Read more\";s:3:\"url\";s:6:\"/shop/\";s:6:\"target\";s:0:\"\";}'),
(568, 2, '_series_list_1_link', 'field_61af8abe08917'),
(569, 2, 'series_list_2_title', 'Dual Layer Card Holder'),
(570, 2, '_series_list_2_title', 'field_61af8aeb08918'),
(571, 2, 'series_list_2_image', '157'),
(572, 2, '_series_list_2_image', 'field_61af8abe08916'),
(573, 2, 'series_list_2_link', 'a:3:{s:5:\"title\";s:9:\"Read more\";s:3:\"url\";s:6:\"/shop/\";s:6:\"target\";s:0:\"\";}'),
(574, 2, '_series_list_2_link', 'field_61af8abe08917'),
(575, 2, 'series_list_3_title', 'Dual Layer Card Slot'),
(576, 2, '_series_list_3_title', 'field_61af8aeb08918'),
(577, 2, 'series_list_3_image', '156'),
(578, 2, '_series_list_3_image', 'field_61af8abe08916'),
(579, 2, 'series_list_3_link', 'a:3:{s:5:\"title\";s:9:\"Read more\";s:3:\"url\";s:6:\"/shop/\";s:6:\"target\";s:0:\"\";}'),
(580, 2, '_series_list_3_link', 'field_61af8abe08917'),
(663, 2, 'series_list_0_text', 'Offers slim and lightweight 360-degree protection with a multi-angle kickstand'),
(664, 2, '_series_list_0_text', 'field_61af9927be222'),
(665, 2, 'series_list_1_text', ''),
(666, 2, '_series_list_1_text', 'field_61af9927be222'),
(667, 2, 'series_list_2_text', ''),
(668, 2, '_series_list_2_text', 'field_61af9927be222'),
(669, 2, 'series_list_3_text', ''),
(670, 2, '_series_list_3_text', 'field_61af9927be222'),
(761, 163, '_wp_attached_file', '2021/12/MoreFeaturesMoreProtection.png'),
(762, 163, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1132;s:6:\"height\";i:872;s:4:\"file\";s:38:\"2021/12/MoreFeaturesMoreProtection.png\";s:5:\"sizes\";a:10:{s:6:\"medium\";a:4:{s:4:\"file\";s:38:\"MoreFeaturesMoreProtection-300x231.png\";s:5:\"width\";i:300;s:6:\"height\";i:231;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:39:\"MoreFeaturesMoreProtection-1024x789.png\";s:5:\"width\";i:1024;s:6:\"height\";i:789;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:38:\"MoreFeaturesMoreProtection-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:38:\"MoreFeaturesMoreProtection-768x592.png\";s:5:\"width\";i:768;s:6:\"height\";i:592;s:9:\"mime-type\";s:9:\"image/png\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:38:\"MoreFeaturesMoreProtection-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:38:\"MoreFeaturesMoreProtection-300x231.png\";s:5:\"width\";i:300;s:6:\"height\";i:231;s:9:\"mime-type\";s:9:\"image/png\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:38:\"MoreFeaturesMoreProtection-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:38:\"MoreFeaturesMoreProtection-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:38:\"MoreFeaturesMoreProtection-300x231.png\";s:5:\"width\";i:300;s:6:\"height\";i:231;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:38:\"MoreFeaturesMoreProtection-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(853, 165, '_wp_attached_file', '2021/12/180BeltClip.png'),
(854, 165, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1085;s:6:\"height\";i:568;s:4:\"file\";s:23:\"2021/12/180BeltClip.png\";s:5:\"sizes\";a:10:{s:6:\"medium\";a:4:{s:4:\"file\";s:23:\"180BeltClip-300x157.png\";s:5:\"width\";i:300;s:6:\"height\";i:157;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:24:\"180BeltClip-1024x536.png\";s:5:\"width\";i:1024;s:6:\"height\";i:536;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:23:\"180BeltClip-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:23:\"180BeltClip-768x402.png\";s:5:\"width\";i:768;s:6:\"height\";i:402;s:9:\"mime-type\";s:9:\"image/png\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:23:\"180BeltClip-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:23:\"180BeltClip-300x157.png\";s:5:\"width\";i:300;s:6:\"height\";i:157;s:9:\"mime-type\";s:9:\"image/png\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:23:\"180BeltClip-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:23:\"180BeltClip-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:23:\"180BeltClip-300x157.png\";s:5:\"width\";i:300;s:6:\"height\";i:157;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:23:\"180BeltClip-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(945, 167, '_wp_attached_file', '2021/12/ExtraFeaturesWirelessCharging.png'),
(946, 167, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:250;s:6:\"height\";i:249;s:4:\"file\";s:41:\"2021/12/ExtraFeaturesWirelessCharging.png\";s:5:\"sizes\";a:5:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:41:\"ExtraFeaturesWirelessCharging-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:41:\"ExtraFeaturesWirelessCharging-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:41:\"ExtraFeaturesWirelessCharging-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:41:\"ExtraFeaturesWirelessCharging-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:41:\"ExtraFeaturesWirelessCharging-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(947, 168, '_wp_attached_file', '2021/12/ExtraFeaturesEasilyRemovable.png'),
(948, 168, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:249;s:6:\"height\";i:249;s:4:\"file\";s:40:\"2021/12/ExtraFeaturesEasilyRemovable.png\";s:5:\"sizes\";a:5:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:40:\"ExtraFeaturesEasilyRemovable-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:40:\"ExtraFeaturesEasilyRemovable-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:40:\"ExtraFeaturesEasilyRemovable-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:40:\"ExtraFeaturesEasilyRemovable-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:40:\"ExtraFeaturesEasilyRemovable-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(949, 169, '_wp_attached_file', '2021/12/ExtraFeaturesHorizontaKickstand.png'),
(950, 169, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:249;s:6:\"height\";i:249;s:4:\"file\";s:43:\"2021/12/ExtraFeaturesHorizontaKickstand.png\";s:5:\"sizes\";a:5:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:43:\"ExtraFeaturesHorizontaKickstand-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:43:\"ExtraFeaturesHorizontaKickstand-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:43:\"ExtraFeaturesHorizontaKickstand-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:43:\"ExtraFeaturesHorizontaKickstand-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:43:\"ExtraFeaturesHorizontaKickstand-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(951, 170, '_wp_attached_file', '2021/12/ExtraFeaturesVerticalKickstand.png'),
(952, 170, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:248;s:6:\"height\";i:249;s:4:\"file\";s:42:\"2021/12/ExtraFeaturesVerticalKickstand.png\";s:5:\"sizes\";a:5:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:42:\"ExtraFeaturesVerticalKickstand-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:42:\"ExtraFeaturesVerticalKickstand-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:42:\"ExtraFeaturesVerticalKickstand-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:42:\"ExtraFeaturesVerticalKickstand-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:42:\"ExtraFeaturesVerticalKickstand-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(953, 2, 'features_list_0_title', 'Vertical Kickstand'),
(954, 2, '_features_list_0_title', 'field_61af8c2f08927'),
(955, 2, 'features_list_0_image', '170'),
(956, 2, '_features_list_0_image', 'field_61af8c2f08928'),
(957, 2, 'features_list_1_title', 'Easily Removable'),
(958, 2, '_features_list_1_title', 'field_61af8c2f08927'),
(959, 2, 'features_list_1_image', '169'),
(960, 2, '_features_list_1_image', 'field_61af8c2f08928'),
(961, 2, 'features_list_2_title', 'Wireless Charging'),
(962, 2, '_features_list_2_title', 'field_61af8c2f08927'),
(963, 2, 'features_list_2_image', '167'),
(964, 2, '_features_list_2_image', 'field_61af8c2f08928'),
(965, 2, 'features_list_3_title', 'Horizontal Kickstand'),
(966, 2, '_features_list_3_title', 'field_61af8c2f08927'),
(967, 2, 'features_list_3_image', '168'),
(968, 2, '_features_list_3_image', 'field_61af8c2f08928'),
(969, 171, 'hero_slider_0_image', '35'),
(970, 171, '_hero_slider_0_image', 'field_61adf3c451df5'),
(971, 171, 'hero_slider_1_image', '34'),
(972, 171, '_hero_slider_1_image', 'field_61adf3c451df5'),
(973, 171, 'hero_slider', '2'),
(974, 171, '_hero_slider', 'field_61adf3a651df4'),
(975, 171, 'hero_slider_0_link', 'a:3:{s:5:\"title\";s:4:\"Shop\";s:3:\"url\";s:25:\"http://shellholster/shop/\";s:6:\"target\";s:0:\"\";}'),
(976, 171, '_hero_slider_0_link', 'field_61adf6d0aeb08'),
(977, 171, 'hero_slider_1_link', ''),
(978, 171, '_hero_slider_1_link', 'field_61adf6d0aeb08'),
(979, 171, 'cases_title', 'Use Only Best Phones Cases'),
(980, 171, '_cases_title', 'field_61af89d008910'),
(981, 171, 'cases_text', 'The Shell Holster Combo it is best case for cell phone. It is durable, sturdy. It provides high protection and improves the phone usability. It defends your gadget from dirt, dust, moisture and scratches thanks to our rubberized holster. Using new technologies makes it possible to increase the safety of the device in case of a fall. Using a 180-degree rotatable holster with a ratchet clip will provide comfortable wearing, great fit and convenient positioning. The highest quality of rubberized texture provides a secure grip on your phone. With the built-in kickstand, you can place your mobile phone horizontally or vertically for video calls or watching multimedia. All holes are fully compatible with buttons, sensors and cameras. Supports wireless charging. Based on all the characteristics, our holster can stand on a par with the best phone case in the world.'),
(982, 171, '_cases_text', 'field_61af8a0e08911'),
(983, 171, 'cases_button', 'a:3:{s:5:\"title\";s:9:\"Read more\";s:3:\"url\";s:6:\"/shop/\";s:6:\"target\";s:0:\"\";}'),
(984, 171, '_cases_button', 'field_61af8a2808912'),
(985, 171, 'series_suptitle', 'CASE SERIES'),
(986, 171, '_series_suptitle', 'field_61af8a7808914'),
(987, 171, 'series_title', 'Choose Your Functionality.'),
(988, 171, '_series_title', 'field_61af8a5608913'),
(989, 171, 'series_list', '4'),
(990, 171, '_series_list', 'field_61af8abe08915'),
(991, 171, 'design_suptitle', 'FUNCTIONAL DESIGN'),
(992, 171, '_design_suptitle', 'field_61af8b340891b'),
(993, 171, 'design_title', 'More Features. More Protection.'),
(994, 171, '_design_title', 'field_61af8b2e0891a'),
(995, 171, 'design_img', '163'),
(996, 171, '_design_img', 'field_61af8b520891c'),
(997, 171, 'portability_suptitle', 'easy portability'),
(998, 171, '_portability_suptitle', 'field_61af8ba10891f'),
(999, 171, 'portability_title', '180 Belt Clip.'),
(1000, 171, '_portability_title', 'field_61af8ba408920'),
(1001, 171, 'portability_img', '165'),
(1002, 171, '_portability_img', 'field_61af8bcb08921'),
(1003, 171, 'features_suptitle', 'Quality Cases'),
(1004, 171, '_features_suptitle', 'field_61af8c1108923'),
(1005, 171, 'features_title', 'Extra Features for Your Comfort'),
(1006, 171, '_features_title', 'field_61af8c1408924'),
(1007, 171, 'features_list', '4'),
(1008, 171, '_features_list', 'field_61af8c2f08926'),
(1009, 171, 'features_video', ''),
(1010, 171, '_features_video', 'field_61af8c7e0892a'),
(1011, 171, 'types_suptitle', ''),
(1012, 171, '_types_suptitle', 'field_61af8ccc0892c'),
(1013, 171, 'types_title', ''),
(1014, 171, '_types_title', 'field_61af8cce0892d'),
(1015, 171, 'brands_list', ''),
(1016, 171, '_brands_list', 'field_61af8de30892f'),
(1017, 171, 'reviews_suptitle', ''),
(1018, 171, '_reviews_suptitle', 'field_61af8e1308932'),
(1019, 171, 'reviews_title', ''),
(1020, 171, '_reviews_title', 'field_61af8e1608933'),
(1021, 171, 'about_title', ''),
(1022, 171, '_about_title', 'field_61af943608935'),
(1023, 171, 'about_text', ''),
(1024, 171, '_about_text', 'field_61af944e08937'),
(1025, 171, 'about_button', ''),
(1026, 171, '_about_button', 'field_61af946408938'),
(1027, 171, 'series_list_0_title', 'Shell Holster'),
(1028, 171, '_series_list_0_title', 'field_61af8aeb08918'),
(1029, 171, 'series_list_0_image', '158'),
(1030, 171, '_series_list_0_image', 'field_61af8abe08916'),
(1031, 171, 'series_list_0_link', 'a:3:{s:5:\"title\";s:9:\"Read more\";s:3:\"url\";s:25:\"http://shellholster/shop/\";s:6:\"target\";s:0:\"\";}'),
(1032, 171, '_series_list_0_link', 'field_61af8abe08917'),
(1033, 171, 'series_list_1_title', 'Defender'),
(1034, 171, '_series_list_1_title', 'field_61af8aeb08918'),
(1035, 171, 'series_list_1_image', '155'),
(1036, 171, '_series_list_1_image', 'field_61af8abe08916'),
(1037, 171, 'series_list_1_link', 'a:3:{s:5:\"title\";s:9:\"Read more\";s:3:\"url\";s:6:\"/shop/\";s:6:\"target\";s:0:\"\";}'),
(1038, 171, '_series_list_1_link', 'field_61af8abe08917'),
(1039, 171, 'series_list_2_title', 'Dual Layer Card Holder'),
(1040, 171, '_series_list_2_title', 'field_61af8aeb08918'),
(1041, 171, 'series_list_2_image', '157'),
(1042, 171, '_series_list_2_image', 'field_61af8abe08916'),
(1043, 171, 'series_list_2_link', 'a:3:{s:5:\"title\";s:9:\"Read more\";s:3:\"url\";s:6:\"/shop/\";s:6:\"target\";s:0:\"\";}'),
(1044, 171, '_series_list_2_link', 'field_61af8abe08917'),
(1045, 171, 'series_list_3_title', 'Dual Layer Card Slot'),
(1046, 171, '_series_list_3_title', 'field_61af8aeb08918'),
(1047, 171, 'series_list_3_image', '156'),
(1048, 171, '_series_list_3_image', 'field_61af8abe08916'),
(1049, 171, 'series_list_3_link', 'a:3:{s:5:\"title\";s:9:\"Read more\";s:3:\"url\";s:6:\"/shop/\";s:6:\"target\";s:0:\"\";}'),
(1050, 171, '_series_list_3_link', 'field_61af8abe08917'),
(1051, 171, 'series_list_0_text', 'Offers slim and lightweight 360-degree protection with a multi-angle kickstand'),
(1052, 171, '_series_list_0_text', 'field_61af9927be222'),
(1053, 171, 'series_list_1_text', ''),
(1054, 171, '_series_list_1_text', 'field_61af9927be222'),
(1055, 171, 'series_list_2_text', ''),
(1056, 171, '_series_list_2_text', 'field_61af9927be222'),
(1057, 171, 'series_list_3_text', ''),
(1058, 171, '_series_list_3_text', 'field_61af9927be222'),
(1059, 171, 'features_list_0_title', 'Vertical Kickstand'),
(1060, 171, '_features_list_0_title', 'field_61af8c2f08927'),
(1061, 171, 'features_list_0_image', '170'),
(1062, 171, '_features_list_0_image', 'field_61af8c2f08928'),
(1063, 171, 'features_list_1_title', 'Easily Removable'),
(1064, 171, '_features_list_1_title', 'field_61af8c2f08927'),
(1065, 171, 'features_list_1_image', '169'),
(1066, 171, '_features_list_1_image', 'field_61af8c2f08928'),
(1067, 171, 'features_list_2_title', 'Wireless Charging'),
(1068, 171, '_features_list_2_title', 'field_61af8c2f08927'),
(1069, 171, 'features_list_2_image', '167'),
(1070, 171, '_features_list_2_image', 'field_61af8c2f08928'),
(1071, 171, 'features_list_3_title', 'Horizontal Kickstand'),
(1072, 171, '_features_list_3_title', 'field_61af8c2f08927'),
(1073, 171, 'features_list_3_image', '168'),
(1074, 171, '_features_list_3_image', 'field_61af8c2f08928'),
(1075, 2, 'reviews_list_0_title', 'Perfect Item!'),
(1076, 2, '_reviews_list_0_title', 'field_61b0968d5d44c'),
(1077, 2, 'reviews_list_0_text', 'The item was perfect. It was easy to use and a perfect fit for my husband use on his belt or pocket.'),
(1078, 2, '_reviews_list_0_text', 'field_61b096965d44d'),
(1079, 2, 'reviews_list_0_rating', '5'),
(1080, 2, '_reviews_list_0_rating', 'field_61b096b05d44e'),
(1081, 2, 'reviews_list_0_button', 'a:3:{s:5:\"title\";s:12:\"View product\";s:3:\"url\";s:68:\"http://shellholster/product/google-pixel-6-shell-holster-combo-case/\";s:6:\"target\";s:0:\"\";}'),
(1082, 2, '_reviews_list_0_button', 'field_61b0977b5d44f'),
(1083, 2, 'reviews_list_1_title', 'Fits the phone perfectly!'),
(1084, 2, '_reviews_list_1_title', 'field_61b0968d5d44c'),
(1085, 2, 'reviews_list_1_text', 'It fits the phone perfectly, is very secure, slides in &amp; out of the holster easily and keeps the screen from touching when placed face down on a flat surface. '),
(1086, 2, '_reviews_list_1_text', 'field_61b096965d44d'),
(1087, 2, 'reviews_list_1_rating', '5'),
(1088, 2, '_reviews_list_1_rating', 'field_61b096b05d44e'),
(1089, 2, 'reviews_list_1_button', 'a:3:{s:5:\"title\";s:12:\"View product\";s:3:\"url\";s:68:\"http://shellholster/product/google-pixel-6-shell-holster-combo-case/\";s:6:\"target\";s:0:\"\";}'),
(1090, 2, '_reviews_list_1_button', 'field_61b0977b5d44f'),
(1091, 2, 'reviews_list_2_title', 'Good quality'),
(1092, 2, '_reviews_list_2_title', 'field_61b0968d5d44c'),
(1093, 2, 'reviews_list_2_text', 'Good quality price decent clip work good'),
(1094, 2, '_reviews_list_2_text', 'field_61b096965d44d'),
(1095, 2, 'reviews_list_2_rating', '4'),
(1096, 2, '_reviews_list_2_rating', 'field_61b096b05d44e'),
(1097, 2, 'reviews_list_2_button', 'a:3:{s:5:\"title\";s:12:\"View product\";s:3:\"url\";s:68:\"http://shellholster/product/google-pixel-6-shell-holster-combo-case/\";s:6:\"target\";s:0:\"\";}'),
(1098, 2, '_reviews_list_2_button', 'field_61b0977b5d44f'),
(1099, 2, 'reviews_list', '3'),
(1100, 2, '_reviews_list', 'field_61b096725d44a'),
(1101, 177, 'hero_slider_0_image', '35'),
(1102, 177, '_hero_slider_0_image', 'field_61adf3c451df5'),
(1103, 177, 'hero_slider_1_image', '34'),
(1104, 177, '_hero_slider_1_image', 'field_61adf3c451df5'),
(1105, 177, 'hero_slider', '2'),
(1106, 177, '_hero_slider', 'field_61adf3a651df4'),
(1107, 177, 'hero_slider_0_link', 'a:3:{s:5:\"title\";s:4:\"Shop\";s:3:\"url\";s:25:\"http://shellholster/shop/\";s:6:\"target\";s:0:\"\";}'),
(1108, 177, '_hero_slider_0_link', 'field_61adf6d0aeb08'),
(1109, 177, 'hero_slider_1_link', ''),
(1110, 177, '_hero_slider_1_link', 'field_61adf6d0aeb08'),
(1111, 177, 'cases_title', 'Use Only Best Phones Cases'),
(1112, 177, '_cases_title', 'field_61af89d008910'),
(1113, 177, 'cases_text', 'The Shell Holster Combo it is best case for cell phone. It is durable, sturdy. It provides high protection and improves the phone usability. It defends your gadget from dirt, dust, moisture and scratches thanks to our rubberized holster. Using new technologies makes it possible to increase the safety of the device in case of a fall. Using a 180-degree rotatable holster with a ratchet clip will provide comfortable wearing, great fit and convenient positioning. The highest quality of rubberized texture provides a secure grip on your phone. With the built-in kickstand, you can place your mobile phone horizontally or vertically for video calls or watching multimedia. All holes are fully compatible with buttons, sensors and cameras. Supports wireless charging. Based on all the characteristics, our holster can stand on a par with the best phone case in the world.'),
(1114, 177, '_cases_text', 'field_61af8a0e08911'),
(1115, 177, 'cases_button', 'a:3:{s:5:\"title\";s:9:\"Read more\";s:3:\"url\";s:6:\"/shop/\";s:6:\"target\";s:0:\"\";}'),
(1116, 177, '_cases_button', 'field_61af8a2808912'),
(1117, 177, 'series_suptitle', 'CASE SERIES'),
(1118, 177, '_series_suptitle', 'field_61af8a7808914'),
(1119, 177, 'series_title', 'Choose Your Functionality.'),
(1120, 177, '_series_title', 'field_61af8a5608913'),
(1121, 177, 'series_list', '4'),
(1122, 177, '_series_list', 'field_61af8abe08915'),
(1123, 177, 'design_suptitle', 'FUNCTIONAL DESIGN'),
(1124, 177, '_design_suptitle', 'field_61af8b340891b'),
(1125, 177, 'design_title', 'More Features. More Protection.'),
(1126, 177, '_design_title', 'field_61af8b2e0891a'),
(1127, 177, 'design_img', '163'),
(1128, 177, '_design_img', 'field_61af8b520891c'),
(1129, 177, 'portability_suptitle', 'easy portability'),
(1130, 177, '_portability_suptitle', 'field_61af8ba10891f'),
(1131, 177, 'portability_title', '180 Belt Clip.'),
(1132, 177, '_portability_title', 'field_61af8ba408920'),
(1133, 177, 'portability_img', '165'),
(1134, 177, '_portability_img', 'field_61af8bcb08921'),
(1135, 177, 'features_suptitle', 'Quality Cases'),
(1136, 177, '_features_suptitle', 'field_61af8c1108923'),
(1137, 177, 'features_title', 'Extra Features for Your Comfort'),
(1138, 177, '_features_title', 'field_61af8c1408924'),
(1139, 177, 'features_list', '4'),
(1140, 177, '_features_list', 'field_61af8c2f08926'),
(1141, 177, 'features_video', ''),
(1142, 177, '_features_video', 'field_61af8c7e0892a'),
(1143, 177, 'types_suptitle', ''),
(1144, 177, '_types_suptitle', 'field_61af8ccc0892c'),
(1145, 177, 'types_title', ''),
(1146, 177, '_types_title', 'field_61af8cce0892d'),
(1147, 177, 'brands_list', ''),
(1148, 177, '_brands_list', 'field_61af8de30892f'),
(1149, 177, 'reviews_suptitle', 'CUSTOMER REVIEWS'),
(1150, 177, '_reviews_suptitle', 'field_61af8e1308932'),
(1151, 177, 'reviews_title', 'Reviews'),
(1152, 177, '_reviews_title', 'field_61af8e1608933'),
(1153, 177, 'about_title', ''),
(1154, 177, '_about_title', 'field_61af943608935'),
(1155, 177, 'about_text', ''),
(1156, 177, '_about_text', 'field_61af944e08937'),
(1157, 177, 'about_button', ''),
(1158, 177, '_about_button', 'field_61af946408938'),
(1159, 177, 'series_list_0_title', 'Shell Holster'),
(1160, 177, '_series_list_0_title', 'field_61af8aeb08918'),
(1161, 177, 'series_list_0_image', '158'),
(1162, 177, '_series_list_0_image', 'field_61af8abe08916'),
(1163, 177, 'series_list_0_link', 'a:3:{s:5:\"title\";s:9:\"Read more\";s:3:\"url\";s:25:\"http://shellholster/shop/\";s:6:\"target\";s:0:\"\";}'),
(1164, 177, '_series_list_0_link', 'field_61af8abe08917'),
(1165, 177, 'series_list_1_title', 'Defender'),
(1166, 177, '_series_list_1_title', 'field_61af8aeb08918'),
(1167, 177, 'series_list_1_image', '155'),
(1168, 177, '_series_list_1_image', 'field_61af8abe08916'),
(1169, 177, 'series_list_1_link', 'a:3:{s:5:\"title\";s:9:\"Read more\";s:3:\"url\";s:6:\"/shop/\";s:6:\"target\";s:0:\"\";}'),
(1170, 177, '_series_list_1_link', 'field_61af8abe08917'),
(1171, 177, 'series_list_2_title', 'Dual Layer Card Holder'),
(1172, 177, '_series_list_2_title', 'field_61af8aeb08918'),
(1173, 177, 'series_list_2_image', '157'),
(1174, 177, '_series_list_2_image', 'field_61af8abe08916'),
(1175, 177, 'series_list_2_link', 'a:3:{s:5:\"title\";s:9:\"Read more\";s:3:\"url\";s:6:\"/shop/\";s:6:\"target\";s:0:\"\";}'),
(1176, 177, '_series_list_2_link', 'field_61af8abe08917'),
(1177, 177, 'series_list_3_title', 'Dual Layer Card Slot'),
(1178, 177, '_series_list_3_title', 'field_61af8aeb08918'),
(1179, 177, 'series_list_3_image', '156'),
(1180, 177, '_series_list_3_image', 'field_61af8abe08916'),
(1181, 177, 'series_list_3_link', 'a:3:{s:5:\"title\";s:9:\"Read more\";s:3:\"url\";s:6:\"/shop/\";s:6:\"target\";s:0:\"\";}'),
(1182, 177, '_series_list_3_link', 'field_61af8abe08917'),
(1183, 177, 'series_list_0_text', 'Offers slim and lightweight 360-degree protection with a multi-angle kickstand'),
(1184, 177, '_series_list_0_text', 'field_61af9927be222'),
(1185, 177, 'series_list_1_text', ''),
(1186, 177, '_series_list_1_text', 'field_61af9927be222'),
(1187, 177, 'series_list_2_text', ''),
(1188, 177, '_series_list_2_text', 'field_61af9927be222'),
(1189, 177, 'series_list_3_text', ''),
(1190, 177, '_series_list_3_text', 'field_61af9927be222'),
(1191, 177, 'features_list_0_title', 'Vertical Kickstand'),
(1192, 177, '_features_list_0_title', 'field_61af8c2f08927'),
(1193, 177, 'features_list_0_image', '170'),
(1194, 177, '_features_list_0_image', 'field_61af8c2f08928'),
(1195, 177, 'features_list_1_title', 'Easily Removable'),
(1196, 177, '_features_list_1_title', 'field_61af8c2f08927'),
(1197, 177, 'features_list_1_image', '169'),
(1198, 177, '_features_list_1_image', 'field_61af8c2f08928'),
(1199, 177, 'features_list_2_title', 'Wireless Charging'),
(1200, 177, '_features_list_2_title', 'field_61af8c2f08927'),
(1201, 177, 'features_list_2_image', '167'),
(1202, 177, '_features_list_2_image', 'field_61af8c2f08928'),
(1203, 177, 'features_list_3_title', 'Horizontal Kickstand'),
(1204, 177, '_features_list_3_title', 'field_61af8c2f08927'),
(1205, 177, 'features_list_3_image', '168'),
(1206, 177, '_features_list_3_image', 'field_61af8c2f08928'),
(1207, 177, 'reviews_list_0_title', 'Perfect Item!'),
(1208, 177, '_reviews_list_0_title', 'field_61b0968d5d44c'),
(1209, 177, 'reviews_list_0_text', 'The item was perfect. It was easy to use and a perfect fit for my husband use on his belt or pocket.'),
(1210, 177, '_reviews_list_0_text', 'field_61b096965d44d'),
(1211, 177, 'reviews_list_0_rating', '5'),
(1212, 177, '_reviews_list_0_rating', 'field_61b096b05d44e'),
(1213, 177, 'reviews_list_0_button', 'a:3:{s:5:\"title\";s:12:\"View product\";s:3:\"url\";s:68:\"http://shellholster/product/google-pixel-6-shell-holster-combo-case/\";s:6:\"target\";s:0:\"\";}'),
(1214, 177, '_reviews_list_0_button', 'field_61b0977b5d44f'),
(1215, 177, 'reviews_list_1_title', 'Fits the phone perfectly!'),
(1216, 177, '_reviews_list_1_title', 'field_61b0968d5d44c'),
(1217, 177, 'reviews_list_1_text', 'It fits the phone perfectly, is very secure, slides in &amp; out of the holster easily and keeps the screen from touching when placed face down on a flat surface. '),
(1218, 177, '_reviews_list_1_text', 'field_61b096965d44d'),
(1219, 177, 'reviews_list_1_rating', '5'),
(1220, 177, '_reviews_list_1_rating', 'field_61b096b05d44e'),
(1221, 177, 'reviews_list_1_button', 'a:3:{s:5:\"title\";s:12:\"View product\";s:3:\"url\";s:68:\"http://shellholster/product/google-pixel-6-shell-holster-combo-case/\";s:6:\"target\";s:0:\"\";}'),
(1222, 177, '_reviews_list_1_button', 'field_61b0977b5d44f'),
(1223, 177, 'reviews_list_2_title', 'Good quality'),
(1224, 177, '_reviews_list_2_title', 'field_61b0968d5d44c'),
(1225, 177, 'reviews_list_2_text', 'Good quality price decent clip work good'),
(1226, 177, '_reviews_list_2_text', 'field_61b096965d44d'),
(1227, 177, 'reviews_list_2_rating', '4'),
(1228, 177, '_reviews_list_2_rating', 'field_61b096b05d44e'),
(1229, 177, 'reviews_list_2_button', 'a:3:{s:5:\"title\";s:12:\"View product\";s:3:\"url\";s:68:\"http://shellholster/product/google-pixel-6-shell-holster-combo-case/\";s:6:\"target\";s:0:\"\";}'),
(1230, 177, '_reviews_list_2_button', 'field_61b0977b5d44f'),
(1231, 177, 'reviews_list', '3'),
(1232, 177, '_reviews_list', 'field_61b096725d44a'),
(1233, 2, 'reviews_list_0_author', 'Gladys'),
(1234, 2, '_reviews_list_0_author', 'field_61b09959065fb'),
(1235, 2, 'reviews_list_1_author', 'Andy'),
(1236, 2, '_reviews_list_1_author', 'field_61b09959065fb'),
(1237, 2, 'reviews_list_2_author', 'Handy'),
(1238, 2, '_reviews_list_2_author', 'field_61b09959065fb'),
(1239, 179, 'hero_slider_0_image', '35'),
(1240, 179, '_hero_slider_0_image', 'field_61adf3c451df5'),
(1241, 179, 'hero_slider_1_image', '34'),
(1242, 179, '_hero_slider_1_image', 'field_61adf3c451df5'),
(1243, 179, 'hero_slider', '2'),
(1244, 179, '_hero_slider', 'field_61adf3a651df4'),
(1245, 179, 'hero_slider_0_link', 'a:3:{s:5:\"title\";s:4:\"Shop\";s:3:\"url\";s:25:\"http://shellholster/shop/\";s:6:\"target\";s:0:\"\";}'),
(1246, 179, '_hero_slider_0_link', 'field_61adf6d0aeb08'),
(1247, 179, 'hero_slider_1_link', ''),
(1248, 179, '_hero_slider_1_link', 'field_61adf6d0aeb08'),
(1249, 179, 'cases_title', 'Use Only Best Phones Cases'),
(1250, 179, '_cases_title', 'field_61af89d008910'),
(1251, 179, 'cases_text', 'The Shell Holster Combo it is best case for cell phone. It is durable, sturdy. It provides high protection and improves the phone usability. It defends your gadget from dirt, dust, moisture and scratches thanks to our rubberized holster. Using new technologies makes it possible to increase the safety of the device in case of a fall. Using a 180-degree rotatable holster with a ratchet clip will provide comfortable wearing, great fit and convenient positioning. The highest quality of rubberized texture provides a secure grip on your phone. With the built-in kickstand, you can place your mobile phone horizontally or vertically for video calls or watching multimedia. All holes are fully compatible with buttons, sensors and cameras. Supports wireless charging. Based on all the characteristics, our holster can stand on a par with the best phone case in the world.'),
(1252, 179, '_cases_text', 'field_61af8a0e08911'),
(1253, 179, 'cases_button', 'a:3:{s:5:\"title\";s:9:\"Read more\";s:3:\"url\";s:6:\"/shop/\";s:6:\"target\";s:0:\"\";}'),
(1254, 179, '_cases_button', 'field_61af8a2808912'),
(1255, 179, 'series_suptitle', 'CASE SERIES'),
(1256, 179, '_series_suptitle', 'field_61af8a7808914'),
(1257, 179, 'series_title', 'Choose Your Functionality.'),
(1258, 179, '_series_title', 'field_61af8a5608913'),
(1259, 179, 'series_list', '4'),
(1260, 179, '_series_list', 'field_61af8abe08915'),
(1261, 179, 'design_suptitle', 'FUNCTIONAL DESIGN'),
(1262, 179, '_design_suptitle', 'field_61af8b340891b'),
(1263, 179, 'design_title', 'More Features. More Protection.'),
(1264, 179, '_design_title', 'field_61af8b2e0891a'),
(1265, 179, 'design_img', '163'),
(1266, 179, '_design_img', 'field_61af8b520891c'),
(1267, 179, 'portability_suptitle', 'easy portability'),
(1268, 179, '_portability_suptitle', 'field_61af8ba10891f'),
(1269, 179, 'portability_title', '180 Belt Clip.'),
(1270, 179, '_portability_title', 'field_61af8ba408920'),
(1271, 179, 'portability_img', '165'),
(1272, 179, '_portability_img', 'field_61af8bcb08921'),
(1273, 179, 'features_suptitle', 'Quality Cases'),
(1274, 179, '_features_suptitle', 'field_61af8c1108923'),
(1275, 179, 'features_title', 'Extra Features for Your Comfort'),
(1276, 179, '_features_title', 'field_61af8c1408924'),
(1277, 179, 'features_list', '4'),
(1278, 179, '_features_list', 'field_61af8c2f08926'),
(1279, 179, 'features_video', ''),
(1280, 179, '_features_video', 'field_61af8c7e0892a'),
(1281, 179, 'types_suptitle', ''),
(1282, 179, '_types_suptitle', 'field_61af8ccc0892c'),
(1283, 179, 'types_title', ''),
(1284, 179, '_types_title', 'field_61af8cce0892d'),
(1285, 179, 'brands_list', ''),
(1286, 179, '_brands_list', 'field_61af8de30892f'),
(1287, 179, 'reviews_suptitle', 'CUSTOMER REVIEWS'),
(1288, 179, '_reviews_suptitle', 'field_61af8e1308932'),
(1289, 179, 'reviews_title', 'Reviews'),
(1290, 179, '_reviews_title', 'field_61af8e1608933'),
(1291, 179, 'about_title', ''),
(1292, 179, '_about_title', 'field_61af943608935'),
(1293, 179, 'about_text', ''),
(1294, 179, '_about_text', 'field_61af944e08937'),
(1295, 179, 'about_button', ''),
(1296, 179, '_about_button', 'field_61af946408938'),
(1297, 179, 'series_list_0_title', 'Shell Holster'),
(1298, 179, '_series_list_0_title', 'field_61af8aeb08918'),
(1299, 179, 'series_list_0_image', '158'),
(1300, 179, '_series_list_0_image', 'field_61af8abe08916'),
(1301, 179, 'series_list_0_link', 'a:3:{s:5:\"title\";s:9:\"Read more\";s:3:\"url\";s:25:\"http://shellholster/shop/\";s:6:\"target\";s:0:\"\";}'),
(1302, 179, '_series_list_0_link', 'field_61af8abe08917'),
(1303, 179, 'series_list_1_title', 'Defender'),
(1304, 179, '_series_list_1_title', 'field_61af8aeb08918'),
(1305, 179, 'series_list_1_image', '155'),
(1306, 179, '_series_list_1_image', 'field_61af8abe08916'),
(1307, 179, 'series_list_1_link', 'a:3:{s:5:\"title\";s:9:\"Read more\";s:3:\"url\";s:6:\"/shop/\";s:6:\"target\";s:0:\"\";}'),
(1308, 179, '_series_list_1_link', 'field_61af8abe08917'),
(1309, 179, 'series_list_2_title', 'Dual Layer Card Holder'),
(1310, 179, '_series_list_2_title', 'field_61af8aeb08918'),
(1311, 179, 'series_list_2_image', '157'),
(1312, 179, '_series_list_2_image', 'field_61af8abe08916'),
(1313, 179, 'series_list_2_link', 'a:3:{s:5:\"title\";s:9:\"Read more\";s:3:\"url\";s:6:\"/shop/\";s:6:\"target\";s:0:\"\";}'),
(1314, 179, '_series_list_2_link', 'field_61af8abe08917'),
(1315, 179, 'series_list_3_title', 'Dual Layer Card Slot'),
(1316, 179, '_series_list_3_title', 'field_61af8aeb08918'),
(1317, 179, 'series_list_3_image', '156'),
(1318, 179, '_series_list_3_image', 'field_61af8abe08916'),
(1319, 179, 'series_list_3_link', 'a:3:{s:5:\"title\";s:9:\"Read more\";s:3:\"url\";s:6:\"/shop/\";s:6:\"target\";s:0:\"\";}'),
(1320, 179, '_series_list_3_link', 'field_61af8abe08917'),
(1321, 179, 'series_list_0_text', 'Offers slim and lightweight 360-degree protection with a multi-angle kickstand'),
(1322, 179, '_series_list_0_text', 'field_61af9927be222'),
(1323, 179, 'series_list_1_text', ''),
(1324, 179, '_series_list_1_text', 'field_61af9927be222'),
(1325, 179, 'series_list_2_text', ''),
(1326, 179, '_series_list_2_text', 'field_61af9927be222'),
(1327, 179, 'series_list_3_text', ''),
(1328, 179, '_series_list_3_text', 'field_61af9927be222'),
(1329, 179, 'features_list_0_title', 'Vertical Kickstand'),
(1330, 179, '_features_list_0_title', 'field_61af8c2f08927'),
(1331, 179, 'features_list_0_image', '170'),
(1332, 179, '_features_list_0_image', 'field_61af8c2f08928'),
(1333, 179, 'features_list_1_title', 'Easily Removable'),
(1334, 179, '_features_list_1_title', 'field_61af8c2f08927'),
(1335, 179, 'features_list_1_image', '169'),
(1336, 179, '_features_list_1_image', 'field_61af8c2f08928'),
(1337, 179, 'features_list_2_title', 'Wireless Charging'),
(1338, 179, '_features_list_2_title', 'field_61af8c2f08927'),
(1339, 179, 'features_list_2_image', '167'),
(1340, 179, '_features_list_2_image', 'field_61af8c2f08928'),
(1341, 179, 'features_list_3_title', 'Horizontal Kickstand'),
(1342, 179, '_features_list_3_title', 'field_61af8c2f08927'),
(1343, 179, 'features_list_3_image', '168'),
(1344, 179, '_features_list_3_image', 'field_61af8c2f08928'),
(1345, 179, 'reviews_list_0_title', 'Perfect Item!'),
(1346, 179, '_reviews_list_0_title', 'field_61b0968d5d44c'),
(1347, 179, 'reviews_list_0_text', 'The item was perfect. It was easy to use and a perfect fit for my husband use on his belt or pocket.'),
(1348, 179, '_reviews_list_0_text', 'field_61b096965d44d'),
(1349, 179, 'reviews_list_0_rating', '5'),
(1350, 179, '_reviews_list_0_rating', 'field_61b096b05d44e'),
(1351, 179, 'reviews_list_0_button', 'a:3:{s:5:\"title\";s:12:\"View product\";s:3:\"url\";s:68:\"http://shellholster/product/google-pixel-6-shell-holster-combo-case/\";s:6:\"target\";s:0:\"\";}'),
(1352, 179, '_reviews_list_0_button', 'field_61b0977b5d44f'),
(1353, 179, 'reviews_list_1_title', 'Fits the phone perfectly!'),
(1354, 179, '_reviews_list_1_title', 'field_61b0968d5d44c'),
(1355, 179, 'reviews_list_1_text', 'It fits the phone perfectly, is very secure, slides in &amp; out of the holster easily and keeps the screen from touching when placed face down on a flat surface. '),
(1356, 179, '_reviews_list_1_text', 'field_61b096965d44d'),
(1357, 179, 'reviews_list_1_rating', '5'),
(1358, 179, '_reviews_list_1_rating', 'field_61b096b05d44e'),
(1359, 179, 'reviews_list_1_button', 'a:3:{s:5:\"title\";s:12:\"View product\";s:3:\"url\";s:68:\"http://shellholster/product/google-pixel-6-shell-holster-combo-case/\";s:6:\"target\";s:0:\"\";}'),
(1360, 179, '_reviews_list_1_button', 'field_61b0977b5d44f'),
(1361, 179, 'reviews_list_2_title', 'Good quality'),
(1362, 179, '_reviews_list_2_title', 'field_61b0968d5d44c'),
(1363, 179, 'reviews_list_2_text', 'Good quality price decent clip work good'),
(1364, 179, '_reviews_list_2_text', 'field_61b096965d44d'),
(1365, 179, 'reviews_list_2_rating', '4'),
(1366, 179, '_reviews_list_2_rating', 'field_61b096b05d44e'),
(1367, 179, 'reviews_list_2_button', 'a:3:{s:5:\"title\";s:12:\"View product\";s:3:\"url\";s:68:\"http://shellholster/product/google-pixel-6-shell-holster-combo-case/\";s:6:\"target\";s:0:\"\";}'),
(1368, 179, '_reviews_list_2_button', 'field_61b0977b5d44f'),
(1369, 179, 'reviews_list', '3'),
(1370, 179, '_reviews_list', 'field_61b096725d44a'),
(1371, 179, 'reviews_list_0_author', 'Gladys'),
(1372, 179, '_reviews_list_0_author', 'field_61b09959065fb'),
(1373, 179, 'reviews_list_1_author', 'Andy'),
(1374, 179, '_reviews_list_1_author', 'field_61b09959065fb'),
(1375, 179, 'reviews_list_2_author', 'Handy'),
(1376, 179, '_reviews_list_2_author', 'field_61b09959065fb'),
(1377, 180, 'hero_slider_0_image', '35'),
(1378, 180, '_hero_slider_0_image', 'field_61adf3c451df5'),
(1379, 180, 'hero_slider_1_image', '34'),
(1380, 180, '_hero_slider_1_image', 'field_61adf3c451df5'),
(1381, 180, 'hero_slider', '2'),
(1382, 180, '_hero_slider', 'field_61adf3a651df4'),
(1383, 180, 'hero_slider_0_link', 'a:3:{s:5:\"title\";s:4:\"Shop\";s:3:\"url\";s:25:\"http://shellholster/shop/\";s:6:\"target\";s:0:\"\";}'),
(1384, 180, '_hero_slider_0_link', 'field_61adf6d0aeb08'),
(1385, 180, 'hero_slider_1_link', ''),
(1386, 180, '_hero_slider_1_link', 'field_61adf6d0aeb08'),
(1387, 180, 'cases_title', 'Use Only Best Phones Cases'),
(1388, 180, '_cases_title', 'field_61af89d008910'),
(1389, 180, 'cases_text', 'The Shell Holster Combo it is best case for cell phone. It is durable, sturdy. It provides high protection and improves the phone usability. It defends your gadget from dirt, dust, moisture and scratches thanks to our rubberized holster. Using new technologies makes it possible to increase the safety of the device in case of a fall. Using a 180-degree rotatable holster with a ratchet clip will provide comfortable wearing, great fit and convenient positioning. The highest quality of rubberized texture provides a secure grip on your phone. With the built-in kickstand, you can place your mobile phone horizontally or vertically for video calls or watching multimedia. All holes are fully compatible with buttons, sensors and cameras. Supports wireless charging. Based on all the characteristics, our holster can stand on a par with the best phone case in the world.'),
(1390, 180, '_cases_text', 'field_61af8a0e08911'),
(1391, 180, 'cases_button', 'a:3:{s:5:\"title\";s:9:\"Read more\";s:3:\"url\";s:6:\"/shop/\";s:6:\"target\";s:0:\"\";}'),
(1392, 180, '_cases_button', 'field_61af8a2808912'),
(1393, 180, 'series_suptitle', 'CASE SERIES'),
(1394, 180, '_series_suptitle', 'field_61af8a7808914'),
(1395, 180, 'series_title', 'Choose Your Functionality.'),
(1396, 180, '_series_title', 'field_61af8a5608913'),
(1397, 180, 'series_list', '4'),
(1398, 180, '_series_list', 'field_61af8abe08915'),
(1399, 180, 'design_suptitle', 'FUNCTIONAL DESIGN'),
(1400, 180, '_design_suptitle', 'field_61af8b340891b'),
(1401, 180, 'design_title', 'More Features. More Protection.'),
(1402, 180, '_design_title', 'field_61af8b2e0891a'),
(1403, 180, 'design_img', '163'),
(1404, 180, '_design_img', 'field_61af8b520891c'),
(1405, 180, 'portability_suptitle', 'easy portability'),
(1406, 180, '_portability_suptitle', 'field_61af8ba10891f'),
(1407, 180, 'portability_title', '180 Belt Clip.'),
(1408, 180, '_portability_title', 'field_61af8ba408920'),
(1409, 180, 'portability_img', '165'),
(1410, 180, '_portability_img', 'field_61af8bcb08921'),
(1411, 180, 'features_suptitle', 'Quality Cases'),
(1412, 180, '_features_suptitle', 'field_61af8c1108923'),
(1413, 180, 'features_title', 'Extra Features for Your Comfort'),
(1414, 180, '_features_title', 'field_61af8c1408924'),
(1415, 180, 'features_list', '4'),
(1416, 180, '_features_list', 'field_61af8c2f08926'),
(1417, 180, 'features_video', ''),
(1418, 180, '_features_video', 'field_61af8c7e0892a'),
(1419, 180, 'types_suptitle', ''),
(1420, 180, '_types_suptitle', 'field_61af8ccc0892c'),
(1421, 180, 'types_title', ''),
(1422, 180, '_types_title', 'field_61af8cce0892d'),
(1423, 180, 'brands_list', ''),
(1424, 180, '_brands_list', 'field_61af8de30892f'),
(1425, 180, 'reviews_suptitle', 'CUSTOMER REVIEWS'),
(1426, 180, '_reviews_suptitle', 'field_61af8e1308932'),
(1427, 180, 'reviews_title', 'Reviews'),
(1428, 180, '_reviews_title', 'field_61af8e1608933'),
(1429, 180, 'about_title', 'ABOUT ROME TECH'),
(1430, 180, '_about_title', 'field_61af943608935'),
(1431, 180, 'about_text', '<b>Bringing People &amp; Technology Together</b>\r\n\r\nShellHolster.com thrives off of your 100% satisfaction. Our phone cases website wouldn’t exist today if our customers weren’t happy with the products and services we provide. Our skilled Customer Happiness reps are available to help with any questions about our products, billing, transactions, or even for a casual hello. We know how it feels to be frustrated with products that don’t fit, don’t look like they were described, or receiving broken items in the mail, which is why we offer a 100% satisfaction guarantee. Message Us for ANY reason and we’ll take care of the issue as fast as we can.'),
(1432, 180, '_about_text', 'field_61af944e08937'),
(1433, 180, 'about_button', 'a:3:{s:5:\"title\";s:9:\"Read more\";s:3:\"url\";s:26:\"http://shellholster/about/\";s:6:\"target\";s:0:\"\";}'),
(1434, 180, '_about_button', 'field_61af946408938'),
(1435, 180, 'series_list_0_title', 'Shell Holster'),
(1436, 180, '_series_list_0_title', 'field_61af8aeb08918'),
(1437, 180, 'series_list_0_image', '158'),
(1438, 180, '_series_list_0_image', 'field_61af8abe08916'),
(1439, 180, 'series_list_0_link', 'a:3:{s:5:\"title\";s:9:\"Read more\";s:3:\"url\";s:25:\"http://shellholster/shop/\";s:6:\"target\";s:0:\"\";}'),
(1440, 180, '_series_list_0_link', 'field_61af8abe08917'),
(1441, 180, 'series_list_1_title', 'Defender'),
(1442, 180, '_series_list_1_title', 'field_61af8aeb08918'),
(1443, 180, 'series_list_1_image', '155'),
(1444, 180, '_series_list_1_image', 'field_61af8abe08916'),
(1445, 180, 'series_list_1_link', 'a:3:{s:5:\"title\";s:9:\"Read more\";s:3:\"url\";s:6:\"/shop/\";s:6:\"target\";s:0:\"\";}'),
(1446, 180, '_series_list_1_link', 'field_61af8abe08917'),
(1447, 180, 'series_list_2_title', 'Dual Layer Card Holder'),
(1448, 180, '_series_list_2_title', 'field_61af8aeb08918'),
(1449, 180, 'series_list_2_image', '157'),
(1450, 180, '_series_list_2_image', 'field_61af8abe08916'),
(1451, 180, 'series_list_2_link', 'a:3:{s:5:\"title\";s:9:\"Read more\";s:3:\"url\";s:6:\"/shop/\";s:6:\"target\";s:0:\"\";}'),
(1452, 180, '_series_list_2_link', 'field_61af8abe08917'),
(1453, 180, 'series_list_3_title', 'Dual Layer Card Slot'),
(1454, 180, '_series_list_3_title', 'field_61af8aeb08918'),
(1455, 180, 'series_list_3_image', '156'),
(1456, 180, '_series_list_3_image', 'field_61af8abe08916'),
(1457, 180, 'series_list_3_link', 'a:3:{s:5:\"title\";s:9:\"Read more\";s:3:\"url\";s:6:\"/shop/\";s:6:\"target\";s:0:\"\";}'),
(1458, 180, '_series_list_3_link', 'field_61af8abe08917'),
(1459, 180, 'series_list_0_text', 'Offers slim and lightweight 360-degree protection with a multi-angle kickstand'),
(1460, 180, '_series_list_0_text', 'field_61af9927be222'),
(1461, 180, 'series_list_1_text', ''),
(1462, 180, '_series_list_1_text', 'field_61af9927be222'),
(1463, 180, 'series_list_2_text', ''),
(1464, 180, '_series_list_2_text', 'field_61af9927be222'),
(1465, 180, 'series_list_3_text', ''),
(1466, 180, '_series_list_3_text', 'field_61af9927be222'),
(1467, 180, 'features_list_0_title', 'Vertical Kickstand'),
(1468, 180, '_features_list_0_title', 'field_61af8c2f08927'),
(1469, 180, 'features_list_0_image', '170'),
(1470, 180, '_features_list_0_image', 'field_61af8c2f08928'),
(1471, 180, 'features_list_1_title', 'Easily Removable'),
(1472, 180, '_features_list_1_title', 'field_61af8c2f08927'),
(1473, 180, 'features_list_1_image', '169'),
(1474, 180, '_features_list_1_image', 'field_61af8c2f08928'),
(1475, 180, 'features_list_2_title', 'Wireless Charging'),
(1476, 180, '_features_list_2_title', 'field_61af8c2f08927'),
(1477, 180, 'features_list_2_image', '167'),
(1478, 180, '_features_list_2_image', 'field_61af8c2f08928'),
(1479, 180, 'features_list_3_title', 'Horizontal Kickstand'),
(1480, 180, '_features_list_3_title', 'field_61af8c2f08927'),
(1481, 180, 'features_list_3_image', '168'),
(1482, 180, '_features_list_3_image', 'field_61af8c2f08928'),
(1483, 180, 'reviews_list_0_title', 'Perfect Item!'),
(1484, 180, '_reviews_list_0_title', 'field_61b0968d5d44c'),
(1485, 180, 'reviews_list_0_text', 'The item was perfect. It was easy to use and a perfect fit for my husband use on his belt or pocket.'),
(1486, 180, '_reviews_list_0_text', 'field_61b096965d44d'),
(1487, 180, 'reviews_list_0_rating', '5'),
(1488, 180, '_reviews_list_0_rating', 'field_61b096b05d44e'),
(1489, 180, 'reviews_list_0_button', 'a:3:{s:5:\"title\";s:12:\"View product\";s:3:\"url\";s:68:\"http://shellholster/product/google-pixel-6-shell-holster-combo-case/\";s:6:\"target\";s:0:\"\";}'),
(1490, 180, '_reviews_list_0_button', 'field_61b0977b5d44f'),
(1491, 180, 'reviews_list_1_title', 'Fits the phone perfectly!'),
(1492, 180, '_reviews_list_1_title', 'field_61b0968d5d44c'),
(1493, 180, 'reviews_list_1_text', 'It fits the phone perfectly, is very secure, slides in &amp; out of the holster easily and keeps the screen from touching when placed face down on a flat surface. '),
(1494, 180, '_reviews_list_1_text', 'field_61b096965d44d'),
(1495, 180, 'reviews_list_1_rating', '5'),
(1496, 180, '_reviews_list_1_rating', 'field_61b096b05d44e'),
(1497, 180, 'reviews_list_1_button', 'a:3:{s:5:\"title\";s:12:\"View product\";s:3:\"url\";s:68:\"http://shellholster/product/google-pixel-6-shell-holster-combo-case/\";s:6:\"target\";s:0:\"\";}'),
(1498, 180, '_reviews_list_1_button', 'field_61b0977b5d44f'),
(1499, 180, 'reviews_list_2_title', 'Good quality'),
(1500, 180, '_reviews_list_2_title', 'field_61b0968d5d44c'),
(1501, 180, 'reviews_list_2_text', 'Good quality price decent clip work good'),
(1502, 180, '_reviews_list_2_text', 'field_61b096965d44d'),
(1503, 180, 'reviews_list_2_rating', '4'),
(1504, 180, '_reviews_list_2_rating', 'field_61b096b05d44e'),
(1505, 180, 'reviews_list_2_button', 'a:3:{s:5:\"title\";s:12:\"View product\";s:3:\"url\";s:68:\"http://shellholster/product/google-pixel-6-shell-holster-combo-case/\";s:6:\"target\";s:0:\"\";}'),
(1506, 180, '_reviews_list_2_button', 'field_61b0977b5d44f'),
(1507, 180, 'reviews_list', '3'),
(1508, 180, '_reviews_list', 'field_61b096725d44a'),
(1509, 180, 'reviews_list_0_author', 'Gladys'),
(1510, 180, '_reviews_list_0_author', 'field_61b09959065fb'),
(1511, 180, 'reviews_list_1_author', 'Andy'),
(1512, 180, '_reviews_list_1_author', 'field_61b09959065fb'),
(1513, 180, 'reviews_list_2_author', 'Handy'),
(1514, 180, '_reviews_list_2_author', 'field_61b09959065fb'),
(1515, 181, '_wp_attached_file', '2021/12/BrandHTC.png'),
(1516, 181, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:105;s:6:\"height\";i:35;s:4:\"file\";s:20:\"2021/12/BrandHTC.png\";s:5:\"sizes\";a:2:{s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:19:\"BrandHTC-100x35.png\";s:5:\"width\";i:100;s:6:\"height\";i:35;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:19:\"BrandHTC-100x35.png\";s:5:\"width\";i:100;s:6:\"height\";i:35;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1517, 182, '_wp_attached_file', '2021/12/BrandLG.png'),
(1518, 182, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:82;s:6:\"height\";i:49;s:4:\"file\";s:19:\"2021/12/BrandLG.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1519, 183, '_wp_attached_file', '2021/12/BrandMoto.png'),
(1520, 183, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:164;s:6:\"height\";i:37;s:4:\"file\";s:21:\"2021/12/BrandMoto.png\";s:5:\"sizes\";a:5:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"BrandMoto-150x37.png\";s:5:\"width\";i:150;s:6:\"height\";i:37;s:9:\"mime-type\";s:9:\"image/png\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:20:\"BrandMoto-150x37.png\";s:5:\"width\";i:150;s:6:\"height\";i:37;s:9:\"mime-type\";s:9:\"image/png\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:20:\"BrandMoto-100x37.png\";s:5:\"width\";i:100;s:6:\"height\";i:37;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:20:\"BrandMoto-150x37.png\";s:5:\"width\";i:150;s:6:\"height\";i:37;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:20:\"BrandMoto-100x37.png\";s:5:\"width\";i:100;s:6:\"height\";i:37;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1521, 184, '_wp_attached_file', '2021/12/BrandSansung.png'),
(1522, 184, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:129;s:6:\"height\";i:43;s:4:\"file\";s:24:\"2021/12/BrandSansung.png\";s:5:\"sizes\";a:2:{s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:23:\"BrandSansung-100x43.png\";s:5:\"width\";i:100;s:6:\"height\";i:43;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:23:\"BrandSansung-100x43.png\";s:5:\"width\";i:100;s:6:\"height\";i:43;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1523, 185, '_wp_attached_file', '2021/12/Brand.png'),
(1524, 185, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:165;s:6:\"height\";i:40;s:4:\"file\";s:17:\"2021/12/Brand.png\";s:5:\"sizes\";a:5:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:16:\"Brand-150x40.png\";s:5:\"width\";i:150;s:6:\"height\";i:40;s:9:\"mime-type\";s:9:\"image/png\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:16:\"Brand-150x40.png\";s:5:\"width\";i:150;s:6:\"height\";i:40;s:9:\"mime-type\";s:9:\"image/png\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:16:\"Brand-100x40.png\";s:5:\"width\";i:100;s:6:\"height\";i:40;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:16:\"Brand-150x40.png\";s:5:\"width\";i:150;s:6:\"height\";i:40;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:16:\"Brand-100x40.png\";s:5:\"width\";i:100;s:6:\"height\";i:40;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1525, 186, '_wp_attached_file', '2021/12/BrandApple.png'),
(1526, 186, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:47;s:6:\"height\";i:56;s:4:\"file\";s:22:\"2021/12/BrandApple.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1527, 187, 'hero_slider_0_image', '35'),
(1528, 187, '_hero_slider_0_image', 'field_61adf3c451df5'),
(1529, 187, 'hero_slider_1_image', '34'),
(1530, 187, '_hero_slider_1_image', 'field_61adf3c451df5'),
(1531, 187, 'hero_slider', '2'),
(1532, 187, '_hero_slider', 'field_61adf3a651df4'),
(1533, 187, 'hero_slider_0_link', 'a:3:{s:5:\"title\";s:4:\"Shop\";s:3:\"url\";s:25:\"http://shellholster/shop/\";s:6:\"target\";s:0:\"\";}'),
(1534, 187, '_hero_slider_0_link', 'field_61adf6d0aeb08'),
(1535, 187, 'hero_slider_1_link', ''),
(1536, 187, '_hero_slider_1_link', 'field_61adf6d0aeb08'),
(1537, 187, 'cases_title', 'Use Only Best Phones Cases'),
(1538, 187, '_cases_title', 'field_61af89d008910'),
(1539, 187, 'cases_text', 'The Shell Holster Combo it is best case for cell phone. It is durable, sturdy. It provides high protection and improves the phone usability. It defends your gadget from dirt, dust, moisture and scratches thanks to our rubberized holster. Using new technologies makes it possible to increase the safety of the device in case of a fall. Using a 180-degree rotatable holster with a ratchet clip will provide comfortable wearing, great fit and convenient positioning. The highest quality of rubberized texture provides a secure grip on your phone. With the built-in kickstand, you can place your mobile phone horizontally or vertically for video calls or watching multimedia. All holes are fully compatible with buttons, sensors and cameras. Supports wireless charging. Based on all the characteristics, our holster can stand on a par with the best phone case in the world.'),
(1540, 187, '_cases_text', 'field_61af8a0e08911'),
(1541, 187, 'cases_button', 'a:3:{s:5:\"title\";s:9:\"Read more\";s:3:\"url\";s:6:\"/shop/\";s:6:\"target\";s:0:\"\";}'),
(1542, 187, '_cases_button', 'field_61af8a2808912'),
(1543, 187, 'series_suptitle', 'CASE SERIES'),
(1544, 187, '_series_suptitle', 'field_61af8a7808914'),
(1545, 187, 'series_title', 'Choose Your Functionality.'),
(1546, 187, '_series_title', 'field_61af8a5608913'),
(1547, 187, 'series_list', '4'),
(1548, 187, '_series_list', 'field_61af8abe08915'),
(1549, 187, 'design_suptitle', 'FUNCTIONAL DESIGN'),
(1550, 187, '_design_suptitle', 'field_61af8b340891b'),
(1551, 187, 'design_title', 'More Features. More Protection.'),
(1552, 187, '_design_title', 'field_61af8b2e0891a'),
(1553, 187, 'design_img', '163'),
(1554, 187, '_design_img', 'field_61af8b520891c'),
(1555, 187, 'portability_suptitle', 'easy portability'),
(1556, 187, '_portability_suptitle', 'field_61af8ba10891f'),
(1557, 187, 'portability_title', '180 Belt Clip.'),
(1558, 187, '_portability_title', 'field_61af8ba408920'),
(1559, 187, 'portability_img', '165'),
(1560, 187, '_portability_img', 'field_61af8bcb08921'),
(1561, 187, 'features_suptitle', 'Quality Cases'),
(1562, 187, '_features_suptitle', 'field_61af8c1108923'),
(1563, 187, 'features_title', 'Extra Features for Your Comfort'),
(1564, 187, '_features_title', 'field_61af8c1408924'),
(1565, 187, 'features_list', '4'),
(1566, 187, '_features_list', 'field_61af8c2f08926'),
(1567, 187, 'features_video', ''),
(1568, 187, '_features_video', 'field_61af8c7e0892a'),
(1569, 187, 'types_suptitle', ''),
(1570, 187, '_types_suptitle', 'field_61af8ccc0892c'),
(1571, 187, 'types_title', ''),
(1572, 187, '_types_title', 'field_61af8cce0892d'),
(1573, 187, 'brands_list', 'a:6:{i:0;s:3:\"181\";i:1;s:3:\"182\";i:2;s:3:\"183\";i:3;s:3:\"184\";i:4;s:3:\"185\";i:5;s:3:\"186\";}'),
(1574, 187, '_brands_list', 'field_61af8de30892f'),
(1575, 187, 'reviews_suptitle', 'CUSTOMER REVIEWS'),
(1576, 187, '_reviews_suptitle', 'field_61af8e1308932'),
(1577, 187, 'reviews_title', 'Reviews'),
(1578, 187, '_reviews_title', 'field_61af8e1608933'),
(1579, 187, 'about_title', 'ABOUT ROME TECH'),
(1580, 187, '_about_title', 'field_61af943608935'),
(1581, 187, 'about_text', '<b>Bringing People &amp; Technology Together</b>\r\n\r\nShellHolster.com thrives off of your 100% satisfaction. Our phone cases website wouldn’t exist today if our customers weren’t happy with the products and services we provide. Our skilled Customer Happiness reps are available to help with any questions about our products, billing, transactions, or even for a casual hello. We know how it feels to be frustrated with products that don’t fit, don’t look like they were described, or receiving broken items in the mail, which is why we offer a 100% satisfaction guarantee. Message Us for ANY reason and we’ll take care of the issue as fast as we can.'),
(1582, 187, '_about_text', 'field_61af944e08937'),
(1583, 187, 'about_button', 'a:3:{s:5:\"title\";s:9:\"Read more\";s:3:\"url\";s:26:\"http://shellholster/about/\";s:6:\"target\";s:0:\"\";}'),
(1584, 187, '_about_button', 'field_61af946408938'),
(1585, 187, 'series_list_0_title', 'Shell Holster'),
(1586, 187, '_series_list_0_title', 'field_61af8aeb08918'),
(1587, 187, 'series_list_0_image', '158'),
(1588, 187, '_series_list_0_image', 'field_61af8abe08916'),
(1589, 187, 'series_list_0_link', 'a:3:{s:5:\"title\";s:9:\"Read more\";s:3:\"url\";s:25:\"http://shellholster/shop/\";s:6:\"target\";s:0:\"\";}'),
(1590, 187, '_series_list_0_link', 'field_61af8abe08917'),
(1591, 187, 'series_list_1_title', 'Defender'),
(1592, 187, '_series_list_1_title', 'field_61af8aeb08918'),
(1593, 187, 'series_list_1_image', '155'),
(1594, 187, '_series_list_1_image', 'field_61af8abe08916'),
(1595, 187, 'series_list_1_link', 'a:3:{s:5:\"title\";s:9:\"Read more\";s:3:\"url\";s:6:\"/shop/\";s:6:\"target\";s:0:\"\";}'),
(1596, 187, '_series_list_1_link', 'field_61af8abe08917'),
(1597, 187, 'series_list_2_title', 'Dual Layer Card Holder'),
(1598, 187, '_series_list_2_title', 'field_61af8aeb08918'),
(1599, 187, 'series_list_2_image', '157'),
(1600, 187, '_series_list_2_image', 'field_61af8abe08916'),
(1601, 187, 'series_list_2_link', 'a:3:{s:5:\"title\";s:9:\"Read more\";s:3:\"url\";s:6:\"/shop/\";s:6:\"target\";s:0:\"\";}'),
(1602, 187, '_series_list_2_link', 'field_61af8abe08917'),
(1603, 187, 'series_list_3_title', 'Dual Layer Card Slot'),
(1604, 187, '_series_list_3_title', 'field_61af8aeb08918'),
(1605, 187, 'series_list_3_image', '156'),
(1606, 187, '_series_list_3_image', 'field_61af8abe08916'),
(1607, 187, 'series_list_3_link', 'a:3:{s:5:\"title\";s:9:\"Read more\";s:3:\"url\";s:6:\"/shop/\";s:6:\"target\";s:0:\"\";}'),
(1608, 187, '_series_list_3_link', 'field_61af8abe08917'),
(1609, 187, 'series_list_0_text', 'Offers slim and lightweight 360-degree protection with a multi-angle kickstand'),
(1610, 187, '_series_list_0_text', 'field_61af9927be222'),
(1611, 187, 'series_list_1_text', ''),
(1612, 187, '_series_list_1_text', 'field_61af9927be222'),
(1613, 187, 'series_list_2_text', ''),
(1614, 187, '_series_list_2_text', 'field_61af9927be222'),
(1615, 187, 'series_list_3_text', ''),
(1616, 187, '_series_list_3_text', 'field_61af9927be222'),
(1617, 187, 'features_list_0_title', 'Vertical Kickstand');
INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1618, 187, '_features_list_0_title', 'field_61af8c2f08927'),
(1619, 187, 'features_list_0_image', '170'),
(1620, 187, '_features_list_0_image', 'field_61af8c2f08928'),
(1621, 187, 'features_list_1_title', 'Easily Removable'),
(1622, 187, '_features_list_1_title', 'field_61af8c2f08927'),
(1623, 187, 'features_list_1_image', '169'),
(1624, 187, '_features_list_1_image', 'field_61af8c2f08928'),
(1625, 187, 'features_list_2_title', 'Wireless Charging'),
(1626, 187, '_features_list_2_title', 'field_61af8c2f08927'),
(1627, 187, 'features_list_2_image', '167'),
(1628, 187, '_features_list_2_image', 'field_61af8c2f08928'),
(1629, 187, 'features_list_3_title', 'Horizontal Kickstand'),
(1630, 187, '_features_list_3_title', 'field_61af8c2f08927'),
(1631, 187, 'features_list_3_image', '168'),
(1632, 187, '_features_list_3_image', 'field_61af8c2f08928'),
(1633, 187, 'reviews_list_0_title', 'Perfect Item!'),
(1634, 187, '_reviews_list_0_title', 'field_61b0968d5d44c'),
(1635, 187, 'reviews_list_0_text', 'The item was perfect. It was easy to use and a perfect fit for my husband use on his belt or pocket.'),
(1636, 187, '_reviews_list_0_text', 'field_61b096965d44d'),
(1637, 187, 'reviews_list_0_rating', '5'),
(1638, 187, '_reviews_list_0_rating', 'field_61b096b05d44e'),
(1639, 187, 'reviews_list_0_button', 'a:3:{s:5:\"title\";s:12:\"View product\";s:3:\"url\";s:68:\"http://shellholster/product/google-pixel-6-shell-holster-combo-case/\";s:6:\"target\";s:0:\"\";}'),
(1640, 187, '_reviews_list_0_button', 'field_61b0977b5d44f'),
(1641, 187, 'reviews_list_1_title', 'Fits the phone perfectly!'),
(1642, 187, '_reviews_list_1_title', 'field_61b0968d5d44c'),
(1643, 187, 'reviews_list_1_text', 'It fits the phone perfectly, is very secure, slides in &amp; out of the holster easily and keeps the screen from touching when placed face down on a flat surface. '),
(1644, 187, '_reviews_list_1_text', 'field_61b096965d44d'),
(1645, 187, 'reviews_list_1_rating', '5'),
(1646, 187, '_reviews_list_1_rating', 'field_61b096b05d44e'),
(1647, 187, 'reviews_list_1_button', 'a:3:{s:5:\"title\";s:12:\"View product\";s:3:\"url\";s:68:\"http://shellholster/product/google-pixel-6-shell-holster-combo-case/\";s:6:\"target\";s:0:\"\";}'),
(1648, 187, '_reviews_list_1_button', 'field_61b0977b5d44f'),
(1649, 187, 'reviews_list_2_title', 'Good quality'),
(1650, 187, '_reviews_list_2_title', 'field_61b0968d5d44c'),
(1651, 187, 'reviews_list_2_text', 'Good quality price decent clip work good'),
(1652, 187, '_reviews_list_2_text', 'field_61b096965d44d'),
(1653, 187, 'reviews_list_2_rating', '4'),
(1654, 187, '_reviews_list_2_rating', 'field_61b096b05d44e'),
(1655, 187, 'reviews_list_2_button', 'a:3:{s:5:\"title\";s:12:\"View product\";s:3:\"url\";s:68:\"http://shellholster/product/google-pixel-6-shell-holster-combo-case/\";s:6:\"target\";s:0:\"\";}'),
(1656, 187, '_reviews_list_2_button', 'field_61b0977b5d44f'),
(1657, 187, 'reviews_list', '3'),
(1658, 187, '_reviews_list', 'field_61b096725d44a'),
(1659, 187, 'reviews_list_0_author', 'Gladys'),
(1660, 187, '_reviews_list_0_author', 'field_61b09959065fb'),
(1661, 187, 'reviews_list_1_author', 'Andy'),
(1662, 187, '_reviews_list_1_author', 'field_61b09959065fb'),
(1663, 187, 'reviews_list_2_author', 'Handy'),
(1664, 187, '_reviews_list_2_author', 'field_61b09959065fb'),
(1665, 188, '_wp_attached_file', '2021/12/Shell-Holster-Combo-1.mp4'),
(1666, 188, '_wp_attachment_metadata', 'a:10:{s:8:\"filesize\";i:7123328;s:9:\"mime_type\";s:9:\"video/mp4\";s:6:\"length\";i:45;s:16:\"length_formatted\";s:4:\"0:45\";s:5:\"width\";i:1280;s:6:\"height\";i:720;s:10:\"fileformat\";s:3:\"mp4\";s:10:\"dataformat\";s:9:\"quicktime\";s:5:\"audio\";a:7:{s:10:\"dataformat\";s:3:\"mp4\";s:5:\"codec\";s:19:\"ISO/IEC 14496-3 AAC\";s:11:\"sample_rate\";d:44100;s:8:\"channels\";i:2;s:15:\"bits_per_sample\";i:16;s:8:\"lossless\";b:0;s:11:\"channelmode\";s:6:\"stereo\";}s:17:\"created_timestamp\";i:-2082844800;}'),
(1667, 189, 'hero_slider_0_image', '35'),
(1668, 189, '_hero_slider_0_image', 'field_61adf3c451df5'),
(1669, 189, 'hero_slider_1_image', '34'),
(1670, 189, '_hero_slider_1_image', 'field_61adf3c451df5'),
(1671, 189, 'hero_slider', '2'),
(1672, 189, '_hero_slider', 'field_61adf3a651df4'),
(1673, 189, 'hero_slider_0_link', 'a:3:{s:5:\"title\";s:4:\"Shop\";s:3:\"url\";s:25:\"http://shellholster/shop/\";s:6:\"target\";s:0:\"\";}'),
(1674, 189, '_hero_slider_0_link', 'field_61adf6d0aeb08'),
(1675, 189, 'hero_slider_1_link', ''),
(1676, 189, '_hero_slider_1_link', 'field_61adf6d0aeb08'),
(1677, 189, 'cases_title', 'Use Only Best Phones Cases'),
(1678, 189, '_cases_title', 'field_61af89d008910'),
(1679, 189, 'cases_text', 'The Shell Holster Combo it is best case for cell phone. It is durable, sturdy. It provides high protection and improves the phone usability. It defends your gadget from dirt, dust, moisture and scratches thanks to our rubberized holster. Using new technologies makes it possible to increase the safety of the device in case of a fall. Using a 180-degree rotatable holster with a ratchet clip will provide comfortable wearing, great fit and convenient positioning. The highest quality of rubberized texture provides a secure grip on your phone. With the built-in kickstand, you can place your mobile phone horizontally or vertically for video calls or watching multimedia. All holes are fully compatible with buttons, sensors and cameras. Supports wireless charging. Based on all the characteristics, our holster can stand on a par with the best phone case in the world.'),
(1680, 189, '_cases_text', 'field_61af8a0e08911'),
(1681, 189, 'cases_button', 'a:3:{s:5:\"title\";s:9:\"Read more\";s:3:\"url\";s:6:\"/shop/\";s:6:\"target\";s:0:\"\";}'),
(1682, 189, '_cases_button', 'field_61af8a2808912'),
(1683, 189, 'series_suptitle', 'CASE SERIES'),
(1684, 189, '_series_suptitle', 'field_61af8a7808914'),
(1685, 189, 'series_title', 'Choose Your Functionality.'),
(1686, 189, '_series_title', 'field_61af8a5608913'),
(1687, 189, 'series_list', '4'),
(1688, 189, '_series_list', 'field_61af8abe08915'),
(1689, 189, 'design_suptitle', 'FUNCTIONAL DESIGN'),
(1690, 189, '_design_suptitle', 'field_61af8b340891b'),
(1691, 189, 'design_title', 'More Features. More Protection.'),
(1692, 189, '_design_title', 'field_61af8b2e0891a'),
(1693, 189, 'design_img', '163'),
(1694, 189, '_design_img', 'field_61af8b520891c'),
(1695, 189, 'portability_suptitle', 'easy portability'),
(1696, 189, '_portability_suptitle', 'field_61af8ba10891f'),
(1697, 189, 'portability_title', '180 Belt Clip.'),
(1698, 189, '_portability_title', 'field_61af8ba408920'),
(1699, 189, 'portability_img', '165'),
(1700, 189, '_portability_img', 'field_61af8bcb08921'),
(1701, 189, 'features_suptitle', 'Quality Cases'),
(1702, 189, '_features_suptitle', 'field_61af8c1108923'),
(1703, 189, 'features_title', 'Extra Features for Your Comfort'),
(1704, 189, '_features_title', 'field_61af8c1408924'),
(1705, 189, 'features_list', '4'),
(1706, 189, '_features_list', 'field_61af8c2f08926'),
(1707, 189, 'features_video', '188'),
(1708, 189, '_features_video', 'field_61af8c7e0892a'),
(1709, 189, 'types_suptitle', 'BUILT-IN FEATURES'),
(1710, 189, '_types_suptitle', 'field_61af8ccc0892c'),
(1711, 189, 'types_title', 'CHOOSE YOUR PHONE CASE'),
(1712, 189, '_types_title', 'field_61af8cce0892d'),
(1713, 189, 'brands_list', 'a:6:{i:0;s:3:\"181\";i:1;s:3:\"182\";i:2;s:3:\"183\";i:3;s:3:\"184\";i:4;s:3:\"185\";i:5;s:3:\"186\";}'),
(1714, 189, '_brands_list', 'field_61af8de30892f'),
(1715, 189, 'reviews_suptitle', 'CUSTOMER REVIEWS'),
(1716, 189, '_reviews_suptitle', 'field_61af8e1308932'),
(1717, 189, 'reviews_title', 'Reviews'),
(1718, 189, '_reviews_title', 'field_61af8e1608933'),
(1719, 189, 'about_title', 'ABOUT ROME TECH'),
(1720, 189, '_about_title', 'field_61af943608935'),
(1721, 189, 'about_text', '<b>Bringing People &amp; Technology Together</b>\r\n\r\nShellHolster.com thrives off of your 100% satisfaction. Our phone cases website wouldn’t exist today if our customers weren’t happy with the products and services we provide. Our skilled Customer Happiness reps are available to help with any questions about our products, billing, transactions, or even for a casual hello. We know how it feels to be frustrated with products that don’t fit, don’t look like they were described, or receiving broken items in the mail, which is why we offer a 100% satisfaction guarantee. Message Us for ANY reason and we’ll take care of the issue as fast as we can.'),
(1722, 189, '_about_text', 'field_61af944e08937'),
(1723, 189, 'about_button', 'a:3:{s:5:\"title\";s:9:\"Read more\";s:3:\"url\";s:26:\"http://shellholster/about/\";s:6:\"target\";s:0:\"\";}'),
(1724, 189, '_about_button', 'field_61af946408938'),
(1725, 189, 'series_list_0_title', 'Shell Holster'),
(1726, 189, '_series_list_0_title', 'field_61af8aeb08918'),
(1727, 189, 'series_list_0_image', '158'),
(1728, 189, '_series_list_0_image', 'field_61af8abe08916'),
(1729, 189, 'series_list_0_link', 'a:3:{s:5:\"title\";s:9:\"Read more\";s:3:\"url\";s:25:\"http://shellholster/shop/\";s:6:\"target\";s:0:\"\";}'),
(1730, 189, '_series_list_0_link', 'field_61af8abe08917'),
(1731, 189, 'series_list_1_title', 'Defender'),
(1732, 189, '_series_list_1_title', 'field_61af8aeb08918'),
(1733, 189, 'series_list_1_image', '155'),
(1734, 189, '_series_list_1_image', 'field_61af8abe08916'),
(1735, 189, 'series_list_1_link', 'a:3:{s:5:\"title\";s:9:\"Read more\";s:3:\"url\";s:6:\"/shop/\";s:6:\"target\";s:0:\"\";}'),
(1736, 189, '_series_list_1_link', 'field_61af8abe08917'),
(1737, 189, 'series_list_2_title', 'Dual Layer Card Holder'),
(1738, 189, '_series_list_2_title', 'field_61af8aeb08918'),
(1739, 189, 'series_list_2_image', '157'),
(1740, 189, '_series_list_2_image', 'field_61af8abe08916'),
(1741, 189, 'series_list_2_link', 'a:3:{s:5:\"title\";s:9:\"Read more\";s:3:\"url\";s:6:\"/shop/\";s:6:\"target\";s:0:\"\";}'),
(1742, 189, '_series_list_2_link', 'field_61af8abe08917'),
(1743, 189, 'series_list_3_title', 'Dual Layer Card Slot'),
(1744, 189, '_series_list_3_title', 'field_61af8aeb08918'),
(1745, 189, 'series_list_3_image', '156'),
(1746, 189, '_series_list_3_image', 'field_61af8abe08916'),
(1747, 189, 'series_list_3_link', 'a:3:{s:5:\"title\";s:9:\"Read more\";s:3:\"url\";s:6:\"/shop/\";s:6:\"target\";s:0:\"\";}'),
(1748, 189, '_series_list_3_link', 'field_61af8abe08917'),
(1749, 189, 'series_list_0_text', 'Offers slim and lightweight 360-degree protection with a multi-angle kickstand'),
(1750, 189, '_series_list_0_text', 'field_61af9927be222'),
(1751, 189, 'series_list_1_text', ''),
(1752, 189, '_series_list_1_text', 'field_61af9927be222'),
(1753, 189, 'series_list_2_text', ''),
(1754, 189, '_series_list_2_text', 'field_61af9927be222'),
(1755, 189, 'series_list_3_text', ''),
(1756, 189, '_series_list_3_text', 'field_61af9927be222'),
(1757, 189, 'features_list_0_title', 'Vertical Kickstand'),
(1758, 189, '_features_list_0_title', 'field_61af8c2f08927'),
(1759, 189, 'features_list_0_image', '170'),
(1760, 189, '_features_list_0_image', 'field_61af8c2f08928'),
(1761, 189, 'features_list_1_title', 'Easily Removable'),
(1762, 189, '_features_list_1_title', 'field_61af8c2f08927'),
(1763, 189, 'features_list_1_image', '169'),
(1764, 189, '_features_list_1_image', 'field_61af8c2f08928'),
(1765, 189, 'features_list_2_title', 'Wireless Charging'),
(1766, 189, '_features_list_2_title', 'field_61af8c2f08927'),
(1767, 189, 'features_list_2_image', '167'),
(1768, 189, '_features_list_2_image', 'field_61af8c2f08928'),
(1769, 189, 'features_list_3_title', 'Horizontal Kickstand'),
(1770, 189, '_features_list_3_title', 'field_61af8c2f08927'),
(1771, 189, 'features_list_3_image', '168'),
(1772, 189, '_features_list_3_image', 'field_61af8c2f08928'),
(1773, 189, 'reviews_list_0_title', 'Perfect Item!'),
(1774, 189, '_reviews_list_0_title', 'field_61b0968d5d44c'),
(1775, 189, 'reviews_list_0_text', 'The item was perfect. It was easy to use and a perfect fit for my husband use on his belt or pocket.'),
(1776, 189, '_reviews_list_0_text', 'field_61b096965d44d'),
(1777, 189, 'reviews_list_0_rating', '5'),
(1778, 189, '_reviews_list_0_rating', 'field_61b096b05d44e'),
(1779, 189, 'reviews_list_0_button', 'a:3:{s:5:\"title\";s:12:\"View product\";s:3:\"url\";s:68:\"http://shellholster/product/google-pixel-6-shell-holster-combo-case/\";s:6:\"target\";s:0:\"\";}'),
(1780, 189, '_reviews_list_0_button', 'field_61b0977b5d44f'),
(1781, 189, 'reviews_list_1_title', 'Fits the phone perfectly!'),
(1782, 189, '_reviews_list_1_title', 'field_61b0968d5d44c'),
(1783, 189, 'reviews_list_1_text', 'It fits the phone perfectly, is very secure, slides in &amp; out of the holster easily and keeps the screen from touching when placed face down on a flat surface. '),
(1784, 189, '_reviews_list_1_text', 'field_61b096965d44d'),
(1785, 189, 'reviews_list_1_rating', '5'),
(1786, 189, '_reviews_list_1_rating', 'field_61b096b05d44e'),
(1787, 189, 'reviews_list_1_button', 'a:3:{s:5:\"title\";s:12:\"View product\";s:3:\"url\";s:68:\"http://shellholster/product/google-pixel-6-shell-holster-combo-case/\";s:6:\"target\";s:0:\"\";}'),
(1788, 189, '_reviews_list_1_button', 'field_61b0977b5d44f'),
(1789, 189, 'reviews_list_2_title', 'Good quality'),
(1790, 189, '_reviews_list_2_title', 'field_61b0968d5d44c'),
(1791, 189, 'reviews_list_2_text', 'Good quality price decent clip work good'),
(1792, 189, '_reviews_list_2_text', 'field_61b096965d44d'),
(1793, 189, 'reviews_list_2_rating', '4'),
(1794, 189, '_reviews_list_2_rating', 'field_61b096b05d44e'),
(1795, 189, 'reviews_list_2_button', 'a:3:{s:5:\"title\";s:12:\"View product\";s:3:\"url\";s:68:\"http://shellholster/product/google-pixel-6-shell-holster-combo-case/\";s:6:\"target\";s:0:\"\";}'),
(1796, 189, '_reviews_list_2_button', 'field_61b0977b5d44f'),
(1797, 189, 'reviews_list', '3'),
(1798, 189, '_reviews_list', 'field_61b096725d44a'),
(1799, 189, 'reviews_list_0_author', 'Gladys'),
(1800, 189, '_reviews_list_0_author', 'field_61b09959065fb'),
(1801, 189, 'reviews_list_1_author', 'Andy'),
(1802, 189, '_reviews_list_1_author', 'field_61b09959065fb'),
(1803, 189, 'reviews_list_2_author', 'Handy'),
(1804, 189, '_reviews_list_2_author', 'field_61b09959065fb'),
(1805, 191, '_wp_attached_file', '2021/12/video.png'),
(1806, 191, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1047;s:6:\"height\";i:481;s:4:\"file\";s:17:\"2021/12/video.png\";s:5:\"sizes\";a:10:{s:6:\"medium\";a:4:{s:4:\"file\";s:17:\"video-300x138.png\";s:5:\"width\";i:300;s:6:\"height\";i:138;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:18:\"video-1024x470.png\";s:5:\"width\";i:1024;s:6:\"height\";i:470;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"video-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:17:\"video-768x353.png\";s:5:\"width\";i:768;s:6:\"height\";i:353;s:9:\"mime-type\";s:9:\"image/png\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:17:\"video-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:17:\"video-300x138.png\";s:5:\"width\";i:300;s:6:\"height\";i:138;s:9:\"mime-type\";s:9:\"image/png\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:17:\"video-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:17:\"video-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:17:\"video-300x138.png\";s:5:\"width\";i:300;s:6:\"height\";i:138;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:17:\"video-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1807, 2, 'features_preview', '191'),
(1808, 2, '_features_preview', 'field_61b0da508f25b'),
(1809, 192, 'hero_slider_0_image', '35'),
(1810, 192, '_hero_slider_0_image', 'field_61adf3c451df5'),
(1811, 192, 'hero_slider_1_image', '34'),
(1812, 192, '_hero_slider_1_image', 'field_61adf3c451df5'),
(1813, 192, 'hero_slider', '2'),
(1814, 192, '_hero_slider', 'field_61adf3a651df4'),
(1815, 192, 'hero_slider_0_link', 'a:3:{s:5:\"title\";s:4:\"Shop\";s:3:\"url\";s:25:\"http://shellholster/shop/\";s:6:\"target\";s:0:\"\";}'),
(1816, 192, '_hero_slider_0_link', 'field_61adf6d0aeb08'),
(1817, 192, 'hero_slider_1_link', ''),
(1818, 192, '_hero_slider_1_link', 'field_61adf6d0aeb08'),
(1819, 192, 'cases_title', 'Use Only Best Phones Cases'),
(1820, 192, '_cases_title', 'field_61af89d008910'),
(1821, 192, 'cases_text', 'The Shell Holster Combo it is best case for cell phone. It is durable, sturdy. It provides high protection and improves the phone usability. It defends your gadget from dirt, dust, moisture and scratches thanks to our rubberized holster. Using new technologies makes it possible to increase the safety of the device in case of a fall. Using a 180-degree rotatable holster with a ratchet clip will provide comfortable wearing, great fit and convenient positioning. The highest quality of rubberized texture provides a secure grip on your phone. With the built-in kickstand, you can place your mobile phone horizontally or vertically for video calls or watching multimedia. All holes are fully compatible with buttons, sensors and cameras. Supports wireless charging. Based on all the characteristics, our holster can stand on a par with the best phone case in the world.'),
(1822, 192, '_cases_text', 'field_61af8a0e08911'),
(1823, 192, 'cases_button', 'a:3:{s:5:\"title\";s:9:\"Read more\";s:3:\"url\";s:6:\"/shop/\";s:6:\"target\";s:0:\"\";}'),
(1824, 192, '_cases_button', 'field_61af8a2808912'),
(1825, 192, 'series_suptitle', 'CASE SERIES'),
(1826, 192, '_series_suptitle', 'field_61af8a7808914'),
(1827, 192, 'series_title', 'Choose Your Functionality.'),
(1828, 192, '_series_title', 'field_61af8a5608913'),
(1829, 192, 'series_list', '4'),
(1830, 192, '_series_list', 'field_61af8abe08915'),
(1831, 192, 'design_suptitle', 'FUNCTIONAL DESIGN'),
(1832, 192, '_design_suptitle', 'field_61af8b340891b'),
(1833, 192, 'design_title', 'More Features. More Protection.'),
(1834, 192, '_design_title', 'field_61af8b2e0891a'),
(1835, 192, 'design_img', '163'),
(1836, 192, '_design_img', 'field_61af8b520891c'),
(1837, 192, 'portability_suptitle', 'easy portability'),
(1838, 192, '_portability_suptitle', 'field_61af8ba10891f'),
(1839, 192, 'portability_title', '180 Belt Clip.'),
(1840, 192, '_portability_title', 'field_61af8ba408920'),
(1841, 192, 'portability_img', '165'),
(1842, 192, '_portability_img', 'field_61af8bcb08921'),
(1843, 192, 'features_suptitle', 'Quality Cases'),
(1844, 192, '_features_suptitle', 'field_61af8c1108923'),
(1845, 192, 'features_title', 'Extra Features for Your Comfort'),
(1846, 192, '_features_title', 'field_61af8c1408924'),
(1847, 192, 'features_list', '4'),
(1848, 192, '_features_list', 'field_61af8c2f08926'),
(1849, 192, 'features_video', '188'),
(1850, 192, '_features_video', 'field_61af8c7e0892a'),
(1851, 192, 'types_suptitle', 'BUILT-IN FEATURES'),
(1852, 192, '_types_suptitle', 'field_61af8ccc0892c'),
(1853, 192, 'types_title', 'CHOOSE YOUR PHONE CASE'),
(1854, 192, '_types_title', 'field_61af8cce0892d'),
(1855, 192, 'brands_list', 'a:6:{i:0;s:3:\"181\";i:1;s:3:\"182\";i:2;s:3:\"183\";i:3;s:3:\"184\";i:4;s:3:\"185\";i:5;s:3:\"186\";}'),
(1856, 192, '_brands_list', 'field_61af8de30892f'),
(1857, 192, 'reviews_suptitle', 'CUSTOMER REVIEWS'),
(1858, 192, '_reviews_suptitle', 'field_61af8e1308932'),
(1859, 192, 'reviews_title', 'Reviews'),
(1860, 192, '_reviews_title', 'field_61af8e1608933'),
(1861, 192, 'about_title', 'ABOUT ROME TECH'),
(1862, 192, '_about_title', 'field_61af943608935'),
(1863, 192, 'about_text', '<b>Bringing People &amp; Technology Together</b>\r\n\r\nShellHolster.com thrives off of your 100% satisfaction. Our phone cases website wouldn’t exist today if our customers weren’t happy with the products and services we provide. Our skilled Customer Happiness reps are available to help with any questions about our products, billing, transactions, or even for a casual hello. We know how it feels to be frustrated with products that don’t fit, don’t look like they were described, or receiving broken items in the mail, which is why we offer a 100% satisfaction guarantee. Message Us for ANY reason and we’ll take care of the issue as fast as we can.'),
(1864, 192, '_about_text', 'field_61af944e08937'),
(1865, 192, 'about_button', 'a:3:{s:5:\"title\";s:9:\"Read more\";s:3:\"url\";s:26:\"http://shellholster/about/\";s:6:\"target\";s:0:\"\";}'),
(1866, 192, '_about_button', 'field_61af946408938'),
(1867, 192, 'series_list_0_title', 'Shell Holster'),
(1868, 192, '_series_list_0_title', 'field_61af8aeb08918'),
(1869, 192, 'series_list_0_image', '158'),
(1870, 192, '_series_list_0_image', 'field_61af8abe08916'),
(1871, 192, 'series_list_0_link', 'a:3:{s:5:\"title\";s:9:\"Read more\";s:3:\"url\";s:25:\"http://shellholster/shop/\";s:6:\"target\";s:0:\"\";}'),
(1872, 192, '_series_list_0_link', 'field_61af8abe08917'),
(1873, 192, 'series_list_1_title', 'Defender'),
(1874, 192, '_series_list_1_title', 'field_61af8aeb08918'),
(1875, 192, 'series_list_1_image', '155'),
(1876, 192, '_series_list_1_image', 'field_61af8abe08916'),
(1877, 192, 'series_list_1_link', 'a:3:{s:5:\"title\";s:9:\"Read more\";s:3:\"url\";s:6:\"/shop/\";s:6:\"target\";s:0:\"\";}'),
(1878, 192, '_series_list_1_link', 'field_61af8abe08917'),
(1879, 192, 'series_list_2_title', 'Dual Layer Card Holder'),
(1880, 192, '_series_list_2_title', 'field_61af8aeb08918'),
(1881, 192, 'series_list_2_image', '157'),
(1882, 192, '_series_list_2_image', 'field_61af8abe08916'),
(1883, 192, 'series_list_2_link', 'a:3:{s:5:\"title\";s:9:\"Read more\";s:3:\"url\";s:6:\"/shop/\";s:6:\"target\";s:0:\"\";}'),
(1884, 192, '_series_list_2_link', 'field_61af8abe08917'),
(1885, 192, 'series_list_3_title', 'Dual Layer Card Slot'),
(1886, 192, '_series_list_3_title', 'field_61af8aeb08918'),
(1887, 192, 'series_list_3_image', '156'),
(1888, 192, '_series_list_3_image', 'field_61af8abe08916'),
(1889, 192, 'series_list_3_link', 'a:3:{s:5:\"title\";s:9:\"Read more\";s:3:\"url\";s:6:\"/shop/\";s:6:\"target\";s:0:\"\";}'),
(1890, 192, '_series_list_3_link', 'field_61af8abe08917'),
(1891, 192, 'series_list_0_text', 'Offers slim and lightweight 360-degree protection with a multi-angle kickstand'),
(1892, 192, '_series_list_0_text', 'field_61af9927be222'),
(1893, 192, 'series_list_1_text', ''),
(1894, 192, '_series_list_1_text', 'field_61af9927be222'),
(1895, 192, 'series_list_2_text', ''),
(1896, 192, '_series_list_2_text', 'field_61af9927be222'),
(1897, 192, 'series_list_3_text', ''),
(1898, 192, '_series_list_3_text', 'field_61af9927be222'),
(1899, 192, 'features_list_0_title', 'Vertical Kickstand'),
(1900, 192, '_features_list_0_title', 'field_61af8c2f08927'),
(1901, 192, 'features_list_0_image', '170'),
(1902, 192, '_features_list_0_image', 'field_61af8c2f08928'),
(1903, 192, 'features_list_1_title', 'Easily Removable'),
(1904, 192, '_features_list_1_title', 'field_61af8c2f08927'),
(1905, 192, 'features_list_1_image', '169'),
(1906, 192, '_features_list_1_image', 'field_61af8c2f08928'),
(1907, 192, 'features_list_2_title', 'Wireless Charging'),
(1908, 192, '_features_list_2_title', 'field_61af8c2f08927'),
(1909, 192, 'features_list_2_image', '167'),
(1910, 192, '_features_list_2_image', 'field_61af8c2f08928'),
(1911, 192, 'features_list_3_title', 'Horizontal Kickstand'),
(1912, 192, '_features_list_3_title', 'field_61af8c2f08927'),
(1913, 192, 'features_list_3_image', '168'),
(1914, 192, '_features_list_3_image', 'field_61af8c2f08928'),
(1915, 192, 'reviews_list_0_title', 'Perfect Item!'),
(1916, 192, '_reviews_list_0_title', 'field_61b0968d5d44c'),
(1917, 192, 'reviews_list_0_text', 'The item was perfect. It was easy to use and a perfect fit for my husband use on his belt or pocket.'),
(1918, 192, '_reviews_list_0_text', 'field_61b096965d44d'),
(1919, 192, 'reviews_list_0_rating', '5'),
(1920, 192, '_reviews_list_0_rating', 'field_61b096b05d44e'),
(1921, 192, 'reviews_list_0_button', 'a:3:{s:5:\"title\";s:12:\"View product\";s:3:\"url\";s:68:\"http://shellholster/product/google-pixel-6-shell-holster-combo-case/\";s:6:\"target\";s:0:\"\";}'),
(1922, 192, '_reviews_list_0_button', 'field_61b0977b5d44f'),
(1923, 192, 'reviews_list_1_title', 'Fits the phone perfectly!'),
(1924, 192, '_reviews_list_1_title', 'field_61b0968d5d44c'),
(1925, 192, 'reviews_list_1_text', 'It fits the phone perfectly, is very secure, slides in &amp; out of the holster easily and keeps the screen from touching when placed face down on a flat surface. '),
(1926, 192, '_reviews_list_1_text', 'field_61b096965d44d'),
(1927, 192, 'reviews_list_1_rating', '5'),
(1928, 192, '_reviews_list_1_rating', 'field_61b096b05d44e'),
(1929, 192, 'reviews_list_1_button', 'a:3:{s:5:\"title\";s:12:\"View product\";s:3:\"url\";s:68:\"http://shellholster/product/google-pixel-6-shell-holster-combo-case/\";s:6:\"target\";s:0:\"\";}'),
(1930, 192, '_reviews_list_1_button', 'field_61b0977b5d44f'),
(1931, 192, 'reviews_list_2_title', 'Good quality'),
(1932, 192, '_reviews_list_2_title', 'field_61b0968d5d44c'),
(1933, 192, 'reviews_list_2_text', 'Good quality price decent clip work good'),
(1934, 192, '_reviews_list_2_text', 'field_61b096965d44d'),
(1935, 192, 'reviews_list_2_rating', '4'),
(1936, 192, '_reviews_list_2_rating', 'field_61b096b05d44e'),
(1937, 192, 'reviews_list_2_button', 'a:3:{s:5:\"title\";s:12:\"View product\";s:3:\"url\";s:68:\"http://shellholster/product/google-pixel-6-shell-holster-combo-case/\";s:6:\"target\";s:0:\"\";}'),
(1938, 192, '_reviews_list_2_button', 'field_61b0977b5d44f'),
(1939, 192, 'reviews_list', '3'),
(1940, 192, '_reviews_list', 'field_61b096725d44a'),
(1941, 192, 'reviews_list_0_author', 'Gladys'),
(1942, 192, '_reviews_list_0_author', 'field_61b09959065fb'),
(1943, 192, 'reviews_list_1_author', 'Andy'),
(1944, 192, '_reviews_list_1_author', 'field_61b09959065fb'),
(1945, 192, 'reviews_list_2_author', 'Handy'),
(1946, 192, '_reviews_list_2_author', 'field_61b09959065fb'),
(1947, 192, 'features_preview', '191'),
(1948, 192, '_features_preview', 'field_61b0da508f25b'),
(1949, 2, 'filters_suptitle', 'BUY SHELL HOLSTER CASE'),
(1950, 2, '_filters_suptitle', 'field_61b0e4623eac7'),
(1951, 2, 'filters_title', 'Experience the New Kind of Phone Usability'),
(1952, 2, '_filters_title', 'field_61b0e46b3eac9'),
(1953, 196, 'hero_slider_0_image', '35'),
(1954, 196, '_hero_slider_0_image', 'field_61adf3c451df5'),
(1955, 196, 'hero_slider_1_image', '34'),
(1956, 196, '_hero_slider_1_image', 'field_61adf3c451df5'),
(1957, 196, 'hero_slider', '2'),
(1958, 196, '_hero_slider', 'field_61adf3a651df4'),
(1959, 196, 'hero_slider_0_link', 'a:3:{s:5:\"title\";s:4:\"Shop\";s:3:\"url\";s:25:\"http://shellholster/shop/\";s:6:\"target\";s:0:\"\";}'),
(1960, 196, '_hero_slider_0_link', 'field_61adf6d0aeb08'),
(1961, 196, 'hero_slider_1_link', ''),
(1962, 196, '_hero_slider_1_link', 'field_61adf6d0aeb08'),
(1963, 196, 'cases_title', 'Use Only Best Phones Cases'),
(1964, 196, '_cases_title', 'field_61af89d008910'),
(1965, 196, 'cases_text', 'The Shell Holster Combo it is best case for cell phone. It is durable, sturdy. It provides high protection and improves the phone usability. It defends your gadget from dirt, dust, moisture and scratches thanks to our rubberized holster. Using new technologies makes it possible to increase the safety of the device in case of a fall. Using a 180-degree rotatable holster with a ratchet clip will provide comfortable wearing, great fit and convenient positioning. The highest quality of rubberized texture provides a secure grip on your phone. With the built-in kickstand, you can place your mobile phone horizontally or vertically for video calls or watching multimedia. All holes are fully compatible with buttons, sensors and cameras. Supports wireless charging. Based on all the characteristics, our holster can stand on a par with the best phone case in the world.'),
(1966, 196, '_cases_text', 'field_61af8a0e08911'),
(1967, 196, 'cases_button', 'a:3:{s:5:\"title\";s:9:\"Read more\";s:3:\"url\";s:6:\"/shop/\";s:6:\"target\";s:0:\"\";}'),
(1968, 196, '_cases_button', 'field_61af8a2808912'),
(1969, 196, 'series_suptitle', 'CASE SERIES'),
(1970, 196, '_series_suptitle', 'field_61af8a7808914'),
(1971, 196, 'series_title', 'Choose Your Functionality.'),
(1972, 196, '_series_title', 'field_61af8a5608913'),
(1973, 196, 'series_list', '4'),
(1974, 196, '_series_list', 'field_61af8abe08915'),
(1975, 196, 'design_suptitle', 'FUNCTIONAL DESIGN'),
(1976, 196, '_design_suptitle', 'field_61af8b340891b'),
(1977, 196, 'design_title', 'More Features. More Protection.'),
(1978, 196, '_design_title', 'field_61af8b2e0891a'),
(1979, 196, 'design_img', '163'),
(1980, 196, '_design_img', 'field_61af8b520891c'),
(1981, 196, 'portability_suptitle', 'easy portability'),
(1982, 196, '_portability_suptitle', 'field_61af8ba10891f'),
(1983, 196, 'portability_title', '180 Belt Clip.'),
(1984, 196, '_portability_title', 'field_61af8ba408920'),
(1985, 196, 'portability_img', '165'),
(1986, 196, '_portability_img', 'field_61af8bcb08921'),
(1987, 196, 'features_suptitle', 'Quality Cases'),
(1988, 196, '_features_suptitle', 'field_61af8c1108923'),
(1989, 196, 'features_title', 'Extra Features for Your Comfort'),
(1990, 196, '_features_title', 'field_61af8c1408924'),
(1991, 196, 'features_list', '4'),
(1992, 196, '_features_list', 'field_61af8c2f08926'),
(1993, 196, 'features_video', '188'),
(1994, 196, '_features_video', 'field_61af8c7e0892a'),
(1995, 196, 'types_suptitle', 'BUILT-IN FEATURES'),
(1996, 196, '_types_suptitle', 'field_61af8ccc0892c'),
(1997, 196, 'types_title', 'CHOOSE YOUR PHONE CASE'),
(1998, 196, '_types_title', 'field_61af8cce0892d'),
(1999, 196, 'brands_list', 'a:6:{i:0;s:3:\"181\";i:1;s:3:\"182\";i:2;s:3:\"183\";i:3;s:3:\"184\";i:4;s:3:\"185\";i:5;s:3:\"186\";}'),
(2000, 196, '_brands_list', 'field_61af8de30892f'),
(2001, 196, 'reviews_suptitle', 'CUSTOMER REVIEWS'),
(2002, 196, '_reviews_suptitle', 'field_61af8e1308932'),
(2003, 196, 'reviews_title', 'Reviews'),
(2004, 196, '_reviews_title', 'field_61af8e1608933'),
(2005, 196, 'about_title', 'ABOUT ROME TECH'),
(2006, 196, '_about_title', 'field_61af943608935'),
(2007, 196, 'about_text', '<b>Bringing People &amp; Technology Together</b>\r\n\r\nShellHolster.com thrives off of your 100% satisfaction. Our phone cases website wouldn’t exist today if our customers weren’t happy with the products and services we provide. Our skilled Customer Happiness reps are available to help with any questions about our products, billing, transactions, or even for a casual hello. We know how it feels to be frustrated with products that don’t fit, don’t look like they were described, or receiving broken items in the mail, which is why we offer a 100% satisfaction guarantee. Message Us for ANY reason and we’ll take care of the issue as fast as we can.'),
(2008, 196, '_about_text', 'field_61af944e08937'),
(2009, 196, 'about_button', 'a:3:{s:5:\"title\";s:9:\"Read more\";s:3:\"url\";s:26:\"http://shellholster/about/\";s:6:\"target\";s:0:\"\";}'),
(2010, 196, '_about_button', 'field_61af946408938'),
(2011, 196, 'series_list_0_title', 'Shell Holster'),
(2012, 196, '_series_list_0_title', 'field_61af8aeb08918'),
(2013, 196, 'series_list_0_image', '158'),
(2014, 196, '_series_list_0_image', 'field_61af8abe08916'),
(2015, 196, 'series_list_0_link', 'a:3:{s:5:\"title\";s:9:\"Read more\";s:3:\"url\";s:25:\"http://shellholster/shop/\";s:6:\"target\";s:0:\"\";}'),
(2016, 196, '_series_list_0_link', 'field_61af8abe08917'),
(2017, 196, 'series_list_1_title', 'Defender'),
(2018, 196, '_series_list_1_title', 'field_61af8aeb08918'),
(2019, 196, 'series_list_1_image', '155'),
(2020, 196, '_series_list_1_image', 'field_61af8abe08916'),
(2021, 196, 'series_list_1_link', 'a:3:{s:5:\"title\";s:9:\"Read more\";s:3:\"url\";s:6:\"/shop/\";s:6:\"target\";s:0:\"\";}'),
(2022, 196, '_series_list_1_link', 'field_61af8abe08917'),
(2023, 196, 'series_list_2_title', 'Dual Layer Card Holder'),
(2024, 196, '_series_list_2_title', 'field_61af8aeb08918'),
(2025, 196, 'series_list_2_image', '157'),
(2026, 196, '_series_list_2_image', 'field_61af8abe08916'),
(2027, 196, 'series_list_2_link', 'a:3:{s:5:\"title\";s:9:\"Read more\";s:3:\"url\";s:6:\"/shop/\";s:6:\"target\";s:0:\"\";}'),
(2028, 196, '_series_list_2_link', 'field_61af8abe08917'),
(2029, 196, 'series_list_3_title', 'Dual Layer Card Slot'),
(2030, 196, '_series_list_3_title', 'field_61af8aeb08918'),
(2031, 196, 'series_list_3_image', '156'),
(2032, 196, '_series_list_3_image', 'field_61af8abe08916'),
(2033, 196, 'series_list_3_link', 'a:3:{s:5:\"title\";s:9:\"Read more\";s:3:\"url\";s:6:\"/shop/\";s:6:\"target\";s:0:\"\";}'),
(2034, 196, '_series_list_3_link', 'field_61af8abe08917'),
(2035, 196, 'series_list_0_text', 'Offers slim and lightweight 360-degree protection with a multi-angle kickstand'),
(2036, 196, '_series_list_0_text', 'field_61af9927be222'),
(2037, 196, 'series_list_1_text', ''),
(2038, 196, '_series_list_1_text', 'field_61af9927be222'),
(2039, 196, 'series_list_2_text', ''),
(2040, 196, '_series_list_2_text', 'field_61af9927be222'),
(2041, 196, 'series_list_3_text', ''),
(2042, 196, '_series_list_3_text', 'field_61af9927be222'),
(2043, 196, 'features_list_0_title', 'Vertical Kickstand'),
(2044, 196, '_features_list_0_title', 'field_61af8c2f08927'),
(2045, 196, 'features_list_0_image', '170'),
(2046, 196, '_features_list_0_image', 'field_61af8c2f08928'),
(2047, 196, 'features_list_1_title', 'Easily Removable'),
(2048, 196, '_features_list_1_title', 'field_61af8c2f08927'),
(2049, 196, 'features_list_1_image', '169'),
(2050, 196, '_features_list_1_image', 'field_61af8c2f08928'),
(2051, 196, 'features_list_2_title', 'Wireless Charging'),
(2052, 196, '_features_list_2_title', 'field_61af8c2f08927'),
(2053, 196, 'features_list_2_image', '167'),
(2054, 196, '_features_list_2_image', 'field_61af8c2f08928'),
(2055, 196, 'features_list_3_title', 'Horizontal Kickstand'),
(2056, 196, '_features_list_3_title', 'field_61af8c2f08927'),
(2057, 196, 'features_list_3_image', '168'),
(2058, 196, '_features_list_3_image', 'field_61af8c2f08928'),
(2059, 196, 'reviews_list_0_title', 'Perfect Item!'),
(2060, 196, '_reviews_list_0_title', 'field_61b0968d5d44c'),
(2061, 196, 'reviews_list_0_text', 'The item was perfect. It was easy to use and a perfect fit for my husband use on his belt or pocket.'),
(2062, 196, '_reviews_list_0_text', 'field_61b096965d44d'),
(2063, 196, 'reviews_list_0_rating', '5'),
(2064, 196, '_reviews_list_0_rating', 'field_61b096b05d44e'),
(2065, 196, 'reviews_list_0_button', 'a:3:{s:5:\"title\";s:12:\"View product\";s:3:\"url\";s:68:\"http://shellholster/product/google-pixel-6-shell-holster-combo-case/\";s:6:\"target\";s:0:\"\";}'),
(2066, 196, '_reviews_list_0_button', 'field_61b0977b5d44f'),
(2067, 196, 'reviews_list_1_title', 'Fits the phone perfectly!'),
(2068, 196, '_reviews_list_1_title', 'field_61b0968d5d44c'),
(2069, 196, 'reviews_list_1_text', 'It fits the phone perfectly, is very secure, slides in &amp; out of the holster easily and keeps the screen from touching when placed face down on a flat surface. '),
(2070, 196, '_reviews_list_1_text', 'field_61b096965d44d'),
(2071, 196, 'reviews_list_1_rating', '5'),
(2072, 196, '_reviews_list_1_rating', 'field_61b096b05d44e'),
(2073, 196, 'reviews_list_1_button', 'a:3:{s:5:\"title\";s:12:\"View product\";s:3:\"url\";s:68:\"http://shellholster/product/google-pixel-6-shell-holster-combo-case/\";s:6:\"target\";s:0:\"\";}'),
(2074, 196, '_reviews_list_1_button', 'field_61b0977b5d44f'),
(2075, 196, 'reviews_list_2_title', 'Good quality'),
(2076, 196, '_reviews_list_2_title', 'field_61b0968d5d44c'),
(2077, 196, 'reviews_list_2_text', 'Good quality price decent clip work good'),
(2078, 196, '_reviews_list_2_text', 'field_61b096965d44d'),
(2079, 196, 'reviews_list_2_rating', '4'),
(2080, 196, '_reviews_list_2_rating', 'field_61b096b05d44e'),
(2081, 196, 'reviews_list_2_button', 'a:3:{s:5:\"title\";s:12:\"View product\";s:3:\"url\";s:68:\"http://shellholster/product/google-pixel-6-shell-holster-combo-case/\";s:6:\"target\";s:0:\"\";}'),
(2082, 196, '_reviews_list_2_button', 'field_61b0977b5d44f'),
(2083, 196, 'reviews_list', '3'),
(2084, 196, '_reviews_list', 'field_61b096725d44a'),
(2085, 196, 'reviews_list_0_author', 'Gladys'),
(2086, 196, '_reviews_list_0_author', 'field_61b09959065fb'),
(2087, 196, 'reviews_list_1_author', 'Andy'),
(2088, 196, '_reviews_list_1_author', 'field_61b09959065fb'),
(2089, 196, 'reviews_list_2_author', 'Handy'),
(2090, 196, '_reviews_list_2_author', 'field_61b09959065fb'),
(2091, 196, 'features_preview', '191'),
(2092, 196, '_features_preview', 'field_61b0da508f25b'),
(2093, 196, 'filters_suptitle', 'BUY SHELL HOLSTER CASE'),
(2094, 196, '_filters_suptitle', 'field_61b0e4623eac7'),
(2095, 196, 'filters_title', 'Experience the New Kind of Phone Usability'),
(2096, 196, '_filters_title', 'field_61b0e46b3eac9'),
(2097, 2, 'to_store_suptitle', 'FOR MORE CASES'),
(2098, 2, '_to_store_suptitle', 'field_61b0eb6a4ea57'),
(2099, 2, 'to_store_title', 'Go to Store'),
(2100, 2, '_to_store_title', 'field_61b0eb794ea58'),
(2101, 2, 'to_store_button', 'a:3:{s:5:\"title\";s:8:\"Shop now\";s:3:\"url\";s:25:\"http://shellholster/shop/\";s:6:\"target\";s:0:\"\";}'),
(2102, 2, '_to_store_button', 'field_61b0eb864ea59'),
(2103, 201, 'hero_slider_0_image', '35'),
(2104, 201, '_hero_slider_0_image', 'field_61adf3c451df5'),
(2105, 201, 'hero_slider_1_image', '34'),
(2106, 201, '_hero_slider_1_image', 'field_61adf3c451df5'),
(2107, 201, 'hero_slider', '2'),
(2108, 201, '_hero_slider', 'field_61adf3a651df4'),
(2109, 201, 'hero_slider_0_link', 'a:3:{s:5:\"title\";s:4:\"Shop\";s:3:\"url\";s:25:\"http://shellholster/shop/\";s:6:\"target\";s:0:\"\";}'),
(2110, 201, '_hero_slider_0_link', 'field_61adf6d0aeb08'),
(2111, 201, 'hero_slider_1_link', ''),
(2112, 201, '_hero_slider_1_link', 'field_61adf6d0aeb08'),
(2113, 201, 'cases_title', 'Use Only Best Phones Cases'),
(2114, 201, '_cases_title', 'field_61af89d008910'),
(2115, 201, 'cases_text', 'The Shell Holster Combo it is best case for cell phone. It is durable, sturdy. It provides high protection and improves the phone usability. It defends your gadget from dirt, dust, moisture and scratches thanks to our rubberized holster. Using new technologies makes it possible to increase the safety of the device in case of a fall. Using a 180-degree rotatable holster with a ratchet clip will provide comfortable wearing, great fit and convenient positioning. The highest quality of rubberized texture provides a secure grip on your phone. With the built-in kickstand, you can place your mobile phone horizontally or vertically for video calls or watching multimedia. All holes are fully compatible with buttons, sensors and cameras. Supports wireless charging. Based on all the characteristics, our holster can stand on a par with the best phone case in the world.'),
(2116, 201, '_cases_text', 'field_61af8a0e08911'),
(2117, 201, 'cases_button', 'a:3:{s:5:\"title\";s:9:\"Read more\";s:3:\"url\";s:6:\"/shop/\";s:6:\"target\";s:0:\"\";}'),
(2118, 201, '_cases_button', 'field_61af8a2808912'),
(2119, 201, 'series_suptitle', 'CASE SERIES'),
(2120, 201, '_series_suptitle', 'field_61af8a7808914'),
(2121, 201, 'series_title', 'Choose Your Functionality.'),
(2122, 201, '_series_title', 'field_61af8a5608913'),
(2123, 201, 'series_list', '4'),
(2124, 201, '_series_list', 'field_61af8abe08915'),
(2125, 201, 'design_suptitle', 'FUNCTIONAL DESIGN'),
(2126, 201, '_design_suptitle', 'field_61af8b340891b'),
(2127, 201, 'design_title', 'More Features. More Protection.'),
(2128, 201, '_design_title', 'field_61af8b2e0891a'),
(2129, 201, 'design_img', '163'),
(2130, 201, '_design_img', 'field_61af8b520891c'),
(2131, 201, 'portability_suptitle', 'easy portability'),
(2132, 201, '_portability_suptitle', 'field_61af8ba10891f'),
(2133, 201, 'portability_title', '180 Belt Clip.'),
(2134, 201, '_portability_title', 'field_61af8ba408920'),
(2135, 201, 'portability_img', '165'),
(2136, 201, '_portability_img', 'field_61af8bcb08921'),
(2137, 201, 'features_suptitle', 'Quality Cases'),
(2138, 201, '_features_suptitle', 'field_61af8c1108923'),
(2139, 201, 'features_title', 'Extra Features for Your Comfort'),
(2140, 201, '_features_title', 'field_61af8c1408924'),
(2141, 201, 'features_list', '4'),
(2142, 201, '_features_list', 'field_61af8c2f08926'),
(2143, 201, 'features_video', '188'),
(2144, 201, '_features_video', 'field_61af8c7e0892a'),
(2145, 201, 'types_suptitle', 'BUILT-IN FEATURES'),
(2146, 201, '_types_suptitle', 'field_61af8ccc0892c'),
(2147, 201, 'types_title', 'CHOOSE YOUR PHONE CASE'),
(2148, 201, '_types_title', 'field_61af8cce0892d'),
(2149, 201, 'brands_list', 'a:6:{i:0;s:3:\"181\";i:1;s:3:\"182\";i:2;s:3:\"183\";i:3;s:3:\"184\";i:4;s:3:\"185\";i:5;s:3:\"186\";}'),
(2150, 201, '_brands_list', 'field_61af8de30892f'),
(2151, 201, 'reviews_suptitle', 'CUSTOMER REVIEWS'),
(2152, 201, '_reviews_suptitle', 'field_61af8e1308932'),
(2153, 201, 'reviews_title', 'Reviews'),
(2154, 201, '_reviews_title', 'field_61af8e1608933'),
(2155, 201, 'about_title', 'ABOUT ROME TECH'),
(2156, 201, '_about_title', 'field_61af943608935'),
(2157, 201, 'about_text', '<b>Bringing People &amp; Technology Together</b>\r\n\r\nShellHolster.com thrives off of your 100% satisfaction. Our phone cases website wouldn’t exist today if our customers weren’t happy with the products and services we provide. Our skilled Customer Happiness reps are available to help with any questions about our products, billing, transactions, or even for a casual hello. We know how it feels to be frustrated with products that don’t fit, don’t look like they were described, or receiving broken items in the mail, which is why we offer a 100% satisfaction guarantee. Message Us for ANY reason and we’ll take care of the issue as fast as we can.'),
(2158, 201, '_about_text', 'field_61af944e08937'),
(2159, 201, 'about_button', 'a:3:{s:5:\"title\";s:9:\"Read more\";s:3:\"url\";s:26:\"http://shellholster/about/\";s:6:\"target\";s:0:\"\";}'),
(2160, 201, '_about_button', 'field_61af946408938'),
(2161, 201, 'series_list_0_title', 'Shell Holster'),
(2162, 201, '_series_list_0_title', 'field_61af8aeb08918'),
(2163, 201, 'series_list_0_image', '158'),
(2164, 201, '_series_list_0_image', 'field_61af8abe08916'),
(2165, 201, 'series_list_0_link', 'a:3:{s:5:\"title\";s:9:\"Read more\";s:3:\"url\";s:25:\"http://shellholster/shop/\";s:6:\"target\";s:0:\"\";}'),
(2166, 201, '_series_list_0_link', 'field_61af8abe08917'),
(2167, 201, 'series_list_1_title', 'Defender'),
(2168, 201, '_series_list_1_title', 'field_61af8aeb08918'),
(2169, 201, 'series_list_1_image', '155'),
(2170, 201, '_series_list_1_image', 'field_61af8abe08916'),
(2171, 201, 'series_list_1_link', 'a:3:{s:5:\"title\";s:9:\"Read more\";s:3:\"url\";s:6:\"/shop/\";s:6:\"target\";s:0:\"\";}'),
(2172, 201, '_series_list_1_link', 'field_61af8abe08917'),
(2173, 201, 'series_list_2_title', 'Dual Layer Card Holder'),
(2174, 201, '_series_list_2_title', 'field_61af8aeb08918'),
(2175, 201, 'series_list_2_image', '157'),
(2176, 201, '_series_list_2_image', 'field_61af8abe08916'),
(2177, 201, 'series_list_2_link', 'a:3:{s:5:\"title\";s:9:\"Read more\";s:3:\"url\";s:6:\"/shop/\";s:6:\"target\";s:0:\"\";}'),
(2178, 201, '_series_list_2_link', 'field_61af8abe08917'),
(2179, 201, 'series_list_3_title', 'Dual Layer Card Slot'),
(2180, 201, '_series_list_3_title', 'field_61af8aeb08918'),
(2181, 201, 'series_list_3_image', '156'),
(2182, 201, '_series_list_3_image', 'field_61af8abe08916'),
(2183, 201, 'series_list_3_link', 'a:3:{s:5:\"title\";s:9:\"Read more\";s:3:\"url\";s:6:\"/shop/\";s:6:\"target\";s:0:\"\";}'),
(2184, 201, '_series_list_3_link', 'field_61af8abe08917'),
(2185, 201, 'series_list_0_text', 'Offers slim and lightweight 360-degree protection with a multi-angle kickstand'),
(2186, 201, '_series_list_0_text', 'field_61af9927be222'),
(2187, 201, 'series_list_1_text', ''),
(2188, 201, '_series_list_1_text', 'field_61af9927be222'),
(2189, 201, 'series_list_2_text', ''),
(2190, 201, '_series_list_2_text', 'field_61af9927be222'),
(2191, 201, 'series_list_3_text', ''),
(2192, 201, '_series_list_3_text', 'field_61af9927be222'),
(2193, 201, 'features_list_0_title', 'Vertical Kickstand'),
(2194, 201, '_features_list_0_title', 'field_61af8c2f08927'),
(2195, 201, 'features_list_0_image', '170'),
(2196, 201, '_features_list_0_image', 'field_61af8c2f08928'),
(2197, 201, 'features_list_1_title', 'Easily Removable'),
(2198, 201, '_features_list_1_title', 'field_61af8c2f08927'),
(2199, 201, 'features_list_1_image', '169'),
(2200, 201, '_features_list_1_image', 'field_61af8c2f08928'),
(2201, 201, 'features_list_2_title', 'Wireless Charging'),
(2202, 201, '_features_list_2_title', 'field_61af8c2f08927'),
(2203, 201, 'features_list_2_image', '167'),
(2204, 201, '_features_list_2_image', 'field_61af8c2f08928'),
(2205, 201, 'features_list_3_title', 'Horizontal Kickstand'),
(2206, 201, '_features_list_3_title', 'field_61af8c2f08927'),
(2207, 201, 'features_list_3_image', '168'),
(2208, 201, '_features_list_3_image', 'field_61af8c2f08928'),
(2209, 201, 'reviews_list_0_title', 'Perfect Item!'),
(2210, 201, '_reviews_list_0_title', 'field_61b0968d5d44c'),
(2211, 201, 'reviews_list_0_text', 'The item was perfect. It was easy to use and a perfect fit for my husband use on his belt or pocket.'),
(2212, 201, '_reviews_list_0_text', 'field_61b096965d44d'),
(2213, 201, 'reviews_list_0_rating', '5'),
(2214, 201, '_reviews_list_0_rating', 'field_61b096b05d44e'),
(2215, 201, 'reviews_list_0_button', 'a:3:{s:5:\"title\";s:12:\"View product\";s:3:\"url\";s:68:\"http://shellholster/product/google-pixel-6-shell-holster-combo-case/\";s:6:\"target\";s:0:\"\";}'),
(2216, 201, '_reviews_list_0_button', 'field_61b0977b5d44f'),
(2217, 201, 'reviews_list_1_title', 'Fits the phone perfectly!'),
(2218, 201, '_reviews_list_1_title', 'field_61b0968d5d44c'),
(2219, 201, 'reviews_list_1_text', 'It fits the phone perfectly, is very secure, slides in &amp; out of the holster easily and keeps the screen from touching when placed face down on a flat surface. '),
(2220, 201, '_reviews_list_1_text', 'field_61b096965d44d'),
(2221, 201, 'reviews_list_1_rating', '5'),
(2222, 201, '_reviews_list_1_rating', 'field_61b096b05d44e'),
(2223, 201, 'reviews_list_1_button', 'a:3:{s:5:\"title\";s:12:\"View product\";s:3:\"url\";s:68:\"http://shellholster/product/google-pixel-6-shell-holster-combo-case/\";s:6:\"target\";s:0:\"\";}'),
(2224, 201, '_reviews_list_1_button', 'field_61b0977b5d44f'),
(2225, 201, 'reviews_list_2_title', 'Good quality'),
(2226, 201, '_reviews_list_2_title', 'field_61b0968d5d44c'),
(2227, 201, 'reviews_list_2_text', 'Good quality price decent clip work good'),
(2228, 201, '_reviews_list_2_text', 'field_61b096965d44d'),
(2229, 201, 'reviews_list_2_rating', '4'),
(2230, 201, '_reviews_list_2_rating', 'field_61b096b05d44e'),
(2231, 201, 'reviews_list_2_button', 'a:3:{s:5:\"title\";s:12:\"View product\";s:3:\"url\";s:68:\"http://shellholster/product/google-pixel-6-shell-holster-combo-case/\";s:6:\"target\";s:0:\"\";}'),
(2232, 201, '_reviews_list_2_button', 'field_61b0977b5d44f'),
(2233, 201, 'reviews_list', '3'),
(2234, 201, '_reviews_list', 'field_61b096725d44a'),
(2235, 201, 'reviews_list_0_author', 'Gladys'),
(2236, 201, '_reviews_list_0_author', 'field_61b09959065fb'),
(2237, 201, 'reviews_list_1_author', 'Andy'),
(2238, 201, '_reviews_list_1_author', 'field_61b09959065fb'),
(2239, 201, 'reviews_list_2_author', 'Handy'),
(2240, 201, '_reviews_list_2_author', 'field_61b09959065fb'),
(2241, 201, 'features_preview', '191'),
(2242, 201, '_features_preview', 'field_61b0da508f25b'),
(2243, 201, 'filters_suptitle', 'BUY SHELL HOLSTER CASE'),
(2244, 201, '_filters_suptitle', 'field_61b0e4623eac7'),
(2245, 201, 'filters_title', 'Experience the New Kind of Phone Usability'),
(2246, 201, '_filters_title', 'field_61b0e46b3eac9'),
(2247, 201, 'to_store_suptitle', 'FOR MORE CASES'),
(2248, 201, '_to_store_suptitle', 'field_61b0eb6a4ea57'),
(2249, 201, 'to_store_title', 'Go to Store'),
(2250, 201, '_to_store_title', 'field_61b0eb794ea58'),
(2251, 201, 'to_store_button', 'a:3:{s:5:\"title\";s:8:\"Shop now\";s:3:\"url\";s:25:\"http://shellholster/shop/\";s:6:\"target\";s:0:\"\";}'),
(2252, 201, '_to_store_button', 'field_61b0eb864ea59'),
(2253, 203, '_wp_attached_file', '2021/12/gotoStore.png');
INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(2254, 203, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:534;s:4:\"file\";s:21:\"2021/12/gotoStore.png\";s:5:\"sizes\";a:11:{s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"gotoStore-300x83.png\";s:5:\"width\";i:300;s:6:\"height\";i:83;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:22:\"gotoStore-1024x285.png\";s:5:\"width\";i:1024;s:6:\"height\";i:285;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"gotoStore-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:21:\"gotoStore-768x214.png\";s:5:\"width\";i:768;s:6:\"height\";i:214;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:22:\"gotoStore-1536x427.png\";s:5:\"width\";i:1536;s:6:\"height\";i:427;s:9:\"mime-type\";s:9:\"image/png\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:21:\"gotoStore-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:20:\"gotoStore-300x83.png\";s:5:\"width\";i:300;s:6:\"height\";i:83;s:9:\"mime-type\";s:9:\"image/png\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:21:\"gotoStore-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:21:\"gotoStore-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:20:\"gotoStore-300x83.png\";s:5:\"width\";i:300;s:6:\"height\";i:83;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:21:\"gotoStore-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(2255, 2, 'to_store_bg', '203'),
(2256, 2, '_to_store_bg', 'field_61b0ec24ad35c'),
(2257, 204, 'hero_slider_0_image', '35'),
(2258, 204, '_hero_slider_0_image', 'field_61adf3c451df5'),
(2259, 204, 'hero_slider_1_image', '34'),
(2260, 204, '_hero_slider_1_image', 'field_61adf3c451df5'),
(2261, 204, 'hero_slider', '2'),
(2262, 204, '_hero_slider', 'field_61adf3a651df4'),
(2263, 204, 'hero_slider_0_link', 'a:3:{s:5:\"title\";s:4:\"Shop\";s:3:\"url\";s:25:\"http://shellholster/shop/\";s:6:\"target\";s:0:\"\";}'),
(2264, 204, '_hero_slider_0_link', 'field_61adf6d0aeb08'),
(2265, 204, 'hero_slider_1_link', ''),
(2266, 204, '_hero_slider_1_link', 'field_61adf6d0aeb08'),
(2267, 204, 'cases_title', 'Use Only Best Phones Cases'),
(2268, 204, '_cases_title', 'field_61af89d008910'),
(2269, 204, 'cases_text', 'The Shell Holster Combo it is best case for cell phone. It is durable, sturdy. It provides high protection and improves the phone usability. It defends your gadget from dirt, dust, moisture and scratches thanks to our rubberized holster. Using new technologies makes it possible to increase the safety of the device in case of a fall. Using a 180-degree rotatable holster with a ratchet clip will provide comfortable wearing, great fit and convenient positioning. The highest quality of rubberized texture provides a secure grip on your phone. With the built-in kickstand, you can place your mobile phone horizontally or vertically for video calls or watching multimedia. All holes are fully compatible with buttons, sensors and cameras. Supports wireless charging. Based on all the characteristics, our holster can stand on a par with the best phone case in the world.'),
(2270, 204, '_cases_text', 'field_61af8a0e08911'),
(2271, 204, 'cases_button', 'a:3:{s:5:\"title\";s:9:\"Read more\";s:3:\"url\";s:6:\"/shop/\";s:6:\"target\";s:0:\"\";}'),
(2272, 204, '_cases_button', 'field_61af8a2808912'),
(2273, 204, 'series_suptitle', 'CASE SERIES'),
(2274, 204, '_series_suptitle', 'field_61af8a7808914'),
(2275, 204, 'series_title', 'Choose Your Functionality.'),
(2276, 204, '_series_title', 'field_61af8a5608913'),
(2277, 204, 'series_list', '4'),
(2278, 204, '_series_list', 'field_61af8abe08915'),
(2279, 204, 'design_suptitle', 'FUNCTIONAL DESIGN'),
(2280, 204, '_design_suptitle', 'field_61af8b340891b'),
(2281, 204, 'design_title', 'More Features. More Protection.'),
(2282, 204, '_design_title', 'field_61af8b2e0891a'),
(2283, 204, 'design_img', '163'),
(2284, 204, '_design_img', 'field_61af8b520891c'),
(2285, 204, 'portability_suptitle', 'easy portability'),
(2286, 204, '_portability_suptitle', 'field_61af8ba10891f'),
(2287, 204, 'portability_title', '180 Belt Clip.'),
(2288, 204, '_portability_title', 'field_61af8ba408920'),
(2289, 204, 'portability_img', '165'),
(2290, 204, '_portability_img', 'field_61af8bcb08921'),
(2291, 204, 'features_suptitle', 'Quality Cases'),
(2292, 204, '_features_suptitle', 'field_61af8c1108923'),
(2293, 204, 'features_title', 'Extra Features for Your Comfort'),
(2294, 204, '_features_title', 'field_61af8c1408924'),
(2295, 204, 'features_list', '4'),
(2296, 204, '_features_list', 'field_61af8c2f08926'),
(2297, 204, 'features_video', '188'),
(2298, 204, '_features_video', 'field_61af8c7e0892a'),
(2299, 204, 'types_suptitle', 'BUILT-IN FEATURES'),
(2300, 204, '_types_suptitle', 'field_61af8ccc0892c'),
(2301, 204, 'types_title', 'CHOOSE YOUR PHONE CASE'),
(2302, 204, '_types_title', 'field_61af8cce0892d'),
(2303, 204, 'brands_list', 'a:6:{i:0;s:3:\"181\";i:1;s:3:\"182\";i:2;s:3:\"183\";i:3;s:3:\"184\";i:4;s:3:\"185\";i:5;s:3:\"186\";}'),
(2304, 204, '_brands_list', 'field_61af8de30892f'),
(2305, 204, 'reviews_suptitle', 'CUSTOMER REVIEWS'),
(2306, 204, '_reviews_suptitle', 'field_61af8e1308932'),
(2307, 204, 'reviews_title', 'Reviews'),
(2308, 204, '_reviews_title', 'field_61af8e1608933'),
(2309, 204, 'about_title', 'ABOUT ROME TECH'),
(2310, 204, '_about_title', 'field_61af943608935'),
(2311, 204, 'about_text', '<b>Bringing People &amp; Technology Together</b>\r\n\r\nShellHolster.com thrives off of your 100% satisfaction. Our phone cases website wouldn’t exist today if our customers weren’t happy with the products and services we provide. Our skilled Customer Happiness reps are available to help with any questions about our products, billing, transactions, or even for a casual hello. We know how it feels to be frustrated with products that don’t fit, don’t look like they were described, or receiving broken items in the mail, which is why we offer a 100% satisfaction guarantee. Message Us for ANY reason and we’ll take care of the issue as fast as we can.'),
(2312, 204, '_about_text', 'field_61af944e08937'),
(2313, 204, 'about_button', 'a:3:{s:5:\"title\";s:9:\"Read more\";s:3:\"url\";s:26:\"http://shellholster/about/\";s:6:\"target\";s:0:\"\";}'),
(2314, 204, '_about_button', 'field_61af946408938'),
(2315, 204, 'series_list_0_title', 'Shell Holster'),
(2316, 204, '_series_list_0_title', 'field_61af8aeb08918'),
(2317, 204, 'series_list_0_image', '158'),
(2318, 204, '_series_list_0_image', 'field_61af8abe08916'),
(2319, 204, 'series_list_0_link', 'a:3:{s:5:\"title\";s:9:\"Read more\";s:3:\"url\";s:25:\"http://shellholster/shop/\";s:6:\"target\";s:0:\"\";}'),
(2320, 204, '_series_list_0_link', 'field_61af8abe08917'),
(2321, 204, 'series_list_1_title', 'Defender'),
(2322, 204, '_series_list_1_title', 'field_61af8aeb08918'),
(2323, 204, 'series_list_1_image', '155'),
(2324, 204, '_series_list_1_image', 'field_61af8abe08916'),
(2325, 204, 'series_list_1_link', 'a:3:{s:5:\"title\";s:9:\"Read more\";s:3:\"url\";s:6:\"/shop/\";s:6:\"target\";s:0:\"\";}'),
(2326, 204, '_series_list_1_link', 'field_61af8abe08917'),
(2327, 204, 'series_list_2_title', 'Dual Layer Card Holder'),
(2328, 204, '_series_list_2_title', 'field_61af8aeb08918'),
(2329, 204, 'series_list_2_image', '157'),
(2330, 204, '_series_list_2_image', 'field_61af8abe08916'),
(2331, 204, 'series_list_2_link', 'a:3:{s:5:\"title\";s:9:\"Read more\";s:3:\"url\";s:6:\"/shop/\";s:6:\"target\";s:0:\"\";}'),
(2332, 204, '_series_list_2_link', 'field_61af8abe08917'),
(2333, 204, 'series_list_3_title', 'Dual Layer Card Slot'),
(2334, 204, '_series_list_3_title', 'field_61af8aeb08918'),
(2335, 204, 'series_list_3_image', '156'),
(2336, 204, '_series_list_3_image', 'field_61af8abe08916'),
(2337, 204, 'series_list_3_link', 'a:3:{s:5:\"title\";s:9:\"Read more\";s:3:\"url\";s:6:\"/shop/\";s:6:\"target\";s:0:\"\";}'),
(2338, 204, '_series_list_3_link', 'field_61af8abe08917'),
(2339, 204, 'series_list_0_text', 'Offers slim and lightweight 360-degree protection with a multi-angle kickstand'),
(2340, 204, '_series_list_0_text', 'field_61af9927be222'),
(2341, 204, 'series_list_1_text', ''),
(2342, 204, '_series_list_1_text', 'field_61af9927be222'),
(2343, 204, 'series_list_2_text', ''),
(2344, 204, '_series_list_2_text', 'field_61af9927be222'),
(2345, 204, 'series_list_3_text', ''),
(2346, 204, '_series_list_3_text', 'field_61af9927be222'),
(2347, 204, 'features_list_0_title', 'Vertical Kickstand'),
(2348, 204, '_features_list_0_title', 'field_61af8c2f08927'),
(2349, 204, 'features_list_0_image', '170'),
(2350, 204, '_features_list_0_image', 'field_61af8c2f08928'),
(2351, 204, 'features_list_1_title', 'Easily Removable'),
(2352, 204, '_features_list_1_title', 'field_61af8c2f08927'),
(2353, 204, 'features_list_1_image', '169'),
(2354, 204, '_features_list_1_image', 'field_61af8c2f08928'),
(2355, 204, 'features_list_2_title', 'Wireless Charging'),
(2356, 204, '_features_list_2_title', 'field_61af8c2f08927'),
(2357, 204, 'features_list_2_image', '167'),
(2358, 204, '_features_list_2_image', 'field_61af8c2f08928'),
(2359, 204, 'features_list_3_title', 'Horizontal Kickstand'),
(2360, 204, '_features_list_3_title', 'field_61af8c2f08927'),
(2361, 204, 'features_list_3_image', '168'),
(2362, 204, '_features_list_3_image', 'field_61af8c2f08928'),
(2363, 204, 'reviews_list_0_title', 'Perfect Item!'),
(2364, 204, '_reviews_list_0_title', 'field_61b0968d5d44c'),
(2365, 204, 'reviews_list_0_text', 'The item was perfect. It was easy to use and a perfect fit for my husband use on his belt or pocket.'),
(2366, 204, '_reviews_list_0_text', 'field_61b096965d44d'),
(2367, 204, 'reviews_list_0_rating', '5'),
(2368, 204, '_reviews_list_0_rating', 'field_61b096b05d44e'),
(2369, 204, 'reviews_list_0_button', 'a:3:{s:5:\"title\";s:12:\"View product\";s:3:\"url\";s:68:\"http://shellholster/product/google-pixel-6-shell-holster-combo-case/\";s:6:\"target\";s:0:\"\";}'),
(2370, 204, '_reviews_list_0_button', 'field_61b0977b5d44f'),
(2371, 204, 'reviews_list_1_title', 'Fits the phone perfectly!'),
(2372, 204, '_reviews_list_1_title', 'field_61b0968d5d44c'),
(2373, 204, 'reviews_list_1_text', 'It fits the phone perfectly, is very secure, slides in &amp; out of the holster easily and keeps the screen from touching when placed face down on a flat surface. '),
(2374, 204, '_reviews_list_1_text', 'field_61b096965d44d'),
(2375, 204, 'reviews_list_1_rating', '5'),
(2376, 204, '_reviews_list_1_rating', 'field_61b096b05d44e'),
(2377, 204, 'reviews_list_1_button', 'a:3:{s:5:\"title\";s:12:\"View product\";s:3:\"url\";s:68:\"http://shellholster/product/google-pixel-6-shell-holster-combo-case/\";s:6:\"target\";s:0:\"\";}'),
(2378, 204, '_reviews_list_1_button', 'field_61b0977b5d44f'),
(2379, 204, 'reviews_list_2_title', 'Good quality'),
(2380, 204, '_reviews_list_2_title', 'field_61b0968d5d44c'),
(2381, 204, 'reviews_list_2_text', 'Good quality price decent clip work good'),
(2382, 204, '_reviews_list_2_text', 'field_61b096965d44d'),
(2383, 204, 'reviews_list_2_rating', '4'),
(2384, 204, '_reviews_list_2_rating', 'field_61b096b05d44e'),
(2385, 204, 'reviews_list_2_button', 'a:3:{s:5:\"title\";s:12:\"View product\";s:3:\"url\";s:68:\"http://shellholster/product/google-pixel-6-shell-holster-combo-case/\";s:6:\"target\";s:0:\"\";}'),
(2386, 204, '_reviews_list_2_button', 'field_61b0977b5d44f'),
(2387, 204, 'reviews_list', '3'),
(2388, 204, '_reviews_list', 'field_61b096725d44a'),
(2389, 204, 'reviews_list_0_author', 'Gladys'),
(2390, 204, '_reviews_list_0_author', 'field_61b09959065fb'),
(2391, 204, 'reviews_list_1_author', 'Andy'),
(2392, 204, '_reviews_list_1_author', 'field_61b09959065fb'),
(2393, 204, 'reviews_list_2_author', 'Handy'),
(2394, 204, '_reviews_list_2_author', 'field_61b09959065fb'),
(2395, 204, 'features_preview', '191'),
(2396, 204, '_features_preview', 'field_61b0da508f25b'),
(2397, 204, 'filters_suptitle', 'BUY SHELL HOLSTER CASE'),
(2398, 204, '_filters_suptitle', 'field_61b0e4623eac7'),
(2399, 204, 'filters_title', 'Experience the New Kind of Phone Usability'),
(2400, 204, '_filters_title', 'field_61b0e46b3eac9'),
(2401, 204, 'to_store_suptitle', 'FOR MORE CASES'),
(2402, 204, '_to_store_suptitle', 'field_61b0eb6a4ea57'),
(2403, 204, 'to_store_title', 'Go to Store'),
(2404, 204, '_to_store_title', 'field_61b0eb794ea58'),
(2405, 204, 'to_store_button', 'a:3:{s:5:\"title\";s:8:\"Shop now\";s:3:\"url\";s:25:\"http://shellholster/shop/\";s:6:\"target\";s:0:\"\";}'),
(2406, 204, '_to_store_button', 'field_61b0eb864ea59'),
(2407, 204, 'to_store_bg', '203'),
(2408, 204, '_to_store_bg', 'field_61b0ec24ad35c'),
(2409, 205, '_menu_item_type', 'custom'),
(2410, 205, '_menu_item_menu_item_parent', '0'),
(2411, 205, '_menu_item_object_id', '205'),
(2412, 205, '_menu_item_object', 'custom'),
(2413, 205, '_menu_item_target', ''),
(2414, 205, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(2415, 205, '_menu_item_xfn', ''),
(2416, 205, '_menu_item_url', '/shop/?filter_brand=google'),
(2418, 206, '_menu_item_type', 'custom'),
(2419, 206, '_menu_item_menu_item_parent', '0'),
(2420, 206, '_menu_item_object_id', '206'),
(2421, 206, '_menu_item_object', 'custom'),
(2422, 206, '_menu_item_target', ''),
(2423, 206, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(2424, 206, '_menu_item_xfn', ''),
(2425, 206, '_menu_item_url', '/shop/?filter_brand=apple'),
(2427, 207, '_menu_item_type', 'custom'),
(2428, 207, '_menu_item_menu_item_parent', '0'),
(2429, 207, '_menu_item_object_id', '207'),
(2430, 207, '_menu_item_object', 'custom'),
(2431, 207, '_menu_item_target', ''),
(2432, 207, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(2433, 207, '_menu_item_xfn', ''),
(2434, 207, '_menu_item_url', '/shop/?filter_brand=samsung'),
(2437, 18, '_wp_old_date', '2021-12-07'),
(2438, 102, '_wp_old_date', '2021-12-07'),
(2439, 106, '_wp_old_date', '2021-12-07'),
(2440, 105, '_wp_old_date', '2021-12-07'),
(2441, 104, '_wp_old_date', '2021-12-07'),
(2442, 108, '_product_attributes', 'a:1:{s:8:\"pa_brand\";a:6:{s:4:\"name\";s:8:\"pa_brand\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:0;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:1;}}'),
(2443, 95, '_product_attributes', 'a:1:{s:8:\"pa_brand\";a:6:{s:4:\"name\";s:8:\"pa_brand\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:0;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:1;}}'),
(2444, 208, '_menu_item_type', 'taxonomy'),
(2445, 208, '_menu_item_menu_item_parent', '0'),
(2446, 208, '_menu_item_object_id', '30'),
(2447, 208, '_menu_item_object', 'product_cat'),
(2448, 208, '_menu_item_target', ''),
(2449, 208, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(2450, 208, '_menu_item_xfn', ''),
(2451, 208, '_menu_item_url', ''),
(2453, 108, '_sale_price', '13.99');

-- --------------------------------------------------------

--
-- Структура таблиці `wp_posts`
--

CREATE TABLE `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `guid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT 0,
  `post_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп даних таблиці `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(2, 1, '2021-11-23 16:29:23', '2021-11-23 16:29:23', '', 'Home', '', 'publish', 'closed', 'closed', '', 'home', '', '', '2021-12-08 17:33:02', '2021-12-08 17:33:02', '', 0, 'http://shellholster/?page_id=2', 0, 'page', '', 0),
(3, 1, '2021-11-23 16:29:23', '2021-11-23 16:29:23', '<!-- wp:heading -->\r\n<h3><b>Our Commitment to Privacy</b></h3>\r\n<p>Our Privacy Policy was developed as an extension of our commitment to combine quality products and services with integrity in dealing with our users. This policy is designed to assist you in understanding how we collect, use, and safeguard the personal information you provide to us and to assist you in making informed decisions when using our site and products and services. As we continue to develop our web site and take advantage of advances in technology, our privacy policy may change. Please refer to this page frequently for the most up-to-date information.</p>\r\n<h3><b>Online Account Registration</b></h3>\r\n<p>You may want to register with ShellHolster to make shopping faster and easier. For non-registered users, we request account information (email address and password), and billing and shipping information for orders placed during each visit. As a registered customer, you only have to enter your billing and shipping addresses and account information once; they will be securely stored in our database for your future use. Use your username and password to access your account online at any time when adding, deleting, or modifying information. If you are using a computer at a public place, we encourage you to log out at the end of your session. Your information is securely stored with us and will not be accessible to anyone else from that computer.</p>\r\n<h3><b>The Information Collected By the Site</b></h3>\r\n<p>When you shop on the Site, we obtain information needed to complete your transaction. This may include your name, shipping address, billing address, telephone number, credit/debit card number with expiration date, and email address. If you enter certain of our contests or giveaways, we may collect additional information. Under no circumstances do we ever share, sell, or rent your personal information to outside parties. In addition to the below uses, the customer contact information you provide may be used to contact you concerning the status of an order, answer your questions and, unless you choose to opt-out, to send you communications about upcoming sales, discounts, contests, promotions and product information.</p>\r\n<h2>How We Use the Information Collected</h2>\r\n<h3><b>Billing Information</b></h3>\r\n<p>We use this information to confirm your credit/debit card information and to contact you if we have questions regarding your order. Your billing information may also be used for future ShellHolster print mailings such as ShellHolster catalogs. You may request to be removed from our mailing list at any time.</p>\r\n<h3><b>Shipping Information</b></h3>\r\n<p>We use this information to ship the online order placed.</p>\r\n<h3><b>Credit/Debit Card Information</b></h3>\r\n<p>All credit and/or debit card information is used to process your online order. We may also need to provide this information to the company or companies who process your credit card payments.</p>\r\n<h3><b>Email Information</b></h3>\r\n<p>After placing an order with the Site, you will receive an email confirmation that we have received your order. You will receive this email only if you have provided us with your correct email address. We may also need to contact you via email if we have questions regarding your order. Your email information may also be used for future ShellHolster Email Newsletters, which will include unsubscribing instructions. We would like to reiterate that under no circumstances do we ever share, sell, or rent your personal information with outside parties.</p>\r\n<h3><b>Traffic Data, Cookies and Their Use</b></h3>\r\n<p>We automatically track and collect the following categories of information when you visit the Site: (1) IP addresses; (2) domain servers; (3) types of computers accessing the Site; and (4) types of web browsers used to access the Site (collectively “Traffic Data”). Traffic Data is anonymous information that does not personally identify you but is helpful for marketing purposes or for improving your experience on the Site. We also use “cookies”. Cookies are small data text files that your web browser stores on your computer when you visit some web sites. We use cookies to make your online shopping experience easier and more personalized, for instance, allowing you to retrieve an earlier shopping cart. Please note that your web browser must be set to accept cookies before you can place an order at the Site.</p>\r\n<h3><b>Compliance with Law and Fraud Protection</b></h3>\r\n<p>We expressly reserve the right to disclose your personal information and any other information to third parties if we believe, in good faith, that we are required to do so by applicable law, including, but not limited to, disclosure to law enforcement or other government officials in connection with an investigation of claims of fraud, misappropriation or infringement of any intellectual property rights or other proprietary rights, or any other conduct or activity that is illegal or that may subject you or ShellHolster, its agents, employees, affiliates or others to any potential legal liability or as otherwise required by law. We may also disclose personal information and any other information where necessary for the establishment, exercise or defense of legal claims or as otherwise permitted by law. We reserve the right to disclose your personal information or any other information of a user who we believe is in violation of any policy or rule as posted on the Site, even without a subpoena, warrant, court order or other governmental request.</p>\r\n<h3><b>Minors And Children</b></h3>\r\n<p>Persons who are at least 18 years of age are permitted to register for an Account as set forth in the Terms of Service (Eligibility). If the Site becomes aware that any Minor is submitting or has submitted personal information to the Site without parental consent, we will close the Account and delete any personal information within our control as soon as possible. In addition, for purposes of the Children’s Online Privacy Protection Act (“COPPA”), the Site makes the following statement: the Site is not directed to or intended for persons under the age of 13. If the Site becomes aware that any person submitting personal information is under the age of 13, we will close the Account and delete any personal information within our control as soon as possible.</p>\r\n<h3><b>California Privacy Rights Under California Civil Code §1798.83</b></h3>\r\n<p>If you are a resident of California (“California Users”), in addition to the rights set forth in this Privacy Policy, you generally have the right to request information from us regarding the manner in which we share certain categories of personal information with third parties for their direct marketing purposes. The Site does not share any personal information with third-parties for their direct marketing purposes.</p>\r\n<h3><b>EU Privacy Rights Under the EU General Data Protection Regulation (GDPR) (EU Regulation 2016/7.9)</b></h3>\r\n<p>If you are a resident of the European Union, in addition to the rights set forth in this Privacy Policy, you generally have the following rights:</p>\r\n<ul>\r\n<li>the right to access personal data held about you;</li>\r\n<li>the right to object to processing (for example, direct marketing);</li>\r\n<li>the right to data portability;</li>\r\n<li>the right to complain about processing carried out by the data controller;</li>\r\n<li>the right to object to automated decision making;</li>\r\n<li>the right for the personal data being updated; and</li>\r\n<li>the right to be forgotten.</li>\r\n</ul>\r\n<h3><b>Our Do Not Track Policy</b></h3>\r\n<p>Some browsers have a “do not track” feature that lets you tell websites that you do not want to have your online activities tracked. At this time, the Site is not set up to respond to browser “do not track” signals.</p>\r\n<h3><b>Contact Information</b></h3>\r\n<p>If you have any questions about this Privacy Policy, the practices of the Site, or your dealings with the Site, please contact us at:</p>\r\n<p><a class=\"c-link\" href=\"mailto:help@shellholster.com\" target=\"_blank\" rel=\"noopener noreferrer\" data-stringify-link=\"mailto:help@shellholster.com\" data-sk=\"tooltip_parent\">help@shellholster.com</a></p>\r\n<p>2 PIN OAK LANE STE 200<br />CHERRY HILL, NJ 08003</p>\r\n<h3><b>No Contractual Relationship</b></h3>\r\n<p>This Privacy Policy should not be construed as creating a contractual relationship.</p>\r\n<h3><b>Changes to this Privacy Policy</b></h3>\r\n<p>We reserve the right to modify this privacy policy at any time, so please review it frequently. Changes and clarifications will take effect immediately upon their posting on the website. If we make material changes to this policy, we will notify you here that it has been updated, so that you are aware of what information we collect, how we use it, and under what circumstances, if any, we use and/or disclose it. We also may advise you via e-mail of changes to this Privacy Policy.</p>\r\n<!-- /wp:paragraph -->', 'Privacy Policy', '', 'publish', 'closed', 'open', '', 'privacy-policy', '', '', '2021-12-06 13:50:50', '2021-12-06 13:50:50', '', 0, 'http://shellholster/?page_id=3', 0, 'page', '', 0),
(5, 1, '2021-11-23 16:41:43', '2021-11-23 16:41:43', '', 'woocommerce-placeholder', '', 'inherit', 'open', 'closed', '', 'woocommerce-placeholder', '', '', '2021-11-23 16:41:43', '2021-11-23 16:41:43', '', 0, 'http://shellholster/wp-content/uploads/2021/11/woocommerce-placeholder.png', 0, 'attachment', 'image/png', 0),
(6, 1, '2021-11-23 16:41:44', '2021-11-23 16:41:44', '<h2>Phone Case Store Shell Holster</h2>\r\nThe Shell Holster website presents a large selection of Cell Phone Cases. Quality is one of our top priorities, which is why we only have the best products from trusted suppliers.\r\n\r\nWe have Phone Cases for the following phone brands:\r\n<ul>\r\n 	<li><a href=\"https://shellholster.com/apple/\">Apple</a></li>\r\n 	<li><a href=\"https://shellholster.com/google/\">Google</a></li>\r\n 	<li><a href=\"https://shellholster.com/samsung/\">Samsung</a></li>\r\n 	<li><a href=\"https://shellholster.com/kyocera/\">Kyocera</a></li>\r\n 	<li><a href=\"https://shellholster.com/lg/\">LG</a></li>\r\n 	<li><a href=\"https://shellholster.com/htc/\">HTC</a></li>\r\n 	<li><a href=\"https://shellholster.com/motorola/\">Motorola</a></li>\r\n 	<li><a href=\"https://shellholster.com/oneplus/\">Oneplus</a></li>\r\n</ul>\r\nMore than 200 phone cases can be ordered on our website.\r\n<h3>Which phone case is the most durable?</h3>\r\nA large selection of protective accessories, presented by us, should help every buyer choose something worthy for his gadget. The first thing that begins with the selection of protection for your gadget is the definition of the smartphone model, since there are many similar models, it is important not to miss a single character in the name. In the navigation of our site, all smartphones are presented in order, so you can enter manually into the search bar, or simply select from the list. All products in our online store of phone cases are presented with photos and descriptions, but you can also contact the manager for advice, and he will explain everything you need.\r\n\r\nIn many respects, shock-resistant qualities depend on the type and design. Shell Holster Combo Case provides a high level of protection and ease of use.\r\n<h3>Choosing functional mobile phone cases.</h3>\r\nKnowing in detail how good accessories differ, it is much easier to make a choice, so we will describe the structure of the Shell Holster Combo Case. They cover a large area of ​​a mobile device and have a wide variety of functions. Made of high quality plastic.\r\n\r\nThe gadget fits snugly into the case that fits exactly all the holes and buttons. On the back there is a retractable stand that allows you to set up your phone for viewing multimedia content or video conferencing. The holster is equipped with a mount that allows you to securely attach the device to a belt, backpack, bag.\r\n<h3>Why is it important to purchase a smartphone case?</h3>\r\nOur popular shockproof cases are designed to protect your gadget while being lightweight, practical and functional. We know that the main thing for a gadget is protection, therefore our online store of covers only presents high-quality things that are not just decorative, they save from shock, wear, abrasions, cracks, absorb vibration, and in every possible way contribute to the long service life of the smartphone. The kit, necessary for every smartphone, will protect the gadget every day so that it does not crash, crack and spoil its new beautiful look.\r\n<h2>Can you buy quality phone cases for cheap?</h2>\r\nOur cheap phone case is an essential add-on for your smartphone. We have tried to put together the complete and best holster to provide protection for the gadget and convenience for the user. Items are dispatched daily so shoppers can receive their purchases faster. It is always cheaper to order via Internet, and we have promotions even at the first purchase!\r\n\r\nWe are the cheapest phone cases online every day of the week – you can order your favorite product day or night, we quickly process applications and make dispatches. Thanks to this, we can say that the phone case store near me. We work honestly and transparently. We easily make returns if the case doesn’t fit. We ourselves use the same cases, and we know everything about that, we check the accessories before shipping. We do our best to be the best for you!', 'Shop', '', 'publish', 'closed', 'closed', '', 'shop', '', '', '2021-12-07 14:27:35', '2021-12-07 14:27:35', '', 0, 'http://shellholster/shop/', 0, 'page', '', 0),
(7, 1, '2021-11-23 16:41:45', '2021-11-23 16:41:45', '<!-- wp:shortcode -->[woocommerce_cart]<!-- /wp:shortcode -->', 'Cart', '', 'publish', 'closed', 'closed', '', 'cart', '', '', '2021-11-23 16:41:45', '2021-11-23 16:41:45', '', 0, 'http://shellholster/cart/', 0, 'page', '', 0),
(8, 1, '2021-11-23 16:41:45', '2021-11-23 16:41:45', '<!-- wp:shortcode -->[woocommerce_checkout]<!-- /wp:shortcode -->', 'Checkout', '', 'publish', 'closed', 'closed', '', 'checkout', '', '', '2021-11-23 16:41:45', '2021-11-23 16:41:45', '', 0, 'http://shellholster/checkout/', 0, 'page', '', 0),
(9, 1, '2021-11-23 16:41:45', '2021-11-23 16:41:45', '<!-- wp:shortcode -->[woocommerce_my_account]<!-- /wp:shortcode -->', 'My account', '', 'publish', 'closed', 'closed', '', 'my-account', '', '', '2021-11-23 16:41:45', '2021-11-23 16:41:45', '', 0, 'http://shellholster/my-account/', 0, 'page', '', 0),
(10, 1, '2021-11-23 16:41:46', '0000-00-00 00:00:00', '<!-- wp:paragraph -->\n<p><b>This is a sample page.</b></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<h3>Overview</h3>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Our refund and returns policy lasts 30 days. If 30 days have passed since your purchase, we can’t offer you a full refund or exchange.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>To be eligible for a return, your item must be unused and in the same condition that you received it. It must also be in the original packaging.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Several types of goods are exempt from being returned. Perishable goods such as food, flowers, newspapers or magazines cannot be returned. We also do not accept products that are intimate or sanitary goods, hazardous materials, or flammable liquids or gases.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Additional non-returnable items:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:list -->\n<ul>\n<li>Gift cards</li>\n<li>Downloadable software products</li>\n<li>Some health and personal care items</li>\n</ul>\n<!-- /wp:list -->\n\n<!-- wp:paragraph -->\n<p>To complete your return, we require a receipt or proof of purchase.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Please do not send your purchase back to the manufacturer.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>There are certain situations where only partial refunds are granted:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:list -->\n<ul>\n<li>Book with obvious signs of use</li>\n<li>CD, DVD, VHS tape, software, video game, cassette tape, or vinyl record that has been opened.</li>\n<li>Any item not in its original condition, is damaged or missing parts for reasons not due to our error.</li>\n<li>Any item that is returned more than 30 days after delivery</li>\n</ul>\n<!-- /wp:list -->\n\n<!-- wp:paragraph -->\n<h2>Refunds</h2>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Once your return is received and inspected, we will send you an email to notify you that we have received your returned item. We will also notify you of the approval or rejection of your refund.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>If you are approved, then your refund will be processed, and a credit will automatically be applied to your credit card or original method of payment, within a certain amount of days.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<b>Late or missing refunds</b>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>If you haven’t received a refund yet, first check your bank account again.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Then contact your credit card company, it may take some time before your refund is officially posted.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Next contact your bank. There is often some processing time before a refund is posted.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>If you’ve done all of this and you still have not received your refund yet, please contact us at {email address}.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<b>Sale items</b>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Only regular priced items may be refunded. Sale items cannot be refunded.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<h2>Exchanges</h2>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>We only replace items if they are defective or damaged. If you need to exchange it for the same item, send us an email at {email address} and send your item to: {physical address}.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<h2>Gifts</h2>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>If the item was marked as a gift when purchased and shipped directly to you, you’ll receive a gift credit for the value of your return. Once the returned item is received, a gift certificate will be mailed to you.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>If the item wasn’t marked as a gift when purchased, or the gift giver had the order shipped to themselves to give to you later, we will send a refund to the gift giver and they will find out about your return.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<h2>Shipping returns</h2>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>To return your product, you should mail your product to: {physical address}.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>You will be responsible for paying for your own shipping costs for returning your item. Shipping costs are non-refundable. If you receive a refund, the cost of return shipping will be deducted from your refund.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Depending on where you live, the time it may take for your exchanged product to reach you may vary.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>If you are returning more expensive items, you may consider using a trackable shipping service or purchasing shipping insurance. We don’t guarantee that we will receive your returned item.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<h2>Need help?</h2>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Contact us at {email} for questions related to refunds and returns.</p>\n<!-- /wp:paragraph -->', 'Refund and Returns Policy', '', 'draft', 'closed', 'closed', '', 'refund_returns', '', '', '2021-11-23 16:41:46', '0000-00-00 00:00:00', '', 0, 'http://shellholster/?page_id=10', 0, 'page', '', 0),
(13, 1, '2021-12-06 10:49:15', '2021-12-06 10:49:15', '<label> Your name\n    [text* your-name] </label>\n\n<label> Your email\n    [email* your-email] </label>\n\n<label> Subject\n    [text* your-subject] </label>\n\n<label> Your message (optional)\n    [textarea your-message] </label>\n\n[submit \"Submit\"]\n[_site_title] \"[your-subject]\"\n[_site_title] <wordpress@shellholster>\nFrom: [your-name] <[your-email]>\nSubject: [your-subject]\n\nMessage Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on [_site_title] ([_site_url])\n[_site_admin_email]\nReply-To: [your-email]\n\n0\n0\n\n[_site_title] \"[your-subject]\"\n[_site_title] <wordpress@shellholster>\nMessage Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on [_site_title] ([_site_url])\n[your-email]\nReply-To: [_site_admin_email]\n\n0\n0\nThank you for your message. It has been sent.\nThere was an error trying to send your message. Please try again later.\nOne or more fields have an error. Please check and try again.\nThere was an error trying to send your message. Please try again later.\nYou must accept the terms and conditions before sending your message.\nThe field is required.\nThe field is too long.\nThe field is too short.\nThere was an unknown error uploading the file.\nYou are not allowed to upload files of this type.\nThe file is too big.\nThere was an error uploading the file.', 'Contact form 1', '', 'publish', 'closed', 'closed', '', 'contact-form-1', '', '', '2021-12-06 10:49:15', '2021-12-06 10:49:15', '', 0, 'http://shellholster/?post_type=wpcf7_contact_form&p=13', 0, 'wpcf7_contact_form', '', 0),
(18, 1, '2021-12-08 18:28:28', '2021-12-06 11:04:30', ' ', '', '', 'publish', 'closed', 'closed', '', '18', '', '', '2021-12-08 18:28:28', '2021-12-08 18:28:28', '', 0, 'http://shellholster/?p=18', 2, 'nav_menu_item', '', 0),
(19, 1, '2021-12-06 11:19:12', '2021-12-06 11:19:12', '', 'SHLogo', '', 'inherit', 'open', 'closed', '', 'shlogo', '', '', '2021-12-06 11:19:12', '2021-12-06 11:19:12', '', 0, 'http://shellholster/wp-content/uploads/2021/12/SHLogo.png', 0, 'attachment', 'image/png', 0),
(20, 1, '2021-12-06 11:19:33', '2021-12-06 11:19:33', '{\n    \"shellholster::custom_logo\": {\n        \"value\": 19,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-12-06 11:19:33\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'bfaf40be-3e38-4d7a-9446-1a9ac5b2f950', '', '', '2021-12-06 11:19:33', '2021-12-06 11:19:33', '', 0, 'http://shellholster/2021/12/06/bfaf40be-3e38-4d7a-9446-1a9ac5b2f950/', 0, 'customize_changeset', '', 0),
(21, 1, '2021-12-06 11:20:14', '2021-12-06 11:20:14', '{\n    \"blogdescription\": {\n        \"value\": \"Best Cell Phone Cases\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-12-06 11:20:14\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '93cac2bb-bceb-4230-8b57-598de5080569', '', '', '2021-12-06 11:20:14', '2021-12-06 11:20:14', '', 0, 'http://shellholster/2021/12/06/93cac2bb-bceb-4230-8b57-598de5080569/', 0, 'customize_changeset', '', 0),
(22, 1, '2021-12-06 11:27:17', '2021-12-06 11:27:17', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:13:\"page_template\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:23:\"page-templates/home.php\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:4:\"left\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";a:1:{i:0;s:11:\"the_content\";}s:11:\"description\";s:0:\"\";}', 'Home', 'home', 'publish', 'closed', 'closed', '', 'group_61adf3834b64d', '', '', '2021-12-08 17:32:48', '2021-12-08 17:32:48', '', 0, 'http://shellholster/?post_type=acf-field-group&#038;p=22', 0, 'acf-field-group', '', 0),
(23, 1, '2021-12-06 11:28:57', '2021-12-06 11:28:57', 'a:7:{s:4:\"type\";s:3:\"tab\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"placement\";s:4:\"left\";s:8:\"endpoint\";i:0;}', 'Slider', '', 'publish', 'closed', 'closed', '', 'field_61adf39851df3', '', '', '2021-12-06 11:28:57', '2021-12-06 11:28:57', '', 22, 'http://shellholster/?post_type=acf-field&p=23', 0, 'acf-field', '', 0),
(24, 1, '2021-12-06 11:28:57', '2021-12-06 11:28:57', 'a:10:{s:4:\"type\";s:8:\"repeater\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"collapsed\";s:0:\"\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:6:\"layout\";s:3:\"row\";s:12:\"button_label\";s:9:\"Add slide\";}', 'Hero slider', 'hero_slider', 'publish', 'closed', 'closed', '', 'field_61adf3a651df4', '', '', '2021-12-06 11:52:41', '2021-12-06 11:52:41', '', 22, 'http://shellholster/?post_type=acf-field&#038;p=24', 1, 'acf-field', '', 0),
(25, 1, '2021-12-06 11:28:57', '2021-12-06 11:28:57', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";s:12:\"preview_size\";s:4:\"full\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Image', 'image', 'publish', 'closed', 'closed', '', 'field_61adf3c451df5', '', '', '2021-12-06 11:37:08', '2021-12-06 11:37:08', '', 24, 'http://shellholster/?post_type=acf-field&#038;p=25', 0, 'acf-field', '', 0),
(29, 1, '2021-12-06 11:41:25', '2021-12-06 11:41:25', 'a:6:{s:4:\"type\";s:4:\"link\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";}', 'Link', 'link', 'publish', 'closed', 'closed', '', 'field_61adf6d0aeb08', '', '', '2021-12-06 11:41:25', '2021-12-06 11:41:25', '', 24, 'http://shellholster/?post_type=acf-field&p=29', 1, 'acf-field', '', 0),
(32, 1, '2021-12-06 11:52:41', '2021-12-06 11:52:41', 'a:7:{s:4:\"type\";s:3:\"tab\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"placement\";s:4:\"left\";s:8:\"endpoint\";i:0;}', 'About cases', 'text', 'publish', 'closed', 'closed', '', 'field_61adf9548f897', '', '', '2021-12-07 17:15:27', '2021-12-07 17:15:27', '', 22, 'http://shellholster/?post_type=acf-field&#038;p=32', 2, 'acf-field', '', 0),
(33, 1, '2021-12-06 11:52:41', '2021-12-06 11:52:41', 'a:7:{s:4:\"type\";s:3:\"tab\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"placement\";s:4:\"left\";s:8:\"endpoint\";i:0;}', 'Case series', '_copy2', 'publish', 'closed', 'closed', '', 'field_61adf9708f898', '', '', '2021-12-07 17:15:27', '2021-12-07 17:15:27', '', 22, 'http://shellholster/?post_type=acf-field&#038;p=33', 6, 'acf-field', '', 0),
(34, 1, '2021-12-06 12:25:17', '2021-12-06 12:25:17', '', 'Пиксель-баннер-SH', '', 'inherit', 'open', 'closed', '', '%d0%bf%d0%b8%d0%ba%d1%81%d0%b5%d0%bb%d1%8c-%d0%b1%d0%b0%d0%bd%d0%bd%d0%b5%d1%80-sh', '', '', '2021-12-06 12:25:17', '2021-12-06 12:25:17', '', 2, 'http://shellholster/wp-content/uploads/2021/12/Пиксель-баннер-SH.webp', 0, 'attachment', 'image/webp', 0),
(35, 1, '2021-12-06 12:25:18', '2021-12-06 12:25:18', '', 'main-slide-1-min', '', 'inherit', 'open', 'closed', '', 'main-slide-1-min', '', '', '2021-12-06 12:25:18', '2021-12-06 12:25:18', '', 2, 'http://shellholster/wp-content/uploads/2021/12/main-slide-1-min.webp', 0, 'attachment', 'image/webp', 0),
(37, 1, '2021-12-06 12:43:33', '2021-12-06 12:35:15', ' ', '', '', 'publish', 'closed', 'closed', '', '37', '', '', '2021-12-06 12:43:33', '2021-12-06 12:43:33', '', 0, 'http://shellholster/?p=37', 2, 'nav_menu_item', '', 0),
(38, 1, '2021-12-06 12:43:33', '2021-12-06 12:35:15', ' ', '', '', 'publish', 'closed', 'closed', '', '38', '', '', '2021-12-06 12:43:33', '2021-12-06 12:43:33', '', 0, 'http://shellholster/?p=38', 1, 'nav_menu_item', '', 0),
(39, 1, '2021-12-06 12:46:18', '2021-12-06 12:35:42', '', 'My Cart', '', 'publish', 'closed', 'closed', '', '39', '', '', '2021-12-06 12:46:18', '2021-12-06 12:46:18', '', 0, 'http://shellholster/?p=39', 2, 'nav_menu_item', '', 0),
(40, 1, '2021-12-06 12:40:34', '2021-12-06 12:40:34', '', 'About', '', 'publish', 'closed', 'closed', '', 'about', '', '', '2021-12-06 13:53:30', '2021-12-06 13:53:30', '', 0, 'http://shellholster/?page_id=40', 0, 'page', '', 0),
(41, 1, '2021-12-06 12:40:34', '2021-12-06 12:40:34', '', 'About us', '', 'inherit', 'closed', 'closed', '', '40-revision-v1', '', '', '2021-12-06 12:40:34', '2021-12-06 12:40:34', '', 40, 'http://shellholster/?p=41', 0, 'revision', '', 0),
(42, 1, '2021-12-06 12:43:33', '2021-12-06 12:41:26', ' ', '', '', 'publish', 'closed', 'closed', '', '42', '', '', '2021-12-06 12:43:33', '2021-12-06 12:43:33', '', 0, 'http://shellholster/?p=42', 3, 'nav_menu_item', '', 0),
(43, 1, '2021-12-06 12:41:31', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2021-12-06 12:41:31', '0000-00-00 00:00:00', '', 0, 'http://shellholster/?page_id=43', 0, 'page', '', 0),
(44, 1, '2021-12-06 12:42:53', '2021-12-06 12:42:53', '', 'FAQ', '', 'publish', 'closed', 'closed', '', 'frequently-asked-questions', '', '', '2021-12-06 13:52:13', '2021-12-06 13:52:13', '', 0, 'http://shellholster/?page_id=44', 0, 'page', '', 0),
(45, 1, '2021-12-06 12:42:53', '2021-12-06 12:42:53', '', 'FAQ', '', 'inherit', 'closed', 'closed', '', '44-revision-v1', '', '', '2021-12-06 12:42:53', '2021-12-06 12:42:53', '', 44, 'http://shellholster/?p=45', 0, 'revision', '', 0),
(46, 1, '2021-12-06 12:43:04', '2021-12-06 12:43:04', '', 'Contact us', '', 'publish', 'closed', 'closed', '', 'contact', '', '', '2021-12-06 13:53:07', '2021-12-06 13:53:07', '', 0, 'http://shellholster/?page_id=46', 0, 'page', '', 0),
(47, 1, '2021-12-06 12:43:04', '2021-12-06 12:43:04', '', 'Contact us', '', 'inherit', 'closed', 'closed', '', '46-revision-v1', '', '', '2021-12-06 12:43:04', '2021-12-06 12:43:04', '', 46, 'http://shellholster/?p=47', 0, 'revision', '', 0),
(48, 1, '2021-12-06 12:43:34', '2021-12-06 12:43:34', ' ', '', '', 'publish', 'closed', 'closed', '', '48', '', '', '2021-12-06 12:43:34', '2021-12-06 12:43:34', '', 0, 'http://shellholster/?p=48', 5, 'nav_menu_item', '', 0),
(49, 1, '2021-12-06 12:43:33', '2021-12-06 12:43:33', ' ', '', '', 'publish', 'closed', 'closed', '', '49', '', '', '2021-12-06 12:43:33', '2021-12-06 12:43:33', '', 0, 'http://shellholster/?p=49', 4, 'nav_menu_item', '', 0),
(50, 1, '2021-12-06 12:43:42', '2021-12-06 12:43:42', '', 'About', '', 'inherit', 'closed', 'closed', '', '40-revision-v1', '', '', '2021-12-06 12:43:42', '2021-12-06 12:43:42', '', 40, 'http://shellholster/?p=50', 0, 'revision', '', 0),
(53, 1, '2021-12-06 12:44:39', '2021-12-06 12:44:39', '<!-- wp:heading -->\r\n<h3><b>Our Commitment to Privacy</b></h3>\r\n<p>Our Privacy Policy was developed as an extension of our commitment to combine quality products and services with integrity in dealing with our users. This policy is designed to assist you in understanding how we collect, use, and safeguard the personal information you provide to us and to assist you in making informed decisions when using our site and products and services. As we continue to develop our web site and take advantage of advances in technology, our privacy policy may change. Please refer to this page frequently for the most up-to-date information.</p>\r\n<p>&nbsp;</p>\r\n<h3><b>Online Account Registration</b></h3>\r\n<p>You may want to register with ShellHolster to make shopping faster and easier. For non-registered users, we request account information (email address and password), and billing and shipping information for orders placed during each visit. As a registered customer, you only have to enter your billing and shipping addresses and account information once; they will be securely stored in our database for your future use. Use your username and password to access your account online at any time when adding, deleting, or modifying information. If you are using a computer at a public place, we encourage you to log out at the end of your session. Your information is securely stored with us and will not be accessible to anyone else from that computer.</p>\r\n<h3><b>The Information Collected By the Site</b></h3>\r\n<p>When you shop on the Site, we obtain information needed to complete your transaction. This may include your name, shipping address, billing address, telephone number, credit/debit card number with expiration date, and email address. If you enter certain of our contests or giveaways, we may collect additional information. Under no circumstances do we ever share, sell, or rent your personal information to outside parties. In addition to the below uses, the customer contact information you provide may be used to contact you concerning the status of an order, answer your questions and, unless you choose to opt-out, to send you communications about upcoming sales, discounts, contests, promotions and product information.</p>\r\n<h2>How We Use the Information Collected</h2>\r\n<h3><b>Billing Information</b></h3>\r\n<p>We use this information to confirm your credit/debit card information and to contact you if we have questions regarding your order. Your billing information may also be used for future ShellHolster print mailings such as ShellHolster catalogs. You may request to be removed from our mailing list at any time.</p>\r\n<h3><b>Shipping Information</b></h3>\r\n<p>We use this information to ship the online order placed.</p>\r\n<h3><b>Credit/Debit Card Information</b></h3>\r\n<p>All credit and/or debit card information is used to process your online order. We may also need to provide this information to the company or companies who process your credit card payments.</p>\r\n<h3><b>Email Information</b></h3>\r\n<p>After placing an order with the Site, you will receive an email confirmation that we have received your order. You will receive this email only if you have provided us with your correct email address. We may also need to contact you via email if we have questions regarding your order. Your email information may also be used for future ShellHolster Email Newsletters, which will include unsubscribing instructions. We would like to reiterate that under no circumstances do we ever share, sell, or rent your personal information with outside parties.</p>\r\n<h3><b>Traffic Data, Cookies and Their Use</b></h3>\r\n<p>We automatically track and collect the following categories of information when you visit the Site: (1) IP addresses; (2) domain servers; (3) types of computers accessing the Site; and (4) types of web browsers used to access the Site (collectively “Traffic Data”). Traffic Data is anonymous information that does not personally identify you but is helpful for marketing purposes or for improving your experience on the Site. We also use “cookies”. Cookies are small data text files that your web browser stores on your computer when you visit some web sites. We use cookies to make your online shopping experience easier and more personalized, for instance, allowing you to retrieve an earlier shopping cart. Please note that your web browser must be set to accept cookies before you can place an order at the Site.</p>\r\n<h3><b>Compliance with Law and Fraud Protection</b></h3>\r\n<p>We expressly reserve the right to disclose your personal information and any other information to third parties if we believe, in good faith, that we are required to do so by applicable law, including, but not limited to, disclosure to law enforcement or other government officials in connection with an investigation of claims of fraud, misappropriation or infringement of any intellectual property rights or other proprietary rights, or any other conduct or activity that is illegal or that may subject you or ShellHolster, its agents, employees, affiliates or others to any potential legal liability or as otherwise required by law. We may also disclose personal information and any other information where necessary for the establishment, exercise or defense of legal claims or as otherwise permitted by law. We reserve the right to disclose your personal information or any other information of a user who we believe is in violation of any policy or rule as posted on the Site, even without a subpoena, warrant, court order or other governmental request.</p>\r\n<h3><b>Minors And Children</b></h3>\r\n<p>Persons who are at least 18 years of age are permitted to register for an Account as set forth in the Terms of Service (Eligibility). If the Site becomes aware that any Minor is submitting or has submitted personal information to the Site without parental consent, we will close the Account and delete any personal information within our control as soon as possible. In addition, for purposes of the Children’s Online Privacy Protection Act (“COPPA”), the Site makes the following statement: the Site is not directed to or intended for persons under the age of 13. If the Site becomes aware that any person submitting personal information is under the age of 13, we will close the Account and delete any personal information within our control as soon as possible.</p>\r\n<h3><b>California Privacy Rights Under California Civil Code §1798.83</b></h3>\r\n<p>If you are a resident of California (“California Users”), in addition to the rights set forth in this Privacy Policy, you generally have the right to request information from us regarding the manner in which we share certain categories of personal information with third parties for their direct marketing purposes. The Site does not share any personal information with third-parties for their direct marketing purposes.</p>\r\n<h3><b>EU Privacy Rights Under the EU General Data Protection Regulation (GDPR) (EU Regulation 2016/7.9)</b></h3>\r\n<p>If you are a resident of the European Union, in addition to the rights set forth in this Privacy Policy, you generally have the following rights:</p>\r\n<ul>\r\n<li>the right to access personal data held about you;</li>\r\n<li>the right to object to processing (for example, direct marketing);</li>\r\n<li>the right to data portability;</li>\r\n<li>the right to complain about processing carried out by the data controller;</li>\r\n<li>the right to object to automated decision making;</li>\r\n<li>the right for the personal data being updated; and</li>\r\n<li>the right to be forgotten.</li>\r\n</ul>\r\n<h3><b>Our Do Not Track Policy</b></h3>\r\n<p>Some browsers have a “do not track” feature that lets you tell websites that you do not want to have your online activities tracked. At this time, the Site is not set up to respond to browser “do not track” signals.</p>\r\n<h3><b>Contact Information</b></h3>\r\n<p>If you have any questions about this Privacy Policy, the practices of the Site, or your dealings with the Site, please contact us at:</p>\r\n<p><a class=\"c-link\" href=\"mailto:help@shellholster.com\" target=\"_blank\" rel=\"noopener noreferrer\" data-stringify-link=\"mailto:help@shellholster.com\" data-sk=\"tooltip_parent\">help@shellholster.com</a></p>\r\n<p>2 PIN OAK LANE STE 200<br />CHERRY HILL, NJ 08003</p>\r\n<h3><b>No Contractual Relationship</b></h3>\r\n<p>This Privacy Policy should not be construed as creating a contractual relationship.</p>\r\n<h3><b>Changes to this Privacy Policy</b></h3>\r\n<p>We reserve the right to modify this privacy policy at any time, so please review it frequently. Changes and clarifications will take effect immediately upon their posting on the website. If we make material changes to this policy, we will notify you here that it has been updated, so that you are aware of what information we collect, how we use it, and under what circumstances, if any, we use and/or disclose it. We also may advise you via e-mail of changes to this Privacy Policy.</p>\r\n<!-- /wp:paragraph -->', 'Privacy Policy', '', 'inherit', 'closed', 'closed', '', '3-revision-v1', '', '', '2021-12-06 12:44:39', '2021-12-06 12:44:39', '', 3, 'http://shellholster/?p=53', 0, 'revision', '', 0),
(54, 1, '2021-12-06 12:46:18', '2021-12-06 12:45:41', ' ', '', '', 'publish', 'closed', 'closed', '', '54', '', '', '2021-12-06 12:46:18', '2021-12-06 12:46:18', '', 0, 'http://shellholster/?p=54', 1, 'nav_menu_item', '', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(55, 1, '2021-12-06 13:26:05', '2021-12-06 13:26:05', '<!-- wp:heading -->\r\n<h3><b>Our Commitment to Privacy</b></h3>\r\n<p>Our Privacy Policy was developed as an extension of our commitment to combine quality products and services with integrity in dealing with our users. This policy is designed to assist you in understanding how we collect, use, and safeguard the personal information you provide to us and to assist you in making informed decisions when using our site and products and services. As we continue to develop our web site and take advantage of advances in technology, our privacy policy may change. Please refer to this page frequently for the most up-to-date information.</p>\r\n<h3><b>Online Account Registration</b></h3>\r\n<p>You may want to register with ShellHolster to make shopping faster and easier. For non-registered users, we request account information (email address and password), and billing and shipping information for orders placed during each visit. As a registered customer, you only have to enter your billing and shipping addresses and account information once; they will be securely stored in our database for your future use. Use your username and password to access your account online at any time when adding, deleting, or modifying information. If you are using a computer at a public place, we encourage you to log out at the end of your session. Your information is securely stored with us and will not be accessible to anyone else from that computer.</p>\r\n<h3><b>The Information Collected By the Site</b></h3>\r\n<p>When you shop on the Site, we obtain information needed to complete your transaction. This may include your name, shipping address, billing address, telephone number, credit/debit card number with expiration date, and email address. If you enter certain of our contests or giveaways, we may collect additional information. Under no circumstances do we ever share, sell, or rent your personal information to outside parties. In addition to the below uses, the customer contact information you provide may be used to contact you concerning the status of an order, answer your questions and, unless you choose to opt-out, to send you communications about upcoming sales, discounts, contests, promotions and product information.</p>\r\n<h2>How We Use the Information Collected</h2>\r\n<h3><b>Billing Information</b></h3>\r\n<p>We use this information to confirm your credit/debit card information and to contact you if we have questions regarding your order. Your billing information may also be used for future ShellHolster print mailings such as ShellHolster catalogs. You may request to be removed from our mailing list at any time.</p>\r\n<h3><b>Shipping Information</b></h3>\r\n<p>We use this information to ship the online order placed.</p>\r\n<h3><b>Credit/Debit Card Information</b></h3>\r\n<p>All credit and/or debit card information is used to process your online order. We may also need to provide this information to the company or companies who process your credit card payments.</p>\r\n<h3><b>Email Information</b></h3>\r\n<p>After placing an order with the Site, you will receive an email confirmation that we have received your order. You will receive this email only if you have provided us with your correct email address. We may also need to contact you via email if we have questions regarding your order. Your email information may also be used for future ShellHolster Email Newsletters, which will include unsubscribing instructions. We would like to reiterate that under no circumstances do we ever share, sell, or rent your personal information with outside parties.</p>\r\n<h3><b>Traffic Data, Cookies and Their Use</b></h3>\r\n<p>We automatically track and collect the following categories of information when you visit the Site: (1) IP addresses; (2) domain servers; (3) types of computers accessing the Site; and (4) types of web browsers used to access the Site (collectively “Traffic Data”). Traffic Data is anonymous information that does not personally identify you but is helpful for marketing purposes or for improving your experience on the Site. We also use “cookies”. Cookies are small data text files that your web browser stores on your computer when you visit some web sites. We use cookies to make your online shopping experience easier and more personalized, for instance, allowing you to retrieve an earlier shopping cart. Please note that your web browser must be set to accept cookies before you can place an order at the Site.</p>\r\n<h3><b>Compliance with Law and Fraud Protection</b></h3>\r\n<p>We expressly reserve the right to disclose your personal information and any other information to third parties if we believe, in good faith, that we are required to do so by applicable law, including, but not limited to, disclosure to law enforcement or other government officials in connection with an investigation of claims of fraud, misappropriation or infringement of any intellectual property rights or other proprietary rights, or any other conduct or activity that is illegal or that may subject you or ShellHolster, its agents, employees, affiliates or others to any potential legal liability or as otherwise required by law. We may also disclose personal information and any other information where necessary for the establishment, exercise or defense of legal claims or as otherwise permitted by law. We reserve the right to disclose your personal information or any other information of a user who we believe is in violation of any policy or rule as posted on the Site, even without a subpoena, warrant, court order or other governmental request.</p>\r\n<h3><b>Minors And Children</b></h3>\r\n<p>Persons who are at least 18 years of age are permitted to register for an Account as set forth in the Terms of Service (Eligibility). If the Site becomes aware that any Minor is submitting or has submitted personal information to the Site without parental consent, we will close the Account and delete any personal information within our control as soon as possible. In addition, for purposes of the Children’s Online Privacy Protection Act (“COPPA”), the Site makes the following statement: the Site is not directed to or intended for persons under the age of 13. If the Site becomes aware that any person submitting personal information is under the age of 13, we will close the Account and delete any personal information within our control as soon as possible.</p>\r\n<h3><b>California Privacy Rights Under California Civil Code §1798.83</b></h3>\r\n<p>If you are a resident of California (“California Users”), in addition to the rights set forth in this Privacy Policy, you generally have the right to request information from us regarding the manner in which we share certain categories of personal information with third parties for their direct marketing purposes. The Site does not share any personal information with third-parties for their direct marketing purposes.</p>\r\n<h3><b>EU Privacy Rights Under the EU General Data Protection Regulation (GDPR) (EU Regulation 2016/7.9)</b></h3>\r\n<p>If you are a resident of the European Union, in addition to the rights set forth in this Privacy Policy, you generally have the following rights:</p>\r\n<ul>\r\n<li>the right to access personal data held about you;</li>\r\n<li>the right to object to processing (for example, direct marketing);</li>\r\n<li>the right to data portability;</li>\r\n<li>the right to complain about processing carried out by the data controller;</li>\r\n<li>the right to object to automated decision making;</li>\r\n<li>the right for the personal data being updated; and</li>\r\n<li>the right to be forgotten.</li>\r\n</ul>\r\n<h3><b>Our Do Not Track Policy</b></h3>\r\n<p>Some browsers have a “do not track” feature that lets you tell websites that you do not want to have your online activities tracked. At this time, the Site is not set up to respond to browser “do not track” signals.</p>\r\n<h3><b>Contact Information</b></h3>\r\n<p>If you have any questions about this Privacy Policy, the practices of the Site, or your dealings with the Site, please contact us at:</p>\r\n<p><a class=\"c-link\" href=\"mailto:help@shellholster.com\" target=\"_blank\" rel=\"noopener noreferrer\" data-stringify-link=\"mailto:help@shellholster.com\" data-sk=\"tooltip_parent\">help@shellholster.com</a></p>\r\n<p>2 PIN OAK LANE STE 200<br />CHERRY HILL, NJ 08003</p>\r\n<h3><b>No Contractual Relationship</b></h3>\r\n<p>This Privacy Policy should not be construed as creating a contractual relationship.</p>\r\n<h3><b>Changes to this Privacy Policy</b></h3>\r\n<p>We reserve the right to modify this privacy policy at any time, so please review it frequently. Changes and clarifications will take effect immediately upon their posting on the website. If we make material changes to this policy, we will notify you here that it has been updated, so that you are aware of what information we collect, how we use it, and under what circumstances, if any, we use and/or disclose it. We also may advise you via e-mail of changes to this Privacy Policy.</p>\r\n<!-- /wp:paragraph -->', 'Privacy Policy', '', 'inherit', 'closed', 'closed', '', '3-revision-v1', '', '', '2021-12-06 13:26:05', '2021-12-06 13:26:05', '', 3, 'http://shellholster/?p=55', 0, 'revision', '', 0),
(56, 1, '2021-12-06 13:32:25', '2021-12-06 13:32:25', 'a:7:{s:4:\"type\";s:3:\"tab\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"placement\";s:4:\"left\";s:8:\"endpoint\";i:0;}', 'Reviews', '_copy', 'publish', 'closed', 'closed', '', 'field_61ae019d1574c', '', '', '2021-12-08 16:16:33', '2021-12-08 16:16:33', '', 22, 'http://shellholster/?post_type=acf-field&#038;p=56', 29, 'acf-field', '', 0),
(57, 1, '2021-12-06 13:32:38', '2021-12-06 13:32:38', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:13:\"page_template\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:22:\"page-templates/faq.php\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:4:\"left\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";a:1:{i:0;s:11:\"the_content\";}s:11:\"description\";s:0:\"\";}', 'FAQ', 'faq', 'publish', 'closed', 'closed', '', 'group_61ae10eb7e1c1', '', '', '2021-12-06 13:47:48', '2021-12-06 13:47:48', '', 0, 'http://shellholster/?post_type=acf-field-group&#038;p=57', 5, 'acf-field-group', '', 0),
(58, 1, '2021-12-06 13:39:25', '2021-12-06 13:39:25', 'a:10:{s:4:\"type\";s:8:\"repeater\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"collapsed\";s:0:\"\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:6:\"layout\";s:3:\"row\";s:12:\"button_label\";s:12:\"Add question\";}', 'FAQs', 'faq-list', 'publish', 'closed', 'closed', '', 'field_61ae123ef47e7', '', '', '2021-12-06 13:39:25', '2021-12-06 13:39:25', '', 57, 'http://shellholster/?post_type=acf-field&p=58', 0, 'acf-field', '', 0),
(59, 1, '2021-12-06 13:39:26', '2021-12-06 13:39:26', 'a:8:{s:4:\"type\";s:9:\"accordion\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:4:\"open\";i:0;s:12:\"multi_expand\";i:0;s:8:\"endpoint\";i:0;}', 'Question', 'question', 'publish', 'closed', 'closed', '', 'field_61ae127df47ea', '', '', '2021-12-06 13:39:26', '2021-12-06 13:39:26', '', 58, 'http://shellholster/?post_type=acf-field&p=59', 0, 'acf-field', '', 0),
(60, 1, '2021-12-06 13:39:26', '2021-12-06 13:39:26', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Question', 'question', 'publish', 'closed', 'closed', '', 'field_61ae1260f47e8', '', '', '2021-12-06 13:39:26', '2021-12-06 13:39:26', '', 58, 'http://shellholster/?post_type=acf-field&p=60', 1, 'acf-field', '', 0),
(61, 1, '2021-12-06 13:39:26', '2021-12-06 13:39:26', 'a:10:{s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";i:5;s:9:\"new_lines\";s:2:\"br\";}', 'Answer', 'answer', 'publish', 'closed', 'closed', '', 'field_61ae126af47e9', '', '', '2021-12-06 13:39:59', '2021-12-06 13:39:59', '', 58, 'http://shellholster/?post_type=acf-field&#038;p=61', 2, 'acf-field', '', 0),
(62, 1, '2021-12-06 13:40:25', '2021-12-06 13:40:25', '', 'FAQ', '', 'inherit', 'closed', 'closed', '', '44-revision-v1', '', '', '2021-12-06 13:40:25', '2021-12-06 13:40:25', '', 44, 'http://shellholster/?p=62', 0, 'revision', '', 0),
(63, 1, '2021-12-06 13:47:58', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2021-12-06 13:47:58', '0000-00-00 00:00:00', '', 0, 'http://shellholster/?post_type=acf-field-group&p=63', 0, 'acf-field-group', '', 0),
(64, 1, '2021-12-06 13:48:03', '2021-12-06 13:48:03', 'a:7:{s:8:\"location\";a:1:{i:0;a:2:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:4:\"page\";}i:1;a:3:{s:5:\"param\";s:13:\"page_template\";s:8:\"operator\";s:2:\"!=\";s:5:\"value\";s:23:\"page-templates/home.php\";}}}s:8:\"position\";s:4:\"side\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Subtitle', 'subtitle', 'publish', 'open', 'open', '', 'group_61ae1491c1933', '', '', '2021-12-06 13:52:36', '2021-12-06 13:52:36', '', 0, 'http://shellholster/?p=64', 5, 'acf-field-group', '', 0),
(65, 1, '2021-12-06 13:48:02', '2021-12-06 13:48:02', 'a:10:{s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";i:3;s:9:\"new_lines\";s:0:\"\";}', 'Subtitle', 'hero_subtitle', 'publish', 'closed', 'closed', '', 'field_61ae149273b33', '', '', '2021-12-06 13:52:36', '2021-12-06 13:52:36', '', 64, 'http://shellholster/?post_type=acf-field&#038;p=65', 0, 'acf-field', '', 0),
(66, 1, '2021-12-06 13:48:02', '2021-12-06 13:48:02', 'a:8:{s:4:\"type\";s:9:\"accordion\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:4:\"open\";i:0;s:12:\"multi_expand\";i:0;s:8:\"endpoint\";i:0;}', 'Question', '', 'publish', 'closed', 'closed', '', 'field_61ae149296802', '', '', '2021-12-06 13:48:02', '2021-12-06 13:48:02', '', 65, 'http://shellholster/?post_type=acf-field&p=66', 0, 'acf-field', '', 0),
(67, 1, '2021-12-06 13:48:02', '2021-12-06 13:48:02', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Question', 'question', 'publish', 'closed', 'closed', '', 'field_61ae14929a2a4', '', '', '2021-12-06 13:48:02', '2021-12-06 13:48:02', '', 65, 'http://shellholster/?post_type=acf-field&p=67', 1, 'acf-field', '', 0),
(68, 1, '2021-12-06 13:48:02', '2021-12-06 13:48:02', 'a:10:{s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";i:5;s:9:\"new_lines\";s:2:\"br\";}', 'Answer', 'answer', 'publish', 'closed', 'closed', '', 'field_61ae14929dd3e', '', '', '2021-12-06 13:48:02', '2021-12-06 13:48:02', '', 65, 'http://shellholster/?post_type=acf-field&p=68', 2, 'acf-field', '', 0),
(69, 1, '2021-12-06 13:50:50', '2021-12-06 13:50:50', '<!-- wp:heading -->\r\n<h3><b>Our Commitment to Privacy</b></h3>\r\n<p>Our Privacy Policy was developed as an extension of our commitment to combine quality products and services with integrity in dealing with our users. This policy is designed to assist you in understanding how we collect, use, and safeguard the personal information you provide to us and to assist you in making informed decisions when using our site and products and services. As we continue to develop our web site and take advantage of advances in technology, our privacy policy may change. Please refer to this page frequently for the most up-to-date information.</p>\r\n<h3><b>Online Account Registration</b></h3>\r\n<p>You may want to register with ShellHolster to make shopping faster and easier. For non-registered users, we request account information (email address and password), and billing and shipping information for orders placed during each visit. As a registered customer, you only have to enter your billing and shipping addresses and account information once; they will be securely stored in our database for your future use. Use your username and password to access your account online at any time when adding, deleting, or modifying information. If you are using a computer at a public place, we encourage you to log out at the end of your session. Your information is securely stored with us and will not be accessible to anyone else from that computer.</p>\r\n<h3><b>The Information Collected By the Site</b></h3>\r\n<p>When you shop on the Site, we obtain information needed to complete your transaction. This may include your name, shipping address, billing address, telephone number, credit/debit card number with expiration date, and email address. If you enter certain of our contests or giveaways, we may collect additional information. Under no circumstances do we ever share, sell, or rent your personal information to outside parties. In addition to the below uses, the customer contact information you provide may be used to contact you concerning the status of an order, answer your questions and, unless you choose to opt-out, to send you communications about upcoming sales, discounts, contests, promotions and product information.</p>\r\n<h2>How We Use the Information Collected</h2>\r\n<h3><b>Billing Information</b></h3>\r\n<p>We use this information to confirm your credit/debit card information and to contact you if we have questions regarding your order. Your billing information may also be used for future ShellHolster print mailings such as ShellHolster catalogs. You may request to be removed from our mailing list at any time.</p>\r\n<h3><b>Shipping Information</b></h3>\r\n<p>We use this information to ship the online order placed.</p>\r\n<h3><b>Credit/Debit Card Information</b></h3>\r\n<p>All credit and/or debit card information is used to process your online order. We may also need to provide this information to the company or companies who process your credit card payments.</p>\r\n<h3><b>Email Information</b></h3>\r\n<p>After placing an order with the Site, you will receive an email confirmation that we have received your order. You will receive this email only if you have provided us with your correct email address. We may also need to contact you via email if we have questions regarding your order. Your email information may also be used for future ShellHolster Email Newsletters, which will include unsubscribing instructions. We would like to reiterate that under no circumstances do we ever share, sell, or rent your personal information with outside parties.</p>\r\n<h3><b>Traffic Data, Cookies and Their Use</b></h3>\r\n<p>We automatically track and collect the following categories of information when you visit the Site: (1) IP addresses; (2) domain servers; (3) types of computers accessing the Site; and (4) types of web browsers used to access the Site (collectively “Traffic Data”). Traffic Data is anonymous information that does not personally identify you but is helpful for marketing purposes or for improving your experience on the Site. We also use “cookies”. Cookies are small data text files that your web browser stores on your computer when you visit some web sites. We use cookies to make your online shopping experience easier and more personalized, for instance, allowing you to retrieve an earlier shopping cart. Please note that your web browser must be set to accept cookies before you can place an order at the Site.</p>\r\n<h3><b>Compliance with Law and Fraud Protection</b></h3>\r\n<p>We expressly reserve the right to disclose your personal information and any other information to third parties if we believe, in good faith, that we are required to do so by applicable law, including, but not limited to, disclosure to law enforcement or other government officials in connection with an investigation of claims of fraud, misappropriation or infringement of any intellectual property rights or other proprietary rights, or any other conduct or activity that is illegal or that may subject you or ShellHolster, its agents, employees, affiliates or others to any potential legal liability or as otherwise required by law. We may also disclose personal information and any other information where necessary for the establishment, exercise or defense of legal claims or as otherwise permitted by law. We reserve the right to disclose your personal information or any other information of a user who we believe is in violation of any policy or rule as posted on the Site, even without a subpoena, warrant, court order or other governmental request.</p>\r\n<h3><b>Minors And Children</b></h3>\r\n<p>Persons who are at least 18 years of age are permitted to register for an Account as set forth in the Terms of Service (Eligibility). If the Site becomes aware that any Minor is submitting or has submitted personal information to the Site without parental consent, we will close the Account and delete any personal information within our control as soon as possible. In addition, for purposes of the Children’s Online Privacy Protection Act (“COPPA”), the Site makes the following statement: the Site is not directed to or intended for persons under the age of 13. If the Site becomes aware that any person submitting personal information is under the age of 13, we will close the Account and delete any personal information within our control as soon as possible.</p>\r\n<h3><b>California Privacy Rights Under California Civil Code §1798.83</b></h3>\r\n<p>If you are a resident of California (“California Users”), in addition to the rights set forth in this Privacy Policy, you generally have the right to request information from us regarding the manner in which we share certain categories of personal information with third parties for their direct marketing purposes. The Site does not share any personal information with third-parties for their direct marketing purposes.</p>\r\n<h3><b>EU Privacy Rights Under the EU General Data Protection Regulation (GDPR) (EU Regulation 2016/7.9)</b></h3>\r\n<p>If you are a resident of the European Union, in addition to the rights set forth in this Privacy Policy, you generally have the following rights:</p>\r\n<ul>\r\n<li>the right to access personal data held about you;</li>\r\n<li>the right to object to processing (for example, direct marketing);</li>\r\n<li>the right to data portability;</li>\r\n<li>the right to complain about processing carried out by the data controller;</li>\r\n<li>the right to object to automated decision making;</li>\r\n<li>the right for the personal data being updated; and</li>\r\n<li>the right to be forgotten.</li>\r\n</ul>\r\n<h3><b>Our Do Not Track Policy</b></h3>\r\n<p>Some browsers have a “do not track” feature that lets you tell websites that you do not want to have your online activities tracked. At this time, the Site is not set up to respond to browser “do not track” signals.</p>\r\n<h3><b>Contact Information</b></h3>\r\n<p>If you have any questions about this Privacy Policy, the practices of the Site, or your dealings with the Site, please contact us at:</p>\r\n<p><a class=\"c-link\" href=\"mailto:help@shellholster.com\" target=\"_blank\" rel=\"noopener noreferrer\" data-stringify-link=\"mailto:help@shellholster.com\" data-sk=\"tooltip_parent\">help@shellholster.com</a></p>\r\n<p>2 PIN OAK LANE STE 200<br />CHERRY HILL, NJ 08003</p>\r\n<h3><b>No Contractual Relationship</b></h3>\r\n<p>This Privacy Policy should not be construed as creating a contractual relationship.</p>\r\n<h3><b>Changes to this Privacy Policy</b></h3>\r\n<p>We reserve the right to modify this privacy policy at any time, so please review it frequently. Changes and clarifications will take effect immediately upon their posting on the website. If we make material changes to this policy, we will notify you here that it has been updated, so that you are aware of what information we collect, how we use it, and under what circumstances, if any, we use and/or disclose it. We also may advise you via e-mail of changes to this Privacy Policy.</p>\r\n<!-- /wp:paragraph -->', 'Privacy Policy', '', 'inherit', 'closed', 'closed', '', '3-revision-v1', '', '', '2021-12-06 13:50:50', '2021-12-06 13:50:50', '', 3, 'http://shellholster/?p=69', 0, 'revision', '', 0),
(70, 1, '2021-12-06 13:52:13', '2021-12-06 13:52:13', '', 'FAQ', '', 'inherit', 'closed', 'closed', '', '44-revision-v1', '', '', '2021-12-06 13:52:13', '2021-12-06 13:52:13', '', 44, 'http://shellholster/?p=70', 0, 'revision', '', 0),
(71, 1, '2021-12-06 13:53:07', '2021-12-06 13:53:07', '', 'Contact us', '', 'inherit', 'closed', 'closed', '', '46-revision-v1', '', '', '2021-12-06 13:53:07', '2021-12-06 13:53:07', '', 46, 'http://shellholster/?p=71', 0, 'revision', '', 0),
(72, 1, '2021-12-06 13:53:30', '2021-12-06 13:53:30', '', 'About', '', 'inherit', 'closed', 'closed', '', '40-revision-v1', '', '', '2021-12-06 13:53:30', '2021-12-06 13:53:30', '', 40, 'http://shellholster/?p=72', 0, 'revision', '', 0),
(73, 1, '2021-12-06 13:56:01', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2021-12-06 13:56:01', '0000-00-00 00:00:00', '', 0, 'http://shellholster/?post_type=acf-field-group&p=73', 0, 'acf-field-group', '', 0),
(74, 1, '2021-12-06 13:56:22', '2021-12-06 13:56:22', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:12:\"options_page\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:17:\"main-contact-info\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:4:\"left\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Contact info', 'contact-info', 'publish', 'open', 'open', '', 'group_6076f9c4cfb80', '', '', '2021-12-06 15:39:15', '2021-12-06 15:39:15', '', 0, 'http://shellholster/?p=74', 0, 'acf-field-group', '', 0),
(75, 1, '2021-12-06 13:56:20', '2021-12-06 13:56:20', 'a:9:{s:4:\"type\";s:5:\"email\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Email', 'email', 'publish', 'closed', 'closed', '', 'field_607802f563c73', '', '', '2021-12-06 13:56:20', '2021-12-06 13:56:20', '', 74, 'http://shellholster/?post_type=acf-field&p=75', 0, 'acf-field', '', 0),
(76, 1, '2021-12-06 13:56:20', '2021-12-06 13:56:20', 'a:10:{s:4:\"type\";s:8:\"repeater\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"collapsed\";s:0:\"\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:6:\"layout\";s:3:\"row\";s:12:\"button_label\";s:9:\"Add phone\";}', 'Phones', 'phones', 'publish', 'closed', 'closed', '', 'field_607802ea63c72', '', '', '2021-12-06 15:27:33', '2021-12-06 15:27:33', '', 74, 'http://shellholster/?post_type=acf-field&#038;p=76', 3, 'acf-field', '', 0),
(77, 1, '2021-12-06 13:56:21', '2021-12-06 13:56:21', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Телефон', 'phone', 'publish', 'closed', 'closed', '', 'field_6103eb13fd2c3', '', '', '2021-12-06 13:56:21', '2021-12-06 13:56:21', '', 76, 'http://shellholster/?post_type=acf-field&p=77', 0, 'acf-field', '', 0),
(78, 1, '2021-12-06 13:56:21', '2021-12-06 13:56:21', 'a:10:{s:4:\"type\";s:8:\"repeater\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"collapsed\";s:0:\"\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:6:\"layout\";s:3:\"row\";s:12:\"button_label\";s:10:\"Add social\";}', 'Socials', 'socials', 'publish', 'closed', 'closed', '', 'field_6078030963c74', '', '', '2021-12-06 15:27:33', '2021-12-06 15:27:33', '', 74, 'http://shellholster/?post_type=acf-field&#038;p=78', 4, 'acf-field', '', 0),
(90, 1, '2021-12-06 14:01:21', '2021-12-06 14:01:21', 'a:6:{s:4:\"type\";s:4:\"link\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";}', 'Link', 'social', 'publish', 'closed', 'closed', '', 'field_61ae17904cf2b', '', '', '2021-12-06 15:10:02', '2021-12-06 15:10:02', '', 78, 'http://shellholster/?post_type=acf-field&#038;p=90', 1, 'acf-field', '', 0),
(91, 1, '2021-12-06 14:53:06', '2021-12-06 14:53:06', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:93:\"add icon <a href=\"https://fontawesome.com/v5.15/icons?d=gallery&p=2\" target=\"_blank\">html</a>\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Icon', 'icon', 'publish', 'closed', 'closed', '', 'field_61ae23c1de2fa', '', '', '2021-12-06 15:10:01', '2021-12-06 15:10:01', '', 78, 'http://shellholster/?post_type=acf-field&#038;p=91', 0, 'acf-field', '', 0),
(92, 1, '2021-12-06 15:20:06', '2021-12-06 15:20:06', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Address', 'address', 'publish', 'closed', 'closed', '', 'field_61ae2a1147a78', '', '', '2021-12-06 15:20:32', '2021-12-06 15:20:32', '', 74, 'http://shellholster/?post_type=acf-field&#038;p=92', 1, 'acf-field', '', 0),
(93, 1, '2021-12-06 15:27:33', '2021-12-06 15:27:33', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:8:\"map html\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Map', 'map', 'publish', 'closed', 'closed', '', 'field_61ae2bddb9153', '', '', '2021-12-06 15:39:15', '2021-12-06 15:39:15', '', 74, 'http://shellholster/?post_type=acf-field&#038;p=93', 2, 'acf-field', '', 0),
(94, 1, '2021-12-06 18:32:30', '2021-12-06 18:32:30', 'The Shell Holster phone case is made of environmentally friendly polycarbonate and protects your smartphone from damage from all sides. Thanks to its user-friendly design, versatility and dust protection, our holster is great for everyday use as well as for use in extreme conditions. The innovative design provides the following benefits:\r\n<ul>\r\n 	<li>360 degree protection of your phone from drops, scratches, dust and dirt;</li>\r\n 	<li>Internal felt lining and raised beveled edge to protect the touchscreen from scratches;</li>\r\n 	<li>Kickstand with horizontal and vertical viewing allows you to conveniently position the device for viewing multimedia content and video communication;</li>\r\n 	<li>180 degree rotating belt clip;</li>\r\n 	<li>Full compatibility with all holes, cameras and buttons;</li>\r\n 	<li>Outside rubberized coating is anti-slip.</li>\r\n</ul>\r\nThe best protection case is a well-made, thin and light case that, thanks to its functional design and stylish appearance, compares favorably with most other offers on the market.', 'Google Pixel 6 Shell Holster Combo Case', '', 'publish', 'open', 'closed', '', 'google-pixel-6-shell-holster-combo-case', '', '', '2021-12-07 12:55:45', '2021-12-07 12:55:45', '', 0, 'http://shellholster/?post_type=product&#038;p=94', 0, 'product', '', 1),
(95, 1, '2021-12-06 18:33:38', '2021-12-06 18:33:38', '', 'Apple iPhone 13 Pro Max Shell Holster Combo Case', '', 'publish', 'open', 'closed', '', 'apple-iphone-13-pro-max-shell-holster-combo-case', '', '', '2021-12-08 18:26:21', '2021-12-08 18:26:21', '', 0, 'http://shellholster/?post_type=product&#038;p=95', 0, 'product', '', 0),
(96, 1, '2021-12-06 18:34:41', '2021-12-06 18:34:41', 'The Shell Holster phone case is made of environmentally friendly polycarbonate and protects your smartphone from damage from all sides. Thanks to its user-friendly design, versatility and dust protection, our holster is great for everyday use as well as for use in extreme conditions. The innovative design provides the following benefits:\r\n<ul>\r\n 	<li>360 degree protection of your phone from drops, scratches, dust and dirt;</li>\r\n 	<li>Internal felt lining and raised beveled edge to protect the touchscreen from scratches;</li>\r\n 	<li>Kickstand with horizontal and vertical viewing allows you to conveniently position the device for viewing multimedia content and video communication;</li>\r\n 	<li>180 degree rotating belt clip;</li>\r\n 	<li>Full compatibility with all holes, cameras and buttons;</li>\r\n 	<li>Outside rubberized coating is anti-slip.</li>\r\n</ul>\r\nThe best protection case is a well-made, thin and light case that, thanks to its functional design and stylish appearance, compares favorably with most other offers on the market.', 'Samsung Galaxy Note 20 Ultra 5G Shell Holster Combo Case', '', 'publish', 'open', 'closed', '', 'samsung-galaxy-note-20-ultra-5g-shell-holster-combo-case', '', '', '2021-12-08 18:26:33', '2021-12-08 18:26:33', '', 0, 'http://shellholster/?post_type=product&#038;p=96', 0, 'product', '', 0),
(101, 1, '2021-12-07 09:27:32', '2021-12-07 09:27:32', '', 'Shop', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2021-12-07 09:27:32', '2021-12-07 09:27:32', '', 6, 'http://shellholster/?p=101', 0, 'revision', '', 0),
(102, 1, '2021-12-08 18:28:28', '2021-12-07 12:52:29', '', 'Series', '', 'publish', 'closed', 'closed', '', 'series', '', '', '2021-12-08 18:28:28', '2021-12-08 18:28:28', '', 0, 'http://shellholster/?p=102', 3, 'nav_menu_item', '', 0),
(104, 1, '2021-12-08 18:28:28', '2021-12-07 13:45:50', ' ', '', '', 'publish', 'closed', 'closed', '', '104', '', '', '2021-12-08 18:28:28', '2021-12-08 18:28:28', '', 0, 'http://shellholster/?p=104', 9, 'nav_menu_item', '', 0),
(105, 1, '2021-12-08 18:28:28', '2021-12-07 13:45:50', ' ', '', '', 'publish', 'closed', 'closed', '', '105', '', '', '2021-12-08 18:28:28', '2021-12-08 18:28:28', '', 0, 'http://shellholster/?p=105', 8, 'nav_menu_item', '', 0),
(106, 1, '2021-12-08 18:28:28', '2021-12-07 13:45:50', ' ', '', '', 'publish', 'closed', 'closed', '', '106', '', '', '2021-12-08 18:28:28', '2021-12-08 18:28:28', '', 0, 'http://shellholster/?p=106', 7, 'nav_menu_item', '', 0),
(108, 1, '2021-12-07 13:56:56', '2021-12-07 13:56:56', '', 'Apple iPhone 11 Pro Max Shell Holster Combo Case', '', 'publish', 'open', 'closed', '', 'apple-iphone-11-pro-max-shell-holster-combo-case', '', '', '2021-12-08 18:57:53', '2021-12-08 18:57:53', '', 0, 'http://shellholster/?post_type=product&#038;p=108', 0, 'product', '', 0),
(109, 1, '2021-12-07 13:58:31', '2021-12-07 13:58:31', '{\n    \"woocommerce_catalog_columns\": {\n        \"value\": \"3\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-12-07 13:58:31\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'ceebd242-2f55-4340-b15e-3258bce0770e', '', '', '2021-12-07 13:58:31', '2021-12-07 13:58:31', '', 0, 'http://shellholster/ceebd242-2f55-4340-b15e-3258bce0770e/', 0, 'customize_changeset', '', 0),
(110, 1, '2021-12-07 14:09:44', '2021-12-07 14:09:44', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:8:\"taxonomy\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:11:\"product_cat\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Product categoty description', 'product-categoty-description', 'publish', 'closed', 'closed', '', 'group_61af6ab72a516', '', '', '2021-12-08 18:53:24', '2021-12-08 18:53:24', '', 0, 'http://shellholster/?post_type=acf-field-group&#038;p=110', 0, 'acf-field-group', '', 0),
(111, 1, '2021-12-07 14:09:44', '2021-12-07 14:09:44', 'a:10:{s:4:\"type\";s:7:\"wysiwyg\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:4:\"tabs\";s:3:\"all\";s:7:\"toolbar\";s:4:\"full\";s:12:\"media_upload\";i:1;s:5:\"delay\";i:0;}', 'After products list text', 'category_description', 'publish', 'closed', 'closed', '', 'field_61af6af6f3f8e', '', '', '2021-12-07 14:09:44', '2021-12-07 14:09:44', '', 110, 'http://shellholster/?post_type=acf-field&p=111', 0, 'acf-field', '', 0),
(112, 1, '2021-12-07 14:23:53', '2021-12-07 14:23:53', '<h2>Phone Case Store Shell Holster</h2>\r\nThe Shell Holster website presents a large selection of Cell Phone Cases. Quality is one of our top priorities, which is why we only have the best products from trusted suppliers.\r\n\r\nWe have Phone Cases for the following phone brands:\r\n<ul>\r\n 	<li><a href=\"https://shellholster.com/apple/\">Apple</a></li>\r\n 	<li><a href=\"https://shellholster.com/google/\">Google</a></li>\r\n 	<li><a href=\"https://shellholster.com/samsung/\">Samsung</a></li>\r\n 	<li><a href=\"https://shellholster.com/kyocera/\">Kyocera</a></li>\r\n 	<li><a href=\"https://shellholster.com/lg/\">LG</a></li>\r\n 	<li><a href=\"https://shellholster.com/htc/\">HTC</a></li>\r\n 	<li><a href=\"https://shellholster.com/motorola/\">Motorola</a></li>\r\n 	<li><a href=\"https://shellholster.com/oneplus/\">Oneplus</a></li>\r\n</ul>\r\nMore than 200 phone cases can be ordered on our website.\r\n\r\n&nbsp;\r\n<h3>Which phone case is the most durable?</h3>\r\nA large selection of protective accessories, presented by us, should help every buyer choose something worthy for his gadget. The first thing that begins with the selection of protection for your gadget is the definition of the smartphone model, since there are many similar models, it is important not to miss a single character in the name. In the navigation of our site, all smartphones are presented in order, so you can enter manually into the search bar, or simply select from the list. All products in our online store of phone cases are presented with photos and descriptions, but you can also contact the manager for advice, and he will explain everything you need.\r\n\r\nIn many respects, shock-resistant qualities depend on the type and design. Shell Holster Combo Case provides a high level of protection and ease of use.\r\n\r\n&nbsp;\r\n<h3>Choosing functional mobile phone cases.</h3>\r\nKnowing in detail how good accessories differ, it is much easier to make a choice, so we will describe the structure of the Shell Holster Combo Case. They cover a large area of ​​a mobile device and have a wide variety of functions. Made of high quality plastic.\r\n\r\nThe gadget fits snugly into the case that fits exactly all the holes and buttons. On the back there is a retractable stand that allows you to set up your phone for viewing multimedia content or video conferencing. The holster is equipped with a mount that allows you to securely attach the device to a belt, backpack, bag.\r\n\r\n&nbsp;\r\n<h3>Why is it important to purchase a smartphone case?</h3>\r\nOur popular shockproof cases are designed to protect your gadget while being lightweight, practical and functional. We know that the main thing for a gadget is protection, therefore our online store of covers only presents high-quality things that are not just decorative, they save from shock, wear, abrasions, cracks, absorb vibration, and in every possible way contribute to the long service life of the smartphone. The kit, necessary for every smartphone, will protect the gadget every day so that it does not crash, crack and spoil its new beautiful look.\r\n\r\n&nbsp;\r\n<h2>Can you buy quality phone cases for cheap?</h2>\r\nOur cheap phone case is an essential add-on for your smartphone. We have tried to put together the complete and best holster to provide protection for the gadget and convenience for the user. Items are dispatched daily so shoppers can receive their purchases faster. It is always cheaper to order via Internet, and we have promotions even at the first purchase!\r\n\r\nWe are the cheapest phone cases online every day of the week – you can order your favorite product day or night, we quickly process applications and make dispatches. Thanks to this, we can say that the phone case store near me. We work honestly and transparently. We easily make returns if the case doesn’t fit. We ourselves use the same cases, and we know everything about that, we check the accessories before shipping. We do our best to be the best for you!', 'Shop', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2021-12-07 14:23:53', '2021-12-07 14:23:53', '', 6, 'http://shellholster/?p=112', 0, 'revision', '', 0),
(113, 1, '2021-12-07 14:27:35', '2021-12-07 14:27:35', '<h2>Phone Case Store Shell Holster</h2>\r\nThe Shell Holster website presents a large selection of Cell Phone Cases. Quality is one of our top priorities, which is why we only have the best products from trusted suppliers.\r\n\r\nWe have Phone Cases for the following phone brands:\r\n<ul>\r\n 	<li><a href=\"https://shellholster.com/apple/\">Apple</a></li>\r\n 	<li><a href=\"https://shellholster.com/google/\">Google</a></li>\r\n 	<li><a href=\"https://shellholster.com/samsung/\">Samsung</a></li>\r\n 	<li><a href=\"https://shellholster.com/kyocera/\">Kyocera</a></li>\r\n 	<li><a href=\"https://shellholster.com/lg/\">LG</a></li>\r\n 	<li><a href=\"https://shellholster.com/htc/\">HTC</a></li>\r\n 	<li><a href=\"https://shellholster.com/motorola/\">Motorola</a></li>\r\n 	<li><a href=\"https://shellholster.com/oneplus/\">Oneplus</a></li>\r\n</ul>\r\nMore than 200 phone cases can be ordered on our website.\r\n<h3>Which phone case is the most durable?</h3>\r\nA large selection of protective accessories, presented by us, should help every buyer choose something worthy for his gadget. The first thing that begins with the selection of protection for your gadget is the definition of the smartphone model, since there are many similar models, it is important not to miss a single character in the name. In the navigation of our site, all smartphones are presented in order, so you can enter manually into the search bar, or simply select from the list. All products in our online store of phone cases are presented with photos and descriptions, but you can also contact the manager for advice, and he will explain everything you need.\r\n\r\nIn many respects, shock-resistant qualities depend on the type and design. Shell Holster Combo Case provides a high level of protection and ease of use.\r\n<h3>Choosing functional mobile phone cases.</h3>\r\nKnowing in detail how good accessories differ, it is much easier to make a choice, so we will describe the structure of the Shell Holster Combo Case. They cover a large area of ​​a mobile device and have a wide variety of functions. Made of high quality plastic.\r\n\r\nThe gadget fits snugly into the case that fits exactly all the holes and buttons. On the back there is a retractable stand that allows you to set up your phone for viewing multimedia content or video conferencing. The holster is equipped with a mount that allows you to securely attach the device to a belt, backpack, bag.\r\n<h3>Why is it important to purchase a smartphone case?</h3>\r\nOur popular shockproof cases are designed to protect your gadget while being lightweight, practical and functional. We know that the main thing for a gadget is protection, therefore our online store of covers only presents high-quality things that are not just decorative, they save from shock, wear, abrasions, cracks, absorb vibration, and in every possible way contribute to the long service life of the smartphone. The kit, necessary for every smartphone, will protect the gadget every day so that it does not crash, crack and spoil its new beautiful look.\r\n<h2>Can you buy quality phone cases for cheap?</h2>\r\nOur cheap phone case is an essential add-on for your smartphone. We have tried to put together the complete and best holster to provide protection for the gadget and convenience for the user. Items are dispatched daily so shoppers can receive their purchases faster. It is always cheaper to order via Internet, and we have promotions even at the first purchase!\r\n\r\nWe are the cheapest phone cases online every day of the week – you can order your favorite product day or night, we quickly process applications and make dispatches. Thanks to this, we can say that the phone case store near me. We work honestly and transparently. We easily make returns if the case doesn’t fit. We ourselves use the same cases, and we know everything about that, we check the accessories before shipping. We do our best to be the best for you!', 'Shop', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2021-12-07 14:27:35', '2021-12-07 14:27:35', '', 6, 'http://shellholster/?p=113', 0, 'revision', '', 0),
(114, 1, '2021-12-07 14:35:10', '0000-00-00 00:00:00', '', 'AUTO-DRAFT', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2021-12-07 14:35:10', '0000-00-00 00:00:00', '', 0, 'http://shellholster/?post_type=product&p=114', 0, 'product', '', 0),
(115, 1, '2021-12-07 14:40:15', '2021-12-07 14:40:15', '{\n    \"woocommerce_catalog_rows\": {\n        \"value\": \"1\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-12-07 14:40:15\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '0499f850-4a2b-432e-b739-b72949b1ce1c', '', '', '2021-12-07 14:40:15', '2021-12-07 14:40:15', '', 0, 'http://shellholster/0499f850-4a2b-432e-b739-b72949b1ce1c/', 0, 'customize_changeset', '', 0),
(116, 1, '2021-12-07 14:43:07', '2021-12-07 14:43:07', '{\n    \"woocommerce_catalog_rows\": {\n        \"value\": \"2\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-12-07 14:43:07\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '302f51f6-12a4-425a-9c19-a4fbb55f41bc', '', '', '2021-12-07 14:43:07', '2021-12-07 14:43:07', '', 0, 'http://shellholster/302f51f6-12a4-425a-9c19-a4fbb55f41bc/', 0, 'customize_changeset', '', 0),
(117, 1, '2021-12-07 14:47:06', '2021-12-07 14:47:06', '{\n    \"woocommerce_catalog_rows\": {\n        \"value\": \"1\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-12-07 14:47:06\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '2a1e7083-bd9b-4280-b9ca-8d4f864ed830', '', '', '2021-12-07 14:47:06', '2021-12-07 14:47:06', '', 0, 'http://shellholster/2a1e7083-bd9b-4280-b9ca-8d4f864ed830/', 0, 'customize_changeset', '', 0),
(118, 1, '2021-12-07 17:15:27', '2021-12-07 17:15:27', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Title', 'cases_title', 'publish', 'closed', 'closed', '', 'field_61af89d008910', '', '', '2021-12-07 17:15:27', '2021-12-07 17:15:27', '', 22, 'http://shellholster/?post_type=acf-field&p=118', 3, 'acf-field', '', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(119, 1, '2021-12-07 17:15:27', '2021-12-07 17:15:27', 'a:10:{s:4:\"type\";s:7:\"wysiwyg\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:4:\"tabs\";s:3:\"all\";s:7:\"toolbar\";s:5:\"basic\";s:12:\"media_upload\";i:1;s:5:\"delay\";i:0;}', 'Text', 'cases_text', 'publish', 'closed', 'closed', '', 'field_61af8a0e08911', '', '', '2021-12-07 17:15:27', '2021-12-07 17:15:27', '', 22, 'http://shellholster/?post_type=acf-field&p=119', 4, 'acf-field', '', 0),
(120, 1, '2021-12-07 17:15:27', '2021-12-07 17:15:27', 'a:6:{s:4:\"type\";s:4:\"link\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";}', 'Button', 'cases_button', 'publish', 'closed', 'closed', '', 'field_61af8a2808912', '', '', '2021-12-07 17:15:27', '2021-12-07 17:15:27', '', 22, 'http://shellholster/?post_type=acf-field&p=120', 5, 'acf-field', '', 0),
(121, 1, '2021-12-07 17:15:27', '2021-12-07 17:15:27', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Suptitle', 'series_suptitle', 'publish', 'closed', 'closed', '', 'field_61af8a7808914', '', '', '2021-12-07 17:15:27', '2021-12-07 17:15:27', '', 22, 'http://shellholster/?post_type=acf-field&p=121', 7, 'acf-field', '', 0),
(122, 1, '2021-12-07 17:15:28', '2021-12-07 17:15:28', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Title', 'series_title', 'publish', 'closed', 'closed', '', 'field_61af8a5608913', '', '', '2021-12-07 17:15:28', '2021-12-07 17:15:28', '', 22, 'http://shellholster/?post_type=acf-field&p=122', 8, 'acf-field', '', 0),
(123, 1, '2021-12-07 17:15:28', '2021-12-07 17:15:28', 'a:10:{s:4:\"type\";s:8:\"repeater\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"collapsed\";s:0:\"\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:6:\"layout\";s:3:\"row\";s:12:\"button_label\";s:10:\"Add series\";}', 'Series list', 'series_list', 'publish', 'closed', 'closed', '', 'field_61af8abe08915', '', '', '2021-12-07 17:26:12', '2021-12-07 17:26:12', '', 22, 'http://shellholster/?post_type=acf-field&#038;p=123', 9, 'acf-field', '', 0),
(124, 1, '2021-12-07 17:15:28', '2021-12-07 17:15:28', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Title', 'title', 'publish', 'closed', 'closed', '', 'field_61af8aeb08918', '', '', '2021-12-07 17:15:28', '2021-12-07 17:15:28', '', 123, 'http://shellholster/?post_type=acf-field&p=124', 0, 'acf-field', '', 0),
(125, 1, '2021-12-07 17:15:28', '2021-12-07 17:15:28', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";s:12:\"preview_size\";s:4:\"full\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Image', 'image', 'publish', 'closed', 'closed', '', 'field_61af8abe08916', '', '', '2021-12-07 17:32:44', '2021-12-07 17:32:44', '', 123, 'http://shellholster/?post_type=acf-field&#038;p=125', 2, 'acf-field', '', 0),
(126, 1, '2021-12-07 17:15:28', '2021-12-07 17:15:28', 'a:6:{s:4:\"type\";s:4:\"link\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:0:\"\";}', 'Link', 'link', 'publish', 'closed', 'closed', '', 'field_61af8abe08917', '', '', '2021-12-07 17:26:12', '2021-12-07 17:26:12', '', 123, 'http://shellholster/?post_type=acf-field&#038;p=126', 3, 'acf-field', '', 0),
(127, 1, '2021-12-07 17:15:28', '2021-12-07 17:15:28', 'a:7:{s:4:\"type\";s:3:\"tab\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"placement\";s:4:\"left\";s:8:\"endpoint\";i:0;}', 'Design', '_copy', 'publish', 'closed', 'closed', '', 'field_61af8b1d08919', '', '', '2021-12-07 17:26:13', '2021-12-07 17:26:13', '', 22, 'http://shellholster/?post_type=acf-field&#038;p=127', 10, 'acf-field', '', 0),
(128, 1, '2021-12-07 17:15:28', '2021-12-07 17:15:28', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Suptitle', 'design_suptitle', 'publish', 'closed', 'closed', '', 'field_61af8b340891b', '', '', '2021-12-07 17:26:13', '2021-12-07 17:26:13', '', 22, 'http://shellholster/?post_type=acf-field&#038;p=128', 11, 'acf-field', '', 0),
(129, 1, '2021-12-07 17:15:29', '2021-12-07 17:15:29', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Title', 'design_title', 'publish', 'closed', 'closed', '', 'field_61af8b2e0891a', '', '', '2021-12-07 17:26:13', '2021-12-07 17:26:13', '', 22, 'http://shellholster/?post_type=acf-field&#038;p=129', 12, 'acf-field', '', 0),
(130, 1, '2021-12-07 17:15:29', '2021-12-07 17:15:29', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";s:12:\"preview_size\";s:4:\"full\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Image', 'design_img', 'publish', 'closed', 'closed', '', 'field_61af8b520891c', '', '', '2021-12-07 17:26:13', '2021-12-07 17:26:13', '', 22, 'http://shellholster/?post_type=acf-field&#038;p=130', 13, 'acf-field', '', 0),
(131, 1, '2021-12-07 17:15:29', '2021-12-07 17:15:29', 'a:7:{s:4:\"type\";s:3:\"tab\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"placement\";s:4:\"left\";s:8:\"endpoint\";i:0;}', 'Portability', '_copy', 'publish', 'closed', 'closed', '', 'field_61af8b700891d', '', '', '2021-12-07 17:26:13', '2021-12-07 17:26:13', '', 22, 'http://shellholster/?post_type=acf-field&#038;p=131', 14, 'acf-field', '', 0),
(132, 1, '2021-12-07 17:15:29', '2021-12-07 17:15:29', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Suptitle', 'portability_suptitle', 'publish', 'closed', 'closed', '', 'field_61af8ba10891f', '', '', '2021-12-07 17:26:13', '2021-12-07 17:26:13', '', 22, 'http://shellholster/?post_type=acf-field&#038;p=132', 15, 'acf-field', '', 0),
(133, 1, '2021-12-07 17:15:29', '2021-12-07 17:15:29', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Title', 'portability_title', 'publish', 'closed', 'closed', '', 'field_61af8ba408920', '', '', '2021-12-07 17:26:13', '2021-12-07 17:26:13', '', 22, 'http://shellholster/?post_type=acf-field&#038;p=133', 16, 'acf-field', '', 0),
(134, 1, '2021-12-07 17:15:29', '2021-12-07 17:15:29', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";s:12:\"preview_size\";s:4:\"full\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Image', 'portability_img', 'publish', 'closed', 'closed', '', 'field_61af8bcb08921', '', '', '2021-12-07 17:26:13', '2021-12-07 17:26:13', '', 22, 'http://shellholster/?post_type=acf-field&#038;p=134', 17, 'acf-field', '', 0),
(135, 1, '2021-12-07 17:15:29', '2021-12-07 17:15:29', 'a:7:{s:4:\"type\";s:3:\"tab\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"placement\";s:4:\"left\";s:8:\"endpoint\";i:0;}', 'Features', '_copy2', 'publish', 'closed', 'closed', '', 'field_61af8c0908922', '', '', '2021-12-07 17:26:13', '2021-12-07 17:26:13', '', 22, 'http://shellholster/?post_type=acf-field&#038;p=135', 18, 'acf-field', '', 0),
(136, 1, '2021-12-07 17:15:29', '2021-12-07 17:15:29', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Suptitle', 'features_suptitle', 'publish', 'closed', 'closed', '', 'field_61af8c1108923', '', '', '2021-12-07 17:26:13', '2021-12-07 17:26:13', '', 22, 'http://shellholster/?post_type=acf-field&#038;p=136', 19, 'acf-field', '', 0),
(137, 1, '2021-12-07 17:15:30', '2021-12-07 17:15:30', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Title', 'features_title', 'publish', 'closed', 'closed', '', 'field_61af8c1408924', '', '', '2021-12-07 17:26:13', '2021-12-07 17:26:13', '', 22, 'http://shellholster/?post_type=acf-field&#038;p=137', 20, 'acf-field', '', 0),
(138, 1, '2021-12-07 17:15:30', '2021-12-07 17:15:30', 'a:10:{s:4:\"type\";s:8:\"repeater\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"collapsed\";s:0:\"\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:6:\"layout\";s:3:\"row\";s:12:\"button_label\";s:11:\"Add feature\";}', 'Features list', 'features_list', 'publish', 'closed', 'closed', '', 'field_61af8c2f08926', '', '', '2021-12-07 17:45:44', '2021-12-07 17:45:44', '', 22, 'http://shellholster/?post_type=acf-field&#038;p=138', 21, 'acf-field', '', 0),
(139, 1, '2021-12-07 17:15:30', '2021-12-07 17:15:30', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Title', 'title', 'publish', 'closed', 'closed', '', 'field_61af8c2f08927', '', '', '2021-12-07 17:15:30', '2021-12-07 17:15:30', '', 138, 'http://shellholster/?post_type=acf-field&p=139', 0, 'acf-field', '', 0),
(140, 1, '2021-12-07 17:15:30', '2021-12-07 17:15:30', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";s:12:\"preview_size\";s:4:\"full\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Image', 'image', 'publish', 'closed', 'closed', '', 'field_61af8c2f08928', '', '', '2021-12-07 17:15:30', '2021-12-07 17:15:30', '', 138, 'http://shellholster/?post_type=acf-field&p=140', 1, 'acf-field', '', 0),
(141, 1, '2021-12-07 17:15:30', '2021-12-07 17:15:30', 'a:10:{s:4:\"type\";s:4:\"file\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:7:\"library\";s:3:\"all\";s:8:\"min_size\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Video', 'features_video', 'publish', 'closed', 'closed', '', 'field_61af8c7e0892a', '', '', '2021-12-07 17:45:44', '2021-12-07 17:45:44', '', 22, 'http://shellholster/?post_type=acf-field&#038;p=141', 22, 'acf-field', '', 0),
(142, 1, '2021-12-07 17:15:30', '2021-12-07 17:15:30', 'a:7:{s:4:\"type\";s:3:\"tab\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"placement\";s:4:\"left\";s:8:\"endpoint\";i:0;}', 'Types', '_copy', 'publish', 'closed', 'closed', '', 'field_61af8cc10892b', '', '', '2021-12-08 16:16:33', '2021-12-08 16:16:33', '', 22, 'http://shellholster/?post_type=acf-field&#038;p=142', 24, 'acf-field', '', 0),
(143, 1, '2021-12-07 17:15:30', '2021-12-07 17:15:30', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Suptitle', 'types_suptitle', 'publish', 'closed', 'closed', '', 'field_61af8ccc0892c', '', '', '2021-12-08 16:16:33', '2021-12-08 16:16:33', '', 22, 'http://shellholster/?post_type=acf-field&#038;p=143', 25, 'acf-field', '', 0),
(144, 1, '2021-12-07 17:15:31', '2021-12-07 17:15:31', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Title', 'types_title', 'publish', 'closed', 'closed', '', 'field_61af8cce0892d', '', '', '2021-12-08 16:16:33', '2021-12-08 16:16:33', '', 22, 'http://shellholster/?post_type=acf-field&#038;p=144', 26, 'acf-field', '', 0),
(145, 1, '2021-12-07 17:15:31', '2021-12-07 17:15:31', 'a:7:{s:4:\"type\";s:3:\"tab\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"placement\";s:4:\"left\";s:8:\"endpoint\";i:0;}', 'Brands', '_copy', 'publish', 'closed', 'closed', '', 'field_61af8dda0892e', '', '', '2021-12-08 16:16:33', '2021-12-08 16:16:33', '', 22, 'http://shellholster/?post_type=acf-field&#038;p=145', 27, 'acf-field', '', 0),
(146, 1, '2021-12-07 17:15:31', '2021-12-07 17:15:31', 'a:18:{s:4:\"type\";s:7:\"gallery\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";s:12:\"preview_size\";s:6:\"medium\";s:6:\"insert\";s:6:\"append\";s:7:\"library\";s:3:\"all\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Brands slider', 'brands_list', 'publish', 'closed', 'closed', '', 'field_61af8de30892f', '', '', '2021-12-08 16:16:33', '2021-12-08 16:16:33', '', 22, 'http://shellholster/?post_type=acf-field&#038;p=146', 28, 'acf-field', '', 0),
(148, 1, '2021-12-07 17:15:31', '2021-12-07 17:15:31', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Suptitle', 'reviews_suptitle', 'publish', 'closed', 'closed', '', 'field_61af8e1308932', '', '', '2021-12-08 17:00:00', '2021-12-08 17:00:00', '', 22, 'http://shellholster/?post_type=acf-field&#038;p=148', 30, 'acf-field', '', 0),
(149, 1, '2021-12-07 17:15:31', '2021-12-07 17:15:31', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Title', 'reviews_title', 'publish', 'closed', 'closed', '', 'field_61af8e1608933', '', '', '2021-12-08 17:00:00', '2021-12-08 17:00:00', '', 22, 'http://shellholster/?post_type=acf-field&#038;p=149', 31, 'acf-field', '', 0),
(150, 1, '2021-12-07 17:15:31', '2021-12-07 17:15:31', 'a:7:{s:4:\"type\";s:3:\"tab\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"placement\";s:4:\"left\";s:8:\"endpoint\";i:0;}', 'About', '_copy', 'publish', 'closed', 'closed', '', 'field_61af942b08934', '', '', '2021-12-08 17:00:00', '2021-12-08 17:00:00', '', 22, 'http://shellholster/?post_type=acf-field&#038;p=150', 33, 'acf-field', '', 0),
(151, 1, '2021-12-07 17:15:31', '2021-12-07 17:15:31', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Title', 'about_title', 'publish', 'closed', 'closed', '', 'field_61af943608935', '', '', '2021-12-08 17:00:00', '2021-12-08 17:00:00', '', 22, 'http://shellholster/?post_type=acf-field&#038;p=151', 34, 'acf-field', '', 0),
(152, 1, '2021-12-07 17:15:32', '2021-12-07 17:15:32', 'a:10:{s:4:\"type\";s:7:\"wysiwyg\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:4:\"tabs\";s:3:\"all\";s:7:\"toolbar\";s:4:\"full\";s:12:\"media_upload\";i:0;s:5:\"delay\";i:0;}', 'Text', 'about_text', 'publish', 'closed', 'closed', '', 'field_61af944e08937', '', '', '2021-12-08 17:00:00', '2021-12-08 17:00:00', '', 22, 'http://shellholster/?post_type=acf-field&#038;p=152', 35, 'acf-field', '', 0),
(153, 1, '2021-12-07 17:15:32', '2021-12-07 17:15:32', 'a:6:{s:4:\"type\";s:4:\"link\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";}', 'Button', 'about_button', 'publish', 'closed', 'closed', '', 'field_61af946408938', '', '', '2021-12-08 17:00:00', '2021-12-08 17:00:00', '', 22, 'http://shellholster/?post_type=acf-field&#038;p=153', 36, 'acf-field', '', 0),
(155, 1, '2021-12-07 17:23:10', '2021-12-07 17:23:10', '', 'ChooseYourFunctionalityDefender', '', 'inherit', 'open', 'closed', '', 'chooseyourfunctionalitydefender', '', '', '2021-12-07 17:23:10', '2021-12-07 17:23:10', '', 2, 'http://shellholster/wp-content/uploads/2021/12/ChooseYourFunctionalityDefender.png', 0, 'attachment', 'image/png', 0),
(156, 1, '2021-12-07 17:23:13', '2021-12-07 17:23:13', '', 'Choose Your Functionality - Dual Layer 2', '', 'inherit', 'open', 'closed', '', 'choose-your-functionality-dual-layer-2', '', '', '2021-12-07 17:23:13', '2021-12-07 17:23:13', '', 2, 'http://shellholster/wp-content/uploads/2021/12/Choose-Your-Functionality-Dual-Layer-2.png', 0, 'attachment', 'image/png', 0),
(157, 1, '2021-12-07 17:23:16', '2021-12-07 17:23:16', '', 'Choose Your Functionality - Dual Layer', '', 'inherit', 'open', 'closed', '', 'choose-your-functionality-dual-layer', '', '', '2021-12-07 17:23:16', '2021-12-07 17:23:16', '', 2, 'http://shellholster/wp-content/uploads/2021/12/Choose-Your-Functionality-Dual-Layer.png', 0, 'attachment', 'image/png', 0),
(158, 1, '2021-12-07 17:23:18', '2021-12-07 17:23:18', '', 'Choose Your Functionality - Shell Holster', '', 'inherit', 'open', 'closed', '', 'choose-your-functionality-shell-holster', '', '', '2021-12-07 17:23:18', '2021-12-07 17:23:18', '', 2, 'http://shellholster/wp-content/uploads/2021/12/Choose-Your-Functionality-Shell-Holster.png', 0, 'attachment', 'image/png', 0),
(161, 1, '2021-12-07 17:26:12', '2021-12-07 17:26:12', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Text', 'text', 'publish', 'closed', 'closed', '', 'field_61af9927be222', '', '', '2021-12-07 17:26:12', '2021-12-07 17:26:12', '', 123, 'http://shellholster/?post_type=acf-field&p=161', 1, 'acf-field', '', 0),
(163, 1, '2021-12-07 17:34:10', '2021-12-07 17:34:10', '', 'MoreFeaturesMoreProtection', '', 'inherit', 'open', 'closed', '', 'morefeaturesmoreprotection', '', '', '2021-12-07 17:34:10', '2021-12-07 17:34:10', '', 2, 'http://shellholster/wp-content/uploads/2021/12/MoreFeaturesMoreProtection.png', 0, 'attachment', 'image/png', 0),
(165, 1, '2021-12-07 17:39:04', '2021-12-07 17:39:04', '', '180BeltClip', '', 'inherit', 'open', 'closed', '', '180beltclip', '', '', '2021-12-07 17:39:04', '2021-12-07 17:39:04', '', 2, 'http://shellholster/wp-content/uploads/2021/12/180BeltClip.png', 0, 'attachment', 'image/png', 0),
(167, 1, '2021-12-07 17:42:22', '2021-12-07 17:42:22', '', 'ExtraFeaturesWirelessCharging', '', 'inherit', 'open', 'closed', '', 'extrafeatureswirelesscharging', '', '', '2021-12-07 17:42:22', '2021-12-07 17:42:22', '', 2, 'http://shellholster/wp-content/uploads/2021/12/ExtraFeaturesWirelessCharging.png', 0, 'attachment', 'image/png', 0),
(168, 1, '2021-12-07 17:42:24', '2021-12-07 17:42:24', '', 'ExtraFeaturesEasilyRemovable', '', 'inherit', 'open', 'closed', '', 'extrafeatureseasilyremovable', '', '', '2021-12-07 17:42:24', '2021-12-07 17:42:24', '', 2, 'http://shellholster/wp-content/uploads/2021/12/ExtraFeaturesEasilyRemovable.png', 0, 'attachment', 'image/png', 0),
(169, 1, '2021-12-07 17:42:25', '2021-12-07 17:42:25', '', 'ExtraFeaturesHorizontaKickstand', '', 'inherit', 'open', 'closed', '', 'extrafeatureshorizontakickstand', '', '', '2021-12-07 17:42:25', '2021-12-07 17:42:25', '', 2, 'http://shellholster/wp-content/uploads/2021/12/ExtraFeaturesHorizontaKickstand.png', 0, 'attachment', 'image/png', 0),
(170, 1, '2021-12-07 17:42:26', '2021-12-07 17:42:26', '', 'ExtraFeaturesVerticalKickstand', '', 'inherit', 'open', 'closed', '', 'extrafeaturesverticalkickstand', '', '', '2021-12-07 17:42:26', '2021-12-07 17:42:26', '', 2, 'http://shellholster/wp-content/uploads/2021/12/ExtraFeaturesVerticalKickstand.png', 0, 'attachment', 'image/png', 0),
(171, 1, '2021-12-07 17:43:06', '2021-12-07 17:43:06', '', 'Home', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2021-12-07 17:43:06', '2021-12-07 17:43:06', '', 2, 'http://shellholster/?p=171', 0, 'revision', '', 0),
(172, 1, '2021-12-08 11:31:22', '2021-12-08 11:31:22', 'a:10:{s:4:\"type\";s:8:\"repeater\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"collapsed\";s:0:\"\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:6:\"layout\";s:3:\"row\";s:12:\"button_label\";s:10:\"Add review\";}', 'Reviews slider', 'reviews_list', 'publish', 'closed', 'closed', '', 'field_61b096725d44a', '', '', '2021-12-08 17:00:00', '2021-12-08 17:00:00', '', 22, 'http://shellholster/?post_type=acf-field&#038;p=172', 32, 'acf-field', '', 0),
(173, 1, '2021-12-08 11:31:22', '2021-12-08 11:31:22', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Title', 'title', 'publish', 'closed', 'closed', '', 'field_61b0968d5d44c', '', '', '2021-12-08 11:31:22', '2021-12-08 11:31:22', '', 172, 'http://shellholster/?post_type=acf-field&p=173', 0, 'acf-field', '', 0),
(174, 1, '2021-12-08 11:31:22', '2021-12-08 11:31:22', 'a:10:{s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";i:3;s:9:\"new_lines\";s:2:\"br\";}', 'Text', 'text', 'publish', 'closed', 'closed', '', 'field_61b096965d44d', '', '', '2021-12-08 11:39:25', '2021-12-08 11:39:25', '', 172, 'http://shellholster/?post_type=acf-field&#038;p=174', 1, 'acf-field', '', 0),
(175, 1, '2021-12-08 11:31:22', '2021-12-08 11:31:22', 'a:10:{s:4:\"type\";s:12:\"button_group\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:7:\"choices\";a:5:{i:1;s:55:\"1 <span class=\"dashicons dashicons-star-filled\"></span>\";i:2;s:55:\"2 <span class=\"dashicons dashicons-star-filled\"></span>\";i:3;s:55:\"3 <span class=\"dashicons dashicons-star-filled\"></span>\";i:4;s:55:\"4 <span class=\"dashicons dashicons-star-filled\"></span>\";i:5;s:55:\"5 <span class=\"dashicons dashicons-star-filled\"></span>\";}s:10:\"allow_null\";i:0;s:13:\"default_value\";s:0:\"\";s:6:\"layout\";s:10:\"horizontal\";s:13:\"return_format\";s:5:\"value\";}', 'Rating', 'rating', 'publish', 'closed', 'closed', '', 'field_61b096b05d44e', '', '', '2021-12-08 11:39:25', '2021-12-08 11:39:25', '', 172, 'http://shellholster/?post_type=acf-field&#038;p=175', 2, 'acf-field', '', 0),
(176, 1, '2021-12-08 11:31:22', '2021-12-08 11:31:22', 'a:6:{s:4:\"type\";s:4:\"link\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";}', 'Button', 'button', 'publish', 'closed', 'closed', '', 'field_61b0977b5d44f', '', '', '2021-12-08 11:39:25', '2021-12-08 11:39:25', '', 172, 'http://shellholster/?post_type=acf-field&#038;p=176', 4, 'acf-field', '', 0),
(177, 1, '2021-12-08 11:38:25', '2021-12-08 11:38:25', '', 'Home', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2021-12-08 11:38:25', '2021-12-08 11:38:25', '', 2, 'http://shellholster/?p=177', 0, 'revision', '', 0),
(178, 1, '2021-12-08 11:39:25', '2021-12-08 11:39:25', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Customer name', 'author', 'publish', 'closed', 'closed', '', 'field_61b09959065fb', '', '', '2021-12-08 11:39:25', '2021-12-08 11:39:25', '', 172, 'http://shellholster/?post_type=acf-field&p=178', 3, 'acf-field', '', 0),
(179, 1, '2021-12-08 11:39:53', '2021-12-08 11:39:53', '', 'Home', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2021-12-08 11:39:53', '2021-12-08 11:39:53', '', 2, 'http://shellholster/?p=179', 0, 'revision', '', 0),
(180, 1, '2021-12-08 11:41:45', '2021-12-08 11:41:45', '', 'Home', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2021-12-08 11:41:45', '2021-12-08 11:41:45', '', 2, 'http://shellholster/?p=180', 0, 'revision', '', 0),
(181, 1, '2021-12-08 11:42:48', '2021-12-08 11:42:48', '', 'BrandHTC', '', 'inherit', 'open', 'closed', '', 'brandhtc', '', '', '2021-12-08 11:42:48', '2021-12-08 11:42:48', '', 2, 'http://shellholster/wp-content/uploads/2021/12/BrandHTC.png', 0, 'attachment', 'image/png', 0),
(182, 1, '2021-12-08 11:42:49', '2021-12-08 11:42:49', '', 'BrandLG', '', 'inherit', 'open', 'closed', '', 'brandlg', '', '', '2021-12-08 11:42:49', '2021-12-08 11:42:49', '', 2, 'http://shellholster/wp-content/uploads/2021/12/BrandLG.png', 0, 'attachment', 'image/png', 0),
(183, 1, '2021-12-08 11:42:50', '2021-12-08 11:42:50', '', 'BrandMoto', '', 'inherit', 'open', 'closed', '', 'brandmoto', '', '', '2021-12-08 11:42:50', '2021-12-08 11:42:50', '', 2, 'http://shellholster/wp-content/uploads/2021/12/BrandMoto.png', 0, 'attachment', 'image/png', 0),
(184, 1, '2021-12-08 11:42:51', '2021-12-08 11:42:51', '', 'BrandSansung', '', 'inherit', 'open', 'closed', '', 'brandsansung', '', '', '2021-12-08 11:42:51', '2021-12-08 11:42:51', '', 2, 'http://shellholster/wp-content/uploads/2021/12/BrandSansung.png', 0, 'attachment', 'image/png', 0),
(185, 1, '2021-12-08 11:42:52', '2021-12-08 11:42:52', '', 'Brand', '', 'inherit', 'open', 'closed', '', 'brand', '', '', '2021-12-08 11:42:52', '2021-12-08 11:42:52', '', 2, 'http://shellholster/wp-content/uploads/2021/12/Brand.png', 0, 'attachment', 'image/png', 0),
(186, 1, '2021-12-08 11:42:53', '2021-12-08 11:42:53', '', 'BrandApple', '', 'inherit', 'open', 'closed', '', 'brandapple', '', '', '2021-12-08 11:42:53', '2021-12-08 11:42:53', '', 2, 'http://shellholster/wp-content/uploads/2021/12/BrandApple.png', 0, 'attachment', 'image/png', 0),
(187, 1, '2021-12-08 11:42:59', '2021-12-08 11:42:59', '', 'Home', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2021-12-08 11:42:59', '2021-12-08 11:42:59', '', 2, 'http://shellholster/?p=187', 0, 'revision', '', 0),
(188, 1, '2021-12-08 15:50:53', '2021-12-08 15:50:53', '', 'Shell-Holster-Combo-1', '', 'inherit', 'open', 'closed', '', 'shell-holster-combo-1', '', '', '2021-12-08 15:50:53', '2021-12-08 15:50:53', '', 2, 'http://shellholster/wp-content/uploads/2021/12/Shell-Holster-Combo-1.mp4', 0, 'attachment', 'video/mp4', 0),
(189, 1, '2021-12-08 15:51:11', '2021-12-08 15:51:11', '', 'Home', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2021-12-08 15:51:11', '2021-12-08 15:51:11', '', 2, 'http://shellholster/?p=189', 0, 'revision', '', 0),
(190, 1, '2021-12-08 16:16:33', '2021-12-08 16:16:33', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";s:12:\"preview_size\";s:4:\"full\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Video preview', 'features_preview', 'publish', 'closed', 'closed', '', 'field_61b0da508f25b', '', '', '2021-12-08 16:16:33', '2021-12-08 16:16:33', '', 22, 'http://shellholster/?post_type=acf-field&p=190', 23, 'acf-field', '', 0),
(191, 1, '2021-12-08 16:21:09', '2021-12-08 16:21:09', '', 'video', '', 'inherit', 'open', 'closed', '', 'video', '', '', '2021-12-08 16:21:09', '2021-12-08 16:21:09', '', 2, 'http://shellholster/wp-content/uploads/2021/12/video.png', 0, 'attachment', 'image/png', 0),
(192, 1, '2021-12-08 16:21:17', '2021-12-08 16:21:17', '', 'Home', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2021-12-08 16:21:17', '2021-12-08 16:21:17', '', 2, 'http://shellholster/?p=192', 0, 'revision', '', 0),
(193, 1, '2021-12-08 17:00:00', '2021-12-08 17:00:00', 'a:7:{s:4:\"type\";s:3:\"tab\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"placement\";s:4:\"left\";s:8:\"endpoint\";i:0;}', 'Filter', '_copy', 'publish', 'closed', 'closed', '', 'field_61b0e44d3eac6', '', '', '2021-12-08 17:00:00', '2021-12-08 17:00:00', '', 22, 'http://shellholster/?post_type=acf-field&p=193', 37, 'acf-field', '', 0),
(194, 1, '2021-12-08 17:00:00', '2021-12-08 17:00:00', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Suptitle', 'filters_suptitle', 'publish', 'closed', 'closed', '', 'field_61b0e4623eac7', '', '', '2021-12-08 17:29:08', '2021-12-08 17:29:08', '', 22, 'http://shellholster/?post_type=acf-field&#038;p=194', 38, 'acf-field', '', 0),
(195, 1, '2021-12-08 17:00:00', '2021-12-08 17:00:00', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Title', 'filters_title', 'publish', 'closed', 'closed', '', 'field_61b0e46b3eac9', '', '', '2021-12-08 17:30:06', '2021-12-08 17:30:06', '', 22, 'http://shellholster/?post_type=acf-field&#038;p=195', 39, 'acf-field', '', 0),
(196, 1, '2021-12-08 17:00:20', '2021-12-08 17:00:20', '', 'Home', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2021-12-08 17:00:20', '2021-12-08 17:00:20', '', 2, 'http://shellholster/?p=196', 0, 'revision', '', 0),
(197, 1, '2021-12-08 17:29:08', '2021-12-08 17:29:08', 'a:7:{s:4:\"type\";s:3:\"tab\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"placement\";s:4:\"left\";s:8:\"endpoint\";i:0;}', 'Go to store', '_copy', 'publish', 'closed', 'closed', '', 'field_61b0eb4bff64f', '', '', '2021-12-08 17:30:06', '2021-12-08 17:30:06', '', 22, 'http://shellholster/?post_type=acf-field&#038;p=197', 40, 'acf-field', '', 0),
(198, 1, '2021-12-08 17:30:06', '2021-12-08 17:30:06', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Suptitle', 'to_store_suptitle', 'publish', 'closed', 'closed', '', 'field_61b0eb6a4ea57', '', '', '2021-12-08 17:30:06', '2021-12-08 17:30:06', '', 22, 'http://shellholster/?post_type=acf-field&p=198', 41, 'acf-field', '', 0),
(199, 1, '2021-12-08 17:30:06', '2021-12-08 17:30:06', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Ttitle', 'to_store_title', 'publish', 'closed', 'closed', '', 'field_61b0eb794ea58', '', '', '2021-12-08 17:30:06', '2021-12-08 17:30:06', '', 22, 'http://shellholster/?post_type=acf-field&p=199', 42, 'acf-field', '', 0),
(200, 1, '2021-12-08 17:30:06', '2021-12-08 17:30:06', 'a:6:{s:4:\"type\";s:4:\"link\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";}', 'Button', 'to_store_button', 'publish', 'closed', 'closed', '', 'field_61b0eb864ea59', '', '', '2021-12-08 17:32:47', '2021-12-08 17:32:47', '', 22, 'http://shellholster/?post_type=acf-field&#038;p=200', 43, 'acf-field', '', 0),
(201, 1, '2021-12-08 17:30:35', '2021-12-08 17:30:35', '', 'Home', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2021-12-08 17:30:35', '2021-12-08 17:30:35', '', 2, 'http://shellholster/?p=201', 0, 'revision', '', 0),
(202, 1, '2021-12-08 17:32:47', '2021-12-08 17:32:47', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:12:\"preview_size\";s:4:\"full\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Background', 'to_store_bg', 'publish', 'closed', 'closed', '', 'field_61b0ec24ad35c', '', '', '2021-12-08 17:32:47', '2021-12-08 17:32:47', '', 22, 'http://shellholster/?post_type=acf-field&p=202', 44, 'acf-field', '', 0),
(203, 1, '2021-12-08 17:32:56', '2021-12-08 17:32:56', '', 'gotoStore', '', 'inherit', 'open', 'closed', '', 'gotostore', '', '', '2021-12-08 17:32:56', '2021-12-08 17:32:56', '', 2, 'http://shellholster/wp-content/uploads/2021/12/gotoStore.png', 0, 'attachment', 'image/png', 0),
(204, 1, '2021-12-08 17:33:02', '2021-12-08 17:33:02', '', 'Home', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2021-12-08 17:33:02', '2021-12-08 17:33:02', '', 2, 'http://shellholster/?p=204', 0, 'revision', '', 0),
(205, 1, '2021-12-08 18:28:28', '2021-12-08 18:07:14', '', 'Google', '', 'publish', 'closed', 'closed', '', 'google', '', '', '2021-12-08 18:28:28', '2021-12-08 18:28:28', '', 0, 'http://shellholster/?p=205', 5, 'nav_menu_item', '', 0),
(206, 1, '2021-12-08 18:28:28', '2021-12-08 18:07:14', '', 'Apple', '', 'publish', 'closed', 'closed', '', 'apple', '', '', '2021-12-08 18:28:28', '2021-12-08 18:28:28', '', 0, 'http://shellholster/?p=206', 4, 'nav_menu_item', '', 0),
(207, 1, '2021-12-08 18:28:28', '2021-12-08 18:07:14', '', 'Samsung', '', 'publish', 'closed', 'closed', '', 'sumsung', '', '', '2021-12-08 18:28:28', '2021-12-08 18:28:28', '', 0, 'http://shellholster/?p=207', 6, 'nav_menu_item', '', 0),
(208, 1, '2021-12-08 18:28:28', '2021-12-08 18:28:28', '', 'Pre Order', '', 'publish', 'closed', 'closed', '', 'pre-order-2', '', '', '2021-12-08 18:28:28', '2021-12-08 18:28:28', '', 0, 'http://shellholster/?p=208', 1, 'nav_menu_item', '', 0);

-- --------------------------------------------------------

--
-- Структура таблиці `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп даних таблиці `wp_termmeta`
--

INSERT INTO `wp_termmeta` (`meta_id`, `term_id`, `meta_key`, `meta_value`) VALUES
(13, 22, 'order_pa_brand', '0'),
(14, 23, 'order_pa_color', '0'),
(15, 24, 'order_pa_series', '0'),
(16, 25, 'order_pa_model', '0'),
(17, 26, 'order_pa_style', '0'),
(18, 27, 'order_pa_brand', '0'),
(19, 28, 'order_pa_model', '0'),
(20, 29, 'order_pa_series', '0'),
(21, 15, 'product_count_product_cat', '4'),
(28, 15, 'category_description', ''),
(29, 15, '_category_description', 'field_61af6af6f3f8e'),
(30, 15, 'display_type', ''),
(31, 15, 'thumbnail_id', '0'),
(32, 30, 'order', '0'),
(33, 30, 'category_description', ''),
(34, 30, '_category_description', 'field_61af6af6f3f8e'),
(35, 30, 'display_type', ''),
(36, 30, 'thumbnail_id', '0'),
(37, 27, 'category_description', '<h2>Cases – essential protection for sell phone Google</h2>\r\nA smartphone is an essential accessory for a modern person. Choosing and buying a phone is a significant event, since the cost of a branded phone is high. Further safety of the gadget depends both on the accuracy of the owner and on external protection. The latter is able to provide a properly selected case for Google sell phone. The accessory will protect the side, rear or even the whole device from scratches, chips and cracks during use.\r\n<h3>What you need to know before buying a case</h3>\r\nOver the past 10 years, the market has been filled with a wide variety of mobile phone covers. They are made of metal, leather, silicone, rubber, wood, etc. The choice should be based, first of all, not on the design, but on the quality characteristics and parameters. The basic criteria for choosing a phone case are:\r\n<ul>\r\n 	<li>Compatible with smartphone model.</li>\r\n 	<li>The size of the cover, the location of the holes for the cameras and connectors, the user’s moments must match the phone model.</li>\r\n 	<li>Quality. The phone case should be made only of durable and wear-resistant materials; it should not have curved surfaces, bulges or loose seams. Such defects indicate the low cost of the accessory, and sometimes lead to the fact that the cover completely loses its performance characteristics.</li>\r\n 	<li>Fixation. The cover should fit snugly around the device, fix it securely, but not create excessive pressure on the case.</li>\r\n 	<li>The original purpose. The choice of a phone case directly depends on the owner’s lifestyle. For athletes, it is recommended to take models with mounts or shockproof cases, leather cases are perfect for business people, and for those who do not need austerity of style or additional protection, but use a smartphone every day, classic lightweight models.</li>\r\n</ul>\r\nShellholster.com offers Shell Holster Combo Cases for Google sell phone. The user-friendly interface makes it easy to choose an accessory for a specific smartphone model.\r\n<h3>Selection principle</h3>\r\nBesides the aforementioned criteria, there are also design aspects that depend on the tastes and preferences of the buyer. A phone case is not just a protection of the device from mechanical stress, but also a continuation of the owner’s image. The stylish looking Shell Holster Combo Cases will not only protect your phone Google, but also greatly enhance the usability.\r\n\r\nOur website is not only the best places to buy Google holster, but also offers the best protective case for such  brands as <a href=\"https://shellholster.com/samsung/\">Samsung</a>, <a href=\"https://shellholster.com/lg/\">LG</a>, <a href=\"https://shellholster.com/motorola/\">Motorola</a>, <a href=\"https://shellholster.com/kyocera/\">Kyocera</a>, <a href=\"https://shellholster.com/oneplus/\">Oneplus</a>, <a href=\"https://shellholster.com/htc/\">HTC</a>, <a href=\"https://shellholster.com/apple/\">IPhone</a>.'),
(38, 27, '_category_description', 'field_61af6af6f3f8e'),
(39, 22, 'category_description', '<h2>Choose only the best cell phone cases for samsung phones</h2>\r\nToday, technology takes a special place in human life – it accompanies at work, nature, at home, and on travel. Shell Holster Combo Case from Rome Tech will help to avoid defects, which performs two functions: protects against possible abrasions, scratchesand damage. Provides aesthetics and makes the look original. This is an opportunity to highlight your own style, individuality and taste preferences. Not satisfied with the design of the gadget? It is enough to shop stylish cases for samsung.\r\n<h3>Buy fashionable and durable “clothes” for the device in three clicks</h3>\r\nOn the shellholster.com website, you can find quality products that meet world standards. By orderingit, the buyer provides complete “insurance” of the gadget in any life situation. Many people prefer to buy a phone case on a Samsung android smartphone to carry it on a bag, belt.\r\n\r\nWe offer the best holsters with undeniable advantages:\r\n<ul>\r\n 	<li>Compatibility;</li>\r\n 	<li>Shockproof;</li>\r\n 	<li>Phone belt clip;</li>\r\n 	<li>Built-in kickstand;</li>\r\n 	<li>Easy to use.</li>\r\n</ul>\r\nOften, many device owners like to carry them in their bags, which leads to scratches and abrasions. Phone cases for a samsung will help prevent troubles at an affordable cost. The performance of the cover has passed numerous tests – consumers receive a product that is fully adapted for everyday use in extreme conditions. It reliably protects the device from shock, dust, dirt. The display will remain intact – take it on long trips, travels.\r\n<h3>Are you active?</h3>\r\nSuitable Holster Combo Cases which can be called perfectcovers for samsung phones. Made from durable material. Designed for those who want to protect it from mechanical shock, external factors. “Reservation” will save the device and keep its original appearance.\r\n\r\nInterested in the assortment of the supermarket, the availability of goods, services? Use contacts listed on the website, the online chat for a free consultation. Order a case for your Samsung smartphone – we will deliver the accessories as soon as possible. Now you do not need to personally visit the sales points – the courier will deliver the order to the address at a convenient time!\r\n<h3>How to order samsung galaxy a case?</h3>\r\nWe offer convenient payment methods for orders – choose the best samsung phone cases, compare and pay without leaving your home or office. We take care of our customers by providing them with full information about the mobile products presented in the catalog. The filtration system will allow you to pick them up on your own without outside help.\r\n\r\nPermanent promotions, sales, accumulative programs for regular users will become a pleasant bonus. The products are covered by the manufacturer’s warranty – do not worry about quality, practicality. Specify the required search parameters in the filter and wait for the list of the most suitable positions.\r\n\r\nOur website is not only the best places to buy samsung holster, but also offers the best protective case for such  brands as<a href=\"https://shellholster.com/google/\"> Google</a>, <a href=\"https://shellholster.com/lg/\">LG</a>, <a href=\"https://shellholster.com/motorola/\">Motorola</a>, <a href=\"https://shellholster.com/kyocera/\">Kyocera</a>, <a href=\"https://shellholster.com/oneplus/\">Oneplus</a>, <a href=\"https://shellholster.com/htc/\">HTC</a>, <a href=\"https://shellholster.com/apple/\">IPhone</a>.'),
(40, 22, '_category_description', 'field_61af6af6f3f8e'),
(41, 31, 'order_pa_brand', '0'),
(42, 30, 'product_count_product_cat', '1'),
(43, 32, 'order', '0'),
(44, 32, 'display_type', ''),
(45, 32, 'thumbnail_id', '0'),
(46, 33, 'order', '0'),
(47, 33, 'display_type', ''),
(48, 33, 'thumbnail_id', '0'),
(49, 34, 'order', '0'),
(50, 34, 'display_type', ''),
(51, 34, 'thumbnail_id', '0'),
(52, 35, 'order', '0'),
(53, 35, 'display_type', ''),
(54, 35, 'thumbnail_id', '0');

-- --------------------------------------------------------

--
-- Структура таблиці `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп даних таблиці `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0),
(2, 'simple', 'simple', 0),
(3, 'grouped', 'grouped', 0),
(4, 'variable', 'variable', 0),
(5, 'external', 'external', 0),
(6, 'exclude-from-search', 'exclude-from-search', 0),
(7, 'exclude-from-catalog', 'exclude-from-catalog', 0),
(8, 'featured', 'featured', 0),
(9, 'outofstock', 'outofstock', 0),
(10, 'rated-1', 'rated-1', 0),
(11, 'rated-2', 'rated-2', 0),
(12, 'rated-3', 'rated-3', 0),
(13, 'rated-4', 'rated-4', 0),
(14, 'rated-5', 'rated-5', 0),
(15, 'Shell Holster', 'shell-holster', 0),
(16, 'Primary', 'primary', 0),
(17, 'Menu', 'menu', 0),
(18, 'Info', 'info', 0),
(22, 'Samsung', 'samsung', 0),
(23, 'Black', 'black', 0),
(24, 'Galaxy Note', 'galaxy-note', 0),
(25, 'Galaxy Note 20', 'galaxy-note-20', 0),
(26, 'Shell Holster Combo', 'shell-holster-combo', 0),
(27, 'Google', 'google', 0),
(28, 'Google Pixel 6', 'google-pixel-6', 0),
(29, 'Pixel 6', 'pixel-6', 0),
(30, 'Pre order', 'pre-order', 0),
(31, 'Apple', 'apple', 0),
(32, 'Defender', 'defender', 0),
(33, 'Dual Layer Card Holder', 'dual-layer-card-holder', 0),
(34, 'Dual Layer Card Slot', 'dual-layer-card-slot', 0),
(35, 'Armor', 'armor', 0);

-- --------------------------------------------------------

--
-- Структура таблиці `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_order` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп даних таблиці `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(18, 16, 0),
(37, 17, 0),
(38, 17, 0),
(39, 18, 0),
(42, 17, 0),
(48, 17, 0),
(49, 17, 0),
(54, 18, 0),
(64, 1, 0),
(74, 1, 0),
(94, 2, 0),
(94, 13, 0),
(94, 15, 0),
(94, 23, 0),
(94, 26, 0),
(94, 27, 0),
(94, 28, 0),
(94, 29, 0),
(95, 2, 0),
(95, 15, 0),
(95, 31, 0),
(96, 2, 0),
(96, 15, 0),
(96, 22, 0),
(96, 23, 0),
(96, 24, 0),
(96, 25, 0),
(96, 26, 0),
(96, 30, 0),
(102, 16, 0),
(104, 16, 0),
(105, 16, 0),
(106, 16, 0),
(108, 2, 0),
(108, 9, 0),
(108, 15, 0),
(108, 31, 0),
(114, 15, 0),
(205, 16, 0),
(206, 16, 0),
(207, 16, 0),
(208, 16, 0);

-- --------------------------------------------------------

--
-- Структура таблиці `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `count` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп даних таблиці `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 0),
(2, 2, 'product_type', '', 0, 4),
(3, 3, 'product_type', '', 0, 0),
(4, 4, 'product_type', '', 0, 0),
(5, 5, 'product_type', '', 0, 0),
(6, 6, 'product_visibility', '', 0, 0),
(7, 7, 'product_visibility', '', 0, 0),
(8, 8, 'product_visibility', '', 0, 0),
(9, 9, 'product_visibility', '', 0, 1),
(10, 10, 'product_visibility', '', 0, 0),
(11, 11, 'product_visibility', '', 0, 0),
(12, 12, 'product_visibility', '', 0, 0),
(13, 13, 'product_visibility', '', 0, 1),
(14, 14, 'product_visibility', '', 0, 0),
(15, 15, 'product_cat', '', 0, 4),
(16, 16, 'nav_menu', '', 0, 9),
(17, 17, 'nav_menu', '', 0, 5),
(18, 18, 'nav_menu', '', 0, 2),
(22, 22, 'pa_brand', '', 0, 1),
(23, 23, 'pa_color', '', 0, 2),
(24, 24, 'pa_series', '', 0, 1),
(25, 25, 'pa_model', '', 0, 1),
(26, 26, 'pa_style', '', 0, 2),
(27, 27, 'pa_brand', '', 0, 1),
(28, 28, 'pa_model', '', 0, 1),
(29, 29, 'pa_series', '', 0, 1),
(30, 30, 'product_cat', '', 0, 1),
(31, 31, 'pa_brand', '', 0, 2),
(32, 32, 'product_cat', '', 0, 0),
(33, 33, 'product_cat', '', 0, 0),
(34, 34, 'product_cat', '', 0, 0),
(35, 35, 'product_cat', '', 0, 0);

-- --------------------------------------------------------

--
-- Структура таблиці `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп даних таблиці `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'admin'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'syntax_highlighting', 'true'),
(7, 1, 'comment_shortcuts', 'false'),
(8, 1, 'admin_color', 'fresh'),
(9, 1, 'use_ssl', '0'),
(10, 1, 'show_admin_bar_front', 'true'),
(11, 1, 'locale', ''),
(12, 1, 'wp_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(13, 1, 'wp_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', ''),
(15, 1, 'show_welcome_panel', '1'),
(16, 1, 'session_tokens', 'a:8:{s:64:\"4443c5c2c7ba96490f1cb283d46d4fb5eafdbc8c679203cf82e038981d737bd6\";a:4:{s:10:\"expiration\";i:1638987280;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.45 Safari/537.36\";s:5:\"login\";i:1638814480;}s:64:\"3431b735dc460bdbc0f098d97238a99358150c30f45893a1431a5dc6a1794911\";a:4:{s:10:\"expiration\";i:1638987283;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.45 Safari/537.36\";s:5:\"login\";i:1638814483;}s:64:\"4161586c48fb748d4f0e3f577e355a67dcac879af5a4e65d6ae57902d0eecb44\";a:4:{s:10:\"expiration\";i:1639040481;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.45 Safari/537.36\";s:5:\"login\";i:1638867681;}s:64:\"7b06dc121ce130f95e6b795f8717b32b8eeec54ef23b60546a54055d91bd2611\";a:4:{s:10:\"expiration\";i:1639040504;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.45 Safari/537.36\";s:5:\"login\";i:1638867704;}s:64:\"41e24c3bb2b5936e11b0856676126d7c9414ddb2679e083c9d49373dc2401bc6\";a:4:{s:10:\"expiration\";i:1639124937;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.45 Safari/537.36\";s:5:\"login\";i:1638952137;}s:64:\"4d9c3e9ee7066e803868f8e8f475ed4b93434e978ee8266dd7e4a98229f5e816\";a:4:{s:10:\"expiration\";i:1639124939;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.45 Safari/537.36\";s:5:\"login\";i:1638952139;}s:64:\"3799a8edc8227ea6eca4018e9256f269fc3fd1e3675d012e288bb25986fedab3\";a:4:{s:10:\"expiration\";i:1639151259;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.45 Safari/537.36\";s:5:\"login\";i:1638978459;}s:64:\"1ba36e7b798101d2a3fa33230b1d1fd208dd20f891f6b8e3b563d9028dee6601\";a:4:{s:10:\"expiration\";i:1639151264;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.45 Safari/537.36\";s:5:\"login\";i:1638978464;}}'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '4'),
(18, 1, 'community-events-location', 'a:1:{s:2:\"ip\";s:9:\"127.0.0.0\";}'),
(19, 1, '_woocommerce_tracks_anon_id', 'woo:+uFvAALDnN8VH3e5RkxHPHBa'),
(20, 1, 'last_update', '1637686003'),
(21, 1, 'woocommerce_admin_activity_panel_inbox_last_read', '1637686003164'),
(22, 1, 'wc_last_active', '1638921600'),
(24, 1, '_woocommerce_persistent_cart_1', 'a:1:{s:4:\"cart\";a:1:{s:32:\"812b4ba287f5ee0bc9d43bbf5bbe87fb\";a:11:{s:3:\"key\";s:32:\"812b4ba287f5ee0bc9d43bbf5bbe87fb\";s:10:\"product_id\";i:95;s:12:\"variation_id\";i:0;s:9:\"variation\";a:0:{}s:8:\"quantity\";i:1;s:9:\"data_hash\";s:32:\"b5c1d5ca8bae6d4896cf1807cdf763f0\";s:13:\"line_tax_data\";a:2:{s:8:\"subtotal\";a:0:{}s:5:\"total\";a:0:{}}s:13:\"line_subtotal\";d:13.99;s:17:\"line_subtotal_tax\";i:0;s:10:\"line_total\";d:13.99;s:8:\"line_tax\";i:0;}}}'),
(25, 1, '_woocommerce_persistent_cart_1', 'a:1:{s:4:\"cart\";a:1:{s:32:\"812b4ba287f5ee0bc9d43bbf5bbe87fb\";a:11:{s:3:\"key\";s:32:\"812b4ba287f5ee0bc9d43bbf5bbe87fb\";s:10:\"product_id\";i:95;s:12:\"variation_id\";i:0;s:9:\"variation\";a:0:{}s:8:\"quantity\";i:1;s:9:\"data_hash\";s:32:\"b5c1d5ca8bae6d4896cf1807cdf763f0\";s:13:\"line_tax_data\";a:2:{s:8:\"subtotal\";a:0:{}s:5:\"total\";a:0:{}}s:13:\"line_subtotal\";d:13.99;s:17:\"line_subtotal_tax\";i:0;s:10:\"line_total\";d:13.99;s:8:\"line_tax\";i:0;}}}'),
(26, 1, '_order_count', '0'),
(27, 1, 'dismissed_no_secure_connection_notice', '1'),
(28, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:\"link-target\";i:1;s:15:\"title-attribute\";i:2;s:11:\"css-classes\";i:3;s:3:\"xfn\";i:4;s:11:\"description\";}'),
(29, 1, 'metaboxhidden_nav-menus', 'a:3:{i:0;s:21:\"add-post-type-product\";i:1;s:12:\"add-post_tag\";i:2;s:15:\"add-product_tag\";}'),
(30, 1, 'wp_user-settings', 'libraryContent=browse&editor=tinymce'),
(31, 1, 'wp_user-settings-time', '1638797161'),
(32, 1, 'nav_menu_recently_edited', '16'),
(33, 1, 'meta-box-order_page', 'a:4:{s:15:\"acf_after_title\";s:0:\"\";s:4:\"side\";s:60:\"submitdiv,pageparentdiv,acf-group_61ae1491c1933,postimagediv\";s:6:\"normal\";s:59:\"revisionsdiv,commentstatusdiv,commentsdiv,slugdiv,authordiv\";s:8:\"advanced\";s:0:\"\";}'),
(34, 1, 'screen_layout_page', '2'),
(35, 1, 'closedpostboxes_page', 'a:1:{i:0;s:13:\"pageparentdiv\";}'),
(36, 1, 'metaboxhidden_page', 'a:4:{i:0;s:16:\"commentstatusdiv\";i:1;s:11:\"commentsdiv\";i:2;s:7:\"slugdiv\";i:3;s:9:\"authordiv\";}'),
(39, 1, 'wc_marketplace_suggestions_dismissed_suggestions', 'a:5:{i:0;s:35:\"products-empty-woocommerce-bookings\";i:1;s:40:\"products-empty-woocommerce-subscriptions\";i:2;s:30:\"products-empty-product-vendors\";i:3;s:26:\"products-empty-memberships\";i:4;s:30:\"products-empty-product-bundles\";}'),
(40, 1, 'closedpostboxes_nav-menus', 'a:0:{}');

-- --------------------------------------------------------

--
-- Структура таблиці `wp_users`
--

CREATE TABLE `wp_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT 0,
  `display_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп даних таблиці `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'admin', '$P$ByNqtL3tq4zERkNPSgGWI7KyfEQgSM0', 'admin', 'rostik22988@gmail.com', 'http://shellholster', '2021-11-23 16:29:22', '', 0, 'admin');

-- --------------------------------------------------------

--
-- Структура таблиці `wp_wc_admin_notes`
--

CREATE TABLE `wp_wc_admin_notes` (
  `note_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `locale` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `content_data` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `source` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_reminder` datetime DEFAULT NULL,
  `is_snoozable` tinyint(1) NOT NULL DEFAULT 0,
  `layout` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `image` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT 0,
  `icon` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'info'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп даних таблиці `wp_wc_admin_notes`
--

INSERT INTO `wp_wc_admin_notes` (`note_id`, `name`, `type`, `locale`, `title`, `content`, `content_data`, `status`, `source`, `date_created`, `date_reminder`, `is_snoozable`, `layout`, `image`, `is_deleted`, `icon`) VALUES
(1, 'stripe_applepay_holiday2021', 'marketing', 'en_US', 'Boost sales this holiday season with Apple Pay!', 'Increase your conversion rate by letting your customers know that you accept Apple Pay. It’s seamless to <a href=\"https://docs.woocommerce.com/document/stripe/?_ga=2.90941597.642705274.1635776464-1391993999.1621950839#apple-pay\">enable Apple Pay with Stripe</a> and easy to communicate it with this <a href=\"https://developer.apple.com/apple-pay/marketing/\">marketing guide</a>.', '{}', 'pending', 'woocommerce.com', '2021-11-23 16:41:55', NULL, 0, 'plain', '', 0, 'info'),
(2, 'square_applepay_holiday2021', 'marketing', 'en_US', 'Boost sales this holiday season with Apple Pay!', 'Increase your conversion rate by letting your customers know that you accept Apple Pay. It’s seamless to <a href=\"https://docs.woocommerce.com/document/woocommerce-square/?_ga=2.90941597.642705274.1635776464-1391993999.1621950839#section-14\">enable Apple Pay with Square</a> and easy to communicate it with this <a href=\"https://developer.apple.com/apple-pay/marketing/\">marketing guide</a>.', '{}', 'pending', 'woocommerce.com', '2021-11-23 16:41:55', NULL, 0, 'plain', '', 0, 'info'),
(3, 'wcpay_applepay_holiday2021', 'marketing', 'en_US', 'Boost sales this holiday season with Apple Pay!', 'Increase your conversion rate by letting your customers know that you accept Apple Pay. It’s seamless to <a href=\"https://docs.woocommerce.com/document/payments/apple-pay/\">enable Apple Pay with WooCommerce Payments</a> and easy to communicate it with this <a href=\"https://developer.apple.com/apple-pay/marketing/\">marketing guide</a>.', '{}', 'pending', 'woocommerce.com', '2021-11-23 16:41:56', NULL, 0, 'plain', '', 0, 'info'),
(4, 'new_in_app_marketplace_2021', 'info', 'en_US', 'Customize your store with extensions', 'Check out our NEW Extensions tab to see our favorite extensions for customizing your store, and discover the most popular extensions in the WooCommerce Marketplace.', '{}', 'unactioned', 'woocommerce.com', '2021-11-23 16:41:56', NULL, 0, 'plain', '', 0, 'info'),
(5, 'wayflyer_bnpl_q4_2021', 'marketing', 'en_US', 'Grow your business with funding through Wayflyer', 'Fast, flexible financing to boost cash flow and help your business grow – one fee, no interest rates, penalties, equity, or personal guarantees. Based on your store\'s performance, Wayflyer provides funding and analytical insights to invest in your business.', '{}', 'pending', 'woocommerce.com', '2021-11-23 16:41:56', NULL, 0, 'plain', '', 0, 'info'),
(6, 'wc_shipping_mobile_app_usps_q4_2021', 'marketing', 'en_US', 'Print and manage your shipping labels with WooCommerce Shipping and the WooCommerce Mobile App', 'Save time by printing, purchasing, refunding, and tracking shipping labels generated by <a href=\"https://woocommerce.com/woocommerce-shipping/\">WooCommerce Shipping</a> – all directly from your mobile device!', '{}', 'pending', 'woocommerce.com', '2021-11-23 16:41:56', NULL, 0, 'plain', '', 0, 'info'),
(7, 'wc_shipping_mobile_app_q4_2021', 'marketing', 'en_US', 'Print and manage your shipping labels with the WooCommerce Mobile App', 'Save time by printing, purchasing, refunding, and tracking shipping labels generated by <a href=\"https://woocommerce.com/woocommerce-shipping/\">WooCommerce Shipping</a> – all directly from your mobile device!', '{}', 'pending', 'woocommerce.com', '2021-11-23 16:41:56', NULL, 0, 'plain', '', 0, 'info'),
(8, 'ecomm-need-help-setting-up-your-store', 'info', 'en_US', 'Need help setting up your Store?', 'Schedule a free 30-min <a href=\"https://wordpress.com/support/concierge-support/\">quick start session</a> and get help from our specialists. We’re happy to walk through setup steps, show you around the WordPress.com dashboard, troubleshoot any issues you may have, and help you the find the features you need to accomplish your goals for your site.', '{}', 'pending', 'woocommerce.com', '2021-11-23 16:41:57', NULL, 0, 'plain', '', 0, 'info'),
(9, 'woocommerce-services', 'info', 'en_US', 'WooCommerce Shipping & Tax', 'WooCommerce Shipping &amp; Tax helps get your store “ready to sell” as quickly as possible. You create your products. We take care of tax calculation, payment processing, and shipping label printing! Learn more about the extension that you just installed.', '{}', 'pending', 'woocommerce.com', '2021-11-23 16:41:57', NULL, 0, 'plain', '', 0, 'info'),
(10, 'ecomm-unique-shopping-experience', 'info', 'en_US', 'For a shopping experience as unique as your customers', 'Product Add-Ons allow your customers to personalize products while they’re shopping on your online store. No more follow-up email requests—customers get what they want, before they’re done checking out. Learn more about this extension that comes included in your plan.', '{}', 'pending', 'woocommerce.com', '2021-11-23 16:41:57', NULL, 0, 'plain', '', 0, 'info'),
(11, 'wc-admin-getting-started-in-ecommerce', 'info', 'en_US', 'Getting Started in eCommerce - webinar', 'We want to make eCommerce and this process of getting started as easy as possible for you. Watch this webinar to get tips on how to have our store up and running in a breeze.', '{}', 'pending', 'woocommerce.com', '2021-11-23 16:41:57', NULL, 0, 'plain', '', 0, 'info'),
(12, 'your-first-product', 'info', 'en_US', 'Your first product', 'That\'s huge! You\'re well on your way to building a successful online store — now it’s time to think about how you\'ll fulfill your orders.<br /><br />Read our shipping guide to learn best practices and options for putting together your shipping strategy. And for WooCommerce stores in the United States, you can print discounted shipping labels via USPS with <a href=\"https://href.li/?https://woocommerce.com/shipping\" target=\"_blank\">WooCommerce Shipping</a>.', '{}', 'pending', 'woocommerce.com', '2021-11-23 16:41:57', NULL, 0, 'plain', '', 0, 'info'),
(13, 'wc-admin-optimizing-the-checkout-flow', 'info', 'en_US', 'Optimizing the checkout flow', 'It\'s crucial to get your store\'s checkout as smooth as possible to avoid losing sales. Let\'s take a look at how you can optimize the checkout experience for your shoppers.', '{}', 'pending', 'woocommerce.com', '2021-11-23 16:41:58', NULL, 0, 'plain', '', 0, 'info'),
(14, 'wc-admin-first-five-things-to-customize', 'info', 'en_US', 'The first 5 things to customize in your store', 'Deciding what to start with first is tricky. To help you properly prioritize, we\'ve put together this short list of the first few things you should customize in WooCommerce.', '{}', 'pending', 'woocommerce.com', '2021-11-23 16:41:58', NULL, 0, 'plain', '', 0, 'info'),
(15, 'wc-payments-qualitative-feedback', 'info', 'en_US', 'WooCommerce Payments setup - let us know what you think', 'Congrats on enabling WooCommerce Payments for your store. Please share your feedback in this 2 minute survey to help us improve the setup process.', '{}', 'pending', 'woocommerce.com', '2021-11-23 16:41:58', NULL, 0, 'plain', '', 0, 'info'),
(16, 'share-your-feedback-on-paypal', 'info', 'en_US', 'Share your feedback on PayPal', 'Share your feedback in this 2 minute survey about how we can make the process of accepting payments more useful for your store.', '{}', 'pending', 'woocommerce.com', '2021-11-23 16:41:58', NULL, 0, 'plain', '', 0, 'info'),
(17, 'google_listings_and_ads_install', 'marketing', 'en_US', 'Drive traffic and sales with Google', 'Reach online shoppers to drive traffic and sales for your store by showcasing products across Google, for free or with ads.', '{}', 'pending', 'woocommerce.com', '2021-11-23 16:41:58', NULL, 0, 'plain', '', 0, 'info'),
(18, 'wc-subscriptions-security-update-3-0-15', 'info', 'en_US', 'WooCommerce Subscriptions security update!', 'We recently released an important security update to WooCommerce Subscriptions. To ensure your site\'s data is protected, please upgrade <strong>WooCommerce Subscriptions to version 3.0.15</strong> or later.<br /><br />Click the button below to view and update to the latest Subscriptions version, or log in to <a href=\"https://woocommerce.com/my-dashboard\">WooCommerce.com Dashboard</a> and navigate to your <strong>Downloads</strong> page.<br /><br />We recommend always using the latest version of WooCommerce Subscriptions, and other software running on your site, to ensure maximum security.<br /><br />If you have any questions we are here to help — just <a href=\"https://woocommerce.com/my-account/create-a-ticket/\">open a ticket</a>.', '{}', 'pending', 'woocommerce.com', '2021-11-23 16:41:58', NULL, 0, 'plain', '', 0, 'info'),
(19, 'woocommerce-core-update-5-4-0', 'info', 'en_US', 'Update to WooCommerce 5.4.1 now', 'WooCommerce 5.4.1 addresses a checkout issue discovered in WooCommerce 5.4. We recommend upgrading to WooCommerce 5.4.1 as soon as possible.', '{}', 'pending', 'woocommerce.com', '2021-11-23 16:41:59', NULL, 0, 'plain', '', 0, 'info'),
(20, 'wcpay-promo-2020-11', 'marketing', 'en_US', 'wcpay-promo-2020-11', 'wcpay-promo-2020-11', '{}', 'pending', 'woocommerce.com', '2021-11-23 16:41:59', NULL, 0, 'plain', '', 0, 'info'),
(21, 'wcpay-promo-2020-12', 'marketing', 'en_US', 'wcpay-promo-2020-12', 'wcpay-promo-2020-12', '{}', 'pending', 'woocommerce.com', '2021-11-23 16:41:59', NULL, 0, 'plain', '', 0, 'info'),
(22, 'wcpay-promo-2021-6-incentive-1', 'marketing', 'en_US', 'Simplify the payments process for you and your customers with WooCommerce Payments', 'With <a href=\"https://woocommerce.com/payments/?utm_medium=notification&amp;utm_source=product&amp;utm_campaign=wcpay601\">WooCommerce Payments</a>, you can securely accept all major cards, Apple Pay®, and recurring revenue in over 100 currencies.\n				Built into your store’s WooCommerce dashboard, track cash flow and manage all of your transactions in one place – with no setup costs or monthly fees.\n				<br /><br />\n				By clicking \"Get WooCommerce Payments,\" you agree to the <a href=\"https://wordpress.com/tos/?utm_medium=notification&amp;utm_source=product&amp;utm_campaign=wcpay601\">Terms of Service</a>\n				and acknowledge you have read the <a href=\"https://automattic.com/privacy/\">Privacy Policy</a>.\n				', '{}', 'pending', 'woocommerce.com', '2021-11-23 16:41:59', NULL, 0, 'plain', '', 0, 'info'),
(23, 'wcpay-promo-2021-6-incentive-2', 'marketing', 'en_US', 'Simplify the payments process for you and your customers with WooCommerce Payments', 'With <a href=\"https://woocommerce.com/payments/?utm_medium=notification&amp;utm_source=product&amp;utm_campaign=wcpay601\">WooCommerce Payments</a>, you can securely accept all major cards, Apple Pay®, and recurring revenue in over 100 currencies.\n				Built into your store’s WooCommerce dashboard, track cash flow and manage all of your transactions in one place – with no setup costs or monthly fees.\n				<br /><br />\n				By clicking \"Get WooCommerce Payments,\" you agree to the <a href=\"https://wordpress.com/tos/?utm_medium=notification&amp;utm_source=product&amp;utm_campaign=wcpay601\">Terms of Service</a>\n				and acknowledge you have read the <a href=\"https://automattic.com/privacy/\">Privacy Policy</a>.\n				', '{}', 'pending', 'woocommerce.com', '2021-11-23 16:41:59', NULL, 0, 'plain', '', 0, 'info'),
(24, 'ppxo-pps-upgrade-paypal-payments-1', 'info', 'en_US', 'Get the latest PayPal extension for WooCommerce', 'Heads up! There\'s a new PayPal on the block!<br /><br />Now is a great time to upgrade to our latest <a href=\"https://woocommerce.com/products/woocommerce-paypal-payments/\" target=\"_blank\">PayPal extension</a> to continue to receive support and updates with PayPal.<br /><br />Get access to a full suite of PayPal payment methods, extensive currency and country coverage, and pay later options with the all-new PayPal extension for WooCommerce.', '{}', 'pending', 'woocommerce.com', '2021-11-23 16:41:59', NULL, 0, 'plain', '', 0, 'info'),
(25, 'ppxo-pps-upgrade-paypal-payments-2', 'info', 'en_US', 'Upgrade your PayPal experience!', 'We\'ve developed a whole new <a href=\"https://woocommerce.com/products/woocommerce-paypal-payments/\" target=\"_blank\">PayPal extension for WooCommerce</a> that combines the best features of our many PayPal extensions into just one extension.<br /><br />Get access to a full suite of PayPal payment methods, extensive currency and country coverage, offer subscription and recurring payments, and the new PayPal pay later options.<br /><br />Start using our latest PayPal today to continue to receive support and updates.', '{}', 'pending', 'woocommerce.com', '2021-11-23 16:42:00', NULL, 0, 'plain', '', 0, 'info'),
(26, 'woocommerce-core-sqli-july-2021-need-to-update', 'update', 'en_US', 'Action required: Critical vulnerabilities in WooCommerce', 'In response to a critical vulnerability identified on July 13, 2021, we are working with the WordPress Plugins Team to deploy software updates to stores running WooCommerce (versions 3.3 to 5.5) and the WooCommerce Blocks feature plugin (versions 2.5 to 5.5).<br /><br />Our investigation into this vulnerability is ongoing, but <strong>we wanted to let you know now about the importance of updating immediately</strong>.<br /><br />For more information on which actions you should take, as well as answers to FAQs, please urgently review our blog post detailing this issue.', '{}', 'pending', 'woocommerce.com', '2021-11-23 16:42:00', NULL, 0, 'plain', '', 0, 'info'),
(27, 'woocommerce-blocks-sqli-july-2021-need-to-update', 'update', 'en_US', 'Action required: Critical vulnerabilities in WooCommerce Blocks', 'In response to a critical vulnerability identified on July 13, 2021, we are working with the WordPress Plugins Team to deploy software updates to stores running WooCommerce (versions 3.3 to 5.5) and the WooCommerce Blocks feature plugin (versions 2.5 to 5.5).<br /><br />Our investigation into this vulnerability is ongoing, but <strong>we wanted to let you know now about the importance of updating immediately</strong>.<br /><br />For more information on which actions you should take, as well as answers to FAQs, please urgently review our blog post detailing this issue.', '{}', 'pending', 'woocommerce.com', '2021-11-23 16:42:00', NULL, 0, 'plain', '', 0, 'info'),
(28, 'woocommerce-core-sqli-july-2021-store-patched', 'update', 'en_US', 'Solved: Critical vulnerabilities patched in WooCommerce', 'In response to a critical vulnerability identified on July 13, 2021, we worked with the WordPress Plugins Team to deploy software updates to stores running WooCommerce (versions 3.3 to 5.5) and the WooCommerce Blocks feature plugin (versions 2.5 to 5.5).<br /><br /><strong>Your store has been updated to the latest secure version(s)</strong>. For more information and answers to FAQs, please review our blog post detailing this issue.', '{}', 'pending', 'woocommerce.com', '2021-11-23 16:42:00', NULL, 0, 'plain', '', 0, 'info'),
(29, 'woocommerce-blocks-sqli-july-2021-store-patched', 'update', 'en_US', 'Solved: Critical vulnerabilities patched in WooCommerce Blocks', 'In response to a critical vulnerability identified on July 13, 2021, we worked with the WordPress Plugins Team to deploy software updates to stores running WooCommerce (versions 3.3 to 5.5) and the WooCommerce Blocks feature plugin (versions 2.5 to 5.5).<br /><br /><strong>Your store has been updated to the latest secure version(s)</strong>. For more information and answers to FAQs, please review our blog post detailing this issue.', '{}', 'pending', 'woocommerce.com', '2021-11-23 16:42:00', NULL, 0, 'plain', '', 0, 'info'),
(30, 'habit-moment-survey', 'marketing', 'en_US', 'We\'re all ears! Share your experience so far with WooCommerce', 'We\'d love your input to shape the future of WooCommerce together. Feel free to share any feedback, ideas or suggestions that you have.', '{}', 'pending', 'woocommerce.com', '2021-11-23 16:42:01', NULL, 0, 'plain', '', 0, 'info'),
(31, 'wc-refund-returns-page', 'info', 'en_US', 'Setup a Refund and Returns Policy page to boost your store\'s credibility.', 'We have created a sample draft Refund and Returns Policy page for you. Please have a look and update it to fit your store.', '{}', 'unactioned', 'woocommerce-core', '2021-11-23 16:42:03', NULL, 0, 'plain', '', 0, 'info'),
(32, 'surface_cart_checkout', 'info', 'en_US', 'Introducing the Cart and Checkout blocks!', 'Increase your store\'s revenue with the conversion optimized Cart &amp; Checkout WooCommerce blocks available in the WooCommerce Blocks extension.', '{}', 'unactioned', 'woo-gutenberg-products-block', '2021-11-23 16:42:03', NULL, 0, 'plain', '', 0, 'info'),
(33, 'wc-admin-wc-helper-connection', 'info', 'en_US', 'Connect to WooCommerce.com', 'Connect to get important product notifications and updates.', '{}', 'unactioned', 'woocommerce-admin', '2021-11-23 16:42:04', NULL, 0, 'plain', '', 0, 'info'),
(34, 'wc-admin-usage-tracking-opt-in', 'info', 'en_US', 'Help WooCommerce improve with usage tracking', 'Gathering usage data allows us to improve WooCommerce. Your store will be considered as we evaluate new features, judge the quality of an update, or determine if an improvement makes sense. You can always visit the <a href=\"http://shellholster/wp-admin/admin.php?page=wc-settings&#038;tab=advanced&#038;section=woocommerce_com\" target=\"_blank\">Settings</a> and choose to stop sharing data. <a href=\"https://woocommerce.com/usage-tracking?utm_medium=product\" target=\"_blank\">Read more</a> about what data we collect.', '{}', 'unactioned', 'woocommerce-admin', '2021-12-06 10:13:55', NULL, 0, 'plain', '', 0, 'info'),
(35, 'wc-admin-onboarding-payments-reminder', 'info', 'en_US', 'Start accepting payments on your store!', 'Take payments with the provider that’s right for you - choose from 100+ payment gateways for WooCommerce.', '{}', 'unactioned', 'woocommerce-admin', '2021-12-06 10:13:55', NULL, 0, 'plain', '', 0, 'info'),
(36, 'wc-admin-woocommerce-payments', 'marketing', 'en_US', 'Try the new way to get paid', 'Securely accept credit and debit cards on your site. Manage transactions without leaving your WordPress dashboard. Only with <strong>WooCommerce Payments</strong>.<br><br>By clicking \"Get started\", you agree to our <a href=\"https://wordpress.com/tos/\" target=\"_blank\">Terms of Service</a>', '{}', 'unactioned', 'woocommerce-admin', '2021-12-06 10:13:55', NULL, 0, 'plain', '', 0, 'info'),
(37, 'wc-admin-marketing-intro', 'info', 'en_US', 'Connect with your audience', 'Grow your customer base and increase your sales with marketing tools built for WooCommerce.', '{}', 'unactioned', 'woocommerce-admin', '2021-12-06 10:13:55', NULL, 0, 'plain', '', 0, 'info'),
(38, 'wc-admin-insight-first-sale', 'survey', 'en_US', 'Did you know?', 'A WooCommerce powered store needs on average 31 days to get the first sale. You\'re on the right track! Do you find this type of insight useful?', '{}', 'unactioned', 'woocommerce-admin', '2021-12-06 10:13:56', NULL, 0, 'plain', '', 0, 'info'),
(39, 'wc-admin-learn-more-about-variable-products', 'info', 'en_US', 'Learn more about variable products', 'Variable products are a powerful product type that lets you offer a set of variations on a product, with control over prices, stock, image and more for each variation. They can be used for a product like a shirt, where you can offer a large, medium and small and in different colors.', '{}', 'unactioned', 'woocommerce-admin', '2021-12-06 18:32:30', NULL, 0, 'plain', '', 0, 'info');

-- --------------------------------------------------------

--
-- Структура таблиці `wp_wc_admin_note_actions`
--

CREATE TABLE `wp_wc_admin_note_actions` (
  `action_id` bigint(20) UNSIGNED NOT NULL,
  `note_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `label` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `query` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_primary` tinyint(1) NOT NULL DEFAULT 0,
  `actioned_text` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nonce_action` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nonce_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп даних таблиці `wp_wc_admin_note_actions`
--

INSERT INTO `wp_wc_admin_note_actions` (`action_id`, `note_id`, `name`, `label`, `query`, `status`, `is_primary`, `actioned_text`, `nonce_action`, `nonce_name`) VALUES
(33, 31, 'notify-refund-returns-page', 'Edit page', 'http://shellholster/wp-admin/post.php?post=10&action=edit', 'actioned', 0, '', NULL, NULL),
(34, 32, 'learn_more', 'Learn More', 'https://woocommerce.com/checkout-blocks/', 'actioned', 0, '', NULL, NULL),
(35, 33, 'connect', 'Connect', '?page=wc-addons&section=helper', 'unactioned', 0, '', NULL, NULL),
(68, 34, 'tracking-opt-in', 'Activate usage tracking', '', 'actioned', 1, '', NULL, NULL),
(69, 35, 'view-payment-gateways', 'Learn more', 'https://woocommerce.com/product-category/woocommerce-extensions/payment-gateways/?utm_medium=product', 'actioned', 1, '', NULL, NULL),
(70, 36, 'learn-more', 'Learn more', 'https://woocommerce.com/payments/?utm_medium=product', 'unactioned', 0, '', NULL, NULL),
(71, 36, 'get-started', 'Get started', 'http://shellholster/wp-admin/admin.php?page=wc-admin&action=setup-woocommerce-payments', 'actioned', 1, '', NULL, NULL),
(72, 37, 'open-marketing-hub', 'Open marketing hub', 'http://shellholster/wp-admin/admin.php?page=wc-admin&path=/marketing', 'actioned', 0, '', NULL, NULL),
(73, 38, 'affirm-insight-first-sale', 'Yes', '', 'actioned', 0, 'Thanks for your feedback', NULL, NULL),
(74, 38, 'deny-insight-first-sale', 'No', '', 'actioned', 0, 'Thanks for your feedback', NULL, NULL),
(299, 39, 'learn-more', 'Learn more', 'https://docs.woocommerce.com/document/variable-product/?utm_source=inbox&utm_medium=product', 'actioned', 0, '', NULL, NULL),
(364, 1, 'stripe_applepay_holiday2021', 'Accept Apple Pay', 'https://woocommerce.com/apple-pay/', 'actioned', 1, '', NULL, NULL),
(365, 2, 'square_applepay_holiday2021', 'Accept Apple Pay', 'https://woocommerce.com/apple-pay/', 'actioned', 1, '', NULL, NULL),
(366, 3, 'wcpay_applepay_holiday2021', 'Accept Apple Pay', 'https://woocommerce.com/apple-pay/', 'actioned', 1, '', NULL, NULL),
(367, 4, 'browse_extensions', 'Browse extensions', 'http://shellholster/wp-admin/admin.php?page=wc-admin&page=wc-addons', 'unactioned', 1, '', NULL, NULL),
(368, 5, 'wayflyer_bnpl_q4_2021', 'Level up with funding', 'https://woocommerce.com/products/wayflyer/', 'actioned', 1, '', NULL, NULL),
(369, 6, 'wc_shipping_mobile_app_usps_q4_2021', 'Get WooCommerce Shipping', 'https://woocommerce.com/woocommerce-shipping/', 'actioned', 1, '', NULL, NULL),
(370, 7, 'wc_shipping_mobile_app_q4_2021', 'Get the WooCommerce Mobile App', 'https://woocommerce.com/mobile/', 'actioned', 1, '', NULL, NULL),
(371, 8, 'set-up-concierge', 'Schedule free session', 'https://wordpress.com/me/concierge', 'actioned', 1, '', NULL, NULL),
(372, 9, 'learn-more', 'Learn more', 'https://docs.woocommerce.com/document/woocommerce-shipping-and-tax/?utm_source=inbox', 'unactioned', 1, '', NULL, NULL),
(373, 10, 'learn-more-ecomm-unique-shopping-experience', 'Learn more', 'https://docs.woocommerce.com/document/product-add-ons/?utm_source=inbox', 'actioned', 1, '', NULL, NULL),
(374, 11, 'watch-the-webinar', 'Watch the webinar', 'https://youtu.be/V_2XtCOyZ7o', 'actioned', 1, '', NULL, NULL),
(375, 12, 'learn-more', 'Learn more', 'https://woocommerce.com/posts/ecommerce-shipping-solutions-guide/?utm_source=inbox', 'actioned', 1, '', NULL, NULL),
(376, 13, 'optimizing-the-checkout-flow', 'Learn more', 'https://woocommerce.com/posts/optimizing-woocommerce-checkout?utm_source=inbox', 'actioned', 1, '', NULL, NULL),
(377, 14, 'learn-more', 'Learn more', 'https://woocommerce.com/posts/first-things-customize-woocommerce/?utm_source=inbox', 'unactioned', 1, '', NULL, NULL),
(378, 15, 'qualitative-feedback-from-new-users', 'Share feedback', 'https://automattic.survey.fm/wc-pay-new', 'actioned', 1, '', NULL, NULL),
(379, 16, 'share-feedback', 'Share feedback', 'http://automattic.survey.fm/paypal-feedback', 'unactioned', 1, '', NULL, NULL),
(380, 17, 'get-started', 'Get started', 'https://woocommerce.com/products/google-listings-and-ads', 'actioned', 1, '', NULL, NULL),
(381, 18, 'update-wc-subscriptions-3-0-15', 'View latest version', 'http://shellholster/wp-admin/admin.php?page=wc-admin&page=wc-addons&section=helper', 'actioned', 1, '', NULL, NULL),
(382, 19, 'update-wc-core-5-4-0', 'How to update WooCommerce', 'https://docs.woocommerce.com/document/how-to-update-woocommerce/', 'actioned', 1, '', NULL, NULL),
(383, 22, 'get-woo-commerce-payments', 'Get WooCommerce Payments', 'admin.php?page=wc-admin&action=setup-woocommerce-payments', 'actioned', 1, '', NULL, NULL),
(384, 23, 'get-woocommerce-payments', 'Get WooCommerce Payments', 'admin.php?page=wc-admin&action=setup-woocommerce-payments', 'actioned', 1, '', NULL, NULL),
(385, 24, 'ppxo-pps-install-paypal-payments-1', 'View upgrade guide', 'https://docs.woocommerce.com/document/woocommerce-paypal-payments/paypal-payments-upgrade-guide/', 'actioned', 1, '', NULL, NULL),
(386, 25, 'ppxo-pps-install-paypal-payments-2', 'View upgrade guide', 'https://docs.woocommerce.com/document/woocommerce-paypal-payments/paypal-payments-upgrade-guide/', 'actioned', 1, '', NULL, NULL),
(387, 26, 'learn-more', 'Learn more', 'https://woocommerce.com/posts/critical-vulnerability-detected-july-2021/?utm_source=inbox_note&utm_medium=product&utm_campaign=vulnerability_comms', 'unactioned', 1, '', NULL, NULL),
(388, 26, 'dismiss', 'Dismiss', '', 'actioned', 0, '', NULL, NULL),
(389, 27, 'learn-more', 'Learn more', 'https://woocommerce.com/posts/critical-vulnerability-detected-july-2021/?utm_source=inbox_note&utm_medium=product&utm_campaign=vulnerability_comms', 'unactioned', 1, '', NULL, NULL),
(390, 27, 'dismiss', 'Dismiss', '', 'actioned', 0, '', NULL, NULL),
(391, 28, 'learn-more', 'Learn more', 'https://woocommerce.com/posts/critical-vulnerability-detected-july-2021/?utm_source=inbox_note&utm_medium=product&utm_campaign=vulnerability_comms', 'unactioned', 1, '', NULL, NULL),
(392, 28, 'dismiss', 'Dismiss', '', 'actioned', 0, '', NULL, NULL),
(393, 29, 'learn-more', 'Learn more', 'https://woocommerce.com/posts/critical-vulnerability-detected-july-2021/?utm_source=inbox_note&utm_medium=product&utm_campaign=vulnerability_comms', 'unactioned', 1, '', NULL, NULL),
(394, 29, 'dismiss', 'Dismiss', '', 'actioned', 0, '', NULL, NULL),
(395, 30, 'share-feedback', 'Share feedback', 'https://automattic.survey.fm/store-management', 'unactioned', 1, '', NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблиці `wp_wc_category_lookup`
--

CREATE TABLE `wp_wc_category_lookup` (
  `category_tree_id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп даних таблиці `wp_wc_category_lookup`
--

INSERT INTO `wp_wc_category_lookup` (`category_tree_id`, `category_id`) VALUES
(15, 15),
(19, 19),
(20, 20),
(21, 21),
(30, 30),
(32, 32),
(33, 33),
(34, 34),
(35, 35);

-- --------------------------------------------------------

--
-- Структура таблиці `wp_wc_customer_lookup`
--

CREATE TABLE `wp_wc_customer_lookup` (
  `customer_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `username` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_last_active` timestamp NULL DEFAULT NULL,
  `date_registered` timestamp NULL DEFAULT NULL,
  `country` char(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `postcode` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `city` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `state` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблиці `wp_wc_download_log`
--

CREATE TABLE `wp_wc_download_log` (
  `download_log_id` bigint(20) UNSIGNED NOT NULL,
  `timestamp` datetime NOT NULL,
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_ip_address` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблиці `wp_wc_order_coupon_lookup`
--

CREATE TABLE `wp_wc_order_coupon_lookup` (
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `coupon_id` bigint(20) NOT NULL,
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `discount_amount` double NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблиці `wp_wc_order_product_lookup`
--

CREATE TABLE `wp_wc_order_product_lookup` (
  `order_item_id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `variation_id` bigint(20) UNSIGNED NOT NULL,
  `customer_id` bigint(20) UNSIGNED DEFAULT NULL,
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `product_qty` int(11) NOT NULL,
  `product_net_revenue` double NOT NULL DEFAULT 0,
  `product_gross_revenue` double NOT NULL DEFAULT 0,
  `coupon_amount` double NOT NULL DEFAULT 0,
  `tax_amount` double NOT NULL DEFAULT 0,
  `shipping_amount` double NOT NULL DEFAULT 0,
  `shipping_tax_amount` double NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблиці `wp_wc_order_stats`
--

CREATE TABLE `wp_wc_order_stats` (
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `parent_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_created_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `num_items_sold` int(11) NOT NULL DEFAULT 0,
  `total_sales` double NOT NULL DEFAULT 0,
  `tax_total` double NOT NULL DEFAULT 0,
  `shipping_total` double NOT NULL DEFAULT 0,
  `net_total` double NOT NULL DEFAULT 0,
  `returning_customer` tinyint(1) DEFAULT NULL,
  `status` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблиці `wp_wc_order_tax_lookup`
--

CREATE TABLE `wp_wc_order_tax_lookup` (
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `tax_rate_id` bigint(20) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `shipping_tax` double NOT NULL DEFAULT 0,
  `order_tax` double NOT NULL DEFAULT 0,
  `total_tax` double NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблиці `wp_wc_product_meta_lookup`
--

CREATE TABLE `wp_wc_product_meta_lookup` (
  `product_id` bigint(20) NOT NULL,
  `sku` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `virtual` tinyint(1) DEFAULT 0,
  `downloadable` tinyint(1) DEFAULT 0,
  `min_price` decimal(19,4) DEFAULT NULL,
  `max_price` decimal(19,4) DEFAULT NULL,
  `onsale` tinyint(1) DEFAULT 0,
  `stock_quantity` double DEFAULT NULL,
  `stock_status` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT 'instock',
  `rating_count` bigint(20) DEFAULT 0,
  `average_rating` decimal(3,2) DEFAULT 0.00,
  `total_sales` bigint(20) DEFAULT 0,
  `tax_status` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT 'taxable',
  `tax_class` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп даних таблиці `wp_wc_product_meta_lookup`
--

INSERT INTO `wp_wc_product_meta_lookup` (`product_id`, `sku`, `virtual`, `downloadable`, `min_price`, `max_price`, `onsale`, `stock_quantity`, `stock_status`, `rating_count`, `average_rating`, `total_sales`, `tax_status`, `tax_class`) VALUES
(94, '', 0, 0, '19.9900', '19.9900', 0, NULL, 'instock', 1, '4.00', 0, 'taxable', ''),
(95, '', 0, 0, '13.9900', '13.9900', 0, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(96, '', 0, 0, '13.9900', '13.9900', 0, NULL, 'onbackorder', 0, '0.00', 0, 'taxable', ''),
(108, '', 0, 0, '13.9900', '13.9900', 1, NULL, 'outofstock', 0, '0.00', 0, 'taxable', '');

-- --------------------------------------------------------

--
-- Структура таблиці `wp_wc_reserved_stock`
--

CREATE TABLE `wp_wc_reserved_stock` (
  `order_id` bigint(20) NOT NULL,
  `product_id` bigint(20) NOT NULL,
  `stock_quantity` double NOT NULL DEFAULT 0,
  `timestamp` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `expires` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблиці `wp_wc_tax_rate_classes`
--

CREATE TABLE `wp_wc_tax_rate_classes` (
  `tax_rate_class_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп даних таблиці `wp_wc_tax_rate_classes`
--

INSERT INTO `wp_wc_tax_rate_classes` (`tax_rate_class_id`, `name`, `slug`) VALUES
(1, 'Reduced rate', 'reduced-rate'),
(2, 'Zero rate', 'zero-rate');

-- --------------------------------------------------------

--
-- Структура таблиці `wp_wc_webhooks`
--

CREATE TABLE `wp_wc_webhooks` (
  `webhook_id` bigint(20) UNSIGNED NOT NULL,
  `status` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `delivery_url` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `topic` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_created_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `api_version` smallint(4) NOT NULL,
  `failure_count` smallint(10) NOT NULL DEFAULT 0,
  `pending_delivery` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблиці `wp_woocommerce_api_keys`
--

CREATE TABLE `wp_woocommerce_api_keys` (
  `key_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `description` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `permissions` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `consumer_key` char(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `consumer_secret` char(43) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nonces` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `truncated_key` char(7) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_access` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблиці `wp_woocommerce_attribute_taxonomies`
--

CREATE TABLE `wp_woocommerce_attribute_taxonomies` (
  `attribute_id` bigint(20) UNSIGNED NOT NULL,
  `attribute_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `attribute_label` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `attribute_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `attribute_orderby` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `attribute_public` int(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп даних таблиці `wp_woocommerce_attribute_taxonomies`
--

INSERT INTO `wp_woocommerce_attribute_taxonomies` (`attribute_id`, `attribute_name`, `attribute_label`, `attribute_type`, `attribute_orderby`, `attribute_public`) VALUES
(1, 'brand', 'Brand', 'select', 'menu_order', 0),
(2, 'model', 'Model', 'select', 'menu_order', 0),
(3, 'style', 'Style', 'select', 'menu_order', 0),
(4, 'color', 'Color', 'select', 'menu_order', 0),
(5, 'series', 'Series', 'select', 'menu_order', 0);

-- --------------------------------------------------------

--
-- Структура таблиці `wp_woocommerce_downloadable_product_permissions`
--

CREATE TABLE `wp_woocommerce_downloadable_product_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `download_id` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `order_key` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_email` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `downloads_remaining` varchar(9) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `access_granted` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access_expires` datetime DEFAULT NULL,
  `download_count` bigint(20) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблиці `wp_woocommerce_log`
--

CREATE TABLE `wp_woocommerce_log` (
  `log_id` bigint(20) UNSIGNED NOT NULL,
  `timestamp` datetime NOT NULL,
  `level` smallint(4) NOT NULL,
  `source` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `context` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблиці `wp_woocommerce_order_itemmeta`
--

CREATE TABLE `wp_woocommerce_order_itemmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `order_item_id` bigint(20) UNSIGNED NOT NULL,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблиці `wp_woocommerce_order_items`
--

CREATE TABLE `wp_woocommerce_order_items` (
  `order_item_id` bigint(20) UNSIGNED NOT NULL,
  `order_item_name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_item_type` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `order_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблиці `wp_woocommerce_payment_tokenmeta`
--

CREATE TABLE `wp_woocommerce_payment_tokenmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `payment_token_id` bigint(20) UNSIGNED NOT NULL,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблиці `wp_woocommerce_payment_tokens`
--

CREATE TABLE `wp_woocommerce_payment_tokens` (
  `token_id` bigint(20) UNSIGNED NOT NULL,
  `gateway_id` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `type` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_default` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблиці `wp_woocommerce_sessions`
--

CREATE TABLE `wp_woocommerce_sessions` (
  `session_id` bigint(20) UNSIGNED NOT NULL,
  `session_key` char(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `session_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `session_expiry` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп даних таблиці `wp_woocommerce_sessions`
--

INSERT INTO `wp_woocommerce_sessions` (`session_id`, `session_key`, `session_value`, `session_expiry`) VALUES
(9, '83858ceff57c90e3e59f3f5e9d1c21d1', 'a:1:{s:8:\"customer\";s:768:\"a:27:{s:2:\"id\";s:1:\"1\";s:13:\"date_modified\";s:25:\"2021-11-23T16:46:43+00:00\";s:8:\"postcode\";s:0:\"\";s:4:\"city\";s:0:\"\";s:9:\"address_1\";s:0:\"\";s:7:\"address\";s:0:\"\";s:9:\"address_2\";s:0:\"\";s:5:\"state\";s:2:\"CA\";s:7:\"country\";s:2:\"US\";s:17:\"shipping_postcode\";s:0:\"\";s:13:\"shipping_city\";s:0:\"\";s:18:\"shipping_address_1\";s:0:\"\";s:16:\"shipping_address\";s:0:\"\";s:18:\"shipping_address_2\";s:0:\"\";s:14:\"shipping_state\";s:2:\"CA\";s:16:\"shipping_country\";s:2:\"US\";s:13:\"is_vat_exempt\";s:0:\"\";s:19:\"calculated_shipping\";s:0:\"\";s:10:\"first_name\";s:0:\"\";s:9:\"last_name\";s:0:\"\";s:7:\"company\";s:0:\"\";s:5:\"phone\";s:0:\"\";s:5:\"email\";s:21:\"rostik22988@gmail.com\";s:19:\"shipping_first_name\";s:0:\"\";s:18:\"shipping_last_name\";s:0:\"\";s:16:\"shipping_company\";s:0:\"\";s:14:\"shipping_phone\";s:0:\"\";}\";}', 1639044935),
(10, '1', 'a:8:{s:4:\"cart\";s:416:\"a:1:{s:32:\"812b4ba287f5ee0bc9d43bbf5bbe87fb\";a:11:{s:3:\"key\";s:32:\"812b4ba287f5ee0bc9d43bbf5bbe87fb\";s:10:\"product_id\";i:95;s:12:\"variation_id\";i:0;s:9:\"variation\";a:0:{}s:8:\"quantity\";i:1;s:9:\"data_hash\";s:32:\"b5c1d5ca8bae6d4896cf1807cdf763f0\";s:13:\"line_tax_data\";a:2:{s:8:\"subtotal\";a:0:{}s:5:\"total\";a:0:{}}s:13:\"line_subtotal\";d:13.99;s:17:\"line_subtotal_tax\";i:0;s:10:\"line_total\";d:13.99;s:8:\"line_tax\";i:0;}}\";s:11:\"cart_totals\";s:399:\"a:15:{s:8:\"subtotal\";s:5:\"13.99\";s:12:\"subtotal_tax\";i:0;s:14:\"shipping_total\";s:1:\"0\";s:12:\"shipping_tax\";i:0;s:14:\"shipping_taxes\";a:0:{}s:14:\"discount_total\";i:0;s:12:\"discount_tax\";i:0;s:19:\"cart_contents_total\";s:5:\"13.99\";s:17:\"cart_contents_tax\";i:0;s:19:\"cart_contents_taxes\";a:0:{}s:9:\"fee_total\";s:1:\"0\";s:7:\"fee_tax\";i:0;s:9:\"fee_taxes\";a:0:{}s:5:\"total\";s:5:\"13.99\";s:9:\"total_tax\";d:0;}\";s:15:\"applied_coupons\";s:6:\"a:0:{}\";s:22:\"coupon_discount_totals\";s:6:\"a:0:{}\";s:26:\"coupon_discount_tax_totals\";s:6:\"a:0:{}\";s:21:\"removed_cart_contents\";s:6:\"a:0:{}\";s:8:\"customer\";s:768:\"a:27:{s:2:\"id\";s:1:\"1\";s:13:\"date_modified\";s:25:\"2021-11-23T16:46:43+00:00\";s:8:\"postcode\";s:0:\"\";s:4:\"city\";s:0:\"\";s:9:\"address_1\";s:0:\"\";s:7:\"address\";s:0:\"\";s:9:\"address_2\";s:0:\"\";s:5:\"state\";s:2:\"CA\";s:7:\"country\";s:2:\"US\";s:17:\"shipping_postcode\";s:0:\"\";s:13:\"shipping_city\";s:0:\"\";s:18:\"shipping_address_1\";s:0:\"\";s:16:\"shipping_address\";s:0:\"\";s:18:\"shipping_address_2\";s:0:\"\";s:14:\"shipping_state\";s:2:\"CA\";s:16:\"shipping_country\";s:2:\"US\";s:13:\"is_vat_exempt\";s:0:\"\";s:19:\"calculated_shipping\";s:0:\"\";s:10:\"first_name\";s:0:\"\";s:9:\"last_name\";s:0:\"\";s:7:\"company\";s:0:\"\";s:5:\"phone\";s:0:\"\";s:5:\"email\";s:21:\"rostik22988@gmail.com\";s:19:\"shipping_first_name\";s:0:\"\";s:18:\"shipping_last_name\";s:0:\"\";s:16:\"shipping_company\";s:0:\"\";s:14:\"shipping_phone\";s:0:\"\";}\";s:21:\"chosen_payment_method\";s:0:\"\";}', 1639044963),
(11, 'a73a9988077f89672b6924bf46b689da', 'a:9:{s:4:\"cart\";s:416:\"a:1:{s:32:\"f4b9ec30ad9f68f89b29639786cb62ef\";a:11:{s:3:\"key\";s:32:\"f4b9ec30ad9f68f89b29639786cb62ef\";s:10:\"product_id\";i:94;s:12:\"variation_id\";i:0;s:9:\"variation\";a:0:{}s:8:\"quantity\";i:2;s:9:\"data_hash\";s:32:\"b5c1d5ca8bae6d4896cf1807cdf763f0\";s:13:\"line_tax_data\";a:2:{s:8:\"subtotal\";a:0:{}s:5:\"total\";a:0:{}}s:13:\"line_subtotal\";d:39.98;s:17:\"line_subtotal_tax\";i:0;s:10:\"line_total\";d:39.98;s:8:\"line_tax\";i:0;}}\";s:11:\"cart_totals\";s:399:\"a:15:{s:8:\"subtotal\";s:5:\"39.98\";s:12:\"subtotal_tax\";i:0;s:14:\"shipping_total\";s:1:\"0\";s:12:\"shipping_tax\";i:0;s:14:\"shipping_taxes\";a:0:{}s:14:\"discount_total\";i:0;s:12:\"discount_tax\";i:0;s:19:\"cart_contents_total\";s:5:\"39.98\";s:17:\"cart_contents_tax\";i:0;s:19:\"cart_contents_taxes\";a:0:{}s:9:\"fee_total\";s:1:\"0\";s:7:\"fee_tax\";i:0;s:9:\"fee_taxes\";a:0:{}s:5:\"total\";s:5:\"39.98\";s:9:\"total_tax\";d:0;}\";s:15:\"applied_coupons\";s:6:\"a:0:{}\";s:22:\"coupon_discount_totals\";s:6:\"a:0:{}\";s:26:\"coupon_discount_tax_totals\";s:6:\"a:0:{}\";s:21:\"removed_cart_contents\";s:417:\"a:1:{s:32:\"26657d5ff9020d2abefe558796b99584\";a:11:{s:3:\"key\";s:32:\"26657d5ff9020d2abefe558796b99584\";s:10:\"product_id\";i:96;s:12:\"variation_id\";i:0;s:9:\"variation\";a:0:{}s:8:\"quantity\";i:10;s:9:\"data_hash\";s:32:\"b5c1d5ca8bae6d4896cf1807cdf763f0\";s:13:\"line_tax_data\";a:2:{s:8:\"subtotal\";a:0:{}s:5:\"total\";a:0:{}}s:13:\"line_subtotal\";d:139.9;s:17:\"line_subtotal_tax\";i:0;s:10:\"line_total\";d:139.9;s:8:\"line_tax\";i:0;}}\";s:10:\"wc_notices\";N;s:8:\"customer\";s:720:\"a:27:{s:2:\"id\";s:1:\"0\";s:13:\"date_modified\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:4:\"city\";s:0:\"\";s:9:\"address_1\";s:0:\"\";s:7:\"address\";s:0:\"\";s:9:\"address_2\";s:0:\"\";s:5:\"state\";s:2:\"CA\";s:7:\"country\";s:2:\"US\";s:17:\"shipping_postcode\";s:0:\"\";s:13:\"shipping_city\";s:0:\"\";s:18:\"shipping_address_1\";s:0:\"\";s:16:\"shipping_address\";s:0:\"\";s:18:\"shipping_address_2\";s:0:\"\";s:14:\"shipping_state\";s:2:\"CA\";s:16:\"shipping_country\";s:2:\"US\";s:13:\"is_vat_exempt\";s:0:\"\";s:19:\"calculated_shipping\";s:0:\"\";s:10:\"first_name\";s:0:\"\";s:9:\"last_name\";s:0:\"\";s:7:\"company\";s:0:\"\";s:5:\"phone\";s:0:\"\";s:5:\"email\";s:0:\"\";s:19:\"shipping_first_name\";s:0:\"\";s:18:\"shipping_last_name\";s:0:\"\";s:16:\"shipping_company\";s:0:\"\";s:14:\"shipping_phone\";s:0:\"\";}\";s:21:\"chosen_payment_method\";s:0:\"\";}', 1639051508);

-- --------------------------------------------------------

--
-- Структура таблиці `wp_woocommerce_shipping_zones`
--

CREATE TABLE `wp_woocommerce_shipping_zones` (
  `zone_id` bigint(20) UNSIGNED NOT NULL,
  `zone_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `zone_order` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблиці `wp_woocommerce_shipping_zone_locations`
--

CREATE TABLE `wp_woocommerce_shipping_zone_locations` (
  `location_id` bigint(20) UNSIGNED NOT NULL,
  `zone_id` bigint(20) UNSIGNED NOT NULL,
  `location_code` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `location_type` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблиці `wp_woocommerce_shipping_zone_methods`
--

CREATE TABLE `wp_woocommerce_shipping_zone_methods` (
  `zone_id` bigint(20) UNSIGNED NOT NULL,
  `instance_id` bigint(20) UNSIGNED NOT NULL,
  `method_id` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `method_order` bigint(20) UNSIGNED NOT NULL,
  `is_enabled` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблиці `wp_woocommerce_tax_rates`
--

CREATE TABLE `wp_woocommerce_tax_rates` (
  `tax_rate_id` bigint(20) UNSIGNED NOT NULL,
  `tax_rate_country` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tax_rate_state` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tax_rate` varchar(8) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tax_rate_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tax_rate_priority` bigint(20) UNSIGNED NOT NULL,
  `tax_rate_compound` int(1) NOT NULL DEFAULT 0,
  `tax_rate_shipping` int(1) NOT NULL DEFAULT 1,
  `tax_rate_order` bigint(20) UNSIGNED NOT NULL,
  `tax_rate_class` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблиці `wp_woocommerce_tax_rate_locations`
--

CREATE TABLE `wp_woocommerce_tax_rate_locations` (
  `location_id` bigint(20) UNSIGNED NOT NULL,
  `location_code` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tax_rate_id` bigint(20) UNSIGNED NOT NULL,
  `location_type` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Індекси збережених таблиць
--

--
-- Індекси таблиці `wp_actionscheduler_actions`
--
ALTER TABLE `wp_actionscheduler_actions`
  ADD PRIMARY KEY (`action_id`),
  ADD KEY `hook` (`hook`),
  ADD KEY `status` (`status`),
  ADD KEY `scheduled_date_gmt` (`scheduled_date_gmt`),
  ADD KEY `args` (`args`),
  ADD KEY `group_id` (`group_id`),
  ADD KEY `last_attempt_gmt` (`last_attempt_gmt`),
  ADD KEY `claim_id` (`claim_id`),
  ADD KEY `claim_id_status_scheduled_date_gmt` (`claim_id`,`status`,`scheduled_date_gmt`);

--
-- Індекси таблиці `wp_actionscheduler_claims`
--
ALTER TABLE `wp_actionscheduler_claims`
  ADD PRIMARY KEY (`claim_id`),
  ADD KEY `date_created_gmt` (`date_created_gmt`);

--
-- Індекси таблиці `wp_actionscheduler_groups`
--
ALTER TABLE `wp_actionscheduler_groups`
  ADD PRIMARY KEY (`group_id`),
  ADD KEY `slug` (`slug`(191));

--
-- Індекси таблиці `wp_actionscheduler_logs`
--
ALTER TABLE `wp_actionscheduler_logs`
  ADD PRIMARY KEY (`log_id`),
  ADD KEY `action_id` (`action_id`),
  ADD KEY `log_date_gmt` (`log_date_gmt`);

--
-- Індекси таблиці `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Індекси таблиці `wp_comments`
--
ALTER TABLE `wp_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10)),
  ADD KEY `woo_idx_comment_type` (`comment_type`);

--
-- Індекси таблиці `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Індекси таблиці `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`),
  ADD KEY `autoload` (`autoload`);

--
-- Індекси таблиці `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Індекси таблиці `wp_posts`
--
ALTER TABLE `wp_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Індекси таблиці `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Індекси таблиці `wp_terms`
--
ALTER TABLE `wp_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Індекси таблиці `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Індекси таблиці `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Індекси таблиці `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Індекси таблиці `wp_users`
--
ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- Індекси таблиці `wp_wc_admin_notes`
--
ALTER TABLE `wp_wc_admin_notes`
  ADD PRIMARY KEY (`note_id`);

--
-- Індекси таблиці `wp_wc_admin_note_actions`
--
ALTER TABLE `wp_wc_admin_note_actions`
  ADD PRIMARY KEY (`action_id`),
  ADD KEY `note_id` (`note_id`);

--
-- Індекси таблиці `wp_wc_category_lookup`
--
ALTER TABLE `wp_wc_category_lookup`
  ADD PRIMARY KEY (`category_tree_id`,`category_id`);

--
-- Індекси таблиці `wp_wc_customer_lookup`
--
ALTER TABLE `wp_wc_customer_lookup`
  ADD PRIMARY KEY (`customer_id`),
  ADD UNIQUE KEY `user_id` (`user_id`),
  ADD KEY `email` (`email`);

--
-- Індекси таблиці `wp_wc_download_log`
--
ALTER TABLE `wp_wc_download_log`
  ADD PRIMARY KEY (`download_log_id`),
  ADD KEY `permission_id` (`permission_id`),
  ADD KEY `timestamp` (`timestamp`);

--
-- Індекси таблиці `wp_wc_order_coupon_lookup`
--
ALTER TABLE `wp_wc_order_coupon_lookup`
  ADD PRIMARY KEY (`order_id`,`coupon_id`),
  ADD KEY `coupon_id` (`coupon_id`),
  ADD KEY `date_created` (`date_created`);

--
-- Індекси таблиці `wp_wc_order_product_lookup`
--
ALTER TABLE `wp_wc_order_product_lookup`
  ADD PRIMARY KEY (`order_item_id`),
  ADD KEY `order_id` (`order_id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `customer_id` (`customer_id`),
  ADD KEY `date_created` (`date_created`);

--
-- Індекси таблиці `wp_wc_order_stats`
--
ALTER TABLE `wp_wc_order_stats`
  ADD PRIMARY KEY (`order_id`),
  ADD KEY `date_created` (`date_created`),
  ADD KEY `customer_id` (`customer_id`),
  ADD KEY `status` (`status`(191));

--
-- Індекси таблиці `wp_wc_order_tax_lookup`
--
ALTER TABLE `wp_wc_order_tax_lookup`
  ADD PRIMARY KEY (`order_id`,`tax_rate_id`),
  ADD KEY `tax_rate_id` (`tax_rate_id`),
  ADD KEY `date_created` (`date_created`);

--
-- Індекси таблиці `wp_wc_product_meta_lookup`
--
ALTER TABLE `wp_wc_product_meta_lookup`
  ADD PRIMARY KEY (`product_id`),
  ADD KEY `virtual` (`virtual`),
  ADD KEY `downloadable` (`downloadable`),
  ADD KEY `stock_status` (`stock_status`),
  ADD KEY `stock_quantity` (`stock_quantity`),
  ADD KEY `onsale` (`onsale`),
  ADD KEY `min_max_price` (`min_price`,`max_price`);

--
-- Індекси таблиці `wp_wc_reserved_stock`
--
ALTER TABLE `wp_wc_reserved_stock`
  ADD PRIMARY KEY (`order_id`,`product_id`);

--
-- Індекси таблиці `wp_wc_tax_rate_classes`
--
ALTER TABLE `wp_wc_tax_rate_classes`
  ADD PRIMARY KEY (`tax_rate_class_id`),
  ADD UNIQUE KEY `slug` (`slug`(191));

--
-- Індекси таблиці `wp_wc_webhooks`
--
ALTER TABLE `wp_wc_webhooks`
  ADD PRIMARY KEY (`webhook_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Індекси таблиці `wp_woocommerce_api_keys`
--
ALTER TABLE `wp_woocommerce_api_keys`
  ADD PRIMARY KEY (`key_id`),
  ADD KEY `consumer_key` (`consumer_key`),
  ADD KEY `consumer_secret` (`consumer_secret`);

--
-- Індекси таблиці `wp_woocommerce_attribute_taxonomies`
--
ALTER TABLE `wp_woocommerce_attribute_taxonomies`
  ADD PRIMARY KEY (`attribute_id`),
  ADD KEY `attribute_name` (`attribute_name`(20));

--
-- Індекси таблиці `wp_woocommerce_downloadable_product_permissions`
--
ALTER TABLE `wp_woocommerce_downloadable_product_permissions`
  ADD PRIMARY KEY (`permission_id`),
  ADD KEY `download_order_key_product` (`product_id`,`order_id`,`order_key`(16),`download_id`),
  ADD KEY `download_order_product` (`download_id`,`order_id`,`product_id`),
  ADD KEY `order_id` (`order_id`),
  ADD KEY `user_order_remaining_expires` (`user_id`,`order_id`,`downloads_remaining`,`access_expires`);

--
-- Індекси таблиці `wp_woocommerce_log`
--
ALTER TABLE `wp_woocommerce_log`
  ADD PRIMARY KEY (`log_id`),
  ADD KEY `level` (`level`);

--
-- Індекси таблиці `wp_woocommerce_order_itemmeta`
--
ALTER TABLE `wp_woocommerce_order_itemmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `order_item_id` (`order_item_id`),
  ADD KEY `meta_key` (`meta_key`(32));

--
-- Індекси таблиці `wp_woocommerce_order_items`
--
ALTER TABLE `wp_woocommerce_order_items`
  ADD PRIMARY KEY (`order_item_id`),
  ADD KEY `order_id` (`order_id`);

--
-- Індекси таблиці `wp_woocommerce_payment_tokenmeta`
--
ALTER TABLE `wp_woocommerce_payment_tokenmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `payment_token_id` (`payment_token_id`),
  ADD KEY `meta_key` (`meta_key`(32));

--
-- Індекси таблиці `wp_woocommerce_payment_tokens`
--
ALTER TABLE `wp_woocommerce_payment_tokens`
  ADD PRIMARY KEY (`token_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Індекси таблиці `wp_woocommerce_sessions`
--
ALTER TABLE `wp_woocommerce_sessions`
  ADD PRIMARY KEY (`session_id`),
  ADD UNIQUE KEY `session_key` (`session_key`);

--
-- Індекси таблиці `wp_woocommerce_shipping_zones`
--
ALTER TABLE `wp_woocommerce_shipping_zones`
  ADD PRIMARY KEY (`zone_id`);

--
-- Індекси таблиці `wp_woocommerce_shipping_zone_locations`
--
ALTER TABLE `wp_woocommerce_shipping_zone_locations`
  ADD PRIMARY KEY (`location_id`),
  ADD KEY `location_id` (`location_id`),
  ADD KEY `location_type_code` (`location_type`(10),`location_code`(20));

--
-- Індекси таблиці `wp_woocommerce_shipping_zone_methods`
--
ALTER TABLE `wp_woocommerce_shipping_zone_methods`
  ADD PRIMARY KEY (`instance_id`);

--
-- Індекси таблиці `wp_woocommerce_tax_rates`
--
ALTER TABLE `wp_woocommerce_tax_rates`
  ADD PRIMARY KEY (`tax_rate_id`),
  ADD KEY `tax_rate_country` (`tax_rate_country`),
  ADD KEY `tax_rate_state` (`tax_rate_state`(2)),
  ADD KEY `tax_rate_class` (`tax_rate_class`(10)),
  ADD KEY `tax_rate_priority` (`tax_rate_priority`);

--
-- Індекси таблиці `wp_woocommerce_tax_rate_locations`
--
ALTER TABLE `wp_woocommerce_tax_rate_locations`
  ADD PRIMARY KEY (`location_id`),
  ADD KEY `tax_rate_id` (`tax_rate_id`),
  ADD KEY `location_type_code` (`location_type`(10),`location_code`(20));

--
-- AUTO_INCREMENT для збережених таблиць
--

--
-- AUTO_INCREMENT для таблиці `wp_actionscheduler_actions`
--
ALTER TABLE `wp_actionscheduler_actions`
  MODIFY `action_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT для таблиці `wp_actionscheduler_claims`
--
ALTER TABLE `wp_actionscheduler_claims`
  MODIFY `claim_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1361;

--
-- AUTO_INCREMENT для таблиці `wp_actionscheduler_groups`
--
ALTER TABLE `wp_actionscheduler_groups`
  MODIFY `group_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблиці `wp_actionscheduler_logs`
--
ALTER TABLE `wp_actionscheduler_logs`
  MODIFY `log_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=85;

--
-- AUTO_INCREMENT для таблиці `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблиці `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблиці `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблиці `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2103;

--
-- AUTO_INCREMENT для таблиці `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2454;

--
-- AUTO_INCREMENT для таблиці `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=209;

--
-- AUTO_INCREMENT для таблиці `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT для таблиці `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT для таблиці `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT для таблиці `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT для таблиці `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблиці `wp_wc_admin_notes`
--
ALTER TABLE `wp_wc_admin_notes`
  MODIFY `note_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT для таблиці `wp_wc_admin_note_actions`
--
ALTER TABLE `wp_wc_admin_note_actions`
  MODIFY `action_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=396;

--
-- AUTO_INCREMENT для таблиці `wp_wc_customer_lookup`
--
ALTER TABLE `wp_wc_customer_lookup`
  MODIFY `customer_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблиці `wp_wc_download_log`
--
ALTER TABLE `wp_wc_download_log`
  MODIFY `download_log_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблиці `wp_wc_tax_rate_classes`
--
ALTER TABLE `wp_wc_tax_rate_classes`
  MODIFY `tax_rate_class_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблиці `wp_wc_webhooks`
--
ALTER TABLE `wp_wc_webhooks`
  MODIFY `webhook_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблиці `wp_woocommerce_api_keys`
--
ALTER TABLE `wp_woocommerce_api_keys`
  MODIFY `key_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблиці `wp_woocommerce_attribute_taxonomies`
--
ALTER TABLE `wp_woocommerce_attribute_taxonomies`
  MODIFY `attribute_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблиці `wp_woocommerce_downloadable_product_permissions`
--
ALTER TABLE `wp_woocommerce_downloadable_product_permissions`
  MODIFY `permission_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблиці `wp_woocommerce_log`
--
ALTER TABLE `wp_woocommerce_log`
  MODIFY `log_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблиці `wp_woocommerce_order_itemmeta`
--
ALTER TABLE `wp_woocommerce_order_itemmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблиці `wp_woocommerce_order_items`
--
ALTER TABLE `wp_woocommerce_order_items`
  MODIFY `order_item_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблиці `wp_woocommerce_payment_tokenmeta`
--
ALTER TABLE `wp_woocommerce_payment_tokenmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблиці `wp_woocommerce_payment_tokens`
--
ALTER TABLE `wp_woocommerce_payment_tokens`
  MODIFY `token_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблиці `wp_woocommerce_sessions`
--
ALTER TABLE `wp_woocommerce_sessions`
  MODIFY `session_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT для таблиці `wp_woocommerce_shipping_zones`
--
ALTER TABLE `wp_woocommerce_shipping_zones`
  MODIFY `zone_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблиці `wp_woocommerce_shipping_zone_locations`
--
ALTER TABLE `wp_woocommerce_shipping_zone_locations`
  MODIFY `location_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблиці `wp_woocommerce_shipping_zone_methods`
--
ALTER TABLE `wp_woocommerce_shipping_zone_methods`
  MODIFY `instance_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблиці `wp_woocommerce_tax_rates`
--
ALTER TABLE `wp_woocommerce_tax_rates`
  MODIFY `tax_rate_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблиці `wp_woocommerce_tax_rate_locations`
--
ALTER TABLE `wp_woocommerce_tax_rate_locations`
  MODIFY `location_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Обмеження зовнішнього ключа збережених таблиць
--

--
-- Обмеження зовнішнього ключа таблиці `wp_wc_download_log`
--
ALTER TABLE `wp_wc_download_log`
  ADD CONSTRAINT `fk_wp_wc_download_log_permission_id` FOREIGN KEY (`permission_id`) REFERENCES `wp_woocommerce_downloadable_product_permissions` (`permission_id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
