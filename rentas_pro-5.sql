-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:8889
-- Tiempo de generación: 13-11-2021 a las 01:35:48
-- Versión del servidor: 5.7.34
-- Versión de PHP: 8.0.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `rentas_pro`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tblbranch`
--

CREATE TABLE `tblbranch` (
  `branch_id` int(11) NOT NULL,
  `branch_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `b_email` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `b_contact_no` int(15) NOT NULL,
  `b_address` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `security_guard_mobile` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL,
  `secrataty_mobile` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL,
  `moderator_mobile` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL,
  `building_make_year` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL,
  `building_image` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `b_status` tinyint(4) NOT NULL DEFAULT '1',
  `builder_company_name` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `builder_company_phone` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `builder_company_address` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `building_rule` text COLLATE utf8_unicode_ci,
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `tblbranch`
--

INSERT INTO `tblbranch` (`branch_id`, `branch_name`, `b_email`, `b_contact_no`, `b_address`, `security_guard_mobile`, `secrataty_mobile`, `moderator_mobile`, `building_make_year`, `building_image`, `b_status`, `builder_company_name`, `builder_company_phone`, `builder_company_address`, `building_rule`, `created_date`) VALUES
(9, 'Inmobiliaria Kings Valley', 'royal@gmail.com', 35354353, 'av tulluman', '34535353', '345353453', '', '', '74CB0F9B-6D61-20C0-AA3C-EC3BA4F91587.jpg', 1, 'royal inmobiliaria', '94334334', 'av colon', '', '2021-03-07 15:35:19');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tblsuper_admin`
--

CREATE TABLE `tblsuper_admin` (
  `user_id` int(11) NOT NULL,
  `name` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(300) COLLATE utf8_unicode_ci NOT NULL,
  `contact` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `password` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `added_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `tblsuper_admin`
--

INSERT INTO `tblsuper_admin` (`user_id`, `name`, `email`, `contact`, `password`, `added_date`) VALUES
(1, 'Kings Valley', 'admin@kingsvalley.com', '+9324324242', 'MTIzNDU2', '2015-06-29 06:15:29');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_add_admin`
--

CREATE TABLE `tbl_add_admin` (
  `aid` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `contact` varchar(100) DEFAULT NULL,
  `password` varchar(100) NOT NULL,
  `image` varchar(250) NOT NULL,
  `branch_id` int(11) NOT NULL,
  `added_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `tbl_add_admin`
--

INSERT INTO `tbl_add_admin` (`aid`, `name`, `email`, `contact`, `password`, `image`, `branch_id`, `added_date`) VALUES
(7, 'Tony', 'tony@yahoo.com', '+8801679110711', 'MTIzNDU2', 'B7962E98-0550-407D-01A7-3C088DCCD2EF.jpg', 8, '2019-08-27 04:45:27');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_add_bill`
--

CREATE TABLE `tbl_add_bill` (
  `bill_id` int(11) NOT NULL,
  `bill_type` varchar(200) NOT NULL,
  `bill_date` varchar(200) NOT NULL,
  `bill_month` int(11) NOT NULL,
  `bill_year` int(11) NOT NULL,
  `total_amount` decimal(15,2) NOT NULL DEFAULT '0.00',
  `deposit_bank_name` varchar(200) NOT NULL,
  `bill_details` varchar(200) NOT NULL,
  `branch_id` int(11) NOT NULL,
  `added_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_add_bill_type`
--

CREATE TABLE `tbl_add_bill_type` (
  `bt_id` int(11) NOT NULL,
  `bill_type` varchar(200) NOT NULL,
  `added_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `tbl_add_bill_type`
--

