-- 主機： localhost
-- 產生時間： 2022 年 01 月 14 日 22:58
-- 伺服器版本： 5.7.35
-- PHP 版本： 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";

--
-- 資料庫: `stock_mfee22`
--

-- --------------------------------------------------------

--
-- 資料表結構 `members`
--

CREATE TABLE `members` (
  `id` int(10) UNSIGNED NOT NULL,
  `email` varchar(256) NOT NULL,
  `password` varchar(60) DEFAULT NULL,
  `name` varchar(32) NOT NULL,
  `photo` varchar(256) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 資料表結構 `stocks`
--

CREATE TABLE `stocks` (
  `id` varchar(8) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(16) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- 資料表結構 `stock_prices`
--

CREATE TABLE `stock_prices` (
  `stock_id` varchar(8) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` date NOT NULL,
  `open_price` decimal(10,2) UNSIGNED NOT NULL,
  `high_price` decimal(10,2) UNSIGNED NOT NULL,
  `low_price` decimal(10,2) UNSIGNED NOT NULL,
  `close_price` decimal(10,2) UNSIGNED NOT NULL,
  `delta_price` decimal(10,2) NOT NULL,
  `transactions` int(10) UNSIGNED NOT NULL,
  `volume` bigint(20) UNSIGNED NOT NULL,
  `amount` decimal(14,2) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 已傾印資料表的索引
--

--
-- 資料表索引 `members`
--
ALTER TABLE `members`
  ADD PRIMARY KEY (`id`),
  ADD KEY `email` (`email`);

--
-- 資料表索引 `stock`
--
ALTER TABLE `stocks`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `stock_prices`
--
ALTER TABLE `stock_prices`
  ADD PRIMARY KEY (`stock_id`,`date`);

--
-- 在傾印的資料表使用自動遞增(AUTO_INCREMENT)
--

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `members`
--
ALTER TABLE `members`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- 已傾印資料表的限制式
--

--
-- 資料表的限制式 `stock_prices`
--
ALTER TABLE `stock_prices`
  ADD CONSTRAINT `stock_price_ibfk_1` FOREIGN KEY (`stock_id`) REFERENCES `stocks` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;