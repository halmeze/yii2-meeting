-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Oct 30, 2015 at 12:02 AM
-- Server version: 5.6.17
-- PHP Version: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `yii2-meeting`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_assignment`
--

CREATE TABLE IF NOT EXISTS `auth_assignment` (
  `item_name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`item_name`,`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `auth_assignment`
--

INSERT INTO `auth_assignment` (`item_name`, `user_id`, `created_at`) VALUES
('admin', '1', 1441476856),
('staff', '3', 1441476856),
('user', '2', 1441476856);

-- --------------------------------------------------------

--
-- Table structure for table `auth_item`
--

CREATE TABLE IF NOT EXISTS `auth_item` (
  `name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `type` int(11) NOT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `rule_name` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `data` text COLLATE utf8_unicode_ci,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`name`),
  KEY `rule_name` (`rule_name`),
  KEY `idx-auth_item-type` (`type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `auth_item`
--

INSERT INTO `auth_item` (`name`, `type`, `description`, `rule_name`, `data`, `created_at`, `updated_at`) VALUES
('admin', 1, NULL, NULL, NULL, 1441476233, 1441476233),
('meeting/equipment/create', 2, 'เพิ่มอุปกรณ์', NULL, NULL, 1441475338, 1441475338),
('meeting/equipment/delete', 2, 'ลบอุปกรณ์', NULL, NULL, 1441475339, 1441475339),
('meeting/equipment/index', 2, 'รายการอุปกรณ์', NULL, NULL, 1441475338, 1441475338),
('meeting/equipment/update', 2, 'แก้ไขอุปกรณ์', NULL, NULL, 1441475339, 1441475339),
('meeting/equipment/view', 2, 'ดูอุปกรณ์', NULL, NULL, 1441475339, 1441475339),
('meeting/meeting/create', 2, 'การจองห้องประชุม', NULL, NULL, 1441475339, 1441475339),
('meeting/meeting/delete', 2, 'ลบการจองห้องประชุม', NULL, NULL, 1441475339, 1441475339),
('meeting/meeting/index', 2, 'รายการการจองห้องประชุม', NULL, NULL, 1441475339, 1441475339),
('meeting/meeting/update', 2, 'แก้ไขการจองห้องประชุม', NULL, NULL, 1441475339, 1441475339),
('meeting/meeting/view', 2, 'ดูการจองห้องประชุม', NULL, NULL, 1441475339, 1441475339),
('meeting/report/report1', 2, 'กราฟสรุปการจองห้องประชุมแบ่งตามห้อง', NULL, NULL, 1441475339, 1441475339),
('meeting/report/report2', 2, 'กราฟรายงานสรุปการจองห้องประชุมแบ่งตามเดือน', NULL, NULL, 1441475339, 1441475339),
('meeting/report/report3', 2, 'ตารางรายงานการจองห้องประชุมแบ่งรายเดือน', NULL, NULL, 1441475339, 1441475339),
('meeting/room/create', 2, 'เพิ่มห้องประชุม', NULL, NULL, 1441475339, 1441475339),
('meeting/room/delete', 2, 'ลบห้องประชุม', NULL, NULL, 1441475339, 1441475339),
('meeting/room/index', 2, 'รายการห้องประชุม', NULL, NULL, 1441475339, 1441475339),
('meeting/room/update', 2, 'แก้ไขห้องประชุม', NULL, NULL, 1441475339, 1441475339),
('meeting/room/view', 2, 'ดูห้องประชุม', NULL, NULL, 1441475339, 1441475339),
('personal/default/index', 2, 'หน้าหลักโมดูลบุคคล', NULL, NULL, 1441475338, 1441475338),
('personal/person/create', 2, 'เพิ่มบุคคล', NULL, NULL, 1441475338, 1441475338),
('personal/person/delete', 2, 'ลบบุคคล', NULL, NULL, 1441475338, 1441475338),
('personal/person/index', 2, 'รายการบุคคล', NULL, NULL, 1441475338, 1441475338),
('personal/person/update', 2, 'แก้ไขบุคคล', NULL, NULL, 1441475338, 1441475338),
('personal/person/view', 2, 'ดูบุคคล', NULL, NULL, 1441475338, 1441475338),
('staff', 1, NULL, NULL, NULL, 1441476233, 1441476233),
('updateOwnPost', 2, 'ปรับปรุงการโพสของตัวเอง', 'isStaff', NULL, 1441477830, 1441477830),
('user', 1, NULL, NULL, NULL, 1441476232, 1441476232);

-- --------------------------------------------------------

--
-- Table structure for table `auth_item_child`
--

CREATE TABLE IF NOT EXISTS `auth_item_child` (
  `parent` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `child` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`parent`,`child`),
  KEY `child` (`child`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `auth_item_child`
--

INSERT INTO `auth_item_child` (`parent`, `child`) VALUES
('admin', 'meeting/equipment/create'),
('admin', 'meeting/equipment/delete'),
('user', 'meeting/equipment/index'),
('admin', 'meeting/equipment/update'),
('user', 'meeting/equipment/view'),
('staff', 'meeting/meeting/create'),
('admin', 'meeting/meeting/delete'),
('user', 'meeting/meeting/index'),
('admin', 'meeting/meeting/update'),
('updateOwnPost', 'meeting/meeting/update'),
('user', 'meeting/meeting/view'),
('user', 'meeting/report/report1'),
('user', 'meeting/report/report2'),
('user', 'meeting/report/report3'),
('admin', 'meeting/room/create'),
('admin', 'meeting/room/delete'),
('user', 'meeting/room/index'),
('admin', 'meeting/room/update'),
('user', 'meeting/room/view'),
('user', 'personal/default/index'),
('admin', 'personal/person/create'),
('admin', 'personal/person/delete'),
('user', 'personal/person/index'),
('admin', 'personal/person/update'),
('user', 'personal/person/view'),
('admin', 'staff'),
('staff', 'updateOwnPost'),
('staff', 'user');

-- --------------------------------------------------------

--
-- Table structure for table `auth_rule`
--

CREATE TABLE IF NOT EXISTS `auth_rule` (
  `name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `data` text COLLATE utf8_unicode_ci,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `auth_rule`
--

INSERT INTO `auth_rule` (`name`, `data`, `created_at`, `updated_at`) VALUES
('isStaff', 'O:27:"common\\components\\StaffRule":3:{s:4:"name";s:7:"isStaff";s:9:"createdAt";i:1441477830;s:9:"updatedAt";i:1441477830;}', 1441477830, 1441477830);

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE IF NOT EXISTS `department` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `department` varchar(100) NOT NULL COMMENT 'ฝ่าย',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='ฝ่าย' AUTO_INCREMENT=3 ;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`id`, `department`) VALUES
(1, 'บริหาร'),
(2, 'ทะเบียน');

