-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- ホスト: localhost
-- 生成日時: 2022 年 12 月 15 日 09:21
-- サーバのバージョン： 10.4.21-MariaDB
-- PHP のバージョン: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- データベース: `php_kadai`
--

-- --------------------------------------------------------

--
-- テーブルの構造 `gs_bm_table`
--

CREATE TABLE `gs_bm_table` (
  `id` int(12) NOT NULL,
  `date` datetime NOT NULL,
  `name` varchar(64) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `mail` varchar(128) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `company_name` text CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `visit_date` date DEFAULT NULL,
  `score` varchar(128) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- テーブルのデータのダンプ `gs_bm_table`
--

INSERT INTO `gs_bm_table` (`id`, `date`, `name`, `mail`, `company_name`, `visit_date`, `score`) VALUES
(2, '2022-12-11 10:13:18', '和田', 'abc@co.jp', 'あいうえお商事', '2022-12-01', 'C：受注確度30%'),
(3, '2022-12-11 10:15:53', '南野', 'abc@co.jp', 'A社', '2022-12-02', 'S：受注'),
(4, '2022-12-11 10:19:33', '南野', 'abc@co.jp', 'A社', '2022-12-01', 'A：受注確度80%'),
(5, '2022-12-11 10:20:17', '<script>alert(\'test\')</script>', 'abc@co.jp', 'A社', '2022-12-01', 'A：受注確度80%'),
(6, '2022-12-15 10:33:37', '', '', '', '2022-12-06', 'S：受注'),
(7, '2022-12-15 10:34:06', '', '', '', '2022-12-06', 'S：受注'),
(8, '2022-12-15 10:35:25', '青木', 'abc@co.jp', '', '2022-12-06', 'B：受注確度50%'),
(9, '2022-12-15 10:37:46', '', '', '', '2022-12-03', 'S：受注'),
(10, '2022-12-15 10:39:44', '', '', '', '2022-12-03', 'S：受注'),
(11, '2022-12-15 10:40:11', '', '', '', '2022-12-03', 'S：受注'),
(12, '2022-12-15 10:45:50', 'な', 'abc@co.jp', 'A社', '2022-12-06', 'S：受注'),
(13, '2022-12-15 10:47:12', 'な', 'abc@co.jp', 'A社', '2022-12-06', 'S：受注'),
(14, '2022-12-15 10:54:08', '南野', '', '', '2022-12-01', 'S：受注'),
(15, '2022-12-15 10:54:53', NULL, NULL, NULL, NULL, NULL),
(16, '2022-12-15 10:55:22', '南野', '', '', '2022-12-01', 'S：受注'),
(17, '2022-12-15 10:56:00', '', '', '', '2022-12-01', 'S：受注'),
(18, '2022-12-15 10:56:33', '', '', '', '2022-12-01', 'B：受注確度50%'),
(19, '2022-12-15 10:57:30', NULL, NULL, NULL, NULL, NULL),
(20, '2022-12-15 10:57:32', NULL, NULL, NULL, NULL, NULL),
(21, '2022-12-15 10:57:32', NULL, NULL, NULL, NULL, NULL),
(22, '2022-12-15 10:57:34', NULL, NULL, NULL, NULL, NULL),
(23, '2022-12-15 10:57:38', NULL, NULL, NULL, NULL, NULL),
(24, '2022-12-15 11:05:45', '田中', 'abc@co.jp', 'あいうえお商事', '2022-12-02', 'X：ロスト'),
(25, '2022-12-15 11:13:52', '田中', 'abc@co.jp', 'あいうえお商事', '2022-12-02', 'S：受注'),
(26, '2022-12-15 11:18:41', '田中', 'abc@co.jp', 'あいうえお商事', '2022-12-02', 'S：受注'),
(27, '2022-12-15 11:18:41', '佐藤', 'abc@co.jp', 'あいうえお商事', '2022-12-01', 'A：受注確度80%'),
(28, '2022-12-15 11:19:25', '田中', 'abc@co.jp', 'あいうえお商事', '2022-12-15', 'S：受注'),
(29, '2022-12-15 11:19:25', '佐藤', 'abc@co.jp', 'あいうえお商事', '2022-12-30', 'C：受注確度30%'),
(30, '2022-12-15 11:19:57', '和田', 'abc@co.jp', 'あいうえお商事', '2022-12-15', 'S：受注'),
(31, '2022-12-15 11:19:57', '佐藤', 'abc@co.jp', 'あいうえお商事', '2022-12-30', 'C：受注確度30%'),
(32, '2022-12-15 11:21:03', '和田', 'abc@co.jp', 'あいうえお商事', '2022-12-01', 'A：受注確度80%'),
(33, '2022-12-15 11:26:19', '和田', 'abc@co.jp', 'あいうえお商事', '2022-12-01', 'A：受注確度80%'),
(34, '2022-12-15 11:27:17', '和田', 'abc@co.jp', 'あいうえお商事', '2022-12-01', 'A：受注確度80%'),
(35, '2022-12-15 11:27:17', '佐藤', 'abc@co.jp', '', '2022-12-07', 'B：受注確度50%'),
(36, '2022-12-15 11:27:17', '鈴木', 'abc@co.jp', '', '2022-12-08', 'C：受注確度30%'),
(37, '2022-12-15 11:27:17', '木村', 'abc@co.jp', '', '2022-12-09', 'X：ロスト'),
(38, '2022-12-15 11:27:17', '南野', 'abc@co.jp', '', '2022-12-14', 'S：受注'),
(39, '2022-12-15 11:28:04', '和田', 'abc@co.jp', 'あいうえお商事', '2022-12-01', 'A：受注確度80%'),
(40, '2022-12-15 11:28:04', '佐藤', 'abc@co.jp', '', '2022-12-07', 'B：受注確度50%'),
(41, '2022-12-15 11:28:04', '鈴木', 'abc@co.jp', '', '2022-12-08', 'C：受注確度30%'),
(42, '2022-12-15 11:28:04', '木村', 'abc@co.jp', '', '2022-12-09', 'X：ロスト'),
(43, '2022-12-15 11:28:04', '南野', 'abc@co.jp', '', '2022-12-14', 'S：受注'),
(44, '2022-12-15 17:12:41', '田中', 'abc@co.jp', 'あいうえお商事', '2023-01-05', 'C：受注確度30%'),
(45, '2022-12-15 17:16:00', '田中', 'abc@co.jp', 'あいうえお商事', '2022-11-17', 'A：受注確度80%'),
(46, '2022-12-15 17:16:05', NULL, NULL, NULL, NULL, NULL),
(47, '2022-12-15 17:16:05', NULL, NULL, NULL, NULL, NULL),
(48, '2022-12-15 17:16:05', NULL, NULL, NULL, NULL, NULL),
(49, '2022-12-15 17:16:05', NULL, NULL, NULL, NULL, NULL),
(50, '2022-12-15 17:16:05', NULL, NULL, NULL, NULL, NULL),
(51, '2022-12-15 17:16:06', NULL, NULL, NULL, NULL, NULL),
(52, '2022-12-15 17:16:06', NULL, NULL, NULL, NULL, NULL),
(53, '2022-12-15 17:16:06', NULL, NULL, NULL, NULL, NULL),
(54, '2022-12-15 17:16:06', NULL, NULL, NULL, NULL, NULL),
(55, '2022-12-15 17:16:06', NULL, NULL, NULL, NULL, NULL);

--
-- ダンプしたテーブルのインデックス
--

--
-- テーブルのインデックス `gs_bm_table`
--
ALTER TABLE `gs_bm_table`
  ADD PRIMARY KEY (`id`);

--
-- ダンプしたテーブルの AUTO_INCREMENT
--

--
-- テーブルの AUTO_INCREMENT `gs_bm_table`
--
ALTER TABLE `gs_bm_table`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
