-- phpMyAdmin SQL Dump
-- version 5.0.4deb2+deb11u1
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Tiempo de generación: 11-08-2023 a las 12:23:26
-- Versión del servidor: 10.5.19-MariaDB-0+deb11u2
-- Versión de PHP: 7.4.33

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
  `permalink` varchar(255) DEFAULT NULL,
  `tabel` varchar(255) DEFAULT NULL,
  `aksi` varchar(255) DEFAULT NULL,
  `kolom` varchar(255) DEFAULT NULL,
  `orderby` varchar(255) DEFAULT NULL,
  `sub_query_1` varchar(255) DEFAULT NULL,
  `sql_where` varchar(255) DEFAULT NULL,
  `nama` varchar(255) DEFAULT NULL,
  `keterangan` varchar(255) DEFAULT NULL,
  `parameter` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `method_type` varchar(25) DEFAULT NULL,
  `parameters` longtext DEFAULT NULL,
  `responses` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cms_apikey`
--

DROP TABLE IF EXISTS `cms_apikey`;
CREATE TABLE `cms_apikey` (
  `id` int(10) UNSIGNED NOT NULL,
  `screetkey` varchar(255) DEFAULT NULL,
  `hit` int(11) DEFAULT NULL,
  `status` varchar(25) NOT NULL DEFAULT 'active',
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
  `name` varchar(255) DEFAULT NULL,
  `id_cms_privileges` int(11) DEFAULT NULL,
  `content` longtext DEFAULT NULL,
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
  `email_recipient` varchar(255) DEFAULT NULL,
  `email_from_email` varchar(255) DEFAULT NULL,
  `email_from_name` varchar(255) DEFAULT NULL,
  `email_cc_email` varchar(255) DEFAULT NULL,
  `email_subject` varchar(255) DEFAULT NULL,
  `email_content` text DEFAULT NULL,
  `email_attachments` text DEFAULT NULL,
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
  `name` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `content` longtext DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `from_name` varchar(255) DEFAULT NULL,
  `from_email` varchar(255) DEFAULT NULL,
  `cc_email` varchar(255) DEFAULT NULL,
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
  `ipaddress` varchar(50) DEFAULT NULL,
  `useragent` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `details` text DEFAULT NULL,
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
(116, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'Ingreso de admin@crudbooster.com desde la Dirección IP 127.0.0.1', '', 1, '2023-07-24 22:46:25', NULL),
(117, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/115.0.0.0 Safari/537.36', 'http://programas.mercal.gob.ve/ProgramasAlimentos/public/admin/login', 'Ingreso de admin@site.com desde la Dirección IP 127.0.0.1', '', 3, '2023-08-11 17:44:32', NULL),
(118, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/115.0.0.0 Safari/537.36', 'http://programas.mercal.gob.ve/ProgramasAlimentos/public/admin/recepcions/add-save', 'Añadir nueva información  en DESPACHO', '', 3, '2023-08-11 19:13:20', NULL),
(119, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/115.0.0.0 Safari/537.36', 'http://programas.mercal.gob.ve/ProgramasAlimentos/public/admin/recepcions/add-save', 'Añadir nueva información  en DESPACHO', '', 3, '2023-08-11 19:14:36', NULL),
(120, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/115.0.0.0 Safari/537.36', 'http://programas.mercal.gob.ve/ProgramasAlimentos/public/admin/recepcions/add-save', 'Añadir nueva información  en DESPACHO', '', 3, '2023-08-11 19:16:43', NULL),
(121, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/115.0.0.0 Safari/537.36', 'http://programas.mercal.gob.ve/ProgramasAlimentos/public/admin/recepcions/add-save', 'Añadir nueva información  en DESPACHO', '', 3, '2023-08-11 19:18:46', NULL),
(122, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/115.0.0.0 Safari/537.36', 'http://programas.mercal.gob.ve/ProgramasAlimentos/public/admin/recepcions/delete/14', 'Eliminar información 14 en DESPACHO', '', 3, '2023-08-11 19:19:26', NULL),
(123, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/115.0.0.0 Safari/537.36', 'http://programas.mercal.gob.ve/ProgramasAlimentos/public/admin/recepcions/delete/15', 'Eliminar información 15 en DESPACHO', '', 3, '2023-08-11 19:19:39', NULL),
(124, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/115.0.0.0 Safari/537.36', 'http://programas.mercal.gob.ve/ProgramasAlimentos/public/admin/recepcions/delete/16', 'Eliminar información 16 en DESPACHO', '', 3, '2023-08-11 19:19:42', NULL),
(125, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/115.0.0.0 Safari/537.36', 'http://programas.mercal.gob.ve/ProgramasAlimentos/public/admin/recepcions/add-save', 'Añadir nueva información  en DESPACHO', '', 3, '2023-08-11 19:22:56', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cms_menus`
--

DROP TABLE IF EXISTS `cms_menus`;
CREATE TABLE `cms_menus` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `type` varchar(255) NOT NULL DEFAULT 'url',
  `path` varchar(255) DEFAULT NULL,
  `color` varchar(255) DEFAULT NULL,
  `icon` varchar(255) DEFAULT NULL,
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
  `name` varchar(255) DEFAULT NULL,
  `icon` varchar(255) DEFAULT NULL,
  `path` varchar(255) DEFAULT NULL,
  `table_name` varchar(255) DEFAULT NULL,
  `controller` varchar(255) DEFAULT NULL,
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
  `content` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
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
  `name` varchar(255) DEFAULT NULL,
  `is_superadmin` tinyint(1) DEFAULT NULL,
  `theme_color` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `cms_privileges`
--