INSERT INTO `tbl_add_bill_type` (`bt_id`, `bill_type`, `added_date`) VALUES
(1, 'Gas', '2016-05-05 09:49:35'),
(3, 'Agua', '2016-05-05 09:50:39'),
(4, 'Electricidad', '2016-05-05 09:50:51');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_add_builder_info`
--

CREATE TABLE `tbl_add_builder_info` (
  `bldrid` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `address` varchar(200) NOT NULL,
  `phone` varchar(200) NOT NULL,
  `added_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_add_building_info`
--

CREATE TABLE `tbl_add_building_info` (
  `bldid` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `address` varchar(200) NOT NULL,
  `security_guard_mobile` varchar(200) NOT NULL,
  `secrataty_mobile` varchar(200) NOT NULL,
  `moderator_mobile` varchar(200) NOT NULL,
  `building_make_year` varchar(200) NOT NULL,
  `b_name` varchar(200) NOT NULL,
  `b_address` varchar(200) NOT NULL,
  `b_phone` varchar(200) NOT NULL,
  `building_image` varchar(200) NOT NULL,
  `building_rules` text NOT NULL,
  `branch_id` int(11) NOT NULL,
  `added_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_add_complain`
--

CREATE TABLE `tbl_add_complain` (
  `complain_id` int(11) NOT NULL,
  `c_title` varchar(200) NOT NULL,
  `c_description` varchar(1000) NOT NULL,
  `c_date` varchar(200) NOT NULL,
  `c_month` varchar(50) NOT NULL,
  `c_year` varchar(50) NOT NULL,
  `c_userid` int(11) NOT NULL,
  `branch_id` int(11) NOT NULL,
  `job_status` int(1) NOT NULL DEFAULT '0',
  `assign_employee_id` int(11) DEFAULT '0',
  `solution` varchar(500) NOT NULL,
  `complain_by` varchar(100) DEFAULT NULL,
  `person_name` varchar(250) DEFAULT NULL,
  `person_email` varchar(100) DEFAULT NULL,
  `person_contact` varchar(50) DEFAULT NULL,
  `added_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_add_fair`
--

CREATE TABLE `tbl_add_fair` (
  `f_id` int(11) NOT NULL,
  `type` varchar(200) NOT NULL,
  `floor_no` varchar(200) NOT NULL,
  `unit_no` varchar(200) NOT NULL,
  `rid` int(11) NOT NULL DEFAULT '0',
  `month_id` int(11) NOT NULL,
  `xyear` varchar(200) NOT NULL,
  `rent` decimal(15,2) NOT NULL DEFAULT '0.00',
  `water_bill` decimal(15,2) NOT NULL DEFAULT '0.00',
  `electric_bill` decimal(15,2) NOT NULL DEFAULT '0.00',
  `gas_bill` decimal(15,2) NOT NULL DEFAULT '0.00',
  `security_bill` decimal(15,2) NOT NULL DEFAULT '0.00',
  `utility_bill` decimal(15,2) NOT NULL DEFAULT '0.00',
  `other_bill` decimal(15,2) NOT NULL DEFAULT '0.00',
  `total_rent` decimal(15,2) NOT NULL DEFAULT '0.00',
  `issue_date` varchar(200) NOT NULL,
  `paid_date` varchar(25) DEFAULT NULL,
  `branch_id` int(11) NOT NULL,
  `bill_status` tinyint(1) NOT NULL DEFAULT '0',
  `added_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `tbl_add_fair`
--

