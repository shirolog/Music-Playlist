-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- ホスト: 127.0.0.1
-- 生成日時: 2023-08-09 14:18:14
-- サーバのバージョン： 10.4.27-MariaDB
-- PHP のバージョン: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- データベース: `music_db`
--

-- --------------------------------------------------------

--
-- テーブルの構造 `songs`
--

CREATE TABLE `songs` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `artist` varchar(100) NOT NULL,
  `album` varchar(100) NOT NULL,
  `music` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- テーブルのデータのダンプ `songs`
--

INSERT INTO `songs` (`id`, `name`, `artist`, `album`, `music`) VALUES
(12, 'neffyex sample', 'neffyex', 'neffex.png', 'NEFFEX  Destiny    Copyright Free.mp3'),
(14, 'hurn  like this', 'ncs', 'images 1.png', 'EMDI - Hurts Like This (feat. Veronica Bravo) [NCS Release].mp3'),
(15, 'inner light', 'kevin  mcleod', 'pop music.png', 'I Dont Care  Declan DP  Free Copyrightsafe Music.mp3'),
(17, 'this rose', 'rose', 'calm music.png', 'Time Goes By feat Joanna Pastel  Declan DP Audio Library Release  Free Copyrightsafe Music.mp3'),
(18, 'test', 'ne', '', 'bensound-goinghigher.mp3');

--
-- ダンプしたテーブルのインデックス
--

--
-- テーブルのインデックス `songs`
--
ALTER TABLE `songs`
  ADD PRIMARY KEY (`id`);

--
-- ダンプしたテーブルの AUTO_INCREMENT
--

--
-- テーブルの AUTO_INCREMENT `songs`
--
ALTER TABLE `songs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
