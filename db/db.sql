-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3307
-- Generation Time: Mar 06, 2020 at 10:04 AM
-- Server version: 10.4.10-MariaDB
-- PHP Version: 7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db`
--

-- --------------------------------------------------------

--
-- Table structure for table `admission`
--

CREATE TABLE `admission` (
  `id` int(10) NOT NULL,
  `name` varchar(256) NOT NULL,
  `email` varchar(256) NOT NULL,
  `select_course` varchar(256) NOT NULL,
  `phone` bigint(10) NOT NULL,
  `select_batch` varchar(256) NOT NULL,
  `message` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admission`
--

INSERT INTO `admission` (`id`, `name`, `email`, `select_course`, `phone`, `select_batch`, `message`) VALUES
(1, 'kapil kumar', 'kapil785@gmail.com', 'B.Tech', 8946790677, 'ME', 'health not good'),
(2, 'pooja kumari', 'pooja85@gmail.com', 'B.Tech', 5458773456, 'ME', 'Students are increasingly dropping out of college because they cannot afford the expense.'),
(3, 'Rohit singh', 'rahit56@gmail.com', 'BBA', 6783524565, '', 'problem in class'),
(4, 'advik singh', 'advik5673@gmail.com', 'BBA', 8756783448, '', 'College is academically challenging.'),
(5, 'Amol sinha', 'sinha4545@gmail.com', 'MCA', 7846364987, '', 'Unlike most high schools, colleges often pack two years of content into one year.'),
(6, 'aditi kumari', 'aditi9837@gmail.com', 'B.Tech', 8974927845, 'IT', 'Tuition costs are rising at alarmingly high rates.'),
(7, 'Ananya Bhatti', 'Ananya7843@gmail.com', 'M.Tech', 7844343276, 'IT', 'Freshman suffer more, as it is presumably their first year away from home.'),
(8, 'Angel Bhatnager', 'Angel653@gmail.com', 'BBA', 8747887987, '', 'Most students will at one point get homesick.'),
(9, 'Bhavna Chahal', 'Bhavna4565262@gmail.com', 'BCA', 7843678978, '', 'Especially those who attend a school that is more than three hours away from home.'),
(10, 'Bina Bava', 'Bina4663@gmail.com', 'B.Tech', 7987294837, 'CSE', 'Living in close quarters also poses health\r\nrisks.'),
(11, 'Chaman Dube', 'Dube46655@gmail.com', 'BCA', 6789476876, '', 'It can increase a student\'s chances of contracting illnesses.'),
(12, 'Diya Gala', 'Gala3525@gmail.com', 'BBA', 7689673478, '', 'Social relations can become a distraction.'),
(13, 'Faraj singh', 'faraj7646@gmail.com', 'BCA', 7845679789, '', 'Break-ups can drive some students even further into depression.'),
(14, 'Ekavir Kumar', 'ekavir653@gmail.com', 'BBA', 6783456789, '', 'Sometimes they take a lot of time and can begin to encroach on your eduction.'),
(15, 'Dhruv  Singh', 'Dhrav674@gmail.com', 'BBA', 7467348678, '', 'Partying in itself is not a problem.');

-- --------------------------------------------------------

--
-- Table structure for table `admissioncourse`
--

CREATE TABLE `admissioncourse` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `fname` varchar(255) NOT NULL,
  `mname` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `nation` varchar(255) NOT NULL,
  `admission_number` int(10) NOT NULL,
  `DOB` date NOT NULL,
  `select_course` varchar(255) NOT NULL,
  `catagory` varchar(255) NOT NULL,
  `phone` bigint(10) NOT NULL,
  `gender` varchar(255) NOT NULL,
  `select_batch` varchar(255) NOT NULL,
  `Room` varchar(255) NOT NULL,
  `Local_address` varchar(255) NOT NULL,
  `Permanat_address` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admissioncourse`
--

INSERT INTO `admissioncourse` (`id`, `name`, `fname`, `mname`, `email`, `nation`, `admission_number`, `DOB`, `select_course`, `catagory`, `phone`, `gender`, `select_batch`, `Room`, `Local_address`, `Permanat_address`) VALUES
(1, 'raja singh', 'monu singh', 'kajal singh', 'raja676@gmail.com', 'Indian', 1002, '2000-06-01', 'BCA', 'OBC', 7467348678, 'Male', '', 'Not_room', 'noida', 'noida'),
(2, 'Rohit singh', 'soun singh', 'pooja singh', 'rohit56@gmail.com', 'Indian', 1003, '2000-03-19', 'BCA', 'OBC', 7467348678, 'Male', '', 'Not_room', 'noida', 'noida'),
(3, 'virat kumar', 'rohit kumar', 'ankita kumari', 'virat345@gmail.com', 'Indian', 1003, '1998-08-03', 'BBA', 'OBC', 6683282977, 'Male', '', 'Not room', 'agra', 'agra');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admission`
--
ALTER TABLE `admission`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admissioncourse`
--
ALTER TABLE `admissioncourse`
  ADD PRIMARY KEY (`id`,`admission_number`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admission`
--
ALTER TABLE `admission`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `admissioncourse`
--
ALTER TABLE `admissioncourse`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
