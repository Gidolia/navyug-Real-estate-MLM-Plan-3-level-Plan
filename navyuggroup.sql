-- phpMyAdmin SQL Dump
-- version 4.9.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Aug 22, 2021 at 10:08 PM
-- Server version: 5.6.51-cll-lve
-- PHP Version: 7.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `navyuggroup`
--

-- --------------------------------------------------------

--
-- Table structure for table `activate_id_pin`
--

CREATE TABLE `activate_id_pin` (
  `aip_id` int(11) NOT NULL,
  `d_id` varchar(10) NOT NULL,
  `a_d_id` varchar(10) NOT NULL,
  `date` varchar(20) NOT NULL,
  `time` varchar(25) NOT NULL,
  `pin_type` varchar(10) NOT NULL,
  `status` varchar(1) NOT NULL,
  `c_date` varchar(20) NOT NULL,
  `c_time` varchar(25) NOT NULL,
  `note` varchar(100) NOT NULL,
  `plot_no` varchar(100) NOT NULL,
  `project_name` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `admin_charge`
--

CREATE TABLE `admin_charge` (
  `ac_id` int(11) NOT NULL,
  `d_id` varchar(10) NOT NULL,
  `date` varchar(20) NOT NULL,
  `time` varchar(25) NOT NULL,
  `admin` varchar(10) NOT NULL,
  `b_admin` varchar(10) NOT NULL,
  `a_admin` varchar(10) NOT NULL,
  `of_amount` varchar(10) NOT NULL,
  `type` varchar(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin_charge`
--

INSERT INTO `admin_charge` (`ac_id`, `d_id`, `date`, `time`, `admin`, `b_admin`, `a_admin`, `of_amount`, `type`) VALUES
(1, '', '2021-07-30', '01:07:17pm', '250', '', '250', '5000', '+'),
(2, '', '2021-07-30', '01:07:17pm', '125', '', '125', '2500', '+'),
(3, '', '2021-07-30', '01:07:17pm', '100', '', '100', '2000', '+'),
(4, '', '2021-07-30', '02:20:25pm', '0.05', '', '0.05', '1', '+'),
(5, '', '2021-07-30', '02:20:25pm', '0.025', '', '0.025', '0.5', '+'),
(6, '', '2021-07-30', '02:20:25pm', '0.02', '', '0.02', '0.4', '+'),
(7, '2974', '2021-07-30', '05:53:33pm', '250', '0', '250', '5000', '+'),
(8, '', '2021-07-30', '05:53:33pm', '125', '', '125', '2500', '+'),
(9, '', '2021-07-30', '05:53:33pm', '100', '', '100', '2000', '+'),
(10, '', '2021-08-12', '11:50:21am', '250', '', '250', '5000', '+'),
(11, '', '2021-08-12', '11:50:21am', '125', '', '125', '2500', '+'),
(12, '', '2021-08-12', '11:50:21am', '100', '', '100', '2000', '+');

-- --------------------------------------------------------

--
-- Table structure for table `admin_password`
--

CREATE TABLE `admin_password` (
  `ap_id` int(11) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin_password`
--

INSERT INTO `admin_password` (`ap_id`, `password`) VALUES
(1, '123');

-- --------------------------------------------------------

--
-- Table structure for table `distributor`
--

CREATE TABLE `distributor` (
  `d_id` int(11) NOT NULL,
  `s_id` varchar(10) NOT NULL,
  `name` varchar(100) NOT NULL,
  `mobile` varchar(12) NOT NULL,
  `a_mobile` varchar(12) NOT NULL,
  `dob` varchar(20) NOT NULL,
  `password` varchar(100) NOT NULL,
  `date` varchar(20) NOT NULL,
  `time` varchar(25) NOT NULL,
  `a_status` varchar(10) NOT NULL,
  `a_date` varchar(20) NOT NULL,
  `a_time` varchar(25) NOT NULL,
  `city` varchar(100) NOT NULL,
  `state` varchar(100) NOT NULL,
  `addreass` varchar(1000) NOT NULL,
  `pincode` varchar(10) NOT NULL,
  `withdrawal_wallet` varchar(10) NOT NULL,
  `pan_card_no` varchar(10) NOT NULL,
  `kyc_status` varchar(1) NOT NULL,
  `block_status` varchar(10) NOT NULL,
  `pin_wallet_50000` varchar(10) NOT NULL,
  `admin` varchar(10) NOT NULL,
  `tds` varchar(10) NOT NULL,
  `email` varchar(50) NOT NULL,
  `pin_wallet_100000` varchar(10) NOT NULL,
  `pin_wallet_250000` varchar(10) NOT NULL,
  `property_saving` varchar(10) NOT NULL,
  `project_name` varchar(50) NOT NULL,
  `plot_no` varchar(50) NOT NULL,
  `plot_total_amount` varchar(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `distributor`
--

INSERT INTO `distributor` (`d_id`, `s_id`, `name`, `mobile`, `a_mobile`, `dob`, `password`, `date`, `time`, `a_status`, `a_date`, `a_time`, `city`, `state`, `addreass`, `pincode`, `withdrawal_wallet`, `pan_card_no`, `kyc_status`, `block_status`, `pin_wallet_50000`, `admin`, `tds`, `email`, `pin_wallet_100000`, `pin_wallet_250000`, `property_saving`, `project_name`, `plot_no`, `plot_total_amount`) VALUES
(2974, '0', 'Rohit Gidolia', '7869470415', '8962250750', '12/06/1997', '123', '12-11-2020', '11:46:49am', 'y', '2021-08-12', '11:50:21am', 'Gwalior', 'Madhya Pradesh', 'D-550 New Suresh nagar', '474011', '4000', '', 'n', 'n', '', '250', '250', 'gidolia3@gmail.com', '', '', '500', 'airport', 'airport', '250000'),
(5876, '2974', 'Mukul Jain', '7869470414', '', '12/06/1997', '123', '2021-07-30', '12:21:15pm', 'y', '2021-07-30', '05:53:33pm', '', '', '', '', '', '', '', '', '', '', '', 'gidolia53@gmail.com', '', '', '', '', '', ''),
(2819, '2974', 'ravi kant dhaneley', '7869470434', '', '12/06/1997', '123', '2021-07-30', '05:51:03pm', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'gidolia334@gmail.com', '', '', '', '', '', ''),
(4691, '5876', 'Rohit', '7869470418', '', 'Rajauriya', '123', '2021-08-02', '12:20:43pm', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'gidolia3r@gmail.com', '', '', '', '', '', ''),
(8625, '2974', 'piruj', '7869470417', '', '12/06/1997', '123', '2021-08-19', '11:41:39am', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'gidolia3@gmail.cor', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `entry_fail_report`
--

CREATE TABLE `entry_fail_report` (
  `efr_id` int(11) NOT NULL,
  `date` varchar(20) NOT NULL,
  `time` varchar(25) NOT NULL,
  `d_id` varchar(10) NOT NULL,
  `url` varchar(300) NOT NULL,
  `fail_query` varchar(300) NOT NULL,
  `note` varchar(300) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `kyc_adhar`
--

CREATE TABLE `kyc_adhar` (
  `ka_id` int(11) NOT NULL,
  `d_id` varchar(10) NOT NULL,
  `date` varchar(20) NOT NULL,
  `time` varchar(25) NOT NULL,
  `adhar_no` varchar(25) NOT NULL,
  `adhar_front_img` varchar(50) NOT NULL,
  `adhar_back_img` varchar(50) NOT NULL,
  `unique_id` varchar(20) NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kyc_adhar`
--

INSERT INTO `kyc_adhar` (`ka_id`, `d_id`, `date`, `time`, `adhar_no`, `adhar_front_img`, `adhar_back_img`, `unique_id`, `status`) VALUES
(1, '2974', '2021-07-30', '05:13:07pm', '1633668522', '356129487', '356129487', '356129487', 'p');

-- --------------------------------------------------------

--
-- Table structure for table `kyc_bank`
--

CREATE TABLE `kyc_bank` (
  `kb_id` int(11) NOT NULL,
  `d_id` varchar(10) NOT NULL,
  `date` varchar(20) NOT NULL,
  `time` varchar(25) NOT NULL,
  `bank_img` varchar(50) NOT NULL,
  `bank_name` varchar(50) NOT NULL,
  `bank_acc_no` varchar(25) NOT NULL,
  `ifsc_code` varchar(15) NOT NULL,
  `status` varchar(10) NOT NULL,
  `holder_name` varchar(100) NOT NULL,
  `branch_name` varchar(100) NOT NULL,
  `acc_type` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `kyc_pan`
--

CREATE TABLE `kyc_pan` (
  `kp_id` int(11) NOT NULL,
  `d_id` varchar(10) NOT NULL,
  `date` varchar(20) NOT NULL,
  `time` varchar(25) NOT NULL,
  `pan_no` varchar(15) NOT NULL,
  `pan_img` varchar(20) NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kyc_pan`
--

INSERT INTO `kyc_pan` (`kp_id`, `d_id`, `date`, `time`, `pan_no`, `pan_img`, `status`) VALUES
(1, '2974', '2021-07-30', '04:52:04pm', 'bsepg8684f', '287561493', 'p');

-- --------------------------------------------------------

--
-- Table structure for table `level_income`
--

CREATE TABLE `level_income` (
  `li_id` int(11) NOT NULL,
  `d_id` varchar(10) NOT NULL,
  `date` varchar(20) NOT NULL,
  `time` varchar(25) NOT NULL,
  `amount` varchar(10) NOT NULL,
  `level` varchar(10) NOT NULL,
  `of_d_id` varchar(10) NOT NULL,
  `pr_id` varchar(10) NOT NULL,
  `new_id` varchar(10) NOT NULL,
  `admin_charge` varchar(10) NOT NULL,
  `tds_charge` varchar(10) NOT NULL,
  `final_amount` varchar(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `level_income`
--

INSERT INTO `level_income` (`li_id`, `d_id`, `date`, `time`, `amount`, `level`, `of_d_id`, `pr_id`, `new_id`, `admin_charge`, `tds_charge`, `final_amount`) VALUES
(1, '', '2021-07-30', '01:07:17pm', '5000', '1', '2974', '1', 'Y', '250', '250', '4000'),
(2, '', '2021-07-30', '01:07:17pm', '2500', '2', '2974', '1', 'Y', '125', '125', '2000'),
(3, '', '2021-07-30', '01:07:17pm', '2000', '3', '2974', '1', 'Y', '100', '100', '1600'),
(4, '', '2021-07-30', '02:20:25pm', '1', '1', '2974', '2', 'N', '0.05', '0.05', '0.8'),
(5, '', '2021-07-30', '02:20:25pm', '0.5', '2', '2974', '2', 'N', '0.025', '0.025', '0.4'),
(6, '', '2021-07-30', '02:20:25pm', '0.4', '3', '2974', '2', 'N', '0.02', '0.02', '0.32'),
(7, '2974', '2021-07-30', '05:53:33pm', '5000', '1', '5876', '3', 'Y', '250', '250', '4000'),
(8, '', '2021-07-30', '05:53:33pm', '2500', '2', '5876', '3', 'Y', '125', '125', '2000'),
(9, '', '2021-07-30', '05:53:33pm', '2000', '3', '5876', '3', 'Y', '100', '100', '1600'),
(10, '', '2021-08-12', '11:50:21am', '5000', '1', '2974', '4', 'Y', '250', '250', '4000'),
(11, '', '2021-08-12', '11:50:21am', '2500', '2', '2974', '4', 'Y', '125', '125', '2000'),
(12, '', '2021-08-12', '11:50:21am', '2000', '3', '2974', '4', 'Y', '100', '100', '1600');

-- --------------------------------------------------------

--
-- Table structure for table `notification`
--

CREATE TABLE `notification` (
  `n_id` int(11) NOT NULL,
  `d_id` varchar(10) NOT NULL,
  `date` varchar(20) NOT NULL,
  `time` varchar(25) NOT NULL,
  `note` varchar(1000) NOT NULL,
  `n_for` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `payment_request`
--

CREATE TABLE `payment_request` (
  `pr_id` int(11) NOT NULL,
  `d_id` varchar(10) NOT NULL,
  `date` varchar(20) NOT NULL,
  `time` varchar(25) NOT NULL,
  `amount` varchar(10) NOT NULL,
  `recipt_img` varchar(50) NOT NULL,
  `payment_mode` varchar(20) NOT NULL,
  `txn_id` varchar(100) NOT NULL,
  `c_date` varchar(20) NOT NULL,
  `c_time` varchar(25) NOT NULL,
  `first_time` varchar(10) NOT NULL,
  `status` varchar(10) NOT NULL,
  `commission_distributed` varchar(10) NOT NULL,
  `project_name` varchar(100) NOT NULL,
  `plot_no` varchar(30) NOT NULL,
  `total_amount` varchar(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `payment_request`
--

INSERT INTO `payment_request` (`pr_id`, `d_id`, `date`, `time`, `amount`, `recipt_img`, `payment_mode`, `txn_id`, `c_date`, `c_time`, `first_time`, `status`, `commission_distributed`, `project_name`, `plot_no`, `total_amount`) VALUES
(4, '2974', '2021-08-12', '11:48:33am', '50000', '542176398', 'NEFT', 'ascxasc', '2021-08-12', '11:50:21am', 'N', 'S', 'y', 'airport', '1', '250000');

-- --------------------------------------------------------

--
-- Table structure for table `pin_request`
--

CREATE TABLE `pin_request` (
  `pr_id` int(11) NOT NULL,
  `d_id` varchar(10) NOT NULL,
  `date` varchar(20) NOT NULL,
  `time` varchar(25) NOT NULL,
  `pin_wallet` varchar(10) NOT NULL,
  `c_date` varchar(20) NOT NULL,
  `c_time` varchar(25) NOT NULL,
  `amount` varchar(10) NOT NULL,
  `pin_qty` varchar(10) NOT NULL,
  `payment_type` varchar(30) NOT NULL,
  `txn_no` varchar(30) NOT NULL,
  `receipt_img` varchar(30) NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `pin_wallet_50000`
--

CREATE TABLE `pin_wallet_50000` (
  `pw_id` int(11) NOT NULL,
  `d_id` varchar(10) NOT NULL,
  `date` varchar(20) NOT NULL,
  `time` varchar(25) NOT NULL,
  `type` varchar(1) NOT NULL,
  `pin_qty` varchar(10) NOT NULL,
  `b_pin` varchar(10) NOT NULL,
  `a_pin` varchar(10) NOT NULL,
  `note` varchar(1000) NOT NULL,
  `pr_id` varchar(10) NOT NULL,
  `txn_id` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `pin_wallet_100000`
--

CREATE TABLE `pin_wallet_100000` (
  `pw_id` int(11) NOT NULL,
  `d_id` varchar(10) NOT NULL,
  `date` varchar(20) NOT NULL,
  `time` varchar(25) NOT NULL,
  `type` varchar(1) NOT NULL,
  `pin_qty` varchar(10) NOT NULL,
  `b_pin` varchar(10) NOT NULL,
  `a_pin` varchar(10) NOT NULL,
  `note` varchar(1000) NOT NULL,
  `pr_id` varchar(10) NOT NULL,
  `txn_id` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pin_wallet_100000`
--

INSERT INTO `pin_wallet_100000` (`pw_id`, `d_id`, `date`, `time`, `type`, `pin_qty`, `b_pin`, `a_pin`, `note`, `pr_id`, `txn_id`) VALUES
(1, '1', '', '', '', '', '', '', '', '', ''),
(2, '1', '2021-06-13', '01:03:49am', '+', '1', '', '1', 'Purchased', '5', ''),
(3, '1', '2021-06-13', '01:06:44am', '+', '2', '1', '3', 'Purchased', '7', ''),
(4, '1', '', '', '', '', '', '', '', '', ''),
(5, '1', '2021-06-24', '02:28:36pm', '-', '1', '3', '2', 'Used For Activate ID', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `pin_wallet_250000`
--

CREATE TABLE `pin_wallet_250000` (
  `pw_id` int(11) NOT NULL,
  `d_id` varchar(10) NOT NULL,
  `date` varchar(20) NOT NULL,
  `time` varchar(25) NOT NULL,
  `type` varchar(1) NOT NULL,
  `pin_qty` varchar(10) NOT NULL,
  `b_pin` varchar(10) NOT NULL,
  `a_pin` varchar(10) NOT NULL,
  `note` varchar(200) NOT NULL,
  `pr_id` varchar(10) NOT NULL,
  `txn_id` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pin_wallet_250000`
--

INSERT INTO `pin_wallet_250000` (`pw_id`, `d_id`, `date`, `time`, `type`, `pin_qty`, `b_pin`, `a_pin`, `note`, `pr_id`, `txn_id`) VALUES
(1, '1', '', '', '', '', '', '', '', '', ''),
(2, '1', '2021-06-13', '01:04:47am', '+', '2', '', '2', 'Purchased', '6', ''),
(3, '1', '', '', '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `plot_details`
--

CREATE TABLE `plot_details` (
  `pd_id` int(11) NOT NULL,
  `pn_id` varchar(10) NOT NULL,
  `size` varchar(100) NOT NULL,
  `sq_feet` varchar(20) NOT NULL,
  `note` varchar(1000) NOT NULL,
  `filed_status` varchar(10) NOT NULL,
  `date` varchar(20) NOT NULL,
  `time` varchar(25) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `plot_details_history`
--

CREATE TABLE `plot_details_history` (
  `pdh_id` int(11) NOT NULL,
  `aip_id` varchar(10) NOT NULL,
  `d_id` varchar(10) NOT NULL,
  `amount` varchar(10) NOT NULL,
  `b_amount` varchar(10) NOT NULL,
  `a_amount` varchar(10) NOT NULL,
  `date` varchar(20) NOT NULL,
  `time` varchar(25) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `project_name`
--

CREATE TABLE `project_name` (
  `pn_id` int(11) NOT NULL,
  `project_name` varchar(100) NOT NULL,
  `date` varchar(20) NOT NULL,
  `time` varchar(25) NOT NULL,
  `note` varchar(1000) NOT NULL,
  `delete_status` varchar(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `property_saving_history`
--

CREATE TABLE `property_saving_history` (
  `psh_id` int(11) NOT NULL,
  `d_id` varchar(10) NOT NULL,
  `date` varchar(20) NOT NULL,
  `time` varchar(25) NOT NULL,
  `pro_saving` varchar(10) NOT NULL,
  `b_bal` varchar(10) NOT NULL,
  `a_bal` varchar(10) NOT NULL,
  `type` varchar(1) NOT NULL,
  `note` varchar(200) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `property_saving_history`
--

INSERT INTO `property_saving_history` (`psh_id`, `d_id`, `date`, `time`, `pro_saving`, `b_bal`, `a_bal`, `type`, `note`) VALUES
(1, '', '2021-07-30', '01:07:17pm', '500', '', '500', '+', ''),
(2, '', '2021-07-30', '01:07:17pm', '250', '', '250', '+', ''),
(3, '', '2021-07-30', '01:07:17pm', '200', '', '200', '+', ''),
(4, '', '2021-07-30', '02:20:25pm', '0.1', '', '0.1', '+', ''),
(5, '', '2021-07-30', '02:20:25pm', '0.05', '', '0.05', '+', ''),
(6, '', '2021-07-30', '02:20:25pm', '0.04', '', '0.04', '+', ''),
(7, '2974', '2021-07-30', '05:53:33pm', '500', '0', '500', '+', ''),
(8, '', '2021-07-30', '05:53:33pm', '250', '', '250', '+', ''),
(9, '', '2021-07-30', '05:53:33pm', '200', '', '200', '+', ''),
(10, '', '2021-08-12', '11:50:21am', '500', '', '500', '+', ''),
(11, '', '2021-08-12', '11:50:21am', '250', '', '250', '+', ''),
(12, '', '2021-08-12', '11:50:21am', '200', '', '200', '+', '');

-- --------------------------------------------------------

--
-- Table structure for table `site_open_info`
--

CREATE TABLE `site_open_info` (
  `soi_id` int(11) NOT NULL,
  `url` varchar(1000) NOT NULL,
  `date` varchar(20) NOT NULL,
  `time` varchar(25) NOT NULL,
  `session_d_id` varchar(10) NOT NULL,
  `ip_addreass` varchar(100) NOT NULL,
  `desktop` varchar(100) NOT NULL,
  `mobile` varchar(100) NOT NULL,
  `browser` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `site_open_info`
--

INSERT INTO `site_open_info` (`soi_id`, `url`, `date`, `time`, `session_d_id`, `ip_addreass`, `desktop`, `mobile`, `browser`) VALUES
(1, 'www.navyuggroup.in/admin/ibo_panel/production/web_index.php', '2021-07-30', '11:27:11am', '', '157.34.217.238', '', '', ''),
(2, 'www.navyuggroup.in/ibo_panel/production/index.php', '2021-07-30', '11:27:17am', '', '157.34.217.238', '', '', ''),
(3, 'www.navyuggroup.in/ibo_panel/production/Login_Form/login.php', '2021-07-30', '11:27:18am', '', '157.34.217.238', '', '', ''),
(4, 'www.navyuggroup.in/ibo_panel/production/Login_Form/get_Sponser_id_check.php?s=N', '2021-07-30', '11:29:18am', '', '157.34.217.238', '', '', ''),
(5, 'www.navyuggroup.in/ibo_panel/production/Login_Form/get_Sponser_id_check.php?s=NG', '2021-07-30', '11:29:19am', '', '157.34.217.238', '', '', ''),
(6, 'www.navyuggroup.in/ibo_panel/production/Login_Form/get_Sponser_id_check.php?s=NG', '2021-07-30', '11:29:19am', '', '157.34.217.238', '', '', ''),
(7, 'www.navyuggroup.in/ibo_panel/production/Login_Form/get_Sponser_id_check.php?s=NG2', '2021-07-30', '11:29:20am', '', '157.34.217.238', '', '', ''),
(8, 'www.navyuggroup.in/ibo_panel/production/Login_Form/get_Sponser_id_check.php?s=NG29', '2021-07-30', '11:29:20am', '', '157.34.217.238', '', '', ''),
(9, 'www.navyuggroup.in/ibo_panel/production/Login_Form/get_Sponser_id_check.php?s=NG297', '2021-07-30', '11:29:20am', '', '157.34.217.238', '', '', ''),
(10, 'www.navyuggroup.in/ibo_panel/production/Login_Form/get_Sponser_id_check.php?s=NG2974', '2021-07-30', '11:29:21am', '', '157.34.217.238', '', '', ''),
(11, 'www.navyuggroup.in/ibo_panel/production/Login_Form/get_Sponser_id_check.php?s=NG297', '2021-07-30', '11:29:22am', '', '157.34.217.238', '', '', ''),
(12, 'www.navyuggroup.in/ibo_panel/production/Login_Form/get_Sponser_id_check.php?s=NG29', '2021-07-30', '11:29:22am', '', '157.34.217.238', '', '', ''),
(13, 'www.navyuggroup.in/ibo_panel/production/Login_Form/get_Sponser_id_check.php?s=NG2', '2021-07-30', '11:29:22am', '', '157.34.217.238', '', '', ''),
(14, 'www.navyuggroup.in/ibo_panel/production/Login_Form/get_Sponser_id_check.php?s=NG', '2021-07-30', '11:29:23am', '', '157.34.217.238', '', '', ''),
(15, 'www.navyuggroup.in/ibo_panel/production/Login_Form/get_Sponser_id_check.php?s=N', '2021-07-30', '11:29:23am', '', '157.34.217.238', '', '', ''),
(16, 'www.navyuggroup.in/ibo_panel/production/Login_Form/get_Sponser_id_check.php?s=', '2021-07-30', '11:29:23am', '', '157.34.217.238', '', '', ''),
(17, 'www.navyuggroup.in/ibo_panel/production/Login_Form/get_Sponser_id_check.php?s=', '2021-07-30', '11:29:23am', '', '157.34.217.238', '', '', ''),
(18, 'www.navyuggroup.in/ibo_panel/production/Login_Form/get_Sponser_id_check.php?s=', '2021-07-30', '11:29:23am', '', '157.34.217.238', '', '', ''),
(19, 'www.navyuggroup.in/ibo_panel/production/Login_Form/get_Sponser_id_check.php?s=2', '2021-07-30', '11:29:24am', '', '157.34.217.238', '', '', ''),
(20, 'www.navyuggroup.in/ibo_panel/production/Login_Form/get_Sponser_id_check.php?s=29', '2021-07-30', '11:29:24am', '', '157.34.217.238', '', '', ''),
(21, 'www.navyuggroup.in/ibo_panel/production/Login_Form/get_Sponser_id_check.php?s=297', '2021-07-30', '11:29:24am', '', '157.34.217.238', '', '', ''),
(22, 'www.navyuggroup.in/ibo_panel/production/Login_Form/get_Sponser_id_check.php?s=2974', '2021-07-30', '11:29:24am', '', '157.34.217.238', '', '', ''),
(23, 'www.navyuggroup.in/ibo_panel/production/Login_Form/get_Sponser_id_check.php?s=297', '2021-07-30', '11:30:28am', '', '157.34.217.238', '', '', ''),
(24, 'www.navyuggroup.in/ibo_panel/production/Login_Form/get_Sponser_id_check.php?s=29', '2021-07-30', '11:30:28am', '', '157.34.217.238', '', '', ''),
(25, 'www.navyuggroup.in/ibo_panel/production/Login_Form/get_Sponser_id_check.php?s=297', '2021-07-30', '11:30:30am', '', '157.34.217.238', '', '', ''),
(26, 'www.navyuggroup.in/ibo_panel/production/Login_Form/get_Sponser_id_check.php?s=2974', '2021-07-30', '11:30:31am', '', '157.34.217.238', '', '', ''),
(27, 'www.navyuggroup.in/ibo_panel/production/Login_Form/get_Sponser_id_check.php?s=2', '2021-07-30', '11:35:36am', '', '157.34.217.238', '', '', ''),
(28, 'www.navyuggroup.in/ibo_panel/production/Login_Form/get_Sponser_id_check.php?s=29', '2021-07-30', '11:35:36am', '', '157.34.217.238', '', '', ''),
(29, 'www.navyuggroup.in/ibo_panel/production/Login_Form/get_Sponser_id_check.php?s=297', '2021-07-30', '11:35:37am', '', '157.34.217.238', '', '', ''),
(30, 'www.navyuggroup.in/ibo_panel/production/Login_Form/get_Sponser_id_check.php?s=2974', '2021-07-30', '11:35:37am', '', '157.34.217.238', '', '', ''),
(31, 'www.navyuggroup.in/ibo_panel/production/Login_Form/get_Sponser_id_check.php?s=297', '2021-07-30', '11:35:55am', '', '157.34.217.238', '', '', ''),
(32, 'www.navyuggroup.in/ibo_panel/production/Login_Form/get_Sponser_id_check.php?s=2974', '2021-07-30', '11:35:57am', '', '157.34.217.238', '', '', ''),
(33, 'www.navyuggroup.in/ibo_panel/production/Login_Form/login.php', '2021-07-30', '11:36:03am', '', '157.34.217.238', '', '', ''),
(34, 'www.navyuggroup.in/ibo_panel/production/Login_Form/get_Sponser_id_check.php?s=1', '2021-07-30', '11:37:15am', '', '157.34.217.238', '', '', ''),
(35, 'www.navyuggroup.in/', '2021-07-30', '11:50:21am', '', '31.13.127.15', '', '', ''),
(36, 'www.navyuggroup.in/ibo_panel/production/Login_Form/get_Sponser_id_check.php?s=n', '2021-07-30', '12:17:59pm', '', '157.34.217.238', '', '', ''),
(37, 'www.navyuggroup.in/ibo_panel/production/Login_Form/get_Sponser_id_check.php?s=ng', '2021-07-30', '12:17:59pm', '', '157.34.217.238', '', '', ''),
(38, 'www.navyuggroup.in/ibo_panel/production/Login_Form/get_Sponser_id_check.php?s=ng2', '2021-07-30', '12:18:03pm', '', '157.34.217.238', '', '', ''),
(39, 'www.navyuggroup.in/ibo_panel/production/Login_Form/get_Sponser_id_check.php?s=ng26', '2021-07-30', '12:18:03pm', '', '157.34.217.238', '', '', ''),
(40, 'www.navyuggroup.in/ibo_panel/production/Login_Form/get_Sponser_id_check.php?s=ng269', '2021-07-30', '12:18:03pm', '', '157.34.217.238', '', '', ''),
(41, 'www.navyuggroup.in/ibo_panel/production/Login_Form/get_Sponser_id_check.php?s=ng2697', '2021-07-30', '12:18:03pm', '', '157.34.217.238', '', '', ''),
(42, 'www.navyuggroup.in/ibo_panel/production/Login_Form/get_Sponser_id_check.php?s=ng269', '2021-07-30', '12:18:04pm', '', '157.34.217.238', '', '', ''),
(43, 'www.navyuggroup.in/ibo_panel/production/Login_Form/get_Sponser_id_check.php?s=ng26', '2021-07-30', '12:18:05pm', '', '157.34.217.238', '', '', ''),
(44, 'www.navyuggroup.in/ibo_panel/production/Login_Form/get_Sponser_id_check.php?s=ng2', '2021-07-30', '12:18:05pm', '', '157.34.217.238', '', '', ''),
(45, 'www.navyuggroup.in/ibo_panel/production/Login_Form/get_Sponser_id_check.php?s=ng29', '2021-07-30', '12:18:06pm', '', '157.34.217.238', '', '', ''),
(46, 'www.navyuggroup.in/ibo_panel/production/Login_Form/get_Sponser_id_check.php?s=ng297', '2021-07-30', '12:18:06pm', '', '157.34.217.238', '', '', ''),
(47, 'www.navyuggroup.in/ibo_panel/production/Login_Form/get_Sponser_id_check.php?s=ng2974', '2021-07-30', '12:18:06pm', '', '157.34.217.238', '', '', ''),
(48, 'www.navyuggroup.in/ibo_panel/production/Login_Form/get_Sponser_id_check.php?s=ng2974', '2021-07-30', '12:18:09pm', '', '157.34.217.238', '', '', ''),
(49, 'www.navyuggroup.in/ibo_panel/production/Login_Form/get_Sponser_id_check.php?s=ng2974', '2021-07-30', '12:18:09pm', '', '157.34.217.238', '', '', ''),
(50, 'www.navyuggroup.in/ibo_panel/production/Login_Form/get_Sponser_id_check.php?s=ng2974', '2021-07-30', '12:18:09pm', '', '157.34.217.238', '', '', ''),
(51, 'www.navyuggroup.in/ibo_panel/production/Login_Form/get_Sponser_id_check.php?s=n2974', '2021-07-30', '12:18:10pm', '', '157.34.217.238', '', '', ''),
(52, 'www.navyuggroup.in/ibo_panel/production/Login_Form/get_Sponser_id_check.php?s=2974', '2021-07-30', '12:18:10pm', '', '157.34.217.238', '', '', ''),
(53, 'www.navyuggroup.in/ibo_panel/production/Login_Form/get_Sponser_id_check.php?s=ng2974', '2021-07-30', '12:18:10pm', '', '157.34.217.238', '', '', ''),
(54, 'www.navyuggroup.in/ibo_panel/production/Login_Form/get_Sponser_id_check.php?s=2974', '2021-07-30', '12:18:10pm', '', '157.34.217.238', '', '', ''),
(55, 'www.navyuggroup.in/ibo_panel/production/Login_Form/get_Sponser_id_check.php?s=n2974', '2021-07-30', '12:18:11pm', '', '157.34.217.238', '', '', ''),
(56, 'www.navyuggroup.in/ibo_panel/production/Login_Form/get_Sponser_id_check.php?s=ng2974', '2021-07-30', '12:18:12pm', '', '157.34.217.238', '', '', ''),
(57, 'www.navyuggroup.in/ibo_panel/production/Login_Form/get_Sponser_id_check.php?s=ng297', '2021-07-30', '12:18:15pm', '', '157.34.217.238', '', '', ''),
(58, 'www.navyuggroup.in/ibo_panel/production/Login_Form/get_Sponser_id_check.php?s=ng2973', '2021-07-30', '12:18:15pm', '', '157.34.217.238', '', '', ''),
(59, 'www.navyuggroup.in/ibo_panel/production/Login_Form/get_Sponser_id_check.php?s=ng297', '2021-07-30', '12:18:17pm', '', '157.34.217.238', '', '', ''),
(60, 'www.navyuggroup.in/ibo_panel/production/Login_Form/get_Sponser_id_check.php?s=ng2974', '2021-07-30', '12:18:17pm', '', '157.34.217.238', '', '', ''),
(61, 'www.navyuggroup.in/ibo_panel/production/Login_Form/get_Sponser_id_check.php?s=ng297', '2021-07-30', '12:18:18pm', '', '157.34.217.238', '', '', ''),
(62, 'www.navyuggroup.in/ibo_panel/production/Login_Form/get_Sponser_id_check.php?s=ng2975', '2021-07-30', '12:18:18pm', '', '157.34.217.238', '', '', ''),
(63, 'www.navyuggroup.in/ibo_panel/production/Login_Form/get_Sponser_id_check.php?s=ng297', '2021-07-30', '12:18:19pm', '', '157.34.217.238', '', '', ''),
(64, 'www.navyuggroup.in/ibo_panel/production/Login_Form/get_Sponser_id_check.php?s=ng2976', '2021-07-30', '12:18:19pm', '', '157.34.217.238', '', '', ''),
(65, 'www.navyuggroup.in/ibo_panel/production/Login_Form/get_Sponser_id_check.php?s=ng297', '2021-07-30', '12:18:19pm', '', '157.34.217.238', '', '', ''),
(66, 'www.navyuggroup.in/ibo_panel/production/Login_Form/get_Sponser_id_check.php?s=ng2974', '2021-07-30', '12:18:20pm', '', '157.34.217.238', '', '', ''),
(67, 'www.navyuggroup.in/ibo_panel/production/Login_Form/get_mob_check.php?q=7869470415', '2021-07-30', '12:19:41pm', '', '157.34.217.238', '', '', ''),
(68, 'www.navyuggroup.in/ibo_panel/production/Login_Form/get_email_check.php?e=gidolia3@gmail.com', '2021-07-30', '12:19:42pm', '', '157.34.217.238', '', '', ''),
(69, 'www.navyuggroup.in/ibo_panel/production/Login_Form/get_mob_check.php?q=786947041', '2021-07-30', '12:19:45pm', '', '157.34.217.238', '', '', ''),
(70, 'www.navyuggroup.in/ibo_panel/production/Login_Form/get_mob_check.php?q=7869470415', '2021-07-30', '12:19:45pm', '', '157.34.217.238', '', '', ''),
(71, 'www.navyuggroup.in/ibo_panel/production/Login_Form/get_mob_check.php?q=786947041', '2021-07-30', '12:19:46pm', '', '157.34.217.238', '', '', ''),
(72, 'www.navyuggroup.in/ibo_panel/production/Login_Form/get_mob_check.php?q=7869470414', '2021-07-30', '12:19:46pm', '', '157.34.217.238', '', '', ''),
(73, 'www.navyuggroup.in/ibo_panel/production/Login_Form/get_email_check.php?e=gidolia53@gmail.com', '2021-07-30', '12:19:48pm', '', '157.34.217.238', '', '', ''),
(74, 'www.navyuggroup.in/ibo_panel/production/Login_Form/process_reg_form.php', '2021-07-30', '12:21:15pm', '', '157.34.217.238', '', '', ''),
(75, 'www.navyuggroup.in/ibo_panel/production/Login_Form/reg_successful.php?d_id=134575704', '2021-07-30', '12:21:16pm', '', '157.34.217.238', '', '', ''),
(76, 'www.navyuggroup.in/ibo_panel/production/Login_Form/login.php', '2021-07-30', '12:21:29pm', '', '157.34.217.238', '', '', ''),
(77, 'www.navyuggroup.in/ibo_panel/production/Login_Form/login.php', '2021-07-30', '12:21:41pm', '', '157.34.217.238', '', '', ''),
(78, 'www.navyuggroup.in/ibo_panel/production/index.php', '2021-07-30', '12:21:42pm', '', '157.34.217.238', '', '', ''),
(79, 'navyuggroup.in/index.php', '2021-07-30', '12:23:53pm', '', '157.34.217.238', '', '', ''),
(80, 'navyuggroup.in/index.php', '2021-07-30', '12:23:56pm', '', '183.87.151.69', '', '', ''),
(81, 'navyuggroup.in/index.php', '2021-07-30', '12:24:07pm', '', '183.87.151.69', '', '', ''),
(82, 'navyuggroup.in/index.php', '2021-07-30', '12:24:15pm', '', '157.34.217.238', '', '', ''),
(83, 'www.navyuggroup.in/ibo_panel/production/index.php', '2021-07-30', '01:06:24pm', '', '157.34.217.238', '', '', ''),
(84, 'www.navyuggroup.in/ibo_panel/production/Login_Form/login.php', '2021-07-30', '01:06:24pm', '', '157.34.217.238', '', '', ''),
(85, 'www.navyuggroup.in/ibo_panel/production/Login_Form/login.php', '2021-07-30', '01:06:31pm', '', '157.34.217.238', '', '', ''),
(86, 'www.navyuggroup.in/ibo_panel/production/index.php', '2021-07-30', '01:06:31pm', '', '157.34.217.238', '', '', ''),
(87, 'www.navyuggroup.in/ibo_panel/production/activate_id_pina.php', '2021-07-30', '01:06:33pm', '', '157.34.217.238', '', '', ''),
(88, 'www.navyuggroup.in/ibo_panel/production/submit_payment_detail.php', '2021-07-30', '01:06:36pm', '', '157.34.217.238', '', '', ''),
(89, 'www.navyuggroup.in/ibo_panel/production/submit_payment_detail.php', '2021-07-30', '01:06:53pm', '', '157.34.217.238', '', '', ''),
(90, 'www.navyuggroup.in/ibo_panel/production/payment_request_history.php', '2021-07-30', '01:06:57pm', '', '157.34.217.238', '', '', ''),
(91, 'www.navyuggroup.in/admin/ibo_panel/production/web_index.php', '2021-07-30', '01:07:08pm', '', '157.34.217.238', '', '', ''),
(92, 'www.navyuggroup.in/admin/ibo_panel/production/login.php', '2021-07-30', '01:07:08pm', '', '157.34.217.238', '', '', ''),
(93, 'www.navyuggroup.in/admin/ibo_panel/production/login.php', '2021-07-30', '01:07:11pm', '', '157.34.217.238', '', '', ''),
(94, 'www.navyuggroup.in/admin/ibo_panel/production/index.php', '2021-07-30', '01:07:11pm', '', '157.34.217.238', '', '', ''),
(95, 'www.navyuggroup.in/admin/ibo_panel/production/payment_request_history.php', '2021-07-30', '01:07:14pm', '', '157.34.217.238', '', '', ''),
(96, 'www.navyuggroup.in/admin/ibo_panel/production/process_clear_payment_request.php?pr_id=1&clear_payment=y', '2021-07-30', '01:07:17pm', '', '157.34.217.238', '', '', ''),
(97, 'www.navyuggroup.in/admin/ibo_panel/production/payment_request_history.php', '2021-07-30', '01:07:18pm', '', '157.34.217.238', '', '', ''),
(98, 'www.navyuggroup.in/ibo_panel/production/payment_request_history.php', '2021-07-30', '01:13:54pm', '', '157.34.217.238', '', '', ''),
(99, 'www.navyuggroup.in/admin/ibo_panel/production/payment_request_history.php', '2021-07-30', '01:14:04pm', '', '157.34.217.238', '', '', ''),
(100, 'www.navyuggroup.in/admin/ibo_panel/production/activate_id_request.php', '2021-07-30', '01:14:11pm', '', '157.34.217.238', '', '', ''),
(101, 'www.navyuggroup.in/ibo_panel/production/payment_request_history.php', '2021-07-30', '01:14:45pm', '', '157.34.217.238', '', '', ''),
(102, 'www.navyuggroup.in/ibo_panel/production/submit_payment_detail.php', '2021-07-30', '01:14:59pm', '', '157.34.217.238', '', '', ''),
(103, 'www.navyuggroup.in/admin/ibo_panel/production/payment_request_history.php', '2021-07-30', '01:15:40pm', '', '157.34.217.238', '', '', ''),
(104, 'www.navyuggroup.in/ibo_panel/production/submit_payment_detail.php', '2021-07-30', '02:19:36pm', '', '27.62.246.19', '', '', ''),
(105, 'www.navyuggroup.in/ibo_panel/production/Login_Form/login.php', '2021-07-30', '02:19:36pm', '', '27.62.246.19', '', '', ''),
(106, 'www.navyuggroup.in/ibo_panel/production/Login_Form/login.php', '2021-07-30', '02:19:46pm', '', '27.62.246.19', '', '', ''),
(107, 'www.navyuggroup.in/ibo_panel/production/index.php', '2021-07-30', '02:19:46pm', '', '27.62.246.19', '', '', ''),
(108, 'www.navyuggroup.in/ibo_panel/production/submit_payment_detail.php', '2021-07-30', '02:19:51pm', '', '27.62.246.19', '', '', ''),
(109, 'www.navyuggroup.in/ibo_panel/production/submit_payment_detail.php', '2021-07-30', '02:20:06pm', '', '27.62.246.19', '', '', ''),
(110, 'www.navyuggroup.in/ibo_panel/production/payment_request_history.php', '2021-07-30', '02:20:08pm', '', '27.62.246.19', '', '', ''),
(111, 'www.navyuggroup.in/admin/ibo_panel/production/payment_request_history.php', '2021-07-30', '02:20:12pm', '', '27.62.246.19', '', '', ''),
(112, 'www.navyuggroup.in/admin/ibo_panel/production/login.php', '2021-07-30', '02:20:13pm', '', '27.62.246.19', '', '', ''),
(113, 'www.navyuggroup.in/admin/ibo_panel/production/login.php', '2021-07-30', '02:20:16pm', '', '27.62.246.19', '', '', ''),
(114, 'www.navyuggroup.in/admin/ibo_panel/production/index.php', '2021-07-30', '02:20:16pm', '', '27.62.246.19', '', '', ''),
(115, 'www.navyuggroup.in/admin/ibo_panel/production/payment_request_history.php', '2021-07-30', '02:20:20pm', '', '27.62.246.19', '', '', ''),
(116, 'www.navyuggroup.in/admin/ibo_panel/production/process_clear_payment_request.php?pr_id=2&clear_payment=y', '2021-07-30', '02:20:25pm', '', '27.62.246.19', '', '', ''),
(117, 'www.navyuggroup.in/admin/ibo_panel/production/payment_request_history.php', '2021-07-30', '02:20:28pm', '', '27.62.246.19', '', '', ''),
(118, 'www.navyuggroup.in/admin/ibo_panel/production/change_pass.php', '2021-07-30', '02:20:43pm', '', '27.62.246.19', '', '', ''),
(119, 'www.navyuggroup.in/admin/ibo_panel/production/index.php', '2021-07-30', '02:20:50pm', '', '27.62.246.19', '', '', ''),
(120, 'www.navyuggroup.in/ibo_panel/production/submit_payment_detail.php', '2021-07-30', '02:21:05pm', '', '27.62.246.19', '', '', ''),
(121, 'www.navyuggroup.in/ibo_panel/production/submit_payment_detail.php', '2021-07-30', '02:21:09pm', '', '27.62.246.19', '', '', ''),
(122, 'www.navyuggroup.in/ibo_panel/production/submit_payment_detail.php', '2021-07-30', '02:21:14pm', '', '27.62.246.19', '', '', ''),
(123, 'www.navyuggroup.in/ibo_panel/production/level_income.php', '2021-07-30', '02:21:22pm', '', '27.62.246.19', '', '', ''),
(124, 'www.navyuggroup.in/ibo_panel/production/network_list.php', '2021-07-30', '02:56:40pm', '', '157.34.202.33', '', '', ''),
(125, 'navyuggroup.in/', '2021-07-30', '04:29:37pm', '', '54.36.148.39', '', '', ''),
(126, 'www.navyuggroup.in/admin/ibo_panel/production/index.php', '2021-07-30', '04:50:50pm', '', '27.62.246.19', '', '', ''),
(127, 'www.navyuggroup.in/ibo_panel/production/network_list.php', '2021-07-30', '04:50:50pm', '', '27.62.246.19', '', '', ''),
(128, 'www.navyuggroup.in/admin/ibo_panel/production/login.php', '2021-07-30', '04:50:51pm', '', '27.62.246.19', '', '', ''),
(129, 'www.navyuggroup.in/ibo_panel/production/Login_Form/login.php', '2021-07-30', '04:50:51pm', '', '27.62.246.19', '', '', ''),
(130, 'www.navyuggroup.in/admin/ibo_panel/production/login.php', '2021-07-30', '04:51:43pm', '', '27.62.246.19', '', '', ''),
(131, 'www.navyuggroup.in/admin/ibo_panel/production/index.php', '2021-07-30', '04:51:43pm', '', '27.62.246.19', '', '', ''),
(132, 'www.navyuggroup.in/ibo_panel/production/Login_Form/login.php', '2021-07-30', '04:51:50pm', '', '27.62.246.19', '', '', ''),
(133, 'www.navyuggroup.in/ibo_panel/production/index.php', '2021-07-30', '04:51:50pm', '', '27.62.246.19', '', '', ''),
(134, 'www.navyuggroup.in/ibo_panel/production/kyc.php', '2021-07-30', '04:51:53pm', '', '27.62.246.19', '', '', ''),
(135, 'www.navyuggroup.in/ibo_panel/production/kyc.php', '2021-07-30', '04:52:04pm', '', '27.62.246.19', '', '', ''),
(136, 'www.navyuggroup.in/ibo_panel/production/kyc.php', '2021-07-30', '04:52:08pm', '', '27.62.246.19', '', '', ''),
(137, 'www.navyuggroup.in/admin/ibo_panel/production/web_index.php', '2021-07-30', '04:52:18pm', '', '27.62.246.19', '', '', ''),
(138, 'www.navyuggroup.in/admin/ibo_panel/production/index.php', '2021-07-30', '04:56:04pm', '', '27.62.246.19', '', '', ''),
(139, 'www.navyuggroup.in/admin/ibo_panel/production/network_list.php', '2021-07-30', '04:56:07pm', '', '27.62.246.19', '', '', ''),
(140, 'www.navyuggroup.in/admin/ibo_panel/production/network_list.php', '2021-07-30', '04:56:14pm', '', '27.62.246.19', '', '', ''),
(141, 'www.navyuggroup.in/admin/ibo_panel/production/d_detail.php?d_id=2974', '2021-07-30', '04:56:19pm', '', '27.62.246.19', '', '', ''),
(142, 'www.navyuggroup.in/admin/ibo_panel/production/', '2021-07-30', '05:09:58pm', '', '27.62.246.19', '', '', ''),
(143, 'www.navyuggroup.in/admin/ibo_panel/production/request_clear_adhar_card.php', '2021-07-30', '05:09:58pm', '', '27.62.246.19', '', '', ''),
(144, 'www.navyuggroup.in/ibo_panel/production/kyc.php', '2021-07-30', '05:13:07pm', '', '27.62.246.19', '', '', ''),
(145, 'www.navyuggroup.in/ibo_panel/production/kyc.php', '2021-07-30', '05:13:08pm', '', '27.62.246.19', '', '', ''),
(146, 'www.navyuggroup.in/admin/ibo_panel/production/request_clear_adhar_card.php', '2021-07-30', '05:13:13pm', '', '27.62.246.19', '', '', ''),
(147, 'www.navyuggroup.in/admin/ibo_panel/production/request_clear_adhar_card.php', '2021-07-30', '05:21:50pm', '', '27.62.246.19', '', '', ''),
(148, 'www.navyuggroup.in/admin/ibo_panel/production/request_clear_adhar_card.php', '2021-07-30', '05:23:21pm', '', '27.62.246.19', '', '', ''),
(149, 'www.navyuggroup.in/admin/ibo_panel/production/request_clear_pan_card.php', '2021-07-30', '05:23:23pm', '', '27.62.246.19', '', '', ''),
(150, 'www.navyuggroup.in/admin/ibo_panel/production/request_clear_pan_card.php', '2021-07-30', '05:27:40pm', '', '27.62.246.19', '', '', ''),
(151, 'www.navyuggroup.in/admin/ibo_panel/production/request_clear_pan_card.php', '2021-07-30', '05:27:47pm', '', '27.62.246.19', '', '', ''),
(152, 'www.navyuggroup.in/admin/ibo_panel/production/request_clear_adhar_card.php', '2021-07-30', '05:27:52pm', '', '27.62.246.19', '', '', ''),
(153, 'www.navyuggroup.in/admin/ibo_panel/production/request_clear_adhar_card.php', '2021-07-30', '05:29:12pm', '', '27.62.246.19', '', '', ''),
(154, 'www.navyuggroup.in/ibo_panel/production/index.php', '2021-07-30', '05:29:40pm', '', '27.62.246.19', '', '', ''),
(155, 'www.navyuggroup.in/ibo_panel/production/index.php', '2021-07-30', '05:34:01pm', '', '27.62.246.19', '', '', ''),
(156, 'www.navyuggroup.in/ibo_panel/production/index.php', '2021-07-30', '05:39:02pm', '', '27.62.246.19', '', '', ''),
(157, 'www.navyuggroup.in/ibo_panel/production/activate_id_pina.php', '2021-07-30', '05:43:32pm', '', '27.62.246.19', '', '', ''),
(158, 'www.navyuggroup.in/ibo_panel/production/index.php', '2021-07-30', '05:44:12pm', '', '27.62.246.19', '', '', ''),
(159, 'www.navyuggroup.in/contact.php', '2021-07-30', '05:46:50pm', '', '40.77.167.28', '', '', ''),
(160, 'www.navyuggroup.in/ibo_panel/production/Login_Form/login.php', '2021-07-30', '05:50:28pm', '', '27.62.246.19', '', '', ''),
(161, 'www.navyuggroup.in/ibo_panel/production/Login_Form/get_Sponser_id_check.php?s=n', '2021-07-30', '05:50:34pm', '', '27.62.246.19', '', '', ''),
(162, 'www.navyuggroup.in/ibo_panel/production/Login_Form/get_Sponser_id_check.php?s=ng', '2021-07-30', '05:50:35pm', '', '27.62.246.19', '', '', ''),
(163, 'www.navyuggroup.in/ibo_panel/production/Login_Form/get_Sponser_id_check.php?s=ng2', '2021-07-30', '05:50:36pm', '', '27.62.246.19', '', '', ''),
(164, 'www.navyuggroup.in/ibo_panel/production/Login_Form/get_Sponser_id_check.php?s=ng29', '2021-07-30', '05:50:36pm', '', '27.62.246.19', '', '', ''),
(165, 'www.navyuggroup.in/ibo_panel/production/Login_Form/get_Sponser_id_check.php?s=ng297', '2021-07-30', '05:50:36pm', '', '27.62.246.19', '', '', ''),
(166, 'www.navyuggroup.in/ibo_panel/production/Login_Form/get_Sponser_id_check.php?s=ng2974', '2021-07-30', '05:50:36pm', '', '27.62.246.19', '', '', ''),
(167, 'www.navyuggroup.in/ibo_panel/production/Login_Form/get_mob_check.php?q=7869470415', '2021-07-30', '05:50:49pm', '', '27.62.246.19', '', '', ''),
(168, 'www.navyuggroup.in/ibo_panel/production/Login_Form/get_email_check.php?e=gidolia3@gmail.com', '2021-07-30', '05:50:51pm', '', '27.62.246.19', '', '', ''),
(169, 'www.navyuggroup.in/ibo_panel/production/Login_Form/get_mob_check.php?q=786947043', '2021-07-30', '05:50:53pm', '', '27.62.246.19', '', '', ''),
(170, 'www.navyuggroup.in/ibo_panel/production/Login_Form/get_mob_check.php?q=7869470434', '2021-07-30', '05:50:53pm', '', '27.62.246.19', '', '', ''),
(171, 'www.navyuggroup.in/ibo_panel/production/Login_Form/get_email_check.php?e=gidolia334@gmail.com', '2021-07-30', '05:50:54pm', '', '27.62.246.19', '', '', ''),
(172, 'www.navyuggroup.in/ibo_panel/production/Login_Form/get_email_check.php?e=gidolia334@gmail.com', '2021-07-30', '05:50:54pm', '', '27.62.246.19', '', '', ''),
(173, 'www.navyuggroup.in/ibo_panel/production/Login_Form/process_reg_form.php', '2021-07-30', '05:51:03pm', '', '27.62.246.19', '', '', ''),
(174, 'www.navyuggroup.in/ibo_panel/production/Login_Form/reg_successful.php?d_id=104323632', '2021-07-30', '05:51:05pm', '', '27.62.246.19', '', '', ''),
(175, 'www.navyuggroup.in/ibo_panel/production/Login_Form/login.php', '2021-07-30', '05:51:10pm', '', '27.62.246.19', '', '', ''),
(176, 'www.navyuggroup.in/ibo_panel/production/Login_Form/login.php', '2021-07-30', '05:51:20pm', '', '27.62.246.19', '', '', ''),
(177, 'www.navyuggroup.in/ibo_panel/production/index.php', '2021-07-30', '05:51:21pm', '', '27.62.246.19', '', '', ''),
(178, 'www.navyuggroup.in/ibo_panel/production/network_list.php', '2021-07-30', '05:51:22pm', '', '27.62.246.19', '', '', ''),
(179, 'www.navyuggroup.in/ibo_panel/production/index.php', '2021-07-30', '05:51:27pm', '', '27.62.246.19', '', '', ''),
(180, 'www.navyuggroup.in/ibo_panel/production/network_list.php', '2021-07-30', '05:51:32pm', '', '27.62.246.19', '', '', ''),
(181, 'www.navyuggroup.in/ibo_panel/production/network_list.php', '2021-07-30', '05:51:57pm', '', '27.62.246.19', '', '', ''),
(182, 'www.navyuggroup.in/ibo_panel/production/level1.php', '2021-07-30', '05:51:59pm', '', '27.62.246.19', '', '', ''),
(183, 'www.navyuggroup.in/ibo_panel/production/level2.php', '2021-07-30', '05:52:05pm', '', '27.62.246.19', '', '', ''),
(184, 'www.navyuggroup.in/ibo_panel/production/level3.php', '2021-07-30', '05:52:06pm', '', '27.62.246.19', '', '', ''),
(185, 'www.navyuggroup.in/ibo_panel/production/level1.php', '2021-07-30', '05:52:07pm', '', '27.62.246.19', '', '', ''),
(186, 'www.navyuggroup.in/ibo_panel/production/network_list.php', '2021-07-30', '05:52:09pm', '', '27.62.246.19', '', '', ''),
(187, 'www.navyuggroup.in/ibo_panel/production/Login_Form/login.php', '2021-07-30', '05:52:14pm', '', '27.62.246.19', '', '', ''),
(188, 'www.navyuggroup.in/ibo_panel/production/Login_Form/login.php', '2021-07-30', '05:52:20pm', '', '27.62.246.19', '', '', ''),
(189, 'www.navyuggroup.in/ibo_panel/production/Login_Form/login.php', '2021-07-30', '05:52:22pm', '', '27.62.246.19', '', '', ''),
(190, 'www.navyuggroup.in/ibo_panel/production/Login_Form/login.php', '2021-07-30', '05:52:30pm', '', '27.62.246.19', '', '', ''),
(191, 'www.navyuggroup.in/ibo_panel/production/index.php', '2021-07-30', '05:52:31pm', '', '27.62.246.19', '', '', ''),
(192, 'www.navyuggroup.in/ibo_panel/production/kyc.php', '2021-07-30', '05:52:35pm', '', '27.62.246.19', '', '', ''),
(193, 'www.navyuggroup.in/ibo_panel/production/index.php', '2021-07-30', '05:52:46pm', '', '27.62.246.19', '', '', ''),
(194, 'www.navyuggroup.in/ibo_panel/production/submit_payment_detail.php', '2021-07-30', '05:52:53pm', '', '27.62.246.19', '', '', ''),
(195, 'www.navyuggroup.in/ibo_panel/production/submit_payment_detail.php', '2021-07-30', '05:53:09pm', '', '27.62.246.19', '', '', ''),
(196, 'www.navyuggroup.in/ibo_panel/production/payment_request_history.php', '2021-07-30', '05:53:11pm', '', '27.62.246.19', '', '', ''),
(197, 'www.navyuggroup.in/admin/ibo_panel/production/payment_request_history.php', '2021-07-30', '05:53:19pm', '', '27.62.246.19', '', '', ''),
(198, 'www.navyuggroup.in/admin/ibo_panel/production/login.php', '2021-07-30', '05:53:19pm', '', '27.62.246.19', '', '', ''),
(199, 'www.navyuggroup.in/admin/ibo_panel/production/login.php', '2021-07-30', '05:53:22pm', '', '27.62.246.19', '', '', ''),
(200, 'www.navyuggroup.in/admin/ibo_panel/production/index.php', '2021-07-30', '05:53:23pm', '', '27.62.246.19', '', '', ''),
(201, 'www.navyuggroup.in/admin/ibo_panel/production/payment_request_history.php', '2021-07-30', '05:53:25pm', '', '27.62.246.19', '', '', ''),
(202, 'www.navyuggroup.in/admin/ibo_panel/production/process_clear_payment_request.php?pr_id=3&clear_payment=y', '2021-07-30', '05:53:33pm', '', '27.62.246.19', '', '', ''),
(203, 'www.navyuggroup.in/admin/ibo_panel/production/payment_request_history.php', '2021-07-30', '05:53:35pm', '', '27.62.246.19', '', '', ''),
(204, 'www.navyuggroup.in/ibo_panel/production/payment_request_history.php', '2021-07-30', '05:53:41pm', '', '27.62.246.19', '', '', ''),
(205, 'www.navyuggroup.in/ibo_panel/production/index.php', '2021-07-30', '05:53:44pm', '', '27.62.246.19', '', '', ''),
(206, 'www.navyuggroup.in/ibo_panel/production/submit_payment_detail.php', '2021-07-30', '05:53:55pm', '', '27.62.246.19', '', '', ''),
(207, 'www.navyuggroup.in/ibo_panel/production/payment_request_history.php', '2021-07-30', '05:54:57pm', '', '27.62.246.19', '', '', ''),
(208, 'www.navyuggroup.in/ibo_panel/production/submit_payment_detail.php', '2021-07-30', '05:55:03pm', '', '27.62.246.19', '', '', ''),
(209, 'www.navyuggroup.in/ibo_panel/production/submit_payment_detail.php', '2021-07-30', '05:55:06pm', '', '27.62.246.19', '', '', ''),
(210, 'www.navyuggroup.in/ibo_panel/production/submit_payment_detail.php', '2021-07-30', '05:55:07pm', '', '27.62.246.19', '', '', ''),
(211, 'www.navyuggroup.in/ibo_panel/production/Login_Form/login.php', '2021-07-30', '05:55:10pm', '', '27.62.246.19', '', '', ''),
(212, 'www.navyuggroup.in/ibo_panel/production/Login_Form/login.php', '2021-07-30', '05:55:18pm', '', '27.62.246.19', '', '', ''),
(213, 'www.navyuggroup.in/ibo_panel/production/index.php', '2021-07-30', '05:55:18pm', '', '27.62.246.19', '', '', ''),
(214, 'www.navyuggroup.in/ibo_panel/production/submit_payment_detail.php', '2021-07-30', '05:55:20pm', '', '27.62.246.19', '', '', ''),
(215, 'www.navyuggroup.in/ibo_panel/production/submit_payment_detail.php', '2021-07-30', '05:55:22pm', '', '27.62.246.19', '', '', ''),
(216, 'www.navyuggroup.in/ibo_panel/production/level_income.php', '2021-07-30', '05:55:23pm', '', '27.62.246.19', '', '', ''),
(217, 'www.navyuggroup.in/ibo_panel/production/kyc.php', '2021-07-30', '05:56:06pm', '', '27.62.246.19', '', '', ''),
(218, 'www.navyuggroup.in/ibo_panel/production/change_password.php', '2021-07-30', '05:56:08pm', '', '27.62.246.19', '', '', ''),
(219, 'www.navyuggroup.in/ibo_panel/production/profile_edit.php', '2021-07-30', '05:56:10pm', '', '27.62.246.19', '', '', ''),
(220, 'www.navyuggroup.in/ibo_panel/production/submit_payment_detail.php', '2021-07-30', '05:56:18pm', '', '27.62.246.19', '', '', ''),
(221, 'www.navyuggroup.in/ibo_panel/production/index.php', '2021-07-30', '05:59:06pm', '', '27.62.246.19', '', '', ''),
(222, 'www.navyuggroup.in/ibo_panel/production/tree.php', '2021-07-30', '06:00:48pm', '', '27.62.246.19', '', '', ''),
(223, 'www.navyuggroup.in/ibo_panel/production/tree_view.php', '2021-07-30', '06:00:48pm', '', '27.62.246.19', '', '', ''),
(224, 'www.navyuggroup.in/ibo_panel/production/payment_request_history.php', '2021-07-30', '06:00:51pm', '', '27.62.246.19', '', '', ''),
(225, 'www.navyuggroup.in/ibo_panel/production/level_income.php', '2021-07-30', '06:00:55pm', '', '27.62.246.19', '', '', ''),
(226, 'www.navyuggroup.in/admin/ibo_panel/production/network_list.php', '2021-07-30', '06:04:20pm', '', '27.62.246.19', '', '', ''),
(227, 'www.navyuggroup.in/admin/ibo_panel/production/login.php', '2021-07-30', '06:04:21pm', '', '27.62.246.19', '', '', ''),
(228, 'www.navyuggroup.in/admin/ibo_panel/production/login.php', '2021-07-30', '06:04:24pm', '', '27.62.246.19', '', '', ''),
(229, 'www.navyuggroup.in/admin/ibo_panel/production/index.php', '2021-07-30', '06:04:24pm', '', '27.62.246.19', '', '', ''),
(230, 'www.navyuggroup.in/admin/ibo_panel/production/network_list.php', '2021-07-30', '06:04:27pm', '', '27.62.246.19', '', '', ''),
(231, 'www.navyuggroup.in/admin/ibo_panel/production/d_detail.php?d_id=2974', '2021-07-30', '06:04:33pm', '', '27.62.246.19', '', '', ''),
(232, 'www.navyuggroup.in/admin/ibo_panel/production/d_detail.php?d_id=2974', '2021-07-30', '06:04:39pm', '', '27.62.246.19', '', '', ''),
(233, 'www.navyuggroup.in/admin/ibo_panel/production/payment_request_history.php', '2021-07-30', '06:07:47pm', '', '27.62.246.19', '', '', ''),
(234, 'www.navyuggroup.in/admin/ibo_panel/production/request_clear_adhar_card.php', '2021-07-30', '06:08:07pm', '', '27.62.246.19', '', '', ''),
(235, 'www.navyuggroup.in/admin/ibo_panel/production/payment_request_history.php', '2021-07-30', '06:09:25pm', '', '27.62.246.19', '', '', ''),
(236, 'www.navyuggroup.in/admin/ibo_panel/production/request_clear_adhar_card.php', '2021-07-30', '06:09:41pm', '', '27.62.246.19', '', '', ''),
(237, 'www.navyuggroup.in/ibo_panel/production/level1.php', '2021-07-30', '06:38:05pm', '', '157.34.195.189', '', '', ''),
(238, 'www.navyuggroup.in/ibo_panel/production/network_list.php', '2021-07-30', '06:38:08pm', '', '157.34.195.189', '', '', ''),
(239, 'www.navyuggroup.in/ibo_panel/production/network_list.php', '2021-07-30', '06:38:11pm', '', '157.34.195.189', '', '', ''),
(240, 'www.navyuggroup.in/admin/ibo_panel/production/request_clear_adhar_card.php', '2021-07-30', '06:40:36pm', '', '157.34.195.189', '', '', ''),
(241, 'www.navyuggroup.in/ibo_panel/production/network_list.php', '2021-07-30', '06:40:40pm', '', '157.34.195.189', '', '', ''),
(242, 'www.navyuggroup.in/ibo_panel/production/level1.php', '2021-07-30', '06:40:42pm', '', '157.34.195.189', '', '', ''),
(243, 'www.navyuggroup.in/ibo_panel/production/tree.php', '2021-07-30', '06:40:44pm', '', '157.34.195.189', '', '', ''),
(244, 'www.navyuggroup.in/ibo_panel/production/tree_view.php', '2021-07-30', '06:40:44pm', '', '157.34.195.189', '', '', ''),
(245, 'navyuggroup.in/', '2021-07-31', '07:55:18am', '', '54.36.148.39', '', '', ''),
(246, 'navyuggroup.in/', '2021-07-31', '08:25:29am', '', '144.86.173.17', '', '', ''),
(247, 'navyuggroup.in/', '2021-07-31', '08:34:39am', '', '92.118.160.57', '', '', ''),
(248, 'navyuggroup.in/', '2021-07-31', '10:16:31am', '', '144.86.173.72', '', '', ''),
(249, 'www.navyuggroup.in/contact.php', '2021-07-31', '12:02:09pm', '', '27.62.216.104', '', '', ''),
(250, 'www.navyuggroup.in/index.php', '2021-07-31', '12:03:39pm', '', '27.62.216.104', '', '', ''),
(251, 'www.navyuggroup.in/index.php', '2021-07-31', '12:03:43pm', '', '27.62.216.104', '', '', ''),
(252, 'www.navyuggroup.in/ibo_panel/production/tree.php', '2021-07-31', '12:05:46pm', '', '27.62.216.104', '', '', ''),
(253, 'www.navyuggroup.in/ibo_panel/production/Login_Form/login.php', '2021-07-31', '12:05:47pm', '', '27.62.216.104', '', '', ''),
(254, 'www.navyuggroup.in/ibo_panel/production/Login_Form/login.php', '2021-07-31', '12:06:00pm', '', '27.62.216.104', '', '', ''),
(255, 'www.navyuggroup.in/ibo_panel/production/index.php', '2021-07-31', '12:06:00pm', '', '27.62.216.104', '', '', ''),
(256, 'www.navyuggroup.in/ibo_panel/production/network_list.php', '2021-07-31', '12:06:57pm', '', '27.62.216.104', '', '', ''),
(257, 'www.navyuggroup.in/ibo_panel/production/level1.php', '2021-07-31', '12:07:04pm', '', '27.62.216.104', '', '', ''),
(258, 'www.navyuggroup.in/ibo_panel/production/index.php', '2021-07-31', '12:07:06pm', '', '27.62.216.104', '', '', ''),
(259, 'www.navyuggroup.in/index.php', '2021-07-31', '12:10:55pm', '', '27.62.216.104', '', '', ''),
(260, 'www.navyuggroup.in/index.php', '2021-07-31', '12:10:56pm', '', '27.62.216.104', '', '', ''),
(261, 'www.navyuggroup.in/index.php', '2021-07-31', '12:12:12pm', '', '27.62.216.104', '', '', ''),
(262, 'www.navyuggroup.in/index.php', '2021-07-31', '12:12:13pm', '', '27.62.216.104', '', '', ''),
(263, 'www.navyuggroup.in/index.php', '2021-07-31', '12:12:37pm', '', '27.62.216.104', '', '', ''),
(264, 'www.navyuggroup.in/index.php', '2021-07-31', '12:12:38pm', '', '27.62.216.104', '', '', ''),
(265, 'www.navyuggroup.in/ibo_panel/production/tree.php', '2021-07-31', '12:13:16pm', '', '27.62.216.104', '', '', ''),
(266, 'www.navyuggroup.in/ibo_panel/production/tree_view.php', '2021-07-31', '12:13:17pm', '', '27.62.216.104', '', '', ''),
(267, 'www.navyuggroup.in/ibo_panel/production/index.php', '2021-07-31', '12:13:21pm', '', '27.62.216.104', '', '', ''),
(268, 'www.navyuggroup.in/ibo_panel/production/tree.php', '2021-07-31', '12:14:40pm', '', '27.62.216.104', '', '', ''),
(269, 'www.navyuggroup.in/ibo_panel/production/tree_view.php', '2021-07-31', '12:14:41pm', '', '27.62.216.104', '', '', ''),
(270, 'www.navyuggroup.in/ibo_panel/production/index.php', '2021-07-31', '12:15:27pm', '', '27.62.216.104', '', '', ''),
(271, 'www.navyuggroup.in/index.php', '2021-07-31', '12:18:25pm', '', '27.62.216.104', '', '', ''),
(272, 'www.navyuggroup.in/index.php', '2021-07-31', '12:18:25pm', '', '27.62.216.104', '', '', ''),
(273, 'www.navyuggroup.in/index.php', '2021-07-31', '12:19:30pm', '', '27.62.216.104', '', '', ''),
(274, 'www.navyuggroup.in/index.php', '2021-07-31', '12:19:30pm', '', '27.62.216.104', '', '', ''),
(275, 'www.navyuggroup.in/index.php', '2021-07-31', '12:19:52pm', '', '27.62.216.104', '', '', ''),
(276, 'www.navyuggroup.in/index.php', '2021-07-31', '12:19:53pm', '', '27.62.216.104', '', '', ''),
(277, 'www.navyuggroup.in/index.php', '2021-07-31', '12:20:29pm', '', '27.62.216.104', '', '', ''),
(278, 'www.navyuggroup.in/index.php', '2021-07-31', '12:20:29pm', '', '27.62.216.104', '', '', ''),
(279, 'www.navyuggroup.in/index.php', '2021-07-31', '12:20:49pm', '', '27.62.216.104', '', '', ''),
(280, 'www.navyuggroup.in/index.php', '2021-07-31', '12:20:49pm', '', '27.62.216.104', '', '', ''),
(281, 'www.navyuggroup.in/index.php', '2021-07-31', '12:21:04pm', '', '27.62.216.104', '', '', ''),
(282, 'www.navyuggroup.in/index.php', '2021-07-31', '12:21:04pm', '', '27.62.216.104', '', '', ''),
(283, 'www.navyuggroup.in/index.php', '2021-07-31', '12:22:05pm', '', '27.62.216.104', '', '', ''),
(284, 'www.navyuggroup.in/index.php', '2021-07-31', '12:22:05pm', '', '27.62.216.104', '', '', ''),
(285, 'www.navyuggroup.in/index.php', '2021-07-31', '12:22:49pm', '', '27.62.216.104', '', '', ''),
(286, 'www.navyuggroup.in/index.php', '2021-07-31', '12:22:49pm', '', '27.62.216.104', '', '', ''),
(287, 'www.navyuggroup.in/index.php', '2021-07-31', '12:23:54pm', '', '27.62.216.104', '', '', ''),
(288, 'www.navyuggroup.in/index.php', '2021-07-31', '12:23:55pm', '', '27.62.216.104', '', '', ''),
(289, 'www.navyuggroup.in/index.php', '2021-07-31', '12:24:33pm', '', '27.62.216.104', '', '', ''),
(290, 'www.navyuggroup.in/index.php', '2021-07-31', '12:24:34pm', '', '27.62.216.104', '', '', ''),
(291, 'www.navyuggroup.in/index.php', '2021-07-31', '12:24:50pm', '', '27.62.216.104', '', '', ''),
(292, 'www.navyuggroup.in/index.php', '2021-07-31', '12:24:50pm', '', '27.62.216.104', '', '', ''),
(293, 'www.navyuggroup.in/index.php', '2021-07-31', '12:25:08pm', '', '27.62.216.104', '', '', ''),
(294, 'www.navyuggroup.in/index.php', '2021-07-31', '12:25:09pm', '', '27.62.216.104', '', '', ''),
(295, 'www.navyuggroup.in/index.php', '2021-07-31', '12:26:13pm', '', '27.62.216.104', '', '', ''),
(296, 'www.navyuggroup.in/index.php', '2021-07-31', '12:26:14pm', '', '27.62.216.104', '', '', ''),
(297, 'www.navyuggroup.in/news_more.php?news=gdrhdhd', '2021-07-31', '12:28:18pm', '', '27.62.216.104', '', '', ''),
(298, 'www.navyuggroup.in/index.php', '2021-07-31', '12:30:33pm', '', '27.62.216.104', '', '', ''),
(299, 'www.navyuggroup.in/index.php', '2021-07-31', '12:30:34pm', '', '27.62.216.104', '', '', ''),
(300, 'www.navyuggroup.in/index.php', '2021-07-31', '12:31:41pm', '', '27.62.216.104', '', '', ''),
(301, 'www.navyuggroup.in/index.php', '2021-07-31', '12:31:41pm', '', '27.62.216.104', '', '', ''),
(302, 'www.navyuggroup.in/index.php', '2021-07-31', '12:32:45pm', '', '27.62.216.104', '', '', ''),
(303, 'www.navyuggroup.in/index.php', '2021-07-31', '12:32:46pm', '', '27.62.216.104', '', '', ''),
(304, 'www.navyuggroup.in/news_more.php?news=TADAY', '2021-07-31', '12:34:29pm', '', '27.62.216.104', '', '', ''),
(305, 'www.navyuggroup.in/ibo_panel/production/Login_Form/login.php', '2021-07-31', '12:36:49pm', '', '27.62.216.104', '', '', ''),
(306, 'www.navyuggroup.in/ibo_panel/production/Login_Form/login.php', '2021-07-31', '12:37:03pm', '', '27.62.216.104', '', '', ''),
(307, 'www.navyuggroup.in/ibo_panel/production/Login_Form/login.php', '2021-07-31', '12:37:05pm', '', '27.62.216.104', '', '', ''),
(308, 'www.navyuggroup.in/contact.php', '2021-07-31', '12:37:16pm', '', '27.62.216.104', '', '', ''),
(309, 'www.navyuggroup.in/ibo_panel/production/Login_Form/login.php', '2021-07-31', '12:37:36pm', '', '27.62.216.104', '', '', ''),
(310, 'www.navyuggroup.in/ibo_panel/production/Login_Form/login.php', '2021-07-31', '12:38:17pm', '', '27.62.216.104', '', '', ''),
(311, 'www.navyuggroup.in/ibo_panel/production/index.php', '2021-07-31', '12:38:18pm', '', '27.62.216.104', '', '', ''),
(312, 'www.navyuggroup.in/ibo_panel/production/kyc.php', '2021-07-31', '12:38:33pm', '', '27.62.216.104', '', '', ''),
(313, 'www.navyuggroup.in/ibo_panel/production/index.php', '2021-07-31', '12:38:40pm', '', '27.62.216.104', '', '', ''),
(314, 'www.navyuggroup.in/ibo_panel/production/profile_edit.php', '2021-07-31', '12:38:48pm', '', '27.62.216.104', '', '', ''),
(315, 'www.navyuggroup.in/ibo_panel/production/profile_edit.php', '2021-07-31', '12:38:57pm', '', '27.62.216.104', '', '', ''),
(316, 'www.navyuggroup.in/ibo_panel/production/network_list.php', '2021-07-31', '12:39:04pm', '', '27.62.216.104', '', '', ''),
(317, 'www.navyuggroup.in/ibo_panel/production/level1.php', '2021-07-31', '12:39:06pm', '', '27.62.216.104', '', '', ''),
(318, 'www.navyuggroup.in/ibo_panel/production/level_income.php', '2021-07-31', '12:39:10pm', '', '27.62.216.104', '', '', ''),
(319, 'www.navyuggroup.in/ibo_panel/production/level_income.php', '2021-07-31', '12:39:11pm', '', '27.62.216.104', '', '', ''),
(320, 'www.navyuggroup.in/ibo_panel/production/level_income.php', '2021-07-31', '12:39:12pm', '', '27.62.216.104', '', '', ''),
(321, 'www.navyuggroup.in/ibo_panel/production/index.php', '2021-07-31', '12:39:13pm', '', '27.62.216.104', '', '', ''),
(322, 'www.navyuggroup.in/ibo_panel/production/level_income.php', '2021-07-31', '12:39:20pm', '', '27.62.216.104', '', '', ''),
(323, 'www.navyuggroup.in/ibo_panel/production/index.php', '2021-07-31', '12:39:27pm', '', '27.62.216.104', '', '', ''),
(324, 'www.navyuggroup.in/ibo_panel/production/index.php', '2021-07-31', '12:57:59pm', '', '27.62.216.104', '', '', ''),
(325, 'www.navyuggroup.in/ibo_panel/production/index.php', '2021-07-31', '12:58:56pm', '', '27.62.216.104', '', '', ''),
(326, 'www.navyuggroup.in/ibo_panel/production/index.php', '2021-07-31', '12:58:58pm', '', '27.62.216.104', '', '', ''),
(327, 'www.navyuggroup.in/ibo_panel/production/index.php', '2021-07-31', '12:58:59pm', '', '27.62.216.104', '', '', ''),
(328, 'www.navyuggroup.in/ibo_panel/production/index.php', '2021-07-31', '01:03:59pm', '', '27.62.216.104', '', '', ''),
(329, 'www.navyuggroup.in/ibo_panel/production/index.php', '2021-07-31', '01:04:15pm', '', '27.62.216.104', '', '', ''),
(330, 'www.navyuggroup.in/ibo_panel/production/index.php', '2021-07-31', '01:05:55pm', '', '27.62.216.104', '', '', ''),
(331, 'www.navyuggroup.in/ibo_panel/production/index.php', '2021-07-31', '01:59:55pm', '', '27.62.216.104', '', '', ''),
(332, 'www.navyuggroup.in/ibo_panel/production/Login_Form/login.php', '2021-07-31', '01:59:56pm', '', '27.62.216.104', '', '', ''),
(333, 'www.navyuggroup.in/ibo_panel/production/Login_Form/login.php', '2021-07-31', '02:02:04pm', '', '27.62.216.104', '', '', ''),
(334, 'www.navyuggroup.in/ibo_panel/production/index.php', '2021-07-31', '02:02:05pm', '', '27.62.216.104', '', '', ''),
(335, 'www.navyuggroup.in/ibo_panel/production/submit_payment_detail.php', '2021-07-31', '02:03:50pm', '', '27.62.216.104', '', '', ''),
(336, 'www.navyuggroup.in/ibo_panel/production/submit_payment_detail.php', '2021-07-31', '02:03:53pm', '', '27.62.216.104', '', '', ''),
(337, 'www.navyuggroup.in/ibo_panel/production/level_income.php', '2021-07-31', '02:03:54pm', '', '27.62.216.104', '', '', ''),
(338, 'www.navyuggroup.in/ibo_panel/production/kyc.php', '2021-07-31', '02:03:59pm', '', '27.62.216.104', '', '', ''),
(339, 'www.navyuggroup.in/ibo_panel/production/index.php', '2021-07-31', '02:04:01pm', '', '27.62.216.104', '', '', ''),
(340, 'www.navyuggroup.in/admin/ibo_panel/production/', '2021-07-31', '02:09:09pm', '', '27.62.216.104', '', '', ''),
(341, 'www.navyuggroup.in/admin/ibo_panel/production/login.php', '2021-07-31', '02:09:10pm', '', '27.62.216.104', '', '', ''),
(342, 'www.navyuggroup.in/admin/ibo_panel/production/login.php', '2021-07-31', '02:09:13pm', '', '27.62.216.104', '', '', ''),
(343, 'www.navyuggroup.in/admin/ibo_panel/production/index.php', '2021-07-31', '02:09:14pm', '', '27.62.216.104', '', '', ''),
(344, 'www.navyuggroup.in/admin/ibo_panel/production/web_index.php', '2021-07-31', '02:09:30pm', '', '27.62.216.104', '', '', ''),
(345, 'www.navyuggroup.in/admin/ibo_panel/production/network_list.php', '2021-07-31', '02:09:35pm', '', '27.62.216.104', '', '', ''),
(346, 'www.navyuggroup.in/admin/ibo_panel/production/payment_request_history.php', '2021-07-31', '02:10:43pm', '', '27.62.216.104', '', '', ''),
(347, 'www.navyuggroup.in/admin/ibo_panel/production/request_clear_adhar_card.php', '2021-07-31', '02:10:49pm', '', '27.62.216.104', '', '', ''),
(348, 'www.navyuggroup.in/admin/ibo_panel/production/request_clear_adhar_card.php', '2021-07-31', '02:22:25pm', '', '27.62.216.104', '', '', ''),
(349, 'navyuggroup.in/index.php', '2021-07-31', '03:46:35pm', '', '49.36.34.153', '', '', ''),
(350, 'navyuggroup.in/index.php', '2021-07-31', '03:46:37pm', '', '49.36.34.153', '', '', ''),
(351, 'navyuggroup.in/index.php', '2021-07-31', '03:46:48pm', '', '49.36.34.153', '', '', ''),
(352, 'navyuggroup.in/', '2021-07-31', '04:58:03pm', '', '66.249.79.122', '', '', ''),
(353, 'navyuggroup.in/', '2021-07-31', '04:58:20pm', '', '66.249.79.123', '', '', ''),
(354, 'www.navyuggroup.in/admin/ibo_panel/production/index.php', '2021-07-31', '05:13:28pm', '', '49.36.34.153', '', '', ''),
(355, 'www.navyuggroup.in/admin/ibo_panel/production/login.php', '2021-07-31', '05:13:29pm', '', '49.36.34.153', '', '', ''),
(356, 'www.navyuggroup.in/contact.php', '2021-07-31', '05:13:41pm', '', '49.36.34.153', '', '', ''),
(357, 'www.navyuggroup.in/ibo_panel/production/Login_Form/login.php', '2021-07-31', '05:13:47pm', '', '49.36.34.153', '', '', ''),
(358, 'www.navyuggroup.in/ibo_panel/production/Login_Form/login.php', '2021-07-31', '05:13:53pm', '', '49.36.34.153', '', '', ''),
(359, 'www.navyuggroup.in/ibo_panel/production/Login_Form/login.php', '2021-07-31', '05:13:55pm', '', '49.36.34.153', '', '', ''),
(360, 'www.navyuggroup.in/ibo_panel/production/profile_edit.php', '2021-07-31', '05:14:18pm', '', '49.36.34.153', '', '', ''),
(361, 'www.navyuggroup.in/ibo_panel/production/Login_Form/login.php', '2021-07-31', '05:14:18pm', '', '49.36.34.153', '', '', ''),
(362, 'www.navyuggroup.in/ibo_panel/production/index.php', '2021-07-31', '05:14:22pm', '', '49.36.34.153', '', '', ''),
(363, 'www.navyuggroup.in/ibo_panel/production/Login_Form/login.php', '2021-07-31', '05:14:23pm', '', '49.36.34.153', '', '', ''),
(364, 'www.navyuggroup.in/ibo_panel/production/level_income.php', '2021-07-31', '05:14:24pm', '', '49.36.34.153', '', '', ''),
(365, 'www.navyuggroup.in/ibo_panel/production/Login_Form/login.php', '2021-07-31', '05:14:25pm', '', '49.36.34.153', '', '', ''),
(366, 'www.navyuggroup.in/ibo_panel/production/Login_Form/login.php', '2021-07-31', '05:14:56pm', '', '49.36.34.153', '', '', ''),
(367, 'www.navyuggroup.in/ibo_panel/production/index.php', '2021-07-31', '05:14:56pm', '', '49.36.34.153', '', '', ''),
(368, 'www.navyuggroup.in/ibo_panel/production/index.php', '2021-07-31', '05:15:48pm', '', '49.36.34.153', '', '', ''),
(369, 'www.navyuggroup.in/ibo_panel/production/index.php', '2021-07-31', '05:16:39pm', '', '49.36.34.153', '', '', ''),
(370, 'www.navyuggroup.in/ibo_panel/production/index.php', '2021-07-31', '05:18:02pm', '', '49.36.34.153', '', '', ''),
(371, 'www.navyuggroup.in/ibo_panel/production/index.php', '2021-07-31', '05:18:59pm', '', '49.36.34.153', '', '', ''),
(372, 'www.navyuggroup.in/ibo_panel/production/index.php', '2021-07-31', '05:23:00pm', '', '49.36.34.153', '', '', ''),
(373, 'www.navyuggroup.in/ibo_panel/production/index.php', '2021-07-31', '05:23:06pm', '', '49.36.34.153', '', '', ''),
(374, 'www.navyuggroup.in/contact.php', '2021-07-31', '05:23:27pm', '', '49.36.34.153', '', '', ''),
(375, 'www.navyuggroup.in/index.php', '2021-07-31', '05:23:30pm', '', '49.36.34.153', '', '', ''),
(376, 'www.navyuggroup.in/index.php', '2021-07-31', '05:23:31pm', '', '49.36.34.153', '', '', ''),
(377, 'www.navyuggroup.in/ibo_panel/production/index.php', '2021-07-31', '05:25:06pm', '', '49.36.34.153', '', '', ''),
(378, 'www.navyuggroup.in/ibo_panel/production/index.php', '2021-07-31', '05:25:31pm', '', '49.36.34.153', '', '', ''),
(379, 'www.navyuggroup.in/ibo_panel/production/index.php', '2021-07-31', '05:26:24pm', '', '49.36.34.153', '', '', ''),
(380, 'www.navyuggroup.in/ibo_panel/production/index.php', '2021-07-31', '05:28:38pm', '', '49.36.34.153', '', '', ''),
(381, 'www.navyuggroup.in/ibo_panel/production/index.php', '2021-07-31', '05:29:55pm', '', '49.36.34.153', '', '', ''),
(382, 'www.navyuggroup.in/ibo_panel/production/index.php', '2021-07-31', '05:30:54pm', '', '49.36.34.153', '', '', ''),
(383, 'www.navyuggroup.in/ibo_panel/production/network_list.php', '2021-07-31', '05:31:34pm', '', '49.36.34.153', '', '', ''),
(384, 'www.navyuggroup.in/ibo_panel/production/level1.php', '2021-07-31', '05:31:53pm', '', '49.36.34.153', '', '', ''),
(385, 'www.navyuggroup.in/ibo_panel/production/tree.php', '2021-07-31', '05:32:05pm', '', '49.36.34.153', '', '', ''),
(386, 'www.navyuggroup.in/ibo_panel/production/tree_view.php', '2021-07-31', '05:32:06pm', '', '49.36.34.153', '', '', ''),
(387, 'www.navyuggroup.in/ibo_panel/production/submit_payment_detail.php', '2021-07-31', '05:37:48pm', '', '49.36.34.153', '', '', ''),
(388, 'www.navyuggroup.in/ibo_panel/production/submit_payment_detail.php', '2021-07-31', '05:38:06pm', '', '49.36.34.153', '', '', ''),
(389, 'www.navyuggroup.in/ibo_panel/production/submit_payment_detail.php', '2021-07-31', '05:38:14pm', '', '49.36.34.153', '', '', ''),
(390, 'www.navyuggroup.in/ibo_panel/production/level_income.php', '2021-07-31', '05:38:19pm', '', '49.36.34.153', '', '', '');
INSERT INTO `site_open_info` (`soi_id`, `url`, `date`, `time`, `session_d_id`, `ip_addreass`, `desktop`, `mobile`, `browser`) VALUES
(391, 'www.navyuggroup.in/ibo_panel/production/index.php', '2021-07-31', '05:44:08pm', '', '49.36.34.153', '', '', ''),
(392, 'www.navyuggroup.in/ibo_panel/production/index.php', '2021-07-31', '05:44:59pm', '', '49.36.34.153', '', '', ''),
(393, 'www.navyuggroup.in/ibo_panel/production/level_income.php', '2021-07-31', '05:45:24pm', '', '49.36.34.153', '', '', ''),
(394, 'www.navyuggroup.in/ibo_panel/production/index.php', '2021-07-31', '05:45:37pm', '', '49.36.34.153', '', '', ''),
(395, 'www.navyuggroup.in/ibo_panel/production/level_income.php', '2021-07-31', '05:48:56pm', '', '49.36.34.153', '', '', ''),
(396, 'www.navyuggroup.in/ibo_panel/production/index.php', '2021-07-31', '05:49:00pm', '', '49.36.34.153', '', '', ''),
(397, 'www.navyuggroup.in/ibo_panel/production/level_income.php', '2021-07-31', '05:49:19pm', '', '49.36.34.153', '', '', ''),
(398, 'www.navyuggroup.in/ibo_panel/production/level_income.php', '2021-07-31', '05:49:49pm', '', '49.36.34.153', '', '', ''),
(399, 'www.navyuggroup.in/ibo_panel/production/index.php', '2021-07-31', '05:49:52pm', '', '49.36.34.153', '', '', ''),
(400, 'www.navyuggroup.in/ibo_panel/production/index.php', '2021-07-31', '05:50:58pm', '', '49.36.34.153', '', '', ''),
(401, 'www.navyuggroup.in/ibo_panel/production/level_income.php', '2021-07-31', '05:51:30pm', '', '49.36.34.153', '', '', ''),
(402, 'www.navyuggroup.in/ibo_panel/production/index.php', '2021-07-31', '05:51:37pm', '', '49.36.34.153', '', '', ''),
(403, 'www.navyuggroup.in/ibo_panel/production/index.php', '2021-07-31', '05:52:42pm', '', '49.36.34.153', '', '', ''),
(404, 'www.navyuggroup.in/ibo_panel/production/level_income.php', '2021-07-31', '05:52:46pm', '', '49.36.34.153', '', '', ''),
(405, 'www.navyuggroup.in/ibo_panel/production/index.php', '2021-07-31', '05:54:01pm', '', '49.36.34.153', '', '', ''),
(406, 'www.navyuggroup.in/ibo_panel/production/index.php', '2021-07-31', '05:54:17pm', '', '49.36.34.153', '', '', ''),
(407, 'www.navyuggroup.in/ibo_panel/production/index.php', '2021-07-31', '05:55:22pm', '', '49.36.34.153', '', '', ''),
(408, 'www.navyuggroup.in/ibo_panel/production/index.php', '2021-07-31', '05:55:26pm', '', '49.36.34.153', '', '', ''),
(409, 'www.navyuggroup.in/ibo_panel/production/level_income.php', '2021-07-31', '05:56:26pm', '', '49.36.34.153', '', '', ''),
(410, 'www.navyuggroup.in/ibo_panel/production/submit_payment_detail.php', '2021-07-31', '05:56:36pm', '', '49.36.34.153', '', '', ''),
(411, 'www.navyuggroup.in/ibo_panel/production/submit_payment_detail.php', '2021-07-31', '05:56:46pm', '', '49.36.34.153', '', '', ''),
(412, 'www.navyuggroup.in/ibo_panel/production/payment_request_history.php', '2021-07-31', '05:56:49pm', '', '49.36.34.153', '', '', ''),
(413, 'www.navyuggroup.in/ibo_panel/production/submit_payment_detail.php', '2021-07-31', '05:57:12pm', '', '49.36.34.153', '', '', ''),
(414, 'www.navyuggroup.in/ibo_panel/production/tree.php', '2021-07-31', '05:57:59pm', '', '49.36.34.153', '', '', ''),
(415, 'www.navyuggroup.in/ibo_panel/production/tree_view.php', '2021-07-31', '05:57:59pm', '', '49.36.34.153', '', '', ''),
(416, 'www.navyuggroup.in/ibo_panel/production/index.php', '2021-07-31', '05:58:16pm', '', '49.36.34.153', '', '', ''),
(417, 'www.navyuggroup.in/ibo_panel/production/index.php', '2021-07-31', '06:08:50pm', '', '49.36.34.153', '', '', ''),
(418, 'www.navyuggroup.in/ibo_panel/production/index.php', '2021-07-31', '06:09:16pm', '', '49.36.34.153', '', '', ''),
(419, 'www.navyuggroup.in/ibo_panel/production/index.php', '2021-07-31', '06:09:48pm', '', '49.36.34.153', '', '', ''),
(420, 'www.navyuggroup.in/ibo_panel/production/index.php', '2021-07-31', '06:10:12pm', '', '49.36.34.153', '', '', ''),
(421, 'www.navyuggroup.in/ibo_panel/production/index.php', '2021-07-31', '06:11:20pm', '', '49.36.34.153', '', '', ''),
(422, 'www.navyuggroup.in/ibo_panel/production/index.php', '2021-07-31', '06:16:51pm', '', '49.36.34.153', '', '', ''),
(423, 'navyuggroup.in/', '2021-07-31', '11:45:35pm', '', '54.36.148.39', '', '', ''),
(424, 'www.navyuggroup.in/', '2021-08-01', '03:23:25am', '', '151.80.195.102', '', '', ''),
(425, 'www.navyuggroup.in/contact.php', '2021-08-01', '03:23:25am', '', '151.80.195.102', '', '', ''),
(426, 'navyuggroup.in/', '2021-08-01', '07:18:03am', '', '40.114.51.187', '', '', ''),
(427, 'navyuggroup.in/', '2021-08-01', '01:02:55pm', '', '54.36.148.39', '', '', ''),
(428, 'navyuggroup.in/', '2021-08-02', '04:57:01am', '', '54.36.148.39', '', '', ''),
(429, 'www.navyuggroup.in/', '2021-08-02', '12:09:21pm', '', '49.36.36.147', '', '', ''),
(430, 'www.navyuggroup.in/', '2021-08-02', '12:09:26pm', '', '49.36.36.147', '', '', ''),
(431, 'www.navyuggroup.in/ibo_panel/production/Login_Form/login.php', '2021-08-02', '12:09:35pm', '', '49.36.36.147', '', '', ''),
(432, 'www.navyuggroup.in/ibo_panel/production/Login_Form/login.php', '2021-08-02', '12:09:43pm', '', '49.36.36.147', '', '', ''),
(433, 'www.navyuggroup.in/ibo_panel/production/index.php', '2021-08-02', '12:09:43pm', '', '49.36.36.147', '', '', ''),
(434, 'www.navyuggroup.in/ibo_panel/production/submit_payment_detail.php', '2021-08-02', '12:10:17pm', '', '49.36.36.147', '', '', ''),
(435, 'www.navyuggroup.in/admin/ibo_panel/production/', '2021-08-02', '12:10:44pm', '', '49.36.36.147', '', '', ''),
(436, 'www.navyuggroup.in/admin/ibo_panel/production/login.php', '2021-08-02', '12:10:44pm', '', '49.36.36.147', '', '', ''),
(437, 'www.navyuggroup.in/admin/ibo_panel/production/login.php', '2021-08-02', '12:10:51pm', '', '49.36.36.147', '', '', ''),
(438, 'www.navyuggroup.in/admin/ibo_panel/production/index.php', '2021-08-02', '12:10:51pm', '', '49.36.36.147', '', '', ''),
(439, 'www.navyuggroup.in/admin/ibo_panel/production/web_index.php', '2021-08-02', '12:16:39pm', '', '49.36.36.147', '', '', ''),
(440, 'www.navyuggroup.in/admin/ibo_panel/production/network_list.php', '2021-08-02', '12:16:42pm', '', '49.36.36.147', '', '', ''),
(441, 'www.navyuggroup.in/ibo_panel/production/network_list.php', '2021-08-02', '12:17:55pm', '', '49.36.36.147', '', '', ''),
(442, 'www.navyuggroup.in/ibo_panel/production/level1.php', '2021-08-02', '12:18:17pm', '', '49.36.36.147', '', '', ''),
(443, 'www.navyuggroup.in/ibo_panel/production/tree.php', '2021-08-02', '12:18:35pm', '', '49.36.36.147', '', '', ''),
(444, 'www.navyuggroup.in/ibo_panel/production/tree_view.php', '2021-08-02', '12:18:35pm', '', '49.36.36.147', '', '', ''),
(445, 'www.navyuggroup.in/ibo_panel/production/tree.php', '2021-08-02', '12:19:13pm', '', '49.36.36.147', '', '', ''),
(446, 'www.navyuggroup.in/ibo_panel/production/tree_view.php', '2021-08-02', '12:19:13pm', '', '49.36.36.147', '', '', ''),
(447, 'www.navyuggroup.in/', '2021-08-02', '12:19:25pm', '', '49.36.36.147', '', '', ''),
(448, 'www.navyuggroup.in/', '2021-08-02', '12:19:25pm', '', '49.36.36.147', '', '', ''),
(449, 'www.navyuggroup.in/ibo_panel/production/Login_Form/get_Sponser_id_check.php?s=N', '2021-08-02', '12:19:31pm', '', '49.36.36.147', '', '', ''),
(450, 'www.navyuggroup.in/ibo_panel/production/Login_Form/get_Sponser_id_check.php?s=NG', '2021-08-02', '12:19:31pm', '', '49.36.36.147', '', '', ''),
(451, 'www.navyuggroup.in/ibo_panel/production/Login_Form/get_Sponser_id_check.php?s=NG', '2021-08-02', '12:19:31pm', '', '49.36.36.147', '', '', ''),
(452, 'www.navyuggroup.in/ibo_panel/production/Login_Form/get_Sponser_id_check.php?s=N', '2021-08-02', '12:19:33pm', '', '49.36.36.147', '', '', ''),
(453, 'www.navyuggroup.in/ibo_panel/production/Login_Form/get_Sponser_id_check.php?s=', '2021-08-02', '12:19:33pm', '', '49.36.36.147', '', '', ''),
(454, 'www.navyuggroup.in/ibo_panel/production/Login_Form/get_Sponser_id_check.php?s=', '2021-08-02', '12:19:33pm', '', '49.36.36.147', '', '', ''),
(455, 'www.navyuggroup.in/ibo_panel/production/Login_Form/get_Sponser_id_check.php?s=', '2021-08-02', '12:19:33pm', '', '49.36.36.147', '', '', ''),
(456, 'www.navyuggroup.in/ibo_panel/production/Login_Form/get_Sponser_id_check.php?s=n', '2021-08-02', '12:20:07pm', '', '49.36.36.147', '', '', ''),
(457, 'www.navyuggroup.in/ibo_panel/production/Login_Form/get_Sponser_id_check.php?s=ng', '2021-08-02', '12:20:08pm', '', '49.36.36.147', '', '', ''),
(458, 'www.navyuggroup.in/ibo_panel/production/Login_Form/get_Sponser_id_check.php?s=ng5', '2021-08-02', '12:20:08pm', '', '49.36.36.147', '', '', ''),
(459, 'www.navyuggroup.in/ibo_panel/production/Login_Form/get_Sponser_id_check.php?s=ng58', '2021-08-02', '12:20:08pm', '', '49.36.36.147', '', '', ''),
(460, 'www.navyuggroup.in/ibo_panel/production/Login_Form/get_Sponser_id_check.php?s=ng587', '2021-08-02', '12:20:09pm', '', '49.36.36.147', '', '', ''),
(461, 'www.navyuggroup.in/ibo_panel/production/Login_Form/get_Sponser_id_check.php?s=ng5876', '2021-08-02', '12:20:09pm', '', '49.36.36.147', '', '', ''),
(462, 'www.navyuggroup.in/ibo_panel/production/Login_Form/get_mob_check.php?q=7', '2021-08-02', '12:20:24pm', '', '49.36.36.147', '', '', ''),
(463, 'www.navyuggroup.in/ibo_panel/production/Login_Form/get_mob_check.php?q=78', '2021-08-02', '12:20:24pm', '', '49.36.36.147', '', '', ''),
(464, 'www.navyuggroup.in/ibo_panel/production/Login_Form/get_mob_check.php?q=786', '2021-08-02', '12:20:25pm', '', '49.36.36.147', '', '', ''),
(465, 'www.navyuggroup.in/ibo_panel/production/Login_Form/get_mob_check.php?q=7869', '2021-08-02', '12:20:25pm', '', '49.36.36.147', '', '', ''),
(466, 'www.navyuggroup.in/ibo_panel/production/Login_Form/get_mob_check.php?q=78694', '2021-08-02', '12:20:25pm', '', '49.36.36.147', '', '', ''),
(467, 'www.navyuggroup.in/ibo_panel/production/Login_Form/get_mob_check.php?q=7869470415', '2021-08-02', '12:20:28pm', '', '49.36.36.147', '', '', ''),
(468, 'www.navyuggroup.in/ibo_panel/production/Login_Form/get_mob_check.php?q=786947041', '2021-08-02', '12:20:29pm', '', '49.36.36.147', '', '', ''),
(469, 'www.navyuggroup.in/ibo_panel/production/Login_Form/get_mob_check.php?q=7869470418', '2021-08-02', '12:20:30pm', '', '49.36.36.147', '', '', ''),
(470, 'www.navyuggroup.in/ibo_panel/production/Login_Form/get_email_check.php?e=gidolia3@gmail.com', '2021-08-02', '12:20:32pm', '', '49.36.36.147', '', '', ''),
(471, 'www.navyuggroup.in/ibo_panel/production/Login_Form/get_email_check.php?e=gidolia3r@gmail.com', '2021-08-02', '12:20:34pm', '', '49.36.36.147', '', '', ''),
(472, 'www.navyuggroup.in/ibo_panel/production/Login_Form/process_reg_form.php', '2021-08-02', '12:20:43pm', '', '49.36.36.147', '', '', ''),
(473, 'www.navyuggroup.in/ibo_panel/production/Login_Form/reg_successful.php?d_id=122848944', '2021-08-02', '12:20:45pm', '', '49.36.36.147', '', '', ''),
(474, 'www.navyuggroup.in/ibo_panel/production/tree.php', '2021-08-02', '12:20:51pm', '', '49.36.36.147', '', '', ''),
(475, 'www.navyuggroup.in/ibo_panel/production/tree_view.php', '2021-08-02', '12:20:51pm', '', '49.36.36.147', '', '', ''),
(476, 'www.navyuggroup.in/ibo_panel/production/index.php', '2021-08-02', '12:20:57pm', '', '49.36.36.147', '', '', ''),
(477, 'www.navyuggroup.in/ibo_panel/production/index.php', '2021-08-02', '12:36:06pm', '', '49.36.36.147', '', '', ''),
(478, 'www.navyuggroup.in/ibo_panel/production/index.php', '2021-08-02', '12:36:37pm', '', '49.36.36.147', '', '', ''),
(479, 'www.navyuggroup.in/ibo_panel/production/index.php', '2021-08-02', '12:38:17pm', '', '49.36.36.147', '', '', ''),
(480, 'www.navyuggroup.in/ibo_panel/production/index.php', '2021-08-02', '12:47:36pm', '', '49.36.36.147', '', '', ''),
(481, 'www.navyuggroup.in/ibo_panel/production/index.php', '2021-08-02', '12:51:29pm', '', '49.36.36.147', '', '', ''),
(482, 'www.navyuggroup.in/ibo_panel/production/index.php', '2021-08-02', '12:53:31pm', '', '49.36.36.147', '', '', ''),
(483, 'www.navyuggroup.in/ibo_panel/production/index.php', '2021-08-02', '12:57:44pm', '', '49.36.36.147', '', '', ''),
(484, 'www.navyuggroup.in/ibo_panel/production/index.php', '2021-08-02', '12:58:20pm', '', '49.36.36.147', '', '', ''),
(485, 'www.navyuggroup.in/ibo_panel/production/index.php', '2021-08-02', '12:58:42pm', '', '49.36.36.147', '', '', ''),
(486, 'www.navyuggroup.in/ibo_panel/production/index.php', '2021-08-02', '01:06:05pm', '', '49.36.36.147', '', '', ''),
(487, 'www.navyuggroup.in/ibo_panel/production/index.php', '2021-08-02', '01:08:53pm', '', '49.36.36.147', '', '', ''),
(488, 'www.navyuggroup.in/ibo_panel/production/index.php', '2021-08-02', '01:09:54pm', '', '49.36.36.147', '', '', ''),
(489, 'www.navyuggroup.in/ibo_panel/production/index.php', '2021-08-02', '01:10:14pm', '', '49.36.36.147', '', '', ''),
(490, 'navyuggroup.in/', '2021-08-02', '11:16:09pm', '', '54.36.148.39', '', '', ''),
(491, 'navyuggroup.in/', '2021-08-03', '01:01:17am', '', '92.118.160.45', '', '', ''),
(492, 'navyuggroup.in/', '2021-08-03', '05:48:54am', '', '66.249.73.70', '', '', ''),
(493, 'navyuggroup.in/', '2021-08-03', '06:05:22am', '', '66.249.73.69', '', '', ''),
(494, 'www.navyuggroup.in/', '2021-08-03', '01:09:00pm', '', '49.36.35.102', '', '', ''),
(495, 'www.navyuggroup.in/', '2021-08-03', '01:09:00pm', '', '49.36.35.102', '', '', ''),
(496, 'www.navyuggroup.in/ibo_panel/production/Login_Form/login.php', '2021-08-03', '01:09:04pm', '', '49.36.35.102', '', '', ''),
(497, 'www.navyuggroup.in/ibo_panel/production/Login_Form/login.php', '2021-08-03', '01:10:17pm', '', '49.36.35.102', '', '', ''),
(498, 'www.navyuggroup.in/ibo_panel/production/index.php', '2021-08-03', '01:10:18pm', '', '49.36.35.102', '', '', ''),
(499, 'www.navyuggroup.in/ibo_panel/production/index.php', '2021-08-03', '01:11:30pm', '', '49.36.35.102', '', '', ''),
(500, 'www.navyuggroup.in/ibo_panel/production/index.php', '2021-08-03', '01:12:00pm', '', '49.36.35.102', '', '', ''),
(501, 'www.navyuggroup.in/ibo_panel/production/index.php', '2021-08-03', '01:12:26pm', '', '49.36.35.102', '', '', ''),
(502, 'www.navyuggroup.in/ibo_panel/production/index.php', '2021-08-03', '01:12:50pm', '', '49.36.35.102', '', '', ''),
(503, 'www.navyuggroup.in/ibo_panel/production/index.php', '2021-08-03', '01:13:34pm', '', '49.36.35.102', '', '', ''),
(504, 'www.navyuggroup.in/ibo_panel/production/index.php', '2021-08-03', '01:15:34pm', '', '49.36.35.102', '', '', ''),
(505, 'www.navyuggroup.in/ibo_panel/production/index.php', '2021-08-03', '01:16:31pm', '', '49.36.35.102', '', '', ''),
(506, 'www.navyuggroup.in/ibo_panel/production/index.php', '2021-08-03', '01:17:13pm', '', '49.36.35.102', '', '', ''),
(507, 'www.navyuggroup.in/ibo_panel/production/index.php', '2021-08-03', '01:18:23pm', '', '49.36.35.102', '', '', ''),
(508, 'www.navyuggroup.in/ibo_panel/production/index.php', '2021-08-03', '01:19:42pm', '', '49.36.35.102', '', '', ''),
(509, 'www.navyuggroup.in/ibo_panel/production/index.php', '2021-08-03', '01:20:51pm', '', '49.36.35.102', '', '', ''),
(510, 'www.navyuggroup.in/ibo_panel/production/index.php', '2021-08-03', '01:22:24pm', '', '49.36.35.102', '', '', ''),
(511, 'www.navyuggroup.in/ibo_panel/production/index.php', '2021-08-03', '01:31:52pm', '', '49.36.35.102', '', '', ''),
(512, 'www.navyuggroup.in/ibo_panel/production/index.php', '2021-08-03', '01:34:01pm', '', '49.36.35.102', '', '', ''),
(513, 'www.navyuggroup.in/ibo_panel/production/index.php', '2021-08-03', '01:34:37pm', '', '49.36.35.102', '', '', ''),
(514, 'www.navyuggroup.in/ibo_panel/production/index.php', '2021-08-03', '01:36:14pm', '', '49.36.35.102', '', '', ''),
(515, 'www.navyuggroup.in/ibo_panel/production/network_list.php', '2021-08-03', '01:36:31pm', '', '49.36.35.102', '', '', ''),
(516, 'www.navyuggroup.in/ibo_panel/production/submit_payment_detail.php', '2021-08-03', '01:36:35pm', '', '49.36.35.102', '', '', ''),
(517, 'www.navyuggroup.in/ibo_panel/production/payment_request_history.php', '2021-08-03', '01:36:38pm', '', '49.36.35.102', '', '', ''),
(518, 'www.navyuggroup.in/ibo_panel/production/index.php', '2021-08-03', '01:37:28pm', '', '49.36.35.102', '', '', ''),
(519, 'www.navyuggroup.in/ibo_panel/production/level_income.php', '2021-08-03', '01:37:34pm', '', '49.36.35.102', '', '', ''),
(520, 'www.navyuggroup.in/ibo_panel/production/level_income.php', '2021-08-03', '01:43:26pm', '', '49.36.35.102', '', '', ''),
(521, 'www.navyuggroup.in/ibo_panel/production/index.php', '2021-08-03', '01:45:22pm', '', '49.36.35.102', '', '', ''),
(522, 'www.navyuggroup.in/ibo_panel/production/index.php', '2021-08-03', '01:45:30pm', '', '49.36.35.102', '', '', ''),
(523, 'www.navyuggroup.in/ibo_panel/production/index.php', '2021-08-03', '01:45:44pm', '', '49.36.35.102', '', '', ''),
(524, 'www.navyuggroup.in/ibo_panel/production/tds_ledger_view.php', '2021-08-03', '01:45:45pm', '', '49.36.35.102', '', '', ''),
(525, 'www.navyuggroup.in/ibo_panel/production/tds_ledger_view.php', '2021-08-03', '01:47:32pm', '', '49.36.35.102', '', '', ''),
(526, 'www.navyuggroup.in/ibo_panel/production/network_list.php', '2021-08-03', '01:48:17pm', '', '49.36.35.102', '', '', ''),
(527, 'www.navyuggroup.in/ibo_panel/production/level1.php', '2021-08-03', '01:48:29pm', '', '49.36.35.102', '', '', ''),
(528, 'www.navyuggroup.in/ibo_panel/production/level2.php', '2021-08-03', '01:48:32pm', '', '49.36.35.102', '', '', ''),
(529, 'www.navyuggroup.in/ibo_panel/production/level3.php', '2021-08-03', '01:48:34pm', '', '49.36.35.102', '', '', ''),
(530, 'www.navyuggroup.in/ibo_panel/production/index.php', '2021-08-03', '01:48:36pm', '', '49.36.35.102', '', '', ''),
(531, 'www.navyuggroup.in/ibo_panel/production/index.php', '2021-08-03', '01:51:03pm', '', '49.36.35.102', '', '', ''),
(532, 'www.navyuggroup.in/ibo_panel/production/index.php', '2021-08-03', '01:51:17pm', '', '49.36.35.102', '', '', ''),
(533, 'www.navyuggroup.in/ibo_panel/production/index.php', '2021-08-03', '01:52:35pm', '', '49.36.35.102', '', '', ''),
(534, 'www.navyuggroup.in/ibo_panel/production/property_saving_ledger_view.php', '2021-08-03', '01:52:36pm', '', '49.36.35.102', '', '', ''),
(535, 'www.navyuggroup.in/ibo_panel/production/index.php', '2021-08-03', '01:52:42pm', '', '49.36.35.102', '', '', ''),
(536, 'www.navyuggroup.in/ibo_panel/production/index.php', '2021-08-03', '01:53:26pm', '', '49.36.35.102', '', '', ''),
(537, 'www.navyuggroup.in/ibo_panel/production/level_income.php', '2021-08-03', '01:53:27pm', '', '49.36.35.102', '', '', ''),
(538, 'www.navyuggroup.in/', '2021-08-03', '01:54:50pm', '', '171.61.5.86', '', '', ''),
(539, 'www.navyuggroup.in/', '2021-08-03', '01:54:51pm', '', '171.61.5.86', '', '', ''),
(540, 'www.navyuggroup.in/ibo_panel/production/Login_Form/login.php', '2021-08-03', '01:54:57pm', '', '171.61.5.86', '', '', ''),
(541, 'www.navyuggroup.in/ibo_panel/production/Login_Form/login.php', '2021-08-03', '01:55:00pm', '', '171.61.5.86', '', '', ''),
(542, 'www.navyuggroup.in/ibo_panel/production/Login_Form/login.php', '2021-08-03', '01:55:02pm', '', '171.61.5.86', '', '', ''),
(543, 'www.navyuggroup.in/ibo_panel/production/Login_Form/login.php', '2021-08-03', '01:55:18pm', '', '171.61.5.86', '', '', ''),
(544, 'www.navyuggroup.in/ibo_panel/production/index.php', '2021-08-03', '01:55:18pm', '', '171.61.5.86', '', '', ''),
(545, 'www.navyuggroup.in/ibo_panel/production/index.php', '2021-08-03', '01:55:39pm', '', '49.36.35.102', '', '', ''),
(546, 'www.navyuggroup.in/ibo_panel/production/network_list.php', '2021-08-03', '01:56:13pm', '', '171.61.5.86', '', '', ''),
(547, 'www.navyuggroup.in/ibo_panel/production/index.php', '2021-08-03', '01:56:15pm', '', '171.61.5.86', '', '', ''),
(548, 'www.navyuggroup.in/ibo_panel/production/tds_ledger_view.php', '2021-08-03', '01:57:08pm', '', '171.61.5.86', '', '', ''),
(549, 'www.navyuggroup.in/ibo_panel/production/index.php', '2021-08-03', '01:57:10pm', '', '171.61.5.86', '', '', ''),
(550, 'www.navyuggroup.in/ibo_panel/production/index.php', '2021-08-03', '01:57:23pm', '', '171.61.5.86', '', '', ''),
(551, 'www.navyuggroup.in/ibo_panel/production/submit_payment_detail.php', '2021-08-03', '01:57:26pm', '', '171.61.5.86', '', '', ''),
(552, 'www.navyuggroup.in/ibo_panel/production/submit_payment_detail.php', '2021-08-03', '01:57:36pm', '', '171.61.5.86', '', '', ''),
(553, 'www.navyuggroup.in/ibo_panel/production/index.php', '2021-08-03', '01:57:49pm', '', '49.36.35.102', '', '', ''),
(554, 'www.navyuggroup.in/ibo_panel/production/index.php', '2021-08-03', '01:57:53pm', '', '171.61.5.86', '', '', ''),
(555, 'www.navyuggroup.in/ibo_panel/production/submit_payment_detail.php', '2021-08-03', '01:58:47pm', '', '171.61.5.86', '', '', ''),
(556, 'www.navyuggroup.in/ibo_panel/production/payment_request_history.php', '2021-08-03', '01:58:51pm', '', '171.61.5.86', '', '', ''),
(557, 'www.navyuggroup.in/ibo_panel/production/submit_payment_detail.php', '2021-08-03', '01:58:55pm', '', '171.61.5.86', '', '', ''),
(558, 'www.navyuggroup.in/ibo_panel/production/submit_payment_detail.php', '2021-08-03', '01:59:10pm', '', '171.61.5.86', '', '', ''),
(559, 'www.navyuggroup.in/ibo_panel/production/submit_payment_detail.php', '2021-08-03', '01:59:16pm', '', '171.61.5.86', '', '', ''),
(560, 'www.navyuggroup.in/ibo_panel/production/level_income.php', '2021-08-03', '01:59:18pm', '', '171.61.5.86', '', '', ''),
(561, 'www.navyuggroup.in/ibo_panel/production/index.php', '2021-08-03', '01:59:32pm', '', '171.61.5.86', '', '', ''),
(562, 'www.navyuggroup.in/ibo_panel/production/kyc.php', '2021-08-03', '01:59:46pm', '', '171.61.5.86', '', '', ''),
(563, 'www.navyuggroup.in/ibo_panel/production/level_income.php', '2021-08-03', '01:59:54pm', '', '171.61.5.86', '', '', ''),
(564, 'www.navyuggroup.in/ibo_panel/production/index.php', '2021-08-03', '01:59:57pm', '', '171.61.5.86', '', '', ''),
(565, 'www.navyuggroup.in/ibo_panel/production/index.php', '2021-08-03', '02:00:06pm', '', '49.36.35.102', '', '', ''),
(566, 'www.navyuggroup.in/ibo_panel/production/network_list.php', '2021-08-03', '02:00:28pm', '', '49.36.35.102', '', '', ''),
(567, 'www.navyuggroup.in/ibo_panel/production/profile_edit.php', '2021-08-03', '02:00:48pm', '', '49.36.35.102', '', '', ''),
(568, 'www.navyuggroup.in/ibo_panel/production/kyc.php', '2021-08-03', '02:01:00pm', '', '171.61.5.86', '', '', ''),
(569, 'www.navyuggroup.in/ibo_panel/production/index.php', '2021-08-03', '02:01:06pm', '', '171.61.5.86', '', '', ''),
(570, 'www.navyuggroup.in/ibo_panel/production/submit_payment_detail.php', '2021-08-03', '02:01:41pm', '', '171.61.5.86', '', '', ''),
(571, 'www.navyuggroup.in/ibo_panel/production/submit_payment_detail.php', '2021-08-03', '02:02:05pm', '', '49.36.35.102', '', '', ''),
(572, 'www.navyuggroup.in/ibo_panel/production/index.php', '2021-08-03', '02:03:14pm', '', '171.61.5.86', '', '', ''),
(573, 'www.navyuggroup.in/ibo_panel/production/index.php', '2021-08-03', '02:03:23pm', '', '49.36.35.102', '', '', ''),
(574, 'www.navyuggroup.in/ibo_panel/production/submit_payment_detail.php', '2021-08-03', '02:05:26pm', '', '49.36.35.102', '', '', ''),
(575, 'www.navyuggroup.in/', '2021-08-03', '02:06:31pm', '', '49.36.35.102', '', '', ''),
(576, 'www.navyuggroup.in/', '2021-08-03', '02:06:31pm', '', '49.36.35.102', '', '', ''),
(577, 'www.navyuggroup.in/inside_dholera.php', '2021-08-03', '02:06:39pm', '', '49.36.35.102', '', '', ''),
(578, 'www.navyuggroup.in/ibo_panel/production/payment_request_history.php', '2021-08-03', '02:06:59pm', '', '49.36.35.102', '', '', ''),
(579, 'navyuggroup.in/', '2021-08-03', '05:19:59pm', '', '54.36.148.39', '', '', ''),
(580, 'navyuggroup.in/', '2021-08-03', '05:35:47pm', '', '144.86.173.137', '', '', ''),
(581, 'www.navyuggroup.in/', '2021-08-03', '06:42:29pm', '', '149.56.150.72', '', '', ''),
(582, 'www.navyuggroup.in/', '2021-08-03', '06:42:33pm', '', '149.56.150.72', '', '', ''),
(583, 'www.navyuggroup.in/contact.php', '2021-08-03', '06:42:34pm', '', '149.56.150.72', '', '', ''),
(584, 'www.navyuggroup.in/ibo_panel/production/Login_Form/login.php', '2021-08-03', '06:42:35pm', '', '149.56.150.72', '', '', ''),
(585, 'www.navyuggroup.in/inside_dholera.php', '2021-08-03', '06:42:37pm', '', '149.56.150.72', '', '', ''),
(586, 'www.navyuggroup.in/Online_visit.php', '2021-08-03', '06:42:39pm', '', '149.56.150.72', '', '', ''),
(587, 'www.navyuggroup.in/gallery.php', '2021-08-03', '06:42:40pm', '', '149.56.150.72', '', '', ''),
(588, 'www.navyuggroup.in/index.php', '2021-08-03', '06:42:44pm', '', '149.56.150.72', '', '', ''),
(589, 'www.navyuggroup.in/news_more.php?news=TADAY', '2021-08-03', '06:42:47pm', '', '149.56.150.72', '', '', ''),
(590, 'www.navyuggroup.in/news_more.php?news=gdrhdhd', '2021-08-03', '06:42:48pm', '', '149.56.150.72', '', '', ''),
(591, 'www.navyuggroup.in/booking.php?booking=DHOLERA%20SKY', '2021-08-03', '06:42:50pm', '', '149.56.150.72', '', '', ''),
(592, 'www.navyuggroup.in/', '2021-08-03', '06:42:51pm', '', '149.56.150.72', '', '', ''),
(593, 'www.navyuggroup.in/', '2021-08-03', '06:49:52pm', '', '51.77.128.205', '', '', ''),
(594, 'navyuggroup.in/', '2021-08-03', '11:02:53pm', '', '144.86.173.159', '', '', ''),
(595, 'www.navyuggroup.in/index.php', '2021-08-04', '04:02:20am', '', '40.77.167.12', '', '', ''),
(596, 'navyuggroup.in/', '2021-08-04', '05:02:49am', '', '212.143.94.234', '', '', ''),
(597, 'navyuggroup.in/', '2021-08-04', '05:07:28am', '', '212.143.94.234', '', '', ''),
(598, 'www.navyuggroup.in/', '2021-08-04', '05:15:56am', '', '207.46.13.72', '', '', ''),
(599, 'navyuggroup.in/', '2021-08-04', '05:16:49am', '', '23.19.224.64', '', '', ''),
(600, 'navyuggroup.in/', '2021-08-04', '05:16:52am', '', '23.80.138.169', '', '', ''),
(601, 'navyuggroup.in/', '2021-08-04', '05:16:57am', '', '172.255.93.252', '', '', ''),
(602, 'navyuggroup.in/', '2021-08-04', '05:17:00am', '', '23.27.237.30', '', '', ''),
(603, 'navyuggroup.in/', '2021-08-04', '05:17:05am', '', '193.189.100.195', '', '', ''),
(604, 'navyuggroup.in/', '2021-08-04', '05:17:09am', '', '23.27.237.34', '', '', ''),
(605, 'navyuggroup.in/', '2021-08-04', '05:35:26am', '', '23.27.237.30', '', '', ''),
(606, 'navyuggroup.in/', '2021-08-04', '05:35:26am', '', '172.255.93.252', '', '', ''),
(607, 'navyuggroup.in/', '2021-08-04', '05:35:28am', '', '23.27.237.34', '', '', ''),
(608, 'navyuggroup.in/', '2021-08-04', '05:35:31am', '', '23.19.224.64', '', '', ''),
(609, 'navyuggroup.in/', '2021-08-04', '05:35:31am', '', '45.144.225.119', '', '', ''),
(610, 'navyuggroup.in/', '2021-08-04', '05:35:35am', '', '23.80.138.169', '', '', ''),
(611, 'navyuggroup.in/', '2021-08-04', '09:37:57am', '', '100.21.218.158', '', '', ''),
(612, 'navyuggroup.in/', '2021-08-04', '12:16:32pm', '', '54.36.148.39', '', '', ''),
(613, 'www.navyuggroup.in/ibo_panel/production/Login_Form/login.php', '2021-08-04', '06:48:17pm', '', '66.249.68.55', '', '', ''),
(614, 'www.navyuggroup.in/contact.php', '2021-08-04', '09:31:49pm', '', '23.106.219.66', '', '', ''),
(615, 'www.navyuggroup.in/contact.php', '2021-08-04', '09:31:56pm', '', '23.106.219.66', '', '', ''),
(616, 'www.navyuggroup.in/index.php', '2021-08-05', '04:00:01am', '', '40.77.167.12', '', '', ''),
(617, 'navyuggroup.in/', '2021-08-05', '05:45:20am', '', '54.36.148.39', '', '', ''),
(618, 'navyuggroup.in/', '2021-08-05', '04:09:47pm', '', '144.76.137.254', '', '', ''),
(619, 'www.navyuggroup.in/', '2021-08-05', '04:10:23pm', '', '144.76.137.254', '', '', ''),
(620, 'www.navyuggroup.in/ibo_panel/production/Login_Form/login.php', '2021-08-05', '10:48:08pm', '', '207.46.13.126', '', '', ''),
(621, 'www.navyuggroup.in/', '2021-08-05', '11:27:54pm', '', '159.65.39.24', '', '', ''),
(622, 'navyuggroup.in/', '2021-08-05', '11:58:59pm', '', '167.71.86.23', '', '', ''),
(623, 'navyuggroup.in/', '2021-08-06', '12:53:06am', '', '54.36.148.39', '', '', ''),
(624, 'navyuggroup.in/', '2021-08-06', '07:19:40am', '', '144.86.173.69', '', '', ''),
(625, 'navyuggroup.in/', '2021-08-06', '01:03:14pm', '', '3.113.244.183', '', '', ''),
(626, 'www.navyuggroup.in/', '2021-08-06', '02:16:03pm', '', '49.36.46.198', '', '', ''),
(627, 'www.navyuggroup.in/', '2021-08-06', '02:16:04pm', '', '49.36.46.198', '', '', ''),
(628, 'www.navyuggroup.in/ibo_panel/production/Login_Form/login.php', '2021-08-06', '02:16:07pm', '', '49.36.46.198', '', '', ''),
(629, 'www.navyuggroup.in/ibo_panel/production/Login_Form/login.php', '2021-08-06', '02:16:15pm', '', '49.36.46.198', '', '', ''),
(630, 'www.navyuggroup.in/ibo_panel/production/Login_Form/login.php', '2021-08-06', '02:16:17pm', '', '49.36.46.198', '', '', ''),
(631, 'www.navyuggroup.in/ibo_panel/production/Login_Form/login.php', '2021-08-06', '02:16:23pm', '', '49.36.46.198', '', '', ''),
(632, 'www.navyuggroup.in/ibo_panel/production/index.php', '2021-08-06', '02:16:24pm', '', '49.36.46.198', '', '', ''),
(633, 'www.navyuggroup.in/ibo_panel/production/network_list.php', '2021-08-06', '02:16:31pm', '', '49.36.46.198', '', '', ''),
(634, 'www.navyuggroup.in/ibo_panel/production/level1.php', '2021-08-06', '02:16:32pm', '', '49.36.46.198', '', '', ''),
(635, 'www.navyuggroup.in/ibo_panel/production/tree.php', '2021-08-06', '02:16:35pm', '', '49.36.46.198', '', '', ''),
(636, 'www.navyuggroup.in/ibo_panel/production/tree_view.php', '2021-08-06', '02:16:35pm', '', '49.36.46.198', '', '', ''),
(637, 'www.navyuggroup.in/contact.php', '2021-08-06', '03:24:39pm', '', '23.80.97.215', '', '', ''),
(638, 'www.navyuggroup.in/contact.php', '2021-08-06', '03:24:45pm', '', '23.80.97.215', '', '', ''),
(639, 'www.navyuggroup.in/ibo_panel/production/Login_Form/login.php', '2021-08-06', '07:29:26pm', '', '207.46.13.126', '', '', ''),
(640, 'navyuggroup.in/', '2021-08-06', '09:29:35pm', '', '54.36.148.39', '', '', ''),
(641, 'navyuggroup.in/index.php/lib/owlcarousel/owl.carousel.min.js', '2021-08-07', '02:56:10am', '', '207.46.13.72', '', '', ''),
(642, 'navyuggroup.in/index.php/lib/waypoints/waypoints.min.js', '2021-08-07', '05:27:34am', '', '157.55.39.95', '', '', ''),
(643, 'navyuggroup.in/', '2021-08-07', '09:01:31am', '', '144.86.173.140', '', '', ''),
(644, 'www.navyuggroup.in/', '2021-08-07', '11:47:46am', '', '49.36.38.158', '', '', ''),
(645, 'www.navyuggroup.in/', '2021-08-07', '11:47:46am', '', '49.36.38.158', '', '', ''),
(646, 'www.navyuggroup.in/ibo_panel/production/Login_Form/login.php', '2021-08-07', '11:47:50am', '', '49.36.38.158', '', '', ''),
(647, 'www.navyuggroup.in/ibo_panel/production/Login_Form/login.php', '2021-08-07', '11:47:58am', '', '49.36.38.158', '', '', ''),
(648, 'www.navyuggroup.in/ibo_panel/production/index.php', '2021-08-07', '11:47:58am', '', '49.36.38.158', '', '', ''),
(649, 'www.navyuggroup.in/', '2021-08-07', '12:21:43pm', '', '49.36.38.158', '', '', ''),
(650, 'www.navyuggroup.in/', '2021-08-07', '12:21:43pm', '', '49.36.38.158', '', '', ''),
(651, 'www.navyuggroup.in/ibo_panel/production/Login_Form/login.php', '2021-08-07', '12:21:47pm', '', '49.36.38.158', '', '', ''),
(652, 'www.navyuggroup.in/ibo_panel/production/Login_Form/login.php', '2021-08-07', '12:21:53pm', '', '49.36.38.158', '', '', ''),
(653, 'www.navyuggroup.in/ibo_panel/production/index.php', '2021-08-07', '12:21:54pm', '', '49.36.38.158', '', '', ''),
(654, 'www.navyuggroup.in/ibo_panel/production/index.php', '2021-08-07', '12:22:15pm', '', '49.36.38.158', '', '', ''),
(655, 'www.navyuggroup.in/ibo_panel/production/index.php', '2021-08-07', '12:22:16pm', '', '49.36.38.158', '', '', ''),
(656, 'www.navyuggroup.in/ibo_panel/production/index.php', '2021-08-07', '12:22:33pm', '', '49.36.38.158', '', '', ''),
(657, 'www.navyuggroup.in/ibo_panel/production/index.php', '2021-08-07', '12:23:34pm', '', '49.36.38.158', '', '', ''),
(658, 'www.navyuggroup.in/ibo_panel/production/index.php', '2021-08-07', '12:23:52pm', '', '49.36.38.158', '', '', ''),
(659, 'www.navyuggroup.in/ibo_panel/production/submit_payment_detail.php', '2021-08-07', '12:26:17pm', '', '49.36.38.158', '', '', ''),
(660, 'www.navyuggroup.in/', '2021-08-07', '01:31:36pm', '', '49.36.38.158', '', '', ''),
(661, 'www.navyuggroup.in/', '2021-08-07', '01:31:36pm', '', '49.36.38.158', '', '', ''),
(662, 'www.navyuggroup.in/ibo_panel/production/Login_Form/login.php', '2021-08-07', '01:31:42pm', '', '49.36.38.158', '', '', ''),
(663, 'www.navyuggroup.in/ibo_panel/production/Login_Form/login.php', '2021-08-07', '01:31:49pm', '', '49.36.38.158', '', '', ''),
(664, 'www.navyuggroup.in/ibo_panel/production/index.php', '2021-08-07', '01:31:50pm', '', '49.36.38.158', '', '', ''),
(665, 'navyuggroup.in/', '2021-08-07', '04:35:06pm', '', '95.91.16.133', '', '', ''),
(666, 'www.navyuggroup.in/', '2021-08-07', '04:35:09pm', '', '95.91.16.133', '', '', ''),
(667, 'navyuggroup.in/', '2021-08-07', '07:53:30pm', '', '54.36.148.39', '', '', ''),
(668, 'navyuggroup.in/', '2021-08-07', '09:23:11pm', '', '51.158.98.24', '', '', ''),
(669, 'navyuggroup.in/', '2021-08-08', '04:51:28am', '', '20.102.76.190', '', '', ''),
(670, 'www.navyuggroup.in/contact.php', '2021-08-08', '06:29:22am', '', '40.77.167.28', '', '', ''),
(671, 'www.navyuggroup.in/', '2021-08-08', '08:57:07am', '', '66.249.68.51', '', '', ''),
(672, 'www.navyuggroup.in/', '2021-08-08', '09:30:27am', '', '66.249.68.55', '', '', ''),
(673, 'navyuggroup.in/', '2021-08-08', '03:27:54pm', '', '92.118.160.9', '', '', ''),
(674, 'navyuggroup.in/', '2021-08-08', '03:28:14pm', '', '54.36.148.39', '', '', ''),
(675, 'navyuggroup.in/', '2021-08-08', '03:48:58pm', '', '92.118.160.61', '', '', ''),
(676, 'navyuggroup.in/', '2021-08-08', '07:21:02pm', '', '173.249.48.46', '', '', ''),
(677, 'www.navyuggroup.in/index.php', '2021-08-09', '07:27:13am', '', '40.77.167.12', '', '', ''),
(678, 'www.navyuggroup.in/', '2021-08-09', '11:46:39am', '', '173.252.107.11', '', '', ''),
(679, 'www.navyuggroup.in/', '2021-08-09', '11:46:39am', '', '173.252.107.7', '', '', ''),
(680, 'www.navyuggroup.in/', '2021-08-09', '11:46:39am', '', '173.252.107.23', '', '', ''),
(681, 'navyuggroup.in/', '2021-08-09', '12:45:28pm', '', '54.36.148.39', '', '', ''),
(682, 'www.navyuggroup.in/index.php', '2021-08-10', '04:03:21am', '', '40.77.167.12', '', '', ''),
(683, 'navyuggroup.in/', '2021-08-10', '11:54:01am', '', '54.36.148.39', '', '', ''),
(684, 'www.navyuggroup.in/', '2021-08-10', '03:24:07pm', '', '173.252.107.19', '', '', ''),
(685, 'www.navyuggroup.in/ibo_panel/production/Login_Form/login.php', '2021-08-11', '01:18:42am', '', '207.46.13.126', '', '', ''),
(686, 'navyuggroup.in/', '2021-08-11', '04:15:08am', '', '212.143.94.234', '', '', ''),
(687, 'navyuggroup.in/', '2021-08-11', '04:20:38am', '', '212.143.94.234', '', '', ''),
(688, 'navyuggroup.in/', '2021-08-11', '04:31:56am', '', '45.153.160.131', '', '', ''),
(689, 'navyuggroup.in/', '2021-08-11', '04:32:00am', '', '23.80.138.169', '', '', ''),
(690, 'navyuggroup.in/', '2021-08-11', '04:32:01am', '', '23.19.224.64', '', '', ''),
(691, 'navyuggroup.in/', '2021-08-11', '04:32:01am', '', '23.27.237.30', '', '', ''),
(692, 'navyuggroup.in/', '2021-08-11', '04:32:01am', '', '23.27.237.34', '', '', ''),
(693, 'navyuggroup.in/', '2021-08-11', '04:32:02am', '', '172.255.93.252', '', '', ''),
(694, 'navyuggroup.in/', '2021-08-11', '04:52:00am', '', '23.80.138.169', '', '', ''),
(695, 'navyuggroup.in/', '2021-08-11', '04:52:03am', '', '23.27.237.30', '', '', ''),
(696, 'navyuggroup.in/', '2021-08-11', '04:52:10am', '', '172.255.93.252', '', '', ''),
(697, 'navyuggroup.in/', '2021-08-11', '04:52:12am', '', '23.19.224.64', '', '', ''),
(698, 'navyuggroup.in/', '2021-08-11', '04:52:12am', '', '162.247.74.204', '', '', ''),
(699, 'navyuggroup.in/', '2021-08-11', '04:52:15am', '', '23.27.237.34', '', '', ''),
(700, 'navyuggroup.in/', '2021-08-11', '07:03:18am', '', '144.86.173.131', '', '', ''),
(701, 'www.navyuggroup.in/', '2021-08-11', '09:50:07am', '', '66.249.66.24', '', '', ''),
(702, 'navyuggroup.in/', '2021-08-11', '01:08:20pm', '', '54.36.148.39', '', '', ''),
(703, 'navyuggroup.in/', '2021-08-11', '04:02:01pm', '', '54.189.230.128', '', '', ''),
(704, 'www.navyuggroup.in/news_more.php?news=gdrhdhd', '2021-08-11', '05:36:54pm', '', '207.46.13.119', '', '', ''),
(705, 'navyuggroup.in/', '2021-08-11', '07:00:51pm', '', '3.16.124.245', '', '', ''),
(706, 'navyuggroup.in/', '2021-08-11', '07:16:05pm', '', '144.86.173.85', '', '', ''),
(707, 'www.navyuggroup.in/ibo_panel/production/Login_Form/login.php', '2021-08-11', '10:06:37pm', '', '66.249.68.53', '', '', ''),
(708, 'www.navyuggroup.in/ibo_panel/production/', '2021-08-12', '10:27:55am', '', '49.36.35.121', '', '', ''),
(709, 'www.navyuggroup.in/ibo_panel/production/Login_Form/login.php', '2021-08-12', '10:27:56am', '', '49.36.35.121', '', '', ''),
(710, 'www.navyuggroup.in/ibo_panel/production/Login_Form/login.php', '2021-08-12', '10:28:08am', '', '49.36.35.121', '', '', ''),
(711, 'www.navyuggroup.in/ibo_panel/production/index.php', '2021-08-12', '10:28:08am', '', '49.36.35.121', '', '', ''),
(712, 'www.navyuggroup.in/ibo_panel/production/index.php', '2021-08-12', '10:39:54am', '', '49.36.35.121', '', '', ''),
(713, 'www.navyuggroup.in/ibo_panel/production/index.php', '2021-08-12', '10:40:21am', '', '49.36.35.121', '', '', ''),
(714, 'www.navyuggroup.in/ibo_panel/production/property_saving_ledger_view.php', '2021-08-12', '10:41:54am', '', '49.36.35.121', '', '', ''),
(715, 'www.navyuggroup.in/ibo_panel/production/index.php', '2021-08-12', '10:41:57am', '', '49.36.35.121', '', '', ''),
(716, 'navyuggroup.in/', '2021-08-12', '11:23:13am', '', '49.36.35.121', '', '', ''),
(717, 'navyuggroup.in/', '2021-08-12', '11:23:13am', '', '49.36.35.121', '', '', ''),
(718, 'navyuggroup.in/contact.php', '2021-08-12', '11:23:23am', '', '49.36.35.121', '', '', ''),
(719, 'www.navyuggroup.in/ibo_panel/production/Login_Form/login.php', '2021-08-12', '11:23:29am', '', '49.36.35.121', '', '', ''),
(720, 'www.navyuggroup.in/ibo_panel/production/Login_Form/login.php', '2021-08-12', '11:23:43am', '', '49.36.35.121', '', '', ''),
(721, 'www.navyuggroup.in/ibo_panel/production/index.php', '2021-08-12', '11:23:43am', '', '49.36.35.121', '', '', ''),
(722, 'www.navyuggroup.in/ibo_panel/production/index.php', '2021-08-12', '11:23:52am', '', '49.36.35.121', '', '', ''),
(723, 'www.navyuggroup.in/ibo_panel/production/network_list.php', '2021-08-12', '11:24:05am', '', '49.36.35.121', '', '', ''),
(724, 'www.navyuggroup.in/ibo_panel/production/Login_Form/login.php', '2021-08-12', '11:26:38am', '', '49.36.35.121', '', '', ''),
(725, 'www.navyuggroup.in/ibo_panel/production/Login_Form/get_Sponser_id_check.php?s=n', '2021-08-12', '11:26:56am', '', '49.36.35.121', '', '', ''),
(726, 'www.navyuggroup.in/ibo_panel/production/Login_Form/get_Sponser_id_check.php?s=ng', '2021-08-12', '11:27:01am', '', '49.36.35.121', '', '', ''),
(727, 'www.navyuggroup.in/ibo_panel/production/Login_Form/get_Sponser_id_check.php?s=ng2', '2021-08-12', '11:27:02am', '', '49.36.35.121', '', '', ''),
(728, 'www.navyuggroup.in/ibo_panel/production/Login_Form/get_Sponser_id_check.php?s=ng29', '2021-08-12', '11:27:03am', '', '49.36.35.121', '', '', ''),
(729, 'www.navyuggroup.in/ibo_panel/production/Login_Form/get_Sponser_id_check.php?s=ng297', '2021-08-12', '11:27:03am', '', '49.36.35.121', '', '', ''),
(730, 'www.navyuggroup.in/ibo_panel/production/Login_Form/get_Sponser_id_check.php?s=ng2974', '2021-08-12', '11:27:04am', '', '49.36.35.121', '', '', ''),
(731, 'www.navyuggroup.in/ibo_panel/production/Login_Form/get_Sponser_id_check.php?s=ng2974', '2021-08-12', '11:33:28am', '', '49.36.35.121', '', '', ''),
(732, 'www.navyuggroup.in/ibo_panel/production/Login_Form/get_Sponser_id_check.php?s=ng2974', '2021-08-12', '11:33:28am', '', '49.36.35.121', '', '', ''),
(733, 'www.navyuggroup.in/ibo_panel/production/Login_Form/login.php', '2021-08-12', '11:33:52am', '', '49.36.35.121', '', '', ''),
(734, 'www.navyuggroup.in/ibo_panel/production/index.php', '2021-08-12', '11:33:52am', '', '49.36.35.121', '', '', ''),
(735, 'www.navyuggroup.in/ibo_panel/production/submit_payment_detail.php', '2021-08-12', '11:34:07am', '', '49.36.35.121', '', '', ''),
(736, 'www.navyuggroup.in/ibo_panel/production/property_saving_ledger_view.php', '2021-08-12', '11:34:14am', '', '49.36.35.121', '', '', ''),
(737, 'www.navyuggroup.in/ibo_panel/production/submit_payment_detail.php', '2021-08-12', '11:34:18am', '', '49.36.35.121', '', '', ''),
(738, 'www.navyuggroup.in/ibo_panel/production/kyc.php', '2021-08-12', '11:34:25am', '', '49.36.35.121', '', '', ''),
(739, 'www.navyuggroup.in/ibo_panel/production/network_list.php', '2021-08-12', '11:34:31am', '', '49.36.35.121', '', '', ''),
(740, 'www.navyuggroup.in/ibo_panel/production/level1.php', '2021-08-12', '11:35:38am', '', '49.36.35.121', '', '', ''),
(741, 'www.navyuggroup.in/ibo_panel/production/tree.php', '2021-08-12', '11:35:48am', '', '49.36.35.121', '', '', ''),
(742, 'www.navyuggroup.in/ibo_panel/production/tree_view.php', '2021-08-12', '11:35:48am', '', '49.36.35.121', '', '', ''),
(743, 'www.navyuggroup.in/contact.php', '2021-08-12', '11:37:20am', '', '207.46.13.142', '', '', ''),
(744, 'www.navyuggroup.in/ibo_panel/production/submit_payment_detail.php', '2021-08-12', '11:47:46am', '', '49.36.35.121', '', '', ''),
(745, 'www.navyuggroup.in/ibo_panel/production/Login_Form/login.php', '2021-08-12', '11:47:46am', '', '49.36.35.121', '', '', ''),
(746, 'www.navyuggroup.in/ibo_panel/production/Login_Form/login.php', '2021-08-12', '11:47:53am', '', '49.36.35.121', '', '', ''),
(747, 'www.navyuggroup.in/ibo_panel/production/index.php', '2021-08-12', '11:47:53am', '', '49.36.35.121', '', '', ''),
(748, 'www.navyuggroup.in/ibo_panel/production/property_saving_ledger_view.php', '2021-08-12', '11:47:55am', '', '49.36.35.121', '', '', ''),
(749, 'www.navyuggroup.in/ibo_panel/production/submit_payment_detail.php', '2021-08-12', '11:48:03am', '', '49.36.35.121', '', '', ''),
(750, 'www.navyuggroup.in/ibo_panel/production/submit_payment_detail.php', '2021-08-12', '11:48:33am', '', '49.36.35.121', '', '', ''),
(751, 'www.navyuggroup.in/ibo_panel/production/payment_request_history.php', '2021-08-12', '11:48:34am', '', '49.36.35.121', '', '', ''),
(752, 'www.navyuggroup.in/ibo_panel/production/payment_request_history.php', '2021-08-12', '11:49:37am', '', '49.36.35.121', '', '', ''),
(753, 'www.navyuggroup.in/admin/ibo_panel/production/', '2021-08-12', '11:49:50am', '', '49.36.35.121', '', '', ''),
(754, 'www.navyuggroup.in/admin/ibo_panel/production/login.php', '2021-08-12', '11:49:51am', '', '49.36.35.121', '', '', ''),
(755, 'www.navyuggroup.in/admin/ibo_panel/production/login.php', '2021-08-12', '11:49:54am', '', '49.36.35.121', '', '', ''),
(756, 'www.navyuggroup.in/admin/ibo_panel/production/index.php', '2021-08-12', '11:49:54am', '', '49.36.35.121', '', '', ''),
(757, 'www.navyuggroup.in/admin/ibo_panel/production/payment_request_history.php', '2021-08-12', '11:50:15am', '', '49.36.35.121', '', '', ''),
(758, 'www.navyuggroup.in/admin/ibo_panel/production/process_clear_payment_request.php?pr_id=4&clear_payment=y', '2021-08-12', '11:50:21am', '', '49.36.35.121', '', '', ''),
(759, 'www.navyuggroup.in/admin/ibo_panel/production/payment_request_history.php', '2021-08-12', '11:50:23am', '', '49.36.35.121', '', '', ''),
(760, 'www.navyuggroup.in/ibo_panel/production/index.php', '2021-08-12', '11:50:26am', '', '49.36.35.121', '', '', ''),
(761, 'www.navyuggroup.in/ibo_panel/production/index.php', '2021-08-12', '11:55:19am', '', '49.36.35.121', '', '', ''),
(762, 'www.navyuggroup.in/admin/ibo_panel/production/index.php', '2021-08-12', '11:55:40am', '', '49.36.35.121', '', '', ''),
(763, 'www.navyuggroup.in/ibo_panel/production/index.php', '2021-08-12', '11:55:43am', '', '49.36.35.121', '', '', ''),
(764, 'www.navyuggroup.in/ibo_panel/production/network_list.php', '2021-08-12', '02:31:00pm', '', '49.36.35.121', '', '', ''),
(765, 'www.navyuggroup.in/ibo_panel/production/Login_Form/login.php', '2021-08-12', '02:31:00pm', '', '49.36.35.121', '', '', ''),
(766, 'www.navyuggroup.in/ibo_panel/production/Login_Form/login.php', '2021-08-12', '02:31:08pm', '', '49.36.35.121', '', '', ''),
(767, 'www.navyuggroup.in/ibo_panel/production/index.php', '2021-08-12', '02:31:08pm', '', '49.36.35.121', '', '', ''),
(768, 'www.navyuggroup.in/ibo_panel/production/network_list.php', '2021-08-12', '02:31:16pm', '', '49.36.35.121', '', '', ''),
(769, 'www.navyuggroup.in/ibo_panel/production/level1.php', '2021-08-12', '02:31:25pm', '', '49.36.35.121', '', '', ''),
(770, 'www.navyuggroup.in/ibo_panel/production/tree.php', '2021-08-12', '02:31:29pm', '', '49.36.35.121', '', '', ''),
(771, 'www.navyuggroup.in/ibo_panel/production/tree_view.php', '2021-08-12', '02:31:30pm', '', '49.36.35.121', '', '', ''),
(772, 'navyuggroup.in/', '2021-08-12', '03:32:23pm', '', '54.36.148.39', '', '', ''),
(773, 'www.navyuggroup.in/', '2021-08-12', '05:20:02pm', '', '20.191.45.212', '', '', ''),
(774, 'navyuggroup.in/', '2021-08-12', '09:00:09pm', '', '54.36.148.39', '', '', ''),
(775, 'www.navyuggroup.in/', '2021-08-12', '10:38:11pm', '', '54.36.148.39', '', '', ''),
(776, 'www.navyuggroup.in/', '2021-08-13', '01:44:03am', '', '54.36.148.39', '', '', ''),
(777, 'www.navyuggroup.in/', '2021-08-13', '05:02:49am', '', '124.126.78.164', '', '', ''),
(778, 'www.navyuggroup.in/', '2021-08-13', '05:04:59am', '', '124.126.78.188', '', '', ''),
(779, 'navyuggroup.in/', '2021-08-13', '05:32:39am', '', '61.135.15.159', '', '', ''),
(780, 'navyuggroup.in/', '2021-08-13', '05:38:29am', '', '61.135.15.129', '', '', ''),
(781, 'www.navyuggroup.in/', '2021-08-13', '07:13:25am', '', '64.246.165.150', '', '', ''),
(782, 'navyuggroup.in/', '2021-08-13', '10:14:19am', '', '144.86.173.20', '', '', ''),
(783, 'www.navyuggroup.in/ibo_panel/production/index.php', '2021-08-13', '10:58:55am', '', '49.36.33.123', '', '', ''),
(784, 'www.navyuggroup.in/ibo_panel/production/Login_Form/login.php', '2021-08-13', '10:58:56am', '', '49.36.33.123', '', '', ''),
(785, 'www.navyuggroup.in/ibo_panel/production/Login_Form/login.php', '2021-08-13', '11:03:08am', '', '49.36.33.123', '', '', ''),
(786, 'www.navyuggroup.in/ibo_panel/production/index.php', '2021-08-13', '11:03:08am', '', '49.36.33.123', '', '', ''),
(787, 'www.navyuggroup.in/ibo_panel/production/network_list.php', '2021-08-13', '11:03:12am', '', '49.36.33.123', '', '', ''),
(788, 'www.navyuggroup.in/ibo_panel/production/level1.php', '2021-08-13', '11:03:19am', '', '49.36.33.123', '', '', ''),
(789, 'www.navyuggroup.in/ibo_panel/production/level1.php', '2021-08-13', '11:04:21am', '', '49.36.33.123', '', '', ''),
(790, 'www.navyuggroup.in/ibo_panel/production/index.php', '2021-08-13', '11:04:24am', '', '49.36.33.123', '', '', ''),
(791, 'navyuggroup.in/', '2021-08-13', '05:44:53pm', '', '54.36.148.39', '', '', ''),
(792, 'navyuggroup.in/', '2021-08-14', '08:34:53am', '', '176.31.104.153', '', '', ''),
(793, 'www.navyuggroup.in/', '2021-08-14', '08:35:48am', '', '176.31.104.153', '', '', ''),
(794, 'www.navyuggroup.in/index.php', '2021-08-14', '09:29:15am', '', '157.55.39.26', '', '', ''),
(795, 'navyuggroup.in/', '2021-08-14', '10:27:24am', '', '5.188.48.217', '', '', ''),
(796, 'navyuggroup.in/', '2021-08-14', '10:27:25am', '', '5.188.48.217', '', '', ''),
(797, 'www.navyuggroup.in/', '2021-08-14', '02:38:59pm', '', '49.36.46.169', '', '', ''),
(798, 'www.navyuggroup.in/', '2021-08-14', '02:39:01pm', '', '49.36.46.169', '', '', ''),
(799, 'navyuggroup.in/', '2021-08-14', '03:19:26pm', '', '144.86.173.76', '', '', ''),
(800, 'navyuggroup.in/', '2021-08-14', '05:28:47pm', '', '54.36.148.39', '', '', ''),
(801, 'www.navyuggroup.in/', '2021-08-14', '09:52:01pm', '', '40.77.167.12', '', '', ''),
(802, 'www.navyuggroup.in/', '2021-08-15', '12:43:51am', '', '66.249.68.55', '', '', ''),
(803, 'www.navyuggroup.in/inside_dholera.php', '2021-08-15', '10:34:27am', '', '40.77.167.12', '', '', ''),
(804, 'www.navyuggroup.in/', '2021-08-15', '11:36:29am', '', '66.249.68.51', '', '', ''),
(805, 'navyuggroup.in/', '2021-08-15', '12:23:08pm', '', '54.36.148.39', '', '', ''),
(806, 'www.navyuggroup.in/', '2021-08-15', '09:08:42pm', '', '66.249.68.55', '', '', ''),
(807, 'navyuggroup.in/', '2021-08-15', '10:42:27pm', '', '66.249.79.98', '', '', ''),
(808, 'navyuggroup.in/', '2021-08-15', '11:01:55pm', '', '66.249.79.104', '', '', ''),
(809, 'navyuggroup.in/', '2021-08-16', '02:22:03am', '', '66.249.79.104', '', '', ''),
(810, 'navyuggroup.in/', '2021-08-16', '06:17:45am', '', '54.36.148.39', '', '', ''),
(811, 'www.navyuggroup.in/', '2021-08-16', '07:21:37am', '', '66.249.68.53', '', '', ''),
(812, 'www.navyuggroup.in/', '2021-08-16', '11:04:39am', '', '49.36.35.135', '', '', ''),
(813, 'www.navyuggroup.in/', '2021-08-16', '11:04:41am', '', '49.36.35.135', '', '', ''),
(814, 'www.navyuggroup.in/ibo_panel/production/Login_Form/login.php', '2021-08-16', '11:04:47am', '', '49.36.35.135', '', '', ''),
(815, 'www.navyuggroup.in/ibo_panel/production/Login_Form/login.php', '2021-08-16', '11:04:56am', '', '49.36.35.135', '', '', ''),
(816, 'www.navyuggroup.in/ibo_panel/production/index.php', '2021-08-16', '11:04:56am', '', '49.36.35.135', '', '', ''),
(817, 'www.navyuggroup.in/admin/ibo_panel/production/index.php', '2021-08-16', '11:05:19am', '', '49.36.35.135', '', '', ''),
(818, 'www.navyuggroup.in/admin/ibo_panel/production/login.php', '2021-08-16', '11:05:19am', '', '49.36.35.135', '', '', ''),
(819, 'www.navyuggroup.in/admin/ibo_panel/production/login.php', '2021-08-16', '11:05:22am', '', '49.36.35.135', '', '', ''),
(820, 'www.navyuggroup.in/admin/ibo_panel/production/index.php', '2021-08-16', '11:05:22am', '', '49.36.35.135', '', '', ''),
(821, 'www.navyuggroup.in/admin/ibo_panel/production/network_list.php', '2021-08-16', '11:05:26am', '', '49.36.35.135', '', '', ''),
(822, 'www.navyuggroup.in/admin/ibo_panel/production/payment_request_history.php', '2021-08-16', '11:05:34am', '', '49.36.35.135', '', '', ''),
(823, 'navyuggroup.in/', '2021-08-16', '02:56:44pm', '', '92.118.160.1', '', '', ''),
(824, 'www.navyuggroup.in/inside_dholera.php', '2021-08-16', '05:17:13pm', '', '207.46.13.141', '', '', ''),
(825, 'navyuggroup.in/', '2021-08-16', '05:37:53pm', '', '117.97.193.61', '', '', ''),
(826, 'navyuggroup.in/', '2021-08-16', '05:37:55pm', '', '117.97.193.61', '', '', ''),
(827, 'navyuggroup.in/', '2021-08-16', '05:41:47pm', '', '117.97.193.61', '', '', ''),
(828, 'navyuggroup.in/', '2021-08-16', '05:41:47pm', '', '117.97.193.61', '', '', ''),
(829, 'navyuggroup.in/', '2021-08-16', '05:52:01pm', '', '3.129.7.167', '', '', ''),
(830, 'navyuggroup.in/', '2021-08-16', '05:52:05pm', '', '3.129.7.167', '', '', ''),
(831, 'navyuggroup.in/', '2021-08-16', '05:54:35pm', '', '18.197.193.89', '', '', ''),
(832, 'www.navyuggroup.in/contact.php', '2021-08-16', '06:10:07pm', '', '66.249.68.55', '', '', ''),
(833, 'www.navyuggroup.in/', '2021-08-16', '06:30:55pm', '', '66.249.68.55', '', '', ''),
(834, 'navyuggroup.in/', '2021-08-16', '08:43:10pm', '', '117.97.193.61', '', '', '');
INSERT INTO `site_open_info` (`soi_id`, `url`, `date`, `time`, `session_d_id`, `ip_addreass`, `desktop`, `mobile`, `browser`) VALUES
(835, 'navyuggroup.in/', '2021-08-16', '08:43:14pm', '', '117.97.193.61', '', '', ''),
(836, 'navyuggroup.in/', '2021-08-16', '09:26:03pm', '', '92.118.160.41', '', '', ''),
(837, 'www.navyuggroup.in/ibo_panel/production/Login_Form/login.php', '2021-08-16', '11:35:35pm', '', '106.207.217.16', '', '', ''),
(838, 'www.navyuggroup.in/ibo_panel/production/Login_Form/login.php', '2021-08-16', '11:35:50pm', '', '106.207.217.16', '', '', ''),
(839, 'www.navyuggroup.in/ibo_panel/production/index.php', '2021-08-16', '11:35:51pm', '', '106.207.217.16', '', '', ''),
(840, 'www.navyuggroup.in/ibo_panel/production/network_list.php', '2021-08-16', '11:36:56pm', '', '106.207.217.16', '', '', ''),
(841, 'www.navyuggroup.in/ibo_panel/production/submit_payment_detail.php', '2021-08-16', '11:38:14pm', '', '27.62.189.198', '', '', ''),
(842, 'www.navyuggroup.in/ibo_panel/production/index.php', '2021-08-16', '11:38:26pm', '', '27.62.189.198', '', '', ''),
(843, 'www.navyuggroup.in/ibo_panel/production/level_income.php', '2021-08-16', '11:39:14pm', '', '27.62.189.198', '', '', ''),
(844, 'www.navyuggroup.in/ibo_panel/production/profile_edit.php', '2021-08-16', '11:39:43pm', '', '27.62.189.198', '', '', ''),
(845, 'www.navyuggroup.in/ibo_panel/production/Login_Form/login.php', '2021-08-16', '11:40:00pm', '', '27.62.189.198', '', '', ''),
(846, 'navyuggroup.in/', '2021-08-16', '11:45:59pm', '', '54.36.148.39', '', '', ''),
(847, 'navyuggroup.in/?fbclid=IwAR0RFUr-_i5L6aqH7yfkARsgCVmcPG7p1-6YpdJv5yBieP3Xa0j2dOWR6QE', '2021-08-17', '07:01:47am', '', '31.13.115.116', '', '', ''),
(848, 'navyuggroup.in/?fbclid=IwAR0RFUr-_i5L6aqH7yfkARsgCVmcPG7p1-6YpdJv5yBieP3Xa0j2dOWR6QE', '2021-08-17', '07:01:54am', '', '31.13.115.118', '', '', ''),
(849, 'www.navyuggroup.in/', '2021-08-17', '01:05:24pm', '', '49.36.46.245', '', '', ''),
(850, 'www.navyuggroup.in/', '2021-08-17', '01:05:24pm', '', '49.36.46.245', '', '', ''),
(851, 'www.navyuggroup.in/contact.php', '2021-08-17', '01:28:40pm', '', '66.249.68.51', '', '', ''),
(852, 'navyuggroup.in/', '2021-08-17', '02:04:49pm', '', '144.86.173.10', '', '', ''),
(853, 'www.navyuggroup.in/', '2021-08-17', '04:59:46pm', '', '49.36.46.245', '', '', ''),
(854, 'www.navyuggroup.in/', '2021-08-17', '04:59:46pm', '', '49.36.46.245', '', '', ''),
(855, 'www.navyuggroup.in/admin/ibo_panel/production/', '2021-08-17', '05:00:25pm', '', '49.36.46.245', '', '', ''),
(856, 'www.navyuggroup.in/admin/ibo_panel/production/login.php', '2021-08-17', '05:00:26pm', '', '49.36.46.245', '', '', ''),
(857, 'www.navyuggroup.in/admin/ibo_panel/production/login.php', '2021-08-17', '05:00:29pm', '', '49.36.46.245', '', '', ''),
(858, 'www.navyuggroup.in/admin/ibo_panel/production/index.php', '2021-08-17', '05:00:30pm', '', '49.36.46.245', '', '', ''),
(859, 'www.navyuggroup.in/admin/ibo_panel/production/web_index.php', '2021-08-17', '05:00:33pm', '', '49.36.46.245', '', '', ''),
(860, 'www.navyuggroup.in/admin/ibo_panel/production/web_booking.php', '2021-08-17', '05:01:17pm', '', '49.36.46.245', '', '', ''),
(861, 'www.navyuggroup.in/admin/ibo_panel/production/web_booking_read.php?wb_id=1', '2021-08-17', '05:01:19pm', '', '49.36.46.245', '', '', ''),
(862, 'www.navyuggroup.in/admin/ibo_panel/production/web_booking.php', '2021-08-17', '05:01:21pm', '', '49.36.46.245', '', '', ''),
(863, 'www.navyuggroup.in/admin/ibo_panel/production/web_index.php', '2021-08-17', '05:01:23pm', '', '49.36.46.245', '', '', ''),
(864, 'www.navyuggroup.in/admin/ibo_panel/production/web_notification.php', '2021-08-17', '05:01:25pm', '', '49.36.46.245', '', '', ''),
(865, 'www.navyuggroup.in/admin/ibo_panel/production/web_notifi_read.php?wc_id=8', '2021-08-17', '05:01:28pm', '', '49.36.46.245', '', '', ''),
(866, 'www.navyuggroup.in/', '2021-08-17', '05:01:53pm', '', '49.36.46.245', '', '', ''),
(867, 'www.navyuggroup.in/', '2021-08-17', '05:01:53pm', '', '49.36.46.245', '', '', ''),
(868, 'www.navyuggroup.in/', '2021-08-17', '05:02:29pm', '', '49.36.46.245', '', '', ''),
(869, 'www.navyuggroup.in/index.php', '2021-08-17', '05:02:31pm', '', '49.36.46.245', '', '', ''),
(870, 'www.navyuggroup.in/index.php', '2021-08-17', '05:02:32pm', '', '49.36.46.245', '', '', ''),
(871, 'www.navyuggroup.in/admin/ibo_panel/production/web_index.php', '2021-08-17', '05:02:35pm', '', '49.36.46.245', '', '', ''),
(872, 'www.navyuggroup.in/admin/ibo_panel/production/web_notification.php', '2021-08-17', '05:02:36pm', '', '49.36.46.245', '', '', ''),
(873, 'www.navyuggroup.in/admin/ibo_panel/production/web_notifi_read.php?wc_id=9', '2021-08-17', '05:02:41pm', '', '49.36.46.245', '', '', ''),
(874, 'www.navyuggroup.in/admin/ibo_panel/production/web_notification.php', '2021-08-17', '05:02:47pm', '', '49.36.46.245', '', '', ''),
(875, 'www.navyuggroup.in/admin/ibo_panel/production/web_notifi_read.php?wc_id=8', '2021-08-17', '05:02:52pm', '', '49.36.46.245', '', '', ''),
(876, 'www.navyuggroup.in/admin/ibo_panel/production/web_notification.php', '2021-08-17', '05:02:54pm', '', '49.36.46.245', '', '', ''),
(877, 'www.navyuggroup.in/admin/ibo_panel/production/web_notifi_read.php?wc_id=8', '2021-08-17', '05:03:44pm', '', '49.36.46.245', '', '', ''),
(878, 'www.navyuggroup.in/admin/ibo_panel/production/web_notification.php', '2021-08-17', '05:03:59pm', '', '49.36.46.245', '', '', ''),
(879, 'www.navyuggroup.in/admin/ibo_panel/production/web_notifi_read.php?wc_id=9', '2021-08-17', '05:04:04pm', '', '49.36.46.245', '', '', ''),
(880, 'www.navyuggroup.in/admin/ibo_panel/production/web_notification.php', '2021-08-17', '05:04:13pm', '', '49.36.46.245', '', '', ''),
(881, 'www.navyuggroup.in/admin/ibo_panel/production/web_notifi_read.php?wc_id=8', '2021-08-17', '05:04:21pm', '', '49.36.46.245', '', '', ''),
(882, 'www.navyuggroup.in/admin/ibo_panel/production/web_notification.php', '2021-08-17', '05:04:27pm', '', '49.36.46.245', '', '', ''),
(883, 'www.navyuggroup.in/admin/ibo_panel/production/web_index.php', '2021-08-17', '05:04:28pm', '', '49.36.46.245', '', '', ''),
(884, 'www.navyuggroup.in/admin/ibo_panel/production/web_notifi_read.php?wc_id=8', '2021-08-17', '05:04:28pm', '', '49.36.46.245', '', '', ''),
(885, 'navyuggroup.in/', '2021-08-17', '05:08:55pm', '', '54.36.148.39', '', '', ''),
(886, 'www.navyuggroup.in/index.php', '2021-08-17', '05:09:05pm', '', '49.36.46.245', '', '', ''),
(887, 'www.navyuggroup.in/index.php', '2021-08-17', '05:09:05pm', '', '49.36.46.245', '', '', ''),
(888, 'www.navyuggroup.in/index.php', '2021-08-17', '05:11:48pm', '', '49.36.46.245', '', '', ''),
(889, 'www.navyuggroup.in/index.php', '2021-08-17', '05:11:48pm', '', '49.36.46.245', '', '', ''),
(890, 'www.navyuggroup.in/index.php', '2021-08-17', '05:12:11pm', '', '49.36.46.245', '', '', ''),
(891, 'www.navyuggroup.in/index.php', '2021-08-17', '05:12:11pm', '', '49.36.46.245', '', '', ''),
(892, 'www.navyuggroup.in/index.php', '2021-08-17', '05:12:35pm', '', '49.36.46.245', '', '', ''),
(893, 'www.navyuggroup.in/index.php', '2021-08-17', '05:12:36pm', '', '49.36.46.245', '', '', ''),
(894, 'www.navyuggroup.in/index.php', '2021-08-17', '05:13:02pm', '', '49.36.46.245', '', '', ''),
(895, 'www.navyuggroup.in/index.php', '2021-08-17', '05:13:02pm', '', '49.36.46.245', '', '', ''),
(896, 'www.navyuggroup.in/index.php', '2021-08-17', '05:13:50pm', '', '49.36.46.245', '', '', ''),
(897, 'www.navyuggroup.in/index.php', '2021-08-17', '05:13:50pm', '', '49.36.46.245', '', '', ''),
(898, 'www.navyuggroup.in/index.php', '2021-08-17', '05:14:15pm', '', '49.36.46.245', '', '', ''),
(899, 'www.navyuggroup.in/index.php', '2021-08-17', '05:14:16pm', '', '49.36.46.245', '', '', ''),
(900, 'www.navyuggroup.in/admin/ibo_panel/production/web_index.php', '2021-08-17', '05:15:15pm', '', '49.36.46.245', '', '', ''),
(901, 'www.navyuggroup.in/admin/ibo_panel/production/web_latest_news.php', '2021-08-17', '05:15:20pm', '', '49.36.46.245', '', '', ''),
(902, 'www.navyuggroup.in/admin/ibo_panel/production/web_latest_news.php', '2021-08-17', '05:15:22pm', '', '49.36.46.245', '', '', ''),
(903, 'www.navyuggroup.in/admin/ibo_panel/production/web_latest_news.php', '2021-08-17', '05:15:24pm', '', '49.36.46.245', '', '', ''),
(904, 'www.navyuggroup.in/admin/ibo_panel/production/web_latest_news.php', '2021-08-17', '05:15:25pm', '', '49.36.46.245', '', '', ''),
(905, 'www.navyuggroup.in/admin/ibo_panel/production/web_latest_news.php', '2021-08-17', '05:15:27pm', '', '49.36.46.245', '', '', ''),
(906, 'www.navyuggroup.in/admin/ibo_panel/production/web_latest_news.php', '2021-08-17', '05:15:32pm', '', '49.36.46.245', '', '', ''),
(907, 'www.navyuggroup.in/admin/ibo_panel/production/web_latest_news.php', '2021-08-17', '05:15:33pm', '', '49.36.46.245', '', '', ''),
(908, 'www.navyuggroup.in/admin/ibo_panel/production/web_latest_news.php', '2021-08-17', '05:15:34pm', '', '49.36.46.245', '', '', ''),
(909, 'www.navyuggroup.in/admin/ibo_panel/production/web_latest_news.php', '2021-08-17', '05:15:35pm', '', '49.36.46.245', '', '', ''),
(910, 'www.navyuggroup.in/admin/ibo_panel/production/web_latest_news.php', '2021-08-17', '05:15:42pm', '', '49.36.46.245', '', '', ''),
(911, 'www.navyuggroup.in/admin/ibo_panel/production/web_latest_news.php', '2021-08-17', '05:15:43pm', '', '49.36.46.245', '', '', ''),
(912, 'www.navyuggroup.in/admin/ibo_panel/production/web_latest_news.php', '2021-08-17', '05:15:44pm', '', '49.36.46.245', '', '', ''),
(913, 'www.navyuggroup.in/admin/ibo_panel/production/web_latest_news.php', '2021-08-17', '05:15:45pm', '', '49.36.46.245', '', '', ''),
(914, 'www.navyuggroup.in/index.php', '2021-08-17', '05:15:49pm', '', '49.36.46.245', '', '', ''),
(915, 'www.navyuggroup.in/index.php', '2021-08-17', '05:15:49pm', '', '49.36.46.245', '', '', ''),
(916, 'www.navyuggroup.in/admin/ibo_panel/production/web_latest_news.php', '2021-08-17', '05:17:47pm', '', '49.36.46.245', '', '', ''),
(917, 'www.navyuggroup.in/admin/ibo_panel/production/web_latest_news.php', '2021-08-17', '05:18:14pm', '', '49.36.46.245', '', '', ''),
(918, 'www.navyuggroup.in/admin/ibo_panel/production/web_latest_news.php', '2021-08-17', '05:18:16pm', '', '49.36.46.245', '', '', ''),
(919, 'www.navyuggroup.in/index.php', '2021-08-17', '05:18:22pm', '', '49.36.46.245', '', '', ''),
(920, 'www.navyuggroup.in/index.php', '2021-08-17', '05:18:22pm', '', '49.36.46.245', '', '', ''),
(921, 'www.navyuggroup.in/admin/ibo_panel/production/web_latest_news.php', '2021-08-17', '05:18:25pm', '', '49.36.46.245', '', '', ''),
(922, 'www.navyuggroup.in/admin/ibo_panel/production/web_latest_news.php', '2021-08-17', '05:18:26pm', '', '49.36.46.245', '', '', ''),
(923, 'www.navyuggroup.in/index.php', '2021-08-17', '05:18:28pm', '', '49.36.46.245', '', '', ''),
(924, 'www.navyuggroup.in/index.php', '2021-08-17', '05:18:28pm', '', '49.36.46.245', '', '', ''),
(925, 'www.navyuggroup.in/news_more.php?news=eibo', '2021-08-17', '05:18:36pm', '', '49.36.46.245', '', '', ''),
(926, 'www.navyuggroup.in/news_more.php?news=eibo', '2021-08-17', '05:22:38pm', '', '49.36.46.245', '', '', ''),
(927, 'www.navyuggroup.in/news_more.php?news=eibo', '2021-08-17', '05:23:24pm', '', '49.36.46.245', '', '', ''),
(928, 'www.navyuggroup.in/news_more.php?news=eibo', '2021-08-17', '05:23:55pm', '', '49.36.46.245', '', '', ''),
(929, 'www.navyuggroup.in/news_more.php?news=eibo', '2021-08-17', '05:24:50pm', '', '49.36.46.245', '', '', ''),
(930, 'www.navyuggroup.in/news_more.php?news=eibo', '2021-08-17', '05:25:28pm', '', '49.36.46.245', '', '', ''),
(931, 'www.navyuggroup.in/news_more.php?news=eibo', '2021-08-17', '05:25:57pm', '', '49.36.46.245', '', '', ''),
(932, 'www.navyuggroup.in/news_more.php?news=eibo', '2021-08-17', '05:26:14pm', '', '49.36.46.245', '', '', ''),
(933, 'www.navyuggroup.in/news_more.php?news=eibo', '2021-08-17', '05:26:37pm', '', '49.36.46.245', '', '', ''),
(934, 'www.navyuggroup.in/news_more.php?news=eibo', '2021-08-17', '05:26:59pm', '', '49.36.46.245', '', '', ''),
(935, 'www.navyuggroup.in/index.php', '2021-08-17', '05:27:10pm', '', '49.36.46.245', '', '', ''),
(936, 'www.navyuggroup.in/index.php', '2021-08-17', '05:27:10pm', '', '49.36.46.245', '', '', ''),
(937, 'www.navyuggroup.in/admin/ibo_panel/production/web_latest_news.php', '2021-08-17', '05:27:39pm', '', '49.36.46.245', '', '', ''),
(938, 'www.navyuggroup.in/admin/ibo_panel/production/web_index.php', '2021-08-17', '05:27:41pm', '', '49.36.46.245', '', '', ''),
(939, 'www.navyuggroup.in/admin/ibo_panel/production/web_index.php', '2021-08-17', '05:28:39pm', '', '49.36.46.245', '', '', ''),
(940, 'www.navyuggroup.in/news_more.php?news=eibo', '2021-08-17', '05:31:35pm', '', '49.36.46.245', '', '', ''),
(941, 'www.navyuggroup.in/admin/ibo_panel/production/web_latest_news.php', '2021-08-17', '05:31:40pm', '', '49.36.46.245', '', '', ''),
(942, 'www.navyuggroup.in/admin/ibo_panel/production/web_index.php', '2021-08-17', '05:31:43pm', '', '49.36.46.245', '', '', ''),
(943, 'www.navyuggroup.in/admin/ibo_panel/production/web_latest_news.php', '2021-08-17', '05:31:45pm', '', '49.36.46.245', '', '', ''),
(944, 'www.navyuggroup.in/admin/ibo_panel/production/web_latest_news.php', '2021-08-17', '05:31:48pm', '', '49.36.46.245', '', '', ''),
(945, 'www.navyuggroup.in/admin/ibo_panel/production/web_latest_news.php', '2021-08-17', '05:31:49pm', '', '49.36.46.245', '', '', ''),
(946, 'www.navyuggroup.in/admin/ibo_panel/production/web_latest_news.php', '2021-08-17', '05:33:30pm', '', '49.36.46.245', '', '', ''),
(947, 'www.navyuggroup.in/admin/ibo_panel/production/web_latest_news.php', '2021-08-17', '05:33:31pm', '', '49.36.46.245', '', '', ''),
(948, 'www.navyuggroup.in/admin/ibo_panel/production/web_latest_news.php', '2021-08-17', '05:33:35pm', '', '49.36.46.245', '', '', ''),
(949, 'www.navyuggroup.in/admin/ibo_panel/production/web_latest_news.php', '2021-08-17', '05:33:36pm', '', '49.36.46.245', '', '', ''),
(950, 'www.navyuggroup.in/news_more.php?news=eibo', '2021-08-17', '05:33:39pm', '', '49.36.46.245', '', '', ''),
(951, 'www.navyuggroup.in/index.php', '2021-08-17', '05:33:42pm', '', '49.36.46.245', '', '', ''),
(952, 'www.navyuggroup.in/index.php', '2021-08-17', '05:33:42pm', '', '49.36.46.245', '', '', ''),
(953, 'www.navyuggroup.in/news_more.php?news=ng', '2021-08-17', '05:33:47pm', '', '49.36.46.245', '', '', ''),
(954, 'www.navyuggroup.in/index.php', '2021-08-17', '05:34:09pm', '', '49.36.46.245', '', '', ''),
(955, 'www.navyuggroup.in/index.php', '2021-08-17', '05:34:09pm', '', '49.36.46.245', '', '', ''),
(956, 'www.navyuggroup.in/index.php', '2021-08-17', '05:34:14pm', '', '49.36.46.245', '', '', ''),
(957, 'www.navyuggroup.in/index.php', '2021-08-17', '05:34:14pm', '', '49.36.46.245', '', '', ''),
(958, 'www.navyuggroup.in/gallery.php', '2021-08-17', '05:34:37pm', '', '49.36.46.245', '', '', ''),
(959, 'www.navyuggroup.in/gallery_video.php', '2021-08-17', '05:34:50pm', '', '49.36.46.245', '', '', ''),
(960, 'www.navyuggroup.in/gallery.php', '2021-08-17', '05:35:15pm', '', '49.36.46.245', '', '', ''),
(961, 'www.navyuggroup.in/gallery_video.php', '2021-08-17', '05:35:32pm', '', '49.36.46.245', '', '', ''),
(962, 'www.navyuggroup.in/', '2021-08-17', '05:35:42pm', '', '49.36.46.245', '', '', ''),
(963, 'www.navyuggroup.in/', '2021-08-17', '05:35:42pm', '', '49.36.46.245', '', '', ''),
(964, 'www.navyuggroup.in/Online_visit.php', '2021-08-17', '05:35:45pm', '', '49.36.46.245', '', '', ''),
(965, 'www.navyuggroup.in/inside_dholera.php', '2021-08-17', '05:35:54pm', '', '49.36.46.245', '', '', ''),
(966, 'www.navyuggroup.in/booking.php?booking=DHOLERA%20PRIDE', '2021-08-17', '05:36:18pm', '', '49.36.46.245', '', '', ''),
(967, 'www.navyuggroup.in/booking.php?booking=DHOLERA%20PRIDE', '2021-08-17', '05:36:39pm', '', '49.36.46.245', '', '', ''),
(968, 'www.navyuggroup.in/index.php', '2021-08-17', '05:36:41pm', '', '49.36.46.245', '', '', ''),
(969, 'www.navyuggroup.in/index.php', '2021-08-17', '05:36:41pm', '', '49.36.46.245', '', '', ''),
(970, 'www.navyuggroup.in/admin/ibo_panel/production/web_index.php', '2021-08-17', '05:36:47pm', '', '49.36.46.245', '', '', ''),
(971, 'www.navyuggroup.in/admin/ibo_panel/production/web_booking.php', '2021-08-17', '05:36:50pm', '', '49.36.46.245', '', '', ''),
(972, 'www.navyuggroup.in/admin/ibo_panel/production/web_booking_read.php?wb_id=1', '2021-08-17', '05:37:03pm', '', '49.36.46.245', '', '', ''),
(973, 'www.navyuggroup.in/admin/ibo_panel/production/web_booking.php', '2021-08-17', '05:37:11pm', '', '49.36.46.245', '', '', ''),
(974, 'www.navyuggroup.in/admin/ibo_panel/production/web_index.php', '2021-08-17', '05:37:12pm', '', '49.36.46.245', '', '', ''),
(975, 'www.navyuggroup.in/index.php', '2021-08-17', '05:38:01pm', '', '49.36.46.245', '', '', ''),
(976, 'www.navyuggroup.in/index.php', '2021-08-17', '05:38:01pm', '', '49.36.46.245', '', '', ''),
(977, 'www.navyuggroup.in/ibo_panel/production/Login_Form/get_Sponser_id_check.php?s=1', '2021-08-17', '05:38:10pm', '', '49.36.46.245', '', '', ''),
(978, 'www.navyuggroup.in/ibo_panel/production/Login_Form/get_Sponser_id_check.php?s=13', '2021-08-17', '05:38:11pm', '', '49.36.46.245', '', '', ''),
(979, 'www.navyuggroup.in/ibo_panel/production/Login_Form/get_Sponser_id_check.php?s=1', '2021-08-17', '05:38:14pm', '', '49.36.46.245', '', '', ''),
(980, 'www.navyuggroup.in/ibo_panel/production/Login_Form/get_Sponser_id_check.php?s=12', '2021-08-17', '05:38:14pm', '', '49.36.46.245', '', '', ''),
(981, 'www.navyuggroup.in/ibo_panel/production/Login_Form/get_Sponser_id_check.php?s=1', '2021-08-17', '05:38:16pm', '', '49.36.46.245', '', '', ''),
(982, 'www.navyuggroup.in/ibo_panel/production/Login_Form/get_Sponser_id_check.php?s=1', '2021-08-17', '05:38:17pm', '', '49.36.46.245', '', '', ''),
(983, 'www.navyuggroup.in/ibo_panel/production/Login_Form/get_Sponser_id_check.php?s=', '2021-08-17', '05:38:20pm', '', '49.36.46.245', '', '', ''),
(984, 'www.navyuggroup.in/ibo_panel/production/Login_Form/get_Sponser_id_check.php?s=3', '2021-08-17', '05:38:21pm', '', '49.36.46.245', '', '', ''),
(985, 'www.navyuggroup.in/ibo_panel/production/Login_Form/get_Sponser_id_check.php?s=', '2021-08-17', '05:38:22pm', '', '49.36.46.245', '', '', ''),
(986, 'www.navyuggroup.in/ibo_panel/production/Login_Form/get_Sponser_id_check.php?s=7', '2021-08-17', '05:38:23pm', '', '49.36.46.245', '', '', ''),
(987, 'www.navyuggroup.in/ibo_panel/production/Login_Form/get_Sponser_id_check.php?s=', '2021-08-17', '05:38:26pm', '', '49.36.46.245', '', '', ''),
(988, 'www.navyuggroup.in/ibo_panel/production/Login_Form/get_Sponser_id_check.php?s=1', '2021-08-17', '05:38:27pm', '', '49.36.46.245', '', '', ''),
(989, 'www.navyuggroup.in/ibo_panel/production/Login_Form/get_Sponser_id_check.php?s=10', '2021-08-17', '05:38:27pm', '', '49.36.46.245', '', '', ''),
(990, 'www.navyuggroup.in/ibo_panel/production/Login_Form/get_Sponser_id_check.php?s=1', '2021-08-17', '05:38:30pm', '', '49.36.46.245', '', '', ''),
(991, 'www.navyuggroup.in/ibo_panel/production/Login_Form/get_Sponser_id_check.php?s=', '2021-08-17', '05:38:30pm', '', '49.36.46.245', '', '', ''),
(992, 'www.navyuggroup.in/ibo_panel/production/Login_Form/get_Sponser_id_check.php?s=', '2021-08-17', '05:38:32pm', '', '49.36.46.245', '', '', ''),
(993, 'www.navyuggroup.in/ibo_panel/production/Login_Form/get_Sponser_id_check.php?s=N', '2021-08-17', '05:38:33pm', '', '49.36.46.245', '', '', ''),
(994, 'www.navyuggroup.in/ibo_panel/production/Login_Form/get_Sponser_id_check.php?s=NG', '2021-08-17', '05:38:34pm', '', '49.36.46.245', '', '', ''),
(995, 'www.navyuggroup.in/ibo_panel/production/Login_Form/get_Sponser_id_check.php?s=NG4', '2021-08-17', '05:38:36pm', '', '49.36.46.245', '', '', ''),
(996, 'www.navyuggroup.in/index.php', '2021-08-17', '05:39:30pm', '', '49.36.46.245', '', '', ''),
(997, 'www.navyuggroup.in/index.php', '2021-08-17', '05:39:30pm', '', '49.36.46.245', '', '', ''),
(998, 'www.navyuggroup.in/admin/ibo_panel/production/web_notifi_read.php?wc_id=8', '2021-08-17', '05:39:52pm', '', '49.36.46.245', '', '', ''),
(999, 'www.navyuggroup.in/admin/ibo_panel/production/login.php', '2021-08-17', '05:39:53pm', '', '49.36.46.245', '', '', ''),
(1000, 'www.navyuggroup.in/admin/ibo_panel/production/web_notification.php', '2021-08-17', '05:39:55pm', '', '49.36.46.245', '', '', ''),
(1001, 'www.navyuggroup.in/admin/ibo_panel/production/login.php', '2021-08-17', '05:39:55pm', '', '49.36.46.245', '', '', ''),
(1002, 'www.navyuggroup.in/admin/ibo_panel/production/login.php', '2021-08-17', '05:54:00pm', '', '49.36.42.137', '', '', ''),
(1003, 'www.navyuggroup.in/admin/ibo_panel/production/index.php', '2021-08-17', '05:54:00pm', '', '49.36.42.137', '', '', ''),
(1004, 'www.navyuggroup.in/admin/ibo_panel/production/web_index.php', '2021-08-17', '06:34:36pm', '', '49.36.42.137', '', '', ''),
(1005, 'www.navyuggroup.in/admin/ibo_panel/production/login.php', '2021-08-17', '06:34:36pm', '', '49.36.42.137', '', '', ''),
(1006, 'www.navyuggroup.in/admin/ibo_panel/production/login.php', '2021-08-17', '06:36:01pm', '', '49.36.42.137', '', '', ''),
(1007, 'www.navyuggroup.in/admin/ibo_panel/production/index.php', '2021-08-17', '06:36:01pm', '', '49.36.42.137', '', '', ''),
(1008, 'navyuggroup.in/', '2021-08-18', '03:18:58am', '', '54.189.230.128', '', '', ''),
(1009, 'www.navyuggroup.in/', '2021-08-18', '10:45:41am', '', '49.36.47.188', '', '', ''),
(1010, 'www.navyuggroup.in/', '2021-08-18', '10:45:41am', '', '49.36.47.188', '', '', ''),
(1011, 'www.navyuggroup.in/ibo_panel/production/Login_Form/login.php', '2021-08-18', '10:45:46am', '', '49.36.47.188', '', '', ''),
(1012, 'www.navyuggroup.in/ibo_panel/production/Login_Form/login.php', '2021-08-18', '10:47:27am', '', '49.36.47.188', '', '', ''),
(1013, 'www.navyuggroup.in/ibo_panel/production/index.php', '2021-08-18', '10:47:27am', '', '49.36.47.188', '', '', ''),
(1014, 'www.navyuggroup.in/', '2021-08-18', '10:50:31am', '', '49.36.47.188', '', '', ''),
(1015, 'www.navyuggroup.in/', '2021-08-18', '10:50:31am', '', '49.36.47.188', '', '', ''),
(1016, 'navyuggroup.in/', '2021-08-18', '10:52:39am', '', '49.36.47.188', '', '', ''),
(1017, 'navyuggroup.in/', '2021-08-18', '10:52:41am', '', '42.106.161.71', '', '', ''),
(1018, 'navyuggroup.in/', '2021-08-18', '10:52:53am', '', '42.106.161.71', '', '', ''),
(1019, 'navyuggroup.in/', '2021-08-18', '10:52:57am', '', '49.36.47.188', '', '', ''),
(1020, 'www.navyuggroup.in/index.php', '2021-08-18', '10:54:24am', '', '49.36.47.188', '', '', ''),
(1021, 'www.navyuggroup.in/index.php', '2021-08-18', '10:54:25am', '', '49.36.47.188', '', '', ''),
(1022, 'www.navyuggroup.in/gallery.php', '2021-08-18', '10:55:03am', '', '49.36.47.188', '', '', ''),
(1023, 'www.navyuggroup.in/gallery_video.php', '2021-08-18', '10:55:20am', '', '49.36.47.188', '', '', ''),
(1024, 'www.navyuggroup.in/contact.php', '2021-08-18', '11:05:58am', '', '49.36.47.188', '', '', ''),
(1025, 'www.navyuggroup.in/', '2021-08-18', '11:16:53am', '', '49.36.47.188', '', '', ''),
(1026, 'www.navyuggroup.in/', '2021-08-18', '11:16:53am', '', '49.36.47.188', '', '', ''),
(1027, 'www.navyuggroup.in/', '2021-08-18', '11:21:41am', '', '49.36.47.188', '', '', ''),
(1028, 'www.navyuggroup.in/', '2021-08-18', '11:21:43am', '', '49.36.47.188', '', '', ''),
(1029, 'www.navyuggroup.in/index.php', '2021-08-18', '11:22:09am', '', '49.36.47.188', '', '', ''),
(1030, 'www.navyuggroup.in/index.php', '2021-08-18', '11:22:09am', '', '49.36.47.188', '', '', ''),
(1031, 'www.navyuggroup.in/index.php', '2021-08-18', '11:24:14am', '', '49.36.47.188', '', '', ''),
(1032, 'www.navyuggroup.in/index.php', '2021-08-18', '11:24:55am', '', '49.36.47.188', '', '', ''),
(1033, 'www.navyuggroup.in/index.php', '2021-08-18', '11:27:23am', '', '49.36.47.188', '', '', ''),
(1034, 'www.navyuggroup.in/index.php', '2021-08-18', '11:29:26am', '', '49.36.47.188', '', '', ''),
(1035, 'www.navyuggroup.in/index.php', '2021-08-18', '11:30:33am', '', '49.36.47.188', '', '', ''),
(1036, 'www.navyuggroup.in/index.php', '2021-08-18', '11:31:37am', '', '49.36.47.188', '', '', ''),
(1037, 'www.navyuggroup.in/index.php', '2021-08-18', '11:32:39am', '', '49.36.47.188', '', '', ''),
(1038, 'www.navyuggroup.in/index.php', '2021-08-18', '11:33:20am', '', '49.36.47.188', '', '', ''),
(1039, 'www.navyuggroup.in/index.php', '2021-08-18', '11:34:07am', '', '49.36.47.188', '', '', ''),
(1040, 'www.navyuggroup.in/index.php', '2021-08-18', '11:34:15am', '', '49.36.47.188', '', '', ''),
(1041, 'www.navyuggroup.in/index.php', '2021-08-18', '11:35:01am', '', '49.36.47.188', '', '', ''),
(1042, 'www.navyuggroup.in/index.php', '2021-08-18', '11:39:35am', '', '49.36.47.188', '', '', ''),
(1043, 'www.navyuggroup.in/index.php', '2021-08-18', '11:40:20am', '', '49.36.47.188', '', '', ''),
(1044, 'www.navyuggroup.in/index.php', '2021-08-18', '11:42:36am', '', '49.36.47.188', '', '', ''),
(1045, 'www.navyuggroup.in/index.php', '2021-08-18', '11:43:48am', '', '49.36.47.188', '', '', ''),
(1046, 'www.navyuggroup.in/index.php', '2021-08-18', '11:45:15am', '', '49.36.47.188', '', '', ''),
(1047, 'www.navyuggroup.in/index.php', '2021-08-18', '11:45:52am', '', '49.36.47.188', '', '', ''),
(1048, 'www.navyuggroup.in/index.php', '2021-08-18', '11:46:16am', '', '49.36.47.188', '', '', ''),
(1049, 'www.navyuggroup.in/index.php', '2021-08-18', '11:47:14am', '', '49.36.47.188', '', '', ''),
(1050, 'www.navyuggroup.in/inside_dholera.php', '2021-08-18', '11:47:55am', '', '49.36.47.188', '', '', ''),
(1051, 'www.navyuggroup.in/inside_dholera.php', '2021-08-18', '11:48:43am', '', '49.36.47.188', '', '', ''),
(1052, 'www.navyuggroup.in/booking.php?booking=DHOLERA%20AVENUE', '2021-08-18', '11:49:09am', '', '49.36.47.188', '', '', ''),
(1053, 'www.navyuggroup.in/inside_dholera.php', '2021-08-18', '11:49:40am', '', '49.36.47.188', '', '', ''),
(1054, 'www.navyuggroup.in/inside_dholera.php', '2021-08-18', '11:49:44am', '', '49.36.47.188', '', '', ''),
(1055, 'www.navyuggroup.in/', '2021-08-18', '11:50:13am', '', '66.249.79.14', '', '', ''),
(1056, 'www.navyuggroup.in/inside_dholera.php', '2021-08-18', '11:50:37am', '', '49.36.47.188', '', '', ''),
(1057, 'www.navyuggroup.in/inside_dholera.php', '2021-08-18', '11:50:41am', '', '49.36.47.188', '', '', ''),
(1058, 'www.navyuggroup.in/inside_dholera.php', '2021-08-18', '11:50:47am', '', '49.36.47.188', '', '', ''),
(1059, 'www.navyuggroup.in/inside_dholera.php', '2021-08-18', '11:53:01am', '', '49.36.47.188', '', '', ''),
(1060, 'www.navyuggroup.in/inside_dholera.php', '2021-08-18', '11:54:05am', '', '49.36.47.188', '', '', ''),
(1061, 'www.navyuggroup.in/inside_dholera.php', '2021-08-18', '11:55:05am', '', '49.36.47.188', '', '', ''),
(1062, 'www.navyuggroup.in/inside_dholera.php', '2021-08-18', '11:55:46am', '', '49.36.47.188', '', '', ''),
(1063, 'www.navyuggroup.in/inside_dholera.php', '2021-08-18', '12:04:54pm', '', '49.36.47.188', '', '', ''),
(1064, 'www.navyuggroup.in/index.php', '2021-08-18', '12:05:04pm', '', '49.36.47.188', '', '', ''),
(1065, 'www.navyuggroup.in/index.php', '2021-08-18', '12:07:10pm', '', '49.36.47.188', '', '', ''),
(1066, 'www.navyuggroup.in/index.php', '2021-08-18', '12:07:38pm', '', '49.36.47.188', '', '', ''),
(1067, 'www.navyuggroup.in/index.php', '2021-08-18', '12:08:27pm', '', '49.36.47.188', '', '', ''),
(1068, 'www.navyuggroup.in/gallery.php', '2021-08-18', '12:08:39pm', '', '49.36.47.188', '', '', ''),
(1069, 'www.navyuggroup.in/', '2021-08-18', '12:12:18pm', '', '49.36.47.188', '', '', ''),
(1070, 'www.navyuggroup.in/gallery.php', '2021-08-18', '12:12:20pm', '', '49.36.47.188', '', '', ''),
(1071, 'www.navyuggroup.in/gallery_video.php', '2021-08-18', '12:12:50pm', '', '49.36.47.188', '', '', ''),
(1072, 'www.navyuggroup.in/gallery.php', '2021-08-18', '12:12:55pm', '', '49.36.47.188', '', '', ''),
(1073, 'www.navyuggroup.in/index.php', '2021-08-18', '12:13:04pm', '', '49.36.47.188', '', '', ''),
(1074, 'www.navyuggroup.in/gallery.php', '2021-08-18', '12:43:30pm', '', '49.36.47.188', '', '', ''),
(1075, 'www.navyuggroup.in/gallery.php', '2021-08-18', '12:45:34pm', '', '49.36.47.188', '', '', ''),
(1076, 'www.navyuggroup.in/index.php', '2021-08-18', '12:45:38pm', '', '49.36.47.188', '', '', ''),
(1077, 'www.navyuggroup.in/index.php', '2021-08-18', '01:02:53pm', '', '49.36.47.188', '', '', ''),
(1078, 'www.navyuggroup.in/ibo_panel/production/Login_Form/login.php', '2021-08-18', '01:03:14pm', '', '49.36.47.188', '', '', ''),
(1079, 'www.navyuggroup.in/ibo_panel/production/Login_Form/login.php', '2021-08-18', '01:03:42pm', '', '49.36.47.188', '', '', ''),
(1080, 'www.navyuggroup.in/ibo_panel/production/Login_Form/login.php', '2021-08-18', '01:03:48pm', '', '49.36.47.188', '', '', ''),
(1081, 'www.navyuggroup.in/ibo_panel/production/Login_Form/login.php', '2021-08-18', '01:03:53pm', '', '49.36.47.188', '', '', ''),
(1082, 'www.navyuggroup.in/ibo_panel/production/Login_Form/login.php', '2021-08-18', '01:03:55pm', '', '49.36.47.188', '', '', ''),
(1083, 'www.navyuggroup.in/admin/ibo_panel/production/', '2021-08-18', '01:04:07pm', '', '49.36.47.188', '', '', ''),
(1084, 'www.navyuggroup.in/admin/ibo_panel/production/login.php', '2021-08-18', '01:04:07pm', '', '49.36.47.188', '', '', ''),
(1085, 'www.navyuggroup.in/admin/ibo_panel/production/login.php', '2021-08-18', '01:04:10pm', '', '49.36.47.188', '', '', ''),
(1086, 'www.navyuggroup.in/admin/ibo_panel/production/index.php', '2021-08-18', '01:04:10pm', '', '49.36.47.188', '', '', ''),
(1087, 'navyuggroup.in/', '2021-08-18', '01:04:32pm', '', '49.36.47.188', '', '', ''),
(1088, 'www.navyuggroup.in/ibo_panel/production/Login_Form/login.php', '2021-08-18', '01:04:48pm', '', '49.36.47.188', '', '', ''),
(1089, 'www.navyuggroup.in/admin/ibo_panel/production/login.php', '2021-08-18', '01:05:17pm', '', '49.36.47.188', '', '', ''),
(1090, 'www.navyuggroup.in/admin/ibo_panel/production/login.php', '2021-08-18', '01:05:30pm', '', '49.36.47.188', '', '', ''),
(1091, 'www.navyuggroup.in/admin/ibo_panel/production/login.php', '2021-08-18', '01:05:45pm', '', '49.36.47.188', '', '', ''),
(1092, 'navyuggroup.in/', '2021-08-18', '01:06:04pm', '', '54.36.148.39', '', '', ''),
(1093, 'www.navyuggroup.in/admin/ibo_panel/production/login.php', '2021-08-18', '01:06:25pm', '', '49.36.47.188', '', '', ''),
(1094, 'www.navyuggroup.in/admin/ibo_panel/production/index.php', '2021-08-18', '01:06:25pm', '', '49.36.47.188', '', '', ''),
(1095, 'www.navyuggroup.in/', '2021-08-18', '01:06:38pm', '', '49.36.47.188', '', '', ''),
(1096, 'www.navyuggroup.in/admin/ibo_panel/production/index.php', '2021-08-18', '01:06:56pm', '', '49.36.47.188', '', '', ''),
(1097, 'www.navyuggroup.in/admin/ibo_panel/production/web_index.php', '2021-08-18', '01:07:23pm', '', '49.36.47.188', '', '', ''),
(1098, 'www.navyuggroup.in/admin/ibo_panel/production/web_gallery.php', '2021-08-18', '01:07:30pm', '', '49.36.47.188', '', '', ''),
(1099, 'www.navyuggroup.in/admin/ibo_panel/production/web_add_video.php', '2021-08-18', '01:08:02pm', '', '49.36.47.188', '', '', ''),
(1100, 'navyuggroup.in/', '2021-08-18', '01:09:03pm', '', '49.36.47.188', '', '', ''),
(1101, 'navyuggroup.in/gallery.php', '2021-08-18', '01:10:07pm', '', '49.36.47.188', '', '', ''),
(1102, 'navyuggroup.in/gallery_video.php', '2021-08-18', '01:10:26pm', '', '49.36.47.188', '', '', ''),
(1103, 'www.navyuggroup.in/admin/ibo_panel/production/web_gallery.php', '2021-08-18', '01:11:47pm', '', '49.36.47.188', '', '', ''),
(1104, 'www.navyuggroup.in/admin/ibo_panel/production/web_gallery.php', '2021-08-18', '01:13:30pm', '', '49.36.47.188', '', '', ''),
(1105, 'www.navyuggroup.in/admin/ibo_panel/production/web_gallery.php', '2021-08-18', '01:13:47pm', '', '49.36.47.188', '', '', ''),
(1106, 'www.navyuggroup.in/admin/ibo_panel/production/web_gallery.php', '2021-08-18', '01:13:49pm', '', '49.36.47.188', '', '', ''),
(1107, 'www.navyuggroup.in/admin/ibo_panel/production/web_gallery.php', '2021-08-18', '01:13:50pm', '', '49.36.47.188', '', '', ''),
(1108, 'www.navyuggroup.in/admin/ibo_panel/production/web_gallery.php', '2021-08-18', '01:13:51pm', '', '49.36.47.188', '', '', ''),
(1109, 'www.navyuggroup.in/admin/ibo_panel/production/web_gallery.php', '2021-08-18', '01:13:52pm', '', '49.36.47.188', '', '', ''),
(1110, 'www.navyuggroup.in/admin/ibo_panel/production/web_gallery.php', '2021-08-18', '01:13:54pm', '', '49.36.47.188', '', '', ''),
(1111, 'www.navyuggroup.in/admin/ibo_panel/production/web_gallery.php', '2021-08-18', '01:13:54pm', '', '49.36.47.188', '', '', ''),
(1112, 'www.navyuggroup.in/admin/ibo_panel/production/web_gallery.php', '2021-08-18', '01:13:55pm', '', '49.36.47.188', '', '', ''),
(1113, 'www.navyuggroup.in/admin/ibo_panel/production/web_gallery.php', '2021-08-18', '01:13:56pm', '', '49.36.47.188', '', '', ''),
(1114, 'www.navyuggroup.in/admin/ibo_panel/production/web_gallery.php', '2021-08-18', '01:13:58pm', '', '49.36.47.188', '', '', ''),
(1115, 'www.navyuggroup.in/admin/ibo_panel/production/web_gallery.php', '2021-08-18', '01:13:58pm', '', '49.36.47.188', '', '', ''),
(1116, 'www.navyuggroup.in/admin/ibo_panel/production/web_gallery.php', '2021-08-18', '01:13:59pm', '', '49.36.47.188', '', '', ''),
(1117, 'www.navyuggroup.in/admin/ibo_panel/production/web_gallery.php', '2021-08-18', '01:14:00pm', '', '49.36.47.188', '', '', ''),
(1118, 'www.navyuggroup.in/admin/ibo_panel/production/web_gallery.php', '2021-08-18', '01:14:01pm', '', '49.36.47.188', '', '', ''),
(1119, 'www.navyuggroup.in/admin/ibo_panel/production/web_gallery.php', '2021-08-18', '01:14:02pm', '', '49.36.47.188', '', '', ''),
(1120, 'www.navyuggroup.in/admin/ibo_panel/production/web_gallery.php', '2021-08-18', '01:14:03pm', '', '49.36.47.188', '', '', ''),
(1121, 'www.navyuggroup.in/admin/ibo_panel/production/web_gallery.php', '2021-08-18', '01:14:04pm', '', '49.36.47.188', '', '', ''),
(1122, 'www.navyuggroup.in/admin/ibo_panel/production/web_gallery.php', '2021-08-18', '01:14:04pm', '', '49.36.47.188', '', '', ''),
(1123, 'www.navyuggroup.in/admin/ibo_panel/production/web_gallery.php', '2021-08-18', '01:14:05pm', '', '49.36.47.188', '', '', ''),
(1124, 'www.navyuggroup.in/admin/ibo_panel/production/web_gallery.php', '2021-08-18', '01:14:06pm', '', '49.36.47.188', '', '', ''),
(1125, 'www.navyuggroup.in/admin/ibo_panel/production/web_gallery.php', '2021-08-18', '01:14:07pm', '', '49.36.47.188', '', '', ''),
(1126, 'www.navyuggroup.in/admin/ibo_panel/production/web_gallery.php', '2021-08-18', '01:14:08pm', '', '49.36.47.188', '', '', ''),
(1127, 'navyuggroup.in/gallery_video.php', '2021-08-18', '01:14:17pm', '', '49.36.47.188', '', '', ''),
(1128, 'navyuggroup.in/gallery.php', '2021-08-18', '01:14:23pm', '', '49.36.47.188', '', '', ''),
(1129, 'navyuggroup.in/index.php', '2021-08-18', '01:14:26pm', '', '49.36.47.188', '', '', ''),
(1130, 'navyuggroup.in/index.php', '2021-08-18', '01:14:28pm', '', '43.247.158.133', '', '', ''),
(1131, 'navyuggroup.in/index.php', '2021-08-18', '01:17:39pm', '', '49.36.47.188', '', '', ''),
(1132, 'navyuggroup.in/', '2021-08-18', '03:33:44pm', '', '144.86.173.144', '', '', ''),
(1133, 'navyuggroup.in/', '2021-08-18', '03:40:14pm', '', '212.143.94.234', '', '', ''),
(1134, 'navyuggroup.in/', '2021-08-18', '03:44:59pm', '', '212.143.94.234', '', '', ''),
(1135, 'navyuggroup.in/', '2021-08-18', '03:52:29pm', '', '23.80.138.169', '', '', ''),
(1136, 'navyuggroup.in/', '2021-08-18', '03:52:30pm', '', '172.255.93.252', '', '', ''),
(1137, 'navyuggroup.in/', '2021-08-18', '03:52:30pm', '', '209.141.46.81', '', '', ''),
(1138, 'navyuggroup.in/', '2021-08-18', '03:52:31pm', '', '23.27.237.34', '', '', ''),
(1139, 'navyuggroup.in/', '2021-08-18', '03:52:34pm', '', '23.19.224.64', '', '', ''),
(1140, 'navyuggroup.in/', '2021-08-18', '03:52:34pm', '', '23.27.237.30', '', '', ''),
(1141, 'navyuggroup.in/', '2021-08-18', '04:09:08pm', '', '23.19.224.64', '', '', ''),
(1142, 'navyuggroup.in/', '2021-08-18', '04:09:12pm', '', '23.80.138.169', '', '', ''),
(1143, 'navyuggroup.in/', '2021-08-18', '04:09:14pm', '', '23.27.237.34', '', '', ''),
(1144, 'navyuggroup.in/', '2021-08-18', '04:09:18pm', '', '23.27.237.30', '', '', ''),
(1145, 'navyuggroup.in/', '2021-08-18', '04:09:21pm', '', '172.255.93.252', '', '', ''),
(1146, 'navyuggroup.in/', '2021-08-18', '04:09:33pm', '', '193.110.95.34', '', '', ''),
(1147, 'www.navyuggroup.in/admin/ibo_panel/production/login.php', '2021-08-18', '05:01:23pm', '', '47.247.199.223', '', '', ''),
(1148, 'www.navyuggroup.in/admin/ibo_panel/production/login.php', '2021-08-18', '05:01:30pm', '', '47.247.199.223', '', '', ''),
(1149, 'www.navyuggroup.in/admin/ibo_panel/production/index.php', '2021-08-18', '05:01:30pm', '', '47.247.199.223', '', '', ''),
(1150, 'www.navyuggroup.in/admin/ibo_panel/production/web_index.php', '2021-08-18', '05:01:36pm', '', '47.247.199.223', '', '', ''),
(1151, 'www.navyuggroup.in/admin/ibo_panel/production/web_gallery.php', '2021-08-18', '05:01:39pm', '', '47.247.199.223', '', '', ''),
(1152, 'www.navyuggroup.in/admin/ibo_panel/production/web_add_video.php', '2021-08-18', '05:01:40pm', '', '47.247.199.223', '', '', ''),
(1153, 'www.navyuggroup.in/admin/ibo_panel/production/web_add_video.php', '2021-08-18', '05:02:47pm', '', '47.247.199.223', '', '', ''),
(1154, 'www.navyuggroup.in/admin/ibo_panel/production/web_gallery.php', '2021-08-18', '05:03:07pm', '', '47.247.199.223', '', '', ''),
(1155, 'www.navyuggroup.in/admin/ibo_panel/production/web_gallery.php', '2021-08-18', '05:05:54pm', '', '47.247.199.223', '', '', ''),
(1156, 'www.navyuggroup.in/', '2021-08-18', '06:16:09pm', '', '27.62.249.135', '', '', ''),
(1157, 'www.navyuggroup.in/', '2021-08-18', '06:27:07pm', '', '27.62.249.135', '', '', ''),
(1158, 'www.navyuggroup.in/', '2021-08-18', '06:27:33pm', '', '27.62.249.135', '', '', ''),
(1159, 'www.navyuggroup.in/ibo_panel/production/Login_Form/login.php', '2021-08-18', '06:31:40pm', '', '27.62.249.135', '', '', ''),
(1160, 'www.navyuggroup.in/', '2021-08-18', '06:32:10pm', '', '27.62.249.135', '', '', ''),
(1161, 'www.navyuggroup.in/gallery.php', '2021-08-18', '07:07:26pm', '', '27.62.249.135', '', '', ''),
(1162, 'www.navyuggroup.in/inside_dholera.php', '2021-08-18', '07:07:29pm', '', '27.62.249.135', '', '', ''),
(1163, 'www.navyuggroup.in/index.php', '2021-08-18', '07:07:44pm', '', '27.62.249.135', '', '', ''),
(1164, 'www.navyuggroup.in/index.php', '2021-08-18', '08:11:56pm', '', '157.55.39.23', '', '', ''),
(1165, 'www.navyuggroup.in/admin/ibo_panel/production/web_gallery.php', '2021-08-19', '12:53:22am', '', '47.247.222.69', '', '', ''),
(1166, 'www.navyuggroup.in/admin/ibo_panel/production/login.php', '2021-08-19', '12:53:22am', '', '47.247.222.69', '', '', ''),
(1167, 'navyuggroup.in/', '2021-08-19', '05:03:21am', '', '100.21.218.158', '', '', ''),
(1168, 'navyuggroup.in/', '2021-08-19', '08:02:38am', '', '54.36.148.39', '', '', ''),
(1169, 'www.navyuggroup.in/', '2021-08-19', '11:40:51am', '', '49.36.40.22', '', '', ''),
(1170, 'www.navyuggroup.in/ibo_panel/production/Login_Form/get_Sponser_id_check.php?s=n', '2021-08-19', '11:41:03am', '', '49.36.40.22', '', '', ''),
(1171, 'www.navyuggroup.in/ibo_panel/production/Login_Form/get_Sponser_id_check.php?s=ng', '2021-08-19', '11:41:04am', '', '49.36.40.22', '', '', ''),
(1172, 'www.navyuggroup.in/ibo_panel/production/Login_Form/get_Sponser_id_check.php?s=ng2', '2021-08-19', '11:41:04am', '', '49.36.40.22', '', '', ''),
(1173, 'www.navyuggroup.in/ibo_panel/production/Login_Form/get_Sponser_id_check.php?s=ng29', '2021-08-19', '11:41:04am', '', '49.36.40.22', '', '', ''),
(1174, 'www.navyuggroup.in/ibo_panel/production/Login_Form/get_Sponser_id_check.php?s=ng297', '2021-08-19', '11:41:04am', '', '49.36.40.22', '', '', ''),
(1175, 'www.navyuggroup.in/ibo_panel/production/Login_Form/get_Sponser_id_check.php?s=ng2974', '2021-08-19', '11:41:05am', '', '49.36.40.22', '', '', ''),
(1176, 'www.navyuggroup.in/ibo_panel/production/Login_Form/get_mob_check.php?q=', '2021-08-19', '11:41:12am', '', '49.36.40.22', '', '', ''),
(1177, 'www.navyuggroup.in/ibo_panel/production/Login_Form/get_mob_check.php?q=7', '2021-08-19', '11:41:14am', '', '49.36.40.22', '', '', ''),
(1178, 'www.navyuggroup.in/ibo_panel/production/Login_Form/get_mob_check.php?q=78', '2021-08-19', '11:41:14am', '', '49.36.40.22', '', '', ''),
(1179, 'www.navyuggroup.in/ibo_panel/production/Login_Form/get_mob_check.php?q=786', '2021-08-19', '11:41:14am', '', '49.36.40.22', '', '', ''),
(1180, 'www.navyuggroup.in/ibo_panel/production/Login_Form/get_mob_check.php?q=7869', '2021-08-19', '11:41:15am', '', '49.36.40.22', '', '', ''),
(1181, 'www.navyuggroup.in/ibo_panel/production/Login_Form/get_mob_check.php?q=78694', '2021-08-19', '11:41:15am', '', '49.36.40.22', '', '', ''),
(1182, 'www.navyuggroup.in/ibo_panel/production/Login_Form/get_mob_check.php?q=786947', '2021-08-19', '11:41:15am', '', '49.36.40.22', '', '', ''),
(1183, 'www.navyuggroup.in/ibo_panel/production/Login_Form/get_mob_check.php?q=7869470', '2021-08-19', '11:41:15am', '', '49.36.40.22', '', '', ''),
(1184, 'www.navyuggroup.in/ibo_panel/production/Login_Form/get_mob_check.php?q=78694704', '2021-08-19', '11:41:16am', '', '49.36.40.22', '', '', ''),
(1185, 'www.navyuggroup.in/ibo_panel/production/Login_Form/get_mob_check.php?q=786947041', '2021-08-19', '11:41:16am', '', '49.36.40.22', '', '', ''),
(1186, 'www.navyuggroup.in/ibo_panel/production/Login_Form/get_mob_check.php?q=7869470415', '2021-08-19', '11:41:16am', '', '49.36.40.22', '', '', ''),
(1187, 'www.navyuggroup.in/ibo_panel/production/Login_Form/get_mob_check.php?q=786947041', '2021-08-19', '11:41:22am', '', '49.36.40.22', '', '', ''),
(1188, 'www.navyuggroup.in/ibo_panel/production/Login_Form/get_mob_check.php?q=7869470417', '2021-08-19', '11:41:22am', '', '49.36.40.22', '', '', ''),
(1189, 'www.navyuggroup.in/ibo_panel/production/Login_Form/get_email_check.php?e=', '2021-08-19', '11:41:25am', '', '49.36.40.22', '', '', ''),
(1190, 'www.navyuggroup.in/ibo_panel/production/Login_Form/get_email_check.php?e=g', '2021-08-19', '11:41:27am', '', '49.36.40.22', '', '', ''),
(1191, 'www.navyuggroup.in/ibo_panel/production/Login_Form/get_email_check.php?e=gi', '2021-08-19', '11:41:27am', '', '49.36.40.22', '', '', ''),
(1192, 'www.navyuggroup.in/ibo_panel/production/Login_Form/get_email_check.php?e=gidolia3@gmail.com', '2021-08-19', '11:41:28am', '', '49.36.40.22', '', '', ''),
(1193, 'www.navyuggroup.in/ibo_panel/production/Login_Form/get_email_check.php?e=gidolia3@gmail.co', '2021-08-19', '11:41:30am', '', '49.36.40.22', '', '', ''),
(1194, 'www.navyuggroup.in/ibo_panel/production/Login_Form/get_email_check.php?e=gidolia3@gmail.cor', '2021-08-19', '11:41:31am', '', '49.36.40.22', '', '', ''),
(1195, 'www.navyuggroup.in/ibo_panel/production/Login_Form/process_reg_form.php', '2021-08-19', '11:41:39am', '', '49.36.40.22', '', '', ''),
(1196, 'www.navyuggroup.in/ibo_panel/production/Login_Form/reg_successful.php?d_id=161779808', '2021-08-19', '11:41:41am', '', '49.36.40.22', '', '', ''),
(1197, 'www.navyuggroup.in/ibo_panel/production/Login_Form/login.php', '2021-08-19', '11:42:27am', '', '49.36.40.22', '', '', ''),
(1198, 'www.navyuggroup.in/ibo_panel/production/Login_Form/login.php', '2021-08-19', '11:42:33am', '', '49.36.40.22', '', '', ''),
(1199, 'www.navyuggroup.in/ibo_panel/production/index.php', '2021-08-19', '11:42:33am', '', '49.36.40.22', '', '', ''),
(1200, 'www.navyuggroup.in/ibo_panel/production/Login_Form/login.php', '2021-08-19', '11:42:45am', '', '49.36.40.22', '', '', ''),
(1201, 'www.navyuggroup.in/ibo_panel/production/Login_Form/login.php', '2021-08-19', '12:29:02pm', '', '66.249.79.17', '', '', ''),
(1202, 'www.navyuggroup.in/ibo_panel/production/Login_Form/login.php', '2021-08-19', '03:29:03pm', '', '49.36.44.14', '', '', ''),
(1203, 'www.navyuggroup.in/ibo_panel/production/index.php', '2021-08-19', '03:29:03pm', '', '49.36.44.14', '', '', ''),
(1204, 'www.navyuggroup.in/ibo_panel/production/kyc.php', '2021-08-19', '03:29:24pm', '', '49.36.44.14', '', '', ''),
(1205, 'www.navyuggroup.in/ibo_panel/production/network_list.php', '2021-08-19', '03:29:56pm', '', '49.36.44.14', '', '', ''),
(1206, 'www.navyuggroup.in/ibo_panel/production/level1.php', '2021-08-19', '03:29:58pm', '', '49.36.44.14', '', '', ''),
(1207, 'www.navyuggroup.in/ibo_panel/production/tree.php', '2021-08-19', '03:30:00pm', '', '49.36.44.14', '', '', ''),
(1208, 'www.navyuggroup.in/ibo_panel/production/tree_view.php', '2021-08-19', '03:30:00pm', '', '49.36.44.14', '', '', ''),
(1209, 'www.navyuggroup.in/ibo_panel/production/network_list.php', '2021-08-19', '03:30:08pm', '', '49.36.44.14', '', '', ''),
(1210, 'www.navyuggroup.in/ibo_panel/production/submit_payment_detail.php', '2021-08-19', '03:30:12pm', '', '49.36.44.14', '', '', ''),
(1211, 'www.navyuggroup.in/ibo_panel/production/payment_request_history.php', '2021-08-19', '03:30:14pm', '', '49.36.44.14', '', '', ''),
(1212, 'www.navyuggroup.in/ibo_panel/production/submit_payment_detail.php', '2021-08-19', '03:30:19pm', '', '49.36.44.14', '', '', ''),
(1213, 'www.navyuggroup.in/ibo_panel/production/property_saving_ledger_view.php', '2021-08-19', '03:30:22pm', '', '49.36.44.14', '', '', ''),
(1214, 'www.navyuggroup.in/ibo_panel/production/kyc.php', '2021-08-19', '03:30:24pm', '', '49.36.44.14', '', '', ''),
(1215, 'www.navyuggroup.in/ibo_panel/production/change_password.php', '2021-08-19', '03:30:29pm', '', '49.36.44.14', '', '', ''),
(1216, 'www.navyuggroup.in/', '2021-08-19', '03:30:42pm', '', '49.36.44.14', '', '', ''),
(1217, 'www.navyuggroup.in/', '2021-08-19', '03:31:11pm', '', '49.36.44.14', '', '', ''),
(1218, 'navyuggroup.in/', '2021-08-19', '03:31:47pm', '', '49.36.44.14', '', '', ''),
(1219, 'navyuggroup.in/', '2021-08-19', '03:31:52pm', '', '49.36.44.14', '', '', ''),
(1220, 'navyuggroup.in/', '2021-08-19', '03:32:30pm', '', '49.36.44.14', '', '', ''),
(1221, 'www.navyuggroup.in/', '2021-08-19', '03:48:29pm', '', '49.36.44.14', '', '', ''),
(1222, 'www.navyuggroup.in/', '2021-08-19', '03:48:42pm', '', '207.46.13.53', '', '', ''),
(1223, 'www.navyuggroup.in/inside_dholera.php', '2021-08-19', '03:49:20pm', '', '49.36.44.14', '', '', ''),
(1224, 'www.navyuggroup.in/inside_dholera.php', '2021-08-19', '03:50:21pm', '', '49.36.44.14', '', '', ''),
(1225, 'www.navyuggroup.in/booking.php?booking=DHOLERA%20PRISTINE', '2021-08-19', '03:51:42pm', '', '49.36.44.14', '', '', ''),
(1226, 'www.navyuggroup.in/index.php', '2021-08-19', '03:52:31pm', '', '49.36.44.14', '', '', ''),
(1227, 'www.navyuggroup.in/gallery.php', '2021-08-19', '03:55:29pm', '', '49.36.44.14', '', '', ''),
(1228, 'www.navyuggroup.in/gallery_video.php', '2021-08-19', '03:55:31pm', '', '49.36.44.14', '', '', ''),
(1229, 'www.navyuggroup.in/index.php', '2021-08-19', '03:56:05pm', '', '49.36.44.14', '', '', ''),
(1230, 'www.navyuggroup.in/', '2021-08-19', '04:00:05pm', '', '49.36.44.14', '', '', ''),
(1231, 'www.navyuggroup.in/index.php', '2021-08-19', '04:00:33pm', '', '49.36.44.14', '', '', ''),
(1232, 'www.navyuggroup.in/index.php', '2021-08-19', '04:03:36pm', '', '49.36.44.14', '', '', ''),
(1233, 'www.navyuggroup.in/admin/ibo_panel/production/', '2021-08-19', '04:30:08pm', '', '49.36.44.14', '', '', ''),
(1234, 'www.navyuggroup.in/admin/ibo_panel/production/login.php', '2021-08-19', '04:30:09pm', '', '49.36.44.14', '', '', ''),
(1235, 'www.navyuggroup.in/admin/ibo_panel/production/login.php', '2021-08-19', '04:30:12pm', '', '49.36.44.14', '', '', ''),
(1236, 'www.navyuggroup.in/admin/ibo_panel/production/index.php', '2021-08-19', '04:30:12pm', '', '49.36.44.14', '', '', ''),
(1237, 'www.navyuggroup.in/', '2021-08-19', '04:30:13pm', '', '49.36.44.14', '', '', ''),
(1238, 'www.navyuggroup.in/admin/ibo_panel/production/web_index.php', '2021-08-19', '04:30:14pm', '', '49.36.44.14', '', '', ''),
(1239, 'www.navyuggroup.in/admin/ibo_panel/production/web_latest_news.php', '2021-08-19', '04:30:22pm', '', '49.36.44.14', '', '', ''),
(1240, 'www.navyuggroup.in/admin/ibo_panel/production/web_latest_news.php', '2021-08-19', '04:30:47pm', '', '49.36.44.14', '', '', ''),
(1241, 'www.navyuggroup.in/admin/ibo_panel/production/web_latest_news.php', '2021-08-19', '04:30:49pm', '', '49.36.44.14', '', '', ''),
(1242, 'www.navyuggroup.in/admin/ibo_panel/production/web_latest_news.php', '2021-08-19', '04:30:51pm', '', '49.36.44.14', '', '', ''),
(1243, 'www.navyuggroup.in/admin/ibo_panel/production/web_latest_news.php', '2021-08-19', '04:30:53pm', '', '49.36.44.14', '', '', ''),
(1244, 'www.navyuggroup.in/', '2021-08-19', '04:31:02pm', '', '49.36.44.14', '', '', ''),
(1245, 'www.navyuggroup.in/news_more.php?news=ng', '2021-08-19', '04:31:29pm', '', '49.36.44.14', '', '', ''),
(1246, 'www.navyuggroup.in/admin/ibo_panel/production/web_latest_news.php', '2021-08-19', '04:31:45pm', '', '49.36.44.14', '', '', ''),
(1247, 'www.navyuggroup.in/admin/ibo_panel/production/web_latest_news.php', '2021-08-19', '04:31:47pm', '', '49.36.44.14', '', '', ''),
(1248, 'www.navyuggroup.in/admin/ibo_panel/production/web_latest_news.php', '2021-08-19', '04:31:52pm', '', '49.36.44.14', '', '', ''),
(1249, 'www.navyuggroup.in/admin/ibo_panel/production/web_latest_news.php', '2021-08-19', '04:31:53pm', '', '49.36.44.14', '', '', ''),
(1250, 'www.navyuggroup.in/admin/ibo_panel/production/web_latest_news.php', '2021-08-19', '04:31:56pm', '', '49.36.44.14', '', '', ''),
(1251, 'www.navyuggroup.in/admin/ibo_panel/production/web_latest_news.php', '2021-08-19', '04:31:59pm', '', '49.36.44.14', '', '', ''),
(1252, 'www.navyuggroup.in/', '2021-08-19', '04:33:01pm', '', '49.36.44.14', '', '', ''),
(1253, 'www.navyuggroup.in/admin/ibo_panel/production/', '2021-08-19', '04:40:20pm', '', '49.36.44.14', '', '', ''),
(1254, 'www.navyuggroup.in/admin/ibo_panel/production/web_index.php', '2021-08-19', '04:40:22pm', '', '49.36.44.14', '', '', ''),
(1255, 'www.navyuggroup.in/admin/ibo_panel/production/web_gallery.php', '2021-08-19', '04:40:25pm', '', '49.36.44.14', '', '', ''),
(1256, 'www.navyuggroup.in/admin/ibo_panel/production/web_add_video.php', '2021-08-19', '04:40:27pm', '', '49.36.44.14', '', '', ''),
(1257, 'www.navyuggroup.in/admin/ibo_panel/production/web_add_video.php', '2021-08-19', '04:40:55pm', '', '49.36.44.14', '', '', ''),
(1258, 'www.navyuggroup.in/admin/ibo_panel/production/web_gallery.php', '2021-08-19', '04:40:57pm', '', '49.36.44.14', '', '', ''),
(1259, 'www.navyuggroup.in/admin/ibo_panel/production/web_gallery.php', '2021-08-19', '04:41:12pm', '', '49.36.44.14', '', '', ''),
(1260, 'www.navyuggroup.in/admin/ibo_panel/production/web_gallery.php', '2021-08-19', '04:41:17pm', '', '49.36.44.14', '', '', ''),
(1261, 'www.navyuggroup.in/admin/ibo_panel/production/web_gallery.php', '2021-08-19', '04:41:22pm', '', '49.36.44.14', '', '', '');
INSERT INTO `site_open_info` (`soi_id`, `url`, `date`, `time`, `session_d_id`, `ip_addreass`, `desktop`, `mobile`, `browser`) VALUES
(1262, 'www.navyuggroup.in/admin/ibo_panel/production/web_gallery.php', '2021-08-19', '04:41:23pm', '', '49.36.44.14', '', '', ''),
(1263, 'www.navyuggroup.in/admin/ibo_panel/production/web_gallery.php', '2021-08-19', '04:41:25pm', '', '49.36.44.14', '', '', ''),
(1264, 'www.navyuggroup.in/admin/ibo_panel/production/web_gallery.php', '2021-08-19', '04:41:27pm', '', '49.36.44.14', '', '', ''),
(1265, 'www.navyuggroup.in/admin/ibo_panel/production/web_add_image.php', '2021-08-19', '04:41:30pm', '', '49.36.44.14', '', '', ''),
(1266, 'www.navyuggroup.in/admin/ibo_panel/production/web_gallery.php', '2021-08-19', '04:41:35pm', '', '49.36.44.14', '', '', ''),
(1267, 'www.navyuggroup.in/gallery.php', '2021-08-19', '04:41:44pm', '', '49.36.44.14', '', '', ''),
(1268, 'www.navyuggroup.in/gallery_video.php', '2021-08-19', '04:41:47pm', '', '49.36.44.14', '', '', ''),
(1269, 'www.navyuggroup.in/index.php', '2021-08-19', '04:44:35pm', '', '49.36.44.14', '', '', ''),
(1270, 'www.navyuggroup.in/index.php', '2021-08-19', '04:46:54pm', '', '49.36.44.14', '', '', ''),
(1271, 'www.navyuggroup.in/index.php', '2021-08-19', '04:48:07pm', '', '49.36.44.14', '', '', ''),
(1272, 'www.navyuggroup.in/index.php', '2021-08-19', '04:49:21pm', '', '49.36.44.14', '', '', ''),
(1273, 'www.navyuggroup.in/index.php', '2021-08-19', '04:49:53pm', '', '49.36.44.14', '', '', ''),
(1274, 'www.navyuggroup.in/index.php', '2021-08-19', '04:50:52pm', '', '49.36.44.14', '', '', ''),
(1275, 'www.navyuggroup.in/index.php', '2021-08-19', '04:51:14pm', '', '49.36.44.14', '', '', ''),
(1276, 'www.navyuggroup.in/index.php', '2021-08-19', '04:53:39pm', '', '49.36.44.14', '', '', ''),
(1277, 'www.navyuggroup.in/admin/ibo_panel/production/web_index.php', '2021-08-19', '04:58:41pm', '', '49.36.44.14', '', '', ''),
(1278, 'www.navyuggroup.in/admin/ibo_panel/production/web_index.php', '2021-08-19', '04:59:30pm', '', '49.36.44.14', '', '', ''),
(1279, 'www.navyuggroup.in/admin/ibo_panel/production/web_gallery.php', '2021-08-19', '05:02:11pm', '', '49.36.44.14', '', '', ''),
(1280, 'www.navyuggroup.in/admin/ibo_panel/production/web_index.php', '2021-08-19', '05:08:00pm', '', '49.36.44.14', '', '', ''),
(1281, 'www.navyuggroup.in/admin/ibo_panel/production/web_index.php', '2021-08-19', '05:08:27pm', '', '49.36.44.14', '', '', ''),
(1282, 'www.navyuggroup.in/admin/ibo_panel/production/web_index.php', '2021-08-19', '05:09:04pm', '', '49.36.44.14', '', '', ''),
(1283, 'www.navyuggroup.in/admin/ibo_panel/production/web_index.php', '2021-08-19', '05:09:09pm', '', '49.36.44.14', '', '', ''),
(1284, 'www.navyuggroup.in/admin/ibo_panel/production/web_index.php', '2021-08-19', '05:09:18pm', '', '49.36.44.14', '', '', ''),
(1285, 'www.navyuggroup.in/admin/ibo_panel/production/web_index.php', '2021-08-19', '05:09:42pm', '', '49.36.44.14', '', '', ''),
(1286, 'www.navyuggroup.in/admin/ibo_panel/production/web_Cust_Review.php', '2021-08-19', '05:09:43pm', '', '49.36.44.14', '', '', ''),
(1287, 'www.navyuggroup.in/admin/ibo_panel/production/web_add_image.php', '2021-08-19', '05:10:31pm', '', '49.36.44.14', '', '', ''),
(1288, 'www.navyuggroup.in/admin/ibo_panel/production/web_Cust_Review.php', '2021-08-19', '05:10:43pm', '', '49.36.44.14', '', '', ''),
(1289, 'www.navyuggroup.in/admin/ibo_panel/production/web_add_video.php', '2021-08-19', '05:10:45pm', '', '49.36.44.14', '', '', ''),
(1290, 'www.navyuggroup.in/admin/ibo_panel/production/web_Cust_Review.php', '2021-08-19', '05:10:58pm', '', '49.36.44.14', '', '', ''),
(1291, 'www.navyuggroup.in/admin/ibo_panel/production/web_index.php', '2021-08-19', '05:11:26pm', '', '49.36.44.14', '', '', ''),
(1292, 'www.navyuggroup.in/admin/ibo_panel/production/web_Cust_Review.php', '2021-08-19', '05:11:27pm', '', '49.36.44.14', '', '', ''),
(1293, 'www.navyuggroup.in/admin/ibo_panel/production/web_index.php', '2021-08-19', '05:11:33pm', '', '49.36.44.14', '', '', ''),
(1294, 'www.navyuggroup.in/admin/ibo_panel/production/web_gallery.php', '2021-08-19', '05:11:36pm', '', '49.36.44.14', '', '', ''),
(1295, 'www.navyuggroup.in/admin/ibo_panel/production/web_index.php', '2021-08-19', '05:11:39pm', '', '49.36.44.14', '', '', ''),
(1296, 'www.navyuggroup.in/admin/ibo_panel/production/web_Cust_Review.php', '2021-08-19', '05:11:41pm', '', '49.36.44.14', '', '', ''),
(1297, 'www.navyuggroup.in/admin/ibo_panel/production/web_add_video.php', '2021-08-19', '05:12:21pm', '', '49.36.44.14', '', '', ''),
(1298, 'www.navyuggroup.in/admin/ibo_panel/production/web_Cust_Review.php', '2021-08-19', '05:19:34pm', '', '49.36.44.14', '', '', ''),
(1299, 'www.navyuggroup.in/admin/ibo_panel/production/web_Cust_Review.php', '2021-08-19', '05:19:41pm', '', '49.36.44.14', '', '', ''),
(1300, 'www.navyuggroup.in/admin/ibo_panel/production/web_Cust_Review.php', '2021-08-19', '05:29:20pm', '', '49.36.44.14', '', '', ''),
(1301, 'www.navyuggroup.in/admin/ibo_panel/production/web_Cust_Review.php', '2021-08-19', '05:29:58pm', '', '49.36.44.14', '', '', ''),
(1302, 'www.navyuggroup.in/admin/ibo_panel/production/web_Cust_Review.php', '2021-08-19', '05:30:46pm', '', '49.36.44.14', '', '', ''),
(1303, 'www.navyuggroup.in/admin/ibo_panel/production/web_Cust_Review.php', '2021-08-19', '05:30:54pm', '', '49.36.44.14', '', '', ''),
(1304, 'www.navyuggroup.in/admin/ibo_panel/production/web_Cust_Review.php', '2021-08-19', '05:31:31pm', '', '49.36.44.14', '', '', ''),
(1305, 'www.navyuggroup.in/admin/ibo_panel/production/web_index.php', '2021-08-19', '05:31:33pm', '', '49.36.44.14', '', '', ''),
(1306, 'www.navyuggroup.in/admin/ibo_panel/production/web_gallery.php', '2021-08-19', '05:31:34pm', '', '49.36.44.14', '', '', ''),
(1307, 'www.navyuggroup.in/admin/ibo_panel/production/web_add_video.php', '2021-08-19', '05:31:37pm', '', '49.36.44.14', '', '', ''),
(1308, 'www.navyuggroup.in/admin/ibo_panel/production/web_gallery.php', '2021-08-19', '05:31:44pm', '', '49.36.44.14', '', '', ''),
(1309, 'www.navyuggroup.in/admin/ibo_panel/production/web_add_image.php', '2021-08-19', '05:31:46pm', '', '49.36.44.14', '', '', ''),
(1310, 'www.navyuggroup.in/admin/ibo_panel/production/web_add_image.php', '2021-08-19', '05:32:29pm', '', '49.36.44.14', '', '', ''),
(1311, 'www.navyuggroup.in/admin/ibo_panel/production/web_gallery.php', '2021-08-19', '05:32:31pm', '', '49.36.44.14', '', '', ''),
(1312, 'www.navyuggroup.in/admin/ibo_panel/production/web_index.php', '2021-08-19', '05:32:34pm', '', '49.36.44.14', '', '', ''),
(1313, 'www.navyuggroup.in/admin/ibo_panel/production/web_Cust_Review.php', '2021-08-19', '05:32:37pm', '', '49.36.44.14', '', '', ''),
(1314, 'www.navyuggroup.in/admin/ibo_panel/production/web_Cust_Review.php', '2021-08-19', '05:38:08pm', '', '49.36.44.14', '', '', ''),
(1315, 'www.navyuggroup.in/admin/ibo_panel/production/web_index.php', '2021-08-19', '05:38:10pm', '', '49.36.44.14', '', '', ''),
(1316, 'www.navyuggroup.in/admin/ibo_panel/production/web_gallery.php', '2021-08-19', '05:38:11pm', '', '49.36.44.14', '', '', ''),
(1317, 'www.navyuggroup.in/admin/ibo_panel/production/web_add_image.php', '2021-08-19', '05:38:14pm', '', '49.36.44.14', '', '', ''),
(1318, 'www.navyuggroup.in/admin/ibo_panel/production/web_gallery.php', '2021-08-19', '05:49:21pm', '', '49.36.44.14', '', '', ''),
(1319, 'www.navyuggroup.in/admin/ibo_panel/production/web_gallery.php', '2021-08-19', '05:49:24pm', '', '49.36.44.14', '', '', ''),
(1320, 'www.navyuggroup.in/admin/ibo_panel/production/web_gallery.php', '2021-08-19', '05:49:26pm', '', '49.36.44.14', '', '', ''),
(1321, 'www.navyuggroup.in/admin/ibo_panel/production/web_index.php', '2021-08-19', '05:50:37pm', '', '49.36.44.14', '', '', ''),
(1322, 'www.navyuggroup.in/admin/ibo_panel/production/web_gallery.php', '2021-08-19', '05:50:38pm', '', '49.36.44.14', '', '', ''),
(1323, 'www.navyuggroup.in/admin/ibo_panel/production/web_add_image.php', '2021-08-19', '05:50:42pm', '', '49.36.44.14', '', '', ''),
(1324, 'www.navyuggroup.in/admin/ibo_panel/production/web_add_image.php', '2021-08-19', '05:50:50pm', '', '49.36.44.14', '', '', ''),
(1325, 'www.navyuggroup.in/admin/ibo_panel/production/web_gallery.php', '2021-08-19', '05:50:52pm', '', '49.36.44.14', '', '', ''),
(1326, 'www.navyuggroup.in/admin/ibo_panel/production/web_gallery.php', '2021-08-19', '05:51:21pm', '', '49.36.44.14', '', '', ''),
(1327, 'www.navyuggroup.in/admin/ibo_panel/production/web_gallery.php', '2021-08-19', '05:51:23pm', '', '49.36.44.14', '', '', ''),
(1328, 'www.navyuggroup.in/admin/ibo_panel/production/web_index.php', '2021-08-19', '05:57:55pm', '', '49.36.44.14', '', '', ''),
(1329, 'www.navyuggroup.in/admin/ibo_panel/production/web_Cust_Review.php', '2021-08-19', '05:57:57pm', '', '49.36.44.14', '', '', ''),
(1330, 'www.navyuggroup.in/admin/ibo_panel/production/web_review_text.php', '2021-08-19', '05:57:59pm', '', '49.36.44.14', '', '', ''),
(1331, 'www.navyuggroup.in/admin/ibo_panel/production/web_review_text.php', '2021-08-19', '05:58:17pm', '', '49.36.44.14', '', '', ''),
(1332, 'www.navyuggroup.in/admin/ibo_panel/production/web_gallery.php', '2021-08-19', '05:58:24pm', '', '49.36.44.14', '', '', ''),
(1333, 'www.navyuggroup.in/admin/ibo_panel/production/web_index.php', '2021-08-19', '05:58:40pm', '', '49.36.44.14', '', '', ''),
(1334, 'www.navyuggroup.in/admin/ibo_panel/production/web_Cust_Review.php', '2021-08-19', '05:58:41pm', '', '49.36.44.14', '', '', ''),
(1335, 'www.navyuggroup.in/admin/ibo_panel/production/web_Cust_Review.php', '2021-08-19', '06:01:17pm', '', '49.36.44.14', '', '', ''),
(1336, 'www.navyuggroup.in/admin/ibo_panel/production/web_index.php', '2021-08-19', '06:01:45pm', '', '49.36.44.14', '', '', ''),
(1337, 'www.navyuggroup.in/admin/ibo_panel/production/web_gallery.php', '2021-08-19', '06:01:47pm', '', '49.36.44.14', '', '', ''),
(1338, 'www.navyuggroup.in/admin/ibo_panel/production/web_add_image.php', '2021-08-19', '06:01:59pm', '', '49.36.44.14', '', '', ''),
(1339, 'www.navyuggroup.in/admin/ibo_panel/production/web_add_image.php', '2021-08-19', '06:02:11pm', '', '49.36.44.14', '', '', ''),
(1340, 'www.navyuggroup.in/admin/ibo_panel/production/web_gallery.php', '2021-08-19', '06:02:12pm', '', '49.36.44.14', '', '', ''),
(1341, 'www.navyuggroup.in/admin/ibo_panel/production/web_index.php', '2021-08-19', '06:02:35pm', '', '49.36.44.14', '', '', ''),
(1342, 'www.navyuggroup.in/admin/ibo_panel/production/web_Cust_Review.php', '2021-08-19', '06:02:36pm', '', '49.36.44.14', '', '', ''),
(1343, 'www.navyuggroup.in/admin/ibo_panel/production/web_Cust_Review.php', '2021-08-19', '06:04:31pm', '', '49.36.44.14', '', '', ''),
(1344, 'www.navyuggroup.in/admin/ibo_panel/production/web_review_text.php', '2021-08-19', '06:04:58pm', '', '49.36.44.14', '', '', ''),
(1345, 'www.navyuggroup.in/admin/ibo_panel/production/web_Cust_Review.php', '2021-08-19', '06:05:00pm', '', '49.36.44.14', '', '', ''),
(1346, 'www.navyuggroup.in/admin/ibo_panel/production/web_Cust_Review.php', '2021-08-19', '06:07:16pm', '', '49.36.44.14', '', '', ''),
(1347, 'www.navyuggroup.in/admin/ibo_panel/production/web_Cust_Review.php', '2021-08-19', '06:15:00pm', '', '49.36.44.14', '', '', ''),
(1348, 'www.navyuggroup.in/admin/ibo_panel/production/web_review_text.php', '2021-08-19', '06:15:03pm', '', '49.36.44.14', '', '', ''),
(1349, 'www.navyuggroup.in/admin/ibo_panel/production/web_review_text.php', '2021-08-19', '06:15:14pm', '', '49.36.44.14', '', '', ''),
(1350, 'www.navyuggroup.in/admin/ibo_panel/production/web_Cust_Review.php', '2021-08-19', '06:15:16pm', '', '49.36.44.14', '', '', ''),
(1351, 'www.navyuggroup.in/admin/ibo_panel/production/web_Cust_Review.php', '2021-08-19', '06:16:58pm', '', '49.36.44.14', '', '', ''),
(1352, 'www.navyuggroup.in/admin/ibo_panel/production/web_Cust_Review.php', '2021-08-19', '06:17:18pm', '', '49.36.44.14', '', '', ''),
(1353, 'www.navyuggroup.in/admin/ibo_panel/production/web_Cust_Review.php', '2021-08-19', '06:17:24pm', '', '49.36.44.14', '', '', ''),
(1354, 'www.navyuggroup.in/admin/ibo_panel/production/web_Cust_Review.php', '2021-08-19', '06:17:47pm', '', '49.36.44.14', '', '', ''),
(1355, 'www.navyuggroup.in/admin/ibo_panel/production/web_gallery.php', '2021-08-19', '06:17:50pm', '', '49.36.44.14', '', '', ''),
(1356, 'www.navyuggroup.in/admin/ibo_panel/production/web_Cust_Review.php', '2021-08-19', '06:17:53pm', '', '49.36.44.14', '', '', ''),
(1357, 'www.navyuggroup.in/admin/ibo_panel/production/web_Cust_Review.php', '2021-08-19', '06:19:45pm', '', '49.36.44.14', '', '', ''),
(1358, 'www.navyuggroup.in/admin/ibo_panel/production/web_Cust_Review.php', '2021-08-19', '06:19:52pm', '', '49.36.44.14', '', '', ''),
(1359, 'www.navyuggroup.in/admin/ibo_panel/production/web_Cust_Review.php', '2021-08-19', '06:21:48pm', '', '49.36.44.14', '', '', ''),
(1360, 'www.navyuggroup.in/admin/ibo_panel/production/web_index.php', '2021-08-19', '06:27:02pm', '', '49.36.44.14', '', '', ''),
(1361, 'www.navyuggroup.in/admin/ibo_panel/production/web_gallery.php', '2021-08-19', '06:27:05pm', '', '49.36.44.14', '', '', ''),
(1362, 'www.navyuggroup.in/admin/ibo_panel/production/web_add_video.php', '2021-08-19', '06:27:09pm', '', '49.36.44.14', '', '', ''),
(1363, 'www.navyuggroup.in/admin/ibo_panel/production/web_gallery.php', '2021-08-19', '06:33:44pm', '', '49.36.44.14', '', '', ''),
(1364, 'www.navyuggroup.in/admin/ibo_panel/production/web_index.php', '2021-08-19', '06:33:46pm', '', '49.36.44.14', '', '', ''),
(1365, 'www.navyuggroup.in/admin/ibo_panel/production/web_Cust_Review.php', '2021-08-19', '06:33:48pm', '', '49.36.44.14', '', '', ''),
(1366, 'www.navyuggroup.in/admin/ibo_panel/production/web_review_video.php', '2021-08-19', '06:33:50pm', '', '49.36.44.14', '', '', ''),
(1367, 'www.navyuggroup.in/admin/ibo_panel/production/web_review_video.php', '2021-08-19', '06:33:59pm', '', '49.36.44.14', '', '', ''),
(1368, 'www.navyuggroup.in/admin/ibo_panel/production/web_Cust_Review.php', '2021-08-19', '06:34:01pm', '', '49.36.44.14', '', '', ''),
(1369, 'www.navyuggroup.in/admin/ibo_panel/production/web_Cust_Review.php', '2021-08-19', '06:34:18pm', '', '49.36.44.14', '', '', ''),
(1370, 'www.navyuggroup.in/admin/ibo_panel/production/web_Cust_Review.php', '2021-08-19', '06:34:22pm', '', '49.36.44.14', '', '', ''),
(1371, 'www.navyuggroup.in/admin/ibo_panel/production/web_Cust_Review.php', '2021-08-19', '06:34:24pm', '', '49.36.44.14', '', '', ''),
(1372, 'www.navyuggroup.in/admin/ibo_panel/production/web_review_video.php', '2021-08-19', '06:34:35pm', '', '49.36.44.14', '', '', ''),
(1373, 'www.navyuggroup.in/admin/ibo_panel/production/web_review_video.php', '2021-08-19', '06:34:42pm', '', '49.36.44.14', '', '', ''),
(1374, 'www.navyuggroup.in/admin/ibo_panel/production/web_Cust_Review.php', '2021-08-19', '06:34:50pm', '', '49.36.44.14', '', '', ''),
(1375, 'www.navyuggroup.in/admin/ibo_panel/production/web_Cust_Review.php', '2021-08-19', '06:39:20pm', '', '49.36.44.14', '', '', ''),
(1376, 'www.navyuggroup.in/admin/ibo_panel/production/web_Cust_Review.php', '2021-08-19', '06:39:23pm', '', '49.36.44.14', '', '', ''),
(1377, 'www.navyuggroup.in/admin/ibo_panel/production/web_review_video.php', '2021-08-19', '06:39:53pm', '', '49.36.44.14', '', '', ''),
(1378, 'www.navyuggroup.in/admin/ibo_panel/production/web_review_video.php', '2021-08-19', '06:40:02pm', '', '49.36.44.14', '', '', ''),
(1379, 'www.navyuggroup.in/admin/ibo_panel/production/web_Cust_Review.php', '2021-08-19', '06:40:05pm', '', '49.36.44.14', '', '', ''),
(1380, 'www.navyuggroup.in/admin/ibo_panel/production/web_Cust_Review.php', '2021-08-19', '06:40:42pm', '', '49.36.44.14', '', '', ''),
(1381, 'www.navyuggroup.in/admin/ibo_panel/production/web_Cust_Review.php', '2021-08-19', '06:40:46pm', '', '49.36.44.14', '', '', ''),
(1382, 'www.navyuggroup.in/admin/ibo_panel/production/web_Cust_Review.php', '2021-08-19', '06:41:29pm', '', '49.36.44.14', '', '', ''),
(1383, 'www.navyuggroup.in/admin/ibo_panel/production/web_Cust_Review.php', '2021-08-19', '06:46:19pm', '', '49.36.44.14', '', '', ''),
(1384, 'www.navyuggroup.in/admin/ibo_panel/production/web_review_video.php', '2021-08-19', '06:46:33pm', '', '49.36.44.14', '', '', ''),
(1385, 'www.navyuggroup.in/admin/ibo_panel/production/web_review_video.php', '2021-08-19', '06:46:41pm', '', '49.36.44.14', '', '', ''),
(1386, 'www.navyuggroup.in/admin/ibo_panel/production/web_Cust_Review.php', '2021-08-19', '06:46:44pm', '', '49.36.44.14', '', '', ''),
(1387, 'www.navyuggroup.in/admin/ibo_panel/production/web_Cust_Review.php', '2021-08-19', '06:46:50pm', '', '49.36.44.14', '', '', ''),
(1388, 'www.navyuggroup.in/admin/ibo_panel/production/web_Cust_Review.php', '2021-08-19', '06:46:52pm', '', '49.36.44.14', '', '', ''),
(1389, 'www.navyuggroup.in/admin/ibo_panel/production/web_Cust_Review.php', '2021-08-19', '06:47:21pm', '', '49.36.44.14', '', '', ''),
(1390, 'www.navyuggroup.in/admin/ibo_panel/production/web_Cust_Review.php', '2021-08-19', '06:47:23pm', '', '49.36.44.14', '', '', ''),
(1391, 'www.navyuggroup.in/admin/ibo_panel/production/web_Cust_Review.php', '2021-08-19', '06:47:25pm', '', '49.36.44.14', '', '', ''),
(1392, 'www.navyuggroup.in/admin/ibo_panel/production/web_Cust_Review.php', '2021-08-19', '06:49:17pm', '', '49.36.44.14', '', '', ''),
(1393, 'www.navyuggroup.in/admin/ibo_panel/production/web_Cust_Review.php', '2021-08-19', '06:49:22pm', '', '49.36.44.14', '', '', ''),
(1394, 'navyuggroup.in/', '2021-08-19', '06:50:03pm', '', '49.36.42.92', '', '', ''),
(1395, 'navyuggroup.in/news_more.php?news=ng', '2021-08-19', '06:50:29pm', '', '49.36.42.92', '', '', ''),
(1396, 'www.navyuggroup.in/admin/ibo_panel/production/web_review_video.php', '2021-08-19', '06:50:37pm', '', '49.36.44.14', '', '', ''),
(1397, 'www.navyuggroup.in/admin/ibo_panel/production/web_review_video.php', '2021-08-19', '06:50:43pm', '', '49.36.44.14', '', '', ''),
(1398, 'www.navyuggroup.in/admin/ibo_panel/production/web_Cust_Review.php', '2021-08-19', '06:50:46pm', '', '49.36.44.14', '', '', ''),
(1399, 'www.navyuggroup.in/admin/ibo_panel/production/web_review_video.php', '2021-08-19', '06:51:23pm', '', '49.36.44.14', '', '', ''),
(1400, 'www.navyuggroup.in/admin/ibo_panel/production/web_review_video.php', '2021-08-19', '06:51:30pm', '', '49.36.44.14', '', '', ''),
(1401, 'www.navyuggroup.in/admin/ibo_panel/production/web_Cust_Review.php', '2021-08-19', '06:51:32pm', '', '49.36.44.14', '', '', ''),
(1402, 'www.navyuggroup.in/admin/ibo_panel/production/web_Cust_Review.php', '2021-08-19', '06:52:48pm', '', '49.36.44.14', '', '', ''),
(1403, 'www.navyuggroup.in/admin/ibo_panel/production/web_Cust_Review.php', '2021-08-19', '06:53:16pm', '', '49.36.44.14', '', '', ''),
(1404, 'www.navyuggroup.in/admin/ibo_panel/production/web_Cust_Review.php', '2021-08-19', '06:53:20pm', '', '49.36.44.14', '', '', ''),
(1405, 'www.navyuggroup.in/admin/ibo_panel/production/web_Cust_Review.php', '2021-08-19', '06:53:21pm', '', '49.36.44.14', '', '', ''),
(1406, 'www.navyuggroup.in/admin/ibo_panel/production/web_Cust_Review.php', '2021-08-19', '06:53:23pm', '', '49.36.44.14', '', '', ''),
(1407, 'www.navyuggroup.in/admin/ibo_panel/production/web_Cust_Review.php', '2021-08-19', '06:53:24pm', '', '49.36.44.14', '', '', ''),
(1408, 'www.navyuggroup.in/admin/ibo_panel/production/web_review_text.php', '2021-08-19', '06:54:11pm', '', '49.36.44.14', '', '', ''),
(1409, 'www.navyuggroup.in/admin/ibo_panel/production/web_review_text.php', '2021-08-19', '06:54:19pm', '', '49.36.44.14', '', '', ''),
(1410, 'www.navyuggroup.in/admin/ibo_panel/production/web_Cust_Review.php', '2021-08-19', '06:54:21pm', '', '49.36.44.14', '', '', ''),
(1411, 'www.navyuggroup.in/admin/ibo_panel/production/web_Cust_Review.php', '2021-08-19', '06:54:38pm', '', '49.36.44.14', '', '', ''),
(1412, 'www.navyuggroup.in/admin/ibo_panel/production/web_Cust_Review.php', '2021-08-19', '06:54:40pm', '', '49.36.44.14', '', '', ''),
(1413, 'www.navyuggroup.in/admin/ibo_panel/production/web_index.php', '2021-08-19', '06:56:07pm', '', '49.36.44.14', '', '', ''),
(1414, 'www.navyuggroup.in/admin/ibo_panel/production/web_gallery.php', '2021-08-19', '06:56:09pm', '', '49.36.44.14', '', '', ''),
(1415, 'www.navyuggroup.in/admin/ibo_panel/production/web_gallery.php', '2021-08-19', '06:58:20pm', '', '49.36.44.14', '', '', ''),
(1416, 'www.navyuggroup.in/admin/ibo_panel/production/web_gallery.php', '2021-08-19', '06:58:51pm', '', '49.36.44.14', '', '', ''),
(1417, 'www.navyuggroup.in/admin/ibo_panel/production/web_gallery.php', '2021-08-19', '06:58:57pm', '', '49.36.44.14', '', '', ''),
(1418, 'www.navyuggroup.in/admin/ibo_panel/production/web_add_image.php', '2021-08-19', '06:59:05pm', '', '49.36.44.14', '', '', ''),
(1419, 'www.navyuggroup.in/admin/ibo_panel/production/web_gallery.php', '2021-08-19', '07:02:20pm', '', '49.36.44.14', '', '', ''),
(1420, 'www.navyuggroup.in/admin/ibo_panel/production/web_index.php', '2021-08-19', '07:02:24pm', '', '49.36.44.14', '', '', ''),
(1421, 'www.navyuggroup.in/admin/ibo_panel/production/web_gallery.php', '2021-08-19', '07:02:25pm', '', '49.36.44.14', '', '', ''),
(1422, 'www.navyuggroup.in/admin/ibo_panel/production/web_add_image.php', '2021-08-19', '07:02:28pm', '', '49.36.44.14', '', '', ''),
(1423, 'www.navyuggroup.in/admin/ibo_panel/production/web_add_image.php', '2021-08-19', '07:02:35pm', '', '49.36.44.14', '', '', ''),
(1424, 'www.navyuggroup.in/admin/ibo_panel/production/web_gallery.php', '2021-08-19', '07:02:37pm', '', '49.36.44.14', '', '', ''),
(1425, 'www.navyuggroup.in/admin/ibo_panel/production/web_add_video.php', '2021-08-19', '07:02:42pm', '', '49.36.44.14', '', '', ''),
(1426, 'www.navyuggroup.in/admin/ibo_panel/production/web_add_video.php', '2021-08-19', '07:02:49pm', '', '49.36.44.14', '', '', ''),
(1427, 'www.navyuggroup.in/admin/ibo_panel/production/web_gallery.php', '2021-08-19', '07:02:51pm', '', '49.36.44.14', '', '', ''),
(1428, 'www.navyuggroup.in/admin/ibo_panel/production/web_gallery.php', '2021-08-19', '07:02:54pm', '', '49.36.44.14', '', '', ''),
(1429, 'www.navyuggroup.in/admin/ibo_panel/production/web_gallery.php', '2021-08-19', '07:02:56pm', '', '49.36.44.14', '', '', ''),
(1430, 'www.navyuggroup.in/admin/ibo_panel/production/web_gallery.php', '2021-08-19', '07:02:57pm', '', '49.36.44.14', '', '', ''),
(1431, 'www.navyuggroup.in/admin/ibo_panel/production/web_gallery.php', '2021-08-19', '07:02:58pm', '', '49.36.44.14', '', '', ''),
(1432, 'www.navyuggroup.in/index.php', '2021-08-19', '07:15:28pm', '', '49.36.44.14', '', '', ''),
(1433, 'www.navyuggroup.in/admin/ibo_panel/production/web_index.php', '2021-08-19', '07:16:16pm', '', '49.36.44.14', '', '', ''),
(1434, 'www.navyuggroup.in/admin/ibo_panel/production/web_Cust_Review.php', '2021-08-19', '07:16:18pm', '', '49.36.44.14', '', '', ''),
(1435, 'www.navyuggroup.in/admin/ibo_panel/production/web_review_text.php', '2021-08-19', '07:16:22pm', '', '49.36.44.14', '', '', ''),
(1436, 'www.navyuggroup.in/admin/ibo_panel/production/web_review_text.php', '2021-08-19', '07:16:45pm', '', '49.36.44.14', '', '', ''),
(1437, 'www.navyuggroup.in/admin/ibo_panel/production/web_Cust_Review.php', '2021-08-19', '07:16:48pm', '', '49.36.44.14', '', '', ''),
(1438, 'www.navyuggroup.in/admin/ibo_panel/production/web_Cust_Review.php', '2021-08-19', '07:16:52pm', '', '49.36.44.14', '', '', ''),
(1439, 'www.navyuggroup.in/admin/ibo_panel/production/web_Cust_Review.php', '2021-08-19', '07:16:54pm', '', '49.36.44.14', '', '', ''),
(1440, 'www.navyuggroup.in/index.php', '2021-08-19', '07:18:47pm', '', '49.36.44.14', '', '', ''),
(1441, 'www.navyuggroup.in/admin/ibo_panel/production/web_Cust_Review.php', '2021-08-19', '07:19:16pm', '', '49.36.44.14', '', '', ''),
(1442, 'www.navyuggroup.in/index.php', '2021-08-19', '07:20:16pm', '', '49.36.44.14', '', '', ''),
(1443, 'www.navyuggroup.in/admin/ibo_panel/production/web_review_text.php', '2021-08-19', '07:22:18pm', '', '49.36.44.14', '', '', ''),
(1444, 'www.navyuggroup.in/admin/ibo_panel/production/web_Cust_Review.php', '2021-08-19', '07:22:21pm', '', '49.36.44.14', '', '', ''),
(1445, 'www.navyuggroup.in/admin/ibo_panel/production/web_review_video.php', '2021-08-19', '07:22:23pm', '', '49.36.44.14', '', '', ''),
(1446, 'www.navyuggroup.in/admin/ibo_panel/production/web_Cust_Review.php', '2021-08-19', '07:22:25pm', '', '49.36.44.14', '', '', ''),
(1447, 'www.navyuggroup.in/admin/ibo_panel/production/web_Cust_Review.php', '2021-08-19', '07:23:12pm', '', '49.36.44.14', '', '', ''),
(1448, 'www.navyuggroup.in/admin/ibo_panel/production/index.php', '2021-08-19', '07:23:22pm', '', '49.36.44.14', '', '', ''),
(1449, 'www.navyuggroup.in/admin/ibo_panel/production/web_index.php', '2021-08-19', '07:23:24pm', '', '49.36.44.14', '', '', ''),
(1450, 'www.navyuggroup.in/admin/ibo_panel/production/web_gallery.php', '2021-08-19', '07:23:26pm', '', '49.36.44.14', '', '', ''),
(1451, 'www.navyuggroup.in/admin/ibo_panel/production/web_index.php', '2021-08-19', '07:23:32pm', '', '49.36.44.14', '', '', ''),
(1452, 'www.navyuggroup.in/admin/ibo_panel/production/web_Cust_Review.php', '2021-08-19', '07:23:34pm', '', '49.36.44.14', '', '', ''),
(1453, 'www.navyuggroup.in/admin/ibo_panel/production/web_review_video.php', '2021-08-19', '07:23:38pm', '', '49.36.44.14', '', '', ''),
(1454, 'www.navyuggroup.in/admin/ibo_panel/production/web_Cust_Review.php', '2021-08-19', '07:23:41pm', '', '49.36.44.14', '', '', ''),
(1455, 'www.navyuggroup.in/admin/ibo_panel/production/web_Cust_Review.php', '2021-08-19', '07:24:53pm', '', '49.36.44.14', '', '', ''),
(1456, 'www.navyuggroup.in/admin/ibo_panel/production/web_index.php', '2021-08-19', '07:25:21pm', '', '49.36.44.14', '', '', ''),
(1457, 'www.navyuggroup.in/admin/ibo_panel/production/index.php', '2021-08-19', '07:25:33pm', '', '49.36.44.14', '', '', ''),
(1458, 'www.navyuggroup.in/admin/ibo_panel/production/web_index.php', '2021-08-19', '07:25:37pm', '', '49.36.44.14', '', '', ''),
(1459, 'www.navyuggroup.in/admin/ibo_panel/production/web_gallery.php', '2021-08-19', '07:26:19pm', '', '49.36.44.14', '', '', ''),
(1460, 'www.navyuggroup.in/admin/ibo_panel/production/web_add_image.php', '2021-08-19', '07:26:21pm', '', '49.36.44.14', '', '', ''),
(1461, 'www.navyuggroup.in/admin/ibo_panel/production/web_add_image.php', '2021-08-19', '07:26:38pm', '', '49.36.44.14', '', '', ''),
(1462, 'www.navyuggroup.in/admin/ibo_panel/production/web_gallery.php', '2021-08-19', '07:26:40pm', '', '49.36.44.14', '', '', ''),
(1463, 'www.navyuggroup.in/admin/ibo_panel/production/web_gallery.php', '2021-08-19', '07:26:45pm', '', '49.36.44.14', '', '', ''),
(1464, 'www.navyuggroup.in/admin/ibo_panel/production/web_index.php', '2021-08-19', '07:26:52pm', '', '49.36.44.14', '', '', ''),
(1465, 'www.navyuggroup.in/admin/ibo_panel/production/web_gallery.php', '2021-08-19', '07:26:54pm', '', '49.36.44.14', '', '', ''),
(1466, 'www.navyuggroup.in/admin/ibo_panel/production/web_add_image.php', '2021-08-19', '07:26:56pm', '', '49.36.44.14', '', '', ''),
(1467, 'www.navyuggroup.in/admin/ibo_panel/production/web_add_image.php', '2021-08-19', '07:27:02pm', '', '49.36.44.14', '', '', ''),
(1468, 'www.navyuggroup.in/admin/ibo_panel/production/web_gallery.php', '2021-08-19', '07:27:05pm', '', '49.36.44.14', '', '', ''),
(1469, 'www.navyuggroup.in/admin/ibo_panel/production/web_add_video.php', '2021-08-19', '07:27:08pm', '', '49.36.44.14', '', '', ''),
(1470, 'www.navyuggroup.in/admin/ibo_panel/production/web_add_video.php', '2021-08-19', '07:27:18pm', '', '49.36.44.14', '', '', ''),
(1471, 'www.navyuggroup.in/admin/ibo_panel/production/web_gallery.php', '2021-08-19', '07:27:20pm', '', '49.36.44.14', '', '', ''),
(1472, 'www.navyuggroup.in/admin/ibo_panel/production/web_add_video.php', '2021-08-19', '07:27:26pm', '', '49.36.44.14', '', '', ''),
(1473, 'www.navyuggroup.in/admin/ibo_panel/production/web_add_video.php', '2021-08-19', '07:27:36pm', '', '49.36.44.14', '', '', ''),
(1474, 'www.navyuggroup.in/admin/ibo_panel/production/web_gallery.php', '2021-08-19', '07:27:38pm', '', '49.36.44.14', '', '', ''),
(1475, 'www.navyuggroup.in/admin/ibo_panel/production/web_index.php', '2021-08-19', '07:27:43pm', '', '49.36.44.14', '', '', ''),
(1476, 'www.navyuggroup.in/admin/ibo_panel/production/web_Cust_Review.php', '2021-08-19', '07:27:46pm', '', '49.36.44.14', '', '', ''),
(1477, 'www.navyuggroup.in/admin/ibo_panel/production/web_review_text.php', '2021-08-19', '07:27:47pm', '', '49.36.44.14', '', '', ''),
(1478, 'www.navyuggroup.in/admin/ibo_panel/production/web_review_text.php', '2021-08-19', '07:28:28pm', '', '49.36.44.14', '', '', ''),
(1479, 'www.navyuggroup.in/admin/ibo_panel/production/web_Cust_Review.php', '2021-08-19', '07:28:30pm', '', '49.36.44.14', '', '', ''),
(1480, 'www.navyuggroup.in/admin/ibo_panel/production/web_Cust_Review.php', '2021-08-19', '07:28:34pm', '', '49.36.44.14', '', '', ''),
(1481, 'www.navyuggroup.in/admin/ibo_panel/production/web_Cust_Review.php', '2021-08-19', '07:28:35pm', '', '49.36.44.14', '', '', ''),
(1482, 'www.navyuggroup.in/admin/ibo_panel/production/web_review_text.php', '2021-08-19', '07:28:37pm', '', '49.36.44.14', '', '', ''),
(1483, 'www.navyuggroup.in/admin/ibo_panel/production/web_review_text.php', '2021-08-19', '07:28:53pm', '', '49.36.44.14', '', '', ''),
(1484, 'www.navyuggroup.in/admin/ibo_panel/production/web_Cust_Review.php', '2021-08-19', '07:28:55pm', '', '49.36.44.14', '', '', ''),
(1485, 'www.navyuggroup.in/admin/ibo_panel/production/web_review_text.php', '2021-08-19', '07:28:59pm', '', '49.36.44.14', '', '', ''),
(1486, 'www.navyuggroup.in/admin/ibo_panel/production/web_review_text.php', '2021-08-19', '07:29:15pm', '', '49.36.44.14', '', '', ''),
(1487, 'www.navyuggroup.in/admin/ibo_panel/production/web_Cust_Review.php', '2021-08-19', '07:29:18pm', '', '49.36.44.14', '', '', ''),
(1488, 'www.navyuggroup.in/admin/ibo_panel/production/web_review_text.php', '2021-08-19', '07:29:19pm', '', '49.36.44.14', '', '', ''),
(1489, 'www.navyuggroup.in/admin/ibo_panel/production/web_review_text.php', '2021-08-19', '07:29:52pm', '', '49.36.44.14', '', '', ''),
(1490, 'www.navyuggroup.in/admin/ibo_panel/production/web_Cust_Review.php', '2021-08-19', '07:29:53pm', '', '49.36.44.14', '', '', ''),
(1491, 'www.navyuggroup.in/admin/ibo_panel/production/web_Cust_Review.php', '2021-08-19', '07:30:19pm', '', '49.36.44.14', '', '', ''),
(1492, 'www.navyuggroup.in/admin/ibo_panel/production/web_Cust_Review.php', '2021-08-19', '07:30:21pm', '', '49.36.44.14', '', '', ''),
(1493, 'www.navyuggroup.in/admin/ibo_panel/production/web_Cust_Review.php', '2021-08-19', '07:30:22pm', '', '49.36.44.14', '', '', ''),
(1494, 'www.navyuggroup.in/admin/ibo_panel/production/web_Cust_Review.php', '2021-08-19', '07:30:24pm', '', '49.36.44.14', '', '', ''),
(1495, 'www.navyuggroup.in/admin/ibo_panel/production/web_Cust_Review.php', '2021-08-19', '07:30:25pm', '', '49.36.44.14', '', '', ''),
(1496, 'www.navyuggroup.in/admin/ibo_panel/production/web_Cust_Review.php', '2021-08-19', '07:30:27pm', '', '49.36.44.14', '', '', ''),
(1497, 'www.navyuggroup.in/index.php', '2021-08-19', '07:30:36pm', '', '49.36.44.14', '', '', ''),
(1498, 'www.navyuggroup.in/admin/ibo_panel/production/web_review_video.php', '2021-08-19', '07:31:48pm', '', '49.36.44.14', '', '', ''),
(1499, 'www.navyuggroup.in/admin/ibo_panel/production/web_review_video.php', '2021-08-19', '07:31:55pm', '', '49.36.44.14', '', '', ''),
(1500, 'www.navyuggroup.in/admin/ibo_panel/production/web_Cust_Review.php', '2021-08-19', '07:31:57pm', '', '49.36.44.14', '', '', ''),
(1501, 'www.navyuggroup.in/admin/ibo_panel/production/web_review_video.php', '2021-08-19', '07:31:59pm', '', '49.36.44.14', '', '', ''),
(1502, 'www.navyuggroup.in/admin/ibo_panel/production/web_review_video.php', '2021-08-19', '07:32:06pm', '', '49.36.44.14', '', '', ''),
(1503, 'www.navyuggroup.in/admin/ibo_panel/production/web_Cust_Review.php', '2021-08-19', '07:32:07pm', '', '49.36.44.14', '', '', ''),
(1504, 'www.navyuggroup.in/admin/ibo_panel/production/web_review_video.php', '2021-08-19', '07:32:14pm', '', '49.36.44.14', '', '', ''),
(1505, 'www.navyuggroup.in/admin/ibo_panel/production/web_review_video.php', '2021-08-19', '07:32:20pm', '', '49.36.44.14', '', '', ''),
(1506, 'www.navyuggroup.in/admin/ibo_panel/production/web_Cust_Review.php', '2021-08-19', '07:32:21pm', '', '49.36.44.14', '', '', ''),
(1507, 'www.navyuggroup.in/admin/ibo_panel/production/web_review_video.php', '2021-08-19', '07:32:23pm', '', '49.36.44.14', '', '', ''),
(1508, 'www.navyuggroup.in/admin/ibo_panel/production/web_review_video.php', '2021-08-19', '07:32:28pm', '', '49.36.44.14', '', '', ''),
(1509, 'www.navyuggroup.in/admin/ibo_panel/production/web_Cust_Review.php', '2021-08-19', '07:32:29pm', '', '49.36.44.14', '', '', ''),
(1510, 'www.navyuggroup.in/admin/ibo_panel/production/web_Cust_Review.php', '2021-08-19', '07:32:47pm', '', '49.36.44.14', '', '', ''),
(1511, 'www.navyuggroup.in/admin/ibo_panel/production/web_Cust_Review.php', '2021-08-19', '07:32:49pm', '', '49.36.44.14', '', '', ''),
(1512, 'www.navyuggroup.in/admin/ibo_panel/production/web_Cust_Review.php', '2021-08-19', '07:32:51pm', '', '49.36.44.14', '', '', ''),
(1513, 'www.navyuggroup.in/admin/ibo_panel/production/web_Cust_Review.php', '2021-08-19', '07:32:52pm', '', '49.36.44.14', '', '', ''),
(1514, 'www.navyuggroup.in/admin/ibo_panel/production/web_Cust_Review.php', '2021-08-19', '07:32:54pm', '', '49.36.44.14', '', '', ''),
(1515, 'www.navyuggroup.in/admin/ibo_panel/production/web_Cust_Review.php', '2021-08-19', '07:32:56pm', '', '49.36.44.14', '', '', ''),
(1516, 'www.navyuggroup.in/admin/ibo_panel/production/web_Cust_Review.php', '2021-08-19', '07:32:58pm', '', '49.36.44.14', '', '', ''),
(1517, 'www.navyuggroup.in/admin/ibo_panel/production/web_Cust_Review.php', '2021-08-19', '07:33:00pm', '', '49.36.44.14', '', '', ''),
(1518, 'www.navyuggroup.in/index.php', '2021-08-19', '07:33:16pm', '', '49.36.44.14', '', '', ''),
(1519, 'www.navyuggroup.in/index.php', '2021-08-19', '07:34:21pm', '', '49.36.44.14', '', '', ''),
(1520, 'www.navyuggroup.in/admin/ibo_panel/production/', '2021-08-19', '07:35:09pm', '', '49.36.44.14', '', '', ''),
(1521, 'www.navyuggroup.in/admin/ibo_panel/production/web_index.php', '2021-08-19', '07:35:11pm', '', '49.36.44.14', '', '', ''),
(1522, 'www.navyuggroup.in/admin/ibo_panel/production/web_Cust_Review.php', '2021-08-19', '07:35:12pm', '', '49.36.44.14', '', '', ''),
(1523, 'www.navyuggroup.in/admin/ibo_panel/production/web_index.php', '2021-08-19', '07:35:24pm', '', '49.36.44.14', '', '', ''),
(1524, 'www.navyuggroup.in/admin/ibo_panel/production/web_gallery.php', '2021-08-19', '07:35:55pm', '', '49.36.44.14', '', '', ''),
(1525, 'www.navyuggroup.in/admin/ibo_panel/production/web_gallery.php', '2021-08-19', '07:36:56pm', '', '49.36.44.14', '', '', ''),
(1526, 'www.navyuggroup.in/admin/ibo_panel/production/web_gallery.php', '2021-08-19', '07:37:03pm', '', '49.36.44.14', '', '', ''),
(1527, 'www.navyuggroup.in/admin/ibo_panel/production/web_gallery.php', '2021-08-19', '07:37:05pm', '', '49.36.44.14', '', '', ''),
(1528, 'www.navyuggroup.in/admin/ibo_panel/production/web_gallery.php', '2021-08-19', '07:37:06pm', '', '49.36.44.14', '', '', ''),
(1529, 'www.navyuggroup.in/admin/ibo_panel/production/web_gallery.php', '2021-08-19', '07:37:07pm', '', '49.36.44.14', '', '', ''),
(1530, 'www.navyuggroup.in/admin/ibo_panel/production/web_gallery.php', '2021-08-19', '07:37:09pm', '', '49.36.44.14', '', '', ''),
(1531, 'www.navyuggroup.in/admin/ibo_panel/production/web_gallery.php', '2021-08-19', '07:37:10pm', '', '49.36.44.14', '', '', ''),
(1532, 'www.navyuggroup.in/admin/ibo_panel/production/web_gallery.php', '2021-08-19', '07:37:12pm', '', '49.36.44.14', '', '', ''),
(1533, 'www.navyuggroup.in/admin/ibo_panel/production/web_gallery.php', '2021-08-19', '07:37:13pm', '', '49.36.44.14', '', '', ''),
(1534, 'www.navyuggroup.in/gallery.php', '2021-08-19', '07:37:22pm', '', '49.36.44.14', '', '', ''),
(1535, 'www.navyuggroup.in/gallery_video.php', '2021-08-19', '07:37:35pm', '', '49.36.44.14', '', '', ''),
(1536, 'www.navyuggroup.in/gallery.php', '2021-08-19', '07:37:39pm', '', '49.36.44.14', '', '', ''),
(1537, 'www.navyuggroup.in/gallery.php', '2021-08-19', '07:38:57pm', '', '49.36.44.14', '', '', ''),
(1538, 'www.navyuggroup.in/admin/ibo_panel/production/web_add_image.php', '2021-08-19', '07:39:09pm', '', '49.36.44.14', '', '', ''),
(1539, 'www.navyuggroup.in/admin/ibo_panel/production/web_add_image.php', '2021-08-19', '07:39:22pm', '', '49.36.44.14', '', '', ''),
(1540, 'www.navyuggroup.in/admin/ibo_panel/production/web_gallery.php', '2021-08-19', '07:39:24pm', '', '49.36.44.14', '', '', ''),
(1541, 'www.navyuggroup.in/admin/ibo_panel/production/web_add_image.php', '2021-08-19', '07:39:26pm', '', '49.36.44.14', '', '', ''),
(1542, 'www.navyuggroup.in/admin/ibo_panel/production/web_add_image.php', '2021-08-19', '07:39:35pm', '', '49.36.44.14', '', '', ''),
(1543, 'www.navyuggroup.in/admin/ibo_panel/production/web_gallery.php', '2021-08-19', '07:39:36pm', '', '49.36.44.14', '', '', ''),
(1544, 'www.navyuggroup.in/admin/ibo_panel/production/web_gallery.php', '2021-08-19', '07:39:38pm', '', '49.36.44.14', '', '', ''),
(1545, 'www.navyuggroup.in/admin/ibo_panel/production/web_gallery.php', '2021-08-19', '07:39:40pm', '', '49.36.44.14', '', '', ''),
(1546, 'www.navyuggroup.in/admin/ibo_panel/production/web_gallery.php', '2021-08-19', '07:39:42pm', '', '49.36.44.14', '', '', ''),
(1547, 'www.navyuggroup.in/admin/ibo_panel/production/web_gallery.php', '2021-08-19', '07:39:42pm', '', '49.36.44.14', '', '', ''),
(1548, 'www.navyuggroup.in/gallery.php', '2021-08-19', '07:39:49pm', '', '49.36.44.14', '', '', ''),
(1549, 'www.navyuggroup.in/gallery.php', '2021-08-19', '07:40:11pm', '', '49.36.44.14', '', '', ''),
(1550, 'www.navyuggroup.in/gallery.php', '2021-08-19', '07:40:56pm', '', '49.36.44.14', '', '', ''),
(1551, 'www.navyuggroup.in/admin/ibo_panel/production/web_add_image.php', '2021-08-19', '07:41:11pm', '', '49.36.44.14', '', '', ''),
(1552, 'www.navyuggroup.in/admin/ibo_panel/production/web_add_image.php', '2021-08-19', '07:41:23pm', '', '49.36.44.14', '', '', ''),
(1553, 'www.navyuggroup.in/admin/ibo_panel/production/web_gallery.php', '2021-08-19', '07:41:25pm', '', '49.36.44.14', '', '', ''),
(1554, 'www.navyuggroup.in/admin/ibo_panel/production/web_add_image.php', '2021-08-19', '07:41:27pm', '', '49.36.44.14', '', '', ''),
(1555, 'www.navyuggroup.in/admin/ibo_panel/production/web_add_image.php', '2021-08-19', '07:41:36pm', '', '49.36.44.14', '', '', ''),
(1556, 'www.navyuggroup.in/admin/ibo_panel/production/web_gallery.php', '2021-08-19', '07:41:38pm', '', '49.36.44.14', '', '', ''),
(1557, 'www.navyuggroup.in/admin/ibo_panel/production/web_gallery.php', '2021-08-19', '07:41:39pm', '', '49.36.44.14', '', '', ''),
(1558, 'www.navyuggroup.in/admin/ibo_panel/production/web_gallery.php', '2021-08-19', '07:41:41pm', '', '49.36.44.14', '', '', ''),
(1559, 'www.navyuggroup.in/admin/ibo_panel/production/web_gallery.php', '2021-08-19', '07:41:43pm', '', '49.36.44.14', '', '', ''),
(1560, 'www.navyuggroup.in/admin/ibo_panel/production/web_gallery.php', '2021-08-19', '07:41:44pm', '', '49.36.44.14', '', '', ''),
(1561, 'www.navyuggroup.in/gallery.php', '2021-08-19', '07:41:47pm', '', '49.36.44.14', '', '', ''),
(1562, 'www.navyuggroup.in/gallery.php', '2021-08-19', '07:43:43pm', '', '49.36.44.14', '', '', ''),
(1563, 'www.navyuggroup.in/gallery.php', '2021-08-19', '07:44:10pm', '', '49.36.44.14', '', '', ''),
(1564, 'www.navyuggroup.in/gallery.php', '2021-08-19', '07:52:51pm', '', '49.36.44.14', '', '', ''),
(1565, 'www.navyuggroup.in/admin/ibo_panel/production/web_add_image.php', '2021-08-19', '07:53:10pm', '', '49.36.44.14', '', '', ''),
(1566, 'www.navyuggroup.in/admin/ibo_panel/production/web_add_image.php', '2021-08-19', '07:53:19pm', '', '49.36.44.14', '', '', ''),
(1567, 'www.navyuggroup.in/admin/ibo_panel/production/web_gallery.php', '2021-08-19', '07:53:23pm', '', '49.36.44.14', '', '', ''),
(1568, 'www.navyuggroup.in/admin/ibo_panel/production/web_gallery.php', '2021-08-19', '07:53:25pm', '', '49.36.44.14', '', '', ''),
(1569, 'www.navyuggroup.in/admin/ibo_panel/production/web_gallery.php', '2021-08-19', '07:53:27pm', '', '49.36.44.14', '', '', ''),
(1570, 'www.navyuggroup.in/gallery.php', '2021-08-19', '07:53:57pm', '', '49.36.44.14', '', '', ''),
(1571, 'www.navyuggroup.in/index.php', '2021-08-19', '07:54:05pm', '', '49.36.44.14', '', '', ''),
(1572, 'navyuggroup.in/', '2021-08-19', '07:56:10pm', '', '49.36.44.14', '', '', ''),
(1573, 'www.navyuggroup.in/admin/ibo_panel/production/web_index.php', '2021-08-19', '07:56:45pm', '', '49.36.44.14', '', '', ''),
(1574, 'www.navyuggroup.in/admin/ibo_panel/production/web_Cust_Review.php', '2021-08-19', '07:56:52pm', '', '49.36.44.14', '', '', ''),
(1575, 'www.navyuggroup.in/admin/ibo_panel/production/web_index.php', '2021-08-19', '08:05:35pm', '', '49.36.44.14', '', '', ''),
(1576, 'www.navyuggroup.in/admin/ibo_panel/production/web_Cust_Review.php', '2021-08-19', '08:05:43pm', '', '49.36.44.14', '', '', ''),
(1577, 'www.navyuggroup.in/', '2021-08-19', '08:16:26pm', '', '66.249.79.14', '', '', ''),
(1578, 'navyuggroup.in/', '2021-08-20', '01:40:26am', '', '54.36.148.39', '', '', ''),
(1579, 'navyuggroup.in/', '2021-08-20', '10:43:50am', '', '51.159.23.22', '', '', ''),
(1580, 'navyuggroup.in/', '2021-08-20', '10:43:51am', '', '51.159.23.22', '', '', ''),
(1581, 'www.navyuggroup.in/', '2021-08-20', '11:12:46am', '', '49.36.40.103', '', '', ''),
(1582, 'www.navyuggroup.in/gallery.php', '2021-08-20', '11:16:25am', '', '49.36.40.103', '', '', ''),
(1583, 'www.navyuggroup.in/inside_dholera.php', '2021-08-20', '11:16:35am', '', '49.36.40.103', '', '', ''),
(1584, 'navyuggroup.in/', '2021-08-20', '11:17:35am', '', '49.36.40.103', '', '', ''),
(1585, 'www.navyuggroup.in/ibo_panel/production/Login_Form/login.php', '2021-08-20', '11:17:51am', '', '49.36.40.103', '', '', ''),
(1586, 'www.navyuggroup.in/ibo_panel/production/Login_Form/login.php', '2021-08-20', '11:18:11am', '', '49.36.40.103', '', '', ''),
(1587, 'www.navyuggroup.in/ibo_panel/production/index.php', '2021-08-20', '11:18:12am', '', '49.36.40.103', '', '', ''),
(1588, 'www.navyuggroup.in/ibo_panel/production/submit_payment_detail.php', '2021-08-20', '11:20:06am', '', '49.36.40.103', '', '', ''),
(1589, 'www.navyuggroup.in/ibo_panel/production/index.php', '2021-08-20', '11:20:10am', '', '49.36.40.103', '', '', ''),
(1590, 'www.navyuggroup.in/ibo_panel/production/submit_payment_detail.php', '2021-08-20', '11:20:14am', '', '49.36.40.103', '', '', ''),
(1591, 'www.navyuggroup.in/ibo_panel/production/index.php', '2021-08-20', '11:20:17am', '', '49.36.40.103', '', '', ''),
(1592, 'www.navyuggroup.in/ibo_panel/production/payment_request_history.php', '2021-08-20', '11:20:21am', '', '49.36.40.103', '', '', ''),
(1593, 'www.navyuggroup.in/ibo_panel/production/index.php', '2021-08-20', '11:20:28am', '', '49.36.40.103', '', '', ''),
(1594, 'www.navyuggroup.in/ibo_panel/production/index.php', '2021-08-20', '12:29:53pm', '', '49.36.40.103', '', '', ''),
(1595, 'www.navyuggroup.in/ibo_panel/production/Login_Form/login.php', '2021-08-20', '12:29:53pm', '', '49.36.40.103', '', '', ''),
(1596, 'www.navyuggroup.in/admin/ibo_panel/production/index.php', '2021-08-20', '01:01:20pm', '', '49.36.40.103', '', '', ''),
(1597, 'www.navyuggroup.in/admin/ibo_panel/production/login.php', '2021-08-20', '01:01:21pm', '', '49.36.40.103', '', '', ''),
(1598, 'www.navyuggroup.in/admin/ibo_panel/production/login.php', '2021-08-20', '01:01:27pm', '', '49.36.40.103', '', '', ''),
(1599, 'www.navyuggroup.in/admin/ibo_panel/production/index.php', '2021-08-20', '01:01:27pm', '', '49.36.40.103', '', '', ''),
(1600, 'www.navyuggroup.in/admin/ibo_panel/production/index.php', '2021-08-20', '01:01:41pm', '', '49.36.40.103', '', '', ''),
(1601, 'www.navyuggroup.in/admin/ibo_panel/production/login.php', '2021-08-20', '01:01:41pm', '', '49.36.40.103', '', '', ''),
(1602, 'www.navyuggroup.in/admin/ibo_panel/production/login.php', '2021-08-20', '01:01:50pm', '', '49.36.40.103', '', '', ''),
(1603, 'www.navyuggroup.in/admin/ibo_panel/production/index.php', '2021-08-20', '01:01:51pm', '', '49.36.40.103', '', '', ''),
(1604, 'www.navyuggroup.in/admin/ibo_panel/production/index.php', '2021-08-20', '01:02:05pm', '', '49.36.40.103', '', '', ''),
(1605, 'www.navyuggroup.in/admin/ibo_panel/production/index.php', '2021-08-20', '01:02:25pm', '', '49.36.40.103', '', '', ''),
(1606, 'www.navyuggroup.in/admin/ibo_panel/production/index.php', '2021-08-20', '01:45:05pm', '', '49.36.40.103', '', '', ''),
(1607, 'www.navyuggroup.in/admin/ibo_panel/production/login.php', '2021-08-20', '01:45:06pm', '', '49.36.40.103', '', '', ''),
(1608, 'www.navyuggroup.in/admin/ibo_panel/production/login.php', '2021-08-20', '01:45:09pm', '', '49.36.40.103', '', '', ''),
(1609, 'www.navyuggroup.in/admin/ibo_panel/production/index.php', '2021-08-20', '01:45:10pm', '', '49.36.40.103', '', '', ''),
(1610, 'www.navyuggroup.in/admin/ibo_panel/production/change_pass.php', '2021-08-20', '01:45:18pm', '', '49.36.40.103', '', '', ''),
(1611, 'www.navyuggroup.in/admin/ibo_panel/production/change_pass.php', '2021-08-20', '01:45:33pm', '', '49.36.40.103', '', '', ''),
(1612, 'www.navyuggroup.in/contact.php', '2021-08-20', '01:54:32pm', '', '49.36.40.103', '', '', ''),
(1613, 'www.navyuggroup.in/inside_dholera.php', '2021-08-20', '01:59:51pm', '', '49.36.40.103', '', '', ''),
(1614, 'www.navyuggroup.in/index.php', '2021-08-20', '04:12:01pm', '', '49.36.40.103', '', '', ''),
(1615, 'www.navyuggroup.in/contact.php', '2021-08-20', '04:35:17pm', '', '49.36.40.103', '', '', ''),
(1616, 'www.navyuggroup.in/gallery.php', '2021-08-20', '04:35:31pm', '', '49.36.40.103', '', '', ''),
(1617, 'www.navyuggroup.in/contact.php', '2021-08-20', '04:35:49pm', '', '49.36.40.103', '', '', ''),
(1618, 'www.navyuggroup.in/contact.php', '2021-08-20', '04:36:33pm', '', '49.36.40.103', '', '', ''),
(1619, 'www.navyuggroup.in/index.php', '2021-08-20', '04:38:55pm', '', '49.36.40.103', '', '', ''),
(1620, 'www.navyuggroup.in/contact.php', '2021-08-20', '04:39:20pm', '', '49.36.40.103', '', '', ''),
(1621, 'www.navyuggroup.in/index.php', '2021-08-20', '04:39:34pm', '', '49.36.40.103', '', '', ''),
(1622, 'www.navyuggroup.in/index.php', '2021-08-20', '04:40:59pm', '', '49.36.40.103', '', '', ''),
(1623, 'www.navyuggroup.in/index.php', '2021-08-20', '04:58:08pm', '', '49.36.40.103', '', '', ''),
(1624, 'www.navyuggroup.in/index.php', '2021-08-20', '04:58:18pm', '', '49.36.40.103', '', '', ''),
(1625, 'www.navyuggroup.in/index.php', '2021-08-20', '05:01:04pm', '', '49.36.40.103', '', '', ''),
(1626, 'www.navyuggroup.in/index.php', '2021-08-20', '05:03:38pm', '', '49.36.40.103', '', '', ''),
(1627, 'www.navyuggroup.in/index.php', '2021-08-20', '05:04:29pm', '', '49.36.40.103', '', '', ''),
(1628, 'www.navyuggroup.in/index.php', '2021-08-20', '05:06:47pm', '', '49.36.40.103', '', '', ''),
(1629, 'www.navyuggroup.in/index.php', '2021-08-20', '05:08:20pm', '', '49.36.40.103', '', '', ''),
(1630, 'www.navyuggroup.in/index.php', '2021-08-20', '05:11:03pm', '', '49.36.40.103', '', '', ''),
(1631, 'navyuggroup.in/index.php', '2021-08-20', '05:22:32pm', '', '49.36.40.103', '', '', ''),
(1632, 'www.navyuggroup.in/index.php', '2021-08-20', '05:46:12pm', '', '49.36.40.103', '', '', ''),
(1633, 'www.navyuggroup.in/contact.php', '2021-08-20', '05:48:33pm', '', '49.36.40.103', '', '', ''),
(1634, 'www.navyuggroup.in/admin/ibo_panel/production/index.php', '2021-08-20', '05:48:58pm', '', '49.36.40.103', '', '', ''),
(1635, 'www.navyuggroup.in/admin/ibo_panel/production/login.php', '2021-08-20', '05:48:58pm', '', '49.36.40.103', '', '', ''),
(1636, 'www.navyuggroup.in/admin/ibo_panel/production/login.php', '2021-08-20', '05:49:04pm', '', '49.36.40.103', '', '', ''),
(1637, 'www.navyuggroup.in/admin/ibo_panel/production/index.php', '2021-08-20', '05:49:04pm', '', '49.36.40.103', '', '', ''),
(1638, 'www.navyuggroup.in/contact.php', '2021-08-20', '05:49:17pm', '', '49.36.40.103', '', '', ''),
(1639, 'www.navyuggroup.in/index.php', '2021-08-20', '05:49:19pm', '', '49.36.40.103', '', '', ''),
(1640, 'www.navyuggroup.in/admin/ibo_panel/production/web_index.php', '2021-08-20', '05:51:23pm', '', '49.36.40.103', '', '', ''),
(1641, 'www.navyuggroup.in/admin/ibo_panel/production/web_Cust_Review.php', '2021-08-20', '05:51:25pm', '', '49.36.40.103', '', '', ''),
(1642, 'www.navyuggroup.in/admin/ibo_panel/production/web_review_text.php', '2021-08-20', '05:51:29pm', '', '49.36.40.103', '', '', ''),
(1643, 'www.navyuggroup.in/admin/ibo_panel/production/web_Cust_Review.php', '2021-08-20', '05:51:33pm', '', '49.36.40.103', '', '', ''),
(1644, 'www.navyuggroup.in/admin/ibo_panel/production/web_review_video.php', '2021-08-20', '05:51:36pm', '', '49.36.40.103', '', '', ''),
(1645, 'www.navyuggroup.in/admin/ibo_panel/production/web_Cust_Review.php', '2021-08-20', '05:51:43pm', '', '49.36.40.103', '', '', ''),
(1646, 'www.navyuggroup.in/admin/ibo_panel/production/web_review_text.php', '2021-08-20', '05:51:44pm', '', '49.36.40.103', '', '', ''),
(1647, 'www.navyuggroup.in/contact.php', '2021-08-20', '05:57:30pm', '', '49.36.40.103', '', '', ''),
(1648, 'www.navyuggroup.in/index.php', '2021-08-20', '05:57:44pm', '', '49.36.40.103', '', '', ''),
(1649, 'www.navyuggroup.in/contact.php', '2021-08-20', '06:02:21pm', '', '49.36.40.103', '', '', ''),
(1650, 'www.navyuggroup.in/index.php', '2021-08-20', '06:02:24pm', '', '49.36.40.103', '', '', ''),
(1651, 'www.navyuggroup.in/contact.php', '2021-08-20', '06:07:13pm', '', '49.36.40.103', '', '', ''),
(1652, 'www.navyuggroup.in/index.php', '2021-08-20', '06:07:15pm', '', '49.36.40.103', '', '', ''),
(1653, 'www.navyuggroup.in/contact.php', '2021-08-20', '06:08:52pm', '', '49.36.40.103', '', '', ''),
(1654, 'www.navyuggroup.in/index.php', '2021-08-20', '06:10:21pm', '', '49.36.40.103', '', '', ''),
(1655, 'www.navyuggroup.in/', '2021-08-20', '06:14:35pm', '', '49.36.40.103', '', '', ''),
(1656, 'www.navyuggroup.in/gallery.php', '2021-08-20', '06:14:41pm', '', '49.36.40.103', '', '', ''),
(1657, 'www.navyuggroup.in/contact.php', '2021-08-20', '06:14:49pm', '', '49.36.40.103', '', '', ''),
(1658, 'www.navyuggroup.in/booking.php?booking=DHOLERA%20PRISTINE', '2021-08-20', '06:16:16pm', '', '49.36.40.103', '', '', ''),
(1659, 'www.navyuggroup.in/inside_dholera.php', '2021-08-20', '06:30:42pm', '', '49.36.40.103', '', '', ''),
(1660, 'www.navyuggroup.in/index.php', '2021-08-20', '06:40:16pm', '', '49.36.40.103', '', '', '');
INSERT INTO `site_open_info` (`soi_id`, `url`, `date`, `time`, `session_d_id`, `ip_addreass`, `desktop`, `mobile`, `browser`) VALUES
(1661, 'www.navyuggroup.in/contact.php', '2021-08-20', '07:08:10pm', '', '49.36.40.103', '', '', ''),
(1662, 'www.navyuggroup.in/index.php', '2021-08-20', '07:08:12pm', '', '49.36.40.103', '', '', ''),
(1663, 'www.navyuggroup.in/index.php', '2021-08-20', '07:08:18pm', '', '49.36.40.103', '', '', ''),
(1664, 'www.navyuggroup.in/index.php', '2021-08-20', '07:09:17pm', '', '49.36.40.103', '', '', ''),
(1665, 'www.navyuggroup.in/contact.php', '2021-08-20', '07:10:44pm', '', '49.36.40.103', '', '', ''),
(1666, 'www.navyuggroup.in/index.php', '2021-08-20', '07:10:51pm', '', '49.36.40.103', '', '', ''),
(1667, 'www.navyuggroup.in/index.php', '2021-08-20', '07:12:06pm', '', '49.36.40.103', '', '', ''),
(1668, 'navyuggroup.in/index.php', '2021-08-20', '07:12:25pm', '', '49.36.40.103', '', '', ''),
(1669, 'navyuggroup.in/', '2021-08-20', '07:23:59pm', '', '54.36.148.39', '', '', ''),
(1670, 'navyuggroup.in/', '2021-08-21', '03:34:06am', '', '144.86.173.87', '', '', ''),
(1671, 'navyuggroup.in/', '2021-08-21', '08:52:33am', '', '144.86.173.90', '', '', ''),
(1672, 'navyuggroup.in/', '2021-08-21', '09:11:43am', '', '5.189.159.208', '', '', ''),
(1673, 'www.navyuggroup.in/', '2021-08-21', '09:12:05am', '', '5.189.159.208', '', '', ''),
(1674, 'navyuggroup.in/', '2021-08-21', '10:02:12am', '', '92.118.160.41', '', '', ''),
(1675, 'navyuggroup.in/index.php', '2021-08-21', '11:35:55am', '', '49.36.46.27', '', '', ''),
(1676, 'navyuggroup.in/', '2021-08-21', '05:01:02pm', '', '54.36.148.39', '', '', ''),
(1677, 'www.navyuggroup.in/Online_visit.php', '2021-08-21', '06:47:37pm', '', '157.55.39.23', '', '', ''),
(1678, 'navyuggroup.in/', '2021-08-22', '03:08:12pm', '', '54.36.148.39', '', '', ''),
(1679, 'navyuggroup.in/', '2021-08-22', '05:55:02pm', '', '92.118.160.5', '', '', ''),
(1680, 'navyuggroup.in/', '2021-08-22', '06:29:46pm', '', '49.36.42.176', '', '', ''),
(1681, 'navyuggroup.in/', '2021-08-22', '06:30:21pm', '', '49.36.42.176', '', '', ''),
(1682, 'www.navyuggroup.in/ibo_panel/production/Login_Form/login.php', '2021-08-22', '07:46:51pm', '', '106.208.174.154', '', '', ''),
(1683, 'www.navyuggroup.in/ibo_panel/production/Login_Form/get_Sponser_id_check.php?s=n', '2021-08-22', '07:54:14pm', '', '106.207.235.177', '', '', ''),
(1684, 'www.navyuggroup.in/ibo_panel/production/Login_Form/get_Sponser_id_check.php?s=ng', '2021-08-22', '07:54:21pm', '', '106.207.235.177', '', '', ''),
(1685, 'www.navyuggroup.in/ibo_panel/production/Login_Form/get_Sponser_id_check.php?s=n', '2021-08-22', '07:54:24pm', '', '106.207.235.177', '', '', ''),
(1686, 'www.navyuggroup.in/ibo_panel/production/Login_Form/get_Sponser_id_check.php?s=', '2021-08-22', '07:54:24pm', '', '106.207.235.177', '', '', ''),
(1687, 'www.navyuggroup.in/ibo_panel/production/Login_Form/get_Sponser_id_check.php?s=n', '2021-08-22', '07:54:35pm', '', '106.207.235.177', '', '', ''),
(1688, 'www.navyuggroup.in/ibo_panel/production/Login_Form/get_Sponser_id_check.php?s=ng', '2021-08-22', '07:54:35pm', '', '106.207.235.177', '', '', ''),
(1689, 'www.navyuggroup.in/ibo_panel/production/Login_Form/get_Sponser_id_check.php?s=ng2', '2021-08-22', '07:54:42pm', '', '106.207.235.177', '', '', ''),
(1690, 'www.navyuggroup.in/ibo_panel/production/Login_Form/get_Sponser_id_check.php?s=ng29', '2021-08-22', '07:54:43pm', '', '106.207.235.177', '', '', ''),
(1691, 'www.navyuggroup.in/ibo_panel/production/Login_Form/get_Sponser_id_check.php?s=ng297', '2021-08-22', '07:54:44pm', '', '106.207.235.177', '', '', ''),
(1692, 'www.navyuggroup.in/ibo_panel/production/Login_Form/get_Sponser_id_check.php?s=ng2974', '2021-08-22', '07:54:45pm', '', '106.207.235.177', '', '', ''),
(1693, 'www.navyuggroup.in/ibo_panel/production/Login_Form/login.php', '2021-08-22', '08:06:48pm', '', '27.62.239.218', '', '', ''),
(1694, 'www.navyuggroup.in/ibo_panel/production/index.php', '2021-08-22', '08:06:48pm', '', '27.62.239.218', '', '', ''),
(1695, 'www.navyuggroup.in/ibo_panel/production/network_list.php', '2021-08-22', '08:07:17pm', '', '27.62.239.218', '', '', ''),
(1696, 'www.navyuggroup.in/ibo_panel/production/level1.php', '2021-08-22', '08:07:36pm', '', '106.207.218.156', '', '', ''),
(1697, 'www.navyuggroup.in/ibo_panel/production/level2.php', '2021-08-22', '08:07:43pm', '', '106.207.218.156', '', '', ''),
(1698, 'www.navyuggroup.in/ibo_panel/production/level3.php', '2021-08-22', '08:07:50pm', '', '106.207.218.156', '', '', ''),
(1699, 'www.navyuggroup.in/ibo_panel/production/level1.php', '2021-08-22', '08:07:54pm', '', '106.207.218.156', '', '', ''),
(1700, 'www.navyuggroup.in/ibo_panel/production/tree.php', '2021-08-22', '08:09:04pm', '', '106.207.218.156', '', '', ''),
(1701, 'www.navyuggroup.in/ibo_panel/production/tree_view.php', '2021-08-22', '08:09:04pm', '', '106.207.218.156', '', '', ''),
(1702, 'www.navyuggroup.in/ibo_panel/production/submit_payment_detail.php', '2021-08-22', '08:09:24pm', '', '106.207.218.156', '', '', ''),
(1703, 'www.navyuggroup.in/ibo_panel/production/payment_request_history.php', '2021-08-22', '08:09:34pm', '', '106.207.225.225', '', '', ''),
(1704, 'www.navyuggroup.in/ibo_panel/production/submit_payment_detail.php', '2021-08-22', '08:09:43pm', '', '106.207.237.30', '', '', ''),
(1705, 'www.navyuggroup.in/ibo_panel/production/property_saving_ledger_view.php', '2021-08-22', '08:10:21pm', '', '27.56.230.215', '', '', ''),
(1706, 'www.navyuggroup.in/ibo_panel/production/tds_ledger_view.php', '2021-08-22', '08:23:20pm', '', '106.207.254.77', '', '', ''),
(1707, 'www.navyuggroup.in/ibo_panel/production/property_saving_ledger_view.php', '2021-08-22', '08:23:27pm', '', '106.207.254.77', '', '', ''),
(1708, 'www.navyuggroup.in/ibo_panel/production/tds_ledger_view.php', '2021-08-22', '08:23:32pm', '', '106.207.254.77', '', '', ''),
(1709, 'www.navyuggroup.in/ibo_panel/production/level_income.php', '2021-08-22', '08:23:36pm', '', '106.207.254.77', '', '', ''),
(1710, 'www.navyuggroup.in/ibo_panel/production/kyc.php', '2021-08-22', '08:24:19pm', '', '106.207.254.77', '', '', ''),
(1711, 'www.navyuggroup.in/ibo_panel/production/change_password.php', '2021-08-22', '08:25:24pm', '', '106.207.254.77', '', '', ''),
(1712, 'www.navyuggroup.in/ibo_panel/production/profile_edit.php', '2021-08-22', '08:25:32pm', '', '106.207.254.77', '', '', ''),
(1713, 'www.navyuggroup.in/', '2021-08-23', '10:19:00am', '', '49.36.42.8', '', '', ''),
(1714, 'www.navyuggroup.in/ibo_panel/production/Login_Form/login.php', '2021-08-23', '10:20:58am', '', '49.36.42.8', '', '', ''),
(1715, 'www.navyuggroup.in/ibo_panel/production/Login_Form/login.php', '2021-08-23', '10:21:14am', '', '49.36.42.8', '', '', ''),
(1716, 'www.navyuggroup.in/ibo_panel/production/index.php', '2021-08-23', '10:21:14am', '', '49.36.42.8', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `tds_collected_history`
--

CREATE TABLE `tds_collected_history` (
  `tch_id` int(11) NOT NULL,
  `d_id` varchar(10) NOT NULL,
  `date` varchar(20) NOT NULL,
  `time` varchar(25) NOT NULL,
  `tds` varchar(10) NOT NULL,
  `b_tds` varchar(10) NOT NULL,
  `a_tds` varchar(10) NOT NULL,
  `of_amount` varchar(10) NOT NULL,
  `type` varchar(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tds_collected_history`
--

INSERT INTO `tds_collected_history` (`tch_id`, `d_id`, `date`, `time`, `tds`, `b_tds`, `a_tds`, `of_amount`, `type`) VALUES
(1, '', '2021-07-30', '01:07:17pm', '250', '', '250', '5000', '+'),
(2, '', '2021-07-30', '01:07:17pm', '125', '', '125', '2500', '+'),
(3, '', '2021-07-30', '01:07:17pm', '100', '', '100', '2000', '+'),
(4, '', '2021-07-30', '02:20:25pm', '0.05', '', '0.05', '1', '+'),
(5, '', '2021-07-30', '02:20:25pm', '0.025', '', '0.025', '0.5', '+'),
(6, '', '2021-07-30', '02:20:25pm', '0.02', '', '0.02', '0.4', '+'),
(7, '2974', '2021-07-30', '05:53:33pm', '250', '0', '250', '5000', '+'),
(8, '', '2021-07-30', '05:53:33pm', '125', '', '125', '2500', '+'),
(9, '', '2021-07-30', '05:53:33pm', '100', '', '100', '2000', '+'),
(10, '', '2021-08-12', '11:50:21am', '250', '', '250', '5000', '+'),
(11, '', '2021-08-12', '11:50:21am', '125', '', '125', '2500', '+'),
(12, '', '2021-08-12', '11:50:21am', '100', '', '100', '2000', '+');

-- --------------------------------------------------------

--
-- Table structure for table `web_booking`
--

CREATE TABLE `web_booking` (
  `wb_id` int(11) NOT NULL,
  `d_id` varchar(20) NOT NULL,
  `date` varchar(20) NOT NULL,
  `time` varchar(20) NOT NULL,
  `name` varchar(50) NOT NULL,
  `mobile` varchar(13) NOT NULL,
  `email` varchar(50) NOT NULL,
  `property_type` varchar(20) NOT NULL,
  `property_name` varchar(100) NOT NULL,
  `message` varchar(1000) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `web_booking`
--

INSERT INTO `web_booking` (`wb_id`, `d_id`, `date`, `time`, `name`, `mobile`, `email`, `property_type`, `property_name`, `message`) VALUES
(1, '', '2021-07-06', '03:55:21pm', 'karera', '07723850822', 'r975493@gmail.com', 'Inside Dholera', 'DHOLERA SKY', 'fdgsdsh'),
(2, '', '2021-07-29', '12:18:12am', 'ugugdu', '7489590939', 'r975493@gmail.com', 'Inside Dholera', 'DHOLERA SKY', 'hu'),
(3, '', '2021-08-17', '05:36:39pm', 'Rohit gidolia', '7869470415', 'gidolia3@gmail.com', 'Inside Dholera', 'DHOLERA PRIDE', 'hi');

-- --------------------------------------------------------

--
-- Table structure for table `web_contacts`
--

CREATE TABLE `web_contacts` (
  `wc_id` int(11) NOT NULL,
  `d_id` varchar(10) NOT NULL,
  `full_name` varchar(50) NOT NULL,
  `mob_number` varchar(12) NOT NULL,
  `email_id` varchar(50) NOT NULL,
  `subject` varchar(100) NOT NULL,
  `messages` varchar(500) NOT NULL,
  `date` varchar(10) NOT NULL,
  `time` varchar(10) NOT NULL,
  `note` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `web_contacts`
--

INSERT INTO `web_contacts` (`wc_id`, `d_id`, `full_name`, `mob_number`, `email_id`, `subject`, `messages`, `date`, `time`, `note`) VALUES
(1, '', 'karera', '', 'r975493@gmail.com', '', 'hhh', '2021-07-06', '02:43:09pm', 'Online Visit'),
(2, '', 'cvc', '', 'rohitsinghrajauriya@gmail.com', 'cx', 'cx x', '2021-07-06', '03:52:42pm', 'Contact us'),
(3, '', 'sgrd', 'hdh', 'hdfhd', '', 'hdfh', '2021-07-06', '03:52:58pm', 'Get In Touch'),
(4, '', 'grg', '', 'r975493@gmail.com', '', 'fdfhhb', '2021-07-06', '03:53:24pm', 'Online Visit'),
(5, '', 'rohit rajauriya', '09425020247', 'r975493@gmail.com', '', 'HI', '2021-07-28', '11:54:13pm', 'Get In Touch'),
(6, '', 'rohit rajauriya', '', 'r975493@gmail.com', '', 'HI', '2021-07-28', '11:56:10pm', 'Online Visit'),
(7, '', 'rohit rajauriya', '', 'r975493@gmail.com', 'hi rohit ', 'HI', '2021-07-28', '11:56:58pm', 'Contact us'),
(8, '', 'RonaldScopy', '86359143547', 'director@well-web.net', '', '<a href=https://well-web.net/>Ð’Ð¸Ñ€Ñ‚ÑƒÐ°Ð»ÑŒÐ½Ñ‹Ð¹ Ñ…Ð¾ÑÑ‚Ð¸Ð½Ð³</a> \r\n<a href=\"https://well-web.net/\">Ð’Ð¸Ñ€Ñ‚ÑƒÐ°Ð»ÑŒÐ½Ñ‹Ð¹ Ñ…Ð¾ÑÑ‚Ð¸Ð½Ð³</a>', '2021-08-14', '10:27:25am', 'Get In Touch'),
(9, '', 'rohit', '7869470415', 'gidolia3@gmail.com', '', 'hi rohit singh', '2021-08-17', '05:02:29pm', 'Get In Touch'),
(10, '', 'Zikoisclons', '85572739623', 'haemuldy292@maillux.online\r\n', '', '<a href=https://www.alkraft.ru/production/metallicheskaya-dverca-na-magnite>ÐºÑƒÐ¿Ð¸Ñ‚ÑŒ ÑÐ°Ð½Ñ‚ÐµÑ…Ð½Ð¸Ñ‡ÐµÑÐºÐ¸Ðµ Ð»ÑŽÐºÐ¸</a> Ð¸Ð»Ð¸ <a href=https://www.alkraft.ru/production/metallicheskaya-dverca-nazhimnaya>Ñ€ÐµÐ²Ð¸Ð·Ð¸Ð¾Ð½Ð½Ñ‹Ð¹ Ð»ÑŽÐº Ð¾Ñ‚ Ð¿Ñ€Ð¾Ð¸Ð·Ð²Ð¾Ð´Ð¸Ñ‚ÐµÐ»Ñ</a> \r\n \r\nhttps://www.alkraft.ru/production/inzhener', '2021-08-20', '10:43:51am', 'Get In Touch');

-- --------------------------------------------------------

--
-- Table structure for table `web_gallery`
--

CREATE TABLE `web_gallery` (
  `wg_id` int(11) NOT NULL,
  `image` varchar(50) NOT NULL,
  `date` varchar(20) NOT NULL,
  `time` varchar(20) NOT NULL,
  `gallery_type` varchar(20) NOT NULL,
  `video` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `note` varchar(50) NOT NULL,
  `s_notes` varchar(20) NOT NULL,
  `text_mess` varchar(250) NOT NULL,
  `ss_note` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `web_gallery`
--

INSERT INTO `web_gallery` (`wg_id`, `image`, `date`, `time`, `gallery_type`, `video`, `name`, `note`, `s_notes`, `text_mess`, `ss_note`) VALUES
(1, '1ad73c54.jpg', '2021-08-19', '07:26:38pm', 'Photos', '', '', 'photo Published', 'p', '', 'Gallery P&V'),
(2, '9g87fdac.jpg', '2021-08-19', '07:27:02pm', 'Photos', '', '', 'photo Published', 'p', '', 'Gallery P&V'),
(3, '', '2021-08-19', '07:27:18pm', 'Videos', '8e2a5fhd.mp4', '', 'video Published', 'v', '', 'Gallery P&V'),
(4, '', '2021-08-19', '07:27:36pm', 'Videos', '1h6d47ge.mp4', '', 'video Published', 'v', '', 'Gallery P&V'),
(5, 'ea9h72bf.jpg', '2021-08-19', '07:28:28pm', 'Reviews Texts', '', 'Rohit Gidolia', 'Reviews Text Published', 'Reviews text', 'Dholera Fortune Infra today is among the leading Realty and infrastructure companies. A widely reputed and professionally managed Organization. Dholera Fortune infra currently operates in a range of business verticals such as residential Townships', 'Reviews T&V'),
(6, 'hd9c75b4.jpg', '2021-08-19', '07:28:53pm', 'Reviews Texts', '', 'rohit rajauriya', 'Reviews Text Published', 'Reviews text', 'Dholera Fortune Infra today is among the leading Realty and infrastructure companies. A widely reputed and professionally managed Organization. Dholera Fortune infra currently operates in a range of business verticals such as residential Townships', 'Reviews T&V'),
(7, '97ag31f6.jpg', '2021-08-19', '07:29:15pm', 'Reviews Texts', '', 'Rahul Kaushal', 'Reviews Text Published', 'Reviews text', 'Dholera Fortune Infra today is among the leading Realty and infrastructure companies. A widely reputed and professionally managed Organization. Dholera Fortune infra currently operates in a range of business verticals such as residential Townships', 'Reviews T&V'),
(8, 'e8256hb4.jpg', '2021-08-19', '07:29:52pm', 'Reviews Texts', '', 'Ravi Bhaiya', 'Reviews Text Published', 'Reviews text', 'Dholera Fortune Infra today is among the leading Realty and infrastructure companies. A widely reputed and professionally managed Organization. Dholera Fortune infra currently operates in a range of business verticals such as residential Townships', 'Reviews T&V'),
(9, '', '2021-08-19', '07:31:55pm', 'Reviews Videos', 'g21dfbh7.mp4', '', 'Reviews Video Published', 'Reviews video', '', 'Reviews T&V'),
(10, '', '2021-08-19', '07:32:06pm', 'Reviews Videos', 'f89d15h4.mp4', '', 'Reviews Video Published', 'Reviews video', '', 'Reviews T&V'),
(11, '', '2021-08-19', '07:32:20pm', 'Reviews Videos', 'a84e9fd5.mp4', '', 'Reviews Video Published', 'Reviews video', '', 'Reviews T&V'),
(12, '', '2021-08-19', '07:32:28pm', 'Reviews Videos', 'gaf4b2dh.mp4', '', 'Reviews Video Published', 'Reviews video', '', 'Reviews T&V'),
(13, 'e56dh7fg.jpg', '2021-08-19', '07:39:22pm', 'Photos', '', '', 'photo Published', 'p', '', 'Gallery P&V'),
(14, '1a6cd879.jpg', '2021-08-19', '07:39:35pm', 'Photos', '', '', 'photo Published', 'p', '', 'Gallery P&V'),
(15, 'f35194dh.jpg', '2021-08-19', '07:41:23pm', 'Photos', '', '', 'photo Published', 'p', '', 'Gallery P&V'),
(16, '6f571gcd.jpg', '2021-08-19', '07:41:36pm', 'Photos', '', '', 'photo Published', 'p', '', 'Gallery P&V'),
(17, '9gb3hdaf.jpg', '2021-08-19', '07:53:19pm', 'Photos', '', '', 'photo Published', 'p', '', 'Gallery P&V');

-- --------------------------------------------------------

--
-- Table structure for table `web_latest_news`
--

CREATE TABLE `web_latest_news` (
  `wln_id` int(11) NOT NULL,
  `d_id` varchar(10) NOT NULL,
  `date` varchar(20) NOT NULL,
  `time` varchar(20) NOT NULL,
  `image` varchar(20) NOT NULL,
  `news_header` varchar(50) NOT NULL,
  `message` varchar(1000) NOT NULL,
  `message2` varchar(1000) NOT NULL,
  `message3` varchar(1000) NOT NULL,
  `s_note` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `web_latest_news`
--

INSERT INTO `web_latest_news` (`wln_id`, `d_id`, `date`, `time`, `image`, `news_header`, `message`, `message2`, `message3`, `s_note`) VALUES
(18, '', '2021-08-17', '05:33:30pm', '45eh3b62.jpg', 'ng', 'hi', 'test only image used', 'add new photos in news ', 's');

-- --------------------------------------------------------

--
-- Table structure for table `withdrawal_wallet_history`
--

CREATE TABLE `withdrawal_wallet_history` (
  `wwh_id` int(11) NOT NULL,
  `d_id` varchar(10) NOT NULL,
  `date` varchar(20) NOT NULL,
  `time` varchar(25) NOT NULL,
  `bal` varchar(10) NOT NULL,
  `b_bal` varchar(10) NOT NULL,
  `a_bal` varchar(10) NOT NULL,
  `note` varchar(100) NOT NULL,
  `type` varchar(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `withdrawal_wallet_history`
--

INSERT INTO `withdrawal_wallet_history` (`wwh_id`, `d_id`, `date`, `time`, `bal`, `b_bal`, `a_bal`, `note`, `type`) VALUES
(1, '', '2021-07-30', '01:07:17pm', '4000', '', '4000', 'Level Income', '+'),
(2, '', '2021-07-30', '01:07:17pm', '2000', '', '2000', 'Level Income', '+'),
(3, '', '2021-07-30', '01:07:17pm', '1600', '', '1600', 'Level Income', '+'),
(4, '', '2021-07-30', '02:20:25pm', '0.8', '', '0.8', 'Level Income', '+'),
(5, '', '2021-07-30', '02:20:25pm', '0.4', '', '0.4', 'Level Income', '+'),
(6, '', '2021-07-30', '02:20:25pm', '0.32', '', '0.32', 'Level Income', '+'),
(7, '2974', '2021-07-30', '05:53:33pm', '4000', '0', '4000', 'Level Income', '+'),
(8, '', '2021-07-30', '05:53:33pm', '2000', '', '2000', 'Level Income', '+'),
(9, '', '2021-07-30', '05:53:33pm', '1600', '', '1600', 'Level Income', '+'),
(10, '', '2021-08-12', '11:50:21am', '4000', '', '4000', 'Level Income', '+'),
(11, '', '2021-08-12', '11:50:21am', '2000', '', '2000', 'Level Income', '+'),
(12, '', '2021-08-12', '11:50:21am', '1600', '', '1600', 'Level Income', '+');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `activate_id_pin`
--
ALTER TABLE `activate_id_pin`
  ADD PRIMARY KEY (`aip_id`);

--
-- Indexes for table `admin_charge`
--
ALTER TABLE `admin_charge`
  ADD PRIMARY KEY (`ac_id`);

--
-- Indexes for table `admin_password`
--
ALTER TABLE `admin_password`
  ADD PRIMARY KEY (`ap_id`);

--
-- Indexes for table `distributor`
--
ALTER TABLE `distributor`
  ADD PRIMARY KEY (`d_id`);

--
-- Indexes for table `entry_fail_report`
--
ALTER TABLE `entry_fail_report`
  ADD PRIMARY KEY (`efr_id`);

--
-- Indexes for table `kyc_adhar`
--
ALTER TABLE `kyc_adhar`
  ADD PRIMARY KEY (`ka_id`);

--
-- Indexes for table `kyc_bank`
--
ALTER TABLE `kyc_bank`
  ADD PRIMARY KEY (`kb_id`);

--
-- Indexes for table `kyc_pan`
--
ALTER TABLE `kyc_pan`
  ADD PRIMARY KEY (`kp_id`);

--
-- Indexes for table `level_income`
--
ALTER TABLE `level_income`
  ADD PRIMARY KEY (`li_id`);

--
-- Indexes for table `notification`
--
ALTER TABLE `notification`
  ADD PRIMARY KEY (`n_id`);

--
-- Indexes for table `payment_request`
--
ALTER TABLE `payment_request`
  ADD PRIMARY KEY (`pr_id`);

--
-- Indexes for table `pin_request`
--
ALTER TABLE `pin_request`
  ADD PRIMARY KEY (`pr_id`);

--
-- Indexes for table `pin_wallet_50000`
--
ALTER TABLE `pin_wallet_50000`
  ADD PRIMARY KEY (`pw_id`);

--
-- Indexes for table `pin_wallet_100000`
--
ALTER TABLE `pin_wallet_100000`
  ADD PRIMARY KEY (`pw_id`);

--
-- Indexes for table `pin_wallet_250000`
--
ALTER TABLE `pin_wallet_250000`
  ADD PRIMARY KEY (`pw_id`);

--
-- Indexes for table `plot_details`
--
ALTER TABLE `plot_details`
  ADD PRIMARY KEY (`pd_id`);

--
-- Indexes for table `plot_details_history`
--
ALTER TABLE `plot_details_history`
  ADD PRIMARY KEY (`pdh_id`);

--
-- Indexes for table `project_name`
--
ALTER TABLE `project_name`
  ADD PRIMARY KEY (`pn_id`);

--
-- Indexes for table `property_saving_history`
--
ALTER TABLE `property_saving_history`
  ADD PRIMARY KEY (`psh_id`);

--
-- Indexes for table `site_open_info`
--
ALTER TABLE `site_open_info`
  ADD PRIMARY KEY (`soi_id`);

--
-- Indexes for table `tds_collected_history`
--
ALTER TABLE `tds_collected_history`
  ADD PRIMARY KEY (`tch_id`);

--
-- Indexes for table `web_booking`
--
ALTER TABLE `web_booking`
  ADD PRIMARY KEY (`wb_id`);

--
-- Indexes for table `web_contacts`
--
ALTER TABLE `web_contacts`
  ADD PRIMARY KEY (`wc_id`);

--
-- Indexes for table `web_gallery`
--
ALTER TABLE `web_gallery`
  ADD PRIMARY KEY (`wg_id`);

--
-- Indexes for table `web_latest_news`
--
ALTER TABLE `web_latest_news`
  ADD PRIMARY KEY (`wln_id`);

--
-- Indexes for table `withdrawal_wallet_history`
--
ALTER TABLE `withdrawal_wallet_history`
  ADD PRIMARY KEY (`wwh_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `activate_id_pin`
--
ALTER TABLE `activate_id_pin`
  MODIFY `aip_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `admin_charge`
--
ALTER TABLE `admin_charge`
  MODIFY `ac_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `admin_password`
--
ALTER TABLE `admin_password`
  MODIFY `ap_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `distributor`
--
ALTER TABLE `distributor`
  MODIFY `d_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8626;

--
-- AUTO_INCREMENT for table `entry_fail_report`
--
ALTER TABLE `entry_fail_report`
  MODIFY `efr_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `kyc_adhar`
--
ALTER TABLE `kyc_adhar`
  MODIFY `ka_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `kyc_bank`
--
ALTER TABLE `kyc_bank`
  MODIFY `kb_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `kyc_pan`
--
ALTER TABLE `kyc_pan`
  MODIFY `kp_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `level_income`
--
ALTER TABLE `level_income`
  MODIFY `li_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `notification`
--
ALTER TABLE `notification`
  MODIFY `n_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `payment_request`
--
ALTER TABLE `payment_request`
  MODIFY `pr_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `pin_request`
--
ALTER TABLE `pin_request`
  MODIFY `pr_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pin_wallet_50000`
--
ALTER TABLE `pin_wallet_50000`
  MODIFY `pw_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pin_wallet_100000`
--
ALTER TABLE `pin_wallet_100000`
  MODIFY `pw_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `pin_wallet_250000`
--
ALTER TABLE `pin_wallet_250000`
  MODIFY `pw_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `plot_details`
--
ALTER TABLE `plot_details`
  MODIFY `pd_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `plot_details_history`
--
ALTER TABLE `plot_details_history`
  MODIFY `pdh_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `project_name`
--
ALTER TABLE `project_name`
  MODIFY `pn_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `property_saving_history`
--
ALTER TABLE `property_saving_history`
  MODIFY `psh_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `site_open_info`
--
ALTER TABLE `site_open_info`
  MODIFY `soi_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1717;

--
-- AUTO_INCREMENT for table `tds_collected_history`
--
ALTER TABLE `tds_collected_history`
  MODIFY `tch_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `web_booking`
--
ALTER TABLE `web_booking`
  MODIFY `wb_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `web_contacts`
--
ALTER TABLE `web_contacts`
  MODIFY `wc_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `web_gallery`
--
ALTER TABLE `web_gallery`
  MODIFY `wg_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `web_latest_news`
--
ALTER TABLE `web_latest_news`
  MODIFY `wln_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `withdrawal_wallet_history`
--
ALTER TABLE `withdrawal_wallet_history`
  MODIFY `wwh_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
