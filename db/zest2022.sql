-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 05, 2023 at 05:57 AM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.0.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `zest2022`
--

-- --------------------------------------------------------

--
-- Table structure for table `audience`
--

CREATE TABLE `audience` (
  `id` int(100) NOT NULL,
  `eid` int(100) NOT NULL,
  `pid` varchar(255) NOT NULL,
  `reg_event` varchar(255) NOT NULL,
  `reg_date` date NOT NULL,
  `venue` varchar(255) NOT NULL,
  `event_start_time` time(6) NOT NULL,
  `event_end_time` time(6) NOT NULL,
  `event_date` date NOT NULL,
  `tid` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE `events` (
  `sln` int(100) NOT NULL,
  `eid` int(100) NOT NULL,
  `event_name` varchar(250) DEFAULT NULL,
  `event_start_time` time(6) NOT NULL,
  `event_end_time` time(6) NOT NULL,
  `event_date` date NOT NULL,
  `pid` varchar(12) DEFAULT NULL,
  `event_venue` varchar(250) DEFAULT NULL,
  `event_type` varchar(250) DEFAULT NULL,
  `event_reg` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `events`
--

INSERT INTO `events` (`sln`, `eid`, `event_name`, `event_start_time`, `event_end_time`, `event_date`, `pid`, `event_venue`, `event_type`, `event_reg`) VALUES
(1, 1, 'Duet Dance ', '10:00:00.000000', '11:00:00.000000', '2022-11-18', '', 'CENTENNIAL AUDITORIUM', 'Group', 0),
(2, 2, 'Rangoli Making', '10:00:00.000000', '11:00:00.000000', '2022-11-18', '', 'IN FRONT OF LIBRARY', 'Group', 0),
(3, 3, 'COUNTER STRIKE', '10:00:00.000000', '11:00:00.000000', '2022-11-18', '', 'Computer Center', 'Solo', 0),
(4, 4, 'Mime', '11:00:00.000000', '11:55:00.000000', '2022-11-18', '', 'OLD AUDI', 'Group', 0),
(5, 5, 'The Know-it-all', '11:00:00.000000', '11:55:00.000000', '2022-11-18', '', 'CS Seminar Hall', 'Group', 0),
(6, 6, 'Mehendika', '11:00:00.000000', '11:55:00.000000', '2022-11-18', '', 'ED HALL', 'Solo', 0),
(7, 7, 'Solo Singing', '11:00:00.000000', '11:55:00.000000', '2022-11-18', '', 'CENTENNIAL AUDITORIUM', 'Solo', 0),
(8, 8, 'Treasure Hunt', '12:05:00.000000', '13:00:00.000000', '2022-11-18', '', 'INFORMALS PANDAL', 'Group', 0),
(9, 9, 'Mono Act', '12:05:00.000000', '13:00:00.000000', '2022-11-18', 'P20224', 'MINI AUDI', 'Solo', 0),
(10, 10, 'Solo Dance ', '12:30:00.000000', '13:30:00.000000', '2022-11-18', '', 'CENTENNIAL AUDITORIUM', 'Solo', 0),
(11, 11, 'Theme Solo', '12:30:00.000000', '13:30:00.000000', '2022-11-18', '', 'CS SEMINAR HALL', 'Solo', 0),
(12, 12, 'Guess The Song', '13:00:00.000000', '14:00:00.000000', '2022-11-18', '', 'NEW SEMINAR HALL', 'Solo', 0),
(13, 13, 'ACE OF MANDALA', '13:00:00.000000', '14:00:00.000000', '2022-11-18', '', 'ROOM NO. 144', 'Solo', 0),
(14, 14, 'Movie Maniac', '13:30:00.000000', '14:30:00.000000', '2022-11-18', '', 'Centennial  Auditorium', 'Solo', 0),
(15, 15, 'Tattoo Making', '13:30:00.000000', '14:30:00.000000', '2022-11-18', '', 'EN SEMINAR HALL', 'Solo', 0),
(16, 16, 'TEKKEN 3', '13:30:00.000000', '14:30:00.000000', '2022-11-18', 'P20222', 'Computer Center', 'Solo', 0),
(17, 17, 'Face-Off', '15:00:00.000000', '16:00:00.000000', '2022-11-18', '', 'CENTENNIAL AUDITORIUM', 'Solo', 0),
(18, 18, 'The Einstein Brain', '15:00:00.000000', '16:00:00.000000', '2022-11-18', '', 'CS Seminar Hall', 'Solo', 0),
(19, 19, 'Battle Of Bands', '15:00:00.000000', '16:30:00.000000', '2022-11-18', '', 'MAIN AUDI PANDAL', 'Group', 0),
(20, 20, 'Group Dance(Foot Lose)', '16:30:00.000000', '18:30:00.000000', '2022-11-18', '', 'CENTENNIAL AUDITORIUM', 'Group', 0),
(21, 21, 'Renaissance', '18:30:00.000000', '00:00:00.000000', '2022-11-18', '', 'MAIN AUDI PANDAL', 'Solo', 0),
(22, 22, 'Youre a Quizzical , Harry', '09:00:00.000000', '10:00:00.000000', '2022-11-19', '', 'CS SEMINAR HALL', 'Group', 0),
(23, 23, 'Reach For The stars', '09:00:00.000000', '10:00:00.000000', '2022-11-19', '', 'New Seminar Hall', 'Group', 0),
(24, 24, 'Gratis', '09:00:00.000000', '10:00:00.000000', '2022-11-19', '', 'ED HALL', 'Group', 0),
(25, 25, 'Origami', '09:30:00.000000', '10:30:00.000000', '2022-11-19', '', 'E C SEMINAR HALL', 'Group', 0),
(26, 26, 'RAP BATTLE', '09:30:00.000000', '10:30:00.000000', '2022-11-19', '', 'MAIN AUDI PANDAL', 'Solo', 0),
(27, 27, 'Situational Antakshari', '10:00:00.000000', '11:00:00.000000', '2022-11-19', '', 'NEW SEMINAR HALL', 'Group', 0),
(28, 28, 'Duet Song ', '10:00:00.000000', '11:00:00.000000', '2022-11-19', '', 'EN SEMIAR HALL', 'Group', 0),
(29, 29, 'Best Out of Waste', '10:00:00.000000', '11:00:00.000000', '2022-11-19', '', 'OLD AUDITORIUM', 'Group', 0),
(30, 30, 'Multiscene', '11:00:00.000000', '11:55:00.000000', '2022-11-19', 'P20222', 'OLD AUDITORIUM', 'Group', 0),
(31, 31, 'ANIME SKETCHING', '11:00:00.000000', '11:55:00.000000', '2022-11-19', '', 'ROOM NO. 144', 'Solo', 0),
(32, 32, 'Instrumental', '10:30:00.000000', '11:30:00.000000', '2022-11-19', '', 'MAIN AUDI PANDAL', 'Group', 0),
(33, 33, 'BGMI', '12:30:00.000000', '13:30:00.000000', '2022-11-19', 'P20227', 'NEW SEMINAR HALL', 'Group', 0),
(34, 34, 'Movie Spoof', '12:00:00.000000', '13:00:00.000000', '2022-11-19', '', 'MAIN AUDI PANDAL', 'Group', 0),
(35, 35, 'Paper Fashionisha ', '13:00:00.000000', '14:00:00.000000', '2022-11-19', '', 'M E SEMINAR HALL', 'Group', 0),
(36, 36, 'Short Play', '13:00:00.000000', '14:00:00.000000', '2022-11-19', '', 'CS SEMINAR HALL', 'Group', 0),
(37, 37, 'DOODLE', '13:00:00.000000', '14:00:00.000000', '2022-11-19', '', 'ROOM NO. 144', 'Solo', 0),
(38, 38, 'Best Dancer', '13:30:00.000000', '14:30:00.000000', '2022-11-19', '', 'CENTENNIAL AUDITORIUM', 'Group', 0),
(39, 39, 'Sketching', '13:30:00.000000', '14:30:00.000000', '2022-11-19', '', 'ED HALL', 'Solo', 0),
(40, 40, 'Voice Of Zest', '13:30:00.000000', '14:30:00.000000', '2022-11-19', '', 'MAIN AUDI PANDAL', 'Group', 0),
(41, 41, 'FIFA', '14:00:00.000000', '15:00:00.000000', '2022-11-19', '', 'Computer Center', 'Solo', 0),
(42, 42, 'Wah Wah Kya baat hain!!', '14:30:00.000000', '15:30:00.000000', '2022-11-19', '', 'Centennial  Auditorium', 'Solo', 0),
(43, 43, 'ZestGotTalent', '15:30:00.000000', '15:30:00.000000', '2022-11-19', '', 'INFORMALS PANDAL', 'Group', 0),
(44, 44, 'Street Play', '15:30:00.000000', '17:00:00.000000', '2022-11-19', '', 'T D P GROUND', 'Group', 0);

-- --------------------------------------------------------

--
-- Table structure for table `pid`
--

CREATE TABLE `pid` (
  `id` int(250) NOT NULL,
  `pid` varchar(12) NOT NULL,
  `name` varchar(250) NOT NULL,
  `roll_no` varchar(13) NOT NULL,
  `phone` varchar(10) NOT NULL,
  `batch` varchar(250) NOT NULL,
  `branch` varchar(250) NOT NULL,
  `course` varchar(250) NOT NULL,
  `gender` varchar(250) NOT NULL,
  `email` varchar(250) NOT NULL,
  `ptid` varchar(255) DEFAULT NULL,
  `college` varchar(255) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `generated_by` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `sign`
--

CREATE TABLE `sign` (
  `id` int(10) NOT NULL,
  `name` varchar(25) NOT NULL,
  `username` varchar(25) NOT NULL,
  `password` varchar(25) NOT NULL,
  `level` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sign`
--

INSERT INTO `sign` (`id`, `name`, `username`, `password`, `level`) VALUES
(1, 'Main admin', 'admin@zest.com', 'admin222k', 'Admin'),
(2, 'User', 'user@zest.com', 'user', 'user'),
(3, 'Judgement', 'judgement@zest.com', 'jczest', 'Judgement'),
(4, 'user1', 'user1@zest.com', 'user', 'user'),
(5, 'Sub admin', 'subadmin@zest.com', 'subadmin', 'subadmin');

-- --------------------------------------------------------

--
-- Table structure for table `team`
--

CREATE TABLE `team` (
  `id` int(100) NOT NULL,
  `name` varchar(255) NOT NULL,
  `post` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tid`
--

CREATE TABLE `tid` (
  `id` int(100) NOT NULL,
  `TID` varchar(1000) NOT NULL,
  `Total Members` int(250) NOT NULL,
  `date` date NOT NULL,
  `college` varchar(255) DEFAULT NULL,
  `generated_by` varchar(250) DEFAULT NULL,
  `members` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `audience`
--
ALTER TABLE `audience`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`sln`);

--
-- Indexes for table `pid`
--
ALTER TABLE `pid`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sign`
--
ALTER TABLE `sign`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `team`
--
ALTER TABLE `team`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tid`
--
ALTER TABLE `tid`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `audience`
--
ALTER TABLE `audience`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `events`
--
ALTER TABLE `events`
  MODIFY `sln` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `pid`
--
ALTER TABLE `pid`
  MODIFY `id` int(250) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sign`
--
ALTER TABLE `sign`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `team`
--
ALTER TABLE `team`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tid`
--
ALTER TABLE `tid`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
