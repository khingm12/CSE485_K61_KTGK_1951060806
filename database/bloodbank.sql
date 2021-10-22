-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th10 22, 2021 lúc 02:45 AM
-- Phiên bản máy phục vụ: 10.4.21-MariaDB
-- Phiên bản PHP: 8.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `bloodbank`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `blood_cars`
--

CREATE TABLE `blood_cars` (
  `vehicle_id` int(10) UNSIGNED NOT NULL,
  `license_no` varchar(20) NOT NULL,
  `model` varchar(100) NOT NULL,
  `year` varchar(100) NOT NULL,
  `ctype` varchar(100) NOT NULL,
  `drate` int(50) NOT NULL,
  `wrate` int(50) NOT NULL,
  `status` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `blood_cars`
--

INSERT INTO `blood_cars` (`vehicle_id`, `license_no`, `model`, `year`, `ctype`, `drate`, `wrate`, `status`) VALUES
(1, '18B-B1 278 92', 'Mazda', '2016', 'Mazda 3', 200000, 500000, 'Đã cho thuê'),
(15, '30G-668 86', 'Honda', '2017', 'Honda JAZZ', 250000, 700000, 'Đã trả'),
(68, '29A- 333 68', 'Toyota', '2015', 'Toyota Rush', 230000, 550000, 'Đang ở bãi gửi'),
(78, '29F-778 21', 'Mitsubishi', '2018', 'Attrage', 280000, 750000, 'Đã cho thuê'),
(99, '29G-886 06', 'Suzuki', '2021', 'Suzuki ciaz', 270000, 650000, 'Đã trả');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `blood_cars`
--
ALTER TABLE `blood_cars`
  ADD PRIMARY KEY (`vehicle_id`),
  ADD UNIQUE KEY `license_no` (`license_no`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `blood_cars`
--
ALTER TABLE `blood_cars`
  MODIFY `vehicle_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=100;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
