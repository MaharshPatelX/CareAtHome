-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Mar 28, 2019 at 03:27 PM
-- Server version: 5.7.23
-- PHP Version: 7.2.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `careathome`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_master`
--

DROP TABLE IF EXISTS `admin_master`;
CREATE TABLE IF NOT EXISTS `admin_master` (
  `adminid` int(11) NOT NULL AUTO_INCREMENT,
  `uname` varchar(30) NOT NULL,
  `fname` varchar(15) NOT NULL,
  `lname` varchar(15) NOT NULL,
  `pwd` varchar(20) NOT NULL,
  `dateofreg` date NOT NULL,
  `adminpic` varchar(200) NOT NULL,
  `isactive` varchar(3) NOT NULL,
  `lseen` datetime NOT NULL,
  `vcnt` int(11) NOT NULL,
  PRIMARY KEY (`adminid`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin_master`
--

INSERT INTO `admin_master` (`adminid`, `uname`, `fname`, `lname`, `pwd`, `dateofreg`, `adminpic`, `isactive`, `lseen`, `vcnt`) VALUES
(5, 'maharsh_123', 'Maharsh', 'Patel', '123456789', '2019-02-02', 'maharsh.jpg', 'yes', '2019-02-02 01:08:06', 0),
(6, 'bhavin_123', 'Bhavin', 'Patel', '12345678', '2019-02-06', 'bhavin.jpg', 'yes', '2019-02-06 15:32:29', 0),
(7, 'ayush_123', 'ayush', 'patel', '12345678', '2019-02-04', 'ayush.jpg', 'no', '2019-02-06 16:33:38', 1),
(8, 'mohit_123', 'mohit', 'patel', '12345678', '2019-02-06', 'mohit.jpg', 'yes', '2019-02-06 19:42:40', 0);

-- --------------------------------------------------------

--
-- Table structure for table `area_master`
--