INSERT INTO `tbl_add_fair` (`f_id`, `type`, `floor_no`, `unit_no`, `rid`, `month_id`, `xyear`, `rent`, `water_bill`, `electric_bill`, `gas_bill`, `security_bill`, `utility_bill`, `other_bill`, `total_rent`, `issue_date`, `paid_date`, `branch_id`, `bill_status`, `added_date`) VALUES
(46, 'Rented', '17', '44', 25, 11, '2021', '450.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '450.00', '01/11/2021', '15/11/2021', 9, 0, '2021-11-13 01:31:23');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_add_floor`
--

CREATE TABLE `tbl_add_floor` (
  `fid` int(11) NOT NULL,
  `floor_no` varchar(200) NOT NULL,
  `branch_id` int(11) NOT NULL,
  `added_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `tbl_add_floor`
--

INSERT INTO `tbl_add_floor` (`fid`, `floor_no`, `branch_id`, `added_date`) VALUES
(16, 'Apartamento', 9, '2021-11-12 02:22:37'),
(17, 'Parqueo', 9, '2021-11-13 00:42:43'),
(18, 'Terreno', 9, '2021-11-13 00:45:22'),
(19, 'Casa', 9, '2021-11-13 00:45:35'),
(20, 'Bodega', 9, '2021-11-13 00:45:55'),
(21, 'Local', 9, '2021-11-13 00:46:08'),
(22, 'Oficina', 9, '2021-11-13 00:46:14'),
(23, 'Kiosko', 9, '2021-11-13 00:46:20'),
(24, 'Salón', 9, '2021-11-13 00:46:47'),
(25, 'Muelle', 9, '2021-11-13 00:47:11'),
(26, 'Chalet', 9, '2021-11-13 00:47:36');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_add_fund`
--

CREATE TABLE `tbl_add_fund` (
  `fund_id` int(11) NOT NULL,
  `owner_id` int(11) NOT NULL,
  `month_id` int(11) NOT NULL,
  `xyear` varchar(200) NOT NULL,
  `f_date` varchar(200) NOT NULL,
  `total_amount` decimal(15,2) NOT NULL DEFAULT '0.00',
  `purpose` varchar(400) NOT NULL,
  `branch_id` int(11) NOT NULL,
  `added_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_add_member_type`
--

CREATE TABLE `tbl_add_member_type` (
  `member_id` int(11) NOT NULL,
  `member_type` varchar(200) NOT NULL,
  `added_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `tbl_add_member_type`
--

INSERT INTO `tbl_add_member_type` (`member_id`, `member_type`, `added_date`) VALUES
(1, 'Moderator', '2016-04-10 11:56:20'),
(2, 'Secretary General', '2016-04-10 11:59:10'),
(3, 'Member', '2016-04-10 11:59:22'),
(4, 'Pion', '2016-04-10 11:59:29'),
(5, 'Security Gard', '2016-04-10 11:59:41'),
(6, 'Caretaker', '2016-04-10 12:00:17'),
(7, 'Maker', '2017-09-16 17:26:52');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_add_month_setup`
--

CREATE TABLE `tbl_add_month_setup` (
  `m_id` int(11) NOT NULL,
  `month_name` varchar(200) NOT NULL,
  `added_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `tbl_add_month_setup`
--

INSERT INTO `tbl_add_month_setup` (`m_id`, `month_name`, `added_date`) VALUES
(1, 'Enero', '2016-04-11 12:16:15'),
(2, 'Febrero', '2016-04-11 12:16:25'),
(3, 'Marzo', '2016-04-11 12:16:30'),
(4, 'Abril', '2016-04-11 12:16:36'),
(5, 'Mayo', '2016-04-11 12:16:41'),
(6, 'Junio', '2016-04-11 12:16:48'),
(7, 'Julio', '2016-04-11 12:16:53'),
(8, 'Agosto', '2016-04-11 12:16:59'),
(9, 'Septiembre', '2016-04-11 12:17:06'),
(10, 'Octubre', '2016-04-11 12:17:14'),
(11, 'Noviembre', '2016-04-11 12:17:24'),
(12, 'Diciembre', '2016-04-11 12:17:30');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_add_owner`
--

CREATE TABLE `tbl_add_owner` (
  `ownid` int(11) NOT NULL,
  `o_name` varchar(200) NOT NULL,
  `o_email` varchar(200) NOT NULL,
  `o_contact` varchar(200) NOT NULL,
  `o_pre_address` varchar(500) NOT NULL,
  `o_per_address` varchar(500) NOT NULL,
  `o_nid` varchar(200) NOT NULL,
  `o_password` varchar(100) NOT NULL,
  `image` varchar(200) NOT NULL,
  `branch_id` int(11) NOT NULL,
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `tbl_add_owner`
--

INSERT INTO `tbl_add_owner` (`ownid`, `o_name`, `o_email`, `o_contact`, `o_pre_address`, `o_per_address`, `o_nid`, `o_password`, `image`, `branch_id`, `created_date`) VALUES
(21, 'Anthony Vanegas', 'anthony.vanegas@kingsvalley.com', '12345657890', 'Ciudad', 'Ciudad', '1234567890', 'MTIzNDU2', '72556334-8382-C1DD-018E-01C154CF15AA.png', 9, '2021-11-13 01:07:55'),
(22, 'Carlos Ortiz', 'carlos.ortiz@kingsvalley.com', '12345667890', 'Ciudad', 'Ciudad', '12345678987', 'MTIzNDU2', '2DD295F4-28D1-44A8-570D-56A822B56F3E.png', 9, '2021-11-13 01:09:01');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_add_owner_unit_relation`
--

CREATE TABLE `tbl_add_owner_unit_relation` (
  `owner_id` int(11) NOT NULL,
  `unit_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `tbl_add_owner_unit_relation`
--

INSERT INTO `tbl_add_owner_unit_relation` (`owner_id`, `unit_id`) VALUES
(19, 30),
(19, 32),
(21, 42),
(21, 45),
(22, 44),
(22, 43);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_add_rent`
--

CREATE TABLE `tbl_add_rent` (
  `rid` int(11) NOT NULL,
  `r_name` varchar(200) NOT NULL,
  `r_email` varchar(200) NOT NULL,
  `r_contact` varchar(200) NOT NULL,
  `r_address` varchar(200) NOT NULL,
  `r_nid` varchar(200) NOT NULL,
  `r_floor_no` varchar(200) NOT NULL,
  `r_unit_no` varchar(200) NOT NULL,
  `r_advance` decimal(15,2) NOT NULL DEFAULT '0.00',
  `r_rent_pm` decimal(15,2) NOT NULL DEFAULT '0.00',
  `r_date` varchar(200) NOT NULL,
  `r_date1` varchar(200) NOT NULL,
  `r_gone_date` varchar(200) DEFAULT NULL,
  `r_password` varchar(100) NOT NULL,
  `image` varchar(200) NOT NULL,
  `r_status` int(1) NOT NULL DEFAULT '1',
  `r_month` int(11) NOT NULL,
  `r_year` int(11) NOT NULL,
  `branch_id` int(11) NOT NULL,
  `added_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `tbl_add_rent`
--

INSERT INTO `tbl_add_rent` (`rid`, `r_name`, `r_email`, `r_contact`, `r_address`, `r_nid`, `r_floor_no`, `r_unit_no`, `r_advance`, `r_rent_pm`, `r_date`, `r_date1`, `r_gone_date`, `r_password`, `image`, `r_status`, `r_month`, `r_year`, `branch_id`, `added_date`) VALUES
(25, 'Luis Silvestre', 'luis.silvestre@kingsvalley.com', '12353574368', 'Ciudad', '309467345', '17', '44', '345.00', '450.00', '01/11/2021', '01/11/2022', NULL, 'MTIzNDU2', 'FA6543CF-7E5F-4CCE-F3B8-D4AA0665CEA6.png', 1, 11, 14, 9, '2021-11-13 01:14:05');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_add_unit`
--

CREATE TABLE `tbl_add_unit` (
  `uid` int(11) NOT NULL,
  `floor_no` varchar(200) NOT NULL,
  `unit_no` varchar(200) NOT NULL,
  `metros_cuadrados` varchar(200) NOT NULL,
  `habitaciones` varchar(200) NOT NULL,
  `precio` varchar(200) NOT NULL,
  `address` varchar(200) NOT NULL,
  `image` varchar(200) NOT NULL,
  `branch_id` int(11) NOT NULL,
  `status` int(1) NOT NULL DEFAULT '0',
  `added_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `tbl_add_unit`
--

INSERT INTO `tbl_add_unit` (`uid`, `floor_no`, `unit_no`, `metros_cuadrados`, `habitaciones`, `precio`, `address`, `image`, `branch_id`, `status`, `added_date`) VALUES
(42, '16', 'Apartamento 604', '150', '4', '6500', 'Avenida Las Americas Torre Parque 15, Apartamento 604, Zona 15', '96298C01-7229-EF86-4835-5A4434380564.jpg', 9, 0, '2021-11-13 01:02:28'),
(43, '21', 'Local 101', '25', '1', '3500', 'Centro Comercial \"Los Alamos\" Zona 17', 'B8360609-23A0-70EC-264A-9C3DB508A599.jpg', 9, 0, '2021-11-13 01:03:36'),
(44, '17', '112', '3X3', '1', '450', '7ave 5-10, Parqueo \"La Colonia\", Sótano 1', '200B1A56-4E0E-5D78-AAD2-2DA1002514C5.jpg', 9, 1, '2021-11-13 01:04:59'),
(45, '19', 'Casa 601', '150', '5', '7000', 'Nagano Residenciales, Casa 601, Piedra Parada, Santa Catarina Pinula.', '8ED1719C-C1A4-0C16-F9AC-1369FDA36B93.jpg', 9, 0, '2021-11-13 01:06:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_add_utility_bill`
--

CREATE TABLE `tbl_add_utility_bill` (
  `utility_id` int(11) NOT NULL,
  `branch_id` int(11) NOT NULL DEFAULT '0',
  `gas_bill` varchar(200) NOT NULL,
  `security_bill` varchar(200) NOT NULL,
  `added_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_add_year_setup`
--

CREATE TABLE `tbl_add_year_setup` (
  `y_id` int(11) NOT NULL,
  `xyear` varchar(200) NOT NULL,
  `added_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `tbl_add_year_setup`
--

INSERT INTO `tbl_add_year_setup` (`y_id`, `xyear`, `added_date`) VALUES
(14, '2021', '2018-05-18 14:13:10');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_currency`
--

CREATE TABLE `tbl_currency` (
  `cid` int(11) NOT NULL,
  `symbol` varchar(5) NOT NULL,
  `name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `tbl_currency`
--

INSERT INTO `tbl_currency` (`cid`, `symbol`, `name`) VALUES
(1, 'Q', 'Quetzales'),
(12, '$', 'Dollar');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_employee_notice`
--

CREATE TABLE `tbl_employee_notice` (
  `notice_id` int(11) NOT NULL,
  `notice_title` varchar(500) NOT NULL,
  `notice_description` text NOT NULL,
  `notice_status` tinyint(4) NOT NULL,
  `branch_id` int(11) NOT NULL,
  `created_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_max_power`
--

CREATE TABLE `tbl_max_power` (
  `purchase_code` varchar(150) DEFAULT NULL,
  `website_url` varchar(150) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `installed_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `last_check_date` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `tbl_max_power`
--

INSERT INTO `tbl_max_power` (`purchase_code`, `website_url`, `email`, `installed_date`, `last_check_date`) VALUES
('a1e84ed2-a1df-41d1-808a-06732f448c5e\r\n', 'http://localhost/ams/\r\n', 'admin@kingsvalley.com', '2021-03-03 23:41:09', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_notice_board`
--

CREATE TABLE `tbl_notice_board` (
  `notice_id` int(11) NOT NULL,
  `notice_title` varchar(500) NOT NULL,
  `notice_description` text NOT NULL,
  `notice_status` tinyint(1) NOT NULL DEFAULT '1',
  `branch_id` int(11) NOT NULL,
  `created_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_notification_alert`
--

CREATE TABLE `tbl_notification_alert` (
  `notification_Id` int(11) NOT NULL,
  `subject` varchar(250) NOT NULL,
  `message` varchar(5000) NOT NULL,
  `type` int(11) DEFAULT NULL COMMENT '1=sms,2=email,3=both',
  `user_details` varchar(5000) NOT NULL,
  `branch_id` int(11) DEFAULT NULL,
  `sent_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_owner_notice_board`
--

CREATE TABLE `tbl_owner_notice_board` (
  `notice_id` int(11) NOT NULL,
  `notice_title` varchar(500) NOT NULL,
  `notice_description` text NOT NULL,
  `notice_status` tinyint(1) NOT NULL DEFAULT '1',
  `branch_id` int(11) NOT NULL,
  `created_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_settings`
--

CREATE TABLE `tbl_settings` (
  `lang_code` varchar(100) CHARACTER SET utf8 NOT NULL,
  `currency` varchar(20) CHARACTER SET utf8 NOT NULL,
  `currency_seperator` varchar(5) CHARACTER SET utf8 NOT NULL,
  `currency_position` varchar(10) CHARACTER SET utf8 NOT NULL,
  `currency_decimal` int(11) NOT NULL DEFAULT '2',
  `mail_protocol` varchar(20) CHARACTER SET utf8 NOT NULL DEFAULT 'mail',
  `super_admin_image` varchar(350) CHARACTER SET utf8 NOT NULL,
  `date_format` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `smtp_hostname` varchar(250) DEFAULT NULL,
  `smtp_username` varchar(250) DEFAULT NULL,
  `smtp_password` varchar(250) DEFAULT NULL,
  `smtp_port` varchar(10) DEFAULT NULL,
  `smtp_secure` varchar(10) DEFAULT NULL,
  `cat_username` varchar(50) DEFAULT NULL,
  `cat_password` varchar(100) DEFAULT NULL,
  `cat_apikey` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tbl_settings`
--

INSERT INTO `tbl_settings` (`lang_code`, `currency`, `currency_seperator`, `currency_position`, `currency_decimal`, `mail_protocol`, `super_admin_image`, `date_format`, `smtp_hostname`, `smtp_username`, `smtp_password`, `smtp_port`, `smtp_secure`, `cat_username`, `cat_password`, `cat_apikey`) VALUES
('English', 'Q', '.', 'left', 2, 'mail', 'CA8D0636-E7DD-542A-8775-7CC2DA9C7739.jpg', NULL, '', '', '', '', 'tls', '', '', '');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `tblbranch`
--
ALTER TABLE `tblbranch`
  ADD PRIMARY KEY (`branch_id`);

--
-- Indices de la tabla `tblsuper_admin`
--
ALTER TABLE `tblsuper_admin`
  ADD PRIMARY KEY (`user_id`);

--
-- Indices de la tabla `tbl_add_admin`
--
ALTER TABLE `tbl_add_admin`
  ADD PRIMARY KEY (`aid`);

--
-- Indices de la tabla `tbl_add_bill`
--
ALTER TABLE `tbl_add_bill`
  ADD PRIMARY KEY (`bill_id`);

--
-- Indices de la tabla `tbl_add_bill_type`
--
ALTER TABLE `tbl_add_bill_type`
  ADD PRIMARY KEY (`bt_id`);

--
-- Indices de la tabla `tbl_add_builder_info`
--
ALTER TABLE `tbl_add_builder_info`
  ADD PRIMARY KEY (`bldrid`);

--
-- Indices de la tabla `tbl_add_building_info`
--
ALTER TABLE `tbl_add_building_info`
  ADD PRIMARY KEY (`bldid`);

--
-- Indices de la tabla `tbl_add_complain`
--
ALTER TABLE `tbl_add_complain`
  ADD PRIMARY KEY (`complain_id`);

--
-- Indices de la tabla `tbl_add_fair`
--
ALTER TABLE `tbl_add_fair`
  ADD PRIMARY KEY (`f_id`);

--
-- Indices de la tabla `tbl_add_floor`
--
ALTER TABLE `tbl_add_floor`
  ADD PRIMARY KEY (`fid`);

--
-- Indices de la tabla `tbl_add_fund`
--
ALTER TABLE `tbl_add_fund`
  ADD PRIMARY KEY (`fund_id`);

--
-- Indices de la tabla `tbl_add_member_type`
--
ALTER TABLE `tbl_add_member_type`
  ADD PRIMARY KEY (`member_id`);

--
-- Indices de la tabla `tbl_add_month_setup`
--
ALTER TABLE `tbl_add_month_setup`
  ADD PRIMARY KEY (`m_id`);

--
-- Indices de la tabla `tbl_add_owner`
--
ALTER TABLE `tbl_add_owner`
  ADD PRIMARY KEY (`ownid`);

--
-- Indices de la tabla `tbl_add_owner_unit_relation`
--
ALTER TABLE `tbl_add_owner_unit_relation`
  ADD KEY `owner_id` (`owner_id`);

--
-- Indices de la tabla `tbl_add_rent`
--
ALTER TABLE `tbl_add_rent`
  ADD PRIMARY KEY (`rid`);

--
-- Indices de la tabla `tbl_add_unit`
--
ALTER TABLE `tbl_add_unit`
  ADD PRIMARY KEY (`uid`);

--
-- Indices de la tabla `tbl_add_utility_bill`
--
ALTER TABLE `tbl_add_utility_bill`
  ADD PRIMARY KEY (`utility_id`);

--
-- Indices de la tabla `tbl_add_year_setup`
--
ALTER TABLE `tbl_add_year_setup`
  ADD PRIMARY KEY (`y_id`);

--
-- Indices de la tabla `tbl_currency`
--
ALTER TABLE `tbl_currency`
  ADD PRIMARY KEY (`cid`);

--
-- Indices de la tabla `tbl_employee_notice`
--
ALTER TABLE `tbl_employee_notice`
  ADD PRIMARY KEY (`notice_id`);

--
-- Indices de la tabla `tbl_notice_board`
--
ALTER TABLE `tbl_notice_board`
  ADD PRIMARY KEY (`notice_id`);

--
-- Indices de la tabla `tbl_notification_alert`
--
ALTER TABLE `tbl_notification_alert`
  ADD PRIMARY KEY (`notification_Id`);

--
-- Indices de la tabla `tbl_owner_notice_board`
--
ALTER TABLE `tbl_owner_notice_board`
  ADD PRIMARY KEY (`notice_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `tblbranch`
--
ALTER TABLE `tblbranch`
  MODIFY `branch_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `tblsuper_admin`
--
ALTER TABLE `tblsuper_admin`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `tbl_add_admin`
--
ALTER TABLE `tbl_add_admin`
  MODIFY `aid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `tbl_add_bill`
--
ALTER TABLE `tbl_add_bill`
  MODIFY `bill_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT de la tabla `tbl_add_bill_type`
--
ALTER TABLE `tbl_add_bill_type`
  MODIFY `bt_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `tbl_add_builder_info`
--
ALTER TABLE `tbl_add_builder_info`
  MODIFY `bldrid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tbl_add_building_info`
--
ALTER TABLE `tbl_add_building_info`
  MODIFY `bldid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tbl_add_complain`
--
ALTER TABLE `tbl_add_complain`
  MODIFY `complain_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT de la tabla `tbl_add_fair`
--
ALTER TABLE `tbl_add_fair`
  MODIFY `f_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT de la tabla `tbl_add_floor`
--
ALTER TABLE `tbl_add_floor`
  MODIFY `fid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT de la tabla `tbl_add_fund`
--
ALTER TABLE `tbl_add_fund`
  MODIFY `fund_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de la tabla `tbl_add_member_type`
--
ALTER TABLE `tbl_add_member_type`
  MODIFY `member_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `tbl_add_month_setup`
--
ALTER TABLE `tbl_add_month_setup`
  MODIFY `m_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `tbl_add_owner`
--
ALTER TABLE `tbl_add_owner`
  MODIFY `ownid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT de la tabla `tbl_add_rent`
--
ALTER TABLE `tbl_add_rent`
  MODIFY `rid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT de la tabla `tbl_add_unit`
--
ALTER TABLE `tbl_add_unit`
  MODIFY `uid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT de la tabla `tbl_add_utility_bill`
--
ALTER TABLE `tbl_add_utility_bill`
  MODIFY `utility_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `tbl_add_year_setup`
--
ALTER TABLE `tbl_add_year_setup`
  MODIFY `y_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT de la tabla `tbl_currency`
--
ALTER TABLE `tbl_currency`
  MODIFY `cid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `tbl_employee_notice`
--
ALTER TABLE `tbl_employee_notice`
  MODIFY `notice_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tbl_notice_board`
--
ALTER TABLE `tbl_notice_board`
  MODIFY `notice_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `tbl_notification_alert`
--
ALTER TABLE `tbl_notification_alert`
  MODIFY `notification_Id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tbl_owner_notice_board`
--
ALTER TABLE `tbl_owner_notice_board`
  MODIFY `notice_id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
