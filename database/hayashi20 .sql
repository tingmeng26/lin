-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- 主機: localhost:3306
-- 產生時間： 2020 年 07 月 30 日 10:26
-- 伺服器版本: 5.7.24
-- PHP 版本： 7.2.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 資料庫： `hayashi20`
--

-- --------------------------------------------------------

--
-- 資料表結構 `admin`
--

DROP TABLE IF EXISTS `admin`;
CREATE TABLE IF NOT EXISTS `admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `mid` varchar(80) NOT NULL,
  `username` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(256) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(20) NOT NULL,
  `email` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `email_backup` varchar(50) NOT NULL,
  `pic` varchar(80) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `info` text NOT NULL,
  `r_id` int(11) NOT NULL,
  `company` varchar(100) DEFAULT NULL,
  `factory` varchar(100) DEFAULT NULL,
  `work` varchar(100) NOT NULL,
  `ispublic` tinyint(4) NOT NULL,
  `isadmin` tinyint(4) NOT NULL,
  `forgetcode` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `forgetcode_time` datetime NOT NULL,
  `ip` varchar(15) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `loginout_time` int(11) NOT NULL,
  `system_notice` varchar(30) NOT NULL,
  `mail_notice` varchar(30) NOT NULL,
  `admin` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `logintime` datetime NOT NULL,
  `createtime` datetime NOT NULL,
  `updatetime` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`),
  UNIQUE KEY `mid` (`mid`),
  KEY `r_id` (`r_id`),
  KEY `company` (`company`),
  KEY `factory` (`factory`),
  KEY `work` (`work`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- 資料表的匯出資料 `admin`
--

INSERT INTO `admin` (`id`, `mid`, `username`, `password`, `name`, `email`, `email_backup`, `pic`, `info`, `r_id`, `company`, `factory`, `work`, `ispublic`, `isadmin`, `forgetcode`, `forgetcode_time`, `ip`, `loginout_time`, `system_notice`, `mail_notice`, `admin`, `logintime`, `createtime`, `updatetime`) VALUES
(1, '7souioxkhlskjh867517ceb20a2fcbd615959878067ovauma75pif9f0ijf3rqch', 'admin', '8450eca01665516d9aeb5317764902b78495502637c96192c81b1683d32d691a0965cf037feca8b9ed9ee6fc6ab8f27fce8f77c4fd9b4a442a00fc317b8237e6', '管理者', 'admin@gmail.com', '', '1490757979.JPG', '最高管理員', 2, '1', '1', '1', 1, 1, NULL, '0000-00-00 00:00:00', '::1', 3, '1,2,3,4', '', 'admin', '2020-07-29 09:56:46', '0000-00-00 00:00:00', '2018-10-02 13:10:45'),
(2, 'dcfcc24b89f30f826483df550cce55c61536742066mk5ocpuu9coi94ltnbptqtd', 'jessica', 'ba3253876aed6bc22d4a6ff53d8406c6ad864195ed144ab5c87621b6c233b548baeae6956df346ec8c17f5ea10f35ee3cbc514797ed7ddd3145464e2a0bab413', 'ライトニング', 'jessica@coder.com.tw', '', '1490757967.jpg', 'test ????', 7, '5', '8', '16', 1, 0, NULL, '0000-00-00 00:00:00', '::1', 3, '', '', 'admin', '2018-09-12 16:47:46', '2016-02-16 15:27:26', '2018-10-02 13:06:10');

-- --------------------------------------------------------

--
-- 資料表結構 `admin_log`
--

DROP TABLE IF EXISTS `admin_log`;
CREATE TABLE IF NOT EXISTS `admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(20) NOT NULL,
  `main_key` int(11) NOT NULL,
  `fun_key` int(11) NOT NULL,
  `descript` varchar(100) NOT NULL,
  `createtime` datetime NOT NULL,
  `ip` char(15) NOT NULL,
  `action` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=150 DEFAULT CHARSET=utf8;

--
-- 資料表的匯出資料 `admin_log`
--

INSERT INTO `admin_log` (`id`, `username`, `main_key`, `fun_key`, `descript`, `createtime`, `ip`, `action`) VALUES
(1, 'admin', 2, 2, '語系字典列表 id:1350', '2020-07-09 20:00:12', '127.0.0.1', 4),
(2, 'admin', 2, 2, '語系字典列表 id:1351', '2020-07-09 20:01:13', '127.0.0.1', 4),
(3, 'admin', 2, 2, '語系字典列表 id:1352', '2020-07-09 20:02:24', '127.0.0.1', 4),
(4, 'admin', 2, 2, '語系字典列表 id:1353', '2020-07-09 20:02:46', '127.0.0.1', 4),
(5, 'admin', 2, 2, '語系字典列表 id:1351', '2020-07-09 20:05:03', '127.0.0.1', 8),
(6, 'admin', 2, 2, '語系字典列表 id:1375', '2020-07-09 21:16:35', '127.0.0.1', 4),
(7, 'admin', 2, 2, '語系字典列表 id:1376', '2020-07-09 21:17:21', '127.0.0.1', 4),
(8, 'admin', 2, 2, '語系字典列表 id:1377', '2020-07-09 21:17:53', '127.0.0.1', 4),
(9, 'admin', 2, 2, '語系字典列表 - Excel匯入', '2020-07-09 21:28:26', '127.0.0.1', 4),
(10, 'admin', 2, 2, '語系字典列表 - Excel匯入', '2020-07-09 21:30:50', '127.0.0.1', 4),
(11, 'admin', 0, 0, 'admin登入成功', '2020-07-10 13:07:19', '127.0.0.1', 1),
(12, 'admin', 2, 2, '言語辞書のリスト - Excel匯入', '2020-07-10 13:21:06', '127.0.0.1', 4),
(13, 'admin', 2, 2, '言語辞書のリスト - Excel匯入', '2020-07-10 13:23:24', '127.0.0.1', 4),
(14, 'admin', 0, 0, 'admin登入成功', '2020-07-14 17:55:42', '::1', 1),
(15, 'admin', 3, 1, '產品分類大類 id:1', '2020-07-15 14:43:07', '::1', 8),
(16, 'admin', 3, 1, '產品分類大類 id:1', '2020-07-15 14:43:47', '::1', 8),
(17, 'admin', 3, 1, ' カテゴリ一覧 id:1', '2020-07-15 14:58:42', '::1', 8),
(18, 'admin', 3, 1, ' カテゴリ一覧 id:', '2020-07-15 15:00:20', '::1', 4),
(19, 'admin', 3, 1, '產品分類大類 id:2', '2020-07-15 15:06:53', '::1', 8),
(20, 'admin', 3, 2, '產品分類細項 id:1', '2020-07-15 16:19:14', '::1', 8),
(21, 'admin', 3, 2, '產品分類細項 id:', '2020-07-15 17:11:08', '::1', 4),
(22, 'admin', 3, 2, '產品分類細項 id:', '2020-07-15 17:14:16', '::1', 4),
(23, 'admin', 3, 2, '產品分類細項 id:', '2020-07-15 17:14:21', '::1', 4),
(24, 'admin', 3, 2, '2筆資料(\'5\',\'4\')', '2020-07-15 17:14:28', '::1', 16),
(25, 'admin', 3, 2, '產品分類細項 id:', '2020-07-15 17:14:45', '::1', 4),
(26, 'admin', 3, 2, '1筆資料(\'6\')', '2020-07-15 17:14:57', '::1', 16),
(27, 'admin', 3, 1, '產品分類大類 id:1', '2020-07-15 17:21:05', '::1', 8),
(28, 'admin', 0, 0, 'admin登入失敗-帳密不正確', '2020-07-16 10:16:16', '::1', 1),
(29, 'admin', 0, 0, 'admin登入成功', '2020-07-16 10:16:39', '::1', 1),
(30, 'admin', 4, 2, ' id:2', '2020-07-16 12:09:29', '::1', 8),
(31, 'admin', 4, 2, ' id:2', '2020-07-16 12:09:56', '::1', 8),
(32, 'admin', 3, 3, '產品管理 id:1', '2020-07-17 15:53:56', '::1', 8),
(33, 'admin', 3, 3, '產品管理 id:1', '2020-07-17 16:07:07', '::1', 8),
(34, 'admin', 3, 3, '產品管理 id:1', '2020-07-17 16:11:48', '::1', 8),
(35, 'admin', 3, 3, '產品管理 id:', '2020-07-17 16:50:14', '::1', 4),
(36, 'admin', 3, 3, '產品管理 id:1', '2020-07-17 16:52:58', '::1', 8),
(37, 'admin', 3, 3, '產品管理 id:2', '2020-07-17 17:06:24', '::1', 8),
(38, 'admin', 3, 3, '產品管理 id:1', '2020-07-17 17:19:06', '::1', 8),
(39, 'admin', 3, 3, '產品管理 id:1', '2020-07-17 17:23:14', '::1', 8),
(40, 'admin', 3, 3, '產品管理 id:1', '2020-07-17 17:24:50', '::1', 8),
(41, 'admin', 3, 3, '產品管理 id:1', '2020-07-17 17:29:58', '::1', 8),
(42, 'admin', 3, 3, '產品管理 id:1', '2020-07-20 11:04:23', '::1', 8),
(43, 'admin', 3, 3, '產品管理 id:1', '2020-07-20 11:08:05', '::1', 8),
(44, 'admin', 3, 3, '產品管理 id:1', '2020-07-20 11:13:04', '::1', 8),
(45, 'admin', 3, 3, '產品管理 id:2', '2020-07-20 11:30:32', '::1', 8),
(46, 'admin', 3, 3, '產品管理 id:1', '2020-07-20 12:23:50', '::1', 8),
(47, 'admin', 3, 3, '產品管理 id:1', '2020-07-20 12:28:47', '::1', 8),
(48, 'admin', 3, 3, '產品管理 id:1', '2020-07-20 12:40:22', '::1', 8),
(49, 'admin', 3, 3, '產品管理 id:1', '2020-07-20 12:44:54', '::1', 8),
(50, 'admin', 2, 2, '語系字典列表 id:1423', '2020-07-20 15:15:07', '::1', 4),
(51, 'admin', 2, 2, '語系字典列表 id:1424', '2020-07-20 15:15:32', '::1', 4),
(52, 'admin', 2, 2, '語系字典列表 id:1425', '2020-07-20 15:18:37', '::1', 4),
(53, 'admin', 2, 2, '語系字典列表 id:1426', '2020-07-20 15:18:56', '::1', 4),
(54, 'admin', 2, 2, '語系字典列表 id:1427', '2020-07-20 15:20:04', '::1', 4),
(55, 'admin', 2, 2, '語系字典列表 id:1428', '2020-07-20 15:20:16', '::1', 4),
(56, 'admin', 2, 2, '語系字典列表 id:1429', '2020-07-20 15:22:34', '::1', 4),
(57, 'admin', 2, 2, '語系字典列表 id:1430', '2020-07-20 15:22:44', '::1', 4),
(58, 'admin', 2, 2, '語系字典列表 id:1431', '2020-07-20 15:24:16', '::1', 4),
(59, 'admin', 2, 2, '語系字典列表 id:1432', '2020-07-20 15:24:27', '::1', 4),
(60, 'admin', 2, 2, '語系字典列表 id:1433', '2020-07-20 15:25:24', '::1', 4),
(61, 'admin', 2, 2, '語系字典列表 id:1434', '2020-07-20 15:25:32', '::1', 4),
(62, 'admin', 2, 2, '言語辞書のリスト id:1435', '2020-07-20 15:31:36', '::1', 4),
(63, 'admin', 2, 2, '言語辞書のリスト id:1436', '2020-07-20 15:31:45', '::1', 4),
(64, 'admin', 2, 2, '言語辞書のリスト id:1437', '2020-07-20 15:33:22', '::1', 4),
(65, 'admin', 2, 2, '言語辞書のリスト id:1438', '2020-07-20 15:33:35', '::1', 4),
(66, 'admin', 2, 2, '言語辞書のリスト id:1439', '2020-07-20 15:34:24', '::1', 4),
(67, 'admin', 2, 2, '言語辞書のリスト id:1440', '2020-07-20 15:34:36', '::1', 4),
(68, 'admin', 2, 2, '言語辞書のリスト id:1441', '2020-07-20 15:35:47', '::1', 4),
(69, 'admin', 2, 2, '言語辞書のリスト id:1441', '2020-07-20 15:36:01', '::1', 8),
(70, 'admin', 2, 2, '言語辞書のリスト id:1442', '2020-07-20 15:36:13', '::1', 4),
(71, 'admin', 2, 2, '言語辞書のリスト id:1443', '2020-07-20 15:38:31', '::1', 4),
(72, 'admin', 2, 2, '言語辞書のリスト id:1444', '2020-07-20 15:38:40', '::1', 4),
(73, 'admin', 2, 2, '言語辞書のリスト id:1445', '2020-07-20 15:39:19', '::1', 4),
(74, 'admin', 2, 2, '言語辞書のリスト id:1446', '2020-07-20 15:39:27', '::1', 4),
(75, 'admin', 2, 2, '言語辞書のリスト id:1447', '2020-07-20 15:40:11', '::1', 4),
(76, 'admin', 2, 2, '言語辞書のリスト id:1448', '2020-07-20 15:40:20', '::1', 4),
(77, 'admin', 2, 2, '言語辞書のリスト id:1449', '2020-07-20 15:43:06', '::1', 4),
(78, 'admin', 2, 2, '言語辞書のリスト id:1450', '2020-07-20 15:43:14', '::1', 4),
(79, 'admin', 2, 2, '言語辞書のリスト id:1451', '2020-07-20 15:44:05', '::1', 4),
(80, 'admin', 2, 2, '言語辞書のリスト id:1452', '2020-07-20 15:44:37', '::1', 4),
(81, 'admin', 2, 2, '言語辞書のリスト id:1453', '2020-07-20 15:45:19', '::1', 4),
(82, 'admin', 2, 2, '言語辞書のリスト id:1454', '2020-07-20 15:45:27', '::1', 4),
(83, 'admin', 2, 2, '言語辞書のリスト id:1455', '2020-07-20 15:52:45', '::1', 4),
(84, 'admin', 2, 2, '言語辞書のリスト id:1456', '2020-07-20 15:52:55', '::1', 4),
(85, 'admin', 2, 2, '言語辞書のリスト id:1457', '2020-07-20 15:55:32', '::1', 4),
(86, 'admin', 2, 2, '言語辞書のリスト id:1458', '2020-07-20 15:55:45', '::1', 4),
(87, 'admin', 2, 2, '言語辞書のリスト id:1459', '2020-07-20 16:04:32', '::1', 4),
(88, 'admin', 2, 2, '言語辞書のリスト id:1460', '2020-07-20 16:04:56', '::1', 4),
(89, 'admin', 2, 2, '言語辞書のリスト id:1461', '2020-07-20 16:05:56', '::1', 4),
(90, 'admin', 2, 2, '言語辞書のリスト id:1462', '2020-07-20 16:06:10', '::1', 4),
(91, 'admin', 2, 2, '言語辞書のリスト id:1463', '2020-07-20 16:06:57', '::1', 4),
(92, 'admin', 2, 2, '言語辞書のリスト id:1464', '2020-07-20 16:07:08', '::1', 4),
(93, 'admin', 2, 2, '言語辞書のリスト id:1465', '2020-07-20 16:17:14', '::1', 4),
(94, 'admin', 2, 2, '言語辞書のリスト id:1466', '2020-07-20 16:19:22', '::1', 4),
(95, 'admin', 2, 2, '言語辞書のリスト id:1467', '2020-07-20 16:20:49', '::1', 4),
(96, 'admin', 2, 2, '言語辞書のリスト id:1468', '2020-07-20 16:20:58', '::1', 4),
(97, 'admin', 2, 2, '言語辞書のリスト id:1469', '2020-07-20 16:28:21', '::1', 4),
(98, 'admin', 2, 2, '言語辞書のリスト id:1470', '2020-07-20 16:29:40', '::1', 4),
(99, 'admin', 2, 2, '言語辞書のリスト id:1471', '2020-07-20 16:54:36', '::1', 4),
(100, 'admin', 2, 2, '言語辞書のリスト id:1472', '2020-07-20 16:54:50', '::1', 4),
(101, 'admin', 2, 2, '言語辞書のリスト id:1473', '2020-07-20 16:55:28', '::1', 4),
(102, 'admin', 2, 2, '言語辞書のリスト id:1474', '2020-07-20 16:55:43', '::1', 4),
(103, 'admin', 2, 2, '言語辞書のリスト id:1475', '2020-07-20 17:29:29', '::1', 4),
(104, 'admin', 2, 2, '言語辞書のリスト id:1476', '2020-07-20 17:29:40', '::1', 4),
(105, 'admin', 2, 2, '言語辞書のリスト id:1477', '2020-07-20 17:32:07', '::1', 4),
(106, 'admin', 2, 2, '言語辞書のリスト id:1478', '2020-07-20 17:32:18', '::1', 4),
(107, 'admin', 2, 2, '言語辞書のリスト id:1479', '2020-07-20 17:32:59', '::1', 4),
(108, 'admin', 2, 2, '言語辞書のリスト id:1480', '2020-07-20 17:33:11', '::1', 4),
(109, 'admin', 2, 2, '言語辞書のリスト id:1481', '2020-07-20 17:34:47', '::1', 4),
(110, 'admin', 2, 2, '言語辞書のリスト id:1482', '2020-07-20 17:35:00', '::1', 4),
(111, 'admin', 2, 2, '言語辞書のリスト id:1483', '2020-07-20 17:35:47', '::1', 4),
(112, 'admin', 2, 2, '言語辞書のリスト id:1484', '2020-07-20 17:36:03', '::1', 4),
(113, 'admin', 0, 0, 'admin登入成功', '2020-07-21 12:16:41', '::1', 1),
(114, 'admin', 3, 2, '產品分類細項 id:', '2020-07-21 12:17:37', '::1', 4),
(115, 'admin', 0, 0, 'admin登入成功', '2020-07-22 10:59:53', '::1', 1),
(116, 'admin', 3, 3, '產品管理 id:2', '2020-07-22 11:01:57', '::1', 8),
(117, 'admin', 3, 3, '產品管理 id:2', '2020-07-22 11:04:19', '::1', 8),
(118, 'admin', 3, 3, '產品管理 id:2', '2020-07-22 11:06:02', '::1', 8),
(119, 'admin', 3, 3, '產品管理 id:1', '2020-07-22 11:21:28', '::1', 8),
(120, 'admin', 2, 2, '語系字典列表 id:1485', '2020-07-23 11:41:46', '::1', 4),
(121, 'admin', 2, 2, '語系字典列表 id:1486', '2020-07-23 11:42:00', '::1', 4),
(122, 'admin', 2, 2, '語系字典列表 id:1487', '2020-07-23 11:42:11', '::1', 4),
(123, 'admin', 2, 2, '語系字典列表 id:1485', '2020-07-23 17:12:49', '::1', 8),
(124, 'admin', 3, 1, '產品分類大類 id:', '2020-07-24 10:34:36', '::1', 4),
(125, 'admin', 3, 2, '產品分類細項 id:', '2020-07-24 10:37:16', '::1', 4),
(126, 'admin', 3, 2, '產品分類細項 id:', '2020-07-24 10:38:59', '::1', 4),
(127, 'admin', 3, 2, '產品分類細項 id:', '2020-07-24 10:39:14', '::1', 4),
(128, 'admin', 3, 2, '產品分類細項 id:', '2020-07-24 10:39:31', '::1', 4),
(129, 'admin', 3, 1, '產品分類大類 id:', '2020-07-24 10:40:15', '::1', 4),
(130, 'admin', 3, 1, '產品分類大類 id:', '2020-07-24 10:41:08', '::1', 4),
(131, 'admin', 3, 2, '產品分類細項 id:', '2020-07-24 10:41:33', '::1', 4),
(132, 'admin', 3, 2, '產品分類細項 id:', '2020-07-24 10:41:51', '::1', 4),
(133, 'admin', 3, 2, '產品分類細項 id:', '2020-07-24 10:42:10', '::1', 4),
(134, 'admin', 3, 2, '產品分類細項 id:', '2020-07-24 10:43:16', '::1', 4),
(135, 'admin', 3, 2, '產品分類細項 id:', '2020-07-24 10:43:32', '::1', 4),
(136, 'admin', 3, 2, '產品分類細項 id:', '2020-07-24 10:43:49', '::1', 4),
(137, 'admin', 3, 2, '產品分類細項 id:', '2020-07-24 10:44:04', '::1', 4),
(138, 'admin', 3, 2, '產品分類細項 id:', '2020-07-24 10:44:26', '::1', 4),
(139, 'admin', 3, 2, '產品分類細項 id:', '2020-07-24 10:44:40', '::1', 4),
(140, 'admin', 3, 3, '產品管理 id:', '2020-07-24 10:57:50', '::1', 4),
(141, 'admin', 3, 2, '1筆資料(\'19\')', '2020-07-24 11:55:26', '::1', 16),
(142, 'admin', 3, 3, '產品管理 id:6', '2020-07-24 12:07:16', '::1', 8),
(143, 'admin', 3, 3, '產品管理 id:6', '2020-07-24 12:09:50', '::1', 8),
(144, 'admin', 3, 3, '產品管理 id:6', '2020-07-24 12:10:22', '::1', 8),
(145, 'admin', 0, 0, 'admin登入成功', '2020-07-29 09:56:46', '::1', 1),
(146, 'admin', 2, 2, '語系字典列表 id:1488', '2020-07-29 10:10:15', '::1', 4),
(147, 'admin', 2, 2, '語系字典列表 - Excel匯入', '2020-07-29 10:12:52', '::1', 4),
(148, 'admin', 2, 2, '語系字典列表 - Excel匯入', '2020-07-29 10:15:32', '::1', 4),
(149, 'admin', 2, 2, '語系字典列表 id:1488', '2020-07-29 10:25:49', '::1', 8);

-- --------------------------------------------------------

--
-- 資料表結構 `contacts`
--

DROP TABLE IF EXISTS `contacts`;
CREATE TABLE IF NOT EXISTS `contacts` (
  `contact_id` int(11) NOT NULL AUTO_INCREMENT,
  `contact_type` tinyint(4) NOT NULL COMMENT '1=OEM・ODM生產專用 2=既有產品專用',
  `product_id` int(11) NOT NULL COMMENT 'fk product id contact_type = 2 才有',
  `contact_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `contact_company` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `contact_address` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `contact_phone` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `contact_email` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `contact_content` text COLLATE utf8_unicode_ci NOT NULL,
  `contact_reply` int(11) NOT NULL COMMENT '0 未處理 1已回覆',
  `contact_notice` text COLLATE utf8_unicode_ci NOT NULL,
  `contact_createtime` datetime NOT NULL,
  `contact_updatetime` datetime NOT NULL,
  `contact_admin` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`contact_id`)
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 資料表的匯出資料 `contacts`
--