-- --------------------------------------------------------

--
-- Table structure for table `equipment`
--

CREATE TABLE IF NOT EXISTS `equipment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `equipment` varchar(100) NOT NULL COMMENT 'อุปกรณ์',
  `description` text NOT NULL COMMENT 'รายละเอียด',
  `photo` varchar(100) NOT NULL COMMENT 'รูปอุปกรณ์',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='อุปกรณ์' AUTO_INCREMENT=3 ;

--
-- Dumping data for table `equipment`
--

INSERT INTO `equipment` (`id`, `equipment`, `description`, `photo`) VALUES
(1, 'คอมพิวเตอร์ Notebook ASUS', 'หมายเลขทะเบียน A12345', 'asus-notebook.jpg'),
(2, 'คอมพิวเตอร์ Notebook HP', 'คอมพิวเตอร์ Notebook HP', 'hp-notebook.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `meeting`
--

CREATE TABLE IF NOT EXISTS `meeting` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(45) NOT NULL COMMENT 'เรื่อง',
  `description` text NOT NULL COMMENT 'รายละเอียด',
  `date_start` datetime NOT NULL COMMENT 'เริ่ม',
  `date_end` datetime NOT NULL COMMENT 'สิ้นสุด',
  `created_at` datetime DEFAULT NULL COMMENT 'เพิ่มเมื่อ',
  `updated_at` datetime DEFAULT NULL COMMENT 'แก้ไขเมื่อ',
  `room_id` int(11) NOT NULL COMMENT 'ห้องประชุม',
  `user_id` int(11) NOT NULL COMMENT 'ผู้จอง',
  `status` enum('0','1','2') NOT NULL DEFAULT '0' COMMENT 'สถานะ',
  PRIMARY KEY (`id`),
  KEY `fk_meeting_room1_idx` (`room_id`),
  KEY `fk_meeting_person1_idx` (`user_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='การจอง' AUTO_INCREMENT=7 ;

