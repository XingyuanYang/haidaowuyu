-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: 2018-06-01 05:02:12
-- 服务器版本： 10.1.28-MariaDB
-- PHP Version: 7.1.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `haidaowuyu`
--

-- --------------------------------------------------------

--
-- 表的结构 `plants`
--

CREATE TABLE `plants` (
  `plant_id` int(11) NOT NULL,
  `plant_name` varchar(255) CHARACTER SET gbk COLLATE gbk_bin NOT NULL,
  `origin_area_id` int(11) NOT NULL,
  `plant_area_id` int(11) NOT NULL,
  `plant_type_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `level` int(11) NOT NULL,
  `image_graphic` varchar(255) CHARACTER SET gbk COLLATE gbk_bin DEFAULT NULL,
  `prefab_id` int(11) NOT NULL,
  `upgrade_time` int(11) DEFAULT NULL,
  `upgrade_zhiwuzhipo` int(11) DEFAULT NULL,
  `output_zhiwuzhipo` int(11) NOT NULL,
  `rarity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- 转存表中的数据 `plants`
--

INSERT INTO `plants` (`plant_id`, `plant_name`, `origin_area_id`, `plant_area_id`, `plant_type_id`, `quantity`, `level`, `image_graphic`, `prefab_id`, `upgrade_time`, `upgrade_zhiwuzhipo`, `output_zhiwuzhipo`, `rarity`) VALUES
(1, '灌木', 1, 1, 1, 17, 1, NULL, 1, 10, 10, 1, 1),
(2, '灌木', 1, 1, 1, 0, 2, NULL, 2, 20, 20, 2, 101),
(3, '灌木', 1, 1, 1, 0, 3, NULL, 3, 20, 20, 4, 500),
(4, '小蘑菇', 1, 2, 2, 11, 1, NULL, 4, 10, 10, 1, 1),
(5, '小蘑菇', 1, 2, 2, 0, 2, NULL, 5, 20, 20, 2, 101),
(6, '小蘑菇', 1, 2, 2, 0, 3, NULL, 6, 40, 0, 4, 500),
(7, '蘑菇树', 1, 3, 3, 0, 1, NULL, 7, 20, 20, 2, 50),
(8, '蘑菇树', 1, 3, 3, 0, 2, NULL, 8, 40, 40, 4, 101),
(9, '蘑菇树', 1, 3, 3, 0, 3, NULL, 9, NULL, NULL, 8, 500),
(10, '小灯树', 1, 4, 4, 0, 1, NULL, 0, 10, 50, 1, 50),
(11, '小灯树', 1, 4, 4, 0, 2, NULL, 11, 30, 30, 3, 101),
(12, '小灯树', 1, 4, 4, 0, 3, NULL, 12, 50, 50, 8, 500),
(13, '樱花树', 1, 5, 5, 0, 1, NULL, 13, 30, 40, 4, 100),
(14, '樱花树', 1, 5, 5, 0, 2, NULL, 14, 60, 80, 6, 400),
(15, '樱花树', 1, 5, 5, 0, 3, NULL, 15, NULL, NULL, 8, 800),
(16, '梨花树', 1, 6, 6, 0, 1, NULL, 16, 30, 40, 4, 100),
(17, '梨花树', 1, 6, 6, 0, 2, NULL, 17, 30, 40, 6, 400),
(18, '梨花树', 1, 6, 6, 0, 3, NULL, 18, NULL, NULL, 8, 800),
(19, '竹子', 1, 7, 7, 0, 1, NULL, 19, 30, 40, 4, 100),
(20, '竹子', 1, 7, 7, 0, 2, NULL, 20, 60, 80, 6, 400),
(21, '竹子', 1, 7, 7, 0, 3, NULL, 21, NULL, NULL, 6, 800),
(22, '高蘑菇', 2, 8, 8, 4, 1, NULL, 22, 50, 30, 4, 100),
(23, '高蘑菇', 2, 8, 8, 0, 2, NULL, 23, 30, 60, 8, 400),
(24, '高蘑菇', 2, 8, 8, 0, 3, NULL, 24, NULL, NULL, 14, 800),
(25, '荷花', 3, 9, 9, 0, 1, NULL, 25, 50, 30, 4, 101),
(26, '荷花', 3, 9, 9, 0, 2, NULL, 26, 30, 60, 8, 200),
(27, '荷花', 3, 9, 9, 0, 3, NULL, 27, NULL, NULL, 14, 500),
(28, '椰树', 4, 10, 10, 0, 1, NULL, 28, 50, 30, 4, 101),
(29, '椰树', 4, 10, 10, 0, 2, NULL, 29, 30, 60, 8, 200),
(30, '椰树', 4, 10, 10, 0, 3, NULL, 30, NULL, NULL, 14, 500);

-- --------------------------------------------------------

--
-- 表的结构 `player`
--

CREATE TABLE `player` (
  `player_id` int(11) NOT NULL,
  `zhiwuzhipo` int(11) NOT NULL,
  `dongwuzhipo` int(11) NOT NULL,
  `qishengshi` int(11) NOT NULL,
  `if_monthly_card` int(11) NOT NULL,
  `monthly_card_starttime` datetime NOT NULL,
  `num_haidaozhiling_placeholder` int(11) NOT NULL,
  `last_send_time` datetime NOT NULL,
  `send_time_base` int(11) NOT NULL,
  `spawner1_level` int(11) NOT NULL,
  `spawner1_starttime` datetime DEFAULT NULL,
  `spawner2_level` int(11) NOT NULL,
  `spawner2_starttime` datetime DEFAULT NULL,
  `spawner3_level` int(11) NOT NULL,
  `spawner3_starttime` datetime DEFAULT NULL,
  `spawner4_level` int(11) NOT NULL,
  `spawner4_starttime` datetime DEFAULT NULL,
  `spawner5_level` int(11) NOT NULL,
  `spawner5_starttime` datetime DEFAULT NULL,
  `spawner6_level` int(11) NOT NULL,
  `spawner6_starttime` datetime DEFAULT NULL,
  `spawner7_level` int(11) NOT NULL,
  `spawner7_starttime` datetime DEFAULT NULL,
  `spawner8_level` int(11) NOT NULL,
  `spawner8_starttime` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- 转存表中的数据 `player`
--

INSERT INTO `player` (`player_id`, `zhiwuzhipo`, `dongwuzhipo`, `qishengshi`, `if_monthly_card`, `monthly_card_starttime`, `num_haidaozhiling_placeholder`, `last_send_time`, `send_time_base`, `spawner1_level`, `spawner1_starttime`, `spawner2_level`, `spawner2_starttime`, `spawner3_level`, `spawner3_starttime`, `spawner4_level`, `spawner4_starttime`, `spawner5_level`, `spawner5_starttime`, `spawner6_level`, `spawner6_starttime`, `spawner7_level`, `spawner7_starttime`, `spawner8_level`, `spawner8_starttime`) VALUES
(1, 9999, 9999, 9999, 1, '2018-05-31 17:00:00', 1, '0000-00-00 00:00:00', 1, 3, '0000-00-00 00:00:00', 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `plants`
--
ALTER TABLE `plants`
  ADD PRIMARY KEY (`plant_id`);

--
-- Indexes for table `player`
--
ALTER TABLE `player`
  ADD PRIMARY KEY (`player_id`);

--
-- 在导出的表使用AUTO_INCREMENT
--

--
-- 使用表AUTO_INCREMENT `plants`
--
ALTER TABLE `plants`
  MODIFY `plant_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- 使用表AUTO_INCREMENT `player`
--
ALTER TABLE `player`
  MODIFY `player_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
