-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Tiempo de generación: 14-02-2021 a las 21:42:03
-- Versión del servidor: 10.2.36-MariaDB-cll-lve
-- Versión de PHP: 7.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `grupocas_pos`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Boletas`
--

CREATE TABLE `Boletas` (
  `ID` int(11) NOT NULL,
  `N DOC` varchar(100) NOT NULL,
  `N TICKET` int(11) NOT NULL,
  `CLIENTE` char(255) NOT NULL,
  `DNI` varchar(100) NOT NULL,
  `MONTO` decimal(25,2) NOT NULL,
  `FECHA` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `Boletas`
--

INSERT INTO `Boletas` (`ID`, `N DOC`, `N TICKET`, `CLIENTE`, `DNI`, `MONTO`, `FECHA`) VALUES
(0, '256', 18, 'PRUEBA', '25638956', 3.00, '2020-03-30 22:23:50'),
(0, '454', 29, 'DSFDFDSF', '454354354', 9.30, '2020-04-06 08:21:59'),
(0, '454', 28, 'DASDASD', '45345', 1.50, '2020-04-06 08:20:31'),
(0, '66', 30, 'ggfdgfg', '6546456', 6.50, '2020-04-06 08:35:21'),
(0, 'gfdg', 30, '435435', 'fdg', 6.50, '2020-04-06 08:35:21'),
(0, '3562', 30, 'LOS GIRASOLES', '1020603564352', 6.50, '2020-04-06 08:35:21'),
(0, '5646', 30, 'fdsfsdf', '45435', 6.50, '2020-04-06 08:35:21'),
(0, '6546', 30, 'fdgfdfd', '54654', 6.50, '2020-04-06 08:35:21'),
(0, '45435', 30, 'ffdsfdsfsdsfds', '453545345', 6.50, '2020-04-06 08:35:21'),
(0, '3445435', 30, 'dfdsf', '45435353535', 6.50, '2020-04-06 08:35:21'),
(0, '987', 30, 'gghh', '567889', 6.50, '2020-04-06 08:35:21'),
(0, '8768', 30, 'erer', '998897', 6.50, '2020-04-06 08:35:21'),
(0, '6253', 30, 'dsfsdfsdfsfsdf', '67554', 6.50, '2020-04-06 08:35:21'),
(0, '6456', 30, 'gh', 'dfg65466', 6.50, '2020-04-06 08:35:21'),
(0, '97797', 31, 'hkhk', '13455665', 9.10, '2020-04-09 13:51:22'),
(0, '7657', 30, 'etrret', '6576767', 6.40, '2020-04-06 08:35:21'),
(0, '76576577', 31, 'rtrttt', '765765', 9.10, '2020-04-09 13:51:22'),
(0, '4545', 31, 'fsdfsdf', '543566565', 9.10, '2020-04-09 13:51:22'),
(0, '4545453', 31, 'erewrfdf', '45435455', 9.10, '2020-04-09 13:51:22'),
(0, '64565', 31, '65656', '45646456', 9.10, '2020-04-09 13:51:22');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Facturas`
--

