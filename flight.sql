-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 11, 2022 at 06:48 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.0.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `flight`
--

-- --------------------------------------------------------

--
-- Table structure for table `abq_d_aa`
--

CREATE TABLE `abq_d_aa` (
  `Carrier Code` varchar(15) DEFAULT NULL,
  `Date (MM/DD/YYYY)` varchar(20) DEFAULT NULL,
  `Flight Number` varchar(14) DEFAULT NULL,
  `Tail Number` varchar(13) DEFAULT NULL,
  `Destination Airport` varchar(20) DEFAULT NULL,
  `Scheduled departure time` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `abq_d_dl`
--

CREATE TABLE `abq_d_dl` (
  `Carrier Code` varchar(15) DEFAULT NULL,
  `Date (MM/DD/YYYY)` varchar(20) DEFAULT NULL,
  `Flight Number` varchar(14) DEFAULT NULL,
  `Tail Number` varchar(13) DEFAULT NULL,
  `Destination Airport` varchar(20) DEFAULT NULL,
  `Scheduled departure time` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `abq_d_ua`
--

CREATE TABLE `abq_d_ua` (
  `Carrier Code` varchar(15) DEFAULT NULL,
  `Date (MM/DD/YYYY)` varchar(20) DEFAULT NULL,
  `Flight Number` varchar(14) DEFAULT NULL,
  `Tail Number` varchar(13) DEFAULT NULL,
  `Destination Airport` varchar(20) DEFAULT NULL,
  `Scheduled departure time` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `airline`
--

CREATE TABLE `airline` (
  `Name` varchar(5) NOT NULL,
  `AvgPrice` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `airport`
--

CREATE TABLE `airport` (
  `Name` varchar(5) NOT NULL,
  `City` varchar(15) NOT NULL,
  `L/S` varchar(2) NOT NULL,
  `Longitude` int(11) NOT NULL,
  `Latitude` int(11) NOT NULL,
  `AvgFare` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `atlanta_a_aug_1_10`
--

CREATE TABLE `atlanta_a_aug_1_10` (
  `Carrier Code` varchar(44) DEFAULT NULL,
  `Date (MM/DD/YYYY)` varchar(17) DEFAULT NULL,
  `Flight Number` varchar(13) DEFAULT NULL,
  `Tail Number` varchar(11) DEFAULT NULL,
  `Origin Airport` varchar(14) DEFAULT NULL,
  `Scheduled Arrival Time` varchar(22) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `atl_a_dl`
--

CREATE TABLE `atl_a_dl` (
  `Carrier Code` varchar(12) DEFAULT NULL,
  `Date (MM/DD/YYYY)` varchar(17) DEFAULT NULL,
  `Flight Number` varchar(13) DEFAULT NULL,
  `Tail Number` varchar(11) DEFAULT NULL,
  `Origin Airport` varchar(14) DEFAULT NULL,
  `Scheduled Arrival Time` varchar(22) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `atl_d_aa`
--

CREATE TABLE `atl_d_aa` (
  `Carrier Code` varchar(15) DEFAULT NULL,
  `Date (MM/DD/YYYY)` varchar(20) DEFAULT NULL,
  `Flight Number` varchar(14) DEFAULT NULL,
  `Tail Number` varchar(13) DEFAULT NULL,
  `Destination Airport` varchar(20) DEFAULT NULL,
  `Scheduled departure time` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `atl_d_dl`
--

CREATE TABLE `atl_d_dl` (
  `Carrier Code` varchar(15) DEFAULT NULL,
  `Date (MM/DD/YYYY)` varchar(20) DEFAULT NULL,
  `Flight Number` varchar(14) DEFAULT NULL,
  `Tail Number` varchar(13) DEFAULT NULL,
  `Destination Airport` varchar(20) DEFAULT NULL,
  `Scheduled departure time` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `atl_d_ua`
--

CREATE TABLE `atl_d_ua` (
  `Carrier Code` varchar(15) DEFAULT NULL,
  `Date (MM/DD/YYYY)` varchar(20) DEFAULT NULL,
  `Flight Number` varchar(14) DEFAULT NULL,
  `Tail Number` varchar(13) DEFAULT NULL,
  `Destination Airport` varchar(20) DEFAULT NULL,
  `Scheduled departure time` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `aus_d_aa`
--

CREATE TABLE `aus_d_aa` (
  `Carrier Code` varchar(15) DEFAULT NULL,
  `Date (MM/DD/YYYY)` varchar(20) DEFAULT NULL,
  `Flight Number` varchar(14) DEFAULT NULL,
  `Tail Number` varchar(13) DEFAULT NULL,
  `Destination Airport` varchar(20) DEFAULT NULL,
  `Scheduled departure time` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `aus_d_dl`
--

CREATE TABLE `aus_d_dl` (
  `Carrier Code` varchar(15) DEFAULT NULL,
  `Date (MM/DD/YYYY)` varchar(20) DEFAULT NULL,
  `Flight Number` varchar(14) DEFAULT NULL,
  `Tail Number` varchar(13) DEFAULT NULL,
  `Destination Airport` varchar(20) DEFAULT NULL,
  `Scheduled departure time` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `aus_d_ua`
--

CREATE TABLE `aus_d_ua` (
  `Carrier Code` varchar(15) DEFAULT NULL,
  `Date (MM/DD/YYYY)` varchar(20) DEFAULT NULL,
  `Flight Number` varchar(14) DEFAULT NULL,
  `Tail Number` varchar(13) DEFAULT NULL,
  `Destination Airport` varchar(20) DEFAULT NULL,
  `Scheduled departure time` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `bdl_d_aa`
--

CREATE TABLE `bdl_d_aa` (
  `Carrier Code` varchar(15) DEFAULT NULL,
  `Date (MM/DD/YYYY)` varchar(20) DEFAULT NULL,
  `Flight Number` varchar(14) DEFAULT NULL,
  `Tail Number` varchar(13) DEFAULT NULL,
  `Destination Airport` varchar(20) DEFAULT NULL,
  `Scheduled departure time` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `bdl_d_dl`
--

CREATE TABLE `bdl_d_dl` (
  `Carrier Code` varchar(15) DEFAULT NULL,
  `Date (MM/DD/YYYY)` varchar(20) DEFAULT NULL,
  `Flight Number` varchar(14) DEFAULT NULL,
  `Tail Number` varchar(13) DEFAULT NULL,
  `Destination Airport` varchar(20) DEFAULT NULL,
  `Scheduled departure time` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `bdl_d_ua`
--

CREATE TABLE `bdl_d_ua` (
  `Carrier Code` varchar(15) DEFAULT NULL,
  `Date (MM/DD/YYYY)` varchar(20) DEFAULT NULL,
  `Flight Number` varchar(14) DEFAULT NULL,
  `Tail Number` varchar(13) DEFAULT NULL,
  `Destination Airport` varchar(20) DEFAULT NULL,
  `Scheduled departure time` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `bna_d_aa`
--

CREATE TABLE `bna_d_aa` (
  `Carrier Code` varchar(15) DEFAULT NULL,
  `Date (MM/DD/YYYY)` varchar(20) DEFAULT NULL,
  `Flight Number` varchar(14) DEFAULT NULL,
  `Tail Number` varchar(13) DEFAULT NULL,
  `Destination Airport` varchar(20) DEFAULT NULL,
  `Scheduled departure time` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `bna_d_dl`
--

CREATE TABLE `bna_d_dl` (
  `Carrier Code` varchar(15) DEFAULT NULL,
  `Date (MM/DD/YYYY)` varchar(20) DEFAULT NULL,
  `Flight Number` varchar(14) DEFAULT NULL,
  `Tail Number` varchar(13) DEFAULT NULL,
  `Destination Airport` varchar(20) DEFAULT NULL,
  `Scheduled departure time` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `bna_d_ua`
--

CREATE TABLE `bna_d_ua` (
  `Carrier Code` varchar(15) DEFAULT NULL,
  `Date (MM/DD/YYYY)` varchar(20) DEFAULT NULL,
  `Flight Number` varchar(14) DEFAULT NULL,
  `Tail Number` varchar(13) DEFAULT NULL,
  `Destination Airport` varchar(20) DEFAULT NULL,
  `Scheduled departure time` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `den_a_dl`
--

CREATE TABLE `den_a_dl` (
  `Carrier Code` varchar(12) DEFAULT NULL,
  `Date (MM/DD/YYYY)` varchar(17) DEFAULT NULL,
  `Flight Number` varchar(13) DEFAULT NULL,
  `Tail Number` varchar(11) DEFAULT NULL,
  `Origin Airport` varchar(14) DEFAULT NULL,
  `Scheduled Arrival Time` varchar(22) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `den_a_dl_1`
--

CREATE TABLE `den_a_dl_1` (
  `Carrier Code` varchar(12) DEFAULT NULL,
  `Date (MM/DD/YYYY)` varchar(17) DEFAULT NULL,
  `Flight Number` varchar(13) DEFAULT NULL,
  `Tail Number` varchar(11) DEFAULT NULL,
  `Origin Airport` varchar(14) DEFAULT NULL,
  `Scheduled Arrival Time` varchar(22) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `den_d_aa`
--

CREATE TABLE `den_d_aa` (
  `Carrier Code` varchar(15) DEFAULT NULL,
  `Date (MM/DD/YYYY)` varchar(20) DEFAULT NULL,
  `Flight Number` varchar(14) DEFAULT NULL,
  `Tail Number` varchar(13) DEFAULT NULL,
  `Destination Airport` varchar(20) DEFAULT NULL,
  `Scheduled departure time` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `den_d_dl`
--

CREATE TABLE `den_d_dl` (
  `Carrier Code` varchar(15) DEFAULT NULL,
  `Date (MM/DD/YYYY)` varchar(20) DEFAULT NULL,
  `Flight Number` varchar(14) DEFAULT NULL,
  `Tail Number` varchar(13) DEFAULT NULL,
  `Destination Airport` varchar(20) DEFAULT NULL,
  `Scheduled departure time` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `den_d_ua`
--

CREATE TABLE `den_d_ua` (
  `Carrier Code` varchar(15) DEFAULT NULL,
  `Date (MM/DD/YYYY)` varchar(20) DEFAULT NULL,
  `Flight Number` varchar(14) DEFAULT NULL,
  `Tail Number` varchar(13) DEFAULT NULL,
  `Destination Airport` varchar(20) DEFAULT NULL,
  `Scheduled departure time` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `dfw_a_aa`
--

CREATE TABLE `dfw_a_aa` (
  `Carrier Code` varchar(12) DEFAULT NULL,
  `Date (MM/DD/YYYY)` varchar(17) DEFAULT NULL,
  `Flight Number` varchar(13) DEFAULT NULL,
  `Tail Number` varchar(11) DEFAULT NULL,
  `Origin Airport` varchar(14) DEFAULT NULL,
  `Scheduled Arrival Time` varchar(22) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `dfw_a_dl`
--

CREATE TABLE `dfw_a_dl` (
  `Carrier Code` varchar(12) DEFAULT NULL,
  `Date (MM/DD/YYYY)` varchar(17) DEFAULT NULL,
  `Flight Number` varchar(13) DEFAULT NULL,
  `Tail Number` varchar(11) DEFAULT NULL,
  `Origin Airport` varchar(14) DEFAULT NULL,
  `Scheduled Arrival Time` varchar(22) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `dfw_a_ua`
--

CREATE TABLE `dfw_a_ua` (
  `Carrier Code` varchar(12) DEFAULT NULL,
  `Date (MM/DD/YYYY)` varchar(17) DEFAULT NULL,
  `Flight Number` varchar(13) DEFAULT NULL,
  `Tail Number` varchar(11) DEFAULT NULL,
  `Origin Airport` varchar(14) DEFAULT NULL,
  `Scheduled Arrival Time` varchar(22) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `dfw_d_aa`
--

CREATE TABLE `dfw_d_aa` (
  `Carrier Code` varchar(15) DEFAULT NULL,
  `Date (MM/DD/YYYY)` varchar(20) DEFAULT NULL,
  `Flight Number` varchar(14) DEFAULT NULL,
  `Tail Number` varchar(13) DEFAULT NULL,
  `Destination Airport` varchar(20) DEFAULT NULL,
  `Scheduled departure time` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `dfw_d_dl`
--

CREATE TABLE `dfw_d_dl` (
  `Carrier Code` varchar(15) DEFAULT NULL,
  `Date (MM/DD/YYYY)` varchar(20) DEFAULT NULL,
  `Flight Number` varchar(14) DEFAULT NULL,
  `Tail Number` varchar(13) DEFAULT NULL,
  `Destination Airport` varchar(20) DEFAULT NULL,
  `Scheduled departure time` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `dfw_d_ua`
--

CREATE TABLE `dfw_d_ua` (
  `Carrier Code` varchar(15) DEFAULT NULL,
  `Date (MM/DD/YYYY)` varchar(20) DEFAULT NULL,
  `Flight Number` varchar(14) DEFAULT NULL,
  `Tail Number` varchar(13) DEFAULT NULL,
  `Destination Airport` varchar(20) DEFAULT NULL,
  `Scheduled departure time` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `jfk_d_aa`
--

CREATE TABLE `jfk_d_aa` (
  `Carrier Code` varchar(15) DEFAULT NULL,
  `Date (MM/DD/YYYY)` varchar(20) DEFAULT NULL,
  `Flight Number` varchar(14) DEFAULT NULL,
  `Tail Number` varchar(13) DEFAULT NULL,
  `Destination Airport` varchar(20) DEFAULT NULL,
  `Scheduled departure time` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `jfk_d_dl`
--

CREATE TABLE `jfk_d_dl` (
  `Carrier Code` varchar(15) DEFAULT NULL,
  `Date (MM/DD/YYYY)` varchar(20) DEFAULT NULL,
  `Flight Number` varchar(14) DEFAULT NULL,
  `Tail Number` varchar(13) DEFAULT NULL,
  `Destination Airport` varchar(20) DEFAULT NULL,
  `Scheduled departure time` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `jfk_d_ua`
--

CREATE TABLE `jfk_d_ua` (
  `Carrier Code` varchar(15) DEFAULT NULL,
  `Date (MM/DD/YYYY)` varchar(20) DEFAULT NULL,
  `Flight Number` varchar(14) DEFAULT NULL,
  `Tail Number` varchar(13) DEFAULT NULL,
  `Destination Airport` varchar(20) DEFAULT NULL,
  `Scheduled departure time` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `lax_d_aa`
--

CREATE TABLE `lax_d_aa` (
  `Carrier Code` varchar(15) DEFAULT NULL,
  `Date (MM/DD/YYYY)` varchar(20) DEFAULT NULL,
  `Flight Number` varchar(14) DEFAULT NULL,
  `Tail Number` varchar(13) DEFAULT NULL,
  `Destination Airport` varchar(20) DEFAULT NULL,
  `Scheduled departure time` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `lax_d_dl`
--

CREATE TABLE `lax_d_dl` (
  `Carrier Code` varchar(15) DEFAULT NULL,
  `Date (MM/DD/YYYY)` varchar(20) DEFAULT NULL,
  `Flight Number` varchar(14) DEFAULT NULL,
  `Tail Number` varchar(13) DEFAULT NULL,
  `Destination Airport` varchar(20) DEFAULT NULL,
  `Scheduled departure time` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `lax_d_ua`
--

CREATE TABLE `lax_d_ua` (
  `Carrier Code` varchar(15) DEFAULT NULL,
  `Date (MM/DD/YYYY)` varchar(20) DEFAULT NULL,
  `Flight Number` varchar(14) DEFAULT NULL,
  `Tail Number` varchar(13) DEFAULT NULL,
  `Destination Airport` varchar(20) DEFAULT NULL,
  `Scheduled departure time` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `mco_d_aa`
--

CREATE TABLE `mco_d_aa` (
  `Carrier Code` varchar(15) DEFAULT NULL,
  `Date (MM/DD/YYYY)` varchar(20) DEFAULT NULL,
  `Flight Number` varchar(14) DEFAULT NULL,
  `Tail Number` varchar(13) DEFAULT NULL,
  `Destination Airport` varchar(20) DEFAULT NULL,
  `Scheduled departure time` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `mco_d_dl`
--

CREATE TABLE `mco_d_dl` (
  `Carrier Code` varchar(15) DEFAULT NULL,
  `Date (MM/DD/YYYY)` varchar(20) DEFAULT NULL,
  `Flight Number` varchar(14) DEFAULT NULL,
  `Tail Number` varchar(13) DEFAULT NULL,
  `Destination Airport` varchar(20) DEFAULT NULL,
  `Scheduled departure time` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `mco_d_ua`
--

CREATE TABLE `mco_d_ua` (
  `Carrier Code` varchar(15) DEFAULT NULL,
  `Date (MM/DD/YYYY)` varchar(20) DEFAULT NULL,
  `Flight Number` varchar(14) DEFAULT NULL,
  `Tail Number` varchar(13) DEFAULT NULL,
  `Destination Airport` varchar(20) DEFAULT NULL,
  `Scheduled departure time` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `minn_d_aug_1_10`
--

CREATE TABLE `minn_d_aug_1_10` (
  `Carrier Code` varchar(44) DEFAULT NULL,
  `Date (MM/DD/YYYY)` varchar(17) DEFAULT NULL,
  `Flight Number` varchar(13) DEFAULT NULL,
  `Tail Number` varchar(11) DEFAULT NULL,
  `Destination Airport` varchar(19) DEFAULT NULL,
  `Scheduled departure time` varchar(24) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `msp_d_aa`
--

CREATE TABLE `msp_d_aa` (
  `Carrier Code` varchar(15) DEFAULT NULL,
  `Date (MM/DD/YYYY)` varchar(20) DEFAULT NULL,
  `Flight Number` varchar(14) DEFAULT NULL,
  `Tail Number` varchar(13) DEFAULT NULL,
  `Destination Airport` varchar(20) DEFAULT NULL,
  `Scheduled departure time` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `msp_d_dl`
--

CREATE TABLE `msp_d_dl` (
  `Carrier Code` varchar(15) DEFAULT NULL,
  `Date (MM/DD/YYYY)` varchar(20) DEFAULT NULL,
  `Flight Number` varchar(14) DEFAULT NULL,
  `Tail Number` varchar(13) DEFAULT NULL,
  `Destination Airport` varchar(20) DEFAULT NULL,
  `Scheduled departure time` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `msp_d_ua`
--

CREATE TABLE `msp_d_ua` (
  `Carrier Code` varchar(15) DEFAULT NULL,
  `Date (MM/DD/YYYY)` varchar(20) DEFAULT NULL,
  `Flight Number` varchar(14) DEFAULT NULL,
  `Tail Number` varchar(13) DEFAULT NULL,
  `Destination Airport` varchar(20) DEFAULT NULL,
  `Scheduled departure time` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ord_a_dl`
--

CREATE TABLE `ord_a_dl` (
  `Carrier Code` varchar(12) DEFAULT NULL,
  `Date (MM/DD/YYYY)` varchar(17) DEFAULT NULL,
  `Flight Number` varchar(13) DEFAULT NULL,
  `Tail Number` varchar(11) DEFAULT NULL,
  `Origin Airport` varchar(14) DEFAULT NULL,
  `Scheduled Arrival Time` varchar(22) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ord_d_aa`
--

CREATE TABLE `ord_d_aa` (
  `Carrier Code` varchar(15) DEFAULT NULL,
  `Date (MM/DD/YYYY)` varchar(20) DEFAULT NULL,
  `Flight Number` varchar(14) DEFAULT NULL,
  `Tail Number` varchar(13) DEFAULT NULL,
  `Destination Airport` varchar(20) DEFAULT NULL,
  `Scheduled departure time` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ord_d_dl`
--

CREATE TABLE `ord_d_dl` (
  `Carrier Code` varchar(15) DEFAULT NULL,
  `Date (MM/DD/YYYY)` varchar(20) DEFAULT NULL,
  `Flight Number` varchar(14) DEFAULT NULL,
  `Tail Number` varchar(13) DEFAULT NULL,
  `Destination Airport` varchar(20) DEFAULT NULL,
  `Scheduled departure time` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ord_d_ua`
--

CREATE TABLE `ord_d_ua` (
  `Carrier Code` varchar(15) DEFAULT NULL,
  `Date (MM/DD/YYYY)` varchar(20) DEFAULT NULL,
  `Flight Number` varchar(14) DEFAULT NULL,
  `Tail Number` varchar(13) DEFAULT NULL,
  `Destination Airport` varchar(20) DEFAULT NULL,
  `Scheduled departure time` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `pwm_d_aa`
--

CREATE TABLE `pwm_d_aa` (
  `Carrier Code` varchar(15) DEFAULT NULL,
  `Date (MM/DD/YYYY)` varchar(20) DEFAULT NULL,
  `Flight Number` varchar(14) DEFAULT NULL,
  `Tail Number` varchar(13) DEFAULT NULL,
  `Destination Airport` varchar(20) DEFAULT NULL,
  `Scheduled departure time` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `pwm_d_dl`
--

CREATE TABLE `pwm_d_dl` (
  `Carrier Code` varchar(15) DEFAULT NULL,
  `Date (MM/DD/YYYY)` varchar(20) DEFAULT NULL,
  `Flight Number` varchar(14) DEFAULT NULL,
  `Tail Number` varchar(13) DEFAULT NULL,
  `Destination Airport` varchar(20) DEFAULT NULL,
  `Scheduled departure time` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `pwm_d_ua`
--

CREATE TABLE `pwm_d_ua` (
  `Carrier Code` varchar(15) DEFAULT NULL,
  `Date (MM/DD/YYYY)` varchar(20) DEFAULT NULL,
  `Flight Number` varchar(14) DEFAULT NULL,
  `Tail Number` varchar(13) DEFAULT NULL,
  `Destination Airport` varchar(20) DEFAULT NULL,
  `Scheduled departure time` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `san_d_aa`
--

CREATE TABLE `san_d_aa` (
  `Carrier Code` varchar(15) DEFAULT NULL,
  `Date (MM/DD/YYYY)` varchar(20) DEFAULT NULL,
  `Flight Number` varchar(14) DEFAULT NULL,
  `Tail Number` varchar(13) DEFAULT NULL,
  `Destination Airport` varchar(20) DEFAULT NULL,
  `Scheduled departure time` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `san_d_dl`
--

CREATE TABLE `san_d_dl` (
  `Carrier Code` varchar(15) DEFAULT NULL,
  `Date (MM/DD/YYYY)` varchar(20) DEFAULT NULL,
  `Flight Number` varchar(14) DEFAULT NULL,
  `Tail Number` varchar(13) DEFAULT NULL,
  `Destination Airport` varchar(20) DEFAULT NULL,
  `Scheduled departure time` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `san_d_ua`
--

CREATE TABLE `san_d_ua` (
  `Carrier Code` varchar(15) DEFAULT NULL,
  `Date (MM/DD/YYYY)` varchar(20) DEFAULT NULL,
  `Flight Number` varchar(14) DEFAULT NULL,
  `Tail Number` varchar(13) DEFAULT NULL,
  `Destination Airport` varchar(20) DEFAULT NULL,
  `Scheduled departure time` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `sea_d_aa`
--

CREATE TABLE `sea_d_aa` (
  `Carrier Code` varchar(15) DEFAULT NULL,
  `Date (MM/DD/YYYY)` varchar(20) DEFAULT NULL,
  `Flight Number` varchar(14) DEFAULT NULL,
  `Tail Number` varchar(13) DEFAULT NULL,
  `Destination Airport` varchar(20) DEFAULT NULL,
  `Scheduled departure time` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `sea_d_dl`
--

CREATE TABLE `sea_d_dl` (
  `Carrier Code` varchar(15) DEFAULT NULL,
  `Date (MM/DD/YYYY)` varchar(20) DEFAULT NULL,
  `Flight Number` varchar(14) DEFAULT NULL,
  `Tail Number` varchar(13) DEFAULT NULL,
  `Destination Airport` varchar(20) DEFAULT NULL,
  `Scheduled departure time` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `sea_d_ua`
--

CREATE TABLE `sea_d_ua` (
  `Carrier Code` varchar(15) DEFAULT NULL,
  `Date (MM/DD/YYYY)` varchar(20) DEFAULT NULL,
  `Flight Number` varchar(14) DEFAULT NULL,
  `Tail Number` varchar(13) DEFAULT NULL,
  `Destination Airport` varchar(20) DEFAULT NULL,
  `Scheduled departure time` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tap_d_aa`
--

CREATE TABLE `tap_d_aa` (
  `Carrier Code` varchar(15) DEFAULT NULL,
  `Date (MM/DD/YYYY)` varchar(20) DEFAULT NULL,
  `Flight Number` varchar(14) DEFAULT NULL,
  `Tail Number` varchar(13) DEFAULT NULL,
  `Destination Airport` varchar(20) DEFAULT NULL,
  `Scheduled departure time` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tap_d_dl`
--

CREATE TABLE `tap_d_dl` (
  `Carrier Code` varchar(15) DEFAULT NULL,
  `Date (MM/DD/YYYY)` varchar(20) DEFAULT NULL,
  `Flight Number` varchar(14) DEFAULT NULL,
  `Tail Number` varchar(13) DEFAULT NULL,
  `Destination Airport` varchar(20) DEFAULT NULL,
  `Scheduled departure time` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tap_d_ua`
--

CREATE TABLE `tap_d_ua` (
  `Carrier Code` varchar(15) DEFAULT NULL,
  `Date (MM/DD/YYYY)` varchar(20) DEFAULT NULL,
  `Flight Number` varchar(14) DEFAULT NULL,
  `Tail Number` varchar(13) DEFAULT NULL,
  `Destination Airport` varchar(20) DEFAULT NULL,
  `Scheduled departure time` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
