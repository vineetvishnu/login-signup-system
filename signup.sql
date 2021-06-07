-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 07, 2021 at 08:08 AM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 8.0.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `signup`
--

-- --------------------------------------------------------

--
-- Table structure for table `registration`
--

CREATE TABLE `registration` (
  `id` int(11) NOT NULL,
  `firstname` char(50) NOT NULL,
  `lastname` char(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(250) DEFAULT NULL,
  `cpassword` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `registration`
--

INSERT INTO `registration` (`id`, `firstname`, `lastname`, `email`, `password`, `cpassword`) VALUES
(14, 'John', 'Doe', 'johndoe@gmail.com', '$2y$10$grfppg8g/phbPD602afw1OCN.6hzeYp4eJLotkWaPxJ', '$2y$10$JgA4JXBPeg6puIXVht85oerRbI1PVryrEBq75sQOPeB'),
(15, 'John', 'Doe', 'johndoe1@gmail.com', '$2y$1000$TpeujhfO8Ts3nJ9Q5NIXS.O/I7IHSGL1Cx/dKzfRM1V', '$2y$10$MKLQULwqPLynnjhal3fHRubmBnMDRLhy5B.205rC0fh'),
(16, 'aman', 'sinha', 'aman@gmail.com', '$2y$10$C33AxkM56pj8k4U2okdS4.NnPv/ojpvyxG/xbPdC0l4', '$2y$10$rPpWXAAZo3/QFLNPnhGrzutezCqJDq0vU5EmRXxhAlr'),
(17, 'John', 'Doe', 'johndoe2@gmail.com', 'john', 'john'),
(18, 'Vineet', 'kr', 'vkr@gmail.com', '$2y$1000$SRj1YJugO5AiBxTQ5.7uYuBCLL9Op.CZPkLNe.1cJr9', '$2y$10$SnY3NLrf9MNySOuK9QKI.OpyZY2ehXgSRwhQoAbpx4N');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `registration`
--
ALTER TABLE `registration`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `registration`
--
ALTER TABLE `registration`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