--
-- Dumping data for table `meeting`
--

INSERT INTO `meeting` (`id`, `title`, `description`, `date_start`, `date_end`, `created_at`, `updated_at`, `room_id`, `user_id`, `status`) VALUES
(2, 'อบรม Yii Framework 2 Step by Step : Workshop', 'อบรม Yii Framework 2 แบบเริ่มต้นจนทำ Web Application ได้', '2015-09-14 09:00:00', '2015-09-16 16:00:00', '2015-09-04 10:28:40', '2015-09-04 12:12:40', 1, 1, '0'),
(3, 'อบรม Microsoft Excel 2013 ฉบับฐานข้อมูล', 'อบรม Microsoft Excel 2013 ฉบับฐานข้อมูล', '2015-09-17 09:00:00', '2015-09-18 16:00:00', '2015-09-04 11:41:22', '2015-09-04 11:41:22', 1, 1, '0'),
(4, 'อบรม Microsoft Excel 2013 ฉบับฐานข้อมูล', 'อบรม Microsoft Excel 2013 ฉบับฐานข้อมูล', '2015-09-22 09:00:00', '2015-09-23 16:00:00', '2015-09-04 22:14:45', '2015-09-04 22:14:45', 2, 1, '0'),
(5, 'อบรม Microsoft Excel 2013 ฉบับฐานข้อมูล', 'อบรม Microsoft Excel 2013 ฉบับฐานข้อมูล', '2015-09-30 09:00:00', '2015-10-01 16:00:00', '2015-09-04 22:15:14', '2015-09-04 22:15:14', 3, 1, '0'),
(6, 'การพัฒนา Web Application ด้วย PDO สำหรับ PHP', 'การพัฒนา Web Application ด้วย PDO สำหรับ PHP', '2015-09-28 09:00:00', '2015-09-30 16:00:00', '2015-09-06 01:47:44', '2015-09-06 01:47:44', 2, 3, '0');

-- --------------------------------------------------------

--
-- Table structure for table `migration`
--

