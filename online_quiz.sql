-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 20, 2021 at 01:27 PM
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
-- Database: `online_quiz`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_login`
--

CREATE TABLE `admin_login` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin_login`
--

INSERT INTO `admin_login` (`id`, `username`, `password`) VALUES
(1, 'admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `exam_category`
--

CREATE TABLE `exam_category` (
  `id` int(11) NOT NULL,
  `category` varchar(100) NOT NULL,
  `exam_time_in_minutes` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `exam_category`
--

INSERT INTO `exam_category` (`id`, `category`, `exam_time_in_minutes`) VALUES
(16, 'mysql', '30'),
(17, 'maths', '20'),
(18, 'php', '20');

-- --------------------------------------------------------

--
-- Table structure for table `exam_result`
--

CREATE TABLE `exam_result` (
  `id` int(5) NOT NULL,
  `username` varchar(100) NOT NULL,
  `exam_type` varchar(100) NOT NULL,
  `total_question` varchar(10) NOT NULL,
  `correct_answer` varchar(10) NOT NULL,
  `wrong_answer` varchar(10) NOT NULL,
  `exam_time` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `exam_result`
--

INSERT INTO `exam_result` (`id`, `username`, `exam_type`, `total_question`, `correct_answer`, `wrong_answer`, `exam_time`) VALUES
(1, 'Nileshg', 'php', '2', '1', '1', '2021-12-18'),
(1, 'Nileshg', 'maths', '5', '0', '2', '2021-12-18'),
(1, 'Nileshg', 'php', '2', '2', '0', '2021-12-18'),
(1, 'Nileshg', 'maths', '5', '0', '2', '2021-12-18'),
(1991, 'Nileshg', 'php', '2', '2', '0', '2021-12-18'),
(0, 'Nileshg', 'maths', '5', '0', '5', '2021-12-18'),
(6, 'Nileshg', 'php', '2', '2', '0', '2021-12-18'),
(7, 'Nileshg', 'maths', '5', '0', '5', '2021-12-19'),
(8, 'Nileshg', 'maths', '5', '0', '5', '2021-12-20'),
(9, 'Nileshg', 'php', '2', '2', '0', '2021-12-20'),
(10, 'Nileshg', 'mysql', '0', '0', '0', '2021-12-20'),
(11, 'Nileshg', 'maths', '5', '0', '5', '2021-12-20'),
(12, 'Nileshg', 'maths', '5', '0', '5', '2021-12-20'),
(13, 'Nileshg', 'maths', '5', '0', '5', '2021-12-20'),
(14, 'Nileshg', 'php', '1', '1', '0', '2021-12-20'),
(15, 'Nileshg', 'php', '1', '1', '0', '2021-12-20'),
(16, 'Nileshg', 'php', '7', '6', '1', '2021-12-20'),
(17, 'Nileshg', 'maths', '0', '0', '0', '2021-12-20'),
(18, 'Nileshg', 'mysql', '0', '0', '0', '2021-12-20');

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `id` int(11) NOT NULL,
  `question_no` varchar(5) NOT NULL,
  `question` varchar(500) NOT NULL,
  `opt1` varchar(100) NOT NULL,
  `opt2` varchar(100) NOT NULL,
  `opt3` varchar(100) NOT NULL,
  `opt4` varchar(100) NOT NULL,
  `answer` varchar(100) NOT NULL,
  `category` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`id`, `question_no`, `question`, `opt1`, `opt2`, `opt3`, `opt4`, `answer`, `category`) VALUES
(1, '1', '2+2=?', '1', '2', '3', '4', '4', 'php'),
(2, '2', 'which is the image of a pokemon???', 'opt_images/1bcad806dd1c9ed0d6777c8d4c2b981aa.jpg', 'opt_images/1bcad806dd1c9ed0d6777c8d4c2b981aPngItem_1818647.png', 'opt_images/8f704a8be4816bf49567003bd0bf4dbeyckAE9edi.png', 'opt_images/8f704a8be4816bf49567003bd0bf4dbegroup.png', 'opt_images/1bcad806dd1c9ed0d6777c8d4c2b981aa.jpg', 'php'),
(3, '3', '5+3=?', '6', '2', '8', '7', '8', 'php'),
(4, '4', '2+2=?', '6', '4', '7', '4', '4', 'php'),
(5, '5', '8+9=?', '17', '6', '7', '8', '17', 'php'),
(6, '6', 'which is the image of a pokemon?', 'opt_images/c6d7b4ad8a18b9577053de9349c3b242a.jpg', 'opt_images/c6d7b4ad8a18b9577053de9349c3b2420f9554715dec05a8a500d681b1d4301byckAE9edi.png', 'opt_images/c6d7b4ad8a18b9577053de9349c3b2428f704a8be4816bf49567003bd0bf4dbegroup.png', 'opt_images/de508d808b95ea72780805f47a25abcd1bcad806dd1c9ed0d6777c8d4c2b981aPngItem_1818647.png', 'opt_images/417f7f0f0266e52b7d5099bcb881f680a.jpg', 'php'),
(7, '7', 'which of the following is true?', '6+6=9', '6+6=12', '8+7=12', '5+6=12', '6+6=12', 'php');

-- --------------------------------------------------------

--
-- Table structure for table `registration`
--

CREATE TABLE `registration` (
  `id` int(5) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `email` varchar(22) NOT NULL,
  `contact` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `registration`
--

INSERT INTO `registration` (`id`, `firstname`, `lastname`, `username`, `password`, `email`, `contact`) VALUES
(1, 'Nilesh', 'Gupta', 'Nileshg', '123456', 'this@this.cm', '123456'),
(2, 'Kamal', 'Rai', 'kamalrai', 'hellos', 'kamal@mail.com', '8869549393'),
(3, 'har', 'ka', 'harka', 'harka', 'harka@harka.harka', '8888888888'),
(4, 'hally', 'hello', 'hally', 'hally', 'hally@hally.hally', '8899889988');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_login`
--
ALTER TABLE `admin_login`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `exam_category`
--
ALTER TABLE `exam_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `registration`
--
ALTER TABLE `registration`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_login`
--
ALTER TABLE `admin_login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `exam_category`
--
ALTER TABLE `exam_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `questions`
--
ALTER TABLE `questions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `registration`
--
ALTER TABLE `registration`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
