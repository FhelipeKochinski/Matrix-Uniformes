-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 03-Set-2021 às 22:54
-- Versão do servidor: 10.4.20-MariaDB
-- versão do PHP: 7.4.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `uniformesmatrix`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_comments`
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
-- Extraindo dados da tabela `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'Um comentarista do WordPress', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2021-09-01 15:33:48', '2021-09-01 18:33:48', 'Olá, isso é um comentário.\nPara começar a moderar, editar e excluir comentários, visite a tela de Comentários no painel.\nAvatares de comentaristas vêm a partir do <a href=\"https://gravatar.com\">Gravatar</a>.', 0, 'post-trashed', '', 'comment', 0, 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_links`
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
-- Estrutura da tabela `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost/UniformesMatrix', 'yes'),
(2, 'home', 'http://localhost/UniformesMatrix', 'yes'),
(3, 'blogname', 'Matrix Uniformes', 'yes'),
(4, 'blogdescription', 'Só mais um site WordPress', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'luiz.fhelipe@mixsolucoesweb.com.br', 'yes'),
(7, 'start_of_week', '0', 'yes'),
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
(21, 'default_pingback_flag', '0', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'j \\d\\e F \\d\\e Y', 'yes'),
(24, 'time_format', 'H:i', 'yes'),
(25, 'links_updated_date_format', 'j \\d\\e F \\d\\e Y, H:i', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%year%/%monthnum%/%day%/%postname%/', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:5:{i:0;s:34:\"advanced-custom-fields-pro/acf.php\";i:1;s:33:\"classic-editor/classic-editor.php\";i:2;s:36:\"contact-form-7/wp-contact-form-7.php\";i:3;s:33:\"duplicate-post/duplicate-post.php\";i:4;s:24:\"wordpress-seo/wp-seo.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'matrix', 'yes'),
(41, 'stylesheet', 'matrix', 'yes'),
(42, 'comment_registration', '0', 'yes'),
(43, 'html_type', 'text/html', 'yes'),
(44, 'use_trackback', '0', 'yes'),
(45, 'default_role', 'subscriber', 'yes'),
(46, 'db_version', '49752', 'yes'),
(47, 'uploads_use_yearmonth_folders', '1', 'yes'),
(48, 'upload_path', '', 'yes'),
(49, 'blog_public', '0', 'yes'),
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
(76, 'widget_categories', 'a:0:{}', 'yes'),
(77, 'widget_text', 'a:0:{}', 'yes'),
(78, 'widget_rss', 'a:0:{}', 'yes'),
(79, 'uninstall_plugins', 'a:0:{}', 'no'),
(80, 'timezone_string', 'America/Sao_Paulo', 'yes'),
(81, 'page_for_posts', '0', 'yes'),
(82, 'page_on_front', '9', 'yes'),
(83, 'default_post_format', '0', 'yes'),
(84, 'link_manager_enabled', '0', 'yes'),
(85, 'finished_splitting_shared_terms', '1', 'yes'),
(86, 'site_icon', '0', 'yes'),
(87, 'medium_large_size_w', '768', 'yes'),
(88, 'medium_large_size_h', '0', 'yes'),
(89, 'wp_page_for_privacy_policy', '3', 'yes'),
(90, 'show_comments_cookies_opt_in', '1', 'yes'),
(91, 'admin_email_lifespan', '1646073227', 'yes'),
(92, 'disallowed_keys', '', 'no'),
(93, 'comment_previously_approved', '1', 'yes'),
(94, 'auto_plugin_theme_update_emails', 'a:0:{}', 'no'),
(95, 'auto_update_core_dev', 'enabled', 'yes'),
(96, 'auto_update_core_minor', 'enabled', 'yes'),
(97, 'auto_update_core_major', 'enabled', 'yes'),
(98, 'wp_force_deactivated_plugins', 'a:0:{}', 'yes'),
(99, 'initial_db_version', '49752', 'yes'),
(100, 'wp_user_roles', 'a:7:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:63:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;s:20:\"wpseo_manage_options\";b:1;s:10:\"copy_posts\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:37:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:15:\"wpseo_bulk_edit\";b:1;s:28:\"wpseo_edit_advanced_metadata\";b:1;s:10:\"copy_posts\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}s:13:\"wpseo_manager\";a:2:{s:4:\"name\";s:11:\"SEO Manager\";s:12:\"capabilities\";a:39:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:15:\"wpseo_bulk_edit\";b:1;s:28:\"wpseo_edit_advanced_metadata\";b:1;s:20:\"wpseo_manage_options\";b:1;s:23:\"view_site_health_checks\";b:1;s:10:\"copy_posts\";b:1;}}s:12:\"wpseo_editor\";a:2:{s:4:\"name\";s:10:\"SEO Editor\";s:12:\"capabilities\";a:37:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:15:\"wpseo_bulk_edit\";b:1;s:28:\"wpseo_edit_advanced_metadata\";b:1;s:10:\"copy_posts\";b:1;}}}', 'yes'),
(101, 'fresh_site', '0', 'yes'),
(102, 'WPLANG', 'pt_BR', 'yes'),
(103, 'widget_block', 'a:6:{i:2;a:1:{s:7:\"content\";s:19:\"<!-- wp:search /-->\";}i:3;a:1:{s:7:\"content\";s:156:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Posts recentes</h2><!-- /wp:heading --><!-- wp:latest-posts /--></div><!-- /wp:group -->\";}i:4;a:1:{s:7:\"content\";s:224:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Comentários</h2><!-- /wp:heading --><!-- wp:latest-comments {\"displayAvatar\":false,\"displayDate\":false,\"displayExcerpt\":false} /--></div><!-- /wp:group -->\";}i:5;a:1:{s:7:\"content\";s:146:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Arquivos</h2><!-- /wp:heading --><!-- wp:archives /--></div><!-- /wp:group -->\";}i:6;a:1:{s:7:\"content\";s:150:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Categorias</h2><!-- /wp:heading --><!-- wp:categories /--></div><!-- /wp:group -->\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(104, 'sidebars_widgets', 'a:2:{s:19:\"wp_inactive_widgets\";a:5:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";i:3;s:7:\"block-5\";i:4;s:7:\"block-6\";}s:13:\"array_version\";i:3;}', 'yes'),
(105, 'cron', 'a:9:{i:1630704829;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1630737229;a:4:{s:18:\"wp_https_detection\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1630780428;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1630780454;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1630780456;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1630783630;a:2:{s:13:\"wpseo-reindex\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:31:\"wpseo_permalink_structure_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1631129230;a:1:{s:16:\"wpseo_ryte_fetch\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}i:1631212429;a:1:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}s:7:\"version\";i:2;}', 'yes'),
(106, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_archives', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(112, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(113, 'widget_meta', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(114, 'widget_search', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(115, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(116, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(117, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(119, 'recovery_keys', 'a:0:{}', 'yes'),
(120, 'theme_mods_twentytwentyone', 'a:3:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1630527113;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";}s:9:\"sidebar-2\";a:2:{i:0;s:7:\"block-5\";i:1;s:7:\"block-6\";}}}s:18:\"nav_menu_locations\";a:0:{}}', 'yes'),
(122, 'https_detection_errors', 'a:1:{s:23:\"ssl_verification_failed\";a:1:{i:0;s:25:\"Verificação SSL falhou.\";}}', 'yes'),
(133, '_site_transient_timeout_browser_605f01b1409979f1b4f5151f8eefb28a', '1631126055', 'no'),
(134, '_site_transient_browser_605f01b1409979f1b4f5151f8eefb28a', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:13:\"92.0.4515.159\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(135, '_site_transient_timeout_php_check_807c8573af5722dc652a2e0e9f9a1135', '1631126055', 'no'),
(136, '_site_transient_php_check_807c8573af5722dc652a2e0e9f9a1135', 'a:5:{s:19:\"recommended_version\";s:3:\"7.4\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:1;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}', 'no'),
(140, 'can_compress_scripts', '1', 'no'),
(141, 'recently_activated', 'a:0:{}', 'yes'),
(150, 'finished_updating_comment_type', '1', 'yes'),
(165, 'wpcf7', 'a:2:{s:7:\"version\";s:5:\"5.4.2\";s:13:\"bulk_validate\";a:4:{s:9:\"timestamp\";i:1630524425;s:7:\"version\";s:5:\"5.4.2\";s:11:\"count_valid\";i:1;s:13:\"count_invalid\";i:0;}}', 'yes'),
(166, 'yoast_migrations_free', 'a:1:{s:7:\"version\";s:4:\"17.0\";}', 'yes'),
(167, 'wpseo', 'a:45:{s:8:\"tracking\";b:0;s:22:\"license_server_version\";b:0;s:15:\"ms_defaults_set\";b:0;s:40:\"ignore_search_engines_discouraged_notice\";b:0;s:19:\"indexing_first_time\";b:1;s:16:\"indexing_started\";b:0;s:15:\"indexing_reason\";s:26:\"permalink_settings_changed\";s:29:\"indexables_indexing_completed\";b:1;s:7:\"version\";s:4:\"16.9\";s:16:\"previous_version\";s:0:\"\";s:20:\"disableadvanced_meta\";b:1;s:30:\"enable_headless_rest_endpoints\";b:1;s:17:\"ryte_indexability\";b:1;s:11:\"baiduverify\";s:0:\"\";s:12:\"googleverify\";s:0:\"\";s:8:\"msverify\";s:0:\"\";s:12:\"yandexverify\";s:0:\"\";s:9:\"site_type\";s:0:\"\";s:20:\"has_multiple_authors\";s:0:\"\";s:16:\"environment_type\";s:0:\"\";s:23:\"content_analysis_active\";b:1;s:23:\"keyword_analysis_active\";b:1;s:21:\"enable_admin_bar_menu\";b:1;s:26:\"enable_cornerstone_content\";b:1;s:18:\"enable_xml_sitemap\";b:1;s:24:\"enable_text_link_counter\";b:1;s:22:\"show_onboarding_notice\";b:1;s:18:\"first_activated_on\";i:1630524430;s:13:\"myyoast-oauth\";b:0;s:26:\"semrush_integration_active\";b:1;s:14:\"semrush_tokens\";a:0:{}s:20:\"semrush_country_code\";s:2:\"us\";s:19:\"permalink_structure\";s:36:\"/%year%/%monthnum%/%day%/%postname%/\";s:8:\"home_url\";s:33:\"https://localhost/UniformesMatrix\";s:18:\"dynamic_permalinks\";b:0;s:17:\"category_base_url\";s:0:\"\";s:12:\"tag_base_url\";s:0:\"\";s:21:\"custom_taxonomy_slugs\";a:1:{s:9:\"categoria\";s:9:\"categoria\";}s:29:\"enable_enhanced_slack_sharing\";b:1;s:25:\"zapier_integration_active\";b:0;s:19:\"zapier_subscription\";a:0:{}s:14:\"zapier_api_key\";s:0:\"\";s:23:\"enable_metabox_insights\";b:1;s:23:\"enable_link_suggestions\";b:1;s:26:\"algolia_integration_active\";b:0;}', 'yes'),
(168, 'wpseo_titles', 'a:161:{s:17:\"forcerewritetitle\";b:0;s:9:\"separator\";s:7:\"sc-dash\";s:16:\"title-home-wpseo\";s:42:\"%%sitename%% %%page%% %%sep%% %%sitedesc%%\";s:18:\"title-author-wpseo\";s:40:\"%%name%%, Autor em %%sitename%% %%page%%\";s:19:\"title-archive-wpseo\";s:38:\"%%date%% %%page%% %%sep%% %%sitename%%\";s:18:\"title-search-wpseo\";s:66:\"Você pesquisou por %%searchphrase%% %%page%% %%sep%% %%sitename%%\";s:15:\"title-404-wpseo\";s:44:\"Página não encontrada %%sep%% %%sitename%%\";s:25:\"social-title-author-wpseo\";s:8:\"%%name%%\";s:26:\"social-title-archive-wpseo\";s:8:\"%%date%%\";s:31:\"social-description-author-wpseo\";s:0:\"\";s:32:\"social-description-archive-wpseo\";s:0:\"\";s:29:\"social-image-url-author-wpseo\";s:0:\"\";s:30:\"social-image-url-archive-wpseo\";s:0:\"\";s:28:\"social-image-id-author-wpseo\";i:0;s:29:\"social-image-id-archive-wpseo\";i:0;s:19:\"metadesc-home-wpseo\";s:0:\"\";s:21:\"metadesc-author-wpseo\";s:0:\"\";s:22:\"metadesc-archive-wpseo\";s:0:\"\";s:9:\"rssbefore\";s:0:\"\";s:8:\"rssafter\";s:54:\"O post %%POSTLINK%% apareceu primeiro em %%BLOGLINK%%.\";s:20:\"noindex-author-wpseo\";b:0;s:28:\"noindex-author-noposts-wpseo\";b:1;s:21:\"noindex-archive-wpseo\";b:1;s:14:\"disable-author\";b:0;s:12:\"disable-date\";b:0;s:19:\"disable-post_format\";b:0;s:18:\"disable-attachment\";b:1;s:23:\"is-media-purge-relevant\";b:0;s:20:\"breadcrumbs-404crumb\";s:33:\"Erro 404: Página não encontrada\";s:29:\"breadcrumbs-display-blog-page\";b:0;s:20:\"breadcrumbs-boldlast\";b:0;s:25:\"breadcrumbs-archiveprefix\";s:13:\"Arquivos para\";s:18:\"breadcrumbs-enable\";b:1;s:16:\"breadcrumbs-home\";s:20:\"VOCÊ ESTÁ EM: HOME\";s:18:\"breadcrumbs-prefix\";s:0:\"\";s:24:\"breadcrumbs-searchprefix\";s:19:\"Você pesquisou por\";s:15:\"breadcrumbs-sep\";s:2:\"»\";s:12:\"website_name\";s:0:\"\";s:11:\"person_name\";s:0:\"\";s:11:\"person_logo\";s:0:\"\";s:22:\"alternate_website_name\";s:0:\"\";s:12:\"company_logo\";s:0:\"\";s:12:\"company_name\";s:0:\"\";s:17:\"company_or_person\";s:7:\"company\";s:25:\"company_or_person_user_id\";b:0;s:17:\"stripcategorybase\";b:0;s:26:\"open_graph_frontpage_title\";s:12:\"%%sitename%%\";s:25:\"open_graph_frontpage_desc\";s:0:\"\";s:26:\"open_graph_frontpage_image\";s:0:\"\";s:10:\"title-post\";s:39:\"%%title%% %%page%% %%sep%% %%sitename%%\";s:13:\"metadesc-post\";s:0:\"\";s:12:\"noindex-post\";b:0;s:23:\"display-metabox-pt-post\";b:1;s:23:\"post_types-post-maintax\";i:0;s:21:\"schema-page-type-post\";s:7:\"WebPage\";s:24:\"schema-article-type-post\";s:7:\"Article\";s:17:\"social-title-post\";s:9:\"%%title%%\";s:23:\"social-description-post\";s:0:\"\";s:21:\"social-image-url-post\";s:0:\"\";s:20:\"social-image-id-post\";i:0;s:10:\"title-page\";s:39:\"%%title%% %%page%% %%sep%% %%sitename%%\";s:13:\"metadesc-page\";s:0:\"\";s:12:\"noindex-page\";b:0;s:23:\"display-metabox-pt-page\";b:1;s:23:\"post_types-page-maintax\";s:1:\"0\";s:21:\"schema-page-type-page\";s:7:\"WebPage\";s:24:\"schema-article-type-page\";s:4:\"None\";s:17:\"social-title-page\";s:9:\"%%title%%\";s:23:\"social-description-page\";s:0:\"\";s:21:\"social-image-url-page\";s:0:\"\";s:20:\"social-image-id-page\";i:0;s:16:\"title-attachment\";s:39:\"%%title%% %%page%% %%sep%% %%sitename%%\";s:19:\"metadesc-attachment\";s:0:\"\";s:18:\"noindex-attachment\";b:0;s:29:\"display-metabox-pt-attachment\";b:1;s:29:\"post_types-attachment-maintax\";s:1:\"0\";s:27:\"schema-page-type-attachment\";s:7:\"WebPage\";s:30:\"schema-article-type-attachment\";s:4:\"None\";s:18:\"title-tax-category\";s:53:\"Arquivos %%term_title%% %%page%% %%sep%% %%sitename%%\";s:21:\"metadesc-tax-category\";s:0:\"\";s:28:\"display-metabox-tax-category\";b:1;s:20:\"noindex-tax-category\";b:0;s:25:\"social-title-tax-category\";s:23:\"Arquivos %%term_title%%\";s:31:\"social-description-tax-category\";s:0:\"\";s:29:\"social-image-url-tax-category\";s:0:\"\";s:28:\"social-image-id-tax-category\";i:0;s:18:\"title-tax-post_tag\";s:53:\"Arquivos %%term_title%% %%page%% %%sep%% %%sitename%%\";s:21:\"metadesc-tax-post_tag\";s:0:\"\";s:28:\"display-metabox-tax-post_tag\";b:1;s:20:\"noindex-tax-post_tag\";b:0;s:25:\"social-title-tax-post_tag\";s:23:\"Arquivos %%term_title%%\";s:31:\"social-description-tax-post_tag\";s:0:\"\";s:29:\"social-image-url-tax-post_tag\";s:0:\"\";s:28:\"social-image-id-tax-post_tag\";i:0;s:21:\"title-tax-post_format\";s:53:\"Arquivos %%term_title%% %%page%% %%sep%% %%sitename%%\";s:24:\"metadesc-tax-post_format\";s:0:\"\";s:31:\"display-metabox-tax-post_format\";b:0;s:23:\"noindex-tax-post_format\";b:1;s:28:\"social-title-tax-post_format\";s:23:\"Arquivos %%term_title%%\";s:34:\"social-description-tax-post_format\";s:0:\"\";s:32:\"social-image-url-tax-post_format\";s:0:\"\";s:31:\"social-image-id-tax-post_format\";i:0;s:19:\"title-tax-categoria\";s:53:\"Arquivos %%term_title%% %%page%% %%sep%% %%sitename%%\";s:22:\"metadesc-tax-categoria\";s:0:\"\";s:29:\"display-metabox-tax-categoria\";b:1;s:21:\"noindex-tax-categoria\";b:0;s:26:\"social-title-tax-categoria\";s:23:\"Arquivos %%term_title%%\";s:32:\"social-description-tax-categoria\";s:0:\"\";s:30:\"social-image-url-tax-categoria\";s:0:\"\";s:29:\"social-image-id-tax-categoria\";i:0;s:27:\"taxonomy-categoria-ptparent\";i:0;s:13:\"title-banners\";s:39:\"%%title%% %%page%% %%sep%% %%sitename%%\";s:16:\"metadesc-banners\";s:0:\"\";s:15:\"noindex-banners\";b:0;s:26:\"display-metabox-pt-banners\";b:1;s:26:\"post_types-banners-maintax\";s:1:\"0\";s:24:\"schema-page-type-banners\";s:7:\"WebPage\";s:27:\"schema-article-type-banners\";s:4:\"None\";s:20:\"social-title-banners\";s:9:\"%%title%%\";s:26:\"social-description-banners\";s:0:\"\";s:24:\"social-image-url-banners\";s:0:\"\";s:23:\"social-image-id-banners\";i:0;s:14:\"title-produtos\";s:39:\"%%title%% %%page%% %%sep%% %%sitename%%\";s:17:\"metadesc-produtos\";s:0:\"\";s:16:\"noindex-produtos\";b:0;s:27:\"display-metabox-pt-produtos\";b:1;s:27:\"post_types-produtos-maintax\";i:0;s:25:\"schema-page-type-produtos\";s:7:\"WebPage\";s:28:\"schema-article-type-produtos\";s:4:\"None\";s:21:\"social-title-produtos\";s:9:\"%%title%%\";s:27:\"social-description-produtos\";s:0:\"\";s:25:\"social-image-url-produtos\";s:0:\"\";s:24:\"social-image-id-produtos\";i:0;s:14:\"title-clientes\";s:39:\"%%title%% %%page%% %%sep%% %%sitename%%\";s:17:\"metadesc-clientes\";s:0:\"\";s:16:\"noindex-clientes\";b:0;s:27:\"display-metabox-pt-clientes\";b:1;s:27:\"post_types-clientes-maintax\";s:1:\"0\";s:25:\"schema-page-type-clientes\";s:7:\"WebPage\";s:28:\"schema-article-type-clientes\";s:4:\"None\";s:21:\"social-title-clientes\";s:9:\"%%title%%\";s:27:\"social-description-clientes\";s:0:\"\";s:25:\"social-image-url-clientes\";s:0:\"\";s:24:\"social-image-id-clientes\";i:0;s:18:\"title-fornecedores\";s:39:\"%%title%% %%page%% %%sep%% %%sitename%%\";s:21:\"metadesc-fornecedores\";s:0:\"\";s:20:\"noindex-fornecedores\";b:0;s:31:\"display-metabox-pt-fornecedores\";b:1;s:31:\"post_types-fornecedores-maintax\";s:1:\"0\";s:29:\"schema-page-type-fornecedores\";s:7:\"WebPage\";s:32:\"schema-article-type-fornecedores\";s:4:\"None\";s:25:\"social-title-fornecedores\";s:9:\"%%title%%\";s:31:\"social-description-fornecedores\";s:0:\"\";s:29:\"social-image-url-fornecedores\";s:0:\"\";s:28:\"social-image-id-fornecedores\";i:0;s:14:\"person_logo_id\";i:0;s:15:\"company_logo_id\";i:0;s:29:\"open_graph_frontpage_image_id\";i:0;s:26:\"taxonomy-category-ptparent\";s:1:\"0\";s:26:\"taxonomy-post_tag-ptparent\";s:1:\"0\";s:29:\"taxonomy-post_format-ptparent\";s:1:\"0\";}', 'yes'),
(169, 'wpseo_social', 'a:18:{s:13:\"facebook_site\";s:0:\"\";s:13:\"instagram_url\";s:0:\"\";s:12:\"linkedin_url\";s:0:\"\";s:11:\"myspace_url\";s:0:\"\";s:16:\"og_default_image\";s:0:\"\";s:19:\"og_default_image_id\";s:0:\"\";s:18:\"og_frontpage_title\";s:0:\"\";s:17:\"og_frontpage_desc\";s:0:\"\";s:18:\"og_frontpage_image\";s:0:\"\";s:21:\"og_frontpage_image_id\";s:0:\"\";s:9:\"opengraph\";b:1;s:13:\"pinterest_url\";s:0:\"\";s:15:\"pinterestverify\";s:0:\"\";s:7:\"twitter\";b:1;s:12:\"twitter_site\";s:0:\"\";s:17:\"twitter_card_type\";s:19:\"summary_large_image\";s:11:\"youtube_url\";s:0:\"\";s:13:\"wikipedia_url\";s:0:\"\";}', 'yes'),
(200, 'wpseo_ryte', 'a:2:{s:6:\"status\";i:-1;s:10:\"last_fetch\";i:1630524442;}', 'yes'),
(203, 'acf_version', '5.7.0-beta4', 'yes'),
(208, 'current_theme', 'Matrix Uniformes', 'yes'),
(209, 'theme_mods_matrix', 'a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:1:{s:7:\"primary\";i:2;}s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1630524859;s:4:\"data\";a:1:{s:19:\"wp_inactive_widgets\";a:5:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";i:3;s:7:\"block-5\";i:4;s:7:\"block-6\";}}}s:18:\"custom_css_post_id\";i:-1;}', 'yes'),
(210, 'theme_switched', '', 'yes'),
(218, 'duplicate_post_copytitle', '1', 'yes'),
(219, 'duplicate_post_copydate', '0', 'yes'),
(220, 'duplicate_post_copystatus', '0', 'yes'),
(221, 'duplicate_post_copyslug', '0', 'yes'),
(222, 'duplicate_post_copyexcerpt', '1', 'yes'),
(223, 'duplicate_post_copycontent', '1', 'yes'),
(224, 'duplicate_post_copythumbnail', '1', 'yes'),
(225, 'duplicate_post_copytemplate', '1', 'yes'),
(226, 'duplicate_post_copyformat', '1', 'yes'),
(227, 'duplicate_post_copyauthor', '0', 'yes'),
(228, 'duplicate_post_copypassword', '0', 'yes'),
(229, 'duplicate_post_copyattachments', '0', 'yes'),
(230, 'duplicate_post_copychildren', '0', 'yes'),
(231, 'duplicate_post_copycomments', '0', 'yes'),
(232, 'duplicate_post_copymenuorder', '1', 'yes'),
(233, 'duplicate_post_taxonomies_blacklist', 'a:0:{}', 'yes'),
(234, 'duplicate_post_blacklist', '', 'yes'),
(235, 'duplicate_post_types_enabled', 'a:2:{i:0;s:4:\"post\";i:1;s:4:\"page\";}', 'yes'),
(236, 'duplicate_post_show_original_column', '0', 'yes'),
(237, 'duplicate_post_show_original_in_post_states', '0', 'yes'),
(238, 'duplicate_post_show_original_meta_box', '0', 'yes'),
(239, 'duplicate_post_show_link', 'a:3:{s:9:\"new_draft\";s:1:\"1\";s:5:\"clone\";s:1:\"1\";s:17:\"rewrite_republish\";s:1:\"1\";}', 'yes'),
(240, 'duplicate_post_show_link_in', 'a:4:{s:3:\"row\";s:1:\"1\";s:8:\"adminbar\";s:1:\"1\";s:9:\"submitbox\";s:1:\"1\";s:11:\"bulkactions\";s:1:\"1\";}', 'yes'),
(241, 'duplicate_post_show_notice', '1', 'no'),
(242, 'duplicate_post_version', '4.1.2', 'yes'),
(254, 'options_telefone', '(41) 3379-8790 ', 'no'),
(255, '_options_telefone', 'field_612fdcbabe527', 'no'),
(256, 'options_whatsapp', '(41) 99544-7794', 'no'),
(257, '_options_whatsapp', 'field_612fdcf9be528', 'no'),
(258, 'options_e-mail', 'contato@matrixuniformes.com.br', 'no'),
(259, '_options_e-mail', 'field_612fdd0bbe529', 'no'),
(260, 'options_logo', '112', 'no'),
(261, '_options_logo', 'field_612fdd27be52a', 'no'),
(262, 'options_logo_footer', '108', 'no'),
(263, '_options_logo_footer', 'field_612fecc529332', 'no'),
(264, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}', 'yes'),
(269, 'wpseo_taxonomy_meta', 'a:1:{s:9:\"categoria\";a:4:{i:3;a:3:{s:13:\"wpseo_focuskw\";s:20:\"Camisetas e Jaquetas\";s:13:\"wpseo_linkdex\";s:2:\"29\";s:19:\"wpseo_content_score\";s:2:\"60\";}i:4;a:3:{s:13:\"wpseo_focuskw\";s:16:\"Calças e Shorts\";s:13:\"wpseo_linkdex\";s:2:\"32\";s:19:\"wpseo_content_score\";s:2:\"60\";}i:5;a:3:{s:13:\"wpseo_focuskw\";s:6:\"Bonés\";s:13:\"wpseo_linkdex\";s:2:\"32\";s:19:\"wpseo_content_score\";s:2:\"60\";}i:6;a:3:{s:13:\"wpseo_focuskw\";s:15:\"Outros Produtos\";s:13:\"wpseo_linkdex\";s:2:\"37\";s:19:\"wpseo_content_score\";s:2:\"60\";}}}', 'yes'),
(283, 'options_endereco', 'Rua Eduardo Pinto da Rocha, 1137 - Curitiba - PR', 'no'),
(284, '_options_endereco', 'field_612ff3cb5b63b', 'no'),
(285, 'options_cep', 'CEP: 81850-000', 'no'),
(286, '_options_cep', 'field_612ff3d35b63c', 'no'),
(287, 'options_facebook', '#', 'no'),
(288, '_options_facebook', 'field_612ff42c168ee', 'no'),
(289, 'options_instagram', '#', 'no'),
(290, '_options_instagram', 'field_612ff441168ef', 'no'),
(292, 'category_children', 'a:0:{}', 'yes'),
(341, 'secret_key', 's7dv)GO%>/&B;cMnCcS);i)YSed.(l}v.DeY.Tc-(>;<a}Fbu&8D+3i:r8w ~uTK', 'no'),
(346, '_transient_health-check-site-status-result', '{\"good\":14,\"recommended\":4,\"critical\":1}', 'yes'),
(350, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:62:\"http://downloads.wordpress.org/release/pt_BR/wordpress-5.8.zip\";s:6:\"locale\";s:5:\"pt_BR\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:62:\"http://downloads.wordpress.org/release/pt_BR/wordpress-5.8.zip\";s:10:\"no_content\";s:0:\"\";s:11:\"new_bundled\";s:0:\"\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:3:\"5.8\";s:7:\"version\";s:3:\"5.8\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.6\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1630696655;s:15:\"version_checked\";s:3:\"5.8\";s:12:\"translations\";a:0:{}}', 'no'),
(363, 'categoria_children', 'a:0:{}', 'yes'),
(368, '_transient_timeout_wpseo_total_unindexed_posts', '1630697371', 'no'),
(369, '_transient_wpseo_total_unindexed_posts', '101', 'no'),
(370, '_transient_timeout_wpseo_total_unindexed_terms', '1630697372', 'no'),
(371, '_transient_wpseo_total_unindexed_terms', '5', 'no'),
(372, '_transient_timeout_wpseo_total_unindexed_post_type_archives', '1630697372', 'no'),
(373, '_transient_wpseo_total_unindexed_post_type_archives', '0', 'no'),
(388, '_site_transient_timeout_theme_roots', '1630698459', 'no'),
(389, '_site_transient_theme_roots', 'a:1:{s:6:\"matrix\";s:7:\"/themes\";}', 'no'),
(390, '_site_transient_update_themes', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1630696660;s:7:\"checked\";a:1:{s:6:\"matrix\";s:3:\"1.0\";}s:8:\"response\";a:1:{s:6:\"matrix\";a:6:{s:5:\"theme\";s:6:\"matrix\";s:11:\"new_version\";s:5:\"2.4.7\";s:3:\"url\";s:36:\"https://wordpress.org/themes/matrix/\";s:7:\"package\";s:54:\"https://downloads.wordpress.org/theme/matrix.2.4.7.zip\";s:8:\"requires\";s:3:\"4.0\";s:12:\"requires_php\";s:5:\"5.2.4\";}}s:9:\"no_update\";a:0:{}s:12:\"translations\";a:0:{}}', 'no'),
(391, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1630696661;s:8:\"response\";a:2:{s:24:\"wordpress-seo/wp-seo.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:27:\"w.org/plugins/wordpress-seo\";s:4:\"slug\";s:13:\"wordpress-seo\";s:6:\"plugin\";s:24:\"wordpress-seo/wp-seo.php\";s:11:\"new_version\";s:4:\"17.0\";s:3:\"url\";s:44:\"https://wordpress.org/plugins/wordpress-seo/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/plugin/wordpress-seo.17.0.zip\";s:5:\"icons\";a:3:{s:2:\"2x\";s:66:\"https://ps.w.org/wordpress-seo/assets/icon-256x256.png?rev=2363699\";s:2:\"1x\";s:58:\"https://ps.w.org/wordpress-seo/assets/icon.svg?rev=2363699\";s:3:\"svg\";s:58:\"https://ps.w.org/wordpress-seo/assets/icon.svg?rev=2363699\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:69:\"https://ps.w.org/wordpress-seo/assets/banner-1544x500.png?rev=1843435\";s:2:\"1x\";s:68:\"https://ps.w.org/wordpress-seo/assets/banner-772x250.png?rev=1843435\";}s:11:\"banners_rtl\";a:2:{s:2:\"2x\";s:73:\"https://ps.w.org/wordpress-seo/assets/banner-1544x500-rtl.png?rev=1843435\";s:2:\"1x\";s:72:\"https://ps.w.org/wordpress-seo/assets/banner-772x250-rtl.png?rev=1843435\";}s:8:\"requires\";s:3:\"5.6\";s:6:\"tested\";s:3:\"5.8\";s:12:\"requires_php\";s:6:\"5.6.20\";}s:34:\"advanced-custom-fields-pro/acf.php\";O:8:\"stdClass\":8:{s:4:\"slug\";s:26:\"advanced-custom-fields-pro\";s:6:\"plugin\";s:34:\"advanced-custom-fields-pro/acf.php\";s:11:\"new_version\";s:6:\"5.10.2\";s:3:\"url\";s:36:\"https://www.advancedcustomfields.com\";s:6:\"tested\";s:3:\"5.8\";s:7:\"package\";s:0:\"\";s:5:\"icons\";a:1:{s:7:\"default\";s:63:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png\";}s:7:\"banners\";a:2:{s:3:\"low\";s:77:\"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=1729102\";s:4:\"high\";s:78:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=1729099\";}}}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:3:{s:33:\"classic-editor/classic-editor.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:28:\"w.org/plugins/classic-editor\";s:4:\"slug\";s:14:\"classic-editor\";s:6:\"plugin\";s:33:\"classic-editor/classic-editor.php\";s:11:\"new_version\";s:5:\"1.6.2\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/classic-editor/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/plugin/classic-editor.1.6.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/classic-editor/assets/icon-256x256.png?rev=1998671\";s:2:\"1x\";s:67:\"https://ps.w.org/classic-editor/assets/icon-128x128.png?rev=1998671\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:70:\"https://ps.w.org/classic-editor/assets/banner-1544x500.png?rev=1998671\";s:2:\"1x\";s:69:\"https://ps.w.org/classic-editor/assets/banner-772x250.png?rev=1998676\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.9\";}s:36:\"contact-form-7/wp-contact-form-7.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:28:\"w.org/plugins/contact-form-7\";s:4:\"slug\";s:14:\"contact-form-7\";s:6:\"plugin\";s:36:\"contact-form-7/wp-contact-form-7.php\";s:11:\"new_version\";s:5:\"5.4.2\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/contact-form-7/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/plugin/contact-form-7.5.4.2.zip\";s:5:\"icons\";a:3:{s:2:\"2x\";s:67:\"https://ps.w.org/contact-form-7/assets/icon-256x256.png?rev=2279696\";s:2:\"1x\";s:59:\"https://ps.w.org/contact-form-7/assets/icon.svg?rev=2339255\";s:3:\"svg\";s:59:\"https://ps.w.org/contact-form-7/assets/icon.svg?rev=2339255\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:69:\"https://ps.w.org/contact-form-7/assets/banner-1544x500.png?rev=860901\";s:2:\"1x\";s:68:\"https://ps.w.org/contact-form-7/assets/banner-772x250.png?rev=880427\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"5.5\";}s:33:\"duplicate-post/duplicate-post.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:28:\"w.org/plugins/duplicate-post\";s:4:\"slug\";s:14:\"duplicate-post\";s:6:\"plugin\";s:33:\"duplicate-post/duplicate-post.php\";s:11:\"new_version\";s:5:\"4.1.2\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/duplicate-post/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/plugin/duplicate-post.4.1.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/duplicate-post/assets/icon-256x256.png?rev=2336666\";s:2:\"1x\";s:67:\"https://ps.w.org/duplicate-post/assets/icon-128x128.png?rev=2336666\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:70:\"https://ps.w.org/duplicate-post/assets/banner-1544x500.png?rev=2336666\";s:2:\"1x\";s:69:\"https://ps.w.org/duplicate-post/assets/banner-772x250.png?rev=2336666\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"5.6\";}}s:7:\"checked\";a:5:{s:34:\"advanced-custom-fields-pro/acf.php\";s:11:\"5.7.0-beta4\";s:33:\"classic-editor/classic-editor.php\";s:5:\"1.6.2\";s:36:\"contact-form-7/wp-contact-form-7.php\";s:5:\"5.4.2\";s:33:\"duplicate-post/duplicate-post.php\";s:5:\"4.1.2\";s:24:\"wordpress-seo/wp-seo.php\";s:4:\"16.9\";}}', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(393, 'rewrite_rules', 'a:171:{s:19:\"sitemap_index\\.xml$\";s:19:\"index.php?sitemap=1\";s:31:\"([^/]+?)-sitemap([0-9]+)?\\.xml$\";s:51:\"index.php?sitemap=$matches[1]&sitemap_n=$matches[2]\";s:24:\"([a-z]+)?-?sitemap\\.xsl$\";s:39:\"index.php?yoast-sitemap-xsl=$matches[1]\";s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:17:\"^wp-sitemap\\.xml$\";s:23:\"index.php?sitemap=index\";s:17:\"^wp-sitemap\\.xsl$\";s:36:\"index.php?sitemap-stylesheet=sitemap\";s:23:\"^wp-sitemap-index\\.xsl$\";s:34:\"index.php?sitemap-stylesheet=index\";s:48:\"^wp-sitemap-([a-z]+?)-([a-z\\d_-]+?)-(\\d+?)\\.xml$\";s:75:\"index.php?sitemap=$matches[1]&sitemap-subtype=$matches[2]&paged=$matches[3]\";s:34:\"^wp-sitemap-([a-z]+?)-(\\d+?)\\.xml$\";s:47:\"index.php?sitemap=$matches[1]&paged=$matches[2]\";s:50:\"categoria/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:48:\"index.php?categoria=$matches[1]&feed=$matches[2]\";s:45:\"categoria/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:48:\"index.php?categoria=$matches[1]&feed=$matches[2]\";s:26:\"categoria/([^/]+)/embed/?$\";s:42:\"index.php?categoria=$matches[1]&embed=true\";s:38:\"categoria/([^/]+)/page/?([0-9]{1,})/?$\";s:49:\"index.php?categoria=$matches[1]&paged=$matches[2]\";s:20:\"categoria/([^/]+)/?$\";s:31:\"index.php?categoria=$matches[1]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:35:\"banners/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:45:\"banners/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:65:\"banners/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:60:\"banners/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:60:\"banners/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:41:\"banners/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:24:\"banners/([^/]+)/embed/?$\";s:40:\"index.php?banners=$matches[1]&embed=true\";s:28:\"banners/([^/]+)/trackback/?$\";s:34:\"index.php?banners=$matches[1]&tb=1\";s:36:\"banners/([^/]+)/page/?([0-9]{1,})/?$\";s:47:\"index.php?banners=$matches[1]&paged=$matches[2]\";s:43:\"banners/([^/]+)/comment-page-([0-9]{1,})/?$\";s:47:\"index.php?banners=$matches[1]&cpage=$matches[2]\";s:32:\"banners/([^/]+)(?:/([0-9]+))?/?$\";s:46:\"index.php?banners=$matches[1]&page=$matches[2]\";s:24:\"banners/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:34:\"banners/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:54:\"banners/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:49:\"banners/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:49:\"banners/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:30:\"banners/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:36:\"produtos/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:46:\"produtos/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:66:\"produtos/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:61:\"produtos/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:61:\"produtos/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:42:\"produtos/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:25:\"produtos/([^/]+)/embed/?$\";s:41:\"index.php?produtos=$matches[1]&embed=true\";s:29:\"produtos/([^/]+)/trackback/?$\";s:35:\"index.php?produtos=$matches[1]&tb=1\";s:37:\"produtos/([^/]+)/page/?([0-9]{1,})/?$\";s:48:\"index.php?produtos=$matches[1]&paged=$matches[2]\";s:44:\"produtos/([^/]+)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?produtos=$matches[1]&cpage=$matches[2]\";s:33:\"produtos/([^/]+)(?:/([0-9]+))?/?$\";s:47:\"index.php?produtos=$matches[1]&page=$matches[2]\";s:25:\"produtos/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:35:\"produtos/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:55:\"produtos/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:50:\"produtos/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:50:\"produtos/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:31:\"produtos/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:36:\"clientes/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:46:\"clientes/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:66:\"clientes/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:61:\"clientes/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:61:\"clientes/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:42:\"clientes/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:25:\"clientes/([^/]+)/embed/?$\";s:41:\"index.php?clientes=$matches[1]&embed=true\";s:29:\"clientes/([^/]+)/trackback/?$\";s:35:\"index.php?clientes=$matches[1]&tb=1\";s:37:\"clientes/([^/]+)/page/?([0-9]{1,})/?$\";s:48:\"index.php?clientes=$matches[1]&paged=$matches[2]\";s:44:\"clientes/([^/]+)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?clientes=$matches[1]&cpage=$matches[2]\";s:33:\"clientes/([^/]+)(?:/([0-9]+))?/?$\";s:47:\"index.php?clientes=$matches[1]&page=$matches[2]\";s:25:\"clientes/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:35:\"clientes/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:55:\"clientes/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:50:\"clientes/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:50:\"clientes/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:31:\"clientes/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:40:\"fornecedores/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:50:\"fornecedores/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:70:\"fornecedores/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:65:\"fornecedores/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:65:\"fornecedores/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:46:\"fornecedores/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:29:\"fornecedores/([^/]+)/embed/?$\";s:45:\"index.php?fornecedores=$matches[1]&embed=true\";s:33:\"fornecedores/([^/]+)/trackback/?$\";s:39:\"index.php?fornecedores=$matches[1]&tb=1\";s:41:\"fornecedores/([^/]+)/page/?([0-9]{1,})/?$\";s:52:\"index.php?fornecedores=$matches[1]&paged=$matches[2]\";s:48:\"fornecedores/([^/]+)/comment-page-([0-9]{1,})/?$\";s:52:\"index.php?fornecedores=$matches[1]&cpage=$matches[2]\";s:37:\"fornecedores/([^/]+)(?:/([0-9]+))?/?$\";s:51:\"index.php?fornecedores=$matches[1]&page=$matches[2]\";s:29:\"fornecedores/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:39:\"fornecedores/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:59:\"fornecedores/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:54:\"fornecedores/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:54:\"fornecedores/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:35:\"fornecedores/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:38:\"index.php?&page_id=9&cpage=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:58:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:68:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:88:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:64:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:53:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$\";s:91:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$\";s:85:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1\";s:77:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:65:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]\";s:61:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]\";s:47:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:57:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:77:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:53:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]\";s:51:\"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]\";s:38:\"([0-9]{4})/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&cpage=$matches[2]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";}', 'yes');

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 3, '_wp_page_template', 'default'),
(3, 5, '_form', '<div class=\"col-sm-5\">\n[text* nome placeholder\"Nome\"]\n[email* email placeholder\"E-mail\"]\n[text* telefone placeholder\"Telefone\"]\n[text* empresa placeholder\"Empresa\"]\n</div>\n<div class=\"col-sm-7\">\n[textarea* mensagem placeholder\"Mensagem\"]\n</div>\n<div class=\"col-sm-12\">\n[submit \"Enviar Mensagem\"]\n</div>'),
(4, 5, '_mail', 'a:9:{s:6:\"active\";b:1;s:7:\"subject\";s:30:\"[_site_title] \"[your-subject]\"\";s:6:\"sender\";s:50:\"[_site_title] <luiz.fhelipe@mixsolucoesweb.com.br>\";s:9:\"recipient\";s:19:\"[_site_admin_email]\";s:4:\"body\";s:178:\"De: [your-name] <[your-email]>\nAssunto: [your-subject]\n\nCorpo da mensagem:\n[your-message]\n\n-- \nEste e-mail foi enviado de um formulário de contato em [_site_title] ([_site_url])\";s:18:\"additional_headers\";s:22:\"Reply-To: [your-email]\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}'),
(5, 5, '_mail_2', 'a:9:{s:6:\"active\";b:0;s:7:\"subject\";s:30:\"[_site_title] \"[your-subject]\"\";s:6:\"sender\";s:50:\"[_site_title] <luiz.fhelipe@mixsolucoesweb.com.br>\";s:9:\"recipient\";s:12:\"[your-email]\";s:4:\"body\";s:122:\"Corpo da mensagem:\n[your-message]\n\n-- \nEste e-mail foi enviado de um formulário de contato em [_site_title] ([_site_url])\";s:18:\"additional_headers\";s:29:\"Reply-To: [_site_admin_email]\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}'),
(6, 5, '_messages', 'a:22:{s:12:\"mail_sent_ok\";s:27:\"Agradecemos a sua mensagem.\";s:12:\"mail_sent_ng\";s:74:\"Ocorreu um erro ao tentar enviar sua mensagem. Tente novamente mais tarde.\";s:16:\"validation_error\";s:63:\"Um ou mais campos possuem um erro. Verifique e tente novamente.\";s:4:\"spam\";s:74:\"Ocorreu um erro ao tentar enviar sua mensagem. Tente novamente mais tarde.\";s:12:\"accept_terms\";s:72:\"Você deve aceitar os termos e condições antes de enviar sua mensagem.\";s:16:\"invalid_required\";s:24:\"O campo é obrigatório.\";s:16:\"invalid_too_long\";s:23:\"O campo é muito longo.\";s:17:\"invalid_too_short\";s:23:\"O campo é muito curto.\";s:13:\"upload_failed\";s:49:\"Ocorreu um erro desconhecido ao enviar o arquivo.\";s:24:\"upload_file_type_invalid\";s:59:\"Você não tem permissão para enviar esse tipo de arquivo.\";s:21:\"upload_file_too_large\";s:26:\"O arquivo é muito grande.\";s:23:\"upload_failed_php_error\";s:36:\"Ocorreu um erro ao enviar o arquivo.\";s:12:\"invalid_date\";s:34:\"O formato de data está incorreto.\";s:14:\"date_too_early\";s:44:\"A data é anterior à mais antiga permitida.\";s:13:\"date_too_late\";s:44:\"A data é posterior à maior data permitida.\";s:14:\"invalid_number\";s:34:\"O formato de número é inválido.\";s:16:\"number_too_small\";s:46:\"O número é menor do que o mínimo permitido.\";s:16:\"number_too_large\";s:46:\"O número é maior do que o máximo permitido.\";s:23:\"quiz_answer_not_correct\";s:39:\"A resposta para o quiz está incorreta.\";s:13:\"invalid_email\";s:45:\"O endereço de e-mail informado é inválido.\";s:11:\"invalid_url\";s:19:\"A URL é inválida.\";s:11:\"invalid_tel\";s:35:\"O número de telefone é inválido.\";}'),
(7, 5, '_additional_settings', ''),
(8, 5, '_locale', 'pt_BR'),
(11, 2, '_wp_trash_meta_status', 'publish'),
(12, 2, '_wp_trash_meta_time', '1630524952'),
(13, 2, '_wp_desired_post_slug', 'pagina-exemplo'),
(14, 3, '_wp_trash_meta_status', 'draft'),
(15, 3, '_wp_trash_meta_time', '1630524976'),
(16, 3, '_wp_desired_post_slug', 'politica-de-privacidade'),
(17, 9, '_edit_last', '1'),
(18, 9, '_yoast_wpseo_estimated-reading-time-minutes', ''),
(19, 9, '_edit_lock', '1630611474:1'),
(20, 11, '_edit_last', '1'),
(21, 11, '_edit_lock', '1630604850:1'),
(132, 68, '_wp_attached_file', '2021/09/bannerdesktop-150x150-1.png'),
(133, 68, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:150;s:6:\"height\";i:150;s:4:\"file\";s:35:\"2021/09/bannerdesktop-150x150-1.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(134, 69, '_wp_attached_file', '2021/09/bannerdesktop-300x85-1.png'),
(135, 69, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:300;s:6:\"height\";i:85;s:4:\"file\";s:34:\"2021/09/bannerdesktop-300x85-1.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:33:\"bannerdesktop-300x85-1-150x85.png\";s:5:\"width\";i:150;s:6:\"height\";i:85;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(136, 70, '_wp_attached_file', '2021/09/bannerdesktop-300x300-1.png'),
(137, 70, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:300;s:6:\"height\";i:300;s:4:\"file\";s:35:\"2021/09/bannerdesktop-300x300-1.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:35:\"bannerdesktop-300x300-1-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(138, 71, '_wp_attached_file', '2021/09/bannerdesktop-700x545-1.png'),
(139, 71, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:700;s:6:\"height\";i:545;s:4:\"file\";s:35:\"2021/09/bannerdesktop-700x545-1.png\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:35:\"bannerdesktop-700x545-1-300x234.png\";s:5:\"width\";i:300;s:6:\"height\";i:234;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:35:\"bannerdesktop-700x545-1-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(140, 72, '_wp_attached_file', '2021/09/bannerdesktop-768x218-1.png'),
(141, 72, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:768;s:6:\"height\";i:218;s:4:\"file\";s:35:\"2021/09/bannerdesktop-768x218-1.png\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:34:\"bannerdesktop-768x218-1-300x85.png\";s:5:\"width\";i:300;s:6:\"height\";i:85;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:35:\"bannerdesktop-768x218-1-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(142, 73, '_wp_attached_file', '2021/09/bannerdesktop-1024x291-1.png'),
(143, 73, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1024;s:6:\"height\";i:291;s:4:\"file\";s:36:\"2021/09/bannerdesktop-1024x291-1.png\";s:5:\"sizes\";a:3:{s:6:\"medium\";a:4:{s:4:\"file\";s:35:\"bannerdesktop-1024x291-1-300x85.png\";s:5:\"width\";i:300;s:6:\"height\";i:85;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:36:\"bannerdesktop-1024x291-1-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:36:\"bannerdesktop-1024x291-1-768x218.png\";s:5:\"width\";i:768;s:6:\"height\";i:218;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(144, 74, '_wp_attached_file', '2021/09/bannerdesktop-1536x437-1.png'),
(145, 74, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1536;s:6:\"height\";i:437;s:4:\"file\";s:36:\"2021/09/bannerdesktop-1536x437-1.png\";s:5:\"sizes\";a:4:{s:6:\"medium\";a:4:{s:4:\"file\";s:35:\"bannerdesktop-1536x437-1-300x85.png\";s:5:\"width\";i:300;s:6:\"height\";i:85;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:37:\"bannerdesktop-1536x437-1-1024x291.png\";s:5:\"width\";i:1024;s:6:\"height\";i:291;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:36:\"bannerdesktop-1536x437-1-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:36:\"bannerdesktop-1536x437-1-768x219.png\";s:5:\"width\";i:768;s:6:\"height\";i:219;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(146, 75, '_wp_attached_file', '2021/09/bannermobile.png'),
(147, 75, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:600;s:6:\"height\";i:500;s:4:\"file\";s:24:\"2021/09/bannermobile.png\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:24:\"bannermobile-300x250.png\";s:5:\"width\";i:300;s:6:\"height\";i:250;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:24:\"bannermobile-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(148, 76, '_wp_attached_file', '2021/09/bannermobile-150x150-1.png'),
(149, 76, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:150;s:6:\"height\";i:150;s:4:\"file\";s:34:\"2021/09/bannermobile-150x150-1.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(150, 77, '_wp_attached_file', '2021/09/bannermobile-300x250-1.png'),
(151, 77, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:300;s:6:\"height\";i:250;s:4:\"file\";s:34:\"2021/09/bannermobile-300x250-1.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:34:\"bannermobile-300x250-1-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(152, 78, '_wp_attached_file', '2021/09/bannermobile-300x300-1.png'),
(153, 78, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:300;s:6:\"height\";i:300;s:4:\"file\";s:34:\"2021/09/bannermobile-300x300-1.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:34:\"bannermobile-300x300-1-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(154, 79, '_wp_attached_file', '2021/09/bg-rodape.jpg'),
(155, 79, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:206;s:4:\"file\";s:21:\"2021/09/bg-rodape.jpg\";s:5:\"sizes\";a:5:{s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"bg-rodape-300x32.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:32;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:22:\"bg-rodape-1024x110.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:110;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"bg-rodape-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:20:\"bg-rodape-768x82.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:82;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:22:\"bg-rodape-1536x165.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:165;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(156, 80, '_wp_attached_file', '2021/09/bg-rodape-150x150-1.jpg'),
(157, 80, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:150;s:6:\"height\";i:150;s:4:\"file\";s:31:\"2021/09/bg-rodape-150x150-1.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(158, 81, '_wp_attached_file', '2021/09/bg-rodape-300x32-1.jpg'),
(159, 81, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:300;s:6:\"height\";i:32;s:4:\"file\";s:30:\"2021/09/bg-rodape-300x32-1.jpg\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:29:\"bg-rodape-300x32-1-150x32.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:32;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(160, 82, '_wp_attached_file', '2021/09/bg-rodape-300x206-1.jpg'),
(161, 82, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:300;s:6:\"height\";i:206;s:4:\"file\";s:31:\"2021/09/bg-rodape-300x206-1.jpg\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:31:\"bg-rodape-300x206-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(162, 83, '_wp_attached_file', '2021/09/bg-rodape-700x206-1.jpg'),
(163, 83, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:700;s:6:\"height\";i:206;s:4:\"file\";s:31:\"2021/09/bg-rodape-700x206-1.jpg\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:30:\"bg-rodape-700x206-1-300x88.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:88;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:31:\"bg-rodape-700x206-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(164, 84, '_wp_attached_file', '2021/09/bg-rodape-768x82-1.jpg'),
(165, 84, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:768;s:6:\"height\";i:82;s:4:\"file\";s:30:\"2021/09/bg-rodape-768x82-1.jpg\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:29:\"bg-rodape-768x82-1-300x32.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:32;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:29:\"bg-rodape-768x82-1-150x82.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:82;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(166, 85, '_wp_attached_file', '2021/09/bg-rodape-1024x110-1.jpg'),
(167, 85, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1024;s:6:\"height\";i:110;s:4:\"file\";s:32:\"2021/09/bg-rodape-1024x110-1.jpg\";s:5:\"sizes\";a:3:{s:6:\"medium\";a:4:{s:4:\"file\";s:31:\"bg-rodape-1024x110-1-300x32.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:32;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:32:\"bg-rodape-1024x110-1-150x110.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:110;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:31:\"bg-rodape-1024x110-1-768x83.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:83;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(168, 86, '_wp_attached_file', '2021/09/bg-rodape-1536x165-1.jpg'),
(169, 86, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1536;s:6:\"height\";i:165;s:4:\"file\";s:32:\"2021/09/bg-rodape-1536x165-1.jpg\";s:5:\"sizes\";a:4:{s:6:\"medium\";a:4:{s:4:\"file\";s:31:\"bg-rodape-1536x165-1-300x32.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:32;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:33:\"bg-rodape-1536x165-1-1024x110.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:110;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:32:\"bg-rodape-1536x165-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:31:\"bg-rodape-1536x165-1-768x83.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:83;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(170, 87, '_wp_attached_file', '2021/09/bones-1.jpg'),
(171, 87, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:572;s:6:\"height\";i:572;s:4:\"file\";s:19:\"2021/09/bones-1.jpg\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"bones-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"bones-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(172, 88, '_wp_attached_file', '2021/09/bones-1-150x150-1.jpg'),
(173, 88, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:150;s:6:\"height\";i:150;s:4:\"file\";s:29:\"2021/09/bones-1-150x150-1.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(174, 89, '_wp_attached_file', '2021/09/bones-1-236x178-1.jpg'),
(175, 89, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:236;s:6:\"height\";i:178;s:4:\"file\";s:29:\"2021/09/bones-1-236x178-1.jpg\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:29:\"bones-1-236x178-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(176, 90, '_wp_attached_file', '2021/09/bones-1-300x300-1.jpg'),
(177, 90, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:300;s:6:\"height\";i:300;s:4:\"file\";s:29:\"2021/09/bones-1-300x300-1.jpg\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:29:\"bones-1-300x300-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(178, 91, '_wp_attached_file', '2021/09/calcas-e-shorts.jpg'),
(179, 91, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:582;s:6:\"height\";i:572;s:4:\"file\";s:27:\"2021/09/calcas-e-shorts.jpg\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:27:\"calcas-e-shorts-300x295.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:295;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:27:\"calcas-e-shorts-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(180, 92, '_wp_attached_file', '2021/09/calcas-e-shorts-150x150-1.jpg'),
(181, 92, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:150;s:6:\"height\";i:150;s:4:\"file\";s:37:\"2021/09/calcas-e-shorts-150x150-1.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(182, 93, '_wp_attached_file', '2021/09/calcas-e-shorts-236x178-1.jpg'),
(183, 93, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:236;s:6:\"height\";i:178;s:4:\"file\";s:37:\"2021/09/calcas-e-shorts-236x178-1.jpg\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:37:\"calcas-e-shorts-236x178-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(184, 94, '_wp_attached_file', '2021/09/calcas-e-shorts-300x295-1.jpg'),
(185, 94, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:300;s:6:\"height\";i:295;s:4:\"file\";s:37:\"2021/09/calcas-e-shorts-300x295-1.jpg\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:37:\"calcas-e-shorts-300x295-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(186, 95, '_wp_attached_file', '2021/09/calcas-e-shorts-300x300-1.jpg'),
(187, 95, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:300;s:6:\"height\";i:300;s:4:\"file\";s:37:\"2021/09/calcas-e-shorts-300x300-1.jpg\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:37:\"calcas-e-shorts-300x300-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(188, 96, '_wp_attached_file', '2021/09/camisetas-e-jaquetas.jpg'),
(189, 96, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:640;s:6:\"height\";i:549;s:4:\"file\";s:32:\"2021/09/camisetas-e-jaquetas.jpg\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:32:\"camisetas-e-jaquetas-300x257.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:257;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:32:\"camisetas-e-jaquetas-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(190, 97, '_wp_attached_file', '2021/09/camisetas-e-jaquetas-150x150-1.jpg'),
(191, 97, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:150;s:6:\"height\";i:150;s:4:\"file\";s:42:\"2021/09/camisetas-e-jaquetas-150x150-1.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(192, 98, '_wp_attached_file', '2021/09/camisetas-e-jaquetas-236x178-1.jpg'),
(193, 98, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:236;s:6:\"height\";i:178;s:4:\"file\";s:42:\"2021/09/camisetas-e-jaquetas-236x178-1.jpg\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:42:\"camisetas-e-jaquetas-236x178-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(194, 99, '_wp_attached_file', '2021/09/camisetas-e-jaquetas-300x257-1.jpg'),
(195, 99, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:300;s:6:\"height\";i:257;s:4:\"file\";s:42:\"2021/09/camisetas-e-jaquetas-300x257-1.jpg\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:42:\"camisetas-e-jaquetas-300x257-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(196, 100, '_wp_attached_file', '2021/09/camisetas-e-jaquetas-300x300-1.jpg'),
(197, 100, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:300;s:6:\"height\";i:300;s:4:\"file\";s:42:\"2021/09/camisetas-e-jaquetas-300x300-1.jpg\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:42:\"camisetas-e-jaquetas-300x300-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(198, 101, '_wp_attached_file', '2021/09/clientforne.png'),
(199, 101, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:236;s:6:\"height\";i:178;s:4:\"file\";s:23:\"2021/09/clientforne.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:23:\"clientforne-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(200, 102, '_wp_attached_file', '2021/09/clientforne-150x150-1.png'),
(201, 102, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:150;s:6:\"height\";i:150;s:4:\"file\";s:33:\"2021/09/clientforne-150x150-1.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(202, 103, '_wp_attached_file', '2021/09/conteudo.png'),
(203, 103, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:540;s:6:\"height\";i:464;s:4:\"file\";s:20:\"2021/09/conteudo.png\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"conteudo-300x258.png\";s:5:\"width\";i:300;s:6:\"height\";i:258;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"conteudo-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(204, 104, '_wp_attached_file', '2021/09/conteudo-150x150-1.png'),
(205, 104, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:150;s:6:\"height\";i:150;s:4:\"file\";s:30:\"2021/09/conteudo-150x150-1.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(206, 105, '_wp_attached_file', '2021/09/conteudo-300x258-1.png'),
(207, 105, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:300;s:6:\"height\";i:258;s:4:\"file\";s:30:\"2021/09/conteudo-300x258-1.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:30:\"conteudo-300x258-1-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(208, 106, '_wp_attached_file', '2021/09/conteudo-300x300-1.png'),
(209, 106, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:300;s:6:\"height\";i:300;s:4:\"file\";s:30:\"2021/09/conteudo-300x300-1.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:30:\"conteudo-300x300-1-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(210, 107, '_wp_attached_file', '2021/09/fecha-menu.png'),
(211, 107, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:72;s:6:\"height\";i:72;s:4:\"file\";s:22:\"2021/09/fecha-menu.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(212, 108, '_wp_attached_file', '2021/09/logo-footer.png'),
(213, 108, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:310;s:6:\"height\";i:126;s:4:\"file\";s:23:\"2021/09/logo-footer.png\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:23:\"logo-footer-300x122.png\";s:5:\"width\";i:300;s:6:\"height\";i:122;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:23:\"logo-footer-150x126.png\";s:5:\"width\";i:150;s:6:\"height\";i:126;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(214, 109, '_wp_attached_file', '2021/09/logo-footer-150x126-1.png'),
(215, 109, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:150;s:6:\"height\";i:126;s:4:\"file\";s:33:\"2021/09/logo-footer-150x126-1.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(216, 110, '_wp_attached_file', '2021/09/logo-footer-300x122-1.png'),
(217, 110, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:300;s:6:\"height\";i:122;s:4:\"file\";s:33:\"2021/09/logo-footer-300x122-1.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:33:\"logo-footer-300x122-1-150x122.png\";s:5:\"width\";i:150;s:6:\"height\";i:122;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(218, 111, '_wp_attached_file', '2021/09/logo-footer-300x126-1.png'),
(219, 111, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:300;s:6:\"height\";i:126;s:4:\"file\";s:33:\"2021/09/logo-footer-300x126-1.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:33:\"logo-footer-300x126-1-150x126.png\";s:5:\"width\";i:150;s:6:\"height\";i:126;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(220, 112, '_wp_attached_file', '2021/09/logo-header.png'),
(221, 112, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:266;s:6:\"height\";i:109;s:4:\"file\";s:23:\"2021/09/logo-header.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:23:\"logo-header-150x109.png\";s:5:\"width\";i:150;s:6:\"height\";i:109;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(222, 113, '_wp_attached_file', '2021/09/logo-header-150x109-1.png'),
(223, 113, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:150;s:6:\"height\";i:109;s:4:\"file\";s:33:\"2021/09/logo-header-150x109-1.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(224, 114, '_wp_attached_file', '2021/09/logo-mmd.png'),
(225, 114, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:95;s:6:\"height\";i:37;s:4:\"file\";s:20:\"2021/09/logo-mmd.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(226, 115, '_wp_attached_file', '2021/09/outros-produtos.jpg'),
(227, 115, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:647;s:6:\"height\";i:639;s:4:\"file\";s:27:\"2021/09/outros-produtos.jpg\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:27:\"outros-produtos-300x296.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:296;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:27:\"outros-produtos-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(228, 116, '_wp_attached_file', '2021/09/outros-produtos-150x150-1.jpg'),
(229, 116, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:150;s:6:\"height\";i:150;s:4:\"file\";s:37:\"2021/09/outros-produtos-150x150-1.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(230, 117, '_wp_attached_file', '2021/09/outros-produtos-236x178-1.jpg'),
(231, 117, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:236;s:6:\"height\";i:178;s:4:\"file\";s:37:\"2021/09/outros-produtos-236x178-1.jpg\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:37:\"outros-produtos-236x178-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(232, 118, '_wp_attached_file', '2021/09/outros-produtos-300x296-1.jpg'),
(233, 118, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:300;s:6:\"height\";i:296;s:4:\"file\";s:37:\"2021/09/outros-produtos-300x296-1.jpg\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:37:\"outros-produtos-300x296-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(234, 119, '_wp_attached_file', '2021/09/outros-produtos-300x300-1.jpg'),
(235, 119, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:300;s:6:\"height\";i:300;s:4:\"file\";s:37:\"2021/09/outros-produtos-300x300-1.jpg\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:37:\"outros-produtos-300x300-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(236, 120, '_wp_attached_file', '2021/09/padrao.png'),
(237, 120, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:204;s:6:\"height\";i:204;s:4:\"file\";s:18:\"2021/09/padrao.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"padrao-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(238, 121, '_wp_attached_file', '2021/09/padrao-150x150-1.png'),
(239, 121, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:150;s:6:\"height\";i:150;s:4:\"file\";s:28:\"2021/09/padrao-150x150-1.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(240, 122, '_wp_attached_file', '2021/09/bannerdesktop.png'),
(241, 122, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1916;s:6:\"height\";i:545;s:4:\"file\";s:25:\"2021/09/bannerdesktop.png\";s:5:\"sizes\";a:5:{s:6:\"medium\";a:4:{s:4:\"file\";s:24:\"bannerdesktop-300x85.png\";s:5:\"width\";i:300;s:6:\"height\";i:85;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:26:\"bannerdesktop-1024x291.png\";s:5:\"width\";i:1024;s:6:\"height\";i:291;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:25:\"bannerdesktop-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:25:\"bannerdesktop-768x218.png\";s:5:\"width\";i:768;s:6:\"height\";i:218;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:26:\"bannerdesktop-1536x437.png\";s:5:\"width\";i:1536;s:6:\"height\";i:437;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(242, 123, '_edit_last', '1'),
(243, 123, '_yoast_wpseo_estimated-reading-time-minutes', ''),
(244, 123, '_edit_lock', '1630602023:1'),
(245, 125, '_edit_last', '1'),
(246, 125, '_yoast_wpseo_estimated-reading-time-minutes', ''),
(247, 125, '_edit_lock', '1630601554:1'),
(248, 127, '_edit_last', '1'),
(249, 127, '_yoast_wpseo_estimated-reading-time-minutes', ''),
(250, 127, '_edit_lock', '1630600067:1'),
(251, 130, '_edit_last', '1'),
(252, 130, '_edit_lock', '1630538923:1'),
(253, 9, 'titulo_camisetas', 'Camisetas'),
(254, 9, '_titulo_camisetas', 'field_612fdd71bb965'),
(255, 9, 'texto_camisetas', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Praesent iaculis blandit congue. Nunc pretium neque sed blandit imperdiet. Morbi turpis tortor, pretium nec ultricies ac, facilisis vel elit. Mauris efficitur lorem nec enim auctor, nec viverra lorem tempor. Praesent porta lorem ut pretium finibus. Proin posuere non turpis vitae pulvinar.'),
(256, 9, '_texto_camisetas', 'field_612fdd84bb966'),
(257, 9, 'link_camisetas', '#'),
(258, 9, '_link_camisetas', 'field_612fdd95bb967'),
(259, 9, 'imagem_camisetas', '103'),
(260, 9, '_imagem_camisetas', 'field_612fddd6bb968'),
(261, 10, 'titulo_camisetas', 'Camisetas'),
(262, 10, '_titulo_camisetas', 'field_612fdd71bb965'),
(263, 10, 'texto_camisetas', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Praesent iaculis blandit congue. Nunc pretium neque sed blandit imperdiet. Morbi turpis tortor, pretium nec ultricies ac, facilisis vel elit. Mauris efficitur lorem nec enim auctor, nec viverra lorem tempor. Praesent porta lorem ut pretium finibus. Proin posuere non turpis vitae pulvinar.'),
(264, 10, '_texto_camisetas', 'field_612fdd84bb966'),
(265, 10, 'link_camisetas', '#'),
(266, 10, '_link_camisetas', 'field_612fdd95bb967'),
(267, 10, 'imagem_camisetas', '103'),
(268, 10, '_imagem_camisetas', 'field_612fddd6bb968'),
(269, 150, '_edit_last', '1'),
(270, 150, '_edit_lock', '1630533043:1'),
(271, 154, '_menu_item_type', 'post_type'),
(272, 154, '_menu_item_menu_item_parent', '0'),
(273, 154, '_menu_item_object_id', '9'),
(274, 154, '_menu_item_object', 'page'),
(275, 154, '_menu_item_target', ''),
(276, 154, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(277, 154, '_menu_item_xfn', ''),
(278, 154, '_menu_item_url', ''),
(280, 155, '_menu_item_type', 'post_type'),
(281, 155, '_menu_item_menu_item_parent', '0'),
(282, 155, '_menu_item_object_id', '125'),
(283, 155, '_menu_item_object', 'page'),
(284, 155, '_menu_item_target', ''),
(285, 155, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(286, 155, '_menu_item_xfn', ''),
(287, 155, '_menu_item_url', ''),
(289, 156, '_menu_item_type', 'post_type'),
(290, 156, '_menu_item_menu_item_parent', '0'),
(291, 156, '_menu_item_object_id', '123'),
(292, 156, '_menu_item_object', 'page'),
(293, 156, '_menu_item_target', ''),
(294, 156, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(295, 156, '_menu_item_xfn', ''),
(296, 156, '_menu_item_url', ''),
(298, 157, '_menu_item_type', 'post_type'),
(299, 157, '_menu_item_menu_item_parent', '0'),
(300, 157, '_menu_item_object_id', '127'),
(301, 157, '_menu_item_object', 'page'),
(302, 157, '_menu_item_target', ''),
(303, 157, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(304, 157, '_menu_item_xfn', ''),
(305, 157, '_menu_item_url', ''),
(307, 1, '_wp_trash_meta_status', 'publish');
INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(308, 1, '_wp_trash_meta_time', '1630531435'),
(309, 1, '_wp_desired_post_slug', 'ola-mundo'),
(310, 1, '_wp_trash_meta_comments_status', 'a:1:{i:1;s:1:\"1\";}'),
(311, 159, '_edit_last', '1'),
(312, 159, '_edit_lock', '1630531449:1'),
(313, 159, '_wp_trash_meta_status', 'draft'),
(314, 159, '_wp_trash_meta_time', '1630531466'),
(315, 159, '_wp_desired_post_slug', ''),
(316, 162, '_edit_last', '1'),
(317, 162, '_edit_lock', '1630532020:1'),
(318, 162, '_wp_page_template', 'default'),
(319, 162, '_yoast_wpseo_estimated-reading-time-minutes', ''),
(320, 9, '_wp_page_template', 'templates/home.php'),
(321, 9, 'titulo_shorts', 'Calças & Shorts'),
(322, 9, '_titulo_shorts', 'field_612feb8c661c5'),
(323, 9, 'texto_shorts', 'Donec venenatis purus at enim dignissim bibendum. Sed mattis gravida tellus, eget condimentum mi faucibus a. Praesent sed mi sed elit dignissim laoreet. Nulla ultricies varius nulla vel tincidunt. Praesent id lacus ac velit pellentesque malesuada. Aliquam eu malesuada nulla, at venenatis velit. Vestibulum in molestie nulla, vitae blandit lectus.'),
(324, 9, '_texto_shorts', 'field_612febe3661c6'),
(325, 9, 'link_shorts', '#'),
(326, 9, '_link_shorts', 'field_612febf3661c7'),
(327, 9, 'imagem_shorts', '103'),
(328, 9, '_imagem_shorts', 'field_612fec09661c8'),
(329, 9, 'titulo_bones', 'Bonés'),
(330, 9, '_titulo_bones', 'field_612fec35661ca'),
(331, 9, 'texto_bones', 'Vestibulum risus magna, commodo eget finibus nec, tristique quis neque. Praesent ante arcu, euismod dictum ligula a, semper accumsan tortor. Donec vestibulum lorem id velit sodales, quis placerat leo molestie. Maecenas scelerisque libero nunc, fermentum commodo orci porttitor eget.'),
(332, 9, '_texto_bones', 'field_612fec45661cb'),
(333, 9, 'link_bones', '#'),
(334, 9, '_link_bones', 'field_612fec5a661cc'),
(335, 9, 'imagem_bones', '103'),
(336, 9, '_imagem_bones', 'field_612fec60661cd'),
(337, 10, 'titulo_shorts', 'Calças & Shorts'),
(338, 10, '_titulo_shorts', 'field_612feb8c661c5'),
(339, 10, 'texto_shorts', 'Donec venenatis purus at enim dignissim bibendum. Sed mattis gravida tellus, eget condimentum mi faucibus a. Praesent sed mi sed elit dignissim laoreet. Nulla ultricies varius nulla vel tincidunt. Praesent id lacus ac velit pellentesque malesuada. Aliquam eu malesuada nulla, at venenatis velit. Vestibulum in molestie nulla, vitae blandit lectus.'),
(340, 10, '_texto_shorts', 'field_612febe3661c6'),
(341, 10, 'link_shorts', '#'),
(342, 10, '_link_shorts', 'field_612febf3661c7'),
(343, 10, 'imagem_shorts', '103'),
(344, 10, '_imagem_shorts', 'field_612fec09661c8'),
(345, 10, 'titulo_bones', 'Bonés'),
(346, 10, '_titulo_bones', 'field_612fec35661ca'),
(347, 10, 'texto_bones', 'Vestibulum risus magna, commodo eget finibus nec, tristique quis neque. Praesent ante arcu, euismod dictum ligula a, semper accumsan tortor. Donec vestibulum lorem id velit sodales, quis placerat leo molestie. Maecenas scelerisque libero nunc, fermentum commodo orci porttitor eget.'),
(348, 10, '_texto_bones', 'field_612fec45661cb'),
(349, 10, 'link_bones', '#'),
(350, 10, '_link_bones', 'field_612fec5a661cc'),
(351, 10, 'imagem_bones', '103'),
(352, 10, '_imagem_bones', 'field_612fec60661cd'),
(353, 125, '_wp_page_template', 'templates/fornecedores.php'),
(354, 123, '_wp_page_template', 'templates/contato.php'),
(355, 162, '_wp_trash_meta_status', 'publish'),
(356, 162, '_wp_trash_meta_time', '1630532163'),
(357, 162, '_wp_desired_post_slug', 'produtos'),
(358, 127, '_wp_page_template', 'templates/quem-somos.php'),
(359, 150, '_wp_trash_meta_status', 'draft'),
(360, 150, '_wp_trash_meta_time', '1630533190'),
(361, 150, '_wp_desired_post_slug', ''),
(362, 9, 'titulo_clientes_fornecedores', 'Clientes e Fornecedores'),
(363, 9, '_titulo_clientes_fornecedores', 'field_61310cfac8b47'),
(364, 9, 'lista_clientes_fornecedores', '8'),
(365, 9, '_lista_clientes_fornecedores', 'field_61310d15c8b48'),
(366, 10, 'titulo_clientes_fornecedores', 'Clientes e Fornecedores'),
(367, 10, '_titulo_clientes_fornecedores', 'field_61310cfac8b47'),
(368, 10, 'lista_clientes_fornecedores', '8'),
(369, 10, '_lista_clientes_fornecedores', 'field_61310d15c8b48'),
(370, 177, '_edit_last', '1'),
(371, 177, '_edit_lock', '1630604359:1'),
(372, 180, '_edit_last', '1'),
(373, 180, '_edit_lock', '1630600575:1'),
(374, 183, '_edit_last', '1'),
(375, 183, 'imagem', '101'),
(376, 183, '_imagem', 'field_612ff9f8619fb'),
(377, 183, '_yoast_wpseo_estimated-reading-time-minutes', ''),
(378, 183, '_edit_lock', '1630536726:1'),
(379, 176, '_edit_last', '1'),
(380, 176, '_edit_lock', '1630534496:1'),
(381, 176, '_yoast_wpseo_estimated-reading-time-minutes', ''),
(382, 176, 'imagem', '101'),
(383, 176, '_imagem', 'field_612ff6df944e0'),
(384, 185, '_edit_last', '1'),
(385, 185, '_edit_lock', '1630534514:1'),
(386, 185, 'imagem', '101'),
(387, 185, '_imagem', 'field_612ff6df944e0'),
(388, 185, '_yoast_wpseo_estimated-reading-time-minutes', ''),
(389, 186, '_edit_last', '1'),
(390, 186, '_edit_lock', '1630534533:1'),
(391, 186, 'imagem', '101'),
(392, 186, '_imagem', 'field_612ff6df944e0'),
(393, 186, '_yoast_wpseo_estimated-reading-time-minutes', ''),
(394, 187, '_edit_last', '1'),
(395, 187, '_edit_lock', '1630534548:1'),
(396, 187, 'imagem', '101'),
(397, 187, '_imagem', 'field_612ff6df944e0'),
(398, 187, '_yoast_wpseo_estimated-reading-time-minutes', ''),
(399, 188, '_edit_last', '1'),
(400, 188, '_edit_lock', '1630534564:1'),
(401, 188, 'imagem', '101'),
(402, 188, '_imagem', 'field_612ff6df944e0'),
(403, 188, '_yoast_wpseo_estimated-reading-time-minutes', ''),
(404, 189, '_edit_last', '1'),
(405, 189, '_edit_lock', '1630534580:1'),
(406, 189, 'imagem', '101'),
(407, 189, '_imagem', 'field_612ff6df944e0'),
(408, 189, '_yoast_wpseo_estimated-reading-time-minutes', ''),
(409, 190, '_edit_last', '1'),
(410, 190, '_edit_lock', '1630534598:1'),
(411, 190, 'imagem', '101'),
(412, 190, '_imagem', 'field_612ff6df944e0'),
(413, 190, '_yoast_wpseo_estimated-reading-time-minutes', ''),
(414, 191, '_edit_last', '1'),
(415, 191, '_edit_lock', '1630600272:1'),
(416, 9, 'titulo_quem_somos', 'Quem somos'),
(417, 9, '_titulo_quem_somos', 'field_613004be3903a'),
(418, 9, 'texto_quem_somos', 'Fusce ultricies imperdiet odio, non volutpat ex commodo quis. Nam auctor, nibh at ornare euismod, sem mi congue magna, in condimentum orci turpis id nunc. Mauris fermentum ipsum a ipsum malesuada, quis commodo arcu placerat. Sed risus eros, maximus auctor vulputate eu, scelerisque et enim. In eu dolor rutrum, molestie orci vel, mattis ligula. Nullam consequat metus ut congue consequat. Sed pellentesque vehicula justo sed consectetur.'),
(419, 9, '_texto_quem_somos', 'field_613004dc3903b'),
(420, 9, 'link_quem_somos', '#'),
(421, 9, '_link_quem_somos', 'field_613004e73903c'),
(422, 9, 'imagem_quem_somos', '103'),
(423, 9, '_imagem_quem_somos', 'field_613004f03903d'),
(424, 10, 'titulo_quem_somos', 'Quem somos'),
(425, 10, '_titulo_quem_somos', 'field_613004be3903a'),
(426, 10, 'texto_quem_somos', 'Fusce ultricies imperdiet odio, non volutpat ex commodo quis. Nam auctor, nibh at ornare euismod, sem mi congue magna, in condimentum orci turpis id nunc. Mauris fermentum ipsum a ipsum malesuada, quis commodo arcu placerat. Sed risus eros, maximus auctor vulputate eu, scelerisque et enim. In eu dolor rutrum, molestie orci vel, mattis ligula. Nullam consequat metus ut congue consequat. Sed pellentesque vehicula justo sed consectetur.'),
(427, 10, '_texto_quem_somos', 'field_613004dc3903b'),
(428, 10, 'link_quem_somos', '#'),
(429, 10, '_link_quem_somos', 'field_613004e73903c'),
(430, 10, 'imagem_quem_somos', '103'),
(431, 10, '_imagem_quem_somos', 'field_613004f03903d'),
(432, 198, '_menu_item_type', 'custom'),
(433, 198, '_menu_item_menu_item_parent', '0'),
(434, 198, '_menu_item_object_id', '198'),
(435, 198, '_menu_item_object', 'custom'),
(436, 198, '_menu_item_target', ''),
(437, 198, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(438, 198, '_menu_item_xfn', ''),
(439, 198, '_menu_item_url', '#'),
(441, 199, '_edit_last', '1'),
(442, 199, '_yoast_wpseo_estimated-reading-time-minutes', ''),
(443, 199, '_edit_lock', '1630537724:1'),
(444, 200, '_edit_last', '1'),
(445, 200, '_edit_lock', '1630539426:1'),
(446, 206, '_wp_attached_file', '2021/09/bannermobile-1.png'),
(447, 206, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:600;s:6:\"height\";i:500;s:4:\"file\";s:26:\"2021/09/bannermobile-1.png\";s:5:\"sizes\";a:5:{s:6:\"medium\";a:4:{s:4:\"file\";s:26:\"bannermobile-1-300x250.png\";s:5:\"width\";i:300;s:6:\"height\";i:250;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:26:\"bannermobile-1-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:4:\"post\";a:4:{s:4:\"file\";s:26:\"bannermobile-1-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:16:\"produtoThumbnail\";a:4:{s:4:\"file\";s:26:\"bannermobile-1-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:7:\"cliente\";a:4:{s:4:\"file\";s:26:\"bannermobile-1-236x178.png\";s:5:\"width\";i:236;s:6:\"height\";i:178;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(448, 199, 'imagem_desktop', '122'),
(449, 199, '_imagem_desktop', 'field_6130074abea11'),
(450, 199, 'imagem_mobile', '206'),
(451, 199, '_imagem_mobile', 'field_6130077cbea13'),
(452, 199, 'link', '#'),
(453, 199, '_link', 'field_61300789bea14'),
(454, 207, '_edit_last', '1'),
(455, 207, '_edit_lock', '1630537757:1'),
(456, 207, 'imagem_desktop', '122'),
(457, 207, '_imagem_desktop', 'field_6130074abea11'),
(458, 207, 'imagem_mobile', '206'),
(459, 207, '_imagem_mobile', 'field_6130077cbea13'),
(460, 207, 'link', '#'),
(461, 207, '_link', 'field_61300789bea14'),
(462, 207, '_yoast_wpseo_estimated-reading-time-minutes', ''),
(463, 208, '_edit_last', '1'),
(464, 208, 'imagem_desktop', '122'),
(465, 208, '_imagem_desktop', 'field_6130074abea11'),
(466, 208, 'imagem_mobile', '206'),
(467, 208, '_imagem_mobile', 'field_6130077cbea13'),
(468, 208, 'link', '#'),
(469, 208, '_link', 'field_61300789bea14'),
(470, 208, '_yoast_wpseo_estimated-reading-time-minutes', ''),
(471, 208, '_edit_lock', '1630537790:1'),
(472, 209, '_edit_last', '1'),
(473, 209, '_edit_lock', '1630537880:1'),
(474, 209, 'imagem_desktop', '122'),
(475, 209, '_imagem_desktop', 'field_6130074abea11'),
(476, 209, 'imagem_mobile', '206'),
(477, 209, '_imagem_mobile', 'field_6130077cbea13'),
(478, 209, 'link', '#'),
(479, 209, '_link', 'field_61300789bea14'),
(480, 209, '_yoast_wpseo_estimated-reading-time-minutes', ''),
(481, 210, '_edit_last', '1'),
(482, 210, '_edit_lock', '1630609097:1'),
(483, 210, '_yoast_wpseo_estimated-reading-time-minutes', ''),
(484, 210, 'tp_post_counter', '1'),
(485, 211, '_edit_last', '1'),
(486, 211, '_edit_lock', '1630600519:1'),
(487, 127, 'titulo_quemSomos', 'Quem somos'),
(488, 127, '_titulo_quemSomos', 'field_6130f8afe1ea8'),
(489, 127, 'subtitulo', '\"Não se trata apenas de quem somos, mas se trata do que queremos e onde chegaremos.\"'),
(490, 127, '_subtitulo', 'field_6130f8c6e1ea9'),
(491, 127, 'texto_quemSomos', 'A Matrix Uniformes, como muitas empresas nasceu de forma simples, mas com um objetivo determinado de ser o diferencial no mercado de vestimentas profissionais no Paraná e no Brasil.\r\n\r\nCriada em 1995, nossa empresa, desde então, tem de fundamental importância garantir uma boa qualidade nos uniformes a qual entregamos a você, cuidadosamente com cada detalhe e deixando-os do jeito que você tenciona, para deixar sua empresa mais bonita e organizada como desejar. Nosso objetivo, que vai além de produzir e vender uniformes, é alcançar êxito e sentirmo-nos satisfeitos com nosso trabalho, sabendo que dezenas, centenas e até milhares de empesas estão sendo bem atendidas, pagando um preço justo e recebendo seu material com um prazo rígido.'),
(492, 127, '_texto_quemSomos', 'field_6130f8d5e1eaa'),
(493, 127, 'imagem_quemSomos', '103'),
(494, 127, '_imagem_quemSomos', 'field_6130f8ece1eab'),
(495, 127, 'titulo_quem_content_2', 'Missão:'),
(496, 127, '_titulo_quem_content_2', 'field_6130f962e1ead'),
(497, 127, 'conteudo_quem_content_2', 'Produzir continuamente, com qualidade, uniformes profissionais que ofereçam conforto, estética, segurança e durabilidade aos seus usuários, sempre mantendo os princípios da responsabilidade social, o respeito e a preservação do meio ambientes e o compromisso com a sustentabilidade. Visando que nossa era é a da tecnologia, pensamos em inovação todos os dias, pois nossa discussão não é para saber se vamos inovar, mas para definir quando e como inovaremos.'),
(498, 127, '_conteudo_quem_content_2', 'field_6130f972e1eae'),
(499, 127, 'titulo_quem_content_3', 'Qualidade e Excelência:'),
(500, 127, '_titulo_quem_content_3', 'field_6130f9aee1eb1'),
(501, 127, 'conteudo_quem_content_3', 'O compromisso com a Excelência, é resultado de treinamentos diários, e profissionais capacitados para desenvolver cada tipo de peça com suas descrições.\r\n\r\nNossa Política Principal é a realização de parcerias com foco nas necessidades de nossos clientes.\r\nToda a confecção é desenvolvida de forma personalizada, adequando as práticas do mercado, com realidade e expectativa de nossos clientes.\r\nUm de nossos principais alicerces é basear-nos na opinião de nossos parceiros comerciais. É por isso que um dia ou outro você receberá uma mensagem ou uma ligação nossa perguntando como está sendo feito o atendimento, qual a qualidade do material e, até mesmo, como poderíamos melhorar?\r\n\r\nCabe a nós trazer a mudança, mas também é de direito do cliente sugerir melhorias.\r\n\r\nPensando nisso, convido-te a fazer um comentário abaixo expondo sua opinião sobre nossa empresa e sugestões de como podemos melhorar a cada dia.'),
(502, 127, '_conteudo_quem_content_3', 'field_6130f9bce1eb2'),
(503, 128, 'titulo_quemSomos', 'Quem somos'),
(504, 128, '_titulo_quemSomos', 'field_6130f8afe1ea8'),
(505, 128, 'subtitulo', '\"Não se trata apenas de quem somos, mas se trata do que queremos e onde chegaremos.\"'),
(506, 128, '_subtitulo', 'field_6130f8c6e1ea9'),
(507, 128, 'texto_quemSomos', 'A Matrix Uniformes, como muitas empresas nasceu de forma simples, mas com um objetivo determinado de ser o diferencial no mercado de vestimentas profissionais no Paraná e no Brasil.\r\n\r\nCriada em 1995, nossa empresa, desde então, tem de fundamental importância garantir uma boa qualidade nos uniformes a qual entregamos a você, cuidadosamente com cada detalhe e deixando-os do jeito que você tenciona, para deixar sua empresa mais bonita e organizada como desejar. Nosso objetivo, que vai além de produzir e vender uniformes, é alcançar êxito e sentirmo-nos satisfeitos com nosso trabalho, sabendo que dezenas, centenas e até milhares de empesas estão sendo bem atendidas, pagando um preço justo e recebendo seu material com um prazo rígido.'),
(508, 128, '_texto_quemSomos', 'field_6130f8d5e1eaa'),
(509, 128, 'imagem_quemSomos', '103'),
(510, 128, '_imagem_quemSomos', 'field_6130f8ece1eab'),
(511, 128, 'titulo_quem_content_2', 'Missão:'),
(512, 128, '_titulo_quem_content_2', 'field_6130f962e1ead'),
(513, 128, 'conteudo_quem_content_2', 'Produzir continuamente, com qualidade, uniformes profissionais que ofereçam conforto, estética, segurança e durabilidade aos seus usuários, sempre mantendo os princípios da responsabilidade social, o respeito e a preservação do meio ambientes e o compromisso com a sustentabilidade. Visando que nossa era é a da tecnologia, pensamos em inovação todos os dias, pois nossa discussão não é para saber se vamos inovar, mas para definir quando e como inovaremos.'),
(514, 128, '_conteudo_quem_content_2', 'field_6130f972e1eae'),
(515, 128, 'titulo_quem_content_3', 'Qualidade e Excelência:'),
(516, 128, '_titulo_quem_content_3', 'field_6130f9aee1eb1'),
(517, 128, 'conteudo_quem_content_3', 'O compromisso com a Excelência, é resultado de treinamentos diários, e profissionais capacitados para desenvolver cada tipo de peça com suas descrições.\r\n\r\nNossa Política Principal é a realização de parcerias com foco nas necessidades de nossos clientes.\r\nToda a confecção é desenvolvida de forma personalizada, adequando as práticas do mercado, com realidade e expectativa de nossos clientes.\r\nUm de nossos principais alicerces é basear-nos na opinião de nossos parceiros comerciais. É por isso que um dia ou outro você receberá uma mensagem ou uma ligação nossa perguntando como está sendo feito o atendimento, qual a qualidade do material e, até mesmo, como poderíamos melhorar?\r\n\r\nCabe a nós trazer a mudança, mas também é de direito do cliente sugerir melhorias.\r\n\r\nPensando nisso, convido-te a fazer um comentário abaixo expondo sua opinião sobre nossa empresa e sugestões de como podemos melhorar a cada dia.'),
(518, 128, '_conteudo_quem_content_3', 'field_6130f9bce1eb2'),
(519, 191, '_wp_old_date', '2021-09-01'),
(520, 191, 'imagem', '101'),
(521, 191, '_imagem', 'field_612ff6df944e0'),
(522, 191, '_yoast_wpseo_estimated-reading-time-minutes', ''),
(523, 223, '_edit_last', '1'),
(524, 223, '_edit_lock', '1630600367:1'),
(525, 223, 'imagem', '101'),
(526, 223, '_imagem', 'field_612ff9f8619fb'),
(527, 223, '_yoast_wpseo_estimated-reading-time-minutes', ''),
(528, 224, '_edit_last', '1'),
(529, 224, '_edit_lock', '1630600401:1'),
(530, 224, 'imagem', '101'),
(531, 224, '_imagem', 'field_612ff9f8619fb'),
(532, 224, '_yoast_wpseo_estimated-reading-time-minutes', ''),
(533, 225, '_edit_last', '1'),
(534, 225, '_edit_lock', '1630600415:1'),
(535, 225, 'imagem', '101'),
(536, 225, '_imagem', 'field_612ff9f8619fb'),
(537, 225, '_yoast_wpseo_estimated-reading-time-minutes', ''),
(538, 226, '_edit_last', '1'),
(539, 226, '_edit_lock', '1630600430:1'),
(540, 226, 'imagem', '101'),
(541, 226, '_imagem', 'field_612ff9f8619fb'),
(542, 226, '_yoast_wpseo_estimated-reading-time-minutes', ''),
(543, 227, '_edit_last', '1'),
(544, 227, '_edit_lock', '1630600446:1'),
(545, 227, 'imagem', '101'),
(546, 227, '_imagem', 'field_612ff9f8619fb'),
(547, 227, '_yoast_wpseo_estimated-reading-time-minutes', ''),
(548, 228, '_edit_last', '1'),
(549, 228, '_edit_lock', '1630600463:1'),
(550, 228, 'imagem', '101'),
(551, 228, '_imagem', 'field_612ff9f8619fb'),
(552, 228, '_yoast_wpseo_estimated-reading-time-minutes', ''),
(553, 229, '_edit_last', '1'),
(554, 229, '_edit_lock', '1630600879:1'),
(555, 229, 'imagem', '101'),
(556, 229, '_imagem', 'field_612ff9f8619fb'),
(557, 229, '_yoast_wpseo_estimated-reading-time-minutes', ''),
(558, 231, '_edit_last', '1'),
(559, 231, '_edit_lock', '1630601267:1'),
(560, 125, 'titulo_Clientforne', 'CLIENTES E FORNECEDORES'),
(561, 125, '_titulo_Clientforne', 'field_6130ff07b13f2'),
(562, 125, 'conteudo_Clientforne', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed interdum risus et sapien posuere venenatis. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Morbi dapibus elit quis orci tempus, ut elementum nisl volutpat. Nulla molestie felis sit amet placerat congue.\r\n\r\n<strong>Serigrafia e bordado Computadorizado.</strong>\r\n\r\n<strong>Silk Screen - Serigrafia em PVC - Sublimação</strong>\r\n\r\n<strong>Bordado: Computadorizado - Mantendo padrão da sua empresa.</strong>'),
(563, 125, '_conteudo_Clientforne', 'field_6130ff13b13f3'),
(564, 125, 'imagem_Clientforne', '103'),
(565, 125, '_imagem_Clientforne', 'field_6130ff26b13f4'),
(566, 126, 'titulo_Clientforne', 'CLIENTES E FORNECEDORES'),
(567, 126, '_titulo_Clientforne', 'field_6130ff07b13f2'),
(568, 126, 'conteudo_Clientforne', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed interdum risus et sapien posuere venenatis. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Morbi dapibus elit quis orci tempus, ut elementum nisl volutpat. Nulla molestie felis sit amet placerat congue.\r\n\r\n<strong>Serigrafia e bordado Computadorizado.</strong>\r\n\r\n<strong>Silk Screen - Serigrafia em PVC - Sublimação</strong>\r\n\r\n<strong>Bordado: Computadorizado - Mantendo padrão da sua empresa.</strong>'),
(569, 126, '_conteudo_Clientforne', 'field_6130ff13b13f3'),
(570, 126, 'imagem_Clientforne', '103'),
(571, 126, '_imagem_Clientforne', 'field_6130ff26b13f4'),
(572, 236, '_edit_last', '1'),
(573, 236, '_edit_lock', '1630603608:1'),
(574, 123, 'titulo', 'CONTATO'),
(575, 123, '_titulo', 'field_613100e2e54bc'),
(576, 123, 'texto', 'Entre em contato através do formulário abaixo, telefone ou whatsapp.'),
(577, 123, '_texto', 'field_613100f2e54bd'),
(578, 124, 'titulo', 'CONTATO'),
(579, 124, '_titulo', 'field_613100e2e54bc'),
(580, 124, 'texto', 'Entre em contato através do formulário abaixo, telefone ou whatsapp.'),
(581, 124, '_texto', 'field_613100f2e54bd'),
(582, 123, 'iframe_do_mapa', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3599.9287642043587!2d-49.2439248849835!3d-25.540749683737523!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x94dcfa34e34429fb%3A0x59e1a077d61c37db!2sR.%20Eduardo%20Pinto%20da%20Rocha%2C%201137%20-%20Alto%20Boqueir%C3%A3o%2C%20Curitiba%20-%20PR%2C%2081860-220!5e0!3m2!1spt-BR!2sbr!4v1630601985044!5m2!1spt-BR!2sbr\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\"></iframe>'),
(583, 123, '_iframe_do_mapa', 'field_613102c0b560d'),
(584, 124, 'iframe_do_mapa', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3599.9287642043587!2d-49.2439248849835!3d-25.540749683737523!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x94dcfa34e34429fb%3A0x59e1a077d61c37db!2sR.%20Eduardo%20Pinto%20da%20Rocha%2C%201137%20-%20Alto%20Boqueir%C3%A3o%2C%20Curitiba%20-%20PR%2C%2081860-220!5e0!3m2!1spt-BR!2sbr!4v1630601985044!5m2!1spt-BR!2sbr\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\"></iframe>'),
(585, 124, '_iframe_do_mapa', 'field_613102c0b560d'),
(586, 9, 'lista_clientes_fornecedores_0_cliente', '191'),
(587, 9, '_lista_clientes_fornecedores_0_cliente', 'field_61310dc564b2a'),
(588, 9, 'lista_clientes_fornecedores_1_cliente', '176'),
(589, 9, '_lista_clientes_fornecedores_1_cliente', 'field_61310dc564b2a'),
(590, 9, 'link_cliente_fornecedor', ''),
(591, 9, '_link_cliente_fornecedor', 'field_61310d39c8b49'),
(592, 10, 'lista_clientes_fornecedores_0_cliente', '191'),
(593, 10, '_lista_clientes_fornecedores_0_cliente', 'field_61310dc564b2a'),
(594, 10, 'lista_clientes_fornecedores_1_cliente', '176'),
(595, 10, '_lista_clientes_fornecedores_1_cliente', 'field_61310dc564b2a'),
(596, 10, 'link_cliente_fornecedor', ''),
(597, 10, '_link_cliente_fornecedor', 'field_61310d39c8b49'),
(598, 5, '_config_errors', 'a:1:{s:23:\"mail.additional_headers\";a:1:{i:0;a:2:{s:4:\"code\";i:102;s:4:\"args\";a:3:{s:7:\"message\";s:64:\"A sintaxe de caixa de e-mail usada no campo %name% é inválida.\";s:6:\"params\";a:1:{s:4:\"name\";s:8:\"Reply-To\";}s:4:\"link\";s:68:\"https://contactform7.com/configuration-errors/invalid-mailbox-syntax\";}}}}'),
(599, 248, '_menu_item_type', 'taxonomy'),
(600, 248, '_menu_item_menu_item_parent', '198'),
(601, 248, '_menu_item_object_id', '5'),
(602, 248, '_menu_item_object', 'categoria'),
(603, 248, '_menu_item_target', ''),
(604, 248, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(605, 248, '_menu_item_xfn', ''),
(606, 248, '_menu_item_url', ''),
(608, 249, '_menu_item_type', 'taxonomy'),
(609, 249, '_menu_item_menu_item_parent', '198'),
(610, 249, '_menu_item_object_id', '4'),
(611, 249, '_menu_item_object', 'categoria'),
(612, 249, '_menu_item_target', ''),
(613, 249, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(614, 249, '_menu_item_xfn', ''),
(615, 249, '_menu_item_url', ''),
(617, 250, '_menu_item_type', 'taxonomy'),
(618, 250, '_menu_item_menu_item_parent', '198'),
(619, 250, '_menu_item_object_id', '3'),
(620, 250, '_menu_item_object', 'categoria'),
(621, 250, '_menu_item_target', ''),
(622, 250, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(623, 250, '_menu_item_xfn', ''),
(624, 250, '_menu_item_url', ''),
(626, 251, '_menu_item_type', 'taxonomy'),
(627, 251, '_menu_item_menu_item_parent', '198'),
(628, 251, '_menu_item_object_id', '6'),
(629, 251, '_menu_item_object', 'categoria'),
(630, 251, '_menu_item_target', ''),
(631, 251, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(632, 251, '_menu_item_xfn', ''),
(633, 251, '_menu_item_url', ''),
(635, 154, '_wp_old_date', '2021-09-01'),
(636, 157, '_wp_old_date', '2021-09-01'),
(637, 198, '_wp_old_date', '2021-09-01'),
(638, 155, '_wp_old_date', '2021-09-01'),
(639, 156, '_wp_old_date', '2021-09-01'),
(640, 252, '_form', '<div class=\"col-sm-5\">\n[text* nome placeholder\"Nome\"]\n[email* email placeholder\"E-mail\"]\n[text* telefone placeholder\"Telefone\"]\n[text* empresa placeholder\"Empresa\"]\n</div>\n<div class=\"col-sm-7\">\n[textarea* mensagem placeholder\"Mensagem\"]\n</div>\n<div class=\"col-sm-12\">\n[hidden produto id:produtoModal]\n[submit \"Solicitar Orçamento\"]\n</div>'),
(641, 252, '_mail', 'a:9:{s:6:\"active\";b:1;s:7:\"subject\";s:30:\"[_site_title] \"[your-subject]\"\";s:6:\"sender\";s:50:\"[_site_title] <luiz.fhelipe@mixsolucoesweb.com.br>\";s:9:\"recipient\";s:19:\"[_site_admin_email]\";s:4:\"body\";s:164:\"De: [nome] <[email]>\nAssunto: [your-subject]\n\nCorpo da mensagem:\n[mensagem]\n\n-- \nEste e-mail foi enviado de um formulário de contato em [_site_title] ([_site_url])\";s:18:\"additional_headers\";s:17:\"Reply-To: [email]\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}'),
(642, 252, '_mail_2', 'a:9:{s:6:\"active\";b:0;s:7:\"subject\";s:30:\"[_site_title] \"[your-subject]\"\";s:6:\"sender\";s:50:\"[_site_title] <luiz.fhelipe@mixsolucoesweb.com.br>\";s:9:\"recipient\";s:12:\"[your-email]\";s:4:\"body\";s:122:\"Corpo da mensagem:\n[your-message]\n\n-- \nEste e-mail foi enviado de um formulário de contato em [_site_title] ([_site_url])\";s:18:\"additional_headers\";s:29:\"Reply-To: [_site_admin_email]\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}'),
(643, 252, '_messages', 'a:22:{s:12:\"mail_sent_ok\";s:27:\"Agradecemos a sua mensagem.\";s:12:\"mail_sent_ng\";s:74:\"Ocorreu um erro ao tentar enviar sua mensagem. Tente novamente mais tarde.\";s:16:\"validation_error\";s:63:\"Um ou mais campos possuem um erro. Verifique e tente novamente.\";s:4:\"spam\";s:74:\"Ocorreu um erro ao tentar enviar sua mensagem. Tente novamente mais tarde.\";s:12:\"accept_terms\";s:72:\"Você deve aceitar os termos e condições antes de enviar sua mensagem.\";s:16:\"invalid_required\";s:24:\"O campo é obrigatório.\";s:16:\"invalid_too_long\";s:23:\"O campo é muito longo.\";s:17:\"invalid_too_short\";s:23:\"O campo é muito curto.\";s:13:\"upload_failed\";s:49:\"Ocorreu um erro desconhecido ao enviar o arquivo.\";s:24:\"upload_file_type_invalid\";s:59:\"Você não tem permissão para enviar esse tipo de arquivo.\";s:21:\"upload_file_too_large\";s:26:\"O arquivo é muito grande.\";s:23:\"upload_failed_php_error\";s:36:\"Ocorreu um erro ao enviar o arquivo.\";s:12:\"invalid_date\";s:34:\"O formato de data está incorreto.\";s:14:\"date_too_early\";s:44:\"A data é anterior à mais antiga permitida.\";s:13:\"date_too_late\";s:44:\"A data é posterior à maior data permitida.\";s:14:\"invalid_number\";s:34:\"O formato de número é inválido.\";s:16:\"number_too_small\";s:46:\"O número é menor do que o mínimo permitido.\";s:16:\"number_too_large\";s:46:\"O número é maior do que o máximo permitido.\";s:23:\"quiz_answer_not_correct\";s:39:\"A resposta para o quiz está incorreta.\";s:13:\"invalid_email\";s:45:\"O endereço de e-mail informado é inválido.\";s:11:\"invalid_url\";s:19:\"A URL é inválida.\";s:11:\"invalid_tel\";s:35:\"O número de telefone é inválido.\";}'),
(644, 252, '_additional_settings', ''),
(645, 252, '_locale', 'pt_BR'),
(648, 253, '_edit_last', '1'),
(649, 253, '_edit_lock', '1630609458:1'),
(650, 210, 'imagem', '103'),
(651, 210, '_imagem', 'field_61311e9dfb164'),
(652, 210, 'descricao', '<strong>Descrição:</strong> Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed interdum risus et sapien posuere venenatis. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Morbi dapibus elit quis orci tempus, ut elementum nisl volutpat. Nulla molestie felis sit amet placerat congue.'),
(653, 210, '_descricao', 'field_61311eb2fb165'),
(654, 257, '_edit_last', '1'),
(655, 257, '_edit_lock', '1630609205:1'),
(656, 257, 'imagem', '103'),
(657, 257, '_imagem', 'field_61311e9dfb164'),
(658, 257, 'descricao', '<strong>Descrição:</strong> Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed interdum risus et sapien posuere venenatis. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Morbi dapibus elit quis orci tempus, ut elementum nisl volutpat. Nulla molestie felis sit amet placerat congue.'),
(659, 257, '_descricao', 'field_61311eb2fb165'),
(660, 257, '_yoast_wpseo_primary_categoria', '4'),
(661, 257, '_yoast_wpseo_estimated-reading-time-minutes', ''),
(662, 258, '_edit_last', '1'),
(663, 258, '_edit_lock', '1630609242:1'),
(664, 258, 'imagem', '103'),
(665, 258, '_imagem', 'field_61311e9dfb164'),
(666, 258, 'descricao', '<strong>Descrição:</strong> Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed interdum risus et sapien posuere venenatis. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Morbi dapibus elit quis orci tempus, ut elementum nisl volutpat. Nulla molestie felis sit amet placerat congue.'),
(667, 258, '_descricao', 'field_61311eb2fb165'),
(668, 258, '_yoast_wpseo_primary_categoria', '4'),
(669, 258, '_yoast_wpseo_estimated-reading-time-minutes', ''),
(670, 259, '_edit_last', '1'),
(671, 259, '_edit_lock', '1630609282:1'),
(672, 259, 'imagem', '103'),
(673, 259, '_imagem', 'field_61311e9dfb164'),
(674, 259, 'descricao', '<strong>Descrição:</strong> Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed interdum risus et sapien posuere venenatis. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Morbi dapibus elit quis orci tempus, ut elementum nisl volutpat. Nulla molestie felis sit amet placerat congue.'),
(675, 259, '_descricao', 'field_61311eb2fb165'),
(676, 259, '_yoast_wpseo_primary_categoria', '4'),
(677, 259, '_yoast_wpseo_estimated-reading-time-minutes', ''),
(678, 260, '_edit_last', '1'),
(679, 260, '_edit_lock', '1630609312:1'),
(680, 260, 'imagem', '103'),
(681, 260, '_imagem', 'field_61311e9dfb164'),
(682, 260, 'descricao', '<strong>Descrição:</strong> Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed interdum risus et sapien posuere venenatis. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Morbi dapibus elit quis orci tempus, ut elementum nisl volutpat. Nulla molestie felis sit amet placerat congue.'),
(683, 260, '_descricao', 'field_61311eb2fb165'),
(684, 260, '_yoast_wpseo_primary_categoria', '4'),
(685, 260, '_yoast_wpseo_estimated-reading-time-minutes', ''),
(686, 261, '_edit_last', '1'),
(687, 261, '_edit_lock', '1630609334:1'),
(688, 261, 'imagem', '103'),
(689, 261, '_imagem', 'field_61311e9dfb164'),
(690, 261, 'descricao', '<strong>Descrição:</strong> Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed interdum risus et sapien posuere venenatis. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Morbi dapibus elit quis orci tempus, ut elementum nisl volutpat. Nulla molestie felis sit amet placerat congue.'),
(691, 261, '_descricao', 'field_61311eb2fb165'),
(692, 261, '_yoast_wpseo_primary_categoria', '4'),
(693, 261, '_yoast_wpseo_estimated-reading-time-minutes', ''),
(694, 262, '_edit_last', '1'),
(695, 262, '_edit_lock', '1630609359:1'),
(696, 262, 'imagem', '103'),
(697, 262, '_imagem', 'field_61311e9dfb164'),
(698, 262, 'descricao', '<strong>Descrição:</strong> Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed interdum risus et sapien posuere venenatis. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Morbi dapibus elit quis orci tempus, ut elementum nisl volutpat. Nulla molestie felis sit amet placerat congue.'),
(699, 262, '_descricao', 'field_61311eb2fb165'),
(700, 262, '_yoast_wpseo_primary_categoria', '4'),
(701, 262, '_yoast_wpseo_estimated-reading-time-minutes', ''),
(702, 263, '_edit_last', '1'),
(703, 263, '_edit_lock', '1630609381:1'),
(704, 263, 'imagem', '103'),
(705, 263, '_imagem', 'field_61311e9dfb164'),
(706, 263, 'descricao', '<strong>Descrição:</strong> Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed interdum risus et sapien posuere venenatis. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Morbi dapibus elit quis orci tempus, ut elementum nisl volutpat. Nulla molestie felis sit amet placerat congue.'),
(707, 263, '_descricao', 'field_61311eb2fb165'),
(708, 263, '_yoast_wpseo_primary_categoria', '4'),
(709, 263, '_yoast_wpseo_estimated-reading-time-minutes', ''),
(710, 264, '_edit_last', '1'),
(711, 264, '_edit_lock', '1630609535:1'),
(712, 267, '_edit_last', '1'),
(713, 267, 'imagem', '103'),
(714, 267, '_imagem', 'field_61311e9dfb164'),
(715, 267, 'descricao', '<strong>Descrição:</strong> Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed interdum risus et sapien posuere venenatis. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Morbi dapibus elit quis orci tempus, ut elementum nisl volutpat. Nulla molestie felis sit amet placerat congue.'),
(716, 267, '_descricao', 'field_61311eb2fb165'),
(717, 267, '_yoast_wpseo_primary_categoria', '6'),
(718, 267, '_yoast_wpseo_estimated-reading-time-minutes', ''),
(719, 267, '_edit_lock', '1630610479:1'),
(720, 268, '_edit_last', '1'),
(721, 268, '_edit_lock', '1630610424:1'),
(722, 268, 'imagem', '103'),
(723, 268, '_imagem', 'field_61311e9dfb164'),
(724, 268, 'descricao', '<strong>Descrição:</strong> Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed interdum risus et sapien posuere venenatis. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Morbi dapibus elit quis orci tempus, ut elementum nisl volutpat. Nulla molestie felis sit amet placerat congue.'),
(725, 268, '_descricao', 'field_61311eb2fb165'),
(726, 268, '_yoast_wpseo_primary_categoria', '6'),
(727, 268, '_yoast_wpseo_estimated-reading-time-minutes', ''),
(728, 269, '_edit_last', '1'),
(729, 269, '_edit_lock', '1630610879:1'),
(730, 269, 'imagem', '103'),
(731, 269, '_imagem', 'field_61311e9dfb164'),
(732, 269, 'descricao', '<strong>Descrição:</strong> Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed interdum risus et sapien posuere venenatis. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Morbi dapibus elit quis orci tempus, ut elementum nisl volutpat. Nulla molestie felis sit amet placerat congue.'),
(733, 269, '_descricao', 'field_61311eb2fb165'),
(734, 269, '_yoast_wpseo_primary_categoria', '3'),
(735, 269, '_yoast_wpseo_estimated-reading-time-minutes', ''),
(736, 270, '_edit_last', '1'),
(737, 270, '_edit_lock', '1630610901:1'),
(738, 270, 'imagem', '103'),
(739, 270, '_imagem', 'field_61311e9dfb164'),
(740, 270, 'descricao', '<strong>Descrição:</strong> Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed interdum risus et sapien posuere venenatis. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Morbi dapibus elit quis orci tempus, ut elementum nisl volutpat. Nulla molestie felis sit amet placerat congue.'),
(741, 270, '_descricao', 'field_61311eb2fb165'),
(742, 270, '_yoast_wpseo_primary_categoria', '3'),
(743, 270, '_yoast_wpseo_estimated-reading-time-minutes', ''),
(744, 271, '_edit_last', '1'),
(745, 271, '_edit_lock', '1630610926:1'),
(746, 271, 'imagem', '103'),
(747, 271, '_imagem', 'field_61311e9dfb164'),
(748, 271, 'descricao', '<strong>Descrição:</strong> Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed interdum risus et sapien posuere venenatis. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Morbi dapibus elit quis orci tempus, ut elementum nisl volutpat. Nulla molestie felis sit amet placerat congue.'),
(749, 271, '_descricao', 'field_61311eb2fb165'),
(750, 271, '_yoast_wpseo_primary_categoria', '3'),
(751, 271, '_yoast_wpseo_estimated-reading-time-minutes', ''),
(752, 272, '_edit_last', '1'),
(753, 272, '_edit_lock', '1630610950:1'),
(754, 272, 'imagem', '103'),
(755, 272, '_imagem', 'field_61311e9dfb164'),
(756, 272, 'descricao', '<strong>Descrição:</strong> Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed interdum risus et sapien posuere venenatis. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Morbi dapibus elit quis orci tempus, ut elementum nisl volutpat. Nulla molestie felis sit amet placerat congue.'),
(757, 272, '_descricao', 'field_61311eb2fb165'),
(758, 272, '_yoast_wpseo_primary_categoria', '3'),
(759, 272, '_yoast_wpseo_estimated-reading-time-minutes', ''),
(760, 273, '_edit_last', '1'),
(761, 273, 'imagem', '103'),
(762, 273, '_imagem', 'field_61311e9dfb164'),
(763, 273, 'descricao', '<strong>Descrição:</strong> Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed interdum risus et sapien posuere venenatis. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Morbi dapibus elit quis orci tempus, ut elementum nisl volutpat. Nulla molestie felis sit amet placerat congue.'),
(764, 273, '_descricao', 'field_61311eb2fb165'),
(765, 273, '_yoast_wpseo_primary_categoria', '3'),
(766, 273, '_yoast_wpseo_estimated-reading-time-minutes', ''),
(767, 273, '_edit_lock', '1630610994:1'),
(768, 274, '_edit_last', '1'),
(769, 274, '_edit_lock', '1630611028:1'),
(770, 274, 'imagem', '103'),
(771, 274, '_imagem', 'field_61311e9dfb164'),
(772, 274, 'descricao', '<strong>Descrição:</strong> Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed interdum risus et sapien posuere venenatis. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Morbi dapibus elit quis orci tempus, ut elementum nisl volutpat. Nulla molestie felis sit amet placerat congue.'),
(773, 274, '_descricao', 'field_61311eb2fb165'),
(774, 274, '_yoast_wpseo_primary_categoria', '3'),
(775, 274, '_yoast_wpseo_estimated-reading-time-minutes', ''),
(776, 275, '_edit_last', '1'),
(777, 275, '_edit_lock', '1630611053:1'),
(778, 275, 'imagem', '103'),
(779, 275, '_imagem', 'field_61311e9dfb164'),
(780, 275, 'descricao', '<strong>Descrição:</strong> Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed interdum risus et sapien posuere venenatis. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Morbi dapibus elit quis orci tempus, ut elementum nisl volutpat. Nulla molestie felis sit amet placerat congue.'),
(781, 275, '_descricao', 'field_61311eb2fb165'),
(782, 275, '_yoast_wpseo_primary_categoria', '3'),
(783, 275, '_yoast_wpseo_estimated-reading-time-minutes', ''),
(784, 276, '_edit_last', '1'),
(785, 276, '_edit_lock', '1630611073:1'),
(786, 276, 'imagem', '103'),
(787, 276, '_imagem', 'field_61311e9dfb164'),
(788, 276, 'descricao', '<strong>Descrição:</strong> Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed interdum risus et sapien posuere venenatis. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Morbi dapibus elit quis orci tempus, ut elementum nisl volutpat. Nulla molestie felis sit amet placerat congue.'),
(789, 276, '_descricao', 'field_61311eb2fb165'),
(790, 276, '_yoast_wpseo_primary_categoria', '3'),
(791, 276, '_yoast_wpseo_estimated-reading-time-minutes', ''),
(792, 277, '_edit_last', '1'),
(793, 277, '_edit_lock', '1630611277:1'),
(794, 277, 'imagem', '103'),
(795, 277, '_imagem', 'field_61311e9dfb164'),
(796, 277, 'descricao', '<strong>Descrição:</strong> Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed interdum risus et sapien posuere venenatis. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Morbi dapibus elit quis orci tempus, ut elementum nisl volutpat. Nulla molestie felis sit amet placerat congue.'),
(797, 277, '_descricao', 'field_61311eb2fb165'),
(798, 277, '_yoast_wpseo_primary_categoria', '3'),
(799, 277, '_yoast_wpseo_estimated-reading-time-minutes', ''),
(800, 9, 'lista_clientes_fornecedores_2_cliente', '186'),
(801, 9, '_lista_clientes_fornecedores_2_cliente', 'field_61310dc564b2a'),
(802, 9, 'lista_clientes_fornecedores_3_cliente', '187'),
(803, 9, '_lista_clientes_fornecedores_3_cliente', 'field_61310dc564b2a'),
(804, 9, 'lista_clientes_fornecedores_4_cliente', '223'),
(805, 9, '_lista_clientes_fornecedores_4_cliente', 'field_61310dc564b2a'),
(806, 9, 'lista_clientes_fornecedores_5_cliente', '227'),
(807, 9, '_lista_clientes_fornecedores_5_cliente', 'field_61310dc564b2a'),
(808, 9, 'lista_clientes_fornecedores_6_cliente', '226'),
(809, 9, '_lista_clientes_fornecedores_6_cliente', 'field_61310dc564b2a'),
(810, 9, 'lista_clientes_fornecedores_7_cliente', '183'),
(811, 9, '_lista_clientes_fornecedores_7_cliente', 'field_61310dc564b2a'),
(812, 10, 'lista_clientes_fornecedores_2_cliente', '186'),
(813, 10, '_lista_clientes_fornecedores_2_cliente', 'field_61310dc564b2a'),
(814, 10, 'lista_clientes_fornecedores_3_cliente', '187'),
(815, 10, '_lista_clientes_fornecedores_3_cliente', 'field_61310dc564b2a'),
(816, 10, 'lista_clientes_fornecedores_4_cliente', '223'),
(817, 10, '_lista_clientes_fornecedores_4_cliente', 'field_61310dc564b2a'),
(818, 10, 'lista_clientes_fornecedores_5_cliente', '227'),
(819, 10, '_lista_clientes_fornecedores_5_cliente', 'field_61310dc564b2a'),
(820, 10, 'lista_clientes_fornecedores_6_cliente', '226'),
(821, 10, '_lista_clientes_fornecedores_6_cliente', 'field_61310dc564b2a'),
(822, 10, 'lista_clientes_fornecedores_7_cliente', '183'),
(823, 10, '_lista_clientes_fornecedores_7_cliente', 'field_61310dc564b2a'),
(824, 277, 'tp_post_counter', '1');

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_posts`
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
-- Extraindo dados da tabela `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2021-09-01 15:33:48', '2021-09-01 18:33:48', '<!-- wp:paragraph -->\n<p>Boas-vindas ao WordPress. Esse é o seu primeiro post. Edite-o ou exclua-o, e então comece a escrever!</p>\n<!-- /wp:paragraph -->', 'Olá, mundo!', '', 'trash', 'open', 'open', '', 'ola-mundo__trashed', '', '', '2021-09-01 18:23:55', '2021-09-01 21:23:55', '', 0, 'http://localhost/UniformesMatrix/?p=1', 0, 'post', '', 1),
(2, 1, '2021-09-01 15:33:48', '2021-09-01 18:33:48', '<!-- wp:paragraph -->\n<p>Esta é uma página de exemplo. É diferente de um post no blog porque ela permanecerá em um lugar e aparecerá na navegação do seu site na maioria dos temas. Muitas pessoas começam com uma página que as apresenta a possíveis visitantes do site. Ela pode dizer algo assim:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Olá! Eu sou um mensageiro de bicicleta durante o dia, ator aspirante à noite, e este é o meu site. Eu moro em São Paulo, tenho um grande cachorro chamado Rex e gosto de tomar caipirinha (e banhos de chuva).</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...ou alguma coisa assim:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>A Companhia de Miniaturas XYZ foi fundada em 1971, e desde então tem fornecido miniaturas de qualidade ao público. Localizada na cidade de Itu, a XYZ emprega mais de 2.000 pessoas e faz coisas grandiosas para a comunidade da cidade.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>Como um novo usuário do WordPress, você deveria ir ao <a href=\"http://localhost/UniformesMatrix/wp-admin/\">painel</a> para excluir essa página e criar novas páginas para o seu conteúdo. Divirta-se!</p>\n<!-- /wp:paragraph -->', 'Página de exemplo', '', 'trash', 'closed', 'open', '', 'pagina-exemplo__trashed', '', '', '2021-09-01 16:35:52', '2021-09-01 19:35:52', '', 0, 'http://localhost/UniformesMatrix/?page_id=2', 0, 'page', '', 0),
(3, 1, '2021-09-01 15:33:48', '2021-09-01 18:33:48', '<!-- wp:heading --><h2>Quem somos</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Texto sugerido: </strong>O endereço do nosso site é: http://localhost/UniformesMatrix.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Comentários</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Texto sugerido: </strong>Quando os visitantes deixam comentários no site, coletamos os dados mostrados no formulário de comentários, além do endereço de IP e de dados do navegador do visitante, para auxiliar na detecção de spam.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Uma sequência anonimizada de caracteres criada a partir do seu e-mail (também chamada de hash) poderá ser enviada para o Gravatar para verificar se você usa o serviço. A política de privacidade do Gravatar está disponível aqui: https://automattic.com/privacy/. Depois da aprovação do seu comentário, a foto do seu perfil fica visível publicamente junto de seu comentário.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Mídia</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Texto sugerido: </strong>Se você envia imagens para o site, evite enviar as que contenham dados de localização incorporados (EXIF GPS). Visitantes podem baixar estas imagens do site e extrair delas seus dados de localização.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Cookies</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Texto sugerido: </strong>Ao deixar um comentário no site, você poderá optar por salvar seu nome, e-mail e site nos cookies. Isso visa seu conforto, assim você não precisará preencher seus  dados novamente quando fizer outro comentário. Estes cookies duram um ano.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Se você tem uma conta e acessa este site, um cookie temporário será criado para determinar se seu navegador aceita cookies. Ele não contém nenhum dado pessoal e será descartado quando você fechar seu navegador.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Quando você acessa sua conta no site, também criamos vários cookies para salvar os dados da sua conta e suas escolhas de exibição de tela. Cookies de login são mantidos por dois dias e cookies de opções de tela por um ano. Se você selecionar &quot;Lembrar-me&quot;, seu acesso será mantido por duas semanas. Se você se desconectar da sua conta, os cookies de login serão removidos.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Se você editar ou publicar um artigo, um cookie adicional será salvo no seu navegador. Este cookie não inclui nenhum dado pessoal e simplesmente indica o ID do post referente ao artigo que você acabou de editar. Ele expira depois de 1 dia.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Mídia incorporada de outros sites</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Texto sugerido: </strong>Artigos neste site podem incluir conteúdo incorporado como, por exemplo, vídeos, imagens, artigos, etc. Conteúdos incorporados de outros sites se comportam exatamente da mesma forma como se o visitante estivesse visitando o outro site.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Estes sites podem coletar dados sobre você, usar cookies, incorporar rastreamento adicional de terceiros e monitorar sua interação com este conteúdo incorporado, incluindo sua interação com o conteúdo incorporado se você tem uma conta e está conectado com o site.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Com quem partilhamos seus dados</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Texto sugerido: </strong>Se você solicitar uma redefinição de senha, seu endereço de IP será incluído no e-mail de redefinição de senha.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Por quanto tempo mantemos os seus dados</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Texto sugerido: </strong>Se você deixar um comentário, o comentário e os seus metadados são conservados indefinidamente. Fazemos isso para que seja possível reconhecer e aprovar automaticamente qualquer comentário posterior ao invés de retê-lo para moderação.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Para usuários que se registram no nosso site (se houver), também guardamos as informações pessoais que fornecem no seu perfil de usuário. Todos os usuários podem ver, editar ou excluir suas informações pessoais a qualquer momento (só não é possível alterar o seu username). Os administradores de sites também podem ver e editar estas informações.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Quais os seus direitos sobre seus dados</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Texto sugerido: </strong>Se você tiver uma conta neste site ou se tiver deixado comentários, pode solicitar um arquivo exportado dos dados pessoais que mantemos sobre você, inclusive quaisquer dados que nos tenha fornecido. Também pode solicitar que removamos qualquer dado pessoal que mantemos sobre você. Isto não inclui nenhuns dados que somos obrigados a manter para propósitos administrativos, legais ou de segurança.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Para onde enviamos seus dados</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Texto sugerido: </strong>Comentários de visitantes podem ser marcados por um serviço automático de detecção de spam.</p><!-- /wp:paragraph -->', 'Política de privacidade', '', 'trash', 'closed', 'open', '', 'politica-de-privacidade__trashed', '', '', '2021-09-01 16:36:16', '2021-09-01 19:36:16', '', 0, 'http://localhost/UniformesMatrix/?page_id=3', 0, 'page', '', 0),
(4, 1, '2021-09-01 15:34:16', '0000-00-00 00:00:00', '', 'Rascunho automático', '', 'auto-draft', 'open', 'open', '', '', '', '', '2021-09-01 15:34:16', '0000-00-00 00:00:00', '', 0, 'http://localhost/UniformesMatrix/?p=4', 0, 'post', '', 0),
(5, 1, '2021-09-01 16:27:04', '2021-09-01 19:27:04', '<div class=\"col-sm-5\">\r\n[text* nome placeholder\"Nome\"]\r\n[email* email placeholder\"E-mail\"]\r\n[text* telefone placeholder\"Telefone\"]\r\n[text* empresa placeholder\"Empresa\"]\r\n</div>\r\n<div class=\"col-sm-7\">\r\n[textarea* mensagem placeholder\"Mensagem\"]\r\n</div>\r\n<div class=\"col-sm-12\">\r\n[submit \"Enviar Mensagem\"]\r\n</div>\n1\n[_site_title] \"[your-subject]\"\n[_site_title] <luiz.fhelipe@mixsolucoesweb.com.br>\n[_site_admin_email]\nDe: [your-name] <[your-email]>\r\nAssunto: [your-subject]\r\n\r\nCorpo da mensagem:\r\n[your-message]\r\n\r\n-- \r\nEste e-mail foi enviado de um formulário de contato em [_site_title] ([_site_url])\nReply-To: [your-email]\n\n\n\n\n[_site_title] \"[your-subject]\"\n[_site_title] <luiz.fhelipe@mixsolucoesweb.com.br>\n[your-email]\nCorpo da mensagem:\r\n[your-message]\r\n\r\n-- \r\nEste e-mail foi enviado de um formulário de contato em [_site_title] ([_site_url])\nReply-To: [_site_admin_email]\n\n\n\nAgradecemos a sua mensagem.\nOcorreu um erro ao tentar enviar sua mensagem. Tente novamente mais tarde.\nUm ou mais campos possuem um erro. Verifique e tente novamente.\nOcorreu um erro ao tentar enviar sua mensagem. Tente novamente mais tarde.\nVocê deve aceitar os termos e condições antes de enviar sua mensagem.\nO campo é obrigatório.\nO campo é muito longo.\nO campo é muito curto.\nOcorreu um erro desconhecido ao enviar o arquivo.\nVocê não tem permissão para enviar esse tipo de arquivo.\nO arquivo é muito grande.\nOcorreu um erro ao enviar o arquivo.\nO formato de data está incorreto.\nA data é anterior à mais antiga permitida.\nA data é posterior à maior data permitida.\nO formato de número é inválido.\nO número é menor do que o mínimo permitido.\nO número é maior do que o máximo permitido.\nA resposta para o quiz está incorreta.\nO endereço de e-mail informado é inválido.\nA URL é inválida.\nO número de telefone é inválido.', 'Formulário de contato 1', '', 'publish', 'closed', 'closed', '', 'formulario-de-contato-1', '', '', '2021-09-02 14:55:27', '2021-09-02 17:55:27', '', 0, 'https://localhost/UniformesMatrix/?post_type=wpcf7_contact_form&#038;p=5', 0, 'wpcf7_contact_form', '', 0),
(7, 1, '2021-09-01 16:35:52', '2021-09-01 19:35:52', '<!-- wp:paragraph -->\n<p>Esta é uma página de exemplo. É diferente de um post no blog porque ela permanecerá em um lugar e aparecerá na navegação do seu site na maioria dos temas. Muitas pessoas começam com uma página que as apresenta a possíveis visitantes do site. Ela pode dizer algo assim:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Olá! Eu sou um mensageiro de bicicleta durante o dia, ator aspirante à noite, e este é o meu site. Eu moro em São Paulo, tenho um grande cachorro chamado Rex e gosto de tomar caipirinha (e banhos de chuva).</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...ou alguma coisa assim:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>A Companhia de Miniaturas XYZ foi fundada em 1971, e desde então tem fornecido miniaturas de qualidade ao público. Localizada na cidade de Itu, a XYZ emprega mais de 2.000 pessoas e faz coisas grandiosas para a comunidade da cidade.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>Como um novo usuário do WordPress, você deveria ir ao <a href=\"http://localhost/UniformesMatrix/wp-admin/\">painel</a> para excluir essa página e criar novas páginas para o seu conteúdo. Divirta-se!</p>\n<!-- /wp:paragraph -->', 'Página de exemplo', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2021-09-01 16:35:52', '2021-09-01 19:35:52', '', 2, 'https://localhost/UniformesMatrix/?p=7', 0, 'revision', '', 0),
(8, 1, '2021-09-01 16:36:16', '2021-09-01 19:36:16', '<!-- wp:heading --><h2>Quem somos</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Texto sugerido: </strong>O endereço do nosso site é: http://localhost/UniformesMatrix.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Comentários</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Texto sugerido: </strong>Quando os visitantes deixam comentários no site, coletamos os dados mostrados no formulário de comentários, além do endereço de IP e de dados do navegador do visitante, para auxiliar na detecção de spam.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Uma sequência anonimizada de caracteres criada a partir do seu e-mail (também chamada de hash) poderá ser enviada para o Gravatar para verificar se você usa o serviço. A política de privacidade do Gravatar está disponível aqui: https://automattic.com/privacy/. Depois da aprovação do seu comentário, a foto do seu perfil fica visível publicamente junto de seu comentário.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Mídia</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Texto sugerido: </strong>Se você envia imagens para o site, evite enviar as que contenham dados de localização incorporados (EXIF GPS). Visitantes podem baixar estas imagens do site e extrair delas seus dados de localização.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Cookies</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Texto sugerido: </strong>Ao deixar um comentário no site, você poderá optar por salvar seu nome, e-mail e site nos cookies. Isso visa seu conforto, assim você não precisará preencher seus  dados novamente quando fizer outro comentário. Estes cookies duram um ano.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Se você tem uma conta e acessa este site, um cookie temporário será criado para determinar se seu navegador aceita cookies. Ele não contém nenhum dado pessoal e será descartado quando você fechar seu navegador.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Quando você acessa sua conta no site, também criamos vários cookies para salvar os dados da sua conta e suas escolhas de exibição de tela. Cookies de login são mantidos por dois dias e cookies de opções de tela por um ano. Se você selecionar &quot;Lembrar-me&quot;, seu acesso será mantido por duas semanas. Se você se desconectar da sua conta, os cookies de login serão removidos.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Se você editar ou publicar um artigo, um cookie adicional será salvo no seu navegador. Este cookie não inclui nenhum dado pessoal e simplesmente indica o ID do post referente ao artigo que você acabou de editar. Ele expira depois de 1 dia.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Mídia incorporada de outros sites</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Texto sugerido: </strong>Artigos neste site podem incluir conteúdo incorporado como, por exemplo, vídeos, imagens, artigos, etc. Conteúdos incorporados de outros sites se comportam exatamente da mesma forma como se o visitante estivesse visitando o outro site.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Estes sites podem coletar dados sobre você, usar cookies, incorporar rastreamento adicional de terceiros e monitorar sua interação com este conteúdo incorporado, incluindo sua interação com o conteúdo incorporado se você tem uma conta e está conectado com o site.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Com quem partilhamos seus dados</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Texto sugerido: </strong>Se você solicitar uma redefinição de senha, seu endereço de IP será incluído no e-mail de redefinição de senha.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Por quanto tempo mantemos os seus dados</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Texto sugerido: </strong>Se você deixar um comentário, o comentário e os seus metadados são conservados indefinidamente. Fazemos isso para que seja possível reconhecer e aprovar automaticamente qualquer comentário posterior ao invés de retê-lo para moderação.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Para usuários que se registram no nosso site (se houver), também guardamos as informações pessoais que fornecem no seu perfil de usuário. Todos os usuários podem ver, editar ou excluir suas informações pessoais a qualquer momento (só não é possível alterar o seu username). Os administradores de sites também podem ver e editar estas informações.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Quais os seus direitos sobre seus dados</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Texto sugerido: </strong>Se você tiver uma conta neste site ou se tiver deixado comentários, pode solicitar um arquivo exportado dos dados pessoais que mantemos sobre você, inclusive quaisquer dados que nos tenha fornecido. Também pode solicitar que removamos qualquer dado pessoal que mantemos sobre você. Isto não inclui nenhuns dados que somos obrigados a manter para propósitos administrativos, legais ou de segurança.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Para onde enviamos seus dados</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Texto sugerido: </strong>Comentários de visitantes podem ser marcados por um serviço automático de detecção de spam.</p><!-- /wp:paragraph -->', 'Política de privacidade', '', 'inherit', 'closed', 'closed', '', '3-revision-v1', '', '', '2021-09-01 16:36:16', '2021-09-01 19:36:16', '', 3, 'https://localhost/UniformesMatrix/?p=8', 0, 'revision', '', 0),
(9, 1, '2021-09-01 16:36:32', '2021-09-01 19:36:32', '', 'Home', '', 'publish', 'closed', 'closed', '', 'home', '', '', '2021-09-02 16:37:49', '2021-09-02 19:37:49', '', 0, 'https://localhost/UniformesMatrix/?page_id=9', 0, 'page', '', 0),
(10, 1, '2021-09-01 16:36:32', '2021-09-01 19:36:32', '', 'Home', '', 'inherit', 'closed', 'closed', '', '9-revision-v1', '', '', '2021-09-01 16:36:32', '2021-09-01 19:36:32', '', 9, 'https://localhost/UniformesMatrix/?p=10', 0, 'revision', '', 0),
(11, 1, '2021-09-01 16:37:54', '2021-09-01 19:37:54', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:4:\"page\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:1:\"9\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";a:13:{i:0;s:11:\"the_content\";i:1;s:7:\"excerpt\";i:2;s:13:\"custom_fields\";i:3;s:10:\"discussion\";i:4;s:8:\"comments\";i:5;s:9:\"revisions\";i:6;s:4:\"slug\";i:7;s:6:\"author\";i:8;s:6:\"format\";i:9;s:14:\"featured_image\";i:10;s:10:\"categories\";i:11;s:4:\"tags\";i:12;s:15:\"send-trackbacks\";}s:11:\"description\";s:0:\"\";}', 'Home', 'home', 'publish', 'closed', 'closed', '', 'group_612fd6849af9c', '', '', '2021-09-02 14:49:11', '2021-09-02 17:49:11', '', 0, 'https://localhost/UniformesMatrix/?post_type=acf-field-group&#038;p=11', 0, 'acf-field-group', '', 0),
(12, 1, '2021-09-01 16:39:52', '0000-00-00 00:00:00', '', 'Rascunho automático', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2021-09-01 16:39:52', '0000-00-00 00:00:00', '', 0, 'https://localhost/UniformesMatrix/?post_type=acf-field-group&p=12', 0, 'acf-field-group', '', 0),
(68, 1, '2021-09-01 16:47:38', '2021-09-01 19:47:38', '', 'bannerdesktop-150x150', '', 'inherit', 'open', 'closed', '', 'bannerdesktop-150x150', '', '', '2021-09-01 16:47:38', '2021-09-01 19:47:38', '', 0, 'http://localhost/UniformesMatrix/wp-content/uploads/2021/09/bannerdesktop-150x150-1.png', 0, 'attachment', 'image/png', 0),
(69, 1, '2021-09-01 16:47:39', '2021-09-01 19:47:39', '', 'bannerdesktop-300x85', '', 'inherit', 'open', 'closed', '', 'bannerdesktop-300x85', '', '', '2021-09-01 16:47:39', '2021-09-01 19:47:39', '', 0, 'http://localhost/UniformesMatrix/wp-content/uploads/2021/09/bannerdesktop-300x85-1.png', 0, 'attachment', 'image/png', 0),
(70, 1, '2021-09-01 16:47:40', '2021-09-01 19:47:40', '', 'bannerdesktop-300x300', '', 'inherit', 'open', 'closed', '', 'bannerdesktop-300x300', '', '', '2021-09-01 16:47:40', '2021-09-01 19:47:40', '', 0, 'http://localhost/UniformesMatrix/wp-content/uploads/2021/09/bannerdesktop-300x300-1.png', 0, 'attachment', 'image/png', 0),
(71, 1, '2021-09-01 16:47:40', '2021-09-01 19:47:40', '', 'bannerdesktop-700x545', '', 'inherit', 'open', 'closed', '', 'bannerdesktop-700x545', '', '', '2021-09-01 16:47:40', '2021-09-01 19:47:40', '', 0, 'http://localhost/UniformesMatrix/wp-content/uploads/2021/09/bannerdesktop-700x545-1.png', 0, 'attachment', 'image/png', 0),
(72, 1, '2021-09-01 16:47:41', '2021-09-01 19:47:41', '', 'bannerdesktop-768x218', '', 'inherit', 'open', 'closed', '', 'bannerdesktop-768x218', '', '', '2021-09-01 16:47:41', '2021-09-01 19:47:41', '', 0, 'http://localhost/UniformesMatrix/wp-content/uploads/2021/09/bannerdesktop-768x218-1.png', 0, 'attachment', 'image/png', 0),
(73, 1, '2021-09-01 16:47:42', '2021-09-01 19:47:42', '', 'bannerdesktop-1024x291', '', 'inherit', 'open', 'closed', '', 'bannerdesktop-1024x291', '', '', '2021-09-01 16:47:42', '2021-09-01 19:47:42', '', 0, 'http://localhost/UniformesMatrix/wp-content/uploads/2021/09/bannerdesktop-1024x291-1.png', 0, 'attachment', 'image/png', 0),
(74, 1, '2021-09-01 16:47:43', '2021-09-01 19:47:43', '', 'bannerdesktop-1536x437', '', 'inherit', 'open', 'closed', '', 'bannerdesktop-1536x437', '', '', '2021-09-01 16:47:43', '2021-09-01 19:47:43', '', 0, 'http://localhost/UniformesMatrix/wp-content/uploads/2021/09/bannerdesktop-1536x437-1.png', 0, 'attachment', 'image/png', 0),
(75, 1, '2021-09-01 16:47:44', '2021-09-01 19:47:44', '', 'bannermobile', '', 'inherit', 'open', 'closed', '', 'bannermobile', '', '', '2021-09-01 16:47:44', '2021-09-01 19:47:44', '', 0, 'http://localhost/UniformesMatrix/wp-content/uploads/2021/09/bannermobile.png', 0, 'attachment', 'image/png', 0),
(76, 1, '2021-09-01 16:47:45', '2021-09-01 19:47:45', '', 'bannermobile-150x150', '', 'inherit', 'open', 'closed', '', 'bannermobile-150x150', '', '', '2021-09-01 16:47:45', '2021-09-01 19:47:45', '', 0, 'http://localhost/UniformesMatrix/wp-content/uploads/2021/09/bannermobile-150x150-1.png', 0, 'attachment', 'image/png', 0),
(77, 1, '2021-09-01 16:47:45', '2021-09-01 19:47:45', '', 'bannermobile-300x250', '', 'inherit', 'open', 'closed', '', 'bannermobile-300x250', '', '', '2021-09-01 16:47:45', '2021-09-01 19:47:45', '', 0, 'http://localhost/UniformesMatrix/wp-content/uploads/2021/09/bannermobile-300x250-1.png', 0, 'attachment', 'image/png', 0),
(78, 1, '2021-09-01 16:47:46', '2021-09-01 19:47:46', '', 'bannermobile-300x300', '', 'inherit', 'open', 'closed', '', 'bannermobile-300x300', '', '', '2021-09-01 16:47:46', '2021-09-01 19:47:46', '', 0, 'http://localhost/UniformesMatrix/wp-content/uploads/2021/09/bannermobile-300x300-1.png', 0, 'attachment', 'image/png', 0),
(79, 1, '2021-09-01 16:47:47', '2021-09-01 19:47:47', '', 'bg-rodape', '', 'inherit', 'open', 'closed', '', 'bg-rodape', '', '', '2021-09-01 16:47:47', '2021-09-01 19:47:47', '', 0, 'http://localhost/UniformesMatrix/wp-content/uploads/2021/09/bg-rodape.jpg', 0, 'attachment', 'image/jpeg', 0),
(80, 1, '2021-09-01 16:47:48', '2021-09-01 19:47:48', '', 'bg-rodape-150x150', '', 'inherit', 'open', 'closed', '', 'bg-rodape-150x150', '', '', '2021-09-01 16:47:48', '2021-09-01 19:47:48', '', 0, 'http://localhost/UniformesMatrix/wp-content/uploads/2021/09/bg-rodape-150x150-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(81, 1, '2021-09-01 16:47:48', '2021-09-01 19:47:48', '', 'bg-rodape-300x32', '', 'inherit', 'open', 'closed', '', 'bg-rodape-300x32', '', '', '2021-09-01 16:47:48', '2021-09-01 19:47:48', '', 0, 'http://localhost/UniformesMatrix/wp-content/uploads/2021/09/bg-rodape-300x32-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(82, 1, '2021-09-01 16:47:49', '2021-09-01 19:47:49', '', 'bg-rodape-300x206', '', 'inherit', 'open', 'closed', '', 'bg-rodape-300x206', '', '', '2021-09-01 16:47:49', '2021-09-01 19:47:49', '', 0, 'http://localhost/UniformesMatrix/wp-content/uploads/2021/09/bg-rodape-300x206-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(83, 1, '2021-09-01 16:47:50', '2021-09-01 19:47:50', '', 'bg-rodape-700x206', '', 'inherit', 'open', 'closed', '', 'bg-rodape-700x206', '', '', '2021-09-01 16:47:50', '2021-09-01 19:47:50', '', 0, 'http://localhost/UniformesMatrix/wp-content/uploads/2021/09/bg-rodape-700x206-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(84, 1, '2021-09-01 16:47:51', '2021-09-01 19:47:51', '', 'bg-rodape-768x82', '', 'inherit', 'open', 'closed', '', 'bg-rodape-768x82', '', '', '2021-09-01 16:47:51', '2021-09-01 19:47:51', '', 0, 'http://localhost/UniformesMatrix/wp-content/uploads/2021/09/bg-rodape-768x82-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(85, 1, '2021-09-01 16:47:51', '2021-09-01 19:47:51', '', 'bg-rodape-1024x110', '', 'inherit', 'open', 'closed', '', 'bg-rodape-1024x110', '', '', '2021-09-01 16:47:51', '2021-09-01 19:47:51', '', 0, 'http://localhost/UniformesMatrix/wp-content/uploads/2021/09/bg-rodape-1024x110-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(86, 1, '2021-09-01 16:47:52', '2021-09-01 19:47:52', '', 'bg-rodape-1536x165', '', 'inherit', 'open', 'closed', '', 'bg-rodape-1536x165', '', '', '2021-09-01 16:47:52', '2021-09-01 19:47:52', '', 0, 'http://localhost/UniformesMatrix/wp-content/uploads/2021/09/bg-rodape-1536x165-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(87, 1, '2021-09-01 16:47:53', '2021-09-01 19:47:53', '', 'bones-1', '', 'inherit', 'open', 'closed', '', 'bones-1', '', '', '2021-09-01 16:47:53', '2021-09-01 19:47:53', '', 0, 'http://localhost/UniformesMatrix/wp-content/uploads/2021/09/bones-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(88, 1, '2021-09-01 16:47:53', '2021-09-01 19:47:53', '', 'bones-1-150x150', '', 'inherit', 'open', 'closed', '', 'bones-1-150x150', '', '', '2021-09-01 16:47:53', '2021-09-01 19:47:53', '', 0, 'http://localhost/UniformesMatrix/wp-content/uploads/2021/09/bones-1-150x150-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(89, 1, '2021-09-01 16:47:54', '2021-09-01 19:47:54', '', 'bones-1-236x178', '', 'inherit', 'open', 'closed', '', 'bones-1-236x178', '', '', '2021-09-01 16:47:54', '2021-09-01 19:47:54', '', 0, 'http://localhost/UniformesMatrix/wp-content/uploads/2021/09/bones-1-236x178-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(90, 1, '2021-09-01 16:47:55', '2021-09-01 19:47:55', '', 'bones-1-300x300', '', 'inherit', 'open', 'closed', '', 'bones-1-300x300', '', '', '2021-09-01 16:47:55', '2021-09-01 19:47:55', '', 0, 'http://localhost/UniformesMatrix/wp-content/uploads/2021/09/bones-1-300x300-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(91, 1, '2021-09-01 16:47:55', '2021-09-01 19:47:55', '', 'calcas-e-shorts', '', 'inherit', 'open', 'closed', '', 'calcas-e-shorts', '', '', '2021-09-01 16:47:55', '2021-09-01 19:47:55', '', 0, 'http://localhost/UniformesMatrix/wp-content/uploads/2021/09/calcas-e-shorts.jpg', 0, 'attachment', 'image/jpeg', 0),
(92, 1, '2021-09-01 16:47:56', '2021-09-01 19:47:56', '', 'calcas-e-shorts-150x150', '', 'inherit', 'open', 'closed', '', 'calcas-e-shorts-150x150', '', '', '2021-09-01 16:47:56', '2021-09-01 19:47:56', '', 0, 'http://localhost/UniformesMatrix/wp-content/uploads/2021/09/calcas-e-shorts-150x150-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(93, 1, '2021-09-01 16:47:57', '2021-09-01 19:47:57', '', 'calcas-e-shorts-236x178', '', 'inherit', 'open', 'closed', '', 'calcas-e-shorts-236x178', '', '', '2021-09-01 16:47:57', '2021-09-01 19:47:57', '', 0, 'http://localhost/UniformesMatrix/wp-content/uploads/2021/09/calcas-e-shorts-236x178-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(94, 1, '2021-09-01 16:47:57', '2021-09-01 19:47:57', '', 'calcas-e-shorts-300x295', '', 'inherit', 'open', 'closed', '', 'calcas-e-shorts-300x295', '', '', '2021-09-01 16:47:57', '2021-09-01 19:47:57', '', 0, 'http://localhost/UniformesMatrix/wp-content/uploads/2021/09/calcas-e-shorts-300x295-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(95, 1, '2021-09-01 16:47:58', '2021-09-01 19:47:58', '', 'calcas-e-shorts-300x300', '', 'inherit', 'open', 'closed', '', 'calcas-e-shorts-300x300', '', '', '2021-09-01 16:47:58', '2021-09-01 19:47:58', '', 0, 'http://localhost/UniformesMatrix/wp-content/uploads/2021/09/calcas-e-shorts-300x300-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(96, 1, '2021-09-01 16:47:58', '2021-09-01 19:47:58', '', 'camisetas-e-jaquetas', '', 'inherit', 'open', 'closed', '', 'camisetas-e-jaquetas', '', '', '2021-09-01 16:47:58', '2021-09-01 19:47:58', '', 0, 'http://localhost/UniformesMatrix/wp-content/uploads/2021/09/camisetas-e-jaquetas.jpg', 0, 'attachment', 'image/jpeg', 0),
(97, 1, '2021-09-01 16:47:59', '2021-09-01 19:47:59', '', 'camisetas-e-jaquetas-150x150', '', 'inherit', 'open', 'closed', '', 'camisetas-e-jaquetas-150x150', '', '', '2021-09-01 16:47:59', '2021-09-01 19:47:59', '', 0, 'http://localhost/UniformesMatrix/wp-content/uploads/2021/09/camisetas-e-jaquetas-150x150-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(98, 1, '2021-09-01 16:48:00', '2021-09-01 19:48:00', '', 'camisetas-e-jaquetas-236x178', '', 'inherit', 'open', 'closed', '', 'camisetas-e-jaquetas-236x178', '', '', '2021-09-01 16:48:00', '2021-09-01 19:48:00', '', 0, 'http://localhost/UniformesMatrix/wp-content/uploads/2021/09/camisetas-e-jaquetas-236x178-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(99, 1, '2021-09-01 16:48:00', '2021-09-01 19:48:00', '', 'camisetas-e-jaquetas-300x257', '', 'inherit', 'open', 'closed', '', 'camisetas-e-jaquetas-300x257', '', '', '2021-09-01 16:48:00', '2021-09-01 19:48:00', '', 0, 'http://localhost/UniformesMatrix/wp-content/uploads/2021/09/camisetas-e-jaquetas-300x257-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(100, 1, '2021-09-01 16:48:01', '2021-09-01 19:48:01', '', 'camisetas-e-jaquetas-300x300', '', 'inherit', 'open', 'closed', '', 'camisetas-e-jaquetas-300x300', '', '', '2021-09-01 16:48:01', '2021-09-01 19:48:01', '', 0, 'http://localhost/UniformesMatrix/wp-content/uploads/2021/09/camisetas-e-jaquetas-300x300-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(101, 1, '2021-09-01 16:48:02', '2021-09-01 19:48:02', '', 'clientforne', '', 'inherit', 'open', 'closed', '', 'clientforne', '', '', '2021-09-01 19:11:35', '2021-09-01 22:11:35', '', 183, 'http://localhost/UniformesMatrix/wp-content/uploads/2021/09/clientforne.png', 0, 'attachment', 'image/png', 0),
(102, 1, '2021-09-01 16:48:02', '2021-09-01 19:48:02', '', 'clientforne-150x150', '', 'inherit', 'open', 'closed', '', 'clientforne-150x150', '', '', '2021-09-01 16:48:02', '2021-09-01 19:48:02', '', 0, 'http://localhost/UniformesMatrix/wp-content/uploads/2021/09/clientforne-150x150-1.png', 0, 'attachment', 'image/png', 0),
(103, 1, '2021-09-01 16:48:03', '2021-09-01 19:48:03', '', 'conteudo', '', 'inherit', 'open', 'closed', '', 'conteudo', '', '', '2021-09-01 17:10:55', '2021-09-01 20:10:55', '', 9, 'http://localhost/UniformesMatrix/wp-content/uploads/2021/09/conteudo.png', 0, 'attachment', 'image/png', 0),
(104, 1, '2021-09-01 16:48:04', '2021-09-01 19:48:04', '', 'conteudo-150x150', '', 'inherit', 'open', 'closed', '', 'conteudo-150x150', '', '', '2021-09-01 16:48:04', '2021-09-01 19:48:04', '', 0, 'http://localhost/UniformesMatrix/wp-content/uploads/2021/09/conteudo-150x150-1.png', 0, 'attachment', 'image/png', 0),
(105, 1, '2021-09-01 16:48:04', '2021-09-01 19:48:04', '', 'conteudo-300x258', '', 'inherit', 'open', 'closed', '', 'conteudo-300x258', '', '', '2021-09-01 16:48:04', '2021-09-01 19:48:04', '', 0, 'http://localhost/UniformesMatrix/wp-content/uploads/2021/09/conteudo-300x258-1.png', 0, 'attachment', 'image/png', 0),
(106, 1, '2021-09-01 16:48:05', '2021-09-01 19:48:05', '', 'conteudo-300x300', '', 'inherit', 'open', 'closed', '', 'conteudo-300x300', '', '', '2021-09-01 16:48:05', '2021-09-01 19:48:05', '', 0, 'http://localhost/UniformesMatrix/wp-content/uploads/2021/09/conteudo-300x300-1.png', 0, 'attachment', 'image/png', 0),
(107, 1, '2021-09-01 16:48:06', '2021-09-01 19:48:06', '', 'fecha-menu', '', 'inherit', 'open', 'closed', '', 'fecha-menu', '', '', '2021-09-01 16:48:06', '2021-09-01 19:48:06', '', 0, 'http://localhost/UniformesMatrix/wp-content/uploads/2021/09/fecha-menu.png', 0, 'attachment', 'image/png', 0),
(108, 1, '2021-09-01 16:48:06', '2021-09-01 19:48:06', '', 'logo-footer', '', 'inherit', 'open', 'closed', '', 'logo-footer', '', '', '2021-09-01 16:48:06', '2021-09-01 19:48:06', '', 0, 'http://localhost/UniformesMatrix/wp-content/uploads/2021/09/logo-footer.png', 0, 'attachment', 'image/png', 0),
(109, 1, '2021-09-01 16:48:08', '2021-09-01 19:48:08', '', 'logo-footer-150x126', '', 'inherit', 'open', 'closed', '', 'logo-footer-150x126', '', '', '2021-09-01 16:48:08', '2021-09-01 19:48:08', '', 0, 'http://localhost/UniformesMatrix/wp-content/uploads/2021/09/logo-footer-150x126-1.png', 0, 'attachment', 'image/png', 0),
(110, 1, '2021-09-01 16:48:08', '2021-09-01 19:48:08', '', 'logo-footer-300x122', '', 'inherit', 'open', 'closed', '', 'logo-footer-300x122', '', '', '2021-09-01 16:48:08', '2021-09-01 19:48:08', '', 0, 'http://localhost/UniformesMatrix/wp-content/uploads/2021/09/logo-footer-300x122-1.png', 0, 'attachment', 'image/png', 0),
(111, 1, '2021-09-01 16:48:09', '2021-09-01 19:48:09', '', 'logo-footer-300x126', '', 'inherit', 'open', 'closed', '', 'logo-footer-300x126', '', '', '2021-09-01 16:48:09', '2021-09-01 19:48:09', '', 0, 'http://localhost/UniformesMatrix/wp-content/uploads/2021/09/logo-footer-300x126-1.png', 0, 'attachment', 'image/png', 0),
(112, 1, '2021-09-01 16:48:10', '2021-09-01 19:48:10', '', 'logo-header', '', 'inherit', 'open', 'closed', '', 'logo-header', '', '', '2021-09-01 16:48:10', '2021-09-01 19:48:10', '', 0, 'http://localhost/UniformesMatrix/wp-content/uploads/2021/09/logo-header.png', 0, 'attachment', 'image/png', 0),
(113, 1, '2021-09-01 16:48:10', '2021-09-01 19:48:10', '', 'logo-header-150x109', '', 'inherit', 'open', 'closed', '', 'logo-header-150x109', '', '', '2021-09-01 16:48:10', '2021-09-01 19:48:10', '', 0, 'http://localhost/UniformesMatrix/wp-content/uploads/2021/09/logo-header-150x109-1.png', 0, 'attachment', 'image/png', 0),
(114, 1, '2021-09-01 16:48:11', '2021-09-01 19:48:11', '', 'logo-mmd', '', 'inherit', 'open', 'closed', '', 'logo-mmd', '', '', '2021-09-01 16:48:11', '2021-09-01 19:48:11', '', 0, 'http://localhost/UniformesMatrix/wp-content/uploads/2021/09/logo-mmd.png', 0, 'attachment', 'image/png', 0),
(115, 1, '2021-09-01 16:48:12', '2021-09-01 19:48:12', '', 'outros-produtos', '', 'inherit', 'open', 'closed', '', 'outros-produtos', '', '', '2021-09-01 16:48:12', '2021-09-01 19:48:12', '', 0, 'http://localhost/UniformesMatrix/wp-content/uploads/2021/09/outros-produtos.jpg', 0, 'attachment', 'image/jpeg', 0),
(116, 1, '2021-09-01 16:48:13', '2021-09-01 19:48:13', '', 'outros-produtos-150x150', '', 'inherit', 'open', 'closed', '', 'outros-produtos-150x150', '', '', '2021-09-01 16:48:13', '2021-09-01 19:48:13', '', 0, 'http://localhost/UniformesMatrix/wp-content/uploads/2021/09/outros-produtos-150x150-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(117, 1, '2021-09-01 16:48:13', '2021-09-01 19:48:13', '', 'outros-produtos-236x178', '', 'inherit', 'open', 'closed', '', 'outros-produtos-236x178', '', '', '2021-09-01 16:48:13', '2021-09-01 19:48:13', '', 0, 'http://localhost/UniformesMatrix/wp-content/uploads/2021/09/outros-produtos-236x178-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(118, 1, '2021-09-01 16:48:14', '2021-09-01 19:48:14', '', 'outros-produtos-300x296', '', 'inherit', 'open', 'closed', '', 'outros-produtos-300x296', '', '', '2021-09-01 16:48:14', '2021-09-01 19:48:14', '', 0, 'http://localhost/UniformesMatrix/wp-content/uploads/2021/09/outros-produtos-300x296-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(119, 1, '2021-09-01 16:48:15', '2021-09-01 19:48:15', '', 'outros-produtos-300x300', '', 'inherit', 'open', 'closed', '', 'outros-produtos-300x300', '', '', '2021-09-01 16:48:15', '2021-09-01 19:48:15', '', 0, 'http://localhost/UniformesMatrix/wp-content/uploads/2021/09/outros-produtos-300x300-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(120, 1, '2021-09-01 16:48:16', '2021-09-01 19:48:16', '', 'padrao', '', 'inherit', 'open', 'closed', '', 'padrao', '', '', '2021-09-01 16:48:16', '2021-09-01 19:48:16', '', 0, 'http://localhost/UniformesMatrix/wp-content/uploads/2021/09/padrao.png', 0, 'attachment', 'image/png', 0),
(121, 1, '2021-09-01 16:48:16', '2021-09-01 19:48:16', '', 'padrao-150x150', '', 'inherit', 'open', 'closed', '', 'padrao-150x150', '', '', '2021-09-01 16:48:16', '2021-09-01 19:48:16', '', 0, 'http://localhost/UniformesMatrix/wp-content/uploads/2021/09/padrao-150x150-1.png', 0, 'attachment', 'image/png', 0),
(122, 1, '2021-09-01 16:48:17', '2021-09-01 19:48:17', '', 'bannerdesktop', '', 'inherit', 'open', 'closed', '', 'bannerdesktop', '', '', '2021-09-01 20:10:16', '2021-09-01 23:10:16', '', 199, 'http://localhost/UniformesMatrix/wp-content/uploads/2021/09/bannerdesktop.png', 0, 'attachment', 'image/png', 0),
(123, 1, '2021-09-01 16:49:10', '2021-09-01 19:49:10', '', 'Contato', '', 'publish', 'closed', 'closed', '', 'contato', '', '', '2021-09-02 14:00:22', '2021-09-02 17:00:22', '', 0, 'https://localhost/UniformesMatrix/?page_id=123', 0, 'page', '', 0),
(124, 1, '2021-09-01 16:49:10', '2021-09-01 19:49:10', '', 'Contato', '', 'inherit', 'closed', 'closed', '', '123-revision-v1', '', '', '2021-09-01 16:49:10', '2021-09-01 19:49:10', '', 123, 'https://localhost/UniformesMatrix/?p=124', 0, 'revision', '', 0),
(125, 1, '2021-09-01 16:49:43', '2021-09-01 19:49:43', '', 'Clientes e Fornecedores', '', 'publish', 'closed', 'closed', '', 'clientes-e-fornecedores', '', '', '2021-09-02 13:44:18', '2021-09-02 16:44:18', '', 0, 'https://localhost/UniformesMatrix/?page_id=125', 0, 'page', '', 0),
(126, 1, '2021-09-01 16:49:43', '2021-09-01 19:49:43', '', 'Clientes e Fornecedores', '', 'inherit', 'closed', 'closed', '', '125-revision-v1', '', '', '2021-09-01 16:49:43', '2021-09-01 19:49:43', '', 125, 'https://localhost/UniformesMatrix/?p=126', 0, 'revision', '', 0),
(127, 1, '2021-09-01 16:50:00', '2021-09-01 19:50:00', '', 'Quem Somos', '', 'publish', 'closed', 'closed', '', 'quem-somos', '', '', '2021-09-02 13:23:27', '2021-09-02 16:23:27', '', 0, 'https://localhost/UniformesMatrix/?page_id=127', 0, 'page', '', 0),
(128, 1, '2021-09-01 16:50:00', '2021-09-01 19:50:00', '', 'Quem Somos', '', 'inherit', 'closed', 'closed', '', '127-revision-v1', '', '', '2021-09-01 16:50:00', '2021-09-01 19:50:00', '', 127, 'https://localhost/UniformesMatrix/?p=128', 0, 'revision', '', 0),
(129, 1, '2021-09-01 16:50:09', '0000-00-00 00:00:00', '', 'Rascunho automático', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2021-09-01 16:50:09', '0000-00-00 00:00:00', '', 0, 'https://localhost/UniformesMatrix/?post_type=acf-field-group&p=129', 0, 'acf-field-group', '', 0),
(130, 1, '2021-09-01 17:06:39', '2021-09-01 20:06:39', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:12:\"options_page\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:18:\"configuracoes-tema\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";a:15:{i:0;s:9:\"permalink\";i:1;s:11:\"the_content\";i:2;s:7:\"excerpt\";i:3;s:13:\"custom_fields\";i:4;s:10:\"discussion\";i:5;s:8:\"comments\";i:6;s:9:\"revisions\";i:7;s:4:\"slug\";i:8;s:6:\"author\";i:9;s:6:\"format\";i:10;s:15:\"page_attributes\";i:11;s:14:\"featured_image\";i:12;s:10:\"categories\";i:13;s:4:\"tags\";i:14;s:15:\"send-trackbacks\";}s:11:\"description\";s:0:\"\";}', 'Configuração Geral', 'configuracao-geral', 'publish', 'closed', 'closed', '', 'group_612fdca6c5fe4', '', '', '2021-09-01 18:46:27', '2021-09-01 21:46:27', '', 0, 'https://localhost/UniformesMatrix/?post_type=acf-field-group&#038;p=130', 0, 'acf-field-group', '', 0),
(131, 1, '2021-09-01 17:06:39', '2021-09-01 20:06:39', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Telefone', 'telefone', 'publish', 'closed', 'closed', '', 'field_612fdcbabe527', '', '', '2021-09-01 18:46:27', '2021-09-01 21:46:27', '', 130, 'https://localhost/UniformesMatrix/?post_type=acf-field&#038;p=131', 1, 'acf-field', '', 0),
(132, 1, '2021-09-01 17:06:40', '2021-09-01 20:06:40', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'WhatsApp', 'whatsapp', 'publish', 'closed', 'closed', '', 'field_612fdcf9be528', '', '', '2021-09-01 18:46:27', '2021-09-01 21:46:27', '', 130, 'https://localhost/UniformesMatrix/?post_type=acf-field&#038;p=132', 2, 'acf-field', '', 0),
(133, 1, '2021-09-01 17:06:40', '2021-09-01 20:06:40', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'E-mail', 'e-mail', 'publish', 'closed', 'closed', '', 'field_612fdd0bbe529', '', '', '2021-09-01 18:46:27', '2021-09-01 21:46:27', '', 130, 'https://localhost/UniformesMatrix/?post_type=acf-field&#038;p=133', 3, 'acf-field', '', 0),
(134, 1, '2021-09-01 17:06:40', '2021-09-01 20:06:40', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";s:12:\"preview_size\";s:9:\"thumbnail\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";i:0;s:10:\"min_height\";i:0;s:8:\"min_size\";i:0;s:9:\"max_width\";i:0;s:10:\"max_height\";i:0;s:8:\"max_size\";i:0;s:10:\"mime_types\";s:0:\"\";}', 'Logo Topo', 'logo', 'publish', 'closed', 'closed', '', 'field_612fdd27be52a', '', '', '2021-09-01 18:46:27', '2021-09-01 21:46:27', '', 130, 'https://localhost/UniformesMatrix/?post_type=acf-field&#038;p=134', 5, 'acf-field', '', 0),
(135, 1, '2021-09-01 17:09:32', '2021-09-01 20:09:32', 'a:7:{s:4:\"type\";s:3:\"tab\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"placement\";s:4:\"left\";s:8:\"endpoint\";i:0;}', 'Área de Conteúdo 1', 'area_de_conteudo_1', 'publish', 'closed', 'closed', '', 'field_612fdd62bb964', '', '', '2021-09-01 17:09:32', '2021-09-01 20:09:32', '', 11, 'https://localhost/UniformesMatrix/?post_type=acf-field&p=135', 0, 'acf-field', '', 0),
(136, 1, '2021-09-01 17:09:32', '2021-09-01 20:09:32', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Título', 'titulo_camisetas', 'publish', 'closed', 'closed', '', 'field_612fdd71bb965', '', '', '2021-09-02 14:49:09', '2021-09-02 17:49:09', '', 11, 'https://localhost/UniformesMatrix/?post_type=acf-field&#038;p=136', 1, 'acf-field', '', 0),
(137, 1, '2021-09-01 17:09:32', '2021-09-01 20:09:32', 'a:10:{s:4:\"type\";s:7:\"wysiwyg\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:4:\"tabs\";s:3:\"all\";s:7:\"toolbar\";s:4:\"full\";s:12:\"media_upload\";i:1;s:5:\"delay\";i:0;}', 'Texto', 'texto_camisetas', 'publish', 'closed', 'closed', '', 'field_612fdd84bb966', '', '', '2021-09-02 14:49:09', '2021-09-02 17:49:09', '', 11, 'https://localhost/UniformesMatrix/?post_type=acf-field&#038;p=137', 2, 'acf-field', '', 0),
(138, 1, '2021-09-01 17:09:32', '2021-09-01 20:09:32', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Link', 'link_camisetas', 'publish', 'closed', 'closed', '', 'field_612fdd95bb967', '', '', '2021-09-02 14:49:10', '2021-09-02 17:49:10', '', 11, 'https://localhost/UniformesMatrix/?post_type=acf-field&#038;p=138', 3, 'acf-field', '', 0),
(139, 1, '2021-09-01 17:09:32', '2021-09-01 20:09:32', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";s:12:\"preview_size\";s:9:\"thumbnail\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Imagem', 'imagem_camisetas', 'publish', 'closed', 'closed', '', 'field_612fddd6bb968', '', '', '2021-09-02 14:49:10', '2021-09-02 17:49:10', '', 11, 'https://localhost/UniformesMatrix/?post_type=acf-field&#038;p=139', 4, 'acf-field', '', 0),
(140, 1, '2021-09-01 18:11:10', '2021-09-01 21:11:10', 'a:7:{s:4:\"type\";s:3:\"tab\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"placement\";s:4:\"left\";s:8:\"endpoint\";i:0;}', 'Área de Conteúdo 2', 'area_de_conteudo_2', 'publish', 'closed', 'closed', '', 'field_612feb72661c4', '', '', '2021-09-02 14:49:10', '2021-09-02 17:49:10', '', 11, 'https://localhost/UniformesMatrix/?post_type=acf-field&#038;p=140', 5, 'acf-field', '', 0),
(141, 1, '2021-09-01 18:11:11', '2021-09-01 21:11:11', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Título', 'titulo_shorts', 'publish', 'closed', 'closed', '', 'field_612feb8c661c5', '', '', '2021-09-02 14:49:10', '2021-09-02 17:49:10', '', 11, 'https://localhost/UniformesMatrix/?post_type=acf-field&#038;p=141', 6, 'acf-field', '', 0),
(142, 1, '2021-09-01 18:11:11', '2021-09-01 21:11:11', 'a:10:{s:4:\"type\";s:7:\"wysiwyg\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:4:\"tabs\";s:3:\"all\";s:7:\"toolbar\";s:4:\"full\";s:12:\"media_upload\";i:1;s:5:\"delay\";i:0;}', 'Texto', 'texto_shorts', 'publish', 'closed', 'closed', '', 'field_612febe3661c6', '', '', '2021-09-02 14:49:10', '2021-09-02 17:49:10', '', 11, 'https://localhost/UniformesMatrix/?post_type=acf-field&#038;p=142', 7, 'acf-field', '', 0),
(143, 1, '2021-09-01 18:11:11', '2021-09-01 21:11:11', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Link', 'link_shorts', 'publish', 'closed', 'closed', '', 'field_612febf3661c7', '', '', '2021-09-02 14:49:10', '2021-09-02 17:49:10', '', 11, 'https://localhost/UniformesMatrix/?post_type=acf-field&#038;p=143', 8, 'acf-field', '', 0),
(144, 1, '2021-09-01 18:11:11', '2021-09-01 21:11:11', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";s:12:\"preview_size\";s:9:\"thumbnail\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Imagem', 'imagem_shorts', 'publish', 'closed', 'closed', '', 'field_612fec09661c8', '', '', '2021-09-02 14:49:10', '2021-09-02 17:49:10', '', 11, 'https://localhost/UniformesMatrix/?post_type=acf-field&#038;p=144', 9, 'acf-field', '', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(145, 1, '2021-09-01 18:11:11', '2021-09-01 21:11:11', 'a:7:{s:4:\"type\";s:3:\"tab\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"placement\";s:4:\"left\";s:8:\"endpoint\";i:0;}', 'Área de Conteúdo 3', 'area_de_conteudo_3', 'publish', 'closed', 'closed', '', 'field_612fec26661c9', '', '', '2021-09-02 14:49:10', '2021-09-02 17:49:10', '', 11, 'https://localhost/UniformesMatrix/?post_type=acf-field&#038;p=145', 10, 'acf-field', '', 0),
(146, 1, '2021-09-01 18:11:12', '2021-09-01 21:11:12', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Título', 'titulo_bones', 'publish', 'closed', 'closed', '', 'field_612fec35661ca', '', '', '2021-09-02 14:49:10', '2021-09-02 17:49:10', '', 11, 'https://localhost/UniformesMatrix/?post_type=acf-field&#038;p=146', 11, 'acf-field', '', 0),
(147, 1, '2021-09-01 18:11:12', '2021-09-01 21:11:12', 'a:10:{s:4:\"type\";s:7:\"wysiwyg\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:4:\"tabs\";s:3:\"all\";s:7:\"toolbar\";s:4:\"full\";s:12:\"media_upload\";i:1;s:5:\"delay\";i:0;}', 'Texto', 'texto_bones', 'publish', 'closed', 'closed', '', 'field_612fec45661cb', '', '', '2021-09-02 14:49:10', '2021-09-02 17:49:10', '', 11, 'https://localhost/UniformesMatrix/?post_type=acf-field&#038;p=147', 12, 'acf-field', '', 0),
(148, 1, '2021-09-01 18:11:12', '2021-09-01 21:11:12', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Link', 'link_bones', 'publish', 'closed', 'closed', '', 'field_612fec5a661cc', '', '', '2021-09-02 14:49:10', '2021-09-02 17:49:10', '', 11, 'https://localhost/UniformesMatrix/?post_type=acf-field&#038;p=148', 13, 'acf-field', '', 0),
(149, 1, '2021-09-01 18:11:12', '2021-09-01 21:11:12', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";s:12:\"preview_size\";s:9:\"thumbnail\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Imagem', 'imagem_bones', 'publish', 'closed', 'closed', '', 'field_612fec60661cd', '', '', '2021-09-02 14:49:10', '2021-09-02 17:49:10', '', 11, 'https://localhost/UniformesMatrix/?post_type=acf-field&#038;p=149', 14, 'acf-field', '', 0),
(150, 1, '2021-09-01 18:53:10', '2021-09-01 21:53:10', '', 'Cliente 1', '', 'trash', 'closed', 'closed', '', '__trashed', '', '', '2021-09-01 18:53:10', '2021-09-01 21:53:10', '', 0, 'https://localhost/UniformesMatrix/?post_type=clientes&#038;p=150', 0, 'clientes', '', 0),
(151, 1, '2021-09-01 18:12:00', '0000-00-00 00:00:00', '', 'Rascunho automático', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2021-09-01 18:12:00', '0000-00-00 00:00:00', '', 0, 'https://localhost/UniformesMatrix/?post_type=acf-field-group&p=151', 0, 'acf-field-group', '', 0),
(153, 1, '2021-09-01 18:13:02', '2021-09-01 21:13:02', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";s:12:\"preview_size\";s:9:\"thumbnail\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Logo Footer', 'logo_footer', 'publish', 'closed', 'closed', '', 'field_612fecc529332', '', '', '2021-09-01 18:46:27', '2021-09-01 21:46:27', '', 130, 'https://localhost/UniformesMatrix/?post_type=acf-field&#038;p=153', 6, 'acf-field', '', 0),
(154, 1, '2021-09-02 16:40:31', '2021-09-01 21:19:13', ' ', '', '', 'publish', 'closed', 'closed', '', '154', '', '', '2021-09-02 16:40:31', '2021-09-02 19:40:31', '', 0, 'https://localhost/UniformesMatrix/?p=154', 1, 'nav_menu_item', '', 0),
(155, 1, '2021-09-02 16:40:32', '2021-09-01 21:19:13', ' ', '', '', 'publish', 'closed', 'closed', '', '155', '', '', '2021-09-02 16:40:32', '2021-09-02 19:40:32', '', 0, 'https://localhost/UniformesMatrix/?p=155', 8, 'nav_menu_item', '', 0),
(156, 1, '2021-09-02 16:40:32', '2021-09-01 21:19:13', ' ', '', '', 'publish', 'closed', 'closed', '', '156', '', '', '2021-09-02 16:40:32', '2021-09-02 19:40:32', '', 0, 'https://localhost/UniformesMatrix/?p=156', 9, 'nav_menu_item', '', 0),
(157, 1, '2021-09-02 16:40:31', '2021-09-01 21:19:14', ' ', '', '', 'publish', 'closed', 'closed', '', '157', '', '', '2021-09-02 16:40:31', '2021-09-02 19:40:31', '', 0, 'https://localhost/UniformesMatrix/?p=157', 2, 'nav_menu_item', '', 0),
(158, 1, '2021-09-01 18:23:55', '2021-09-01 21:23:55', '<!-- wp:paragraph -->\n<p>Boas-vindas ao WordPress. Esse é o seu primeiro post. Edite-o ou exclua-o, e então comece a escrever!</p>\n<!-- /wp:paragraph -->', 'Olá, mundo!', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2021-09-01 18:23:55', '2021-09-01 21:23:55', '', 1, 'https://localhost/UniformesMatrix/?p=158', 0, 'revision', '', 0),
(159, 1, '2021-09-01 18:24:26', '2021-09-01 21:24:26', '', 'Banner 1', '', 'trash', 'closed', 'closed', '', '__trashed', '', '', '2021-09-01 18:24:26', '2021-09-01 21:24:26', '', 0, 'https://localhost/UniformesMatrix/?post_type=banners&#038;p=159', 0, 'banners', '', 0),
(160, 1, '2021-09-01 18:24:39', '0000-00-00 00:00:00', '', 'Rascunho automático', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2021-09-01 18:24:39', '0000-00-00 00:00:00', '', 0, 'https://localhost/UniformesMatrix/?post_type=produtos&p=160', 0, 'produtos', '', 0),
(161, 1, '2021-09-01 18:25:41', '0000-00-00 00:00:00', '', 'Rascunho automático', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2021-09-01 18:25:41', '0000-00-00 00:00:00', '', 0, 'https://localhost/UniformesMatrix/?page_id=161', 0, 'page', '', 0),
(162, 1, '2021-09-01 18:26:52', '2021-09-01 21:26:52', '', 'Produtos', '', 'trash', 'closed', 'closed', '', 'produtos__trashed', '', '', '2021-09-01 18:36:03', '2021-09-01 21:36:03', '', 0, 'https://localhost/UniformesMatrix/?page_id=162', 0, 'page', '', 0),
(163, 1, '2021-09-01 18:26:52', '2021-09-01 21:26:52', '', 'Produtos', '', 'inherit', 'closed', 'closed', '', '162-revision-v1', '', '', '2021-09-01 18:26:52', '2021-09-01 21:26:52', '', 162, 'https://localhost/UniformesMatrix/?p=163', 0, 'revision', '', 0),
(164, 1, '2021-09-01 18:42:29', '0000-00-00 00:00:00', '', 'Rascunho automático', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2021-09-01 18:42:29', '0000-00-00 00:00:00', '', 0, 'https://localhost/UniformesMatrix/?post_type=acf-field-group&p=164', 0, 'acf-field-group', '', 0),
(165, 1, '2021-09-01 18:42:49', '2021-09-01 21:42:49', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Rua', 'endereco', 'publish', 'closed', 'closed', '', 'field_612ff3cb5b63b', '', '', '2021-09-01 18:46:27', '2021-09-01 21:46:27', '', 130, 'https://localhost/UniformesMatrix/?post_type=acf-field&#038;p=165', 8, 'acf-field', '', 0),
(166, 1, '2021-09-01 18:42:50', '2021-09-01 21:42:50', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'CEP', 'cep', 'publish', 'closed', 'closed', '', 'field_612ff3d35b63c', '', '', '2021-09-01 18:46:27', '2021-09-01 21:46:27', '', 130, 'https://localhost/UniformesMatrix/?post_type=acf-field&#038;p=166', 9, 'acf-field', '', 0),
(167, 1, '2021-09-01 18:44:42', '2021-09-01 21:44:42', 'a:7:{s:4:\"type\";s:3:\"tab\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"placement\";s:4:\"left\";s:8:\"endpoint\";i:0;}', 'Redes Sociais', 'redes_sociais', 'publish', 'closed', 'closed', '', 'field_612ff41f168ed', '', '', '2021-09-01 18:46:27', '2021-09-01 21:46:27', '', 130, 'https://localhost/UniformesMatrix/?post_type=acf-field&#038;p=167', 10, 'acf-field', '', 0),
(168, 1, '2021-09-01 18:44:42', '2021-09-01 21:44:42', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Facebook', 'facebook', 'publish', 'closed', 'closed', '', 'field_612ff42c168ee', '', '', '2021-09-01 18:46:27', '2021-09-01 21:46:27', '', 130, 'https://localhost/UniformesMatrix/?post_type=acf-field&#038;p=168', 11, 'acf-field', '', 0),
(169, 1, '2021-09-01 18:44:42', '2021-09-01 21:44:42', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Instagram', 'instagram', 'publish', 'closed', 'closed', '', 'field_612ff441168ef', '', '', '2021-09-01 18:46:27', '2021-09-01 21:46:27', '', 130, 'https://localhost/UniformesMatrix/?post_type=acf-field&#038;p=169', 12, 'acf-field', '', 0),
(170, 1, '2021-09-01 18:46:27', '2021-09-01 21:46:27', 'a:7:{s:4:\"type\";s:3:\"tab\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"placement\";s:4:\"left\";s:8:\"endpoint\";i:0;}', 'Contatos', 'contatos', 'publish', 'closed', 'closed', '', 'field_612ff4a2106ef', '', '', '2021-09-01 18:46:27', '2021-09-01 21:46:27', '', 130, 'https://localhost/UniformesMatrix/?post_type=acf-field&p=170', 0, 'acf-field', '', 0),
(171, 1, '2021-09-01 18:46:27', '2021-09-01 21:46:27', 'a:7:{s:4:\"type\";s:3:\"tab\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"placement\";s:4:\"left\";s:8:\"endpoint\";i:0;}', 'Logos', 'logos', 'publish', 'closed', 'closed', '', 'field_612ff48d106ee', '', '', '2021-09-01 18:46:27', '2021-09-01 21:46:27', '', 130, 'https://localhost/UniformesMatrix/?post_type=acf-field&p=171', 4, 'acf-field', '', 0),
(172, 1, '2021-09-01 18:46:27', '2021-09-01 21:46:27', 'a:7:{s:4:\"type\";s:3:\"tab\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"placement\";s:4:\"left\";s:8:\"endpoint\";i:0;}', 'Endereço', 'endereco', 'publish', 'closed', 'closed', '', 'field_612ff46a106ed', '', '', '2021-09-01 18:46:27', '2021-09-01 21:46:27', '', 130, 'https://localhost/UniformesMatrix/?post_type=acf-field&p=172', 7, 'acf-field', '', 0),
(173, 1, '2021-09-01 18:52:47', '2021-09-01 21:52:47', 'a:7:{s:4:\"type\";s:3:\"tab\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"placement\";s:4:\"left\";s:8:\"endpoint\";i:0;}', 'Área de Conteúdo 4', 'area_de_conteudo_4', 'publish', 'closed', 'closed', '', 'field_612ff5d2b6bd0', '', '', '2021-09-02 14:49:10', '2021-09-02 17:49:10', '', 11, 'https://localhost/UniformesMatrix/?post_type=acf-field&#038;p=173', 15, 'acf-field', '', 0),
(174, 1, '2021-09-01 18:52:47', '2021-09-01 21:52:47', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Título', 'titulo_clientes_fornecedores', 'publish', 'closed', 'closed', '', 'field_612ff5e5b6bd1', '', '', '2021-09-02 14:49:10', '2021-09-02 17:49:10', '', 11, 'https://localhost/UniformesMatrix/?post_type=acf-field&#038;p=174', 16, 'acf-field', '', 0),
(175, 1, '2021-09-01 18:52:47', '2021-09-01 21:52:47', 'a:11:{s:4:\"type\";s:11:\"post_object\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"post_type\";a:2:{i:0;s:8:\"clientes\";i:1;s:12:\"fornecedores\";}s:8:\"taxonomy\";a:0:{}s:10:\"allow_null\";i:0;s:8:\"multiple\";i:0;s:13:\"return_format\";s:2:\"id\";s:2:\"ui\";i:1;}', 'Lista', 'lista_clientes_fornecedores', 'publish', 'closed', 'closed', '', 'field_612ff5f7b6bd2', '', '', '2021-09-02 14:49:10', '2021-09-02 17:49:10', '', 11, 'https://localhost/UniformesMatrix/?post_type=acf-field&#038;p=175', 17, 'acf-field', '', 0),
(176, 1, '2021-09-01 19:17:02', '2021-09-01 22:17:02', '', 'Clientes 2', '', 'publish', 'closed', 'closed', '', 'clientes-2', '', '', '2021-09-01 19:17:14', '2021-09-01 22:17:14', '', 0, 'https://localhost/UniformesMatrix/?post_type=clientes&#038;p=176', 0, 'clientes', '', 0),
(177, 1, '2021-09-01 18:57:18', '2021-09-01 21:57:18', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:8:\"clientes\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";a:15:{i:0;s:9:\"permalink\";i:1;s:11:\"the_content\";i:2;s:7:\"excerpt\";i:3;s:13:\"custom_fields\";i:4;s:10:\"discussion\";i:5;s:8:\"comments\";i:6;s:9:\"revisions\";i:7;s:4:\"slug\";i:8;s:6:\"author\";i:9;s:6:\"format\";i:10;s:15:\"page_attributes\";i:11;s:14:\"featured_image\";i:12;s:10:\"categories\";i:13;s:4:\"tags\";i:14;s:15:\"send-trackbacks\";}s:11:\"description\";s:0:\"\";}', 'Clientes', 'clientes', 'publish', 'closed', 'closed', '', 'group_612ff6b601d83', '', '', '2021-09-02 13:38:23', '2021-09-02 16:38:23', '', 0, 'https://localhost/UniformesMatrix/?post_type=acf-field-group&#038;p=177', 0, 'acf-field-group', '', 0),
(178, 1, '2021-09-01 18:57:18', '2021-09-01 21:57:18', 'a:7:{s:4:\"type\";s:3:\"tab\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"placement\";s:4:\"left\";s:8:\"endpoint\";i:0;}', 'Área de Conteúdo', 'area_de_conteudo', 'publish', 'closed', 'closed', '', 'field_612ff6c1944df', '', '', '2021-09-01 18:57:18', '2021-09-01 21:57:18', '', 177, 'https://localhost/UniformesMatrix/?post_type=acf-field&p=178', 0, 'acf-field', '', 0),
(179, 1, '2021-09-01 18:57:18', '2021-09-01 21:57:18', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";s:12:\"preview_size\";s:9:\"thumbnail\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Imagem', 'imagem', 'publish', 'closed', 'closed', '', 'field_612ff6df944e0', '', '', '2021-09-01 18:57:18', '2021-09-01 21:57:18', '', 177, 'https://localhost/UniformesMatrix/?post_type=acf-field&p=179', 1, 'acf-field', '', 0),
(180, 1, '2021-09-01 19:11:02', '2021-09-01 22:11:02', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:12:\"fornecedores\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";a:15:{i:0;s:9:\"permalink\";i:1;s:11:\"the_content\";i:2;s:7:\"excerpt\";i:3;s:13:\"custom_fields\";i:4;s:10:\"discussion\";i:5;s:8:\"comments\";i:6;s:9:\"revisions\";i:7;s:4:\"slug\";i:8;s:6:\"author\";i:9;s:6:\"format\";i:10;s:15:\"page_attributes\";i:11;s:14:\"featured_image\";i:12;s:10:\"categories\";i:13;s:4:\"tags\";i:14;s:15:\"send-trackbacks\";}s:11:\"description\";s:0:\"\";}', 'Fornecedores', 'fornecedores', 'publish', 'closed', 'closed', '', 'group_612ff748b2a65', '', '', '2021-09-02 13:38:36', '2021-09-02 16:38:36', '', 0, 'https://localhost/UniformesMatrix/?post_type=acf-field-group&#038;p=180', 0, 'acf-field-group', '', 0),
(181, 1, '2021-09-01 19:11:02', '2021-09-01 22:11:02', 'a:7:{s:4:\"type\";s:3:\"tab\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"placement\";s:4:\"left\";s:8:\"endpoint\";i:0;}', 'Área de Conteúdo 1', 'area_de_conteudo_1', 'publish', 'closed', 'closed', '', 'field_612ff751619fa', '', '', '2021-09-01 19:11:02', '2021-09-01 22:11:02', '', 180, 'https://localhost/UniformesMatrix/?post_type=acf-field&p=181', 0, 'acf-field', '', 0),
(182, 1, '2021-09-01 19:11:03', '2021-09-01 22:11:03', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";s:12:\"preview_size\";s:9:\"thumbnail\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Imagem', 'imagem', 'publish', 'closed', 'closed', '', 'field_612ff9f8619fb', '', '', '2021-09-01 19:11:03', '2021-09-01 22:11:03', '', 180, 'https://localhost/UniformesMatrix/?post_type=acf-field&p=182', 1, 'acf-field', '', 0),
(183, 1, '2021-09-01 19:11:34', '2021-09-01 22:11:34', '', 'Fornecedor 1', '', 'publish', 'closed', 'closed', '', 'fornecedor-1', '', '', '2021-09-01 19:11:34', '2021-09-01 22:11:34', '', 0, 'https://localhost/UniformesMatrix/?post_type=fornecedores&#038;p=183', 0, 'fornecedores', '', 0),
(184, 1, '2021-09-01 19:11:50', '0000-00-00 00:00:00', '', 'Rascunho automático', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2021-09-01 19:11:50', '0000-00-00 00:00:00', '', 0, 'https://localhost/UniformesMatrix/?post_type=acf-field-group&p=184', 0, 'acf-field-group', '', 0),
(185, 1, '2021-09-01 19:17:33', '2021-09-01 22:17:33', '', 'Clientes 3', '', 'publish', 'closed', 'closed', '', 'clientes-3', '', '', '2021-09-01 19:17:33', '2021-09-01 22:17:33', '', 0, 'https://localhost/UniformesMatrix/?post_type=clientes&#038;p=185', 0, 'clientes', '', 0),
(186, 1, '2021-09-01 19:17:49', '2021-09-01 22:17:49', '', 'Clientes 4', '', 'publish', 'closed', 'closed', '', 'clientes-4', '', '', '2021-09-01 19:17:49', '2021-09-01 22:17:49', '', 0, 'https://localhost/UniformesMatrix/?post_type=clientes&#038;p=186', 0, 'clientes', '', 0),
(187, 1, '2021-09-01 19:18:08', '2021-09-01 22:18:08', '', 'Clientes 5', '', 'publish', 'closed', 'closed', '', 'clientes-5', '', '', '2021-09-01 19:18:08', '2021-09-01 22:18:08', '', 0, 'https://localhost/UniformesMatrix/?post_type=clientes&#038;p=187', 0, 'clientes', '', 0),
(188, 1, '2021-09-01 19:18:24', '2021-09-01 22:18:24', '', 'Clientes 6', '', 'publish', 'closed', 'closed', '', 'clientes-6', '', '', '2021-09-01 19:18:24', '2021-09-01 22:18:24', '', 0, 'https://localhost/UniformesMatrix/?post_type=clientes&#038;p=188', 0, 'clientes', '', 0),
(189, 1, '2021-09-01 19:18:39', '2021-09-01 22:18:39', '', 'Clientes 7', '', 'publish', 'closed', 'closed', '', 'clientes-7', '', '', '2021-09-01 19:18:39', '2021-09-01 22:18:39', '', 0, 'https://localhost/UniformesMatrix/?post_type=clientes&#038;p=189', 0, 'clientes', '', 0),
(190, 1, '2021-09-01 19:18:55', '2021-09-01 22:18:55', '', 'Clientes 8', '', 'publish', 'closed', 'closed', '', 'clientes-8', '', '', '2021-09-01 19:18:55', '2021-09-01 22:18:55', '', 0, 'https://localhost/UniformesMatrix/?post_type=clientes&#038;p=190', 0, 'clientes', '', 0),
(191, 1, '2021-09-02 13:30:33', '2021-09-02 16:30:33', '', 'Clientes 1', '', 'publish', 'closed', 'closed', '', 'clientes-1', '', '', '2021-09-02 13:30:33', '2021-09-02 16:30:33', '', 0, 'https://localhost/UniformesMatrix/?post_type=clientes&#038;p=191', 0, 'clientes', '', 0),
(192, 1, '2021-09-01 19:55:54', '2021-09-01 22:55:54', 'a:7:{s:4:\"type\";s:3:\"tab\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"placement\";s:4:\"left\";s:8:\"endpoint\";i:0;}', 'Área de Conteúdo 5', 'area_de_conteudo_5', 'publish', 'closed', 'closed', '', 'field_613004b039039', '', '', '2021-09-02 14:49:11', '2021-09-02 17:49:11', '', 11, 'https://localhost/UniformesMatrix/?post_type=acf-field&#038;p=192', 18, 'acf-field', '', 0),
(193, 1, '2021-09-01 19:55:54', '2021-09-01 22:55:54', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Título', 'titulo_quem_somos', 'publish', 'closed', 'closed', '', 'field_613004be3903a', '', '', '2021-09-02 14:49:11', '2021-09-02 17:49:11', '', 11, 'https://localhost/UniformesMatrix/?post_type=acf-field&#038;p=193', 19, 'acf-field', '', 0),
(194, 1, '2021-09-01 19:55:54', '2021-09-01 22:55:54', 'a:10:{s:4:\"type\";s:7:\"wysiwyg\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:4:\"tabs\";s:3:\"all\";s:7:\"toolbar\";s:4:\"full\";s:12:\"media_upload\";i:1;s:5:\"delay\";i:0;}', 'Texto', 'texto_quem_somos', 'publish', 'closed', 'closed', '', 'field_613004dc3903b', '', '', '2021-09-02 14:49:11', '2021-09-02 17:49:11', '', 11, 'https://localhost/UniformesMatrix/?post_type=acf-field&#038;p=194', 20, 'acf-field', '', 0),
(195, 1, '2021-09-01 19:55:54', '2021-09-01 22:55:54', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Link', 'link_quem_somos', 'publish', 'closed', 'closed', '', 'field_613004e73903c', '', '', '2021-09-02 14:49:11', '2021-09-02 17:49:11', '', 11, 'https://localhost/UniformesMatrix/?post_type=acf-field&#038;p=195', 21, 'acf-field', '', 0),
(196, 1, '2021-09-01 19:55:54', '2021-09-01 22:55:54', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";s:12:\"preview_size\";s:9:\"thumbnail\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Imagem', 'imagem_quem_somos', 'publish', 'closed', 'closed', '', 'field_613004f03903d', '', '', '2021-09-02 14:49:11', '2021-09-02 17:49:11', '', 11, 'https://localhost/UniformesMatrix/?post_type=acf-field&#038;p=196', 22, 'acf-field', '', 0),
(197, 1, '2021-09-01 19:57:31', '0000-00-00 00:00:00', '', 'Rascunho automático', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2021-09-01 19:57:31', '0000-00-00 00:00:00', '', 0, 'https://localhost/UniformesMatrix/?post_type=produtos&p=197', 0, 'produtos', '', 0),
(198, 1, '2021-09-02 16:40:31', '2021-09-01 23:00:32', '', 'Produtos <i class=\"fa fa-plus-circle\"></i>', '', 'publish', 'closed', 'closed', '', 'produtos', '', '', '2021-09-02 16:40:31', '2021-09-02 19:40:31', '', 0, 'https://localhost/UniformesMatrix/?p=198', 3, 'nav_menu_item', '', 0),
(199, 1, '2021-09-01 20:01:05', '2021-09-01 23:01:05', '', 'Banner 1', '', 'publish', 'closed', 'closed', '', 'banner-1', '', '', '2021-09-01 20:10:16', '2021-09-01 23:10:16', '', 0, 'https://localhost/UniformesMatrix/?post_type=banners&#038;p=199', 0, 'banners', '', 0),
(200, 1, '2021-09-01 20:07:45', '2021-09-01 23:07:45', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:7:\"banners\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";a:15:{i:0;s:9:\"permalink\";i:1;s:11:\"the_content\";i:2;s:7:\"excerpt\";i:3;s:13:\"custom_fields\";i:4;s:10:\"discussion\";i:5;s:8:\"comments\";i:6;s:9:\"revisions\";i:7;s:4:\"slug\";i:8;s:6:\"author\";i:9;s:6:\"format\";i:10;s:15:\"page_attributes\";i:11;s:14:\"featured_image\";i:12;s:10:\"categories\";i:13;s:4:\"tags\";i:14;s:15:\"send-trackbacks\";}s:11:\"description\";s:0:\"\";}', 'Banner\'s Desktop e Mobile', 'banners-desktop-e-mobile', 'publish', 'closed', 'closed', '', 'group_613007274165a', '', '', '2021-09-01 20:11:35', '2021-09-01 23:11:35', '', 0, 'https://localhost/UniformesMatrix/?post_type=acf-field-group&#038;p=200', 0, 'acf-field-group', '', 0),
(201, 1, '2021-09-01 20:07:45', '2021-09-01 23:07:45', 'a:7:{s:4:\"type\";s:3:\"tab\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"placement\";s:4:\"left\";s:8:\"endpoint\";i:0;}', 'Banner\'s', 'banner\'s', 'publish', 'closed', 'closed', '', 'field_61300730bea10', '', '', '2021-09-01 20:08:31', '2021-09-01 23:08:31', '', 200, 'https://localhost/UniformesMatrix/?post_type=acf-field&#038;p=201', 0, 'acf-field', '', 0),
(202, 1, '2021-09-01 20:07:46', '2021-09-01 23:07:46', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";s:12:\"preview_size\";s:9:\"thumbnail\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Imagem Desktop', 'imagem_desktop', 'publish', 'closed', 'closed', '', 'field_6130074abea11', '', '', '2021-09-01 20:08:31', '2021-09-01 23:08:31', '', 200, 'https://localhost/UniformesMatrix/?post_type=acf-field&#038;p=202', 1, 'acf-field', '', 0),
(204, 1, '2021-09-01 20:07:46', '2021-09-01 23:07:46', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";s:12:\"preview_size\";s:9:\"thumbnail\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Imagem Mobile', 'imagem_mobile', 'publish', 'closed', 'closed', '', 'field_6130077cbea13', '', '', '2021-09-01 20:08:31', '2021-09-01 23:08:31', '', 200, 'https://localhost/UniformesMatrix/?post_type=acf-field&#038;p=204', 2, 'acf-field', '', 0),
(205, 1, '2021-09-01 20:07:46', '2021-09-01 23:07:46', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Link', 'link', 'publish', 'closed', 'closed', '', 'field_61300789bea14', '', '', '2021-09-01 20:08:31', '2021-09-01 23:08:31', '', 200, 'https://localhost/UniformesMatrix/?post_type=acf-field&#038;p=205', 3, 'acf-field', '', 0),
(206, 1, '2021-09-01 20:10:08', '2021-09-01 23:10:08', '', 'bannermobile', '', 'inherit', 'open', 'closed', '', 'bannermobile-2', '', '', '2021-09-01 20:10:08', '2021-09-01 23:10:08', '', 199, 'http://localhost/UniformesMatrix/wp-content/uploads/2021/09/bannermobile-1.png', 0, 'attachment', 'image/png', 0),
(207, 1, '2021-09-01 20:11:26', '2021-09-01 23:11:26', '', 'Banner 2', '', 'publish', 'closed', 'closed', '', 'banner-2', '', '', '2021-09-01 20:11:26', '2021-09-01 23:11:26', '', 0, 'https://localhost/UniformesMatrix/?post_type=banners&#038;p=207', 0, 'banners', '', 0),
(208, 1, '2021-09-01 20:11:57', '2021-09-01 23:11:57', '', 'Banner 3', '', 'publish', 'closed', 'closed', '', '208', '', '', '2021-09-01 20:12:10', '2021-09-01 23:12:10', '', 0, 'https://localhost/UniformesMatrix/?post_type=banners&#038;p=208', 0, 'banners', '', 0),
(209, 1, '2021-09-01 20:12:29', '2021-09-01 23:12:29', '', 'Banner 4', '', 'publish', 'closed', 'closed', '', 'banner-4', '', '', '2021-09-01 20:12:29', '2021-09-01 23:12:29', '', 0, 'https://localhost/UniformesMatrix/?post_type=banners&#038;p=209', 0, 'banners', '', 0),
(210, 1, '2021-09-01 20:16:06', '2021-09-01 23:16:06', '', 'Título do Produto', '', 'publish', 'closed', 'closed', '', 'titulo-do-produto', '', '', '2021-09-02 15:59:26', '2021-09-02 18:59:26', '', 0, 'https://localhost/UniformesMatrix/?post_type=produtos&#038;p=210', 0, 'produtos', '', 0),
(211, 1, '2021-09-02 13:20:28', '2021-09-02 16:20:28', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:4:\"page\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:3:\"127\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";a:13:{i:0;s:11:\"the_content\";i:1;s:7:\"excerpt\";i:2;s:13:\"custom_fields\";i:3;s:10:\"discussion\";i:4;s:8:\"comments\";i:5;s:9:\"revisions\";i:6;s:4:\"slug\";i:7;s:6:\"author\";i:8;s:6:\"format\";i:9;s:15:\"page_attributes\";i:10;s:10:\"categories\";i:11;s:4:\"tags\";i:12;s:15:\"send-trackbacks\";}s:11:\"description\";s:0:\"\";}', 'Quem Somos', 'quem-somos', 'publish', 'closed', 'closed', '', 'group_6130f83bdb750', '', '', '2021-09-02 13:23:46', '2021-09-02 16:23:46', '', 0, 'https://localhost/UniformesMatrix/?post_type=acf-field-group&#038;p=211', 0, 'acf-field-group', '', 0),
(212, 1, '2021-09-02 13:20:28', '2021-09-02 16:20:28', 'a:7:{s:4:\"type\";s:3:\"tab\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"placement\";s:4:\"left\";s:8:\"endpoint\";i:0;}', 'Área de Conteúdo 1', 'area_de_conteudo_1', 'publish', 'closed', 'closed', '', 'field_6130f855e1ea7', '', '', '2021-09-02 13:20:28', '2021-09-02 16:20:28', '', 211, 'https://localhost/UniformesMatrix/?post_type=acf-field&p=212', 0, 'acf-field', '', 0),
(213, 1, '2021-09-02 13:20:28', '2021-09-02 16:20:28', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Título', 'titulo_quemSomos', 'publish', 'closed', 'closed', '', 'field_6130f8afe1ea8', '', '', '2021-09-02 13:20:28', '2021-09-02 16:20:28', '', 211, 'https://localhost/UniformesMatrix/?post_type=acf-field&p=213', 1, 'acf-field', '', 0),
(214, 1, '2021-09-02 13:20:28', '2021-09-02 16:20:28', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Subtítulo', 'subtitulo', 'publish', 'closed', 'closed', '', 'field_6130f8c6e1ea9', '', '', '2021-09-02 13:20:28', '2021-09-02 16:20:28', '', 211, 'https://localhost/UniformesMatrix/?post_type=acf-field&p=214', 2, 'acf-field', '', 0),
(215, 1, '2021-09-02 13:20:28', '2021-09-02 16:20:28', 'a:10:{s:4:\"type\";s:7:\"wysiwyg\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:4:\"tabs\";s:3:\"all\";s:7:\"toolbar\";s:4:\"full\";s:12:\"media_upload\";i:1;s:5:\"delay\";i:0;}', 'Texto', 'texto_quemSomos', 'publish', 'closed', 'closed', '', 'field_6130f8d5e1eaa', '', '', '2021-09-02 13:20:28', '2021-09-02 16:20:28', '', 211, 'https://localhost/UniformesMatrix/?post_type=acf-field&p=215', 3, 'acf-field', '', 0),
(216, 1, '2021-09-02 13:20:28', '2021-09-02 16:20:28', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";s:12:\"preview_size\";s:9:\"thumbnail\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Imagem', 'imagem_quemSomos', 'publish', 'closed', 'closed', '', 'field_6130f8ece1eab', '', '', '2021-09-02 13:20:28', '2021-09-02 16:20:28', '', 211, 'https://localhost/UniformesMatrix/?post_type=acf-field&p=216', 4, 'acf-field', '', 0),
(217, 1, '2021-09-02 13:20:28', '2021-09-02 16:20:28', 'a:7:{s:4:\"type\";s:3:\"tab\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"placement\";s:4:\"left\";s:8:\"endpoint\";i:0;}', 'Área de Conteúdo 2', 'area_de_conteudo_2', 'publish', 'closed', 'closed', '', 'field_6130f902e1eac', '', '', '2021-09-02 13:20:28', '2021-09-02 16:20:28', '', 211, 'https://localhost/UniformesMatrix/?post_type=acf-field&p=217', 5, 'acf-field', '', 0),
(218, 1, '2021-09-02 13:20:28', '2021-09-02 16:20:28', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Título', 'titulo_quem_content_2', 'publish', 'closed', 'closed', '', 'field_6130f962e1ead', '', '', '2021-09-02 13:20:28', '2021-09-02 16:20:28', '', 211, 'https://localhost/UniformesMatrix/?post_type=acf-field&p=218', 6, 'acf-field', '', 0),
(219, 1, '2021-09-02 13:20:28', '2021-09-02 16:20:28', 'a:10:{s:4:\"type\";s:7:\"wysiwyg\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:4:\"tabs\";s:3:\"all\";s:7:\"toolbar\";s:4:\"full\";s:12:\"media_upload\";i:1;s:5:\"delay\";i:0;}', 'Texto', 'conteudo_quem_content_2', 'publish', 'closed', 'closed', '', 'field_6130f972e1eae', '', '', '2021-09-02 13:20:28', '2021-09-02 16:20:28', '', 211, 'https://localhost/UniformesMatrix/?post_type=acf-field&p=219', 7, 'acf-field', '', 0),
(220, 1, '2021-09-02 13:20:28', '2021-09-02 16:20:28', 'a:7:{s:4:\"type\";s:3:\"tab\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"placement\";s:4:\"left\";s:8:\"endpoint\";i:0;}', 'Área de Conteúdo 3', 'conteudo_quem_content_3', 'publish', 'closed', 'closed', '', 'field_6130f98be1eaf', '', '', '2021-09-02 13:20:28', '2021-09-02 16:20:28', '', 211, 'https://localhost/UniformesMatrix/?post_type=acf-field&p=220', 8, 'acf-field', '', 0),
(221, 1, '2021-09-02 13:20:29', '2021-09-02 16:20:29', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Título', 'titulo_quem_content_3', 'publish', 'closed', 'closed', '', 'field_6130f9aee1eb1', '', '', '2021-09-02 13:20:29', '2021-09-02 16:20:29', '', 211, 'https://localhost/UniformesMatrix/?post_type=acf-field&p=221', 9, 'acf-field', '', 0),
(222, 1, '2021-09-02 13:20:29', '2021-09-02 16:20:29', 'a:10:{s:4:\"type\";s:7:\"wysiwyg\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:4:\"tabs\";s:3:\"all\";s:7:\"toolbar\";s:4:\"full\";s:12:\"media_upload\";i:1;s:5:\"delay\";i:0;}', 'Texto', 'conteudo_quem_content_3', 'publish', 'closed', 'closed', '', 'field_6130f9bce1eb2', '', '', '2021-09-02 13:20:29', '2021-09-02 16:20:29', '', 211, 'https://localhost/UniformesMatrix/?post_type=acf-field&p=222', 10, 'acf-field', '', 0),
(223, 1, '2021-09-02 13:33:57', '2021-09-02 16:33:57', '', 'Fornecedor 2', '', 'publish', 'closed', 'closed', '', 'fornecedor-2', '', '', '2021-09-02 13:33:57', '2021-09-02 16:33:57', '', 0, 'https://localhost/UniformesMatrix/?post_type=fornecedores&#038;p=223', 0, 'fornecedores', '', 0),
(224, 1, '2021-09-02 13:35:41', '2021-09-02 16:35:41', '', 'Fornecedor 3', '', 'publish', 'closed', 'closed', '', 'fornecedor-3', '', '', '2021-09-02 13:35:41', '2021-09-02 16:35:41', '', 0, 'https://localhost/UniformesMatrix/?post_type=fornecedores&#038;p=224', 0, 'fornecedores', '', 0),
(225, 1, '2021-09-02 13:35:55', '2021-09-02 16:35:55', '', 'Fornecedor 4', '', 'publish', 'closed', 'closed', '', 'fornecedor-4', '', '', '2021-09-02 13:35:55', '2021-09-02 16:35:55', '', 0, 'https://localhost/UniformesMatrix/?post_type=fornecedores&#038;p=225', 0, 'fornecedores', '', 0),
(226, 1, '2021-09-02 13:36:10', '2021-09-02 16:36:10', '', 'Fornecedor 5', '', 'publish', 'closed', 'closed', '', 'fornecedor-5', '', '', '2021-09-02 13:36:10', '2021-09-02 16:36:10', '', 0, 'https://localhost/UniformesMatrix/?post_type=fornecedores&#038;p=226', 0, 'fornecedores', '', 0),
(227, 1, '2021-09-02 13:36:26', '2021-09-02 16:36:26', '', 'Fornecedor 6', '', 'publish', 'closed', 'closed', '', 'fornecedor-6', '', '', '2021-09-02 13:36:26', '2021-09-02 16:36:26', '', 0, 'https://localhost/UniformesMatrix/?post_type=fornecedores&#038;p=227', 0, 'fornecedores', '', 0),
(228, 1, '2021-09-02 13:36:42', '2021-09-02 16:36:42', '', 'Fornecedor 7', '', 'publish', 'closed', 'closed', '', 'fornecedor-7', '', '', '2021-09-02 13:36:42', '2021-09-02 16:36:42', '', 0, 'https://localhost/UniformesMatrix/?post_type=fornecedores&#038;p=228', 0, 'fornecedores', '', 0),
(229, 1, '2021-09-02 13:36:58', '2021-09-02 16:36:58', '', 'Fornecedor 8', '', 'publish', 'closed', 'closed', '', 'fornecedor-8', '', '', '2021-09-02 13:36:58', '2021-09-02 16:36:58', '', 0, 'https://localhost/UniformesMatrix/?post_type=fornecedores&#038;p=229', 0, 'fornecedores', '', 0),
(230, 1, '2021-09-02 13:40:38', '0000-00-00 00:00:00', '', 'Rascunho automático', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2021-09-02 13:40:38', '0000-00-00 00:00:00', '', 0, 'https://localhost/UniformesMatrix/?post_type=acf-field-group&p=230', 0, 'acf-field-group', '', 0),
(231, 1, '2021-09-02 13:41:47', '2021-09-02 16:41:47', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:4:\"page\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:3:\"125\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";a:13:{i:0;s:11:\"the_content\";i:1;s:7:\"excerpt\";i:2;s:13:\"custom_fields\";i:3;s:10:\"discussion\";i:4;s:8:\"comments\";i:5;s:9:\"revisions\";i:6;s:4:\"slug\";i:7;s:6:\"author\";i:8;s:6:\"format\";i:9;s:14:\"featured_image\";i:10;s:10:\"categories\";i:11;s:4:\"tags\";i:12;s:15:\"send-trackbacks\";}s:11:\"description\";s:0:\"\";}', 'C&F', 'cf', 'publish', 'closed', 'closed', '', 'group_6130feaa19c70', '', '', '2021-09-02 13:43:28', '2021-09-02 16:43:28', '', 0, 'https://localhost/UniformesMatrix/?post_type=acf-field-group&#038;p=231', 0, 'acf-field-group', '', 0),
(232, 1, '2021-09-02 13:43:28', '2021-09-02 16:43:28', 'a:7:{s:4:\"type\";s:3:\"tab\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"placement\";s:4:\"left\";s:8:\"endpoint\";i:0;}', 'Área de Conteúdo 1', 'area_de_conteudo_1', 'publish', 'closed', 'closed', '', 'field_6130feceb13f0', '', '', '2021-09-02 13:43:28', '2021-09-02 16:43:28', '', 231, 'https://localhost/UniformesMatrix/?post_type=acf-field&p=232', 0, 'acf-field', '', 0),
(233, 1, '2021-09-02 13:43:28', '2021-09-02 16:43:28', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Título', 'titulo_Clientforne', 'publish', 'closed', 'closed', '', 'field_6130ff07b13f2', '', '', '2021-09-02 13:43:28', '2021-09-02 16:43:28', '', 231, 'https://localhost/UniformesMatrix/?post_type=acf-field&p=233', 1, 'acf-field', '', 0),
(234, 1, '2021-09-02 13:43:28', '2021-09-02 16:43:28', 'a:10:{s:4:\"type\";s:7:\"wysiwyg\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:4:\"tabs\";s:3:\"all\";s:7:\"toolbar\";s:4:\"full\";s:12:\"media_upload\";i:1;s:5:\"delay\";i:0;}', 'Texto', 'conteudo_Clientforne', 'publish', 'closed', 'closed', '', 'field_6130ff13b13f3', '', '', '2021-09-02 13:43:28', '2021-09-02 16:43:28', '', 231, 'https://localhost/UniformesMatrix/?post_type=acf-field&p=234', 2, 'acf-field', '', 0),
(235, 1, '2021-09-02 13:43:28', '2021-09-02 16:43:28', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";s:12:\"preview_size\";s:9:\"thumbnail\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Imagem', 'imagem_Clientforne', 'publish', 'closed', 'closed', '', 'field_6130ff26b13f4', '', '', '2021-09-02 13:43:28', '2021-09-02 16:43:28', '', 231, 'https://localhost/UniformesMatrix/?post_type=acf-field&p=235', 3, 'acf-field', '', 0),
(236, 1, '2021-09-02 13:51:21', '2021-09-02 16:51:21', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:4:\"page\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:3:\"123\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";a:13:{i:0;s:11:\"the_content\";i:1;s:7:\"excerpt\";i:2;s:13:\"custom_fields\";i:3;s:10:\"discussion\";i:4;s:8:\"comments\";i:5;s:9:\"revisions\";i:6;s:4:\"slug\";i:7;s:6:\"author\";i:8;s:6:\"format\";i:9;s:14:\"featured_image\";i:10;s:10:\"categories\";i:11;s:4:\"tags\";i:12;s:15:\"send-trackbacks\";}s:11:\"description\";s:0:\"\";}', 'Contato', 'contato', 'publish', 'closed', 'closed', '', 'group_613100c671a96', '', '', '2021-09-02 13:59:14', '2021-09-02 16:59:14', '', 0, 'https://localhost/UniformesMatrix/?post_type=acf-field-group&#038;p=236', 0, 'acf-field-group', '', 0),
(237, 1, '2021-09-02 13:51:22', '2021-09-02 16:51:22', 'a:7:{s:4:\"type\";s:3:\"tab\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"placement\";s:4:\"left\";s:8:\"endpoint\";i:0;}', 'Área de Conteúdo 1', 'area_de_conteudo_1', 'publish', 'closed', 'closed', '', 'field_613100d6e54bb', '', '', '2021-09-02 13:51:22', '2021-09-02 16:51:22', '', 236, 'https://localhost/UniformesMatrix/?post_type=acf-field&p=237', 0, 'acf-field', '', 0),
(238, 1, '2021-09-02 13:51:22', '2021-09-02 16:51:22', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Título', 'titulo', 'publish', 'closed', 'closed', '', 'field_613100e2e54bc', '', '', '2021-09-02 13:51:22', '2021-09-02 16:51:22', '', 236, 'https://localhost/UniformesMatrix/?post_type=acf-field&p=238', 1, 'acf-field', '', 0),
(239, 1, '2021-09-02 13:51:22', '2021-09-02 16:51:22', 'a:10:{s:4:\"type\";s:7:\"wysiwyg\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:4:\"tabs\";s:3:\"all\";s:7:\"toolbar\";s:4:\"full\";s:12:\"media_upload\";i:1;s:5:\"delay\";i:0;}', 'Texto', 'texto', 'publish', 'closed', 'closed', '', 'field_613100f2e54bd', '', '', '2021-09-02 13:51:22', '2021-09-02 16:51:22', '', 236, 'https://localhost/UniformesMatrix/?post_type=acf-field&p=239', 2, 'acf-field', '', 0),
(240, 1, '2021-09-02 13:59:14', '2021-09-02 16:59:14', 'a:7:{s:4:\"type\";s:3:\"tab\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"placement\";s:4:\"left\";s:8:\"endpoint\";i:0;}', 'Área de Conteúdo 2', 'area_de_conteudo_2', 'publish', 'closed', 'closed', '', 'field_613102a8b560c', '', '', '2021-09-02 13:59:14', '2021-09-02 16:59:14', '', 236, 'https://localhost/UniformesMatrix/?post_type=acf-field&p=240', 3, 'acf-field', '', 0),
(241, 1, '2021-09-02 13:59:14', '2021-09-02 16:59:14', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Mapa', 'iframe_do_mapa', 'publish', 'closed', 'closed', '', 'field_613102c0b560d', '', '', '2021-09-02 13:59:14', '2021-09-02 16:59:14', '', 236, 'https://localhost/UniformesMatrix/?post_type=acf-field&p=241', 4, 'acf-field', '', 0),
(242, 1, '2021-09-02 14:43:33', '2021-09-02 17:43:33', 'a:7:{s:4:\"type\";s:3:\"tab\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"placement\";s:4:\"left\";s:8:\"endpoint\";i:0;}', 'Área de Conteúdo 6', 'area_de_conteudo_6', 'publish', 'closed', 'closed', '', 'field_61310ce5c8b46', '', '', '2021-09-02 14:49:11', '2021-09-02 17:49:11', '', 11, 'https://localhost/UniformesMatrix/?post_type=acf-field&#038;p=242', 23, 'acf-field', '', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(243, 1, '2021-09-02 14:43:34', '2021-09-02 17:43:34', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Título', 'titulo_clientes_fornecedores', 'publish', 'closed', 'closed', '', 'field_61310cfac8b47', '', '', '2021-09-02 14:49:11', '2021-09-02 17:49:11', '', 11, 'https://localhost/UniformesMatrix/?post_type=acf-field&#038;p=243', 24, 'acf-field', '', 0),
(244, 1, '2021-09-02 14:43:34', '2021-09-02 17:43:34', 'a:10:{s:4:\"type\";s:8:\"repeater\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:3:\"min\";i:0;s:3:\"max\";i:0;s:6:\"layout\";s:5:\"table\";s:12:\"button_label\";s:0:\"\";s:9:\"collapsed\";s:0:\"\";}', 'Lista', 'lista_clientes_fornecedores', 'publish', 'closed', 'closed', '', 'field_61310d15c8b48', '', '', '2021-09-02 14:49:11', '2021-09-02 17:49:11', '', 11, 'https://localhost/UniformesMatrix/?post_type=acf-field&#038;p=244', 25, 'acf-field', '', 0),
(245, 1, '2021-09-02 14:43:34', '2021-09-02 17:43:34', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Link', 'link_cliente_fornecedor', 'publish', 'closed', 'closed', '', 'field_61310d39c8b49', '', '', '2021-09-02 14:49:11', '2021-09-02 17:49:11', '', 11, 'https://localhost/UniformesMatrix/?post_type=acf-field&#038;p=245', 26, 'acf-field', '', 0),
(246, 1, '2021-09-02 14:49:00', '2021-09-02 17:49:00', 'a:11:{s:4:\"type\";s:11:\"post_object\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"post_type\";a:2:{i:0;s:8:\"clientes\";i:1;s:12:\"fornecedores\";}s:8:\"taxonomy\";a:0:{}s:10:\"allow_null\";i:0;s:8:\"multiple\";i:0;s:13:\"return_format\";s:2:\"id\";s:2:\"ui\";i:1;}', 'Cliente Ou Fornecedor', 'cliente', 'publish', 'closed', 'closed', '', 'field_61310dc564b2a', '', '', '2021-09-02 14:49:00', '2021-09-02 17:49:00', '', 244, 'https://localhost/UniformesMatrix/?post_type=acf-field&p=246', 0, 'acf-field', '', 0),
(248, 1, '2021-09-02 16:40:32', '2021-09-02 17:57:35', 'Quisque vel ex eu lacus auctor hendrerit. Phasellus et lectus ac elit eleifend faucibus in vel nisi. Maecenas ornare imperdiet massa a pharetra. Aliquam accumsan molestie nisi, vitae blandit dolor aliquam a. Sed a quam tempus, dapibus mi quis, imperdiet ligula. Phasellus feugiat diam sed neque euismod ullamcorper. Donec venenatis purus at enim dignissim bibendum. Sed mattis gravida tellus, eget condimentum mi faucibus a.', '', '', 'publish', 'closed', 'closed', '', '248', '', '', '2021-09-02 16:40:32', '2021-09-02 19:40:32', '', 0, 'https://localhost/UniformesMatrix/?p=248', 6, 'nav_menu_item', '', 0),
(249, 1, '2021-09-02 16:40:32', '2021-09-02 17:57:35', 'Quisque vel ex eu lacus auctor hendrerit. Phasellus et lectus ac elit eleifend faucibus in vel nisi. Maecenas ornare imperdiet massa a pharetra. Aliquam accumsan molestie nisi, vitae blandit dolor aliquam a. Sed a quam tempus, dapibus mi quis, imperdiet ligula. Phasellus feugiat diam sed neque euismod ullamcorper. Donec venenatis purus at enim dignissim bibendum. Sed mattis gravida tellus, eget condimentum mi faucibus a.  ', '', '', 'publish', 'closed', 'closed', '', '249', '', '', '2021-09-02 16:40:32', '2021-09-02 19:40:32', '', 0, 'https://localhost/UniformesMatrix/?p=249', 5, 'nav_menu_item', '', 0),
(250, 1, '2021-09-02 16:40:32', '2021-09-02 17:57:35', 'Quisque vel ex eu lacus auctor hendrerit. Phasellus et lectus ac elit eleifend faucibus in vel nisi. Maecenas ornare imperdiet massa a pharetra. Aliquam accumsan molestie nisi, vitae blandit dolor aliquam a. Sed a quam tempus, dapibus mi quis, imperdiet ligula. Phasellus feugiat diam sed neque euismod ullamcorper. Donec venenatis purus at enim dignissim bibendum. Sed mattis gravida tellus, eget condimentum mi faucibus a.', '', '', 'publish', 'closed', 'closed', '', '250', '', '', '2021-09-02 16:40:32', '2021-09-02 19:40:32', '', 0, 'https://localhost/UniformesMatrix/?p=250', 4, 'nav_menu_item', '', 0),
(251, 1, '2021-09-02 16:40:32', '2021-09-02 17:57:35', 'Quisque vel ex eu lacus auctor hendrerit. Phasellus et lectus ac elit eleifend faucibus in vel nisi. Maecenas ornare imperdiet massa a pharetra. Aliquam accumsan molestie nisi, vitae blandit dolor aliquam a. Sed a quam tempus, dapibus mi quis, imperdiet ligula. Phasellus feugiat diam sed neque euismod ullamcorper. Donec venenatis purus at enim dignissim bibendum. Sed mattis gravida tellus, eget condimentum mi faucibus a.', '', '', 'publish', 'closed', 'closed', '', '251', '', '', '2021-09-02 16:40:32', '2021-09-02 19:40:32', '', 0, 'https://localhost/UniformesMatrix/?p=251', 7, 'nav_menu_item', '', 0),
(252, 1, '2021-09-02 14:58:41', '2021-09-02 17:58:41', '<div class=\"col-sm-5\">\r\n[text* nome placeholder\"Nome\"]\r\n[email* email placeholder\"E-mail\"]\r\n[text* telefone placeholder\"Telefone\"]\r\n[text* empresa placeholder\"Empresa\"]\r\n</div>\r\n<div class=\"col-sm-7\">\r\n[textarea* mensagem placeholder\"Mensagem\"]\r\n</div>\r\n<div class=\"col-sm-12\">\r\n[hidden produto id:produtoModal]\r\n[submit \"Solicitar Orçamento\"]\r\n</div>\n1\n[_site_title] \"[your-subject]\"\n[_site_title] <luiz.fhelipe@mixsolucoesweb.com.br>\n[_site_admin_email]\nDe: [nome] <[email]>\r\nAssunto: [your-subject]\r\n\r\nCorpo da mensagem:\r\n[mensagem]\r\n\r\n-- \r\nEste e-mail foi enviado de um formulário de contato em [_site_title] ([_site_url])\nReply-To: [email]\n\n\n\n\n[_site_title] \"[your-subject]\"\n[_site_title] <luiz.fhelipe@mixsolucoesweb.com.br>\n[your-email]\nCorpo da mensagem:\r\n[your-message]\r\n\r\n-- \r\nEste e-mail foi enviado de um formulário de contato em [_site_title] ([_site_url])\nReply-To: [_site_admin_email]\n\n\n\nAgradecemos a sua mensagem.\nOcorreu um erro ao tentar enviar sua mensagem. Tente novamente mais tarde.\nUm ou mais campos possuem um erro. Verifique e tente novamente.\nOcorreu um erro ao tentar enviar sua mensagem. Tente novamente mais tarde.\nVocê deve aceitar os termos e condições antes de enviar sua mensagem.\nO campo é obrigatório.\nO campo é muito longo.\nO campo é muito curto.\nOcorreu um erro desconhecido ao enviar o arquivo.\nVocê não tem permissão para enviar esse tipo de arquivo.\nO arquivo é muito grande.\nOcorreu um erro ao enviar o arquivo.\nO formato de data está incorreto.\nA data é anterior à mais antiga permitida.\nA data é posterior à maior data permitida.\nO formato de número é inválido.\nO número é menor do que o mínimo permitido.\nO número é maior do que o máximo permitido.\nA resposta para o quiz está incorreta.\nO endereço de e-mail informado é inválido.\nA URL é inválida.\nO número de telefone é inválido.', 'Formulário do Modal', '', 'publish', 'closed', 'closed', '', 'formulario-de-contato-1_copy', '', '', '2021-09-02 15:54:52', '2021-09-02 18:54:52', '', 0, 'https://localhost/UniformesMatrix/?post_type=wpcf7_contact_form&#038;p=252', 0, 'wpcf7_contact_form', '', 0),
(253, 1, '2021-09-02 15:58:19', '2021-09-02 18:58:19', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:8:\"produtos\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";a:14:{i:0;s:9:\"permalink\";i:1;s:11:\"the_content\";i:2;s:7:\"excerpt\";i:3;s:13:\"custom_fields\";i:4;s:10:\"discussion\";i:5;s:8:\"comments\";i:6;s:9:\"revisions\";i:7;s:4:\"slug\";i:8;s:6:\"author\";i:9;s:6:\"format\";i:10;s:14:\"featured_image\";i:11;s:10:\"categories\";i:12;s:4:\"tags\";i:13;s:15:\"send-trackbacks\";}s:11:\"description\";s:0:\"\";}', 'Categorias', 'categorias', 'publish', 'closed', 'closed', '', 'group_61311e5ba9f40', '', '', '2021-09-02 16:06:39', '2021-09-02 19:06:39', '', 0, 'https://localhost/UniformesMatrix/?post_type=acf-field-group&#038;p=253', 0, 'acf-field-group', '', 0),
(254, 1, '2021-09-02 15:58:19', '2021-09-02 18:58:19', 'a:7:{s:4:\"type\";s:3:\"tab\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"placement\";s:4:\"left\";s:8:\"endpoint\";i:0;}', 'Área de Conteúdo 1', 'area_de_conteudo_1', 'publish', 'closed', 'closed', '', 'field_61311e78fb163', '', '', '2021-09-02 15:58:19', '2021-09-02 18:58:19', '', 253, 'https://localhost/UniformesMatrix/?post_type=acf-field&p=254', 0, 'acf-field', '', 0),
(255, 1, '2021-09-02 15:58:19', '2021-09-02 18:58:19', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";s:12:\"preview_size\";s:9:\"thumbnail\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Imagem', 'imagem', 'publish', 'closed', 'closed', '', 'field_61311e9dfb164', '', '', '2021-09-02 15:58:19', '2021-09-02 18:58:19', '', 253, 'https://localhost/UniformesMatrix/?post_type=acf-field&p=255', 1, 'acf-field', '', 0),
(256, 1, '2021-09-02 15:58:19', '2021-09-02 18:58:19', 'a:10:{s:4:\"type\";s:7:\"wysiwyg\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:4:\"tabs\";s:3:\"all\";s:7:\"toolbar\";s:4:\"full\";s:12:\"media_upload\";i:1;s:5:\"delay\";i:0;}', 'Descrição', 'descricao', 'publish', 'closed', 'closed', '', 'field_61311eb2fb165', '', '', '2021-09-02 15:58:19', '2021-09-02 18:58:19', '', 253, 'https://localhost/UniformesMatrix/?post_type=acf-field&p=256', 2, 'acf-field', '', 0),
(257, 1, '2021-09-02 16:01:33', '2021-09-02 19:01:33', '', 'Título do Produto', '', 'publish', 'closed', 'closed', '', 'titulo-do-produto-2', '', '', '2021-09-02 16:01:33', '2021-09-02 19:01:33', '', 0, 'https://localhost/UniformesMatrix/?post_type=produtos&#038;p=257', 0, 'produtos', '', 0),
(258, 1, '2021-09-02 16:02:54', '2021-09-02 19:02:54', '', 'Título do Produto', '', 'publish', 'closed', 'closed', '', 'titulo-do-produto-3', '', '', '2021-09-02 16:02:54', '2021-09-02 19:02:54', '', 0, 'https://localhost/UniformesMatrix/?post_type=produtos&#038;p=258', 0, 'produtos', '', 0),
(259, 1, '2021-09-02 16:03:39', '2021-09-02 19:03:39', '', 'Título do Produto', '', 'publish', 'closed', 'closed', '', 'titulo-do-produto-4', '', '', '2021-09-02 16:03:39', '2021-09-02 19:03:39', '', 0, 'https://localhost/UniformesMatrix/?post_type=produtos&#038;p=259', 0, 'produtos', '', 0),
(260, 1, '2021-09-02 16:04:10', '2021-09-02 19:04:10', '', 'Título do Produto', '', 'publish', 'closed', 'closed', '', 'titulo-do-produto-5', '', '', '2021-09-02 16:04:10', '2021-09-02 19:04:10', '', 0, 'https://localhost/UniformesMatrix/?post_type=produtos&#038;p=260', 0, 'produtos', '', 0),
(261, 1, '2021-09-02 16:04:32', '2021-09-02 19:04:32', '', 'Título do Produto', '', 'publish', 'closed', 'closed', '', 'titulo-do-produto-6', '', '', '2021-09-02 16:04:32', '2021-09-02 19:04:32', '', 0, 'https://localhost/UniformesMatrix/?post_type=produtos&#038;p=261', 0, 'produtos', '', 0),
(262, 1, '2021-09-02 16:04:57', '2021-09-02 19:04:57', '', 'Título do Produto', '', 'publish', 'closed', 'closed', '', 'titulo-do-produto-7', '', '', '2021-09-02 16:04:57', '2021-09-02 19:04:57', '', 0, 'https://localhost/UniformesMatrix/?post_type=produtos&#038;p=262', 0, 'produtos', '', 0),
(263, 1, '2021-09-02 16:05:20', '2021-09-02 19:05:20', '', 'Título do Produto', '', 'publish', 'closed', 'closed', '', 'titulo-do-produto-8', '', '', '2021-09-02 16:05:20', '2021-09-02 19:05:20', '', 0, 'https://localhost/UniformesMatrix/?post_type=produtos&#038;p=263', 0, 'produtos', '', 0),
(264, 1, '2021-09-02 16:07:52', '2021-09-02 19:07:52', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:8:\"taxonomy\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:9:\"categoria\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";a:15:{i:0;s:9:\"permalink\";i:1;s:11:\"the_content\";i:2;s:7:\"excerpt\";i:3;s:13:\"custom_fields\";i:4;s:10:\"discussion\";i:5;s:8:\"comments\";i:6;s:9:\"revisions\";i:7;s:4:\"slug\";i:8;s:6:\"author\";i:9;s:6:\"format\";i:10;s:15:\"page_attributes\";i:11;s:14:\"featured_image\";i:12;s:10:\"categories\";i:13;s:4:\"tags\";i:14;s:15:\"send-trackbacks\";}s:11:\"description\";s:0:\"\";}', 'Box Seo', 'box-seo', 'publish', 'closed', 'closed', '', 'group_613120c23e9e5', '', '', '2021-09-02 16:07:53', '2021-09-02 19:07:53', '', 0, 'https://localhost/UniformesMatrix/?post_type=acf-field-group&#038;p=264', 0, 'acf-field-group', '', 0),
(265, 1, '2021-09-02 16:07:52', '2021-09-02 19:07:52', 'a:7:{s:4:\"type\";s:3:\"tab\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"placement\";s:4:\"left\";s:8:\"endpoint\";i:0;}', 'Área de Conteúdo 1', 'area_de_conteudo_1', 'publish', 'closed', 'closed', '', 'field_613120e3ae66d', '', '', '2021-09-02 16:07:52', '2021-09-02 19:07:52', '', 264, 'https://localhost/UniformesMatrix/?post_type=acf-field&p=265', 0, 'acf-field', '', 0),
(266, 1, '2021-09-02 16:07:53', '2021-09-02 19:07:53', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";s:12:\"preview_size\";s:9:\"thumbnail\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Imagem', 'imagem', 'publish', 'closed', 'closed', '', 'field_613120f7ae66e', '', '', '2021-09-02 16:07:53', '2021-09-02 19:07:53', '', 264, 'https://localhost/UniformesMatrix/?post_type=acf-field&p=266', 1, 'acf-field', '', 0),
(267, 1, '2021-09-02 16:22:15', '2021-09-02 19:22:15', '', 'Título do Produto', '', 'publish', 'closed', 'closed', '', 'titulo-do-produto-9', '', '', '2021-09-02 16:22:58', '2021-09-02 19:22:58', '', 0, 'https://localhost/UniformesMatrix/?post_type=produtos&#038;p=267', 0, 'produtos', '', 0),
(268, 1, '2021-09-02 16:22:45', '2021-09-02 19:22:45', '', 'Título do Produto', '', 'publish', 'closed', 'closed', '', 'titulo-do-produto-10', '', '', '2021-09-02 16:22:45', '2021-09-02 19:22:45', '', 0, 'https://localhost/UniformesMatrix/?post_type=produtos&#038;p=268', 0, 'produtos', '', 0),
(269, 1, '2021-09-02 16:30:13', '2021-09-02 19:30:13', '', 'Título do Produto', '', 'publish', 'closed', 'closed', '', 'titulo-do-produto-11', '', '', '2021-09-02 16:30:13', '2021-09-02 19:30:13', '', 0, 'https://localhost/UniformesMatrix/?post_type=produtos&#038;p=269', 0, 'produtos', '', 0),
(270, 1, '2021-09-02 16:30:40', '2021-09-02 19:30:40', '', 'Título do Produto', '', 'publish', 'closed', 'closed', '', 'titulo-do-produto-12', '', '', '2021-09-02 16:30:40', '2021-09-02 19:30:40', '', 0, 'https://localhost/UniformesMatrix/?post_type=produtos&#038;p=270', 0, 'produtos', '', 0),
(271, 1, '2021-09-02 16:31:03', '2021-09-02 19:31:03', '', 'Título do Produto', '', 'publish', 'closed', 'closed', '', 'titulo-do-produto-13', '', '', '2021-09-02 16:31:03', '2021-09-02 19:31:03', '', 0, 'https://localhost/UniformesMatrix/?post_type=produtos&#038;p=271', 0, 'produtos', '', 0),
(272, 1, '2021-09-02 16:31:27', '2021-09-02 19:31:27', '', 'Título do Produto', '', 'publish', 'closed', 'closed', '', 'titulo-do-produto-14', '', '', '2021-09-02 16:31:27', '2021-09-02 19:31:27', '', 0, 'https://localhost/UniformesMatrix/?post_type=produtos&#038;p=272', 0, 'produtos', '', 0),
(273, 1, '2021-09-02 16:31:57', '2021-09-02 19:31:57', '', 'Título do Produto', '', 'publish', 'closed', 'closed', '', 'titulo-do-produto-15', '', '', '2021-09-02 16:31:57', '2021-09-02 19:31:57', '', 0, 'https://localhost/UniformesMatrix/?post_type=produtos&#038;p=273', 0, 'produtos', '', 0),
(274, 1, '2021-09-02 16:32:37', '2021-09-02 19:32:37', '', 'Título do Produto', '', 'publish', 'closed', 'closed', '', 'titulo-do-produto-16', '', '', '2021-09-02 16:32:37', '2021-09-02 19:32:37', '', 0, 'https://localhost/UniformesMatrix/?post_type=produtos&#038;p=274', 0, 'produtos', '', 0),
(275, 1, '2021-09-02 16:33:12', '2021-09-02 19:33:12', '', 'Título do Produto', '', 'publish', 'closed', 'closed', '', 'titulo-do-produto-17', '', '', '2021-09-02 16:33:12', '2021-09-02 19:33:12', '', 0, 'https://localhost/UniformesMatrix/?post_type=produtos&#038;p=275', 0, 'produtos', '', 0),
(276, 1, '2021-09-02 16:33:33', '2021-09-02 19:33:33', '', 'Título do Produto', '', 'publish', 'closed', 'closed', '', 'titulo-do-produto-18', '', '', '2021-09-02 16:33:33', '2021-09-02 19:33:33', '', 0, 'https://localhost/UniformesMatrix/?post_type=produtos&#038;p=276', 0, 'produtos', '', 0),
(277, 1, '2021-09-02 16:33:58', '2021-09-02 19:33:58', '', 'Título do Produto', '', 'publish', 'closed', 'closed', '', 'titulo-do-produto-19', '', '', '2021-09-02 16:33:58', '2021-09-02 19:33:58', '', 0, 'https://localhost/UniformesMatrix/?post_type=produtos&#038;p=277', 0, 'produtos', '', 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `wp_termmeta`
--

INSERT INTO `wp_termmeta` (`meta_id`, `term_id`, `meta_key`, `meta_value`) VALUES
(1, 5, 'imagem', '87'),
(2, 5, '_imagem', 'field_613120f7ae66e'),
(3, 4, 'imagem', '91'),
(4, 4, '_imagem', 'field_613120f7ae66e'),
(5, 3, 'imagem', '96'),
(6, 3, '_imagem', 'field_613120f7ae66e'),
(7, 6, 'imagem', '115'),
(8, 6, '_imagem', 'field_613120f7ae66e');

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Sem categoria', 'sem-categoria', 0),
(2, 'Menu Principal', 'menu-principal', 0),
(3, 'Camisetas e Jaquetas', 'camisetas-e-jaquetas', 0),
(4, 'Calças e Shorts', 'calcas-e-shorts', 0),
(5, 'Bonés', 'bones', 0),
(6, 'Outros Produtos', 'outros-produtos', 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_order` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(154, 2, 0),
(155, 2, 0),
(156, 2, 0),
(157, 2, 0),
(198, 2, 0),
(210, 5, 0),
(248, 2, 0),
(249, 2, 0),
(250, 2, 0),
(251, 2, 0),
(257, 4, 0),
(258, 4, 0),
(259, 4, 0),
(260, 4, 0),
(261, 4, 0),
(262, 4, 0),
(263, 4, 0),
(267, 6, 0),
(268, 6, 0),
(269, 3, 0),
(270, 3, 0),
(271, 3, 0),
(272, 3, 0),
(273, 3, 0),
(274, 3, 0),
(275, 3, 0),
(276, 3, 0),
(277, 3, 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_term_taxonomy`
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
-- Extraindo dados da tabela `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 0),
(2, 2, 'nav_menu', '', 0, 9),
(3, 3, 'categoria', 'Como principal fundamento de nossa empresa, fazemos uniformes de ótima qualidade, desde camisetas polos até coletes com bordados ou estampas da marca de sua empresa ou outros detalhes.\r\n\r\n<strong>Serigrafia e bordado Computadorizado.</strong>\r\n\r\n<strong>Silk Screen - Serigrafia em PVC - Sublimação</strong>\r\n\r\n<strong>Bordado: Computadorizado - Mantendo padrão da sua empresa.</strong>', 0, 9),
(4, 4, 'categoria', 'Também, em base do foco de criarmos uniformes de qualidade para a sua empresa, fazemos a sua preferência calças e shorts do jeito que você deseja.\r\n\r\n<strong>Serigrafia e bordado Computadorizado.</strong>\r\n\r\n<strong>Silk Screen - Serigrafia em PVC - Sublimação</strong>\r\n\r\n<strong>Bordado: Computadorizado - Mantendo padrão da sua empresa.</strong>', 0, 7),
(5, 5, 'categoria', 'Como novidade, agora também fazemos bonés!\r\nBonés de ótimas qualidades para fornecer uma ótima segurança e identificação de sua empresa!\r\n\r\n<strong>Serigrafia e bordado Computadorizado.</strong>\r\n\r\n<strong>Silk Screen - Serigrafia em PVC - Sublimação</strong>\r\n\r\n<strong>Bordado: Computadorizado - Mantendo padrão da sua empresa.</strong>', 0, 1),
(6, 6, 'categoria', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed interdum risus et sapien posuere venenatis. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Morbi dapibus elit quis orci tempus, ut elementum nisl volutpat. Nulla molestie felis sit amet placerat congue.\r\n\r\n<strong>Serigrafia e bordado Computadorizado.</strong>\r\n\r\n<strong>Silk Screen - Serigrafia em PVC - Sublimação</strong>\r\n\r\n<strong>Bordado: Computadorizado - Mantendo padrão da sua empresa.</strong>', 0, 2);

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'mixsolucoes'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'syntax_highlighting', 'true'),
(7, 1, 'comment_shortcuts', 'false'),
(8, 1, 'admin_color', 'fresh'),
(9, 1, 'use_ssl', '0'),
(10, 1, 'show_admin_bar_front', 'false'),
(11, 1, 'locale', ''),
(12, 1, 'wp_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(13, 1, 'wp_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', ''),
(15, 1, 'show_welcome_panel', '1'),
(16, 1, 'session_tokens', 'a:4:{s:64:\"17803837cfbe6faeffe9fbcd253be58cf5ded64e92211116166884e27a7e8ae8\";a:4:{s:10:\"expiration\";i:1631730854;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.159 Safari/537.36\";s:5:\"login\";i:1630521254;}s:64:\"81c2c8d33de6e141d2f3272b1af97583c46a7f7d674f629d0d1aece7f495e99e\";a:4:{s:10:\"expiration\";i:1630697095;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.159 Safari/537.36\";s:5:\"login\";i:1630524295;}s:64:\"f5da09164b2c49223ea8052338c207c33fcf1b363a37d4161d07e6a245087978\";a:4:{s:10:\"expiration\";i:1630701359;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.159 Safari/537.36\";s:5:\"login\";i:1630528559;}s:64:\"0635cdaf74b736eb422a19c3675c9bc44604e463ad71c035447d76f58df525ab\";a:4:{s:10:\"expiration\";i:1631738171;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.159 Safari/537.36\";s:5:\"login\";i:1630528571;}}'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '4'),
(18, 1, 'wp_yoast_notifications', 'a:2:{i:0;a:2:{s:7:\"message\";s:409:\"<p>Vemos que você habilitou as atualizações automáticas para o WordPress. Recomendamos que você faça isso para Yoast SEO também. Desta forma, podemos garantir que o WordPress e Yoast SEO continuarão a funcionar sem problemas juntos. <a href=\"https://localhost/UniformesMatrix/wp-admin/plugins.php\"> Vá para a visão geral dos plugins para ativar as atualizações automáticas para Yoast SEO.</a></p>\";s:7:\"options\";a:10:{s:4:\"type\";s:7:\"warning\";s:2:\"id\";s:17:\"wpseo-auto-update\";s:4:\"user\";O:7:\"WP_User\":8:{s:4:\"data\";O:8:\"stdClass\":10:{s:2:\"ID\";s:1:\"1\";s:10:\"user_login\";s:11:\"mixsolucoes\";s:9:\"user_pass\";s:34:\"$P$BF3Evta0wHfHtUjSXZNV3.UvSMIPgf0\";s:13:\"user_nicename\";s:11:\"mixsolucoes\";s:10:\"user_email\";s:34:\"luiz.fhelipe@mixsolucoesweb.com.br\";s:8:\"user_url\";s:32:\"http://localhost/UniformesMatrix\";s:15:\"user_registered\";s:19:\"2021-09-01 18:33:48\";s:19:\"user_activation_key\";s:0:\"\";s:11:\"user_status\";s:1:\"0\";s:12:\"display_name\";s:11:\"mixsolucoes\";}s:2:\"ID\";i:1;s:4:\"caps\";a:1:{s:13:\"administrator\";b:1;}s:7:\"cap_key\";s:15:\"wp_capabilities\";s:5:\"roles\";a:1:{i:0;s:13:\"administrator\";}s:7:\"allcaps\";a:63:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;s:20:\"wpseo_manage_options\";b:1;s:13:\"administrator\";b:1;}s:6:\"filter\";N;s:16:\"\0WP_User\0site_id\";i:1;}s:5:\"nonce\";N;s:8:\"priority\";d:0.8;s:9:\"data_json\";a:0:{}s:13:\"dismissal_key\";N;s:12:\"capabilities\";s:20:\"wpseo_manage_options\";s:16:\"capability_check\";s:3:\"all\";s:14:\"yoast_branding\";b:0;}}i:1;a:2:{s:7:\"message\";s:333:\"<p>Devido a uma mudança na estrutura do seu link permanente, alguns dos seus dados de SEO precisam ser reprocessados.</p><p>Estimamos que isso levará menos de um minuto.</p><a class=\"button\" href=\"https://localhost/UniformesMatrix/wp-admin/admin.php?page=wpseo_tools&start-indexation=true\">Comece a otimização de dados de SEO</a>\";s:7:\"options\";a:10:{s:4:\"type\";s:7:\"warning\";s:2:\"id\";s:13:\"wpseo-reindex\";s:4:\"user\";O:7:\"WP_User\":8:{s:4:\"data\";O:8:\"stdClass\":10:{s:2:\"ID\";s:1:\"1\";s:10:\"user_login\";s:11:\"mixsolucoes\";s:9:\"user_pass\";s:34:\"$P$BF3Evta0wHfHtUjSXZNV3.UvSMIPgf0\";s:13:\"user_nicename\";s:11:\"mixsolucoes\";s:10:\"user_email\";s:34:\"luiz.fhelipe@mixsolucoesweb.com.br\";s:8:\"user_url\";s:32:\"http://localhost/UniformesMatrix\";s:15:\"user_registered\";s:19:\"2021-09-01 18:33:48\";s:19:\"user_activation_key\";s:0:\"\";s:11:\"user_status\";s:1:\"0\";s:12:\"display_name\";s:11:\"mixsolucoes\";}s:2:\"ID\";i:1;s:4:\"caps\";a:1:{s:13:\"administrator\";b:1;}s:7:\"cap_key\";s:15:\"wp_capabilities\";s:5:\"roles\";a:1:{i:0;s:13:\"administrator\";}s:7:\"allcaps\";a:64:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;s:20:\"wpseo_manage_options\";b:1;s:10:\"copy_posts\";b:1;s:13:\"administrator\";b:1;}s:6:\"filter\";N;s:16:\"\0WP_User\0site_id\";i:1;}s:5:\"nonce\";N;s:8:\"priority\";d:0.8;s:9:\"data_json\";a:0:{}s:13:\"dismissal_key\";N;s:12:\"capabilities\";s:20:\"wpseo_manage_options\";s:16:\"capability_check\";s:3:\"all\";s:14:\"yoast_branding\";b:0;}}}'),
(19, 1, '_yoast_wpseo_profile_updated', '1630531182'),
(20, 1, 'wpcf7_hide_welcome_panel_on', 'a:1:{i:0;s:3:\"5.4\";}'),
(21, 1, 'meta-box-order_page', 'a:4:{s:15:\"acf_after_title\";s:0:\"\";s:4:\"side\";s:23:\"submitdiv,pageparentdiv\";s:6:\"normal\";s:105:\"acf-group_612fdca6c5fe4,acf-group_612fd6849af9c,wpseo_meta,commentstatusdiv,commentsdiv,slugdiv,authordiv\";s:8:\"advanced\";s:0:\"\";}'),
(22, 1, 'screen_layout_page', '2'),
(23, 1, 'wp_user-settings', 'libraryContent=browse'),
(24, 1, 'wp_user-settings-time', '1630527052'),
(25, 1, 'meta-box-order_clientes', 'a:4:{s:15:\"acf_after_title\";s:0:\"\";s:4:\"side\";s:9:\"submitdiv\";s:6:\"normal\";s:55:\"acf-group_612fdca6c5fe4,acf-group_612fd6849af9c,slugdiv\";s:8:\"advanced\";s:10:\"wpseo_meta\";}'),
(26, 1, 'screen_layout_clientes', '2'),
(27, 1, 'closedpostboxes_toplevel_page_configuracoes-tema', 'a:0:{}'),
(28, 1, 'metaboxhidden_toplevel_page_configuracoes-tema', 'a:0:{}'),
(29, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}'),
(30, 1, 'metaboxhidden_nav-menus', 'a:5:{i:0;s:21:\"add-post-type-banners\";i:1;s:22:\"add-post-type-produtos\";i:2;s:22:\"add-post-type-clientes\";i:3;s:26:\"add-post-type-fornecedores\";i:4;s:12:\"add-post_tag\";}'),
(31, 1, 'wpseo_title', ''),
(32, 1, 'wpseo_metadesc', ''),
(33, 1, 'wpseo_noindex_author', ''),
(34, 1, 'wpseo_content_analysis_disable', ''),
(35, 1, 'wpseo_keyword_analysis_disable', ''),
(36, 1, 'facebook', ''),
(37, 1, 'instagram', ''),
(38, 1, 'linkedin', ''),
(39, 1, 'myspace', ''),
(40, 1, 'pinterest', ''),
(41, 1, 'soundcloud', ''),
(42, 1, 'tumblr', ''),
(43, 1, 'twitter', ''),
(44, 1, 'youtube', ''),
(45, 1, 'wikipedia', ''),
(46, 1, 'nav_menu_recently_edited', '2'),
(47, 1, 'meta-box-order_banners', 'a:4:{s:15:\"acf_after_title\";s:0:\"\";s:4:\"side\";s:22:\"submitdiv,postimagediv\";s:6:\"normal\";s:55:\"acf-group_612fdca6c5fe4,acf-group_612fd6849af9c,slugdiv\";s:8:\"advanced\";s:10:\"wpseo_meta\";}'),
(48, 1, 'screen_layout_banners', '2'),
(49, 1, 'meta-box-order_fornecedores', 'a:4:{s:15:\"acf_after_title\";s:0:\"\";s:4:\"side\";s:9:\"submitdiv\";s:6:\"normal\";s:114:\"acf-group_612fdca6c5fe4,acf-group_612fd6849af9c,acf-group_612ff6b601d83,acf-group_612ff748b2a65,wpseo_meta,slugdiv\";s:8:\"advanced\";s:0:\"\";}'),
(50, 1, 'screen_layout_fornecedores', '2'),
(51, 1, 'closedpostboxes_nav-menus', 'a:0:{}'),
(52, 1, 'meta-box-order_produtos', 'a:4:{s:15:\"acf_after_title\";s:0:\"\";s:4:\"side\";s:22:\"submitdiv,categoriadiv\";s:6:\"normal\";s:234:\"acf-group_613007274165a,acf-group_6130feaa19c70,acf-group_61311e5ba9f40,wpseo_meta,acf-group_612ff6b601d83,acf-group_612fdca6c5fe4,acf-group_613100c671a96,acf-group_612ff748b2a65,acf-group_612fd6849af9c,acf-group_6130f83bdb750,slugdiv\";s:8:\"advanced\";s:0:\"\";}'),
(53, 1, 'screen_layout_produtos', '2');

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_users`
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
-- Extraindo dados da tabela `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'mixsolucoes', '$P$BF3Evta0wHfHtUjSXZNV3.UvSMIPgf0', 'mixsolucoes', 'luiz.fhelipe@mixsolucoesweb.com.br', 'http://localhost/UniformesMatrix', '2021-09-01 18:33:48', '', 0, 'mixsolucoes');

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_yoast_indexable`
--

CREATE TABLE `wp_yoast_indexable` (
  `id` int(11) UNSIGNED NOT NULL,
  `permalink` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `permalink_hash` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `object_id` bigint(20) DEFAULT NULL,
  `object_type` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `object_sub_type` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `author_id` bigint(20) DEFAULT NULL,
  `post_parent` bigint(20) DEFAULT NULL,
  `title` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `breadcrumb_title` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_public` tinyint(1) DEFAULT NULL,
  `is_protected` tinyint(1) DEFAULT 0,
  `has_public_posts` tinyint(1) DEFAULT NULL,
  `number_of_pages` int(11) UNSIGNED DEFAULT NULL,
  `canonical` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `primary_focus_keyword` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `primary_focus_keyword_score` int(3) DEFAULT NULL,
  `readability_score` int(3) DEFAULT NULL,
  `is_cornerstone` tinyint(1) DEFAULT 0,
  `is_robots_noindex` tinyint(1) DEFAULT 0,
  `is_robots_nofollow` tinyint(1) DEFAULT 0,
  `is_robots_noarchive` tinyint(1) DEFAULT 0,
  `is_robots_noimageindex` tinyint(1) DEFAULT 0,
  `is_robots_nosnippet` tinyint(1) DEFAULT 0,
  `twitter_title` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twitter_image` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twitter_description` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twitter_image_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twitter_image_source` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `open_graph_title` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `open_graph_description` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `open_graph_image` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `open_graph_image_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `open_graph_image_source` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `open_graph_image_meta` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link_count` int(11) DEFAULT NULL,
  `incoming_link_count` int(11) DEFAULT NULL,
  `prominent_words_version` int(11) UNSIGNED DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `blog_id` bigint(20) NOT NULL DEFAULT 1,
  `language` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `region` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `schema_page_type` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `schema_article_type` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `has_ancestors` tinyint(1) DEFAULT 0,
  `estimated_reading_time_minutes` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `wp_yoast_indexable`
--

INSERT INTO `wp_yoast_indexable` (`id`, `permalink`, `permalink_hash`, `object_id`, `object_type`, `object_sub_type`, `author_id`, `post_parent`, `title`, `description`, `breadcrumb_title`, `post_status`, `is_public`, `is_protected`, `has_public_posts`, `number_of_pages`, `canonical`, `primary_focus_keyword`, `primary_focus_keyword_score`, `readability_score`, `is_cornerstone`, `is_robots_noindex`, `is_robots_nofollow`, `is_robots_noarchive`, `is_robots_noimageindex`, `is_robots_nosnippet`, `twitter_title`, `twitter_image`, `twitter_description`, `twitter_image_id`, `twitter_image_source`, `open_graph_title`, `open_graph_description`, `open_graph_image`, `open_graph_image_id`, `open_graph_image_source`, `open_graph_image_meta`, `link_count`, `incoming_link_count`, `prominent_words_version`, `created_at`, `updated_at`, `blog_id`, `language`, `region`, `schema_page_type`, `schema_article_type`, `has_ancestors`, `estimated_reading_time_minutes`) VALUES
(1, 'https://localhost/UniformesMatrix/author/mixsolucoes/', '53:02d9958256a7d2e19d5e4a6e948b5341', 1, 'user', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 'https://secure.gravatar.com/avatar/044d20a90a5d3863d5a7367afb90321f?s=500&d=mm&r=g', NULL, NULL, 'gravatar-image', NULL, NULL, 'https://secure.gravatar.com/avatar/044d20a90a5d3863d5a7367afb90321f?s=500&d=mm&r=g', NULL, 'gravatar-image', NULL, NULL, NULL, NULL, '2021-09-01 19:27:12', '2021-09-02 22:40:32', 1, NULL, NULL, NULL, NULL, 0, NULL),
(2, NULL, NULL, 3, 'post', 'page', 1, 0, NULL, NULL, 'Política de privacidade', 'trash', 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-09-01 19:27:12', '2021-09-02 19:27:32', 1, NULL, NULL, NULL, NULL, 0, NULL),
(3, NULL, NULL, 2, 'post', 'page', 1, 0, NULL, NULL, 'Página de exemplo', 'trash', 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, '2021-09-01 19:27:12', '2021-09-02 19:27:32', 1, NULL, NULL, NULL, NULL, 0, NULL),
(4, NULL, NULL, 4, 'post', 'post', 1, 0, NULL, NULL, 'Rascunho automático', 'auto-draft', 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-09-01 19:27:12', '2021-09-02 19:27:32', 1, NULL, NULL, NULL, NULL, 0, NULL),
(5, NULL, NULL, 1, 'post', 'post', 1, 0, NULL, NULL, 'Olá, mundo!', 'trash', 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2021-09-01 19:27:12', '2021-09-02 19:27:32', 1, NULL, NULL, NULL, NULL, 0, NULL),
(6, NULL, NULL, 1, 'term', 'category', NULL, NULL, NULL, NULL, 'Sem categoria', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2021-09-01 19:27:12', '2021-09-02 19:27:32', 1, NULL, NULL, NULL, NULL, 0, NULL),
(7, NULL, NULL, NULL, 'system-page', '404', NULL, NULL, 'Página não encontrada %%sep%% %%sitename%%', NULL, 'Erro 404: Página não encontrada', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-09-01 19:27:12', '2021-09-01 22:27:12', 1, NULL, NULL, NULL, NULL, 0, NULL),
(8, NULL, NULL, NULL, 'system-page', 'search-result', NULL, NULL, 'Você pesquisou por %%searchphrase%% %%page%% %%sep%% %%sitename%%', NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-09-01 19:27:12', '2021-09-01 22:27:12', 1, NULL, NULL, NULL, NULL, 0, NULL),
(9, NULL, NULL, NULL, 'date-archive', NULL, NULL, NULL, '%%date%% %%page%% %%sep%% %%sitename%%', '', NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-09-01 19:27:12', '2021-09-01 22:27:12', 1, NULL, NULL, NULL, NULL, 0, NULL),
(10, 'https://localhost/UniformesMatrix/', '34:443387969d2005d0ddc9ddefd48a9cef', NULL, 'home-page', NULL, NULL, NULL, '%%sitename%% %%page%% %%sep%% %%sitedesc%%', 'Só mais um site WordPress', 'VOCÊ ESTÁ EM: HOME', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, '%%sitename%%', '', '', '0', NULL, NULL, NULL, NULL, NULL, '2021-09-01 19:27:12', '2021-09-02 22:30:08', 1, NULL, NULL, NULL, NULL, 0, NULL),
(12, 'https://localhost/UniformesMatrix/', '34:443387969d2005d0ddc9ddefd48a9cef', 9, 'post', 'page', 1, 0, NULL, NULL, 'Home', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2021-09-01 19:36:32', '2021-09-02 22:37:50', 1, NULL, NULL, NULL, NULL, 0, NULL),
(13, NULL, NULL, 11, 'post', 'acf-field-group', 1, 0, NULL, NULL, 'Home', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2021-09-01 19:37:54', '2021-09-02 19:27:32', 1, NULL, NULL, NULL, NULL, 0, NULL),
(69, NULL, NULL, 68, 'post', 'attachment', 1, 0, NULL, NULL, 'bannerdesktop-150&#215;150', 'inherit', 0, 0, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 'http://localhost/UniformesMatrix/wp-content/uploads/2021/09/bannerdesktop-150x150-1.png', NULL, '68', 'attachment-image', NULL, NULL, NULL, '68', 'attachment-image', NULL, NULL, NULL, NULL, '2021-09-01 19:47:38', '2021-09-02 19:27:32', 1, NULL, NULL, NULL, NULL, 0, NULL),
(70, NULL, NULL, 69, 'post', 'attachment', 1, 0, NULL, NULL, 'bannerdesktop-300&#215;85', 'inherit', 0, 0, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 'http://localhost/UniformesMatrix/wp-content/uploads/2021/09/bannerdesktop-300x85-1.png', NULL, '69', 'attachment-image', NULL, NULL, NULL, '69', 'attachment-image', NULL, NULL, NULL, NULL, '2021-09-01 19:47:39', '2021-09-02 19:27:32', 1, NULL, NULL, NULL, NULL, 0, NULL),
(71, NULL, NULL, 70, 'post', 'attachment', 1, 0, NULL, NULL, 'bannerdesktop-300&#215;300', 'inherit', 0, 0, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 'http://localhost/UniformesMatrix/wp-content/uploads/2021/09/bannerdesktop-300x300-1.png', NULL, '70', 'attachment-image', NULL, NULL, NULL, '70', 'attachment-image', NULL, NULL, NULL, NULL, '2021-09-01 19:47:40', '2021-09-02 19:27:32', 1, NULL, NULL, NULL, NULL, 0, NULL),
(72, NULL, NULL, 71, 'post', 'attachment', 1, 0, NULL, NULL, 'bannerdesktop-700&#215;545', 'inherit', 0, 0, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 'http://localhost/UniformesMatrix/wp-content/uploads/2021/09/bannerdesktop-700x545-1.png', NULL, '71', 'attachment-image', NULL, NULL, NULL, '71', 'attachment-image', NULL, NULL, NULL, NULL, '2021-09-01 19:47:40', '2021-09-02 19:27:32', 1, NULL, NULL, NULL, NULL, 0, NULL),
(73, NULL, NULL, 72, 'post', 'attachment', 1, 0, NULL, NULL, 'bannerdesktop-768&#215;218', 'inherit', 0, 0, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 'http://localhost/UniformesMatrix/wp-content/uploads/2021/09/bannerdesktop-768x218-1.png', NULL, '72', 'attachment-image', NULL, NULL, NULL, '72', 'attachment-image', NULL, NULL, NULL, NULL, '2021-09-01 19:47:41', '2021-09-02 19:27:32', 1, NULL, NULL, NULL, NULL, 0, NULL),
(74, NULL, NULL, 73, 'post', 'attachment', 1, 0, NULL, NULL, 'bannerdesktop-1024&#215;291', 'inherit', 0, 0, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 'http://localhost/UniformesMatrix/wp-content/uploads/2021/09/bannerdesktop-1024x291-1.png', NULL, '73', 'attachment-image', NULL, NULL, NULL, '73', 'attachment-image', NULL, NULL, NULL, NULL, '2021-09-01 19:47:42', '2021-09-02 19:27:32', 1, NULL, NULL, NULL, NULL, 0, NULL),
(75, NULL, NULL, 74, 'post', 'attachment', 1, 0, NULL, NULL, 'bannerdesktop-1536&#215;437', 'inherit', 0, 0, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 'http://localhost/UniformesMatrix/wp-content/uploads/2021/09/bannerdesktop-1536x437-1.png', NULL, '74', 'attachment-image', NULL, NULL, NULL, '74', 'attachment-image', NULL, NULL, NULL, NULL, '2021-09-01 19:47:43', '2021-09-02 19:27:32', 1, NULL, NULL, NULL, NULL, 0, NULL),
(76, NULL, NULL, 75, 'post', 'attachment', 1, 0, NULL, NULL, 'bannermobile', 'inherit', 0, 0, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 'http://localhost/UniformesMatrix/wp-content/uploads/2021/09/bannermobile.png', NULL, '75', 'attachment-image', NULL, NULL, NULL, '75', 'attachment-image', NULL, NULL, NULL, NULL, '2021-09-01 19:47:44', '2021-09-02 19:27:32', 1, NULL, NULL, NULL, NULL, 0, NULL),
(77, NULL, NULL, 76, 'post', 'attachment', 1, 0, NULL, NULL, 'bannermobile-150&#215;150', 'inherit', 0, 0, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 'http://localhost/UniformesMatrix/wp-content/uploads/2021/09/bannermobile-150x150-1.png', NULL, '76', 'attachment-image', NULL, NULL, NULL, '76', 'attachment-image', NULL, NULL, NULL, NULL, '2021-09-01 19:47:45', '2021-09-02 19:27:32', 1, NULL, NULL, NULL, NULL, 0, NULL),
(78, NULL, NULL, 77, 'post', 'attachment', 1, 0, NULL, NULL, 'bannermobile-300&#215;250', 'inherit', 0, 0, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 'http://localhost/UniformesMatrix/wp-content/uploads/2021/09/bannermobile-300x250-1.png', NULL, '77', 'attachment-image', NULL, NULL, NULL, '77', 'attachment-image', NULL, NULL, NULL, NULL, '2021-09-01 19:47:45', '2021-09-02 19:27:32', 1, NULL, NULL, NULL, NULL, 0, NULL),
(79, NULL, NULL, 78, 'post', 'attachment', 1, 0, NULL, NULL, 'bannermobile-300&#215;300', 'inherit', 0, 0, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 'http://localhost/UniformesMatrix/wp-content/uploads/2021/09/bannermobile-300x300-1.png', NULL, '78', 'attachment-image', NULL, NULL, NULL, '78', 'attachment-image', NULL, NULL, NULL, NULL, '2021-09-01 19:47:46', '2021-09-02 19:27:32', 1, NULL, NULL, NULL, NULL, 0, NULL),
(80, NULL, NULL, 79, 'post', 'attachment', 1, 0, NULL, NULL, 'bg-rodape', 'inherit', 0, 0, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 'http://localhost/UniformesMatrix/wp-content/uploads/2021/09/bg-rodape.jpg', NULL, '79', 'attachment-image', NULL, NULL, NULL, '79', 'attachment-image', NULL, NULL, NULL, NULL, '2021-09-01 19:47:47', '2021-09-02 19:27:32', 1, NULL, NULL, NULL, NULL, 0, NULL),
(81, NULL, NULL, 80, 'post', 'attachment', 1, 0, NULL, NULL, 'bg-rodape-150&#215;150', 'inherit', 0, 0, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 'http://localhost/UniformesMatrix/wp-content/uploads/2021/09/bg-rodape-150x150-1.jpg', NULL, '80', 'attachment-image', NULL, NULL, NULL, '80', 'attachment-image', NULL, NULL, NULL, NULL, '2021-09-01 19:47:48', '2021-09-02 19:27:32', 1, NULL, NULL, NULL, NULL, 0, NULL),
(82, NULL, NULL, 81, 'post', 'attachment', 1, 0, NULL, NULL, 'bg-rodape-300&#215;32', 'inherit', 0, 0, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 'http://localhost/UniformesMatrix/wp-content/uploads/2021/09/bg-rodape-300x32-1.jpg', NULL, '81', 'attachment-image', NULL, NULL, NULL, '81', 'attachment-image', NULL, NULL, NULL, NULL, '2021-09-01 19:47:48', '2021-09-02 19:27:32', 1, NULL, NULL, NULL, NULL, 0, NULL),
(83, NULL, NULL, 82, 'post', 'attachment', 1, 0, NULL, NULL, 'bg-rodape-300&#215;206', 'inherit', 0, 0, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 'http://localhost/UniformesMatrix/wp-content/uploads/2021/09/bg-rodape-300x206-1.jpg', NULL, '82', 'attachment-image', NULL, NULL, NULL, '82', 'attachment-image', NULL, NULL, NULL, NULL, '2021-09-01 19:47:49', '2021-09-02 19:27:32', 1, NULL, NULL, NULL, NULL, 0, NULL),
(84, NULL, NULL, 83, 'post', 'attachment', 1, 0, NULL, NULL, 'bg-rodape-700&#215;206', 'inherit', 0, 0, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 'http://localhost/UniformesMatrix/wp-content/uploads/2021/09/bg-rodape-700x206-1.jpg', NULL, '83', 'attachment-image', NULL, NULL, NULL, '83', 'attachment-image', NULL, NULL, NULL, NULL, '2021-09-01 19:47:50', '2021-09-02 19:27:32', 1, NULL, NULL, NULL, NULL, 0, NULL),
(85, NULL, NULL, 84, 'post', 'attachment', 1, 0, NULL, NULL, 'bg-rodape-768&#215;82', 'inherit', 0, 0, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 'http://localhost/UniformesMatrix/wp-content/uploads/2021/09/bg-rodape-768x82-1.jpg', NULL, '84', 'attachment-image', NULL, NULL, NULL, '84', 'attachment-image', NULL, NULL, NULL, NULL, '2021-09-01 19:47:51', '2021-09-02 19:27:32', 1, NULL, NULL, NULL, NULL, 0, NULL),
(86, NULL, NULL, 85, 'post', 'attachment', 1, 0, NULL, NULL, 'bg-rodape-1024&#215;110', 'inherit', 0, 0, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 'http://localhost/UniformesMatrix/wp-content/uploads/2021/09/bg-rodape-1024x110-1.jpg', NULL, '85', 'attachment-image', NULL, NULL, NULL, '85', 'attachment-image', NULL, NULL, NULL, NULL, '2021-09-01 19:47:51', '2021-09-02 19:27:32', 1, NULL, NULL, NULL, NULL, 0, NULL),
(87, NULL, NULL, 86, 'post', 'attachment', 1, 0, NULL, NULL, 'bg-rodape-1536&#215;165', 'inherit', 0, 0, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 'http://localhost/UniformesMatrix/wp-content/uploads/2021/09/bg-rodape-1536x165-1.jpg', NULL, '86', 'attachment-image', NULL, NULL, NULL, '86', 'attachment-image', NULL, NULL, NULL, NULL, '2021-09-01 19:47:52', '2021-09-02 19:27:32', 1, NULL, NULL, NULL, NULL, 0, NULL),
(88, NULL, NULL, 87, 'post', 'attachment', 1, 0, NULL, NULL, 'bones-1', 'inherit', 0, 0, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 'http://localhost/UniformesMatrix/wp-content/uploads/2021/09/bones-1.jpg', NULL, '87', 'attachment-image', NULL, NULL, NULL, '87', 'attachment-image', NULL, NULL, NULL, NULL, '2021-09-01 19:47:53', '2021-09-02 19:27:32', 1, NULL, NULL, NULL, NULL, 0, NULL),
(89, NULL, NULL, 88, 'post', 'attachment', 1, 0, NULL, NULL, 'bones-1-150&#215;150', 'inherit', 0, 0, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 'http://localhost/UniformesMatrix/wp-content/uploads/2021/09/bones-1-150x150-1.jpg', NULL, '88', 'attachment-image', NULL, NULL, NULL, '88', 'attachment-image', NULL, NULL, NULL, NULL, '2021-09-01 19:47:54', '2021-09-02 19:27:32', 1, NULL, NULL, NULL, NULL, 0, NULL),
(90, NULL, NULL, 89, 'post', 'attachment', 1, 0, NULL, NULL, 'bones-1-236&#215;178', 'inherit', 0, 0, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 'http://localhost/UniformesMatrix/wp-content/uploads/2021/09/bones-1-236x178-1.jpg', NULL, '89', 'attachment-image', NULL, NULL, NULL, '89', 'attachment-image', NULL, NULL, NULL, NULL, '2021-09-01 19:47:54', '2021-09-02 19:27:32', 1, NULL, NULL, NULL, NULL, 0, NULL),
(91, NULL, NULL, 90, 'post', 'attachment', 1, 0, NULL, NULL, 'bones-1-300&#215;300', 'inherit', 0, 0, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 'http://localhost/UniformesMatrix/wp-content/uploads/2021/09/bones-1-300x300-1.jpg', NULL, '90', 'attachment-image', NULL, NULL, NULL, '90', 'attachment-image', NULL, NULL, NULL, NULL, '2021-09-01 19:47:55', '2021-09-02 19:27:32', 1, NULL, NULL, NULL, NULL, 0, NULL),
(92, NULL, NULL, 91, 'post', 'attachment', 1, 0, NULL, NULL, 'calcas-e-shorts', 'inherit', 0, 0, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 'http://localhost/UniformesMatrix/wp-content/uploads/2021/09/calcas-e-shorts.jpg', NULL, '91', 'attachment-image', NULL, NULL, NULL, '91', 'attachment-image', NULL, NULL, NULL, NULL, '2021-09-01 19:47:55', '2021-09-02 19:27:32', 1, NULL, NULL, NULL, NULL, 0, NULL),
(93, NULL, NULL, 92, 'post', 'attachment', 1, 0, NULL, NULL, 'calcas-e-shorts-150&#215;150', 'inherit', 0, 0, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 'http://localhost/UniformesMatrix/wp-content/uploads/2021/09/calcas-e-shorts-150x150-1.jpg', NULL, '92', 'attachment-image', NULL, NULL, NULL, '92', 'attachment-image', NULL, NULL, NULL, NULL, '2021-09-01 19:47:56', '2021-09-02 19:27:32', 1, NULL, NULL, NULL, NULL, 0, NULL),
(94, NULL, NULL, 93, 'post', 'attachment', 1, 0, NULL, NULL, 'calcas-e-shorts-236&#215;178', 'inherit', 0, 0, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 'http://localhost/UniformesMatrix/wp-content/uploads/2021/09/calcas-e-shorts-236x178-1.jpg', NULL, '93', 'attachment-image', NULL, NULL, NULL, '93', 'attachment-image', NULL, NULL, NULL, NULL, '2021-09-01 19:47:57', '2021-09-02 19:27:32', 1, NULL, NULL, NULL, NULL, 0, NULL),
(95, NULL, NULL, 94, 'post', 'attachment', 1, 0, NULL, NULL, 'calcas-e-shorts-300&#215;295', 'inherit', 0, 0, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 'http://localhost/UniformesMatrix/wp-content/uploads/2021/09/calcas-e-shorts-300x295-1.jpg', NULL, '94', 'attachment-image', NULL, NULL, NULL, '94', 'attachment-image', NULL, NULL, NULL, NULL, '2021-09-01 19:47:57', '2021-09-02 19:27:32', 1, NULL, NULL, NULL, NULL, 0, NULL),
(96, NULL, NULL, 95, 'post', 'attachment', 1, 0, NULL, NULL, 'calcas-e-shorts-300&#215;300', 'inherit', 0, 0, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 'http://localhost/UniformesMatrix/wp-content/uploads/2021/09/calcas-e-shorts-300x300-1.jpg', NULL, '95', 'attachment-image', NULL, NULL, NULL, '95', 'attachment-image', NULL, NULL, NULL, NULL, '2021-09-01 19:47:58', '2021-09-02 19:27:32', 1, NULL, NULL, NULL, NULL, 0, NULL),
(97, NULL, NULL, 96, 'post', 'attachment', 1, 0, NULL, NULL, 'camisetas-e-jaquetas', 'inherit', 0, 0, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 'http://localhost/UniformesMatrix/wp-content/uploads/2021/09/camisetas-e-jaquetas.jpg', NULL, '96', 'attachment-image', NULL, NULL, NULL, '96', 'attachment-image', NULL, NULL, NULL, NULL, '2021-09-01 19:47:58', '2021-09-02 19:27:32', 1, NULL, NULL, NULL, NULL, 0, NULL),
(98, NULL, NULL, 97, 'post', 'attachment', 1, 0, NULL, NULL, 'camisetas-e-jaquetas-150&#215;150', 'inherit', 0, 0, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 'http://localhost/UniformesMatrix/wp-content/uploads/2021/09/camisetas-e-jaquetas-150x150-1.jpg', NULL, '97', 'attachment-image', NULL, NULL, NULL, '97', 'attachment-image', NULL, NULL, NULL, NULL, '2021-09-01 19:47:59', '2021-09-02 19:27:32', 1, NULL, NULL, NULL, NULL, 0, NULL),
(99, NULL, NULL, 98, 'post', 'attachment', 1, 0, NULL, NULL, 'camisetas-e-jaquetas-236&#215;178', 'inherit', 0, 0, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 'http://localhost/UniformesMatrix/wp-content/uploads/2021/09/camisetas-e-jaquetas-236x178-1.jpg', NULL, '98', 'attachment-image', NULL, NULL, NULL, '98', 'attachment-image', NULL, NULL, NULL, NULL, '2021-09-01 19:48:00', '2021-09-02 19:27:32', 1, NULL, NULL, NULL, NULL, 0, NULL),
(100, NULL, NULL, 99, 'post', 'attachment', 1, 0, NULL, NULL, 'camisetas-e-jaquetas-300&#215;257', 'inherit', 0, 0, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 'http://localhost/UniformesMatrix/wp-content/uploads/2021/09/camisetas-e-jaquetas-300x257-1.jpg', NULL, '99', 'attachment-image', NULL, NULL, NULL, '99', 'attachment-image', NULL, NULL, NULL, NULL, '2021-09-01 19:48:00', '2021-09-02 19:27:32', 1, NULL, NULL, NULL, NULL, 0, NULL),
(101, NULL, NULL, 100, 'post', 'attachment', 1, 0, NULL, NULL, 'camisetas-e-jaquetas-300&#215;300', 'inherit', 0, 0, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 'http://localhost/UniformesMatrix/wp-content/uploads/2021/09/camisetas-e-jaquetas-300x300-1.jpg', NULL, '100', 'attachment-image', NULL, NULL, NULL, '100', 'attachment-image', NULL, NULL, NULL, NULL, '2021-09-01 19:48:01', '2021-09-02 19:27:32', 1, NULL, NULL, NULL, NULL, 0, NULL),
(102, NULL, NULL, 101, 'post', 'attachment', 1, 183, NULL, NULL, 'clientforne', 'inherit', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 'http://localhost/UniformesMatrix/wp-content/uploads/2021/09/clientforne.png', NULL, '101', 'attachment-image', NULL, NULL, 'http://localhost/UniformesMatrix/wp-content/uploads/2021/09/clientforne.png', '101', 'attachment-image', '{\n    \"width\": 236,\n    \"height\": 178,\n    \"url\": \"http://localhost/UniformesMatrix/wp-content/uploads/2021/09/clientforne.png\",\n    \"path\": \"C:\\\\projetos_xampp\\\\htdocs\\\\UniformesMatrix/wp-content/uploads/2021/09/clientforne.png\",\n    \"size\": \"full\",\n    \"id\": 101,\n    \"alt\": \"\",\n    \"pixels\": 42008,\n    \"type\": \"image/png\"\n}', NULL, NULL, NULL, '2021-09-01 19:48:02', '2021-09-02 19:27:32', 1, NULL, NULL, NULL, NULL, 0, NULL),
(103, NULL, NULL, 102, 'post', 'attachment', 1, 0, NULL, NULL, 'clientforne-150&#215;150', 'inherit', 0, 0, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 'http://localhost/UniformesMatrix/wp-content/uploads/2021/09/clientforne-150x150-1.png', NULL, '102', 'attachment-image', NULL, NULL, NULL, '102', 'attachment-image', NULL, NULL, NULL, NULL, '2021-09-01 19:48:02', '2021-09-02 19:27:32', 1, NULL, NULL, NULL, NULL, 0, NULL),
(104, NULL, NULL, 103, 'post', 'attachment', 1, 9, NULL, NULL, 'conteudo', 'inherit', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 'http://localhost/UniformesMatrix/wp-content/uploads/2021/09/conteudo.png', NULL, '103', 'attachment-image', NULL, NULL, 'http://localhost/UniformesMatrix/wp-content/uploads/2021/09/conteudo.png', '103', 'attachment-image', '{\n    \"width\": 540,\n    \"height\": 464,\n    \"url\": \"http://localhost/UniformesMatrix/wp-content/uploads/2021/09/conteudo.png\",\n    \"path\": \"C:\\\\projetos_xampp\\\\htdocs\\\\UniformesMatrix/wp-content/uploads/2021/09/conteudo.png\",\n    \"size\": \"full\",\n    \"id\": 103,\n    \"alt\": \"\",\n    \"pixels\": 250560,\n    \"type\": \"image/png\"\n}', NULL, NULL, NULL, '2021-09-01 19:48:03', '2021-09-02 19:27:32', 1, NULL, NULL, NULL, NULL, 0, NULL),
(105, NULL, NULL, 104, 'post', 'attachment', 1, 0, NULL, NULL, 'conteudo-150&#215;150', 'inherit', 0, 0, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 'http://localhost/UniformesMatrix/wp-content/uploads/2021/09/conteudo-150x150-1.png', NULL, '104', 'attachment-image', NULL, NULL, NULL, '104', 'attachment-image', NULL, NULL, NULL, NULL, '2021-09-01 19:48:04', '2021-09-02 19:27:32', 1, NULL, NULL, NULL, NULL, 0, NULL),
(106, NULL, NULL, 105, 'post', 'attachment', 1, 0, NULL, NULL, 'conteudo-300&#215;258', 'inherit', 0, 0, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 'http://localhost/UniformesMatrix/wp-content/uploads/2021/09/conteudo-300x258-1.png', NULL, '105', 'attachment-image', NULL, NULL, NULL, '105', 'attachment-image', NULL, NULL, NULL, NULL, '2021-09-01 19:48:04', '2021-09-02 19:27:32', 1, NULL, NULL, NULL, NULL, 0, NULL),
(107, NULL, NULL, 106, 'post', 'attachment', 1, 0, NULL, NULL, 'conteudo-300&#215;300', 'inherit', 0, 0, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 'http://localhost/UniformesMatrix/wp-content/uploads/2021/09/conteudo-300x300-1.png', NULL, '106', 'attachment-image', NULL, NULL, NULL, '106', 'attachment-image', NULL, NULL, NULL, NULL, '2021-09-01 19:48:05', '2021-09-02 19:27:32', 1, NULL, NULL, NULL, NULL, 0, NULL),
(108, NULL, NULL, 107, 'post', 'attachment', 1, 0, NULL, NULL, 'fecha-menu', 'inherit', 0, 0, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 'http://localhost/UniformesMatrix/wp-content/uploads/2021/09/fecha-menu.png', NULL, '107', 'attachment-image', NULL, NULL, NULL, '107', 'attachment-image', NULL, NULL, NULL, NULL, '2021-09-01 19:48:06', '2021-09-02 19:27:32', 1, NULL, NULL, NULL, NULL, 0, NULL),
(109, NULL, NULL, 108, 'post', 'attachment', 1, 0, NULL, NULL, 'logo-footer', 'inherit', 0, 0, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 'http://localhost/UniformesMatrix/wp-content/uploads/2021/09/logo-footer.png', NULL, '108', 'attachment-image', NULL, NULL, NULL, '108', 'attachment-image', NULL, NULL, NULL, NULL, '2021-09-01 19:48:07', '2021-09-02 19:27:32', 1, NULL, NULL, NULL, NULL, 0, NULL),
(110, NULL, NULL, 109, 'post', 'attachment', 1, 0, NULL, NULL, 'logo-footer-150&#215;126', 'inherit', 0, 0, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 'http://localhost/UniformesMatrix/wp-content/uploads/2021/09/logo-footer-150x126-1.png', NULL, '109', 'attachment-image', NULL, NULL, NULL, '109', 'attachment-image', NULL, NULL, NULL, NULL, '2021-09-01 19:48:08', '2021-09-02 19:27:32', 1, NULL, NULL, NULL, NULL, 0, NULL),
(111, NULL, NULL, 110, 'post', 'attachment', 1, 0, NULL, NULL, 'logo-footer-300&#215;122', 'inherit', 0, 0, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 'http://localhost/UniformesMatrix/wp-content/uploads/2021/09/logo-footer-300x122-1.png', NULL, '110', 'attachment-image', NULL, NULL, NULL, '110', 'attachment-image', NULL, NULL, NULL, NULL, '2021-09-01 19:48:08', '2021-09-02 19:27:32', 1, NULL, NULL, NULL, NULL, 0, NULL),
(112, NULL, NULL, 111, 'post', 'attachment', 1, 0, NULL, NULL, 'logo-footer-300&#215;126', 'inherit', 0, 0, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 'http://localhost/UniformesMatrix/wp-content/uploads/2021/09/logo-footer-300x126-1.png', NULL, '111', 'attachment-image', NULL, NULL, NULL, '111', 'attachment-image', NULL, NULL, NULL, NULL, '2021-09-01 19:48:09', '2021-09-02 19:27:32', 1, NULL, NULL, NULL, NULL, 0, NULL),
(113, NULL, NULL, 112, 'post', 'attachment', 1, 0, NULL, NULL, 'logo-header', 'inherit', 0, 0, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 'http://localhost/UniformesMatrix/wp-content/uploads/2021/09/logo-header.png', NULL, '112', 'attachment-image', NULL, NULL, NULL, '112', 'attachment-image', NULL, NULL, NULL, NULL, '2021-09-01 19:48:10', '2021-09-02 19:27:32', 1, NULL, NULL, NULL, NULL, 0, NULL),
(114, NULL, NULL, 113, 'post', 'attachment', 1, 0, NULL, NULL, 'logo-header-150&#215;109', 'inherit', 0, 0, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 'http://localhost/UniformesMatrix/wp-content/uploads/2021/09/logo-header-150x109-1.png', NULL, '113', 'attachment-image', NULL, NULL, NULL, '113', 'attachment-image', NULL, NULL, NULL, NULL, '2021-09-01 19:48:10', '2021-09-02 19:27:32', 1, NULL, NULL, NULL, NULL, 0, NULL),
(115, NULL, NULL, 114, 'post', 'attachment', 1, 0, NULL, NULL, 'logo-mmd', 'inherit', 0, 0, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 'http://localhost/UniformesMatrix/wp-content/uploads/2021/09/logo-mmd.png', NULL, '114', 'attachment-image', NULL, NULL, NULL, '114', 'attachment-image', NULL, NULL, NULL, NULL, '2021-09-01 19:48:11', '2021-09-02 19:27:32', 1, NULL, NULL, NULL, NULL, 0, NULL),
(116, NULL, NULL, 115, 'post', 'attachment', 1, 0, NULL, NULL, 'outros-produtos', 'inherit', 0, 0, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 'http://localhost/UniformesMatrix/wp-content/uploads/2021/09/outros-produtos.jpg', NULL, '115', 'attachment-image', NULL, NULL, NULL, '115', 'attachment-image', NULL, NULL, NULL, NULL, '2021-09-01 19:48:12', '2021-09-02 19:27:32', 1, NULL, NULL, NULL, NULL, 0, NULL),
(117, NULL, NULL, 116, 'post', 'attachment', 1, 0, NULL, NULL, 'outros-produtos-150&#215;150', 'inherit', 0, 0, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 'http://localhost/UniformesMatrix/wp-content/uploads/2021/09/outros-produtos-150x150-1.jpg', NULL, '116', 'attachment-image', NULL, NULL, NULL, '116', 'attachment-image', NULL, NULL, NULL, NULL, '2021-09-01 19:48:13', '2021-09-02 19:27:32', 1, NULL, NULL, NULL, NULL, 0, NULL),
(118, NULL, NULL, 117, 'post', 'attachment', 1, 0, NULL, NULL, 'outros-produtos-236&#215;178', 'inherit', 0, 0, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 'http://localhost/UniformesMatrix/wp-content/uploads/2021/09/outros-produtos-236x178-1.jpg', NULL, '117', 'attachment-image', NULL, NULL, NULL, '117', 'attachment-image', NULL, NULL, NULL, NULL, '2021-09-01 19:48:13', '2021-09-02 19:27:32', 1, NULL, NULL, NULL, NULL, 0, NULL),
(119, NULL, NULL, 118, 'post', 'attachment', 1, 0, NULL, NULL, 'outros-produtos-300&#215;296', 'inherit', 0, 0, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 'http://localhost/UniformesMatrix/wp-content/uploads/2021/09/outros-produtos-300x296-1.jpg', NULL, '118', 'attachment-image', NULL, NULL, NULL, '118', 'attachment-image', NULL, NULL, NULL, NULL, '2021-09-01 19:48:14', '2021-09-02 19:27:32', 1, NULL, NULL, NULL, NULL, 0, NULL),
(120, NULL, NULL, 119, 'post', 'attachment', 1, 0, NULL, NULL, 'outros-produtos-300&#215;300', 'inherit', 0, 0, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 'http://localhost/UniformesMatrix/wp-content/uploads/2021/09/outros-produtos-300x300-1.jpg', NULL, '119', 'attachment-image', NULL, NULL, NULL, '119', 'attachment-image', NULL, NULL, NULL, NULL, '2021-09-01 19:48:15', '2021-09-02 19:27:32', 1, NULL, NULL, NULL, NULL, 0, NULL),
(121, NULL, NULL, 120, 'post', 'attachment', 1, 0, NULL, NULL, 'padrao', 'inherit', 0, 0, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 'http://localhost/UniformesMatrix/wp-content/uploads/2021/09/padrao.png', NULL, '120', 'attachment-image', NULL, NULL, NULL, '120', 'attachment-image', NULL, NULL, NULL, NULL, '2021-09-01 19:48:16', '2021-09-02 19:27:32', 1, NULL, NULL, NULL, NULL, 0, NULL),
(122, NULL, NULL, 121, 'post', 'attachment', 1, 0, NULL, NULL, 'padrao-150&#215;150', 'inherit', 0, 0, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 'http://localhost/UniformesMatrix/wp-content/uploads/2021/09/padrao-150x150-1.png', NULL, '121', 'attachment-image', NULL, NULL, NULL, '121', 'attachment-image', NULL, NULL, NULL, NULL, '2021-09-01 19:48:16', '2021-09-02 19:27:32', 1, NULL, NULL, NULL, NULL, 0, NULL),
(123, NULL, NULL, 122, 'post', 'attachment', 1, 199, NULL, NULL, 'bannerdesktop', 'inherit', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 'http://localhost/UniformesMatrix/wp-content/uploads/2021/09/bannerdesktop.png', NULL, '122', 'attachment-image', NULL, NULL, 'http://localhost/UniformesMatrix/wp-content/uploads/2021/09/bannerdesktop.png', '122', 'attachment-image', '{\n    \"width\": 1916,\n    \"height\": 545,\n    \"url\": \"http://localhost/UniformesMatrix/wp-content/uploads/2021/09/bannerdesktop.png\",\n    \"path\": \"C:\\\\projetos_xampp\\\\htdocs\\\\UniformesMatrix/wp-content/uploads/2021/09/bannerdesktop.png\",\n    \"size\": \"full\",\n    \"id\": 122,\n    \"alt\": \"\",\n    \"pixels\": 1044220,\n    \"type\": \"image/png\"\n}', NULL, NULL, NULL, '2021-09-01 19:48:17', '2021-09-02 19:27:32', 1, NULL, NULL, NULL, NULL, 0, NULL),
(124, 'https://localhost/UniformesMatrix/contato/', '42:a7654bbee32ed2ffa33e9f3cda7a13fa', 123, 'post', 'page', 1, 0, NULL, NULL, 'Contato', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2021-09-01 19:49:10', '2021-09-02 22:37:02', 1, NULL, NULL, NULL, NULL, 0, NULL),
(125, 'https://localhost/UniformesMatrix/clientes-e-fornecedores/', '58:0a80904693bd0c1ec521adb49672e24d', 125, 'post', 'page', 1, 0, NULL, NULL, 'Clientes e Fornecedores', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2021-09-01 19:49:43', '2021-09-02 22:37:02', 1, NULL, NULL, NULL, NULL, 0, NULL),
(126, 'https://localhost/UniformesMatrix/quem-somos/', '45:311ef8ebe7d076d032d75e775ccaff66', 127, 'post', 'page', 1, 0, NULL, NULL, 'Quem Somos', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2021-09-01 19:50:00', '2021-09-02 22:37:02', 1, NULL, NULL, NULL, NULL, 0, NULL),
(127, NULL, NULL, 131, 'post', 'acf-field', 1, 130, NULL, NULL, 'Telefone', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2021-09-01 20:06:39', '2021-09-02 19:27:32', 1, NULL, NULL, NULL, NULL, 1, NULL),
(128, NULL, NULL, 130, 'post', 'acf-field-group', 1, 0, NULL, NULL, 'Configuração Geral', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2021-09-01 20:06:40', '2021-09-02 19:27:32', 1, NULL, NULL, NULL, NULL, 0, NULL),
(129, NULL, NULL, 132, 'post', 'acf-field', 1, 130, NULL, NULL, 'WhatsApp', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2021-09-01 20:06:40', '2021-09-02 19:27:32', 1, NULL, NULL, NULL, NULL, 1, NULL),
(130, NULL, NULL, 133, 'post', 'acf-field', 1, 130, NULL, NULL, 'E-mail', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2021-09-01 20:06:40', '2021-09-02 19:27:32', 1, NULL, NULL, NULL, NULL, 1, NULL),
(131, NULL, NULL, 134, 'post', 'acf-field', 1, 130, NULL, NULL, 'Logo Topo', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2021-09-01 20:06:40', '2021-09-02 19:27:32', 1, NULL, NULL, NULL, NULL, 1, NULL),
(132, NULL, NULL, 135, 'post', 'acf-field', 1, 11, NULL, NULL, 'Área de Conteúdo 1', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2021-09-01 20:09:32', '2021-09-02 19:27:32', 1, NULL, NULL, NULL, NULL, 1, NULL),
(133, NULL, NULL, 136, 'post', 'acf-field', 1, 11, NULL, NULL, 'Título', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2021-09-01 20:09:32', '2021-09-02 19:27:32', 1, NULL, NULL, NULL, NULL, 1, NULL),
(134, NULL, NULL, 137, 'post', 'acf-field', 1, 11, NULL, NULL, 'Texto', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2021-09-01 20:09:32', '2021-09-02 19:27:32', 1, NULL, NULL, NULL, NULL, 1, NULL),
(135, NULL, NULL, 138, 'post', 'acf-field', 1, 11, NULL, NULL, 'Link', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2021-09-01 20:09:32', '2021-09-02 19:27:32', 1, NULL, NULL, NULL, NULL, 1, NULL),
(136, NULL, NULL, 139, 'post', 'acf-field', 1, 11, NULL, NULL, 'Imagem', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2021-09-01 20:09:32', '2021-09-02 19:27:32', 1, NULL, NULL, NULL, NULL, 1, NULL),
(137, NULL, NULL, 140, 'post', 'acf-field', 1, 11, NULL, NULL, 'Área de Conteúdo 2', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2021-09-01 21:11:11', '2021-09-02 19:27:32', 1, NULL, NULL, NULL, NULL, 1, NULL),
(138, NULL, NULL, 141, 'post', 'acf-field', 1, 11, NULL, NULL, 'Título', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2021-09-01 21:11:11', '2021-09-02 19:27:32', 1, NULL, NULL, NULL, NULL, 1, NULL),
(139, NULL, NULL, 142, 'post', 'acf-field', 1, 11, NULL, NULL, 'Texto', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2021-09-01 21:11:11', '2021-09-02 19:27:32', 1, NULL, NULL, NULL, NULL, 1, NULL),
(140, NULL, NULL, 143, 'post', 'acf-field', 1, 11, NULL, NULL, 'Link', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2021-09-01 21:11:11', '2021-09-02 19:27:32', 1, NULL, NULL, NULL, NULL, 1, NULL),
(141, NULL, NULL, 144, 'post', 'acf-field', 1, 11, NULL, NULL, 'Imagem', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2021-09-01 21:11:11', '2021-09-02 19:27:32', 1, NULL, NULL, NULL, NULL, 1, NULL),
(142, NULL, NULL, 145, 'post', 'acf-field', 1, 11, NULL, NULL, 'Área de Conteúdo 3', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2021-09-01 21:11:11', '2021-09-02 19:27:32', 1, NULL, NULL, NULL, NULL, 1, NULL),
(143, NULL, NULL, 146, 'post', 'acf-field', 1, 11, NULL, NULL, 'Título', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2021-09-01 21:11:12', '2021-09-02 19:27:32', 1, NULL, NULL, NULL, NULL, 1, NULL),
(144, NULL, NULL, 147, 'post', 'acf-field', 1, 11, NULL, NULL, 'Texto', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2021-09-01 21:11:12', '2021-09-02 19:27:32', 1, NULL, NULL, NULL, NULL, 1, NULL),
(145, NULL, NULL, 148, 'post', 'acf-field', 1, 11, NULL, NULL, 'Link', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2021-09-01 21:11:12', '2021-09-02 19:27:32', 1, NULL, NULL, NULL, NULL, 1, NULL),
(146, NULL, NULL, 149, 'post', 'acf-field', 1, 11, NULL, NULL, 'Imagem', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2021-09-01 21:11:12', '2021-09-02 19:27:32', 1, NULL, NULL, NULL, NULL, 1, NULL),
(147, NULL, NULL, 150, 'post', 'clientes', 1, 0, NULL, NULL, 'Cliente 1', 'trash', 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-09-01 21:11:38', '2021-09-02 19:27:32', 1, NULL, NULL, NULL, NULL, 0, NULL),
(149, NULL, NULL, 153, 'post', 'acf-field', 1, 130, NULL, NULL, 'Logo Footer', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2021-09-01 21:13:02', '2021-09-02 19:27:32', 1, NULL, NULL, NULL, NULL, 1, NULL),
(150, 'https://localhost/UniformesMatrix/2021/09/02/154/', '49:1d8c3f8287abcebf1718b96f08a3e139', 154, 'post', 'nav_menu_item', 1, 0, NULL, NULL, '', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2021-09-01 21:19:06', '2021-09-02 22:40:31', 1, NULL, NULL, NULL, NULL, 0, NULL),
(151, 'https://localhost/UniformesMatrix/2021/09/02/155/', '49:25df29f921e54f405a0b785d5c219729', 155, 'post', 'nav_menu_item', 1, 0, NULL, NULL, '', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2021-09-01 21:19:06', '2021-09-02 22:40:32', 1, NULL, NULL, NULL, NULL, 0, NULL),
(152, 'https://localhost/UniformesMatrix/2021/09/02/156/', '49:d61268a62cdfce33c23bc156a36156b4', 156, 'post', 'nav_menu_item', 1, 0, NULL, NULL, '', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2021-09-01 21:19:07', '2021-09-02 22:40:32', 1, NULL, NULL, NULL, NULL, 0, NULL),
(153, 'https://localhost/UniformesMatrix/2021/09/02/157/', '49:e62953179350e2d159de801d4af8f22b', 157, 'post', 'nav_menu_item', 1, 0, NULL, NULL, '', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2021-09-01 21:19:07', '2021-09-02 22:40:31', 1, NULL, NULL, NULL, NULL, 0, NULL),
(154, 'https://localhost/UniformesMatrix/categoria/camisetas-e-jaquetas/', '65:50307cc07fdeb78d37a434986cfd623b', 3, 'term', 'categoria', NULL, NULL, NULL, NULL, 'Camisetas e Jaquetas', NULL, NULL, 0, NULL, NULL, NULL, 'Camisetas e Jaquetas', 29, 60, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2021-09-01 21:20:34', '2021-09-02 22:30:14', 1, NULL, NULL, NULL, NULL, 0, NULL),
(155, 'https://localhost/UniformesMatrix/categoria/calcas-e-shorts/', '60:8d4db34041a03304f887720ec9b951b7', 4, 'term', 'categoria', NULL, NULL, NULL, NULL, 'Calças e Shorts', NULL, NULL, 0, NULL, NULL, NULL, 'Calças e Shorts', 32, 60, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2021-09-01 21:20:50', '2021-09-02 23:46:21', 1, NULL, NULL, NULL, NULL, 0, NULL),
(156, NULL, NULL, 5, 'term', 'categoria', NULL, NULL, NULL, NULL, 'Bonés', NULL, NULL, 0, NULL, NULL, NULL, 'Bonés', 32, 60, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2021-09-01 21:20:57', '2021-09-02 19:27:32', 1, NULL, NULL, NULL, NULL, 0, NULL),
(157, NULL, NULL, 6, 'term', 'categoria', NULL, NULL, NULL, NULL, 'Outros Produtos', NULL, NULL, 0, NULL, NULL, NULL, 'Outros Produtos', 37, 60, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2021-09-01 21:21:05', '2021-09-02 19:27:32', 1, NULL, NULL, NULL, NULL, 0, NULL),
(158, NULL, NULL, 159, 'post', 'banners', 1, 0, NULL, NULL, 'Banner 1', 'trash', 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-09-01 21:24:09', '2021-09-02 19:27:32', 1, NULL, NULL, NULL, NULL, 0, NULL),
(159, NULL, NULL, 162, 'post', 'page', 1, 0, NULL, NULL, 'Produtos', 'trash', 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2021-09-01 21:26:44', '2021-09-02 19:27:32', 1, NULL, NULL, NULL, NULL, 0, NULL),
(160, NULL, NULL, 165, 'post', 'acf-field', 1, 130, NULL, NULL, 'Rua', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2021-09-01 21:42:49', '2021-09-02 19:27:32', 1, NULL, NULL, NULL, NULL, 1, NULL),
(161, NULL, NULL, 166, 'post', 'acf-field', 1, 130, NULL, NULL, 'CEP', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2021-09-01 21:42:50', '2021-09-02 19:27:32', 1, NULL, NULL, NULL, NULL, 1, NULL),
(162, NULL, NULL, 167, 'post', 'acf-field', 1, 130, NULL, NULL, 'Redes Sociais', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2021-09-01 21:44:42', '2021-09-02 19:27:32', 1, NULL, NULL, NULL, NULL, 1, NULL),
(163, NULL, NULL, 168, 'post', 'acf-field', 1, 130, NULL, NULL, 'Facebook', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2021-09-01 21:44:42', '2021-09-02 19:27:32', 1, NULL, NULL, NULL, NULL, 1, NULL),
(164, NULL, NULL, 169, 'post', 'acf-field', 1, 130, NULL, NULL, 'Instagram', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2021-09-01 21:44:42', '2021-09-02 19:27:32', 1, NULL, NULL, NULL, NULL, 1, NULL),
(165, NULL, NULL, 170, 'post', 'acf-field', 1, 130, NULL, NULL, 'Contatos', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2021-09-01 21:46:27', '2021-09-02 19:27:32', 1, NULL, NULL, NULL, NULL, 1, NULL),
(166, NULL, NULL, 171, 'post', 'acf-field', 1, 130, NULL, NULL, 'Logos', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2021-09-01 21:46:27', '2021-09-02 19:27:32', 1, NULL, NULL, NULL, NULL, 1, NULL),
(167, NULL, NULL, 172, 'post', 'acf-field', 1, 130, NULL, NULL, 'Endereço', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2021-09-01 21:46:27', '2021-09-02 19:27:32', 1, NULL, NULL, NULL, NULL, 1, NULL),
(168, NULL, NULL, 173, 'post', 'acf-field', 1, 11, NULL, NULL, 'Área de Conteúdo 4', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2021-09-01 21:52:47', '2021-09-02 19:27:32', 1, NULL, NULL, NULL, NULL, 1, NULL),
(169, NULL, NULL, 174, 'post', 'acf-field', 1, 11, NULL, NULL, 'Título', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2021-09-01 21:52:47', '2021-09-02 19:27:32', 1, NULL, NULL, NULL, NULL, 1, NULL),
(170, NULL, NULL, 175, 'post', 'acf-field', 1, 11, NULL, NULL, 'Lista', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2021-09-01 21:52:47', '2021-09-02 19:27:32', 1, NULL, NULL, NULL, NULL, 1, NULL),
(171, NULL, NULL, 178, 'post', 'acf-field', 1, 177, NULL, NULL, 'Área de Conteúdo', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2021-09-01 21:57:18', '2021-09-02 19:27:32', 1, NULL, NULL, NULL, NULL, 1, NULL),
(172, NULL, NULL, 177, 'post', 'acf-field-group', 1, 0, NULL, NULL, 'Clientes', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2021-09-01 21:57:18', '2021-09-02 19:27:32', 1, NULL, NULL, NULL, NULL, 0, NULL),
(173, NULL, NULL, 179, 'post', 'acf-field', 1, 177, NULL, NULL, 'Imagem', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2021-09-01 21:57:18', '2021-09-02 19:27:32', 1, NULL, NULL, NULL, NULL, 1, NULL),
(174, NULL, NULL, 181, 'post', 'acf-field', 1, 180, NULL, NULL, 'Área de Conteúdo 1', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2021-09-01 22:11:02', '2021-09-02 19:27:32', 1, NULL, NULL, NULL, NULL, 1, NULL),
(175, NULL, NULL, 180, 'post', 'acf-field-group', 1, 0, NULL, NULL, 'Fornecedores', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2021-09-01 22:11:02', '2021-09-02 19:27:32', 1, NULL, NULL, NULL, NULL, 0, NULL),
(176, NULL, NULL, 182, 'post', 'acf-field', 1, 180, NULL, NULL, 'Imagem', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2021-09-01 22:11:03', '2021-09-02 19:27:32', 1, NULL, NULL, NULL, NULL, 1, NULL),
(177, NULL, NULL, 183, 'post', 'fornecedores', 1, 0, NULL, NULL, 'Fornecedor 1', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2021-09-01 22:11:35', '2021-09-02 19:27:32', 1, NULL, NULL, NULL, NULL, 0, NULL),
(178, NULL, NULL, 176, 'post', 'clientes', 1, 0, NULL, NULL, 'Clientes 2', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2021-09-01 22:16:49', '2021-09-02 19:27:32', 1, NULL, NULL, NULL, NULL, 0, NULL),
(179, NULL, NULL, 185, 'post', 'clientes', 1, 0, NULL, NULL, 'Clientes 3', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2021-09-01 22:17:27', '2021-09-02 19:27:32', 1, NULL, NULL, NULL, NULL, 0, NULL),
(180, NULL, NULL, 186, 'post', 'clientes', 1, 0, NULL, NULL, 'Clientes 4', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2021-09-01 22:17:44', '2021-09-02 19:27:32', 1, NULL, NULL, NULL, NULL, 0, NULL),
(181, NULL, NULL, 187, 'post', 'clientes', 1, 0, NULL, NULL, 'Clientes 5', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2021-09-01 22:18:04', '2021-09-02 19:27:32', 1, NULL, NULL, NULL, NULL, 0, NULL);
INSERT INTO `wp_yoast_indexable` (`id`, `permalink`, `permalink_hash`, `object_id`, `object_type`, `object_sub_type`, `author_id`, `post_parent`, `title`, `description`, `breadcrumb_title`, `post_status`, `is_public`, `is_protected`, `has_public_posts`, `number_of_pages`, `canonical`, `primary_focus_keyword`, `primary_focus_keyword_score`, `readability_score`, `is_cornerstone`, `is_robots_noindex`, `is_robots_nofollow`, `is_robots_noarchive`, `is_robots_noimageindex`, `is_robots_nosnippet`, `twitter_title`, `twitter_image`, `twitter_description`, `twitter_image_id`, `twitter_image_source`, `open_graph_title`, `open_graph_description`, `open_graph_image`, `open_graph_image_id`, `open_graph_image_source`, `open_graph_image_meta`, `link_count`, `incoming_link_count`, `prominent_words_version`, `created_at`, `updated_at`, `blog_id`, `language`, `region`, `schema_page_type`, `schema_article_type`, `has_ancestors`, `estimated_reading_time_minutes`) VALUES
(182, NULL, NULL, 188, 'post', 'clientes', 1, 0, NULL, NULL, 'Clientes 6', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2021-09-01 22:18:19', '2021-09-02 19:27:32', 1, NULL, NULL, NULL, NULL, 0, NULL),
(183, NULL, NULL, 189, 'post', 'clientes', 1, 0, NULL, NULL, 'Clientes 7', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2021-09-01 22:18:35', '2021-09-02 19:27:32', 1, NULL, NULL, NULL, NULL, 0, NULL),
(184, NULL, NULL, 190, 'post', 'clientes', 1, 0, NULL, NULL, 'Clientes 8', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2021-09-01 22:18:49', '2021-09-02 19:27:32', 1, NULL, NULL, NULL, NULL, 0, NULL),
(185, NULL, NULL, 191, 'post', 'clientes', 1, 0, NULL, NULL, 'Clientes 1', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2021-09-01 22:19:18', '2021-09-02 19:27:32', 1, NULL, NULL, NULL, NULL, 0, NULL),
(186, NULL, NULL, 192, 'post', 'acf-field', 1, 11, NULL, NULL, 'Área de Conteúdo 5', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2021-09-01 22:55:54', '2021-09-02 19:27:32', 1, NULL, NULL, NULL, NULL, 1, NULL),
(187, NULL, NULL, 193, 'post', 'acf-field', 1, 11, NULL, NULL, 'Título', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2021-09-01 22:55:54', '2021-09-02 19:27:32', 1, NULL, NULL, NULL, NULL, 1, NULL),
(188, NULL, NULL, 194, 'post', 'acf-field', 1, 11, NULL, NULL, 'Texto', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2021-09-01 22:55:54', '2021-09-02 19:27:32', 1, NULL, NULL, NULL, NULL, 1, NULL),
(189, NULL, NULL, 195, 'post', 'acf-field', 1, 11, NULL, NULL, 'Link', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2021-09-01 22:55:54', '2021-09-02 19:27:32', 1, NULL, NULL, NULL, NULL, 1, NULL),
(190, NULL, NULL, 196, 'post', 'acf-field', 1, 11, NULL, NULL, 'Imagem', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2021-09-01 22:55:54', '2021-09-02 19:27:32', 1, NULL, NULL, NULL, NULL, 1, NULL),
(191, 'https://localhost/UniformesMatrix/2021/09/02/produtos/', '54:66ec1a27bd77fff79f789859b53afa2c', 198, 'post', 'nav_menu_item', 1, 0, NULL, NULL, 'Produtos', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2021-09-01 22:58:10', '2021-09-02 22:40:32', 1, NULL, NULL, NULL, NULL, 0, NULL),
(192, NULL, NULL, 199, 'post', 'banners', 1, 0, NULL, NULL, 'Banner 1', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2021-09-01 23:01:05', '2021-09-02 19:27:32', 1, NULL, NULL, NULL, NULL, 0, NULL),
(193, NULL, NULL, 201, 'post', 'acf-field', 1, 200, NULL, NULL, 'Banner&#8217;s', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2021-09-01 23:07:45', '2021-09-02 19:27:32', 1, NULL, NULL, NULL, NULL, 1, NULL),
(194, NULL, NULL, 200, 'post', 'acf-field-group', 1, 0, NULL, NULL, 'Banner&#8217;s Desktop e Mobile', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2021-09-01 23:07:45', '2021-09-02 19:27:32', 1, NULL, NULL, NULL, NULL, 0, NULL),
(195, NULL, NULL, 202, 'post', 'acf-field', 1, 200, NULL, NULL, 'Imagem Desktop', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2021-09-01 23:07:46', '2021-09-02 19:27:32', 1, NULL, NULL, NULL, NULL, 1, NULL),
(197, NULL, NULL, 204, 'post', 'acf-field', 1, 200, NULL, NULL, 'Imagem Mobile', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2021-09-01 23:07:46', '2021-09-02 19:27:32', 1, NULL, NULL, NULL, NULL, 1, NULL),
(198, NULL, NULL, 205, 'post', 'acf-field', 1, 200, NULL, NULL, 'Link', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2021-09-01 23:07:46', '2021-09-02 19:27:32', 1, NULL, NULL, NULL, NULL, 1, NULL),
(199, NULL, NULL, 206, 'post', 'attachment', 1, 199, NULL, NULL, 'bannermobile', 'inherit', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 'http://localhost/UniformesMatrix/wp-content/uploads/2021/09/bannermobile-1.png', NULL, '206', 'attachment-image', NULL, NULL, NULL, '206', 'attachment-image', NULL, NULL, NULL, NULL, '2021-09-01 23:10:08', '2021-09-02 19:27:32', 1, NULL, NULL, NULL, NULL, 0, NULL),
(200, NULL, NULL, 207, 'post', 'banners', 1, 0, NULL, NULL, 'Banner 2', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2021-09-01 23:11:15', '2021-09-02 19:27:32', 1, NULL, NULL, NULL, NULL, 0, NULL),
(201, NULL, NULL, 208, 'post', 'banners', 1, 0, NULL, NULL, 'Banner 3', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2021-09-01 23:11:57', '2021-09-02 19:27:32', 1, NULL, NULL, NULL, NULL, 0, NULL),
(202, NULL, NULL, 209, 'post', 'banners', 1, 0, NULL, NULL, 'Banner 4', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2021-09-01 23:12:19', '2021-09-02 19:27:32', 1, NULL, NULL, NULL, NULL, 0, NULL),
(203, NULL, NULL, 161, 'post', 'page', 1, 0, NULL, NULL, 'Rascunho automático', 'auto-draft', 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-09-01 23:13:45', '2021-09-02 19:27:32', 1, NULL, NULL, NULL, NULL, 0, NULL),
(204, NULL, NULL, 160, 'post', 'produtos', 1, 0, NULL, NULL, 'Rascunho automático', 'auto-draft', 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-09-01 23:13:46', '2021-09-02 19:27:32', 1, NULL, NULL, NULL, NULL, 0, NULL),
(205, NULL, NULL, 197, 'post', 'produtos', 1, 0, NULL, NULL, 'Rascunho automático', 'auto-draft', 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-09-01 23:13:46', '2021-09-02 19:27:32', 1, NULL, NULL, NULL, NULL, 0, NULL),
(206, NULL, NULL, 210, 'post', 'produtos', 1, 0, NULL, NULL, 'Título do Produto', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2021-09-01 23:16:04', '2021-09-02 19:27:32', 1, NULL, NULL, NULL, NULL, 0, NULL),
(207, NULL, NULL, 212, 'post', 'acf-field', 1, 211, NULL, NULL, 'Área de Conteúdo 1', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2021-09-02 16:20:28', '2021-09-02 19:27:32', 1, NULL, NULL, NULL, NULL, 1, NULL),
(208, NULL, NULL, 211, 'post', 'acf-field-group', 1, 0, NULL, NULL, 'Quem Somos', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2021-09-02 16:20:28', '2021-09-02 19:27:32', 1, NULL, NULL, NULL, NULL, 0, NULL),
(209, NULL, NULL, 213, 'post', 'acf-field', 1, 211, NULL, NULL, 'Título', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2021-09-02 16:20:28', '2021-09-02 19:27:32', 1, NULL, NULL, NULL, NULL, 1, NULL),
(210, NULL, NULL, 214, 'post', 'acf-field', 1, 211, NULL, NULL, 'Subtítulo', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2021-09-02 16:20:28', '2021-09-02 19:27:32', 1, NULL, NULL, NULL, NULL, 1, NULL),
(211, NULL, NULL, 215, 'post', 'acf-field', 1, 211, NULL, NULL, 'Texto', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2021-09-02 16:20:28', '2021-09-02 19:27:32', 1, NULL, NULL, NULL, NULL, 1, NULL),
(212, NULL, NULL, 216, 'post', 'acf-field', 1, 211, NULL, NULL, 'Imagem', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2021-09-02 16:20:28', '2021-09-02 19:27:32', 1, NULL, NULL, NULL, NULL, 1, NULL),
(213, NULL, NULL, 217, 'post', 'acf-field', 1, 211, NULL, NULL, 'Área de Conteúdo 2', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2021-09-02 16:20:28', '2021-09-02 19:27:32', 1, NULL, NULL, NULL, NULL, 1, NULL),
(214, NULL, NULL, 218, 'post', 'acf-field', 1, 211, NULL, NULL, 'Título', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2021-09-02 16:20:28', '2021-09-02 19:27:32', 1, NULL, NULL, NULL, NULL, 1, NULL),
(215, NULL, NULL, 219, 'post', 'acf-field', 1, 211, NULL, NULL, 'Texto', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2021-09-02 16:20:28', '2021-09-02 19:27:32', 1, NULL, NULL, NULL, NULL, 1, NULL),
(216, NULL, NULL, 220, 'post', 'acf-field', 1, 211, NULL, NULL, 'Área de Conteúdo 3', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2021-09-02 16:20:28', '2021-09-02 19:27:32', 1, NULL, NULL, NULL, NULL, 1, NULL),
(217, NULL, NULL, 221, 'post', 'acf-field', 1, 211, NULL, NULL, 'Título', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2021-09-02 16:20:29', '2021-09-02 19:27:32', 1, NULL, NULL, NULL, NULL, 1, NULL),
(218, NULL, NULL, 222, 'post', 'acf-field', 1, 211, NULL, NULL, 'Texto', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2021-09-02 16:20:29', '2021-09-02 19:27:32', 1, NULL, NULL, NULL, NULL, 1, NULL),
(219, NULL, NULL, 223, 'post', 'fornecedores', 1, 0, NULL, NULL, 'Fornecedor 2', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2021-09-02 16:33:51', '2021-09-02 19:27:32', 1, NULL, NULL, NULL, NULL, 0, NULL),
(220, NULL, NULL, 224, 'post', 'fornecedores', 1, 0, NULL, NULL, 'Fornecedor 3', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2021-09-02 16:35:36', '2021-09-02 19:27:32', 1, NULL, NULL, NULL, NULL, 0, NULL),
(221, NULL, NULL, 225, 'post', 'fornecedores', 1, 0, NULL, NULL, 'Fornecedor 4', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2021-09-02 16:35:51', '2021-09-02 19:27:32', 1, NULL, NULL, NULL, NULL, 0, NULL),
(222, NULL, NULL, 226, 'post', 'fornecedores', 1, 0, NULL, NULL, 'Fornecedor 5', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2021-09-02 16:36:05', '2021-09-02 19:27:32', 1, NULL, NULL, NULL, NULL, 0, NULL),
(223, NULL, NULL, 227, 'post', 'fornecedores', 1, 0, NULL, NULL, 'Fornecedor 6', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2021-09-02 16:36:20', '2021-09-02 19:27:32', 1, NULL, NULL, NULL, NULL, 0, NULL),
(224, NULL, NULL, 228, 'post', 'fornecedores', 1, 0, NULL, NULL, 'Fornecedor 7', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2021-09-02 16:36:37', '2021-09-02 19:27:32', 1, NULL, NULL, NULL, NULL, 0, NULL),
(225, NULL, NULL, 229, 'post', 'fornecedores', 1, 0, NULL, NULL, 'Fornecedor 8', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2021-09-02 16:36:54', '2021-09-02 19:27:32', 1, NULL, NULL, NULL, NULL, 0, NULL),
(226, NULL, NULL, 231, 'post', 'acf-field-group', 1, 0, NULL, NULL, 'C&#038;F', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2021-09-02 16:41:47', '2021-09-02 19:27:32', 1, NULL, NULL, NULL, NULL, 0, NULL),
(227, NULL, NULL, 232, 'post', 'acf-field', 1, 231, NULL, NULL, 'Área de Conteúdo 1', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2021-09-02 16:43:28', '2021-09-02 19:27:32', 1, NULL, NULL, NULL, NULL, 1, NULL),
(228, NULL, NULL, 233, 'post', 'acf-field', 1, 231, NULL, NULL, 'Título', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2021-09-02 16:43:28', '2021-09-02 19:27:32', 1, NULL, NULL, NULL, NULL, 1, NULL),
(229, NULL, NULL, 234, 'post', 'acf-field', 1, 231, NULL, NULL, 'Texto', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2021-09-02 16:43:28', '2021-09-02 19:27:32', 1, NULL, NULL, NULL, NULL, 1, NULL),
(230, NULL, NULL, 235, 'post', 'acf-field', 1, 231, NULL, NULL, 'Imagem', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2021-09-02 16:43:28', '2021-09-02 19:27:32', 1, NULL, NULL, NULL, NULL, 1, NULL),
(231, NULL, NULL, 237, 'post', 'acf-field', 1, 236, NULL, NULL, 'Área de Conteúdo 1', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2021-09-02 16:51:22', '2021-09-02 19:27:32', 1, NULL, NULL, NULL, NULL, 1, NULL),
(232, NULL, NULL, 236, 'post', 'acf-field-group', 1, 0, NULL, NULL, 'Contato', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2021-09-02 16:51:22', '2021-09-02 19:27:32', 1, NULL, NULL, NULL, NULL, 0, NULL),
(233, NULL, NULL, 238, 'post', 'acf-field', 1, 236, NULL, NULL, 'Título', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2021-09-02 16:51:22', '2021-09-02 19:27:32', 1, NULL, NULL, NULL, NULL, 1, NULL),
(234, NULL, NULL, 239, 'post', 'acf-field', 1, 236, NULL, NULL, 'Texto', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2021-09-02 16:51:22', '2021-09-02 19:27:32', 1, NULL, NULL, NULL, NULL, 1, NULL),
(235, NULL, NULL, 240, 'post', 'acf-field', 1, 236, NULL, NULL, 'Área de Conteúdo 2', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2021-09-02 16:59:14', '2021-09-02 19:27:32', 1, NULL, NULL, NULL, NULL, 1, NULL),
(236, NULL, NULL, 241, 'post', 'acf-field', 1, 236, NULL, NULL, 'Mapa', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2021-09-02 16:59:14', '2021-09-02 19:27:32', 1, NULL, NULL, NULL, NULL, 1, NULL),
(237, NULL, NULL, 242, 'post', 'acf-field', 1, 11, NULL, NULL, 'Área de Conteúdo 6', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2021-09-02 17:43:34', '2021-09-02 19:27:32', 1, NULL, NULL, NULL, NULL, 1, NULL),
(238, NULL, NULL, 243, 'post', 'acf-field', 1, 11, NULL, NULL, 'Título', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2021-09-02 17:43:34', '2021-09-02 19:27:32', 1, NULL, NULL, NULL, NULL, 1, NULL),
(239, NULL, NULL, 244, 'post', 'acf-field', 1, 11, NULL, NULL, 'Lista', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2021-09-02 17:43:34', '2021-09-02 19:27:32', 1, NULL, NULL, NULL, NULL, 1, NULL),
(240, NULL, NULL, 245, 'post', 'acf-field', 1, 11, NULL, NULL, 'Link', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2021-09-02 17:43:34', '2021-09-02 19:27:32', 1, NULL, NULL, NULL, NULL, 1, NULL),
(241, NULL, NULL, 246, 'post', 'acf-field', 1, 244, NULL, NULL, 'Cliente Ou Fornecedor', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2021-09-02 17:49:01', '2021-09-02 19:27:32', 1, NULL, NULL, NULL, NULL, 1, NULL),
(243, NULL, NULL, 5, 'post', 'wpcf7_contact_form', 1, 0, NULL, NULL, 'Formulário de contato 1', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2021-09-02 17:55:27', '2021-09-02 19:27:32', 1, NULL, NULL, NULL, NULL, 0, NULL),
(244, 'https://localhost/UniformesMatrix/2021/09/02/248/', '49:1d0980e25ec7f92f4b947343b469fad7', 248, 'post', 'nav_menu_item', 1, 0, NULL, NULL, '', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2021-09-02 17:56:51', '2021-09-02 22:40:32', 1, NULL, NULL, NULL, NULL, 0, NULL),
(245, 'https://localhost/UniformesMatrix/2021/09/02/249/', '49:4889ab8c1e0771003946275bca21d01f', 249, 'post', 'nav_menu_item', 1, 0, NULL, NULL, '', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2021-09-02 17:56:52', '2021-09-02 22:40:32', 1, NULL, NULL, NULL, NULL, 0, NULL),
(246, 'https://localhost/UniformesMatrix/2021/09/02/250/', '49:22762743aaaa37473ed06f44c7afe024', 250, 'post', 'nav_menu_item', 1, 0, NULL, NULL, '', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2021-09-02 17:56:52', '2021-09-02 22:40:32', 1, NULL, NULL, NULL, NULL, 0, NULL),
(247, 'https://localhost/UniformesMatrix/2021/09/02/251/', '49:fc1cea7c652e3e7cf5c1ca099b742530', 251, 'post', 'nav_menu_item', 1, 0, NULL, NULL, '', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2021-09-02 17:56:52', '2021-09-02 22:40:32', 1, NULL, NULL, NULL, NULL, 0, NULL),
(248, NULL, NULL, 252, 'post', 'wpcf7_contact_form', 1, 0, NULL, NULL, 'Formulário do Modal', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2021-09-02 17:58:41', '2021-09-02 19:27:32', 1, NULL, NULL, NULL, NULL, 0, NULL),
(249, NULL, NULL, 254, 'post', 'acf-field', 1, 253, NULL, NULL, 'Área de Conteúdo 1', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2021-09-02 18:58:19', '2021-09-02 19:27:32', 1, NULL, NULL, NULL, NULL, 1, NULL),
(250, NULL, NULL, 253, 'post', 'acf-field-group', 1, 0, NULL, NULL, 'Categorias', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2021-09-02 18:58:19', '2021-09-02 19:27:32', 1, NULL, NULL, NULL, NULL, 0, NULL),
(251, NULL, NULL, 255, 'post', 'acf-field', 1, 253, NULL, NULL, 'Imagem', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2021-09-02 18:58:19', '2021-09-02 19:27:32', 1, NULL, NULL, NULL, NULL, 1, NULL),
(252, NULL, NULL, 256, 'post', 'acf-field', 1, 253, NULL, NULL, 'Descrição', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2021-09-02 18:58:19', '2021-09-02 19:27:32', 1, NULL, NULL, NULL, NULL, 1, NULL),
(253, NULL, NULL, 257, 'post', 'produtos', 1, 0, NULL, NULL, 'Título do Produto', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2021-09-02 19:00:53', '2021-09-02 19:27:32', 1, NULL, NULL, NULL, NULL, 0, NULL),
(254, NULL, NULL, 258, 'post', 'produtos', 1, 0, NULL, NULL, 'Título do Produto', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2021-09-02 19:02:52', '2021-09-02 19:27:32', 1, NULL, NULL, NULL, NULL, 0, NULL),
(255, NULL, NULL, 259, 'post', 'produtos', 1, 0, NULL, NULL, 'Título do Produto', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2021-09-02 19:03:18', '2021-09-02 19:27:32', 1, NULL, NULL, NULL, NULL, 0, NULL),
(256, NULL, NULL, 260, 'post', 'produtos', 1, 0, NULL, NULL, 'Título do Produto', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2021-09-02 19:04:08', '2021-09-02 19:27:32', 1, NULL, NULL, NULL, NULL, 0, NULL),
(257, NULL, NULL, 261, 'post', 'produtos', 1, 0, NULL, NULL, 'Título do Produto', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2021-09-02 19:04:20', '2021-09-02 19:27:32', 1, NULL, NULL, NULL, NULL, 0, NULL),
(258, NULL, NULL, 262, 'post', 'produtos', 1, 0, NULL, NULL, 'Título do Produto', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2021-09-02 19:04:52', '2021-09-02 19:27:32', 1, NULL, NULL, NULL, NULL, 0, NULL),
(259, NULL, NULL, 263, 'post', 'produtos', 1, 0, NULL, NULL, 'Título do Produto', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2021-09-02 19:05:07', '2021-09-02 19:27:32', 1, NULL, NULL, NULL, NULL, 0, NULL),
(260, NULL, NULL, 265, 'post', 'acf-field', 1, 264, NULL, NULL, 'Área de Conteúdo 1', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2021-09-02 19:07:52', '2021-09-02 19:27:32', 1, NULL, NULL, NULL, NULL, 1, NULL),
(261, NULL, NULL, 264, 'post', 'acf-field-group', 1, 0, NULL, NULL, 'Box Seo', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2021-09-02 19:07:52', '2021-09-02 19:27:32', 1, NULL, NULL, NULL, NULL, 0, NULL),
(262, NULL, NULL, 266, 'post', 'acf-field', 1, 264, NULL, NULL, 'Imagem', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2021-09-02 19:07:53', '2021-09-02 19:27:32', 1, NULL, NULL, NULL, NULL, 1, NULL),
(263, NULL, NULL, 267, 'post', 'produtos', 1, 0, NULL, NULL, 'Título do Produto', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2021-09-02 19:22:15', '2021-09-02 19:27:32', 1, NULL, NULL, NULL, NULL, 0, NULL),
(264, NULL, NULL, 268, 'post', 'produtos', 1, 0, NULL, NULL, 'Título do Produto', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2021-09-02 19:22:24', '2021-09-02 19:27:32', 1, NULL, NULL, NULL, NULL, 0, NULL),
(265, 'https://localhost/UniformesMatrix/produtos/titulo-do-produto-11/', '64:7220d3400a40d780549f2934e734a725', 269, 'post', 'produtos', 1, 0, NULL, NULL, 'Título do Produto', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2021-09-02 19:30:07', '2021-09-02 22:30:14', 1, NULL, NULL, NULL, NULL, 0, NULL),
(266, 'https://localhost/UniformesMatrix/produtos/titulo-do-produto-12/', '64:ef8a2f81de4abff8eacac6c8818ca996', 270, 'post', 'produtos', 1, 0, NULL, NULL, 'Título do Produto', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2021-09-02 19:30:26', '2021-09-02 22:30:41', 1, NULL, NULL, NULL, NULL, 0, NULL),
(267, 'https://localhost/UniformesMatrix/produtos/titulo-do-produto-13/', '64:a5a1b072cb4426f1baf762773fb43553', 271, 'post', 'produtos', 1, 0, NULL, NULL, 'Título do Produto', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2021-09-02 19:31:01', '2021-09-02 22:31:04', 1, NULL, NULL, NULL, NULL, 0, NULL),
(268, 'https://localhost/UniformesMatrix/produtos/titulo-do-produto-14/', '64:008969296698c573bae55809ae16b387', 272, 'post', 'produtos', 1, 0, NULL, NULL, 'Título do Produto', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2021-09-02 19:31:15', '2021-09-02 22:31:28', 1, NULL, NULL, NULL, NULL, 0, NULL),
(269, 'https://localhost/UniformesMatrix/produtos/titulo-do-produto-15/', '64:6e9fea3b40cab8c50a86b7f0dc38dcb6', 273, 'post', 'produtos', 1, 0, NULL, NULL, 'Título do Produto', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2021-09-02 19:31:57', '2021-09-02 22:31:57', 1, NULL, NULL, NULL, NULL, 0, NULL),
(270, 'https://localhost/UniformesMatrix/produtos/titulo-do-produto-16/', '64:531b52d96c97fb8d929d36f651a0d127', 274, 'post', 'produtos', 1, 0, NULL, NULL, 'Título do Produto', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2021-09-02 19:32:22', '2021-09-02 22:32:38', 1, NULL, NULL, NULL, NULL, 0, NULL),
(271, 'https://localhost/UniformesMatrix/produtos/titulo-do-produto-17/', '64:a5635dbf8d20b1364533052ccd853c06', 275, 'post', 'produtos', 1, 0, NULL, NULL, 'Título do Produto', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2021-09-02 19:33:10', '2021-09-02 22:33:13', 1, NULL, NULL, NULL, NULL, 0, NULL),
(272, 'https://localhost/UniformesMatrix/produtos/titulo-do-produto-18/', '64:a1fb84512e79b042432015e7d0b21443', 276, 'post', 'produtos', 1, 0, NULL, NULL, 'Título do Produto', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2021-09-02 19:33:21', '2021-09-02 22:33:34', 1, NULL, NULL, NULL, NULL, 0, NULL),
(273, 'https://localhost/UniformesMatrix/produtos/titulo-do-produto-19/', '64:e1a7a43c9cf1cf6dcb2ea98b1f65f3ba', 277, 'post', 'produtos', 1, 0, NULL, NULL, 'Título do Produto', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2021-09-02 19:33:55', '2021-09-02 22:33:58', 1, NULL, NULL, NULL, NULL, 0, NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_yoast_indexable_hierarchy`
--

CREATE TABLE `wp_yoast_indexable_hierarchy` (
  `indexable_id` int(11) UNSIGNED NOT NULL,
  `ancestor_id` int(11) UNSIGNED NOT NULL,
  `depth` int(11) UNSIGNED DEFAULT NULL,
  `blog_id` bigint(20) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `wp_yoast_indexable_hierarchy`
--

INSERT INTO `wp_yoast_indexable_hierarchy` (`indexable_id`, `ancestor_id`, `depth`, `blog_id`) VALUES
(1, 0, 0, 1),
(4, 0, 0, 1),
(5, 0, 0, 1),
(6, 0, 0, 1),
(7, 0, 0, 1),
(8, 0, 0, 1),
(10, 0, 0, 1),
(12, 0, 0, 1),
(13, 0, 0, 1),
(124, 0, 0, 1),
(125, 0, 0, 1),
(126, 0, 0, 1),
(127, 128, 1, 1),
(128, 0, 0, 1),
(129, 128, 1, 1),
(130, 128, 1, 1),
(131, 128, 1, 1),
(132, 13, 1, 1),
(133, 13, 1, 1),
(134, 13, 1, 1),
(135, 13, 1, 1),
(136, 13, 1, 1),
(137, 13, 1, 1),
(138, 13, 1, 1),
(139, 13, 1, 1),
(140, 13, 1, 1),
(141, 13, 1, 1),
(142, 13, 1, 1),
(143, 13, 1, 1),
(144, 13, 1, 1),
(145, 13, 1, 1),
(146, 13, 1, 1),
(149, 128, 1, 1),
(150, 0, 0, 1),
(151, 0, 0, 1),
(152, 0, 0, 1),
(153, 0, 0, 1),
(154, 0, 0, 1),
(155, 0, 0, 1),
(156, 0, 0, 1),
(157, 0, 0, 1),
(160, 128, 1, 1),
(161, 128, 1, 1),
(162, 128, 1, 1),
(163, 128, 1, 1),
(164, 128, 1, 1),
(165, 128, 1, 1),
(166, 128, 1, 1),
(167, 128, 1, 1),
(168, 13, 1, 1),
(169, 13, 1, 1),
(170, 13, 1, 1),
(171, 172, 1, 1),
(172, 0, 0, 1),
(173, 172, 1, 1),
(174, 175, 1, 1),
(175, 0, 0, 1),
(176, 175, 1, 1),
(185, 0, 0, 1),
(186, 13, 1, 1),
(187, 13, 1, 1),
(188, 13, 1, 1),
(189, 13, 1, 1),
(190, 13, 1, 1),
(191, 0, 0, 1),
(193, 194, 1, 1),
(194, 0, 0, 1),
(195, 194, 1, 1),
(197, 194, 1, 1),
(198, 194, 1, 1),
(204, 0, 0, 1),
(205, 0, 0, 1),
(206, 0, 0, 1),
(207, 208, 1, 1),
(208, 0, 0, 1),
(209, 208, 1, 1),
(210, 208, 1, 1),
(211, 208, 1, 1),
(212, 208, 1, 1),
(213, 208, 1, 1),
(214, 208, 1, 1),
(215, 208, 1, 1),
(216, 208, 1, 1),
(217, 208, 1, 1),
(218, 208, 1, 1),
(219, 0, 0, 1),
(220, 0, 0, 1),
(221, 0, 0, 1),
(222, 0, 0, 1),
(223, 0, 0, 1),
(224, 0, 0, 1),
(225, 0, 0, 1),
(226, 0, 0, 1),
(227, 226, 1, 1),
(228, 226, 1, 1),
(229, 226, 1, 1),
(230, 226, 1, 1),
(231, 232, 1, 1),
(232, 0, 0, 1),
(233, 232, 1, 1),
(234, 232, 1, 1),
(235, 232, 1, 1),
(236, 232, 1, 1),
(237, 13, 1, 1),
(238, 13, 1, 1),
(239, 13, 1, 1),
(240, 13, 1, 1),
(241, 13, 2, 1),
(241, 239, 1, 1),
(243, 0, 0, 1),
(244, 0, 0, 1),
(245, 0, 0, 1),
(246, 0, 0, 1),
(247, 0, 0, 1),
(248, 0, 0, 1),
(249, 250, 1, 1),
(250, 0, 0, 1),
(251, 250, 1, 1),
(252, 250, 1, 1),
(253, 0, 0, 1),
(254, 0, 0, 1),
(255, 0, 0, 1),
(256, 0, 0, 1),
(257, 0, 0, 1),
(258, 0, 0, 1),
(259, 0, 0, 1),
(260, 261, 1, 1),
(261, 0, 0, 1),
(262, 261, 1, 1),
(263, 0, 0, 1),
(264, 0, 0, 1),
(265, 0, 0, 1),
(266, 0, 0, 1),
(267, 0, 0, 1),
(268, 0, 0, 1),
(269, 0, 0, 1),
(270, 0, 0, 1),
(271, 0, 0, 1),
(272, 0, 0, 1),
(273, 0, 0, 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_yoast_migrations`
--

CREATE TABLE `wp_yoast_migrations` (
  `id` int(11) UNSIGNED NOT NULL,
  `version` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `wp_yoast_migrations`
--

INSERT INTO `wp_yoast_migrations` (`id`, `version`) VALUES
(1, '20171228151840'),
(2, '20171228151841'),
(3, '20190529075038'),
(4, '20191011111109'),
(5, '20200408101900'),
(6, '20200420073606'),
(7, '20200428123747'),
(8, '20200428194858'),
(9, '20200429105310'),
(10, '20200430075614'),
(11, '20200430150130'),
(12, '20200507054848'),
(13, '20200513133401'),
(14, '20200609154515'),
(15, '20200616130143'),
(16, '20200617122511'),
(17, '20200702141921'),
(18, '20200728095334'),
(19, '20201202144329'),
(20, '20201216124002'),
(21, '20201216141134');

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_yoast_primary_term`
--

CREATE TABLE `wp_yoast_primary_term` (
  `id` int(11) UNSIGNED NOT NULL,
  `post_id` bigint(20) DEFAULT NULL,
  `term_id` bigint(20) DEFAULT NULL,
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `blog_id` bigint(20) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `wp_yoast_primary_term`
--

INSERT INTO `wp_yoast_primary_term` (`id`, `post_id`, `term_id`, `taxonomy`, `created_at`, `updated_at`, `blog_id`) VALUES
(1, 257, 4, 'categoria', '2021-09-02 19:01:34', '2021-09-02 22:01:34', 1),
(2, 258, 4, 'categoria', '2021-09-02 19:02:55', '2021-09-02 22:02:55', 1),
(3, 259, 4, 'categoria', '2021-09-02 19:03:39', '2021-09-02 22:03:39', 1),
(4, 260, 4, 'categoria', '2021-09-02 19:04:11', '2021-09-02 22:04:11', 1),
(5, 261, 4, 'categoria', '2021-09-02 19:04:33', '2021-09-02 22:04:33', 1),
(6, 262, 4, 'categoria', '2021-09-02 19:04:58', '2021-09-02 22:04:58', 1),
(7, 263, 4, 'categoria', '2021-09-02 19:05:20', '2021-09-02 22:05:20', 1),
(8, 267, 6, 'categoria', '2021-09-02 19:22:15', '2021-09-02 22:22:58', 1),
(9, 268, 6, 'categoria', '2021-09-02 19:22:45', '2021-09-02 22:22:45', 1),
(10, 269, 3, 'categoria', '2021-09-02 19:30:13', '2021-09-02 22:30:13', 1),
(11, 270, 3, 'categoria', '2021-09-02 19:30:41', '2021-09-02 22:30:41', 1),
(12, 271, 3, 'categoria', '2021-09-02 19:31:04', '2021-09-02 22:31:04', 1),
(13, 272, 3, 'categoria', '2021-09-02 19:31:27', '2021-09-02 22:31:28', 1),
(14, 273, 3, 'categoria', '2021-09-02 19:31:57', '2021-09-02 22:31:57', 1),
(15, 274, 3, 'categoria', '2021-09-02 19:32:37', '2021-09-02 22:32:37', 1),
(16, 275, 3, 'categoria', '2021-09-02 19:33:12', '2021-09-02 22:33:13', 1),
(17, 276, 3, 'categoria', '2021-09-02 19:33:33', '2021-09-02 22:33:33', 1),
(18, 277, 3, 'categoria', '2021-09-02 19:33:58', '2021-09-02 22:33:58', 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_yoast_seo_links`
--

CREATE TABLE `wp_yoast_seo_links` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `url` varchar(255) DEFAULT NULL,
  `post_id` bigint(20) UNSIGNED DEFAULT NULL,
  `target_post_id` bigint(20) UNSIGNED DEFAULT NULL,
  `type` varchar(8) DEFAULT NULL,
  `indexable_id` int(11) UNSIGNED DEFAULT NULL,
  `target_indexable_id` int(11) UNSIGNED DEFAULT NULL,
  `height` int(11) UNSIGNED DEFAULT NULL,
  `width` int(11) UNSIGNED DEFAULT NULL,
  `size` int(11) UNSIGNED DEFAULT NULL,
  `language` varchar(32) DEFAULT NULL,
  `region` varchar(32) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `wp_yoast_seo_links`
--

INSERT INTO `wp_yoast_seo_links` (`id`, `url`, `post_id`, `target_post_id`, `type`, `indexable_id`, `target_indexable_id`, `height`, `width`, `size`, `language`, `region`) VALUES
(1, 'http://localhost/UniformesMatrix/wp-admin/', 2, NULL, 'internal', 3, NULL, NULL, NULL, NULL, NULL, NULL);

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Índices para tabela `wp_comments`
--
ALTER TABLE `wp_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Índices para tabela `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Índices para tabela `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`),
  ADD KEY `autoload` (`autoload`);

--
-- Índices para tabela `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Índices para tabela `wp_posts`
--
ALTER TABLE `wp_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Índices para tabela `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Índices para tabela `wp_terms`
--
ALTER TABLE `wp_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Índices para tabela `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Índices para tabela `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Índices para tabela `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Índices para tabela `wp_users`
--
ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- Índices para tabela `wp_yoast_indexable`
--
ALTER TABLE `wp_yoast_indexable`
  ADD PRIMARY KEY (`id`),
  ADD KEY `object_type_and_sub_type` (`object_type`,`object_sub_type`),
  ADD KEY `object_id_and_type` (`object_id`,`object_type`),
  ADD KEY `permalink_hash_and_object_type` (`permalink_hash`,`object_type`),
  ADD KEY `subpages` (`post_parent`,`object_type`,`post_status`,`object_id`),
  ADD KEY `prominent_words` (`prominent_words_version`,`object_type`,`object_sub_type`,`post_status`);

--
-- Índices para tabela `wp_yoast_indexable_hierarchy`
--
ALTER TABLE `wp_yoast_indexable_hierarchy`
  ADD PRIMARY KEY (`indexable_id`,`ancestor_id`),
  ADD KEY `indexable_id` (`indexable_id`),
  ADD KEY `ancestor_id` (`ancestor_id`),
  ADD KEY `depth` (`depth`);

--
-- Índices para tabela `wp_yoast_migrations`
--
ALTER TABLE `wp_yoast_migrations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `wp_yoast_migrations_version` (`version`);

--
-- Índices para tabela `wp_yoast_primary_term`
--
ALTER TABLE `wp_yoast_primary_term`
  ADD PRIMARY KEY (`id`),
  ADD KEY `post_taxonomy` (`post_id`,`taxonomy`),
  ADD KEY `post_term` (`post_id`,`term_id`);

--
-- Índices para tabela `wp_yoast_seo_links`
--
ALTER TABLE `wp_yoast_seo_links`
  ADD PRIMARY KEY (`id`),
  ADD KEY `link_direction` (`post_id`,`type`),
  ADD KEY `indexable_link_direction` (`indexable_id`,`type`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=395;

--
-- AUTO_INCREMENT de tabela `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=825;

--
-- AUTO_INCREMENT de tabela `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=278;

--
-- AUTO_INCREMENT de tabela `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de tabela `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de tabela `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de tabela `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT de tabela `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `wp_yoast_indexable`
--
ALTER TABLE `wp_yoast_indexable`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=274;

--
-- AUTO_INCREMENT de tabela `wp_yoast_migrations`
--
ALTER TABLE `wp_yoast_migrations`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT de tabela `wp_yoast_primary_term`
--
ALTER TABLE `wp_yoast_primary_term`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT de tabela `wp_yoast_seo_links`
--
ALTER TABLE `wp_yoast_seo_links`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
