-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Feb 22, 2018 at 01:22 PM
-- Server version: 10.1.28-MariaDB
-- PHP Version: 5.6.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `fitness`
--

-- --------------------------------------------------------

--
-- Table structure for table `package`
--

CREATE TABLE `package` (
  `pkgId` int(20) NOT NULL,
  `pkgName` varchar(50) NOT NULL,
  `pkgAmount` double NOT NULL,
  `pkgDuration` int(11) NOT NULL,
  `pkgStatus` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `package`
--

INSERT INTO `package` (`pkgId`, `pkgName`, `pkgAmount`, `pkgDuration`, `pkgStatus`) VALUES
(1, 'Full Package(1 Month)', 1300, 30, 'Active'),
(2, 'Full Package(3 Month)', 3200, 30, 'Active'),
(3, 'Full Package(6 Month)', 5200, 180, 'Active'),
(4, 'Full Package(1 Year)', 12500, 365, 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `paymentId` int(20) NOT NULL,
  `regId` int(20) NOT NULL,
  `receiptNo` int(20) NOT NULL,
  `pkgId` int(20) NOT NULL,
  `pkgStartDate` date NOT NULL,
  `pkgEndDate` date NOT NULL,
  `amount` double NOT NULL,
  `paidAmount` double NOT NULL,
  `pendingAmount` double NOT NULL,
  `paymentDate` date NOT NULL,
  `paymentDueDate` date NOT NULL,
  `paymentStatus` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`paymentId`, `regId`, `receiptNo`, `pkgId`, `pkgStartDate`, `pkgEndDate`, `amount`, `paidAmount`, `pendingAmount`, `paymentDate`, `paymentDueDate`, `paymentStatus`) VALUES
(1, 1, 100, 1, '2018-02-20', '2018-03-19', 1300, 1300, 0, '2018-02-20', '0000-00-00', 'Done'),
(2, 2, 101, 2, '2018-02-20', '2018-05-19', 3200, 2000, 1200, '2018-02-20', '2018-03-14', 'Pending');

-- --------------------------------------------------------

--
-- Table structure for table `paymentHistory`
--

CREATE TABLE `paymentHistory` (
  `id` int(20) NOT NULL,
  `regId` int(20) NOT NULL,
  `paymentId` int(20) NOT NULL,
  `receiptNo` int(20) NOT NULL,
  `amountPaid` double NOT NULL,
  `date` date NOT NULL,
  `remark` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `paymentHistory`
--

INSERT INTO `paymentHistory` (`id`, `regId`, `paymentId`, `receiptNo`, `amountPaid`, `date`, `remark`) VALUES
(1, 1, 1, 100, 1300, '2018-02-20', 'Paid in cash'),
(2, 2, 2, 101, 2000, '2018-02-20', 'First installment ');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `regId` int(20) NOT NULL,
  `paymentId` int(20) NOT NULL,
  `pkgId` int(20) NOT NULL,
  `pkgStartDate` date NOT NULL,
  `pkgEndDate` date NOT NULL,
  `mName` varchar(50) NOT NULL,
  `mAge` int(11) NOT NULL,
  `mEmail` varchar(50) NOT NULL,
  `mSex` varchar(10) NOT NULL,
  `mAddress` varchar(50) NOT NULL,
  `mPhone` varchar(15) NOT NULL,
  `mDob` date NOT NULL,
  `mPhoto` varchar(50) NOT NULL,
  `mGymTIme` varchar(20) NOT NULL,
  `mStatus` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`regId`, `paymentId`, `pkgId`, `pkgStartDate`, `pkgEndDate`, `mName`, `mAge`, `mEmail`, `mSex`, `mAddress`, `mPhone`, `mDob`, `mPhoto`, `mGymTIme`, `mStatus`) VALUES
(1, 1, 1, '2018-02-20', '2018-03-19', 'Vishal Patil', 25, 'patil.vishalcse@gmail.com', 'Male', 'Kharghar', '8275001264', '1992-06-22', '/resources/2018/feb/1.jpg', '7-8PM', 'Active'),
(2, 2, 2, '2018-02-20', '2018-05-19', 'Akshay Jadhav', 25, 'aksj@gmai.com', 'Male', 'Kharghar', '8779904687', '1992-11-17', '/resources/2018/feb/2.jpg', '7-8PM', 'Active');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `package`
--
ALTER TABLE `package`
  ADD PRIMARY KEY (`pkgId`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`paymentId`),
  ADD KEY `payment_ibfk_1` (`regId`),
  ADD KEY `pkgId` (`pkgId`);

--
-- Indexes for table `paymentHistory`
--
ALTER TABLE `paymentHistory`
  ADD PRIMARY KEY (`id`),
  ADD KEY `paymentId` (`paymentId`),
  ADD KEY `paymentHistory_ibfk_1` (`regId`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`regId`),
  ADD KEY `paymentId` (`paymentId`),
  ADD KEY `pkgId` (`pkgId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `package`
--
ALTER TABLE `package`
  MODIFY `pkgId` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
  MODIFY `paymentId` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `paymentHistory`
--
ALTER TABLE `paymentHistory`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `regId` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
