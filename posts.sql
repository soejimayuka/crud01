-- phpMyAdmin SQL Dump
-- version 4.9.3
-- https://www.phpmyadmin.net/
--
-- ホスト: localhost:3306
-- 生成日時: 2023 年 1 月 06 日 21:46
-- サーバのバージョン： 5.7.26
-- PHP のバージョン: 7.4.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- データベース: `chart_app`
--

-- --------------------------------------------------------

--
-- テーブルの構造 `posts`
--

CREATE TABLE `posts` (
  `id` int(11) UNSIGNED NOT NULL,
  `cond` varchar(60) NOT NULL,
  `temp` float NOT NULL,
  `pulse` int(11) NOT NULL,
  `sbp` int(11) NOT NULL,
  `dbp` int(11) NOT NULL,
  `created` datetime DEFAULT NULL,
  `comment` varchar(255) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- テーブルのデータのダンプ `posts`
--

INSERT INTO `posts` (`id`, `cond`, `temp`, `pulse`, `sbp`, `dbp`, `created`, `comment`, `user_id`) VALUES
(1, '良い', 37.5, 49, 155, 98, '2022-12-22 03:31:04', NULL, 1),
(2, '良い', 38.6, 78, 170, 190, '2022-12-23 10:26:53', NULL, 1),
(4, '悪い', 35.6, 78, 129, 57, '2022-12-24 10:27:36', NULL, 1),
(5, 'とても良い', 35.8, 69, 122, 80, '2022-12-25 10:28:17', NULL, 1),
(13, '体調が悪い', 36.7, 111, 100, 80, '2022-12-26 23:37:39', NULL, 1),
(14, 'good', 36.8, 80, 200, 100, '2022-12-27 23:49:50', NULL, 1),
(21, 'とても良い', 37, 88, 179, 100, '2022-12-21 10:32:51', NULL, 1),
(32, 'とても良い', 35, 30, 60, 30, '2022-12-28 20:09:41', 'test', 1),
(33, 'とても良い', 36, 42, 180, 138, '2022-12-31 10:48:59', '昨日はよく眠れて調子が’良いです。', 1),
(34, 'とても良い', 37, 78, 200, 100, '2022-12-30 10:50:27', '良き', 1),
(35, '悪い', 36.8, 78, 200, 68, '2022-12-29 10:50:56', '調子が悪くて寝ています。', 1),
(36, '良い', 37, 78, 170, 68, '2023-01-01 20:59:37', '今日は調子が良いので散歩に行きました。', 1),
(37, 'とても良い', 36.5, 78, 200, 68, '2023-01-02 21:00:09', '今日は血圧が高くて心配です。体調は変わりありません。', 1),
(38, '悪い', 36.5, 58, 154, 70, '2023-01-03 21:00:45', '雨が降っているせいか体調がすぐれません。', 1),
(39, 'とても良い', 37, 68, 120, 72, '2023-01-04 08:24:15', '今日はぐっすり眠れて調子が良いです。', 1),
(40, 'とても良い', 36.5, 90, 170, 80, '2023-01-05 06:44:21', '散歩に行きました。', 1),
(41, '悪い', 36.5, 58, 200, 100, '2023-01-06 06:44:53', '血圧が高いです。', 1),
(42, '悪い', 35.9, 90, 170, 68, '2023-01-07 06:45:38', '血圧が少し下がりました。', 1);

--
-- ダンプしたテーブルのインデックス
--

--
-- テーブルのインデックス `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- ダンプしたテーブルのAUTO_INCREMENT
--

--
-- テーブルのAUTO_INCREMENT `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