INSERT INTO `contacts` (`contact_id`, `contact_type`, `product_id`, `contact_name`, `contact_company`, `contact_address`, `contact_phone`, `contact_email`, `contact_content`, `contact_reply`, `contact_notice`, `contact_createtime`, `contact_updatetime`, `contact_admin`) VALUES
(1, 1, 0, 'oemodm', 'company', 'addre', 'phone', 'ema', 'content', 0, '', '2020-07-15 00:00:00', '2020-07-15 00:00:00', ''),
(2, 2, 2, '產品', 'company', 'addre', 'phone', 'ema', 'content', 1, '2134', '2020-07-15 00:00:00', '2020-07-16 12:09:56', 'admin'),
(3, 1, 0, '大大', '大大公司', '台中', '0912345678', 'da@test.com', 'tyeyeyey', 0, '', '2020-07-23 18:35:07', '2020-07-23 18:35:07', ''),
(5, 1, 0, 'jp1', 'jp2', 'jp3', '005421515#5', 'jp@test', 'jpjpjpjpjpjpjp', 0, '', '2020-07-24 10:23:40', '2020-07-24 10:23:40', ''),
(8, 1, 0, '123', '123', '123', '123', '111@test', '123123fdwdssdfsfdsfdsfdsdsdfsdfsfdsdfsfdsdffdssfd', 0, '', '2020-07-24 17:58:59', '2020-07-24 17:58:59', ''),
(9, 2, 6, '123', '123', '123', '123', '123@test', '123', 0, '', '2020-07-27 12:19:21', '2020-07-27 12:19:21', ''),
(10, 2, 7, '產品', '產品1', '產品2', '12312312', 'pppp@test', '內容123123', 0, '', '2020-07-27 12:23:17', '2020-07-27 12:23:17', ''),
(11, 1, 0, 'test', 'test', 'test', '090909', 'test@test', 'teteste', 0, '', '2020-07-29 12:44:36', '2020-07-29 12:44:36', ''),
(12, 1, 0, '1', '1', '1', '1', '1@test', '123', 0, '', '2020-07-29 15:16:09', '2020-07-29 15:16:09', ''),
(13, 1, 0, '1', '1', '1', '1', '1@test', '1', 0, '', '2020-07-29 15:17:06', '2020-07-29 15:17:06', ''),
(14, 2, 6, 'tefgsfg', 'sfagfsg', 'asfgfsag', 'afsgafgfa', 'tt@test', 'wgdsdgsfgwg', 0, '', '2020-07-29 15:20:16', '2020-07-29 15:20:16', ''),
(15, 2, 6, 'tefgsfg', 'sfagfsg', 'asfgfsag', 'afsgafgfa', 'tt@test', 'wgdsdgsfgwg', 0, '', '2020-07-29 15:20:20', '2020-07-29 15:20:20', ''),
(16, 2, 6, 'jpjpjp', 'jpjpjp', 'jpjpjp', 'jpjpjp', 'jp@test', 'jpjpjpjpjpjp', 0, '', '2020-07-29 15:23:38', '2020-07-29 15:23:38', '');

-- --------------------------------------------------------

--
-- 資料表結構 `lang_data`
--