INSERT INTO `cms_privileges` (`id`, `name`, `is_superadmin`, `theme_color`, `created_at`, `updated_at`) VALUES
(1, 'Super Administrator', 1, 'skin-purple', '2023-06-06 20:55:02', NULL),
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
(16, 1, 1, 1, 1, 0, 3, 12, NULL, NULL),
(17, 1, 1, 1, 0, 0, 2, 12, NULL, NULL),
(18, 1, 1, 1, 1, 1, 1, 12, NULL, NULL),
(19, 1, 1, 1, 1, 1, 1, 4, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cms_settings`
--

DROP TABLE IF EXISTS `cms_settings`;
CREATE TABLE `cms_settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `content` text DEFAULT NULL,
  `content_input_type` varchar(255) DEFAULT NULL,
  `dataenum` varchar(255) DEFAULT NULL,
  `helper` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `group_setting` varchar(255) DEFAULT NULL,
  `label` varchar(255) DEFAULT NULL
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
  `name` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
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
  `componentID` varchar(255) DEFAULT NULL,
  `component_name` varchar(255) DEFAULT NULL,
  `area_name` varchar(55) DEFAULT NULL,
  `sorting` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `config` longtext DEFAULT NULL,
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
  `name` varchar(255) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `id_cms_privileges` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL
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
  `codigosunagro` varchar(255) NOT NULL,
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
  `estados` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `estados`
--

INSERT INTO `estados` (`id`, `estados`, `created_at`, `updated_at`) VALUES
(1, 'Amazonas', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 'Anzoátegui', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, 'Apure', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4, 'Aragua', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(5, 'Barinas', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(6, 'Bolívar', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(7, 'Carabobo', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(8, 'Cojedes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(9, 'Delta Amacuro', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(10, 'Falcón', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(11, 'Guárico', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(12, 'Lara', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(13, 'Mérida', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(14, 'Miranda', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(15, 'Monagas', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(16, 'Nueva Esparta', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(17, 'Portuguesa', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(18, 'Sucre', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(19, 'Táchira', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(20, 'Trujillo', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(21, 'La Guaira', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(22, 'Yaracuy', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(23, 'Zulia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(24, 'Distrito Capital', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(25, 'Dependencias Federales', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
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
-- Estructura de tabla para la tabla `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
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
  `estado_id` bigint(20) UNSIGNED NOT NULL,
  `municipio` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `municipio`
--

INSERT INTO `municipio` (`id`, `estado_id`, `municipio`, `created_at`, `updated_at`) VALUES
(1, 1, 'Alto Orinoco', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 1, 'Atabapo', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, 1, 'Atures', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4, 1, 'Autana', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(5, 1, 'Manapiare', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(6, 1, 'Maroa', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(7, 1, 'Río Negro', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(8, 2, 'Anaco', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(9, 2, 'Aragua', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(10, 2, 'Manuel Ezequiel Bruzual', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(11, 2, 'Diego Bautista Urbaneja', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(12, 2, 'Fernando Peñalver', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(13, 2, 'Francisco Del Carmen Carvajal', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(14, 2, 'General Sir Arthur McGregor', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(15, 2, 'Guanta', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(16, 2, 'Independencia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(17, 2, 'José Gregorio Monagas', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(18, 2, 'Juan Antonio Sotillo', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(19, 2, 'Juan Manuel Cajigal', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(20, 2, 'Libertad', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(21, 2, 'Francisco de Miranda', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(22, 2, 'Pedro María Freites', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(23, 2, 'Píritu', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(24, 2, 'San José de Guanipa', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(25, 2, 'San Juan de Capistrano', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(26, 2, 'Santa Ana', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(27, 2, 'Simón Bolívar', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(28, 2, 'Simón Rodríguez', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(29, 3, 'Achaguas', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(30, 3, 'Biruaca', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(31, 3, 'Muñóz', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(32, 3, 'Páez', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(33, 3, 'Pedro Camejo', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(34, 3, 'Rómulo Gallegos', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(35, 3, 'San Fernando', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(36, 4, 'Atanasio Girardot', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(37, 4, 'Bolívar', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(38, 4, 'Camatagua', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(39, 4, 'Francisco Linares Alcántara', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(40, 4, 'José Ángel Lamas', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(41, 4, 'José Félix Ribas', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(42, 4, 'José Rafael Revenga', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(43, 4, 'Libertador', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(44, 4, 'Mario Briceño Iragorry', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(45, 4, 'Ocumare de la Costa de Oro', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(46, 4, 'San Casimiro', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(47, 4, 'San Sebastián', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(48, 4, 'Santiago Mariño', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(49, 4, 'Santos Michelena', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(50, 4, 'Sucre', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(51, 4, 'Tovar', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(52, 4, 'Urdaneta', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(53, 4, 'Zamora', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(54, 5, 'Alberto Arvelo Torrealba', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(55, 5, 'Andrés Eloy Blanco', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(56, 5, 'Antonio José de Sucre', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(57, 5, 'Arismendi', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(58, 5, 'Barinas', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(59, 5, 'Bolívar', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(60, 5, 'Cruz Paredes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(61, 5, 'Ezequiel Zamora', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(62, 5, 'Obispos', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(63, 5, 'Pedraza', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(64, 5, 'Rojas', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(65, 5, 'Sosa', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(66, 6, 'Caroní', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(67, 6, 'Cedeño', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(68, 6, 'El Callao', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(69, 6, 'Gran Sabana', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(70, 6, 'Heres', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(71, 6, 'Piar', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(72, 6, 'Angostura (Raúl Leoni)', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(73, 6, 'Roscio', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(74, 6, 'Sifontes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(75, 6, 'Sucre', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(76, 6, 'Padre Pedro Chien', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(77, 7, 'Bejuma', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(78, 7, 'Carlos Arvelo', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(79, 7, 'Diego Ibarra', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(80, 7, 'Guacara', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(81, 7, 'Juan José Mora', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(82, 7, 'Libertador', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(83, 7, 'Los Guayos', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(84, 7, 'Miranda', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(85, 7, 'Montalbán', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(86, 7, 'Naguanagua', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(87, 7, 'Puerto Cabello', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(88, 7, 'San Diego', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(89, 7, 'San Joaquín', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(90, 7, 'Valencia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(91, 8, 'Anzoátegui', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(92, 8, 'Tinaquillo', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(93, 8, 'Girardot', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(94, 8, 'Lima Blanco', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(95, 8, 'Pao de San Juan Bautista', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(96, 8, 'Ricaurte', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(97, 8, 'Rómulo Gallegos', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(98, 8, 'San Carlos', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(99, 8, 'Tinaco', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(100, 9, 'Antonio Díaz', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(101, 9, 'Casacoima', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(102, 9, 'Pedernales', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(103, 9, 'Tucupita', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(104, 10, 'Acosta', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(105, 10, 'Bolívar', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(106, 10, 'Buchivacoa', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(107, 10, 'Cacique Manaure', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(108, 10, 'Carirubana', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(109, 10, 'Colina', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(110, 10, 'Dabajuro', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(111, 10, 'Democracia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(112, 10, 'Falcón', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(113, 10, 'Federación', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(114, 10, 'Jacura', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(115, 10, 'José Laurencio Silva', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(116, 10, 'Los Taques', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(117, 10, 'Mauroa', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(118, 10, 'Miranda', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(119, 10, 'Monseñor Iturriza', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(120, 10, 'Palmasola', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(121, 10, 'Petit', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(122, 10, 'Píritu', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(123, 10, 'San Francisco', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(124, 10, 'Sucre', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(125, 10, 'Tocópero', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(126, 10, 'Unión', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(127, 10, 'Urumaco', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(128, 10, 'Zamora', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(129, 11, 'Camaguán', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(130, 11, 'Chaguaramas', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(131, 11, 'El Socorro', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(132, 11, 'José Félix Ribas', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(133, 11, 'José Tadeo Monagas', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(134, 11, 'Juan Germán Roscio', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(135, 11, 'Julián Mellado', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(136, 11, 'Las Mercedes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(137, 11, 'Leonardo Infante', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(138, 11, 'Pedro Zaraza', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(139, 11, 'Ortíz', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(140, 11, 'San Gerónimo de Guayabal', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(141, 11, 'San José de Guaribe', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(142, 11, 'Santa María de Ipire', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(143, 11, 'Sebastián Francisco de Miranda', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(144, 12, 'Andrés Eloy Blanco', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(145, 12, 'Crespo', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(146, 12, 'Iribarren', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(147, 12, 'Jiménez', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(148, 12, 'Morán', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(149, 12, 'Palavecino', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(150, 12, 'Simón Planas', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(151, 12, 'Torres', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(152, 12, 'Urdaneta', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(179, 13, 'Alberto Adriani', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(180, 13, 'Andrés Bello', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(181, 13, 'Antonio Pinto Salinas', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(182, 13, 'Aricagua', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(183, 13, 'Arzobispo Chacón', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(184, 13, 'Campo Elías', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(185, 13, 'Caracciolo Parra Olmedo', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(186, 13, 'Cardenal Quintero', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(187, 13, 'Guaraque', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(188, 13, 'Julio César Salas', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(189, 13, 'Justo Briceño', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(190, 13, 'Libertador', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(191, 13, 'Miranda', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(192, 13, 'Obispo Ramos de Lora', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(193, 13, 'Padre Noguera', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(194, 13, 'Pueblo Llano', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(195, 13, 'Rangel', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(196, 13, 'Rivas Dávila', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(197, 13, 'Santos Marquina', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(198, 13, 'Sucre', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(199, 13, 'Tovar', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(200, 13, 'Tulio Febres Cordero', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(201, 13, 'Zea', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(223, 14, 'Acevedo', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(224, 14, 'Andrés Bello', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(225, 14, 'Baruta', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(226, 14, 'Brión', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(227, 14, 'Buroz', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(228, 14, 'Carrizal', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(229, 14, 'Chacao', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(230, 14, 'Cristóbal Rojas', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(231, 14, 'El Hatillo', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(232, 14, 'Guaicaipuro', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(233, 14, 'Independencia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(234, 14, 'Lander', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(235, 14, 'Los Salias', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(236, 14, 'Páez', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(237, 14, 'Paz Castillo', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(238, 14, 'Pedro Gual', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(239, 14, 'Plaza', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(240, 14, 'Simón Bolívar', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(241, 14, 'Sucre', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(242, 14, 'Urdaneta', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(243, 14, 'Zamora', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(258, 15, 'Acosta', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(259, 15, 'Aguasay', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(260, 15, 'Bolívar', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(261, 15, 'Caripe', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(262, 15, 'Cedeño', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(263, 15, 'Ezequiel Zamora', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(264, 15, 'Libertador', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(265, 15, 'Maturín', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(266, 15, 'Piar', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(267, 15, 'Punceres', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(268, 15, 'Santa Bárbara', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(269, 15, 'Sotillo', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(270, 15, 'Uracoa', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(271, 16, 'Antolín del Campo', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(272, 16, 'Arismendi', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(273, 16, 'García', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(274, 16, 'Gómez', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(275, 16, 'Maneiro', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(276, 16, 'Marcano', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(277, 16, 'Mariño', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(278, 16, 'Península de Macanao', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(279, 16, 'Tubores', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(280, 16, 'Villalba', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(281, 16, 'Díaz', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(282, 17, 'Agua Blanca', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(283, 17, 'Araure', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(284, 17, 'Esteller', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(285, 17, 'Guanare', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(286, 17, 'Guanarito', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(287, 17, 'Monseñor José Vicente de Unda', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(288, 17, 'Ospino', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(289, 17, 'Páez', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(290, 17, 'Papelón', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(291, 17, 'San Genaro de Boconoíto', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(292, 17, 'San Rafael de Onoto', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(293, 17, 'Santa Rosalía', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(294, 17, 'Sucre', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(295, 17, 'Turén', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(296, 18, 'Andrés Eloy Blanco', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(297, 18, 'Andrés Mata', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(298, 18, 'Arismendi', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(299, 18, 'Benítez', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(300, 18, 'Bermúdez', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(301, 18, 'Bolívar', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(302, 18, 'Cajigal', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(303, 18, 'Cruz Salmerón Acosta', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(304, 18, 'Libertador', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(305, 18, 'Mariño', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(306, 18, 'Mejía', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(307, 18, 'Montes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(308, 18, 'Ribero', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(309, 18, 'Sucre', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(310, 18, 'Valdéz', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(341, 19, 'Andrés Bello', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(342, 19, 'Antonio Rómulo Costa', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(343, 19, 'Ayacucho', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(344, 19, 'Bolívar', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(345, 19, 'Cárdenas', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(346, 19, 'Córdoba', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(347, 19, 'Fernández Feo', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(348, 19, 'Francisco de Miranda', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(349, 19, 'García de Hevia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(350, 19, 'Guásimos', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(351, 19, 'Independencia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(352, 19, 'Jáuregui', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(353, 19, 'José María Vargas', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(354, 19, 'Junín', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(355, 19, 'Libertad', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(356, 19, 'Libertador', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(357, 19, 'Lobatera', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(358, 19, 'Michelena', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(359, 19, 'Panamericano', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(360, 19, 'Pedro María Ureña', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(361, 19, 'Rafael Urdaneta', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(362, 19, 'Samuel Darío Maldonado', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(363, 19, 'San Cristóbal', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(364, 19, 'Seboruco', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(365, 19, 'Simón Rodríguez', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(366, 19, 'Sucre', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(367, 19, 'Torbes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(368, 19, 'Uribante', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(369, 19, 'San Judas Tadeo', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(370, 20, 'Andrés Bello', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(371, 20, 'Boconó', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(372, 20, 'Bolívar', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(373, 20, 'Candelaria', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(374, 20, 'Carache', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(375, 20, 'Escuque', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(376, 20, 'José Felipe Márquez Cañizalez', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(377, 20, 'Juan Vicente Campos Elías', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(378, 20, 'La Ceiba', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(379, 20, 'Miranda', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(380, 20, 'Monte Carmelo', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(381, 20, 'Motatán', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(382, 20, 'Pampán', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(383, 20, 'Pampanito', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(384, 20, 'Rafael Rangel', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(385, 20, 'San Rafael de Carvajal', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(386, 20, 'Sucre', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(387, 20, 'Trujillo', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(388, 20, 'Urdaneta', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(389, 20, 'Valera', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(390, 21, 'Vargas', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(391, 22, 'Arístides Bastidas', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(392, 22, 'Bolívar', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(407, 22, 'Bruzual', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(408, 22, 'Cocorote', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(409, 22, 'Independencia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(410, 22, 'José Antonio Páez', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(411, 22, 'La Trinidad', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(412, 22, 'Manuel Monge', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(413, 22, 'Nirgua', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(414, 22, 'Peña', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(415, 22, 'San Felipe', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(416, 22, 'Sucre', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(417, 22, 'Urachiche', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(418, 22, 'José Joaquín Veroes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(441, 23, 'Almirante Padilla', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(442, 23, 'Baralt', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(443, 23, 'Cabimas', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(444, 23, 'Catatumbo', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(445, 23, 'Colón', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(446, 23, 'Francisco Javier Pulgar', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(447, 23, 'Páez', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(448, 23, 'Jesús Enrique Losada', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(449, 23, 'Jesús María Semprún', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(450, 23, 'La Cañada de Urdaneta', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(451, 23, 'Lagunillas', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(452, 23, 'Machiques de Perijá', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(453, 23, 'Mara', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(454, 23, 'Maracaibo', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(455, 23, 'Miranda', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(456, 23, 'Rosario de Perijá', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(457, 23, 'San Francisco', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(458, 23, 'Santa Rita', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(459, 23, 'Simón Bolívar', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(460, 23, 'Sucre', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(461, 23, 'Valmore Rodríguez', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(462, 24, 'Libertador', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `nominstitucion`
--

DROP TABLE IF EXISTS `nominstitucion`;
CREATE TABLE `nominstitucion` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nominstitucion` varchar(255) NOT NULL,
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
  `municipio_id` bigint(20) UNSIGNED DEFAULT NULL,
  `parroquia` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `parroquia`
--

INSERT INTO `parroquia` (`id`, `municipio_id`, `parroquia`, `created_at`, `updated_at`) VALUES
(1, 1, 'Alto Orinoco', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 1, 'Huachamacare Acanaña', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, 1, 'Marawaka Toky Shamanaña', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4, 1, 'Mavaka Mavaka', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(5, 1, 'Sierra Parima Parimabé', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(6, 2, 'Ucata Laja Lisa', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(7, 2, 'Yapacana Macuruco', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(8, 2, 'Caname Guarinuma', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(9, 3, 'Fernando Girón Tovar', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(10, 3, 'Luis Alberto Gómez', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(11, 3, 'Pahueña Limón de Parhueña', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(12, 3, 'Platanillal Platanillal', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(13, 4, 'Samariapo', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(14, 4, 'Sipapo', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(15, 4, 'Munduapo', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(16, 4, 'Guayapo', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(17, 5, 'Alto Ventuari', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(18, 5, 'Medio Ventuari', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(19, 5, 'Bajo Ventuari', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(20, 6, 'Victorino', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(21, 6, 'Comunidad', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(22, 7, 'Casiquiare', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(23, 7, 'Cocuy', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(24, 7, 'San Carlos de Río Negro', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(25, 7, 'Solano', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(26, 8, 'Anaco', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(27, 8, 'San Joaquín', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(28, 9, 'Cachipo', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(29, 9, 'Aragua de Barcelona', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(30, 11, 'Lechería', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(31, 11, 'El Morro', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(32, 12, 'Puerto Píritu', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(33, 12, 'San Miguel', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(34, 12, 'Sucre', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(35, 13, 'Valle de Guanape', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(36, 13, 'Santa Bárbara', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(37, 14, 'El Chaparro', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(38, 14, 'Tomás Alfaro', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(39, 14, 'Calatrava', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(40, 15, 'Guanta', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(41, 15, 'Chorrerón', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(42, 16, 'Mamo', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(43, 16, 'Soledad', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(44, 17, 'Mapire', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(45, 17, 'Piar', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(46, 17, 'Santa Clara', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(47, 17, 'San Diego de Cabrutica', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(48, 17, 'Uverito', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(49, 17, 'Zuata', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(50, 18, 'Puerto La Cruz', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(51, 18, 'Pozuelos', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(52, 19, 'Onoto', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(53, 19, 'San Pablo', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(54, 20, 'San Mateo', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(55, 20, 'El Carito', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(56, 20, 'Santa Inés', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(57, 20, 'La Romereña', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(58, 21, 'Atapirire', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(59, 21, 'Boca del Pao', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(60, 21, 'El Pao', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(61, 21, 'Pariaguán', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(62, 22, 'Cantaura', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(63, 22, 'Libertador', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(64, 22, 'Santa Rosa', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(65, 22, 'Urica', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(66, 23, 'Píritu', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(67, 23, 'San Francisco', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(68, 24, 'San José de Guanipa', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(69, 25, 'Boca de Uchire', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(70, 25, 'Boca de Chávez', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(71, 26, 'Pueblo Nuevo', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(72, 26, 'Santa Ana', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(73, 27, 'Bergantín', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(74, 27, 'Caigua', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(75, 27, 'El Carmen', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(76, 27, 'El Pilar', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(77, 27, 'Naricual', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(78, 27, 'San Crsitóbal', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(79, 28, 'Edmundo Barrios', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(80, 28, 'Miguel Otero Silva', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(81, 29, 'Achaguas', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(82, 29, 'Apurito', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(83, 29, 'El Yagual', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(84, 29, 'Guachara', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(85, 29, 'Mucuritas', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(86, 29, 'Queseras del medio', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(87, 30, 'Biruaca', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(88, 31, 'Bruzual', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(89, 31, 'Mantecal', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(90, 31, 'Quintero', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(91, 31, 'Rincón Hondo', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(92, 31, 'San Vicente', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(93, 32, 'Guasdualito', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(94, 32, 'Aramendi', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(95, 32, 'El Amparo', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(96, 32, 'San Camilo', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(97, 32, 'Urdaneta', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(98, 33, 'San Juan de Payara', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(99, 33, 'Codazzi', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(100, 33, 'Cunaviche', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(101, 34, 'Elorza', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(102, 34, 'La Trinidad', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(103, 35, 'San Fernando', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(104, 35, 'El Recreo', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(105, 35, 'Peñalver', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(106, 35, 'San Rafael de Atamaica', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(107, 36, 'Pedro José Ovalles', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(108, 36, 'Joaquín Crespo', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(109, 36, 'José Casanova Godoy', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(110, 36, 'Madre María de San José', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(111, 36, 'Andrés Eloy Blanco', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(112, 36, 'Los Tacarigua', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(113, 36, 'Las Delicias', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(114, 36, 'Choroní', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(115, 37, 'Bolívar', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(116, 38, 'Camatagua', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(117, 38, 'Carmen de Cura', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(118, 39, 'Santa Rita', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(119, 39, 'Francisco de Miranda', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(120, 39, 'Moseñor Feliciano González', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(121, 40, 'Santa Cruz', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(122, 41, 'José Félix Ribas', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(123, 41, 'Castor Nieves Ríos', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(124, 41, 'Las Guacamayas', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(125, 41, 'Pao de Zárate', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(126, 41, 'Zuata', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(127, 42, 'José Rafael Revenga', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(128, 43, 'Palo Negro', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(129, 43, 'San Martín de Porres', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(130, 44, 'El Limón', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(131, 44, 'Caña de Azúcar', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(132, 45, 'Ocumare de la Costa', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(133, 46, 'San Casimiro', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(134, 46, 'Güiripa', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(135, 46, 'Ollas de Caramacate', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(136, 46, 'Valle Morín', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(137, 47, 'San Sebastían', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(138, 48, 'Turmero', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(139, 48, 'Arevalo Aponte', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(140, 48, 'Chuao', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(141, 48, 'Samán de Güere', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(142, 48, 'Alfredo Pacheco Miranda', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(143, 49, 'Santos Michelena', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(144, 49, 'Tiara', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(145, 50, 'Cagua', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(146, 50, 'Bella Vista', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(147, 51, 'Tovar', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(148, 52, 'Urdaneta', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(149, 52, 'Las Peñitas', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(150, 52, 'San Francisco de Cara', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(151, 52, 'Taguay', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(152, 53, 'Zamora', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(153, 53, 'Magdaleno', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(154, 53, 'San Francisco de Asís', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(155, 53, 'Valles de Tucutunemo', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(156, 53, 'Augusto Mijares', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(157, 54, 'Sabaneta', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(158, 54, 'Juan Antonio Rodríguez Domínguez', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(159, 55, 'El Cantón', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(160, 55, 'Santa Cruz de Guacas', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(161, 55, 'Puerto Vivas', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(162, 56, 'Ticoporo', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(163, 56, 'Nicolás Pulido', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(164, 56, 'Andrés Bello', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(165, 57, 'Arismendi', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(166, 57, 'Guadarrama', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(167, 57, 'La Unión', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(168, 57, 'San Antonio', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(169, 58, 'Barinas', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(170, 58, 'Alberto Arvelo Larriva', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(171, 58, 'San Silvestre', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(172, 58, 'Santa Inés', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(173, 58, 'Santa Lucía', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(174, 58, 'Torumos', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(175, 58, 'El Carmen', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(176, 58, 'Rómulo Betancourt', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(177, 58, 'Corazón de Jesús', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(178, 58, 'Ramón Ignacio Méndez', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(179, 58, 'Alto Barinas', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(180, 58, 'Manuel Palacio Fajardo', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(181, 58, 'Juan Antonio Rodríguez Domínguez', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(182, 58, 'Dominga Ortiz de Páez', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(183, 59, 'Barinitas', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(184, 59, 'Altamira de Cáceres', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(185, 59, 'Calderas', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(186, 60, 'Barrancas', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(187, 60, 'El Socorro', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(188, 60, 'Mazparrito', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(189, 61, 'Santa Bárbara', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(190, 61, 'Pedro Briceño Méndez', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(191, 61, 'Ramón Ignacio Méndez', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(192, 61, 'José Ignacio del Pumar', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(193, 62, 'Obispos', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(194, 62, 'Guasimitos', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(195, 62, 'El Real', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(196, 62, 'La Luz', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(197, 63, 'Ciudad Bolívia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(198, 63, 'José Ignacio Briceño', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(199, 63, 'José Félix Ribas', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(200, 63, 'Páez', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(201, 64, 'Libertad', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(202, 64, 'Dolores', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(203, 64, 'Santa Rosa', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(204, 64, 'Palacio Fajardo', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(205, 65, 'Ciudad de Nutrias', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(206, 65, 'El Regalo', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(207, 65, 'Puerto Nutrias', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(208, 65, 'Santa Catalina', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(209, 66, 'Cachamay', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(210, 66, 'Chirica', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(211, 66, 'Dalla Costa', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(212, 66, 'Once de Abril', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(213, 66, 'Simón Bolívar', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(214, 66, 'Unare', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(215, 66, 'Universidad', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(216, 66, 'Vista al Sol', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(217, 66, 'Pozo Verde', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(218, 66, 'Yocoima', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(219, 66, '5 de Julio', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(220, 67, 'Cedeño', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(221, 67, 'Altagracia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(222, 67, 'Ascensión Farreras', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(223, 67, 'Guaniamo', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(224, 67, 'La Urbana', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(225, 67, 'Pijiguaos', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(226, 68, 'El Callao', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(227, 69, 'Gran Sabana', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(228, 69, 'Ikabarú', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(229, 70, 'Catedral', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(230, 70, 'Zea', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(231, 70, 'Orinoco', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(232, 70, 'José Antonio Páez', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(233, 70, 'Marhuanta', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(234, 70, 'Agua Salada', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(235, 70, 'Vista Hermosa', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(236, 70, 'La Sabanita', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(237, 70, 'Panapana', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(238, 71, 'Andrés Eloy Blanco', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(239, 71, 'Pedro Cova', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(240, 72, 'Raúl Leoni', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(241, 72, 'Barceloneta', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(242, 72, 'Santa Bárbara', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(243, 72, 'San Francisco', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(244, 73, 'Roscio', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(245, 73, 'Salóm', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(246, 74, 'Sifontes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(247, 74, 'Dalla Costa', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(248, 74, 'San Isidro', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(249, 75, 'Sucre', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(250, 75, 'Aripao', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(251, 75, 'Guarataro', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(252, 75, 'Las Majadas', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(253, 75, 'Moitaco', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(254, 76, 'Padre Pedro Chien', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(255, 76, 'Río Grande', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(256, 77, 'Bejuma', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(257, 77, 'Canoabo', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(258, 77, 'Simón Bolívar', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(259, 78, 'Güigüe', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(260, 78, 'Carabobo', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(261, 78, 'Tacarigua', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(262, 79, 'Mariara', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(263, 79, 'Aguas Calientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(264, 80, 'Ciudad Alianza', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(265, 80, 'Guacara', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(266, 80, 'Yagua', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(267, 81, 'Morón', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(268, 81, 'Yagua', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(269, 82, 'Tocuyito', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(270, 82, 'Independencia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(271, 83, 'Los Guayos', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(272, 84, 'Miranda', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(273, 85, 'Montalbán', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(274, 86, 'Naguanagua', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(275, 87, 'Bartolomé Salóm', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(276, 87, 'Democracia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(277, 87, 'Fraternidad', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(278, 87, 'Goaigoaza', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(279, 87, 'Juan José Flores', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(280, 87, 'Unión', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(281, 87, 'Borburata', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(282, 87, 'Patanemo', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(283, 88, 'San Diego', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(284, 89, 'San Joaquín', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(285, 90, 'Candelaria', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(286, 90, 'Catedral', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(287, 90, 'El Socorro', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(288, 90, 'Miguel Peña', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(289, 90, 'Rafael Urdaneta', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(290, 90, 'San Blas', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(291, 90, 'San José', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(292, 90, 'Santa Rosa', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(293, 90, 'Negro Primero', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(294, 91, 'Cojedes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(295, 91, 'Juan de Mata Suárez', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(296, 92, 'Tinaquillo', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(297, 93, 'El Baúl', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(298, 93, 'Sucre', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(299, 94, 'La Aguadita', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(300, 94, 'Macapo', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(301, 95, 'El Pao', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(302, 96, 'El Amparo', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(303, 96, 'Libertad de Cojedes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(304, 97, 'Rómulo Gallegos', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(305, 98, 'San Carlos de Austria', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(306, 98, 'Juan Ángel Bravo', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(307, 98, 'Manuel Manrique', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(308, 99, 'General en Jefe José Laurencio Silva', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(309, 100, 'Curiapo', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(310, 100, 'Almirante Luis Brión', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(311, 100, 'Francisco Aniceto Lugo', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(312, 100, 'Manuel Renaud', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(313, 100, 'Padre Barral', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(314, 100, 'Santos de Abelgas', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(315, 101, 'Imataca', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(316, 101, 'Cinco de Julio', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(317, 101, 'Juan Bautista Arismendi', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(318, 101, 'Manuel Piar', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(319, 101, 'Rómulo Gallegos', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(320, 102, 'Pedernales', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(321, 102, 'Luis Beltrán Prieto Figueroa', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(322, 103, 'San José (Delta Amacuro)', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(323, 103, 'José Vidal Marcano', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(324, 103, 'Juan Millán', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(325, 103, 'Leonardo Ruíz Pineda', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(326, 103, 'Mariscal Antonio José de Sucre', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(327, 103, 'Monseñor Argimiro García', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(328, 103, 'San Rafael (Delta Amacuro)', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(329, 103, 'Virgen del Valle', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(330, 10, 'Clarines', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(331, 10, 'Guanape', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(332, 10, 'Sabana de Uchire', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(333, 104, 'Capadare', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(334, 104, 'La Pastora', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(335, 104, 'Libertador', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(336, 104, 'San Juan de los Cayos', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(337, 105, 'Aracua', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(338, 105, 'La Peña', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(339, 105, 'San Luis', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(340, 106, 'Bariro', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(341, 106, 'Borojó', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(342, 106, 'Capatárida', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(343, 106, 'Guajiro', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(344, 106, 'Seque', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(345, 106, 'Zazárida', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(346, 106, 'Valle de Eroa', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(347, 107, 'Cacique Manaure', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(348, 108, 'Norte', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(349, 108, 'Carirubana', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(350, 108, 'Santa Ana', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(351, 108, 'Urbana Punta Cardón', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(352, 109, 'La Vela de Coro', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(353, 109, 'Acurigua', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(354, 109, 'Guaibacoa', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(355, 109, 'Las Calderas', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(356, 109, 'Macoruca', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(357, 110, 'Dabajuro', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(358, 111, 'Agua Clara', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(359, 111, 'Avaria', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(360, 111, 'Pedregal', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(361, 111, 'Piedra Grande', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(362, 111, 'Purureche', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(363, 112, 'Adaure', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(364, 112, 'Adícora', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(365, 112, 'Baraived', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(366, 112, 'Buena Vista', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(367, 112, 'Jadacaquiva', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(368, 112, 'El Vínculo', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(369, 112, 'El Hato', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(370, 112, 'Moruy', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(371, 112, 'Pueblo Nuevo', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(372, 113, 'Agua Larga', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(373, 113, 'El Paují', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(374, 113, 'Independencia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(375, 113, 'Mapararí', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(376, 114, 'Agua Linda', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(377, 114, 'Araurima', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(378, 114, 'Jacura', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(379, 115, 'Tucacas', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(380, 115, 'Boca de Aroa', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(381, 116, 'Los Taques', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(382, 116, 'Judibana', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(383, 117, 'Mene de Mauroa', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(384, 117, 'San Félix', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(385, 117, 'Casigua', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(386, 118, 'Guzmán Guillermo', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(387, 118, 'Mitare', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(388, 118, 'Río Seco', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(389, 118, 'Sabaneta', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(390, 118, 'San Antonio', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(391, 118, 'San Gabriel', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(392, 118, 'Santa Ana', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(393, 119, 'Boca del Tocuyo', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(394, 119, 'Chichiriviche', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(395, 119, 'Tocuyo de la Costa', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(396, 120, 'Palmasola', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(397, 121, 'Cabure', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(398, 121, 'Colina', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(399, 121, 'Curimagua', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(400, 122, 'San José de la Costa', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(401, 122, 'Píritu', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(402, 123, 'San Francisco', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(403, 124, 'Sucre', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(404, 124, 'Pecaya', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(405, 125, 'Tocópero', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(406, 126, 'El Charal', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(407, 126, 'Las Vegas del Tuy', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(408, 126, 'Santa Cruz de Bucaral', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(409, 127, 'Bruzual', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(410, 127, 'Urumaco', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(411, 128, 'Puerto Cumarebo', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(412, 128, 'La Ciénaga', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(413, 128, 'La Soledad', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(414, 128, 'Pueblo Cumarebo', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(415, 128, 'Zazárida', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(416, 113, 'Churuguara', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(417, 129, 'Camaguán', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(418, 129, 'Puerto Miranda', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(419, 129, 'Uverito', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(420, 130, 'Chaguaramas', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(421, 131, 'El Socorro', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(422, 132, 'Tucupido', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(423, 132, 'San Rafael de Laya', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(424, 133, 'Altagracia de Orituco', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(425, 133, 'San Rafael de Orituco', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(426, 133, 'San Francisco Javier de Lezama', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(427, 133, 'Paso Real de Macaira', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(428, 133, 'Carlos Soublette', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(429, 133, 'San Francisco de Macaira', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(430, 133, 'Libertad de Orituco', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(431, 134, 'Cantaclaro', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(432, 134, 'San Juan de los Morros', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(433, 134, 'Parapara', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(434, 135, 'El Sombrero', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(435, 135, 'Sosa', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(436, 136, 'Las Mercedes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(437, 136, 'Cabruta', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(438, 136, 'Santa Rita de Manapire', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(439, 137, 'Valle de la Pascua', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(440, 137, 'Espino', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(441, 138, 'San José de Unare', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(442, 138, 'Zaraza', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(443, 139, 'San José de Tiznados', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(444, 139, 'San Francisco de Tiznados', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(445, 139, 'San Lorenzo de Tiznados', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(446, 139, 'Ortiz', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(447, 140, 'Guayabal', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(448, 140, 'Cazorla', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(449, 141, 'San José de Guaribe', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(450, 141, 'Uveral', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(451, 142, 'Santa María de Ipire', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(452, 142, 'Altamira', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(453, 143, 'El Calvario', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(454, 143, 'El Rastro', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(455, 143, 'Guardatinajas', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(456, 143, 'Capital Urbana Calabozo', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(457, 144, 'Quebrada Honda de Guache', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(458, 144, 'Pío Tamayo', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(459, 144, 'Yacambú', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(460, 145, 'Fréitez', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(461, 145, 'José María Blanco', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(462, 146, 'Catedral', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(463, 146, 'Concepción', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(464, 146, 'El Cují', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(465, 146, 'Juan de Villegas', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(466, 146, 'Santa Rosa', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(467, 146, 'Tamaca', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(468, 146, 'Unión', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(469, 146, 'Aguedo Felipe Alvarado', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(470, 146, 'Buena Vista', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(471, 146, 'Juárez', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(472, 147, 'Juan Bautista Rodríguez', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(473, 147, 'Cuara', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(474, 147, 'Diego de Lozada', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(475, 147, 'Paraíso de San José', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(476, 147, 'San Miguel', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(477, 147, 'Tintorero', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(478, 147, 'José Bernardo Dorante', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(479, 147, 'Coronel Mariano Peraza ', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(480, 148, 'Bolívar', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(481, 148, 'Anzoátegui', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(482, 148, 'Guarico', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(483, 148, 'Hilario Luna y Luna', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(484, 148, 'Humocaro Alto', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(485, 148, 'Humocaro Bajo', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(486, 148, 'La Candelaria', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(487, 148, 'Morán', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(488, 149, 'Cabudare', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(489, 149, 'José Gregorio Bastidas', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(490, 149, 'Agua Viva', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(491, 150, 'Sarare', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(492, 150, 'Buría', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(493, 150, 'Gustavo Vegas León', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(494, 151, 'Trinidad Samuel', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(495, 151, 'Antonio Díaz', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(496, 151, 'Camacaro', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(497, 151, 'Castañeda', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(498, 151, 'Cecilio Zubillaga', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(499, 151, 'Chiquinquirá', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(500, 151, 'El Blanco', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(501, 151, 'Espinoza de los Monteros', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(502, 151, 'Lara', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(503, 151, 'Las Mercedes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(504, 151, 'Manuel Morillo', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(505, 151, 'Montaña Verde', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(506, 151, 'Montes de Oca', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(507, 151, 'Torres', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(508, 151, 'Heriberto Arroyo', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(509, 151, 'Reyes Vargas', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(510, 151, 'Altagracia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(511, 152, 'Siquisique', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(512, 152, 'Moroturo', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(513, 152, 'San Miguel', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(514, 152, 'Xaguas', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(515, 179, 'Presidente Betancourt', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(516, 179, 'Presidente Páez', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(517, 179, 'Presidente Rómulo Gallegos', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(518, 179, 'Gabriel Picón González', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(519, 179, 'Héctor Amable Mora', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(520, 179, 'José Nucete Sardi', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(521, 179, 'Pulido Méndez', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(522, 180, 'La Azulita', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(523, 181, 'Santa Cruz de Mora', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(524, 181, 'Mesa Bolívar', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(525, 181, 'Mesa de Las Palmas', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(526, 182, 'Aricagua', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(527, 182, 'San Antonio', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(528, 183, 'Canagua', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(529, 183, 'Capurí', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(530, 183, 'Chacantá', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(531, 183, 'El Molino', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(532, 183, 'Guaimaral', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(533, 183, 'Mucutuy', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(534, 183, 'Mucuchachí', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(535, 184, 'Fernández Peña', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(536, 184, 'Matriz', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(537, 184, 'Montalbán', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(538, 184, 'Acequias', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(539, 184, 'Jají', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(540, 184, 'La Mesa', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(541, 184, 'San José del Sur', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(542, 185, 'Tucaní', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(543, 185, 'Florencio Ramírez', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(544, 186, 'Santo Domingo', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(545, 186, 'Las Piedras', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(546, 187, 'Guaraque', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(547, 187, 'Mesa de Quintero', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(548, 187, 'Río Negro', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(549, 188, 'Arapuey', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(550, 188, 'Palmira', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(551, 189, 'San Cristóbal de Torondoy', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(552, 189, 'Torondoy', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(553, 190, 'Antonio Spinetti Dini', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(554, 190, 'Arias', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(555, 190, 'Caracciolo Parra Pérez', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(556, 190, 'Domingo Peña', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(557, 190, 'El Llano', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(558, 190, 'Gonzalo Picón Febres', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(559, 190, 'Jacinto Plaza', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(560, 190, 'Juan Rodríguez Suárez', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(561, 190, 'Lasso de la Vega', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(562, 190, 'Mariano Picón Salas', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(563, 190, 'Milla', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(564, 190, 'Osuna Rodríguez', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(565, 190, 'Sagrario', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(566, 190, 'El Morro', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(567, 190, 'Los Nevados', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(568, 191, 'Andrés Eloy Blanco', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(569, 191, 'La Venta', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(570, 191, 'Piñango', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(571, 191, 'Timotes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(572, 192, 'Eloy Paredes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(573, 192, 'San Rafael de Alcázar', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(574, 192, 'Santa Elena de Arenales', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(575, 193, 'Santa María de Caparo', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(576, 194, 'Pueblo Llano', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(577, 195, 'Cacute', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(578, 195, 'La Toma', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(579, 195, 'Mucuchíes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(580, 195, 'Mucurubá', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(581, 195, 'San Rafael', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(582, 196, 'Gerónimo Maldonado', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(583, 196, 'Bailadores', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(584, 197, 'Tabay', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(585, 198, 'Chiguará', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(586, 198, 'Estánquez', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(587, 198, 'Lagunillas', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(588, 198, 'La Trampa', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(589, 198, 'Pueblo Nuevo del Sur', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(590, 198, 'San Juan', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(591, 199, 'El Amparo', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(592, 199, 'El Llano', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(593, 199, 'San Francisco', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(594, 199, 'Tovar', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(595, 200, 'Independencia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(596, 200, 'María de la Concepción Palacios Blanco', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(597, 200, 'Nueva Bolivia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(598, 200, 'Santa Apolonia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(599, 201, 'Caño El Tigre', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(600, 201, 'Zea', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(601, 223, 'Aragüita', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(602, 223, 'Arévalo González', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(603, 223, 'Capaya', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(604, 223, 'Caucagua', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(605, 223, 'Panaquire', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(606, 223, 'Ribas', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(607, 223, 'El Café', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(608, 223, 'Marizapa', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(609, 224, 'Cumbo', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(610, 224, 'San José de Barlovento', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(611, 225, 'El Cafetal', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(612, 225, 'Las Minas', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(613, 225, 'Nuestra Señora del Rosario', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(614, 226, 'Higuerote', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(615, 226, 'Curiepe', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(616, 226, 'Tacarigua de Brión', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(617, 227, 'Mamporal', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(618, 228, 'Carrizal', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(619, 229, 'Chacao', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(620, 230, 'Charallave', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(621, 230, 'Las Brisas', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(622, 231, 'El Hatillo', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(623, 232, 'Altagracia de la Montaña', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(624, 232, 'Cecilio Acosta', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(625, 232, 'Los Teques', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(626, 232, 'El Jarillo', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(627, 232, 'San Pedro', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(628, 232, 'Tácata', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(629, 232, 'Paracotos', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(630, 233, 'Cartanal', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(631, 233, 'Santa Teresa del Tuy', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(632, 234, 'La Democracia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(633, 234, 'Ocumare del Tuy', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(634, 234, 'Santa Bárbara', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(635, 235, 'San Antonio de los Altos', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(636, 236, 'Río Chico', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(637, 236, 'El Guapo', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(638, 236, 'Tacarigua de la Laguna', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(639, 236, 'Paparo', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(640, 236, 'San Fernando del Guapo', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(641, 237, 'Santa Lucía del Tuy', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(642, 238, 'Cúpira', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(643, 238, 'Machurucuto', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(644, 239, 'Guarenas', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(645, 240, 'San Antonio de Yare', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(646, 240, 'San Francisco de Yare', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(647, 241, 'Leoncio Martínez', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(648, 241, 'Petare', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(649, 241, 'Caucagüita', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(650, 241, 'Filas de Mariche', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(651, 241, 'La Dolorita', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(652, 242, 'Cúa', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(653, 242, 'Nueva Cúa', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(654, 243, 'Guatire', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(655, 243, 'Bolívar', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(656, 258, 'San Antonio de Maturín', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(657, 258, 'San Francisco de Maturín', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(658, 259, 'Aguasay', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(659, 260, 'Caripito', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(660, 261, 'El Guácharo', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(661, 261, 'La Guanota', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(662, 261, 'Sabana de Piedra', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(663, 261, 'San Agustín', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(664, 261, 'Teresen', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(665, 261, 'Caripe', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(666, 262, 'Areo', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(667, 262, 'Capital Cedeño', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(668, 262, 'San Félix de Cantalicio', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(669, 262, 'Viento Fresco', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(670, 263, 'El Tejero', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(671, 263, 'Punta de Mata', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(672, 264, 'Chaguaramas', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(673, 264, 'Las Alhuacas', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(674, 264, 'Tabasca', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(675, 264, 'Temblador', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(676, 265, 'Alto de los Godos', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(677, 265, 'Boquerón', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(678, 265, 'Las Cocuizas', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(679, 265, 'La Cruz', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(680, 265, 'San Simón', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(681, 265, 'El Corozo', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(682, 265, 'El Furrial', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(683, 265, 'Jusepín', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(684, 265, 'La Pica', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(685, 265, 'San Vicente', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(686, 266, 'Aparicio', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(687, 266, 'Aragua de Maturín', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(688, 266, 'Chaguamal', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(689, 266, 'El Pinto', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(690, 266, 'Guanaguana', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(691, 266, 'La Toscana', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(692, 266, 'Taguaya', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(693, 267, 'Cachipo', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(694, 267, 'Quiriquire', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(695, 268, 'Santa Bárbara', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(696, 269, 'Barrancas', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(697, 269, 'Los Barrancos de Fajardo', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(698, 270, 'Uracoa', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(699, 271, 'Antolín del Campo', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(700, 272, 'Arismendi', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(701, 273, 'García', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(702, 273, 'Francisco Fajardo', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `parroquia` (`id`, `municipio_id`, `parroquia`, `created_at`, `updated_at`) VALUES
(703, 274, 'Bolívar', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(704, 274, 'Guevara', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(705, 274, 'Matasiete', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(706, 274, 'Santa Ana', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(707, 274, 'Sucre', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(708, 275, 'Aguirre', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(709, 275, 'Maneiro', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(710, 276, 'Adrián', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(711, 276, 'Juan Griego', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(712, 276, 'Yaguaraparo', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(713, 277, 'Porlamar', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(714, 278, 'San Francisco de Macanao', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(715, 278, 'Boca de Río', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(716, 279, 'Tubores', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(717, 279, 'Los Baleales', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(718, 280, 'Vicente Fuentes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(719, 280, 'Villalba', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(720, 281, 'San Juan Bautista', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(721, 281, 'Zabala', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(722, 283, 'Capital Araure', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(723, 283, 'Río Acarigua', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(724, 284, 'Capital Esteller', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(725, 284, 'Uveral', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(726, 285, 'Guanare', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(727, 285, 'Córdoba', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(728, 285, 'San José de la Montaña', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(729, 285, 'San Juan de Guanaguanare', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(730, 285, 'Virgen de la Coromoto', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(731, 286, 'Guanarito', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(732, 286, 'Trinidad de la Capilla', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(733, 286, 'Divina Pastora', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(734, 287, 'Monseñor José Vicente de Unda', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(735, 287, 'Peña Blanca', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(736, 288, 'Capital Ospino', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(737, 288, 'Aparición', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(738, 288, 'La Estación', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(739, 289, 'Páez', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(740, 289, 'Payara', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(741, 289, 'Pimpinela', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(742, 289, 'Ramón Peraza', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(743, 290, 'Papelón', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(744, 290, 'Caño Delgadito', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(745, 291, 'San Genaro de Boconoito', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(746, 291, 'Antolín Tovar', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(747, 292, 'San Rafael de Onoto', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(748, 292, 'Santa Fe', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(749, 292, 'Thermo Morles', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(750, 293, 'Santa Rosalía', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(751, 293, 'Florida', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(752, 294, 'Sucre', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(753, 294, 'Concepción', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(754, 294, 'San Rafael de Palo Alzado', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(755, 294, 'Uvencio Antonio Velásquez', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(756, 294, 'San José de Saguaz', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(757, 294, 'Villa Rosa', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(758, 295, 'Turén', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(759, 295, 'Canelones', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(760, 295, 'Santa Cruz', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(761, 295, 'San Isidro Labrador', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(762, 296, 'Mariño', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(763, 296, 'Rómulo Gallegos', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(764, 297, 'San José de Aerocuar', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(765, 297, 'Tavera Acosta', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(766, 298, 'Río Caribe', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(767, 298, 'Antonio José de Sucre', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(768, 298, 'El Morro de Puerto Santo', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(769, 298, 'Puerto Santo', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(770, 298, 'San Juan de las Galdonas', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(771, 299, 'El Pilar', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(772, 299, 'El Rincón', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(773, 299, 'General Francisco Antonio Váquez', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(774, 299, 'Guaraúnos', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(775, 299, 'Tunapuicito', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(776, 299, 'Unión', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(777, 300, 'Santa Catalina', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(778, 300, 'Santa Rosa', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(779, 300, 'Santa Teresa', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(780, 300, 'Bolívar', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(781, 300, 'Maracapana', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(782, 302, 'Libertad', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(783, 302, 'El Paujil', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(784, 302, 'Yaguaraparo', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(785, 303, 'Cruz Salmerón Acosta', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(786, 303, 'Chacopata', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(787, 303, 'Manicuare', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(788, 304, 'Tunapuy', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(789, 304, 'Campo Elías', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(790, 305, 'Irapa', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(791, 305, 'Campo Claro', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(792, 305, 'Maraval', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(793, 305, 'San Antonio de Irapa', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(794, 305, 'Soro', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(795, 306, 'Mejía', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(796, 307, 'Cumanacoa', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(797, 307, 'Arenas', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(798, 307, 'Aricagua', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(799, 307, 'Cogollar', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(800, 307, 'San Fernando', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(801, 307, 'San Lorenzo', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(802, 308, 'Villa Frontado (Muelle de Cariaco)', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(803, 308, 'Catuaro', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(804, 308, 'Rendón', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(805, 308, 'San Cruz', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(806, 308, 'Santa María', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(807, 309, 'Altagracia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(808, 309, 'Santa Inés', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(809, 309, 'Valentín Valiente', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(810, 309, 'Ayacucho', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(811, 309, 'San Juan', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(812, 309, 'Raúl Leoni', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(813, 309, 'Gran Mariscal', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(814, 310, 'Cristóbal Colón', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(815, 310, 'Bideau', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(816, 310, 'Punta de Piedras', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(817, 310, 'Güiria', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(818, 341, 'Andrés Bello', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(819, 342, 'Antonio Rómulo Costa', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(820, 343, 'Ayacucho', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(821, 343, 'Rivas Berti', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(822, 343, 'San Pedro del Río', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(823, 344, 'Bolívar', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(824, 344, 'Palotal', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(825, 344, 'General Juan Vicente Gómez', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(826, 344, 'Isaías Medina Angarita', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(827, 345, 'Cárdenas', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(828, 345, 'Amenodoro Ángel Lamus', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(829, 345, 'La Florida', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(830, 346, 'Córdoba', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(831, 347, 'Fernández Feo', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(832, 347, 'Alberto Adriani', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(833, 347, 'Santo Domingo', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(834, 348, 'Francisco de Miranda', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(835, 349, 'García de Hevia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(836, 349, 'Boca de Grita', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(837, 349, 'José Antonio Páez', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(838, 350, 'Guásimos', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(839, 351, 'Independencia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(840, 351, 'Juan Germán Roscio', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(841, 351, 'Román Cárdenas', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(842, 352, 'Jáuregui', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(843, 352, 'Emilio Constantino Guerrero', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(844, 352, 'Monseñor Miguel Antonio Salas', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(845, 353, 'José María Vargas', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(846, 354, 'Junín', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(847, 354, 'La Petrólea', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(848, 354, 'Quinimarí', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(849, 354, 'Bramón', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(850, 355, 'Libertad', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(851, 355, 'Cipriano Castro', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(852, 355, 'Manuel Felipe Rugeles', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(853, 356, 'Libertador', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(854, 356, 'Doradas', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(855, 356, 'Emeterio Ochoa', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(856, 356, 'San Joaquín de Navay', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(857, 357, 'Lobatera', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(858, 357, 'Constitución', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(859, 358, 'Michelena', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(860, 359, 'Panamericano', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(861, 359, 'La Palmita', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(862, 360, 'Pedro María Ureña', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(863, 360, 'Nueva Arcadia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(864, 361, 'Delicias', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(865, 361, 'Pecaya', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(866, 362, 'Samuel Darío Maldonado', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(867, 362, 'Boconó', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(868, 362, 'Hernández', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(869, 363, 'La Concordia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(870, 363, 'San Juan Bautista', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(871, 363, 'Pedro María Morantes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(872, 363, 'San Sebastián', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(873, 363, 'Dr. Francisco Romero Lobo', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(874, 364, 'Seboruco', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(875, 365, 'Simón Rodríguez', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(876, 366, 'Sucre', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(877, 366, 'Eleazar López Contreras', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(878, 366, 'San Pablo', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(879, 367, 'Torbes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(880, 368, 'Uribante', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(881, 368, 'Cárdenas', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(882, 368, 'Juan Pablo Peñalosa', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(883, 368, 'Potosí', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(884, 369, 'San Judas Tadeo', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(885, 370, 'Araguaney', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(886, 370, 'El Jaguito', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(887, 370, 'La Esperanza', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(888, 370, 'Santa Isabel', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(889, 371, 'Boconó', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(890, 371, 'El Carmen', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(891, 371, 'Mosquey', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(892, 371, 'Ayacucho', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(893, 371, 'Burbusay', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(894, 371, 'General Ribas', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(895, 371, 'Guaramacal', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(896, 371, 'Vega de Guaramacal', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(897, 371, 'Monseñor Jáuregui', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(898, 371, 'Rafael Rangel', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(899, 371, 'San Miguel', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(900, 371, 'San José', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(901, 372, 'Sabana Grande', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(902, 372, 'Cheregüé', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(903, 372, 'Granados', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(904, 373, 'Arnoldo Gabaldón', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(905, 373, 'Bolivia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(906, 373, 'Carrillo', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(907, 373, 'Cegarra', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(908, 373, 'Chejendé', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(909, 373, 'Manuel Salvador Ulloa', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(910, 373, 'San José', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(911, 374, 'Carache', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(912, 374, 'La Concepción', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(913, 374, 'Cuicas', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(914, 374, 'Panamericana', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(915, 374, 'Santa Cruz', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(916, 375, 'Escuque', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(917, 375, 'La Unión', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(918, 375, 'Santa Rita', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(919, 375, 'Sabana Libre', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(920, 376, 'El Socorro', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(921, 376, 'Los Caprichos', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(922, 376, 'Antonio José de Sucre', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(923, 377, 'Campo Elías', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(924, 377, 'Arnoldo Gabaldón', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(925, 378, 'Santa Apolonia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(926, 378, 'El Progreso', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(927, 378, 'La Ceiba', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(928, 378, 'Tres de Febrero', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(929, 379, 'El Dividive', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(930, 379, 'Agua Santa', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(931, 379, 'Agua Caliente', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(932, 379, 'El Cenizo', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(933, 379, 'Valerita', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(934, 380, 'Monte Carmelo', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(935, 380, 'Buena Vista', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(936, 380, 'Santa María del Horcón', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(937, 381, 'Motatán', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(938, 381, 'El Baño', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(939, 381, 'Jalisco', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(940, 382, 'Pampán', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(941, 382, 'Flor de Patria', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(942, 382, 'La Paz', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(943, 382, 'Santa Ana', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(944, 383, 'Pampanito', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(945, 383, 'La Concepción', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(946, 383, 'Pampanito II', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(947, 384, 'Betijoque', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(948, 384, 'José Gregorio Hernández', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(949, 384, 'La Pueblita', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(950, 384, 'Los Cedros', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(951, 385, 'Carvajal', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(952, 385, 'Campo Alegre', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(953, 385, 'Antonio Nicolás Briceño', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(954, 385, 'José Leonardo Suárez', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(955, 386, 'Sabana de Mendoza', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(956, 386, 'Junín', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(957, 386, 'Valmore Rodríguez', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(958, 386, 'El Paraíso', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(959, 387, 'Andrés Linares', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(960, 387, 'Chiquinquirá', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(961, 387, 'Cristóbal Mendoza', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(962, 387, 'Cruz Carrillo', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(963, 387, 'Matriz', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(964, 387, 'Monseñor Carrillo', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(965, 387, 'Tres Esquinas', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(966, 388, 'Cabimbú', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(967, 388, 'Jajó', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(968, 388, 'La Mesa de Esnujaque', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(969, 388, 'Santiago', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(970, 388, 'Tuñame', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(971, 388, 'La Quebrada', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(972, 389, 'Juan Ignacio Montilla', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(973, 389, 'La Beatriz', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(974, 389, 'La Puerta', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(975, 389, 'Mendoza del Valle de Momboy', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(976, 389, 'Mercedes Díaz', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(977, 389, 'San Luis', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(978, 390, 'Caraballeda', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(979, 390, 'Carayaca', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(980, 390, 'Carlos Soublette', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(981, 390, 'Caruao Chuspa', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(982, 390, 'Catia La Mar', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(983, 390, 'El Junko', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(984, 390, 'La Guaira', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(985, 390, 'Macuto', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(986, 390, 'Maiquetía', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(987, 390, 'Naiguatá', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(988, 390, 'Urimare', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(989, 391, 'Arístides Bastidas', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(990, 392, 'Bolívar', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(991, 407, 'Chivacoa', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(992, 407, 'Campo Elías', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(993, 408, 'Cocorote', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(994, 409, 'Independencia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(995, 410, 'José Antonio Páez', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(996, 411, 'La Trinidad', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(997, 412, 'Manuel Monge', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(998, 413, 'Salóm', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(999, 413, 'Temerla', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1000, 413, 'Nirgua', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1001, 414, 'San Andrés', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1002, 414, 'Yaritagua', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1003, 415, 'San Javier', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1004, 415, 'Albarico', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1005, 415, 'San Felipe', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1006, 416, 'Sucre', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1007, 417, 'Urachiche', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1008, 418, 'El Guayabo', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1009, 418, 'Farriar', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1010, 441, 'Isla de Toas', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1011, 441, 'Monagas', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1012, 442, 'San Timoteo', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1013, 442, 'General Urdaneta', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1014, 442, 'Libertador', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1015, 442, 'Marcelino Briceño', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1016, 442, 'Pueblo Nuevo', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1017, 442, 'Manuel Guanipa Matos', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1018, 443, 'Ambrosio', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1019, 443, 'Carmen Herrera', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1020, 443, 'La Rosa', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1021, 443, 'Germán Ríos Linares', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1022, 443, 'San Benito', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1023, 443, 'Rómulo Betancourt', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1024, 443, 'Jorge Hernández', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1025, 443, 'Punta Gorda', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1026, 443, 'Arístides Calvani', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1027, 444, 'Encontrados', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1028, 444, 'Udón Pérez', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1029, 445, 'Moralito', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1030, 445, 'San Carlos del Zulia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1031, 445, 'Santa Cruz del Zulia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1032, 445, 'Santa Bárbara', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1033, 445, 'Urribarrí', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1034, 446, 'Carlos Quevedo', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1035, 446, 'Francisco Javier Pulgar', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1036, 446, 'Simón Rodríguez', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1037, 446, 'Guamo-Gavilanes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1038, 448, 'La Concepción', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1039, 448, 'San José', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1040, 448, 'Mariano Parra León', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1041, 448, 'José Ramón Yépez', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1042, 449, 'Jesús María Semprún', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1043, 449, 'Barí', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1044, 450, 'Concepción', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1045, 450, 'Andrés Bello', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1046, 450, 'Chiquinquirá', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1047, 450, 'El Carmelo', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1048, 450, 'Potreritos', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1049, 451, 'Libertad', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1050, 451, 'Alonso de Ojeda', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1051, 451, 'Venezuela', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1052, 451, 'Eleazar López Contreras', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1053, 451, 'Campo Lara', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1054, 452, 'Bartolomé de las Casas', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1055, 452, 'Libertad', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1056, 452, 'Río Negro', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1057, 452, 'San José de Perijá', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1058, 453, 'San Rafael', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1059, 453, 'La Sierrita', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1060, 453, 'Las Parcelas', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1061, 453, 'Luis de Vicente', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1062, 453, 'Monseñor Marcos Sergio Godoy', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1063, 453, 'Ricaurte', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1064, 453, 'Tamare', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1065, 454, 'Antonio Borjas Romero', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1066, 454, 'Bolívar', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1067, 454, 'Cacique Mara', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1068, 454, 'Carracciolo Parra Pérez', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1069, 454, 'Cecilio Acosta', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1070, 454, 'Cristo de Aranza', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1071, 454, 'Coquivacoa', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1072, 454, 'Chiquinquirá', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1073, 454, 'Francisco Eugenio Bustamante', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1074, 454, 'Idelfonzo Vásquez', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1075, 454, 'Juana de Ávila', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1076, 454, 'Luis Hurtado Higuera', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1077, 454, 'Manuel Dagnino', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1078, 454, 'Olegario Villalobos', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1079, 454, 'Raúl Leoni', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1080, 454, 'Santa Lucía', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1081, 454, 'Venancio Pulgar', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1082, 454, 'San Isidro', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1083, 455, 'Altagracia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1084, 455, 'Faría', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1085, 455, 'Ana María Campos', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1086, 455, 'San Antonio', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1087, 455, 'San José', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1088, 456, 'Donaldo García', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1089, 456, 'El Rosario', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1090, 456, 'Sixto Zambrano', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1091, 457, 'San Francisco', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1092, 457, 'El Bajo', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1093, 457, 'Domitila Flores', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1094, 457, 'Francisco Ochoa', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1095, 457, 'Los Cortijos', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1096, 457, 'Marcial Hernández', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1097, 458, 'Santa Rita', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1098, 458, 'El Mene', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1099, 458, 'Pedro Lucas Urribarrí', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1100, 458, 'José Cenobio Urribarrí', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1101, 459, 'Rafael Maria Baralt', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1102, 459, 'Manuel Manrique', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1103, 459, 'Rafael Urdaneta', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1104, 460, 'Bobures', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1105, 460, 'Gibraltar', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1106, 460, 'Heras', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1107, 460, 'Monseñor Arturo Álvarez', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1108, 460, 'Rómulo Gallegos', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1109, 460, 'El Batey', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1110, 461, 'Rafael Urdaneta', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1111, 461, 'La Victoria', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1112, 461, 'Raúl Cuenca', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1113, 447, 'Sinamaica', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1114, 447, 'Alta Guajira', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1115, 447, 'Elías Sánchez Rubio', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1116, 447, 'Guajira', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1117, 462, 'Altagracia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1118, 462, 'Antímano', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1119, 462, 'Caricuao', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1120, 462, 'Catedral', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1121, 462, 'Coche', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1122, 462, 'El Junquito', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1123, 462, 'El Paraíso', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1124, 462, 'El Recreo', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1125, 462, 'El Valle', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1126, 462, 'La Candelaria', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1127, 462, 'La Pastora', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1128, 462, 'La Vega', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1129, 462, 'Macarao', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1130, 462, 'San Agustín', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1131, 462, 'San Bernardino', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1132, 462, 'San José', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1133, 462, 'San Juan', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1134, 462, 'San Pedro', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1135, 462, 'Santa Rosalía', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1136, 462, 'Santa Teresa', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1137, 462, 'Sucre (Catia)', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1138, 462, '23 de enero', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
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
  `status` varchar(25) NOT NULL DEFAULT 'pendiente',
  `fecha` datetime NOT NULL,
  `codnotaentrega` varchar(20) NOT NULL,
  `estado_id` varchar(255) NOT NULL,
  `municipio_id` varchar(255) NOT NULL,
  `parroquia_id` varchar(255) NOT NULL,
  `nombreescuela` varchar(255) NOT NULL,
  `escodsunagro` int(11) NOT NULL,
  `direccion` varchar(255) NOT NULL,
  `nomprosocial` varchar(255) NOT NULL,
  `noenterespon` varchar(255) NOT NULL,
  `numbeneficiario` int(11) NOT NULL,
  `nomresponsable` varchar(255) NOT NULL,
  `codcedula1` int(11) NOT NULL,
  `numtelefono1` int(11) NOT NULL,
  `cendisabastece` varchar(255) NOT NULL,
  `fechaultdespacho` datetime NOT NULL,
  `persrespdespacho` varchar(255) NOT NULL,
  `numtelefono2` int(11) NOT NULL,
  `cargoretira` varchar(255) NOT NULL,
  `cantrecibido` varchar(20) NOT NULL,
  `pollo` int(11) NOT NULL,
  `carne` int(11) NOT NULL,
  `mortadela` int(11) NOT NULL,
  `fruver` varchar(20) NOT NULL,
  `frutas` int(11) NOT NULL,
  `verduras` int(11) NOT NULL,
  `hortalizas` int(11) NOT NULL,
  `observaciones` varchar(255) NOT NULL,
  `datos` varchar(20) NOT NULL,
  `nomsumidatos` varchar(255) NOT NULL,
  `codcedula2` varchar(20) DEFAULT NULL,
  `cargosumi` varchar(255) NOT NULL,
  `nomfuncinspec` varchar(255) NOT NULL,
  `codcedula3` varchar(20) NOT NULL,
  `cargofuncio` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `recepcions`
--

INSERT INTO `recepcions` (`id`, `status`, `fecha`, `codnotaentrega`, `estado_id`, `municipio_id`, `parroquia_id`, `nombreescuela`, `escodsunagro`, `direccion`, `nomprosocial`, `noenterespon`, `numbeneficiario`, `nomresponsable`, `codcedula1`, `numtelefono1`, `cendisabastece`, `fechaultdespacho`, `persrespdespacho`, `numtelefono2`, `cargoretira`, `cantrecibido`, `pollo`, `carne`, `mortadela`, `fruver`, `frutas`, `verduras`, `hortalizas`, `observaciones`, `datos`, `nomsumidatos`, `codcedula2`, `cargosumi`, `nomfuncinspec`, `codcedula3`, `cargofuncio`, `created_at`, `updated_at`) VALUES
(11, 'pendiente', '2023-07-24 00:00:00', '', '2', '1', '1', 'dfgdf', 34, 'dgg', 'dgdg', 'dgfgd', 345, 'dfg', 4353, 345, 'dfgd', '2023-07-24 00:00:00', 'dfsgfdg', 345, 'dgfd', '', 4, 4, 4, '', 4, 4, 4, '', '', '', '', '', '', '', '', '2023-07-24 21:48:22', NULL),
(12, 'aprovado', '2023-07-24 00:00:00', '', '2', '2', '2', 'sdfdf', 43535, 'tdsgfd', 'sdfsf', 'sfdf', 345, 'sdfsf', 45345, 3453, 'sdfdsf', '2023-07-24 00:00:00', '34543', 435345, 'rtrt', '', 5, 5, 5, '', 5, 5, 5, '', '', '', '', '', '', '', '', '2023-07-24 21:51:01', NULL),
(13, 'aprovado', '2023-07-24 00:00:00', '00003', '2', '1', '1', 'dhdfh', 455, 'dfgdg', 'dfgdgfd', 'gdg', 45645, 'dgd', 453, 345, 'sdfsd', '2023-07-24 00:00:00', 'sdfsdf', 453, '34', '', 4, 4, 4, '', 4, 4, 4, '', '', '', '', '', '', '', '', '2023-07-24 21:52:22', NULL),
(17, 'aprovado', '2023-08-11 00:00:00', '00004', '14', '242', '652', 'wrerwr', 34545, 'sfdf', 'sdfsdf', 'sdfsdf', 54, 'sdfs', 45435, 53453, 'sdfsf', '2023-08-11 00:00:00', 'sdfs', 34545, 'sdfsdf', '', 5, 5, 5, '', 43, 4, 4, '', '', '', '', '', '', '', '', '2023-08-11 19:18:46', NULL),
(18, 'pendiente', '2023-08-11 00:00:00', '00005', '14', '242', '652', 'sdfsf', 65, 'dgdfg', 'dfgdfg', 'dgdfg', 6546, 'dfgd', 546, 5464, 'dfgd', '2023-08-11 00:00:00', '54646', 35454, 'dsfgdg', '', 4, 4, 4, '', 4, 4, 4, '', '', '', '', '', '', '', '', '2023-08-11 19:22:56', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `status_planilla`
--

DROP TABLE IF EXISTS `status_planilla`;
CREATE TABLE `status_planilla` (
  `id` int(11) NOT NULL,
  `status` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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
  `nombre` varchar(255) NOT NULL,
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
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=126;

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=463;

--
-- AUTO_INCREMENT de la tabla `nominstitucion`
--
ALTER TABLE `nominstitucion`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `parroquia`
--
ALTER TABLE `parroquia`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1139;

--
-- AUTO_INCREMENT de la tabla `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `recepcions`
--
ALTER TABLE `recepcions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

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
