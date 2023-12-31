-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- 主機： 127.0.0.1
-- 產生時間： 2023-11-13 09:32:52
-- 伺服器版本： 10.4.28-MariaDB
-- PHP 版本： 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 資料庫： `jeff`
--
DROP DATABASE IF EXISTS `jeff`;
CREATE DATABASE IF NOT EXISTS `jeff` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `jeff`;

-- --------------------------------------------------------

--
-- 資料表結構 `info`
--

CREATE TABLE `info` (
  `ID` varchar(20) NOT NULL,
  `NAME` varchar(20) DEFAULT NULL,
  `AGE` int(2) DEFAULT NULL,
  `COUNTRY` varchar(40) DEFAULT NULL,
  `TEAM` varchar(40) DEFAULT NULL,
  `Characteristic` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 資料表新增資料前，先清除舊資料 `info`
--

TRUNCATE TABLE `info`;
--
-- 傾印資料表的資料 `info`
--

INSERT INTO `info` (`ID`, `NAME`, `AGE`, `COUNTRY`, `TEAM`, `Characteristic`) VALUES
('', '', 0, '', '', '');

-- --------------------------------------------------------

--
-- 資料表結構 `soccer team`
--

CREATE TABLE `soccer team` (
  `球隊` varchar(40) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `排名` int(2) NOT NULL,
  `射門` float NOT NULL,
  `傳球成功率` double NOT NULL,
  `控球率` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 資料表新增資料前，先清除舊資料 `soccer team`
--

TRUNCATE TABLE `soccer team`;
-- --------------------------------------------------------

--
-- 資料表結構 `team`
--

CREATE TABLE `team` (
  `球隊1` varchar(40) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `球隊2` varchar(40) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `球隊3` varchar(40) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `球隊4` varchar(40) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 資料表新增資料前，先清除舊資料 `team`
--

TRUNCATE TABLE `team`;
--
-- 傾印資料表的資料 `team`
--

INSERT INTO `team` (`球隊1`, `球隊2`, `球隊3`, `球隊4`) VALUES
('巴塞隆納', '皇家馬德里', '馬德里競技', '瓦倫西亞');

-- --------------------------------------------------------

--
-- 資料表結構 `巴塞隆納players`
--

CREATE TABLE `巴塞隆納players` (
  `ID` int(20) NOT NULL COMMENT 'AUTO_INCREMENT',
  `NAME` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `AGE` int(2) NOT NULL,
  `COUNTRY` varchar(40) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `TEAM` varchar(40) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `Characteristic` varchar(40) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `進攻` float NOT NULL,
  `射門` float NOT NULL,
  `射正` float NOT NULL,
  `過人` float NOT NULL,
  `被侵犯` float NOT NULL,
  `越位` float NOT NULL,
  `被搶斷` float NOT NULL,
  `失誤` float NOT NULL,
  `搶斷` float NOT NULL,
  `攔截` float NOT NULL,
  `解圍` float NOT NULL,
  `封堵` float NOT NULL,
  `造越位` float NOT NULL,
  `犯規` float NOT NULL,
  `被過` float NOT NULL,
  `助攻` float NOT NULL,
  `關鍵傳球` float NOT NULL,
  `傳球` float NOT NULL,
  `PS` float NOT NULL,
  `FPTS` float NOT NULL,
  `傳中` float NOT NULL,
  `長傳` float NOT NULL,
  `直塞` float NOT NULL,
  `致命失誤` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 資料表新增資料前，先清除舊資料 `巴塞隆納players`
--

TRUNCATE TABLE `巴塞隆納players`;
--
-- 傾印資料表的資料 `巴塞隆納players`
--

INSERT INTO `巴塞隆納players` (`ID`, `NAME`, `AGE`, `COUNTRY`, `TEAM`, `Characteristic`, `進攻`, `射門`, `射正`, `過人`, `被侵犯`, `越位`, `被搶斷`, `失誤`, `搶斷`, `攔截`, `解圍`, `封堵`, `造越位`, `犯規`, `被過`, `助攻`, `關鍵傳球`, `傳球`, `PS`, `FPTS`, `傳中`, `長傳`, `直塞`, `致命失誤`) VALUES
(1, '佩徳里', 20, '西班牙', '巴塞隆納', '中場', 1, 1.7, 0.7, 1.7, 1, 0, 1, 2.3, 1.3, 0, 0.3, 0, 0, 0.7, 0.7, 0, 1.3, 36.7, 85.5, 75.5, 0.3, 2.7, 0.3, 0),
(2, '拉費尼亞', 26, '巴西', '巴塞隆納', '前鋒', 2, 1.6, 0.9, 1, 1.1, 0.1, 0.5, 1, 0.4, 0.3, 0.1, 0, 0, 0.6, 0.3, 1, 1.4, 16.4, 81.7, 69.2, 0.5, 1.4, 0.1, 0),
(3, '萊萬多夫斯基', 35, '波蘭', '巴塞隆納', '前鋒', 5, 2.7, 1.2, 0.5, 1.7, 0.3, 1.3, 2.4, 0.1, 0.2, 0.3, 0.1, 0, 0.9, 0.3, 3, 0.8, 17.3, 72.8, 60.8, 0, 0.5, 0, 0),
(4, '托雷斯', 23, '西班牙', '巴塞隆納', '前鋒', 3, 1.6, 0.5, 0.6, 0.4, 0.6, 0.5, 1.5, 0.3, 0.2, 0.3, 0, 0, 0.3, 0.4, 0, 1.1, 20.1, 78.3, 73.8, 0.1, 0.5, 0.2, 0),
(5, '巴爾德', 20, '西班牙', '巴塞隆納', '左後衛', 0, 0.2, 0.1, 1.5, 0.7, 0.1, 1, 1.9, 1.3, 0.5, 1.3, 0.1, 0.4, 0.3, 0.1, 1, 0.6, 41.4, 87.5, 81.4, 0.4, 0.8, 0, 1),
(6, '菲利克斯', 23, '葡萄牙', '巴塞隆納', '左邊鋒', 1, 2.2, 1, 1, 2.4, 0.1, 1.6, 1.9, 1, 0.8, 0.3, 0.1, 0, 0.6, 0.3, 2, 1, 24.8, 85.7, 82.4, 0.1, 0.6, 0.1, 0),
(7, '羅貝托', 31, '西班牙', '巴塞隆納', '右後衛', 1, 0.3, 0.3, 0, 0, 0, 0.3, 0.8, 0.5, 0.5, 0, 0.3, 0.3, 0, 0.3, 0, 0, 28.5, 93.9, 86.7, 0.5, 1, 0, 0),
(8, '馬科斯', 32, '西班牙', '巴塞隆納', '左後衛', 0, 0.8, 0.5, 0.8, 0.8, 0, 0.5, 0.3, 1.3, 0.8, 0.8, 0, 0.5, 1, 0.3, 0, 1, 29.8, 90.8, 81, 0.5, 0.5, 0, 0),
(9, '孔德', 24, '法國', '巴塞隆納', '中後衛', 1, 0.9, 0.4, 0.6, 0.4, 0, 0.1, 0.2, 0.7, 0.3, 3.4, 0.4, 0.6, 0.2, 0.2, 0, 0.8, 76.4, 92.1, 89.7, 0.4, 3.2, 0.1, 1),
(10, '羅納德', 24, '烏拉圭', '巴塞隆納', '中後衛', 1, 0.9, 0.6, 0.4, 0.7, 0, 0.3, 0.9, 0.9, 0.4, 1.3, 0.1, 0.6, 1.3, 0.1, 0, 0.4, 50.3, 88.1, 81.4, 0.1, 3.9, 0.1, 0),
(11, '佛朗基', 26, '荷蘭', '巴塞隆納', '中場', 1, 0.5, 0.2, 1.3, 1.2, 0, 0.7, 0.8, 1, 0.3, 1.2, 0.3, 0.3, 1, 0.5, 0, 1.2, 100.2, 94.3, 88.5, 0.3, 2.7, 0.2, 0),
(12, '克里斯滕森', 27, '丹麥', '巴塞隆納', '中後衛', 0, 0.2, 0, 0.1, 0.3, 0, 0, 0.1, 0.5, 0.6, 1.7, 0.4, 0.3, 0.3, 0.5, 1, 0.1, 70.8, 95.5, 83.1, 0, 1.7, 0, 0),
(13, '德爾施特根', 31, '德國', '巴塞隆納', '門將', 0, 0, 0, 0, 0.1, 0, 0, 0, 0, 0, 0.6, 0, 0, 0, 0, 0, 0, 29.8, 91.3, 33.3, 0, 5.6, 0, 1),
(14, '坎塞洛', 29, '葡萄牙', '巴塞隆納', '右後衛', 2, 0.8, 0.3, 2.1, 1, 0.2, 1.2, 1.8, 3.6, 0.9, 1, 0.2, 0.3, 0.9, 0.8, 1, 1, 52.3, 82.6, 70.5, 0.4, 2.4, 0.2, 0),
(15, '伊尼戈', 32, '西班牙', '巴塞隆納', '中後衛', 0, 0.2, 0, 0, 1, 0, 0, 0.3, 0.5, 0.5, 3.2, 1, 0.5, 0.5, 0, 0, 0, 53.7, 89.4, 60, 0, 4.5, 0, 0),
(16, '伊納奇', 24, '西班牙', '巴塞隆納', '門將', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- 資料表結構 `瓦倫西亞players`
--

CREATE TABLE `瓦倫西亞players` (
  `ID` int(20) NOT NULL COMMENT 'AUTO_INCREMENT',
  `NAME` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `AGE` int(2) NOT NULL,
  `COUNTRY` varchar(40) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `TEAM` varchar(40) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `Characteristic` varchar(40) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `進攻` float NOT NULL,
  `射門` float NOT NULL,
  `射正` float NOT NULL,
  `過人` float NOT NULL,
  `被侵犯` float NOT NULL,
  `越位` float NOT NULL,
  `被搶斷` float NOT NULL,
  `失誤` float NOT NULL,
  `搶斷` float NOT NULL,
  `攔截` float NOT NULL,
  `解圍` float NOT NULL,
  `封堵` float NOT NULL,
  `造越位` float NOT NULL,
  `犯規` float NOT NULL,
  `被過` float NOT NULL,
  `助攻` float NOT NULL,
  `關鍵傳球` float NOT NULL,
  `傳球` float NOT NULL,
  `PS` float NOT NULL,
  `FPTS` float NOT NULL,
  `傳中` float NOT NULL,
  `長傳` float NOT NULL,
  `直塞` float NOT NULL,
  `致命失誤` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 資料表新增資料前，先清除舊資料 `瓦倫西亞players`
--

TRUNCATE TABLE `瓦倫西亞players`;
--
-- 傾印資料表的資料 `瓦倫西亞players`
--

INSERT INTO `瓦倫西亞players` (`ID`, `NAME`, `AGE`, `COUNTRY`, `TEAM`, `Characteristic`, `進攻`, `射門`, `射正`, `過人`, `被侵犯`, `越位`, `被搶斷`, `失誤`, `搶斷`, `攔截`, `解圍`, `封堵`, `造越位`, `犯規`, `被過`, `助攻`, `關鍵傳球`, `傳球`, `PS`, `FPTS`, `傳中`, `長傳`, `直塞`, `致命失誤`) VALUES
(1, '喬治', 23, '格魯西亞', '瓦倫西亞', '門將', 0, 0, 0, 0, 0.2, 0, 0, 0.2, 0.2, 0, 0.7, 0, 0, 0.2, 0, 0, 0, 22.9, 49.5, 13.3, 0, 4.6, 0, 0),
(2, '加亞', 28, '西班牙', '瓦倫西亞', '左後衛', 1, 0.8, 0.1, 0.4, 0.6, 0, 0.3, 0.5, 3.7, 0.3, 1.6, 0.1, 0.2, 0.6, 0.6, 0, 1.5, 36, 78.3, 65.1, 0.9, 2.7, 0, 0),
(3, '哈維', 20, '西班牙', '瓦倫西亞', '中場', 3, 1.3, 0.7, 1.8, 1.5, 0, 1.5, 2, 1.3, 0.6, 1.1, 0.2, 0, 1, 1.1, 1, 0.6, 30.1, 74.8, 59.7, 0, 0.9, 0.2, 0),
(4, '安德烈', 23, '葡萄牙', '瓦倫西亞', '中場', 0, 0.6, 0.3, 0.9, 1.5, 0, 1, 1.1, 1.4, 0.1, 0.1, 0, 0, 0.8, 0.6, 1, 0.9, 22.3, 79.2, 78.3, 0.3, 1, 0, 0),
(5, '狄亞戈', 21, '西班牙', '瓦倫西亞', '前鋒', 1, 1.3, 0.5, 0.7, 0.8, 0.2, 0.8, 1.5, 1.4, 0.7, 0, 0, 0, 0.5, 0.7, 0, 1.4, 20.8, 69.4, 62, 0.1, 0.4, 0.2, 0),
(6, '烏戈', 23, '西班牙', '瓦倫西亞', '中後衛', 0, 0, 0, 0, 0.6, 0, 0.3, 0, 0.7, 0, 0.6, 0, 0, 0.1, 0, 0, 0.3, 12.9, 77.8, 73.1, 0, 0.4, 0.1, 1),
(7, '蒂埃里', 24, '葡萄牙', '瓦倫西亞', '右後衛', 0, 0.3, 0.2, 0.9, 1.4, 0.1, 0, 0.9, 2.4, 1.4, 1.5, 0.1, 0.1, 1.3, 1, 2, 0.3, 43.1, 78.1, 61.3, 0.3, 2.6, 0, 0),
(8, '比比路', 25, '西班牙', '瓦倫西亞', '中場', 2, 1, 0.3, 0.6, 1.1, 0, 0.8, 0.3, 2.3, 1.2, 1.8, 0.3, 0, 1.4, 0.8, 0, 1.3, 55.4, 83.6, 77.7, 0.8, 3.9, 0, 0),
(9, '迪亞卡比', 26, '幾內亞', '瓦倫西亞', '中後衛', 1, 0.8, 0.4, 0.1, 0.1, 0, 0.4, 0.6, 1.6, 0.5, 3.9, 0.4, 0.1, 0.9, 0.4, 0, 0.1, 43.8, 86.6, 75.7, 0, 2.3, 0, 0),
(10, '雨果', 23, '西班牙', '瓦倫西亞', '中鋒', 5, 1.8, 0.8, 0.6, 2.5, 0.3, 0.9, 2.4, 0.5, 0.1, 0.5, 0.2, 0.1, 1.3, 0.6, 2, 0.4, 13.3, 75, 68, 0, 0, 0, 0),
(11, '奧茲卡查', 23, '土耳其', '瓦倫西亞', '中後衛', 0, 0.3, 0, 0.1, 0.1, 0.1, 0.4, 0.4, 1.5, 0.6, 2.8, 0.3, 0.6, 0.5, 0.8, 0, 0.1, 40, 80.9, 54.5, 0.1, 1.8, 0.1, 0),
(12, '佛蘭 佩雷斯', 21, '西班牙', '瓦倫西亞', '右邊鋒', 1, 0.7, 0.1, 1.4, 1.1, 0.2, 1.4, 2, 0.7, 0.6, 0.1, 0, 0, 1.3, 0.7, 3, 0.8, 18.3, 83.6, 78.2, 0.2, 0.4, 0.1, 0),
(13, '雅列姆丘克', 27, '烏克蘭', '瓦倫西亞', '中鋒', 0, 0.2, 0, 0, 0.7, 0.7, 1, 1, 0.2, 0, 0.3, 0, 0.2, 0.3, 0, 0, 0.2, 8, 79.2, 69.6, 0, 0, 0, 0),
(14, '賽爾吉', 26, '西班牙', '瓦倫西亞', '前鋒', 0, 1.4, 0.8, 0.2, 0.8, 0, 0.6, 2, 0.8, 0.2, 0.2, 0.2, 0, 0.2, 0.4, 0, 0, 11, 67.3, 58.3, 0, 0.2, 0.2, 0),
(15, '加布里埃爾', 32, '巴西', '瓦倫西亞', '中後衛', 0, 0.7, 0, 0, 0.3, 0, 0, 0.2, 0.6, 1.7, 4.7, 0.3, 0.9, 0.4, 0, 0, 0.1, 47.9, 85.6, 50, 0, 3.4, 0.1, 0),
(16, '福爾基耶', 30, '瓜德羅普', '瓦倫西亞', '右後衛', 0, 0.4, 0, 0.4, 0.3, 0.1, 0.4, 0.3, 0.6, 0.1, 0.9, 0, 0, 1, 0, 0, 0.1, 14.8, 81.4, 73.9, 0.1, 0.3, 0, 1),
(17, '賽利姆', 26, '摩洛哥', '瓦倫西亞', '中場', 0, 0.9, 0.5, 1.9, 2.3, 0.1, 1, 1.6, 1.8, 0.6, 0.4, 0, 0, 1.4, 0.5, 1, 0.3, 12.4, 75.8, 74.4, 0, 0.3, 0.1, 0),
(18, '赫蘇斯', 20, '西班牙', '瓦倫西亞', '左後衛', 0, 0, 0, 0, 0, 0, 0, 0, 0.5, 0, 0, 0, 0, 0, 0, 0, 0, 2.5, 60, 100, 0, 0, 0, 0),
(19, '克里斯蒂安', 19, '西班牙', '瓦倫西亞', '中後衛', 0, 0.2, 0, 0.5, 0.2, 0, 0.2, 0.4, 1.9, 1.2, 2.9, 0.3, 0.7, 1.1, 0.3, 0, 0.1, 40.8, 88.7, 38.7, 0, 1.5, 0, 2),
(20, '多梅尼克', 32, '西班牙', '瓦倫西亞', '門將', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(21, '阿爾貝托', 22, '西班牙', '瓦倫西亞', '中鋒', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(22, '克里斯蒂安', 25, '西班牙', '瓦倫西亞', '門將', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- 資料表結構 `皇家馬德里players`
--

CREATE TABLE `皇家馬德里players` (
  `ID` int(20) NOT NULL COMMENT 'AUTO_INCREMENT',
  `NAME` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `AGE` int(2) NOT NULL,
  `COUNTRY` varchar(40) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `TEAM` varchar(40) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `Characteristic` varchar(40) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `進攻` float NOT NULL,
  `射門` float NOT NULL,
  `射正` float NOT NULL,
  `過人` float NOT NULL,
  `被侵犯` float NOT NULL,
  `越位` float NOT NULL,
  `被搶斷` float NOT NULL,
  `失誤` float NOT NULL,
  `搶斷` float NOT NULL,
  `攔截` float NOT NULL,
  `解圍` float NOT NULL,
  `封堵` float NOT NULL,
  `造越位` float NOT NULL,
  `犯規` float NOT NULL,
  `被過` float NOT NULL,
  `助攻` float NOT NULL,
  `關鍵傳球` float NOT NULL,
  `傳球` float NOT NULL,
  `PS` float NOT NULL,
  `FPTS` float NOT NULL,
  `傳中` float NOT NULL,
  `長傳` float NOT NULL,
  `直塞` float NOT NULL,
  `致命失誤` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 資料表新增資料前，先清除舊資料 `皇家馬德里players`
--

TRUNCATE TABLE `皇家馬德里players`;
--
-- 傾印資料表的資料 `皇家馬德里players`
--

INSERT INTO `皇家馬德里players` (`ID`, `NAME`, `AGE`, `COUNTRY`, `TEAM`, `Characteristic`, `進攻`, `射門`, `射正`, `過人`, `被侵犯`, `越位`, `被搶斷`, `失誤`, `搶斷`, `攔截`, `解圍`, `封堵`, `造越位`, `犯規`, `被過`, `助攻`, `關鍵傳球`, `傳球`, `PS`, `FPTS`, `傳中`, `長傳`, `直塞`, `致命失誤`) VALUES
(1, '維尼修斯', 23, '巴西', '皇家馬德里', '左邊鋒', 2, 2, 0.6, 2.6, 2.3, 0.3, 1.1, 3.4, 0.6, 0, 0, 0, 0, 1, 0.3, 1, 0.9, 21.1, 77.9, 73.2, 0, 1, 0.4, 1),
(2, '羅德里戈', 22, '巴西', '皇家馬德里', '右邊鋒', 1, 3.1, 0.8, 1.5, 1.3, 0.3, 0.5, 2.2, 0.5, 0.3, 0.1, 0, 0, 0.3, 0.3, 1, 1.3, 24.8, 87.9, 84.6, 0.4, 0.1, 0, 0),
(3, '巴爾書德', 25, '烏拉圭', '皇家馬德里', '右邊鋒', 1, 2, 0.6, 0.8, 0.4, 0, 0.4, 0.8, 1.5, 1.3, 0.6, 0.1, 0, 0.4, 0.3, 2, 2.1, 52.9, 89.4, 81.9, 0.2, 1.3, 0.3, 0),
(4, '貝林厄姆', 20, '英格蘭', '皇家馬德里', '中場', 10, 2.5, 1.5, 1.9, 3.1, 0.2, 1.5, 2, 1.5, 0.7, 0.5, 0.3, 0, 1, 0.7, 2, 1.6, 48.1, 89.2, 80.4, 0.1, 1, 0.4, 0),
(5, '米利唐', 25, '巴西', '皇家馬德里', '中後衛', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 32, 96.9, 75, 0, 3, 0, 0),
(6, '舟阿梅尼', 23, '法國', '皇家馬德里', '中後衛', 1, 1, 0.3, 0.4, 0.8, 0, 0.5, 0.9, 1.5, 1.3, 1.2, 0.4, 0, 0.7, 0.3, 0, 0.5, 56.5, 92.9, 87.5, 0.5, 2.5, 0, 0),
(7, '費蘭 門迪', 28, '法國', '皇家馬德里', '左後衛', 0, 0.2, 0, 0.4, 0.4, 0, 0.4, 1, 0.2, 0.8, 1.2, 0.4, 0, 0.6, 0.2, 0, 0.4, 40.4, 95, 84.9, 0, 1.4, 0, 0),
(8, '卡馬溫加', 20, '法國', '皇家馬德里', '左後衛', 0, 0.4, 0.1, 1.1, 1.6, 0, 0.8, 0.9, 2.5, 0.9, 0.6, 0.1, 0, 1.7, 0.6, 0, 0.9, 40.7, 90.8, 84.6, 0.3, 1.3, 0, 0),
(9, '阿拉巴', 31, '奧地利', '皇家馬德里', '中後衛', 0, 1, 0.4, 0, 0, 0, 0.1, 0.3, 0.9, 0.9, 2.7, 0.5, 0.3, 0.3, 0.3, 1, 1, 61.1, 91.2, 76.3, 0.2, 2.7, 0.2, 0),
(10, '盧迪格', 30, '德國', '皇家馬德里', '中後衛', 0, 0.6, 0, 0.1, 0.1, 0.1, 0.1, 0, 0.8, 0.3, 3.2, 0.8, 0.3, 1.3, 0.3, 0, 0.3, 52.8, 88.2, 56.2, 0.2, 1.8, 0.1, 0),
(11, '庫爾圖瓦', 31, '德國', '皇家馬德里', '門將', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.5, 0, 0, 0, 0, 0, 0, 37, 93.2, 0, 0, 4.5, 0, 0),
(12, '凱帕', 29, '德國', '皇家馬德里', '門將', 0, 0, 0, 0, 0.2, 0, 0, 0, 0, 0, 0.7, 0, 0, 0, 0.1, 0, 0, 30.3, 81.5, 11.1, 0, 2.8, 0, 0),
(13, '普拉辛', 24, '西班牙', '皇家馬德里', '中場', 1, 0.4, 0.4, 0.6, 0.6, 0.3, 0.8, 0.8, 0.3, 0, 0, 0, 0, 0.3, 0.1, 0, 0.4, 7.1, 84.2, 71.9, 0.9, 0.1, 0, 0),
(14, '莫德里奇', 38, '克羅埃西亞', '皇家馬德里', '中場', 0, 0.7, 0.3, 0.4, 0.2, 0.1, 0.7, 0.3, 0.2, 0.3, 0.2, 0.2, 0, 0.8, 0.1, 1, 1, 37.9, 90.2, 84, 0.3, 2.7, 0, 0),
(15, '巴斯克斯', 32, '西班牙', '皇家馬德里', '右後衛', 0, 0.4, 0.4, 0.8, 0.1, 0, 0.4, 0.6, 0.5, 0, 0.4, 0.1, 0.3, 0.5, 0.1, 1, 0.5, 12.5, 89, 89.5, 0.3, 0.1, 0.1, 0),
(16, '盧寧', 24, '烏克蘭', '皇家馬德里', '門將', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.5, 0, 0, 0, 0, 0, 0, 25.5, 92.2, 0, 0, 5.5, 0, 0),
(17, '奈喬', 33, '西班牙', '皇家馬德里', '中後衛', 0, 0.4, 0.1, 0, 0.3, 0, 0, 0.4, 0.9, 0.6, 0.4, 0.7, 0.1, 1, 0.4, 0, 0.3, 27.4, 93.2, 72.2, 0.1, 0.6, 0, 0),
(18, '卡瓦哈爾', 31, '西班牙', '皇家馬德里', '右後衛', 1, 0.7, 0.4, 0.6, 0.7, 0, 1.3, 1, 2.9, 0.9, 1.2, 0.3, 0.3, 1.2, 0.7, 2, 1.3, 47.5, 85.3, 75.7, 0.3, 1.4, 0.3, 1),
(19, '賽凡盧斯', 27, '西班牙', '皇家馬德里', '中場', 0, 0.3, 0, 0.3, 1, 0, 0.3, 0, 0.7, 0, 0, 0.3, 0, 0.3, 0.7, 0, 0, 24.7, 94.6, 88.9, 0, 0.7, 0, 0),
(20, '東尼', 33, '德國', '皇家馬德里', '中場', 1, 1.3, 0.7, 0.1, 1.1, 0.1, 0.1, 0.3, 1.3, 0.5, 0.3, 0.2, 0, 0.7, 0.8, 3, 2, 53.1, 94.8, 92.7, 1.3, 3.8, 0, 1);

-- --------------------------------------------------------

--
-- 資料表結構 `馬德里競技players`
--

CREATE TABLE `馬德里競技players` (
  `ID` int(20) NOT NULL COMMENT 'AUTO_INCREMENT',
  `NAME` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `AGE` int(2) NOT NULL,
  `COUNTRY` varchar(40) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `TEAM` varchar(40) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `Characteristic` varchar(40) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `進攻` float NOT NULL,
  `射門` float NOT NULL,
  `射正` float NOT NULL,
  `過人` float NOT NULL,
  `被侵犯` float NOT NULL,
  `越位` float NOT NULL,
  `被搶斷` float NOT NULL,
  `失誤` float NOT NULL,
  `搶斷` float NOT NULL,
  `攔截` float NOT NULL,
  `解圍` float NOT NULL,
  `封堵` float NOT NULL,
  `造越位` float NOT NULL,
  `犯規` float NOT NULL,
  `被過` float NOT NULL,
  `助攻` float NOT NULL,
  `關鍵傳球` float NOT NULL,
  `傳球` float NOT NULL,
  `PS` float NOT NULL,
  `FPTS` float NOT NULL,
  `傳中` float NOT NULL,
  `長傳` float NOT NULL,
  `直塞` float NOT NULL,
  `致命失誤` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 資料表新增資料前，先清除舊資料 `馬德里競技players`
--

TRUNCATE TABLE `馬德里競技players`;
--
-- 傾印資料表的資料 `馬德里競技players`
--

INSERT INTO `馬德里競技players` (`ID`, `NAME`, `AGE`, `COUNTRY`, `TEAM`, `Characteristic`, `進攻`, `射門`, `射正`, `過人`, `被侵犯`, `越位`, `被搶斷`, `失誤`, `搶斷`, `攔截`, `解圍`, `封堵`, `造越位`, `犯規`, `被過`, `助攻`, `關鍵傳球`, `傳球`, `PS`, `FPTS`, `傳中`, `長傳`, `直塞`, `致命失誤`) VALUES
(1, '德保羅', 29, '阿根廷', '馬德里競技', '中場', 0, 1.3, 0.4, 1.1, 1.1, 0, 0.5, 1, 1.4, 0.1, 0.1, 0, 0, 0.8, 0.5, 2, 0.8, 45.8, 86.6, 73, 0.1, 2.3, 0.4, 0),
(2, '納舒爾', 25, '阿根廷', '馬德里競技', '右後衛', 2, 0.7, 0.3, 0.4, 0.8, 0.2, 0.7, 1, 1.7, 0.3, 1.1, 0, 0.3, 0.7, 0.8, 1, 0.4, 41.3, 74.7, 66.1, 0.7, 1.7, 0, 0),
(3, '希門尼斯', 28, '烏拉圭', '馬德里競技', '中後衛', 0, 0.3, 0, 0.3, 0, 0, 0, 0, 0.2, 0, 3.5, 0.7, 0.3, 0.7, 0, 0, 0.2, 21.3, 83.6, 61.5, 0, 2, 0, 0),
(4, '奧布拉克', 30, '斯洛維尼亞', '馬德里競技', '門將', 0, 0, 0, 0.1, 0.1, 0, 0.1, 0.1, 0, 0, 0.8, 0, 0, 0, 0, 0, 0, 23.1, 73.2, 15, 0, 4.5, 0, 0),
(5, '馬科斯', 28, '西班牙', '馬德里競技', '中場', 2, 0.7, 0.4, 0.3, 0.6, 0.2, 0.4, 0.8, 0.7, 0.3, 0.7, 0.1, 0.1, 0.5, 0.6, 0, 0.5, 23.4, 77, 67.6, 0.2, 0.4, 0, 0),
(6, '科雷亞', 28, '阿根廷', '馬德里競技', '右邊鋒', 3, 1, 0.6, 0.8, 0.5, 0.4, 1, 1.3, 0.6, 0.1, 0, 0, 0, 0.3, 0.5, 1, 1.1, 11.6, 79.6, 73.7, 0.4, 0.3, 0, 0),
(7, '格里茲曼', 32, '法國', '馬德里競技', '中鋒', 7, 2.1, 0.9, 1, 0.7, 0.4, 0.8, 1.7, 1.2, 0.2, 0.5, 0.2, 0, 0.5, 0.7, 0, 1.5, 37.5, 82, 70.5, 0.9, 1.6, 0.4, 0),
(8, '莫拉塔', 31, '西班牙', '馬德里競技', '中鋒', 7, 2.3, 1.2, 0.5, 0.8, 0.9, 1.3, 1.3, 0.5, 0, 1.2, 0, 0, 1.5, 0, 1, 0.2, 14.4, 73.6, 60, 0.1, 0.8, 0, 0),
(9, '埃爾莫索', 28, '西班牙', '馬德里競技', '中後衛', 0, 0.5, 0.1, 0.4, 1.1, 0, 0.3, 0.5, 1.4, 1.4, 3.5, 0.5, 0.3, 1.5, 0.5, 0, 0.4, 57.6, 86.1, 70.4, 0.2, 5, 0, 0),
(10, '賽謬爾 利諾', 23, '巴西', '馬德里競技', '左邊鋒', 1, 0.9, 0.6, 0.7, 1.1, 0.4, 0.7, 0.6, 2.6, 0.3, 0.9, 0, 0, 0.3, 0.4, 2, 0.7, 21, 79.6, 68.2, 0.3, 0.9, 0.1, 0),
(11, '鮑勃 巴里奧斯', 20, '西班牙', '馬德里競技', '中場', 0, 0.6, 0.4, 2.3, 1.3, 0, 0.9, 1.6, 1.9, 1.4, 0.9, 0, 0, 1, 1, 0, 0.6, 36.4, 83.9, 74.3, 0, 1.6, 0.1, 1),
(12, '雷尼爾多', 29, '莫桑比克', '馬德里競技', '左後衛', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(13, '羅德里戈', 23, '西班牙', '馬德里競技', '左邊鋒', 2, 1.3, 0.8, 1.3, 1.3, 0.4, 0.3, 1.8, 0.8, 0, 0.3, 0, 0, 0, 0.5, 1, 0.4, 17, 85.3, 75, 0.4, 0.1, 0, 0),
(14, '科克', 31, '西班牙', '馬德里競技', '中場', 0, 0.3, 0.1, 0.1, 0.8, 0, 0.5, 0.6, 1.8, 0.6, 0.9, 0.5, 0, 0.4, 1, 2, 1.1, 68, 90.8, 74, 0, 3, 0.4, 0),
(15, '瑟因居', 27, '土耳其', '馬德里競技', '中後衛', 0, 0, 0, 0.3, 0, 0.3, 0.7, 0, 0.3, 0.3, 1.3, 0, 0, 0, 0, 0, 0, 9.7, 89.7, 66.7, 0, 1, 0, 0),
(16, '勒馬爾', 31, '法國', '馬德里競技', '中場', 0, 0.7, 0, 0.3, 0.7, 0, 0.7, 1, 1, 0, 0, 0, 0, 1, 0.3, 0, 0.3, 25.7, 89.6, 78.1, 0.3, 0, 0, 0),
(17, '德佩', 29, '荷蘭', '馬德里競技', '中鋒', 2, 1.8, 0.8, 0.3, 0.3, 0, 0.5, 2.5, 0.5, 0, 0, 0, 0, 0.3, 0, 0, 0.5, 7.8, 71, 64.3, 0.3, 0, 0, 0),
(18, '哈維', 28, '西班牙', '馬德里競技', '左後衛', 0, 0, 0, 0.4, 0.8, 0, 0.6, 0.8, 0.8, 0.2, 0.6, 0, 0, 0.2, 0.2, 0, 0.4, 9, 77.8, 75, 0.2, 0, 0, 0),
(19, '薩鳥爾', 28, '西班牙', '馬德里競技', '中場', 0, 0.5, 0.2, 0.5, 0.8, 0, 0.6, 1.2, 2.7, 0.3, 1.5, 0.4, 0, 1.5, 0.5, 4, 0.7, 27.3, 86.7, 72.9, 0.3, 0.7, 0.2, 0),
(20, '斯特凡', 32, '黑山', '馬德里競技', '中後衛', 0, 0.1, 0, 0.3, 0.3, 0, 0, 0, 0.9, 1.6, 2.4, 1, 0.1, 0.9, 1, 0, 0, 43.9, 82.1, 52.4, 0, 2.1, 0, 0),
(21, '阿斯皮利奎塔', 34, '西班牙', '馬德里競技', '右後衛', 0, 0.2, 0.2, 0, 0.4, 0, 0.2, 0.4, 1.2, 0.7, 1.3, 1, 0, 1.1, 0.6, 1, 0.7, 48.8, 86.1, 80.4, 0, 0.8, 0, 0),
(22, '維特賽爾', 34, '比利時', '馬德里競技', '中後衛', 0, 0.3, 0, 0, 0.7, 0, 0.3, 0.3, 0.9, 0.5, 3.6, 0.6, 0.3, 0.4, 0.2, 0, 0.2, 60.4, 92.1, 66.7, 0, 2.3, 0, 0),
(23, '伊沃', 27, '克羅埃西亞', '馬德里競技', '門將', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

--
-- 已傾印資料表的索引
--

--
-- 資料表索引 `info`
--
ALTER TABLE `info`
  ADD PRIMARY KEY (`ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
