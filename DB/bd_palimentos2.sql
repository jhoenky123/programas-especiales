-- phpMyAdmin SQL Dump
-- version 5.0.4deb2+deb11u1
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Tiempo de generación: 24-07-2023 a las 17:10:02
-- Versión del servidor: 10.5.15-MariaDB-0+deb11u1
-- Versión de PHP: 7.4.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `bd_palimentos`
--
CREATE DATABASE IF NOT EXISTS `bd_palimentos` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `bd_palimentos`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cms_apicustom`
--

DROP TABLE IF EXISTS `cms_apicustom`;
CREATE TABLE `cms_apicustom` (
  `id` int(10) UNSIGNED NOT NULL,
  `permalink` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tabel` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `aksi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `kolom` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `orderby` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sub_query_1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sql_where` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `keterangan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameter` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `method_type` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameters` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `responses` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cms_apikey`
--

DROP TABLE IF EXISTS `cms_apikey`;
CREATE TABLE `cms_apikey` (
  `id` int(10) UNSIGNED NOT NULL,
  `screetkey` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hit` int(11) DEFAULT NULL,
  `status` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cms_dashboard`
--

DROP TABLE IF EXISTS `cms_dashboard`;
CREATE TABLE `cms_dashboard` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id_cms_privileges` int(11) DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cms_email_queues`
--

DROP TABLE IF EXISTS `cms_email_queues`;
CREATE TABLE `cms_email_queues` (
  `id` int(10) UNSIGNED NOT NULL,
  `send_at` datetime DEFAULT NULL,
  `email_recipient` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_from_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_from_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_cc_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_subject` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_attachments` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_sent` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cms_email_templates`
--

DROP TABLE IF EXISTS `cms_email_templates`;
CREATE TABLE `cms_email_templates` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `from_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `from_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cc_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `cms_email_templates`
--

INSERT INTO `cms_email_templates` (`id`, `name`, `slug`, `subject`, `content`, `description`, `from_name`, `from_email`, `cc_email`, `created_at`, `updated_at`) VALUES
(1, 'Email Template Forgot Password Backend', 'forgot_password_backend', NULL, '<p>Hi,</p><p>Someone requested forgot password, here is your new password : </p><p>[password]</p><p><br></p><p>--</p><p>Regards,</p><p>Admin</p>', '[password]', 'System', 'system@crudbooster.com', NULL, '2023-06-06 20:55:02', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cms_logs`
--

DROP TABLE IF EXISTS `cms_logs`;
CREATE TABLE `cms_logs` (
  `id` int(10) UNSIGNED NOT NULL,
  `ipaddress` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `useragent` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id_cms_users` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `cms_logs`
--

INSERT INTO `cms_logs` (`id`, `ipaddress`, `useragent`, `url`, `description`, `details`, `id_cms_users`, `created_at`, `updated_at`) VALUES
(1, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2023-06-06 20:55:19', NULL),
(2, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2023-06-07 15:24:14', NULL),
(3, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'admin@crudbooster.com logout', '', 1, '2023-06-07 15:46:27', NULL),
(4, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2023-06-07 20:02:55', NULL),
(5, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2023-06-08 18:01:40', NULL),
(6, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2023-06-08 18:23:27', NULL),
(7, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2023-06-08 20:40:44', NULL),
(8, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2023-06-20 18:32:02', NULL),
(9, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/menu_management/edit-save/1', 'Update data DESPACHO at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>name</td><td>RECEPCION</td><td>DESPACHO</td></tr><tr><td>color</td><td></td><td>normal</td></tr></tbody></table>', 1, '2023-06-20 18:38:16', NULL),
(10, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/menu_management/edit-save/1', 'Actualizar información DESPACHO en Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody></tbody></table>', 1, '2023-06-20 18:56:44', NULL),
(11, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/users/add-save', 'Añadir nueva información brigada en Users Management', '', 1, '2023-06-20 18:59:39', NULL),
(12, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'admin@crudbooster.com se desconectó', '', 1, '2023-06-20 19:01:40', NULL),
(13, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'Ingreso de brigada@gmail.com desde la Dirección IP 127.0.0.1', '', 2, '2023-06-20 19:02:30', NULL),
(14, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'brigada@gmail.com se desconectó', '', 2, '2023-06-20 19:15:41', NULL),
(15, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'Ingreso de brigada@gmail.com desde la Dirección IP 127.0.0.1', '', 2, '2023-06-20 19:15:43', NULL),
(16, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'brigada@gmail.com se desconectó', '', 2, '2023-06-20 19:15:48', NULL),
(17, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'Ingreso de admin@crudbooster.com desde la Dirección IP 127.0.0.1', '', 1, '2023-06-20 19:15:52', NULL),
(18, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'admin@crudbooster.com se desconectó', '', 1, '2023-06-20 20:50:25', NULL),
(19, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'Ingreso de admin@crudbooster.com desde la Dirección IP 127.0.0.1', '', 1, '2023-06-20 20:50:28', NULL),
(20, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'Ingreso de admin@crudbooster.com desde la Dirección IP 127.0.0.1', '', 1, '2023-07-01 13:54:59', NULL),
(21, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'Ingreso de admin@crudbooster.com desde la Dirección IP 127.0.0.1', '', 1, '2023-07-10 19:37:33', NULL),
(22, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.5060.134 Safari/537.36', 'http://programas.mercal.gob.ve/ProgramasAlimentos/public/admin/login', 'Ingreso de admin@crudbooster.com desde la Dirección IP 127.0.0.1', '', 1, '2023-07-19 17:14:36', NULL),
(23, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.5060.134 Safari/537.36', 'http://programas.mercal.gob.ve/ProgramasAlimentos/public/admin/users/delete/2', 'Eliminar información brigada en Users Management', '', 1, '2023-07-19 17:15:07', NULL),
(24, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.5060.134 Safari/537.36', 'http://programas.mercal.gob.ve/ProgramasAlimentos/public/admin/users/add-save', 'Añadir nueva información admin en Users Management', '', 1, '2023-07-19 17:15:24', NULL),
(25, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.5060.134 Safari/537.36', 'http://programas.mercal.gob.ve/ProgramasAlimentos/public/admin/users/add-save', 'Añadir nueva información brigadista en Users Management', '', 1, '2023-07-19 17:15:44', NULL),
(26, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.5060.134 Safari/537.36', 'http://programas.mercal.gob.ve/ProgramasAlimentos/public/admin/recepcions/add-save', 'Añadir nueva información  en DESPACHO', '', 1, '2023-07-19 17:32:04', NULL),
(27, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.5060.134 Safari/537.36', 'http://programas.mercal.gob.ve/ProgramasAlimentos/public/admin/recepcions/edit-save/1', 'Actualizar información  en DESPACHO', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody></tbody></table>', 1, '2023-07-19 18:16:15', NULL),
(28, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.5060.134 Safari/537.36', 'http://programas.mercal.gob.ve/ProgramasAlimentos/public/admin/recepcions/edit-save/1', 'Actualizar información  en DESPACHO', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody></tbody></table>', 1, '2023-07-19 18:16:26', NULL),
(29, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.5060.134 Safari/537.36', 'http://programas.mercal.gob.ve/ProgramasAlimentos/public/admin/recepcions/edit-save/1', 'Actualizar información  en DESPACHO', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody></tbody></table>', 1, '2023-07-19 18:24:52', NULL),
(30, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.5060.134 Safari/537.36', 'http://programas.mercal.gob.ve/ProgramasAlimentos/public/admin/recepcions/edit-save/1', 'Actualizar información  en DESPACHO', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody></tbody></table>', 1, '2023-07-19 18:32:41', NULL),
(31, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.5060.134 Safari/537.36', 'http://programas.mercal.gob.ve/ProgramasAlimentos/public/admin/recepcions/add-save', 'Añadir nueva información  en DESPACHO', '', 1, '2023-07-19 18:34:43', NULL),
(32, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.5060.134 Safari/537.36', 'http://programas.mercal.gob.ve/ProgramasAlimentos/public/admin/recepcions/add-save', 'Añadir nueva información  en DESPACHO', '', 1, '2023-07-19 19:37:54', NULL),
(33, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.5060.134 Safari/537.36', 'http://programas.mercal.gob.ve/ProgramasAlimentos/public/admin/login', 'Ingreso de admin@site.com desde la Dirección IP 127.0.0.1', '', 3, '2023-07-19 19:51:46', NULL),
(34, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.5060.134 Safari/537.36', 'http://programas.mercal.gob.ve/ProgramasAlimentos/public/admin/logout', 'admin@site.com se desconectó', '', 3, '2023-07-19 21:21:26', NULL),
(35, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.5060.134 Safari/537.36', 'http://programas.mercal.gob.ve/ProgramasAlimentos/public/admin/login', 'Ingreso de brigada1@gmail.com desde la Dirección IP 127.0.0.1', '', 4, '2023-07-19 21:21:29', NULL),
(36, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.5060.134 Safari/537.36', 'http://programas.mercal.gob.ve/ProgramasAlimentos/public/admin/logout', 'brigada1@gmail.com se desconectó', '', 4, '2023-07-19 21:21:40', NULL),
(37, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.5060.134 Safari/537.36', 'http://programas.mercal.gob.ve/ProgramasAlimentos/public/admin/login', 'Ingreso de brigada1@gmail.com desde la Dirección IP 127.0.0.1', '', 4, '2023-07-19 21:21:46', NULL),
(38, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.5060.134 Safari/537.36', 'http://programas.mercal.gob.ve/ProgramasAlimentos/public/admin/logout', 'brigada1@gmail.com se desconectó', '', 4, '2023-07-19 21:21:49', NULL),
(39, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.5060.134 Safari/537.36', 'http://programas.mercal.gob.ve/ProgramasAlimentos/public/admin/login', 'Ingreso de admin@site.com desde la Dirección IP 127.0.0.1', '', 3, '2023-07-19 21:21:52', NULL),
(40, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.5060.134 Safari/537.36', 'http://programas.mercal.gob.ve/ProgramasAlimentos/public/admin/logout', 'admin@site.com se desconectó', '', 3, '2023-07-19 21:29:30', NULL),
(41, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.5060.134 Safari/537.36', 'http://programas.mercal.gob.ve/ProgramasAlimentos/public/admin/login', 'Ingreso de brigada1@gmail.com desde la Dirección IP 127.0.0.1', '', 4, '2023-07-19 21:29:34', NULL),
(42, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.5060.134 Safari/537.36', 'http://programas.mercal.gob.ve/ProgramasAlimentos/public/admin/logout', 'brigada1@gmail.com se desconectó', '', 4, '2023-07-19 21:36:09', NULL),
(43, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.5060.134 Safari/537.36', 'http://programas.mercal.gob.ve/ProgramasAlimentos/public/admin/login', 'Ingreso de admin@site.com desde la Dirección IP 127.0.0.1', '', 3, '2023-07-19 21:36:20', NULL),
(44, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.5060.134 Safari/537.36', 'http://programas.mercal.gob.ve/ProgramasAlimentos/public/admin/logout', 'admin@site.com se desconectó', '', 3, '2023-07-19 21:45:57', NULL),
(45, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.5060.134 Safari/537.36', 'http://programas.mercal.gob.ve/ProgramasAlimentos/public/admin/login', 'Ingreso de brigada1@gmail.com desde la Dirección IP 127.0.0.1', '', 4, '2023-07-19 21:46:00', NULL),
(46, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.5060.134 Safari/537.36', 'http://programas.mercal.gob.ve/ProgramasAlimentos/public/admin/logout', 'brigada1@gmail.com se desconectó', '', 4, '2023-07-19 21:50:42', NULL),
(47, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.5060.134 Safari/537.36', 'http://programas.mercal.gob.ve/ProgramasAlimentos/public/admin/login', 'Ingreso de admin@site.com desde la Dirección IP 127.0.0.1', '', 3, '2023-07-19 21:50:45', NULL),
(48, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.5060.134 Safari/537.36', 'http://programas.mercal.gob.ve/ProgramasAlimentos/public/admin/logout', 'admin@site.com se desconectó', '', 3, '2023-07-19 21:52:50', NULL),
(49, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.5060.134 Safari/537.36', 'http://programas.mercal.gob.ve/ProgramasAlimentos/public/admin/login', 'Ingreso de brigada1@gmail.com desde la Dirección IP 127.0.0.1', '', 4, '2023-07-19 21:53:03', NULL),
(50, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.5060.134 Safari/537.36', 'http://programas.mercal.gob.ve/ProgramasAlimentos/public/admin/recepcions/add-save', 'Añadir nueva información  en DESPACHO', '', 4, '2023-07-19 21:58:20', NULL),
(51, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.5060.134 Safari/537.36', 'http://programas.mercal.gob.ve/ProgramasAlimentos/public/admin/logout', 'brigada1@gmail.com se desconectó', '', 4, '2023-07-19 21:58:48', NULL),
(52, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.5060.134 Safari/537.36', 'http://programas.mercal.gob.ve/ProgramasAlimentos/public/admin/login', 'Ingreso de admin@site.com desde la Dirección IP 127.0.0.1', '', 3, '2023-07-19 21:58:54', NULL),
(53, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'Ingreso de admin@crudbooster.com desde la Dirección IP 127.0.0.1', '', 1, '2023-07-22 02:12:08', NULL),
(54, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/users/add-save', 'Añadir nueva información supervisor en Users Management', '', 1, '2023-07-22 02:24:03', NULL),
(55, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'admin@crudbooster.com se desconectó', '', 1, '2023-07-22 02:24:12', NULL),
(56, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'Ingreso de supervisor@gmail.com desde la Dirección IP 127.0.0.1', '', 5, '2023-07-22 02:24:23', NULL),
(57, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'supervisor@gmail.com se desconectó', '', 5, '2023-07-22 02:24:29', NULL),
(58, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'Ingreso de admin@crudbooster.com desde la Dirección IP 127.0.0.1', '', 1, '2023-07-22 02:24:31', NULL),
(59, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/menu_management/edit-save/1', 'Actualizar información DESPACHO en Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody></tbody></table>', 1, '2023-07-22 02:24:44', NULL),
(60, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'admin@crudbooster.com se desconectó', '', 1, '2023-07-22 02:24:51', NULL),
(61, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'Ingreso de supervisor@gmail.com desde la Dirección IP 127.0.0.1', '', 5, '2023-07-22 02:24:54', NULL),
(62, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'supervisor@gmail.com se desconectó', '', 5, '2023-07-22 02:25:22', NULL),
(63, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'Ingreso de admin@crudbooster.com desde la Dirección IP 127.0.0.1', '', 1, '2023-07-22 02:25:27', NULL),
(64, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'Ingreso de admin@crudbooster.com desde la Dirección IP 127.0.0.1', '', 1, '2023-07-24 18:15:17', NULL),
(65, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'admin@crudbooster.com se desconectó', '', 1, '2023-07-24 19:10:08', NULL),
(66, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'Ingreso de supervisor@gmail.com desde la Dirección IP 127.0.0.1', '', 5, '2023-07-24 19:10:11', NULL),
(67, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'supervisor@gmail.com se desconectó', '', 5, '2023-07-24 19:10:20', NULL),
(68, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'Ingreso de supervisor@gmail.com desde la Dirección IP 127.0.0.1', '', 5, '2023-07-24 19:10:22', NULL),
(69, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'supervisor@gmail.com se desconectó', '', 5, '2023-07-24 19:10:24', NULL),
(70, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'Ingreso de admin@crudbooster.com desde la Dirección IP 127.0.0.1', '', 1, '2023-07-24 19:10:30', NULL),
(71, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'admin@crudbooster.com se desconectó', '', 1, '2023-07-24 19:13:59', NULL),
(72, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'Ingreso de supervisor@gmail.com desde la Dirección IP 127.0.0.1', '', 5, '2023-07-24 19:14:02', NULL),
(73, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'supervisor@gmail.com se desconectó', '', 5, '2023-07-24 19:14:11', NULL),
(74, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'Ingreso de admin@crudbooster.com desde la Dirección IP 127.0.0.1', '', 1, '2023-07-24 19:15:06', NULL),
(75, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/users/delete/4', 'Eliminar información brigadista en Users Management', '', 1, '2023-07-24 19:15:44', NULL),
(76, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/users/add-save', 'Añadir nueva información brigadista en Users Management', '', 1, '2023-07-24 19:16:02', NULL),
(77, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'admin@crudbooster.com se desconectó', '', 1, '2023-07-24 19:16:07', NULL),
(78, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'Ingreso de brigada@gmail.com desde la Dirección IP 127.0.0.1', '', 6, '2023-07-24 19:16:13', NULL),
(79, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'brigada@gmail.com se desconectó', '', 6, '2023-07-24 19:17:34', NULL),
(80, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'Ingreso de supervisor@gmail.com desde la Dirección IP 127.0.0.1', '', 5, '2023-07-24 19:17:39', NULL),
(81, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'supervisor@gmail.com se desconectó', '', 5, '2023-07-24 19:18:07', NULL),
(82, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'Ingreso de brigada@gmail.com desde la Dirección IP 127.0.0.1', '', 6, '2023-07-24 19:18:10', NULL),
(83, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'brigada@gmail.com se desconectó', '', 6, '2023-07-24 19:18:30', NULL),
(84, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'Ingreso de brigada@gmail.com desde la Dirección IP 127.0.0.1', '', 6, '2023-07-24 19:18:31', NULL),
(85, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'brigada@gmail.com se desconectó', '', 6, '2023-07-24 19:18:37', NULL),
(86, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'Ingreso de admin@crudbooster.com desde la Dirección IP 127.0.0.1', '', 1, '2023-07-24 19:18:40', NULL),
(87, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'admin@crudbooster.com se desconectó', '', 1, '2023-07-24 19:18:47', NULL),
(88, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'Ingreso de supervisor@gmail.com desde la Dirección IP 127.0.0.1', '', 5, '2023-07-24 19:18:49', NULL),
(89, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'supervisor@gmail.com se desconectó', '', 5, '2023-07-24 19:19:31', NULL),
(90, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'Ingreso de admin@crudbooster.com desde la Dirección IP 127.0.0.1', '', 1, '2023-07-24 19:19:35', NULL),
(91, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/recepcions/add-save', 'Añadir nueva información  en DESPACHO', '', 1, '2023-07-24 20:18:10', NULL),
(92, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'admin@crudbooster.com se desconectó', '', 1, '2023-07-24 20:24:34', NULL),
(93, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'Ingreso de brigada@gmail.com desde la Dirección IP 127.0.0.1', '', 6, '2023-07-24 20:24:37', NULL),
(94, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/recepcions/add-save', 'Añadir nueva información  en DESPACHO', '', 6, '2023-07-24 20:25:19', NULL),
(95, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'brigada@gmail.com se desconectó', '', 6, '2023-07-24 20:25:32', NULL),
(96, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'Ingreso de supervisor@gmail.com desde la Dirección IP 127.0.0.1', '', 5, '2023-07-24 20:25:35', NULL),
(97, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'supervisor@gmail.com se desconectó', '', 5, '2023-07-24 20:26:32', NULL),
(98, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'Ingreso de admin@crudbooster.com desde la Dirección IP 127.0.0.1', '', 1, '2023-07-24 20:26:36', NULL),
(99, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/recepcions/delete/5', 'Eliminar información 5 en DESPACHO', '', 1, '2023-07-24 20:26:40', NULL),
(100, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/recepcions/add-save', 'Añadir nueva información  en DESPACHO', '', 1, '2023-07-24 21:15:29', NULL),
(101, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/recepcions/delete/1', 'Eliminar información 1 en DESPACHO', '', 1, '2023-07-24 21:18:01', NULL),
(102, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/recepcions/delete/2', 'Eliminar información 2 en DESPACHO', '', 1, '2023-07-24 21:18:12', NULL),
(103, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/recepcions/delete/7', 'Eliminar información 7 en DESPACHO', '', 1, '2023-07-24 21:18:14', NULL),
(104, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/recepcions/delete/6', 'Eliminar información 6 en DESPACHO', '', 1, '2023-07-24 21:18:17', NULL),
(105, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/recepcions/delete/4', 'Eliminar información 4 en DESPACHO', '', 1, '2023-07-24 21:18:20', NULL),
(106, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/recepcions/delete/3', 'Eliminar información 3 en DESPACHO', '', 1, '2023-07-24 21:18:22', NULL),
(107, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/recepcions/add-save', 'Añadir nueva información  en DESPACHO', '', 1, '2023-07-24 21:23:23', NULL),
(108, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/recepcions/add-save', 'Añadir nueva información  en DESPACHO', '', 1, '2023-07-24 21:26:25', NULL),
(109, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'admin@crudbooster.com se desconectó', '', 1, '2023-07-24 21:27:13', NULL),
(110, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'Ingreso de brigada@gmail.com desde la Dirección IP 127.0.0.1', '', 6, '2023-07-24 21:27:16', NULL),
(111, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/recepcions/add-save', 'Añadir nueva información  en DESPACHO', '', 6, '2023-07-24 21:41:16', NULL),
(112, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/recepcions/add-save', 'Añadir nueva información  en DESPACHO', '', 6, '2023-07-24 21:48:22', NULL),
(113, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/recepcions/add-save', 'Añadir nueva información  en DESPACHO', '', 6, '2023-07-24 21:51:01', NULL),
(114, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/recepcions/add-save', 'Añadir nueva información  en DESPACHO', '', 6, '2023-07-24 21:52:22', NULL),
(115, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'brigada@gmail.com se desconectó', '', 6, '2023-07-24 22:46:22', NULL),
(116, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'Ingreso de admin@crudbooster.com desde la Dirección IP 127.0.0.1', '', 1, '2023-07-24 22:46:25', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cms_menus`
--

DROP TABLE IF EXISTS `cms_menus`;
CREATE TABLE `cms_menus` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'url',
  `path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `is_dashboard` tinyint(1) NOT NULL DEFAULT 0,
  `id_cms_privileges` int(11) DEFAULT NULL,
  `sorting` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `cms_menus`
--

INSERT INTO `cms_menus` (`id`, `name`, `type`, `path`, `color`, `icon`, `parent_id`, `is_active`, `is_dashboard`, `id_cms_privileges`, `sorting`, `created_at`, `updated_at`) VALUES
(1, 'DESPACHO', 'Route', 'AdminRecepcions1ControllerGetIndex', 'normal', 'fa fa-truck', 0, 1, 0, 1, 1, '2023-06-06 20:57:47', '2023-07-22 02:24:44');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cms_menus_privileges`
--

DROP TABLE IF EXISTS `cms_menus_privileges`;
CREATE TABLE `cms_menus_privileges` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_cms_menus` int(11) DEFAULT NULL,
  `id_cms_privileges` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `cms_menus_privileges`
--

INSERT INTO `cms_menus_privileges` (`id`, `id_cms_menus`, `id_cms_privileges`) VALUES
(5, 1, 2),
(6, 1, 1),
(7, 1, 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cms_moduls`
--

DROP TABLE IF EXISTS `cms_moduls`;
CREATE TABLE `cms_moduls` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `table_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `controller` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_protected` tinyint(1) NOT NULL DEFAULT 0,
  `is_active` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `cms_moduls`
--

INSERT INTO `cms_moduls` (`id`, `name`, `icon`, `path`, `table_name`, `controller`, `is_protected`, `is_active`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Notifications', 'fa fa-cog', 'notifications', 'cms_notifications', 'NotificationsController', 1, 1, '2023-06-06 20:55:02', NULL, NULL),
(2, 'Privileges', 'fa fa-cog', 'privileges', 'cms_privileges', 'PrivilegesController', 1, 1, '2023-06-06 20:55:02', NULL, NULL),
(3, 'Privileges Roles', 'fa fa-cog', 'privileges_roles', 'cms_privileges_roles', 'PrivilegesRolesController', 1, 1, '2023-06-06 20:55:02', NULL, NULL),
(4, 'Users Management', 'fa fa-users', 'users', 'cms_users', 'AdminCmsUsersController', 0, 1, '2023-06-06 20:55:02', NULL, NULL),
(5, 'Settings', 'fa fa-cog', 'settings', 'cms_settings', 'SettingsController', 1, 1, '2023-06-06 20:55:02', NULL, NULL),
(6, 'Module Generator', 'fa fa-database', 'module_generator', 'cms_moduls', 'ModulsController', 1, 1, '2023-06-06 20:55:02', NULL, NULL),
(7, 'Menu Management', 'fa fa-bars', 'menu_management', 'cms_menus', 'MenusController', 1, 1, '2023-06-06 20:55:02', NULL, NULL),
(8, 'Email Templates', 'fa fa-envelope-o', 'email_templates', 'cms_email_templates', 'EmailTemplatesController', 1, 1, '2023-06-06 20:55:02', NULL, NULL),
(9, 'Statistic Builder', 'fa fa-dashboard', 'statistic_builder', 'cms_statistics', 'StatisticBuilderController', 1, 1, '2023-06-06 20:55:02', NULL, NULL),
(10, 'API Generator', 'fa fa-cloud-download', 'api_generator', '', 'ApiCustomController', 1, 1, '2023-06-06 20:55:02', NULL, NULL),
(11, 'Log User Access', 'fa fa-flag-o', 'logs', 'cms_logs', 'LogsController', 1, 1, '2023-06-06 20:55:02', NULL, NULL),
(12, 'DESPACHO', 'fa fa-truck', 'recepcions', 'recepcions', 'AdminRecepcions1Controller', 0, 0, '2023-06-06 20:57:47', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cms_notifications`
--

DROP TABLE IF EXISTS `cms_notifications`;
CREATE TABLE `cms_notifications` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_cms_users` int(11) DEFAULT NULL,
  `content` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_read` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cms_privileges`
--

DROP TABLE IF EXISTS `cms_privileges`;
CREATE TABLE `cms_privileges` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_superadmin` tinyint(1) DEFAULT NULL,
  `theme_color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `cms_privileges`
--

INSERT INTO `cms_privileges` (`id`, `name`, `is_superadmin`, `theme_color`, `created_at`, `updated_at`) VALUES
(1, 'Super Administrator', 1, 'skin-blue-light', '2023-06-06 20:55:02', NULL),
(2, 'brigadista', 0, 'skin-purple', NULL, NULL),
(3, 'supervisor', 0, 'skin-green-light', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cms_privileges_roles`
--

DROP TABLE IF EXISTS `cms_privileges_roles`;
CREATE TABLE `cms_privileges_roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `is_visible` tinyint(1) DEFAULT NULL,
  `is_create` tinyint(1) DEFAULT NULL,
  `is_read` tinyint(1) DEFAULT NULL,
  `is_edit` tinyint(1) DEFAULT NULL,
  `is_delete` tinyint(1) DEFAULT NULL,
  `id_cms_privileges` int(11) DEFAULT NULL,
  `id_cms_moduls` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `cms_privileges_roles`
--

INSERT INTO `cms_privileges_roles` (`id`, `is_visible`, `is_create`, `is_read`, `is_edit`, `is_delete`, `id_cms_privileges`, `id_cms_moduls`, `created_at`, `updated_at`) VALUES
(14, 1, 1, 1, 1, 1, 1, 12, NULL, NULL),
(15, 1, 1, 1, 1, 1, 1, 4, NULL, NULL),
(16, 1, 1, 1, 1, 0, 3, 12, NULL, NULL),
(17, 1, 1, 1, 0, 0, 2, 12, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cms_settings`
--

DROP TABLE IF EXISTS `cms_settings`;
CREATE TABLE `cms_settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content_input_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dataenum` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `helper` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `group_setting` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `label` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `cms_settings`
--

INSERT INTO `cms_settings` (`id`, `name`, `content`, `content_input_type`, `dataenum`, `helper`, `created_at`, `updated_at`, `group_setting`, `label`) VALUES
(1, 'login_background_color', NULL, 'text', NULL, 'Input hexacode', '2023-06-06 20:55:02', NULL, 'Login Register Style', 'Login Background Color'),
(2, 'login_font_color', NULL, 'text', NULL, 'Input hexacode', '2023-06-06 20:55:02', NULL, 'Login Register Style', 'Login Font Color'),
(3, 'login_background_image', NULL, 'upload_image', NULL, NULL, '2023-06-06 20:55:02', NULL, 'Login Register Style', 'Login Background Image'),
(4, 'email_sender', 'support@crudbooster.com', 'text', NULL, NULL, '2023-06-06 20:55:02', NULL, 'Email Setting', 'Email Sender'),
(5, 'smtp_driver', 'mail', 'select', 'smtp,mail,sendmail', NULL, '2023-06-06 20:55:02', NULL, 'Email Setting', 'Mail Driver'),
(6, 'smtp_host', '', 'text', NULL, NULL, '2023-06-06 20:55:02', NULL, 'Email Setting', 'SMTP Host'),
(7, 'smtp_port', '25', 'text', NULL, 'default 25', '2023-06-06 20:55:02', NULL, 'Email Setting', 'SMTP Port'),
(8, 'smtp_username', '', 'text', NULL, NULL, '2023-06-06 20:55:02', NULL, 'Email Setting', 'SMTP Username'),
(9, 'smtp_password', '', 'text', NULL, NULL, '2023-06-06 20:55:02', NULL, 'Email Setting', 'SMTP Password'),
(10, 'appname', 'Programas Especiales', 'text', NULL, NULL, '2023-06-06 20:55:02', NULL, 'Application Setting', 'Application Name'),
(11, 'default_paper_size', 'Legal', 'text', NULL, 'Paper size, ex : A4, Legal, etc', '2023-06-06 20:55:02', NULL, 'Application Setting', 'Default Paper Print Size'),
(12, 'logo', NULL, 'upload_image', NULL, NULL, '2023-06-06 20:55:02', NULL, 'Application Setting', 'Logo'),
(13, 'favicon', NULL, 'upload_image', NULL, NULL, '2023-06-06 20:55:02', NULL, 'Application Setting', 'Favicon'),
(14, 'api_debug_mode', 'true', 'select', 'true,false', NULL, '2023-06-06 20:55:02', NULL, 'Application Setting', 'API Debug Mode'),
(15, 'google_api_key', NULL, 'text', NULL, NULL, '2023-06-06 20:55:02', NULL, 'Application Setting', 'Google API Key'),
(16, 'google_fcm_key', NULL, 'text', NULL, NULL, '2023-06-06 20:55:02', NULL, 'Application Setting', 'Google FCM Key');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cms_statistics`
--

DROP TABLE IF EXISTS `cms_statistics`;
CREATE TABLE `cms_statistics` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cms_statistic_components`
--

DROP TABLE IF EXISTS `cms_statistic_components`;
CREATE TABLE `cms_statistic_components` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_cms_statistics` int(11) DEFAULT NULL,
  `componentID` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `component_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `area_name` varchar(55) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sorting` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `config` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cms_users`
--

DROP TABLE IF EXISTS `cms_users`;
CREATE TABLE `cms_users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id_cms_privileges` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `cms_users`
--

INSERT INTO `cms_users` (`id`, `name`, `photo`, `email`, `password`, `id_cms_privileges`, `created_at`, `updated_at`, `status`) VALUES
(1, 'Super Admin', NULL, 'admin@crudbooster.com', '$2y$10$iQgi3o5TLK1Kv9xT3nBD/OlJz42grwqLZpKqy8q3u6DuTKACPhDT2', 1, '2023-06-06 20:55:02', NULL, 'Active'),
(3, 'admin', NULL, 'admin@site.com', '$2y$10$HPERVAExAhbu7/3Lqr6n.OiFkuw/cLTR104iDdpwYKDJuKbSg3kya', 1, '2023-07-19 17:15:24', NULL, NULL),
(5, 'supervisor', NULL, 'supervisor@gmail.com', '$2y$10$Fngkl4.w.9nSCnSBZbSqg.XOBWxJtKb4ty6xHyJ2x0dp3Ls6cG7UC', 3, '2023-07-22 02:24:03', NULL, NULL),
(6, 'brigadista', NULL, 'brigada@gmail.com', '$2y$10$N7HXxtJ74seHI7ydKc1R2uv2Y7pNuc4veMat2KdjI7O6JbPXP4R.y', 2, '2023-07-24 19:16:02', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `codigosunagro`
--

DROP TABLE IF EXISTS `codigosunagro`;
CREATE TABLE `codigosunagro` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `codigosunagro` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nominstitucion_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estados`
--

DROP TABLE IF EXISTS `estados`;
CREATE TABLE `estados` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `estados` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `estados`
--

INSERT INTO `estados` (`id`, `estados`, `created_at`, `updated_at`) VALUES
(1, 'Amanzonas', NULL, NULL),
(2, 'Anzoátegui', NULL, NULL),
(3, 'Apure', NULL, NULL),
(4, 'Aragua', NULL, NULL),
(5, 'Barinas', NULL, NULL),
(6, 'Bolívar', NULL, NULL),
(7, 'Carabobo', NULL, NULL),
(8, 'Cojedes', NULL, NULL),
(9, 'Delta Amacuro', NULL, NULL),
(10, 'Distrito Capital', NULL, NULL),
(11, 'Falcón', NULL, NULL),
(12, 'Guárico', NULL, NULL),
(13, 'Lara', NULL, NULL),
(14, 'Mérida', NULL, NULL),
(15, 'Miranda', NULL, NULL),
(16, 'Monagas', NULL, NULL),
(17, 'Nueva Esparta', NULL, NULL),
(18, 'Portuguesa', NULL, NULL),
(19, 'Sucre', NULL, NULL),
(20, 'Táchira', NULL, NULL),
(21, 'Trujillo', NULL, NULL),
(22, 'Vargas', NULL, NULL),
(23, 'Yaracuy', NULL, NULL),
(24, 'Zulia', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2016_08_07_145904_add_table_cms_apicustom', 1),
(4, '2016_08_07_150834_add_table_cms_dashboard', 1),
(5, '2016_08_07_151210_add_table_cms_logs', 1),
(6, '2016_08_07_151211_add_details_cms_logs', 1),
(7, '2016_08_07_152014_add_table_cms_privileges', 1),
(8, '2016_08_07_152214_add_table_cms_privileges_roles', 1),
(9, '2016_08_07_152320_add_table_cms_settings', 1),
(10, '2016_08_07_152421_add_table_cms_users', 1),
(11, '2016_08_07_154624_add_table_cms_menus_privileges', 1),
(12, '2016_08_07_154624_add_table_cms_moduls', 1),
(13, '2016_08_17_225409_add_status_cms_users', 1),
(14, '2016_08_20_125418_add_table_cms_notifications', 1),
(15, '2016_09_04_033706_add_table_cms_email_queues', 1),
(16, '2016_09_16_035347_add_group_setting', 1),
(17, '2016_09_16_045425_add_label_setting', 1),
(18, '2016_09_17_104728_create_nullable_cms_apicustom', 1),
(19, '2016_10_01_141740_add_method_type_apicustom', 1),
(20, '2016_10_01_141846_add_parameters_apicustom', 1),
(21, '2016_10_01_141934_add_responses_apicustom', 1),
(22, '2016_10_01_144826_add_table_apikey', 1),
(23, '2016_11_14_141657_create_cms_menus', 1),
(24, '2016_11_15_132350_create_cms_email_templates', 1),
(25, '2016_11_15_190410_create_cms_statistics', 1),
(26, '2016_11_17_102740_create_cms_statistic_components', 1),
(27, '2017_06_06_164501_add_deleted_at_cms_moduls', 1),
(28, '2019_08_19_000000_create_failed_jobs_table', 1),
(29, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(30, '2023_04_12_173404_create_recepcions_table', 1),
(31, '2023_04_12_173650_create_supervisors_table', 1),
(34, '2023_05_29_140706_parroquia', 1),
(35, '2023_05_29_142416_nominstitucion', 1),
(36, '2023_05_29_143256_codigosunagro', 1),
(38, '2023_05_17_153208_municipio', 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `municipio`
--

DROP TABLE IF EXISTS `municipio`;
CREATE TABLE `municipio` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `municipio` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `estado_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `municipio`
--

INSERT INTO `municipio` (`id`, `municipio`, `estado_id`, `created_at`, `updated_at`) VALUES
(1, 'prueba 1', 1, NULL, NULL),
(2, 'prueba 2', 2, NULL, NULL),
(3, 'prueba 4', 3, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `nominstitucion`
--

DROP TABLE IF EXISTS `nominstitucion`;
CREATE TABLE `nominstitucion` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nominstitucion` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parroquia_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `parroquia`
--

DROP TABLE IF EXISTS `parroquia`;
CREATE TABLE `parroquia` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `parroquia` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `municipio_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `parroquia`
--

INSERT INTO `parroquia` (`id`, `parroquia`, `municipio_id`, `created_at`, `updated_at`) VALUES
(3, 'parroquia prueba 1', 1, NULL, NULL),
(4, 'parroquia prueba 2', 2, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `recepcions`
--

DROP TABLE IF EXISTS `recepcions`;
CREATE TABLE `recepcions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `status` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pendiente',
  `fecha` datetime NOT NULL,
  `codnotaentrega` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `estado` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `municipio` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parroquia` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nombreescuela` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `escodsunagro` int(11) NOT NULL,
  `direccion` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nomprosocial` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `noenterespon` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `numbeneficiario` int(11) NOT NULL,
  `nomresponsable` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `codcedula1` int(11) NOT NULL,
  `numtelefono1` int(11) NOT NULL,
  `cendisabastece` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fechaultdespacho` datetime NOT NULL,
  `persrespdespacho` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `numtelefono2` int(11) NOT NULL,
  `cargoretira` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cantrecibido` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pollo` int(11) NOT NULL,
  `carne` int(11) NOT NULL,
  `mortadela` int(11) NOT NULL,
  `fruver` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `frutas` int(11) NOT NULL,
  `verduras` int(11) NOT NULL,
  `hortalizas` int(11) NOT NULL,
  `observaciones` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `datos` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nomsumidatos` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `codcedula2` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cargosumi` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nomfuncinspec` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `codcedula3` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cargofuncio` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `recepcions`
--

INSERT INTO `recepcions` (`id`, `status`, `fecha`, `codnotaentrega`, `estado`, `municipio`, `parroquia`, `nombreescuela`, `escodsunagro`, `direccion`, `nomprosocial`, `noenterespon`, `numbeneficiario`, `nomresponsable`, `codcedula1`, `numtelefono1`, `cendisabastece`, `fechaultdespacho`, `persrespdespacho`, `numtelefono2`, `cargoretira`, `cantrecibido`, `pollo`, `carne`, `mortadela`, `fruver`, `frutas`, `verduras`, `hortalizas`, `observaciones`, `datos`, `nomsumidatos`, `codcedula2`, `cargosumi`, `nomfuncinspec`, `codcedula3`, `cargofuncio`, `created_at`, `updated_at`) VALUES
(11, 'pendiente', '2023-07-24 00:00:00', '', '2', '1', '1', 'dfgdf', 34, 'dgg', 'dgdg', 'dgfgd', 345, 'dfg', 4353, 345, 'dfgd', '2023-07-24 00:00:00', 'dfsgfdg', 345, 'dgfd', '', 4, 4, 4, '', 4, 4, 4, '', '', '', '', '', '', '', '', '2023-07-24 21:48:22', NULL),
(12, 'pendiente', '2023-07-24 00:00:00', '', '2', '2', '2', 'sdfdf', 43535, 'tdsgfd', 'sdfsf', 'sfdf', 345, 'sdfsf', 45345, 3453, 'sdfdsf', '2023-07-24 00:00:00', '34543', 435345, 'rtrt', '', 5, 5, 5, '', 5, 5, 5, '', '', '', '', '', '', '', '', '2023-07-24 21:51:01', NULL),
(13, 'pendiente', '2023-07-24 00:00:00', '00003', '2', '1', '1', 'dhdfh', 455, 'dfgdg', 'dfgdgfd', 'gdg', 45645, 'dgd', 453, 345, 'sdfsd', '2023-07-24 00:00:00', 'sdfsdf', 453, '34', '', 4, 4, 4, '', 4, 4, 4, '', '', '', '', '', '', '', '', '2023-07-24 21:52:22', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `status_planilla`
--

DROP TABLE IF EXISTS `status_planilla`;
CREATE TABLE `status_planilla` (
  `id` int(11) NOT NULL,
  `status` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `status_planilla`
--

INSERT INTO `status_planilla` (`id`, `status`) VALUES
(1, 'aprovado'),
(2, 'pendiente');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `supervisors`
--

DROP TABLE IF EXISTS `supervisors`;
CREATE TABLE `supervisors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nombre` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `cms_apicustom`
--
ALTER TABLE `cms_apicustom`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `cms_apikey`
--
ALTER TABLE `cms_apikey`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `cms_dashboard`
--
ALTER TABLE `cms_dashboard`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `cms_email_queues`
--
ALTER TABLE `cms_email_queues`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `cms_email_templates`
--
ALTER TABLE `cms_email_templates`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `cms_logs`
--
ALTER TABLE `cms_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `cms_menus`
--
ALTER TABLE `cms_menus`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `cms_menus_privileges`
--
ALTER TABLE `cms_menus_privileges`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `cms_moduls`
--
ALTER TABLE `cms_moduls`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `cms_notifications`
--
ALTER TABLE `cms_notifications`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `cms_privileges`
--
ALTER TABLE `cms_privileges`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `cms_privileges_roles`
--
ALTER TABLE `cms_privileges_roles`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `cms_settings`
--
ALTER TABLE `cms_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `cms_statistics`
--
ALTER TABLE `cms_statistics`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `cms_statistic_components`
--
ALTER TABLE `cms_statistic_components`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `cms_users`
--
ALTER TABLE `cms_users`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `codigosunagro`
--
ALTER TABLE `codigosunagro`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `estados`
--
ALTER TABLE `estados`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `municipio`
--
ALTER TABLE `municipio`
  ADD PRIMARY KEY (`id`),
  ADD KEY `estado_id` (`estado_id`);

--
-- Indices de la tabla `nominstitucion`
--
ALTER TABLE `nominstitucion`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `parroquia`
--
ALTER TABLE `parroquia`
  ADD PRIMARY KEY (`id`),
  ADD KEY `municipio_id` (`municipio_id`);

--
-- Indices de la tabla `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indices de la tabla `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indices de la tabla `recepcions`
--
ALTER TABLE `recepcions`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `status_planilla`
--
ALTER TABLE `status_planilla`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `supervisors`
--
ALTER TABLE `supervisors`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `cms_apicustom`
--
ALTER TABLE `cms_apicustom`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `cms_apikey`
--
ALTER TABLE `cms_apikey`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `cms_dashboard`
--
ALTER TABLE `cms_dashboard`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `cms_email_queues`
--
ALTER TABLE `cms_email_queues`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `cms_email_templates`
--
ALTER TABLE `cms_email_templates`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `cms_logs`
--
ALTER TABLE `cms_logs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=117;

--
-- AUTO_INCREMENT de la tabla `cms_menus`
--
ALTER TABLE `cms_menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `cms_menus_privileges`
--
ALTER TABLE `cms_menus_privileges`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `cms_moduls`
--
ALTER TABLE `cms_moduls`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `cms_notifications`
--
ALTER TABLE `cms_notifications`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `cms_privileges`
--
ALTER TABLE `cms_privileges`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `cms_privileges_roles`
--
ALTER TABLE `cms_privileges_roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT de la tabla `cms_settings`
--
ALTER TABLE `cms_settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT de la tabla `cms_statistics`
--
ALTER TABLE `cms_statistics`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `cms_statistic_components`
--
ALTER TABLE `cms_statistic_components`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `cms_users`
--
ALTER TABLE `cms_users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `codigosunagro`
--
ALTER TABLE `codigosunagro`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `estados`
--
ALTER TABLE `estados`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT de la tabla `municipio`
--
ALTER TABLE `municipio`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `nominstitucion`
--
ALTER TABLE `nominstitucion`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `parroquia`
--
ALTER TABLE `parroquia`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `recepcions`
--
ALTER TABLE `recepcions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de la tabla `status_planilla`
--
ALTER TABLE `status_planilla`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `supervisors`
--
ALTER TABLE `supervisors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `municipio`
--
ALTER TABLE `municipio`
  ADD CONSTRAINT `municipio_ibfk_1` FOREIGN KEY (`estado_id`) REFERENCES `estados` (`id`);

--
-- Filtros para la tabla `parroquia`
--
ALTER TABLE `parroquia`
  ADD CONSTRAINT `parroquia_ibfk_1` FOREIGN KEY (`municipio_id`) REFERENCES `municipio` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
