-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Oct 06, 2018 at 09:14 AM
-- Server version: 5.7.21
-- PHP Version: 5.6.35

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `myjob`
--

-- --------------------------------------------------------

--
-- Table structure for table `apply_tbl`
--

DROP TABLE IF EXISTS `apply_tbl`;
CREATE TABLE IF NOT EXISTS `apply_tbl` (
  `apply_id` int(11) NOT NULL AUTO_INCREMENT,
  `fk_emp_id` varchar(15) NOT NULL,
  `fk_job_id` int(5) NOT NULL,
  `apply_date` date NOT NULL,
  PRIMARY KEY (`apply_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `education_tbl`
--

DROP TABLE IF EXISTS `education_tbl`;
CREATE TABLE IF NOT EXISTS `education_tbl` (
  `edu_id` int(11) NOT NULL AUTO_INCREMENT,
  `fk_emp_id` varchar(15) NOT NULL,
  `emp_qual` varchar(15) NOT NULL,
  `emp_pass_year` int(7) NOT NULL,
  `emp_uni` varchar(15) NOT NULL,
  `emp_exp` int(11) NOT NULL,
  `emp_skill1` varchar(30) NOT NULL,
  `emp_skill2` varchar(30) NOT NULL,
  PRIMARY KEY (`edu_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `employee_tbl`
--

DROP TABLE IF EXISTS `employee_tbl`;
CREATE TABLE IF NOT EXISTS `employee_tbl` (
  `emp_id` varchar(30) NOT NULL,
  `emp_password` varchar(8) NOT NULL,
  `first_name` varchar(10) NOT NULL,
  `last_name` varchar(10) NOT NULL,
  `country` varchar(15) NOT NULL,
  `state` varchar(15) NOT NULL,
  `city` varchar(20) NOT NULL,
  `emp_field` varchar(30) NOT NULL,
  `emp_photo` text NOT NULL,
  PRIMARY KEY (`emp_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employee_tbl`
--

INSERT INTO `employee_tbl` (`emp_id`, `emp_password`, `first_name`, `last_name`, `country`, `state`, `city`, `emp_field`, `emp_photo`) VALUES
('mehul@gmail.com', 'mehul@12', 'mehul', 'chotaliya', 'india', 'gujrat', 'ahmedabad', 'it', ''),
('shahmarmik9@gmail.com', 'marmik@9', 'marmik', 'shah', 'india', 'gujrat', 'Ahemedabad', 'Management', ''),
('nagoriabhay@gmail.com', 'abhay@97', 'abhay', 'nagori', 'india', 'gujrat', 'Ahemedabad', 'Finance', ''),
('maulik@gmail.com', 'maulik@3', 'maulik', 'joshi', 'india', 'gujrat', 'ahmedabd', 'Management', '');

-- --------------------------------------------------------

--
-- Table structure for table `interview_dtl`
--

DROP TABLE IF EXISTS `interview_dtl`;
CREATE TABLE IF NOT EXISTS `interview_dtl` (
  `inter_id` int(11) NOT NULL AUTO_INCREMENT,
  `fk_emp_id` varchar(15) NOT NULL,
  `fk_job_id` int(11) NOT NULL,
  `fk_rec_id` varchar(15) NOT NULL,
  `inter_add` varchar(100) NOT NULL,
  `inter_date` date NOT NULL,
  PRIMARY KEY (`inter_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `job_tbl`
--

DROP TABLE IF EXISTS `job_tbl`;
CREATE TABLE IF NOT EXISTS `job_tbl` (
  `job_id` int(5) NOT NULL AUTO_INCREMENT,
  `fk_rec_id` varchar(15) NOT NULL,
  `job_title` varchar(20) NOT NULL,
  `posted_date` date NOT NULL,
  `skill_req` varchar(30) NOT NULL,
  `job_desc` varchar(30) NOT NULL,
  `salary_min` int(8) NOT NULL,
  `salry_max` int(8) NOT NULL,
  PRIMARY KEY (`job_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `recruiter_tbl`
--

DROP TABLE IF EXISTS `recruiter_tbl`;
CREATE TABLE IF NOT EXISTS `recruiter_tbl` (
  `rec_id` varchar(30) NOT NULL,
  `password` varchar(8) NOT NULL,
  `company_name` varchar(25) NOT NULL,
  `company_web` varchar(20) NOT NULL,
  `adderess` varchar(100) NOT NULL,
  `company_type` varchar(25) NOT NULL,
  `rec_photo` varchar(200) NOT NULL,
  PRIMARY KEY (`rec_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `recruiter_tbl`
--

INSERT INTO `recruiter_tbl` (`rec_id`, `password`, `company_name`, `company_web`, `adderess`, `company_type`, `rec_photo`) VALUES
('04amitpanchal@gmail.com', 'amit@98', 'amit industries', 'amitindustry.com', 'a-104 jay bhanu society,ghatlodiya', 'it', ''),
('abhaynagori@gmail.com', 'abhay@97', 'abhay industry', 'abhayindustry.com', 'a-4 jyoti plaza near syamal cross road,\r\nahmedabad,\r\ngujrat,\r\nindia\r\n', 'construction', ''),
('shahmarmik@gmail.com', 'marmik@2', 'Marmik Industry', 'marmikindustry.com', 'b12 near satya app,ghatlodiya,ahd', 'construction', '');

-- --------------------------------------------------------

--
-- Table structure for table `response_tbl`
--

DROP TABLE IF EXISTS `response_tbl`;
CREATE TABLE IF NOT EXISTS `response_tbl` (
  `res_id` int(11) NOT NULL AUTO_INCREMENT,
  `fk_apply_id` int(11) NOT NULL,
  `res_status` tinyint(1) NOT NULL,
  `res_desc` varchar(50) NOT NULL,
  PRIMARY KEY (`res_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
