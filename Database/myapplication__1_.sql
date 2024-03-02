-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 07, 2018 at 09:10 AM
-- Server version: 10.1.34-MariaDB
-- PHP Version: 7.2.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `myapplication`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `admin_id` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `password`) VALUES
('1', '1'),
('12', '34'),
('2', 'abcdefg5');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `middle_name` varchar(50) NOT NULL,
  `gender` varchar(6) NOT NULL,
  `date_of_birth` date NOT NULL,
  `email_id` varchar(200) NOT NULL,
  `mobile_no` varchar(10) NOT NULL,
  `address` varchar(200) NOT NULL,
  `state` varchar(50) NOT NULL,
  `enrollment_no` varchar(50) NOT NULL,
  `branch` varchar(50) NOT NULL,
  `semester` varchar(1) NOT NULL,
  `institute` varchar(200) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`first_name`, `last_name`, `middle_name`, `gender`, `date_of_birth`, `email_id`, `mobile_no`, `address`, `state`, `enrollment_no`, `branch`, `semester`, `institute`, `password`) VALUES
('1', '1', '1', 'female', '2000-01-01', 'ewf@efjh.dvf', '1111111111', '1111111111', '111111111', '1', 'Civil Engineering', '3', '1111111111', '1111'),
('221', '2132', '11', 'male', '0001-01-01', '2ref@wefe.dvv', '2222222222', '951', '2', '2', 'Computer Engineering', '1', 'kjh', 'abc'),
('123456', 'Royalll', ' ggg ggg', 'other', '2012-12-15', 'ab@gmail.com', '9999999999', 'me', 'gujarat sad', '2016095900012345', 'Information Technology', '7', 's.k.patel,visnagar,,vis', 'password123'),
('2', '2', '2', 'male', '2018-10-01', 'jhcgv@yg.lf', '2222222222', '2', '2', '22', 'Electronics & Communication Engineering', '2', '2', '2'),
('eeeeeeeeeeeeeeee', 'eeeeeerrr', 'reeeeeeeeeeryyyyyyy', 'male', '0001-01-01', 'fggv@cfgf.hbj', '7888888888', 'jjjjjjjjjjjjjjjjjjjjjj', 'jjjjjjjjjjjjjjjjjjjjjj', '222222222222222222222222222222222222', 'Computer Engineering', '1', 'uuuuuuuuuuuuuuuuuuu', 'bbbbbbbbbbbbbbbbbbbbbbb'),
('ggggggggg ggggggggggggggg gggggggggg', 'gg', 'g', 'male', '0005-05-05', 'hjwv@hjgjh.kjghb', '5555555555', 'hhhhhhhhhhh', 'jh', '22222222222888888888888889999999', 'Computer Engineering', '1', 'hhhhhhhhhh', 'hbhbhh'),
('5', '5deeeeeeeeeeeeeeeeeee', '5', 'male', '0005-03-05', 'ew@wsm.dc', '6666666666', '5', '5', '23', 'Computer Engineering', '5', '5', '5'),
('l', 'l', 'l', 'male', '0044-04-04', 'sdklc@lkcmc.scd', '6555555555', '541', '55', '2352', 'Computer Engineering', '1', '6523', '130.2'),
('b', 'b', 'b', 'male', '0001-01-01', 'kj@jhd.vkn', '5555555555', '444444444', '4444444444', '44', 'Computer Engineering', '1', '44', '44'),
('1', '1', '1', 'male', '0001-01-01', 'jhbjh@tdf.jb', '4444444444', '44444444444', '444444444', '44444', 'Computer Engineering', '1', '44444', '44444'),
('ed', 'hbn', 'royalgns', 'male', '1998-05-25', 'abc@yahoo.in', '0123456789', 'uuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuu      uuuuuuuuuuuuuuuuuuuuuuuuuu    uuuuuuuuuuuuuuuuuuu', 'jhhvvvvvv', '5', 'Computer Engineering', '1', 'hjjjjjjjjjjjjj', 'pass'),
('1', '1', '1', 'male', '0001-01-01', 'sa@ddv.fv', '5555555555', '55555555555555555', '555555', '555', 'Computer Engineering', '1', '555', '55'),
('1', '1', '1', 'male', '0001-11-11', 'asd@sdx.csc', '9999999999', '5555555555555', '66666666666', '666666666', 'Computer Engineering', '1', '6666666666', '6666666666666666'),
('s', 's', 's', 'male', '0005-05-05', 'abc7@hgj.nknl', '8888888888', 'jjjjjjjjjjjjjjjjjjjjjjjj', 'kkkkkkkkkkkk', '766666666', 'Computer Engineering', '1', 'uhhhhhhh', 'yhb'),
('w', 'w', 'w', 'male', '2018-11-01', 'jjhv@rdf.hv', '2222222222', 'jb', 'ew', '8520', 'Computer Engineering', '1', 'ghb', 'jn'),
('123455', '123456789', '99', 'male', '0008-08-08', 'sd@ew.ewds', '8888888888', '888', '88', '88', 'Computer Engineering', '1', '88', '88'),
('sac', 's', 'dc', 'male', '0001-01-01', 'lkd@knc.ds', '5555555555', '555555555555', '444444', '888888888888888888888888888888888888888888888888', 'Computer Engineering', '1', '55', '88'),
('1', '1', '1', 'female', '2018-08-01', 'qsws@snxmd.aijk', '1111111111', 'jn', 'n', 'a', 'Electrical Engineering', '4', '123', '123');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`enrollment_no`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
