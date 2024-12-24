-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 09, 2024 at 07:44 AM
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
-- Database: `attendancemsystem1`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbladmin`
--

CREATE TABLE `tbladmin` (
  `Id` int(10) NOT NULL,
  `firstName` varchar(50) NOT NULL,
  `lastName` varchar(50) NOT NULL,
  `emailAddress` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbladmin`
--

INSERT INTO `tbladmin` (`Id`, `firstName`, `lastName`, `emailAddress`, `password`) VALUES
(1, 'vaishnavi', 'sawant', 'admin@mail.com', 'D00F5D5217896FB7FD601412CB890830'),
(2, 'Vaish', 'Sawant', 'sawantvaishnavi209@gmail.com ', 'Password@123');

-- --------------------------------------------------------

--
-- Table structure for table `tblattendance`
--

CREATE TABLE `tblattendance` (
  `Id` int(10) NOT NULL,
  `admissionNo` varchar(255) NOT NULL,
  `classId` varchar(10) NOT NULL,
  `classYearId` varchar(10) NOT NULL,
  `sessionTermId` varchar(10) NOT NULL,
  `status` varchar(10) NOT NULL,
  `dateTimeTaken` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblattendance`
--

INSERT INTO `tblattendance` (`Id`, `admissionNo`, `classId`, `classYearId`, `sessionTermId`, `status`, `dateTimeTaken`) VALUES
(218, '08', '1', '3', '1', '1', '2024-04-23'),
(217, '09', '1', '3', '1', '0', '2024-04-23'),
(216, '47', '1', '3', '1', '1', '2024-04-23'),
(215, '57', '1', '3', '1', '1', '2024-04-23'),
(214, '38', '1', '3', '1', '1', '2024-04-23'),
(213, '35', '1', '3', '1', '1', '2024-04-23'),
(212, '37', '1', '3', '1', '1', '2024-04-23'),
(211, '07', '1', '3', '1', '1', '2024-04-23'),
(210, '14', '1', '3', '1', '1', '2024-04-23'),
(209, '45', '1', '3', '1', '1', '2024-04-23'),
(207, '08', '1', '3', '1', '1', '2024-04-16'),
(206, '09', '1', '3', '1', '0', '2024-04-16'),
(205, '47', '1', '3', '1', '1', '2024-04-16'),
(204, '57', '1', '3', '1', '1', '2024-04-16'),
(203, '38', '1', '3', '1', '1', '2024-04-16'),
(202, '35', '1', '3', '1', '1', '2024-04-16'),
(201, '37', '1', '3', '1', '1', '2024-04-16'),
(200, '07', '1', '3', '1', '1', '2024-04-16'),
(199, '14', '1', '3', '1', '1', '2024-04-16'),
(198, '45', '1', '3', '1', '1', '2024-04-16'),
(197, '50', '1', '3', '1', '1', '2024-04-16'),
(208, '50', '1', '3', '1', '0', '2024-04-23'),
(219, '50', '1', '3', '1', '0', '2024-04-24'),
(220, '45', '1', '3', '1', '1', '2024-04-24'),
(221, '14', '1', '3', '1', '1', '2024-04-24'),
(222, '07', '1', '3', '1', '0', '2024-04-24'),
(223, '37', '1', '3', '1', '1', '2024-04-24'),
(224, '35', '1', '3', '1', '1', '2024-04-24'),
(225, '38', '1', '3', '1', '1', '2024-04-24'),
(226, '57', '1', '3', '1', '1', '2024-04-24'),
(227, '47', '1', '3', '1', '1', '2024-04-24'),
(228, '09', '1', '3', '1', '0', '2024-04-24'),
(229, '08', '1', '3', '1', '1', '2024-04-24'),
(230, '45', '1', '3', '1', '1', '2024-04-28'),
(231, '14', '1', '3', '1', '1', '2024-04-28'),
(232, '07', '1', '3', '1', '0', '2024-04-28'),
(233, '37', '1', '3', '1', '1', '2024-04-28'),
(234, '35', '1', '3', '1', '1', '2024-04-28'),
(235, '38', '1', '3', '1', '0', '2024-04-28'),
(236, '57', '1', '3', '1', '0', '2024-04-28'),
(237, '47', '1', '3', '1', '1', '2024-04-28'),
(238, '09', '1', '3', '1', '0', '2024-04-28'),
(239, '08', '1', '3', '1', '0', '2024-04-28'),
(240, '45', '1', '3', '1', '0', '2024-05-03'),
(241, '14', '1', '3', '1', '0', '2024-05-03'),
(242, '07', '1', '3', '1', '0', '2024-05-03'),
(243, '37', '1', '3', '1', '0', '2024-05-03'),
(244, '35', '1', '3', '1', '0', '2024-05-03'),
(245, '38', '1', '3', '1', '0', '2024-05-03'),
(246, '57', '1', '3', '1', '0', '2024-05-03'),
(247, '47', '1', '3', '1', '0', '2024-05-03'),
(248, '09', '1', '3', '1', '0', '2024-05-03'),
(249, '08', '1', '3', '1', '0', '2024-05-03');

-- --------------------------------------------------------

--
-- Table structure for table `tblclass`
--

CREATE TABLE `tblclass` (
  `Id` int(10) NOT NULL,
  `className` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblclass`
--

INSERT INTO `tblclass` (`Id`, `className`) VALUES
(1, 'ECE'),
(5, 'Computer ');

-- --------------------------------------------------------

--
-- Table structure for table `tblclassteacher`
--

CREATE TABLE `tblclassteacher` (
  `Id` int(10) NOT NULL,
  `firstName` varchar(255) NOT NULL,
  `lastName` varchar(255) NOT NULL,
  `emailAddress` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `phoneNo` varchar(50) NOT NULL,
  `subjectsId` varchar(255) NOT NULL,
  `classId` varchar(10) NOT NULL,
  `classYearId` varchar(10) NOT NULL,
  `dateCreated` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblclassteacher`
--

INSERT INTO `tblclassteacher` (`Id`, `firstName`, `lastName`, `emailAddress`, `password`, `phoneNo`, `subjectsId`, `classId`, `classYearId`, `dateCreated`) VALUES
(15, 'Shakil', 'Shaikh', 'shakilshaikh123@gmail.com', '', '7896567847', 'a:1:{i:0;s:1:\"0\";}', '1', '3', ''),
(16, 'Satish', 'Pokharkar', 'satishpokharkar123@gmail.com', '', '8975879678', 'a:1:{i:0;s:1:\"0\";}', '1', '3', ''),
(20, 'Sachin', 'Anap', 'sachinanap12@gmail.com', '32250170a0dca92d53ec9624f336ca24', '7896767847', '', '1', '3', '');

-- --------------------------------------------------------

--
-- Table structure for table `tblclassyears`
--

CREATE TABLE `tblclassyears` (
  `Id` int(10) NOT NULL,
  `classId` varchar(10) NOT NULL,
  `classYearName` varchar(255) NOT NULL,
  `isAssigned` varchar(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblclassyears`
--

INSERT INTO `tblclassyears` (`Id`, `classId`, `classYearName`, `isAssigned`) VALUES
(3, '1', 'TE', '1');

-- --------------------------------------------------------

--
-- Table structure for table `tblmob`
--

CREATE TABLE `tblmob` (
  `Id` int(255) NOT NULL,
  `admissionNumber` int(255) NOT NULL,
  `mobileNumber` int(255) NOT NULL,
  `classId` int(255) NOT NULL,
  `classYearId` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tblsessionterm`
--

CREATE TABLE `tblsessionterm` (
  `Id` int(10) NOT NULL,
  `sessionName` varchar(50) NOT NULL,
  `termId` varchar(50) NOT NULL,
  `isActive` varchar(10) NOT NULL,
  `dateCreated` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblsessionterm`
--

INSERT INTO `tblsessionterm` (`Id`, `sessionName`, `termId`, `isActive`, `dateCreated`) VALUES
(1, '2019/2020', '1', '1', '2020-10-31'),
(3, '2019/2020', '2', '0', '2020-10-31');

-- --------------------------------------------------------

--
-- Table structure for table `tblstudents`
--

CREATE TABLE `tblstudents` (
  `Id` int(10) NOT NULL,
  `firstName` varchar(255) NOT NULL,
  `lastName` varchar(255) NOT NULL,
  `admissionNumber` varchar(255) NOT NULL,
  `mobileNumber` varchar(15) NOT NULL,
  `parentMobile` varchar(15) NOT NULL,
  `password` varchar(50) NOT NULL,
  `classId` varchar(10) NOT NULL,
  `classYearId` varchar(10) NOT NULL,
  `dateCreated` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblstudents`
--

INSERT INTO `tblstudents` (`Id`, `firstName`, `lastName`, `admissionNumber`, `mobileNumber`, `parentMobile`, `password`, `classId`, `classYearId`, `dateCreated`) VALUES
(40, 'Vaishnavi ', 'Sawant ', '45', '7588549494', '7588549494', '12345', '1', '3', '2024-04-24'),
(39, 'Rutuja', 'Daspute', '14', '7457864675', '9867568643', '12345', '1', '3', '2024-04-23'),
(21, 'Rutuja', 'Barhate', '07', '0', '', '12345', '1', '3', '2024-04-02'),
(31, 'Pratiksha', 'Diwate', '37', '0', '', '12345', '1', '3', '2024-04-16'),
(23, 'bharti', 'gore', '35', '0', '', '12345', '1', '3', '2024-04-02'),
(24, 'aditi', 'kolapkar', '38', '0', '', '12345', '1', '3', '2024-04-02'),
(25, 'komal', 'darekar', '57', '0', '', '12345', '1', '3', '2024-04-02'),
(29, 'Samrin', 'Shaikh', '47', '0', '', '12345', '1', '3', '2024-04-16'),
(27, 'harshada', 'bhor', '09', '0', '', '12345', '1', '3', '2024-04-02'),
(28, 'vaishnavi ', 'bhoknal', '08', '0', '', '12345', '1', '3', '2024-04-02');

-- --------------------------------------------------------

--
-- Table structure for table `tblsubjects`
--

CREATE TABLE `tblsubjects` (
  `Id` int(10) NOT NULL,
  `subjectName` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `classteacherId` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tblsubjects`
--

INSERT INTO `tblsubjects` (`Id`, `subjectName`, `classteacherId`) VALUES
(1, 'EPA', ''),
(2, 'SMD', ''),
(4, 'DC', '');

-- --------------------------------------------------------

--
-- Table structure for table `tblterm`
--

CREATE TABLE `tblterm` (
  `Id` int(10) NOT NULL,
  `termName` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblterm`
--

INSERT INTO `tblterm` (`Id`, `termName`) VALUES
(1, 'First'),
(2, 'Second'),
(3, 'Third');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbladmin`
--
ALTER TABLE `tbladmin`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `tblattendance`
--
ALTER TABLE `tblattendance`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `tblclass`
--
ALTER TABLE `tblclass`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `tblclassteacher`
--
ALTER TABLE `tblclassteacher`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `tblclassyears`
--
ALTER TABLE `tblclassyears`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `tblsessionterm`
--
ALTER TABLE `tblsessionterm`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `tblstudents`
--
ALTER TABLE `tblstudents`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `tblsubjects`
--
ALTER TABLE `tblsubjects`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `tblterm`
--
ALTER TABLE `tblterm`
  ADD PRIMARY KEY (`Id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbladmin`
--
ALTER TABLE `tbladmin`
  MODIFY `Id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tblattendance`
--
ALTER TABLE `tblattendance`
  MODIFY `Id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=250;

--
-- AUTO_INCREMENT for table `tblclass`
--
ALTER TABLE `tblclass`
  MODIFY `Id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tblclassteacher`
--
ALTER TABLE `tblclassteacher`
  MODIFY `Id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `tblclassyears`
--
ALTER TABLE `tblclassyears`
  MODIFY `Id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tblsessionterm`
--
ALTER TABLE `tblsessionterm`
  MODIFY `Id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tblstudents`
--
ALTER TABLE `tblstudents`
  MODIFY `Id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `tblsubjects`
--
ALTER TABLE `tblsubjects`
  MODIFY `Id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tblterm`
--
ALTER TABLE `tblterm`
  MODIFY `Id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
