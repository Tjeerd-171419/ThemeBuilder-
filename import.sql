-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Gegenereerd op: 07 jul 2023 om 13:31
-- Serverversie: 10.4.24-MariaDB
-- PHP-versie: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `wordpresstheme`
--

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `wpth_commentmeta`
--

CREATE TABLE `wpth_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `wpth_comments`
--

CREATE TABLE `wpth_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `comment_author` tinytext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT 0,
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'comment',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Gegevens worden geëxporteerd voor tabel `wpth_comments`
--

INSERT INTO `wpth_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'A WordPress Commenter', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2023-06-01 11:32:01', '2023-06-01 11:32:01', 'Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href=\"https://en.gravatar.com/\">Gravatar</a>.', 0, '1', '', 'comment', 0, 0);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `wpth_links`
--

CREATE TABLE `wpth_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT 1,
  `link_rating` int(11) NOT NULL DEFAULT 0,
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `wpth_options`
--

CREATE TABLE `wpth_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Gegevens worden geëxporteerd voor tabel `wpth_options`
--

INSERT INTO `wpth_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost/wordpress2', 'yes'),
(2, 'home', 'http://localhost/wordpress2', 'yes'),
(3, 'blogname', 'Theme Builder', 'yes'),
(4, 'blogdescription', 'Builder of themes', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'tj.wokke@googlemail.com', 'yes'),
(7, 'start_of_week', '1', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '1', 'yes'),
(12, 'posts_per_rss', '10', 'yes'),
(13, 'rss_use_excerpt', '0', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', 'open', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '1', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'F j, Y', 'yes'),
(24, 'time_format', 'H:i', 'yes'),
(25, 'links_updated_date_format', 'F j, Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%year%/%monthnum%/%day%/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:94:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:17:\"^wp-sitemap\\.xml$\";s:23:\"index.php?sitemap=index\";s:17:\"^wp-sitemap\\.xsl$\";s:36:\"index.php?sitemap-stylesheet=sitemap\";s:23:\"^wp-sitemap-index\\.xsl$\";s:34:\"index.php?sitemap-stylesheet=index\";s:48:\"^wp-sitemap-([a-z]+?)-([a-z\\d_-]+?)-(\\d+?)\\.xml$\";s:75:\"index.php?sitemap=$matches[1]&sitemap-subtype=$matches[2]&paged=$matches[3]\";s:34:\"^wp-sitemap-([a-z]+?)-(\\d+?)\\.xml$\";s:47:\"index.php?sitemap=$matches[1]&paged=$matches[2]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:58:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:68:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:88:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:64:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:53:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$\";s:91:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$\";s:85:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1\";s:77:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:65:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]\";s:61:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]\";s:47:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:57:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:77:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:53:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]\";s:51:\"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]\";s:38:\"([0-9]{4})/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&cpage=$matches[2]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:0:{}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'mijntheme', 'yes'),
(41, 'stylesheet', 'mijntheme', 'yes'),
(42, 'comment_registration', '0', 'yes'),
(43, 'html_type', 'text/html', 'yes'),
(44, 'use_trackback', '0', 'yes'),
(45, 'default_role', 'subscriber', 'yes'),
(46, 'db_version', '53496', 'yes'),
(47, 'uploads_use_yearmonth_folders', '1', 'yes'),
(48, 'upload_path', '', 'yes'),
(49, 'blog_public', '1', 'yes'),
(50, 'default_link_category', '2', 'yes'),
(51, 'show_on_front', 'posts', 'yes'),
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
(82, 'page_on_front', '0', 'yes'),
(83, 'default_post_format', '0', 'yes'),
(84, 'link_manager_enabled', '0', 'yes'),
(85, 'finished_splitting_shared_terms', '1', 'yes'),
(86, 'site_icon', '0', 'yes'),
(87, 'medium_large_size_w', '768', 'yes'),
(88, 'medium_large_size_h', '0', 'yes'),
(89, 'wp_page_for_privacy_policy', '3', 'yes'),
(90, 'show_comments_cookies_opt_in', '1', 'yes'),
(91, 'admin_email_lifespan', '1701171120', 'yes'),
(92, 'disallowed_keys', '', 'no'),
(93, 'comment_previously_approved', '1', 'yes'),
(94, 'auto_plugin_theme_update_emails', 'a:0:{}', 'no'),
(95, 'auto_update_core_dev', 'enabled', 'yes'),
(96, 'auto_update_core_minor', 'enabled', 'yes'),
(97, 'auto_update_core_major', 'enabled', 'yes'),
(98, 'wp_force_deactivated_plugins', 'a:0:{}', 'yes'),
(99, 'initial_db_version', '53496', 'yes'),
(100, 'wpth_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
(101, 'fresh_site', '0', 'yes'),
(102, 'user_count', '1', 'no'),
(103, 'widget_block', 'a:6:{i:2;a:1:{s:7:\"content\";s:19:\"<!-- wp:search /-->\";}i:3;a:1:{s:7:\"content\";s:154:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Recent Posts</h2><!-- /wp:heading --><!-- wp:latest-posts /--></div><!-- /wp:group -->\";}i:4;a:1:{s:7:\"content\";s:227:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Recent Comments</h2><!-- /wp:heading --><!-- wp:latest-comments {\"displayAvatar\":false,\"displayDate\":false,\"displayExcerpt\":false} /--></div><!-- /wp:group -->\";}i:5;a:1:{s:7:\"content\";s:146:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Archives</h2><!-- /wp:heading --><!-- wp:archives /--></div><!-- /wp:group -->\";}i:6;a:1:{s:7:\"content\";s:150:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Categories</h2><!-- /wp:heading --><!-- wp:categories /--></div><!-- /wp:group -->\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(104, 'sidebars_widgets', 'a:2:{s:19:\"wp_inactive_widgets\";a:5:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";i:3;s:7:\"block-5\";i:4;s:7:\"block-6\";}s:13:\"array_version\";i:3;}', 'yes'),
(105, 'cron', 'a:4:{i:1688729521;a:7:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}s:18:\"wp_https_detection\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1688729529;a:3:{s:21:\"wp_update_user_counts\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1688729530;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}s:7:\"version\";i:2;}', 'yes'),
(106, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_archives', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(112, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(113, 'widget_meta', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(114, 'widget_search', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(115, 'widget_recent-posts', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(116, 'widget_recent-comments', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(117, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(118, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(119, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(121, 'recovery_keys', 'a:0:{}', 'yes'),
(122, 'https_detection_errors', 'a:2:{s:23:\"ssl_verification_failed\";a:1:{i:0;s:24:\"SSL verification failed.\";}s:17:\"bad_response_code\";a:1:{i:0;s:9:\"Forbidden\";}}', 'yes'),
(123, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-6.2.2.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-6.2.2.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-6.2.2-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-6.2.2-new-bundled.zip\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:5:\"6.2.2\";s:7:\"version\";s:5:\"6.2.2\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"6.1\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1688728781;s:15:\"version_checked\";s:5:\"6.2.2\";s:12:\"translations\";a:0:{}}', 'no'),
(124, 'theme_mods_twentytwentythree', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1685619939;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";}s:9:\"sidebar-2\";a:2:{i:0;s:7:\"block-5\";i:1;s:7:\"block-6\";}}}}', 'yes'),
(129, '_site_transient_update_themes', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1688728786;s:7:\"checked\";a:4:{s:9:\"mijntheme\";s:0:\"\";s:15:\"twentytwentyone\";s:3:\"1.8\";s:17:\"twentytwentythree\";s:3:\"1.1\";s:15:\"twentytwentytwo\";s:3:\"1.4\";}s:8:\"response\";a:0:{}s:9:\"no_update\";a:3:{s:15:\"twentytwentyone\";a:6:{s:5:\"theme\";s:15:\"twentytwentyone\";s:11:\"new_version\";s:3:\"1.8\";s:3:\"url\";s:45:\"https://wordpress.org/themes/twentytwentyone/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/theme/twentytwentyone.1.8.zip\";s:8:\"requires\";s:3:\"5.3\";s:12:\"requires_php\";s:3:\"5.6\";}s:17:\"twentytwentythree\";a:6:{s:5:\"theme\";s:17:\"twentytwentythree\";s:11:\"new_version\";s:3:\"1.1\";s:3:\"url\";s:47:\"https://wordpress.org/themes/twentytwentythree/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/theme/twentytwentythree.1.1.zip\";s:8:\"requires\";s:3:\"6.1\";s:12:\"requires_php\";s:3:\"5.6\";}s:15:\"twentytwentytwo\";a:6:{s:5:\"theme\";s:15:\"twentytwentytwo\";s:11:\"new_version\";s:3:\"1.4\";s:3:\"url\";s:45:\"https://wordpress.org/themes/twentytwentytwo/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/theme/twentytwentytwo.1.4.zip\";s:8:\"requires\";s:3:\"5.9\";s:12:\"requires_php\";s:3:\"5.6\";}}s:12:\"translations\";a:0:{}}', 'no'),
(141, 'can_compress_scripts', '1', 'no'),
(150, 'finished_updating_comment_type', '1', 'yes'),
(151, 'current_theme', '', 'yes'),
(152, 'theme_mods_mijntheme', 'a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:18:\"custom_css_post_id\";i:-1;}', 'yes'),
(153, 'theme_switched', '', 'yes'),
(177, '_transient_health-check-site-status-result', '{\"good\":16,\"recommended\":4,\"critical\":1}', 'yes'),
(198, 'wp_calendar_block_has_published_posts', '1', 'yes'),
(212, 'recently_activated', 'a:0:{}', 'yes'),
(233, 'WPLANG', '', 'yes'),
(234, 'new_admin_email', 'tj.wokke@googlemail.com', 'yes'),
(257, '_site_transient_timeout_theme_roots', '1688730585', 'no'),
(258, '_site_transient_theme_roots', 'a:4:{s:9:\"mijntheme\";s:7:\"/themes\";s:15:\"twentytwentyone\";s:7:\"/themes\";s:17:\"twentytwentythree\";s:7:\"/themes\";s:15:\"twentytwentytwo\";s:7:\"/themes\";}', 'no'),
(259, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1688728786;s:8:\"response\";a:1:{s:19:\"akismet/akismet.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:3:\"5.2\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:54:\"https://downloads.wordpress.org/plugin/akismet.5.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:60:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=2818463\";s:2:\"1x\";s:60:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=2818463\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:63:\"https://ps.w.org/akismet/assets/banner-1544x500.png?rev=2900731\";s:2:\"1x\";s:62:\"https://ps.w.org/akismet/assets/banner-772x250.png?rev=2900731\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"5.8\";s:6:\"tested\";s:5:\"6.2.2\";s:12:\"requires_php\";s:6:\"5.6.20\";}}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:1:{s:9:\"hello.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:5:\"1.7.2\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/hello-dolly.1.7.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=2052855\";s:2:\"1x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=2052855\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/hello-dolly/assets/banner-1544x500.jpg?rev=2645582\";s:2:\"1x\";s:66:\"https://ps.w.org/hello-dolly/assets/banner-772x250.jpg?rev=2052855\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.6\";}}s:7:\"checked\";a:2:{s:19:\"akismet/akismet.php\";s:3:\"5.1\";s:9:\"hello.php\";s:5:\"1.7.2\";}}', 'no');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `wpth_postmeta`
--

CREATE TABLE `wpth_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Gegevens worden geëxporteerd voor tabel `wpth_postmeta`
--

INSERT INTO `wpth_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 3, '_wp_page_template', 'default'),
(3, 6, '_edit_lock', '1686828684:1'),
(6, 9, '_edit_lock', '1688033468:1'),
(10, 2, '_edit_lock', '1688032404:1'),
(11, 6, '_wp_trash_meta_status', 'publish'),
(12, 6, '_wp_trash_meta_time', '1688030816'),
(13, 6, '_wp_desired_post_slug', 'over-ons-pagina'),
(14, 1, '_edit_lock', '1688033322:1'),
(30, 3, '_edit_lock', '1688033672:1'),
(32, 24, '_edit_lock', '1688034087:1'),
(33, 24, '_wp_trash_meta_status', 'publish'),
(34, 24, '_wp_trash_meta_time', '1688034236'),
(35, 24, '_wp_desired_post_slug', 'pagina-2');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `wpth_posts`
--

CREATE TABLE `wpth_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `guid` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT 0,
  `post_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Gegevens worden geëxporteerd voor tabel `wpth_posts`
--

INSERT INTO `wpth_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2023-06-01 11:32:01', '2023-06-01 11:32:01', '<!-- wp:paragraph -->\n<p>Titel: Tips voor het opstarten van een succesvolle blog</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Het opstarten van een blog kan een spannende onderneming zijn, maar het kan ook overweldigend lijken. Hier zijn enkele tips om u op weg te helpen naar het opbouwen van een succesvolle blog. Ten eerste is het belangrijk om uw doelgroep te begrijpen en te bepalen waarover u wilt schrijven. Kies een niche waarin u gepassioneerd bent en waarin u waardevolle kennis kunt delen. Dit zal u helpen om een gericht publiek aan te trekken en autoriteit op te bouwen in uw vakgebied.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Daarnaast is het essentieel om consistente en kwalitatieve inhoud te leveren. Maak een contentstrategie en plan regelmatige berichten om uw lezers betrokken te houden. Zorg ervoor dat uw inhoud goed geschreven, informatief en boeiend is. Voeg visuele elementen toe, zoals afbeeldingen en video\'s, om de aantrekkelijkheid te vergroten. Vergeet ook niet om te communiceren met uw lezers via reacties en sociale media. Het opbouwen van een betrokken gemeenschap zal uw blog helpen groeien en uw bereik vergroten.</p>\n<!-- /wp:paragraph -->', 'Succesvolle blog', '', 'publish', 'open', 'open', '', 'hello-world', '', '', '2023-06-29 10:09:03', '2023-06-29 10:09:03', '', 0, 'http://localhost/wordpress2/?p=1', 0, 'post', '', 1),
(2, 1, '2023-06-01 11:32:01', '2023-06-01 11:32:01', '<!-- wp:paragraph -->\n<p>Over MijnBedrijf</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Bij MijnBedrijf hebben we een passie voor het leveren van uitstekende producten en diensten aan onze klanten. Sinds onze oprichting in 2005 hebben we ons toegewijd aan het voldoen aan de behoeften en verwachtingen van onze klanten. Ons ervaren team van professionals beschikt over diepgaande expertise in verschillende sectoren en werkt samen om hoogwaardige oplossingen te bieden. We geloven in het opbouwen van langdurige relaties met onze klanten, gebaseerd op vertrouwen, integriteit en wederzijds succes.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Bij MijnBedrijf streven we naar innovatie en continue verbetering. We volgen de laatste ontwikkelingen in onze branche en passen geavanceerde technologieën en best practices toe om onze producten en diensten voortdurend te verbeteren. We begrijpen dat elke klant unieke uitdagingen heeft, en daarom bieden we op maat gemaakte oplossingen die aansluiten bij hun specifieke behoeften. Onze focus ligt op het leveren van kwaliteit, betrouwbaarheid en waarde aan elke klant die we bedienen. We streven ernaar om niet alleen aan de verwachtingen te voldoen, maar deze te overtreffen.</p>\n<!-- /wp:paragraph -->', 'Over ons', '', 'publish', 'closed', 'open', '', 'sample-page', '', '', '2023-06-29 09:26:40', '2023-06-29 09:26:40', '', 0, 'http://localhost/wordpress2/?page_id=2', 0, 'page', '', 0),
(3, 1, '2023-06-01 11:32:01', '2023-06-01 11:32:01', '<!-- wp:heading --><h2>Who we are</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Our website address is: http://localhost/wordpress2.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Comments</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Media</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Cookies</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Embedded content from other websites</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Who we share your data with</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you request a password reset, your IP address will be included in the reset email.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>How long we retain your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What rights you have over your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Where your data is sent</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Visitor comments may be checked through an automated spam detection service.</p><!-- /wp:paragraph -->', 'Privacy Policy', '', 'draft', 'closed', 'open', '', 'privacy-policy', '', '', '2023-06-01 11:32:01', '2023-06-01 11:32:01', '', 0, 'http://localhost/wordpress2/?page_id=3', 0, 'page', '', 0),
(6, 1, '2023-06-15 11:17:12', '2023-06-15 11:17:12', '<!-- wp:paragraph -->\n<p>Over MijnBedrijf</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Bij MijnBedrijf hebben we een passie voor het leveren van uitstekende producten en diensten aan onze klanten. Sinds onze oprichting in 2005 hebben we ons toegewijd aan het voldoen aan de behoeften en verwachtingen van onze klanten. Ons ervaren team van professionals beschikt over diepgaande expertise in verschillende sectoren en werkt samen om hoogwaardige oplossingen te bieden. We geloven in het opbouwen van langdurige relaties met onze klanten, gebaseerd op vertrouwen, integriteit en wederzijds succes.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Bij MijnBedrijf streven we naar innovatie en continue verbetering. We volgen de laatste ontwikkelingen in onze branche en passen geavanceerde technologieën en best practices toe om onze producten en diensten voortdurend te verbeteren. We begrijpen dat elke klant unieke uitdagingen heeft, en daarom bieden we op maat gemaakte oplossingen die aansluiten bij hun specifieke behoeften. Onze focus ligt op het leveren van kwaliteit, betrouwbaarheid en waarde aan elke klant die we bedienen. We streven ernaar om niet alleen aan de verwachtingen te voldoen, maar deze te overtreffen.</p>\n<!-- /wp:paragraph -->', 'Over ons pagina', '', 'trash', 'open', 'open', '', 'over-ons-pagina__trashed', '', '', '2023-06-29 09:26:56', '2023-06-29 09:26:56', '', 0, 'http://localhost/wordpress2/?p=6', 0, 'post', '', 0),
(7, 1, '2023-06-15 11:17:02', '2023-06-15 11:17:02', '<!-- wp:paragraph -->\n<p>Over MijnBedrijf</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Bij MijnBedrijf hebben we een passie voor het leveren van uitstekende producten en diensten aan onze klanten. Sinds onze oprichting in 2005 hebben we ons toegewijd aan het voldoen aan de behoeften en verwachtingen van onze klanten. Ons ervaren team van professionals beschikt over diepgaande expertise in verschillende sectoren en werkt samen om hoogwaardige oplossingen te bieden. We geloven in het opbouwen van langdurige relaties met onze klanten, gebaseerd op vertrouwen, integriteit en wederzijds succes.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Bij MijnBedrijf streven we naar innovatie en continue verbetering. We volgen de laatste ontwikkelingen in onze branche en passen geavanceerde technologieën en best practices toe om onze producten en diensten voortdurend te verbeteren. We begrijpen dat elke klant unieke uitdagingen heeft, en daarom bieden we op maat gemaakte oplossingen die aansluiten bij hun specifieke behoeften. Onze focus ligt op het leveren van kwaliteit, betrouwbaarheid en waarde aan elke klant die we bedienen. We streven ernaar om niet alleen aan de verwachtingen te voldoen, maar deze te overtreffen.</p>\n<!-- /wp:paragraph -->', '', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2023-06-15 11:17:02', '2023-06-15 11:17:02', '', 6, 'http://localhost/wordpress2/?p=7', 0, 'revision', '', 0),
(8, 1, '2023-06-15 11:17:12', '2023-06-15 11:17:12', '<!-- wp:paragraph -->\n<p>Over MijnBedrijf</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Bij MijnBedrijf hebben we een passie voor het leveren van uitstekende producten en diensten aan onze klanten. Sinds onze oprichting in 2005 hebben we ons toegewijd aan het voldoen aan de behoeften en verwachtingen van onze klanten. Ons ervaren team van professionals beschikt over diepgaande expertise in verschillende sectoren en werkt samen om hoogwaardige oplossingen te bieden. We geloven in het opbouwen van langdurige relaties met onze klanten, gebaseerd op vertrouwen, integriteit en wederzijds succes.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Bij MijnBedrijf streven we naar innovatie en continue verbetering. We volgen de laatste ontwikkelingen in onze branche en passen geavanceerde technologieën en best practices toe om onze producten en diensten voortdurend te verbeteren. We begrijpen dat elke klant unieke uitdagingen heeft, en daarom bieden we op maat gemaakte oplossingen die aansluiten bij hun specifieke behoeften. Onze focus ligt op het leveren van kwaliteit, betrouwbaarheid en waarde aan elke klant die we bedienen. We streven ernaar om niet alleen aan de verwachtingen te voldoen, maar deze te overtreffen.</p>\n<!-- /wp:paragraph -->', 'Over ons pagina', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2023-06-15 11:17:12', '2023-06-15 11:17:12', '', 6, 'http://localhost/wordpress2/?p=8', 0, 'revision', '', 0),
(9, 1, '2023-06-29 09:12:04', '2023-06-29 09:12:04', '<!-- wp:paragraph -->\n<p>Regelmatige lichaamsbeweging heeft talloze voordelen voor zowel onze fysieke als mentale gezondheid. Het helpt ons om fit en energiek te blijven, bevordert een gezond gewicht en versterkt onze spieren en botten. Bovendien heeft lichaamsbeweging aantoonbaar positieve effecten op ons humeur en mentaal welzijn. Het vermindert stress, verbetert de slaapkwaliteit en kan zelfs helpen bij het verminderen van symptomen van depressie en angst.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Naast de fysieke en mentale voordelen kan regelmatige lichaamsbeweging ook de algehele levenskwaliteit verbeteren. Het vergroot ons uithoudingsvermogen en versterkt ons immuunsysteem, waardoor we minder vatbaar zijn voor ziektes en aandoeningen. Bovendien kan het de cognitieve functie verbeteren, het geheugen en de concentratie stimuleren. Het is belangrijk om een lichaamsbewegingsroutine te vinden die bij u past, of het nu gaat om wandelen, hardlopen, fietsen, zwemmen of andere activiteiten die u leuk vindt. Het belangrijkste is om consistent te zijn en geleidelijk aan uw fitnessniveau op te bouwen.</p>\n<!-- /wp:paragraph -->', 'De voordelen van regelmatige lichaamsbeweging', '', 'publish', 'open', 'open', '', 'pokemon-showdown', '', '', '2023-06-29 10:10:07', '2023-06-29 10:10:07', '', 0, 'http://localhost/wordpress2/?p=9', 0, 'post', '', 0),
(10, 1, '2023-06-29 09:12:04', '2023-06-29 09:12:04', '<!-- wp:paragraph -->\n<p>Pokémon Showdown is een online Pokémon-simulator waar spelers het tegen elkaar kunnen opnemen in spannende gevechten. Het platform biedt een breed scala aan functies en opties waarmee trainers hun teams kunnen samenstellen, aanpassen en testen zonder de beperkingen van het reguliere Pokémon-videospel. Het is volledig gratis en kan direct in de webbrowser worden gespeeld, wat het toegankelijk maakt voor spelers van alle niveaus.</p>\n<!-- /wp:paragraph -->', 'Pokémon Showdown', '', 'inherit', 'closed', 'closed', '', '9-revision-v1', '', '', '2023-06-29 09:12:04', '2023-06-29 09:12:04', '', 9, 'http://localhost/wordpress2/?p=10', 0, 'revision', '', 0),
(13, 1, '2023-06-29 09:26:12', '2023-06-29 09:26:12', '<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><!-- wp:paragraph -->\n<p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like piña coladas. (And gettin\' caught in the rain.)</p>\n<!-- /wp:paragraph --></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><!-- wp:paragraph -->\n<p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p>\n<!-- /wp:paragraph --></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href=\"http://localhost/wordpress2/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->', 'Over ons', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2023-06-29 09:26:12', '2023-06-29 09:26:12', '', 2, 'http://localhost/wordpress2/?p=13', 0, 'revision', '', 0),
(14, 1, '2023-06-29 09:26:40', '2023-06-29 09:26:40', '<!-- wp:paragraph -->\n<p>Over MijnBedrijf</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Bij MijnBedrijf hebben we een passie voor het leveren van uitstekende producten en diensten aan onze klanten. Sinds onze oprichting in 2005 hebben we ons toegewijd aan het voldoen aan de behoeften en verwachtingen van onze klanten. Ons ervaren team van professionals beschikt over diepgaande expertise in verschillende sectoren en werkt samen om hoogwaardige oplossingen te bieden. We geloven in het opbouwen van langdurige relaties met onze klanten, gebaseerd op vertrouwen, integriteit en wederzijds succes.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Bij MijnBedrijf streven we naar innovatie en continue verbetering. We volgen de laatste ontwikkelingen in onze branche en passen geavanceerde technologieën en best practices toe om onze producten en diensten voortdurend te verbeteren. We begrijpen dat elke klant unieke uitdagingen heeft, en daarom bieden we op maat gemaakte oplossingen die aansluiten bij hun specifieke behoeften. Onze focus ligt op het leveren van kwaliteit, betrouwbaarheid en waarde aan elke klant die we bedienen. We streven ernaar om niet alleen aan de verwachtingen te voldoen, maar deze te overtreffen.</p>\n<!-- /wp:paragraph -->', 'Over ons', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2023-06-29 09:26:40', '2023-06-29 09:26:40', '', 2, 'http://localhost/wordpress2/?p=14', 0, 'revision', '', 0),
(15, 1, '2023-06-29 09:33:44', '2023-06-29 09:33:44', '<!-- wp:paragraph -->\n<p>De Oorsprong:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>\"Poggers\" is afgeleid van het Twitch-emote \"PogChamp\", dat oorspronkelijk een afbeelding was van de professionele vechtspeler Ryan \"Gootecks\" Gutierrez die een verbaasde en enthousiaste uitdrukking op zijn gezicht had. De emote werd populair onder Twitch-streamers en hun kijkers als een manier om opwinding en verbazing uit te drukken tijdens intense of spannende momenten.</p>\n<!-- /wp:paragraph -->', 'Poggers oorsprong', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2023-06-29 09:33:44', '2023-06-29 09:33:44', '', 1, 'http://localhost/wordpress2/?p=15', 0, 'revision', '', 0),
(16, 1, '2023-06-29 09:53:37', '2023-06-29 09:53:37', '<!-- wp:paragraph -->\n<p>\"Poggers\" is afgeleid van het Twitch-emote \"PogChamp\", dat oorspronkelijk een afbeelding was van de professionele vechtspeler Ryan \"Gootecks\" Gutierrez die een verbaasde en enthousiaste uitdrukking op zijn gezicht had. De emote werd populair onder Twitch-streamers en hun kijkers als een manier om opwinding en verbazing uit te drukken tijdens intense of spannende momenten.</p>\n<!-- /wp:paragraph -->', 'Poggers oorsprong', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2023-06-29 09:53:37', '2023-06-29 09:53:37', '', 1, 'http://localhost/wordpress2/?p=16', 0, 'revision', '', 0),
(17, 1, '2023-06-29 10:07:14', '2023-06-29 10:07:14', '<!-- wp:paragraph -->\n<p>\"Poggers\" is afgeleid van het Twitch-emote \"PogChamp\", dat oorspronkelijk een afbeelding was van de professionele vechtspeler Ryan \"Gootecks\" Gutierrez die een verbaasde en enthousiaste uitdrukking op zijn gezicht had. De emote werd populair onder Twitch-streamers en hun kijkers als een manier om opwinding en verbazing uit te drukken tijdens intense of spannende momenten.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>De Betekenis:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>De term \"Poggers\" heeft zich losgemaakt van zijn oorspronkelijke context en is uitgegroeid tot een op zichzelf staande uitdrukking. Het wordt vaak gebruikt om een gevoel van opwinding, verbazing of intense interesse uit te drukken. Het kan worden gebruikt in reactie op spannende gebeurtenissen, indrukwekkende prestaties of verrassende wendingen. Het heeft ook een lichte ironische ondertoon gekregen, waarbij het soms wordt gebruikt om te overdrijven of humoristisch te reageren op situaties die niet per se opwindend zijn.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Populariteit en Verspreiding:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Wat de meme zo opvallend maakt, is de enorme populariteit en verspreiding ervan. Het begon als een veelgebruikte emote op Twitch, maar al snel verspreidde het zich naar andere platforms zoals Twitter, Reddit en Discord. Het werd een gemeenschappelijke taal onder internetgebruikers en een manier om wederzijdse opwinding en betrokkenheid te delen tijdens het kijken naar live streams, gamingcontent of andere vormen van online entertainment.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>De meme heeft ook invloed gehad buiten de online wereld. Het is geïntegreerd in popcultuurreferenties, wordt gebruikt in communicatie tussen vrienden en is zelfs opgepikt door bekende personen en beroemdheden die de meme in hun eigen context hebben gebruikt.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>De Impact:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>\"Poggers\" is niet zomaar een voorbijgaande meme. Het heeft de kracht om een gevoel van gemeenschap en verbondenheid te creëren tussen mensen die dezelfde interesses delen. Het fungeert als een informele taal die de online cultuur omarmt en een gevoel van collectieve vreugde en opwinding bevordert.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Bovendien toont de opkomst en populariteit van \"Poggers\" het belang van memes als een creatieve uitlaatklep en een manier om emoties en ervaringen te delen. Het herinnert ons eraan hoe snel trends kunnen ontstaan en verspreiden in de digitale wereld, en hoe ze onze dagelijkse conversaties en interacties kunnen beïnvloeden.</p>\n<!-- /wp:paragraph -->', 'Poggers oorsprong', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2023-06-29 10:07:14', '2023-06-29 10:07:14', '', 1, 'http://localhost/wordpress2/?p=17', 0, 'revision', '', 0),
(18, 1, '2023-06-29 10:08:51', '2023-06-29 10:08:51', '<!-- wp:paragraph -->\n<p>Titel: Tips voor het opstarten van een succesvolle blog</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Het opstarten van een blog kan een spannende onderneming zijn, maar het kan ook overweldigend lijken. Hier zijn enkele tips om u op weg te helpen naar het opbouwen van een succesvolle blog. Ten eerste is het belangrijk om uw doelgroep te begrijpen en te bepalen waarover u wilt schrijven. Kies een niche waarin u gepassioneerd bent en waarin u waardevolle kennis kunt delen. Dit zal u helpen om een gericht publiek aan te trekken en autoriteit op te bouwen in uw vakgebied.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Daarnaast is het essentieel om consistente en kwalitatieve inhoud te leveren. Maak een contentstrategie en plan regelmatige berichten om uw lezers betrokken te houden. Zorg ervoor dat uw inhoud goed geschreven, informatief en boeiend is. Voeg visuele elementen toe, zoals afbeeldingen en video\'s, om de aantrekkelijkheid te vergroten. Vergeet ook niet om te communiceren met uw lezers via reacties en sociale media. Het opbouwen van een betrokken gemeenschap zal uw blog helpen groeien en uw bereik vergroten.</p>\n<!-- /wp:paragraph -->', 'Poggers oorsprong', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2023-06-29 10:08:51', '2023-06-29 10:08:51', '', 1, 'http://localhost/wordpress2/?p=18', 0, 'revision', '', 0),
(19, 1, '2023-06-29 10:09:03', '2023-06-29 10:09:03', '<!-- wp:paragraph -->\n<p>Titel: Tips voor het opstarten van een succesvolle blog</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Het opstarten van een blog kan een spannende onderneming zijn, maar het kan ook overweldigend lijken. Hier zijn enkele tips om u op weg te helpen naar het opbouwen van een succesvolle blog. Ten eerste is het belangrijk om uw doelgroep te begrijpen en te bepalen waarover u wilt schrijven. Kies een niche waarin u gepassioneerd bent en waarin u waardevolle kennis kunt delen. Dit zal u helpen om een gericht publiek aan te trekken en autoriteit op te bouwen in uw vakgebied.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Daarnaast is het essentieel om consistente en kwalitatieve inhoud te leveren. Maak een contentstrategie en plan regelmatige berichten om uw lezers betrokken te houden. Zorg ervoor dat uw inhoud goed geschreven, informatief en boeiend is. Voeg visuele elementen toe, zoals afbeeldingen en video\'s, om de aantrekkelijkheid te vergroten. Vergeet ook niet om te communiceren met uw lezers via reacties en sociale media. Het opbouwen van een betrokken gemeenschap zal uw blog helpen groeien en uw bereik vergroten.</p>\n<!-- /wp:paragraph -->', 'Succesvolle blog', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2023-06-29 10:09:03', '2023-06-29 10:09:03', '', 1, 'http://localhost/wordpress2/?p=19', 0, 'revision', '', 0),
(20, 1, '2023-06-29 10:09:55', '2023-06-29 10:09:55', '<!-- wp:paragraph -->\n<p>Regelmatige lichaamsbeweging heeft talloze voordelen voor zowel onze fysieke als mentale gezondheid. Het helpt ons om fit en energiek te blijven, bevordert een gezond gewicht en versterkt onze spieren en botten. Bovendien heeft lichaamsbeweging aantoonbaar positieve effecten op ons humeur en mentaal welzijn. Het vermindert stress, verbetert de slaapkwaliteit en kan zelfs helpen bij het verminderen van symptomen van depressie en angst.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Naast de fysieke en mentale voordelen kan regelmatige lichaamsbeweging ook de algehele levenskwaliteit verbeteren. Het vergroot ons uithoudingsvermogen en versterkt ons immuunsysteem, waardoor we minder vatbaar zijn voor ziektes en aandoeningen. Bovendien kan het de cognitieve functie verbeteren, het geheugen en de concentratie stimuleren. Het is belangrijk om een lichaamsbewegingsroutine te vinden die bij u past, of het nu gaat om wandelen, hardlopen, fietsen, zwemmen of andere activiteiten die u leuk vindt. Het belangrijkste is om consistent te zijn en geleidelijk aan uw fitnessniveau op te bouwen.<a href=\"Titel: De voordelen van regelmatige lichaamsbeweging\n\nRegelmatige lichaamsbeweging heeft talloze voordelen voor zowel onze fysieke als mentale gezondheid. Het helpt ons om fit en energiek te blijven, bevordert een gezond gewicht en versterkt onze spieren en botten. Bovendien heeft lichaamsbeweging aantoonbaar positieve effecten op ons humeur en mentaal welzijn. Het vermindert stress, verbetert de slaapkwaliteit en kan zelfs helpen bij het verminderen van symptomen van depressie en angst.\n\nNaast de fysieke en mentale voordelen kan regelmatige lichaamsbeweging ook de algehele levenskwaliteit verbeteren. Het vergroot ons uithoudingsvermogen en versterkt ons immuunsysteem, waardoor we minder vatbaar zijn voor ziektes en aandoeningen. Bovendien kan het de cognitieve functie verbeteren, het geheugen en de concentratie stimuleren. Het is belangrijk om een lichaamsbewegingsroutine te vinden die bij u past, of het nu gaat om wandelen, hardlopen, fietsen, zwemmen of andere activiteiten die u leuk vindt. Het belangrijkste is om consistent te zijn en geleidelijk aan uw fitnessniveau op te bouwen.\"> alle niveaus.</a></p>\n<!-- /wp:paragraph -->', 'De voordelen van regelmatige lichaamsbeweging', '', 'inherit', 'closed', 'closed', '', '9-revision-v1', '', '', '2023-06-29 10:09:55', '2023-06-29 10:09:55', '', 9, 'http://localhost/wordpress2/?p=20', 0, 'revision', '', 0),
(21, 1, '2023-06-29 10:10:07', '2023-06-29 10:10:07', '<!-- wp:paragraph -->\n<p>Regelmatige lichaamsbeweging heeft talloze voordelen voor zowel onze fysieke als mentale gezondheid. Het helpt ons om fit en energiek te blijven, bevordert een gezond gewicht en versterkt onze spieren en botten. Bovendien heeft lichaamsbeweging aantoonbaar positieve effecten op ons humeur en mentaal welzijn. Het vermindert stress, verbetert de slaapkwaliteit en kan zelfs helpen bij het verminderen van symptomen van depressie en angst.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Naast de fysieke en mentale voordelen kan regelmatige lichaamsbeweging ook de algehele levenskwaliteit verbeteren. Het vergroot ons uithoudingsvermogen en versterkt ons immuunsysteem, waardoor we minder vatbaar zijn voor ziektes en aandoeningen. Bovendien kan het de cognitieve functie verbeteren, het geheugen en de concentratie stimuleren. Het is belangrijk om een lichaamsbewegingsroutine te vinden die bij u past, of het nu gaat om wandelen, hardlopen, fietsen, zwemmen of andere activiteiten die u leuk vindt. Het belangrijkste is om consistent te zijn en geleidelijk aan uw fitnessniveau op te bouwen.</p>\n<!-- /wp:paragraph -->', 'De voordelen van regelmatige lichaamsbeweging', '', 'inherit', 'closed', 'closed', '', '9-revision-v1', '', '', '2023-06-29 10:10:07', '2023-06-29 10:10:07', '', 9, 'http://localhost/wordpress2/?p=21', 0, 'revision', '', 0),
(24, 1, '2023-06-29 10:23:30', '2023-06-29 10:23:30', '<!-- wp:paragraph -->\n<p>fsdg</p>\n<!-- /wp:paragraph -->', 'Pagina 2', '', 'trash', 'closed', 'closed', '', 'pagina-2__trashed', '', '', '2023-06-29 10:23:56', '2023-06-29 10:23:56', '', 0, 'http://localhost/wordpress2/?page_id=24', 0, 'page', '', 0),
(25, 1, '2023-06-29 10:23:30', '2023-06-29 10:23:30', '<!-- wp:paragraph -->\n<p>fsdg</p>\n<!-- /wp:paragraph -->', 'Pagina 2', '', 'inherit', 'closed', 'closed', '', '24-revision-v1', '', '', '2023-06-29 10:23:30', '2023-06-29 10:23:30', '', 24, 'http://localhost/wordpress2/?p=25', 0, 'revision', '', 0);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `wpth_termmeta`
--

CREATE TABLE `wpth_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `wpth_terms`
--

CREATE TABLE `wpth_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Gegevens worden geëxporteerd voor tabel `wpth_terms`
--

INSERT INTO `wpth_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `wpth_term_relationships`
--

CREATE TABLE `wpth_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_order` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Gegevens worden geëxporteerd voor tabel `wpth_term_relationships`
--

INSERT INTO `wpth_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(6, 1, 0),
(9, 1, 0);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `wpth_term_taxonomy`
--

CREATE TABLE `wpth_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `count` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Gegevens worden geëxporteerd voor tabel `wpth_term_taxonomy`
--

INSERT INTO `wpth_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 2);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `wpth_usermeta`
--

CREATE TABLE `wpth_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Gegevens worden geëxporteerd voor tabel `wpth_usermeta`
--

INSERT INTO `wpth_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'Tjeerd'),
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
(12, 1, 'wpth_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(13, 1, 'wpth_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', ''),
(15, 1, 'show_welcome_panel', '1'),
(16, 1, 'session_tokens', 'a:3:{s:64:\"9bdf5cb46f38dc6a4df63ad04f3401b57e2a7bdf472a58edf12ddc1a1eb37330\";a:4:{s:10:\"expiration\";i:1688037103;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:80:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/114.0\";s:5:\"login\";i:1686827503;}s:64:\"dcf2ef18ab764b003189b2bfefc7a5004cc755b64a272a245d4b088faad3b721\";a:4:{s:10:\"expiration\";i:1688037118;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:80:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/114.0\";s:5:\"login\";i:1686827518;}s:64:\"769163d7a4ef40d9ebce4903e03666f00e6a63006564af6625593d385c7001e4\";a:4:{s:10:\"expiration\";i:1689239310;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:80:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/114.0\";s:5:\"login\";i:1688029710;}}'),
(17, 1, 'wpth_dashboard_quick_press_last_post_id', '12'),
(18, 1, 'community-events-location', 'a:1:{s:2:\"ip\";s:9:\"127.0.0.0\";}');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `wpth_users`
--

CREATE TABLE `wpth_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT 0,
  `display_name` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Gegevens worden geëxporteerd voor tabel `wpth_users`
--

INSERT INTO `wpth_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'Tjeerd', '$P$Btcun52wg7UejwwqQi3NdmzlMcPuPV.', 'tjeerd', 'tj.wokke@googlemail.com', 'http://localhost/wordpress2', '2023-06-01 11:32:00', '1686827523:$P$Bi6Rra3k.NRp6rAiHxTEZUOUipShKq/', 0, 'Tjeerd');

--
-- Indexen voor geëxporteerde tabellen
--

--
-- Indexen voor tabel `wpth_commentmeta`
--
ALTER TABLE `wpth_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexen voor tabel `wpth_comments`
--
ALTER TABLE `wpth_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Indexen voor tabel `wpth_links`
--
ALTER TABLE `wpth_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Indexen voor tabel `wpth_options`
--
ALTER TABLE `wpth_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`),
  ADD KEY `autoload` (`autoload`);

--
-- Indexen voor tabel `wpth_postmeta`
--
ALTER TABLE `wpth_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexen voor tabel `wpth_posts`
--
ALTER TABLE `wpth_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Indexen voor tabel `wpth_termmeta`
--
ALTER TABLE `wpth_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexen voor tabel `wpth_terms`
--
ALTER TABLE `wpth_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Indexen voor tabel `wpth_term_relationships`
--
ALTER TABLE `wpth_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Indexen voor tabel `wpth_term_taxonomy`
--
ALTER TABLE `wpth_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Indexen voor tabel `wpth_usermeta`
--
ALTER TABLE `wpth_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexen voor tabel `wpth_users`
--
ALTER TABLE `wpth_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- AUTO_INCREMENT voor geëxporteerde tabellen
--

--
-- AUTO_INCREMENT voor een tabel `wpth_commentmeta`
--
ALTER TABLE `wpth_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT voor een tabel `wpth_comments`
--
ALTER TABLE `wpth_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT voor een tabel `wpth_links`
--
ALTER TABLE `wpth_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT voor een tabel `wpth_options`
--
ALTER TABLE `wpth_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=260;

--
-- AUTO_INCREMENT voor een tabel `wpth_postmeta`
--
ALTER TABLE `wpth_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT voor een tabel `wpth_posts`
--
ALTER TABLE `wpth_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT voor een tabel `wpth_termmeta`
--
ALTER TABLE `wpth_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT voor een tabel `wpth_terms`
--
ALTER TABLE `wpth_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT voor een tabel `wpth_term_taxonomy`
--
ALTER TABLE `wpth_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT voor een tabel `wpth_usermeta`
--
ALTER TABLE `wpth_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT voor een tabel `wpth_users`
--
ALTER TABLE `wpth_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