CREATE TABLE `Facturas` (
  `ID` int(11) NOT NULL,
  `N DOC` varchar(100) NOT NULL,
  `N TICKET` int(11) NOT NULL,
  `EMPRESA` char(255) NOT NULL,
  `RUC` varchar(100) NOT NULL,
  `MONTO` decimal(25,2) NOT NULL,
  `FECHA` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `Facturas`
--

INSERT INTO `Facturas` (`ID`, `N DOC`, `N TICKET`, `EMPRESA`, `RUC`, `MONTO`, `FECHA`) VALUES
(0, '1', 18, 'GRUPO ROJAS SAC', '20603564251', 3.00, '2020-03-30 22:23:50'),
(0, '454', 29, 'DASDASD', '45345', 9.30, '2020-04-06 08:21:59'),
(0, '2635', 31, 'empresa pruenba', '4505469548548', 9.10, '2020-04-09 13:51:22'),
(0, '54', 31, 'fsdfdsf', '435435', 9.10, '2020-04-09 13:51:22'),
(0, '45435', 30, 'EWREWR', '35435', 6.50, '2020-04-06 08:35:21'),
(0, '543', 30, 'dsfdsf', '5646466', 6.50, '2020-04-06 08:35:21'),
(0, '643', 30, 'tretertt', '443646', 6.50, '2020-04-06 08:35:21'),
(0, '34532', 30, 'tretertrtr', '43435', 6.50, '2020-04-06 08:35:21'),
(0, '454', 30, 'ffdgg', '5345', 6.50, '2020-04-06 08:35:21'),
(0, '66', 30, 'tretret', '5656', 6.50, '2020-04-06 08:35:21'),
(0, '65465', 30, 'FGFDGF', '656546546', 6.50, '2020-04-06 08:35:21'),
(0, '45435', 30, 'REREWR', '455435', 6.50, '2020-04-06 08:35:21'),
(0, '6456546', 30, 'tretr', '56546', 6.50, '2020-04-06 08:35:21'),
(0, '56546', 30, 'retrgfd', '6456', 6.40, '2020-04-06 08:35:21'),
(0, '7657657', 31, 'trtrtertetrret', '6546456546', 9.10, '2020-04-09 13:51:22'),
(0, '65465', 31, 'rwerf', '6546', 9.10, '2020-04-09 13:51:22'),
(0, '5435', 31, 'fdfsdfsfs', '45435345', 9.10, '2020-04-09 13:51:22'),
(0, '6565', 31, 'trett', '56464646456', 9.10, '2020-04-09 13:51:22'),
(0, '56546', 31, 'erttrt', '654654', 9.10, '2020-04-09 13:51:22'),
(0, '6546456', 31, 'dsffdfds', '646464', 9.10, '2020-04-09 13:51:22'),
(0, '67657676', 31, 'fdsff', '566456', 9.10, '2020-04-09 13:51:22'),
(0, '6546', 31, 'gfdgfd', '6546546', 9.10, '2020-04-09 13:51:22'),
(0, '5435', 31, 'dfdfffdsfd', '4534534535345', 9.10, '2020-04-09 13:51:22'),
(0, '767', 31, 'HGHH', '7676765757', 9.10, '2020-04-09 13:51:22'),
(0, '67657', 31, 'FDSFDSF', '7676767', 9.10, '2020-04-09 13:51:22'),
(0, '65646', 31, 'FDGFDGFD', '546546', 9.10, '2020-04-09 13:51:22'),
(0, '25632', 36, 'PRUEBA', '20604347247', 45.00, '2020-08-20 19:16:22');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tec_categories`
--

CREATE TABLE `tec_categories` (
  `id` int(11) NOT NULL,
  `code` varchar(20) NOT NULL,
  `name` varchar(55) NOT NULL,
  `image` varchar(100) DEFAULT 'no_image.png'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `tec_categories`
--

INSERT INTO `tec_categories` (`id`, `code`, `name`, `image`) VALUES
(10, '00', 'LIBRERIA', '7ce20a4770c4830cc2491832390acacb.jpg'),
(11, '01', 'FERRETERIA', 'f971f3ee4a511985b5bc1b505e9482a1.jpg'),
(12, '02', 'ABARROTES', 'ba3a3d51982f2eafacbd00eaabcb32d4.jpg'),
(13, '03', 'REPUESTOS', '95b3237651e0d5f36c2d729a8339053a.jpg'),
(14, '04', 'CELULARES', '0cbaeec22b336a51a3a9762301722645.jpg');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tec_combo_items`
--

CREATE TABLE `tec_combo_items` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `item_code` varchar(20) NOT NULL,
  `quantity` decimal(12,4) NOT NULL,
  `price` decimal(25,2) DEFAULT NULL,
  `cost` decimal(25,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tec_customers`
--

CREATE TABLE `tec_customers` (
  `id` int(11) NOT NULL,
  `name` varchar(55) NOT NULL,
  `cf1` varchar(255) NOT NULL,
  `cf2` varchar(255) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `email` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `tec_customers`
--

INSERT INTO `tec_customers` (`id`, `name`, `cf1`, `cf2`, `phone`, `email`) VALUES
(1, 'CLIENTE GENERICO', '', '', '', ''),
(6, 'adruian', '', '', '', ''),
(7, 'Claudia Natalia Escobar Alzamora', '', '', '', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tec_expenses`
--

CREATE TABLE `tec_expenses` (
  `id` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp(),
  `reference` varchar(50) NOT NULL,
  `amount` decimal(25,2) NOT NULL,
  `note` varchar(1000) DEFAULT NULL,
  `created_by` varchar(55) NOT NULL,
  `attachment` varchar(55) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `tec_expenses`
--

INSERT INTO `tec_expenses` (`id`, `date`, `reference`, `amount`, `note`, `created_by`, `attachment`) VALUES
(1, '2020-04-04 22:44:00', 'pago de luz', 150.00, '', '1', NULL),
(2, '2020-05-13 11:14:00', 'pago prueba', 2.00, '', '1', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tec_gift_cards`
--

CREATE TABLE `tec_gift_cards` (
  `id` int(11) NOT NULL,
  `date` timestamp NULL DEFAULT current_timestamp(),
  `card_no` varchar(20) NOT NULL,
  `value` decimal(25,2) NOT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `balance` decimal(25,2) NOT NULL,
  `expiry` date DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `tec_gift_cards`
--

INSERT INTO `tec_gift_cards` (`id`, `date`, `card_no`, `value`, `customer_id`, `balance`, `expiry`, `created_by`) VALUES
(1, '2019-12-27 23:20:23', '5463 4200 2771 4582', 500.00, NULL, 466.00, NULL, 1),
(2, '2020-04-05 01:58:43', '8551 2875 2570 8637', 100.00, NULL, 100.00, NULL, 1),
(3, '2020-04-05 02:54:08', '2556 2416 2628 3623', 1000.00, NULL, 1000.00, NULL, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tec_groups`
--

CREATE TABLE `tec_groups` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `name` varchar(20) NOT NULL,
  `description` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `tec_groups`
--

INSERT INTO `tec_groups` (`id`, `name`, `description`) VALUES
(1, 'admin', 'Administrator'),
(2, 'staff', 'Staff');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tec_login_attempts`
--

CREATE TABLE `tec_login_attempts` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `ip_address` varbinary(16) NOT NULL,
  `login` varchar(100) NOT NULL,
  `time` int(11) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `tec_login_attempts`
--

INSERT INTO `tec_login_attempts` (`id`, `ip_address`, `login`, `time`) VALUES
(30, 0x3138312e3133372e3136362e323534, 'niltonharold@botmail.com', 1613258416),
(31, 0x3138312e3133372e3136362e323534, 'niltonharold@gmail.com', 1613271876);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tec_payments`
--

CREATE TABLE `tec_payments` (
  `id` int(11) NOT NULL,
  `date` timestamp NULL DEFAULT current_timestamp(),
  `sale_id` int(11) DEFAULT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `transaction_id` varchar(50) DEFAULT NULL,
  `paid_by` varchar(20) NOT NULL,
  `cheque_no` varchar(20) DEFAULT NULL,
  `cc_no` varchar(20) DEFAULT NULL,
  `cc_holder` varchar(25) DEFAULT NULL,
  `cc_month` varchar(2) DEFAULT NULL,
  `cc_year` varchar(4) DEFAULT NULL,
  `cc_type` varchar(20) DEFAULT NULL,
  `amount` decimal(25,2) NOT NULL,
  `currency` varchar(3) DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `attachment` varchar(55) DEFAULT NULL,
  `note` varchar(1000) DEFAULT NULL,
  `pos_paid` decimal(25,2) DEFAULT 0.00,
  `pos_balance` decimal(25,2) DEFAULT 0.00,
  `gc_no` varchar(20) DEFAULT NULL,
  `reference` varchar(50) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `tec_payments`
--

INSERT INTO `tec_payments` (`id`, `date`, `sale_id`, `customer_id`, `transaction_id`, `paid_by`, `cheque_no`, `cc_no`, `cc_holder`, `cc_month`, `cc_year`, `cc_type`, `amount`, `currency`, `created_by`, `attachment`, `note`, `pos_paid`, `pos_balance`, `gc_no`, `reference`, `updated_by`, `updated_at`) VALUES
(5, '2019-12-27 21:26:27', 6, 1, NULL, 'gift_card', '', '', '', '', '', '', 27.50, NULL, 1, NULL, '', 27.50, 0.00, '5463 4200 2771 4582', NULL, NULL, NULL),
(6, '2019-12-27 21:33:36', 7, 1, NULL, 'gift_card', '', '', '', '', '', '', 6.50, NULL, 2, NULL, '', 6.50, 0.00, '5463 4200 2771 4582', NULL, NULL, NULL),
(7, '2020-02-08 00:35:48', 9, 1, NULL, 'cash', '', '', '', '', '', '', 480.00, NULL, 1, NULL, '', 480.00, 0.00, '', NULL, NULL, NULL),
(8, '2020-02-22 20:12:00', 10, 1, NULL, 'cash', '', '', '', '', '', '', 3.00, NULL, 1, NULL, '', 3.00, 0.00, '', NULL, NULL, NULL),
(9, '2020-02-22 20:24:04', 11, 1, NULL, 'cash', '', '', '', '', '', '', 3.00, NULL, 1, NULL, '', 500.00, 497.00, '', NULL, NULL, NULL),
(10, '2020-02-23 23:53:29', 12, 1, NULL, 'cash', '', '', '', '', '', '', 7.00, NULL, 1, NULL, '', 7.00, 0.00, '', NULL, NULL, NULL),
(11, '2020-02-26 11:30:00', 13, 6, NULL, 'other', '', '', '', '', '', 'Visa', 6.00, NULL, 1, NULL, '', 0.00, 0.00, '', '', NULL, NULL),
(12, '2020-03-02 23:33:20', 14, 1, NULL, 'cash', '', '', '', '', '', '', 13.50, NULL, 1, NULL, '', 50.00, 36.50, '', NULL, NULL, NULL),
(13, '2020-03-09 20:54:06', 15, 1, NULL, 'CC', '', '1234567894562145', 'mary', '12', '2020', 'Visa', 39.52, NULL, 1, NULL, '', 39.52, 0.00, '', NULL, NULL, NULL),
(14, '2020-03-19 16:49:42', 16, 1, NULL, 'cash', '', '', '', '', '', '', 1.50, NULL, 1, NULL, '', 1.50, 0.00, '', NULL, NULL, NULL),
(15, '2020-03-19 16:53:54', 17, 1, NULL, 'CC', '', '123456789101234', 'margot', '04', '2020', 'Visa', 4.50, NULL, 1, NULL, '', 4.50, 0.00, '', NULL, NULL, NULL),
(16, '2020-03-31 01:23:50', 18, 1, NULL, 'cash', '', '', '', '', '', '', 3.00, NULL, 1, NULL, '', 3.00, 0.00, '', NULL, NULL, NULL),
(17, '2020-03-31 14:43:26', 19, 1, NULL, 'cash', '', '', '', '', '', '', 7.50, NULL, 1, NULL, '', 7.50, 0.00, '', NULL, NULL, NULL),
(18, '2020-03-31 14:53:45', 20, 1, NULL, 'cash', '', '', '', '', '', '', 7.50, NULL, 1, NULL, '', 100.00, 92.50, '', NULL, NULL, NULL),
(19, '2020-03-31 17:28:15', 21, 1, NULL, 'cash', '', '', '', '', '', '', 6.00, NULL, 1, NULL, '', 6.00, 0.00, '', NULL, NULL, NULL),
(20, '2020-04-04 22:33:14', 22, 1, NULL, 'cash', '', '', '', '', '', '', 30.00, NULL, 1, NULL, '', 50.00, 20.00, '', NULL, NULL, NULL),
(21, '2020-04-04 22:39:35', 23, 1, NULL, 'cash', '', '', '', '', '', '', 574.30, NULL, 1, NULL, '', 600.00, 25.70, '', NULL, NULL, NULL),
(22, '2020-04-04 23:55:11', 24, 1, NULL, 'CC', '', '4557880567560960', 'carlos', '06', '2024', 'Visa', 9.00, NULL, 1, NULL, '', 9.00, 0.00, '', NULL, NULL, NULL),
(23, '2020-04-04 23:59:09', 25, 1, NULL, 'cash', '', '', '', '', '', '', 110.00, NULL, 1, NULL, '', 110.00, 0.00, '', NULL, NULL, NULL),
(24, '2020-04-05 00:40:50', 26, 1, NULL, 'cash', '', '', '', '', '', '', 6.00, NULL, 1, NULL, '', 20.00, 14.00, '', NULL, NULL, NULL),
(25, '2020-04-05 00:41:24', 27, 1, NULL, 'cash', '', '', '', '', '', '', 1.80, NULL, 1, NULL, '', 10.00, 8.20, '', NULL, NULL, NULL),
(26, '2020-04-06 12:20:31', 28, 1, NULL, 'cash', '', '', '', '', '', '', 1.00, NULL, 1, NULL, '', 1.00, 0.00, '', NULL, NULL, NULL),
(27, '2020-04-06 12:21:59', 29, 1, NULL, 'cash', '', '', '', '', '', '', 9.30, NULL, 1, NULL, '', 10.00, 0.70, '', NULL, NULL, NULL),
(28, '2020-04-06 12:35:21', 30, 1, NULL, 'cash', '', '', '', '', '', '', 6.40, NULL, 2, NULL, '', 10.00, 3.60, '', NULL, NULL, NULL),
(29, '2020-04-09 17:51:22', 31, 1, NULL, 'cash', '', '', '', '', '', '', 9.10, NULL, 1, NULL, '', 10.00, 0.90, '', NULL, NULL, NULL),
(30, '2020-05-13 10:49:17', 32, 1, NULL, 'cash', '', '', '', '', '', '', 3.00, NULL, 2, NULL, '', 3.00, 0.00, '', NULL, NULL, NULL),
(31, '2020-05-13 10:50:39', 33, 1, NULL, 'cash', '', '', '', '', '', '', 6.00, NULL, 1, NULL, '', 6.00, 0.00, '', NULL, NULL, NULL),
(32, '2020-07-07 23:24:30', 34, 1, NULL, 'cash', '', '', '', '', '', '', 4.50, NULL, 1, NULL, '', 50.00, 45.50, '', NULL, NULL, NULL),
(33, '2020-08-04 21:35:09', 35, 1, NULL, 'cash', '', '', '', '', '', '', 6.00, NULL, 1, NULL, '', 10.00, 4.00, '', NULL, NULL, NULL),
(34, '2020-08-20 23:16:22', 36, 1, NULL, 'cash', '', '', '', '', '', '', 45.00, NULL, 1, NULL, '', 50.00, 5.00, '', NULL, NULL, NULL),
(35, '2020-08-28 19:20:42', 37, 1, NULL, 'cash', '', '', '', '', '', '', 3.00, NULL, 1, NULL, '', 3.00, 0.00, '', NULL, NULL, NULL),
(36, '2020-09-23 14:06:34', 38, 1, NULL, 'cash', '', '', '', '', '', '', 10.50, NULL, 1, NULL, '', 50.00, 39.50, '', NULL, NULL, NULL),
(37, '2020-09-29 14:13:00', 39, 1, NULL, 'cash', '', '', '', '', '', '', 3.50, NULL, 1, NULL, '', 10.00, 6.50, '', NULL, NULL, NULL),
(38, '2020-10-29 13:04:45', 40, 1, NULL, 'cash', '', '', '', '', '', '', 1.50, NULL, 1, NULL, '', 10.00, 8.50, '', NULL, NULL, NULL),
(39, '2020-12-09 12:56:30', 41, 1, NULL, 'cash', '', '', '', '', '', '', 7.50, NULL, 1, NULL, '', 20.00, 12.50, '', NULL, NULL, NULL),
(40, '2020-12-09 12:57:31', 42, 1, NULL, 'cash', '', '', '', '', '', '', 11.00, NULL, 1, NULL, '', 100.00, 89.00, '', NULL, NULL, NULL),
(41, '2020-12-09 13:01:53', 43, 1, NULL, 'cash', '', '', '', '', '', '', 3.50, NULL, 1, NULL, '', 10.00, 6.50, '', NULL, NULL, NULL),
(42, '2020-12-09 13:24:52', 44, 1, NULL, 'cash', '', '', '', '', '', '', 39.50, NULL, 1, NULL, '', 100.00, 60.50, '', NULL, NULL, NULL),
(43, '2020-12-09 17:21:38', 45, 1, NULL, 'cash', '', '', '', '', '', '', 10.00, NULL, 1, NULL, '', 50.00, 40.00, '', NULL, NULL, NULL),
(44, '2020-12-09 17:28:27', 46, 1, NULL, 'cash', '', '', '', '', '', '', 7.00, NULL, 1, NULL, '', 50.00, 43.00, '', NULL, NULL, NULL),
(45, '2020-12-15 19:34:26', 48, 1, NULL, 'cash', '', '', '', '', '', '', 22.00, NULL, 1, NULL, '', 50.00, 28.00, '', NULL, NULL, NULL),
(46, '2020-12-15 19:52:35', 49, 1, NULL, 'cash', '', '', '', '', '', '', 605.00, NULL, 1, NULL, '', 650.00, 45.00, '', NULL, NULL, NULL),
(47, '2020-12-16 23:24:19', 50, 1, NULL, 'cash', '', '', '', '', '', '', 7.50, NULL, 1, NULL, '', 15.00, 7.50, '', NULL, NULL, NULL),
(48, '2020-12-25 13:58:26', 51, 1, NULL, 'cash', '', '', '', '', '', '', 38.00, NULL, 1, NULL, '', 100.00, 62.00, '', NULL, NULL, NULL),
(49, '2020-12-30 17:59:24', 52, 7, NULL, 'cash', '', '', '', '', '', '', 1000.00, NULL, 1, NULL, '', 1000.00, 0.00, '', NULL, NULL, NULL),
(50, '2021-01-03 16:17:44', 53, 1, NULL, 'cash', '', '', '', '', '', '', 3.00, NULL, 1, NULL, '', 100.00, 97.00, '', NULL, NULL, NULL),
(51, '2021-01-03 16:18:59', 54, 1, NULL, 'cash', '', '', '', '', '', '', 7.80, NULL, 1, NULL, '', 100.00, 92.20, '', NULL, NULL, NULL),
(52, '2021-01-06 14:19:00', 55, 1, NULL, 'cash', '', '', '', '', '', 'Visa', 6.00, NULL, 1, NULL, '', 0.00, 0.00, '', '', NULL, NULL),
(53, '2021-01-06 15:32:45', 58, 1, NULL, 'cash', '', '', '', '', '', '', 23.00, NULL, 1, NULL, '', 50.00, 27.00, '', NULL, NULL, NULL),
(54, '2021-01-06 15:38:40', 59, 1, NULL, 'Cheque', '', '', '', '', '', '', 0.50, NULL, 1, NULL, '', 0.50, 0.00, '', NULL, NULL, NULL),
(55, '2021-01-06 15:40:00', 56, 1, NULL, 'cash', '', '', '', '', '', 'Visa', 4.00, NULL, 1, NULL, '', 0.00, 0.00, '', '', NULL, NULL),
(56, '2021-01-14 20:04:49', 60, 1, NULL, 'cash', '', '', '', '', '', '', 5.50, NULL, 1, NULL, '', 10.00, 4.50, '', NULL, NULL, NULL),
(57, '2021-01-14 20:07:15', 61, 1, NULL, 'cash', '', '', '', '', '', '', 35.00, NULL, 1, NULL, '', 100.00, 65.00, '', NULL, NULL, NULL),
(58, '2021-01-23 14:19:37', 62, 1, NULL, 'cash', '', '', '', '', '', '', 15.00, NULL, 1, NULL, '', 15.00, 0.00, '', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tec_products`
--

CREATE TABLE `tec_products` (
  `id` int(11) NOT NULL,
  `code` varchar(50) NOT NULL,
  `name` char(255) NOT NULL,
  `category_id` int(11) NOT NULL DEFAULT 1,
  `price` decimal(25,2) NOT NULL,
  `image` varchar(255) DEFAULT 'no_image.png',
  `tax` varchar(20) DEFAULT NULL,
  `cost` decimal(25,2) DEFAULT NULL,
  `tax_method` tinyint(1) DEFAULT 1,
  `quantity` decimal(15,2) DEFAULT 0.00,
  `barcode_symbology` varchar(20) NOT NULL DEFAULT 'code39',
  `type` varchar(20) NOT NULL DEFAULT 'standard',
  `details` text DEFAULT NULL,
  `alert_quantity` decimal(10,2) DEFAULT 0.00
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `tec_products`
--

INSERT INTO `tec_products` (`id`, `code`, `name`, `category_id`, `price`, `image`, `tax`, `cost`, `tax_method`, `quantity`, `barcode_symbology`, `type`, `details`, `alert_quantity`) VALUES
(83, '0001', 'A4 SURCO RAYADO', 10, 3.00, 'e5657ad1ac576e7ba3f108fe34d18afd.jpg', '0', 2.50, 0, 995.00, 'code39', 'standard', '', 5.00),
(84, '0002', 'A4 SURCO CUADRICULADO', 10, 3.00, '63c118aa39aca7b89e7fd359a78c3ae7.jpg', '0', 2.50, 0, 25.00, 'code39', 'standard', '', 5.00),
(85, '0003', 'REGLA 30 CM', 10, 1.00, 'db11bbce46d741cbbabe4e34396ad8eb.jpg', '0', 0.80, 0, 35.00, 'code39', 'standard', '', 5.00),
(86, '0004', 'HIGIENE PERSONAL', 10, 0.50, 'fc3efbe1c0e8cc079efdabe4c0925d45.jpg', '0', 0.20, 0, 36.00, 'code39', 'standard', '', 5.00),
(87, '0005', 'CEMENTO APU', 11, 23.00, '932b66cb86d77a542cd6514f877dd896.jpg', '0', 20.10, 0, 46.00, 'code39', 'standard', '', 5.00),
(88, '0006', 'CEMENTO ANDINO ROJO', 11, 22.00, '4b2898da7b95396be67cc95016415dab.jpg', '0', 21.00, 0, 49.00, 'code39', 'standard', '', 5.00),
(89, '0007', 'CEMENTO ANDINO VERDE', 11, 23.00, '49788bfe30a74c0ae717d545fae93595.jpg', '0', 22.00, 0, 50.00, 'code39', 'standard', '', 5.00),
(90, '0008', 'ARROZ COSTEÑO', 12, 3.50, '24c00172c5389ba77e6468729ff3ced6.jpg', '0', 3.20, 0, 43.00, 'code39', 'standard', '', 5.00),
(91, '0009', 'ARROZ VERDE VALLE', 12, 3.50, '647652aea8cc7b80baa358c7d1d2813b.jpg', '0', 3.20, 0, 44.00, 'code39', 'standard', '', 5.00),
(92, '7751271021975', 'LECHE GLORIA GRANDE', 12, 2.50, 'dcf5634a7b67a3200f39ee0d3fffc1ea.jpg', '0', 2.20, 0, 40.00, 'code39', 'standard', '', 5.00),
(93, '7751271021579', 'LECHE GLORIA CHICA', 12, 1.50, '9422667aaefa0e307fb46c0cda07b3cd.jpg', '0', 1.30, 0, 48.00, 'code39', 'standard', '', 5.00),
(94, '0012', 'RODAJE NACHI 18', 13, 4.50, '4059b89003aa5543c91a1e52c11a904f.png', '0', 3.00, 0, 45.00, 'code39', 'standard', '', 5.00),
(95, '0013', 'LLANTA MICHELIN 18', 13, 35.00, '271291c67cce760fdb7d4c4ad3709a8e.png', '0', 30.00, 0, 42.00, 'code39', 'standard', '', 5.00),
(96, '0014', 'SAMSUNG A10', 14, 480.00, '7ea64cf4d29c7fbff050dcac18592406.jpg', '0', 350.00, 0, 49.00, 'code39', 'standard', '', 5.00),
(97, '0015', 'SAMSUNG A20', 14, 580.00, 'f1d122f1cadb82be28e622a68929b9eb.jpg', '0', 450.00, 0, 48.00, 'code39', 'standard', '', 5.00),
(98, '0016', 'IPHONE XI PRO', 14, 5200.00, 'b65e085be0fbd9033975d8084b1778d4.jpg', '0', 4900.00, 0, 6.00, 'code39', 'standard', '', 5.00),
(99, '7750670244954', 'AGUA MINERAL CIELO', 12, 1.20, '5990d29f910003fa275c17d4b747f943.jpg', '0', 1.00, 0, 50.00, 'code39', 'standard', '', 12.00),
(100, '44603864', 'Adelanto de 1000 soles por licencia de uso ilitado de sistema', 14, 1000.00, 'no_image.png', '0', 1000.00, 0, 0.00, 'code39', 'standard', '', 1.00),
(101, '12345', 'Gasto operativo capacitación', 14, 15.00, 'no_image.png', '0', 10.00, 0, 999.00, 'code39', 'standard', '', 100.00);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tec_purchases`
--

CREATE TABLE `tec_purchases` (
  `id` int(11) NOT NULL,
  `reference` varchar(55) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp(),
  `note` varchar(1000) NOT NULL,
  `total` decimal(25,2) NOT NULL,
  `attachment` varchar(255) DEFAULT NULL,
  `supplier_id` int(11) DEFAULT NULL,
  `received` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tec_purchase_items`
--

CREATE TABLE `tec_purchase_items` (
  `id` int(11) NOT NULL,
  `purchase_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` decimal(15,2) NOT NULL,
  `cost` decimal(25,2) NOT NULL,
  `subtotal` decimal(25,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tec_registers`
--

CREATE TABLE `tec_registers` (
  `id` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp(),
  `user_id` int(11) NOT NULL,
  `cash_in_hand` decimal(25,2) NOT NULL,
  `status` varchar(10) NOT NULL,
  `total_cash` decimal(25,2) DEFAULT NULL,
  `total_cheques` int(11) DEFAULT NULL,
  `total_cc_slips` int(11) DEFAULT NULL,
  `total_cash_submitted` decimal(25,2) DEFAULT NULL,
  `total_cheques_submitted` int(11) DEFAULT NULL,
  `total_cc_slips_submitted` int(11) DEFAULT NULL,
  `note` text DEFAULT NULL,
  `closed_at` timestamp NULL DEFAULT NULL,
  `transfer_opened_bills` varchar(50) DEFAULT NULL,
  `closed_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `tec_registers`
--

INSERT INTO `tec_registers` (`id`, `date`, `user_id`, `cash_in_hand`, `status`, `total_cash`, `total_cheques`, `total_cc_slips`, `total_cash_submitted`, `total_cheques_submitted`, `total_cc_slips_submitted`, `note`, `closed_at`, `transfer_opened_bills`, `closed_by`) VALUES
(5, '2019-12-27 11:28:49', 1, 0.00, 'close', 0.00, 0, 0, 0.00, 0, 0, '', '2019-12-27 21:30:21', NULL, 1),
(6, '2019-12-27 21:30:56', 2, 0.00, 'close', 0.00, 0, 0, 0.00, 0, 0, '', '2019-12-27 21:38:31', NULL, 2),
(7, '2019-12-27 21:41:11', 2, 0.00, 'close', 0.00, 0, 0, 0.00, 0, 0, '', '2019-12-27 21:47:34', NULL, 2),
(8, '2019-12-27 21:47:52', 1, 0.00, 'close', 0.00, 0, 0, 0.00, 0, 0, '', '2019-12-27 21:57:45', NULL, 1),
(9, '2020-01-22 14:41:22', 1, 0.00, 'close', 480.00, 0, 0, 480.00, 0, 0, '', '2020-02-08 00:37:54', NULL, 1),
(10, '2020-01-22 14:41:40', 1, 0.00, 'close', 493.00, 0, 0, 493.00, 0, 0, '', '2020-03-02 23:20:36', NULL, 1),
(11, '2020-03-02 23:28:27', 1, 50.00, 'close', 63.50, 0, 0, 63.50, 0, 0, '', '2020-03-02 23:41:48', NULL, 1),
(12, '2020-03-09 20:52:59', 1, 0.00, 'close', 1.50, 0, 2, 1.50, 0, 2, '', '2020-03-19 16:56:20', NULL, 1),
(13, '2020-03-09 20:53:01', 1, 0.00, 'close', 1.50, 0, 2, 1.50, 0, 2, '', '2020-03-19 17:03:07', NULL, 1),
(14, '2020-03-26 19:54:36', 1, 0.00, 'close', 3.00, 0, 0, 3.00, 0, 0, '', '2020-03-31 01:24:08', NULL, 1),
(15, '2020-03-31 14:43:08', 1, 2.00, 'close', 17.00, 0, 0, 17.00, 0, 0, '', '2020-03-31 15:06:26', NULL, 1),
(16, '2020-03-31 17:28:08', 1, 2.00, 'close', 38.00, 0, 0, 38.00, 0, 0, '', '2020-04-04 22:33:38', NULL, 1),
(17, '2020-04-04 22:38:01', 1, 100.00, 'close', 674.30, 0, 0, 674.30, 0, 0, '', '2020-04-04 22:43:42', NULL, 1),
(18, '2020-04-04 22:45:25', 1, 0.00, 'close', 0.00, 0, 1, 0.00, 0, 1, '', '2020-04-04 23:55:26', NULL, 1),
(19, '2020-04-04 23:58:10', 1, 5.00, 'close', 115.00, 0, 0, 115.00, 0, 0, '', '2020-04-05 00:02:37', NULL, 1),
(20, '2020-04-05 00:40:18', 1, 10.00, 'close', 17.80, 0, 0, 17.80, 0, 0, '', '2020-04-05 00:41:37', NULL, 1),
(21, '2020-04-05 00:53:17', 2, 0.00, 'close', 0.00, 0, 0, 0.00, 0, 0, '', '2020-04-05 01:13:15', NULL, 2),
(22, '2020-04-05 01:03:26', 1, 0.00, 'close', 0.00, 0, 0, 0.00, 0, 0, '', '2020-04-05 01:19:22', NULL, 1),
(23, '2020-04-05 01:13:25', 2, 0.00, 'close', 0.00, 0, 0, 0.00, 0, 0, '', '2020-04-06 12:34:46', NULL, 2),
(24, '2020-04-06 12:19:42', 1, 5.00, 'close', 15.30, 0, 0, 15.30, 0, 0, '', '2020-04-06 12:27:34', NULL, 1),
(25, '2020-04-06 12:34:56', 2, 5.00, 'close', 11.40, 0, 0, 11.40, 0, 0, '', '2020-04-06 14:39:44', NULL, 2),
(26, '2020-04-08 15:12:23', 2, 0.00, 'close', 0.00, 0, 0, 0.00, 0, 0, '', '2020-04-08 15:12:46', NULL, 2),
(27, '2020-04-09 17:50:22', 1, 5.00, 'close', 14.10, 0, 0, 14.10, 0, 0, '', '2020-04-09 23:57:58', NULL, 1),
(28, '2020-05-13 10:49:08', 2, 0.00, 'open', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(29, '2020-05-13 10:50:33', 1, 0.00, 'close', 4.00, 0, 0, 4.00, 0, 0, '', '2020-05-13 11:15:13', NULL, 1),
(30, '2020-07-07 23:23:38', 1, 0.00, 'close', 4.50, 0, 0, 4.50, 0, 0, '', '2020-07-07 23:31:30', NULL, 1),
(31, '2020-07-17 01:01:13', 1, 0.00, 'close', 0.00, 0, 0, 0.00, 0, 0, '', '2020-07-17 01:01:45', NULL, 1),
(32, '2020-08-04 21:34:48', 1, 0.00, 'close', 69.50, 0, 0, 69.50, 0, 0, '', '2020-11-05 13:51:19', NULL, 1),
(33, '2020-11-28 13:54:19', 1, 0.00, 'close', 18.50, 0, 0, 18.50, 0, 0, '', '2020-12-09 12:58:48', '0', 1),
(34, '2020-12-09 12:59:29', 1, 2.00, 'close', 45.00, 0, 0, 45.00, 0, 0, '', '2020-12-09 17:20:13', NULL, 1),
(35, '2020-12-09 17:20:31', 1, 50.00, 'close', 60.00, 0, 0, 60.00, 0, 0, '', '2020-12-09 17:22:02', NULL, 1),
(36, '2020-12-09 17:26:29', 1, 0.00, 'close', 7.00, 0, 0, 7.00, 0, 0, '', '2020-12-10 14:33:48', NULL, 1),
(37, '2020-12-10 14:34:52', 1, 0.00, 'close', 0.00, 0, 0, 0.00, 0, 0, '', '2020-12-15 19:33:17', '0', 1),
(38, '2020-12-15 19:33:41', 1, 0.00, 'close', 22.00, 0, 0, 22.00, 0, 0, '', '2020-12-15 19:34:57', '0', 1),
(39, '2020-12-15 19:39:39', 1, 0.00, 'close', 612.50, 0, 0, 612.50, 0, 0, '', '2020-12-25 00:11:57', NULL, 1),
(40, '2020-12-25 00:12:05', 1, 0.00, 'close', 0.00, 0, 0, 0.00, 0, 0, '', '2020-12-25 00:24:30', NULL, 1),
(41, '2020-12-25 13:57:40', 1, 0.00, 'close', 1038.00, 0, 0, 1038.00, 0, 0, '', '2021-01-03 16:09:36', NULL, 1),
(42, '2021-01-03 16:10:14', 1, 0.00, 'close', 0.00, 0, 0, 0.00, 0, 0, '', '2021-01-03 16:12:01', NULL, 1),
(43, '2021-01-03 16:17:31', 1, 0.00, 'close', 16.80, 0, 0, 16.80, 0, 0, '', '2021-01-06 14:43:37', NULL, 1),
(44, '2021-01-06 15:32:04', 1, 0.00, 'close', 23.00, 0, 0, 23.00, 0, 0, '', '2021-01-06 15:38:17', NULL, 1),
(45, '2021-01-06 15:32:04', 1, 0.00, 'close', 23.00, 1, 0, 23.00, 1, 0, '', '2021-01-06 15:39:06', NULL, 1),
(46, '2021-01-09 17:53:25', 1, 0.00, 'close', 0.00, 0, 0, 0.00, 0, 0, '', '2021-01-14 20:03:37', NULL, 1),
(47, '2021-01-14 20:04:03', 1, 50.00, 'close', 105.50, 0, 0, 105.50, 0, 0, '', '2021-02-05 01:45:36', NULL, 1),
(48, '2021-02-05 23:07:28', 1, 0.00, 'open', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tec_sales`
--

CREATE TABLE `tec_sales` (
  `id` int(11) NOT NULL,
  `date` datetime NOT NULL,
  `customer_id` int(11) NOT NULL,
  `customer_name` varchar(55) NOT NULL,
  `total` decimal(25,2) NOT NULL,
  `product_discount` decimal(25,2) DEFAULT NULL,
  `order_discount_id` varchar(20) DEFAULT NULL,
  `order_discount` decimal(25,2) DEFAULT NULL,
  `total_discount` decimal(25,2) DEFAULT NULL,
  `product_tax` decimal(25,2) DEFAULT NULL,
  `order_tax_id` varchar(20) DEFAULT NULL,
  `order_tax` decimal(25,2) DEFAULT NULL,
  `total_tax` decimal(25,2) DEFAULT NULL,
  `grand_total` decimal(25,2) NOT NULL,
  `total_items` int(11) DEFAULT NULL,
  `total_quantity` decimal(15,2) DEFAULT NULL,
  `paid` decimal(25,2) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `note` varchar(1000) DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL,
  `rounding` decimal(8,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `tec_sales`
--

INSERT INTO `tec_sales` (`id`, `date`, `customer_id`, `customer_name`, `total`, `product_discount`, `order_discount_id`, `order_discount`, `total_discount`, `product_tax`, `order_tax_id`, `order_tax`, `total_tax`, `grand_total`, `total_items`, `total_quantity`, `paid`, `created_by`, `updated_by`, `updated_at`, `note`, `status`, `rounding`) VALUES
(6, '2019-12-27 18:26:27', 1, 'CLIENTE GENERICO', 27.50, 0.00, NULL, 0.00, 0.00, 0.00, '0%', 0.00, 0.00, 27.50, 3, 3.00, 27.50, 1, NULL, NULL, '', 'paid', 0.00),
(7, '2019-12-27 18:33:36', 1, 'CLIENTE GENERICO', 6.50, 0.00, NULL, 0.00, 0.00, 0.00, '0%', 0.00, 0.00, 6.50, 3, 3.00, 6.50, 2, NULL, NULL, '', 'paid', 0.00),
(9, '2020-02-07 21:35:48', 1, 'CLIENTE GENERICO', 480.00, 0.00, NULL, 0.00, 0.00, 0.00, '0%', 0.00, 0.00, 480.00, 1, 1.00, 480.00, 1, NULL, NULL, '', 'paid', 0.00),
(10, '2020-02-22 17:12:00', 1, 'CLIENTE GENERICO', 3.00, 0.00, NULL, 0.00, 0.00, 0.00, '0%', 0.00, 0.00, 3.00, 1, 1.00, 3.00, 1, NULL, NULL, '', 'paid', 0.00),
(11, '2020-02-22 17:24:04', 1, 'CLIENTE GENERICO', 3.00, 0.00, NULL, 0.00, 0.00, 0.00, '0%', 0.00, 0.00, 3.00, 1, 1.00, 3.00, 1, NULL, NULL, '', 'paid', 0.00),
(12, '2020-02-23 20:53:29', 1, 'CLIENTE GENERICO', 7.00, 0.00, NULL, 0.00, 0.00, 0.00, '0%', 0.00, 0.00, 7.00, 3, 3.00, 7.00, 1, NULL, NULL, '', 'paid', 0.00),
(13, '2020-02-26 08:27:17', 6, 'adruian', 6.00, 0.00, NULL, 0.00, 0.00, 0.00, '0%', 0.00, 0.00, 6.00, 2, 2.00, 6.00, 1, NULL, NULL, '', 'paid', 0.00),
(14, '2020-03-02 20:33:20', 1, 'CLIENTE GENERICO', 13.50, 0.00, NULL, 0.00, 0.00, 0.00, '0%', 0.00, 0.00, 13.50, 4, 4.00, 13.50, 1, NULL, NULL, '', 'paid', 0.00),
(15, '2020-03-09 17:54:06', 1, 'CLIENTE GENERICO', 38.00, 0.00, NULL, 0.00, 0.00, 0.00, '4%', 1.52, 1.52, 39.52, 2, 2.00, 39.52, 1, NULL, NULL, '', 'paid', 0.00),
(16, '2020-03-19 13:49:42', 1, 'CLIENTE GENERICO', 1.50, 0.00, NULL, 0.00, 0.00, 0.00, '0%', 0.00, 0.00, 1.50, 2, 2.00, 1.50, 1, NULL, NULL, '', 'paid', 0.00),
(17, '2020-03-19 13:53:54', 1, 'CLIENTE GENERICO', 4.50, 0.00, NULL, 0.00, 0.00, 0.00, '0%', 0.00, 0.00, 4.50, 1, 1.00, 4.50, 1, NULL, NULL, '', 'paid', 0.00),
(18, '2020-03-30 22:23:50', 1, 'CLIENTE GENERICO', 3.00, 0.00, NULL, 0.00, 0.00, 0.00, '0%', 0.00, 0.00, 3.00, 1, 1.00, 3.00, 1, NULL, NULL, '', 'paid', 0.00),
(19, '2020-03-31 11:43:26', 1, 'CLIENTE GENERICO', 7.50, 0.00, NULL, 0.00, 0.00, 0.00, '0%', 0.00, 0.00, 7.50, 4, 4.00, 7.50, 1, NULL, NULL, '', 'paid', 0.00),
(20, '2020-03-31 11:53:45', 1, 'CLIENTE GENERICO', 7.50, 0.00, NULL, 0.00, 0.00, 0.00, '0%', 0.00, 0.00, 7.50, 4, 4.00, 7.50, 1, NULL, NULL, '', 'paid', 0.00),
(21, '2020-03-31 14:28:15', 1, 'CLIENTE GENERICO', 6.00, 0.00, NULL, 0.00, 0.00, 0.00, '0%', 0.00, 0.00, 6.00, 1, 2.00, 6.00, 1, NULL, NULL, '', 'paid', 0.00),
(22, '2020-04-04 19:33:14', 1, 'CLIENTE GENERICO', 30.00, 5.00, NULL, 0.00, 5.00, 0.00, '0%', 0.00, 0.00, 30.00, 1, 1.00, 30.00, 1, NULL, NULL, '', 'paid', 0.00),
(23, '2020-04-04 19:39:35', 1, 'CLIENTE GENERICO', 574.30, 20.20, NULL, 0.00, 20.20, 0.00, '0%', 0.00, 0.00, 574.30, 4, 6.00, 574.30, 1, NULL, NULL, '', 'paid', 0.00),
(24, '2020-04-04 20:55:11', 1, 'CLIENTE GENERICO', 9.00, 0.00, NULL, 0.00, 0.00, 0.00, '0%', 0.00, 0.00, 9.00, 2, 3.00, 9.00, 1, NULL, NULL, '', 'paid', 0.00),
(25, '2020-04-04 20:59:09', 1, 'CLIENTE GENERICO', 110.00, 0.00, NULL, 0.00, 0.00, 0.00, '0%', 0.00, 0.00, 110.00, 1, 1.00, 110.00, 1, NULL, NULL, '', 'paid', 0.00),
(26, '2020-04-04 21:40:50', 1, 'CLIENTE GENERICO', 6.00, 0.00, NULL, 0.00, 0.00, 0.00, '0%', 0.00, 0.00, 6.00, 1, 2.00, 6.00, 1, NULL, NULL, '', 'paid', 0.00),
(27, '2020-04-04 21:41:24', 1, 'CLIENTE GENERICO', 1.80, 0.20, NULL, 0.00, 0.20, 0.00, '0%', 0.00, 0.00, 1.80, 1, 2.00, 1.80, 1, NULL, NULL, '', 'paid', 0.00),
(28, '2020-04-06 08:20:31', 1, 'CLIENTE GENERICO', 1.50, 0.00, '0.5', 0.50, 0.50, 0.00, '0%', 0.00, 0.00, 1.00, 2, 2.00, 1.00, 1, NULL, NULL, '', 'paid', 0.00),
(29, '2020-04-06 08:21:59', 1, 'CLIENTE GENERICO', 9.30, 0.20, NULL, 0.00, 0.20, 0.00, '0%', 0.00, 0.00, 9.30, 3, 3.00, 9.30, 1, NULL, NULL, '', 'paid', 0.00),
(30, '2020-04-06 08:35:21', 1, 'CLIENTE GENERICO', 6.50, 0.00, '0.1', 0.10, 0.10, 0.00, '0%', 0.00, 0.00, 6.40, 3, 3.00, 6.40, 2, NULL, NULL, '', 'paid', 0.00),
(31, '2020-04-09 13:51:22', 1, 'CLIENTE GENERICO', 9.10, 0.40, NULL, 0.00, 0.40, 0.00, '0%', 0.00, 0.00, 9.10, 2, 3.00, 9.10, 1, NULL, NULL, '', 'paid', 0.00),
(32, '2020-05-13 06:49:17', 1, 'CLIENTE GENERICO', 3.00, 0.00, NULL, 0.00, 0.00, 0.00, '0%', 0.00, 0.00, 3.00, 1, 1.00, 3.00, 2, NULL, NULL, '', 'paid', 0.00),
(33, '2020-05-13 06:50:39', 1, 'CLIENTE GENERICO', 6.00, 0.00, NULL, 0.00, 0.00, 0.00, '0%', 0.00, 0.00, 6.00, 2, 2.00, 6.00, 1, NULL, NULL, '', 'paid', 0.00),
(34, '2020-07-07 19:24:30', 1, 'CLIENTE GENERICO', 4.50, 0.00, NULL, 0.00, 0.00, 0.00, '0%', 0.00, 0.00, 4.50, 1, 1.00, 4.50, 1, NULL, NULL, '', 'paid', 0.00),
(35, '2020-08-04 17:35:09', 1, 'CLIENTE GENERICO', 6.00, 0.00, NULL, 0.00, 0.00, 0.00, '0%', 0.00, 0.00, 6.00, 2, 2.00, 6.00, 1, NULL, NULL, '', 'paid', 0.00),
(36, '2020-08-20 19:16:22', 1, 'CLIENTE GENERICO', 45.00, 0.00, NULL, 0.00, 0.00, 0.00, '0%', 0.00, 0.00, 45.00, 5, 5.00, 45.00, 1, NULL, NULL, '', 'paid', 0.00),
(37, '2020-08-28 15:20:42', 1, 'CLIENTE GENERICO', 3.00, 0.00, NULL, 0.00, 0.00, 0.00, '0%', 0.00, 0.00, 3.00, 1, 1.00, 3.00, 1, NULL, NULL, '', 'paid', 0.00),
(38, '2020-09-23 11:06:34', 1, 'CLIENTE GENERICO', 10.50, 0.00, NULL, 0.00, 0.00, 0.00, '0%', 0.00, 0.00, 10.50, 4, 5.00, 10.50, 1, NULL, NULL, '', 'paid', 0.00),
(39, '2020-09-29 11:13:00', 1, 'CLIENTE GENERICO', 3.50, 0.00, NULL, 0.00, 0.00, 0.00, '0%', 0.00, 0.00, 3.50, 1, 1.00, 3.50, 1, NULL, NULL, '', 'paid', 0.00),
(40, '2020-10-29 10:04:45', 1, 'CLIENTE GENERICO', 1.50, 0.00, NULL, 0.00, 0.00, 0.00, '0%', 0.00, 0.00, 1.50, 2, 2.00, 1.50, 1, NULL, NULL, '', 'paid', 0.00),
(41, '2020-12-09 09:56:30', 1, 'CLIENTE GENERICO', 7.50, 0.00, NULL, 0.00, 0.00, 0.00, '0%', 0.00, 0.00, 7.50, 3, 3.00, 7.50, 1, NULL, NULL, '', 'paid', 0.00),
(42, '2020-12-09 09:57:31', 1, 'CLIENTE GENERICO', 11.00, 0.00, NULL, 0.00, 0.00, 0.00, '0%', 0.00, 0.00, 11.00, 3, 3.00, 11.00, 1, NULL, NULL, '', 'paid', 0.00),
(43, '2020-12-09 10:01:53', 1, 'CLIENTE GENERICO', 3.50, 0.00, NULL, 0.00, 0.00, 0.00, '0%', 0.00, 0.00, 3.50, 2, 2.00, 3.50, 1, NULL, NULL, '', 'paid', 0.00),
(44, '2020-12-09 10:24:52', 1, 'CLIENTE GENERICO', 39.50, 0.00, NULL, 0.00, 0.00, 0.00, '0%', 0.00, 0.00, 39.50, 2, 2.00, 39.50, 1, NULL, NULL, '', 'paid', 0.00),
(45, '2020-12-09 14:21:38', 1, 'CLIENTE GENERICO', 10.00, 0.00, NULL, 0.00, 0.00, 0.00, '0%', 0.00, 0.00, 10.00, 2, 3.00, 10.00, 1, NULL, NULL, '', 'paid', 0.00),
(46, '2020-12-09 14:28:27', 1, 'CLIENTE GENERICO', 7.00, 0.00, NULL, 0.00, 0.00, 0.00, '0%', 0.00, 0.00, 7.00, 4, 4.00, 7.00, 1, NULL, NULL, '', 'paid', 0.00),
(47, '2020-12-09 14:33:35', 1, 'CLIENTE GENERICO', 4.00, 0.00, NULL, 0.00, 0.00, 0.00, '0%', 0.00, 0.00, 4.00, 2, 2.00, 4.00, 1, NULL, NULL, '', 'paid', 0.00),
(48, '2020-12-15 16:34:26', 1, 'CLIENTE GENERICO', 22.00, 0.00, NULL, 0.00, 0.00, 0.00, '0%', 0.00, 0.00, 22.00, 1, 1.00, 22.00, 1, NULL, NULL, '', 'paid', 0.00),
(49, '2020-12-15 16:52:35', 1, 'CLIENTE GENERICO', 605.00, 10.00, NULL, 0.00, 10.00, 0.00, '0%', 0.00, 0.00, 605.00, 2, 2.00, 605.00, 1, NULL, NULL, '', 'paid', 0.00),
(50, '2020-12-16 20:24:19', 1, 'CLIENTE GENERICO', 7.50, 0.00, NULL, 0.00, 0.00, 0.00, '0%', 0.00, 0.00, 7.50, 4, 4.00, 7.50, 1, NULL, NULL, 'dsfdsf', 'paid', 0.00),
(51, '2020-12-25 10:58:26', 1, 'CLIENTE GENERICO', 38.00, 0.00, NULL, 0.00, 0.00, 0.00, '0%', 0.00, 0.00, 38.00, 2, 2.00, 38.00, 1, NULL, NULL, '', 'paid', 0.00),
(52, '2020-12-30 14:59:24', 7, 'Claudia Natalia Escobar Alzamora', 1000.00, 0.00, NULL, 0.00, 0.00, 0.00, '0%', 0.00, 0.00, 1000.00, 1, 1.00, 1000.00, 1, NULL, NULL, '', 'paid', 0.00),
(53, '2021-01-03 13:17:44', 1, 'CLIENTE GENERICO', 3.00, 0.00, NULL, 0.00, 0.00, 0.00, '0%', 0.00, 0.00, 3.00, 1, 1.00, 3.00, 1, NULL, NULL, '', 'paid', 0.00),
(54, '2021-01-03 13:18:59', 1, 'CLIENTE GENERICO', 7.50, 0.00, NULL, 0.00, 0.00, 0.00, '4%', 0.30, 0.30, 7.80, 4, 4.00, 7.80, 1, NULL, NULL, '', 'paid', 0.00),
(55, '2021-01-06 11:18:07', 1, 'CLIENTE GENERICO', 6.00, 0.00, NULL, 0.00, 0.00, 0.00, '0%', 0.00, 0.00, 6.00, 2, 2.00, 6.00, 1, NULL, NULL, '', 'paid', 0.00),
(56, '2021-01-06 11:32:58', 1, 'CLIENTE GENERICO', 4.00, 0.00, NULL, 0.00, 0.00, 0.00, '0%', 0.00, 0.00, 4.00, 2, 2.00, 4.00, 1, NULL, NULL, '', 'paid', 0.00),
(57, '2021-01-06 11:34:24', 1, 'CLIENTE GENERICO', 6.50, 0.00, NULL, 0.00, 0.00, 0.00, '0%', 0.00, 0.00, 6.50, 2, 3.00, 6.50, 1, NULL, NULL, '', 'paid', 0.00),
(58, '2021-01-06 12:32:45', 1, 'CLIENTE GENERICO', 23.00, 0.00, NULL, 0.00, 0.00, 0.00, '0%', 0.00, 0.00, 23.00, 1, 1.00, 23.00, 1, NULL, NULL, '', 'paid', 0.00),
(59, '2021-01-06 12:38:40', 1, 'CLIENTE GENERICO', 0.50, 0.00, NULL, 0.00, 0.00, 0.00, '0%', 0.00, 0.00, 0.50, 1, 1.00, 0.50, 1, NULL, NULL, '', 'paid', 0.00),
(60, '2021-01-14 17:04:49', 1, 'CLIENTE GENERICO', 5.50, 0.00, NULL, 0.00, 0.00, 0.00, '0%', 0.00, 0.00, 5.50, 2, 2.00, 5.50, 1, NULL, NULL, '', 'paid', 0.00),
(61, '2021-01-14 17:07:15', 1, 'CLIENTE GENERICO', 35.00, 0.00, NULL, 0.00, 0.00, 0.00, '0%', 0.00, 0.00, 35.00, 1, 1.00, 35.00, 1, NULL, NULL, '', 'paid', 0.00),
(62, '2021-01-23 11:19:37', 1, 'CLIENTE GENERICO', 15.00, 0.00, NULL, 0.00, 0.00, 0.00, '0%', 0.00, 0.00, 15.00, 1, 1.00, 15.00, 1, NULL, NULL, '', 'paid', 0.00);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tec_sale_items`
--

CREATE TABLE `tec_sale_items` (
  `id` int(11) NOT NULL,
  `sale_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` decimal(15,2) NOT NULL,
  `unit_price` decimal(25,2) NOT NULL,
  `net_unit_price` decimal(25,2) NOT NULL,
  `discount` varchar(20) DEFAULT NULL,
  `item_discount` decimal(25,2) DEFAULT NULL,
  `tax` int(20) DEFAULT NULL,
  `item_tax` decimal(25,2) DEFAULT NULL,
  `subtotal` decimal(25,2) NOT NULL,
  `real_unit_price` decimal(25,2) DEFAULT NULL,
  `cost` decimal(25,2) DEFAULT 0.00
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `tec_sale_items`
--

INSERT INTO `tec_sale_items` (`id`, `sale_id`, `product_id`, `quantity`, `unit_price`, `net_unit_price`, `discount`, `item_discount`, `tax`, `item_tax`, `subtotal`, `real_unit_price`, `cost`) VALUES
(7, 6, 83, 1.00, 3.00, 3.00, '0', 0.00, 0, 0.00, 3.00, 3.00, 2.50),
(8, 6, 87, 1.00, 23.00, 23.00, '0', 0.00, 0, 0.00, 23.00, 23.00, 20.10),
(9, 6, 93, 1.00, 1.50, 1.50, '0', 0.00, 0, 0.00, 1.50, 1.50, 1.30),
(10, 7, 86, 1.00, 0.50, 0.50, '0', 0.00, 0, 0.00, 0.50, 0.50, 0.20),
(11, 7, 90, 1.00, 3.50, 3.50, '0', 0.00, 0, 0.00, 3.50, 3.50, 3.20),
(12, 7, 92, 1.00, 2.50, 2.50, '0', 0.00, 0, 0.00, 2.50, 2.50, 2.20),
(15, 9, 96, 1.00, 480.00, 480.00, '0', 0.00, 0, 0.00, 480.00, 480.00, 350.00),
(16, 10, 84, 1.00, 3.00, 3.00, '0', 0.00, 0, 0.00, 3.00, 3.00, 2.50),
(17, 11, 83, 1.00, 3.00, 3.00, '0', 0.00, 0, 0.00, 3.00, 3.00, 2.50),
(18, 12, 83, 1.00, 3.00, 3.00, '0', 0.00, 0, 0.00, 3.00, 3.00, 2.50),
(19, 12, 84, 1.00, 3.00, 3.00, '0', 0.00, 0, 0.00, 3.00, 3.00, 2.50),
(20, 12, 85, 1.00, 1.00, 1.00, '0', 0.00, 0, 0.00, 1.00, 1.00, 0.80),
(21, 13, 83, 1.00, 3.00, 3.00, '0', 0.00, 0, 0.00, 3.00, 3.00, 2.50),
(22, 13, 84, 1.00, 3.00, 3.00, '0', 0.00, 0, 0.00, 3.00, 3.00, 2.50),
(23, 14, 83, 1.00, 3.00, 3.00, '0', 0.00, 0, 0.00, 3.00, 3.00, 2.50),
(24, 14, 91, 1.00, 3.50, 3.50, '0', 0.00, 0, 0.00, 3.50, 3.50, 3.20),
(25, 14, 92, 1.00, 2.50, 2.50, '0', 0.00, 0, 0.00, 2.50, 2.50, 2.20),
(26, 14, 94, 1.00, 4.50, 4.50, '0', 0.00, 0, 0.00, 4.50, 4.50, 3.00),
(27, 15, 84, 1.00, 3.00, 3.00, '0', 0.00, 0, 0.00, 3.00, 3.00, 2.50),
(28, 15, 95, 1.00, 35.00, 35.00, '0', 0.00, 0, 0.00, 35.00, 35.00, 30.00),
(29, 16, 85, 1.00, 1.00, 1.00, '0', 0.00, 0, 0.00, 1.00, 1.00, 0.80),
(30, 16, 86, 1.00, 0.50, 0.50, '0', 0.00, 0, 0.00, 0.50, 0.50, 0.20),
(31, 17, 94, 1.00, 4.50, 4.50, '0', 0.00, 0, 0.00, 4.50, 4.50, 3.00),
(32, 18, 83, 1.00, 3.00, 3.00, '0', 0.00, 0, 0.00, 3.00, 3.00, 2.50),
(33, 19, 83, 1.00, 3.00, 3.00, '0', 0.00, 0, 0.00, 3.00, 3.00, 2.50),
(34, 19, 84, 1.00, 3.00, 3.00, '0', 0.00, 0, 0.00, 3.00, 3.00, 2.50),
(35, 19, 85, 1.00, 1.00, 1.00, '0', 0.00, 0, 0.00, 1.00, 1.00, 0.80),
(36, 19, 86, 1.00, 0.50, 0.50, '0', 0.00, 0, 0.00, 0.50, 0.50, 0.20),
(37, 20, 83, 1.00, 3.00, 3.00, '0', 0.00, 0, 0.00, 3.00, 3.00, 2.50),
(38, 20, 84, 1.00, 3.00, 3.00, '0', 0.00, 0, 0.00, 3.00, 3.00, 2.50),
(39, 20, 85, 1.00, 1.00, 1.00, '0', 0.00, 0, 0.00, 1.00, 1.00, 0.80),
(40, 20, 86, 1.00, 0.50, 0.50, '0', 0.00, 0, 0.00, 0.50, 0.50, 0.20),
(41, 21, 83, 2.00, 3.00, 3.00, '0', 0.00, 0, 0.00, 6.00, 3.00, 2.50),
(42, 22, 95, 1.00, 30.00, 30.00, '5', 5.00, 0, 0.00, 30.00, 35.00, 30.00),
(43, 23, 83, 2.00, 2.90, 2.90, '0.1', 0.20, 0, 0.00, 5.80, 3.00, 2.50),
(44, 23, 90, 1.00, 3.50, 3.50, '0', 0.00, 0, 0.00, 3.50, 3.50, 3.20),
(45, 23, 92, 2.00, 2.50, 2.50, '0', 0.00, 0, 0.00, 5.00, 2.50, 2.20),
(46, 23, 97, 1.00, 560.00, 560.00, '20', 20.00, 0, 0.00, 560.00, 580.00, 450.00),
(47, 24, 83, 1.00, 3.00, 3.00, '0', 0.00, 0, 0.00, 3.00, 3.00, 2.50),
(48, 24, 84, 2.00, 3.00, 3.00, '0', 0.00, 0, 0.00, 6.00, 3.00, 2.50),
(49, 25, 2147483647, 1.00, 110.00, 110.00, '0', 0.00, 0, 0.00, 110.00, 110.00, NULL),
(50, 26, 83, 2.00, 3.00, 3.00, '0', 0.00, 0, 0.00, 6.00, 3.00, 2.50),
(51, 27, 85, 2.00, 0.90, 0.90, '0.10', 0.20, 0, 0.00, 1.80, 1.00, 0.80),
(52, 28, 85, 1.00, 1.00, 1.00, '0', 0.00, 0, 0.00, 1.00, 1.00, 0.80),
(53, 28, 86, 1.00, 0.50, 0.50, '0', 0.00, 0, 0.00, 0.50, 0.50, 0.20),
(54, 29, 90, 1.00, 3.50, 3.50, '0', 0.00, 0, 0.00, 3.50, 3.50, 3.20),
(55, 29, 91, 1.00, 3.30, 3.30, '0.2', 0.20, 0, 0.00, 3.30, 3.50, 3.20),
(56, 29, 92, 1.00, 2.50, 2.50, '0', 0.00, 0, 0.00, 2.50, 2.50, 2.20),
(57, 30, 83, 1.00, 3.00, 3.00, '0', 0.00, 0, 0.00, 3.00, 3.00, 2.50),
(58, 30, 84, 1.00, 3.00, 3.00, '0', 0.00, 0, 0.00, 3.00, 3.00, 2.50),
(59, 30, 86, 1.00, 0.50, 0.50, '0', 0.00, 0, 0.00, 0.50, 0.50, 0.20),
(60, 31, 90, 2.00, 3.30, 3.30, '0.2', 0.40, 0, 0.00, 6.60, 3.50, 3.20),
(61, 31, 92, 1.00, 2.50, 2.50, '0', 0.00, 0, 0.00, 2.50, 2.50, 2.20),
(62, 32, 83, 1.00, 3.00, 3.00, '0', 0.00, 0, 0.00, 3.00, 3.00, 2.50),
(63, 33, 83, 1.00, 3.00, 3.00, '0', 0.00, 0, 0.00, 3.00, 3.00, 2.50),
(64, 33, 84, 1.00, 3.00, 3.00, '0', 0.00, 0, 0.00, 3.00, 3.00, 2.50),
(65, 34, 94, 1.00, 4.50, 4.50, '0', 0.00, 0, 0.00, 4.50, 4.50, 3.00),
(66, 35, 83, 1.00, 3.00, 3.00, '0', 0.00, 0, 0.00, 3.00, 3.00, 2.50),
(67, 35, 84, 1.00, 3.00, 3.00, '0', 0.00, 0, 0.00, 3.00, 3.00, 2.50),
(68, 36, 83, 1.00, 3.00, 3.00, '0', 0.00, 0, 0.00, 3.00, 3.00, 2.50),
(69, 36, 85, 1.00, 1.00, 1.00, '0', 0.00, 0, 0.00, 1.00, 1.00, 0.80),
(70, 36, 91, 1.00, 3.50, 3.50, '0', 0.00, 0, 0.00, 3.50, 3.50, 3.20),
(71, 36, 92, 1.00, 2.50, 2.50, '0', 0.00, 0, 0.00, 2.50, 2.50, 2.20),
(72, 36, 95, 1.00, 35.00, 35.00, '0', 0.00, 0, 0.00, 35.00, 35.00, 30.00),
(73, 37, 83, 1.00, 3.00, 3.00, '0', 0.00, 0, 0.00, 3.00, 3.00, 2.50),
(74, 38, 83, 1.00, 3.00, 3.00, '0', 0.00, 0, 0.00, 3.00, 3.00, 2.50),
(75, 38, 84, 2.00, 3.00, 3.00, '0', 0.00, 0, 0.00, 6.00, 3.00, 2.50),
(76, 38, 85, 1.00, 1.00, 1.00, '0', 0.00, 0, 0.00, 1.00, 1.00, 0.80),
(77, 38, 86, 1.00, 0.50, 0.50, '0', 0.00, 0, 0.00, 0.50, 0.50, 0.20),
(78, 39, 90, 1.00, 3.50, 3.50, '0', 0.00, 0, 0.00, 3.50, 3.50, 3.20),
(79, 40, 85, 1.00, 1.00, 1.00, '0', 0.00, 0, 0.00, 1.00, 1.00, 0.80),
(80, 40, 86, 1.00, 0.50, 0.50, '0', 0.00, 0, 0.00, 0.50, 0.50, 0.20),
(81, 41, 91, 1.00, 3.50, 3.50, '0', 0.00, 0, 0.00, 3.50, 3.50, 3.20),
(82, 41, 92, 1.00, 2.50, 2.50, '0', 0.00, 0, 0.00, 2.50, 2.50, 2.20),
(83, 41, 93, 1.00, 1.50, 1.50, '0', 0.00, 0, 0.00, 1.50, 1.50, 1.30),
(84, 42, 84, 1.00, 3.00, 3.00, '0', 0.00, 0, 0.00, 3.00, 3.00, 2.50),
(85, 42, 90, 1.00, 3.50, 3.50, '0', 0.00, 0, 0.00, 3.50, 3.50, 3.20),
(86, 42, 94, 1.00, 4.50, 4.50, '0', 0.00, 0, 0.00, 4.50, 4.50, 3.00),
(87, 43, 84, 1.00, 3.00, 3.00, '0', 0.00, 0, 0.00, 3.00, 3.00, 2.50),
(88, 43, 86, 1.00, 0.50, 0.50, '0', 0.00, 0, 0.00, 0.50, 0.50, 0.20),
(89, 44, 94, 1.00, 4.50, 4.50, '0', 0.00, 0, 0.00, 4.50, 4.50, 3.00),
(90, 44, 95, 1.00, 35.00, 35.00, '0', 0.00, 0, 0.00, 35.00, 35.00, 30.00),
(91, 45, 84, 1.00, 3.00, 3.00, '0', 0.00, 0, 0.00, 3.00, 3.00, 2.50),
(92, 45, 91, 2.00, 3.50, 3.50, '0', 0.00, 0, 0.00, 7.00, 3.50, 3.20),
(93, 46, 84, 1.00, 3.00, 3.00, '0', 0.00, 0, 0.00, 3.00, 3.00, 2.50),
(94, 46, 85, 1.00, 1.00, 1.00, '0', 0.00, 0, 0.00, 1.00, 1.00, 0.80),
(95, 46, 86, 1.00, 0.50, 0.50, '0', 0.00, 0, 0.00, 0.50, 0.50, 0.20),
(96, 46, 92, 1.00, 2.50, 2.50, '0', 0.00, 0, 0.00, 2.50, 2.50, 2.20),
(97, 47, 84, 1.00, 3.00, 3.00, '0', 0.00, 0, 0.00, 3.00, 3.00, 2.50),
(98, 47, 85, 1.00, 1.00, 1.00, '0', 0.00, 0, 0.00, 1.00, 1.00, 0.80),
(99, 48, 88, 1.00, 22.00, 22.00, '0', 0.00, 0, 0.00, 22.00, 22.00, 21.00),
(100, 49, 95, 1.00, 30.00, 30.00, '5', 5.00, 0, 0.00, 30.00, 35.00, 30.00),
(101, 49, 97, 1.00, 575.00, 575.00, '5', 5.00, 0, 0.00, 575.00, 580.00, 450.00),
(102, 50, 83, 1.00, 3.00, 3.00, '0', 0.00, 0, 0.00, 3.00, 3.00, 2.50),
(103, 50, 84, 1.00, 3.00, 3.00, '0', 0.00, 0, 0.00, 3.00, 3.00, 2.50),
(104, 50, 85, 1.00, 1.00, 1.00, '0', 0.00, 0, 0.00, 1.00, 1.00, 0.80),
(105, 50, 86, 1.00, 0.50, 0.50, '0', 0.00, 0, 0.00, 0.50, 0.50, 0.20),
(106, 51, 84, 1.00, 3.00, 3.00, '0', 0.00, 0, 0.00, 3.00, 3.00, 2.50),
(107, 51, 95, 1.00, 35.00, 35.00, '0', 0.00, 0, 0.00, 35.00, 35.00, 30.00),
(108, 52, 100, 1.00, 1000.00, 1000.00, '0', 0.00, 0, 0.00, 1000.00, 1000.00, 1000.00),
(109, 53, 83, 1.00, 3.00, 3.00, '0', 0.00, 0, 0.00, 3.00, 3.00, 2.50),
(110, 54, 83, 1.00, 3.00, 3.00, '0', 0.00, 0, 0.00, 3.00, 3.00, 2.50),
(111, 54, 84, 1.00, 3.00, 3.00, '0', 0.00, 0, 0.00, 3.00, 3.00, 2.50),
(112, 54, 85, 1.00, 1.00, 1.00, '0', 0.00, 0, 0.00, 1.00, 1.00, 0.80),
(113, 54, 86, 1.00, 0.50, 0.50, '0', 0.00, 0, 0.00, 0.50, 0.50, 0.20),
(114, 55, 83, 1.00, 3.00, 3.00, '0', 0.00, 0, 0.00, 3.00, 3.00, 2.50),
(115, 55, 84, 1.00, 3.00, 3.00, '0', 0.00, 0, 0.00, 3.00, 3.00, 2.50),
(116, 56, 84, 1.00, 3.00, 3.00, '0', 0.00, 0, 0.00, 3.00, 3.00, 2.50),
(117, 56, 85, 1.00, 1.00, 1.00, '0', 0.00, 0, 0.00, 1.00, 1.00, 0.80),
(118, 57, 84, 2.00, 3.00, 3.00, '0', 0.00, 0, 0.00, 6.00, 3.00, 2.50),
(119, 57, 86, 1.00, 0.50, 0.50, '0', 0.00, 0, 0.00, 0.50, 0.50, 0.20),
(120, 58, 87, 1.00, 23.00, 23.00, '0', 0.00, 0, 0.00, 23.00, 23.00, 20.10),
(121, 59, 86, 1.00, 0.50, 0.50, '0', 0.00, 0, 0.00, 0.50, 0.50, 0.20),
(122, 60, 83, 1.00, 3.00, 3.00, '0', 0.00, 0, 0.00, 3.00, 3.00, 2.50),
(123, 60, 92, 1.00, 2.50, 2.50, '0', 0.00, 0, 0.00, 2.50, 2.50, 2.20),
(124, 61, 95, 1.00, 35.00, 35.00, '0', 0.00, 0, 0.00, 35.00, 35.00, 30.00),
(125, 62, 101, 1.00, 15.00, 15.00, '0', 0.00, 0, 0.00, 15.00, 15.00, 10.00);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tec_sessions`
--

CREATE TABLE `tec_sessions` (
  `id` varchar(40) NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `timestamp` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `data` blob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `tec_sessions`
--

INSERT INTO `tec_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES
('0503eb32c66bc1ca2f2e7d8b199bc96b72ed26f5', '181.137.166.254', 1613270905, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631333237303839323b6964656e746974797c733a32343a226e696c746f6e6861726f6c6440686f746d61696c2e636f6d223b757365726e616d657c733a31333a224e696c746f6e204861726f6c64223b656d61696c7c733a32343a226e696c746f6e6861726f6c6440686f746d61696c2e636f6d223b757365725f69647c733a313a2231223b66697273745f6e616d657c733a31333a224e696c746f6e204861726f6c64223b6c6173745f6e616d657c733a31323a2243617374726f204d61797461223b637265617465645f6f6e7c733a32323a2231322f30342f323031372030393a33353a343920414d223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231363133323538343235223b6c6173745f69707c733a31353a223138312e3133372e3136362e323534223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2231223b72656769737465725f69647c733a323a223438223b636173685f696e5f68616e647c733a343a22302e3030223b72656769737465725f6f70656e5f74696d657c733a31393a22323032312d30322d30352032303a30373a3238223b),
('11f5e0690355fdd08762822e026116816bea93f1', '181.67.136.232', 1611441497, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313434313439363b),
('16cddb00c60d3d44101412d4f45055c2c55461c2', '181.67.136.235', 1609949988, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630393934393832373b6964656e746974797c733a32343a226e696c746f6e6861726f6c6440686f746d61696c2e636f6d223b757365726e616d657c733a31333a224e696c746f6e204861726f6c64223b656d61696c7c733a32343a226e696c746f6e6861726f6c6440686f746d61696c2e636f6d223b757365725f69647c733a313a2231223b66697273745f6e616d657c733a31333a224e696c746f6e204861726f6c64223b6c6173745f6e616d657c733a31323a2243617374726f204d61797461223b637265617465645f6f6e7c733a32323a2231322f30342f323031372030393a33353a343920414d223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231363039383934353037223b6c6173745f69707c733a31343a223138312e36372e3133362e323335223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2231223b72656769737465725f69647c733a323a223433223b636173685f696e5f68616e647c733a343a22302e3030223b72656769737465725f6f70656e5f74696d657c733a31393a22323032312d30312d30332031333a31373a3331223b),
('1721d9649062a99fc79bc76f63f2f5b1d457454f', '190.234.250.51', 1612572624, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631323537323631393b),
('1c2568fb08abbb300382ffc619f77fcfe092e367', '181.67.136.220', 1610321712, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631303332313632303b6964656e746974797c733a32343a226e696c746f6e6861726f6c6440686f746d61696c2e636f6d223b757365726e616d657c733a31333a224e696c746f6e204861726f6c64223b656d61696c7c733a32343a226e696c746f6e6861726f6c6440686f746d61696c2e636f6d223b757365725f69647c733a313a2231223b66697273745f6e616d657c733a31333a224e696c746f6e204861726f6c64223b6c6173745f6e616d657c733a31323a2243617374726f204d61797461223b637265617465645f6f6e7c733a32323a2231322f30342f323031372030393a33353a343920414d223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231363130323930323834223b6c6173745f69707c733a31343a223138312e36372e3133362e313031223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2231223b72656769737465725f69647c733a323a223436223b636173685f696e5f68616e647c733a343a22302e3030223b72656769737465725f6f70656e5f74696d657c733a31393a22323032312d30312d30392031343a35333a3235223b),
('1dbde3c1225c653504cccd3b23e5917cdd2d4764', '181.67.136.235', 1609954670, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630393935343637303b6964656e746974797c733a32343a226e696c746f6e6861726f6c6440686f746d61696c2e636f6d223b757365726e616d657c733a31333a224e696c746f6e204861726f6c64223b656d61696c7c733a32343a226e696c746f6e6861726f6c6440686f746d61696c2e636f6d223b757365725f69647c733a313a2231223b66697273745f6e616d657c733a31333a224e696c746f6e204861726f6c64223b6c6173745f6e616d657c733a31323a2243617374726f204d61797461223b637265617465645f6f6e7c733a32323a2231322f30342f323031372030393a33353a343920414d223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231363039383934353037223b6c6173745f69707c733a31343a223138312e36372e3133362e323335223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2231223b72656769737465725f69647c733a323a223434223b636173685f696e5f68616e647c733a343a22302e3030223b72656769737465725f6f70656e5f74696d657c733a31393a22323032312d30312d30362031323a33323a3034223b726d73706f737c693a313b),
('1dd50a89d1e5b6af7a4e0e2a0abe17f7be5264e1', '3.131.157.44', 1610787173, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631303738373137333b),
('20378dd254260e80ab6721ba34d874898222c926', '181.176.110.69', 1610662288, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631303636323133353b6964656e746974797c733a32343a226e696c746f6e6861726f6c6440686f746d61696c2e636f6d223b757365726e616d657c733a31333a224e696c746f6e204861726f6c64223b656d61696c7c733a32343a226e696c746f6e6861726f6c6440686f746d61696c2e636f6d223b757365725f69647c733a313a2231223b66697273745f6e616d657c733a31333a224e696c746f6e204861726f6c64223b6c6173745f6e616d657c733a31323a2243617374726f204d61797461223b637265617465645f6f6e7c733a32323a2231322f30342f323031372030393a33353a343920414d223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231363130363631383037223b6c6173745f69707c733a31343a223138312e3137362e3131302e3639223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2231223b72656769737465725f69647c733a323a223437223b636173685f696e5f68616e647c733a353a2235302e3030223b72656769737465725f6f70656e5f74696d657c733a31393a22323032312d30312d31342031373a30343a3033223b),
('21fc743f530d976daeeaac9b4a9a7c7d542857ad', '212.47.251.118', 1610477444, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631303437373434343b),
('247ce6278f16cdb843820295fdaa3d51796d26c4', '190.234.250.51', 1612496736, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631323439363438373b6964656e746974797c733a32343a226e696c746f6e6861726f6c6440686f746d61696c2e636f6d223b757365726e616d657c733a31333a224e696c746f6e204861726f6c64223b656d61696c7c733a32343a226e696c746f6e6861726f6c6440686f746d61696c2e636f6d223b757365725f69647c733a313a2231223b66697273745f6e616d657c733a31333a224e696c746f6e204861726f6c64223b6c6173745f6e616d657c733a31323a2243617374726f204d61797461223b637265617465645f6f6e7c733a32323a2231322f30342f323031372030393a33353a343920414d223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231363132333934353134223b6c6173745f69707c733a31343a223139302e3233342e3235302e3531223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2231223b72656769737465725f69647c733a323a223437223b636173685f696e5f68616e647c733a353a2235302e3030223b72656769737465725f6f70656e5f74696d657c733a31393a22323032312d30312d31342031373a30343a3033223b6d6573736167657c733a33303a22726567697374726f206365727261646f20636f7272656374616d656e7465223b5f5f63695f766172737c613a313a7b733a373a226d657373616765223b733a333a226f6c64223b7d),
('2a7c9181cc23464e63ea69cb85504339288daa11', '181.176.113.88', 1610549085, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631303534393038343b),
('2dc3eed97ce3454b38625673bacaa7d1791fb496', '177.91.255.68', 1612496490, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631323439363439303b),
('3158bda4879746f140a6ffd44e40bee27b92b5e7', '190.234.250.51', 1612574157, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631323537343034363b6964656e746974797c733a32343a226e696c746f6e6861726f6c6440686f746d61696c2e636f6d223b757365726e616d657c733a31333a224e696c746f6e204861726f6c64223b656d61696c7c733a32343a226e696c746f6e6861726f6c6440686f746d61696c2e636f6d223b757365725f69647c733a313a2231223b66697273745f6e616d657c733a31333a224e696c746f6e204861726f6c64223b6c6173745f6e616d657c733a31323a2243617374726f204d61797461223b637265617465645f6f6e7c733a32323a2231322f30342f323031372030393a33353a343920414d223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231363132343936343934223b6c6173745f69707c733a31343a223139302e3233342e3235302e3531223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2231223b72656769737465725f69647c733a323a223438223b636173685f696e5f68616e647c733a343a22302e3030223b72656769737465725f6f70656e5f74696d657c733a31393a22323032312d30322d30352032303a30373a3238223b),
('3db94146b61e882b7129f015e5ab869b616f675c', '181.67.136.235', 1609951011, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630393935303733323b6964656e746974797c733a32343a226e696c746f6e6861726f6c6440686f746d61696c2e636f6d223b757365726e616d657c733a31333a224e696c746f6e204861726f6c64223b656d61696c7c733a32343a226e696c746f6e6861726f6c6440686f746d61696c2e636f6d223b757365725f69647c733a313a2231223b66697273745f6e616d657c733a31333a224e696c746f6e204861726f6c64223b6c6173745f6e616d657c733a31323a2243617374726f204d61797461223b637265617465645f6f6e7c733a32323a2231322f30342f323031372030393a33353a343920414d223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231363039383934353037223b6c6173745f69707c733a31343a223138312e36372e3133362e323335223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2231223b72656769737465725f69647c733a323a223433223b636173685f696e5f68616e647c733a343a22302e3030223b72656769737465725f6f70656e5f74696d657c733a31393a22323032312d30312d30332031333a31373a3331223b),
('411c49848d1f150a0f09f87c94fa0751fb49c7bc', '209.17.96.26', 1612625785, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631323632353738353b),
('5bcb173df397ef0e1542e5961d16aa0d0c9a3b0d', '190.234.250.50', 1613257993, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631333235373833313b6964656e746974797c733a32343a226e696c746f6e6861726f6c6440686f746d61696c2e636f6d223b757365726e616d657c733a31333a224e696c746f6e204861726f6c64223b656d61696c7c733a32343a226e696c746f6e6861726f6c6440686f746d61696c2e636f6d223b757365725f69647c733a313a2231223b66697273745f6e616d657c733a31333a224e696c746f6e204861726f6c64223b6c6173745f6e616d657c733a31323a2243617374726f204d61797461223b637265617465645f6f6e7c733a32323a2231322f30342f323031372030393a33353a343920414d223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231363132353733353635223b6c6173745f69707c733a31343a223139302e3233342e3235302e3531223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2231223b72656769737465725f69647c733a323a223438223b636173685f696e5f68616e647c733a343a22302e3030223b72656769737465725f6f70656e5f74696d657c733a31393a22323032312d30322d30352032303a30373a3238223b),
('5f6b94ff743c8ae7c85e80e8e0d472f8e6d485eb', '190.234.250.51', 1612394508, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631323339343530373b),
('618a9e798a7bbb0dca0be9ded90f96cb745fca1a', '181.67.136.235', 1609954884, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630393935343637303b6964656e746974797c733a32343a226e696c746f6e6861726f6c6440686f746d61696c2e636f6d223b757365726e616d657c733a31333a224e696c746f6e204861726f6c64223b656d61696c7c733a32343a226e696c746f6e6861726f6c6440686f746d61696c2e636f6d223b757365725f69647c733a313a2231223b66697273745f6e616d657c733a31333a224e696c746f6e204861726f6c64223b6c6173745f6e616d657c733a31323a2243617374726f204d61797461223b637265617465645f6f6e7c733a32323a2231322f30342f323031372030393a33353a343920414d223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231363039383934353037223b6c6173745f69707c733a31343a223138312e36372e3133362e323335223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2231223b72656769737465725f69647c733a323a223435223b636173685f696e5f68616e647c733a343a22302e3030223b72656769737465725f6f70656e5f74696d657c733a31393a22323032312d30312d30362031323a33323a3034223b),
('636fca88b3a160b25efc49eaf7d458cc0c3786f3', '212.47.251.118', 1610142962, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631303134323936323b),
('65105bda54bb405de10f384ee216c536ffa30b81', '190.234.250.51', 1612574001, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631323537333937303b6964656e746974797c733a32343a226e696c746f6e6861726f6c6440686f746d61696c2e636f6d223b757365726e616d657c733a31333a224e696c746f6e204861726f6c64223b656d61696c7c733a32343a226e696c746f6e6861726f6c6440686f746d61696c2e636f6d223b757365725f69647c733a313a2231223b66697273745f6e616d657c733a31333a224e696c746f6e204861726f6c64223b6c6173745f6e616d657c733a31323a2243617374726f204d61797461223b637265617465645f6f6e7c733a32323a2231322f30342f323031372030393a33353a343920414d223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231363132343936343934223b6c6173745f69707c733a31343a223139302e3233342e3235302e3531223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2231223b72656769737465725f69647c733a323a223438223b636173685f696e5f68616e647c733a343a22302e3030223b72656769737465725f6f70656e5f74696d657c733a31393a22323032312d30322d30352032303a30373a3238223b),
('65176b371689455edbb1bd5e414c79584a6cc5a5', '190.234.250.50', 1613258346, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631333235383334363b),
('65fb0d4e8a2bc7e4154da03c9b4f7f5329314e07', '181.176.113.88', 1610549615, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631303534393532313b6964656e746974797c733a32343a226e696c746f6e6861726f6c6440686f746d61696c2e636f6d223b757365726e616d657c733a31333a224e696c746f6e204861726f6c64223b656d61696c7c733a32343a226e696c746f6e6861726f6c6440686f746d61696c2e636f6d223b757365725f69647c733a313a2231223b66697273745f6e616d657c733a31333a224e696c746f6e204861726f6c64223b6c6173745f6e616d657c733a31323a2243617374726f204d61797461223b637265617465645f6f6e7c733a32323a2231322f30342f323031372030393a33353a343920414d223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231363130333230373330223b6c6173745f69707c733a31343a223138312e36372e3133362e323230223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2231223b72656769737465725f69647c733a323a223436223b636173685f696e5f68616e647c733a343a22302e3030223b72656769737465725f6f70656e5f74696d657c733a31393a22323032312d30312d30392031343a35333a3235223b),
('69a7486600fb85b09a8726816ae241acae3e4ac7', '190.216.191.102', 1612394516, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631323339343531363b),
('69c49a8ec92e83aa04187fdea54681f87f6395db', '190.234.250.51', 1612572733, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631323537323633303b6572726f727c733a37313a223c703e55737465642068697a6f203320696e74656e746f732073696e20c3a97869746f2e20507275656265206465206e7565766f20636f6e203130206d696e75746f733c2f703e223b5f5f63695f766172737c613a313a7b733a353a226572726f72223b733a333a226f6c64223b7d),
('6ad3b666043ba634dfa47a201972fc76a51fb041', '181.224.242.67', 1610984652, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631303938343337363b6964656e746974797c733a32343a226e696c746f6e6861726f6c6440686f746d61696c2e636f6d223b757365726e616d657c733a31333a224e696c746f6e204861726f6c64223b656d61696c7c733a32343a226e696c746f6e6861726f6c6440686f746d61696c2e636f6d223b757365725f69647c733a313a2231223b66697273745f6e616d657c733a31333a224e696c746f6e204861726f6c64223b6c6173745f6e616d657c733a31323a2243617374726f204d61797461223b637265617465645f6f6e7c733a32323a2231322f30342f323031372030393a33353a343920414d223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231363130363631383236223b6c6173745f69707c733a31343a223138312e3137362e3131302e3639223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2231223b72656769737465725f69647c733a323a223437223b636173685f696e5f68616e647c733a353a2235302e3030223b72656769737465725f6f70656e5f74696d657c733a31393a22323032312d30312d31342031373a30343a3033223b),
('6c9ea4e9edaa3e0552670b0a486a70801741392d', '190.234.250.51', 1612574041, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631323537343033323b6964656e746974797c733a32343a226e696c746f6e6861726f6c6440686f746d61696c2e636f6d223b757365726e616d657c733a31333a224e696c746f6e204861726f6c64223b656d61696c7c733a32343a226e696c746f6e6861726f6c6440686f746d61696c2e636f6d223b757365725f69647c733a313a2231223b66697273745f6e616d657c733a31333a224e696c746f6e204861726f6c64223b6c6173745f6e616d657c733a31323a2243617374726f204d61797461223b637265617465645f6f6e7c733a32323a2231322f30342f323031372030393a33353a343920414d223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231363132343936343934223b6c6173745f69707c733a31343a223139302e3233342e3235302e3531223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2231223b72656769737465725f69647c733a323a223438223b636173685f696e5f68616e647c733a343a22302e3030223b72656769737465725f6f70656e5f74696d657c733a31393a22323032312d30322d30352032303a30373a3238223b),
('7016ff26355cc496ff73039814b92b642d582326', '3.131.157.44', 1610787173, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631303738373137333b),
('7946ebfe35168b55ab5ab26f3f03f30db7a1e809', '181.137.166.254', 1613269554, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631333236393530353b6964656e746974797c733a32343a226e696c746f6e6861726f6c6440686f746d61696c2e636f6d223b757365726e616d657c733a31333a224e696c746f6e204861726f6c64223b656d61696c7c733a32343a226e696c746f6e6861726f6c6440686f746d61696c2e636f6d223b757365725f69647c733a313a2231223b66697273745f6e616d657c733a31333a224e696c746f6e204861726f6c64223b6c6173745f6e616d657c733a31323a2243617374726f204d61797461223b637265617465645f6f6e7c733a32323a2231322f30342f323031372030393a33353a343920414d223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231363133323538343235223b6c6173745f69707c733a31353a223138312e3133372e3136362e323534223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2231223b72656769737465725f69647c733a323a223438223b636173685f696e5f68616e647c733a343a22302e3030223b72656769737465725f6f70656e5f74696d657c733a31393a22323032312d30322d30352032303a30373a3238223b),
('8029f5fb286fa25db93e293d2993a934c8d06f0a', '190.234.250.50', 1613258345, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631333235383334353b),
('8557d8f5796f28422576bf887fe9eca905fae398', '181.137.166.254', 1613272395, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631333237323235313b6964656e746974797c733a32343a226e696c746f6e6861726f6c6440686f746d61696c2e636f6d223b757365726e616d657c733a31333a224e696c746f6e204861726f6c64223b656d61696c7c733a32343a226e696c746f6e6861726f6c6440686f746d61696c2e636f6d223b757365725f69647c733a313a2231223b66697273745f6e616d657c733a31333a224e696c746f6e204861726f6c64223b6c6173745f6e616d657c733a31323a2243617374726f204d61797461223b637265617465645f6f6e7c733a32323a2231322f30342f323031372030393a33353a343920414d223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231363133323639333939223b6c6173745f69707c733a31353a223138312e3133372e3136362e323534223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2231223b72656769737465725f69647c733a323a223438223b636173685f696e5f68616e647c733a343a22302e3030223b72656769737465725f6f70656e5f74696d657c733a31393a22323032312d30322d30352032303a30373a3238223b),
('877830085f296ec9a6fda2b42bb7599af4bd4f7a', '181.67.136.101', 1610290299, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631303239303239393b),
('8796dd51eb8c121b7694b3313ac838595ff345d5', '181.67.136.55', 1610737656, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631303733373635363b),
('8915b8c2ab6a1d0a3576fe7ebf090595b859ee3c', '181.176.109.247', 1611418777, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313431383539343b6964656e746974797c733a32343a226e696c746f6e6861726f6c6440686f746d61696c2e636f6d223b757365726e616d657c733a31333a224e696c746f6e204861726f6c64223b656d61696c7c733a32343a226e696c746f6e6861726f6c6440686f746d61696c2e636f6d223b757365725f69647c733a313a2231223b66697273745f6e616d657c733a31333a224e696c746f6e204861726f6c64223b6c6173745f6e616d657c733a31323a2243617374726f204d61797461223b637265617465645f6f6e7c733a32323a2231322f30342f323031372030393a33353a343920414d223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231363130393834333938223b6c6173745f69707c733a31343a223138312e3232342e3234322e3637223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2231223b72656769737465725f69647c733a323a223437223b636173685f696e5f68616e647c733a353a2235302e3030223b72656769737465725f6f70656e5f74696d657c733a31393a22323032312d30312d31342031373a30343a3033223b726d73706f737c693a313b6d6573736167657c733a32363a2256656e74612065666563747561646120636f6e20c3a97869746f223b5f5f63695f766172737c613a313a7b733a373a226d657373616765223b733a333a226f6c64223b7d),
('8f3c82ac5836031ac59e7381ab711d65dcf24196', '190.234.250.51', 1612394535, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631323339343530373b6964656e746974797c733a32343a226e696c746f6e6861726f6c6440686f746d61696c2e636f6d223b757365726e616d657c733a31333a224e696c746f6e204861726f6c64223b656d61696c7c733a32343a226e696c746f6e6861726f6c6440686f746d61696c2e636f6d223b757365725f69647c733a313a2231223b66697273745f6e616d657c733a31333a224e696c746f6e204861726f6c64223b6c6173745f6e616d657c733a31323a2243617374726f204d61797461223b637265617465645f6f6e7c733a32323a2231322f30342f323031372030393a33353a343920414d223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231363131343138363435223b6c6173745f69707c733a31353a223138312e3137362e3130392e323437223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2231223b72656769737465725f69647c733a323a223437223b636173685f696e5f68616e647c733a353a2235302e3030223b72656769737465725f6f70656e5f74696d657c733a31393a22323032312d30312d31342031373a30343a3033223b),
('90e0300e812093c1090f9732f8b6ff77c4e22c95', '132.157.129.176', 1610222233, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631303232313937343b6964656e746974797c733a32343a226e696c746f6e6861726f6c6440686f746d61696c2e636f6d223b757365726e616d657c733a31333a224e696c746f6e204861726f6c64223b656d61696c7c733a32343a226e696c746f6e6861726f6c6440686f746d61696c2e636f6d223b757365725f69647c733a313a2231223b66697273745f6e616d657c733a31333a224e696c746f6e204861726f6c64223b6c6173745f6e616d657c733a31323a2243617374726f204d61797461223b637265617465645f6f6e7c733a32323a2231322f30342f323031372030393a33353a343920414d223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231363039393439383338223b6c6173745f69707c733a31343a223138312e36372e3133362e323335223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2231223b72656769737465725f69647c733a323a223436223b636173685f696e5f68616e647c733a343a22302e3030223b72656769737465725f6f70656e5f74696d657c733a31393a22323032312d30312d30392031343a35333a3235223b),
('93ae1147c94e416172dcb0db14f6c2520b38c35e', '51.15.195.246', 1610304020, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631303330343032303b),
('9727a2d71779d7b4525de53279517ab0fa00cc04', '190.234.250.51', 1612572911, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631323537323730373b6572726f727c733a37313a223c703e55737465642068697a6f203320696e74656e746f732073696e20c3a97869746f2e20507275656265206465206e7565766f20636f6e203130206d696e75746f733c2f703e223b5f5f63695f766172737c613a313a7b733a353a226572726f72223b733a333a226f6c64223b7d),
('991cbc13c485a48ce84782b971fb9b6e0724ac56', '181.67.136.235', 1609954586, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630393935343331323b6964656e746974797c733a32343a226e696c746f6e6861726f6c6440686f746d61696c2e636f6d223b757365726e616d657c733a31333a224e696c746f6e204861726f6c64223b656d61696c7c733a32343a226e696c746f6e6861726f6c6440686f746d61696c2e636f6d223b757365725f69647c733a313a2231223b66697273745f6e616d657c733a31333a224e696c746f6e204861726f6c64223b6c6173745f6e616d657c733a31323a2243617374726f204d61797461223b637265617465645f6f6e7c733a32323a2231322f30342f323031372030393a33353a343920414d223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231363039383934353037223b6c6173745f69707c733a31343a223138312e36372e3133362e323335223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2231223b72656769737465725f69647c733a323a223434223b636173685f696e5f68616e647c733a343a22302e3030223b72656769737465725f6f70656e5f74696d657c733a31393a22323032312d30312d30362031323a33323a3034223b726d73706f737c693a313b),
('9ab13e59910b5a0b2ef1d33eca1a39fb21d1b4e0', '190.234.250.50', 1613258924, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631333235383733373b6964656e746974797c733a32343a226e696c746f6e6861726f6c6440686f746d61696c2e636f6d223b757365726e616d657c733a31333a224e696c746f6e204861726f6c64223b656d61696c7c733a32343a226e696c746f6e6861726f6c6440686f746d61696c2e636f6d223b757365725f69647c733a313a2231223b66697273745f6e616d657c733a31333a224e696c746f6e204861726f6c64223b6c6173745f6e616d657c733a31323a2243617374726f204d61797461223b637265617465645f6f6e7c733a32323a2231322f30342f323031372030393a33353a343920414d223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231363132353733353635223b6c6173745f69707c733a31343a223139302e3233342e3235302e3531223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2231223b72656769737465725f69647c733a323a223438223b636173685f696e5f68616e647c733a343a22302e3030223b72656769737465725f6f70656e5f74696d657c733a31393a22323032312d30322d30352032303a30373a3238223b),
('abdf7244307ad73f2b61473207af536ba1f2b99e', '138.246.253.24', 1611877227, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313837373232373b),
('aca2e7f7d3fe82554ae16720a9bbf8ef700e7588', '216.151.27.66', 1612977495, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631323937373439353b),
('b10a72ed02f2865ea2e0ca1eb662341887f1bca4', '181.176.125.16', 1612621883, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631323632313838333b),
('b31a7db63ecb5c1b5024d836d10c404cdc5e4f0a', '190.234.250.51', 1612573065, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631323537333034393b6572726f727c733a37313a223c703e55737465642068697a6f203320696e74656e746f732073696e20c3a97869746f2e20507275656265206465206e7565766f20636f6e203130206d696e75746f733c2f703e223b5f5f63695f766172737c613a313a7b733a353a226572726f72223b733a333a226f6c64223b7d),
('b43169a578c4144cb5eed9eaea9e37868395e0f0', '181.137.166.254', 1613271294, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631333237313239343b6964656e746974797c733a32343a226e696c746f6e6861726f6c6440686f746d61696c2e636f6d223b757365726e616d657c733a31333a224e696c746f6e204861726f6c64223b656d61696c7c733a32343a226e696c746f6e6861726f6c6440686f746d61696c2e636f6d223b757365725f69647c733a313a2231223b66697273745f6e616d657c733a31333a224e696c746f6e204861726f6c64223b6c6173745f6e616d657c733a31323a2243617374726f204d61797461223b637265617465645f6f6e7c733a32323a2231322f30342f323031372030393a33353a343920414d223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231363133323538343235223b6c6173745f69707c733a31353a223138312e3133372e3136362e323534223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2231223b72656769737465725f69647c733a323a223438223b636173685f696e5f68616e647c733a343a22302e3030223b72656769737465725f6f70656e5f74696d657c733a31393a22323032312d30322d30352032303a30373a3238223b),
('bc224f3ac940b82adb8e4d41a4639ea8762dc27e', '190.234.250.51', 1612574029, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631323537343030323b6964656e746974797c733a32343a226e696c746f6e6861726f6c6440686f746d61696c2e636f6d223b757365726e616d657c733a31333a224e696c746f6e204861726f6c64223b656d61696c7c733a32343a226e696c746f6e6861726f6c6440686f746d61696c2e636f6d223b757365725f69647c733a313a2231223b66697273745f6e616d657c733a31333a224e696c746f6e204861726f6c64223b6c6173745f6e616d657c733a31323a2243617374726f204d61797461223b637265617465645f6f6e7c733a32323a2231322f30342f323031372030393a33353a343920414d223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231363132343936343934223b6c6173745f69707c733a31343a223139302e3233342e3235302e3531223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2231223b72656769737465725f69647c733a323a223438223b636173685f696e5f68616e647c733a343a22302e3030223b72656769737465725f6f70656e5f74696d657c733a31393a22323032312d30322d30352032303a30373a3238223b),
('c38453ec87a6545eac414095b278bf22ffdc36c6', '181.137.166.254', 1613271783, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631333237313730353b6964656e746974797c733a32343a226e696c746f6e6861726f6c6440686f746d61696c2e636f6d223b757365726e616d657c733a31333a224e696c746f6e204861726f6c64223b656d61696c7c733a32343a226e696c746f6e6861726f6c6440686f746d61696c2e636f6d223b757365725f69647c733a313a2231223b66697273745f6e616d657c733a31333a224e696c746f6e204861726f6c64223b6c6173745f6e616d657c733a31323a2243617374726f204d61797461223b637265617465645f6f6e7c733a32323a2231322f30342f323031372030393a33353a343920414d223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231363133323538343235223b6c6173745f69707c733a31353a223138312e3133372e3136362e323534223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2231223b72656769737465725f69647c733a323a223438223b636173685f696e5f68616e647c733a343a22302e3030223b72656769737465725f6f70656e5f74696d657c733a31393a22323032312d30322d30352032303a30373a3238223b),
('c3af9d44b903fbb4c1c4c6ae280c77cd54d294bd', '181.176.110.69', 1610661585, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631303636313538353b),
('c5a6d28f5defbe74302aa630157826581008f2d7', '181.67.136.235', 1609951418, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630393935313234393b6964656e746974797c733a32343a226e696c746f6e6861726f6c6440686f746d61696c2e636f6d223b757365726e616d657c733a31333a224e696c746f6e204861726f6c64223b656d61696c7c733a32343a226e696c746f6e6861726f6c6440686f746d61696c2e636f6d223b757365725f69647c733a313a2231223b66697273745f6e616d657c733a31333a224e696c746f6e204861726f6c64223b6c6173745f6e616d657c733a31323a2243617374726f204d61797461223b637265617465645f6f6e7c733a32323a2231322f30342f323031372030393a33353a343920414d223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231363039383934353037223b6c6173745f69707c733a31343a223138312e36372e3133362e323335223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2231223b72656769737465725f69647c733a323a223433223b636173685f696e5f68616e647c733a343a22302e3030223b72656769737465725f6f70656e5f74696d657c733a31393a22323032312d30312d30332031333a31373a3331223b6d6573736167657c733a33303a22726567697374726f206365727261646f20636f7272656374616d656e7465223b5f5f63695f766172737c613a313a7b733a373a226d657373616765223b733a333a226f6c64223b7d),
('c66b1d05f97da106ec6342b9c7e420b561a20fc5', '190.234.250.51', 1612573039, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631323537323933393b6572726f727c733a37313a223c703e55737465642068697a6f203320696e74656e746f732073696e20c3a97869746f2e20507275656265206465206e7565766f20636f6e203130206d696e75746f733c2f703e223b5f5f63695f766172737c613a313a7b733a353a226572726f72223b733a333a226f6c64223b7d),
('c6bc7a9965f4bc63db4ed67ded2f19516849a26b', '181.176.113.88', 1610549108, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631303534393038353b6964656e746974797c733a32343a226e696c746f6e6861726f6c6440686f746d61696c2e636f6d223b757365726e616d657c733a31333a224e696c746f6e204861726f6c64223b656d61696c7c733a32343a226e696c746f6e6861726f6c6440686f746d61696c2e636f6d223b757365725f69647c733a313a2231223b66697273745f6e616d657c733a31333a224e696c746f6e204861726f6c64223b6c6173745f6e616d657c733a31323a2243617374726f204d61797461223b637265617465645f6f6e7c733a32323a2231322f30342f323031372030393a33353a343920414d223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231363130333230373330223b6c6173745f69707c733a31343a223138312e36372e3133362e323230223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2231223b72656769737465725f69647c733a323a223436223b636173685f696e5f68616e647c733a343a22302e3030223b72656769737465725f6f70656e5f74696d657c733a31393a22323032312d30312d30392031343a35333a3235223b),
('caecf72fd778542f69952e5d17e2ca67573c35f5', '181.137.166.254', 1613258425, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631333235383336353b6964656e746974797c733a32343a226e696c746f6e6861726f6c6440686f746d61696c2e636f6d223b757365726e616d657c733a31333a224e696c746f6e204861726f6c64223b656d61696c7c733a32343a226e696c746f6e6861726f6c6440686f746d61696c2e636f6d223b757365725f69647c733a313a2231223b66697273745f6e616d657c733a31333a224e696c746f6e204861726f6c64223b6c6173745f6e616d657c733a31323a2243617374726f204d61797461223b637265617465645f6f6e7c733a32323a2231322f30342f323031372030393a33353a343920414d223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231363133323537383338223b6c6173745f69707c733a31343a223139302e3233342e3235302e3530223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2231223b6d6573736167657c733a34343a223c703ec2a14c6f676561646f20636f6e20c3a97869746f2120536561206269656e76656e69646f213c2f703e223b5f5f63695f766172737c613a313a7b733a373a226d657373616765223b733a333a226f6c64223b7d72656769737465725f69647c733a323a223438223b636173685f696e5f68616e647c733a343a22302e3030223b72656769737465725f6f70656e5f74696d657c733a31393a22323032312d30322d30352032303a30373a3238223b),
('cc7ebdcc97900374a287b9b7c0d939e02d7e2340', '190.234.250.51', 1612573701, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631323537333536303b6964656e746974797c733a32343a226e696c746f6e6861726f6c6440686f746d61696c2e636f6d223b757365726e616d657c733a31333a224e696c746f6e204861726f6c64223b656d61696c7c733a32343a226e696c746f6e6861726f6c6440686f746d61696c2e636f6d223b757365725f69647c733a313a2231223b66697273745f6e616d657c733a31333a224e696c746f6e204861726f6c64223b6c6173745f6e616d657c733a31323a2243617374726f204d61797461223b637265617465645f6f6e7c733a32323a2231322f30342f323031372030393a33353a343920414d223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231363132343936343934223b6c6173745f69707c733a31343a223139302e3233342e3235302e3531223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2231223b5f5f63695f766172737c613a313a7b733a373a226d657373616765223b733a333a226f6c64223b7d6d6573736167657c733a31343a2277656c636f6d6520746f20706f73223b72656769737465725f69647c733a323a223438223b636173685f696e5f68616e647c733a343a22302e3030223b72656769737465725f6f70656e5f74696d657c733a31393a22323032312d30322d30352032303a30373a3238223b),
('ccc29f39acee90c9984ecef2ec91ec75a5cd30ba', '216.151.27.66', 1612977494, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631323937373439343b),
('ce1ff81aaf71b44007ddcf5047e332b5580e22ad', '181.67.136.220', 1610320925, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631303332303732323b6964656e746974797c733a32343a226e696c746f6e6861726f6c6440686f746d61696c2e636f6d223b757365726e616d657c733a31333a224e696c746f6e204861726f6c64223b656d61696c7c733a32343a226e696c746f6e6861726f6c6440686f746d61696c2e636f6d223b757365725f69647c733a313a2231223b66697273745f6e616d657c733a31333a224e696c746f6e204861726f6c64223b6c6173745f6e616d657c733a31323a2243617374726f204d61797461223b637265617465645f6f6e7c733a32323a2231322f30342f323031372030393a33353a343920414d223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231363130323930323834223b6c6173745f69707c733a31343a223138312e36372e3133362e313031223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2231223b72656769737465725f69647c733a323a223436223b636173685f696e5f68616e647c733a343a22302e3030223b72656769737465725f6f70656e5f74696d657c733a31393a22323032312d30312d30392031343a35333a3235223b),
('ce2a848d9c035ae1dcbeed3fc77156cf9ca0a355', '181.67.136.101', 1610290053, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631303239303035333b),
('cf3c4e69d733c784d47f38ca6d5ea8551f5197e2', '181.67.136.235', 1609952499, 0x5f5f63695f6c6173745f726567656e65726174657c693a313630393935323439393b6964656e746974797c733a32343a226e696c746f6e6861726f6c6440686f746d61696c2e636f6d223b757365726e616d657c733a31333a224e696c746f6e204861726f6c64223b656d61696c7c733a32343a226e696c746f6e6861726f6c6440686f746d61696c2e636f6d223b757365725f69647c733a313a2231223b66697273745f6e616d657c733a31333a224e696c746f6e204861726f6c64223b6c6173745f6e616d657c733a31323a2243617374726f204d61797461223b637265617465645f6f6e7c733a32323a2231322f30342f323031372030393a33353a343920414d223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231363039383934353037223b6c6173745f69707c733a31343a223138312e36372e3133362e323335223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2231223b72656769737465725f69647c733a323a223433223b636173685f696e5f68616e647c733a343a22302e3030223b72656769737465725f6f70656e5f74696d657c733a31393a22323032312d30312d30332031333a31373a3331223b),
('d098203d96fd2a82ed0a392311429d0705ed58d5', '181.176.113.88', 1610550466, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631303535303436363b),
('d425afdecbb961f5aa9474eb092b52031edcc9fe', '181.137.166.254', 1613269493, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631333236393139363b6964656e746974797c733a32343a226e696c746f6e6861726f6c6440686f746d61696c2e636f6d223b757365726e616d657c733a31333a224e696c746f6e204861726f6c64223b656d61696c7c733a32343a226e696c746f6e6861726f6c6440686f746d61696c2e636f6d223b757365725f69647c733a313a2231223b66697273745f6e616d657c733a31333a224e696c746f6e204861726f6c64223b6c6173745f6e616d657c733a31323a2243617374726f204d61797461223b637265617465645f6f6e7c733a32323a2231322f30342f323031372030393a33353a343920414d223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231363133323538343235223b6c6173745f69707c733a31353a223138312e3133372e3136362e323534223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2231223b72656769737465725f69647c733a323a223438223b636173685f696e5f68616e647c733a343a22302e3030223b72656769737465725f6f70656e5f74696d657c733a31393a22323032312d30322d30352032303a30373a3238223b),
('d79fdf243d1533860edcaf69d02925ea70060cb3', '181.176.110.69', 1610661677, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631303636313538353b6964656e746974797c733a32343a226e696c746f6e6861726f6c6440686f746d61696c2e636f6d223b757365726e616d657c733a31333a224e696c746f6e204861726f6c64223b656d61696c7c733a32343a226e696c746f6e6861726f6c6440686f746d61696c2e636f6d223b757365725f69647c733a313a2231223b66697273745f6e616d657c733a31333a224e696c746f6e204861726f6c64223b6c6173745f6e616d657c733a31323a2243617374726f204d61797461223b637265617465645f6f6e7c733a32323a2231322f30342f323031372030393a33353a343920414d223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231363130363631353936223b6c6173745f69707c733a31343a223138312e3137362e3131302e3639223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2231223b72656769737465725f69647c733a323a223436223b636173685f696e5f68616e647c733a343a22302e3030223b72656769737465725f6f70656e5f74696d657c733a31393a22323032312d30312d30392031343a35333a3235223b),
('dd72a6149544e2f423629f1b10c6b457839cb3d5', '51.158.108.61', 1610567491, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631303536373439313b),
('de61bdd1bc054d809f75cc67cfaa81cc37b253c3', '190.234.250.50', 1613259886, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631333235393838363b),
('e0d0f1f6242fe32ca13c51dbeb0bfe77901dd688', '181.176.110.69', 1610662121, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631303636313832333b6964656e746974797c733a32343a226e696c746f6e6861726f6c6440686f746d61696c2e636f6d223b757365726e616d657c733a31333a224e696c746f6e204861726f6c64223b656d61696c7c733a32343a226e696c746f6e6861726f6c6440686f746d61696c2e636f6d223b757365725f69647c733a313a2231223b66697273745f6e616d657c733a31333a224e696c746f6e204861726f6c64223b6c6173745f6e616d657c733a31323a2243617374726f204d61797461223b637265617465645f6f6e7c733a32323a2231322f30342f323031372030393a33353a343920414d223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231363130363631383037223b6c6173745f69707c733a31343a223138312e3137362e3131302e3639223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2231223b72656769737465725f69647c733a323a223437223b636173685f696e5f68616e647c733a353a2235302e3030223b72656769737465725f6f70656e5f74696d657c733a31393a22323032312d30312d31342031373a30343a3033223b),
('e7d7a5edea9dabbf89d79197ad45318fa69a38b2', '209.17.97.58', 1612605491, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631323630353439313b),
('ef5152c28584e8501be6d2867c0fa9e0c9fdf559', '190.234.250.51', 1612054262, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631323035343236323b),
('efdda496e10cb21d5ecc4198bbb7cc4fc87256a6', '209.17.97.90', 1612504671, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631323530343637313b),
('f01d4350aed2468e03b0665abc8173c86f0bdb25', '181.137.166.254', 1613272102, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631333237313833353b6964656e746974797c733a32343a226e696c746f6e6861726f6c6440686f746d61696c2e636f6d223b757365726e616d657c733a31333a224e696c746f6e204861726f6c64223b656d61696c7c733a32343a226e696c746f6e6861726f6c6440686f746d61696c2e636f6d223b757365725f69647c733a313a2231223b66697273745f6e616d657c733a31333a224e696c746f6e204861726f6c64223b6c6173745f6e616d657c733a31323a2243617374726f204d61797461223b637265617465645f6f6e7c733a32323a2231322f30342f323031372030393a33353a343920414d223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231363133323639333939223b6c6173745f69707c733a31353a223138312e3133372e3136362e323534223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2231223b72656769737465725f69647c733a323a223438223b636173685f696e5f68616e647c733a343a22302e3030223b72656769737465725f6f70656e5f74696d657c733a31393a22323032312d30322d30352032303a30373a3238223b),
('f452897bc13528e4e5391be7e1b45849b9cb8309', '190.216.191.102', 1610549098, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631303534393039373b),
('f4607054aba39aa1bbed2337f81bfe67ba96ab41', '190.234.250.51', 1612572630, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631323537323631353b),
('f48f8c1d87edc67e055b0311f86ad4f015f7d4f5', '3.127.244.171', 1612258607, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631323235383630373b),
('fc5cc37cdff36f736eb342622634b27d18afe979', '190.234.250.50', 1613259881, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631333235393330313b6964656e746974797c733a32343a226e696c746f6e6861726f6c6440686f746d61696c2e636f6d223b757365726e616d657c733a31333a224e696c746f6e204861726f6c64223b656d61696c7c733a32343a226e696c746f6e6861726f6c6440686f746d61696c2e636f6d223b757365725f69647c733a313a2231223b66697273745f6e616d657c733a31333a224e696c746f6e204861726f6c64223b6c6173745f6e616d657c733a31323a2243617374726f204d61797461223b637265617465645f6f6e7c733a32323a2231322f30342f323031372030393a33353a343920414d223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231363132353733353635223b6c6173745f69707c733a31343a223139302e3233342e3235302e3531223b6176617461727c4e3b67656e6465727c733a343a226d616c65223b67726f75705f69647c733a313a2231223b72656769737465725f69647c733a323a223438223b636173685f696e5f68616e647c733a343a22302e3030223b72656769737465725f6f70656e5f74696d657c733a31393a22323032312d30322d30352032303a30373a3238223b);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tec_settings`
--

CREATE TABLE `tec_settings` (
  `setting_id` int(1) NOT NULL,
  `logo` varchar(255) NOT NULL,
  `site_name` varchar(55) NOT NULL,
  `tel` varchar(20) NOT NULL,
  `dateformat` varchar(20) DEFAULT NULL,
  `timeformat` varchar(20) DEFAULT NULL,
  `default_email` varchar(100) NOT NULL,
  `language` varchar(20) NOT NULL,
  `version` varchar(5) NOT NULL DEFAULT '1.0',
  `theme` varchar(20) NOT NULL,
  `timezone` varchar(255) NOT NULL DEFAULT '0',
  `protocol` varchar(20) NOT NULL DEFAULT 'mail',
  `smtp_host` varchar(255) DEFAULT NULL,
  `smtp_user` varchar(100) DEFAULT NULL,
  `smtp_pass` varchar(255) DEFAULT NULL,
  `smtp_port` varchar(10) DEFAULT '25',
  `smtp_crypto` varchar(5) DEFAULT NULL,
  `mmode` tinyint(1) NOT NULL,
  `captcha` tinyint(1) NOT NULL DEFAULT 1,
  `mailpath` varchar(55) DEFAULT NULL,
  `currency_prefix` varchar(3) NOT NULL,
  `default_customer` int(11) NOT NULL,
  `default_tax_rate` varchar(20) NOT NULL,
  `rows_per_page` int(2) NOT NULL,
  `total_rows` int(2) NOT NULL,
  `header` varchar(1000) NOT NULL,
  `footer` varchar(1000) NOT NULL,
  `bsty` tinyint(4) NOT NULL,
  `display_kb` tinyint(4) NOT NULL,
  `default_category` int(11) NOT NULL,
  `default_discount` varchar(20) NOT NULL,
  `item_addition` tinyint(1) NOT NULL,
  `barcode_symbology` varchar(55) NOT NULL,
  `pro_limit` tinyint(4) NOT NULL,
  `decimals` tinyint(1) NOT NULL DEFAULT 2,
  `thousands_sep` varchar(2) NOT NULL DEFAULT ',',
  `decimals_sep` varchar(2) NOT NULL DEFAULT '.',
  `focus_add_item` varchar(55) DEFAULT NULL,
  `add_customer` varchar(55) DEFAULT NULL,
  `toggle_category_slider` varchar(55) DEFAULT NULL,
  `cancel_sale` varchar(55) DEFAULT NULL,
  `suspend_sale` varchar(55) DEFAULT NULL,
  `print_order` varchar(55) DEFAULT NULL,
  `print_bill` varchar(55) DEFAULT NULL,
  `finalize_sale` varchar(55) DEFAULT NULL,
  `today_sale` varchar(55) DEFAULT NULL,
  `open_hold_bills` varchar(55) DEFAULT NULL,
  `close_register` varchar(55) DEFAULT NULL,
  `java_applet` tinyint(1) NOT NULL,
  `receipt_printer` varchar(55) DEFAULT NULL,
  `pos_printers` varchar(255) DEFAULT NULL,
  `cash_drawer_codes` varchar(55) DEFAULT NULL,
  `char_per_line` tinyint(4) DEFAULT 42,
  `rounding` tinyint(1) DEFAULT 0,
  `pin_code` varchar(20) DEFAULT NULL,
  `stripe` tinyint(1) DEFAULT NULL,
  `stripe_secret_key` varchar(100) DEFAULT NULL,
  `stripe_publishable_key` varchar(100) DEFAULT NULL,
  `purchase_code` varchar(100) DEFAULT NULL,
  `envato_username` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `tec_settings`
--

INSERT INTO `tec_settings` (`setting_id`, `logo`, `site_name`, `tel`, `dateformat`, `timeformat`, `default_email`, `language`, `version`, `theme`, `timezone`, `protocol`, `smtp_host`, `smtp_user`, `smtp_pass`, `smtp_port`, `smtp_crypto`, `mmode`, `captcha`, `mailpath`, `currency_prefix`, `default_customer`, `default_tax_rate`, `rows_per_page`, `total_rows`, `header`, `footer`, `bsty`, `display_kb`, `default_category`, `default_discount`, `item_addition`, `barcode_symbology`, `pro_limit`, `decimals`, `thousands_sep`, `decimals_sep`, `focus_add_item`, `add_customer`, `toggle_category_slider`, `cancel_sale`, `suspend_sale`, `print_order`, `print_bill`, `finalize_sale`, `today_sale`, `open_hold_bills`, `close_register`, `java_applet`, `receipt_printer`, `pos_printers`, `cash_drawer_codes`, `char_per_line`, `rounding`, `pin_code`, `stripe`, `stripe_secret_key`, `stripe_publishable_key`, `purchase_code`, `envato_username`) VALUES
(1, 'logo.png', 'GRUPO CASTRO SAC', '993996443', 'd/m/Y', 'h:i:s A', 'niltonharold@hotmail.com', 'peru', '4.0', 'default', 'America/Lima', 'mail', 'pop.gmail.com', 'niltonharold@gmail.com', '', '25', '', 0, 0, NULL, 'S/ ', 1, '0%', 25, 30, '<strong>GRUPO CASTRO</strong><br>Jirón Ancash N° 1712 - Azapampa - Hyo<br>Móvil: 993996443<br>', 'Gracias por su preferencia...', 3, 0, 10, '0', 1, '', 100, 2, ',', '.', 'F7', 'ALT+F2', 'ALT+F10', 'F3', 'F2', 'F6', 'F4', 'F1', 'Ctrl+F1', 'F5', 'ALT+F7', 0, '', '', '', 42, 0, '123456', 1, 'sk_test_jHf4cEzAYtgcXvgWPCsQAn50', 'pk_test_beat8SWPORb0OVdF2H77A7uG', 'ff2400d9-f3aa-4db5-9dc5-4eee236c6254', 'Nilton Harold');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tec_suppliers`
--

CREATE TABLE `tec_suppliers` (
  `id` int(11) NOT NULL,
  `name` varchar(55) NOT NULL,
  `cf1` varchar(255) NOT NULL,
  `cf2` varchar(255) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `email` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `tec_suppliers`
--

INSERT INTO `tec_suppliers` (`id`, `name`, `cf1`, `cf2`, `phone`, `email`) VALUES
(1, 'GRUPO CASTRO SAC', '20604347247', '44603864', '993996443', 'CONTACTO@GRUPOCASTRO.ORG');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tec_suspended_items`
--

CREATE TABLE `tec_suspended_items` (
  `id` int(11) NOT NULL,
  `suspend_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` decimal(15,2) NOT NULL,
  `unit_price` decimal(25,2) NOT NULL,
  `net_unit_price` decimal(25,2) NOT NULL,
  `discount` varchar(20) DEFAULT NULL,
  `item_discount` decimal(25,2) DEFAULT NULL,
  `tax` int(20) DEFAULT NULL,
  `item_tax` decimal(25,2) DEFAULT NULL,
  `subtotal` decimal(25,2) NOT NULL,
  `real_unit_price` decimal(25,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tec_suspended_sales`
--

CREATE TABLE `tec_suspended_sales` (
  `id` int(11) NOT NULL,
  `date` datetime NOT NULL,
  `customer_id` int(11) NOT NULL,
  `customer_name` varchar(55) NOT NULL,
  `total` decimal(25,2) NOT NULL,
  `product_discount` decimal(25,2) DEFAULT NULL,
  `order_discount_id` varchar(20) DEFAULT NULL,
  `order_discount` decimal(25,2) DEFAULT NULL,
  `total_discount` decimal(25,2) DEFAULT NULL,
  `product_tax` decimal(25,2) DEFAULT NULL,
  `order_tax_id` varchar(20) DEFAULT NULL,
  `order_tax` decimal(25,2) DEFAULT NULL,
  `total_tax` decimal(25,2) DEFAULT NULL,
  `grand_total` decimal(25,2) NOT NULL,
  `total_items` int(11) DEFAULT NULL,
  `total_quantity` decimal(15,2) DEFAULT NULL,
  `paid` decimal(25,2) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `note` varchar(1000) DEFAULT NULL,
  `hold_ref` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tec_users`
--

CREATE TABLE `tec_users` (
  `id` int(11) UNSIGNED NOT NULL,
  `last_ip_address` varbinary(45) DEFAULT NULL,
  `ip_address` varbinary(45) DEFAULT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(40) NOT NULL,
  `salt` varchar(40) DEFAULT NULL,
  `email` varchar(100) NOT NULL,
  `activation_code` varchar(40) DEFAULT NULL,
  `forgotten_password_code` varchar(40) DEFAULT NULL,
  `forgotten_password_time` int(11) UNSIGNED DEFAULT NULL,
  `remember_code` varchar(40) DEFAULT NULL,
  `created_on` int(11) UNSIGNED NOT NULL,
  `last_login` int(11) UNSIGNED DEFAULT NULL,
  `active` tinyint(1) UNSIGNED DEFAULT NULL,
  `first_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `company` varchar(100) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `avatar` varchar(55) DEFAULT NULL,
  `gender` varchar(20) DEFAULT NULL,
  `group_id` int(11) UNSIGNED NOT NULL DEFAULT 2
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `tec_users`
--

INSERT INTO `tec_users` (`id`, `last_ip_address`, `ip_address`, `username`, `password`, `salt`, `email`, `activation_code`, `forgotten_password_code`, `forgotten_password_time`, `remember_code`, `created_on`, `last_login`, `active`, `first_name`, `last_name`, `company`, `phone`, `avatar`, `gender`, `group_id`) VALUES
(1, 0x3138312e3133372e3136362e323534, 0x3a3a31, 'Nilton Harold', '95ecc096fdccf65d803006912d0810c746d755ff', NULL, 'niltonharold@hotmail.com', NULL, NULL, NULL, NULL, 1492007749, 1613271894, 1, 'Nilton Harold', 'Castro Mayta', NULL, '960746589', NULL, 'male', 1),
(2, 0x3139302e3233392e3233322e3636, 0x3139302e3233362e31332e3237, 'florcita', 'f5d7ecc151b42da64230afa9c58e53527836c2df', NULL, 'florcita@hotmail.com', NULL, NULL, NULL, NULL, 1577489374, 1606579178, 1, 'Florcita', 'Landa Camasca', NULL, '999999999', NULL, 'female', 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tec_user_logins`
--

CREATE TABLE `tec_user_logins` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `company_id` int(11) DEFAULT NULL,
  `ip_address` varbinary(16) NOT NULL,
  `login` varchar(100) NOT NULL,
  `time` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `tec_user_logins`
--

INSERT INTO `tec_user_logins` (`id`, `user_id`, `company_id`, `ip_address`, `login`, `time`) VALUES
(21, 1, NULL, 0x3138312e3137362e3130352e323436, 'niltonharold@hotmail.com', '2019-12-27 12:37:59'),
(22, 1, NULL, 0x3133322e3135372e3132382e3538, 'niltonharold@hotmail.com', '2019-12-27 13:34:56'),
(23, 1, NULL, 0x3133322e3135372e3132382e3538, 'niltonharold@hotmail.com', '2019-12-27 13:35:59'),
(24, 1, NULL, 0x3139302e3233362e31332e3237, 'niltonharold@hotmail.com', '2019-12-27 22:24:26'),
(25, 2, NULL, 0x3139302e3233362e31332e3237, 'florcita@hotmail.com', '2019-12-27 23:30:50'),
(26, 1, NULL, 0x3139302e3233362e31332e3237, 'niltonharold@hotmail.com', '2019-12-27 23:38:46'),
(27, 2, NULL, 0x3139302e3233362e31332e3237, 'florcita@hotmail.com', '2019-12-27 23:41:04'),
(28, 1, NULL, 0x3139302e3233362e31332e3237, 'niltonharold@hotmail.com', '2019-12-27 23:47:46'),
(29, 1, NULL, 0x3139302e3233362e322e323231, 'niltonharold@hotmail.com', '2019-12-28 11:52:17'),
(30, 1, NULL, 0x3133322e3135372e3133312e3437, 'niltonharold@hotmail.com', '2020-01-22 16:41:13'),
(31, 1, NULL, 0x3139302e3233362e38312e323233, 'niltonharold@hotmail.com', '2020-02-08 02:34:58'),
(32, 1, NULL, 0x3133322e3135372e3133302e323234, 'niltonharold@hotmail.com', '2020-02-12 16:38:36'),
(33, 1, NULL, 0x3133322e3135372e3133302e323234, 'niltonharold@hotmail.com', '2020-02-12 16:38:55'),
(34, 1, NULL, 0x3139302e3233362e38312e313237, 'niltonharold@hotmail.com', '2020-02-22 13:16:49'),
(35, 1, NULL, 0x3139302e3233362e38312e313237, 'niltonharold@hotmail.com', '2020-02-22 13:32:22'),
(36, 1, NULL, 0x3139302e3233362e38312e323533, 'niltonharold@hotmail.com', '2020-02-22 22:11:49'),
(37, 1, NULL, 0x3139302e3233362e38312e313533, 'niltonharold@hotmail.com', '2020-02-23 22:47:56'),
(38, 1, NULL, 0x3139302e3233362e38312e313533, 'niltonharold@hotmail.com', '2020-02-24 00:12:20'),
(39, 1, NULL, 0x3139302e3233362e38312e313533, 'niltonharold@hotmail.com', '2020-02-24 01:53:24'),
(40, 1, NULL, 0x3133322e3138342e3132382e3539, 'niltonharold@hotmail.com', '2020-02-26 13:23:21'),
(41, 1, NULL, 0x3139302e3233362e38312e323039, 'niltonharold@hotmail.com', '2020-03-03 01:13:07'),
(42, 1, NULL, 0x3139302e3233362e38312e323039, 'niltonharold@hotmail.com', '2020-03-03 01:20:19'),
(43, 1, NULL, 0x3139302e3233362e38312e313038, 'niltonharold@hotmail.com', '2020-03-06 02:14:28'),
(44, 1, NULL, 0x3139302e3233362e38312e323531, 'niltonharold@hotmail.com', '2020-03-09 22:52:54'),
(45, 1, NULL, 0x3139302e3233362e38312e3837, 'niltonharold@hotmail.com', '2020-03-19 18:43:25'),
(46, 1, NULL, 0x3139302e3233362e38312e323339, 'niltonharold@hotmail.com', '2020-03-26 21:54:31'),
(47, 1, NULL, 0x3139302e3233362e38312e3638, 'niltonharold@hotmail.com', '2020-03-31 03:23:26'),
(48, 1, NULL, 0x3139302e3233362e38312e3638, 'niltonharold@hotmail.com', '2020-03-31 16:35:46'),
(49, 1, NULL, 0x3139302e3233362e38312e3638, 'niltonharold@hotmail.com', '2020-03-31 19:13:53'),
(50, 1, NULL, 0x3139302e3233362e38312e3638, 'niltonharold@hotmail.com', '2020-03-31 19:13:57'),
(51, 1, NULL, 0x3139302e3233362e38312e3638, 'niltonharold@hotmail.com', '2020-03-31 21:54:40'),
(52, 1, NULL, 0x3139302e3233362e38312e313134, 'niltonharold@hotmail.com', '2020-04-04 17:15:13'),
(53, 1, NULL, 0x3139302e3233362e38312e313134, 'niltonharold@hotmail.com', '2020-04-05 00:32:26'),
(54, 1, NULL, 0x3139302e3233362e38312e313134, 'niltonharold@hotmail.com', '2020-04-05 02:02:20'),
(55, 1, NULL, 0x3139302e3233362e38312e313134, 'niltonharold@hotmail.com', '2020-04-05 02:40:09'),
(56, 1, NULL, 0x3139302e3233362e38312e313134, 'niltonharold@hotmail.com', '2020-04-05 02:49:06'),
(57, 2, NULL, 0x3139302e3233362e38312e313134, 'florcita@hotmail.com', '2020-04-05 02:52:42'),
(58, 1, NULL, 0x3139302e3233362e38312e313134, 'niltonharold@hotmail.com', '2020-04-05 03:03:23'),
(59, 1, NULL, 0x3139302e3233362e38312e313134, 'niltonharold@hotmail.com', '2020-04-05 03:10:42'),
(60, 1, NULL, 0x3139302e3233362e38312e313134, 'niltonharold@hotmail.com', '2020-04-05 03:11:16'),
(61, 2, NULL, 0x3139302e3233362e38312e313134, 'florcita@hotmail.com', '2020-04-05 03:12:35'),
(62, 1, NULL, 0x3139302e3233362e38312e313134, 'niltonharold@hotmail.com', '2020-04-05 03:15:37'),
(63, 1, NULL, 0x3139302e3233362e38312e313134, 'niltonharold@hotmail.com', '2020-04-06 13:19:38'),
(64, 2, NULL, 0x3139302e3233362e38312e313134, 'florcita@hotmail.com', '2020-04-06 13:34:33'),
(65, 2, NULL, 0x3139302e3233362e38312e313134, 'florcita@hotmail.com', '2020-04-06 15:39:40'),
(66, 1, NULL, 0x3139302e3233362e38312e313134, 'niltonharold@hotmail.com', '2020-04-07 19:40:06'),
(67, 1, NULL, 0x3139302e3233362e38312e313134, 'niltonharold@hotmail.com', '2020-04-08 01:41:10'),
(68, 1, NULL, 0x3139302e3233362e38312e313134, 'niltonharold@hotmail.com', '2020-04-08 16:08:03'),
(69, 2, NULL, 0x3139302e3233362e38312e313134, 'florcita@hotmail.com', '2020-04-08 16:11:41'),
(70, 1, NULL, 0x3139302e3233362e38312e313134, 'niltonharold@hotmail.com', '2020-04-09 02:42:01'),
(71, 1, NULL, 0x3139302e3233362e38312e3836, 'niltonharold@hotmail.com', '2020-04-09 16:49:47'),
(72, 1, NULL, 0x3139302e3233362e38312e3836, 'niltonharold@hotmail.com', '2020-04-09 18:50:18'),
(73, 1, NULL, 0x3139302e3233362e38312e3836, 'niltonharold@hotmail.com', '2020-04-10 00:57:46'),
(74, 1, NULL, 0x3139302e3233362e38312e3337, 'niltonharold@hotmail.com', '2020-04-10 12:38:01'),
(75, 1, NULL, 0x3139302e3233362e38312e3432, 'niltonharold@hotmail.com', '2020-04-11 17:47:23'),
(76, 1, NULL, 0x3133322e3138342e3132392e323339, 'niltonharold@hotmail.com', '2020-04-11 19:55:38'),
(77, 1, NULL, 0x3139302e3233362e38312e323039, 'niltonharold@hotmail.com', '2020-04-12 17:55:45'),
(78, 1, NULL, 0x3139302e3233362e38312e3432, 'niltonharold@hotmail.com', '2020-04-15 22:18:12'),
(79, 1, NULL, 0x3139302e3233362e38312e313932, 'niltonharold@hotmail.com', '2020-05-13 11:28:58'),
(80, 2, NULL, 0x3139302e3233362e38312e313932, 'florcita@hotmail.com', '2020-05-13 11:49:04'),
(81, 1, NULL, 0x3139302e3233362e38312e313932, 'niltonharold@hotmail.com', '2020-05-13 11:50:29'),
(82, 1, NULL, 0x3139302e3233362e38312e313932, 'niltonharold@hotmail.com', '2020-05-13 12:13:31'),
(83, 1, NULL, 0x3139302e3233362e38312e313037, 'niltonharold@hotmail.com', '2020-05-18 00:23:11'),
(84, 1, NULL, 0x3139302e3233362e38312e313037, 'niltonharold@hotmail.com', '2020-05-18 00:24:07'),
(85, 1, NULL, 0x3230312e3234302e3234382e3638, 'niltonharold@hotmail.com', '2020-05-18 00:30:07'),
(86, 1, NULL, 0x3139302e3233362e38312e323034, 'niltonharold@hotmail.com', '2020-06-30 20:07:11'),
(87, 1, NULL, 0x3139302e3233362e38312e3537, 'niltonharold@hotmail.com', '2020-07-08 00:23:11'),
(88, 1, NULL, 0x3139302e3233362e31332e3534, 'niltonharold@hotmail.com', '2020-07-09 16:23:28'),
(89, 1, NULL, 0x3139302e3233362e38312e313030, 'niltonharold@hotmail.com', '2020-07-10 00:35:42'),
(90, 1, NULL, 0x3139302e3233362e38312e313030, 'niltonharold@hotmail.com', '2020-07-10 00:36:11'),
(91, 1, NULL, 0x3139302e3233362e38312e313030, 'niltonharold@hotmail.com', '2020-07-10 00:36:11'),
(92, 1, NULL, 0x3138312e36372e32312e3737, 'niltonharold@hotmail.com', '2020-07-17 02:01:04'),
(93, 1, NULL, 0x3138312e36372e32312e3737, 'niltonharold@hotmail.com', '2020-07-18 09:51:54'),
(94, 1, NULL, 0x3138312e36372e32312e3737, 'niltonharold@hotmail.com', '2020-07-19 23:02:15'),
(95, 1, NULL, 0x3138312e36372e32312e3737, 'niltonharold@hotmail.com', '2020-07-19 23:03:23'),
(96, 1, NULL, 0x3138312e36372e32312e313733, 'niltonharold@hotmail.com', '2020-08-02 13:40:49'),
(97, 1, NULL, 0x3138312e36372e32312e313733, 'niltonharold@hotmail.com', '2020-08-04 22:34:31'),
(98, 1, NULL, 0x3138312e36372e32312e313432, 'niltonharold@hotmail.com', '2020-08-08 23:14:09'),
(99, 1, NULL, 0x3133322e3135372e3132392e323230, 'niltonharold@hotmail.com', '2020-08-12 14:42:16'),
(100, 1, NULL, 0x3138312e36372e32312e313731, 'niltonharold@hotmail.com', '2020-08-19 19:40:59'),
(101, 1, NULL, 0x3138312e36372e32312e313731, 'niltonharold@hotmail.com', '2020-08-21 00:16:02'),
(102, 1, NULL, 0x3133322e3138342e3133302e313835, 'niltonharold@hotmail.com', '2020-08-28 20:20:18'),
(103, 1, NULL, 0x3133322e3135372e3133312e313735, 'niltonharold@hotmail.com', '2020-09-14 14:30:54'),
(104, 1, NULL, 0x3133322e3138342e3132392e323034, 'niltonharold@hotmail.com', '2020-09-23 16:06:07'),
(105, 1, NULL, 0x3133322e3135372e3133312e3538, 'niltonharold@hotmail.com', '2020-09-29 16:12:01'),
(106, 1, NULL, 0x3133322e3138342e3133312e323230, 'niltonharold@hotmail.com', '2020-10-03 22:04:13'),
(107, 1, NULL, 0x3138312e36372e3137302e323231, 'niltonharold@hotmail.com', '2020-10-11 17:24:17'),
(108, 1, NULL, 0x3139302e3233392e3233322e313434, 'niltonharold@hotmail.com', '2020-10-27 23:47:35'),
(109, 1, NULL, 0x3133322e3138342e3133312e313337, 'niltonharold@hotmail.com', '2020-10-29 15:04:31'),
(110, 1, NULL, 0x3139302e3233392e3233322e3338, 'niltonharold@hotmail.com', '2020-11-05 15:51:08'),
(111, 1, NULL, 0x3139302e3233392e3233322e313636, 'niltonharold@hotmail.com', '2020-11-24 14:57:27'),
(112, 1, NULL, 0x3139302e3233392e3233322e3636, 'niltonharold@hotmail.com', '2020-11-28 15:48:29'),
(113, 2, NULL, 0x3139302e3233392e3233322e3636, 'florcita@hotmail.com', '2020-11-28 15:59:38'),
(114, 1, NULL, 0x3139302e3233392e3233322e3636, 'niltonharold@hotmail.com', '2020-11-28 16:00:30'),
(115, 1, NULL, 0x3133322e3135372e3132392e323230, 'niltonharold@hotmail.com', '2020-12-09 14:55:44'),
(116, 1, NULL, 0x3133322e3135372e3132392e323230, 'niltonharold@hotmail.com', '2020-12-09 19:19:49'),
(117, 1, NULL, 0x3133322e3135372e3132392e323230, 'niltonharold@hotmail.com', '2020-12-10 16:33:35'),
(118, 1, NULL, 0x3133322e3135372e3132392e323230, 'niltonharold@hotmail.com', '2020-12-10 16:33:57'),
(119, 1, NULL, 0x3138312e3133372e3136362e323534, 'niltonharold@hotmail.com', '2020-12-11 16:24:50'),
(120, 1, NULL, 0x3133322e3138342e3132382e323030, 'niltonharold@hotmail.com', '2020-12-15 21:33:02'),
(121, 1, NULL, 0x3138312e3133372e3136362e323534, 'niltonharold@hotmail.com', '2020-12-17 01:21:23'),
(122, 1, NULL, 0x3133322e3138342e3133302e313538, 'niltonharold@hotmail.com', '2020-12-17 22:05:58'),
(123, 1, NULL, 0x3133322e3138342e3132382e323330, 'niltonharold@hotmail.com', '2020-12-25 02:03:18'),
(124, 1, NULL, 0x3133322e3138342e3132382e323330, 'niltonharold@hotmail.com', '2020-12-25 02:07:02'),
(125, 1, NULL, 0x3133322e3138342e3132382e323330, 'niltonharold@hotmail.com', '2020-12-25 15:57:16'),
(126, 1, NULL, 0x3133322e3135372e3132392e3934, 'niltonharold@hotmail.com', '2020-12-30 19:57:03'),
(127, 1, NULL, 0x3133322e3135372e3132392e3936, 'niltonharold@hotmail.com', '2021-01-03 18:08:41'),
(128, 1, NULL, 0x3133322e3135372e3132392e3936, 'niltonharold@hotmail.com', '2021-01-03 18:09:30'),
(129, 1, NULL, 0x3133322e3135372e3132392e3936, 'niltonharold@hotmail.com', '2021-01-03 18:09:54'),
(130, 1, NULL, 0x3138312e36372e3133362e323335, 'niltonharold@hotmail.com', '2021-01-06 00:55:07'),
(131, 1, NULL, 0x3138312e36372e3133362e323335, 'niltonharold@hotmail.com', '2021-01-06 16:17:18'),
(132, 1, NULL, 0x3133322e3135372e3132392e313736, 'niltonharold@hotmail.com', '2021-01-09 19:53:03'),
(133, 1, NULL, 0x3138312e36372e3133362e313031, 'niltonharold@hotmail.com', '2021-01-10 14:51:24'),
(134, 1, NULL, 0x3138312e36372e3133362e323230, 'niltonharold@hotmail.com', '2021-01-10 23:18:50'),
(135, 1, NULL, 0x3138312e3137362e3131332e3838, 'niltonharold@hotmail.com', '2021-01-13 14:44:51'),
(136, 1, NULL, 0x3138312e3137362e3131302e3639, 'niltonharold@hotmail.com', '2021-01-14 21:59:56'),
(137, 1, NULL, 0x3138312e3137362e3131302e3639, 'niltonharold@hotmail.com', '2021-01-14 22:00:04'),
(138, 1, NULL, 0x3138312e3137362e3131302e3639, 'niltonharold@hotmail.com', '2021-01-14 22:02:53'),
(139, 1, NULL, 0x3138312e3137362e3131302e3639, 'niltonharold@hotmail.com', '2021-01-14 22:03:27'),
(140, 1, NULL, 0x3138312e3137362e3131302e3639, 'niltonharold@hotmail.com', '2021-01-14 22:03:46'),
(141, 1, NULL, 0x3138312e3232342e3234322e3637, 'niltonharold@hotmail.com', '2021-01-18 15:39:58'),
(142, 1, NULL, 0x3138312e3137362e3130392e323437, 'niltonharold@hotmail.com', '2021-01-23 16:17:25'),
(143, 1, NULL, 0x3139302e3233342e3235302e3531, 'niltonharold@hotmail.com', '2021-02-03 23:21:54'),
(144, 1, NULL, 0x3139302e3233342e3235302e3531, 'niltonharold@hotmail.com', '2021-02-05 03:41:34'),
(145, 1, NULL, 0x3139302e3233342e3235302e3531, 'niltonharold@hotmail.com', '2021-02-06 01:06:05'),
(146, 1, NULL, 0x3139302e3233342e3235302e3530, 'niltonharold@hotmail.com', '2021-02-13 23:10:38'),
(147, 1, NULL, 0x3138312e3133372e3136362e323534, 'niltonharold@hotmail.com', '2021-02-13 23:20:25'),
(148, 1, NULL, 0x3138312e3133372e3136362e323534, 'niltonharold@hotmail.com', '2021-02-14 02:23:19'),
(149, 1, NULL, 0x3138312e3133372e3136362e323534, 'niltonharold@hotmail.com', '2021-02-14 03:04:54');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `tec_categories`
--
ALTER TABLE `tec_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tec_combo_items`
--
ALTER TABLE `tec_combo_items`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tec_customers`
--
ALTER TABLE `tec_customers`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tec_expenses`
--
ALTER TABLE `tec_expenses`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tec_gift_cards`
--
ALTER TABLE `tec_gift_cards`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `card_no` (`card_no`);

--
-- Indices de la tabla `tec_groups`
--
ALTER TABLE `tec_groups`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tec_login_attempts`
--
ALTER TABLE `tec_login_attempts`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tec_payments`
--
ALTER TABLE `tec_payments`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tec_products`
--
ALTER TABLE `tec_products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `code` (`code`);

--
-- Indices de la tabla `tec_purchases`
--
ALTER TABLE `tec_purchases`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tec_purchase_items`
--
ALTER TABLE `tec_purchase_items`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tec_registers`
--
ALTER TABLE `tec_registers`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tec_sales`
--
ALTER TABLE `tec_sales`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tec_sale_items`
--
ALTER TABLE `tec_sale_items`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tec_sessions`
--
ALTER TABLE `tec_sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ci_sessions_timestamp` (`timestamp`);

--
-- Indices de la tabla `tec_settings`
--
ALTER TABLE `tec_settings`
  ADD PRIMARY KEY (`setting_id`);

--
-- Indices de la tabla `tec_suppliers`
--
ALTER TABLE `tec_suppliers`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tec_suspended_items`
--
ALTER TABLE `tec_suspended_items`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tec_suspended_sales`
--
ALTER TABLE `tec_suspended_sales`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tec_users`
--
ALTER TABLE `tec_users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `group_id` (`group_id`);

--
-- Indices de la tabla `tec_user_logins`
--
ALTER TABLE `tec_user_logins`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `tec_categories`
--
ALTER TABLE `tec_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT de la tabla `tec_combo_items`
--
ALTER TABLE `tec_combo_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tec_customers`
--
ALTER TABLE `tec_customers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `tec_expenses`
--
ALTER TABLE `tec_expenses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `tec_gift_cards`
--
ALTER TABLE `tec_gift_cards`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `tec_groups`
--
ALTER TABLE `tec_groups`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `tec_login_attempts`
--
ALTER TABLE `tec_login_attempts`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT de la tabla `tec_payments`
--
ALTER TABLE `tec_payments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT de la tabla `tec_products`
--
ALTER TABLE `tec_products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=102;

--
-- AUTO_INCREMENT de la tabla `tec_purchases`
--
ALTER TABLE `tec_purchases`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tec_purchase_items`
--
ALTER TABLE `tec_purchase_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tec_registers`
--
ALTER TABLE `tec_registers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT de la tabla `tec_sales`
--
ALTER TABLE `tec_sales`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT de la tabla `tec_sale_items`
--
ALTER TABLE `tec_sale_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=126;

--
-- AUTO_INCREMENT de la tabla `tec_suppliers`
--
ALTER TABLE `tec_suppliers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `tec_suspended_items`
--
ALTER TABLE `tec_suspended_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT de la tabla `tec_suspended_sales`
--
ALTER TABLE `tec_suspended_sales`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `tec_users`
--
ALTER TABLE `tec_users`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `tec_user_logins`
--
ALTER TABLE `tec_user_logins`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=150;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
