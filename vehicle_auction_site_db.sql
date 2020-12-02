-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 
-- サーバのバージョン： 10.1.35-MariaDB
-- PHP Version: 7.2.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `vehicle_auction_site_db`
--

-- --------------------------------------------------------

--
-- テーブルの構造 `auction`
--

CREATE TABLE `auction` (
  `auction_no` int(10) NOT NULL COMMENT 'オークションID',
  `date` date NOT NULL COMMENT '日付',
  `explanation` varchar(255) NOT NULL COMMENT '説明',
  `auction_name` varchar(255) NOT NULL COMMENT 'オークション名'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- テーブルの構造 `client`
--

CREATE TABLE `client` (
  `client_no` int(11) NOT NULL COMMENT '顧客ID',
  `client_name` varchar(255) NOT NULL COMMENT '顧客名',
  `address` varchar(255) NOT NULL COMMENT '住所',
  `number` int(10) NOT NULL COMMENT '電話番号',
  `password` varchar(255) NOT NULL COMMENT 'パスワード'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- テーブルの構造 `customer_billing`
--

CREATE TABLE `customer_billing` (
  `client_no` int(10) NOT NULL COMMENT '顧客ID',
  `payment` int(10) NOT NULL COMMENT '支払い方法',
  `billing_address` varchar(255) NOT NULL COMMENT '請求先'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- テーブルの構造 `employee`
--

CREATE TABLE `employee` (
  `employee_no` int(10) NOT NULL COMMENT '従業員番号',
  `employee_name` varchar(255) NOT NULL COMMENT '従業員名',
  `password` varchar(255) NOT NULL COMMENT 'パスワード'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- テーブルの構造 `listing`
--

CREATE TABLE `listing` (
  `listing_no` int(10) NOT NULL COMMENT '出品ID',
  `vehicle_no` int(10) NOT NULL COMMENT '車両番号',
  `auction_no` int(11) NOT NULL COMMENT 'オークションID'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- テーブルの構造 `listing_history`
--

CREATE TABLE `listing_history` (
  `money` int(10) NOT NULL COMMENT '金額',
  `listing_no` int(10) NOT NULL COMMENT '出品ID',
  `client_no` int(10) NOT NULL COMMENT '顧客ID'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- テーブルの構造 `matter`
--

CREATE TABLE `matter` (
  `matter_no` int(10) NOT NULL COMMENT '案件ID',
  `status` int(10) NOT NULL COMMENT 'スーテタス',
  `client_no` int(10) NOT NULL COMMENT '顧客ID',
  `employee_no` int(10) NOT NULL COMMENT '従業員ID',
  `vehicle_no` int(10) NOT NULL COMMENT '車両番号',
  `money` int(10) NOT NULL COMMENT '金額'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- テーブルの構造 `vehicle`
--

CREATE TABLE `vehicle` (
  `vehicle_no` int(10) NOT NULL COMMENT '車輛番号',
  `model_year` int(10) NOT NULL COMMENT '年式',
  `model_name` varchar(255) NOT NULL COMMENT '車種名',
  `shape` varchar(255) NOT NULL COMMENT '形状',
  `displacement` int(10) NOT NULL COMMENT '排気量',
  `model` varchar(255) NOT NULL COMMENT 'モデル',
  `grade` varchar(255) NOT NULL COMMENT 'グレード',
  `maker` varchar(255) NOT NULL COMMENT 'メーカー',
  `fuel` int(10) NOT NULL COMMENT '燃料',
  `vehicle_model` varchar(255) NOT NULL COMMENT '型式',
  `capacity` int(11) NOT NULL COMMENT '定員',
  `drive_system` varchar(255) NOT NULL COMMENT '駆動方式',
  `mileage` int(10) NOT NULL COMMENT '走行距離',
  `exterior_color` varchar(255) NOT NULL COMMENT '外装色',
  `Interior_color` varchar(255) NOT NULL COMMENT '内装色',
  `nox_deadline` varchar(255) NOT NULL COMMENT 'NOX期限',
  `Inspection_deadline` varchar(255) NOT NULL COMMENT '検査期限',
  `name_change_deadline` varchar(255) NOT NULL COMMENT '名変期限',
  `airbag` varchar(255) NOT NULL COMMENT 'エアバック',
  `car_history` varchar(255) NOT NULL COMMENT '車歴',
  `classification_classification_number` int(10) NOT NULL COMMENT '類別区分番号',
  `repair_history` varchar(255) NOT NULL COMMENT '修理履歴',
  `evaluation_points` varchar(255) NOT NULL COMMENT '評価点',
  `exterior_evaluation` varchar(255) NOT NULL COMMENT '外装評価',
  `interior_evaluation` varchar(255) NOT NULL COMMENT '内装評価',
  `purchase_amount` int(10) NOT NULL COMMENT '仕入金額',
  `situation_comment` varchar(255) NOT NULL COMMENT '状況コメント',
  `appeal_point` varchar(255) NOT NULL COMMENT 'アピールポイント'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auction`
--
ALTER TABLE `auction`
  ADD PRIMARY KEY (`auction_no`);

--
-- Indexes for table `client`
--
ALTER TABLE `client`
  ADD PRIMARY KEY (`client_no`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`employee_no`);

--
-- Indexes for table `listing`
--
ALTER TABLE `listing`
  ADD PRIMARY KEY (`listing_no`);

--
-- Indexes for table `matter`
--
ALTER TABLE `matter`
  ADD PRIMARY KEY (`matter_no`);

--
-- Indexes for table `vehicle`
--
ALTER TABLE `vehicle`
  ADD PRIMARY KEY (`vehicle_no`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
