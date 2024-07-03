-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 03, 2024 at 10:38 PM
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
-- Database: `final_p`
--

-- --------------------------------------------------------

--
-- Table structure for table `accounts_administrator`
--

CREATE TABLE `accounts_administrator` (
  `id` bigint(20) NOT NULL,
  `bio` longtext DEFAULT NULL,
  `profile_picture` varchar(100) NOT NULL,
  `user_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `accounts_customuser`
--

CREATE TABLE `accounts_customuser` (
  `id` bigint(20) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `image` varchar(100) DEFAULT NULL,
  `gender` varchar(10) NOT NULL,
  `full_name` varchar(60) NOT NULL,
  `role` varchar(25) NOT NULL,
  `phone` varchar(128) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `accounts_customuser`
--

INSERT INTO `accounts_customuser` (`id`, `password`, `last_login`, `is_superuser`, `username`, `email`, `image`, `gender`, `full_name`, `role`, `phone`, `is_active`, `is_staff`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$260000$QdFWfHMBB2GR4WV0GDB6pW$GXxWJQohVcFhkbcTVHQfz7mSSXVAnWOQZ03Z7oOoQBc=', '2023-12-30 20:11:46.259000', 1, '', 'test@test.com', '', '', '', 'Administrator', '', 1, 1, '2023-11-22 07:23:21.123000'),
(2, 'pbkdf2_sha256$260000$pUmJeWWQFd2LE9RdflVAC8$14DnaAgDCoHl4I8wegGi52Tb13gMt4lseUUQfkOMSBg=', '2023-12-29 15:42:45.111000', 0, 'Manuel', 'manu@mail.com', 'Users/person_2.jpg', 'Male', 'Emanuel Kongo', 'Landlord', '0712 457898', 1, 0, '2023-11-22 07:25:46.807000'),
(3, 'pbkdf2_sha256$260000$7dFecUxXUmGyC2K9CDVsUC$xIvHabs1nKFrTfV+UVYsoWVZ1763y9amuV2hLTd2LxM=', '2023-11-28 13:35:31.508000', 0, 'Bruno', 'jose@jose.com', 'Users/20220903_164726.jpg', 'Male', 'Bruno Musamali', 'Prospective tenant', '0720 051012', 1, 1, '2023-11-22 07:26:49.748000'),
(4, 'pbkdf2_sha256$260000$0y7KMKmg0cK8e4au1OlXxj$0/8Df57xt31M8et9J5+68w8f/Kb//xvU/y41Oqb1aqI=', '2023-12-29 15:36:21.538000', 0, 'Talia', 'talia@jose.com', 'Users/IMG-20231206-WA0016.jpg', 'Female', 'Talia Ann Jose', 'Landlord', '0758 051111', 1, 0, '2023-11-22 07:28:59.160000'),
(7, 'pbkdf2_sha256$260000$GPDOjQRI175K9L0bhIBBOZ$t1RcbmjNFmhdx3Dsbe+GPz7phnwu1KAAymC3JpD9IIg=', '2023-11-22 15:16:58.462000', 0, 'Joseph01', 'indiekaj@gmail.com', '', 'Male', 'Joseph TheOne', 'Landlord', '0748 050012', 1, 0, '2023-11-22 15:12:11.606000'),
(8, 'pbkdf2_sha256$260000$76SGReR0FV94X1DbzM3rDL$k/lR4ANYbNsLY83T3yY1OAxUCTaBVi6K4CdEHICb2HM=', '2023-11-22 17:56:35.853000', 0, 'Test2', 'test@mail.com', '', 'Female', 'Test ForAll', 'Prospective tenant', '0713 050012', 1, 0, '2023-11-22 17:50:14.076000'),
(9, 'pbkdf2_sha256$260000$eUaduY1d7dZUonYkfWARpt$g0KGoAqgPUnYYteA4fGkOke3M0zn4qCmZ7FwhO9zhsA=', '2023-11-23 11:20:07.871000', 0, 'Test3', 'test2@test.com', '', 'Male', 'The Test', 'Prospective tenant', '0721 050012', 1, 0, '2023-11-23 08:48:05.627000'),
(10, 'pbkdf2_sha256$260000$2B8MONqWlrS7L1oadJWxwj$PlT9Kj3CFpM+gNn9kgAvvmPLPL2CP6PMYHdOVwWjm3Y=', NULL, 0, 'AlanWalker', 'collo4888@outlook.com', '', 'Male', 'Collins Odhiambo Odunga', 'Landlord', '0798 966121', 1, 0, '2023-11-25 10:32:15.991000'),
(11, 'pbkdf2_sha256$260000$gZMId6KKVXms8aJZ3HpvCM$hdbNtls0S010vCGZkxR/hKQOjNmYIn70hZdXvYCsP3c=', '2023-12-01 04:31:45.017000', 0, 'Jose', 'ndiekaj@gmail.com', '', 'Male', 'Indieka Joseph', 'Prospective tenant', '0712 457890', 1, 0, '2023-11-30 11:26:23.582000');

-- --------------------------------------------------------

--
-- Table structure for table `accounts_customuser_groups`
--

CREATE TABLE `accounts_customuser_groups` (
  `id` bigint(20) NOT NULL,
  `customuser_id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `accounts_customuser_user_permissions`
--

CREATE TABLE `accounts_customuser_user_permissions` (
  `id` bigint(20) NOT NULL,
  `customuser_id` bigint(20) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `accounts_landlord`
--

CREATE TABLE `accounts_landlord` (
  `id` bigint(20) NOT NULL,
  `bio` longtext DEFAULT NULL,
  `profile_picture` varchar(100) NOT NULL,
  `user_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `accounts_landlord`
--

INSERT INTO `accounts_landlord` (`id`, `bio`, `profile_picture`, `user_id`) VALUES
(1, 'A hard working man from Taita Taveta county', 'profile/person_1.jpg', 2),
(2, 'Young lady', 'profile/IMG-20231206-WA0016.jpg', 4),
(5, NULL, 'default.png', 7),
(6, NULL, 'default.png', 10);

-- --------------------------------------------------------

--
-- Table structure for table `accounts_prospectivetenant`
--

CREATE TABLE `accounts_prospectivetenant` (
  `id` bigint(20) NOT NULL,
  `bio` longtext DEFAULT NULL,
  `profile_picture` varchar(100) NOT NULL,
  `user_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `accounts_prospectivetenant`
--

INSERT INTO `accounts_prospectivetenant` (`id`, `bio`, `profile_picture`, `user_id`) VALUES
(1, 'KCB bank worker', 'profile/20220903_164726.jpg', 3),
(2, NULL, 'default.png', 8),
(3, NULL, 'default.png', 9),
(4, NULL, 'default.png', 11);

-- --------------------------------------------------------

--
-- Table structure for table `admin_interface_theme`
--

CREATE TABLE `admin_interface_theme` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `active` tinyint(1) NOT NULL,
  `title` varchar(50) NOT NULL,
  `title_visible` tinyint(1) NOT NULL,
  `logo` varchar(100) NOT NULL,
  `logo_visible` tinyint(1) NOT NULL,
  `css_header_background_color` varchar(10) NOT NULL,
  `title_color` varchar(10) NOT NULL,
  `css_header_text_color` varchar(10) NOT NULL,
  `css_header_link_color` varchar(10) NOT NULL,
  `css_header_link_hover_color` varchar(10) NOT NULL,
  `css_module_background_color` varchar(10) NOT NULL,
  `css_module_text_color` varchar(10) NOT NULL,
  `css_module_link_color` varchar(10) NOT NULL,
  `css_module_link_hover_color` varchar(10) NOT NULL,
  `css_module_rounded_corners` tinyint(1) NOT NULL,
  `css_generic_link_color` varchar(10) NOT NULL,
  `css_generic_link_hover_color` varchar(10) NOT NULL,
  `css_save_button_background_color` varchar(10) NOT NULL,
  `css_save_button_background_hover_color` varchar(10) NOT NULL,
  `css_save_button_text_color` varchar(10) NOT NULL,
  `css_delete_button_background_color` varchar(10) NOT NULL,
  `css_delete_button_background_hover_color` varchar(10) NOT NULL,
  `css_delete_button_text_color` varchar(10) NOT NULL,
  `list_filter_dropdown` tinyint(1) NOT NULL,
  `related_modal_active` tinyint(1) NOT NULL,
  `related_modal_background_color` varchar(10) NOT NULL,
  `related_modal_rounded_corners` tinyint(1) NOT NULL,
  `logo_color` varchar(10) NOT NULL,
  `recent_actions_visible` tinyint(1) NOT NULL,
  `favicon` varchar(100) NOT NULL,
  `related_modal_background_opacity` varchar(5) NOT NULL,
  `env_name` varchar(50) NOT NULL,
  `env_visible_in_header` tinyint(1) NOT NULL,
  `env_color` varchar(10) NOT NULL,
  `env_visible_in_favicon` tinyint(1) NOT NULL,
  `related_modal_close_button_visible` tinyint(1) NOT NULL,
  `language_chooser_active` tinyint(1) NOT NULL,
  `language_chooser_display` varchar(10) NOT NULL,
  `list_filter_sticky` tinyint(1) NOT NULL,
  `form_pagination_sticky` tinyint(1) NOT NULL,
  `form_submit_sticky` tinyint(1) NOT NULL,
  `css_module_background_selected_color` varchar(10) NOT NULL,
  `css_module_link_selected_color` varchar(10) NOT NULL,
  `logo_max_height` smallint(5) UNSIGNED NOT NULL CHECK (`logo_max_height` >= 0),
  `logo_max_width` smallint(5) UNSIGNED NOT NULL CHECK (`logo_max_width` >= 0),
  `foldable_apps` tinyint(1) NOT NULL,
  `language_chooser_control` varchar(20) NOT NULL,
  `list_filter_highlight` tinyint(1) NOT NULL,
  `list_filter_removal_links` tinyint(1) NOT NULL,
  `show_fieldsets_as_tabs` tinyint(1) NOT NULL,
  `show_inlines_as_tabs` tinyint(1) NOT NULL,
  `css_generic_link_active_color` varchar(10) NOT NULL,
  `collapsible_stacked_inlines` tinyint(1) NOT NULL,
  `collapsible_stacked_inlines_collapsed` tinyint(1) NOT NULL,
  `collapsible_tabular_inlines` tinyint(1) NOT NULL,
  `collapsible_tabular_inlines_collapsed` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin_interface_theme`
--

INSERT INTO `admin_interface_theme` (`id`, `name`, `active`, `title`, `title_visible`, `logo`, `logo_visible`, `css_header_background_color`, `title_color`, `css_header_text_color`, `css_header_link_color`, `css_header_link_hover_color`, `css_module_background_color`, `css_module_text_color`, `css_module_link_color`, `css_module_link_hover_color`, `css_module_rounded_corners`, `css_generic_link_color`, `css_generic_link_hover_color`, `css_save_button_background_color`, `css_save_button_background_hover_color`, `css_save_button_text_color`, `css_delete_button_background_color`, `css_delete_button_background_hover_color`, `css_delete_button_text_color`, `list_filter_dropdown`, `related_modal_active`, `related_modal_background_color`, `related_modal_rounded_corners`, `logo_color`, `recent_actions_visible`, `favicon`, `related_modal_background_opacity`, `env_name`, `env_visible_in_header`, `env_color`, `env_visible_in_favicon`, `related_modal_close_button_visible`, `language_chooser_active`, `language_chooser_display`, `list_filter_sticky`, `form_pagination_sticky`, `form_submit_sticky`, `css_module_background_selected_color`, `css_module_link_selected_color`, `logo_max_height`, `logo_max_width`, `foldable_apps`, `language_chooser_control`, `list_filter_highlight`, `list_filter_removal_links`, `show_fieldsets_as_tabs`, `show_inlines_as_tabs`, `css_generic_link_active_color`, `collapsible_stacked_inlines`, `collapsible_stacked_inlines_collapsed`, `collapsible_tabular_inlines`, `collapsible_tabular_inlines_collapsed`) VALUES
(1, 'RBMS', 0, 'Django administration', 1, '', 1, '#0C4B33', '#F5DD5D', '#44B78B', '#FFFFFF', '#C9F0DD', '#44B78B', '#FFFFFF', '#FFFFFF', '#C9F0DD', 1, '#0C3C26', '#156641', '#0C4B33', '#0C3C26', '#FFFFFF', '#BA2121', '#A41515', '#FFFFFF', 1, 1, '#000000', 1, '#FFFFFF', 1, '', '0.3', '', 1, '#05E786', 1, 1, 1, 'code', 1, 1, 0, '#FFFFCC', '#FFFFFF', 100, 400, 1, 'default-select', 1, 0, 0, 0, '#29B864', 0, 1, 0, 1),
(2, 'Bootstrap', 0, 'Django administration', 0, '', 1, '#FFFFFF', '#503873', '#463265', '#463265', '#7351A6', '#7351A6', '#FFFFFF', '#CDBFE3', '#FFFFFF', 1, '#463265', '#7351A6', '#5CB85C', '#449D44', '#FFFFFF', '#D9534F', '#C9302C', '#FFFFFF', 0, 1, '#503873', 1, '#503873', 1, '', '0.2', '', 1, '#E74C3C', 1, 1, 1, 'code', 1, 0, 0, '#FFFFCC', '#FFFFFF', 100, 400, 1, 'default-select', 1, 0, 0, 0, '#29B864', 0, 1, 0, 1),
(3, 'Foundation', 0, 'Django administration', 0, '', 1, '#2C3840', '#DDDDDD', '#FFFFFF', '#FFFFFF', '#DDDDDD', '#074E68', '#FFFFFF', '#FFFFFF', '#DDDDDD', 1, '#000000', '#074E68', '#2199E8', '#1585CF', '#FFFFFF', '#CC4B37', '#BF4634', '#FFFFFF', 0, 1, '#000000', 1, '#CCCCCC', 1, '', '0.2', '', 1, '#E74C3C', 1, 1, 1, 'code', 1, 0, 0, '#FFFFCC', '#FFFFFF', 100, 400, 1, 'default-select', 1, 0, 0, 0, '#29B864', 0, 1, 0, 1),
(4, 'USWDS', 1, 'RBMS administration', 1, '', 1, '#13123F', '#E5DFDE', '#FFFFFF', '#FFFFFF', '#E1F3F8', '#21397A', '#FFFFFF', '#FFFFFF', '#AFBDC1', 1, '#205493', '#0071BC', '#205493', '#112E51', '#FFFFFF', '#CD2026', '#981B1E', '#FFFFFF', 1, 1, '#000000', 1, '#FFFFFF', 1, 'admin-interface/favicon/bowl-3.png', '0.8', 'RBMS', 1, '#E74C3C', 1, 1, 1, 'code', 1, 0, 0, '#E6FFC0', '#FFFFFF', 100, 400, 1, 'minimal-select', 1, 0, 0, 0, '#29B864', 0, 1, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add Theme', 1, 'add_theme'),
(2, 'Can change Theme', 1, 'change_theme'),
(3, 'Can delete Theme', 1, 'delete_theme'),
(4, 'Can view Theme', 1, 'view_theme'),
(5, 'Can add log entry', 2, 'add_logentry'),
(6, 'Can change log entry', 2, 'change_logentry'),
(7, 'Can delete log entry', 2, 'delete_logentry'),
(8, 'Can view log entry', 2, 'view_logentry'),
(9, 'Can add permission', 3, 'add_permission'),
(10, 'Can change permission', 3, 'change_permission'),
(11, 'Can delete permission', 3, 'delete_permission'),
(12, 'Can view permission', 3, 'view_permission'),
(13, 'Can add group', 4, 'add_group'),
(14, 'Can change group', 4, 'change_group'),
(15, 'Can delete group', 4, 'delete_group'),
(16, 'Can view group', 4, 'view_group'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add CRUD event', 7, 'add_crudevent'),
(26, 'Can change CRUD event', 7, 'change_crudevent'),
(27, 'Can delete CRUD event', 7, 'delete_crudevent'),
(28, 'Can view CRUD event', 7, 'view_crudevent'),
(29, 'Can add login event', 8, 'add_loginevent'),
(30, 'Can change login event', 8, 'change_loginevent'),
(31, 'Can delete login event', 8, 'delete_loginevent'),
(32, 'Can view login event', 8, 'view_loginevent'),
(33, 'Can add request event', 9, 'add_requestevent'),
(34, 'Can change request event', 9, 'change_requestevent'),
(35, 'Can delete request event', 9, 'delete_requestevent'),
(36, 'Can view request event', 9, 'view_requestevent'),
(37, 'Can add User', 10, 'add_customuser'),
(38, 'Can change User', 10, 'change_customuser'),
(39, 'Can delete User', 10, 'delete_customuser'),
(40, 'Can view User', 10, 'view_customuser'),
(41, 'Can add prospectivetenant', 11, 'add_prospectivetenant'),
(42, 'Can change prospectivetenant', 11, 'change_prospectivetenant'),
(43, 'Can delete prospectivetenant', 11, 'delete_prospectivetenant'),
(44, 'Can view prospectivetenant', 11, 'view_prospectivetenant'),
(45, 'Can add landlord', 12, 'add_landlord'),
(46, 'Can change landlord', 12, 'change_landlord'),
(47, 'Can delete landlord', 12, 'delete_landlord'),
(48, 'Can view landlord', 12, 'view_landlord'),
(49, 'Can add administrator', 13, 'add_administrator'),
(50, 'Can change administrator', 13, 'change_administrator'),
(51, 'Can delete administrator', 13, 'delete_administrator'),
(52, 'Can view administrator', 13, 'view_administrator'),
(53, 'Can add Apartment', 14, 'add_apartments'),
(54, 'Can change Apartment', 14, 'change_apartments'),
(55, 'Can delete Apartment', 14, 'delete_apartments'),
(56, 'Can view Apartment', 14, 'view_apartments'),
(57, 'Can add room', 15, 'add_rooms'),
(58, 'Can change room', 15, 'change_rooms'),
(59, 'Can delete room', 15, 'delete_rooms'),
(60, 'Can view room', 15, 'view_rooms'),
(61, 'Can add page', 16, 'add_page'),
(62, 'Can change page', 16, 'change_page'),
(63, 'Can delete page', 16, 'delete_page'),
(64, 'Can view page', 16, 'view_page'),
(65, 'Can add room type', 17, 'add_roomtype'),
(66, 'Can change room type', 17, 'change_roomtype'),
(67, 'Can delete room type', 17, 'delete_roomtype'),
(68, 'Can view room type', 17, 'view_roomtype'),
(69, 'Can add social_media', 18, 'add_social_media'),
(70, 'Can change social_media', 18, 'change_social_media'),
(71, 'Can delete social_media', 18, 'delete_social_media'),
(72, 'Can view social_media', 18, 'view_social_media'),
(73, 'Can add Booking History', 19, 'add_booking_history'),
(74, 'Can change Booking History', 19, 'change_booking_history'),
(75, 'Can delete Booking History', 19, 'delete_booking_history'),
(76, 'Can view Booking History', 19, 'view_booking_history');

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2023-11-22 07:56:46.721000', '1', 'Zion', 1, '[{\"added\": {}}]', 10, 1),
(2, '2023-11-22 08:00:00.559000', '2', 'Riesta', 1, '[{\"added\": {}}]', 10, 1),
(3, '2023-11-22 08:16:40.638000', '3', 'Maroon', 1, '[{\"added\": {}}]', 10, 1),
(4, '2023-11-22 08:22:54.792000', '4', 'LionsGate', 1, '[{\"added\": {}}]', 10, 1),
(5, '2023-11-22 08:26:49.176000', '1', 'Z-23', 1, '[{\"added\": {}}]', 11, 1),
(6, '2023-11-22 08:27:23.910000', '2', 'Z-24', 1, '[{\"added\": {}}]', 11, 1),
(7, '2023-11-22 08:28:08.633000', '3', 'M-15', 1, '[{\"added\": {}}]', 11, 1),
(8, '2023-11-22 08:28:55.869000', '4', 'M-20', 1, '[{\"added\": {}}]', 11, 1),
(9, '2023-11-22 08:29:35.981000', '5', 'A-15', 1, '[{\"added\": {}}]', 11, 1),
(10, '2023-11-22 08:30:15.348000', '6', 'Z-10', 1, '[{\"added\": {}}]', 11, 1),
(11, '2023-11-22 08:31:08.051000', '7', 'L-14', 1, '[{\"added\": {}}]', 11, 1),
(12, '2023-11-22 08:31:44.334000', '8', 'L-20', 1, '[{\"added\": {}}]', 11, 1),
(13, '2023-11-22 08:32:37.869000', '9', 'L-01', 1, '[{\"added\": {}}]', 11, 1),
(14, '2023-11-22 08:33:34.787000', '10', 'A-05', 1, '[{\"added\": {}}]', 11, 1),
(15, '2023-11-22 08:35:50.473000', '2', 'Z-24', 2, '[{\"changed\": {\"fields\": [\"Room Type\", \"Room image\"]}}]', 11, 1),
(16, '2023-11-22 10:15:15.222000', '7', 'L-14', 2, '[{\"changed\": {\"fields\": [\"Booked\"]}}]', 11, 1),
(17, '2023-11-22 10:15:59.118000', '7', 'L-14', 2, '[{\"changed\": {\"fields\": [\"Booked\"]}}]', 11, 1),
(18, '2023-11-22 13:29:01.124000', '3', 'jose@jose.com', 2, '[{\"changed\": {\"fields\": [\"Is staff\"]}}]', 6, 1),
(19, '2023-11-22 13:34:33.150000', '11', 'L-24', 1, '[{\"added\": {}}]', 11, 1),
(20, '2023-11-22 15:11:13.354000', '5', 'indiekaj@gmail.com', 3, '', 6, 1),
(21, '2023-11-22 15:12:05.617000', '6', 'indiekaj@gmail.com', 3, '', 6, 1),
(22, '2023-11-22 16:55:49.912000', '9', 'L-01', 2, '[{\"changed\": {\"fields\": [\"Tenant\"]}}]', 11, 1),
(23, '2023-11-22 17:33:05.455000', '5', 'A-15', 2, '[{\"changed\": {\"fields\": [\"Booked\"]}}]', 11, 1),
(24, '2023-11-22 17:33:53.798000', '5', 'A-15', 2, '[{\"changed\": {\"fields\": [\"Booked\"]}}]', 11, 1),
(25, '2023-11-22 17:46:46.557000', '5', 'A-15', 2, '[{\"changed\": {\"fields\": [\"Booked\"]}}]', 11, 1),
(26, '2023-11-22 17:51:01.533000', '8', 'test@mail.com', 2, '[{\"changed\": {\"fields\": [\"Is active\"]}}]', 6, 1),
(27, '2023-11-22 17:51:54.262000', '3', 'Test2', 1, '[{\"added\": {}}]', 12, 1),
(28, '2023-11-22 17:54:53.591000', '2', 'Bruno', 2, '[{\"changed\": {\"fields\": [\"Room\"]}}]', 12, 1),
(29, '2023-11-22 17:55:34.032000', '5', 'A-15', 3, '', 11, 1),
(30, '2023-11-22 18:13:46.569000', '3', 'Test2', 2, '[{\"changed\": {\"fields\": [\"Room\"]}}]', 12, 1),
(31, '2023-11-22 18:16:29.171000', '3', 'Test2', 2, '[{\"changed\": {\"fields\": [\"Room\"]}}]', 12, 1),
(32, '2023-11-22 18:23:29.734000', '4', 'Bruno', 1, '[{\"added\": {}}]', 12, 1),
(33, '2023-11-22 18:24:29.031000', '10', 'A-05', 2, '[{\"changed\": {\"fields\": [\"Tenant\", \"Booked\"]}}]', 11, 1),
(34, '2023-11-22 18:28:34.783000', '5', 'Bruno', 1, '[{\"added\": {}}]', 12, 1),
(35, '2023-11-23 12:08:07.751000', '9', 'L-01', 2, '[{\"changed\": {\"fields\": [\"Booked\"]}}]', 11, 1),
(36, '2023-11-23 13:56:27.256000', '16', 'A-23', 3, '', 11, 1),
(37, '2023-11-23 13:56:27.265000', '15', 'R-02', 3, '', 11, 1),
(38, '2023-11-23 13:56:27.266000', '14', 'R-27', 3, '', 11, 1),
(39, '2023-11-23 13:56:27.273000', '13', 'R-20', 3, '', 11, 1),
(40, '2023-11-23 13:56:27.276000', '12', 'A-23', 3, '', 11, 1),
(41, '2023-11-24 13:58:29.654000', '21', 'W-06', 2, '[{\"changed\": {\"fields\": [\"Room Type\"]}}]', 11, 1),
(42, '2023-11-24 13:59:03.047000', '10', 'A-05', 2, '[{\"changed\": {\"fields\": [\"Room Type\"]}}]', 11, 1),
(43, '2023-11-24 13:59:30.206000', '1', 'Z-23', 2, '[{\"changed\": {\"fields\": [\"Room Type\"]}}]', 11, 1),
(44, '2023-11-24 14:16:50.446000', '1', 'terms', 1, '[{\"added\": {}}]', 13, 1),
(45, '2023-11-24 14:18:07.726000', '2', 'privacy', 1, '[{\"added\": {}}]', 13, 1),
(46, '2023-11-24 14:22:34.078000', '3', 'aboutus', 1, '[{\"added\": {}}]', 13, 1),
(47, '2023-11-24 14:24:19.840000', '4', 'contact_us', 1, '[{\"added\": {}}]', 13, 1),
(48, '2023-11-24 14:35:59.867000', '2', 'Privacy Policy', 2, '[{\"changed\": {\"fields\": [\"Page Type\"]}}]', 13, 1),
(49, '2023-11-24 14:36:29.566000', '3', 'About', 2, '[{\"changed\": {\"fields\": [\"Page Type\"]}}]', 13, 1),
(50, '2023-11-24 14:37:32.499000', '1', 'Terms of Use', 2, '[{\"changed\": {\"fields\": [\"Page Type\"]}}]', 13, 1),
(51, '2023-11-24 14:38:13.898000', '4', 'Contact Us', 2, '[{\"changed\": {\"fields\": [\"Page Type\"]}}]', 13, 1),
(52, '2023-11-24 17:38:22.245000', '1', 'Terms of Use', 2, '[{\"changed\": {\"fields\": [\"Page Detail\"]}}]', 13, 1),
(53, '2023-11-25 10:41:57.885000', '5', 'Boabab', 2, '[{\"changed\": {\"fields\": [\"Landlord\"]}}]', 10, 1),
(54, '2023-11-25 10:46:38.689000', '22', 'B-34', 1, '[{\"added\": {}}]', 11, 1),
(55, '2023-11-25 10:51:55.810000', '22', 'B-34', 2, '[{\"changed\": {\"fields\": [\"Booked\"]}}]', 11, 1),
(56, '2023-11-25 11:05:44.364000', '1', 'Z-23', 2, '[{\"changed\": {\"fields\": [\"Booked\"]}}]', 11, 1),
(57, '2023-11-25 11:06:57.927000', '3', 'M-15', 2, '[{\"changed\": {\"fields\": [\"Booked\"]}}]', 11, 1),
(58, '2023-11-25 11:08:15.589000', '4', 'M-20', 2, '[{\"changed\": {\"fields\": [\"Booked\"]}}]', 11, 1),
(59, '2023-11-25 11:49:03.973000', '4', 'talia@jose.com', 2, '[{\"changed\": {\"fields\": [\"Image\"]}}]', 6, 1),
(60, '2023-11-26 13:48:56.988000', '2', 'manu@mail.com', 2, '[{\"changed\": {\"fields\": [\"Username\", \"Image\"]}}]', 6, 1),
(61, '2023-11-28 08:49:12.136000', '21', 'W-06', 2, '[{\"changed\": {\"fields\": [\"Booked\"]}}]', 11, 1),
(62, '2023-12-01 04:53:36.125000', '2', 'Privacy Policy', 2, '[{\"changed\": {\"fields\": [\"Page Detail\"]}}]', 13, 1),
(63, '2023-12-01 05:02:12.809000', '2', 'Privacy Policy', 2, '[{\"changed\": {\"fields\": [\"Page Detail\"]}}]', 13, 1),
(64, '2023-12-01 05:06:04.111000', '1', 'Facebook', 1, '[{\"added\": {}}]', 14, 1),
(65, '2023-12-01 05:06:44.915000', '2', 'Twitter', 1, '[{\"added\": {}}]', 14, 1),
(66, '2023-12-01 05:07:23.153000', '3', 'Flickr', 1, '[{\"added\": {}}]', 14, 1),
(67, '2023-12-01 05:08:07.271000', '4', 'Google+', 1, '[{\"added\": {}}]', 14, 1),
(68, '2023-12-01 05:08:37.886000', '5', 'Dribbble', 1, '[{\"added\": {}}]', 14, 1),
(69, '2023-12-01 05:12:44.279000', '1', 'Facebook', 2, '[{\"changed\": {\"fields\": [\"The actual link\", \"Icon\"]}}]', 14, 1),
(70, '2023-12-01 05:15:14.670000', '2', 'Twitter', 2, '[{\"changed\": {\"fields\": [\"The actual link\"]}}]', 14, 1),
(71, '2023-12-30 20:14:05.941000', '1', 'RBMS', 2, '[{\"changed\": {\"fields\": [\"Name\", \"Color\", \"Sticky pagination\"]}}]', 18, 1),
(72, '2023-12-30 20:15:26.799000', '1', 'RBMS', 2, '[{\"changed\": {\"fields\": [\"Active\"]}}]', 18, 1),
(73, '2023-12-30 20:15:42.071000', '3', 'Foundation', 2, '[{\"changed\": {\"fields\": [\"Active\"]}}]', 18, 1),
(74, '2023-12-30 20:15:42.091000', '1', 'RBMS', 2, '[{\"changed\": {\"fields\": [\"Active\"]}}]', 18, 1),
(75, '2023-12-30 20:15:56.113000', '3', 'Foundation', 2, '[{\"changed\": {\"fields\": [\"Active\"]}}]', 18, 1),
(76, '2023-12-30 20:15:56.128000', '2', 'Bootstrap', 2, '[{\"changed\": {\"fields\": [\"Active\"]}}]', 18, 1),
(77, '2023-12-30 20:16:12.092000', '4', 'USWDS', 2, '[{\"changed\": {\"fields\": [\"Active\"]}}]', 18, 1),
(78, '2023-12-30 20:16:12.108000', '2', 'Bootstrap', 2, '[{\"changed\": {\"fields\": [\"Active\"]}}]', 18, 1),
(79, '2023-12-30 20:18:49.480000', '4', 'USWDS', 2, '[{\"changed\": {\"fields\": [\"Favicon\", \"Background color\", \"Link hover color\", \"Use dropdown\"]}}]', 18, 1),
(80, '2023-12-30 20:19:50.018000', '4', 'USWDS', 2, '[{\"changed\": {\"fields\": [\"Name\"]}}]', 18, 1),
(81, '2023-12-30 20:46:46.562000', '4', 'USWDS', 2, '[{\"changed\": {\"fields\": [\"Logo\"]}}]', 18, 1),
(82, '2023-12-30 20:47:26.243000', '4', 'USWDS', 2, '[{\"changed\": {\"fields\": [\"Control\", \"Logo\"]}}]', 18, 1),
(83, '2023-12-30 20:49:13.514000', '4', 'USWDS', 2, '[{\"changed\": {\"fields\": [\"Title\", \"Color\", \"Visible\", \"Background color\", \"Background selected color\"]}}]', 18, 1);

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(13, 'accounts', 'administrator'),
(10, 'accounts', 'customuser'),
(12, 'accounts', 'landlord'),
(11, 'accounts', 'prospectivetenant'),
(2, 'admin', 'logentry'),
(1, 'admin_interface', 'theme'),
(4, 'auth', 'group'),
(3, 'auth', 'permission'),
(5, 'contenttypes', 'contenttype'),
(7, 'easyaudit', 'crudevent'),
(8, 'easyaudit', 'loginevent'),
(9, 'easyaudit', 'requestevent'),
(14, 'rental_app', 'apartments'),
(19, 'rental_app', 'booking_history'),
(16, 'rental_app', 'page'),
(15, 'rental_app', 'rooms'),
(17, 'rental_app', 'roomtype'),
(18, 'rental_app', 'social_media'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2024-07-03 20:21:48.466453'),
(2, 'contenttypes', '0002_remove_content_type_name', '2024-07-03 20:21:48.650290'),
(3, 'auth', '0001_initial', '2024-07-03 20:21:48.930645'),
(4, 'auth', '0002_alter_permission_name_max_length', '2024-07-03 20:21:49.000610'),
(5, 'auth', '0003_alter_user_email_max_length', '2024-07-03 20:21:49.010711'),
(6, 'auth', '0004_alter_user_username_opts', '2024-07-03 20:21:49.023675'),
(7, 'auth', '0005_alter_user_last_login_null', '2024-07-03 20:21:49.036402'),
(8, 'auth', '0006_require_contenttypes_0002', '2024-07-03 20:21:49.040903'),
(9, 'auth', '0007_alter_validators_add_error_messages', '2024-07-03 20:21:49.060514'),
(10, 'auth', '0008_alter_user_username_max_length', '2024-07-03 20:21:49.077016'),
(11, 'auth', '0009_alter_user_last_name_max_length', '2024-07-03 20:21:49.092895'),
(12, 'auth', '0010_alter_group_name_max_length', '2024-07-03 20:21:49.110673'),
(13, 'auth', '0011_update_proxy_permissions', '2024-07-03 20:21:49.120518'),
(14, 'auth', '0012_alter_user_first_name_max_length', '2024-07-03 20:21:49.135278'),
(15, 'accounts', '0001_initial', '2024-07-03 20:21:49.733213'),
(16, 'admin', '0001_initial', '2024-07-03 20:21:49.910295'),
(17, 'admin', '0002_logentry_remove_auto_add', '2024-07-03 20:21:49.928948'),
(18, 'admin', '0003_logentry_add_action_flag_choices', '2024-07-03 20:21:49.952820'),
(19, 'admin_interface', '0001_initial', '2024-07-03 20:21:50.074146'),
(20, 'admin_interface', '0002_add_related_modal', '2024-07-03 20:21:50.155124'),
(21, 'admin_interface', '0003_add_logo_color', '2024-07-03 20:21:50.180312'),
(22, 'admin_interface', '0004_rename_title_color', '2024-07-03 20:21:50.202567'),
(23, 'admin_interface', '0005_add_recent_actions_visible', '2024-07-03 20:21:50.239751'),
(24, 'admin_interface', '0006_bytes_to_str', '2024-07-03 20:21:50.365821'),
(25, 'admin_interface', '0007_add_favicon', '2024-07-03 20:21:50.395014'),
(26, 'admin_interface', '0008_change_related_modal_background_opacity_type', '2024-07-03 20:21:50.435829'),
(27, 'admin_interface', '0009_add_enviroment', '2024-07-03 20:21:50.491848'),
(28, 'admin_interface', '0010_add_localization', '2024-07-03 20:21:50.521303'),
(29, 'admin_interface', '0011_add_environment_options', '2024-07-03 20:21:50.600404'),
(30, 'admin_interface', '0012_update_verbose_names', '2024-07-03 20:21:50.612369'),
(31, 'admin_interface', '0013_add_related_modal_close_button', '2024-07-03 20:21:50.637069'),
(32, 'admin_interface', '0014_name_unique', '2024-07-03 20:21:50.668605'),
(33, 'admin_interface', '0015_add_language_chooser_active', '2024-07-03 20:21:50.703492'),
(34, 'admin_interface', '0016_add_language_chooser_display', '2024-07-03 20:21:50.732854'),
(35, 'admin_interface', '0017_change_list_filter_dropdown', '2024-07-03 20:21:50.746367'),
(36, 'admin_interface', '0018_theme_list_filter_sticky', '2024-07-03 20:21:50.778018'),
(37, 'admin_interface', '0019_add_form_sticky', '2024-07-03 20:21:50.828306'),
(38, 'admin_interface', '0020_module_selected_colors', '2024-07-03 20:21:50.894157'),
(39, 'admin_interface', '0021_file_extension_validator', '2024-07-03 20:21:50.907872'),
(40, 'admin_interface', '0022_add_logo_max_width_and_height', '2024-07-03 20:21:50.953976'),
(41, 'admin_interface', '0023_theme_foldable_apps', '2024-07-03 20:21:50.988702'),
(42, 'admin_interface', '0024_remove_theme_css', '2024-07-03 20:21:51.020969'),
(43, 'admin_interface', '0025_theme_language_chooser_control', '2024-07-03 20:21:51.054048'),
(44, 'admin_interface', '0026_theme_list_filter_highlight', '2024-07-03 20:21:51.086462'),
(45, 'admin_interface', '0027_theme_list_filter_removal_links', '2024-07-03 20:21:51.114204'),
(46, 'admin_interface', '0028_theme_show_fieldsets_as_tabs_and_more', '2024-07-03 20:21:51.168958'),
(47, 'admin_interface', '0029_theme_css_generic_link_active_color', '2024-07-03 20:21:51.190991'),
(48, 'admin_interface', '0030_theme_collapsible_stacked_inlines_and_more', '2024-07-03 20:21:51.311033'),
(49, 'easyaudit', '0001_initial', '2024-07-03 20:21:51.540850'),
(50, 'easyaudit', '0002_auto_20170125_0759', '2024-07-03 20:21:51.588086'),
(51, 'easyaudit', '0003_auto_20170228_1505', '2024-07-03 20:21:51.654075'),
(52, 'easyaudit', '0004_auto_20170620_1354', '2024-07-03 20:21:51.687345'),
(53, 'easyaudit', '0005_auto_20170713_1155', '2024-07-03 20:21:51.713806'),
(54, 'easyaudit', '0006_auto_20171018_1242', '2024-07-03 20:21:51.999126'),
(55, 'easyaudit', '0007_auto_20180105_0838', '2024-07-03 20:21:52.051452'),
(56, 'easyaudit', '0008_auto_20180220_1908', '2024-07-03 20:21:52.107640'),
(57, 'easyaudit', '0009_auto_20180314_2225', '2024-07-03 20:21:52.312277'),
(58, 'easyaudit', '0010_repr_text', '2024-07-03 20:21:52.394399'),
(59, 'easyaudit', '0011_auto_20181101_1339', '2024-07-03 20:21:52.492123'),
(60, 'easyaudit', '0012_auto_20181018_0012', '2024-07-03 20:21:52.760883'),
(61, 'easyaudit', '0013_auto_20190723_0126', '2024-07-03 20:21:52.871061'),
(62, 'easyaudit', '0014_auto_20200513_0008', '2024-07-03 20:21:52.954654'),
(63, 'easyaudit', '0015_auto_20201019_1217', '2024-07-03 20:21:53.316225'),
(64, 'easyaudit', '0016_alter_crudevent_event_type', '2024-07-03 20:21:53.340008'),
(65, 'easyaudit', '0017_alter_requestevent_datetime', '2024-07-03 20:21:53.407023'),
(66, 'rental_app', '0001_initial', '2024-07-03 20:21:53.685868'),
(67, 'rental_app', '0002_auto_20240703_2320', '2024-07-03 20:21:54.063425'),
(68, 'sessions', '0001_initial', '2024-07-03 20:21:54.123536');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('40zo4i7dju3rjrt1jx5hjvl6owmoz471', '.eJxVjDsOgzAQRO_iOrKMf7Ap03MGa_HuxiQRSBiqKHcPSBRJMc28N_NWCbe1pK3ykkZSV-XU5bcbMD95OgA9cLrPOs_TuoyDPhR90qr7mfh1O92_g4K17OvIWWwm7CgCW-MsshiANoozJJJByKOEPW1sPHdN9mCjCSCBERyozxcPFDiF:1r7yFP:w58OgoSrvJDMkL3-REXXPFG6ZKLnaZSwzENUxeZk6CU', '2023-12-12 13:35:31.511000'),
('50bgedgnb7kyr7j70gd0nnxc0jlj9bxy', '.eJxVjEEOwiAQRe_C2hAoUKYu3XsGMjNMpWpoUtqV8e7apAvd_vfef6mE21rS1mRJU1Zn1anT70bID6k7yHest1nzXNdlIr0r-qBNX-csz8vh_h0UbOVbO8wcYk8UgbrgQxQ2OBprHGMAJ8AwiKBBa4GJTRgAxuigDwI-elHvD-5dN98:1rEAPv:E1n5jtKMaABK7-9X7FOpkZos3OQp2VRUMgmiWW8n-aA', '2023-12-29 15:47:59.211000'),
('6is2tf3w24381oz81vdchewuvmq8xq2u', '.eJxVjDsOgzAQRO_iOrKMf7Ap03MGa_HuxiQRSBiqKHcPSBRJMc28N_NWCbe1pK3ykkZSV-XU5bcbMD95OgA9cLrPOs_TuoyDPhR90qr7mfh1O92_g4K17OvIWWwm7CgCW-MsshiANoozJJJByKOEPW1sPHdN9mCjCSCBERyozxcPFDiF:1r6qmq:GSEJAOuHOYlilOCeaP51zrVWEICafA6nCVeFnc45RTA', '2023-12-09 11:25:24.152000'),
('9pyybkyibvn44cdomsxgn3xxodn22gds', '.eJxVjM0OwiAQhN-FsyG0i_x49O4zkF0WpGogKe3J-O62SQ96mmS-b-YtAq5LCWtPc5hYXMQgTr8dYXymugN-YL03GVtd5onkrsiDdnlrnF7Xw_07KNjLtvYKPBpnElO2kYxTCOxctsaft2A0GiIlmwm8HkYwOtMYCVkRK8cgPl_u4Dh1:1r6q9q:ke1m3a7SWVTArTDiFIpuhhl7KTLhyr6vmFBscUhPsPI', '2023-12-09 10:45:06.450000'),
('br45q83oatzklyas59v8fatpfk3djwt7', '.eJxVjM0OwiAQhN-FsyG0i_x49O4zkF0WpGogKe3J-O62SQ96mmS-b-YtAq5LCWtPc5hYXMQgTr8dYXymugN-YL03GVtd5onkrsiDdnlrnF7Xw_07KNjLtvYKPBpnElO2kYxTCOxctsaft2A0GiIlmwm8HkYwOtMYCVkRK8cgPl_u4Dh1:1rJF8W:c7FCDdbVxT1IQts-g7PIyF9Pil8rb5i7vGS1nM3hFSw', '2024-01-12 15:51:00.651000'),
('c5ta4txeubq7oy8ttqzudocqyv2qwfdy', '.eJxVjEEOwiAQRe_C2hCEQcCl-56BDMwgVUOT0q6Md7dNutDtf-_9t4i4LjWunec4krgKI06_W8L85LYDemC7TzJPbZnHJHdFHrTLYSJ-3Q7376Bir1utlSkaEmUi0GBdRgeXZJFdUeDBsLNUStAbUM4kbwECcfFnVRgpBfH5AuxeOG0:1r5stB:4CEFDkIMA70JZKtp-Sp3plo6iB3poj0hNwfTQzp_FfA', '2023-12-06 19:27:57.076000'),
('c5x0ct6e68q1avzyj8braiq4ryxig9ko', '.eJxVjM0OwiAQhN-FsyG0i_x49O4zkF0WpGogKe3J-O62SQ96mmS-b-YtAq5LCWtPc5hYXMQgTr8dYXymugN-YL03GVtd5onkrsiDdnlrnF7Xw_07KNjLtvYKPBpnElO2kYxTCOxctsaft2A0GiIlmwm8HkYwOtMYCVkRK8cgPl_u4Dh1:1rIoZJ:B3tXYl8810aM9WbOSF80It9oxNWoBl2oCqphY-WbF_o', '2024-01-11 11:28:53.017000'),
('d540l2sv235lj58symhqecmzz41wstdv', '.eJxVjM0OwiAQhN-FsyG0i_x49O4zkF0WpGogKe3J-O62SQ96mmS-b-YtAq5LCWtPc5hYXMQgTr8dYXymugN-YL03GVtd5onkrsiDdnlrnF7Xw_07KNjLtvYKPBpnElO2kYxTCOxctsaft2A0GiIlmwm8HkYwOtMYCVkRK8cgPl_u4Dh1:1r6WgP:ovP0x8boKhTexiJ7aeW7q6gH2w9mkYlaITnm6dH6mM8', '2023-12-08 13:57:25.403000'),
('edlqaurthkbthj7b8seymu8vic49rk7d', 'e30:1r67ju:H9ydZiEwkZ_I1UEB6yjpMiuxbPIaqEb8afjrNnp9adE', '2023-12-07 11:19:22.100000'),
('g44mps7im61z2hfnmbp2bgnzsk89eq89', '.eJxVjMsOwiAQRf-FtSHA8HTp3m8gMEOlaiAp7cr479qkC93ec859sZi2tcZtlCXOxM5MSnb6HXPCR2k7oXtqt86xt3WZM98VftDBr53K83K4fwc1jfqts3YeAlpUZfIhO9BFW9SSfDZCWQpJC8CA3gZ0UnhF4FArgIlMMCTY-wP1fjdZ:1r8fGX:a18h9INPjSpd0QCS3nEXh-iUe5BK0qJH-5toOZ56a5o', '2023-12-14 11:31:33.325000'),
('j49rm4fhbinpjxixi2jy7glrcgo1sd7l', 'e30:1r67hs:KCgwxEhJVMHBjCLTF_oI84DEBvffxOXkKqRkgxf3PJw', '2023-12-07 11:17:16.670000'),
('kn6ofzyigxzzllngy771djo4l4beqd0h', '.eJxVjM0OwiAQhN-FsyG0i_x49O4zkF0WpGogKe3J-O62SQ96mmS-b-YtAq5LCWtPc5hYXMQgTr8dYXymugN-YL03GVtd5onkrsiDdnlrnF7Xw_07KNjLtvYKPBpnElO2kYxTCOxctsaft2A0GiIlmwm8HkYwOtMYCVkRK8cgPl_u4Dh1:1r7thM:2ipD40IefzvfOZI9JS2dTnWaE7rRek4DNpfKuXawoT8', '2023-12-12 08:44:04.772000'),
('kspu5toad5tzdl4qep4u4nk3pljciaed', '.eJxVjM0OwiAQhN-FsyG0i_x49O4zkF0WpGogKe3J-O62SQ96mmS-b-YtAq5LCWtPc5hYXMQgTr8dYXymugN-YL03GVtd5onkrsiDdnlrnF7Xw_07KNjLtvYKPBpnElO2kYxTCOxctsaft2A0GiIlmwm8HkYwOtMYCVkRK8cgPl_u4Dh1:1r8hoz:Ytv6_nOlOq52AWrPfDKqmwRJW1PVLWKbzUfbHQIn7qc', '2023-12-14 14:15:17.532000'),
('n4a8ow73cuk4oacy2f7eh8cofnomn4mo', 'e30:1r67ir:54Uaqsaxa-yNcBQVvRM9sc2oKtVdsRxnGFkDH0Iz7N0', '2023-12-07 11:18:17.519000'),
('nubwuxxt1atx1ty1p21lommzymlznein', '.eJxVjEEOwiAQRe_C2hAYaRlcuu8ZCAyMVA0kpV0Z765NutDtf-_9l_BhW4vfel78nMRFGHH63WKgR647SPdQb01Sq-syR7kr8qBdTi3l5_Vw_w5K6OVbkx0JEQ0DcYSBdY4qB4ionVGWEUiRg9EZo11EMmDRnpGVHYBBsRXvD-C9Ny0:1r7u8U:HtF02MV__jmjftv5xuRguSMmgsPULd_MnA9br2KtGmQ', '2023-12-12 09:12:06.612000'),
('q0ztl3h0sgejf0saznq3wt7bkos44g8u', '.eJxVjEEOwiAQRe_C2hAYaRlcuu8ZCAyMVA0kpV0Z765NutDtf-_9l_BhW4vfel78nMRFGHH63WKgR647SPdQb01Sq-syR7kr8qBdTi3l5_Vw_w5K6OVbkx0JEQ0DcYSBdY4qB4ionVGWEUiRg9EZo11EMmDRnpGVHYBBsRXvD-C9Ny0:1rJEuL:lrl1fsNwqlJ29eyUFKYw2PgvK9Y3tN3DOyduuvMxLTQ', '2024-01-12 15:36:21.566000'),
('r04vrefoh7wcouxouwdb6bo0713hzprk', '.eJxVjEEOwiAQRe_C2hAYaRlcuu8ZCAyMVA0kpV0Z765NutDtf-_9l_BhW4vfel78nMRFGHH63WKgR647SPdQb01Sq-syR7kr8qBdTi3l5_Vw_w5K6OVbkx0JEQ0DcYSBdY4qB4ionVGWEUiRg9EZo11EMmDRnpGVHYBBsRXvD-C9Ny0:1r7J3X:8-lP3XGCk5nbXV6XWUwWYBalnmzF4ne0304sZb91DTs', '2023-12-10 17:36:31.059000'),
('rej6bu69394oggbpns63cgcaqzbly1yk', '.eJxVjM0OwiAQhN-FsyG0i_x49O4zkF0WpGogKe3J-O62SQ96mmS-b-YtAq5LCWtPc5hYXMQgTr8dYXymugN-YL03GVtd5onkrsiDdnlrnF7Xw_07KNjLtvYKPBpnElO2kYxTCOxctsaft2A0GiIlmwm8HkYwOtMYCVkRK8cgPl_u4Dh1:1rJfgQ:NRQhK9P4S57fzsHU0iigCgsAH4XDzZmy28IUcwW2l6A', '2024-01-13 20:11:46.281000'),
('sfe88cq5w53vxfd2q8b2b8l6oq2hs9u1', '.eJxVjM0OwiAQhN-FsyG0i_x49O4zkF0WpGogKe3J-O62SQ96mmS-b-YtAq5LCWtPc5hYXMQgTr8dYXymugN-YL03GVtd5onkrsiDdnlrnF7Xw_07KNjLtvYKPBpnElO2kYxTCOxctsaft2A0GiIlmwm8HkYwOtMYCVkRK8cgPl_u4Dh1:1rJdJb:A6dKVlKSGP3h3NQixpg_MnUPFuAAzKQbd5So06N7C88', '2024-01-13 17:40:03.232000'),
('takjif427726q8uzo3tjn5st35j04op0', '.eJxVjM0OwiAQhN-FsyG0i_x49O4zkF0WpGogKe3J-O62SQ96mmS-b-YtAq5LCWtPc5hYXMQgTr8dYXymugN-YL03GVtd5onkrsiDdnlrnF7Xw_07KNjLtvYKPBpnElO2kYxTCOxctsaft2A0GiIlmwm8HkYwOtMYCVkRK8cgPl_u4Dh1:1r8vLy:CRcooUGzoCHB5_8gu95CBu-giK0aOEmA2bMWmx5B5nY', '2023-12-15 04:42:14.745000'),
('txawnfpb46ks0m5w9ugbnnvcdgdg9loq', '.eJxVjEEOwiAQRe_C2hAoUKYu3XsGMjNMpWpoUtqV8e7apAvd_vfef6mE21rS1mRJU1Zn1anT70bID6k7yHest1nzXNdlIr0r-qBNX-csz8vh_h0UbOVbO8wcYk8UgbrgQxQ2OBprHGMAJ8AwiKBBa4GJTRgAxuigDwI-elHvD-5dN98:1rJF0X:8O5sq92n4LoJitEoFIcQIrXXnOcZCwlJLrMYn7JP4sk', '2024-01-12 15:42:45.211000');

-- --------------------------------------------------------

--
-- Table structure for table `easyaudit_crudevent`
--

CREATE TABLE `easyaudit_crudevent` (
  `id` int(11) NOT NULL,
  `event_type` smallint(6) NOT NULL,
  `object_id` varchar(255) NOT NULL,
  `object_repr` longtext DEFAULT NULL,
  `object_json_repr` longtext DEFAULT NULL,
  `datetime` datetime(6) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `user_pk_as_string` varchar(255) DEFAULT NULL,
  `changed_fields` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `easyaudit_crudevent`
--

INSERT INTO `easyaudit_crudevent` (`id`, `event_type`, `object_id`, `object_repr`, `object_json_repr`, `datetime`, `content_type_id`, `user_id`, `user_pk_as_string`, `changed_fields`) VALUES
(1, 2, '1', 'test@test.com', '[{\"model\": \"accounts.customuser\", \"pk\": 1, \"fields\": {\"password\": \"pbkdf2_sha256$260000$QdFWfHMBB2GR4WV0GDB6pW$GXxWJQohVcFhkbcTVHQfz7mSSXVAnWOQZ03Z7oOoQBc=\", \"last_login\": \"2023-12-28T11:28:52.902Z\", \"is_superuser\": true, \"username\": \"\", \"email\": \"test@test.com\", \"image\": \"\", \"gender\": \"\", \"full_name\": \"\", \"role\": \"Administrator\", \"phone\": \"\", \"is_active\": true, \"is_staff\": true, \"date_joined\": \"2023-11-22T07:23:21.123Z\", \"groups\": [], \"user_permissions\": []}}]', '2023-12-28 11:28:52.988000', 6, 1, '1', '{\"last_login\": [\"2023-12-01 04:42:14.740413\", \"2023-12-28 11:28:52.902123\"]}'),
(2, 2, '4', 'talia@jose.com', '[{\"model\": \"accounts.customuser\", \"pk\": 4, \"fields\": {\"password\": \"pbkdf2_sha256$260000$0y7KMKmg0cK8e4au1OlXxj$0/8Df57xt31M8et9J5+68w8f/Kb//xvU/y41Oqb1aqI=\", \"last_login\": \"2023-12-28T11:30:53.838Z\", \"is_superuser\": false, \"username\": \"Talia\", \"email\": \"talia@jose.com\", \"image\": \"Users/IMG-20231206-WA0016.jpg\", \"gender\": \"Female\", \"full_name\": \"Talia Ann Jose\", \"role\": \"Landlord\", \"phone\": \"0758 051111\", \"is_active\": true, \"is_staff\": false, \"date_joined\": \"2023-11-22T07:28:59.160Z\", \"groups\": [], \"user_permissions\": []}}]', '2023-12-28 11:30:53.868000', 6, 4, '4', '{\"last_login\": [\"2023-12-15 15:30:32.119107\", \"2023-12-28 11:30:53.838811\"]}'),
(3, 1, '25', 'Z-02', '[{\"model\": \"rental_app.rooms\", \"pk\": 25, \"fields\": {\"room_number\": \"Z-02\", \"apartment\": 1, \"tenant\": null, \"size\": \"200sq m\", \"room_type\": \"Go Down\", \"booked\": false, \"rent\": 8500, \"rate\": \"Per Month\", \"image\": \"Rooms/room2_sX8z8n4.jpeg\", \"date_created\": \"2023-12-28T12:51:38.859Z\", \"date_updated\": \"2023-12-28T12:51:38.859Z\"}}]', '2023-12-28 12:51:38.867000', 11, 4, '4', NULL),
(4, 1, '26', 'M-23', '[{\"model\": \"rental_app.rooms\", \"pk\": 26, \"fields\": {\"room_number\": \"M-23\", \"apartment\": 3, \"tenant\": null, \"size\": \"340sq feet\", \"room_type\": \"Studio\", \"booked\": false, \"rent\": 500, \"rate\": \"Per Day\", \"image\": \"Rooms/room4_dAzFToR.jpeg\", \"date_created\": \"2023-12-28T12:53:13.408Z\", \"date_updated\": \"2023-12-28T12:53:13.408Z\"}}]', '2023-12-28 12:53:13.415000', 11, 4, '4', NULL),
(5, 1, '29', 'Z-04', '[{\"model\": \"rental_app.rooms\", \"pk\": 29, \"fields\": {\"room_number\": \"Z-04\", \"apartment\": 1, \"tenant\": null, \"size\": \"120sq m\", \"room_type\": \"Shared room\", \"booked\": false, \"rent\": 5500, \"rate\": \"Per Month\", \"image\": \"Rooms/room3_Lor2z7h.jpeg\", \"date_created\": \"2023-12-28T13:30:06.647Z\", \"date_updated\": \"2023-12-28T13:30:06.647Z\"}}]', '2023-12-28 13:30:06.664000', 11, 4, '4', NULL),
(6, 2, '4', 'talia@jose.com', '[{\"model\": \"accounts.customuser\", \"pk\": 4, \"fields\": {\"password\": \"pbkdf2_sha256$260000$0y7KMKmg0cK8e4au1OlXxj$0/8Df57xt31M8et9J5+68w8f/Kb//xvU/y41Oqb1aqI=\", \"last_login\": \"2023-12-29T15:18:29.383Z\", \"is_superuser\": false, \"username\": \"Talia\", \"email\": \"talia@jose.com\", \"image\": \"Users/IMG-20231206-WA0016.jpg\", \"gender\": \"Female\", \"full_name\": \"Talia Ann Jose\", \"role\": \"Landlord\", \"phone\": \"0758 051111\", \"is_active\": true, \"is_staff\": false, \"date_joined\": \"2023-11-22T07:28:59.160Z\", \"groups\": [], \"user_permissions\": []}}]', '2023-12-29 15:18:29.435000', 6, 4, '4', '{\"last_login\": [\"2023-12-28 11:30:53.838811\", \"2023-12-29 15:18:29.383440\"]}'),
(7, 2, '4', 'talia@jose.com', '[{\"model\": \"accounts.customuser\", \"pk\": 4, \"fields\": {\"password\": \"pbkdf2_sha256$260000$0y7KMKmg0cK8e4au1OlXxj$0/8Df57xt31M8et9J5+68w8f/Kb//xvU/y41Oqb1aqI=\", \"last_login\": \"2023-12-29T15:36:21.538Z\", \"is_superuser\": false, \"username\": \"Talia\", \"email\": \"talia@jose.com\", \"image\": \"Users/IMG-20231206-WA0016.jpg\", \"gender\": \"Female\", \"full_name\": \"Talia Ann Jose\", \"role\": \"Landlord\", \"phone\": \"0758 051111\", \"is_active\": true, \"is_staff\": false, \"date_joined\": \"2023-11-22T07:28:59.160Z\", \"groups\": [], \"user_permissions\": []}}]', '2023-12-29 15:36:21.552000', 6, 4, '4', '{\"last_login\": [\"2023-12-29 15:18:29.383440\", \"2023-12-29 15:36:21.538329\"]}'),
(8, 2, '6', 'Z-13', '[{\"model\": \"rental_app.rooms\", \"pk\": 6, \"fields\": {\"room_number\": \"Z-13\", \"apartment\": 1, \"tenant\": null, \"size\": \"120 sq cm\", \"room_type\": \"Bedsitter\", \"booked\": false, \"rent\": 4500, \"rate\": \"Per Month\", \"image\": \"Rooms/room6.jpeg\", \"date_created\": \"2023-11-22T08:30:15.342Z\", \"date_updated\": \"2023-11-24T18:07:23.376Z\"}}]', '2023-12-29 15:42:00.795000', 11, 4, '4', '{\"rent\": [\"5000\", \"4500\"]}'),
(9, 2, '2', 'manu@mail.com', '[{\"model\": \"accounts.customuser\", \"pk\": 2, \"fields\": {\"password\": \"pbkdf2_sha256$260000$pUmJeWWQFd2LE9RdflVAC8$14DnaAgDCoHl4I8wegGi52Tb13gMt4lseUUQfkOMSBg=\", \"last_login\": \"2023-12-29T15:42:45.111Z\", \"is_superuser\": false, \"username\": \"Manuel\", \"email\": \"manu@mail.com\", \"image\": \"Users/person_2.jpg\", \"gender\": \"Male\", \"full_name\": \"Emanuel Kongo\", \"role\": \"Landlord\", \"phone\": \"0712 457898\", \"is_active\": true, \"is_staff\": false, \"date_joined\": \"2023-11-22T07:25:46.807Z\", \"groups\": [], \"user_permissions\": []}}]', '2023-12-29 15:42:45.124000', 6, 2, '2', '{\"last_login\": [\"2023-12-15 15:47:59.211655\", \"2023-12-29 15:42:45.111689\"]}'),
(10, 1, '30', 'W-05', '[{\"model\": \"rental_app.rooms\", \"pk\": 30, \"fields\": {\"room_number\": \"W-05\", \"apartment\": 6, \"tenant\": null, \"size\": \"244 sq fr\", \"room_type\": \"One-Bedroom\", \"booked\": false, \"rent\": 6000, \"rate\": \"Per Month\", \"image\": \"Rooms/20231203_213544.jpg\", \"date_created\": \"2023-12-29T15:44:32.030Z\", \"date_updated\": \"2023-12-29T15:44:32.030Z\"}}]', '2023-12-29 15:44:32.100000', 11, 2, '2', NULL),
(11, 2, '1', 'test@test.com', '[{\"model\": \"accounts.customuser\", \"pk\": 1, \"fields\": {\"password\": \"pbkdf2_sha256$260000$QdFWfHMBB2GR4WV0GDB6pW$GXxWJQohVcFhkbcTVHQfz7mSSXVAnWOQZ03Z7oOoQBc=\", \"last_login\": \"2023-12-29T15:51:00.625Z\", \"is_superuser\": true, \"username\": \"\", \"email\": \"test@test.com\", \"image\": \"\", \"gender\": \"\", \"full_name\": \"\", \"role\": \"Administrator\", \"phone\": \"\", \"is_active\": true, \"is_staff\": true, \"date_joined\": \"2023-11-22T07:23:21.123Z\", \"groups\": [], \"user_permissions\": []}}]', '2023-12-29 15:51:00.632000', 6, 1, '1', '{\"last_login\": [\"2023-12-28 11:28:52.902123\", \"2023-12-29 15:51:00.625412\"]}'),
(12, 2, '1', 'Zion', '[{\"model\": \"rental_app.apartments\", \"pk\": 1, \"fields\": {\"apartment_name\": \"Zion\", \"landlord\": 2, \"description\": \"A very good and clean apartment\", \"facilities\": \"bed\\r\\nchair\\r\\nmattress\\r\\ntable\", \"image\": \"Appartments/main.jpg\", \"paid_for\": \"wifi, electricity\", \"location\": \"Taita Taveta University, Gate C\", \"date_created\": \"2023-11-22T07:56:46.719Z\", \"date_updated\": \"2023-11-22T07:56:46.719Z\"}}]', '2023-12-29 20:43:27.470000', 10, 4, '4', '{\"paid_for\": [\"wifi\", \"wifi, electricity\"]}'),
(13, 2, '1', 'test@test.com', '[{\"model\": \"accounts.customuser\", \"pk\": 1, \"fields\": {\"password\": \"pbkdf2_sha256$260000$QdFWfHMBB2GR4WV0GDB6pW$GXxWJQohVcFhkbcTVHQfz7mSSXVAnWOQZ03Z7oOoQBc=\", \"last_login\": \"2023-12-30T17:35:30.304Z\", \"is_superuser\": true, \"username\": \"\", \"email\": \"test@test.com\", \"image\": \"\", \"gender\": \"\", \"full_name\": \"\", \"role\": \"Administrator\", \"phone\": \"\", \"is_active\": true, \"is_staff\": true, \"date_joined\": \"2023-11-22T07:23:21.123Z\", \"groups\": [], \"user_permissions\": []}}]', '2023-12-30 17:35:30.383000', 6, 1, '1', '{\"last_login\": [\"2023-12-29 15:51:00.625412\", \"2023-12-30 17:35:30.304274\"]}'),
(14, 2, '1', 'test@test.com', '[{\"model\": \"accounts.customuser\", \"pk\": 1, \"fields\": {\"password\": \"pbkdf2_sha256$260000$QdFWfHMBB2GR4WV0GDB6pW$GXxWJQohVcFhkbcTVHQfz7mSSXVAnWOQZ03Z7oOoQBc=\", \"last_login\": \"2023-12-30T17:40:03.197Z\", \"is_superuser\": true, \"username\": \"\", \"email\": \"test@test.com\", \"image\": \"\", \"gender\": \"\", \"full_name\": \"\", \"role\": \"Administrator\", \"phone\": \"\", \"is_active\": true, \"is_staff\": true, \"date_joined\": \"2023-11-22T07:23:21.123Z\", \"groups\": [], \"user_permissions\": []}}]', '2023-12-30 17:40:03.222000', 6, 1, '1', '{\"last_login\": [\"2023-12-30 17:35:30.304274\", \"2023-12-30 17:40:03.197289\"]}'),
(15, 1, '1', 'Django', '[{\"model\": \"admin_interface.theme\", \"pk\": 1, \"fields\": {\"name\": \"Django\", \"active\": true, \"title\": \"Django administration\", \"title_color\": \"#F5DD5D\", \"title_visible\": true, \"logo\": \"\", \"logo_color\": \"#FFFFFF\", \"logo_max_width\": 400, \"logo_max_height\": 100, \"logo_visible\": true, \"favicon\": \"\", \"env_name\": \"\", \"env_color\": \"#E74C3C\", \"env_visible_in_header\": true, \"env_visible_in_favicon\": true, \"language_chooser_active\": true, \"language_chooser_control\": \"default-select\", \"language_chooser_display\": \"code\", \"css_header_background_color\": \"#0C4B33\", \"css_header_text_color\": \"#44B78B\", \"css_header_link_color\": \"#FFFFFF\", \"css_header_link_hover_color\": \"#C9F0DD\", \"css_module_background_color\": \"#44B78B\", \"css_module_background_selected_color\": \"#FFFFCC\", \"css_module_text_color\": \"#FFFFFF\", \"css_module_link_color\": \"#FFFFFF\", \"css_module_link_selected_color\": \"#FFFFFF\", \"css_module_link_hover_color\": \"#C9F0DD\", \"css_module_rounded_corners\": true, \"css_generic_link_color\": \"#0C3C26\", \"css_generic_link_hover_color\": \"#156641\", \"css_generic_link_active_color\": \"#29B864\", \"css_save_button_background_color\": \"#0C4B33\", \"css_save_button_background_hover_color\": \"#0C3C26\", \"css_save_button_text_color\": \"#FFFFFF\", \"css_delete_button_background_color\": \"#BA2121\", \"css_delete_button_background_hover_color\": \"#A41515\", \"css_delete_button_text_color\": \"#FFFFFF\", \"related_modal_active\": true, \"related_modal_background_color\": \"#000000\", \"related_modal_background_opacity\": \"0.3\", \"related_modal_rounded_corners\": true, \"related_modal_close_button_visible\": true, \"list_filter_highlight\": true, \"list_filter_dropdown\": true, \"list_filter_sticky\": true, \"list_filter_removal_links\": false, \"foldable_apps\": true, \"show_fieldsets_as_tabs\": false, \"show_inlines_as_tabs\": false, \"collapsible_stacked_inlines\": false, \"collapsible_stacked_inlines_collapsed\": true, \"collapsible_tabular_inlines\": false, \"collapsible_tabular_inlines_collapsed\": true, \"recent_actions_visible\": true, \"form_submit_sticky\": false, \"form_pagination_sticky\": false}}]', '2023-12-30 20:07:57.787000', 18, 1, '1', NULL),
(16, 2, '1', 'test@test.com', '[{\"model\": \"accounts.customuser\", \"pk\": 1, \"fields\": {\"password\": \"pbkdf2_sha256$260000$QdFWfHMBB2GR4WV0GDB6pW$GXxWJQohVcFhkbcTVHQfz7mSSXVAnWOQZ03Z7oOoQBc=\", \"last_login\": \"2023-12-30T20:11:46.259Z\", \"is_superuser\": true, \"username\": \"\", \"email\": \"test@test.com\", \"image\": \"\", \"gender\": \"\", \"full_name\": \"\", \"role\": \"Administrator\", \"phone\": \"\", \"is_active\": true, \"is_staff\": true, \"date_joined\": \"2023-11-22T07:23:21.123Z\", \"groups\": [], \"user_permissions\": []}}]', '2023-12-30 20:11:46.271000', 6, 1, '1', '{\"last_login\": [\"2023-12-30 17:40:03.197289\", \"2023-12-30 20:11:46.259307\"]}'),
(17, 2, '1', 'RBMS', '[{\"model\": \"admin_interface.theme\", \"pk\": 1, \"fields\": {\"name\": \"RBMS\", \"active\": false, \"title\": \"Django administration\", \"title_color\": \"#F5DD5D\", \"title_visible\": true, \"logo\": \"\", \"logo_color\": \"#FFFFFF\", \"logo_max_width\": 400, \"logo_max_height\": 100, \"logo_visible\": true, \"favicon\": \"\", \"env_name\": \"\", \"env_color\": \"#05E786\", \"env_visible_in_header\": true, \"env_visible_in_favicon\": true, \"language_chooser_active\": true, \"language_chooser_control\": \"default-select\", \"language_chooser_display\": \"code\", \"css_header_background_color\": \"#0C4B33\", \"css_header_text_color\": \"#44B78B\", \"css_header_link_color\": \"#FFFFFF\", \"css_header_link_hover_color\": \"#C9F0DD\", \"css_module_background_color\": \"#44B78B\", \"css_module_background_selected_color\": \"#FFFFCC\", \"css_module_text_color\": \"#FFFFFF\", \"css_module_link_color\": \"#FFFFFF\", \"css_module_link_selected_color\": \"#FFFFFF\", \"css_module_link_hover_color\": \"#C9F0DD\", \"css_module_rounded_corners\": true, \"css_generic_link_color\": \"#0C3C26\", \"css_generic_link_hover_color\": \"#156641\", \"css_generic_link_active_color\": \"#29B864\", \"css_save_button_background_color\": \"#0C4B33\", \"css_save_button_background_hover_color\": \"#0C3C26\", \"css_save_button_text_color\": \"#FFFFFF\", \"css_delete_button_background_color\": \"#BA2121\", \"css_delete_button_background_hover_color\": \"#A41515\", \"css_delete_button_text_color\": \"#FFFFFF\", \"related_modal_active\": true, \"related_modal_background_color\": \"#000000\", \"related_modal_background_opacity\": \"0.3\", \"related_modal_rounded_corners\": true, \"related_modal_close_button_visible\": true, \"list_filter_highlight\": true, \"list_filter_dropdown\": true, \"list_filter_sticky\": true, \"list_filter_removal_links\": false, \"foldable_apps\": true, \"show_fieldsets_as_tabs\": false, \"show_inlines_as_tabs\": false, \"collapsible_stacked_inlines\": false, \"collapsible_stacked_inlines_collapsed\": true, \"collapsible_tabular_inlines\": false, \"collapsible_tabular_inlines_collapsed\": true, \"recent_actions_visible\": true, \"form_submit_sticky\": false, \"form_pagination_sticky\": true}}]', '2023-12-30 20:14:05.944000', 18, 1, '1', '{\"name\": [\"Django\", \"RBMS\"], \"env_color\": [\"#E74C3C\", \"#05E786\"], \"form_pagination_sticky\": [\"False\", \"True\"]}'),
(18, 2, '1', 'RBMS', '[{\"model\": \"admin_interface.theme\", \"pk\": 1, \"fields\": {\"name\": \"RBMS\", \"active\": true, \"title\": \"Django administration\", \"title_color\": \"#F5DD5D\", \"title_visible\": true, \"logo\": \"\", \"logo_color\": \"#FFFFFF\", \"logo_max_width\": 400, \"logo_max_height\": 100, \"logo_visible\": true, \"favicon\": \"\", \"env_name\": \"\", \"env_color\": \"#05E786\", \"env_visible_in_header\": true, \"env_visible_in_favicon\": true, \"language_chooser_active\": true, \"language_chooser_control\": \"default-select\", \"language_chooser_display\": \"code\", \"css_header_background_color\": \"#0C4B33\", \"css_header_text_color\": \"#44B78B\", \"css_header_link_color\": \"#FFFFFF\", \"css_header_link_hover_color\": \"#C9F0DD\", \"css_module_background_color\": \"#44B78B\", \"css_module_background_selected_color\": \"#FFFFCC\", \"css_module_text_color\": \"#FFFFFF\", \"css_module_link_color\": \"#FFFFFF\", \"css_module_link_selected_color\": \"#FFFFFF\", \"css_module_link_hover_color\": \"#C9F0DD\", \"css_module_rounded_corners\": true, \"css_generic_link_color\": \"#0C3C26\", \"css_generic_link_hover_color\": \"#156641\", \"css_generic_link_active_color\": \"#29B864\", \"css_save_button_background_color\": \"#0C4B33\", \"css_save_button_background_hover_color\": \"#0C3C26\", \"css_save_button_text_color\": \"#FFFFFF\", \"css_delete_button_background_color\": \"#BA2121\", \"css_delete_button_background_hover_color\": \"#A41515\", \"css_delete_button_text_color\": \"#FFFFFF\", \"related_modal_active\": true, \"related_modal_background_color\": \"#000000\", \"related_modal_background_opacity\": \"0.3\", \"related_modal_rounded_corners\": true, \"related_modal_close_button_visible\": true, \"list_filter_highlight\": true, \"list_filter_dropdown\": true, \"list_filter_sticky\": true, \"list_filter_removal_links\": false, \"foldable_apps\": true, \"show_fieldsets_as_tabs\": false, \"show_inlines_as_tabs\": false, \"collapsible_stacked_inlines\": false, \"collapsible_stacked_inlines_collapsed\": true, \"collapsible_tabular_inlines\": false, \"collapsible_tabular_inlines_collapsed\": true, \"recent_actions_visible\": true, \"form_submit_sticky\": false, \"form_pagination_sticky\": true}}]', '2023-12-30 20:15:26.781000', 18, 1, '1', '{\"active\": [\"False\", \"True\"]}'),
(19, 2, '3', 'Foundation', '[{\"model\": \"admin_interface.theme\", \"pk\": 3, \"fields\": {\"name\": \"Foundation\", \"active\": true, \"title\": \"Django administration\", \"title_color\": \"#DDDDDD\", \"title_visible\": false, \"logo\": \"\", \"logo_color\": \"#CCCCCC\", \"logo_max_width\": 400, \"logo_max_height\": 100, \"logo_visible\": true, \"favicon\": \"\", \"env_name\": \"\", \"env_color\": \"#E74C3C\", \"env_visible_in_header\": true, \"env_visible_in_favicon\": true, \"language_chooser_active\": true, \"language_chooser_control\": \"default-select\", \"language_chooser_display\": \"code\", \"css_header_background_color\": \"#2C3840\", \"css_header_text_color\": \"#FFFFFF\", \"css_header_link_color\": \"#FFFFFF\", \"css_header_link_hover_color\": \"#DDDDDD\", \"css_module_background_color\": \"#074E68\", \"css_module_background_selected_color\": \"#FFFFCC\", \"css_module_text_color\": \"#FFFFFF\", \"css_module_link_color\": \"#FFFFFF\", \"css_module_link_selected_color\": \"#FFFFFF\", \"css_module_link_hover_color\": \"#DDDDDD\", \"css_module_rounded_corners\": true, \"css_generic_link_color\": \"#000000\", \"css_generic_link_hover_color\": \"#074E68\", \"css_generic_link_active_color\": \"#29B864\", \"css_save_button_background_color\": \"#2199E8\", \"css_save_button_background_hover_color\": \"#1585CF\", \"css_save_button_text_color\": \"#FFFFFF\", \"css_delete_button_background_color\": \"#CC4B37\", \"css_delete_button_background_hover_color\": \"#BF4634\", \"css_delete_button_text_color\": \"#FFFFFF\", \"related_modal_active\": true, \"related_modal_background_color\": \"#000000\", \"related_modal_background_opacity\": \"0.2\", \"related_modal_rounded_corners\": true, \"related_modal_close_button_visible\": true, \"list_filter_highlight\": true, \"list_filter_dropdown\": false, \"list_filter_sticky\": true, \"list_filter_removal_links\": false, \"foldable_apps\": true, \"show_fieldsets_as_tabs\": false, \"show_inlines_as_tabs\": false, \"collapsible_stacked_inlines\": false, \"collapsible_stacked_inlines_collapsed\": true, \"collapsible_tabular_inlines\": false, \"collapsible_tabular_inlines_collapsed\": true, \"recent_actions_visible\": true, \"form_submit_sticky\": false, \"form_pagination_sticky\": false}}]', '2023-12-30 20:15:42.055000', 18, 1, '1', '{\"active\": [\"False\", \"True\"]}'),
(20, 2, '1', 'RBMS', '[{\"model\": \"admin_interface.theme\", \"pk\": 1, \"fields\": {\"name\": \"RBMS\", \"active\": false, \"title\": \"Django administration\", \"title_color\": \"#F5DD5D\", \"title_visible\": true, \"logo\": \"\", \"logo_color\": \"#FFFFFF\", \"logo_max_width\": 400, \"logo_max_height\": 100, \"logo_visible\": true, \"favicon\": \"\", \"env_name\": \"\", \"env_color\": \"#05E786\", \"env_visible_in_header\": true, \"env_visible_in_favicon\": true, \"language_chooser_active\": true, \"language_chooser_control\": \"default-select\", \"language_chooser_display\": \"code\", \"css_header_background_color\": \"#0C4B33\", \"css_header_text_color\": \"#44B78B\", \"css_header_link_color\": \"#FFFFFF\", \"css_header_link_hover_color\": \"#C9F0DD\", \"css_module_background_color\": \"#44B78B\", \"css_module_background_selected_color\": \"#FFFFCC\", \"css_module_text_color\": \"#FFFFFF\", \"css_module_link_color\": \"#FFFFFF\", \"css_module_link_selected_color\": \"#FFFFFF\", \"css_module_link_hover_color\": \"#C9F0DD\", \"css_module_rounded_corners\": true, \"css_generic_link_color\": \"#0C3C26\", \"css_generic_link_hover_color\": \"#156641\", \"css_generic_link_active_color\": \"#29B864\", \"css_save_button_background_color\": \"#0C4B33\", \"css_save_button_background_hover_color\": \"#0C3C26\", \"css_save_button_text_color\": \"#FFFFFF\", \"css_delete_button_background_color\": \"#BA2121\", \"css_delete_button_background_hover_color\": \"#A41515\", \"css_delete_button_text_color\": \"#FFFFFF\", \"related_modal_active\": true, \"related_modal_background_color\": \"#000000\", \"related_modal_background_opacity\": \"0.3\", \"related_modal_rounded_corners\": true, \"related_modal_close_button_visible\": true, \"list_filter_highlight\": true, \"list_filter_dropdown\": true, \"list_filter_sticky\": true, \"list_filter_removal_links\": false, \"foldable_apps\": true, \"show_fieldsets_as_tabs\": false, \"show_inlines_as_tabs\": false, \"collapsible_stacked_inlines\": false, \"collapsible_stacked_inlines_collapsed\": true, \"collapsible_tabular_inlines\": false, \"collapsible_tabular_inlines_collapsed\": true, \"recent_actions_visible\": true, \"form_submit_sticky\": false, \"form_pagination_sticky\": true}}]', '2023-12-30 20:15:42.077000', 18, 1, '1', 'null'),
(21, 2, '3', 'Foundation', '[{\"model\": \"admin_interface.theme\", \"pk\": 3, \"fields\": {\"name\": \"Foundation\", \"active\": false, \"title\": \"Django administration\", \"title_color\": \"#DDDDDD\", \"title_visible\": false, \"logo\": \"\", \"logo_color\": \"#CCCCCC\", \"logo_max_width\": 400, \"logo_max_height\": 100, \"logo_visible\": true, \"favicon\": \"\", \"env_name\": \"\", \"env_color\": \"#E74C3C\", \"env_visible_in_header\": true, \"env_visible_in_favicon\": true, \"language_chooser_active\": true, \"language_chooser_control\": \"default-select\", \"language_chooser_display\": \"code\", \"css_header_background_color\": \"#2C3840\", \"css_header_text_color\": \"#FFFFFF\", \"css_header_link_color\": \"#FFFFFF\", \"css_header_link_hover_color\": \"#DDDDDD\", \"css_module_background_color\": \"#074E68\", \"css_module_background_selected_color\": \"#FFFFCC\", \"css_module_text_color\": \"#FFFFFF\", \"css_module_link_color\": \"#FFFFFF\", \"css_module_link_selected_color\": \"#FFFFFF\", \"css_module_link_hover_color\": \"#DDDDDD\", \"css_module_rounded_corners\": true, \"css_generic_link_color\": \"#000000\", \"css_generic_link_hover_color\": \"#074E68\", \"css_generic_link_active_color\": \"#29B864\", \"css_save_button_background_color\": \"#2199E8\", \"css_save_button_background_hover_color\": \"#1585CF\", \"css_save_button_text_color\": \"#FFFFFF\", \"css_delete_button_background_color\": \"#CC4B37\", \"css_delete_button_background_hover_color\": \"#BF4634\", \"css_delete_button_text_color\": \"#FFFFFF\", \"related_modal_active\": true, \"related_modal_background_color\": \"#000000\", \"related_modal_background_opacity\": \"0.2\", \"related_modal_rounded_corners\": true, \"related_modal_close_button_visible\": true, \"list_filter_highlight\": true, \"list_filter_dropdown\": false, \"list_filter_sticky\": true, \"list_filter_removal_links\": false, \"foldable_apps\": true, \"show_fieldsets_as_tabs\": false, \"show_inlines_as_tabs\": false, \"collapsible_stacked_inlines\": false, \"collapsible_stacked_inlines_collapsed\": true, \"collapsible_tabular_inlines\": false, \"collapsible_tabular_inlines_collapsed\": true, \"recent_actions_visible\": true, \"form_submit_sticky\": false, \"form_pagination_sticky\": false}}]', '2023-12-30 20:15:56.079000', 18, 1, '1', '{\"active\": [\"True\", \"False\"]}'),
(22, 2, '1', 'RBMS', '[{\"model\": \"admin_interface.theme\", \"pk\": 1, \"fields\": {\"name\": \"RBMS\", \"active\": true, \"title\": \"Django administration\", \"title_color\": \"#F5DD5D\", \"title_visible\": true, \"logo\": \"\", \"logo_color\": \"#FFFFFF\", \"logo_max_width\": 400, \"logo_max_height\": 100, \"logo_visible\": true, \"favicon\": \"\", \"env_name\": \"\", \"env_color\": \"#05E786\", \"env_visible_in_header\": true, \"env_visible_in_favicon\": true, \"language_chooser_active\": true, \"language_chooser_control\": \"default-select\", \"language_chooser_display\": \"code\", \"css_header_background_color\": \"#0C4B33\", \"css_header_text_color\": \"#44B78B\", \"css_header_link_color\": \"#FFFFFF\", \"css_header_link_hover_color\": \"#C9F0DD\", \"css_module_background_color\": \"#44B78B\", \"css_module_background_selected_color\": \"#FFFFCC\", \"css_module_text_color\": \"#FFFFFF\", \"css_module_link_color\": \"#FFFFFF\", \"css_module_link_selected_color\": \"#FFFFFF\", \"css_module_link_hover_color\": \"#C9F0DD\", \"css_module_rounded_corners\": true, \"css_generic_link_color\": \"#0C3C26\", \"css_generic_link_hover_color\": \"#156641\", \"css_generic_link_active_color\": \"#29B864\", \"css_save_button_background_color\": \"#0C4B33\", \"css_save_button_background_hover_color\": \"#0C3C26\", \"css_save_button_text_color\": \"#FFFFFF\", \"css_delete_button_background_color\": \"#BA2121\", \"css_delete_button_background_hover_color\": \"#A41515\", \"css_delete_button_text_color\": \"#FFFFFF\", \"related_modal_active\": true, \"related_modal_background_color\": \"#000000\", \"related_modal_background_opacity\": \"0.3\", \"related_modal_rounded_corners\": true, \"related_modal_close_button_visible\": true, \"list_filter_highlight\": true, \"list_filter_dropdown\": true, \"list_filter_sticky\": true, \"list_filter_removal_links\": false, \"foldable_apps\": true, \"show_fieldsets_as_tabs\": false, \"show_inlines_as_tabs\": false, \"collapsible_stacked_inlines\": false, \"collapsible_stacked_inlines_collapsed\": true, \"collapsible_tabular_inlines\": false, \"collapsible_tabular_inlines_collapsed\": true, \"recent_actions_visible\": true, \"form_submit_sticky\": false, \"form_pagination_sticky\": true}}]', '2023-12-30 20:15:56.097000', 18, 1, '1', '{\"active\": [\"False\", \"True\"]}'),
(23, 2, '2', 'Bootstrap', '[{\"model\": \"admin_interface.theme\", \"pk\": 2, \"fields\": {\"name\": \"Bootstrap\", \"active\": true, \"title\": \"Django administration\", \"title_color\": \"#503873\", \"title_visible\": false, \"logo\": \"\", \"logo_color\": \"#503873\", \"logo_max_width\": 400, \"logo_max_height\": 100, \"logo_visible\": true, \"favicon\": \"\", \"env_name\": \"\", \"env_color\": \"#E74C3C\", \"env_visible_in_header\": true, \"env_visible_in_favicon\": true, \"language_chooser_active\": true, \"language_chooser_control\": \"default-select\", \"language_chooser_display\": \"code\", \"css_header_background_color\": \"#FFFFFF\", \"css_header_text_color\": \"#463265\", \"css_header_link_color\": \"#463265\", \"css_header_link_hover_color\": \"#7351A6\", \"css_module_background_color\": \"#7351A6\", \"css_module_background_selected_color\": \"#FFFFCC\", \"css_module_text_color\": \"#FFFFFF\", \"css_module_link_color\": \"#CDBFE3\", \"css_module_link_selected_color\": \"#FFFFFF\", \"css_module_link_hover_color\": \"#FFFFFF\", \"css_module_rounded_corners\": true, \"css_generic_link_color\": \"#463265\", \"css_generic_link_hover_color\": \"#7351A6\", \"css_generic_link_active_color\": \"#29B864\", \"css_save_button_background_color\": \"#5CB85C\", \"css_save_button_background_hover_color\": \"#449D44\", \"css_save_button_text_color\": \"#FFFFFF\", \"css_delete_button_background_color\": \"#D9534F\", \"css_delete_button_background_hover_color\": \"#C9302C\", \"css_delete_button_text_color\": \"#FFFFFF\", \"related_modal_active\": true, \"related_modal_background_color\": \"#503873\", \"related_modal_background_opacity\": \"0.2\", \"related_modal_rounded_corners\": true, \"related_modal_close_button_visible\": true, \"list_filter_highlight\": true, \"list_filter_dropdown\": false, \"list_filter_sticky\": true, \"list_filter_removal_links\": false, \"foldable_apps\": true, \"show_fieldsets_as_tabs\": false, \"show_inlines_as_tabs\": false, \"collapsible_stacked_inlines\": false, \"collapsible_stacked_inlines_collapsed\": true, \"collapsible_tabular_inlines\": false, \"collapsible_tabular_inlines_collapsed\": true, \"recent_actions_visible\": true, \"form_submit_sticky\": false, \"form_pagination_sticky\": false}}]', '2023-12-30 20:15:56.120000', 18, 1, '1', '{\"active\": [\"False\", \"True\"]}'),
(24, 2, '4', 'USWDS', '[{\"model\": \"admin_interface.theme\", \"pk\": 4, \"fields\": {\"name\": \"USWDS\", \"active\": true, \"title\": \"Django administration\", \"title_color\": \"#FFFFFF\", \"title_visible\": false, \"logo\": \"\", \"logo_color\": \"#FFFFFF\", \"logo_max_width\": 400, \"logo_max_height\": 100, \"logo_visible\": true, \"favicon\": \"\", \"env_name\": \"\", \"env_color\": \"#E74C3C\", \"env_visible_in_header\": true, \"env_visible_in_favicon\": true, \"language_chooser_active\": true, \"language_chooser_control\": \"default-select\", \"language_chooser_display\": \"code\", \"css_header_background_color\": \"#112E51\", \"css_header_text_color\": \"#FFFFFF\", \"css_header_link_color\": \"#FFFFFF\", \"css_header_link_hover_color\": \"#E1F3F8\", \"css_module_background_color\": \"#205493\", \"css_module_background_selected_color\": \"#FFFFCC\", \"css_module_text_color\": \"#FFFFFF\", \"css_module_link_color\": \"#FFFFFF\", \"css_module_link_selected_color\": \"#FFFFFF\", \"css_module_link_hover_color\": \"#E1F3F8\", \"css_module_rounded_corners\": true, \"css_generic_link_color\": \"#205493\", \"css_generic_link_hover_color\": \"#0071BC\", \"css_generic_link_active_color\": \"#29B864\", \"css_save_button_background_color\": \"#205493\", \"css_save_button_background_hover_color\": \"#112E51\", \"css_save_button_text_color\": \"#FFFFFF\", \"css_delete_button_background_color\": \"#CD2026\", \"css_delete_button_background_hover_color\": \"#981B1E\", \"css_delete_button_text_color\": \"#FFFFFF\", \"related_modal_active\": true, \"related_modal_background_color\": \"#000000\", \"related_modal_background_opacity\": \"0.8\", \"related_modal_rounded_corners\": true, \"related_modal_close_button_visible\": true, \"list_filter_highlight\": true, \"list_filter_dropdown\": false, \"list_filter_sticky\": true, \"list_filter_removal_links\": false, \"foldable_apps\": true, \"show_fieldsets_as_tabs\": false, \"show_inlines_as_tabs\": false, \"collapsible_stacked_inlines\": false, \"collapsible_stacked_inlines_collapsed\": true, \"collapsible_tabular_inlines\": false, \"collapsible_tabular_inlines_collapsed\": true, \"recent_actions_visible\": true, \"form_submit_sticky\": false, \"form_pagination_sticky\": false}}]', '2023-12-30 20:16:12.077000', 18, 1, '1', '{\"active\": [\"False\", \"True\"]}'),
(25, 2, '2', 'Bootstrap', '[{\"model\": \"admin_interface.theme\", \"pk\": 2, \"fields\": {\"name\": \"Bootstrap\", \"active\": false, \"title\": \"Django administration\", \"title_color\": \"#503873\", \"title_visible\": false, \"logo\": \"\", \"logo_color\": \"#503873\", \"logo_max_width\": 400, \"logo_max_height\": 100, \"logo_visible\": true, \"favicon\": \"\", \"env_name\": \"\", \"env_color\": \"#E74C3C\", \"env_visible_in_header\": true, \"env_visible_in_favicon\": true, \"language_chooser_active\": true, \"language_chooser_control\": \"default-select\", \"language_chooser_display\": \"code\", \"css_header_background_color\": \"#FFFFFF\", \"css_header_text_color\": \"#463265\", \"css_header_link_color\": \"#463265\", \"css_header_link_hover_color\": \"#7351A6\", \"css_module_background_color\": \"#7351A6\", \"css_module_background_selected_color\": \"#FFFFCC\", \"css_module_text_color\": \"#FFFFFF\", \"css_module_link_color\": \"#CDBFE3\", \"css_module_link_selected_color\": \"#FFFFFF\", \"css_module_link_hover_color\": \"#FFFFFF\", \"css_module_rounded_corners\": true, \"css_generic_link_color\": \"#463265\", \"css_generic_link_hover_color\": \"#7351A6\", \"css_generic_link_active_color\": \"#29B864\", \"css_save_button_background_color\": \"#5CB85C\", \"css_save_button_background_hover_color\": \"#449D44\", \"css_save_button_text_color\": \"#FFFFFF\", \"css_delete_button_background_color\": \"#D9534F\", \"css_delete_button_background_hover_color\": \"#C9302C\", \"css_delete_button_text_color\": \"#FFFFFF\", \"related_modal_active\": true, \"related_modal_background_color\": \"#503873\", \"related_modal_background_opacity\": \"0.2\", \"related_modal_rounded_corners\": true, \"related_modal_close_button_visible\": true, \"list_filter_highlight\": true, \"list_filter_dropdown\": false, \"list_filter_sticky\": true, \"list_filter_removal_links\": false, \"foldable_apps\": true, \"show_fieldsets_as_tabs\": false, \"show_inlines_as_tabs\": false, \"collapsible_stacked_inlines\": false, \"collapsible_stacked_inlines_collapsed\": true, \"collapsible_tabular_inlines\": false, \"collapsible_tabular_inlines_collapsed\": true, \"recent_actions_visible\": true, \"form_submit_sticky\": false, \"form_pagination_sticky\": false}}]', '2023-12-30 20:16:12.098000', 18, 1, '1', 'null'),
(26, 2, '4', 'USWDS', '[{\"model\": \"admin_interface.theme\", \"pk\": 4, \"fields\": {\"name\": \"USWDS\", \"active\": true, \"title\": \"Django administration\", \"title_color\": \"#FFFFFF\", \"title_visible\": false, \"logo\": \"\", \"logo_color\": \"#FFFFFF\", \"logo_max_width\": 400, \"logo_max_height\": 100, \"logo_visible\": true, \"favicon\": \"bowl-3.png\", \"env_name\": \"\", \"env_color\": \"#E74C3C\", \"env_visible_in_header\": true, \"env_visible_in_favicon\": true, \"language_chooser_active\": true, \"language_chooser_control\": \"default-select\", \"language_chooser_display\": \"code\", \"css_header_background_color\": \"#13123F\", \"css_header_text_color\": \"#FFFFFF\", \"css_header_link_color\": \"#FFFFFF\", \"css_header_link_hover_color\": \"#E1F3F8\", \"css_module_background_color\": \"#205493\", \"css_module_background_selected_color\": \"#FFFFCC\", \"css_module_text_color\": \"#FFFFFF\", \"css_module_link_color\": \"#FFFFFF\", \"css_module_link_selected_color\": \"#FFFFFF\", \"css_module_link_hover_color\": \"#AFBDC1\", \"css_module_rounded_corners\": true, \"css_generic_link_color\": \"#205493\", \"css_generic_link_hover_color\": \"#0071BC\", \"css_generic_link_active_color\": \"#29B864\", \"css_save_button_background_color\": \"#205493\", \"css_save_button_background_hover_color\": \"#112E51\", \"css_save_button_text_color\": \"#FFFFFF\", \"css_delete_button_background_color\": \"#CD2026\", \"css_delete_button_background_hover_color\": \"#981B1E\", \"css_delete_button_text_color\": \"#FFFFFF\", \"related_modal_active\": true, \"related_modal_background_color\": \"#000000\", \"related_modal_background_opacity\": \"0.8\", \"related_modal_rounded_corners\": true, \"related_modal_close_button_visible\": true, \"list_filter_highlight\": true, \"list_filter_dropdown\": true, \"list_filter_sticky\": true, \"list_filter_removal_links\": false, \"foldable_apps\": true, \"show_fieldsets_as_tabs\": false, \"show_inlines_as_tabs\": false, \"collapsible_stacked_inlines\": false, \"collapsible_stacked_inlines_collapsed\": true, \"collapsible_tabular_inlines\": false, \"collapsible_tabular_inlines_collapsed\": true, \"recent_actions_visible\": true, \"form_submit_sticky\": false, \"form_pagination_sticky\": false}}]', '2023-12-30 20:18:49.485000', 18, 1, '1', '{\"favicon\": [\"\", \"bowl-3.png\"], \"css_header_background_color\": [\"#112E51\", \"#13123F\"], \"css_module_link_hover_color\": [\"#E1F3F8\", \"#AFBDC1\"], \"list_filter_dropdown\": [\"False\", \"True\"]}'),
(27, 2, '4', 'USWDS', '[{\"model\": \"admin_interface.theme\", \"pk\": 4, \"fields\": {\"name\": \"USWDS\", \"active\": true, \"title\": \"Django administration\", \"title_color\": \"#FFFFFF\", \"title_visible\": false, \"logo\": \"\", \"logo_color\": \"#FFFFFF\", \"logo_max_width\": 400, \"logo_max_height\": 100, \"logo_visible\": true, \"favicon\": \"admin-interface/favicon/bowl-3.png\", \"env_name\": \"RBMS\", \"env_color\": \"#E74C3C\", \"env_visible_in_header\": true, \"env_visible_in_favicon\": true, \"language_chooser_active\": true, \"language_chooser_control\": \"default-select\", \"language_chooser_display\": \"code\", \"css_header_background_color\": \"#13123F\", \"css_header_text_color\": \"#FFFFFF\", \"css_header_link_color\": \"#FFFFFF\", \"css_header_link_hover_color\": \"#E1F3F8\", \"css_module_background_color\": \"#205493\", \"css_module_background_selected_color\": \"#FFFFCC\", \"css_module_text_color\": \"#FFFFFF\", \"css_module_link_color\": \"#FFFFFF\", \"css_module_link_selected_color\": \"#FFFFFF\", \"css_module_link_hover_color\": \"#AFBDC1\", \"css_module_rounded_corners\": true, \"css_generic_link_color\": \"#205493\", \"css_generic_link_hover_color\": \"#0071BC\", \"css_generic_link_active_color\": \"#29B864\", \"css_save_button_background_color\": \"#205493\", \"css_save_button_background_hover_color\": \"#112E51\", \"css_save_button_text_color\": \"#FFFFFF\", \"css_delete_button_background_color\": \"#CD2026\", \"css_delete_button_background_hover_color\": \"#981B1E\", \"css_delete_button_text_color\": \"#FFFFFF\", \"related_modal_active\": true, \"related_modal_background_color\": \"#000000\", \"related_modal_background_opacity\": \"0.8\", \"related_modal_rounded_corners\": true, \"related_modal_close_button_visible\": true, \"list_filter_highlight\": true, \"list_filter_dropdown\": true, \"list_filter_sticky\": true, \"list_filter_removal_links\": false, \"foldable_apps\": true, \"show_fieldsets_as_tabs\": false, \"show_inlines_as_tabs\": false, \"collapsible_stacked_inlines\": false, \"collapsible_stacked_inlines_collapsed\": true, \"collapsible_tabular_inlines\": false, \"collapsible_tabular_inlines_collapsed\": true, \"recent_actions_visible\": true, \"form_submit_sticky\": false, \"form_pagination_sticky\": false}}]', '2023-12-30 20:19:50.018000', 18, 1, '1', '{\"env_name\": [\"\", \"RBMS\"]}'),
(28, 2, '4', 'USWDS', '[{\"model\": \"admin_interface.theme\", \"pk\": 4, \"fields\": {\"name\": \"USWDS\", \"active\": true, \"title\": \"Django administration\", \"title_color\": \"#FFFFFF\", \"title_visible\": false, \"logo\": \"bowl-2.png\", \"logo_color\": \"#FFFFFF\", \"logo_max_width\": 400, \"logo_max_height\": 100, \"logo_visible\": true, \"favicon\": \"admin-interface/favicon/bowl-3.png\", \"env_name\": \"RBMS\", \"env_color\": \"#E74C3C\", \"env_visible_in_header\": true, \"env_visible_in_favicon\": true, \"language_chooser_active\": true, \"language_chooser_control\": \"default-select\", \"language_chooser_display\": \"code\", \"css_header_background_color\": \"#13123F\", \"css_header_text_color\": \"#FFFFFF\", \"css_header_link_color\": \"#FFFFFF\", \"css_header_link_hover_color\": \"#E1F3F8\", \"css_module_background_color\": \"#205493\", \"css_module_background_selected_color\": \"#FFFFCC\", \"css_module_text_color\": \"#FFFFFF\", \"css_module_link_color\": \"#FFFFFF\", \"css_module_link_selected_color\": \"#FFFFFF\", \"css_module_link_hover_color\": \"#AFBDC1\", \"css_module_rounded_corners\": true, \"css_generic_link_color\": \"#205493\", \"css_generic_link_hover_color\": \"#0071BC\", \"css_generic_link_active_color\": \"#29B864\", \"css_save_button_background_color\": \"#205493\", \"css_save_button_background_hover_color\": \"#112E51\", \"css_save_button_text_color\": \"#FFFFFF\", \"css_delete_button_background_color\": \"#CD2026\", \"css_delete_button_background_hover_color\": \"#981B1E\", \"css_delete_button_text_color\": \"#FFFFFF\", \"related_modal_active\": true, \"related_modal_background_color\": \"#000000\", \"related_modal_background_opacity\": \"0.8\", \"related_modal_rounded_corners\": true, \"related_modal_close_button_visible\": true, \"list_filter_highlight\": true, \"list_filter_dropdown\": true, \"list_filter_sticky\": true, \"list_filter_removal_links\": false, \"foldable_apps\": true, \"show_fieldsets_as_tabs\": false, \"show_inlines_as_tabs\": false, \"collapsible_stacked_inlines\": false, \"collapsible_stacked_inlines_collapsed\": true, \"collapsible_tabular_inlines\": false, \"collapsible_tabular_inlines_collapsed\": true, \"recent_actions_visible\": true, \"form_submit_sticky\": false, \"form_pagination_sticky\": false}}]', '2023-12-30 20:46:46.562000', 18, 1, '1', '{\"logo\": [\"\", \"bowl-2.png\"]}'),
(29, 2, '4', 'USWDS', '[{\"model\": \"admin_interface.theme\", \"pk\": 4, \"fields\": {\"name\": \"USWDS\", \"active\": true, \"title\": \"Django administration\", \"title_color\": \"#FFFFFF\", \"title_visible\": false, \"logo\": \"\", \"logo_color\": \"#FFFFFF\", \"logo_max_width\": 400, \"logo_max_height\": 100, \"logo_visible\": true, \"favicon\": \"admin-interface/favicon/bowl-3.png\", \"env_name\": \"RBMS\", \"env_color\": \"#E74C3C\", \"env_visible_in_header\": true, \"env_visible_in_favicon\": true, \"language_chooser_active\": true, \"language_chooser_control\": \"minimal-select\", \"language_chooser_display\": \"code\", \"css_header_background_color\": \"#13123F\", \"css_header_text_color\": \"#FFFFFF\", \"css_header_link_color\": \"#FFFFFF\", \"css_header_link_hover_color\": \"#E1F3F8\", \"css_module_background_color\": \"#205493\", \"css_module_background_selected_color\": \"#FFFFCC\", \"css_module_text_color\": \"#FFFFFF\", \"css_module_link_color\": \"#FFFFFF\", \"css_module_link_selected_color\": \"#FFFFFF\", \"css_module_link_hover_color\": \"#AFBDC1\", \"css_module_rounded_corners\": true, \"css_generic_link_color\": \"#205493\", \"css_generic_link_hover_color\": \"#0071BC\", \"css_generic_link_active_color\": \"#29B864\", \"css_save_button_background_color\": \"#205493\", \"css_save_button_background_hover_color\": \"#112E51\", \"css_save_button_text_color\": \"#FFFFFF\", \"css_delete_button_background_color\": \"#CD2026\", \"css_delete_button_background_hover_color\": \"#981B1E\", \"css_delete_button_text_color\": \"#FFFFFF\", \"related_modal_active\": true, \"related_modal_background_color\": \"#000000\", \"related_modal_background_opacity\": \"0.8\", \"related_modal_rounded_corners\": true, \"related_modal_close_button_visible\": true, \"list_filter_highlight\": true, \"list_filter_dropdown\": true, \"list_filter_sticky\": true, \"list_filter_removal_links\": false, \"foldable_apps\": true, \"show_fieldsets_as_tabs\": false, \"show_inlines_as_tabs\": false, \"collapsible_stacked_inlines\": false, \"collapsible_stacked_inlines_collapsed\": true, \"collapsible_tabular_inlines\": false, \"collapsible_tabular_inlines_collapsed\": true, \"recent_actions_visible\": true, \"form_submit_sticky\": false, \"form_pagination_sticky\": false}}]', '2023-12-30 20:47:26.243000', 18, 1, '1', '{\"logo\": [\"admin-interface/logo/bowl-2.png\", \"\"], \"language_chooser_control\": [\"default-select\", \"minimal-select\"]}'),
(30, 2, '4', 'USWDS', '[{\"model\": \"admin_interface.theme\", \"pk\": 4, \"fields\": {\"name\": \"USWDS\", \"active\": true, \"title\": \"RBMS administration\", \"title_color\": \"#E5DFDE\", \"title_visible\": true, \"logo\": \"\", \"logo_color\": \"#FFFFFF\", \"logo_max_width\": 400, \"logo_max_height\": 100, \"logo_visible\": true, \"favicon\": \"admin-interface/favicon/bowl-3.png\", \"env_name\": \"RBMS\", \"env_color\": \"#E74C3C\", \"env_visible_in_header\": true, \"env_visible_in_favicon\": true, \"language_chooser_active\": true, \"language_chooser_control\": \"minimal-select\", \"language_chooser_display\": \"code\", \"css_header_background_color\": \"#13123F\", \"css_header_text_color\": \"#FFFFFF\", \"css_header_link_color\": \"#FFFFFF\", \"css_header_link_hover_color\": \"#E1F3F8\", \"css_module_background_color\": \"#21397A\", \"css_module_background_selected_color\": \"#E6FFC0\", \"css_module_text_color\": \"#FFFFFF\", \"css_module_link_color\": \"#FFFFFF\", \"css_module_link_selected_color\": \"#FFFFFF\", \"css_module_link_hover_color\": \"#AFBDC1\", \"css_module_rounded_corners\": true, \"css_generic_link_color\": \"#205493\", \"css_generic_link_hover_color\": \"#0071BC\", \"css_generic_link_active_color\": \"#29B864\", \"css_save_button_background_color\": \"#205493\", \"css_save_button_background_hover_color\": \"#112E51\", \"css_save_button_text_color\": \"#FFFFFF\", \"css_delete_button_background_color\": \"#CD2026\", \"css_delete_button_background_hover_color\": \"#981B1E\", \"css_delete_button_text_color\": \"#FFFFFF\", \"related_modal_active\": true, \"related_modal_background_color\": \"#000000\", \"related_modal_background_opacity\": \"0.8\", \"related_modal_rounded_corners\": true, \"related_modal_close_button_visible\": true, \"list_filter_highlight\": true, \"list_filter_dropdown\": true, \"list_filter_sticky\": true, \"list_filter_removal_links\": false, \"foldable_apps\": true, \"show_fieldsets_as_tabs\": false, \"show_inlines_as_tabs\": false, \"collapsible_stacked_inlines\": false, \"collapsible_stacked_inlines_collapsed\": true, \"collapsible_tabular_inlines\": false, \"collapsible_tabular_inlines_collapsed\": true, \"recent_actions_visible\": true, \"form_submit_sticky\": false, \"form_pagination_sticky\": false}}]', '2023-12-30 20:49:13.517000', 18, 1, '1', '{\"title\": [\"Django administration\", \"RBMS administration\"], \"title_color\": [\"#FFFFFF\", \"#E5DFDE\"], \"title_visible\": [\"False\", \"True\"], \"css_module_background_color\": [\"#205493\", \"#21397A\"], \"css_module_background_selected_color\": [\"#FFFFCC\", \"#E6FFC0\"]}'),
(31, 2, '1', 'RBMS', '[{\"model\": \"admin_interface.theme\", \"pk\": 1, \"fields\": {\"name\": \"RBMS\", \"active\": true, \"title\": \"Django administration\", \"title_color\": \"#F5DD5D\", \"title_visible\": true, \"logo\": \"\", \"logo_color\": \"#FFFFFF\", \"logo_max_width\": 400, \"logo_max_height\": 100, \"logo_visible\": true, \"favicon\": \"\", \"env_name\": \"\", \"env_color\": \"#05E786\", \"env_visible_in_header\": true, \"env_visible_in_favicon\": true, \"language_chooser_active\": true, \"language_chooser_control\": \"default-select\", \"language_chooser_display\": \"code\", \"css_header_background_color\": \"#0C4B33\", \"css_header_text_color\": \"#44B78B\", \"css_header_link_color\": \"#FFFFFF\", \"css_header_link_hover_color\": \"#C9F0DD\", \"css_module_background_color\": \"#44B78B\", \"css_module_background_selected_color\": \"#FFFFCC\", \"css_module_text_color\": \"#FFFFFF\", \"css_module_link_color\": \"#FFFFFF\", \"css_module_link_selected_color\": \"#FFFFFF\", \"css_module_link_hover_color\": \"#C9F0DD\", \"css_module_rounded_corners\": true, \"css_generic_link_color\": \"#0C3C26\", \"css_generic_link_hover_color\": \"#156641\", \"css_generic_link_active_color\": \"#29B864\", \"css_save_button_background_color\": \"#0C4B33\", \"css_save_button_background_hover_color\": \"#0C3C26\", \"css_save_button_text_color\": \"#FFFFFF\", \"css_delete_button_background_color\": \"#BA2121\", \"css_delete_button_background_hover_color\": \"#A41515\", \"css_delete_button_text_color\": \"#FFFFFF\", \"related_modal_active\": true, \"related_modal_background_color\": \"#000000\", \"related_modal_background_opacity\": \"0.3\", \"related_modal_rounded_corners\": true, \"related_modal_close_button_visible\": true, \"list_filter_highlight\": true, \"list_filter_dropdown\": true, \"list_filter_sticky\": true, \"list_filter_removal_links\": false, \"foldable_apps\": true, \"show_fieldsets_as_tabs\": false, \"show_inlines_as_tabs\": false, \"collapsible_stacked_inlines\": false, \"collapsible_stacked_inlines_collapsed\": true, \"collapsible_tabular_inlines\": false, \"collapsible_tabular_inlines_collapsed\": true, \"recent_actions_visible\": true, \"form_submit_sticky\": false, \"form_pagination_sticky\": true}}]', '2024-07-03 20:32:44.447735', 1, NULL, NULL, '{\"active\": [\"False\", \"True\"]}');

-- --------------------------------------------------------

--
-- Table structure for table `easyaudit_loginevent`
--

CREATE TABLE `easyaudit_loginevent` (
  `id` int(11) NOT NULL,
  `login_type` smallint(6) NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  `datetime` datetime(6) NOT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `remote_ip` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `easyaudit_loginevent`
--

INSERT INTO `easyaudit_loginevent` (`id`, `login_type`, `username`, `datetime`, `user_id`, `remote_ip`) VALUES
(1, 0, 'test@test.com', '2023-12-28 11:28:53.000000', 1, '127.0.0.1'),
(2, 0, 'talia@jose.com', '2023-12-28 11:30:53.968000', 4, '127.0.0.1'),
(3, 1, 'talia@jose.com', '2023-12-29 14:09:51.145000', 4, '127.0.0.1'),
(4, 2, 'talia@jose.com', '2023-12-29 15:16:57.525000', NULL, '192.168.0.104'),
(5, 2, 'talia@jose.com', '2023-12-29 15:18:04.451000', NULL, '192.168.0.104'),
(6, 0, 'talia@jose.com', '2023-12-29 15:18:29.454000', 4, '192.168.0.104'),
(7, 1, 'talia@jose.com', '2023-12-29 15:33:45.047000', 4, '192.168.0.104'),
(8, 0, 'talia@jose.com', '2023-12-29 15:36:21.563000', 4, '192.168.0.103'),
(9, 0, 'manu@mail.com', '2023-12-29 15:42:45.173000', 2, '192.168.0.104'),
(10, 0, 'test@test.com', '2023-12-29 15:51:00.648000', 1, '192.168.0.102'),
(11, 0, 'test@test.com', '2023-12-30 17:35:30.400000', 1, '192.168.0.104'),
(12, 1, 'test@test.com', '2023-12-30 17:37:11.628000', 1, '192.168.0.104'),
(13, 0, 'test@test.com', '2023-12-30 17:40:03.232000', 1, '192.168.0.104'),
(14, 0, 'test@test.com', '2023-12-30 20:11:46.281000', 1, '192.168.0.103'),
(15, 2, 'jose@jose.com', '2024-07-03 20:36:15.233139', NULL, '127.0.0.1'),
(16, 2, 'jose@jose.com', '2024-07-03 20:36:29.947805', NULL, '127.0.0.1'),
(17, 2, 'jose@jose.com', '2024-07-03 20:36:42.554400', NULL, '127.0.0.1'),
(18, 2, 'jose@jose.com', '2024-07-03 20:37:06.878883', NULL, '127.0.0.1');

-- --------------------------------------------------------

--
-- Table structure for table `easyaudit_requestevent`
--

CREATE TABLE `easyaudit_requestevent` (
  `id` int(11) NOT NULL,
  `url` varchar(254) NOT NULL,
  `method` varchar(20) NOT NULL,
  `query_string` longtext DEFAULT NULL,
  `remote_ip` varchar(50) DEFAULT NULL,
  `datetime` datetime(6) NOT NULL,
  `user_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `easyaudit_requestevent`
--

INSERT INTO `easyaudit_requestevent` (`id`, `url`, `method`, `query_string`, `remote_ip`, `datetime`, `user_id`) VALUES
(1, '/', 'GET', '', '127.0.0.1', '2023-12-28 11:27:59.748000', NULL),
(2, '/media/Rooms/room1.jpeg', 'GET', '', '127.0.0.1', '2023-12-28 11:28:03.868000', NULL),
(3, '/media/Rooms/room4.jpeg', 'GET', '', '127.0.0.1', '2023-12-28 11:28:04.130000', NULL),
(4, '/media/Rooms/room6_U0PPvd8.jpeg', 'GET', '', '127.0.0.1', '2023-12-28 11:28:04.433000', NULL),
(5, '/rentals/rooms/', 'GET', '', '127.0.0.1', '2023-12-28 11:28:12.399000', NULL),
(6, '/media/Rooms/room2.jpeg', 'GET', '', '127.0.0.1', '2023-12-28 11:28:14.868000', NULL),
(7, '/media/Rooms/room3_okgsSd2.jpeg', 'GET', '', '127.0.0.1', '2023-12-28 11:28:14.959000', NULL),
(8, '/media/Rooms/room6_ORu0vYp.jpeg', 'GET', '', '127.0.0.1', '2023-12-28 11:28:15.257000', NULL),
(9, '/media/Rooms/room4_bQFHsu2.jpeg', 'GET', '', '127.0.0.1', '2023-12-28 11:28:15.313000', NULL),
(10, '/media/Rooms/room4_59WOLzQ.jpeg', 'GET', '', '127.0.0.1', '2023-12-28 11:28:15.433000', NULL),
(11, '/media/Rooms/room6.jpeg', 'GET', '', '127.0.0.1', '2023-12-28 11:28:15.436000', NULL),
(12, '/media/Rooms/room4_zTe5Cqd.jpeg', 'GET', '', '127.0.0.1', '2023-12-28 11:28:17.092000', NULL),
(13, '/', 'GET', '', '127.0.0.1', '2023-12-28 11:28:28.169000', NULL),
(14, '/', 'GET', '', '127.0.0.1', '2023-12-28 11:30:30.192000', NULL),
(15, '/media/Rooms/room2.jpeg', 'GET', '', '127.0.0.1', '2023-12-28 11:30:32.460000', NULL),
(16, '/media/Rooms/room6_ORu0vYp.jpeg', 'GET', '', '127.0.0.1', '2023-12-28 11:30:32.550000', NULL),
(17, '/media/Rooms/room1.jpeg', 'GET', '', '127.0.0.1', '2023-12-28 11:30:32.577000', NULL),
(18, '/login_user/', 'POST', '', '127.0.0.1', '2023-12-28 11:30:53.460000', NULL),
(19, '/', 'GET', '', '127.0.0.1', '2023-12-28 11:30:56.200000', 4),
(20, '/media/Rooms/room6_U0PPvd8.jpeg', 'GET', '', '127.0.0.1', '2023-12-28 11:30:58.481000', 4),
(21, '/media/Rooms/room4_zTe5Cqd.jpeg', 'GET', '', '127.0.0.1', '2023-12-28 11:30:58.505000', 4),
(22, '/media/Rooms/room6.jpeg', 'GET', '', '127.0.0.1', '2023-12-28 11:30:58.558000', 4),
(23, '/media/Users/IMG-20231206-WA0016.jpg', 'GET', '', '127.0.0.1', '2023-12-28 11:30:58.604000', 4),
(24, '/rentals/my-apartments/', 'GET', '', '127.0.0.1', '2023-12-28 11:52:57.601000', 4),
(25, '/media/Appartments/main.jpg', 'GET', '', '127.0.0.1', '2023-12-28 11:52:59.754000', 4),
(26, '/media/Appartments/OIP.jpeg', 'GET', '', '127.0.0.1', '2023-12-28 11:52:59.773000', 4),
(27, '/rentals/apartment/1/', 'GET', '', '127.0.0.1', '2023-12-28 11:53:03.812000', 4),
(28, '/rentals/add-room/1/', 'GET', '', '127.0.0.1', '2023-12-28 11:53:24.109000', 4),
(29, '/rentals/add-room/1/', 'GET', '', '127.0.0.1', '2023-12-28 12:17:58.658000', 4),
(30, '/rentals/add-room/1/', 'POST', '', '127.0.0.1', '2023-12-28 12:20:20.419000', 4),
(31, '/rentals/add-room/1/', 'POST', '', '127.0.0.1', '2023-12-28 12:25:01.613000', 4),
(32, '/rentals/add-room/1/', 'GET', '', '127.0.0.1', '2023-12-28 12:28:23.095000', 4),
(33, '/rentals/add-room/1/', 'GET', '', '127.0.0.1', '2023-12-28 12:37:28.291000', 4),
(34, '/rentals/add-room/1/', 'GET', '', '127.0.0.1', '2023-12-28 12:39:06.694000', 4),
(35, '/rentals/add-room/1/', 'GET', '', '127.0.0.1', '2023-12-28 12:39:24.378000', 4),
(36, '/rentals/add-room/1/', 'GET', '', '127.0.0.1', '2023-12-28 12:39:30.891000', 4),
(37, '/rentals/add-room/1/', 'GET', '', '127.0.0.1', '2023-12-28 12:40:01.251000', 4),
(38, '/rentals/add-room/1/', 'POST', '', '127.0.0.1', '2023-12-28 12:40:35.440000', 4),
(39, '/rentals/add-room/1/', 'POST', '', '127.0.0.1', '2023-12-28 12:43:33.831000', 4),
(40, '/rentals/add-room/1/', 'POST', '', '127.0.0.1', '2023-12-28 12:45:43.357000', 4),
(41, '/rentals/add-room/1/', 'POST', '', '127.0.0.1', '2023-12-28 12:50:13.737000', 4),
(42, '/rentals/add-room/1/', 'POST', '', '127.0.0.1', '2023-12-28 12:51:38.609000', 4),
(43, '/rentals/room/25/', 'GET', '', '127.0.0.1', '2023-12-28 12:51:40.944000', 4),
(44, '/media/Rooms/room2_sX8z8n4.jpeg', 'GET', '', '127.0.0.1', '2023-12-28 12:51:43.129000', 4),
(45, '/rentals/rooms/', 'GET', '', '127.0.0.1', '2023-12-28 12:51:55.452000', 4),
(46, '/media/Rooms/room2_sX8z8n4.jpeg', 'GET', '', '127.0.0.1', '2023-12-28 12:51:57.694000', 4),
(47, '/media/Rooms/room4.jpeg', 'GET', '', '127.0.0.1', '2023-12-28 12:51:57.695000', 4),
(48, '/media/Rooms/room3_okgsSd2.jpeg', 'GET', '', '127.0.0.1', '2023-12-28 12:51:57.696000', 4),
(49, '/media/Rooms/room4_bQFHsu2.jpeg', 'GET', '', '127.0.0.1', '2023-12-28 12:51:57.883000', 4),
(50, '/media/Rooms/room4_59WOLzQ.jpeg', 'GET', '', '127.0.0.1', '2023-12-28 12:51:57.912000', 4),
(51, '/rentals/apartment/3/', 'GET', '', '127.0.0.1', '2023-12-28 12:52:14.257000', 4),
(52, '/rentals/add-room/3/', 'GET', '', '127.0.0.1', '2023-12-28 12:52:30.598000', 4),
(53, '/rentals/add-room/3/', 'POST', '', '127.0.0.1', '2023-12-28 12:53:13.378000', 4),
(54, '/rentals/room/26/', 'GET', '', '127.0.0.1', '2023-12-28 12:53:15.468000', 4),
(55, '/media/Rooms/room4_dAzFToR.jpeg', 'GET', '', '127.0.0.1', '2023-12-28 12:53:17.577000', 4),
(56, '/rentals/rooms/', 'GET', '', '127.0.0.1', '2023-12-28 12:53:31.462000', 4),
(57, '/media/Rooms/room4_dAzFToR.jpeg', 'GET', '', '127.0.0.1', '2023-12-28 12:53:33.633000', 4),
(58, '/media/Rooms/room2_sX8z8n4.jpeg', 'GET', '', '127.0.0.1', '2023-12-28 12:53:33.651000', 4),
(59, '/rentals/apartment/1/', 'GET', '', '127.0.0.1', '2023-12-28 12:54:00.761000', 4),
(60, '/rentals/add-room/1/', 'GET', '', '127.0.0.1', '2023-12-28 12:54:06.855000', 4),
(61, '/rentals/add-room/1/', 'POST', '', '127.0.0.1', '2023-12-28 12:54:34.647000', 4),
(62, '/rentals/add-room/1/', 'POST', '', '127.0.0.1', '2023-12-28 13:08:57.906000', 4),
(63, '/admin', 'GET', '', '127.0.0.1', '2023-12-28 13:19:13.153000', 1),
(64, '/rentals/add-room/1/', 'GET', '', '127.0.0.1', '2023-12-28 13:29:27.453000', 4),
(65, '/rentals/add-room/1/', 'POST', '', '127.0.0.1', '2023-12-28 13:30:06.607000', 4),
(66, '/rentals/room/29/', 'GET', '', '127.0.0.1', '2023-12-28 13:30:08.731000', 4),
(67, '/media/Rooms/room3_Lor2z7h.jpeg', 'GET', '', '127.0.0.1', '2023-12-28 13:30:10.892000', 4),
(68, '/rentals/rooms/', 'GET', '', '127.0.0.1', '2023-12-28 13:30:17.381000', 4),
(69, '/media/Rooms/room3_Lor2z7h.jpeg', 'GET', '', '127.0.0.1', '2023-12-28 13:30:19.817000', 4),
(70, '/media/Rooms/room2_sX8z8n4.jpeg', 'GET', '', '127.0.0.1', '2023-12-28 13:30:19.864000', 4),
(71, '/media/Rooms/room4_dAzFToR.jpeg', 'GET', '', '127.0.0.1', '2023-12-28 13:30:19.883000', 4),
(72, '/logout/', 'GET', '', '127.0.0.1', '2023-12-29 14:09:51.081000', 4),
(73, '/', 'GET', '', '127.0.0.1', '2023-12-29 14:09:53.284000', NULL),
(74, '/media/Rooms/room4_dAzFToR.jpeg', 'GET', '', '127.0.0.1', '2023-12-29 14:09:55.617000', NULL),
(75, '/media/Rooms/room3_Lor2z7h.jpeg', 'GET', '', '127.0.0.1', '2023-12-29 14:09:55.617000', NULL),
(76, '/rentals/page/3/', 'GET', '', '127.0.0.1', '2023-12-29 14:10:06.487000', NULL),
(77, '/rentals/rooms/', 'GET', '', '127.0.0.1', '2023-12-29 14:10:13.655000', NULL),
(78, '/media/Rooms/room2_sX8z8n4.jpeg', 'GET', '', '127.0.0.1', '2023-12-29 14:10:16.068000', NULL),
(79, '/', 'GET', '', '192.168.0.101', '2023-12-29 15:12:12.725000', NULL),
(80, '/media/Rooms/room4_59WOLzQ.jpeg', 'GET', '', '192.168.0.101', '2023-12-29 15:12:15.097000', NULL),
(81, '/media/Rooms/room2_sX8z8n4.jpeg', 'GET', '', '192.168.0.101', '2023-12-29 15:12:15.134000', NULL),
(82, '/media/Rooms/room3_okgsSd2.jpeg', 'GET', '', '192.168.0.101', '2023-12-29 15:12:15.250000', NULL),
(83, '/', 'GET', '', '192.168.0.101', '2023-12-29 15:12:23.710000', NULL),
(84, '/media/Rooms/room4.jpeg', 'GET', '', '192.168.0.101', '2023-12-29 15:12:25.877000', NULL),
(85, '/signup/', 'GET', '', '192.168.0.101', '2023-12-29 15:12:34.582000', NULL),
(86, '/', 'GET', '', '192.168.0.104', '2023-12-29 15:15:22.496000', NULL),
(87, '/media/Rooms/room6.jpeg', 'GET', '', '192.168.0.104', '2023-12-29 15:15:25.846000', NULL),
(88, '/media/Rooms/room2_sX8z8n4.jpeg', 'GET', '', '192.168.0.104', '2023-12-29 15:15:25.847000', NULL),
(89, '/media/Rooms/room4.jpeg', 'GET', '', '192.168.0.104', '2023-12-29 15:15:25.847000', NULL),
(90, '/rentals/rooms/', 'GET', '', '192.168.0.104', '2023-12-29 15:15:46.269000', NULL),
(91, '/media/Rooms/room4_dAzFToR.jpeg', 'GET', '', '192.168.0.104', '2023-12-29 15:15:48.687000', NULL),
(92, '/media/Rooms/room3_Lor2z7h.jpeg', 'GET', '', '192.168.0.104', '2023-12-29 15:15:48.688000', NULL),
(93, '/media/Rooms/room2.jpeg', 'GET', '', '192.168.0.104', '2023-12-29 15:15:48.690000', NULL),
(94, '/media/Rooms/room6_ORu0vYp.jpeg', 'GET', '', '192.168.0.104', '2023-12-29 15:15:48.705000', NULL),
(95, '/media/Rooms/room6_U0PPvd8.jpeg', 'GET', '', '192.168.0.104', '2023-12-29 15:15:48.706000', NULL),
(96, '/media/Rooms/room3_okgsSd2.jpeg', 'GET', '', '192.168.0.104', '2023-12-29 15:15:48.705000', NULL),
(97, '/media/Rooms/room1.jpeg', 'GET', '', '192.168.0.104', '2023-12-29 15:15:50.919000', NULL),
(98, '/media/Rooms/room4_bQFHsu2.jpeg', 'GET', '', '192.168.0.104', '2023-12-29 15:15:50.932000', NULL),
(99, '/media/Rooms/room4_59WOLzQ.jpeg', 'GET', '', '192.168.0.104', '2023-12-29 15:15:50.952000', NULL),
(100, '/media/Rooms/room4_zTe5Cqd.jpeg', 'GET', '', '192.168.0.104', '2023-12-29 15:15:51.039000', NULL),
(101, '/rentals/room/21/', 'GET', '', '192.168.0.104', '2023-12-29 15:16:12.331000', NULL),
(102, '/rentals/apartment/6/', 'GET', '', '192.168.0.104', '2023-12-29 15:16:20.131000', NULL),
(103, '/media/Appartments/main_sQxPHQz.jpg', 'GET', '', '192.168.0.104', '2023-12-29 15:16:22.399000', NULL),
(104, '/login_user/', 'POST', '', '192.168.0.104', '2023-12-29 15:16:57.269000', NULL),
(105, '/', 'GET', '', '192.168.0.104', '2023-12-29 15:16:59.750000', NULL),
(106, '/login_user/', 'POST', '', '192.168.0.104', '2023-12-29 15:18:04.206000', NULL),
(107, '/', 'GET', '', '192.168.0.104', '2023-12-29 15:18:06.606000', NULL),
(108, '/login_user/', 'POST', '', '192.168.0.104', '2023-12-29 15:18:29.166000', NULL),
(109, '/', 'GET', '', '192.168.0.104', '2023-12-29 15:18:31.804000', 4),
(110, '/media/Users/IMG-20231206-WA0016.jpg', 'GET', '', '192.168.0.104', '2023-12-29 15:18:34.214000', 4),
(111, '/rentals/my-apartments/', 'GET', '', '192.168.0.104', '2023-12-29 15:19:15.683000', 4),
(112, '/media/Appartments/main.jpg', 'GET', '', '192.168.0.104', '2023-12-29 15:19:17.942000', 4),
(113, '/media/Appartments/OIP.jpeg', 'GET', '', '192.168.0.104', '2023-12-29 15:19:17.942000', 4),
(114, '/rentals/my-apartments/', 'GET', '', '192.168.0.104', '2023-12-29 15:22:00.172000', 4),
(115, '/rentals/my-apartments/', 'GET', '', '192.168.0.104', '2023-12-29 15:23:14.012000', 4),
(116, '/rentals/my-apartments/', 'GET', '', '192.168.0.104', '2023-12-29 15:23:59.585000', 4),
(117, '/', 'GET', '', '192.168.0.102', '2023-12-29 15:25:19.410000', NULL),
(118, '/media/Rooms/room4_zTe5Cqd.jpeg', 'GET', '', '192.168.0.102', '2023-12-29 15:25:21.633000', NULL),
(119, '/media/Rooms/room2_sX8z8n4.jpeg', 'GET', '', '192.168.0.102', '2023-12-29 15:25:21.665000', NULL),
(120, '/media/Rooms/room2.jpeg', 'GET', '', '192.168.0.102', '2023-12-29 15:25:21.802000', NULL),
(121, '/', 'GET', '', '192.168.0.102', '2023-12-29 15:26:25.971000', NULL),
(122, '/media/Rooms/room4_bQFHsu2.jpeg', 'GET', '', '192.168.0.102', '2023-12-29 15:26:28.241000', NULL),
(123, '/media/Rooms/room3_okgsSd2.jpeg', 'GET', '', '192.168.0.102', '2023-12-29 15:26:28.257000', NULL),
(124, '/media/Rooms/room6.jpeg', 'GET', '', '192.168.0.102', '2023-12-29 15:26:28.258000', NULL),
(125, '/rentals/my-apartments/', 'GET', '', '192.168.0.104', '2023-12-29 15:26:34.299000', 4),
(126, '/', 'GET', '', '192.168.0.102', '2023-12-29 15:26:58.958000', NULL),
(127, '/media/Rooms/room3_Lor2z7h.jpeg', 'GET', '', '192.168.0.102', '2023-12-29 15:27:01.148000', NULL),
(128, '/media/Rooms/room6_U0PPvd8.jpeg', 'GET', '', '192.168.0.102', '2023-12-29 15:27:01.171000', NULL),
(129, '/rentals/my-apartments/', 'GET', '', '192.168.0.104', '2023-12-29 15:27:05.275000', 4),
(130, '/', 'GET', '', '192.168.0.102', '2023-12-29 15:27:29.283000', NULL),
(131, '/media/Rooms/room4_dAzFToR.jpeg', 'GET', '', '192.168.0.102', '2023-12-29 15:27:31.458000', NULL),
(132, '/rentals/my-apartments/', 'GET', '', '192.168.0.104', '2023-12-29 15:27:33.989000', 4),
(133, '/', 'GET', '', '192.168.0.102', '2023-12-29 15:28:03.923000', NULL),
(134, '/media/Rooms/room1.jpeg', 'GET', '', '192.168.0.102', '2023-12-29 15:28:06.079000', NULL),
(135, '/rentals/my-apartments/', 'GET', '', '192.168.0.104', '2023-12-29 15:28:09.080000', 4),
(136, '/', 'GET', '', '192.168.0.102', '2023-12-29 15:28:41.265000', NULL),
(137, '/rentals/my-apartments/', 'GET', '', '192.168.0.104', '2023-12-29 15:29:00.189000', 4),
(138, '/rentals/my-apartments/', 'GET', '', '192.168.0.104', '2023-12-29 15:29:10.013000', 4),
(139, '/rentals/my-apartments/', 'GET', '', '192.168.0.104', '2023-12-29 15:29:56.993000', 4),
(140, '/', 'GET', '', '192.168.0.102', '2023-12-29 15:30:11.796000', NULL),
(141, '/', 'GET', '', '192.168.0.102', '2023-12-29 15:31:33.295000', NULL),
(142, '/', 'GET', '', '192.168.0.102', '2023-12-29 15:31:52.357000', NULL),
(143, '/media/Rooms/room4.jpeg', 'GET', '', '192.168.0.102', '2023-12-29 15:31:54.515000', NULL),
(144, '/rentals/my-apartments/', 'GET', '', '192.168.0.104', '2023-12-29 15:32:06.066000', 4),
(145, '/rentals/apartment/3/', 'GET', '', '192.168.0.104', '2023-12-29 15:32:24.588000', 4),
(146, '/logout/', 'GET', '', '192.168.0.104', '2023-12-29 15:33:45.031000', 4),
(147, '/', 'GET', '', '192.168.0.104', '2023-12-29 15:33:47.283000', NULL),
(148, '/', 'GET', '', '192.168.0.103', '2023-12-29 15:34:06.258000', NULL),
(149, '/media/Rooms/room3_okgsSd2.jpeg', 'GET', '', '192.168.0.103', '2023-12-29 15:34:10.580000', NULL),
(150, '/media/Rooms/room2.jpeg', 'GET', '', '192.168.0.103', '2023-12-29 15:34:10.581000', NULL),
(151, '/media/Rooms/room6_U0PPvd8.jpeg', 'GET', '', '192.168.0.103', '2023-12-29 15:34:10.581000', NULL),
(152, '/', 'GET', '', '192.168.0.103', '2023-12-29 15:34:25.303000', NULL),
(153, '/media/Rooms/room3_Lor2z7h.jpeg', 'GET', '', '192.168.0.103', '2023-12-29 15:34:27.825000', NULL),
(154, '/media/Rooms/room4_dAzFToR.jpeg', 'GET', '', '192.168.0.103', '2023-12-29 15:34:27.825000', NULL),
(155, '/media/Rooms/room6.jpeg', 'GET', '', '192.168.0.103', '2023-12-29 15:34:27.868000', NULL),
(156, '/', 'GET', '', '192.168.0.104', '2023-12-29 15:34:34.559000', NULL),
(157, '/', 'GET', '', '192.168.0.104', '2023-12-29 15:34:51.817000', NULL),
(158, '/signup/', 'GET', '', '192.168.0.103', '2023-12-29 15:34:56.402000', NULL),
(159, '/login_user/', 'POST', '', '192.168.0.103', '2023-12-29 15:36:21.297000', NULL),
(160, '/', 'GET', '', '192.168.0.103', '2023-12-29 15:36:23.707000', 4),
(161, '/media/Rooms/room4.jpeg', 'GET', '', '192.168.0.103', '2023-12-29 15:36:26.644000', 4),
(162, '/media/Rooms/room4_bQFHsu2.jpeg', 'GET', '', '192.168.0.103', '2023-12-29 15:36:26.660000', 4),
(163, '/media/Users/IMG-20231206-WA0016.jpg', 'GET', '', '192.168.0.103', '2023-12-29 15:36:27.688000', 4),
(164, '/rentals/my-apartments/', 'GET', '', '192.168.0.103', '2023-12-29 15:37:05.928000', 4),
(165, '/media/Appartments/main.jpg', 'GET', '', '192.168.0.103', '2023-12-29 15:37:08.573000', 4),
(166, '/media/Appartments/OIP.jpeg', 'GET', '', '192.168.0.103', '2023-12-29 15:37:08.592000', 4),
(167, '/update-profile/', 'GET', '', '192.168.0.103', '2023-12-29 15:37:32.596000', 4),
(168, '/rentals/rooms/', 'GET', '', '192.168.0.103', '2023-12-29 15:38:05.333000', 4),
(169, '/media/Rooms/room2_sX8z8n4.jpeg', 'GET', '', '192.168.0.103', '2023-12-29 15:38:08.187000', 4),
(170, '/media/Rooms/room6_ORu0vYp.jpeg', 'GET', '', '192.168.0.103', '2023-12-29 15:38:08.206000', 4),
(171, '/media/Rooms/room4_zTe5Cqd.jpeg', 'GET', '', '192.168.0.103', '2023-12-29 15:38:08.207000', 4),
(172, '/media/Rooms/room1.jpeg', 'GET', '', '192.168.0.103', '2023-12-29 15:38:08.224000', 4),
(173, '/media/Rooms/room4_59WOLzQ.jpeg', 'GET', '', '192.168.0.103', '2023-12-29 15:38:08.214000', 4),
(174, '/rentals/room/11/', 'GET', '', '192.168.0.103', '2023-12-29 15:38:45.846000', 4),
(175, '/rentals/search-results', 'GET', 'query=12', '192.168.0.103', '2023-12-29 15:38:57.667000', 4),
(176, '/rentals/search-results', 'GET', 'query=Z', '192.168.0.103', '2023-12-29 15:39:20.838000', 4),
(177, '/rentals/update-room/6/', 'GET', '', '192.168.0.103', '2023-12-29 15:39:37.256000', 4),
(178, '/rentals/update-room/6/', 'GET', '', '192.168.0.103', '2023-12-29 15:41:37.845000', 4),
(179, '/rentals/update-room/6/', 'POST', '', '192.168.0.103', '2023-12-29 15:42:00.688000', 4),
(180, '/rentals/room/6/', 'GET', '', '192.168.0.103', '2023-12-29 15:42:03.153000', 4),
(181, '/login_user/', 'POST', '', '192.168.0.104', '2023-12-29 15:42:44.799000', NULL),
(182, '/', 'GET', '', '192.168.0.104', '2023-12-29 15:42:47.401000', 2),
(183, '/media/Users/person_2.jpg', 'GET', '', '192.168.0.104', '2023-12-29 15:42:50.196000', 2),
(184, '/', 'GET', '', '192.168.0.104', '2023-12-29 15:42:59.959000', 2),
(185, '/rentals/search-results', 'GET', 'query=R', '192.168.0.104', '2023-12-29 15:43:17.762000', 2),
(186, '/rentals/apartment/6/', 'GET', '', '192.168.0.104', '2023-12-29 15:43:34.281000', 2),
(187, '/rentals/add-room/6/', 'GET', '', '192.168.0.104', '2023-12-29 15:43:44.053000', 2),
(188, '/rentals/add-room/6/', 'POST', '', '192.168.0.104', '2023-12-29 15:44:31.596000', 2),
(189, '/rentals/room/30/', 'GET', '', '192.168.0.104', '2023-12-29 15:44:34.287000', 2),
(190, '/media/Rooms/20231203_213544.jpg', 'GET', '', '192.168.0.104', '2023-12-29 15:44:36.508000', 2),
(191, '/rentals/my-apartments/', 'GET', '', '192.168.0.104', '2023-12-29 15:45:42.969000', 2),
(192, '/media/Appartments/apartment2.jpeg', 'GET', '', '192.168.0.104', '2023-12-29 15:45:45.217000', 2),
(193, '/media/Appartments/R.jpeg', 'GET', '', '192.168.0.104', '2023-12-29 15:45:45.232000', 2),
(194, '/rentals/apartment/2/', 'GET', '', '192.168.0.104', '2023-12-29 15:45:51.622000', 2),
(195, '/update-profile/', 'GET', '', '192.168.0.104', '2023-12-29 15:46:58.752000', 2),
(196, '/rentals/my-apartments/', 'GET', '', '192.168.0.104', '2023-12-29 15:47:12.605000', 2),
(197, '//admin/easyaudit/loginevent/', 'GET', '', '192.168.0.102', '2023-12-29 15:50:22.886000', NULL),
(198, '/rentals/rooms/', 'GET', '', '192.168.0.102', '2023-12-29 16:03:31.567000', NULL),
(199, '/media/Rooms/20231203_213544.jpg', 'GET', '', '192.168.0.102', '2023-12-29 16:03:33.795000', NULL),
(200, '/media/Rooms/room9.jpeg', 'GET', '', '192.168.0.102', '2023-12-29 16:03:33.828000', NULL),
(201, '/media/Rooms/room9_FtMGlEW.jpeg', 'GET', '', '192.168.0.102', '2023-12-29 16:03:33.858000', NULL),
(202, '/media/Rooms/room6_ORu0vYp.jpeg', 'GET', '', '192.168.0.102', '2023-12-29 16:03:33.875000', NULL),
(203, '/media/Rooms/room4_59WOLzQ.jpeg', 'GET', '', '192.168.0.102', '2023-12-29 16:03:33.901000', NULL),
(204, '/rentals/page/3/', 'GET', '', '192.168.0.103', '2023-12-29 20:39:50.222000', 4),
(205, '/rentals/page/4/', 'GET', '', '192.168.0.103', '2023-12-29 20:40:16.764000', 4),
(206, '/rentals/page/1/', 'GET', '', '192.168.0.103', '2023-12-29 20:40:30.495000', 4),
(207, '/rentals/rooms/', 'GET', '', '192.168.0.103', '2023-12-29 20:40:45.860000', 4),
(208, '/media/Rooms/room2_sX8z8n4.jpeg', 'GET', '', '192.168.0.103', '2023-12-29 20:40:48.664000', 4),
(209, '/media/Rooms/room9.jpeg', 'GET', '', '192.168.0.103', '2023-12-29 20:40:48.764000', 4),
(210, '/media/Rooms/room9_FtMGlEW.jpeg', 'GET', '', '192.168.0.103', '2023-12-29 20:40:48.858000', 4),
(211, '/rentals/apartment/4/', 'GET', '', '192.168.0.103', '2023-12-29 20:41:22.032000', 4),
(212, '/media/Appartments/apartment2.jpeg', 'GET', '', '192.168.0.103', '2023-12-29 20:41:24.238000', 4),
(213, '/rentals/apartment/1/', 'GET', '', '192.168.0.103', '2023-12-29 20:41:50.302000', 4),
(214, '/rentals/update-apartment/1/', 'GET', '', '192.168.0.103', '2023-12-29 20:42:38.368000', 4),
(215, '/rentals/update-apartment/1/', 'POST', '', '192.168.0.103', '2023-12-29 20:43:27.381000', 4),
(216, '/rentals/apartment/1/', 'GET', '', '192.168.0.103', '2023-12-29 20:43:29.590000', 4),
(217, '/rentals/rooms/', 'GET', '', '192.168.0.103', '2023-12-29 20:43:52.943000', 4),
(218, '/', 'GET', '', '192.168.0.104', '2023-12-30 17:27:46.478000', NULL),
(219, '/media/Rooms/room1.jpeg', 'GET', '', '192.168.0.104', '2023-12-30 17:27:49.029000', NULL),
(220, '/media/Rooms/room9_FtMGlEW.jpeg', 'GET', '', '192.168.0.104', '2023-12-30 17:27:49.063000', NULL),
(221, '/media/Rooms/room2.jpeg', 'GET', '', '192.168.0.104', '2023-12-30 17:27:49.065000', NULL),
(222, '/rentals/rooms/', 'GET', '', '192.168.0.104', '2023-12-30 17:28:00.018000', NULL),
(223, '/media/Rooms/room2_sX8z8n4.jpeg', 'GET', '', '192.168.0.104', '2023-12-30 17:28:02.368000', NULL),
(224, '/media/Rooms/room6.jpeg', 'GET', '', '192.168.0.104', '2023-12-30 17:28:02.368000', NULL),
(225, '/media/Rooms/room6_U0PPvd8.jpeg', 'GET', '', '192.168.0.104', '2023-12-30 17:28:02.380000', NULL),
(226, '/media/Rooms/room9.jpeg', 'GET', '', '192.168.0.104', '2023-12-30 17:28:02.389000', NULL),
(227, '/media/Rooms/room3_okgsSd2.jpeg', 'GET', '', '192.168.0.104', '2023-12-30 17:28:02.398000', NULL),
(228, '/media/Rooms/room6_ORu0vYp.jpeg', 'GET', '', '192.168.0.104', '2023-12-30 17:28:02.398000', NULL),
(229, '/media/Rooms/room4.jpeg', 'GET', '', '192.168.0.104', '2023-12-30 17:28:04.688000', NULL),
(230, '/media/Rooms/room4_59WOLzQ.jpeg', 'GET', '', '192.168.0.104', '2023-12-30 17:28:04.752000', NULL),
(231, '/media/Rooms/room4_bQFHsu2.jpeg', 'GET', '', '192.168.0.104', '2023-12-30 17:28:04.752000', NULL),
(232, '/media/Rooms/room4_zTe5Cqd.jpeg', 'GET', '', '192.168.0.104', '2023-12-30 17:28:04.752000', NULL),
(233, '/', 'GET', '', '192.168.0.104', '2023-12-30 17:31:15.331000', NULL),
(234, '/rentals/rooms/', 'GET', '', '192.168.0.104', '2023-12-30 17:31:32.129000', NULL),
(235, '/rentals/room/25/', 'GET', '', '192.168.0.104', '2023-12-30 17:32:20.858000', NULL),
(236, '/rentals/apartment/1/', 'GET', '', '192.168.0.104', '2023-12-30 17:32:31.549000', NULL),
(237, '/media/Appartments/main.jpg', 'GET', '', '192.168.0.104', '2023-12-30 17:32:33.820000', NULL),
(238, '/', 'GET', '', '192.168.0.104', '2023-12-30 17:32:48.827000', NULL),
(239, '/rentals/room/22/', 'GET', '', '192.168.0.104', '2023-12-30 17:32:56.180000', NULL),
(240, '/', 'GET', '', '192.168.0.104', '2023-12-30 17:37:48.300000', NULL),
(241, '/rentals/rooms/', 'GET', '', '192.168.0.103', '2023-12-30 18:18:23.557000', NULL),
(242, '/media/Rooms/room6.jpeg', 'GET', '', '192.168.0.103', '2023-12-30 18:18:25.782000', NULL),
(243, '/media/Rooms/room2_sX8z8n4.jpeg', 'GET', '', '192.168.0.103', '2023-12-30 18:18:25.818000', NULL),
(244, '/media/Rooms/room6_U0PPvd8.jpeg', 'GET', '', '192.168.0.103', '2023-12-30 18:18:25.833000', NULL),
(245, '/media/Rooms/room9.jpeg', 'GET', '', '192.168.0.103', '2023-12-30 18:18:25.849000', NULL),
(246, '/media/Rooms/room2.jpeg', 'GET', '', '192.168.0.103', '2023-12-30 18:18:25.867000', NULL),
(247, '/media/Rooms/room3_okgsSd2.jpeg', 'GET', '', '192.168.0.103', '2023-12-30 18:18:25.883000', NULL),
(248, '/media/Rooms/room6_ORu0vYp.jpeg', 'GET', '', '192.168.0.103', '2023-12-30 18:18:27.901000', NULL),
(249, '/media/Rooms/room4.jpeg', 'GET', '', '192.168.0.103', '2023-12-30 18:18:27.917000', NULL),
(250, '/media/Rooms/room1.jpeg', 'GET', '', '192.168.0.103', '2023-12-30 18:18:27.925000', NULL),
(251, '/media/Rooms/room4_bQFHsu2.jpeg', 'GET', '', '192.168.0.103', '2023-12-30 18:18:27.936000', NULL),
(252, '/media/Rooms/room4_59WOLzQ.jpeg', 'GET', '', '192.168.0.103', '2023-12-30 18:18:27.954000', NULL),
(253, '/media/Rooms/room9_FtMGlEW.jpeg', 'GET', '', '192.168.0.103', '2023-12-30 18:18:27.954000', NULL),
(254, '/media/Rooms/room4_zTe5Cqd.jpeg', 'GET', '', '192.168.0.103', '2023-12-30 18:18:29.978000', NULL),
(255, '/media/admin-interface/favicon/bowl-3.png', 'GET', '', '192.168.0.103', '2023-12-30 20:18:56.287000', 1),
(256, '/media/admin-interface/favicon/bowl-3.png', 'GET', '', '192.168.0.104', '2023-12-30 20:19:03.502000', 1),
(257, '/media/admin-interface/favicon/bowl-3.png', 'GET', '', '192.168.0.103', '2023-12-30 20:19:19.769000', 1),
(258, '/media/admin-interface/favicon/bowl-3.png', 'GET', '', '192.168.0.103', '2023-12-30 20:19:56.881000', 1),
(259, '/media/admin-interface/favicon/bowl-3.png', 'GET', '', '192.168.0.103', '2023-12-30 20:20:13.768000', 1),
(260, '/media/admin-interface/favicon/bowl-3.png', 'GET', '', '192.168.0.103', '2023-12-30 20:20:49.009000', 1),
(261, '/media/admin-interface/favicon/bowl-3.png', 'GET', '', '192.168.0.103', '2023-12-30 20:33:26.659000', 1),
(262, '/media/admin-interface/favicon/bowl-3.png', 'GET', '', '192.168.0.103', '2023-12-30 20:35:00.421000', 1),
(263, '/media/admin-interface/favicon/bowl-3.png', 'GET', '', '192.168.0.103', '2023-12-30 20:39:20.094000', 1),
(264, '/media/admin-interface/favicon/bowl-3.png', 'GET', '', '192.168.0.103', '2023-12-30 20:41:41.561000', 1),
(265, '/media/admin-interface/favicon/bowl-3.png', 'GET', '', '192.168.0.104', '2023-12-30 20:44:07.840000', 1),
(266, '/media/admin-interface/favicon/bowl-3.png', 'GET', '', '192.168.0.103', '2023-12-30 20:45:45.793000', 1),
(267, '/media/admin-interface/logo/bowl-2.png', 'GET', '', '192.168.0.103', '2023-12-30 20:46:51.083000', 1),
(268, '/media/admin-interface/logo/bowl-2.png', 'GET', '', '192.168.0.103', '2023-12-30 20:47:02.349000', 1),
(269, '/media/admin-interface/favicon/bowl-3.png', 'GET', '', '192.168.0.103', '2023-12-30 20:49:20.203000', 1),
(270, '/media/admin-interface/favicon/bowl-3.png', 'GET', '', '192.168.0.103', '2023-12-30 20:52:27.363000', 1),
(271, '/media/admin-interface/favicon/bowl-3.png', 'GET', '', '192.168.0.104', '2023-12-30 21:06:11.561000', 1),
(272, '/media/admin-interface/favicon/bowl-3.png', 'GET', '', '192.168.0.103', '2023-12-30 21:12:24.653000', 1),
(273, '/media/admin-interface/favicon/bowl-3.png', 'GET', '', '192.168.0.104', '2023-12-30 21:13:45.764000', 1),
(274, '/rentals/rooms/', 'GET', '', '192.168.0.103', '2023-12-31 09:35:09.593000', NULL),
(275, '/media/Rooms/20231203_213544.jpg', 'GET', '', '192.168.0.103', '2023-12-31 09:35:12.609000', NULL),
(276, '/media/Rooms/room6.jpeg', 'GET', '', '192.168.0.103', '2023-12-31 09:35:12.627000', NULL),
(277, '/media/Rooms/room3_Lor2z7h.jpeg', 'GET', '', '192.168.0.103', '2023-12-31 09:35:12.705000', NULL),
(278, '/media/Rooms/room2_sX8z8n4.jpeg', 'GET', '', '192.168.0.103', '2023-12-31 09:35:12.736000', NULL),
(279, '/media/Rooms/room6_U0PPvd8.jpeg', 'GET', '', '192.168.0.103', '2023-12-31 09:35:12.776000', NULL),
(280, '/media/Rooms/room9.jpeg', 'GET', '', '192.168.0.103', '2023-12-31 09:35:12.844000', NULL),
(281, '/media/Rooms/room2.jpeg', 'GET', '', '192.168.0.103', '2023-12-31 09:35:14.731000', NULL),
(282, '/media/Rooms/room3_okgsSd2.jpeg', 'GET', '', '192.168.0.103', '2023-12-31 09:35:14.764000', NULL),
(283, '/media/Rooms/room6_ORu0vYp.jpeg', 'GET', '', '192.168.0.103', '2023-12-31 09:35:14.809000', NULL),
(284, '/media/Rooms/room4.jpeg', 'GET', '', '192.168.0.103', '2023-12-31 09:35:14.810000', NULL),
(285, '/media/Rooms/room1.jpeg', 'GET', '', '192.168.0.103', '2023-12-31 09:35:14.840000', NULL),
(286, '/media/Rooms/room4_bQFHsu2.jpeg', 'GET', '', '192.168.0.103', '2023-12-31 09:35:14.920000', NULL),
(287, '/media/Rooms/room4_59WOLzQ.jpeg', 'GET', '', '192.168.0.103', '2023-12-31 09:35:16.797000', NULL),
(288, '/media/Rooms/room9_FtMGlEW.jpeg', 'GET', '', '192.168.0.103', '2023-12-31 09:35:16.828000', NULL),
(289, '/media/Rooms/room4_zTe5Cqd.jpeg', 'GET', '', '192.168.0.103', '2023-12-31 09:35:16.877000', NULL),
(290, '/media/admin-interface/favicon/bowl-3.png', 'GET', '', '192.168.0.103', '2023-12-31 09:36:28.216000', 1),
(291, '/', 'GET', '', '127.0.0.1', '2024-07-03 20:33:15.509121', NULL),
(292, '/media/Rooms/20231203_213544.jpg', 'GET', '', '127.0.0.1', '2024-07-03 20:33:15.872635', NULL),
(293, '/media/Rooms/room6.jpeg', 'GET', '', '127.0.0.1', '2024-07-03 20:33:15.915303', NULL),
(294, '/media/Rooms/room4_bQFHsu2.jpeg', 'GET', '', '127.0.0.1', '2024-07-03 20:33:15.998161', NULL),
(295, '/rentals/rooms/', 'GET', '', '127.0.0.1', '2024-07-03 20:33:25.948295', NULL),
(296, '/media/Rooms/room1.jpeg', 'GET', '', '127.0.0.1', '2024-07-03 20:33:26.166379', NULL),
(297, '/media/Rooms/room4.jpeg', 'GET', '', '127.0.0.1', '2024-07-03 20:33:26.203595', NULL),
(298, '/media/Rooms/room2.jpeg', 'GET', '', '127.0.0.1', '2024-07-03 20:33:26.200077', NULL),
(299, '/media/Rooms/room4_zTe5Cqd.jpeg', 'GET', '', '127.0.0.1', '2024-07-03 20:33:26.213133', NULL),
(300, '/media/Rooms/room9_FtMGlEW.jpeg', 'GET', '', '127.0.0.1', '2024-07-03 20:33:26.219130', NULL),
(301, '/media/Rooms/room9.jpeg', 'GET', '', '127.0.0.1', '2024-07-03 20:33:26.241778', NULL),
(302, '/media/Rooms/room4_59WOLzQ.jpeg', 'GET', '', '127.0.0.1', '2024-07-03 20:33:26.237184', NULL),
(303, '/media/Rooms/room6_ORu0vYp.jpeg', 'GET', '', '127.0.0.1', '2024-07-03 20:33:26.317031', NULL),
(304, '/media/Rooms/room3_okgsSd2.jpeg', 'GET', '', '127.0.0.1', '2024-07-03 20:33:26.325540', NULL),
(305, '/media/Rooms/room6_U0PPvd8.jpeg', 'GET', '', '127.0.0.1', '2024-07-03 20:33:26.331120', NULL),
(306, '/media/Rooms/room2_sX8z8n4.jpeg', 'GET', '', '127.0.0.1', '2024-07-03 20:33:26.338128', NULL),
(307, '/media/Rooms/room3_Lor2z7h.jpeg', 'GET', '', '127.0.0.1', '2024-07-03 20:33:26.356185', NULL),
(308, '/rentals/apartment/4/', 'GET', '', '127.0.0.1', '2024-07-03 20:33:36.810844', NULL),
(309, '/media/Appartments/apartment2.jpeg', 'GET', '', '127.0.0.1', '2024-07-03 20:33:37.022822', NULL),
(310, '/', 'GET', '', '127.0.0.1', '2024-07-03 20:33:44.715615', NULL),
(311, '/rentals/rooms/', 'GET', '', '127.0.0.1', '2024-07-03 20:33:54.016082', NULL),
(312, '/rentals/rooms/', 'GET', '', '127.0.0.1', '2024-07-03 20:35:10.669355', NULL),
(313, '/login_user/', 'POST', '', '127.0.0.1', '2024-07-03 20:36:15.009036', NULL),
(314, '/', 'GET', '', '127.0.0.1', '2024-07-03 20:36:15.249945', NULL),
(315, '/login_user/', 'POST', '', '127.0.0.1', '2024-07-03 20:36:29.716044', NULL),
(316, '/', 'GET', '', '127.0.0.1', '2024-07-03 20:36:29.962287', NULL),
(317, '/login_user/', 'POST', '', '127.0.0.1', '2024-07-03 20:36:42.319371', NULL),
(318, '/', 'GET', '', '127.0.0.1', '2024-07-03 20:36:42.569723', NULL),
(319, '/login_user/', 'POST', '', '127.0.0.1', '2024-07-03 20:37:06.648006', NULL),
(320, '/', 'GET', '', '127.0.0.1', '2024-07-03 20:37:06.889461', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `rental_app_apartments`
--

CREATE TABLE `rental_app_apartments` (
  `id` bigint(20) NOT NULL,
  `apartment_name` varchar(80) NOT NULL,
  `description` longtext NOT NULL,
  `facilities` longtext DEFAULT NULL,
  `image` varchar(100) NOT NULL,
  `paid_for` longtext DEFAULT NULL,
  `location` varchar(500) NOT NULL,
  `date_created` datetime(6) NOT NULL,
  `date_updated` datetime(6) NOT NULL,
  `landlord_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `rental_app_apartments`
--

INSERT INTO `rental_app_apartments` (`id`, `apartment_name`, `description`, `facilities`, `image`, `paid_for`, `location`, `date_created`, `date_updated`, `landlord_id`) VALUES
(1, 'Zion', 'A very good and clean apartment', 'bed\r\nchair\r\nmattress\r\ntable', 'Appartments/main.jpg', 'wifi, electricity', 'Taita Taveta University, Gate C', '2023-11-22 07:56:46.719000', '2023-12-29 20:43:27.474000', 2),
(2, 'Riesta', 'Well secured appartment', 'bed and mattress', 'Appartments/R.jpeg', 'wifi and water', 'Taita Taveta University, 200m from Gate C', '2023-11-22 08:00:00.558000', '2023-11-22 08:00:00.558000', 1),
(3, 'Maroon', 'One floor apartment with only 24 beautiful rooms', 'fun and clean water', 'Appartments/OIP.jpeg', 'wifi\r\nbed', 'Taita Taveta University, 100m from Gate A', '2023-11-22 08:16:40.636000', '2023-11-22 08:16:40.636000', 2),
(4, 'LionsGate', 'Clean and well secured apartment', 'wifi and water', 'Appartments/apartment2.jpeg', 'furniture', 'Voi town, opposite Equity bank', '2023-11-22 08:22:54.791000', '2023-11-22 08:22:54.791000', 1),
(5, 'Boabab', 'well secured and clean apartment', 'Bed\r\nMattress\r\nChair\r\nTable\r\nCooking area', 'Appartments/main_xhZzO0R.jpg', 'Wi-Fi\r\nwater', '150m from gate C, Taita Taveta School', '2023-11-23 16:08:13.137000', '2023-11-25 10:41:57.882000', 6),
(6, 'White House', 'luxarious apartment with spacius rooms', 'water', 'Appartments/main_sQxPHQz.jpg', 'Wi-Fi', '500 m from gate B, Voi School', '2023-11-23 16:12:35.607000', '2023-11-23 17:27:29.361000', 1);

-- --------------------------------------------------------

--
-- Table structure for table `rental_app_booking_history`
--

CREATE TABLE `rental_app_booking_history` (
  `id` bigint(20) NOT NULL,
  `date_booked` datetime(6) NOT NULL,
  `room_id` bigint(20) DEFAULT NULL,
  `user_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `rental_app_booking_history`
--

INSERT INTO `rental_app_booking_history` (`id`, `date_booked`, `room_id`, `user_id`) VALUES
(2, '2023-11-22 17:54:53.586000', NULL, 1),
(3, '2023-11-22 18:16:29.161000', NULL, 2),
(4, '2023-11-22 18:23:29.717000', 10, 1),
(6, '2023-11-23 10:06:58.065000', 8, 3),
(7, '2023-11-24 17:50:21.221000', NULL, 1),
(9, '2023-11-25 10:59:28.428000', NULL, 1),
(10, '2023-11-25 11:02:41.347000', NULL, 1),
(12, '2023-11-25 11:25:39.507000', 9, 1),
(13, '2023-11-25 11:26:21.422000', 9, 1),
(14, '2023-11-28 15:17:29.742000', 20, 1),
(15, '2023-11-30 11:32:14.691000', 7, 4);

-- --------------------------------------------------------

--
-- Table structure for table `rental_app_page`
--

CREATE TABLE `rental_app_page` (
  `id` bigint(20) NOT NULL,
  `type` varchar(50) NOT NULL,
  `details` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `rental_app_page`
--

INSERT INTO `rental_app_page` (`id`, `type`, `details`) VALUES
(1, 'Terms of Use', '<align=\"justify\"><font size=\"2\"><strong><font color=\"#990000\">(1) ACCEPTANCE OF TERMS</font><br><br></strong>Welcome to Yahoo! India. 1Yahoo Web Services India Private Limited Yahoo\", \"we\" or \"us\" as the case may be) provides the Service (defined below) to you, subject to the following Terms of Service (\"TOS\"), which may be updated by us from time to time without notice to you. You can review the most current version of the TOS at any time at: <a href=\"http://in.docs.yahoo.com/info/terms/\">http://in.docs.yahoo.com/info/terms/</a>. In addition, when using particular Yahoo services or third party services, you and Yahoo shall be subject to any posted guidelines or rules applicable to such services which may be posted from time to time. All such guidelines or rules, which maybe subject to change, are hereby incorporated by reference into the TOS. In most cases the guides and rules are specific to a particular part of the Service and will assist you in applying the TOS to that part, but to the extent of any inconsistency between the TOS and any guide or rule, the TOS will prevail. We may also offer other services from time to time that are governed by different Terms of Services, in which case the TOS do not apply to such other services if and to the extent expressly excluded by such different Terms of Services. Yahoo also may offer other services from time to time that are governed by different Terms of Services. These TOS do not apply to such other services that are governed by different Terms of Service. </font></p>\r\n<p align=\"justify\"><font size=\"2\">Welcome to Yahoo! India. Yahoo Web Services India Private Limited Yahoo\", \"we\" or \"us\" as the case may be) provides the Service (defined below) to you, subject to the following Terms of Service (\"TOS\"), which may be updated by us from time to time without notice to you. You can review the most current version of the TOS at any time at: </font><a href=\"http://in.docs.yahoo.com/info/terms/\"><font size=\"2\">http://in.docs.yahoo.com/info/terms/</font></a><font size=\"2\">. In addition, when using particular Yahoo services or third party services, you and Yahoo shall be subject to any posted guidelines or rules applicable to such services which may be posted from time to time. All such guidelines or rules, which maybe subject to change, are hereby incorporated by reference into the TOS. In most cases the guides and rules are specific to a particular part of the Service and will assist you in applying the TOS to that part, but to the extent of any inconsistency between the TOS and any guide or rule, the TOS will prevail. We may also offer other services from time to time that are governed by different Terms of Services, in which case the TOS do not apply to such other services if and to the extent expressly excluded by such different Terms of Services. Yahoo also may offer other services from time to time that are governed by different Terms of Services. These TOS do not apply to such other services that are governed by different Terms of Service. </font></p>\r\n<p align=\"justify\"><font size=\"2\">Welcome to Yahoo! India. Yahoo Web Services India Private Limited Yahoo\", \"we\" or \"us\" as the case may be) provides the Service (defined below) to you, subject to the following Terms of Service (\"TOS\"), which may be updated by us from time to time without notice to you. You can review the most current version of the TOS at any time at: </font><a href=\"http://in.docs.yahoo.com/info/terms/\"><font size=\"2\">http://in.docs.yahoo.com/info/terms/</font></a><font size=\"2\">. In addition, when using particular Yahoo services or third party services, you and Yahoo shall be subject to any posted guidelines or rules applicable to such services which may be posted from time to time. All such guidelines or rules, which maybe subject to change, are hereby incorporated by reference into the TOS. In most cases the guides and rules are specific to a particular part of the Service and will assist you in applying the TOS to that part, but to the extent of any inconsistency between the TOS and any guide or rule, the TOS will prevail. We may also offer other services from time to time that are governed by different Terms of Services, in which case the TOS do not apply to such other services if and to the extent expressly excluded by such different Terms of Services. Yahoo also may offer other services from time to time that are governed by different Terms of Services. These TOS do not apply to such other services that are governed by different Terms of Service. </font></p>'),
(2, 'Privacy Policy', '<span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">This privacy policy explains how RBMS collects, uses, shares, and protects your personal information when you visit or use our website, RBMS. Please read this policy carefully before you provide us with any personal information.\r\n\r\nWhat information do we collect?\r\n\r\nWe collect personal information that you voluntarily provide to us when you register on the website, place an order, subscribe to our newsletter, participate in a survey, contact us, or otherwise interact with the website. The personal information that we collect may include your name, email address, phone number, billing address, shipping address, payment information, and any other information that you choose to provide.\r\n\r\nWe also collect some information automatically when you visit the website, such as your IP address, browser type, device type, operating system, referring URL, pages viewed, links clicked, and other usage data. We use cookies and other tracking technologies to collect this information and to improve your browsing experience, personalize content and ads, analyze website traffic, and provide social media features. You can learn more about how we use cookies and how you can manage your cookie preferences in our Cookie Policy.</span>'),
(3, 'About', '<div><span style=\"color: rgb(0, 0, 0); font-family: Georgia; font-size: 15px; text-align: justify; font-weight: bold;\">Welcome to Room Booking Management System!!!</span></div><span style=\"font-family: &quot;courier new&quot;;\"><span style=\"color: rgb(0, 0, 0); font-size: 15px; text-align: justify;\">Since then, our courteous and committed team members have always ensured a pleasant and enjoyable room booking for the clients. This arduous effort has enabled Safe &amp; Secure to be recognized as a dependable booking Solutions provider with three offices in Nairobi.</span><span style=\"color: rgb(80, 80, 80); font-size: 13px;\">&nbsp;We have got rooms to suit the discerning tenants\'s budget and savor. Book your dream room online. Supported quality and proposals of our book consultants, we have a tendency to welcome you to decide on according to your plan.</span></span>'),
(4, 'Contact Us', '<span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">Address------J-890 Harambee House Nairobi-110096</span>');

-- --------------------------------------------------------

--
-- Table structure for table `rental_app_rooms`
--

CREATE TABLE `rental_app_rooms` (
  `id` bigint(20) NOT NULL,
  `room_number` varchar(50) NOT NULL,
  `size` varchar(30) NOT NULL,
  `room_type_id` bigint(20) NOT NULL,
  `booked` tinyint(1) NOT NULL,
  `rent` int(10) UNSIGNED NOT NULL CHECK (`rent` >= 0),
  `image` varchar(100) NOT NULL,
  `date_created` datetime(6) NOT NULL,
  `date_updated` datetime(6) NOT NULL,
  `apartment_id` bigint(20) NOT NULL,
  `tenant_id` bigint(20) DEFAULT NULL,
  `rate` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `rental_app_rooms`
--

INSERT INTO `rental_app_rooms` (`id`, `room_number`, `size`, `room_type_id`, `booked`, `rent`, `image`, `date_created`, `date_updated`, `apartment_id`, `tenant_id`, `rate`) VALUES
(1, 'Z-23', '120 sq cm', 3, 0, 3200, 'Rooms/room1.jpeg', '2023-11-22 08:26:49.176000', '2023-11-25 11:05:44.360000', 1, NULL, 'Per Month'),
(3, 'M-15', '150 sq ft', 1, 0, 5000, 'Rooms/room2.jpeg', '2023-11-22 08:28:08.631000', '2023-11-28 09:15:52.811000', 3, 1, 'Per Month'),
(4, 'M-20', '150 sq ft', 1, 0, 5000, 'Rooms/room4.jpeg', '2023-11-22 08:28:55.868000', '2023-11-25 11:08:15.587000', 3, NULL, 'Per Month'),
(6, 'Z-13', '120 sq cm', 1, 0, 4500, 'Rooms/room6.jpeg', '2023-11-22 08:30:15.342000', '2023-12-29 15:42:00.812000', 1, NULL, 'Per Month'),
(7, 'L-14', '250 sq ft', 2, 0, 7500, 'Rooms/room9.jpeg', '2023-11-22 08:31:08.049000', '2023-11-30 11:32:14.696000', 4, 4, 'Per Month'),
(8, 'L-20', '250 sq ft', 2, 0, 7500, 'Rooms/room9_FtMGlEW.jpeg', '2023-11-22 08:31:44.332000', '2023-11-23 10:07:08.297000', 4, 3, 'Per Month'),
(9, 'L-01', '200 sq ft', 1, 1, 6500, 'Rooms/room7.jpg', '2023-11-22 08:32:37.867000', '2023-11-25 11:26:32.452000', 4, 1, 'Per Month'),
(10, 'A-05', '120sq cm', 5, 1, 6500, 'Rooms/room5_fffVofJ.jpeg', '2023-11-22 08:33:34.785000', '2023-11-24 13:59:03.027000', 2, 1, 'Per Month'),
(11, 'L-24', '100 sq cm', 3, 0, 200, 'Rooms/room4_zTe5Cqd.jpeg', '2023-11-22 13:34:33.148000', '2023-11-22 13:34:33.148000', 4, NULL, 'Per Hour'),
(19, 'R-20', '145sq m', 1, 0, 6500, 'Rooms/room4_59WOLzQ.jpeg', '2023-11-23 13:58:13.987000', '2023-11-23 13:58:13.987000', 2, NULL, 'Per Month'),
(20, 'W-25', '200sq m', 1, 1, 4800, 'Rooms/room2_wZeBciZ.jpeg', '2023-11-23 16:20:31.383000', '2023-11-28 15:17:29.756000', 6, 1, 'Per Month'),
(21, 'W-06', '200sq m', 5, 0, 3600, 'Rooms/room6_ORu0vYp.jpeg', '2023-11-23 17:36:53.099000', '2023-11-28 08:49:12.130000', 6, 1, 'Per Month'),
(22, 'B-34', '250 sq ft', 3, 0, 300, 'Rooms/room4_bQFHsu2.jpeg', '2023-11-25 10:46:38.688000', '2023-11-25 10:51:55.796000', 5, 1, 'Per Day'),
(23, 'M-34', '200sq m', 4, 0, 25000, 'Rooms/room3_okgsSd2.jpeg', '2023-11-28 09:14:05.399000', '2023-11-28 09:14:05.399000', 3, NULL, 'Per Month'),
(24, 'Z-05', '200sq m', 1, 0, 1200, 'Rooms/room6_U0PPvd8.jpeg', '2023-12-15 15:33:34.086000', '2023-12-15 15:33:34.086000', 1, NULL, 'Per Day'),
(25, 'Z-02', '200sq m', 6, 0, 8500, 'Rooms/room2_sX8z8n4.jpeg', '2023-12-28 12:51:38.859000', '2023-12-28 12:51:38.859000', 1, NULL, 'Per Month'),
(26, 'M-23', '340sq feet', 3, 1, 500, 'Rooms/room4_dAzFToR.jpeg', '2023-12-28 12:53:13.408000', '2023-12-28 12:53:13.408000', 3, NULL, 'Per Day'),
(29, 'Z-04', '120sq m', 7, 0, 5500, 'Rooms/room3_Lor2z7h.jpeg', '2023-12-28 13:30:06.647000', '2023-12-28 13:30:06.647000', 1, NULL, 'Per Month');

-- --------------------------------------------------------

--
-- Table structure for table `rental_app_roomtype`
--

CREATE TABLE `rental_app_roomtype` (
  `id` bigint(20) NOT NULL,
  `room_type` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `rental_app_roomtype`
--

INSERT INTO `rental_app_roomtype` (`id`, `room_type`) VALUES
(1, 'Bedsitter'),
(6, 'Go Down'),
(2, 'One-Bedroom'),
(7, 'Shared room'),
(5, 'Single room'),
(3, 'Studio'),
(4, 'Two-Bedroom');

-- --------------------------------------------------------

--
-- Table structure for table `rental_app_social_media`
--

CREATE TABLE `rental_app_social_media` (
  `id` bigint(20) NOT NULL,
  `name` varchar(50) NOT NULL,
  `link` varchar(250) NOT NULL,
  `icon` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `rental_app_social_media`
--

INSERT INTO `rental_app_social_media` (`id`, `name`, `link`, `icon`) VALUES
(1, 'Facebook', '#', 'facebook'),
(2, 'Twitter', 'https://twitter.com/Joseph_Indieka', 'twitter'),
(3, 'Flickr', '#', 'flickr'),
(4, 'Google+', '#', 'googleplus'),
(5, 'Dribbble', '#', 'dribbble');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accounts_administrator`
--
ALTER TABLE `accounts_administrator`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_id` (`user_id`);

--
-- Indexes for table `accounts_customuser`
--
ALTER TABLE `accounts_customuser`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `phone` (`phone`);

--
-- Indexes for table `accounts_customuser_groups`
--
ALTER TABLE `accounts_customuser_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `accounts_customuser_groups_customuser_id_group_id_c074bdcb_uniq` (`customuser_id`,`group_id`),
  ADD KEY `accounts_customuser_groups_group_id_86ba5f9e_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `accounts_customuser_user_permissions`
--
ALTER TABLE `accounts_customuser_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `accounts_customuser_user_customuser_id_permission_9632a709_uniq` (`customuser_id`,`permission_id`),
  ADD KEY `accounts_customuser__permission_id_aea3d0e5_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `accounts_landlord`
--
ALTER TABLE `accounts_landlord`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_id` (`user_id`);

--
-- Indexes for table `accounts_prospectivetenant`
--
ALTER TABLE `accounts_prospectivetenant`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_id` (`user_id`);

--
-- Indexes for table `admin_interface_theme`
--
ALTER TABLE `admin_interface_theme`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admin_interface_theme_name_30bda70f_uniq` (`name`);

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_accounts_customuser_id` (`user_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indexes for table `easyaudit_crudevent`
--
ALTER TABLE `easyaudit_crudevent`
  ADD PRIMARY KEY (`id`),
  ADD KEY `easyaudit_crudevent_content_type_id_618ed0c6_fk_django_co` (`content_type_id`),
  ADD KEY `easyaudit_crudevent_user_id_09177b54_fk_accounts_customuser_id` (`user_id`),
  ADD KEY `easyaudit_crudevent_object_id_content_type_id_48e7e97f_idx` (`object_id`,`content_type_id`);

--
-- Indexes for table `easyaudit_loginevent`
--
ALTER TABLE `easyaudit_loginevent`
  ADD PRIMARY KEY (`id`),
  ADD KEY `easyaudit_loginevent_user_id_f47fcbfb_fk_accounts_customuser_id` (`user_id`),
  ADD KEY `easyaudit_loginevent_remote_ip_52fb5c3c` (`remote_ip`);

--
-- Indexes for table `easyaudit_requestevent`
--
ALTER TABLE `easyaudit_requestevent`
  ADD PRIMARY KEY (`id`),
  ADD KEY `easyaudit_requesteve_user_id_da412f45_fk_accounts_` (`user_id`),
  ADD KEY `easyaudit_requestevent_method_83a0c884` (`method`),
  ADD KEY `easyaudit_requestevent_remote_ip_d43af9b2` (`remote_ip`),
  ADD KEY `easyaudit_requestevent_url_37d1b8c4` (`url`),
  ADD KEY `easyaudit_requestevent_datetime_8ce2b5a3` (`datetime`);

--
-- Indexes for table `rental_app_apartments`
--
ALTER TABLE `rental_app_apartments`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `apartment_name` (`apartment_name`),
  ADD KEY `rental_app_apartment_landlord_id_75e9ce50_fk_accounts_` (`landlord_id`);

--
-- Indexes for table `rental_app_booking_history`
--
ALTER TABLE `rental_app_booking_history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `rental_app_booking_h_room_id_ece31507_fk_rental_ap` (`room_id`),
  ADD KEY `rental_app_booking_h_user_id_2bf44900_fk_accounts_` (`user_id`);

--
-- Indexes for table `rental_app_page`
--
ALTER TABLE `rental_app_page`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rental_app_rooms`
--
ALTER TABLE `rental_app_rooms`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `rental_app_rooms_room_number_apartment_id_538a1433_uniq` (`room_number`,`apartment_id`),
  ADD KEY `rental_app_rooms_apartment_id_59d9b7c7_fk_rental_ap` (`apartment_id`),
  ADD KEY `rental_app_rooms_tenant_id_26d80a46_fk_accounts_` (`tenant_id`),
  ADD KEY `rental_app_rooms_room_type_id_da9281fa` (`room_type_id`);

--
-- Indexes for table `rental_app_roomtype`
--
ALTER TABLE `rental_app_roomtype`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `room_type` (`room_type`);

--
-- Indexes for table `rental_app_social_media`
--
ALTER TABLE `rental_app_social_media`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `accounts_administrator`
--
ALTER TABLE `accounts_administrator`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `accounts_customuser`
--
ALTER TABLE `accounts_customuser`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `accounts_customuser_groups`
--
ALTER TABLE `accounts_customuser_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `accounts_customuser_user_permissions`
--
ALTER TABLE `accounts_customuser_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `accounts_landlord`
--
ALTER TABLE `accounts_landlord`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `accounts_prospectivetenant`
--
ALTER TABLE `accounts_prospectivetenant`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `admin_interface_theme`
--
ALTER TABLE `admin_interface_theme`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=84;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- AUTO_INCREMENT for table `easyaudit_crudevent`
--
ALTER TABLE `easyaudit_crudevent`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `easyaudit_loginevent`
--
ALTER TABLE `easyaudit_loginevent`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `easyaudit_requestevent`
--
ALTER TABLE `easyaudit_requestevent`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=321;

--
-- AUTO_INCREMENT for table `rental_app_apartments`
--
ALTER TABLE `rental_app_apartments`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `rental_app_booking_history`
--
ALTER TABLE `rental_app_booking_history`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `rental_app_page`
--
ALTER TABLE `rental_app_page`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `rental_app_rooms`
--
ALTER TABLE `rental_app_rooms`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `rental_app_roomtype`
--
ALTER TABLE `rental_app_roomtype`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `rental_app_social_media`
--
ALTER TABLE `rental_app_social_media`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `accounts_administrator`
--
ALTER TABLE `accounts_administrator`
  ADD CONSTRAINT `accounts_administrat_user_id_d91897b7_fk_accounts_` FOREIGN KEY (`user_id`) REFERENCES `accounts_customuser` (`id`);

--
-- Constraints for table `accounts_customuser_groups`
--
ALTER TABLE `accounts_customuser_groups`
  ADD CONSTRAINT `accounts_customuser__customuser_id_bc55088e_fk_accounts_` FOREIGN KEY (`customuser_id`) REFERENCES `accounts_customuser` (`id`),
  ADD CONSTRAINT `accounts_customuser_groups_group_id_86ba5f9e_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `accounts_customuser_user_permissions`
--
ALTER TABLE `accounts_customuser_user_permissions`
  ADD CONSTRAINT `accounts_customuser__customuser_id_0deaefae_fk_accounts_` FOREIGN KEY (`customuser_id`) REFERENCES `accounts_customuser` (`id`),
  ADD CONSTRAINT `accounts_customuser__permission_id_aea3d0e5_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`);

--
-- Constraints for table `accounts_landlord`
--
ALTER TABLE `accounts_landlord`
  ADD CONSTRAINT `accounts_landlord_user_id_c95bb3a2_fk_accounts_customuser_id` FOREIGN KEY (`user_id`) REFERENCES `accounts_customuser` (`id`);

--
-- Constraints for table `accounts_prospectivetenant`
--
ALTER TABLE `accounts_prospectivetenant`
  ADD CONSTRAINT `accounts_prospective_user_id_b7fe9301_fk_accounts_` FOREIGN KEY (`user_id`) REFERENCES `accounts_customuser` (`id`);

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_accounts_customuser_id` FOREIGN KEY (`user_id`) REFERENCES `accounts_customuser` (`id`);

--
-- Constraints for table `rental_app_apartments`
--
ALTER TABLE `rental_app_apartments`
  ADD CONSTRAINT `rental_app_apartment_landlord_id_75e9ce50_fk_accounts_` FOREIGN KEY (`landlord_id`) REFERENCES `accounts_landlord` (`id`);

--
-- Constraints for table `rental_app_booking_history`
--
ALTER TABLE `rental_app_booking_history`
  ADD CONSTRAINT `rental_app_booking_h_room_id_ece31507_fk_rental_ap` FOREIGN KEY (`room_id`) REFERENCES `rental_app_rooms` (`id`),
  ADD CONSTRAINT `rental_app_booking_h_user_id_2bf44900_fk_accounts_` FOREIGN KEY (`user_id`) REFERENCES `accounts_prospectivetenant` (`id`);

--
-- Constraints for table `rental_app_rooms`
--
ALTER TABLE `rental_app_rooms`
  ADD CONSTRAINT `rental_app_rooms_apartment_id_59d9b7c7_fk_rental_ap` FOREIGN KEY (`apartment_id`) REFERENCES `rental_app_apartments` (`id`),
  ADD CONSTRAINT `rental_app_rooms_room_type_id_da9281fa_fk_rental_app_roomtype_id` FOREIGN KEY (`room_type_id`) REFERENCES `rental_app_roomtype` (`id`),
  ADD CONSTRAINT `rental_app_rooms_tenant_id_26d80a46_fk_accounts_` FOREIGN KEY (`tenant_id`) REFERENCES `accounts_prospectivetenant` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
