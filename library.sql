-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 07, 2020 at 10:47 AM
-- Server version: 10.4.10-MariaDB
-- PHP Version: 7.1.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `library`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `sno` int(11) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `username` varchar(120) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`sno`, `email`, `password`, `username`) VALUES
(1, 'test@test.com', 'test', 'test');

-- --------------------------------------------------------

--
-- Table structure for table `bookdata`
--

CREATE TABLE `bookdata` (
  `BookId` int(11) NOT NULL,
  `BookName` varchar(100) NOT NULL,
  `edition` varchar(100) NOT NULL,
  `type` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bookdata`
--

INSERT INTO `bookdata` (`BookId`, `BookName`, `edition`, `type`) VALUES
(23, 'kahdkjd', 'dskjkjq', 1),
(24, 'KCNBK,M', 'KLBN', 1),
(25, 'vasghnv', 'mansfbaj', 2),
(26, 'fskjd', 'dkjc', 2),
(27, 'kfjsajk', 'LKJDSM', 2),
(28, 'DKJFGB', 'FKHNC', 2);

-- --------------------------------------------------------

--
-- Table structure for table `booksaddinfo`
--

CREATE TABLE `booksaddinfo` (
  `remarks` varchar(1000) NOT NULL,
  `Accession_num` varchar(100) NOT NULL,
  `BookId` int(2) NOT NULL,
  `call_num` varchar(100) NOT NULL,
  `author` varchar(100) NOT NULL,
  `source` varchar(100) NOT NULL,
  `invoice_num` varchar(100) NOT NULL,
  `pandp` varchar(200) NOT NULL,
  `yearofpub` varchar(200) NOT NULL,
  `pages` varchar(20) NOT NULL,
  `booksize` varchar(200) NOT NULL,
  `cost` varchar(50) NOT NULL,
  `date` varchar(200) NOT NULL,
  `slno...` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `booksaddinfo`
--

INSERT INTO `booksaddinfo` (`remarks`, `Accession_num`, `BookId`, `call_num`, `author`, `source`, `invoice_num`, `pandp`, `yearofpub`, `pages`, `booksize`, `cost`, `date`, `slno...`) VALUES
('kdsj', '', 23, 'kajdhkj', 'shdksjd', 'ishvkjd', 'sihkjs', 'kjgd;ak', 'hdkjaf', 'dhkj', 'skjdg', 'dkjnsd', 'asjkajs', 9),
('DFKLB', '', 24, 'KJSDCM', 'LKDBCNJ,', 'DKLHBCN', 'KHNMB ', 'KBCMN', 'FLKBN', 'FKLBC', 'SFKJLBCN', 'FKLBNC', 'CXBMVSK', 10);

-- --------------------------------------------------------

--
-- Table structure for table `booksdata`
--

CREATE TABLE `booksdata` (
  `sno` int(11) NOT NULL,
  `BookGuid` varchar(100) NOT NULL,
  `BookName` int(100) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `stdid` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `booksdata`
--

INSERT INTO `booksdata` (`sno`, `BookGuid`, `BookName`, `status`, `stdid`) VALUES
(189, '2373d18f2', 23, 0, NULL),
(190, '2373d18f1', 23, 0, NULL),
(191, '24c5b6cf1', 24, 0, NULL),
(192, '25f9c8cb1', 25, 0, NULL),
(193, '267920a31', 26, 0, NULL),
(194, '2772b9e11', 27, 0, NULL),
(195, '2888c5a81', 28, 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `joraddinfo`
--

CREATE TABLE `joraddinfo` (
  `BookID` int(20) NOT NULL,
  `dateofpub` varchar(100) NOT NULL,
  `monthofpub` varchar(100) NOT NULL,
  `yearofpub` varchar(100) NOT NULL,
  `number` varchar(100) NOT NULL,
  `dteofrecived` varchar(100) NOT NULL,
  `ordernum` varchar(300) NOT NULL,
  `amount` varchar(100) NOT NULL,
  `libinitials` varchar(250) NOT NULL,
  `remarks` varchar(350) NOT NULL,
  `ddnum` varchar(200) NOT NULL,
  `slno...` bigint(20) UNSIGNED NOT NULL,
  `TITLE` varchar(200) NOT NULL,
  `PERIOD` varchar(200) NOT NULL,
  `PUB` varchar(200) NOT NULL,
  `SUBNo` varchar(250) NOT NULL,
  `Dt` varchar(200) NOT NULL,
  `subrupees` varchar(200) NOT NULL,
  `fromto` varchar(200) NOT NULL,
  `perVol` varchar(200) NOT NULL,
  `Fdt` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `joraddinfo`
--

INSERT INTO `joraddinfo` (`BookID`, `dateofpub`, `monthofpub`, `yearofpub`, `number`, `dteofrecived`, `ordernum`, `amount`, `libinitials`, `remarks`, `ddnum`, `slno...`, `TITLE`, `PERIOD`, `PUB`, `SUBNo`, `Dt`, `subrupees`, `fromto`, `perVol`, `Fdt`) VALUES
(25, 'jhsvfj,', 'jhgdsb', 'jhvds', 'JLsfbjas', 'ADJS', 'daffwfa', 'ydugjvb', 'guj', 'ugwhj', 'AVGJDh', 4, '', '', '', '', '', '', '', '', ''),
(26, 'dfjbmn', 'dkfjn', 'dkjb', 'dkjfbdn', 'sdgm', 'dkjnmd', 'dkjbdn', 'dkjfhn', 'gjksdnm', 'djknc', 5, '', '', 'KDJBSALKJ', 'KJADSBX', 'KJGDS', 'skjgskjd', 'kdjsgc', 'dkjgcv', 'kdjgxc'),
(27, 'LKJBMX', 'KDHLGVNC', 'DLKNX', 'LKDNM', 'LKDN', 'KLNS', 'LKDGNV', 'LKSDNM', 'KLSDJV', 'LKNMS', 6, '', '', 'jgas', 'ljds;hal', ';LDSJ,', 'KJ;DBS', 'LKDM', 'L;DKNM', 'LDSLJ,DMN'),
(28, 'KJF', 'KJBD', 'KJFDN', 'SKJF', 'KJDFN', 'DKJMN', 'DKHBN', 'GKJD', 'DG', 'KJFHCN', 7, '', 'KSJGNDK', 'KDJFNCK', 'KJSDGNK', 'KJDNK', 'KJDS', 'KJFV', 'KJFDNC', 'KJFSDXCN');

-- --------------------------------------------------------

--
-- Table structure for table `stddataa`
--

CREATE TABLE `stddataa` (
  `sno` int(11) NOT NULL,
  `stdid` varchar(30) NOT NULL,
  `stdname` varchar(100) NOT NULL,
  `group` varchar(30) NOT NULL,
  `Books` int(11) NOT NULL,
  `fine` int(100) NOT NULL,
  `type` int(3) NOT NULL,
  `running_fine` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `transaction`
--

CREATE TABLE `transaction` (
  `TranId` int(150) NOT NULL,
  `StdId` varchar(100) NOT NULL,
  `StartDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `BookGiud` varchar(150) NOT NULL,
  `type` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `bookdata`
--
ALTER TABLE `bookdata`
  ADD PRIMARY KEY (`BookId`);

--
-- Indexes for table `booksaddinfo`
--
ALTER TABLE `booksaddinfo`
  ADD UNIQUE KEY `slno...` (`slno...`);

--
-- Indexes for table `booksdata`
--
ALTER TABLE `booksdata`
  ADD PRIMARY KEY (`sno`),
  ADD UNIQUE KEY `BookGuid` (`BookGuid`);

--
-- Indexes for table `joraddinfo`
--
ALTER TABLE `joraddinfo`
  ADD UNIQUE KEY `slno...` (`slno...`);

--
-- Indexes for table `stddataa`
--
ALTER TABLE `stddataa`
  ADD PRIMARY KEY (`sno`),
  ADD UNIQUE KEY `stdid` (`stdid`(25));

--
-- Indexes for table `transaction`
--
ALTER TABLE `transaction`
  ADD PRIMARY KEY (`TranId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `sno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `bookdata`
--
ALTER TABLE `bookdata`
  MODIFY `BookId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `booksaddinfo`
--
ALTER TABLE `booksaddinfo`
  MODIFY `slno...` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `booksdata`
--
ALTER TABLE `booksdata`
  MODIFY `sno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=196;

--
-- AUTO_INCREMENT for table `joraddinfo`
--
ALTER TABLE `joraddinfo`
  MODIFY `slno...` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `stddataa`
--
ALTER TABLE `stddataa`
  MODIFY `sno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `transaction`
--
ALTER TABLE `transaction`
  MODIFY `TranId` int(150) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=86;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