CREATE TABLE IF NOT EXISTS `migration` (
  `version` varchar(180) NOT NULL,
  `apply_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `migration`
--

INSERT INTO `migration` (`version`, `apply_time`) VALUES
('m000000_000000_base', 1441256759),
('m130524_201442_init', 1441256782),
('m140506_102106_rbac_init', 1441473083);

-- --------------------------------------------------------

--
-- Table structure for table `person`
--

CREATE TABLE IF NOT EXISTS `person` (
  `user_id` int(11) NOT NULL,
  `firstname` varchar(100) NOT NULL COMMENT 'ชื่อ',
  `lastname` varchar(100) NOT NULL COMMENT 'นามสกุล',
  `photo` varchar(100) NOT NULL DEFAULT 'nopic.jpg' COMMENT 'รูปภาพ',
  `address` text COMMENT 'ที่อยู่',
  `tel` varchar(45) DEFAULT NULL COMMENT 'เบอร์โทร',
  `department_id` int(11) NOT NULL COMMENT 'ฝ่าย',
  PRIMARY KEY (`user_id`),
  KEY `fk_person_department1_idx` (`department_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='บุคคล';

--
-- Dumping data for table `person`
--

INSERT INTO `person` (`user_id`, `firstname`, `lastname`, `photo`, `address`, `tel`, `department_id`) VALUES
(1, 'Admin', 'Admin', '1.jpg', 'ที่อยุ่', '081234567', 1),
(2, 'Demo', 'Demo', '2.jpg', 'Demo', '081234567', 1),
(3, 'Staff', 'Staff', '3.jpg', 'Staff', '081234567', 2);

-- --------------------------------------------------------

--
-- Table structure for table `room`
--

CREATE TABLE IF NOT EXISTS `room` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL COMMENT 'ชื่อห้อง',
  `description` text NOT NULL COMMENT 'รายละเอียด',
  `photo` varchar(100) NOT NULL COMMENT 'รูปภาพ',
  `color` varchar(7) NOT NULL COMMENT 'สีประจำห้อง',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='ห้องประชุม' AUTO_INCREMENT=4 ;

--
-- Dumping data for table `room`
--

INSERT INTO `room` (`id`, `name`, `description`, `photo`, `color`) VALUES
(1, 'สุพรรณหงส์', 'สุพรรณหงส์', '1.jpg', '#ff9900'),
(2, 'กฤษณา', 'ห้องประชุมกฤษณา', '3.jpg', '#ff0000'),
(3, 'อโยธยา', 'ห้องประชุมอโยธยา', '7.jpg', '#9900ff');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `auth_key` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `password_hash` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password_reset_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` smallint(6) NOT NULL DEFAULT '10',
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `password_reset_token` (`password_reset_token`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=4 ;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `auth_key`, `password_hash`, `password_reset_token`, `email`, `status`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'pzfUYamV2VV5Wi_D4sTUUJT1glzRyaGi', '$2y$13$neosogwnfvi/zmXXynmIfe4qnKSk44IWR9lM6Ks/qdCiamBP8Mjxu', NULL, 'admin@admin.com', 10, 1441256821, 1441476585),
(2, 'demo', 'xys-QgEyukr6ul9vwK2D0-RUL1roFWuC', '$2y$13$w7Gmk4W7konCZCy5HZHq6u8unP90cHH3/R4yp28GlW2gtanbBMQju', NULL, 'demo@demo.com', 10, 1441267873, 1441268963),
(3, 'staff', 'e8eU85wdPB_HHae82s3qp4rEHjJs5gcE', '$2y$13$EBTu0o08F4sy5P0sAxswvOCIxgNB/czm0ZbwngI1./7XLCypEMgMO', NULL, 'staff@staff.com', 10, 1441476538, 1441476538);

-- --------------------------------------------------------

--
-- Table structure for table `uses`
--

CREATE TABLE IF NOT EXISTS `uses` (
  `meeting_id` int(11) NOT NULL COMMENT 'การจอง',
  `equipment_id` int(11) NOT NULL COMMENT 'อุปกรณ์',
  PRIMARY KEY (`meeting_id`,`equipment_id`),
  KEY `fk_meeting_has_equipment_equipment1_idx` (`equipment_id`),
  KEY `fk_meeting_has_equipment_meeting1_idx` (`meeting_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='ใช้อุปกรณ์';

--
-- Dumping data for table `uses`
--

INSERT INTO `uses` (`meeting_id`, `equipment_id`) VALUES
(2, 1),
(5, 1),
(6, 1),
(3, 2),
(4, 2);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_assignment`
--
ALTER TABLE `auth_assignment`
  ADD CONSTRAINT `auth_assignment_ibfk_1` FOREIGN KEY (`item_name`) REFERENCES `auth_item` (`name`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `auth_item`
--
ALTER TABLE `auth_item`
  ADD CONSTRAINT `auth_item_ibfk_1` FOREIGN KEY (`rule_name`) REFERENCES `auth_rule` (`name`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `auth_item_child`
--
ALTER TABLE `auth_item_child`
  ADD CONSTRAINT `auth_item_child_ibfk_1` FOREIGN KEY (`parent`) REFERENCES `auth_item` (`name`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `auth_item_child_ibfk_2` FOREIGN KEY (`child`) REFERENCES `auth_item` (`name`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `meeting`
--
ALTER TABLE `meeting`
  ADD CONSTRAINT `fk_meeting_person1` FOREIGN KEY (`user_id`) REFERENCES `person` (`user_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_meeting_room1` FOREIGN KEY (`room_id`) REFERENCES `room` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `person`
--
ALTER TABLE `person`
  ADD CONSTRAINT `fk_person_department1` FOREIGN KEY (`department_id`) REFERENCES `department` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_person_user` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `uses`
--
ALTER TABLE `uses`
  ADD CONSTRAINT `fk_meeting_has_equipment_equipment1` FOREIGN KEY (`equipment_id`) REFERENCES `equipment` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_meeting_has_equipment_meeting1` FOREIGN KEY (`meeting_id`) REFERENCES `meeting` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