DROP TABLE IF EXISTS `lang_data`;
CREATE TABLE IF NOT EXISTS `lang_data` (
  `ld_id` int(11) NOT NULL AUTO_INCREMENT,
  `ld_lang` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `ld_name` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `ld_remark` text COLLATE utf8_unicode_ci NOT NULL,
  `ld_ispublic` int(11) NOT NULL,
  `ld_ind` int(11) NOT NULL,
  `ld_admin` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `ld_updatetime` datetime NOT NULL,
  `ld_createtime` datetime NOT NULL,
  PRIMARY KEY (`ld_id`),
  KEY `ld_lang` (`ld_lang`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;

--
-- 資料表的匯出資料 `lang_data`
--

INSERT INTO `lang_data` (`ld_id`, `ld_lang`, `ld_name`, `ld_remark`, `ld_ispublic`, `ld_ind`, `ld_admin`, `ld_updatetime`, `ld_createtime`) VALUES
(36, 'zh-cht', '繁體中文', '繁體中文', 1, 2, 'jessica', '2018-04-25 18:40:12', '2018-04-02 10:28:22'),
(39, 'jp', '日文', '日文', 1, 3, 'admin', '2020-07-07 20:47:08', '2020-07-07 20:47:08'),
(40, 'en', '英文', '英文', 1, 4, 'admin', '2020-07-07 20:47:08', '2020-07-07 20:47:08');

-- --------------------------------------------------------

--
-- 資料表結構 `lang_dictionary`
--

DROP TABLE IF EXISTS `lang_dictionary`;
CREATE TABLE IF NOT EXISTS `lang_dictionary` (
  `ldic_id` int(11) NOT NULL AUTO_INCREMENT,
  `ldic_ld_lang` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `ldic_key` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `ldic_english` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `ldic_val` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ldic_admin` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `ldic_updatetime` datetime NOT NULL,
  `ldic_createtime` datetime NOT NULL,
  PRIMARY KEY (`ldic_id`),
  KEY `ldic_ld_id` (`ldic_ld_lang`)
) ENGINE=InnoDB AUTO_INCREMENT=1548 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;

--
-- 資料表的匯出資料 `lang_dictionary`
--

INSERT INTO `lang_dictionary` (`ldic_id`, `ldic_ld_lang`, `ldic_key`, `ldic_english`, `ldic_val`, `ldic_admin`, `ldic_updatetime`, `ldic_createtime`) VALUES
(1, 'zh-cht', 'lang', 'language system', '語系', '', '2018-03-31 00:00:00', '2018-03-31 00:00:00'),
(2, 'zh-cht', 'alertdiv', 'Signing in... please wait', '<strong>登入中...</strong>請稍候', '', '2018-03-31 00:00:00', '2018-03-31 00:00:00'),
(3, 'zh-cht', 'actype', 'Please choose your identity', '請選擇身份', '', '2018-03-31 00:00:00', '2018-03-31 00:00:00'),
(4, 'zh-cht', 'username', 'Please enter your account here', '請在此輸入您的帳號', '', '2018-03-31 00:00:00', '2018-03-31 00:00:00'),
(5, 'zh-cht', 'password', 'Please enter your password here', '請在此輸入您的密碼', '', '2018-03-31 00:00:00', '2018-03-31 00:00:00'),
(6, 'zh-cht', 'code', 'Right figure', '右圖數字', '', '2018-03-31 00:00:00', '2018-03-31 00:00:00'),
(7, 'zh-cht', 'codeimg1', 'Can\'t see clearly?', '看不清楚嗎?', '', '2018-03-31 00:00:00', '2018-03-31 00:00:00'),
(8, 'zh-cht', 'codeimg2', 'I can get a new set of verification pictures again.', '點我就可以重新取得一組新的驗證圖片!', '', '2018-03-31 00:00:00', '2018-03-31 00:00:00'),
(9, 'zh-cht', 'remember', 'remember me', '記住我', '', '2018-03-31 00:00:00', '2018-03-31 00:00:00'),
(10, 'zh-cht', 'formbtn', 'Sign in', '登入', '', '2018-03-31 00:00:00', '2018-03-31 00:00:00'),
(11, 'zh-cht', 'forgot', 'Verification...', '驗證中...', '', '2018-03-31 00:00:00', '2018-03-31 00:00:00'),
(12, 'zh-cht', 'forgot2', 'Please wait', '請稍候', '', '2018-03-31 00:00:00', '2018-03-31 00:00:00'),
(13, 'zh-cht', 'forgot3', 'Please enter your email here', '請在此輸入您的Email', '', '2018-03-31 00:00:00', '2018-03-31 00:00:00'),
(14, 'zh-cht', 'forgot4', 'Send verification letter', '寄出驗證信', '', '2018-03-31 00:00:00', '2018-03-31 00:00:00'),
(15, 'zh-cht', 'forgot5', '← Back to login page', '← 回登入頁', '', '2018-03-31 00:00:00', '2018-03-31 00:00:00'),
(32, 'zh-cht', 'manage_title', 'Back office management system', '後台管理系統-Neptunus', '', '2018-04-02 00:00:00', '2018-04-02 00:00:00'),
(33, 'zh-cht', 'forgetpwd', 'forget password', '忘記密碼', '', '2018-04-02 00:00:00', '2018-04-02 00:00:00'),
(36, 'zh-cht', 'backpwd', 'Get back your password', '取得密碼', 'admin', '2018-04-02 18:19:24', '2018-04-02 00:00:00'),
(37, 'zh-cht', 'edit', 'edit', '編輯', 'admin', '2018-04-02 18:38:33', '2018-04-02 18:38:33'),
(39, 'zh-cht', 'add', 'add', '新增', 'admin', '2018-04-02 18:40:09', '2018-04-02 18:40:09'),
(41, 'zh-cht', 'delmsg1', 'Unknown error, please contact system administrator', '未知錯誤,請聯絡系統管理員', 'admin', '2018-04-02 18:46:58', '2018-04-02 18:46:58'),
(43, 'zh-cht', 'delmsg2', 'Information', '筆資料', 'admin', '2018-04-02 18:51:53', '2018-04-02 18:49:29'),
(46, 'zh-cht', 'delmsg3', 'Check deleted data', '查無刪除資料', 'admin', '2018-04-02 18:52:59', '2018-04-02 18:52:33'),
(47, 'zh-cht', 'delmsg4', 'Did not select delete data', '未選取刪除資料', 'admin', '2018-04-02 18:53:51', '2018-04-02 18:53:51'),
(49, 'zh-cht', 'configmsg1', 'You can view all data here, or add, modify, delete, etc.', '您可以在這裡檢視所有資料,或進行新增、修改、刪除等操作。', 'admin', '2018-04-02 19:01:58', '2018-04-02 19:01:58'),
(51, 'zh-cht', 'configmsg2', 'management', '管理', 'admin', '2018-04-02 19:04:06', '2018-04-02 19:04:06'),
(53, 'zh-cht', 'manage4', 'System Information', '系統資訊', 'admin', '2018-04-03 10:55:47', '2018-04-03 10:49:14'),
(55, 'zh-cht', 'manage1', 'Manager', '管理員', 'admin', '2018-04-03 12:04:22', '2018-04-03 10:57:09'),
(58, 'zh-cht', 'manage2', 'Establishing time', '建立時間', 'admin', '2018-04-03 10:58:31', '2018-04-03 10:58:31'),
(59, 'zh-cht', 'manage3', 'Last modified', '上次修改時間', 'admin', '2018-04-03 10:59:00', '2018-04-03 10:59:00'),
(61, 'zh-cht', 'manage5', 'complete', '完成', 'admin', '2018-04-03 11:08:43', '2018-04-03 11:08:43'),
(62, 'zh-cht', 'manage6', 'click Cancel', '確定要取消', 'admin', '2018-04-03 11:09:28', '2018-04-03 11:09:28'),
(63, 'zh-cht', 'manage7', 'cancel', '取消', 'admin', '2018-04-03 11:10:22', '2018-04-03 11:10:22'),
(68, 'zh-cht', 'langdatajs1', 'This country code has already been used. Please re-enter!', '此語系代碼已被使用,請重新輸入!', 'admin', '2018-04-09 11:43:32', '2018-04-03 11:18:55'),
(69, 'zh-cht', 'langdictionaryjs1', 'This country code Key has been used, please re-enter!', '此語系代碼Key已被使用，請重新輸入!', 'admin', '2018-04-09 11:43:27', '2018-04-03 11:21:11'),
(71, 'zh-cht', 'index1', 'Last update time', '最後更新時間', 'admin', '2018-04-03 12:01:58', '2018-04-03 12:01:58'),
(73, 'zh-cht', 'index2', 'Enable', '啟用', 'admin', '2018-04-03 12:06:11', '2018-04-03 12:06:11'),
(75, 'zh-cht', 'filter1', 'Last modified date', '最後修改日期', 'admin', '2018-04-03 12:17:00', '2018-04-03 12:17:00'),
(76, 'zh-cht', 'filter2', 'Date of establishment', '建立日期', 'admin', '2018-04-03 12:17:32', '2018-04-03 12:17:32'),
(77, 'zh-cht', 'filter3', 'Keywords', '關鍵字', 'admin', '2018-04-03 12:17:52', '2018-04-03 12:17:52'),
(81, 'zh-cht', 'coderadmin1', 'system', '系統', 'admin', '2018-04-03 15:45:25', '2018-04-03 15:45:25'),
(83, 'zh-cht', 'coderadmin1_1', 'Member management', '成員管理', 'admin', '2018-04-03 15:46:47', '2018-04-03 15:46:47'),
(85, 'zh-cht', 'coderadmin1_2', 'authority management', '權限管理', 'admin', '2018-04-03 15:47:51', '2018-04-03 15:47:51'),
(87, 'zh-cht', 'coderadmin1_3', 'History record', '歷程記錄', 'admin', '2018-04-03 15:51:35', '2018-04-03 15:51:35'),
(89, 'zh-cht', 'coderadmin2', 'Language family', '語系', 'admin', '2018-04-03 15:52:43', '2018-04-03 15:52:43'),
(91, 'zh-cht', 'coderadmin2_1', 'Language List', '語系列表', 'admin', '2018-04-03 15:54:00', '2018-04-03 15:54:00'),
(92, 'zh-cht', 'coderadmin2_2', 'Language dictionary list', '語系字典列表', 'admin', '2018-04-03 15:54:23', '2018-04-03 15:54:23'),
(95, 'zh-cht', 'coderadmin_home', 'Home', '首頁', 'admin', '2018-04-03 16:07:49', '2018-04-03 16:07:49'),
(97, 'zh-cht', 'langdata1', 'country code', '語系代碼', 'admin', '2018-04-09 11:43:23', '2018-04-03 16:12:36'),
(98, 'zh-cht', 'langdata2', 'name', '名稱', 'admin', '2018-04-03 16:12:53', '2018-04-03 16:12:53'),
(99, 'zh-cht', 'langdata3', 'Language dictionary number', '語系字典數量', 'admin', '2018-04-03 16:13:07', '2018-04-03 16:13:07'),
(103, 'zh-cht', 'langdata4', 'Remark', '備註', 'admin', '2018-04-03 16:18:07', '2018-04-03 16:18:07'),
(105, 'zh-cht', 'langdata4_1', 'Please enter a note', '請輸入備註', 'admin', '2018-04-03 16:22:28', '2018-04-03 16:22:28'),
(106, 'zh-cht', 'langdata1_1', 'Please enter country code', '請輸入語系代碼', 'admin', '2018-04-09 11:43:19', '2018-04-03 16:22:49'),
(107, 'zh-cht', 'langdata2_1', 'Please enter a name', '請輸入名稱', 'admin', '2018-04-03 16:23:14', '2018-04-03 16:23:14'),
(111, 'zh-cht', 'langdictionary1', 'English description', '英文描述', 'admin', '2018-04-03 16:37:59', '2018-04-03 16:37:59'),
(112, 'zh-cht', 'langdictionary2', 'key', 'key', 'admin', '2018-04-03 16:38:12', '2018-04-03 16:38:12'),
(113, 'zh-cht', 'langdictionary3', 'translation', '翻譯', 'admin', '2018-04-03 16:38:34', '2018-04-03 16:38:34'),
(117, 'zh-cht', 'langdictionary1_1', 'Please enter the English description', '請輸入英文描述', 'admin', '2018-04-03 16:44:11', '2018-04-03 16:44:11'),
(118, 'zh-cht', 'langdictionary2_1', 'Please enter the key', '請輸入key', 'admin', '2018-04-03 16:44:33', '2018-04-03 16:44:33'),
(119, 'zh-cht', 'langdictionary3_1', 'Please enter a translation', '請輸入翻譯', 'admin', '2018-04-03 16:44:52', '2018-04-03 16:44:52'),
(123, 'zh-cht', 'coderlisthelp1', 'Sorting', '排序', 'admin', '2018-04-03 16:53:19', '2018-04-03 16:52:54'),
(124, 'zh-cht', 'coderlisthelp2', 'operating', '操作', 'admin', '2018-04-03 16:53:35', '2018-04-03 16:53:35'),
(127, 'zh-cht', 'view', 'view', '瀏覽', 'admin', '2018-04-03 17:54:43', '2018-04-03 17:54:43'),
(130, 'zh-cht', 'del', 'delete', '刪除', 'admin', '2018-04-03 17:55:55', '2018-04-03 17:55:55'),
(131, 'zh-cht', 'copy', 'copy', '複製', 'admin', '2018-04-03 17:56:10', '2018-04-03 17:56:10'),
(134, 'zh-cht', 'import', 'import', '匯入', 'admin', '2018-04-03 17:56:52', '2018-04-03 17:56:52'),
(135, 'zh-cht', 'export', 'export', '匯出', 'admin', '2018-04-03 17:57:00', '2018-04-03 17:57:00'),
(138, 'zh-cht', 'send', 'send', '寄出', 'admin', '2018-04-03 17:57:46', '2018-04-03 17:57:46'),
(139, 'zh-cht', 'coderadminall', 'select all', '全選', 'admin', '2018-04-10 15:09:25', '2018-04-03 18:03:07'),
(140, 'zh-cht', 'coderadminone', 'project', '項目', 'admin', '2018-04-10 15:09:31', '2018-04-03 18:03:19'),
(143, 'zh-cht', 'coderfilterhelp1', 'Search criteria', '搜尋條件', 'admin', '2018-04-03 18:06:14', '2018-04-03 18:06:14'),
(145, 'zh-cht', 'coderfilterhelp2', 'please choose', '請選擇', 'admin', '2018-04-03 18:09:40', '2018-04-03 18:09:40'),
(148, 'zh-cht', 'coderfilterhelp3', 'Any', '不限', 'admin', '2018-04-03 18:10:34', '2018-04-03 18:10:34'),
(149, 'zh-cht', 'configmsg3', 'Super administrator', '超級管理員', 'admin', '2018-04-03 18:13:38', '2018-04-03 18:13:38'),
(151, 'zh-cht', 'help1', 'Super administrator has the highest privilege and can use all features', '超級管理員具有最高權限,可以使用所有功能', 'admin', '2018-04-03 18:20:50', '2018-04-03 18:20:50'),
(153, 'zh-cht', 'authrules1', 'Narrative', '敘述', 'admin', '2018-04-03 18:22:46', '2018-04-03 18:22:46'),
(155, 'zh-cht', 'authrules1_1', 'Please enter a description', '請輸入敘述', 'admin', '2018-04-03 18:23:27', '2018-04-03 18:23:27'),
(157, 'zh-cht', 'authrules2', 'Permission setting', '權限設定', 'admin', '2018-04-03 18:26:04', '2018-04-03 18:26:04'),
(159, 'zh-cht', 'authrules3', 'Number of members', '成員數量', 'admin', '2018-04-03 18:35:57', '2018-04-03 18:35:57'),
(161, 'zh-cht', 'adminlog1', 'Operation history record', '操作歷程記錄', 'admin', '2018-04-03 18:44:14', '2018-04-03 18:44:14'),
(163, 'zh-cht', 'adminlog2', 'The background user operates the record list. This area cannot add/modify/delete actions.', '後台使用者操作記錄列表,此區不能進行新增/修改/刪除的動作。', 'admin', '2018-04-03 18:45:09', '2018-04-03 18:45:09'),
(165, 'zh-cht', 'adminlog3', 'Operation record browsing', '操作記錄瀏覽', 'admin', '2018-04-03 18:45:58', '2018-04-03 18:45:58'),
(167, 'zh-cht', 'adminlog4', 'Login account', '登入帳號', 'admin', '2018-04-03 18:46:38', '2018-04-03 18:46:38'),
(169, 'zh-cht', 'adminlog5', 'Operation date', '操作日期', 'admin', '2018-04-03 18:47:30', '2018-04-03 18:47:30'),
(171, 'zh-cht', 'account', 'account', '帳號', 'admin', '2018-04-03 18:52:42', '2018-04-03 18:52:42'),
(173, 'zh-cht', 'adminlog6', 'Module', '模組', 'admin', '2018-04-03 18:53:11', '2018-04-03 18:53:11'),
(175, 'zh-cht', 'adminlog7', 'Information', '資訊', 'admin', '2018-04-03 18:53:57', '2018-04-03 18:53:57'),
(177, 'zh-cht', 'oops1', 'Back to login page', '回到登入頁', 'admin', '2018-04-09 10:50:02', '2018-04-09 10:50:02'),
(179, 'zh-cht', 'oops2', '← Back to previous page', '← 回到前一頁', 'admin', '2018-04-09 10:51:15', '2018-04-09 10:51:15'),
(181, 'zh-cht', 'loginpage1', 'Login overtime', '登入逾時', 'admin', '2018-04-09 11:20:19', '2018-04-09 11:20:19'),
(182, 'zh-cht', 'loginpage2', 'You have not logged in or exceeded your login period &lt;br&gt;&lt;br&gt; To ensure security, please click the link below to log in again.', '您尚未登入或超過登入期限&lt;br&gt;為了確保安全性&lt;br&gt;請按下方連結重新登入。', 'admin', '2018-04-09 11:21:17', '2018-04-09 11:21:17'),
(185, 'zh-cht', 'home1', 'Home information', '首頁資訊', 'LMF', '2018-05-08 17:14:08', '2018-04-09 12:36:10'),
(187, 'zh-cht', 'home2', 'Welcome to use this system', '歡迎使用本系統', 'admin', '2018-04-09 12:36:58', '2018-04-09 12:36:58'),
(190, 'zh-cht', 'home3', 'Your login time is', '您本次登入時間為', 'admin', '2018-04-09 12:38:25', '2018-04-09 12:38:25'),
(191, 'zh-cht', 'navbar1', 'Login time', '登入時間', 'admin', '2018-04-09 15:19:55', '2018-04-09 15:19:55'),
(193, 'zh-cht', 'navbar2', 'modify personal information', '修改個人資料', 'admin', '2018-04-09 15:21:12', '2018-04-09 15:21:12'),
(195, 'zh-cht', 'navbar3', 'Sign out', '登出', 'admin', '2018-04-09 15:22:01', '2018-04-09 15:22:01'),
(209, 'zh-cht', 'admin11', 'Repeat, please re-enter a group of accounts', '重覆,請重新輸入一組帳號', 'admin', '2018-04-11 13:04:26', '2018-04-11 13:04:26'),
(211, 'zh-cht', 'manage8', 'Last login IP', '最後登入IP', 'admin', '2018-04-11 15:22:02', '2018-04-11 15:22:02'),
(213, 'zh-cht', 'adminjs1', 'This account has been used. Please re-enter!', '此帳號己被使用,請重新輸入!', 'admin', '2018-04-11 15:51:47', '2018-04-11 15:51:47'),
(216, 'zh-cht', 'adminjs2', 'Please upload pictures!', '請上傳圖片!', 'admin', '2018-04-11 15:54:41', '2018-04-11 15:54:41'),
(218, 'zh-cht', 'admin12', 'Please enter the administrator account', '請輸入管理員帳號', 'admin', '2018-04-12 16:06:02', '2018-04-12 16:06:02'),
(219, 'zh-cht', 'adminhelp1', 'This account number is the login account of the system and cannot be duplicated.', '此帳密為登入系統之帳號,不能重覆。', 'admin', '2018-04-12 16:06:54', '2018-04-12 16:06:54'),
(221, 'zh-cht', 'admin13', 'password', '密碼', 'admin', '2018-04-12 16:07:28', '2018-04-12 16:07:28'),
(224, 'zh-cht', 'admin13_1', 'Please enter the administrator password', '請輸入管理員密碼', 'admin', '2018-04-12 16:08:07', '2018-04-12 16:08:07'),
(226, 'zh-cht', 'adminhelp2', 'Login system password.', '登入系統之密碼。', 'admin', '2018-04-12 16:09:03', '2018-04-12 16:09:03'),
(227, 'zh-cht', 'admin14', 'Password Confirmation', '密碼確認', 'admin', '2018-04-12 16:09:39', '2018-04-12 16:09:39'),
(230, 'zh-cht', 'admin14_1', 'Please re-enter the administrator password', '請重新輸入管理員密碼', 'admin', '2018-04-12 16:10:34', '2018-04-12 16:10:34'),
(232, 'zh-cht', 'adminhelp3', 'In order to confirm the correct password, you have to enter it again.', '為了確認密碼是否確,麻煩您再輸入一次。', 'admin', '2018-04-12 16:11:11', '2018-04-12 16:11:11'),
(234, 'zh-cht', 'admin15', 'first name', '名字', 'admin', '2018-04-12 16:11:56', '2018-04-12 16:11:56'),
(236, 'zh-cht', 'admin15_1', 'Please enter the name', '請輸入名字', 'admin', '2018-04-12 16:12:38', '2018-04-12 16:12:38'),
(238, 'zh-cht', 'admin16', 'Email', 'Email', 'admin', '2018-04-12 16:12:54', '2018-04-12 16:12:54'),
(240, 'zh-cht', 'admin16_1', 'Please enter email', '請輸入Email', 'admin', '2018-04-12 16:13:45', '2018-04-12 16:13:45'),
(242, 'zh-cht', 'admin17', 'Backup Email', '備用Email', 'admin', '2018-04-12 16:14:24', '2018-04-12 16:14:24'),
(244, 'zh-cht', 'admin17_1', 'Please enter Email', '請輸入Email', 'admin', '2018-04-12 16:15:12', '2018-04-12 16:15:12'),
(246, 'zh-cht', 'admin18', 'Authority', '權限', 'admin', '2018-04-12 16:22:59', '2018-04-12 16:22:59'),
(248, 'zh-cht', 'admin19', 'image', '圖片', 'admin', '2018-04-12 16:23:45', '2018-04-12 16:23:45'),
(250, 'zh-cht', 'admin20', 'personal information', '個人資料', 'admin', '2018-04-12 16:24:59', '2018-04-12 16:24:59'),
(252, 'zh-cht', 'admin20_1', 'Please enter personal information', '請輸入個人資料', 'admin', '2018-04-12 16:25:37', '2018-04-12 16:25:37'),
(254, 'zh-cht', 'admin21', 'Excel file', 'Excel檔案', 'admin', '2018-04-12 16:26:33', '2018-04-12 16:26:33'),
(256, 'zh-cht', 'admin22', 'Administrator account', '管理員帳號', 'admin', '2018-04-12 17:35:12', '2018-04-12 17:35:12'),
(272, 'zh-cht', 'langdata5', 'Country', '國別', 'admin', '2018-04-19 18:03:03', '2018-04-19 18:03:03'),
(274, 'zh-cht', 'langdata5_1', 'Please enter the country', '請輸入國別', 'admin', '2018-04-19 18:03:28', '2018-04-19 18:03:28'),
(276, 'zh-cht', 'langdata6', 'Abbreviation', '簡稱', 'admin', '2018-04-19 18:12:11', '2018-04-19 18:12:11'),
(278, 'zh-cht', 'langdata6_1', 'Please enter abbreviation', '請輸入簡稱', 'admin', '2018-04-19 18:12:46', '2018-04-19 18:12:46'),
(280, 'zh-cht', 'langdata7', 'area', '地區', 'admin', '2018-04-19 18:13:18', '2018-04-19 18:13:18'),
(281, 'zh-cht', 'langdata7_1', 'Please enter the region', '請輸入地區', 'admin', '2018-04-19 18:13:54', '2018-04-19 18:13:54'),
(284, 'zh-cht', 'langdata8', 'address', '地址', 'admin', '2018-04-19 18:14:32', '2018-04-19 18:14:32'),
(286, 'zh-cht', 'langdata8_1', 'Please enter the address', '請輸入地址', 'admin', '2018-04-19 18:14:58', '2018-04-19 18:14:58'),
(288, 'zh-cht', 'langdata9', 'phone', '電話', 'admin', '2018-04-19 18:15:23', '2018-04-19 18:15:23'),
(290, 'zh-cht', 'langdata9_1', 'Please enter the phone', '請輸入電話', 'admin', '2018-04-19 18:15:56', '2018-04-19 18:15:56'),
(292, 'zh-cht', 'langdata10', 'website', '網站', 'admin', '2018-04-19 18:16:20', '2018-04-19 18:16:20'),
(294, 'zh-cht', 'langdata10_1', 'Please enter the website', '請輸入網站', 'admin', '2018-04-19 18:16:45', '2018-04-19 18:16:45'),
(316, 'zh-cht', 'copytext', 'One copy is a copy', '※一列為拷貝一筆', 'admin', '2018-04-20 12:53:33', '2018-04-20 12:53:18'),
(390, 'zh-cht', 'code2', 'code', '碼', 'admin', '2018-04-23 14:20:37', '2018-04-23 14:20:37'),
(456, 'zh-cht', 'domsg1', 'please enter', '請輸入', 'admin', '2018-04-24 16:31:51', '2018-04-24 16:31:51'),
(476, 'zh-cht', 'Excel1', 'Not required', '(非必填)', 'admin', '2018-04-30 11:16:37', '2018-04-30 11:16:06'),
(478, 'zh-cht', 'Excel2', 'Excel import', 'Excel匯入', 'admin', '2018-04-30 11:31:18', '2018-04-30 11:31:18'),
(480, 'zh-cht', 'Excel3', 'OK to send', '確定送出', 'admin', '2018-04-30 11:31:48', '2018-04-30 11:31:48'),
(482, 'zh-cht', 'Excel4', 'Download the import sample file', '下載匯入範例檔', 'admin', '2018-04-30 11:32:26', '2018-04-30 11:32:26'),
(484, 'zh-cht', 'Excel5', 'Preview Excel content (Please confirm below that the imported data content is correct)', '預覽Excel內容(請在下方確認匯入的資料內容是否正確)', 'admin', '2018-04-30 11:33:31', '2018-04-30 11:33:31'),
(486, 'zh-cht', 'Excel6', 'Please upload file first', '請先上傳檔案', 'admin', '2018-04-30 11:34:02', '2018-04-30 11:34:02'),
(488, 'zh-cht', 'Excel7', 'Unsuccessful import', '未匯入成功', 'admin', '2018-04-30 11:34:30', '2018-04-30 11:34:30'),
(490, 'zh-cht', 'Excel8', 'Import completed', '匯入完成', 'admin', '2018-04-30 11:35:25', '2018-04-30 11:35:25'),
(492, 'zh-cht', 'Excel9', 'You have successfully imported', '您己成功匯入了', 'admin', '2018-04-30 11:36:00', '2018-04-30 11:36:00'),
(494, 'zh-cht', 'Excel10', 'Archives', '的檔案', 'admin', '2018-04-30 11:36:29', '2018-04-30 11:36:29'),
(496, 'zh-cht', 'Excel11', 'Failed to import', '匯入失敗', 'admin', '2018-04-30 11:36:58', '2018-04-30 11:36:58'),
(498, 'zh-cht', 'Excel12', 'modify', '修改', 'admin', '2018-04-30 11:37:24', '2018-04-30 11:37:24'),
(500, 'zh-cht', 'Excel14', 'Website page management', '網站頁面管理', 'admin', '2018-04-30 11:37:50', '2018-04-30 11:37:50'),
(502, 'zh-cht', 'Excel15', 'An error occurred in the system. Please contact your system administrator', '系統發生錯誤,請聯絡系統管理員', 'admin', '2018-04-30 11:38:23', '2018-04-30 11:38:23'),
(504, 'zh-cht', 'Excel16', 'New failed', '新增失敗', 'admin', '2018-04-30 11:52:45', '2018-04-30 11:52:45'),
(506, 'zh-cht', 'Excel17', 'The first', '第', 'admin', '2018-04-30 12:00:00', '2018-04-30 12:00:00'),
(508, 'zh-cht', 'Excel18', 'Columns', '列', 'admin', '2018-04-30 12:00:35', '2018-04-30 12:00:35'),
(510, 'zh-cht', 'Excel19', 'column', '欄', 'admin', '2018-04-30 12:01:05', '2018-04-30 12:01:05'),
(521, 'zh-cht', 'default', 'default', '預設', 'admin', '2018-05-07 18:03:21', '2018-05-07 18:03:21'),
(1058, 'zh-cht', 'copynum', 'Copy quantity', '拷貝數量', 'admin', '2018-05-15 17:58:52', '2018-05-15 17:58:52'),
(1060, 'zh-cht', 'copynum_1', 'Please enter the number of copies', '請輸入拷貝數量', 'admin', '2018-05-15 17:58:52', '2018-05-15 17:58:52'),
(1167, 'zh-cht', 'jquery1', 'Please enter the content.', '請輸入內容.', 'admin', '2018-06-01 18:12:06', '2018-06-01 18:12:06'),
(1169, 'zh-cht', 'jquery2', 'Please enter email format.', '請輸入Email格式.', 'admin', '2018-06-01 18:12:06', '2018-06-01 18:12:06'),
(1171, 'zh-cht', 'jquery3', 'Please enter Url format.', '請輸入Url格式.', 'admin', '2018-06-01 18:12:07', '2018-06-01 18:12:07'),
(1173, 'zh-cht', 'jquery4', 'Please enter the date format yyyy-mm-dd.', '請輸入日期格式yyyy-mm-dd.', 'admin', '2018-06-01 18:12:07', '2018-06-01 18:12:07'),
(1175, 'zh-cht', 'jquery5', 'Please enter the number.', '請輸入數字.', 'admin', '2018-06-01 18:12:07', '2018-06-01 18:12:07'),
(1177, 'zh-cht', 'configmsg4', 'You can click here to view', '您可以按這裡檢視', 'admin', '2018-06-01 18:12:07', '2018-06-01 18:12:07'),
(1179, 'zh-cht', 'configmsg5', 'data', '資料', 'admin', '2018-06-01 18:12:07', '2018-06-01 18:12:07'),
(1181, 'zh-cht', 'jquery6', 'Click on my upload file', '點我上傳檔案', 'admin', '2018-06-01 18:12:07', '2018-06-01 18:12:07'),
(1183, 'zh-cht', 'jquery7', 'Click me to remove the file', '點我移除檔案', 'admin', '2018-06-01 18:12:07', '2018-06-01 18:12:07'),
(1185, 'zh-cht', 'jquery8', 'Upload job completed', '上傳作業完成', 'admin', '2018-06-01 18:12:07', '2018-06-01 18:12:07'),
(1187, 'zh-cht', 'jquery9', 'You have successfully uploaded the file.', '您己成功上傳檔案。', 'admin', '2018-06-01 18:12:07', '2018-06-01 18:12:07'),
(1189, 'zh-cht', 'jquery10', 'Click me to browse the file', '點我瀏覽檔案', 'admin', '2018-06-01 18:12:07', '2018-06-01 18:12:07'),
(1270, 'zh-cht', 'admin8_1', 'Please enter a company', '請輸入公司別', 'admin', '2018-10-26 12:24:17', '2018-10-26 12:24:17'),
(1342, 'zh-cht', 'error1', 'Check no data', '查無資料', 'admin', '2018-10-26 12:24:17', '2018-10-26 12:24:17'),
(1350, 'zh-cht', 'coderadmin3', 'Products', '產品管理', 'admin', '2020-07-09 20:00:12', '2020-07-09 20:00:12'),
(1351, 'zh-cht', 'coderadmin3_class1', 'Product Classification L1', '產品分類大類', 'admin', '2020-07-09 20:05:03', '2020-07-09 20:01:13'),
(1352, 'zh-cht', 'coderadmin3_class2', 'Product Classification L2', '產品分類細項', 'admin', '2020-07-09 20:02:24', '2020-07-09 20:02:24'),
(1353, 'zh-cht', 'coderadmin3_list', 'Product List', '產品列表', 'admin', '2020-07-09 20:02:46', '2020-07-09 20:02:46'),
(1355, 'zh-cht', 'coderadmin3_class2', 'Product Classification L2', 'Product Sub Class', 'admin', '2020-07-09 20:02:24', '2020-07-09 20:02:24'),
(1358, 'jp', 'coderadmin3_list', 'Product List', '產品', 'admin', '2020-07-09 20:02:46', '2020-07-09 20:02:46'),
(1359, 'jp', 'coderadmin3_class2', 'Product Classification L2', ' サブ-カテゴリ一覧 ', 'admin', '2020-07-09 20:02:24', '2020-07-09 20:02:24'),
(1360, 'jp', 'coderadmin3_class1', 'Product Classification L1', ' カテゴリ一覧', 'admin', '2020-07-09 20:05:03', '2020-07-09 20:01:13'),
(1361, 'jp', 'coderadmin3', 'Products', '商品リスト', 'admin', '2020-07-09 20:00:12', '2020-07-09 20:00:12'),
(1362, 'zh-cht', 'coderadmin3_class', 'Product Classification ', '產品分類', 'admin', '2020-07-09 20:05:03', '2020-07-09 20:01:13'),
(1364, 'jp', 'coderadmin3_class', 'Product Classification ', '製品カテゴリ', 'admin', '2020-07-09 20:05:03', '2020-07-09 20:01:13'),
(1365, 'jp', 'coderadmin1_3', 'History record', '\r\n歴史記録', 'admin', '2018-04-03 15:51:35', '2018-04-03 15:51:35'),
(1366, 'jp', 'coderadmin1_2', 'authority management', '権限管理', 'admin', '2018-04-03 15:47:51', '2018-04-03 15:47:51'),
(1367, 'jp', 'coderadmin1_1', 'Member management', '会員管理', 'admin', '2018-04-03 15:46:47', '2018-04-03 15:46:47'),
(1368, 'jp', 'coderadmin1', 'system', 'システム', 'admin', '2018-04-03 15:45:25', '2018-04-03 15:45:25'),
(1369, 'jp', 'coderadmin2_2', 'Language dictionary list', '言語辞書のリスト', 'admin', '2018-04-03 15:54:23', '2018-04-03 15:54:23'),
(1370, 'jp', 'coderadmin2_1', 'Language List', '言語シリーズ', 'admin', '2018-04-03 15:54:00', '2018-04-03 15:54:00'),
(1371, 'jp', 'coderadmin2', 'Language family', '言語ファミリ', 'admin', '2018-04-03 15:52:43', '2018-04-03 15:52:43'),
(1372, 'jp', 'coderadmin_home', 'Home', 'Home', 'admin', '2018-04-03 16:07:49', '2018-04-03 16:07:49'),
(1373, 'jp', 'coderadminall', 'select all', 'すべて選択', 'admin', '2018-04-10 15:09:25', '2018-04-03 18:03:07'),
(1374, 'jp', 'coderadminone', 'item', 'アイテム', 'admin', '2018-04-10 15:09:31', '2018-04-03 18:03:19'),
(1375, 'zh-cht', 'coderadmin4', 'contact us', '聯絡我們', 'admin', '2020-07-09 21:16:35', '2020-07-09 21:16:35'),
(1376, 'zh-cht', 'coderadmin4_oemodm', 'OEM・ODM', 'OEM・ODM生產專用', 'admin', '2020-07-09 21:17:21', '2020-07-09 21:17:21'),
(1377, 'zh-cht', 'coderadmin4_product', 'contact us by product', '既有產品専用', 'admin', '2020-07-09 21:17:53', '2020-07-09 21:17:53'),
(1378, 'jp', 'coderadmin4_product', 'contact us by product', '既製品専用', 'admin', '2020-07-09 21:17:53', '2020-07-09 21:17:53'),
(1379, 'jp', 'coderadmin4_oemodm', 'OEM・ODM', 'OEM・ODM生産専用', 'admin', '2020-07-09 21:17:21', '2020-07-09 21:17:21'),
(1380, 'jp', 'coderadmin4', 'contact us', 'お問合わせ', 'admin', '2020-07-09 21:16:35', '2020-07-09 21:16:35'),
(1381, 'jp', 'Excel12', 'modify', '修正', 'admin', '2020-07-09 21:28:26', '2020-07-09 21:28:26'),
(1382, 'jp', 'navbar2', 'modify personal information', '個人情報を変更する', 'admin', '2020-07-09 21:28:26', '2020-07-09 21:28:26'),
(1383, 'jp', 'adminlog2', 'The background user operates the record list. This area cannot add/modify/delete actions.', 'バックグラウンドのユーザー操作レコードリスト。この領域では、アクションを追加、変更、削除できません。', 'admin', '2020-07-09 21:28:26', '2020-07-09 21:28:26'),
(1384, 'jp', 'filter1', 'Last modified date', '最終更新日', 'admin', '2020-07-10 13:21:06', '2020-07-10 13:21:06'),
(1385, 'jp', 'manage3', 'Last modified', '最終変更時間', 'admin', '2020-07-09 21:28:26', '2020-07-09 21:28:26'),
(1386, 'jp', 'configmsg1', 'You can view all data here, or add, modify, delete, etc.', 'ここですべてのデータを表示したり、追加、変更、削除などの操作を実行したりできます。', 'admin', '2020-07-09 21:28:26', '2020-07-09 21:28:26'),
(1387, 'jp', 'navbar3', 'Sign out', 'サインアウト', 'admin', '2020-07-09 21:30:50', '2020-07-09 21:30:50'),
(1388, 'jp', 'navbar1', 'Login time', 'ログイン時間', 'admin', '2020-07-09 21:30:50', '2020-07-09 21:30:50'),
(1389, 'jp', 'coderfilterhelp3', 'Any', '無制限', 'admin', '2020-07-10 13:21:05', '2020-07-10 13:21:05'),
(1390, 'jp', 'coderfilterhelp2', 'please choose', '選んでください', 'admin', '2020-07-10 13:21:06', '2020-07-10 13:21:06'),
(1391, 'jp', 'coderfilterhelp1', 'Search criteria', '搜尋條件', 'admin', '2020-07-10 13:21:06', '2020-07-10 13:21:06'),
(1392, 'jp', 'filter3', 'Keywords', '検索基準', 'admin', '2020-07-10 13:21:06', '2020-07-10 13:21:06'),
(1393, 'jp', 'filter2', 'Date of establishment', '作成日', 'admin', '2020-07-10 13:21:06', '2020-07-10 13:21:06'),
(1394, 'jp', 'coderlisthelp2', 'operating', 'オペレーティング', 'admin', '2020-07-10 13:21:06', '2020-07-10 13:21:06'),
(1395, 'jp', 'coderlisthelp1', 'Sorting', 'ソート', 'admin', '2020-07-10 13:21:06', '2020-07-10 13:21:06'),
(1396, 'jp', 'langdata1_1', 'Please enter country code', '言語コードを入力してください', 'admin', '2020-07-10 13:21:06', '2020-07-10 13:21:06'),
(1397, 'jp', 'langdata1', 'country code', '言語コード', 'admin', '2020-07-10 13:21:06', '2020-07-10 13:21:06'),
(1398, 'jp', 'langdictionaryjs1', 'This country code Key has been used, please re-enter!', 'この言語コードキーは使用されています。再入力してください！', 'admin', '2020-07-10 13:21:06', '2020-07-10 13:21:06'),
(1399, 'jp', 'langdatajs1', 'This country code has already been used. Please re-enter!', 'この言語コードは使用されています。再入力してください！', 'admin', '2020-07-10 13:21:06', '2020-07-10 13:21:06'),
(1400, 'jp', 'langdata10_1', 'Please enter the website', 'ウェブサイトを入力してください', 'admin', '2020-07-10 13:21:06', '2020-07-10 13:21:06'),
(1401, 'jp', 'langdata10', 'website', 'ウェブサイト', 'admin', '2020-07-10 13:21:06', '2020-07-10 13:21:06'),
(1402, 'jp', 'langdata9_1', 'Please enter the phone', '電話番号を入力してください', 'admin', '2020-07-10 13:21:06', '2020-07-10 13:21:06'),
(1403, 'jp', 'langdata9', 'phone', '電話', 'admin', '2020-07-10 13:21:06', '2020-07-10 13:21:06'),
(1404, 'jp', 'langdata8_1', 'Please enter the address', '住所を入力してください', 'admin', '2020-07-10 13:21:06', '2020-07-10 13:21:06'),
(1405, 'jp', 'langdata8', 'address', '住所', 'admin', '2020-07-10 13:21:06', '2020-07-10 13:21:06'),
(1406, 'jp', 'langdata7_1', 'Please enter the region', '地域を入力してください', 'admin', '2020-07-10 13:21:06', '2020-07-10 13:21:06'),
(1407, 'jp', 'langdata7', 'area', '範囲', 'admin', '2020-07-10 13:21:06', '2020-07-10 13:21:06'),
(1408, 'jp', 'langdata6_1', 'Please enter abbreviation', '略称を入力してください', 'admin', '2020-07-10 13:21:06', '2020-07-10 13:21:06'),
(1409, 'jp', 'langdata6', 'Abbreviation', '略語', 'admin', '2020-07-10 13:21:06', '2020-07-10 13:21:06'),
(1410, 'jp', 'langdata5_1', 'Please enter the country', '国を入力してください', 'admin', '2020-07-10 13:21:06', '2020-07-10 13:21:06'),
(1411, 'jp', 'langdata5', 'Country', '国', 'admin', '2020-07-10 13:21:06', '2020-07-10 13:21:06'),
(1412, 'jp', 'langdata2_1', 'Please enter a name', '名前を入力してください', 'admin', '2020-07-10 13:21:06', '2020-07-10 13:21:06'),
(1413, 'jp', 'langdata4_1', 'Please enter a note', '備考を入力してください', 'admin', '2020-07-10 13:21:06', '2020-07-10 13:21:06'),
(1414, 'jp', 'langdata4', 'Remark', '備考', 'admin', '2020-07-10 13:21:06', '2020-07-10 13:21:06'),
(1415, 'jp', 'langdata3', 'Language dictionary number', '言語辞書の数', 'admin', '2020-07-10 13:21:06', '2020-07-10 13:21:06'),
(1416, 'jp', 'langdata2', 'name', '名前', 'admin', '2020-07-10 13:21:06', '2020-07-10 13:21:06'),
(1417, 'jp', 'langdictionary1', 'English description', '英語の説明', 'admin', '2020-07-10 13:23:24', '2020-07-10 13:23:24'),
(1418, 'jp', 'langdictionary2', 'key', 'key', 'admin', '2020-07-10 13:23:24', '2020-07-10 13:23:24'),
(1419, 'jp', 'langdictionary3_1', 'Please enter a translation', '翻訳を入力してください', 'admin', '2020-07-10 13:23:24', '2020-07-10 13:23:24'),
(1420, 'jp', 'langdictionary1_1', 'Please enter the English description', '説明は英語で入力してください', 'admin', '2020-07-10 13:23:24', '2020-07-10 13:23:24'),
(1421, 'jp', 'langdictionary2_1', 'Please enter the key', 'キーを入力してください', 'admin', '2020-07-10 13:23:24', '2020-07-10 13:23:24'),
(1422, 'jp', 'langdictionary3', 'translation', '翻訳', 'admin', '2020-07-10 13:23:24', '2020-07-10 13:23:24'),
(1423, 'zh-cht', 'type', 'type', '類別', 'admin', '2020-07-20 15:15:07', '2020-07-20 15:15:07'),
(1424, 'jp', 'type', 'type', 'タイプ', 'admin', '2020-07-20 15:15:32', '2020-07-20 15:15:32'),
(1425, 'zh-cht', 'subtype', 'subtype', '子類別', 'admin', '2020-07-20 15:18:37', '2020-07-20 15:18:37'),
(1426, 'jp', 'subtype', 'subtype', 'サブタイプ', 'admin', '2020-07-20 15:18:56', '2020-07-20 15:18:56'),
(1427, 'zh-cht', 'public', 'public', '公開', 'admin', '2020-07-20 15:20:04', '2020-07-20 15:20:04'),
(1428, 'jp', 'public', 'public', '公衆', 'admin', '2020-07-20 15:20:16', '2020-07-20 15:20:16'),
(1429, 'zh-cht', 'Thumbnail', 'Thumbnail', '縮圖', 'admin', '2020-07-20 15:22:34', '2020-07-20 15:22:34'),
(1430, 'jp', 'Thumbnail', 'Thumbnail', 'サムネイル', 'admin', '2020-07-20 15:22:44', '2020-07-20 15:22:44'),
(1431, 'zh-cht', 'sno', 'sno', '料號', 'admin', '2020-07-20 15:24:16', '2020-07-20 15:24:16'),
(1432, 'jp', 'sno', 'sno', '部品番号', 'admin', '2020-07-20 15:24:27', '2020-07-20 15:24:27'),
(1433, 'zh-cht', 'tag', 'tag', '標籤', 'admin', '2020-07-20 15:25:24', '2020-07-20 15:25:24'),
(1434, 'jp', 'tag', 'tag', 'ラベル', 'admin', '2020-07-20 15:25:32', '2020-07-20 15:25:32'),
(1435, 'zh-cht', 'description', 'description', '產品描述', 'admin', '2020-07-20 15:31:36', '2020-07-20 15:31:36'),
(1436, 'jp', 'description', 'description', '解説', 'admin', '2020-07-20 15:31:45', '2020-07-20 15:31:45'),
(1437, 'zh-cht', 'indexPic', 'index image', '列表圖片', 'admin', '2020-07-20 15:33:22', '2020-07-20 15:33:22'),
(1438, 'jp', 'indexPic', 'index pic', 'リスト画像', 'admin', '2020-07-20 15:33:35', '2020-07-20 15:33:35'),
(1439, 'zh-cht', 'size', 'size', '尺寸', 'admin', '2020-07-20 15:34:24', '2020-07-20 15:34:24'),
(1440, 'jp', 'size', 'size', 'サイズ', 'admin', '2020-07-20 15:34:36', '2020-07-20 15:34:36'),
(1441, 'zh-cht', 'material', 'material', '材質', 'admin', '2020-07-20 15:36:01', '2020-07-20 15:35:47'),
(1442, 'jp', 'material', 'material', '素材', 'admin', '2020-07-20 15:36:13', '2020-07-20 15:36:13'),
(1443, 'zh-cht', 'heavy', 'heavy', '耐重', 'admin', '2020-07-20 15:38:31', '2020-07-20 15:38:31'),
(1444, 'jp', 'heavy', 'heavy', '最大重量', 'admin', '2020-07-20 15:38:40', '2020-07-20 15:38:40'),
(1445, 'zh-cht', 'color', 'color', '顏色', 'admin', '2020-07-20 15:39:19', '2020-07-20 15:39:19'),
(1446, 'jp', 'color', 'color', '色', 'admin', '2020-07-20 15:39:27', '2020-07-20 15:39:27'),
(1447, 'zh-cht', 'capacity', 'capacity', '容量', 'admin', '2020-07-20 15:40:11', '2020-07-20 15:40:11'),
(1448, 'jp', 'capacity', 'capacity', '容量', 'admin', '2020-07-20 15:40:20', '2020-07-20 15:40:20'),
(1449, 'zh-cht', 'comment', 'comment', '備考', 'admin', '2020-07-20 15:43:06', '2020-07-20 15:43:06'),
(1450, 'jp', 'comment', 'comment', '備考', 'admin', '2020-07-20 15:43:14', '2020-07-20 15:43:14'),
(1451, 'zh-cht', 'status', 'status', '商品狀態', 'admin', '2020-07-20 15:44:05', '2020-07-20 15:44:05'),
(1452, 'jp', 'status', 'status', '製品状態', 'admin', '2020-07-20 15:44:37', '2020-07-20 15:44:37'),
(1453, 'zh-cht', 'link', 'link', '購買連結', 'admin', '2020-07-20 15:45:19', '2020-07-20 15:45:19'),
(1454, 'jp', 'link', 'link', 'リンク', 'admin', '2020-07-20 15:45:27', '2020-07-20 15:45:27'),
(1455, 'zh-cht', 'pic', 'pic', '介紹圖', 'admin', '2020-07-20 15:52:45', '2020-07-20 15:52:45'),
(1456, 'jp', 'pic', 'pic', '紹介画像', 'admin', '2020-07-20 15:52:55', '2020-07-20 15:52:55'),
(1457, 'zh-cht', 'productIndroduction', 'productIndroduction', '產品介紹', 'admin', '2020-07-20 15:55:32', '2020-07-20 15:55:32'),
(1458, 'jp', 'productIndroduction', 'productIndroduction', '製品導入', 'admin', '2020-07-20 15:55:45', '2020-07-20 15:55:45'),
(1459, 'zh-cht', 'productContent', 'product content', '商品情報', 'admin', '2020-07-20 16:04:32', '2020-07-20 16:04:32'),
(1460, 'jp', 'productContent', 'product content', '製品情報', 'admin', '2020-07-20 16:04:56', '2020-07-20 16:04:56'),
(1461, 'zh-cht', 'pics', 'pics', '產品圖片', 'admin', '2020-07-20 16:05:56', '2020-07-20 16:05:56'),
(1462, 'jp', 'pics', 'pics', '製品画像', 'admin', '2020-07-20 16:06:10', '2020-07-20 16:06:10'),
(1463, 'zh-cht', 'sizePic', 'size pic', '產品尺寸圖', 'admin', '2020-07-20 16:06:57', '2020-07-20 16:06:57'),
(1464, 'jp', 'sizePic', 'size pic', '外形寸法', 'admin', '2020-07-20 16:07:08', '2020-07-20 16:07:08'),
(1465, 'jp', 'error1', 'Check no data', '情報が見つかりません', 'admin', '2020-07-20 16:17:14', '2020-07-20 16:17:14'),
(1466, 'jp', 'manage4', 'System Information', 'システムインフォメーション', 'admin', '2020-07-20 16:19:22', '2020-07-20 16:19:22'),
(1467, 'zh-cht', 'file', 'file', '檔案', 'admin', '2020-07-20 16:20:49', '2020-07-20 16:20:49'),
(1468, 'jp', 'file', 'file', 'ファイル', 'admin', '2020-07-20 16:20:58', '2020-07-20 16:20:58'),
(1469, 'jp', 'manage5', 'complete', '実施する', 'admin', '2020-07-20 16:28:21', '2020-07-20 16:28:21'),
(1470, 'jp', 'manage6', 'click for cancel', 'キャンセルを確認', 'admin', '2020-07-20 16:29:40', '2020-07-20 16:29:40'),
(1471, 'zh-cht', 'quantityOfSubtype', 'quantity of subtype', '子分類數量', 'admin', '2020-07-20 16:54:36', '2020-07-20 16:54:36'),
(1472, 'jp', 'quantityOfSubtype', 'quantity of subtype', 'サブタイプの数量', 'admin', '2020-07-20 16:54:50', '2020-07-20 16:54:50'),
(1473, 'zh-cht', 'quantityOfProduct', 'quantity of product', '產品數量', 'admin', '2020-07-20 16:55:28', '2020-07-20 16:55:28'),
(1474, 'jp', 'quantityOfProduct', 'quantity of product', '製品の数量', 'admin', '2020-07-20 16:55:43', '2020-07-20 16:55:43'),
(1475, 'zh-cht', 'company', 'company', '公司', 'admin', '2020-07-20 17:29:29', '2020-07-20 17:29:29'),
(1476, 'jp', 'company', 'company', '会社', 'admin', '2020-07-20 17:29:40', '2020-07-20 17:29:40'),
(1477, 'zh-cht', 'productName', 'product name', '商品名稱', 'admin', '2020-07-20 17:32:07', '2020-07-20 17:32:07'),
(1478, 'jp', 'product name', 'product name', '商品名', 'admin', '2020-07-20 17:32:18', '2020-07-20 17:32:18'),
(1479, 'zh-cht', 'content', 'content', '內容', 'admin', '2020-07-20 17:32:59', '2020-07-20 17:32:59'),
(1480, 'jp', 'content', 'content', 'コンテンツ', 'admin', '2020-07-20 17:33:11', '2020-07-20 17:33:11'),
(1481, 'zh-cht', 'reply', 'reply', '回覆狀態', 'admin', '2020-07-20 17:34:47', '2020-07-20 17:34:47'),
(1482, 'jp', 'reply', 'reply', '応答', 'admin', '2020-07-20 17:35:00', '2020-07-20 17:35:00'),
(1483, 'zh-cht', 'notice', 'notice', '回覆內容', 'admin', '2020-07-20 17:35:47', '2020-07-20 17:35:47'),
(1484, 'jp', 'notice', 'notice', '返信コンテンツ', 'admin', '2020-07-20 17:36:03', '2020-07-20 17:36:03'),
(1485, 'zh-cht', 'home', 'home', '首頁', 'admin', '2020-07-23 17:12:49', '2020-07-23 11:41:46'),
(1486, 'en', 'home', 'home', 'home', 'admin', '2020-07-23 11:42:00', '2020-07-23 11:42:00'),
(1487, 'jp', 'home', 'home', 'ホーム', 'admin', '2020-07-23 11:42:11', '2020-07-23 11:42:11'),
(1488, 'zh-cht', 'menu_name', 'menu_name', 'ODM/OEM製造　日本林製作所', 'admin', '2020-07-29 10:25:49', '2020-07-29 10:10:15'),
(1489, 'zh-cht', 'menu_home', 'menu_home', '首頁', 'admin', '2020-07-29 10:12:52', '2020-07-29 10:12:52'),
(1490, 'zh-cht', 'menu_odmoem', 'menu_odmoem', '產品開發', 'admin', '2020-07-29 10:15:32', '2020-07-29 10:15:32'),
(1491, 'zh-cht', 'menu_products', 'menu_products', '商品一覽', 'admin', '2020-07-29 10:15:32', '2020-07-29 10:15:32'),
(1492, 'zh-cht', 'menu_intro', 'menu_intro', '企業介紹', 'admin', '2020-07-29 10:15:32', '2020-07-29 10:15:32'),
(1493, 'zh-cht', 'menu_csr', 'menu_csr', '社會責任', 'admin', '2020-07-29 10:15:32', '2020-07-29 10:15:32'),
(1494, 'zh-cht', 'menu_company', 'menu_company', '公司概要', 'admin', '2020-07-29 10:15:32', '2020-07-29 10:15:32'),
(1495, 'zh-cht', 'menu_contact', 'menu_contact', '聯絡我們', 'admin', '2020-07-29 10:15:32', '2020-07-29 10:15:32'),
(1496, 'zh-cht', 'menu_contact_customize', 'menu_contact_customize', 'OEM・ODM生產專用', 'admin', '2020-07-29 10:15:32', '2020-07-29 10:15:32'),
(1497, 'zh-cht', 'menu_contact_rmade', 'menu_contact_rmade', '既有產品專用', 'admin', '2020-07-29 10:15:32', '2020-07-29 10:15:32'),
(1498, 'zh-cht', 'menu_ec', 'menu_ec', '線上商店', 'admin', '2020-07-29 10:15:32', '2020-07-29 10:15:32'),
(1499, 'zh-cht', 'menu_ec_jp', 'menu_ec_jp', '日本樂天', 'admin', '2020-07-29 10:15:32', '2020-07-29 10:15:32'),
(1500, 'zh-cht', 'menu_ec_tw', 'menu_ec_tw', '台灣商城', 'admin', '2020-07-29 10:15:32', '2020-07-29 10:15:32'),
(1501, 'zh-cht', 'menu_txt_taipei', 'menu_txt_taipei', '台北分店', 'admin', '2020-07-29 10:15:32', '2020-07-29 10:15:32'),
(1502, 'zh-cht', 'menu_txt_search', 'menu_txt_search', '商品搜尋', 'admin', '2020-07-29 10:15:32', '2020-07-29 10:15:32'),
(1503, 'zh-cht', 'menu_lang_en', 'menu_lang_en', 'English', 'admin', '2020-07-29 10:15:32', '2020-07-29 10:15:32'),
(1504, 'zh-cht', 'menu_lang_jp', 'menu_lang_jp', '日本語', 'admin', '2020-07-29 10:15:32', '2020-07-29 10:15:32'),
(1505, 'zh-cht', 'menu_lang_tw', 'menu_lang_tw', '繁中', 'admin', '2020-07-29 10:15:32', '2020-07-29 10:15:32'),
(1506, 'zh-cht', 'web_title', 'web_title', '林製作所', 'admin', '2020-07-29 10:15:32', '2020-07-29 10:15:32'),
(1507, 'zh-cht', 'web_product_tag1', 'web_product_tag1', '新上市', 'admin', '2020-07-29 10:15:32', '2020-07-29 10:15:32'),
(1508, 'zh-cht', 'web_product_tag2', 'web_product_tag2', '販售中', 'admin', '2020-07-29 10:15:32', '2020-07-29 10:15:32'),
(1509, 'zh-cht', 'web_product_tag3', 'web_product_tag3', '下訂生產', 'admin', '2020-07-29 10:15:32', '2020-07-29 10:15:32'),
(1510, 'zh-cht', 'web_product_tag4', 'web_product_tag4', '生產結束', 'admin', '2020-07-29 10:15:32', '2020-07-29 10:15:32'),
(1511, 'zh-cht', 'web_txt_shopping', 'web_txt_shopping', '購買', 'admin', '2020-07-29 10:15:32', '2020-07-29 10:15:32'),
(1512, 'zh-cht', 'web_txt_download_pdf', 'web_txt_download_pdf', '組裝說明書PDF下載', 'admin', '2020-07-29 10:15:32', '2020-07-29 10:15:32'),
(1513, 'zh-cht', 'web_txt_contactus', 'web_txt_contactus', '聯絡我們', 'admin', '2020-07-29 10:15:32', '2020-07-29 10:15:32'),
(1514, 'zh-cht', 'web_product_spec_size', 'web_product_spec_size', '尺寸', 'admin', '2020-07-29 10:15:32', '2020-07-29 10:15:32'),
(1515, 'zh-cht', 'web_product_spec_size_pic', 'web_product_spec_size_pic', '尺寸圖', 'admin', '2020-07-29 10:15:32', '2020-07-29 10:15:32'),
(1516, 'zh-cht', 'web_product_spec_material', 'web_product_spec_material', '主要材質', 'admin', '2020-07-29 10:15:32', '2020-07-29 10:15:32'),
(1517, 'zh-cht', 'web_product_spec_weight', 'web_product_spec_weight', '耐重', 'admin', '2020-07-29 10:15:32', '2020-07-29 10:15:32'),
(1518, 'zh-cht', 'web_product_spec_color', 'web_product_spec_color', '色', 'admin', '2020-07-29 10:15:32', '2020-07-29 10:15:32'),
(1519, 'zh-cht', 'web_product_spec_capacity', 'web_product_spec_capacity', '容量', 'admin', '2020-07-29 10:15:32', '2020-07-29 10:15:32'),
(1520, 'zh-cht', 'web_product_spec_note', 'web_product_spec_note', '備考', 'admin', '2020-07-29 10:15:32', '2020-07-29 10:15:32'),
(1521, 'zh-cht', 'web_product_spec_status', 'web_product_spec_status', '商品狀態', 'admin', '2020-07-29 10:15:32', '2020-07-29 10:15:32'),
(1522, 'zh-cht', 'web_product_spec_introduct', 'web_product_spec_introduct', '商品介紹', 'admin', '2020-07-29 10:15:32', '2020-07-29 10:15:32'),
(1523, 'zh-cht', 'web_product_spec_info', 'web_product_spec_info', '商品情報', 'admin', '2020-07-29 10:15:32', '2020-07-29 10:15:32'),
(1524, 'zh-cht', 'web_product_spec_relate', 'web_product_spec_relate', '相關商品', 'admin', '2020-07-29 10:15:32', '2020-07-29 10:15:32'),
(1525, 'zh-cht', 'web_product_odm_t1', 'web_product_odm_t1', 'ODM・OEM\n&\nCONTRACT MANUFACTURING SERVICES', 'admin', '2020-07-29 10:15:32', '2020-07-29 10:15:32'),
(1526, 'zh-cht', 'web_product_odm_t2', 'web_product_odm_t2', '從無到有的商品發想\n天馬行空的創意無限\n為您實現夢想中的商品', 'admin', '2020-07-29 10:15:32', '2020-07-29 10:15:32'),
(1527, 'zh-cht', 'web_txt_contact_now', 'web_txt_contact_now', '立即洽詢', 'admin', '2020-07-29 10:15:32', '2020-07-29 10:15:32'),
(1528, 'zh-cht', 'web_txt_contact_w_odm', 'web_txt_contact_w_odm', 'ODM/OEM是什麼？', 'admin', '2020-07-29 10:15:32', '2020-07-29 10:15:32'),
(1529, 'zh-cht', 'web_txt_contact_t1', 'web_txt_contact_t1', '歡迎使用以下表格進行既有產品的報價詢問', 'admin', '2020-07-29 10:15:32', '2020-07-29 10:15:32'),
(1530, 'zh-cht', 'web_txt_contact_t2', 'web_txt_contact_t2', '若寄信時間為平日的早上9:00~下午17:00，一般於當日便會進行回覆。 在此時間外寄信的話，也會盡量於24小時內回覆。 (上述的狀況不包含星期六日以及國定假日)', 'admin', '2020-07-29 10:15:32', '2020-07-29 10:15:32'),
(1531, 'zh-cht', 'web_txt_contact_t3', 'web_txt_contact_t3', '請填寫好內容後按下『確認發送』按鈕', 'admin', '2020-07-29 10:15:32', '2020-07-29 10:15:32'),
(1532, 'zh-cht', 'web_txt_contact_t4', 'web_txt_contact_t4', '＊為必填項目。', 'admin', '2020-07-29 10:15:32', '2020-07-29 10:15:32'),
(1533, 'zh-cht', 'web_txt_contact_name', 'web_txt_contact_name', '姓名', 'admin', '2020-07-29 10:15:32', '2020-07-29 10:15:32'),
(1534, 'zh-cht', 'web_txt_contact_company', 'web_txt_contact_company', '公司', 'admin', '2020-07-29 10:15:32', '2020-07-29 10:15:32'),
(1535, 'zh-cht', 'web_txt_contact_address', 'web_txt_contact_address', '地址', 'admin', '2020-07-29 10:15:32', '2020-07-29 10:15:32'),
(1536, 'zh-cht', 'web_txt_contact_phone', 'web_txt_contact_phone', '電話號碼', 'admin', '2020-07-29 10:15:32', '2020-07-29 10:15:32'),
(1537, 'zh-cht', 'web_txt_contact_email', 'web_txt_contact_email', 'E-mail', 'admin', '2020-07-29 10:15:32', '2020-07-29 10:15:32'),
(1538, 'zh-cht', 'web_txt_contact_email_r', 'web_txt_contact_email_r', '(再次輸入)', 'admin', '2020-07-29 10:15:32', '2020-07-29 10:15:32'),
(1539, 'zh-cht', 'web_txt_contact_product', 'web_txt_contact_product', '品號/品名', 'admin', '2020-07-29 10:15:32', '2020-07-29 10:15:32'),
(1540, 'zh-cht', 'web_txt_contact_note', 'web_txt_contact_note', '内容（希望商品・數量・出貨地址等資料）', 'admin', '2020-07-29 10:15:32', '2020-07-29 10:15:32'),
(1541, 'zh-cht', 'web_txt_contact_submit', 'web_txt_contact_submit', '確認發送', 'admin', '2020-07-29 10:15:32', '2020-07-29 10:15:32'),
(1542, 'zh-cht', 'web_txt_contact_tel', 'web_txt_contact_tel', '聯絡電話', 'admin', '2020-07-29 10:15:32', '2020-07-29 10:15:32'),
(1543, 'zh-cht', 'web_txt_contact_tel_jp', 'web_txt_contact_tel_jp', '+81-72-960-0500(日本)', 'admin', '2020-07-29 10:15:32', '2020-07-29 10:15:32'),
(1544, 'zh-cht', 'web_txt_contact_tel_tw', 'web_txt_contact_tel_tw', '02-2521-2285（台灣分店）', 'admin', '2020-07-29 10:15:32', '2020-07-29 10:15:32'),
(1545, 'zh-cht', 'web_txt_contact_tel_note', 'web_txt_contact_tel_note', '（9:00～17:00｜不包含星期六日以及國定假日）', 'admin', '2020-07-29 10:15:32', '2020-07-29 10:15:32'),
(1546, 'zh-cht', 'web_txt_contact_subject_odm', 'web_txt_contact_subject_odm', '信件通知標題_odm', 'admin', '2020-07-29 10:15:32', '2020-07-29 10:15:32'),
(1547, 'zh-cht', 'web_txt_contact_subject_customize', 'web_txt_contact_subject_customize', '信件通知標題_客製', 'admin', '2020-07-29 10:15:32', '2020-07-29 10:15:32');

-- --------------------------------------------------------

--
-- 資料表結構 `products`
--

DROP TABLE IF EXISTS `products`;
CREATE TABLE IF NOT EXISTS `products` (
  `product_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_ind` int(11) NOT NULL,
  `ps_id` int(11) NOT NULL COMMENT 'fk product subtype id',
  `pt_id` int(11) NOT NULL COMMENT 'fk product type id',
  `product_tag` int(11) NOT NULL COMMENT '產品標籤 0=無  1=新上市  2=販售中  3=下訂生產  4=生產結束',
  `product_sno` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT '產品料號',
  `product_name_jp` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT '產品名稱(日)',
  `product_name_en` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT '產品名稱(英)',
  `product_name_tw` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT '產品名稱(中)',
  `product_description_jp` varchar(150) COLLATE utf8_unicode_ci NOT NULL COMMENT '產品描述(日)',
  `product_description_en` varchar(150) COLLATE utf8_unicode_ci NOT NULL COMMENT '產品描述(英)',
  `product_description_tw` varchar(150) COLLATE utf8_unicode_ci NOT NULL COMMENT '產品描述(中)',
  `product_pics` varchar(200) COLLATE utf8_unicode_ci NOT NULL COMMENT '產品圖片',
  `product_pic` varchar(200) COLLATE utf8_unicode_ci NOT NULL COMMENT '列表圖片',
  `product_size_jp` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT '尺寸(日)',
  `product_size_en` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT '尺寸(英)',
  `product_size_tw` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT '尺寸(中)',
  `product_material_jp` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT '材質(日)',
  `product_material_en` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT '材質(英)',
  `product_material_tw` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT '材質(中)',
  `product_heavy_jp` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT '重量(日)',
  `product_heavy_en` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT '重量(英)',
  `product_heavy_tw` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT '重量(中)',
  `product_color_jp` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT '顏色(日)',
  `product_color_en` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT '顏色(英)',
  `product_color_tw` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT '顏色(中)',
  `product_capacity_jp` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT '容量(日)',
  `product_capacity_en` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT '容量(英)',
  `product_capacity_tw` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT '容量(中)',
  `product_comment_jp` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT '備考(日)',
  `product_comment_en` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT '備考(英)',
  `product_comment_tw` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT '備考(中)',
  `product_status_jp` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT '商品狀態(日)',
  `product_status_en` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT '商品狀態(英)',
  `product_status_tw` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT '商品狀態(中)',
  `product_link` varchar(500) COLLATE utf8_unicode_ci NOT NULL COMMENT '購買連結',
  `product_file` varchar(150) COLLATE utf8_unicode_ci NOT NULL COMMENT '使用說明書檔名',
  `product_content_pic1` varchar(30) COLLATE utf8_unicode_ci NOT NULL COMMENT '產品介紹圖1',
  `product_content_pic2` varchar(30) COLLATE utf8_unicode_ci NOT NULL COMMENT '產品介紹圖2',
  `product_content_pic3` varchar(30) COLLATE utf8_unicode_ci NOT NULL COMMENT '產品介紹圖3',
  `product_content_pic4` varchar(30) COLLATE utf8_unicode_ci NOT NULL COMMENT '產品介紹圖4',
  `product_content_text1_jp` varchar(200) COLLATE utf8_unicode_ci NOT NULL COMMENT '產品介紹1(日)',
  `product_content_text2_jp` varchar(200) COLLATE utf8_unicode_ci NOT NULL COMMENT '產品介紹2(日)',
  `product_content_text3_jp` varchar(200) COLLATE utf8_unicode_ci NOT NULL COMMENT '產品介紹3(日)',
  `product_content_text4_jp` varchar(200) COLLATE utf8_unicode_ci NOT NULL COMMENT '產品介紹4(日)',
  `product_content_text1_en` varchar(200) COLLATE utf8_unicode_ci NOT NULL COMMENT '產品介紹1(英)',
  `product_content_text2_en` varchar(200) COLLATE utf8_unicode_ci NOT NULL COMMENT '產品介紹2(英)',
  `product_content_text3_en` varchar(200) COLLATE utf8_unicode_ci NOT NULL COMMENT '產品介紹3(英)',
  `product_content_text4_en` varchar(200) COLLATE utf8_unicode_ci NOT NULL COMMENT '產品介紹4(英)',
  `product_content_text1_tw` varchar(200) COLLATE utf8_unicode_ci NOT NULL COMMENT '產品介紹1(中)',
  `product_content_text2_tw` varchar(200) COLLATE utf8_unicode_ci NOT NULL COMMENT '產品介紹2(中)',
  `product_content_text3_tw` varchar(200) COLLATE utf8_unicode_ci NOT NULL COMMENT '產品介紹3(中)',
  `product_content_text4_tw` varchar(200) COLLATE utf8_unicode_ci NOT NULL COMMENT '產品介紹4(中)',
  `product_size_pic` text COLLATE utf8_unicode_ci NOT NULL COMMENT '產品尺寸圖',
  `product_content_jp` longtext COLLATE utf8_unicode_ci NOT NULL COMMENT '產品說明(日)',
  `product_content_en` longtext COLLATE utf8_unicode_ci NOT NULL COMMENT '產品說明(日)',
  `product_content_tw` longtext COLLATE utf8_unicode_ci NOT NULL COMMENT '產品說明(日)',
  `product_is_show` int(11) NOT NULL COMMENT '是否顯示 1=是,0=否',
  `product_create_time` datetime NOT NULL,
  `product_update_time` datetime NOT NULL,
  `product_admin` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`product_id`),
  KEY `ps_id` (`ps_id`),
  KEY `pt_id` (`pt_id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 資料表的匯出資料 `products`
--

INSERT INTO `products` (`product_id`, `product_ind`, `ps_id`, `pt_id`, `product_tag`, `product_sno`, `product_name_jp`, `product_name_en`, `product_name_tw`, `product_description_jp`, `product_description_en`, `product_description_tw`, `product_pics`, `product_pic`, `product_size_jp`, `product_size_en`, `product_size_tw`, `product_material_jp`, `product_material_en`, `product_material_tw`, `product_heavy_jp`, `product_heavy_en`, `product_heavy_tw`, `product_color_jp`, `product_color_en`, `product_color_tw`, `product_capacity_jp`, `product_capacity_en`, `product_capacity_tw`, `product_comment_jp`, `product_comment_en`, `product_comment_tw`, `product_status_jp`, `product_status_en`, `product_status_tw`, `product_link`, `product_file`, `product_content_pic1`, `product_content_pic2`, `product_content_pic3`, `product_content_pic4`, `product_content_text1_jp`, `product_content_text2_jp`, `product_content_text3_jp`, `product_content_text4_jp`, `product_content_text1_en`, `product_content_text2_en`, `product_content_text3_en`, `product_content_text4_en`, `product_content_text1_tw`, `product_content_text2_tw`, `product_content_text3_tw`, `product_content_text4_tw`, `product_size_pic`, `product_content_jp`, `product_content_en`, `product_content_tw`, `product_is_show`, `product_create_time`, `product_update_time`, `product_admin`) VALUES
(1, 0, 1, 2, 2, '料號', 'name jp', 'name en', 'name tw', '3', '1', '2', '[{\"product_pics_pic\":\"1595220013sWtZ48.jpg\"},{\"product_pics_pic\":\"1595220017S4qjen.jpg\"}]', '1595388084jTdHJK.png', '6', '4', '5', '9', '7', '8', '12', '10', '11', '15', '13', '14', '18', '16', '17', '21', '19', '20', '24', '22', '23', '25', '1595214263.sql', '1594972409sUZ3qj.jpg', '15949724194gAsTi.png', '1594972414QZYuRi.jpg', '1594972424yNmYzS.png', '13', '33', '23', '43', '12', '32', '22', '42', '1', '1', '1', '1', '[{\"product_size_pic_pic\":\"1595214776qV47D8.jpg\"},{\"product_size_pic_pic\":\"1595214781UBkcBr.jpg\"}]', 'zz', 'qq', 'aa', 1, '0000-00-00 00:00:00', '2020-07-22 11:21:28', 'admin'),
(2, 1, 7, 1, 1, 'dddd', '製品2', '產品2', 'product2', 'dj', 'de', 'dc', '[{\"product_pics_pic\":\"1595215825XgMYVf.png\"}]', '1595387153HpQwFR.gif', '33', '11', '22', 'ee', 'qq', 'ww', 'dd', 'aa', 'ss', 'zx', 'qw', 'as', 'tt', 'ee', 'rr', 'kk', 'hh', 'jj', 'asd', 'qwe', 'rty', 'fgh', '1595215832.sql', '1594975766pGtYqm.png', '15949757823ZrQFu.jpg', '15949757764SwTm9.png', '1594975788A2bCqw.jpg', '3', '3', '3', '3', '2', '2', '2', '2', '介紹1', '介紹2', '介紹3', '介紹4', '[{\"product_size_pic_pic\":\"1595215829NrEmIi.png\"}]', 'qwe', 'qwe', 'qwe', 1, '2020-07-17 16:50:14', '2020-07-22 11:06:02', 'admin'),
(3, 2, 7, 1, 1, 'dddd', '製品2', '產品2', '發售中', 'dj', 'de', 'dc', '[{\"product_pics_pic\":\"1595215825XgMYVf.png\"}]', '1595387153HpQwFR.gif', '33', '11', '22', 'ee', 'qq', 'ww', 'dd', 'aa', 'ss', 'zx', 'qw', 'as', 'tt', 'ee', 'rr', 'kk', 'hh', 'jj', 'asd', 'qwe', 'rty', 'fgh', '1595215832.sql', '1594975766pGtYqm.png', '15949757823ZrQFu.jpg', '15949757764SwTm9.png', '1594975788A2bCqw.jpg', '3', '3', '3', '3', '2', '2', '2', '2', '', '', '', '', '[{\"product_size_pic_pic\":\"1595215829NrEmIi.png\"}]', 'qwe', 'qwe', 'qwe', 1, '2020-07-17 16:50:14', '2020-07-22 11:06:02', 'admin'),
(4, 3, 7, 1, 3, 'dddd', '製品2', '產品2', '製作中', 'dj', 'de', 'dc', '[{\"product_pics_pic\":\"1595215825XgMYVf.png\"}]', '1595387153HpQwFR.gif', '33', '11', '22', 'ee', 'qq', 'ww', 'dd', 'aa', 'ss', 'zx', 'qw', 'as', 'tt', 'ee', 'rr', 'kk', 'hh', 'jj', 'asd', 'qwe', 'rty', 'fgh', '1595215832.sql', '1594975766pGtYqm.png', '15949757823ZrQFu.jpg', '15949757764SwTm9.png', '1594975788A2bCqw.jpg', '3', '3', '3', '3', '2', '2', '2', '2', '', '', '', '', '[{\"product_size_pic_pic\":\"1595215829NrEmIi.png\"}]', 'qwe', 'qwe', 'qwe', 1, '2020-07-17 16:50:14', '2020-07-22 11:06:02', 'admin'),
(5, 4, 7, 1, 4, 'dddd', '製品2', '產品2', '結束', 'dj', 'de', 'dc', '[{\"product_pics_pic\":\"1595215825XgMYVf.png\"}]', '1595387153HpQwFR.gif', '33', '11', '22', 'ee', 'qq', 'ww', 'dd', 'aa', 'ss', 'zx', 'qw', 'as', 'tt', 'ee', 'rr', 'kk', 'hh', 'jj', 'asd', 'qwe', 'rty', 'fgh', '1595215832.sql', '1594975766pGtYqm.png', '15949757823ZrQFu.jpg', '15949757764SwTm9.png', '1594975788A2bCqw.jpg', '3', '3', '3', '3', '2', '2', '2', '2', '', '', '', '', '[{\"product_size_pic_pic\":\"1595215829NrEmIi.png\"}]', 'qwe', 'qwe', 'qwe', 1, '2020-07-17 16:50:14', '2020-07-22 11:06:02', 'admin'),
(6, 9, 15, 5, 1, 'YSK-016', '推車, 銀色jp', '推車, 銀色en', '推車, 銀色', '文件推車en文件推車en文件推車jp', '文件推車en文件推車en文件推車en', '文件推車文件推車文件推車', '[{\"product_pics_pic\":\"1595559250L4FRvz.jpg\"},{\"product_pics_pic\":\"1595559256JAjUhS.jpg\"}]', '1595558734bepP6N.jpg', '長度:	40,5 公分 寬度:	32 公分 高度:	74,5 公分', '長度:	40,5 公分 寬度:	32 公分 高度:	74,5 公分', '長度:	40,5 公分 寬度:	32 公分 高度:	74,5 公分', '聚丙烯塑膠, 鋼質, 鍍鋅 框架/ 層板: 鋼質, 粉末塗層', '聚丙烯塑膠, 鋼質, 鍍鋅 框架/ 層板: 鋼質, 粉末塗層', '聚丙烯塑膠, 鋼質, 鍍鋅 框架/ 層板: 鋼質, 粉末塗層聚丙烯塑膠, 鋼質, 鍍鋅 框架/ 層板: 鋼質, 粉末塗層聚丙烯塑膠, 鋼質, 鍍鋅 框架/ 層板: 鋼質, 粉末塗層', '等分步15kg/層', '等分步15kg/層', '等分步15kg/層', '銀色', '銀色', '銀色', 'A4適用jp', 'A4適用', 'A4適用', '請勿專門使用於重物、長距離搬運，容易造成腳輪損傷', '請勿專門使用於重物、長距離搬運，容易造成腳輪損傷', '請勿專門使用於重物、長距離搬運，容易造成腳輪損傷', '(無輸入時不顯示)', '(無輸入時不顯示)', '(無輸入時不顯示)', 'https://www.google.com', '', '1595559303A5mW9t.jpg', '1595559317KINEDN.jpg', '', '', '介紹jp', '介紹jp', '', '', '說明1', '說明2', '', '', '說明1', '說明2', '', '', '[{\"product_size_pic_pic\":\"1595563632ZYKsd3.jpg\"}]', '', '123', '123', 1, '2020-07-24 10:57:50', '2020-07-24 12:10:22', 'admin'),
(7, 9, 15, 5, 2, 'YSK-017', '推車, 黑色jp', '推車, 黑色en', '推車, 黑色', '', '', '', '[{\"product_pics_pic\":\"1595559250L4FRvz.jpg\"},{\"product_pics_pic\":\"1595559256JAjUhS.jpg\"}]', '1595558734bepP6N.jpg', '長度:	40,5 公分 寬度:	32 公分 高度:	74,5 公分', '長度:	40,5 公分 寬度:	32 公分 高度:	74,5 公分', '長度:	40,5 公分 寬度:	32 公分 高度:	74,5 公分', '聚丙烯塑膠, 鋼質, 鍍鋅 框架/ 層板: 鋼質, 粉末塗層', '聚丙烯塑膠, 鋼質, 鍍鋅 框架/ 層板: 鋼質, 粉末塗層', '聚丙烯塑膠, 鋼質, 鍍鋅 框架/ 層板: 鋼質, 粉末塗層聚丙烯塑膠, 鋼質, 鍍鋅 框架/ 層板: 鋼質, 粉末塗層聚丙烯塑膠, 鋼質, 鍍鋅 框架/ 層板: 鋼質, 粉末塗層', '等分步15kg/層', '等分步15kg/層', '等分步15kg/層', '銀色', '銀色', '銀色', 'A4適用jp', 'A4適用', 'A4適用', '請勿專門使用於重物、長距離搬運，容易造成腳輪損傷', '請勿專門使用於重物、長距離搬運，容易造成腳輪損傷', '請勿專門使用於重物、長距離搬運，容易造成腳輪損傷', '(無輸入時不顯示)', '(無輸入時不顯示)', '(無輸入時不顯示)', 'https://www.google.com', '', '1595559303A5mW9t.jpg', '1595559317KINEDN.jpg', '', '', '介紹jp', '介紹jp', '', '', '說明1', '說明2', '', '', '說明1', '說明2', '', '', '[{\"product_size_pic_pic\":\"1595563632ZYKsd3.jpg\"}]', '', '123', '123', 1, '2020-07-24 10:57:50', '2020-07-24 12:10:22', 'admin'),
(8, 9, 15, 5, 1, 'YSK-018', '推車, 紅色jp', '推車, 紅色en', '推車, 紅色', '文件推車en文件推車en文件推車jp', '文件推車en文件推車en文件推車en', '文件推車文件推車文件推車', '[{\"product_pics_pic\":\"1595559250L4FRvz.jpg\"},{\"product_pics_pic\":\"1595559256JAjUhS.jpg\"}]', '1595558734bepP6N.jpg', '長度:	40,5 公分 寬度:	32 公分 高度:	74,5 公分', '長度:	40,5 公分 寬度:	32 公分 高度:	74,5 公分', '長度:	40,5 公分 寬度:	32 公分 高度:	74,5 公分', '聚丙烯塑膠, 鋼質, 鍍鋅 框架/ 層板: 鋼質, 粉末塗層', '聚丙烯塑膠, 鋼質, 鍍鋅 框架/ 層板: 鋼質, 粉末塗層', '聚丙烯塑膠, 鋼質, 鍍鋅 框架/ 層板: 鋼質, 粉末塗層聚丙烯塑膠, 鋼質, 鍍鋅 框架/ 層板: 鋼質, 粉末塗層聚丙烯塑膠, 鋼質, 鍍鋅 框架/ 層板: 鋼質, 粉末塗層', '等分步15kg/層', '等分步15kg/層', '等分步15kg/層', '銀色', '銀色', '銀色', 'A4適用jp', 'A4適用', 'A4適用', '請勿專門使用於重物、長距離搬運，容易造成腳輪損傷', '請勿專門使用於重物、長距離搬運，容易造成腳輪損傷', '請勿專門使用於重物、長距離搬運，容易造成腳輪損傷', '(無輸入時不顯示)', '(無輸入時不顯示)', '(無輸入時不顯示)', 'https://www.google.com', '', '1595559303A5mW9t.jpg', '1595559317KINEDN.jpg', '', '', '介紹jp', '介紹jp', '', '', '說明1', '說明2', '', '', '說明1', '說明2', '', '', '[{\"product_size_pic_pic\":\"1595563632ZYKsd3.jpg\"}]', '', '123', '123', 1, '2020-07-24 10:57:50', '2020-07-24 12:10:22', 'admin');

-- --------------------------------------------------------

--
-- 資料表結構 `product_stype`
--

DROP TABLE IF EXISTS `product_stype`;
CREATE TABLE IF NOT EXISTS `product_stype` (
  `ps_id` int(11) NOT NULL AUTO_INCREMENT,
  `pt_id` int(11) NOT NULL COMMENT 'fk product type id',
  `ps_name_en` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `ps_name_tw` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `ps_name_jp` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `ps_ispublic` int(11) NOT NULL DEFAULT '1',
  `ps_ind` int(11) NOT NULL,
  `ps_link` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `ps_admin` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ps_updatetime` datetime NOT NULL,
  `ps_createtime` datetime NOT NULL,
  PRIMARY KEY (`ps_id`),
  KEY `pt_id` (`pt_id`)
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='產品子分類';

--
-- 資料表的匯出資料 `product_stype`
--

INSERT INTO `product_stype` (`ps_id`, `pt_id`, `ps_name_en`, `ps_name_tw`, `ps_name_jp`, `ps_ispublic`, `ps_ind`, `ps_link`, `ps_admin`, `ps_updatetime`, `ps_createtime`) VALUES
(1, 2, '小分類1en', '小分類1tw', '小分類1jp', 1, 1, '', 'admin', '2020-07-15 16:19:14', '2020-07-15 00:00:00'),
(2, 1, '小分類2en', '小分類2tw', '小分類2jp', 1, 1, '', 'admin', '2020-07-15 16:19:14', '2020-07-15 00:00:00'),
(7, 1, '小分類3en', '小分類3tw', '小分類3jp', 1, 6, '', 'admin', '2020-07-21 12:17:37', '2020-07-21 12:17:37'),
(8, 3, 'ZIP LINK', 'ZIP LINK鋉結屏風', 'zip link', 1, 26, 'ziplink.php', 'admin', '2020-07-24 10:37:16', '2020-07-24 10:37:16'),
(9, 3, '連結屏風 en', '連結屏風', '連結屏風 jp', 1, 11, '', 'admin', '2020-07-24 10:38:59', '2020-07-24 10:38:59'),
(10, 3, '防災用屏風 en', '防災用屏風', '防災用屏風 jp', 1, 16, '', 'admin', '2020-07-24 10:39:14', '2020-07-24 10:39:14'),
(11, 3, '鋼板隔間 en', '鋼板隔間', '鋼板隔間 jp', 1, 21, '', 'admin', '2020-07-24 10:39:31', '2020-07-24 10:39:31'),
(12, 4, '壓克力桌上屏風 en', '壓克力桌上屏風', '壓克力桌上屏風 jp', 1, 31, '', 'admin', '2020-07-24 10:41:33', '2020-07-24 10:41:33'),
(13, 4, '鐵製桌上屏風 en', '鐵製桌上屏風', '鐵製桌上屏風 jp', 1, 36, '', 'admin', '2020-07-24 10:41:51', '2020-07-24 10:41:51'),
(14, 4, '其他桌上屏風 en', '其他桌上屏風', '其他桌上屏風 jp', 1, 41, '', 'admin', '2020-07-24 10:42:10', '2020-07-24 10:42:10'),
(15, 5, '文件推車 en', '文件推車', '文件推車 jp', 1, 46, '', 'admin', '2020-07-24 10:43:16', '2020-07-24 10:43:16'),
(16, 5, '桌上收納 en', '桌上收納', '桌上收納 jp', 1, 51, '', 'admin', '2020-07-24 10:43:32', '2020-07-24 10:43:32'),
(17, 5, '移動式收納架 en', '移動式收納架', '移動式收納架 jp', 1, 56, '', 'admin', '2020-07-24 10:43:49', '2020-07-24 10:43:49'),
(18, 5, '電線集線盒 en', '電線集線盒', '電線集線盒 jp', 1, 61, '', 'admin', '2020-07-24 10:44:04', '2020-07-24 10:44:04'),
(20, 5, '其他收納架 en', '其他收納架', '其他收納架 jp', 1, 71, '', 'admin', '2020-07-24 10:44:40', '2020-07-24 10:44:40');

-- --------------------------------------------------------

--
-- 資料表結構 `product_type`
--

DROP TABLE IF EXISTS `product_type`;
CREATE TABLE IF NOT EXISTS `product_type` (
  `pt_id` int(11) NOT NULL AUTO_INCREMENT,
  `pt_name_en` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `pt_name_tw` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `pt_name_jp` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `pt_ispublic` int(11) NOT NULL DEFAULT '1',
  `pt_ind` int(11) NOT NULL,
  `pt_pic` varchar(120) COLLATE utf8_unicode_ci NOT NULL,
  `pt_admin` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pt_updatetime` datetime NOT NULL,
  `pt_createtime` datetime NOT NULL,
  PRIMARY KEY (`pt_id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='產品分類列表';

--
-- 資料表的匯出資料 `product_type`
--

INSERT INTO `product_type` (`pt_id`, `pt_name_en`, `pt_name_tw`, `pt_name_jp`, `pt_ispublic`, `pt_ind`, `pt_pic`, `pt_admin`, `pt_updatetime`, `pt_createtime`) VALUES
(1, '大分類1en', '大分類1tw', '大分類1jp', 1, 6, '1594804864T6gK4K.jpg', 'admin', '2020-07-15 17:21:05', '2020-07-15 00:00:00'),
(2, '大分類2en', '大分類2tw', '大分類2jp', 1, 1, '1594796418wdbmK6.gif', 'admin', '2020-07-15 15:06:53', '2020-07-15 15:00:20'),
(3, 'screen', '隔間屏風', 'コンパートメント画面', 1, 21, '1595558058UKPVdS.jpg', 'admin', '2020-07-24 10:34:36', '2020-07-24 10:34:36'),
(4, '桌上屏風 en', '桌上屏風', '桌上屏風 jp', 1, 11, '1595558414qhJnQW.jpg', 'admin', '2020-07-24 10:40:15', '2020-07-24 10:40:15'),
(5, '桌邊收納 en', '桌邊收納', '桌邊收納 jp', 1, 16, '1595558466CH8a7G.jpg', 'admin', '2020-07-24 10:41:08', '2020-07-24 10:41:08');

-- --------------------------------------------------------

--
-- 資料表結構 `rules`
--

DROP TABLE IF EXISTS `rules`;
CREATE TABLE IF NOT EXISTS `rules` (
  `r_id` int(11) NOT NULL AUTO_INCREMENT,
  `r_name` varchar(80) NOT NULL,
  `r_depiction` text NOT NULL,
  `r_superadmin` tinyint(4) NOT NULL DEFAULT '0',
  `r_admin` varchar(20) NOT NULL,
  `r_updatetime` datetime NOT NULL,
  `r_createtime` datetime NOT NULL,
  UNIQUE KEY `a_id` (`r_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

--
-- 資料表的匯出資料 `rules`
--

INSERT INTO `rules` (`r_id`, `r_name`, `r_depiction`, `r_superadmin`, `r_admin`, `r_updatetime`, `r_createtime`) VALUES
(2, '最高權限管理組', '', 1, 'admin', '2016-07-05 16:50:58', '2016-02-02 18:36:21'),
(5, 'STAFF', 'STAFF', 0, 'admin', '2019-07-15 11:19:15', '2018-05-03 12:23:16'),
(6, 'OPERATOR', '操作員', 0, 'LEO', '2018-06-27 14:48:31', '2018-05-08 11:54:11'),
(7, '測試覆核', '', 0, 'admin', '2018-05-14 18:56:17', '2018-05-14 18:56:17');

-- --------------------------------------------------------

--
-- 資料表結構 `rules_auth`
--

DROP TABLE IF EXISTS `rules_auth`;
CREATE TABLE IF NOT EXISTS `rules_auth` (
  `ra_id` int(11) NOT NULL AUTO_INCREMENT,
  `r_id` int(11) NOT NULL,
  `ra_main_key` int(11) NOT NULL,
  `ra_fun_key` int(11) NOT NULL,
  `ra_auth` int(11) NOT NULL,
  `ra_admin` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `ra_updatetime` datetime NOT NULL,
  `ra_createtime` datetime NOT NULL,
  PRIMARY KEY (`ra_id`),
  UNIQUE KEY `r_id_2` (`r_id`,`ra_main_key`,`ra_fun_key`),
  KEY `r_id` (`r_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 已匯出資料表的限制(Constraint)
--

--
-- 資料表的 Constraints `admin`
--
ALTER TABLE `admin`
  ADD CONSTRAINT `admin_ibfk_1` FOREIGN KEY (`r_id`) REFERENCES `rules` (`r_id`) ON UPDATE CASCADE;

--
-- 資料表的 Constraints `lang_dictionary`
--
ALTER TABLE `lang_dictionary`
  ADD CONSTRAINT `lang_dictionary_ibfk_1` FOREIGN KEY (`ldic_ld_lang`) REFERENCES `lang_data` (`ld_lang`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 資料表的 Constraints `rules_auth`
--
ALTER TABLE `rules_auth`
  ADD CONSTRAINT `rules_auth_ibfk_1` FOREIGN KEY (`r_id`) REFERENCES `rules` (`r_id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