DROP TABLE IF EXISTS `area_master`;
CREATE TABLE IF NOT EXISTS `area_master` (
  `areaid` int(11) NOT NULL AUTO_INCREMENT,
  `areaname` varchar(20) NOT NULL,
  `city` varchar(10) NOT NULL,
  PRIMARY KEY (`areaid`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `area_master`
--

INSERT INTO `area_master` (`areaid`, `areaname`, `city`) VALUES
(8, 'memnagar', 'ahmedabad'),
(9, 'maninagar', 'ahmedabad'),
(10, 'anjli', 'ahmedabad'),
(11, 'bapunagar', 'ahmedabad');

-- --------------------------------------------------------

--
-- Table structure for table `caretakerappointment`
--

DROP TABLE IF EXISTS `caretakerappointment`;
CREATE TABLE IF NOT EXISTS `caretakerappointment` (
  `caretakerappointmentid` int(11) NOT NULL AUTO_INCREMENT,
  `caretkrid` int(11) NOT NULL,
  `fromdate` date NOT NULL,
  `todate` date NOT NULL,
  `timestart` time NOT NULL,
  `timeend` time NOT NULL,
  `appointmentdetails` varchar(200) NOT NULL,
  `memid` int(11) NOT NULL,
  `isconfirm` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`caretakerappointmentid`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `caretakerappointment`
--

INSERT INTO `caretakerappointment` (`caretakerappointmentid`, `caretkrid`, `fromdate`, `todate`, `timestart`, `timeend`, `appointmentdetails`, `memid`, `isconfirm`) VALUES
(8, 1, '2019-02-03', '2019-02-22', '04:05:00', '05:05:00', 'fever', 42, 'Pending'),
(13, 1, '2019-03-30', '2019-04-19', '11:00:00', '12:00:00', 'insulation', 41, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `caretaker_master`
--

DROP TABLE IF EXISTS `caretaker_master`;
CREATE TABLE IF NOT EXISTS `caretaker_master` (
  `caretkrid` int(11) NOT NULL AUTO_INCREMENT,
  `patientmanaid` int(11) DEFAULT NULL,
  `caretakename` varchar(50) NOT NULL,
  `email` varchar(30) NOT NULL,
  `contact` int(11) NOT NULL,
  `uname` varchar(30) NOT NULL,
  `pwd` varchar(50) NOT NULL,
  `caretakepic` varchar(200) NOT NULL,
  `caretakercontact` varchar(30) NOT NULL,
  `services` varchar(50) NOT NULL,
  `charges` int(11) NOT NULL,
  `areaid` int(11) NOT NULL,
  `memid` int(11) NOT NULL,
  `lcnt` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`caretkrid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `caretaker_master`
--

INSERT INTO `caretaker_master` (`caretkrid`, `patientmanaid`, `caretakename`, `email`, `contact`, `uname`, `pwd`, `caretakepic`, `caretakercontact`, `services`, `charges`, `areaid`, `memid`, `lcnt`) VALUES
(1, 1, 'Dhruvin', 'dhruvin32@gmail.com', 992500601, 'dhruvin_123', 'dh123', 'caretaker2.jpg', '9571568940', 'bathing & eating', 500, 11, 5, '0');

-- --------------------------------------------------------

--
-- Table structure for table `delivery_master`
--

DROP TABLE IF EXISTS `delivery_master`;
CREATE TABLE IF NOT EXISTS `delivery_master` (
  `deliveryid` int(11) NOT NULL AUTO_INCREMENT,
  `surproid` int(11) DEFAULT NULL,
  `testid` int(11) DEFAULT NULL,
  `madid` int(11) DEFAULT NULL,
  `deliverypername` varchar(30) NOT NULL,
  `email` varchar(50) NOT NULL,
  `contact` varchar(30) NOT NULL,
  `uname` varchar(15) NOT NULL,
  `pwd` varchar(20) NOT NULL,
  `deliveryperpic` varchar(200) NOT NULL,
  `ratings` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`deliveryid`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `delivery_master`
--

INSERT INTO `delivery_master` (`deliveryid`, `surproid`, `testid`, `madid`, `deliverypername`, `email`, `contact`, `uname`, `pwd`, `deliveryperpic`, `ratings`) VALUES
(7, NULL, NULL, NULL, 'ramukaka', 'ramu@gmail.com', '9422553910', 'ramu123', '12345678', 'ramu.jpg', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `docpre`
--

DROP TABLE IF EXISTS `docpre`;
CREATE TABLE IF NOT EXISTS `docpre` (
  `prescid` int(11) NOT NULL AUTO_INCREMENT,
  `memid` int(11) NOT NULL,
  `docid` int(11) NOT NULL,
  `prescription` varchar(200) NOT NULL,
  PRIMARY KEY (`prescid`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `docpre`
--

INSERT INTO `docpre` (`prescid`, `memid`, `docid`, `prescription`) VALUES
(2, 41, 21, 'asp4.pdf');

-- --------------------------------------------------------

--
-- Table structure for table `doctor`
--

DROP TABLE IF EXISTS `doctor`;
CREATE TABLE IF NOT EXISTS `doctor` (
  `doctorid` int(11) NOT NULL AUTO_INCREMENT,
  `docfname` varchar(30) NOT NULL,
  `doclname` varchar(30) NOT NULL,
  `lastdegree` varchar(200) NOT NULL,
  `docpic` varchar(200) NOT NULL,
  `experience` varchar(15) NOT NULL,
  `lcnt` int(11) NOT NULL,
  `viewcnt` int(11) NOT NULL,
  `doreg` date NOT NULL,
  `uname` varchar(30) NOT NULL,
  `pwd` varchar(20) NOT NULL,
  `contact` varchar(30) NOT NULL,
  `email` varchar(50) NOT NULL,
  `gender` varchar(6) NOT NULL,
  `isactive` varchar(3) NOT NULL,
  `degree_cer` varchar(200) NOT NULL,
  `verified` varchar(3) NOT NULL,
  `dcname` varchar(30) NOT NULL,
  `available` varchar(3) NOT NULL,
  PRIMARY KEY (`doctorid`),
  KEY `dcname` (`dcname`)
) ENGINE=MyISAM AUTO_INCREMENT=39 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `doctor`
--

INSERT INTO `doctor` (`doctorid`, `docfname`, `doclname`, `lastdegree`, `docpic`, `experience`, `lcnt`, `viewcnt`, `doreg`, `uname`, `pwd`, `contact`, `email`, `gender`, `isactive`, `degree_cer`, `verified`, `dcname`, `available`) VALUES
(21, 'Sanjay', 'shah', 'abc.jpg', 'd1.jpg', '3', 1, 100, '2019-02-02', 'sanjay123', '12345678', '9535536274', 'avc_xyz@gmail.com', 'Male', 'Yes', 'abc.jpg', 'Yes', 'Audiologist', 'Yes'),
(23, 'Saurabh', 'Goyal', 'abc.jpg', 'd3.png', '15', 1, 100, '2019-02-03', 'saurabh123', '12345678', '9624079892', 'saurabh123@gmail.com', 'Male', 'Yes', 'ab.jpg', 'Yes', 'Orthopedic Surgeon', 'Yes'),
(38, 'maharsh', 'patel', '1.bhavin.........cover.pdf', 'd2.jpg', '2', 1, 100, '2019-02-03', 'abcdef', '12345678', '8984579548', 'abcdef@gmail.com', 'Male', 'Yes', 'a.png', 'Yes', 'Infectious Disease Specialist', 'Yes');

-- --------------------------------------------------------

--
-- Table structure for table `doctorappointment`
--

DROP TABLE IF EXISTS `doctorappointment`;
CREATE TABLE IF NOT EXISTS `doctorappointment` (
  `doctorappointmentid` int(11) NOT NULL AUTO_INCREMENT,
  `doctorid` int(11) NOT NULL,
  `memid` int(11) NOT NULL,
  `dateofappointment` date NOT NULL,
  `appointmenttime` time NOT NULL,
  `Appointmenttype` varchar(3) NOT NULL,
  `Isconform` varchar(10) DEFAULT NULL,
  `Rejectedreason` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`doctorappointmentid`),
  KEY `memid` (`memid`),
  KEY `doctorid` (`doctorid`)
) ENGINE=MyISAM AUTO_INCREMENT=72 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `doctorappointment`
--

INSERT INTO `doctorappointment` (`doctorappointmentid`, `doctorid`, `memid`, `dateofappointment`, `appointmenttime`, `Appointmenttype`, `Isconform`, `Rejectedreason`) VALUES
(71, 23, 41, '2019-03-23', '11:15:00', 'New', 'yes', NULL),
(70, 21, 41, '2019-03-23', '11:15:00', 'New', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `doctorcategory`
--

DROP TABLE IF EXISTS `doctorcategory`;
CREATE TABLE IF NOT EXISTS `doctorcategory` (
  `dcid` int(11) NOT NULL AUTO_INCREMENT,
  `dcname` varchar(50) NOT NULL,
  PRIMARY KEY (`dcid`)
) ENGINE=MyISAM AUTO_INCREMENT=34 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `doctorcategory`
--

INSERT INTO `doctorcategory` (`dcid`, `dcname`) VALUES
(5, 'Audiologist'),
(6, 'Orthopedic Surgeon'),
(7, 'Allergist'),
(8, 'Anesthesiologist'),
(9, 'Cardiologist'),
(10, 'Dentist'),
(11, 'Dermatologist'),
(12, 'Endocrinologist'),
(13, 'Epidemiologist'),
(14, 'Gynecologist'),
(15, 'Immunologist'),
(16, 'Infectious Disease Specialist'),
(17, 'Internal Medicine Specialist'),
(18, 'Medical Geneticist'),
(19, 'Microbiologist'),
(20, 'Neonatologist'),
(21, 'Neurologist'),
(22, 'Obstetrician'),
(23, 'Oncologist'),
(24, 'ENT Specialist'),
(25, 'Pediatrician'),
(26, 'Physiologist'),
(27, 'Plastic Surgeon'),
(28, 'Podiatrist'),
(29, 'Psychiatrist'),
(30, 'Radiologist'),
(31, 'Rheumatologist'),
(32, 'Surgeon'),
(33, 'Urologist');

-- --------------------------------------------------------

--
-- Table structure for table `lab`
--

DROP TABLE IF EXISTS `lab`;
CREATE TABLE IF NOT EXISTS `lab` (
  `labid` int(11) NOT NULL AUTO_INCREMENT,
  `labname` varchar(60) NOT NULL,
  `contactno` varchar(10) NOT NULL,
  `uname` varchar(30) NOT NULL,
  `pwd` varchar(20) NOT NULL,
  `dateofsrt` datetime NOT NULL,
  `dateodact` datetime NOT NULL,
  `address` varchar(100) NOT NULL,
  `email` varchar(50) NOT NULL,
  `labpic` varchar(200) NOT NULL,
  `areaid` int(11) NOT NULL,
  PRIMARY KEY (`labid`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `lab`
--

INSERT INTO `lab` (`labid`, `labname`, `contactno`, `uname`, `pwd`, `dateofsrt`, `dateodact`, `address`, `email`, `labpic`, `areaid`) VALUES
(1, 'green cross', '9825006017', 'greencross', '12345678', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 'greencrosslab23@gmail.com', 'green cross.jpg', 8),
(2, 'navjivan', '9825006013', 'vidhilabs', '12345678', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 'vidhilab123@gmail.com', 'vidhi labs.jpg', 8),
(3, 'red cross', '9825006018', 'redcross', 'red', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 'redcross32@gmai.com', 'lab2.jpg', 11),
(4, 'tulsi lab', '9825006017', 'tulsi lab', 'tuli', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 'tulsilab34@gmail.com', 'lab4.jpg', 11);

-- --------------------------------------------------------

--
-- Table structure for table `labreport`
--

DROP TABLE IF EXISTS `labreport`;
CREATE TABLE IF NOT EXISTS `labreport` (
  `reportid` int(11) NOT NULL AUTO_INCREMENT,
  `memid` int(11) NOT NULL,
  `labid` int(11) NOT NULL,
  `report` varchar(200) NOT NULL,
  PRIMARY KEY (`reportid`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `labreport`
--

INSERT INTO `labreport` (`reportid`, `memid`, `labid`, `report`) VALUES
(17, 41, 1, 'asp6.pdf'),
(19, 41, 1, 'asp5.pdf'),
(20, 41, 1, 'Practical 5.docx');

-- --------------------------------------------------------

--
-- Table structure for table `labtype`
--

DROP TABLE IF EXISTS `labtype`;
CREATE TABLE IF NOT EXISTS `labtype` (
  `labtest_id` int(11) NOT NULL AUTO_INCREMENT,
  `labtest_name` varchar(100) NOT NULL,
  `price` varchar(50) NOT NULL,
  PRIMARY KEY (`labtest_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `labtype`
--

INSERT INTO `labtype` (`labtest_id`, `labtest_name`, `price`) VALUES
(1, 'T3 T4 TSH', '100'),
(2, 'Serum B12', '1000'),
(3, 'CBC Test (Complete B', '1200'),
(4, ' Lipid Profile', '1500'),
(5, 'TSH Test', '500'),
(6, 'Triple Marker Test', '700');

-- --------------------------------------------------------

--
-- Table structure for table `lab_appo`
--

DROP TABLE IF EXISTS `lab_appo`;
CREATE TABLE IF NOT EXISTS `lab_appo` (
  `appoid` int(11) NOT NULL AUTO_INCREMENT,
  `labid` int(11) NOT NULL,
  `labname` varchar(50) NOT NULL,
  `Appointmentdate` date NOT NULL,
  `Appointmenttime` time NOT NULL,
  `memid` int(11) NOT NULL,
  `Isnew` varchar(3) NOT NULL,
  `labtest_name` varchar(20) NOT NULL,
  `Isconform` varchar(5) NOT NULL,
  PRIMARY KEY (`appoid`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `lab_appo`
--

INSERT INTO `lab_appo` (`appoid`, `labid`, `labname`, `Appointmentdate`, `Appointmenttime`, `memid`, `Isnew`, `labtest_name`, `Isconform`) VALUES
(1, 0, 'green cross', '2018-12-18', '01:00:00', 10, 'No', '', 'Yes'),
(2, 0, '2', '2018-12-22', '13:00:00', 12, 'Yes', '', 'No'),
(4, 0, 'tulsi lab', '2018-12-25', '10:30:00', 41, 'No', '', 'Yes'),
(5, 0, 'tulsi lab', '2018-12-26', '10:00:00', 9, 'No', '', 'Yes'),
(6, 3, 'red cross', '2018-12-31', '07:00:00', 42, 'Yes', '', 'No'),
(7, 0, 'green cross', '2018-12-29', '09:00:00', 7, 'No', '', 'Yes'),
(8, 0, 'navjivan', '2019-01-01', '09:00:00', 6, 'No', '', 'Yes'),
(12, 0, 'tulsi lab', '2019-02-18', '10:00:00', 41, 'No', 'Triple Marker Test', 'Yes'),
(18, 1, '', '2019-03-23', '11:15:00', 41, 'No', 'Serum B12', 'Yes');

-- --------------------------------------------------------

--
-- Table structure for table `medicalorder`
--

DROP TABLE IF EXISTS `medicalorder`;
CREATE TABLE IF NOT EXISTS `medicalorder` (
  `orderid` int(11) NOT NULL AUTO_INCREMENT,
  `dateoforder` date NOT NULL,
  `memid` int(11) NOT NULL,
  `medid` int(11) NOT NULL,
  PRIMARY KEY (`orderid`)
) ENGINE=MyISAM AUTO_INCREMENT=39 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `medicalorder`
--

INSERT INTO `medicalorder` (`orderid`, `dateoforder`, `memid`, `medid`) VALUES
(1, '2019-02-05', 43, 0),
(2, '2019-02-05', 43, 0),
(3, '2019-02-05', 43, 0),
(4, '2019-02-05', 43, 0),
(5, '2019-02-05', 43, 0),
(6, '2019-02-05', 43, 0),
(7, '2019-02-05', 43, 0),
(8, '2019-02-05', 43, 0),
(9, '2019-02-05', 43, 0),
(10, '2019-02-05', 43, 0),
(11, '2019-02-05', 43, 0),
(12, '2019-02-05', 43, 0),
(13, '2019-02-05', 43, 0),
(14, '2019-02-05', 43, 0),
(15, '2019-02-05', 43, 0),
(16, '2019-02-05', 43, 0),
(17, '2019-02-05', 43, 0),
(18, '2019-02-05', 43, 0),
(19, '2019-02-05', 43, 0),
(20, '2019-02-05', 42, 0),
(21, '2019-02-06', 41, 0),
(22, '2019-02-07', 41, 0),
(23, '2019-02-07', 41, 0),
(24, '2019-02-07', 41, 0),
(25, '2019-02-15', 41, 0),
(26, '2019-02-15', 41, 0),
(27, '2019-02-15', 41, 0),
(28, '2019-02-15', 41, 0),
(29, '2019-02-15', 41, 0),
(30, '2019-02-16', 41, 0),
(31, '2019-02-23', 41, 1),
(32, '2019-02-23', 41, 4),
(33, '2019-02-23', 41, 4),
(34, '2019-02-23', 41, 4),
(35, '2019-02-23', 41, 4),
(36, '2019-03-22', 41, 3),
(37, '2019-03-22', 41, 3),
(38, '2019-03-22', 41, 3);

-- --------------------------------------------------------

--
-- Table structure for table `medical_store`
--

DROP TABLE IF EXISTS `medical_store`;
CREATE TABLE IF NOT EXISTS `medical_store` (
  `medistoid` int(11) NOT NULL AUTO_INCREMENT,
  `areaid` int(11) NOT NULL,
  `medicalstorename` varchar(50) NOT NULL,
  `contact` varchar(30) NOT NULL,
  `email` varchar(50) NOT NULL,
  `uname` varchar(30) NOT NULL,
  `pwd` varchar(20) NOT NULL,
  `dateofreg` datetime NOT NULL,
  `dateofl` datetime NOT NULL,
  `vcnt` int(11) NOT NULL,
  `certificate` varchar(100) NOT NULL,
  `verified` varchar(3) NOT NULL,
  `isactive` varchar(3) NOT NULL,
  `available` varchar(3) NOT NULL,
  `address` varchar(100) NOT NULL,
  `img` varchar(200) NOT NULL,
  PRIMARY KEY (`medistoid`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `medical_store`
--

INSERT INTO `medical_store` (`medistoid`, `areaid`, `medicalstorename`, `contact`, `email`, `uname`, `pwd`, `dateofreg`, `dateofl`, `vcnt`, `certificate`, `verified`, `isactive`, `available`, `address`, `img`) VALUES
(15, 1, 'vikas', '9478486789', 'vikas@gmail.com', 'vikas1', '12345678', '2019-02-02 14:41:59', '2019-02-02 14:41:59', 100, 'abc.pdf', 'yes', 'Yes', 'yes', 'Plot No-216, T.P Scheme-1, Near Vastrapur Lake, Vastrapur, Ahmedabad, Gujarat', 'xyz.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `medicine`
--

DROP TABLE IF EXISTS `medicine`;
CREATE TABLE IF NOT EXISTS `medicine` (
  `medid` int(11) NOT NULL AUTO_INCREMENT,
  `medtype` varchar(40) NOT NULL,
  `medname` varchar(40) NOT NULL,
  PRIMARY KEY (`medid`)
) ENGINE=MyISAM AUTO_INCREMENT=22 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `medicine`
--

INSERT INTO `medicine` (`medid`, `medtype`, `medname`) VALUES
(21, 'Lithium', 'soralol'),
(20, 'Anti-obesity medication', 'amiodarone'),
(19, 'Drug', 'atorvastation'),
(18, 'Lithium', 'escitalopram'),
(17, 'Lithium', 'soralol'),
(16, 'Pharmacology', 'waefarin');

-- --------------------------------------------------------

--
-- Table structure for table `medicine_master`
--

DROP TABLE IF EXISTS `medicine_master`;
CREATE TABLE IF NOT EXISTS `medicine_master` (
  `medid` int(11) NOT NULL AUTO_INCREMENT,
  `medpic` varchar(500) NOT NULL,
  `medtype` varchar(40) NOT NULL,
  `medinename` varchar(40) NOT NULL,
  `meddis` varchar(500) NOT NULL,
  `Mprice` int(11) NOT NULL,
  PRIMARY KEY (`medid`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `medicine_master`
--

INSERT INTO `medicine_master` (`medid`, `medpic`, `medtype`, `medinename`, `meddis`, `Mprice`) VALUES
(8, 'template-mac.png', 'liquid', 'okacet', 'headache and stomacheache', 29),
(7, 'template-mac.png', 'liquid', 'okacet', 'headache and stomacheache', 29),
(3, '2.jpg', 'Drug', 'Soralol', '', 30),
(4, '3.jfif', 'Drug', 'Celecoxib', '', 40),
(5, '4.jpg', 'Drug', 'Okacet', '', 50),
(9, 'template-mac.png', 'liquid', 'okacet', 'headache and stomacheache', 29),
(10, 'Jay.jpg', 'liquid', 'okacet', 'headache and stomacheache', 234);

-- --------------------------------------------------------

--
-- Table structure for table `med_cart`
--

DROP TABLE IF EXISTS `med_cart`;
CREATE TABLE IF NOT EXISTS `med_cart` (
  `Tid` int(11) NOT NULL AUTO_INCREMENT,
  `Mid` int(11) NOT NULL,
  `Mname` varchar(20) NOT NULL,
  `Price` varchar(50) NOT NULL,
  `Mimg` varchar(500) NOT NULL,
  `Mtype` varchar(40) NOT NULL,
  `Qty` varchar(10) NOT NULL,
  `PQ` varchar(50) NOT NULL,
  PRIMARY KEY (`Tid`)
) ENGINE=MyISAM AUTO_INCREMENT=31 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `memberorderdetail`
--

DROP TABLE IF EXISTS `memberorderdetail`;
CREATE TABLE IF NOT EXISTS `memberorderdetail` (
  `omid` int(11) NOT NULL AUTO_INCREMENT,
  `orderid` int(11) NOT NULL,
  `medistoid` int(11) NOT NULL,
  `memid` int(11) NOT NULL,
  `Mid` int(11) NOT NULL,
  `Mname` varchar(20) NOT NULL,
  `Mtype` varchar(20) NOT NULL,
  `Price` varchar(50) NOT NULL,
  `Mimg` varchar(500) NOT NULL,
  `Qty` varchar(10) NOT NULL,
  `PQ` varchar(50) NOT NULL,
  `Isnew` varchar(5) NOT NULL,
  PRIMARY KEY (`omid`)
) ENGINE=MyISAM AUTO_INCREMENT=51 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `memberorderdetail`
--

INSERT INTO `memberorderdetail` (`omid`, `orderid`, `medistoid`, `memid`, `Mid`, `Mname`, `Mtype`, `Price`, `Mimg`, `Qty`, `PQ`, `Isnew`) VALUES
(2, 1, 15, 41, 4, 'Soralol', 'Drug', '30', '2.jpg', '1', '30', 'Yes'),
(46, 37, 15, 41, 1, 'Soralol', 'Drug', '30', '2.jpg', '1', '30', 'No');

-- --------------------------------------------------------

--
-- Table structure for table `member_master`
--

DROP TABLE IF EXISTS `member_master`;
CREATE TABLE IF NOT EXISTS `member_master` (
  `memid` int(11) NOT NULL AUTO_INCREMENT,
  `areaid` int(11) NOT NULL,
  `memfname` varchar(25) NOT NULL,
  `memlname` varchar(15) NOT NULL,
  `uname` varchar(30) NOT NULL,
  `pwd` varchar(20) NOT NULL,
  `doreg` date NOT NULL,
  `dateoflv` date NOT NULL,
  `vcnt` int(11) NOT NULL,
  `contact` varchar(30) NOT NULL,
  `email` varchar(50) NOT NULL,
  `issmoking` varchar(3) NOT NULL,
  `isdiabic` varchar(3) NOT NULL,
  `bloodpressure` varchar(5) NOT NULL,
  `gender` varchar(6) NOT NULL,
  `mempic` varchar(200) NOT NULL,
  `address` varchar(100) NOT NULL,
  `isactive` varchar(3) NOT NULL,
  PRIMARY KEY (`memid`)
) ENGINE=MyISAM AUTO_INCREMENT=48 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `member_master`
--

INSERT INTO `member_master` (`memid`, `areaid`, `memfname`, `memlname`, `uname`, `pwd`, `doreg`, `dateoflv`, `vcnt`, `contact`, `email`, `issmoking`, `isdiabic`, `bloodpressure`, `gender`, `mempic`, `address`, `isactive`) VALUES
(41, 9, 'Rameshe', 'Patel', 'ram_123', '12345678', '2019-02-02', '2019-02-02', 1, '6270256251', 'ram123@gmail.com', 'No', 'Yes', 'Yes', 'Male', 'ayushi.jpg', '23,dayapark srkhej cross road', 'yes'),
(42, 9, 'Sita', 'Shah', 'sita123', '12345678', '2019-02-02', '2019-02-02', 1, '9246273663', 'sita123@gmail.com', 'Yes', 'No', 'No', 'Female', 'ayush.jpg', 'a-1  J5 bunglows ', 'yes'),
(43, 10, 'dhruvin', 'Shah', 'dhruvin12345', 'dhruvin12345', '2019-02-04', '2019-02-04', 1, '8041447636', 'dhruvinsh@gmail.com', 'No', 'Yes', 'No', 'Male', 'img 3.jpg', 'bunglows', 'yes'),
(44, 10, 'maharsh', 'patel', 'waedsfrgthyj', '12345678', '2019-02-07', '2019-02-07', 1, '8588478558', 'frvfgbf@sdfgbfb.com', 'Yes', 'Yes', 'No', 'Female', 'IMG_20181214_231930.jpg', 'bunglows', 'yes'),
(45, 10, 'maharsh', 'patel', 'waedsfrgthyjefr', '12345678', '2019-02-07', '2019-02-07', 1, '8588488558', 'frvfgbf@sdfgbdffb.com', 'Yes', 'Yes', 'No', 'Female', 'IMG_20181214_232130.jpg', 'bunglows', 'yes'),
(46, 10, 'maharsh', 'patel', '65sd1fg5fr1esd', '12345678', '2019-02-07', '2019-02-07', 1, '6042478186', 'dfgbvdfgb@dsfgkv.com', 'Yes', 'Yes', 'Yes', 'Male', '190978.jpg', 'bunglows', 'yes'),
(47, 11, 'Manoj', 'patel', 'manoj123', 'manoj123', '2019-03-22', '2019-03-22', 1, '8921451293', 'manoj123@gmail.com', 'No', 'No', 'Yes', 'Male', 'ayush.jpg', 'j-5 shili bunglows', 'yes');

-- --------------------------------------------------------

--
-- Table structure for table `member_prescription`
--

DROP TABLE IF EXISTS `member_prescription`;
CREATE TABLE IF NOT EXISTS `member_prescription` (
  `member_prescriptionid` int(11) NOT NULL AUTO_INCREMENT,
  `memid` int(11) NOT NULL,
  `doctorid` int(11) NOT NULL,
  `prescription` varchar(500) NOT NULL,
  `datentime` datetime NOT NULL,
  PRIMARY KEY (`member_prescriptionid`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `member_prescription`
--

INSERT INTO `member_prescription` (`member_prescriptionid`, `memid`, `doctorid`, `prescription`, `datentime`) VALUES
(1, 41, 23, 'Dhruvin.PNG', '2019-02-05 19:44:40'),
(3, 41, 23, '1.bhavin.........cover.pdf', '2019-02-07 03:30:27'),
(4, 41, 23, '4.bhavin............INDEX.pdf', '2019-02-07 03:36:20'),
(5, 41, 21, 'Practical 3.docx', '2019-03-22 04:03:34');

-- --------------------------------------------------------

--
-- Table structure for table `patient_manager`
--

DROP TABLE IF EXISTS `patient_manager`;
CREATE TABLE IF NOT EXISTS `patient_manager` (
  `patientmanaid` int(11) NOT NULL AUTO_INCREMENT,
  `regid` int(11) NOT NULL,
  `patientmananame` varchar(60) NOT NULL,
  `contactno` varchar(30) NOT NULL,
  `email` varchar(50) NOT NULL,
  `gender` varchar(5) NOT NULL,
  `likecounter` int(11) NOT NULL,
  `verified` varchar(200) NOT NULL,
  `uname` varchar(30) NOT NULL,
  `pwd` varchar(20) NOT NULL,
  `isactive` varchar(3) NOT NULL,
  PRIMARY KEY (`patientmanaid`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `patient_manager`
--

INSERT INTO `patient_manager` (`patientmanaid`, `regid`, `patientmananame`, `contactno`, `email`, `gender`, `likecounter`, `verified`, `uname`, `pwd`, `isactive`) VALUES
(6, 2, 'Dhruvin', '8547857648', 'shahdhruv5@gmail.com', 'male', 645, 'yes', 'dhruvi335', '12345678', 'yes');

-- --------------------------------------------------------

--
-- Table structure for table `purchase`
--

DROP TABLE IF EXISTS `purchase`;
CREATE TABLE IF NOT EXISTS `purchase` (
  `purid` int(11) NOT NULL AUTO_INCREMENT,
  `memid` int(11) NOT NULL,
  `surgid` int(11) NOT NULL,
  `surproname` varchar(50) NOT NULL,
  `price` varchar(11) NOT NULL,
  PRIMARY KEY (`purid`),
  KEY `memid` (`memid`),
  KEY `surgid` (`surgid`)
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `purchase`
--

INSERT INTO `purchase` (`purid`, `memid`, `surgid`, `surproname`, `price`) VALUES
(37, 38, 9, 'portable chair', '5000'),
(38, 38, 9, 'portable chair', '5000'),
(39, 39, 9, 'dentle chair', '5000'),
(40, 39, 9, 'dentle chair', '5000'),
(41, 41, 9, 'portable chair', '5000'),
(42, 41, 9, 'portable chair', '5000'),
(43, 43, 9, 'portable chair', '5000'),
(44, 43, 9, 'portable chair', '5000'),
(45, 41, 9, 'remote control bad', '5000'),
(46, 41, 9, 'remote control bad', '5000'),
(47, 41, 9, 'remote control bad', '5000'),
(48, 41, 9, 'remote control bad', '5000'),
(49, 41, 9, 'remote control bad', '5000'),
(50, 41, 9, 'remote control bad', '5000'),
(51, 41, 9, 'portable chair', '5000'),
(52, 41, 9, 'portable chair', '5000');

-- --------------------------------------------------------

--
-- Table structure for table `rent`
--

DROP TABLE IF EXISTS `rent`;
CREATE TABLE IF NOT EXISTS `rent` (
  `rentid` int(11) NOT NULL AUTO_INCREMENT,
  `surgid` int(11) NOT NULL,
  `fromdate` date NOT NULL,
  `todate` date NOT NULL,
  `deposit` int(11) NOT NULL,
  `memid` int(11) NOT NULL,
  PRIMARY KEY (`rentid`),
  KEY `memid` (`memid`),
  KEY `surgid` (`surgid`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rent`
--

INSERT INTO `rent` (`rentid`, `surgid`, `fromdate`, `todate`, `deposit`, `memid`) VALUES
(1, 9, '2019-02-09', '2019-02-15', 100, 41),
(2, 9, '2019-03-22', '2019-03-23', 100, 41);

-- --------------------------------------------------------

--
-- Table structure for table `success story`
--

DROP TABLE IF EXISTS `success story`;
CREATE TABLE IF NOT EXISTS `success story` (
  `ssid` varchar(500) NOT NULL DEFAULT '',
  `memid` int(11) NOT NULL,
  `Date of story` date NOT NULL,
  `time of story` time NOT NULL,
  `success story` varchar(500) NOT NULL,
  `image1` varchar(200) NOT NULL,
  `image2` varchar(200) NOT NULL,
  `image3` varchar(200) NOT NULL,
  PRIMARY KEY (`ssid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `surgicalstore`
--

DROP TABLE IF EXISTS `surgicalstore`;
CREATE TABLE IF NOT EXISTS `surgicalstore` (
  `surgid` int(11) NOT NULL AUTO_INCREMENT,
  `areaid` int(11) NOT NULL,
  `surstorename` varchar(10) NOT NULL,
  `contactno` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `uname` varchar(50) NOT NULL,
  `pwd` varchar(30) NOT NULL,
  `dateofreg` datetime NOT NULL,
  `dateoflv` datetime NOT NULL,
  `img` varchar(200) NOT NULL,
  PRIMARY KEY (`surgid`),
  KEY `areaid` (`areaid`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `surgicalstore`
--

INSERT INTO `surgicalstore` (`surgid`, `areaid`, `surstorename`, `contactno`, `email`, `uname`, `pwd`, `dateofreg`, `dateoflv`, `img`) VALUES
(9, 8, 'ABC', '9638868896', 'abc123@gmail.com', 'abc123', 'abc123', '2019-01-01 20:51:48', '2019-01-31 19:50:48', 'sur1.jpg'),
(10, 9, 'dantara', '928774455', 'maharsh@gmail.com', 'dantara123', '123456789', '2019-01-01 20:50:50', '2019-01-01 22:56:55', 'sur2.jpg'),
(11, 10, 'fast', '9878354566', 'fast123@gmail.com', 'fast@123', 'fast123', '2019-01-01 22:53:47', '2019-01-26 19:31:17', 'sur4.jpg'),
(12, 11, 'vshakti', '9985647512', 'vshkti123@gmail.com', 'vshkti123', 'vshkti123', '2019-01-01 19:48:47', '2019-01-31 20:48:47', 'sur5.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `surproduct`
--

DROP TABLE IF EXISTS `surproduct`;
CREATE TABLE IF NOT EXISTS `surproduct` (
  `surproid` int(11) NOT NULL AUTO_INCREMENT,
  `surgid` int(11) NOT NULL,
  `surproname` varchar(60) NOT NULL,
  `surprodec` varchar(500) NOT NULL,
  `selling_price` int(11) NOT NULL,
  `rentpri` int(11) NOT NULL,
  `rentdur` varchar(30) NOT NULL,
  `deposit` int(11) NOT NULL,
  `stock` varchar(10) NOT NULL,
  `img` varchar(200) NOT NULL,
  PRIMARY KEY (`surproid`),
  KEY `surgid` (`surgid`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `surproduct`
--

INSERT INTO `surproduct` (`surproid`, `surgid`, `surproname`, `surprodec`, `selling_price`, `rentpri`, `rentdur`, `deposit`, `stock`, `img`) VALUES
(9, 9, 'portable chair', 'it is portable and light\r\nweighted chair', 5000, 1500, '', 100, 'Avialable', 'item2.jpg'),
(11, 9, 'remote control bad', 'it is accesible by\r\nremotly.', 100000, 25000, '', 3000, 'Avialable', 'item4.jpg'),
(15, 10, 'dental chair', 'it is scrolled up and down automatically ', 90000, 15000, '', 3500, 'Not Aviala', 'item5.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tempcart`
--

DROP TABLE IF EXISTS `tempcart`;
CREATE TABLE IF NOT EXISTS `tempcart` (
  `tempid` int(11) NOT NULL AUTO_INCREMENT,
  `surproid` int(11) NOT NULL,
  `surgid` int(11) NOT NULL,
  `memid` int(11) NOT NULL,
  `proname` varchar(20) NOT NULL,
  `img` varchar(200) NOT NULL,
  `price` varchar(10) NOT NULL,
  `item_quantity` varchar(11) NOT NULL,
  `total` varchar(20) NOT NULL,
  `Isconform` varchar(5) NOT NULL,
  PRIMARY KEY (`tempid`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tempcart`
--

INSERT INTO `tempcart` (`tempid`, `surproid`, `surgid`, `memid`, `proname`, `img`, `price`, `item_quantity`, `total`, `Isconform`) VALUES
(2, 9, 9, 41, 'Portable Chair', 'item2.jpg', '5000', '1', '5000', 'No'),
(3, 11, 12, 41, 'remote control bad', 'item4.jpg', '100000', '1', '100000', 'Yes'),
(4, 9, 9, 41, 'portable chair', 'item2.jpg', '5000', '1', '5000', 'No'),
(5, 9, 9, 41, 'portable chair', 'item2.jpg', '5000', '1', '5000', 'No'),
(6, 9, 9, 41, 'portable chair', 'item2.jpg', '5000', '1', '5000', 'No'),
(7, 9, 9, 41, 'portable chair', 'item2.jpg', '5000', '1', '5000', 'No'),
(8, 9, 9, 41, 'portable chair', 'item2.jpg', '5000', '1', '5000', 'No'),
(9, 9, 9, 41, 'portable chair', 'item2.jpg', '5000', '1', '5000', 'No'),
(10, 9, 9, 41, 'portable chair', 'item2.jpg', '5000', '1', '5000', 'No'),
(11, 10, 10, 42, 'remote control bad', 'item4.jpg', '100000', '1', '100000', 'Yes');

-- --------------------------------------------------------

--
-- Table structure for table `tempmedicine`
--

DROP TABLE IF EXISTS `tempmedicine`;
CREATE TABLE IF NOT EXISTS `tempmedicine` (
  `TMid` int(11) NOT NULL AUTO_INCREMENT,
  `memid` int(11) NOT NULL,
  `Medid` int(11) NOT NULL,
  `MName` varchar(50) NOT NULL,
  `Mtype` varchar(50) NOT NULL,
  `Mprice` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `PQ` int(11) NOT NULL,
  PRIMARY KEY (`TMid`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tempmedicine`
--

INSERT INTO `tempmedicine` (`TMid`, `memid`, `Medid`, `MName`, `Mtype`, `Mprice`, `quantity`, `PQ`) VALUES
(1, 0, 1, 'Celecoxib', 'Citalopram', 500, 10, 5000),
(11, 0, 2, 'Warfrain', 'Lithium', 20, 22, 440),
(12, 0, 4, 'Celecoxib', 'Citalopram', 40, 15, 600),
(13, 0, 4, 'Celecoxib', 'Citalopram', 40, 15, 600),
(14, 0, 4, 'Celecoxib', 'Citalopram', 40, 15, 600),
(15, 0, 4, 'Celecoxib', 'Citalopram', 40, 15, 600),
(19, 0, 3, 'Soralol', 'Topical', 30, 17, 510),
(20, 0, 2, 'Warfrain', 'Lithium', 20, 22, 440),
(21, 0, 3, 'Soralol', 'Topical', 30, 1, 30),
(22, 0, 3, 'Soralol', 'Topical', 30, 1, 30),
(23, 41, 3, 'Soralol', 'Topical', 30, 1, 30),
(24, 41, 5, 'Okacet', 'liquid', 50, 7, 350);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `surgicalstore`
--
ALTER TABLE `surgicalstore`
  ADD CONSTRAINT `surgicalstore_ibfk_1` FOREIGN KEY (`areaid`) REFERENCES `area_master` (`areaid`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
