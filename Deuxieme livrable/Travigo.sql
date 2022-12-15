-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Dec 15, 2022 at 10:10 AM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `Travigo`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `admin_id` int(11) NOT NULL,
  `admin_fullname` varchar(50) NOT NULL,
  `admin_username` varchar(50) NOT NULL,
  `admin_password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `admin_fullname`, `admin_username`, `admin_password`) VALUES
(2, 'ayoub', 'ayoubahb', '$2y$10$wBjtjBKj655h.g3lNzV0D.dba11A8oHEHdyYRwOa.EwghlzW9SVpK'),
(3, 'ayoub', 'ayoubahba', '$2y$10$6C5eyiqLUBjuNPK9q1lqYeUBLGBT7CWpOmJUBw64wZ.8IjpkPTyDS');

-- --------------------------------------------------------

--
-- Table structure for table `trip`
--

CREATE TABLE `trip` (
  `trip_id` int(11) NOT NULL,
  `trip_name` varchar(50) NOT NULL,
  `trip_destination` varchar(50) NOT NULL,
  `trip_date` date NOT NULL,
  `trip_img` varchar(500) NOT NULL,
  `trip_price` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `trip`
--

INSERT INTO `trip` (`trip_id`, `trip_name`, `trip_destination`, `trip_date`, `trip_img`, `trip_price`) VALUES
(26, 'Peru', 'Peru', '2022-12-16', './views/upload_img/img-1.jpg', 500),
(27, 'Colombia', 'Colombia', '2022-12-24', './views/upload_img/img-3.jpg', 300),
(28, 'Argentina', 'Argentina', '2022-12-16', './views/upload_img/img-6.jpg', 600),
(29, 'Tanzanie', 'Tanzanie', '2023-01-08', './views/upload_img/img3.png', 499),
(30, 'France', 'France', '2022-12-22', './views/upload_img/img1.png', 200),
(31, 'Qatar', 'Qatar', '2022-12-25', './views/upload_img/img-3.jpg', 800);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `trip`
--
ALTER TABLE `trip`
  ADD PRIMARY KEY (`trip_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `trip`
--
ALTER TABLE `trip`
  MODIFY `trip_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
