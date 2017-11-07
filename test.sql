-- phpMyAdmin SQL Dump
-- version 4.0.10.4
-- http://www.phpmyadmin.net
--
-- ホスト: localhost
-- 生成日時: 2017 年 11 月 07 日 18:28
-- サーバのバージョン: 5.6.21
-- PHP のバージョン: 5.3.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- データベース: `test`
--

-- --------------------------------------------------------

--
-- テーブルの構造 `test`
--

CREATE TABLE IF NOT EXISTS `test` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `com` varchar(255) NOT NULL COMMENT 'コメント本文',
  `user_id` int(11) NOT NULL COMMENT 'ユーザーID',
  `delete_flg` tinyint(1) NOT NULL DEFAULT '0' COMMENT '削除フラグ',
  `create_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '作成時間',
  `update_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新時間',
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='テストコメントテーブル' AUTO_INCREMENT=5 ;

--
-- テーブルのデータのダンプ `test`
--

INSERT INTO `test` (`id`, `com`, `user_id`, `delete_flg`, `create_date`, `update_date`) VALUES
(1, 'あばば', 1, 0, '2017-11-07 18:26:21', '2017-11-07 18:26:21'),
(2, 'のだー', 2, 0, '2017-11-07 18:27:27', '2017-11-07 18:27:27'),
(3, 'またやってしまったねー', 3, 0, '2017-11-07 18:27:27', '2017-11-07 18:27:27'),
(4, 'っぽい', 4, 0, '2017-11-07 18:27:27', '2017-11-07 18:27:27');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
