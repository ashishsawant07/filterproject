-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3307
-- Generation Time: Apr 17, 2023 at 08:29 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.0.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `carts_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `pid` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` int(100) NOT NULL,
  `quantity` int(100) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `user_id`, `pid`, `name`, `price`, `quantity`, `image`) VALUES
(139, 16, 30, 'KONVIO Non Electric Stainless Steel Gravity Filter Purifier 17L', 2499, 2, 'f2.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `message`
--

CREATE TABLE `message` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `number` varchar(12) NOT NULL,
  `message` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `message`
--

INSERT INTO `message` (`id`, `user_id`, `name`, `email`, `number`, `message`) VALUES
(14, 18, 'Ashish Sawant', 'assawant@gmail.com', '8530745681', 'fantastic');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `number` varchar(12) NOT NULL,
  `email` varchar(100) NOT NULL,
  `method` varchar(50) NOT NULL,
  `address` varchar(500) NOT NULL,
  `total_products` varchar(1000) NOT NULL,
  `total_price` int(100) NOT NULL,
  `placed_on` varchar(50) NOT NULL,
  `payment_status` varchar(20) NOT NULL DEFAULT 'pending',
  `order_id` int(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `name`, `number`, `email`, `method`, `address`, `total_products`, `total_price`, `placed_on`, `payment_status`, `order_id`) VALUES
(26, 21, 'rutik', '1234567890', 'rutik12@gmail.com', 'cash on delivery', 'flat no. 123 ac, phaltan, phaltan, India - 415523', ', Non Electric Stainless Steel Gravity Filter 17L (1) ', 2499, '10-Apr-2023', 'pending', 93965),
(27, 21, 'rutik', '1234567890', 'rutik12@gmail.com', 'cash on delivery', 'flat no. 11, phaltan, phaltan, India - 415523', ', Blue Mount IDOL_STAR 18L Water Purifier (1) ', 1499, '10-Apr-2023', 'pending', 44241),
(28, 21, 'rupesh', '1234567890', 'rutik12@gmail.com', 'cash on delivery', 'flat no. 11, phaltan, phaltan, India - 415523', ', Blue Mount IDOL_STAR 18L Water Purifier (1) ', 1499, '10-Apr-2023', 'pending', 16599),
(29, 21, 'rupesh', '123456789', 'rutik12@gmail.com', 'cash on delivery', 'flat no. 11, phaltan, phaltan, India - 415523', ', KENT Ace 8 L RO + UV + UF + TDS (1) ', 12999, '10-Apr-2023', 'pending', 69804),
(30, 21, 'rupesh', '', 'rutik12@gmail.com', 'cash on delivery', 'flat no. 11, phaltan, phaltan, India - 415523', ', Blue Mount IDOL_STAR 18L Water Purifier (1) ', 1499, '10-Apr-2023', 'pending', 71335),
(31, 21, 'rupesh', '1234567899', 'rutik12@gmail.com', 'cash on delivery', 'flat no. 11, phaltan, phaltan, India - 415523', ', KONVIO 2132021 14 L Water Purifier (1) ', 1999, '10-Apr-2023', 'pending', 37134),
(32, 21, 'rupesh', '123456789', 'rutik12@gmail.com', 'cash on delivery', 'flat no. 11, phaltan, phaltan, India - 415523', ', Blue Star Aristo RO+UF 7 L RO + UF (1) ', 8499, '10-Apr-2023', 'pending', 18920),
(33, 21, 'rupesh', '123456789', 'rutik12@gmail.com', 'cash on delivery', 'flat no. 11, phaltan, phaltan, India - 415523', ', Blue Mount IDOL_STAR 18L Water Purifier (1) ', 1499, '10-Apr-2023', 'pending', 27356),
(34, 22, 'pravin', '1234567890', 'pravin12@gmail.com', 'cash on delivery', 'flat no. 123 ac, shivaji chowk, phaltan, india - 415523', ', Blue Mount IDOL_STAR 18L Water Purifier (1) ', 1499, '17-Apr-2023', 'pending', 45844),
(35, 19, 'rupesh', '', 'rupesh12@gmail.com', 'google pay', 'flat no. 11, phaltan, phaltan, India - 415523', ', Blue Mount IDOL_STAR 18L Water Purifier (1) , KENT Ace 8 L RO + UV + UF + TDS (1) ', 14498, '17-Apr-2023', 'pending', 26703),
(36, 23, 'nikhil', '123467898', 'nikhil12@gmail.com', 'paytm', 'flat no. 11 as, phaltan, phaltan, India - 415523', ', Blue Mount IDOL_STAR 18L Water Purifier (1) ', 1499, '17-Apr-2023', 'pending', 57450);

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `id` int(255) NOT NULL,
  `order_id` int(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`id`, `order_id`, `name`, `email`, `image`) VALUES
(1, 45844, 'pravin', 'pravin12@gmail.com', 'msg1462043163-3647 (1).jpg'),
(2, 26703, 'rupesh', 'rupesh@123', 'msg1462043163-3647.jpg'),
(4, 57450, 'nikhil', 'nikhil123@gmail.com', 'msg1462043163-3647 (1).jpg');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `details` varchar(500) NOT NULL,
  `price` int(100) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `details`, `price`, `image`) VALUES
(30, 'Non Electric Stainless Steel Gravity Filter 17L', '', 2499, 'Pureit Ultima RO + UV.jpg'),
(31, 'Blue Mount IDOL_STAR 18L Water Purifier', '', 1499, 'f11.jpg'),
(35, 'KENT Ace 8 L RO + UV + UF + TDS', '', 12999, 'f5.jpg'),
(36, 'Blue Star Aristo RO+UF 7 L RO + UF', '', 8499, 'f12.jpg'),
(37, 'KONVIO 2132021 14 L Water Purifier', '', 1999, 'f10.jpg'),
(38, 'Aquaguard Marve with Active Copper Water Purifier', '', 8999, 'f13.jpg'),
(39, 'Aquaguard Water Purifier - _http___bit_ly_2r96vov', '', 4999, 'f14.jpg'),
(40, 'Chungho Ice Water Purifier SANTA', '', 5999, 'f15.jpg'),
(41, 'pure golden nexus premium water purifier ', '', 12999, 'f16.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `user_type` varchar(20) NOT NULL DEFAULT 'user'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `user_type`) VALUES
(10, 'admin A', 'admin01@gmail.com', '698d51a19d8a121ce581499d7b701668', 'admin'),
(17, 'test', 'test12@gmail.com', '202cb962ac59075b964b07152d234b70', 'admin'),
(18, 'Ashish Sawant', 'assawant@gmail.com', '202cb962ac59075b964b07152d234b70', 'user'),
(19, 'rupesh', 'rupesh@123', '202cb962ac59075b964b07152d234b70', 'user'),
(21, 'rutik', 'rutik12@gmail.com', '202cb962ac59075b964b07152d234b70', 'user'),
(22, 'pravin', 'pravin12@gmail.com', '202cb962ac59075b964b07152d234b70', 'user'),
(23, 'nikhil', 'nikhil123@gmail.com', '202cb962ac59075b964b07152d234b70', 'user');

-- --------------------------------------------------------

--
-- Table structure for table `wishlist`
--

CREATE TABLE `wishlist` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `pid` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` int(100) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `message`
--
ALTER TABLE `message`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wishlist`
--
ALTER TABLE `wishlist`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=159;

--
-- AUTO_INCREMENT for table `message`
--
ALTER TABLE `message`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `wishlist`
--
ALTER TABLE `wishlist`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=75;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
