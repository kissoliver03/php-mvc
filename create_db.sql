-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 11, 2024 at 02:08 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `test`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `test`;

-- --------------------------------------------------------

--
-- Table structure for table `advertisements`
--

CREATE TABLE `advertisements` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `title` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `advertisements`
--

INSERT INTO `advertisements` (`id`, `user_id`, `title`) VALUES
(1, 1, 'Bike for Sale'),
(2, 2, 'Old Car for Sale'),
(3, 3, 'Apartment for Rent'),
(4, 4, 'Looking for a Roommate'),
(5, 5, 'Selling Guitar'),
(6, 6, 'Job Offer: Software Developer'),
(7, 7, 'Babysitting Services'),
(8, 8, 'Lost Cat'),
(9, 9, 'Used Furniture'),
(10, 10, 'Garden Tools'),
(11, 11, 'Looking for a Tutor'),
(12, 12, 'Freelance Photographer'),
(13, 13, 'Dog Walker Available'),
(14, 14, 'Moving Sale'),
(15, 15, 'Handmade Jewelry'),
(16, 16, 'Fitness Trainer'),
(17, 17, 'Yoga Classes'),
(18, 18, 'House Cleaning Services'),
(19, 19, 'Math Tutoring'),
(20, 20, 'Home Cooked Meals'),
(21, 21, 'Art Classes'),
(22, 22, 'Carpenter for Hire'),
(23, 23, 'Singing Lessons'),
(24, 24, 'Piano for Sale'),
(25, 25, 'Event Planning Services'),
(26, 26, 'Looking for Band Members'),
(27, 27, 'Graphic Design Services'),
(28, 28, 'Web Development Services'),
(29, 29, 'Virtual Assistant'),
(30, 30, 'Translation Services');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`) VALUES
(1, 'Alice Smith'),
(2, 'Bob Johnson'),
(3, 'Charlie Williams'),
(4, 'David Brown'),
(5, 'Emily Jones'),
(6, 'Frank Garcia'),
(7, 'Grace Martinez'),
(8, 'Hank Rodriguez'),
(9, 'Ivy Wilson'),
(10, 'Jack Anderson'),
(11, 'Kathy Thomas'),
(12, 'Larry Taylor'),
(13, 'Megan Moore'),
(14, 'Nancy Jackson'),
(15, 'Oscar White'),
(16, 'Paul Harris'),
(17, 'Quincy Martin'),
(18, 'Rachel Thompson'),
(19, 'Sam Martinez'),
(20, 'Tina Robinson'),
(21, 'Ursula Clark'),
(22, 'Victor Lewis'),
(23, 'Wendy Lee'),
(24, 'Xander Walker'),
(25, 'Yvonne Hall'),
(26, 'Zach Young'),
(27, 'Amy King'),
(28, 'Brian Wright'),
(29, 'Clara Lopez'),
(30, 'Daniel Hill'),
(31, 'Eva Scott'),
(32, 'Fred Green'),
(33, 'Gina Adams'),
(34, 'Harry Baker'),
(35, 'Isla Gonzalez'),
(36, 'James Nelson'),
(37, 'Karen Carter'),
(38, 'Liam Mitchell'),
(39, 'Mia Perez'),
(40, 'Nathan Roberts'),
(41, 'Olivia Turner'),
(42, 'Peter Phillips'),
(43, 'Quinn Campbell'),
(44, 'Riley Parker'),
(45, 'Sara Evans'),
(46, 'Tom Edwards'),
(47, 'Uma Collins'),
(48, 'Violet Stewart'),
(49, 'William Sanchez'),
(50, 'Zoe Morris');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `advertisements`
--
ALTER TABLE `advertisements`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `advertisements`
--
ALTER TABLE `advertisements`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `advertisements`
--
ALTER TABLE `advertisements`
  ADD CONSTRAINT `advertisements_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
