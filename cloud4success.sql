-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 14, 2022 at 06:32 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.0.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cloud4success`
--

-- --------------------------------------------------------

--
-- Table structure for table `addresses`
--

CREATE TABLE `addresses` (
  `id` int(11) NOT NULL,
  `ownerId` int(11) DEFAULT NULL,
  `countryCode` varchar(255) NOT NULL,
  `administrativeArea` varchar(255) DEFAULT NULL,
  `locality` varchar(255) DEFAULT NULL,
  `dependentLocality` varchar(255) DEFAULT NULL,
  `postalCode` varchar(255) DEFAULT NULL,
  `sortingCode` varchar(255) DEFAULT NULL,
  `addressLine1` varchar(255) DEFAULT NULL,
  `addressLine2` varchar(255) DEFAULT NULL,
  `organization` varchar(255) DEFAULT NULL,
  `organizationTaxId` varchar(255) DEFAULT NULL,
  `fullName` varchar(255) DEFAULT NULL,
  `firstName` varchar(255) DEFAULT NULL,
  `lastName` varchar(255) DEFAULT NULL,
  `latitude` varchar(255) DEFAULT NULL,
  `longitude` varchar(255) DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `announcements`
--

CREATE TABLE `announcements` (
  `id` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `pluginId` int(11) DEFAULT NULL,
  `heading` varchar(255) NOT NULL,
  `body` text NOT NULL,
  `unread` tinyint(1) NOT NULL DEFAULT 1,
  `dateRead` datetime DEFAULT NULL,
  `dateCreated` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `assetindexdata`
--

CREATE TABLE `assetindexdata` (
  `id` int(11) NOT NULL,
  `sessionId` int(11) NOT NULL,
  `volumeId` int(11) NOT NULL,
  `uri` text DEFAULT NULL,
  `size` bigint(20) UNSIGNED DEFAULT NULL,
  `timestamp` datetime DEFAULT NULL,
  `isDir` tinyint(1) DEFAULT 0,
  `recordId` int(11) DEFAULT NULL,
  `isSkipped` tinyint(1) DEFAULT 0,
  `inProgress` tinyint(1) DEFAULT 0,
  `completed` tinyint(1) DEFAULT 0,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `assetindexingsessions`
--

CREATE TABLE `assetindexingsessions` (
  `id` int(11) NOT NULL,
  `indexedVolumes` text DEFAULT NULL,
  `totalEntries` int(11) DEFAULT NULL,
  `processedEntries` int(11) NOT NULL DEFAULT 0,
  `cacheRemoteImages` tinyint(1) DEFAULT NULL,
  `isCli` tinyint(1) DEFAULT 0,
  `actionRequired` tinyint(1) DEFAULT 0,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `assets`
--

CREATE TABLE `assets` (
  `id` int(11) NOT NULL,
  `volumeId` int(11) DEFAULT NULL,
  `folderId` int(11) NOT NULL,
  `uploaderId` int(11) DEFAULT NULL,
  `filename` varchar(255) NOT NULL,
  `kind` varchar(50) NOT NULL DEFAULT 'unknown',
  `alt` text DEFAULT NULL,
  `width` int(11) UNSIGNED DEFAULT NULL,
  `height` int(11) UNSIGNED DEFAULT NULL,
  `size` bigint(20) UNSIGNED DEFAULT NULL,
  `focalPoint` varchar(13) DEFAULT NULL,
  `deletedWithVolume` tinyint(1) DEFAULT NULL,
  `keptFile` tinyint(1) DEFAULT NULL,
  `dateModified` datetime DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `assets`
--

INSERT INTO `assets` (`id`, `volumeId`, `folderId`, `uploaderId`, `filename`, `kind`, `alt`, `width`, `height`, `size`, `focalPoint`, `deletedWithVolume`, `keptFile`, `dateModified`, `dateCreated`, `dateUpdated`) VALUES
(62, 1, 1, 1, 'craft.jpg', 'image', NULL, 310, 163, 3285, NULL, NULL, NULL, '2022-07-12 16:45:08', '2022-07-12 16:45:08', '2022-07-12 16:45:08'),
(351, 1, 1, 1, 'icon_teams.png', 'image', NULL, 100, 102, 5399, NULL, NULL, NULL, '2022-07-14 14:35:51', '2022-07-14 14:35:51', '2022-07-14 14:35:51'),
(383, 1, 1, 1, 'icon_excel.png', 'image', NULL, 100, 102, 3853, NULL, NULL, NULL, '2022-07-14 15:24:07', '2022-07-14 15:24:07', '2022-07-14 15:24:07'),
(384, 1, 1, 1, 'icon_forms.png', 'image', NULL, 51, 47, 1323, NULL, NULL, NULL, '2022-07-14 15:24:07', '2022-07-14 15:24:07', '2022-07-14 15:24:07'),
(385, 1, 1, 1, 'icon_office.png', 'image', NULL, 50, 50, 1858, NULL, NULL, NULL, '2022-07-14 15:24:07', '2022-07-14 15:24:07', '2022-07-14 15:24:07'),
(386, 1, 1, 1, 'icon_onedrive.png', 'image', NULL, 100, 64, 2377, NULL, NULL, NULL, '2022-07-14 15:24:08', '2022-07-14 15:24:08', '2022-07-14 15:24:08'),
(387, 1, 1, 1, 'icon_onenote.png', 'image', NULL, 108, 102, 2350, NULL, NULL, NULL, '2022-07-14 15:24:08', '2022-07-14 15:24:08', '2022-07-14 15:24:08'),
(388, 1, 1, 1, 'icon_outlook.png', 'image', NULL, 100, 95, 4969, NULL, NULL, NULL, '2022-07-14 15:24:08', '2022-07-14 15:24:08', '2022-07-14 15:24:08'),
(389, 1, 1, 1, 'icon_planner.png', 'image', NULL, 84, 102, 709, NULL, NULL, NULL, '2022-07-14 15:24:09', '2022-07-14 15:24:09', '2022-07-14 15:24:09'),
(390, 1, 1, 1, 'icon_sharepoint.png', 'image', NULL, 100, 98, 4163, NULL, NULL, NULL, '2022-07-14 15:24:09', '2022-07-14 15:24:09', '2022-07-14 15:24:09'),
(391, 1, 1, 1, 'icon_word.png', 'image', NULL, 100, 102, 4017, NULL, NULL, NULL, '2022-07-14 15:24:09', '2022-07-14 15:24:09', '2022-07-14 15:24:09'),
(508, 1, 1, 1, 'icon_todo.png', 'image', NULL, 50, 42, 1319, NULL, NULL, NULL, '2022-07-14 15:31:33', '2022-07-14 15:31:33', '2022-07-14 15:31:33'),
(538, 1, 1, 1, 'image_jobs1.jpg', 'image', NULL, 1240, 920, 87205, NULL, NULL, NULL, '2022-07-14 15:54:40', '2022-07-14 15:54:40', '2022-07-14 15:54:40'),
(543, 1, 1, 1, 'image_workplace2-p-500.jpeg', 'image', NULL, 500, 371, 28274, NULL, NULL, NULL, '2022-07-14 16:20:20', '2022-07-14 16:20:20', '2022-07-14 16:20:20'),
(567, 1, 1, 1, 'Image-1-min.png', 'image', NULL, 931, 691, 715634, NULL, NULL, NULL, '2022-07-14 16:26:16', '2022-07-14 16:26:16', '2022-07-14 16:26:16');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `groupId` int(11) NOT NULL,
  `parentId` int(11) DEFAULT NULL,
  `deletedWithGroup` tinyint(1) DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `groupId`, `parentId`, `deletedWithGroup`, `dateCreated`, `dateUpdated`) VALUES
(55, 1, NULL, NULL, '2022-07-12 16:27:06', '2022-07-12 16:27:06'),
(76, 2, NULL, NULL, '2022-07-12 16:55:46', '2022-07-12 16:55:46');

-- --------------------------------------------------------

--
-- Table structure for table `categorygroups`
--

CREATE TABLE `categorygroups` (
  `id` int(11) NOT NULL,
  `structureId` int(11) NOT NULL,
  `fieldLayoutId` int(11) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `handle` varchar(255) NOT NULL,
  `defaultPlacement` enum('beginning','end') NOT NULL DEFAULT 'end',
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `dateDeleted` datetime DEFAULT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `categorygroups`
--

INSERT INTO `categorygroups` (`id`, `structureId`, `fieldLayoutId`, `name`, `handle`, `defaultPlacement`, `dateCreated`, `dateUpdated`, `dateDeleted`, `uid`) VALUES
(1, 1, 12, 'Blog Category', 'blogCategory', 'end', '2022-07-09 03:44:40', '2022-07-09 03:44:40', NULL, '7b44a9da-6f5d-4f88-a792-23abfa8d885f'),
(2, 2, 13, 'Story Company', 'storyCompany', 'end', '2022-07-09 03:53:41', '2022-07-09 03:53:41', NULL, '3d8e84b0-a04d-41aa-b0b1-03a2b6171be0'),
(3, 3, 18, 'Software Category', 'softwareCategory', 'end', '2022-07-09 07:29:15', '2022-07-09 07:29:15', NULL, '8bbb286a-ac71-4e2a-8a91-3dbff9e26b3d');

-- --------------------------------------------------------

--
-- Table structure for table `categorygroups_sites`
--

CREATE TABLE `categorygroups_sites` (
  `id` int(11) NOT NULL,
  `groupId` int(11) NOT NULL,
  `siteId` int(11) NOT NULL,
  `hasUrls` tinyint(1) NOT NULL DEFAULT 1,
  `uriFormat` text DEFAULT NULL,
  `template` varchar(500) DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `categorygroups_sites`
--

INSERT INTO `categorygroups_sites` (`id`, `groupId`, `siteId`, `hasUrls`, `uriFormat`, `template`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 1, 1, 0, NULL, NULL, '2022-07-09 03:44:40', '2022-07-09 03:44:40', 'b28c5b94-51db-479e-9194-a071c7f77dde'),
(2, 2, 1, 0, NULL, NULL, '2022-07-09 03:53:41', '2022-07-09 03:53:41', 'e70573ef-5c62-47ad-9909-64b1cc6e0802'),
(3, 3, 1, 0, NULL, NULL, '2022-07-09 07:29:15', '2022-07-09 07:29:15', '66537501-a36c-4116-bf29-b14a5dfbd8bd');

-- --------------------------------------------------------

--
-- Table structure for table `changedattributes`
--

CREATE TABLE `changedattributes` (
  `elementId` int(11) NOT NULL,
  `siteId` int(11) NOT NULL,
  `attribute` varchar(255) NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `propagated` tinyint(1) NOT NULL,
  `userId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `changedattributes`
--

INSERT INTO `changedattributes` (`elementId`, `siteId`, `attribute`, `dateUpdated`, `propagated`, `userId`) VALUES
(13, 1, 'title', '2022-07-08 15:43:26', 0, 1),
(13, 1, 'uri', '2022-07-13 16:28:41', 0, 1),
(19, 1, 'uri', '2022-07-13 18:26:41', 0, 1),
(22, 1, 'authorId', '2022-07-09 03:40:56', 0, 1),
(22, 1, 'uri', '2022-07-09 02:22:54', 0, 1),
(29, 1, 'slug', '2022-07-09 03:57:12', 0, 1),
(29, 1, 'uri', '2022-07-09 03:57:12', 0, 1),
(32, 1, 'postDate', '2022-07-11 14:10:15', 0, 1),
(32, 1, 'slug', '2022-07-14 16:20:47', 0, 1),
(32, 1, 'title', '2022-07-14 16:20:47', 0, 1),
(32, 1, 'uri', '2022-07-11 14:10:15', 0, 1),
(42, 1, 'postDate', '2022-07-11 12:31:31', 0, 1),
(42, 1, 'slug', '2022-07-14 15:24:15', 0, 1),
(42, 1, 'title', '2022-07-14 15:22:32', 0, 1),
(42, 1, 'uri', '2022-07-12 17:57:08', 0, 1),
(51, 1, 'postDate', '2022-07-11 16:06:32', 0, 1),
(51, 1, 'slug', '2022-07-14 16:23:40', 0, 1),
(51, 1, 'title', '2022-07-14 16:23:40', 0, 1),
(51, 1, 'uri', '2022-07-11 16:06:31', 0, 1),
(53, 1, 'postDate', '2022-07-11 16:13:58', 0, 1),
(53, 1, 'slug', '2022-07-14 16:20:24', 0, 1),
(53, 1, 'title', '2022-07-14 16:20:24', 0, 1),
(53, 1, 'uri', '2022-07-11 16:13:53', 0, 1),
(55, 1, 'slug', '2022-07-12 16:27:09', 0, 1),
(55, 1, 'title', '2022-07-12 16:27:09', 0, 1),
(76, 1, 'slug', '2022-07-12 16:55:51', 0, 1),
(76, 1, 'title', '2022-07-12 16:55:51', 0, 1),
(168, 1, 'slug', '2022-07-14 15:55:29', 0, 1),
(168, 1, 'title', '2022-07-14 15:55:29', 0, 1),
(170, 1, 'slug', '2022-07-14 15:54:59', 0, 1),
(170, 1, 'title', '2022-07-14 15:54:59', 0, 1),
(198, 1, 'slug', '2022-07-14 16:23:22', 0, 1),
(198, 1, 'title', '2022-07-14 16:23:22', 0, 1),
(200, 1, 'slug', '2022-07-14 16:22:50', 0, 1),
(200, 1, 'title', '2022-07-14 16:22:50', 0, 1),
(210, 1, 'slug', '2022-07-14 16:21:12', 0, 1),
(210, 1, 'title', '2022-07-14 16:21:12', 0, 1),
(224, 1, 'slug', '2022-07-14 15:34:09', 0, 1),
(224, 1, 'title', '2022-07-14 15:27:27', 0, 1),
(234, 1, 'slug', '2022-07-14 15:25:06', 0, 1),
(234, 1, 'title', '2022-07-14 15:25:06', 0, 1),
(234, 1, 'uri', '2022-07-14 14:49:12', 0, 1),
(244, 1, 'slug', '2022-07-14 15:26:05', 0, 1),
(244, 1, 'title', '2022-07-14 15:26:05', 0, 1),
(417, 1, 'slug', '2022-07-14 15:31:44', 0, 1),
(417, 1, 'title', '2022-07-14 15:31:44', 0, 1),
(427, 1, 'slug', '2022-07-14 15:29:53', 0, 1),
(427, 1, 'title', '2022-07-14 15:29:53', 0, 1),
(437, 1, 'slug', '2022-07-14 15:29:14', 0, 1),
(437, 1, 'title', '2022-07-14 15:29:14', 0, 1),
(447, 1, 'slug', '2022-07-14 15:28:28', 0, 1),
(447, 1, 'title', '2022-07-14 15:28:28', 0, 1),
(457, 1, 'slug', '2022-07-14 15:28:02', 0, 1),
(457, 1, 'title', '2022-07-14 15:28:02', 0, 1),
(521, 1, 'slug', '2022-07-14 15:44:08', 0, 1),
(521, 1, 'title', '2022-07-14 15:44:08', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `changedfields`
--

CREATE TABLE `changedfields` (
  `elementId` int(11) NOT NULL,
  `siteId` int(11) NOT NULL,
  `fieldId` int(11) NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `propagated` tinyint(1) NOT NULL,
  `userId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `changedfields`
--

INSERT INTO `changedfields` (`elementId`, `siteId`, `fieldId`, `dateUpdated`, `propagated`, `userId`) VALUES
(5, 1, 1, '2022-07-14 16:30:11', 0, 1),
(5, 1, 2, '2022-07-13 16:05:11', 0, 1),
(5, 1, 3, '2022-07-14 16:30:11', 0, 1),
(5, 1, 21, '2022-07-13 16:02:22', 0, 1),
(5, 1, 33, '2022-07-13 16:07:48', 0, 1),
(10, 1, 1, '2022-07-13 16:20:08', 0, 1),
(10, 1, 2, '2022-07-13 16:20:08', 0, 1),
(10, 1, 3, '2022-07-14 16:26:20', 0, 1),
(10, 1, 33, '2022-07-14 16:26:20', 0, 1),
(22, 1, 5, '2022-07-12 16:45:31', 0, 1),
(22, 1, 6, '2022-07-12 16:45:55', 0, 1),
(29, 1, 4, '2022-07-09 03:57:12', 0, 1),
(32, 1, 2, '2022-07-12 18:41:33', 0, 1),
(32, 1, 10, '2022-07-12 18:39:02', 0, 1),
(32, 1, 13, '2022-07-13 16:01:47', 0, 1),
(32, 1, 33, '2022-07-12 18:39:02', 0, 1),
(33, 1, 14, '2022-07-12 18:39:02', 0, 1),
(33, 1, 15, '2022-07-12 18:39:02', 0, 1),
(33, 1, 16, '2022-07-12 18:39:02', 0, 1),
(33, 1, 17, '2022-07-12 18:39:02', 0, 1),
(33, 1, 28, '2022-07-13 16:01:47', 0, 1),
(34, 1, 30, '2022-07-12 18:39:02', 0, 1),
(35, 1, 11, '2022-07-12 18:39:02', 0, 1),
(35, 1, 12, '2022-07-12 18:39:02', 0, 1),
(42, 1, 1, '2022-07-12 17:57:08', 0, 1),
(42, 1, 2, '2022-07-12 17:57:08', 0, 1),
(42, 1, 3, '2022-07-14 15:24:15', 0, 1),
(42, 1, 10, '2022-07-14 14:21:42', 0, 1),
(42, 1, 21, '2022-07-14 15:22:32', 0, 1),
(42, 1, 33, '2022-07-14 15:24:15', 0, 1),
(43, 1, 22, '2022-07-12 18:04:11', 0, 1),
(43, 1, 23, '2022-07-14 15:22:32', 0, 1),
(43, 1, 25, '2022-07-14 15:22:32', 0, 1),
(51, 1, 1, '2022-07-13 16:25:49', 0, 1),
(51, 1, 2, '2022-07-12 16:53:04', 0, 1),
(51, 1, 3, '2022-07-14 16:25:49', 0, 1),
(51, 1, 4, '2022-07-12 16:53:04', 0, 1),
(51, 1, 9, '2022-07-12 16:55:56', 0, 1),
(53, 1, 1, '2022-07-14 16:20:24', 0, 1),
(53, 1, 3, '2022-07-14 16:20:24', 0, 1),
(53, 1, 4, '2022-07-12 16:42:54', 0, 1),
(53, 1, 7, '2022-07-11 16:13:57', 0, 1),
(53, 1, 8, '2022-07-12 16:28:07', 0, 1),
(82, 1, 11, '2022-07-12 18:16:04', 0, 1),
(82, 1, 12, '2022-07-12 18:16:04', 0, 1),
(168, 1, 1, '2022-07-14 15:55:29', 0, 1),
(170, 1, 1, '2022-07-14 15:54:59', 0, 1),
(170, 1, 3, '2022-07-14 15:54:59', 0, 1),
(174, 1, 22, '2022-07-13 16:02:22', 0, 1),
(174, 1, 23, '2022-07-13 16:02:22', 0, 1),
(174, 1, 25, '2022-07-13 16:02:22', 0, 1),
(198, 1, 1, '2022-07-14 16:23:22', 0, 1),
(198, 1, 3, '2022-07-14 16:25:40', 0, 1),
(200, 1, 1, '2022-07-14 16:22:50', 0, 1),
(200, 1, 3, '2022-07-14 16:25:28', 0, 1),
(224, 1, 3, '2022-07-14 14:36:18', 0, 1),
(224, 1, 10, '2022-07-14 14:21:42', 0, 1),
(224, 1, 21, '2022-07-14 14:36:18', 0, 1),
(224, 1, 33, '2022-07-14 15:34:09', 0, 1),
(225, 1, 22, '2022-07-14 14:36:18', 0, 1),
(225, 1, 23, '2022-07-14 14:36:18', 0, 1),
(225, 1, 25, '2022-07-14 14:36:18', 0, 1),
(234, 1, 3, '2022-07-14 15:25:06', 0, 1),
(234, 1, 10, '2022-07-14 14:21:43', 0, 1),
(234, 1, 21, '2022-07-14 15:25:06', 0, 1),
(234, 1, 33, '2022-07-14 15:25:06', 0, 1),
(235, 1, 23, '2022-07-14 15:25:06', 0, 1),
(235, 1, 25, '2022-07-14 15:25:06', 0, 1),
(244, 1, 3, '2022-07-14 15:26:05', 0, 1),
(244, 1, 10, '2022-07-14 14:21:43', 0, 1),
(244, 1, 21, '2022-07-14 15:26:05', 0, 1),
(244, 1, 33, '2022-07-14 15:26:05', 0, 1),
(245, 1, 23, '2022-07-14 15:26:05', 0, 1),
(245, 1, 25, '2022-07-14 15:26:05', 0, 1),
(254, 1, 3, '2022-07-14 14:21:43', 0, 1),
(254, 1, 10, '2022-07-14 14:21:43', 0, 1),
(254, 1, 21, '2022-07-14 14:21:43', 0, 1),
(254, 1, 33, '2022-07-14 14:21:43', 0, 1),
(264, 1, 3, '2022-07-14 14:21:43', 0, 1),
(264, 1, 10, '2022-07-14 14:21:43', 0, 1),
(264, 1, 21, '2022-07-14 14:21:43', 0, 1),
(264, 1, 33, '2022-07-14 14:21:43', 0, 1),
(274, 1, 3, '2022-07-14 14:21:43', 0, 1),
(274, 1, 10, '2022-07-14 14:21:43', 0, 1),
(274, 1, 21, '2022-07-14 14:21:43', 0, 1),
(274, 1, 33, '2022-07-14 14:21:43', 0, 1),
(284, 1, 3, '2022-07-14 14:21:43', 0, 1),
(284, 1, 10, '2022-07-14 14:21:43', 0, 1),
(284, 1, 21, '2022-07-14 14:21:43', 0, 1),
(284, 1, 33, '2022-07-14 14:21:43', 0, 1),
(294, 1, 3, '2022-07-14 14:21:43', 0, 1),
(294, 1, 10, '2022-07-14 14:21:43', 0, 1),
(294, 1, 21, '2022-07-14 14:21:43', 0, 1),
(294, 1, 33, '2022-07-14 14:21:43', 0, 1),
(322, 1, 1, '2022-07-14 14:12:13', 0, 1),
(322, 1, 10, '2022-07-14 14:12:13', 0, 1),
(417, 1, 3, '2022-07-14 15:31:44', 0, 1),
(417, 1, 21, '2022-07-14 15:31:44', 0, 1),
(417, 1, 33, '2022-07-14 15:31:44', 0, 1),
(418, 1, 23, '2022-07-14 15:31:44', 0, 1),
(418, 1, 25, '2022-07-14 15:31:44', 0, 1),
(427, 1, 3, '2022-07-14 15:29:53', 0, 1),
(427, 1, 21, '2022-07-14 15:29:53', 0, 1),
(427, 1, 33, '2022-07-14 15:29:53', 0, 1),
(428, 1, 23, '2022-07-14 15:29:53', 0, 1),
(428, 1, 25, '2022-07-14 15:29:53', 0, 1),
(437, 1, 3, '2022-07-14 15:29:14', 0, 1),
(437, 1, 21, '2022-07-14 15:29:14', 0, 1),
(437, 1, 33, '2022-07-14 15:29:14', 0, 1),
(438, 1, 23, '2022-07-14 15:29:14', 0, 1),
(438, 1, 25, '2022-07-14 15:29:14', 0, 1),
(447, 1, 3, '2022-07-14 15:28:28', 0, 1),
(447, 1, 21, '2022-07-14 15:28:28', 0, 1),
(447, 1, 33, '2022-07-14 15:28:28', 0, 1),
(448, 1, 23, '2022-07-14 15:28:28', 0, 1),
(448, 1, 25, '2022-07-14 15:28:28', 0, 1),
(457, 1, 3, '2022-07-14 15:28:39', 0, 1),
(457, 1, 21, '2022-07-14 15:28:02', 0, 1),
(457, 1, 33, '2022-07-14 15:28:39', 0, 1),
(458, 1, 23, '2022-07-14 15:28:02', 0, 1),
(458, 1, 25, '2022-07-14 15:28:02', 0, 1),
(521, 1, 33, '2022-07-14 15:44:08', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `content`
--

CREATE TABLE `content` (
  `id` int(11) NOT NULL,
  `elementId` int(11) NOT NULL,
  `siteId` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0',
  `field_postHeadline_lffxpplo` text DEFAULT NULL,
  `field_postShortText_fdqywyjz` text DEFAULT NULL,
  `field_postRichText_khobvvwf` text DEFAULT NULL,
  `field_authorName_jyxeuits` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `content`
--

INSERT INTO `content` (`id`, `elementId`, `siteId`, `title`, `dateCreated`, `dateUpdated`, `uid`, `field_postHeadline_lffxpplo`, `field_postShortText_fdqywyjz`, `field_postRichText_khobvvwf`, `field_authorName_jyxeuits`) VALUES
(1, 1, 1, NULL, '2022-07-08 13:30:51', '2022-07-08 13:30:51', '15de9e36-fb45-4216-a926-458c741b4ed1', NULL, NULL, NULL, NULL),
(2, 2, 1, 'Home', '2022-07-08 13:58:08', '2022-07-13 13:51:04', '7c60710a-1eb0-4bd4-be94-538c3dcab78e', NULL, NULL, NULL, NULL),
(3, 3, 1, 'Home', '2022-07-08 13:58:08', '2022-07-08 13:58:08', '0800928e-228c-4fa5-891e-f2dbbea942db', NULL, NULL, NULL, NULL),
(4, 4, 1, 'Home', '2022-07-08 13:58:08', '2022-07-08 13:58:08', 'e3e13fe3-5c76-4dd8-a509-2f819bd25b61', NULL, NULL, NULL, NULL),
(5, 5, 1, 'Blog Overview', '2022-07-08 15:10:09', '2022-07-14 16:30:11', '63f36908-5e34-4509-8902-1743637e45d3', 'Blog Headline', 'Short Text', NULL, NULL),
(6, 6, 1, 'Blog Overview', '2022-07-08 15:10:09', '2022-07-08 15:10:09', 'a04257b9-98e3-4e5d-9cbe-593ea243fd48', NULL, NULL, NULL, NULL),
(7, 7, 1, 'Blog Overview', '2022-07-08 15:10:09', '2022-07-08 15:10:09', '1053bbcd-a812-4b03-af39-969072108fb9', NULL, NULL, NULL, NULL),
(8, 8, 1, 'Blog Overview', '2022-07-08 15:10:31', '2022-07-08 15:10:31', 'e9f36e38-773d-4211-a4d9-610b3fb3cd7c', NULL, NULL, NULL, NULL),
(9, 9, 1, 'Blog Overview', '2022-07-08 15:10:31', '2022-07-08 15:10:31', 'e33afa29-f016-4f09-be6e-bb9a8462993a', NULL, NULL, NULL, NULL),
(10, 10, 1, 'Stories Overview', '2022-07-08 15:16:48', '2022-07-14 16:26:20', '8384fcb9-55f7-4321-b761-9cd8cfe00e6b', 'Headline', 'Short Text', NULL, NULL),
(11, 11, 1, 'Stories Overview', '2022-07-08 15:16:48', '2022-07-08 15:16:48', 'aa33a65c-0973-41af-be94-f3fc383767cc', NULL, NULL, NULL, NULL),
(12, 12, 1, 'Stories Overview', '2022-07-08 15:16:48', '2022-07-08 15:16:48', '45b4b7a0-eb39-4117-bd0f-648a8b35bce9', NULL, NULL, NULL, NULL),
(13, 13, 1, 'Karriere Overview', '2022-07-08 15:41:35', '2022-07-14 14:57:11', 'ac827f1e-8c30-408a-8869-7d29c6747463', NULL, NULL, NULL, NULL),
(14, 14, 1, 'Carrier Overview', '2022-07-08 15:41:35', '2022-07-08 15:41:35', '38b81505-92f0-4e5c-ba63-ad722eef07ae', NULL, NULL, NULL, NULL),
(15, 15, 1, 'Carrier Overview', '2022-07-08 15:41:35', '2022-07-08 15:41:35', '5baa8cbd-1c47-403a-91fb-eab6bb6028db', NULL, NULL, NULL, NULL),
(16, 16, 1, 'Karriere Overview', '2022-07-08 15:43:26', '2022-07-08 15:43:26', 'b469c06b-a3c8-4bd7-90e1-018c5e7a5ef4', NULL, NULL, NULL, NULL),
(17, 17, 1, 'Karriere Overview', '2022-07-08 15:43:26', '2022-07-08 15:43:26', 'de991169-cd19-425b-9caa-73083e015b96', NULL, NULL, NULL, NULL),
(18, 18, 1, 'Karriere Overview', '2022-07-08 15:43:26', '2022-07-08 15:43:26', '8fd6b247-5dd9-46ce-9894-f498af006eb3', NULL, NULL, NULL, NULL),
(19, 19, 1, 'Software Overview', '2022-07-08 15:46:47', '2022-07-14 14:57:26', '15d1614e-0c5a-4e34-a78a-26f1feda8a42', NULL, NULL, NULL, NULL),
(20, 20, 1, 'Software Overview', '2022-07-08 15:46:47', '2022-07-08 15:46:47', '395be471-7589-4cb9-8ad8-2b32574f56f1', NULL, NULL, NULL, NULL),
(21, 21, 1, 'Software Overview', '2022-07-08 15:46:47', '2022-07-08 15:46:47', 'f8be442e-0b3e-45e2-86cf-c6246ba885b4', NULL, NULL, NULL, NULL),
(22, 22, 1, 'Author', '2022-07-09 02:22:47', '2022-07-12 16:45:55', '81708dfd-2bc8-4545-bc1f-cd664f235e04', NULL, NULL, NULL, 'Amsal Situmorang'),
(23, 23, 1, 'Author', '2022-07-09 02:22:48', '2022-07-09 02:22:48', '55bfd3f6-4241-4ddc-b28d-5ef7f772c3fc', NULL, NULL, NULL, NULL),
(24, 24, 1, 'Author', '2022-07-09 02:22:48', '2022-07-09 02:22:48', '53f43b39-9ac2-412f-bbe0-713447962ccf', NULL, NULL, NULL, NULL),
(25, 25, 1, 'Author', '2022-07-09 02:22:54', '2022-07-09 02:22:54', 'f6bf5319-b875-4f63-ae1a-e1a2df606b6f', NULL, NULL, NULL, NULL),
(26, 26, 1, 'Author', '2022-07-09 02:22:54', '2022-07-09 02:22:54', 'bb999eea-eabf-4d91-b0ae-2b5f4022e3cc', NULL, NULL, NULL, NULL),
(27, 27, 1, 'Author', '2022-07-09 03:40:37', '2022-07-09 03:40:37', '22ceaf48-06cb-4b48-b43a-96827aac5df4', NULL, NULL, NULL, NULL),
(28, 28, 1, NULL, '2022-07-09 03:51:39', '2022-07-09 03:51:39', '965eef12-7e62-4da2-9586-65bae53f4610', NULL, NULL, NULL, NULL),
(29, 29, 1, NULL, '2022-07-09 03:56:02', '2022-07-09 03:57:12', 'c72cff7e-d7b1-487c-8d61-ab5fb329a8c5', NULL, NULL, NULL, NULL),
(30, 30, 1, 'Blog Overview', '2022-07-09 04:52:29', '2022-07-09 04:52:29', '3e49d05f-a8a4-4e50-9f17-b2a872967f5d', NULL, NULL, NULL, NULL),
(31, 31, 1, 'Stories Overview', '2022-07-09 04:52:45', '2022-07-09 04:52:45', '6b135a07-5511-47f9-bfce-3dffd734cbf3', NULL, NULL, NULL, NULL),
(32, 32, 1, 'Job Example', '2022-07-09 07:32:45', '2022-07-14 16:20:47', 'd4a75bec-92a4-457c-9974-eb6f55433ccd', NULL, 'Short Description', NULL, NULL),
(33, 40, 1, 'Home', '2022-07-09 15:18:14', '2022-07-09 15:18:14', 'f97705c6-41cc-4039-a239-ee8953d230d4', NULL, NULL, NULL, NULL),
(34, 41, 1, 'Home', '2022-07-09 15:18:14', '2022-07-09 15:18:14', 'adc42faf-c47a-4397-9400-10bb2c61eab3', NULL, NULL, NULL, NULL),
(35, 42, 1, 'Office', '2022-07-11 12:31:26', '2022-07-14 15:24:15', '7f01e1a0-5849-4443-bd75-4e6f58ada06c', NULL, NULL, NULL, NULL),
(36, 44, 1, 'Test', '2022-07-11 12:31:31', '2022-07-11 12:31:31', '6d032593-e929-4076-9869-5d0dca13a8b7', NULL, NULL, NULL, NULL),
(37, 46, 1, 'test', '2022-07-11 14:10:15', '2022-07-11 14:10:15', '02f08b4e-574c-46e1-937a-faaef8cfb7b3', NULL, NULL, NULL, NULL),
(38, 51, 1, 'Stories Post Example 3', '2022-07-11 16:06:26', '2022-07-14 16:25:49', 'ee738093-c605-4de8-a587-375d18eca3a4', 'Headline 3', 'Short Text', '<h2>What’s a Rich Text element?</h2>\r\n<p>The rich text element allows you to create and format headings, paragraphs, blockquotes, images, and video all in one place instead of having to add and format them individually. Just double-click and easily create content.</p>\r\n<h4>Static and dynamic content editing</h4>\r\n<p>A rich text element can be used with static or dynamic content. For static content, just drop it into any page and begin editing. For dynamic content, add a rich text field to any collection and then connect a rich text element to that field in the settings panel. Voila!</p>\r\n<h4>How to customize formatting for each rich text</h4>\r\n<p>Headings, paragraphs, blockquotes, figures, images, and figure captions can all be styled after a class is added to the rich text element using the \"When inside of\" nested selector system.</p>', NULL),
(39, 52, 1, 'Test', '2022-07-11 16:06:32', '2022-07-11 16:06:32', 'd8290a65-c869-4dad-a9ea-adbcc9084e1a', NULL, NULL, NULL, NULL),
(40, 53, 1, 'BLog Post', '2022-07-11 16:13:48', '2022-07-14 16:20:24', 'b3a0119f-418c-41f2-b630-f7d6b2b234d0', 'BLog Post Headline', NULL, '<h2>What’s a Rich Text element?</h2>\r\n<p>The rich text element allows you to create and format headings, paragraphs, blockquotes, images, and video all in one place instead of having to add and format them individually. Just double-click and easily create content.</p>\r\n<h4>Static and dynamic content editing</h4>\r\n<p>A rich text element can be used with static or dynamic content. For static content, just drop it into any page and begin editing. For dynamic content, add a rich text field to any collection and then connect a rich text element to that field in the settings panel. Voila!</p>\r\n<h4>How to customize formatting for each rich text</h4>\r\n<p>Headings, paragraphs, blockquotes, figures, images, and figure captions can all be styled after a class is added to the rich text element using the \"When inside of\" nested selector system.</p>', NULL),
(41, 54, 1, 'Test', '2022-07-11 16:13:58', '2022-07-11 16:13:58', '31839f19-c8b2-409a-9dbf-347973baacfa', NULL, NULL, NULL, NULL),
(42, 55, 1, 'Category', '2022-07-12 16:27:06', '2022-07-12 16:27:09', 'd383084e-5bd8-4a77-a439-8bb2478314ef', NULL, NULL, NULL, NULL),
(44, 57, 1, 'Test', '2022-07-12 16:28:07', '2022-07-12 16:28:07', '212e023a-b009-4d49-afe1-a808f6cf2a14', NULL, NULL, NULL, NULL),
(46, 59, 1, 'Test', '2022-07-12 16:42:54', '2022-07-12 16:42:54', '2e9a42f7-f5df-4190-b74c-1cdfb485c434', NULL, NULL, '<h2>What’s a Rich Text element?</h2>\r\n<p>The rich text element allows you to create and format headings, paragraphs, blockquotes, images, and video all in one place instead of having to add and format them individually. Just double-click and easily create content.</p>\r\n<h4>Static and dynamic content editing</h4>\r\n<p>A rich text element can be used with static or dynamic content. For static content, just drop it into any page and begin editing. For dynamic content, add a rich text field to any collection and then connect a rich text element to that field in the settings panel. Voila!</p>\r\n<h4>How to customize formatting for each rich text</h4>\r\n<p>Headings, paragraphs, blockquotes, figures, images, and figure captions can all be styled after a class is added to the rich text element using the \"When inside of\" nested selector system.</p>', NULL),
(48, 61, 1, 'Test', '2022-07-12 16:43:03', '2022-07-12 16:43:03', 'f1eb4baa-4f4a-4255-8555-79b6f60ab741', 'This is Headline', NULL, '<h2>What’s a Rich Text element?</h2>\r\n<p>The rich text element allows you to create and format headings, paragraphs, blockquotes, images, and video all in one place instead of having to add and format them individually. Just double-click and easily create content.</p>\r\n<h4>Static and dynamic content editing</h4>\r\n<p>A rich text element can be used with static or dynamic content. For static content, just drop it into any page and begin editing. For dynamic content, add a rich text field to any collection and then connect a rich text element to that field in the settings panel. Voila!</p>\r\n<h4>How to customize formatting for each rich text</h4>\r\n<p>Headings, paragraphs, blockquotes, figures, images, and figure captions can all be styled after a class is added to the rich text element using the \"When inside of\" nested selector system.</p>', NULL),
(49, 62, 1, 'Craft', '2022-07-12 16:45:08', '2022-07-12 16:45:08', '6081ff24-5204-447f-856c-1a41b9e4be0c', NULL, NULL, NULL, NULL),
(51, 64, 1, 'Test', '2022-07-12 16:45:11', '2022-07-12 16:45:11', 'b9a748c3-e65f-4478-887a-4105cfbb3f06', 'This is Headline', NULL, '<h2>What’s a Rich Text element?</h2>\r\n<p>The rich text element allows you to create and format headings, paragraphs, blockquotes, images, and video all in one place instead of having to add and format them individually. Just double-click and easily create content.</p>\r\n<h4>Static and dynamic content editing</h4>\r\n<p>A rich text element can be used with static or dynamic content. For static content, just drop it into any page and begin editing. For dynamic content, add a rich text field to any collection and then connect a rich text element to that field in the settings panel. Voila!</p>\r\n<h4>How to customize formatting for each rich text</h4>\r\n<p>Headings, paragraphs, blockquotes, figures, images, and figure captions can all be styled after a class is added to the rich text element using the \"When inside of\" nested selector system.</p>', NULL),
(53, 66, 1, 'Author', '2022-07-12 16:45:31', '2022-07-12 16:45:31', '18f562d1-12a1-4d93-8612-d50b90d5fc31', NULL, NULL, NULL, 'Amsal Situmorang'),
(55, 68, 1, 'Author', '2022-07-12 16:45:55', '2022-07-12 16:45:55', '66c11a7e-43be-443c-ab6f-d51f435389d8', NULL, NULL, NULL, 'Amsal Situmorang'),
(58, 75, 1, 'Test', '2022-07-12 16:53:04', '2022-07-12 16:53:04', 'eb086b54-f653-4aee-9ed7-5148aae94d1c', 'Headline', 'Short Text', '<h2>What’s a Rich Text element?</h2>\r\n<p>The rich text element allows you to create and format headings, paragraphs, blockquotes, images, and video all in one place instead of having to add and format them individually. Just double-click and easily create content.</p>\r\n<h4>Static and dynamic content editing</h4>\r\n<p>A rich text element can be used with static or dynamic content. For static content, just drop it into any page and begin editing. For dynamic content, add a rich text field to any collection and then connect a rich text element to that field in the settings panel. Voila!</p>\r\n<h4>How to customize formatting for each rich text</h4>\r\n<p>Headings, paragraphs, blockquotes, figures, images, and figure captions can all be styled after a class is added to the rich text element using the \"When inside of\" nested selector system.</p>', NULL),
(59, 76, 1, 'Category', '2022-07-12 16:55:46', '2022-07-12 16:55:53', 'dce8773a-77bd-4c65-b1d9-ab0062d0526a', NULL, NULL, NULL, NULL),
(61, 78, 1, 'Test', '2022-07-12 16:55:56', '2022-07-12 16:55:56', '519c634a-0b7a-439c-8c4d-fa86e2600567', 'Headline', 'Short Text', '<h2>What’s a Rich Text element?</h2>\r\n<p>The rich text element allows you to create and format headings, paragraphs, blockquotes, images, and video all in one place instead of having to add and format them individually. Just double-click and easily create content.</p>\r\n<h4>Static and dynamic content editing</h4>\r\n<p>A rich text element can be used with static or dynamic content. For static content, just drop it into any page and begin editing. For dynamic content, add a rich text field to any collection and then connect a rich text element to that field in the settings panel. Voila!</p>\r\n<h4>How to customize formatting for each rich text</h4>\r\n<p>Headings, paragraphs, blockquotes, figures, images, and figure captions can all be styled after a class is added to the rich text element using the \"When inside of\" nested selector system.</p>', NULL),
(63, 83, 1, 'Test', '2022-07-12 18:04:11', '2022-07-12 18:04:11', '9489e10d-814f-403c-8ca6-27376f7e11bc', NULL, NULL, NULL, NULL),
(65, 121, 1, 'Test', '2022-07-12 18:16:04', '2022-07-12 18:16:04', '60dca263-25bf-48de-bf8d-fff18768db5c', NULL, NULL, NULL, NULL),
(67, 128, 1, 'Test', '2022-07-12 18:26:12', '2022-07-12 18:26:12', 'eb7e076c-bf6c-400b-b09a-ebc19276aa5e', NULL, NULL, NULL, NULL),
(69, 134, 1, 'Test', '2022-07-12 18:33:07', '2022-07-12 18:33:07', 'c17b2398-a3ed-4333-8629-38653dfeea69', NULL, NULL, NULL, NULL),
(70, 139, 1, 'Test', '2022-07-12 18:33:24', '2022-07-12 18:33:24', '948dce67-3828-4e7f-b346-0b53d7cc1e5a', NULL, NULL, NULL, NULL),
(71, 144, 1, 'Test', '2022-07-12 18:34:53', '2022-07-12 18:34:53', '6b574f98-5d00-4313-b5f3-97c0d2a61170', NULL, NULL, NULL, NULL),
(72, 151, 1, 'test', '2022-07-12 18:39:02', '2022-07-12 18:39:02', '09ea9a11-2ec2-4334-99e8-1fe6e4603d1b', NULL, NULL, NULL, NULL),
(74, 157, 1, 'test', '2022-07-12 18:41:33', '2022-07-12 18:41:33', 'd9d4139c-7903-4450-921c-a0c539b18059', NULL, 'Short Description', NULL, NULL),
(76, 163, 1, 'test', '2022-07-12 18:48:25', '2022-07-12 18:48:25', '09c6f867-8021-4eba-a689-9b23f1eca198', NULL, 'Short Description', NULL, NULL),
(77, 167, 1, 'Home', '2022-07-13 13:51:04', '2022-07-13 13:51:04', '261b31ad-841e-48ba-a427-0838797d72ac', NULL, NULL, NULL, NULL),
(78, 168, 1, 'Second Blog Post', '2022-07-13 14:07:46', '2022-07-14 15:55:29', '9de6784f-a335-4a09-a7d3-7110a96dec05', 'Second Blog Post Headline', NULL, '<h2>What’s a Rich Text element?</h2>\r\n<p>The rich text element allows you to create and format headings, paragraphs, blockquotes, images, and video all in one place instead of having to add and format them individually. Just double-click and easily create content.</p>\r\n<h4>Static and dynamic content editing</h4>\r\n<p>A rich text element can be used with static or dynamic content. For static content, just drop it into any page and begin editing. For dynamic content, add a rich text field to any collection and then connect a rich text element to that field in the settings panel. Voila!</p>\r\n<h4>How to customize formatting for each rich text</h4>\r\n<p>Headings, paragraphs, blockquotes, figures, images, and figure captions can all be styled after a class is added to the rich text element using the \"When inside of\" nested selector system.</p>', NULL),
(79, 169, 1, 'Test', '2022-07-13 14:07:46', '2022-07-13 14:07:46', '48cd0c7b-c3a5-4213-8e8c-9c94b62a7210', 'This is Headline', NULL, '<h2>What’s a Rich Text element?</h2>\r\n<p>The rich text element allows you to create and format headings, paragraphs, blockquotes, images, and video all in one place instead of having to add and format them individually. Just double-click and easily create content.</p>\r\n<h4>Static and dynamic content editing</h4>\r\n<p>A rich text element can be used with static or dynamic content. For static content, just drop it into any page and begin editing. For dynamic content, add a rich text field to any collection and then connect a rich text element to that field in the settings panel. Voila!</p>\r\n<h4>How to customize formatting for each rich text</h4>\r\n<p>Headings, paragraphs, blockquotes, figures, images, and figure captions can all be styled after a class is added to the rich text element using the \"When inside of\" nested selector system.</p>', NULL),
(80, 170, 1, 'First Blog Post', '2022-07-13 14:07:48', '2022-07-14 15:54:59', 'f322f98c-eb12-4bad-844a-0f6c9509cbd6', 'First Blog Post Headline', NULL, '<h2>What’s a Rich Text element?</h2>\r\n<p>The rich text element allows you to create and format headings, paragraphs, blockquotes, images, and video all in one place instead of having to add and format them individually. Just double-click and easily create content.</p>\r\n<h4>Static and dynamic content editing</h4>\r\n<p>A rich text element can be used with static or dynamic content. For static content, just drop it into any page and begin editing. For dynamic content, add a rich text field to any collection and then connect a rich text element to that field in the settings panel. Voila!</p>\r\n<h4>How to customize formatting for each rich text</h4>\r\n<p>Headings, paragraphs, blockquotes, figures, images, and figure captions can all be styled after a class is added to the rich text element using the \"When inside of\" nested selector system.</p>', NULL),
(81, 171, 1, 'Test', '2022-07-13 14:07:48', '2022-07-13 14:07:48', 'b7c3d97c-a10d-4a92-95b1-1fb47879ac31', 'This is Headline', NULL, '<h2>What’s a Rich Text element?</h2>\r\n<p>The rich text element allows you to create and format headings, paragraphs, blockquotes, images, and video all in one place instead of having to add and format them individually. Just double-click and easily create content.</p>\r\n<h4>Static and dynamic content editing</h4>\r\n<p>A rich text element can be used with static or dynamic content. For static content, just drop it into any page and begin editing. For dynamic content, add a rich text field to any collection and then connect a rich text element to that field in the settings panel. Voila!</p>\r\n<h4>How to customize formatting for each rich text</h4>\r\n<p>Headings, paragraphs, blockquotes, figures, images, and figure captions can all be styled after a class is added to the rich text element using the \"When inside of\" nested selector system.</p>', NULL),
(83, 175, 1, 'Blog Overview', '2022-07-13 15:58:26', '2022-07-13 15:58:26', '120eae9b-b1fe-489e-abb2-aeae4b5ddcad', NULL, NULL, NULL, NULL),
(85, 179, 1, 'test', '2022-07-13 16:01:47', '2022-07-13 16:01:47', '1f5f1790-cece-4577-b42a-3de993f640b9', NULL, 'Short Description', NULL, NULL),
(87, 185, 1, 'Blog Overview', '2022-07-13 16:02:22', '2022-07-13 16:02:22', 'ed6b9096-75b1-405f-afbc-35daf17faf06', NULL, NULL, NULL, NULL),
(88, 187, 1, 'Blog Overview', '2022-07-13 16:03:02', '2022-07-13 16:03:02', 'fc04ae04-14f6-4a2b-8cc2-1897c96a8365', NULL, NULL, NULL, NULL),
(89, 189, 1, 'Blog Overview', '2022-07-13 16:04:57', '2022-07-13 16:04:57', '77edbc09-adba-4053-8115-befe83ca12fa', NULL, NULL, NULL, NULL),
(91, 191, 1, 'Blog Overview', '2022-07-13 16:05:11', '2022-07-13 16:05:11', '41ec9f15-0855-4d57-8ff3-adf0d5131255', 'Headline', 'Short Text', NULL, NULL),
(93, 193, 1, 'Blog Overview', '2022-07-13 16:07:48', '2022-07-13 16:07:48', '3af383a8-472e-4c17-a5f6-c3c01aa93eec', 'Headline', 'Short Text', NULL, NULL),
(94, 194, 1, 'Stories Overview', '2022-07-13 16:19:37', '2022-07-13 16:19:37', '51e1c560-7f09-4d74-9965-2c8600dbb7b4', NULL, NULL, NULL, NULL),
(95, 195, 1, 'Stories Overview', '2022-07-13 16:19:57', '2022-07-13 16:19:57', 'fab0ed4c-c6aa-4d5f-b56a-b1d1f66f19e1', NULL, NULL, NULL, NULL),
(97, 197, 1, 'Stories Overview', '2022-07-13 16:20:08', '2022-07-13 16:20:08', 'eea5f146-9660-4fc4-9de2-d665fb8ff7f4', 'Headline', 'Short Text', NULL, NULL),
(98, 198, 1, 'Stories Post Example 2', '2022-07-13 16:24:49', '2022-07-14 16:25:40', '76704f05-42c8-422d-bf20-0ee92e5c681e', 'Post Headline 2', 'Short Text', '<h2>What’s a Rich Text element?</h2>\r\n<p>The rich text element allows you to create and format headings, paragraphs, blockquotes, images, and video all in one place instead of having to add and format them individually. Just double-click and easily create content.</p>\r\n<h4>Static and dynamic content editing</h4>\r\n<p>A rich text element can be used with static or dynamic content. For static content, just drop it into any page and begin editing. For dynamic content, add a rich text field to any collection and then connect a rich text element to that field in the settings panel. Voila!</p>\r\n<h4>How to customize formatting for each rich text</h4>\r\n<p>Headings, paragraphs, blockquotes, figures, images, and figure captions can all be styled after a class is added to the rich text element using the \"When inside of\" nested selector system.</p>', NULL),
(99, 199, 1, 'Test', '2022-07-13 16:24:49', '2022-07-13 16:24:49', '47d97ea7-ae23-4de2-8094-2dd5bc76788b', 'Headline', 'Short Text', '<h2>What’s a Rich Text element?</h2>\r\n<p>The rich text element allows you to create and format headings, paragraphs, blockquotes, images, and video all in one place instead of having to add and format them individually. Just double-click and easily create content.</p>\r\n<h4>Static and dynamic content editing</h4>\r\n<p>A rich text element can be used with static or dynamic content. For static content, just drop it into any page and begin editing. For dynamic content, add a rich text field to any collection and then connect a rich text element to that field in the settings panel. Voila!</p>\r\n<h4>How to customize formatting for each rich text</h4>\r\n<p>Headings, paragraphs, blockquotes, figures, images, and figure captions can all be styled after a class is added to the rich text element using the \"When inside of\" nested selector system.</p>', NULL),
(100, 200, 1, 'Stories Post Example 1', '2022-07-13 16:24:51', '2022-07-14 16:25:28', 'b0256132-9c93-4ef1-820b-ad980781c45a', 'Stories Post Example 1', 'Short Text', '<h2>What’s a Rich Text element?</h2>\r\n<p>The rich text element allows you to create and format headings, paragraphs, blockquotes, images, and video all in one place instead of having to add and format them individually. Just double-click and easily create content.</p>\r\n<h4>Static and dynamic content editing</h4>\r\n<p>A rich text element can be used with static or dynamic content. For static content, just drop it into any page and begin editing. For dynamic content, add a rich text field to any collection and then connect a rich text element to that field in the settings panel. Voila!</p>\r\n<h4>How to customize formatting for each rich text</h4>\r\n<p>Headings, paragraphs, blockquotes, figures, images, and figure captions can all be styled after a class is added to the rich text element using the \"When inside of\" nested selector system.</p>', NULL),
(101, 201, 1, 'Test', '2022-07-13 16:24:51', '2022-07-13 16:24:51', '0ddfe9b8-d354-448e-928e-83789db60a49', 'Headline', 'Short Text', '<h2>What’s a Rich Text element?</h2>\r\n<p>The rich text element allows you to create and format headings, paragraphs, blockquotes, images, and video all in one place instead of having to add and format them individually. Just double-click and easily create content.</p>\r\n<h4>Static and dynamic content editing</h4>\r\n<p>A rich text element can be used with static or dynamic content. For static content, just drop it into any page and begin editing. For dynamic content, add a rich text field to any collection and then connect a rich text element to that field in the settings panel. Voila!</p>\r\n<h4>How to customize formatting for each rich text</h4>\r\n<p>Headings, paragraphs, blockquotes, figures, images, and figure captions can all be styled after a class is added to the rich text element using the \"When inside of\" nested selector system.</p>', NULL),
(103, 203, 1, 'Test', '2022-07-13 16:25:37', '2022-07-13 16:25:37', 'e2ae407a-f5e5-4133-b6ff-86743ad43111', 'Headline 1', 'Short Text', '<h2>What’s a Rich Text element?</h2>\r\n<p>The rich text element allows you to create and format headings, paragraphs, blockquotes, images, and video all in one place instead of having to add and format them individually. Just double-click and easily create content.</p>\r\n<h4>Static and dynamic content editing</h4>\r\n<p>A rich text element can be used with static or dynamic content. For static content, just drop it into any page and begin editing. For dynamic content, add a rich text field to any collection and then connect a rich text element to that field in the settings panel. Voila!</p>\r\n<h4>How to customize formatting for each rich text</h4>\r\n<p>Headings, paragraphs, blockquotes, figures, images, and figure captions can all be styled after a class is added to the rich text element using the \"When inside of\" nested selector system.</p>', NULL),
(105, 205, 1, 'Test', '2022-07-13 16:25:43', '2022-07-13 16:25:43', '6a56d141-eb0f-4f58-bbbe-b20dd014a156', 'Headline 2', 'Short Text', '<h2>What’s a Rich Text element?</h2>\r\n<p>The rich text element allows you to create and format headings, paragraphs, blockquotes, images, and video all in one place instead of having to add and format them individually. Just double-click and easily create content.</p>\r\n<h4>Static and dynamic content editing</h4>\r\n<p>A rich text element can be used with static or dynamic content. For static content, just drop it into any page and begin editing. For dynamic content, add a rich text field to any collection and then connect a rich text element to that field in the settings panel. Voila!</p>\r\n<h4>How to customize formatting for each rich text</h4>\r\n<p>Headings, paragraphs, blockquotes, figures, images, and figure captions can all be styled after a class is added to the rich text element using the \"When inside of\" nested selector system.</p>', NULL),
(107, 207, 1, 'Test', '2022-07-13 16:25:49', '2022-07-13 16:25:49', 'c18be385-e88b-4ff4-9813-c108cf95b8cf', 'Headline 3', 'Short Text', '<h2>What’s a Rich Text element?</h2>\r\n<p>The rich text element allows you to create and format headings, paragraphs, blockquotes, images, and video all in one place instead of having to add and format them individually. Just double-click and easily create content.</p>\r\n<h4>Static and dynamic content editing</h4>\r\n<p>A rich text element can be used with static or dynamic content. For static content, just drop it into any page and begin editing. For dynamic content, add a rich text field to any collection and then connect a rich text element to that field in the settings panel. Voila!</p>\r\n<h4>How to customize formatting for each rich text</h4>\r\n<p>Headings, paragraphs, blockquotes, figures, images, and figure captions can all be styled after a class is added to the rich text element using the \"When inside of\" nested selector system.</p>', NULL),
(108, 208, 1, 'Karriere Overview', '2022-07-13 16:28:41', '2022-07-13 16:28:41', '29749201-24a6-4c1b-9c3b-060f01e8feaf', NULL, NULL, NULL, NULL),
(109, 209, 1, 'Karriere Overview', '2022-07-13 16:28:41', '2022-07-13 16:28:41', '23b1695d-7242-45ff-b02c-57b26c663dda', NULL, NULL, NULL, NULL),
(110, 210, 1, 'Job Software', '2022-07-13 17:17:49', '2022-07-14 16:21:12', '9ce6ce5b-76cd-455e-ac06-16a960589dbd', NULL, 'Short Description', NULL, NULL),
(111, 214, 1, 'test', '2022-07-13 17:17:49', '2022-07-13 17:17:49', 'c189b8b6-1147-4aa1-9136-d6a89fa6282d', NULL, 'Short Description', NULL, NULL),
(112, 218, 1, 'Software Overview', '2022-07-13 18:26:41', '2022-07-13 18:26:41', '543d47f2-12e4-4ba4-b9a6-b236fcfc459a', NULL, NULL, NULL, NULL),
(113, 219, 1, 'Software Overview', '2022-07-13 18:26:41', '2022-07-13 18:26:41', '0e2da680-8662-4752-bbd1-b5e7f013015e', NULL, NULL, NULL, NULL),
(114, 220, 1, 'Microsoft Teams', '2022-07-13 18:27:58', '2022-07-13 18:27:58', '9e15a845-d999-4f13-8cd5-7135a494d85e', NULL, NULL, NULL, NULL),
(115, 221, 1, 'Microsoft Teams', '2022-07-13 18:27:58', '2022-07-13 18:27:58', '96268610-8081-47ae-b970-bffe726ea9ff', NULL, NULL, NULL, NULL),
(116, 222, 1, 'Microsoft Teams', '2022-07-13 18:27:58', '2022-07-13 18:27:58', '79b2e5e1-2f11-4a35-ab58-8f7a160283d3', NULL, NULL, NULL, NULL),
(117, 223, 1, 'Software Overview', '2022-07-13 18:32:11', '2022-07-13 18:32:11', '2bbd2baf-b508-484c-995f-22cbf1d9c28b', NULL, NULL, NULL, NULL),
(118, 224, 1, 'Teams', '2022-07-13 19:12:41', '2022-07-14 15:34:09', '9f659a19-9541-41c4-8fa8-0601a7deacac', NULL, NULL, NULL, NULL),
(119, 229, 1, 'Test', '2022-07-13 19:12:41', '2022-07-13 19:12:41', '87071187-37c6-4983-9352-396907f52fea', NULL, NULL, NULL, NULL),
(120, 234, 1, 'Outlook', '2022-07-13 19:12:43', '2022-07-14 15:25:06', 'eef5ffa7-76d5-40db-9b2f-54cf6a540ad9', NULL, NULL, NULL, NULL),
(121, 239, 1, 'Test', '2022-07-13 19:12:43', '2022-07-13 19:12:43', '92d1556c-e34c-4000-9d39-c5206a882b67', NULL, NULL, NULL, NULL),
(122, 244, 1, 'SharePoint', '2022-07-13 19:12:45', '2022-07-14 15:26:05', '51b6164a-a840-4dfb-9ba0-8d04634e965a', NULL, NULL, NULL, NULL),
(123, 249, 1, 'Test', '2022-07-13 19:12:45', '2022-07-13 19:12:45', '314e8a7e-fca4-4384-9565-4bfa294cab94', NULL, NULL, NULL, NULL),
(124, 254, 1, 'Test', '2022-07-13 19:12:46', '2022-07-14 14:21:43', '8d8d1f96-45b7-458a-8473-3a160be97d8a', NULL, NULL, NULL, NULL),
(125, 259, 1, 'Test', '2022-07-13 19:12:46', '2022-07-13 19:12:46', '2805d0ce-f1e8-4e18-be6c-93781ee7306e', NULL, NULL, NULL, NULL),
(126, 264, 1, 'Test', '2022-07-13 19:12:48', '2022-07-14 14:21:43', '3b70612f-6609-4ea3-9b05-95ac36b91831', NULL, NULL, NULL, NULL),
(127, 269, 1, 'Test', '2022-07-13 19:12:48', '2022-07-13 19:12:48', 'a62a3feb-c215-42c6-85e1-54b36d0a05a7', NULL, NULL, NULL, NULL),
(128, 274, 1, 'Test', '2022-07-13 19:12:50', '2022-07-14 14:21:43', 'a09bad1a-7bc8-4630-9a10-e548b96de7b8', NULL, NULL, NULL, NULL),
(129, 279, 1, 'Test', '2022-07-13 19:12:50', '2022-07-13 19:12:50', 'de4aadb7-c47a-405a-8c0d-eb33a8e22a68', NULL, NULL, NULL, NULL),
(130, 284, 1, 'Test', '2022-07-13 19:12:51', '2022-07-14 14:21:43', '71492112-caa1-46dc-af38-01ea54b0e1d7', NULL, NULL, NULL, NULL),
(131, 289, 1, 'Test', '2022-07-13 19:12:51', '2022-07-13 19:12:51', '2bdd48ae-fcd1-483a-a20d-2c483ab4f672', NULL, NULL, NULL, NULL),
(132, 294, 1, 'Test', '2022-07-13 19:12:53', '2022-07-14 14:21:43', 'e086de10-2f74-4dd9-83da-f2325d877a06', NULL, NULL, NULL, NULL),
(133, 299, 1, 'Test', '2022-07-13 19:12:53', '2022-07-13 19:12:53', '6240ba17-79c8-4222-b9f9-0e23215f6189', NULL, NULL, NULL, NULL),
(134, 304, 1, 'Support', '2022-07-14 13:23:16', '2022-07-14 14:04:46', '528ba48e-d0ce-4878-84e6-df13d2d3b83e', NULL, NULL, NULL, NULL),
(135, 305, 1, 'Support', '2022-07-14 13:23:16', '2022-07-14 13:23:16', 'd970178c-8214-47c6-820b-557e769d0ff3', NULL, NULL, NULL, NULL),
(136, 306, 1, 'Support', '2022-07-14 13:23:16', '2022-07-14 13:23:16', '5445928d-7938-4df5-94c8-d25f164fc0c9', NULL, NULL, NULL, NULL),
(137, 307, 1, 'Support', '2022-07-14 13:23:46', '2022-07-14 13:23:46', 'c534a9ba-ed40-4226-ae8d-0ceb1065e902', NULL, NULL, NULL, NULL),
(138, 308, 1, 'Contact', '2022-07-14 13:24:27', '2022-07-14 13:24:57', '86127720-8e08-4aab-838b-a944307d7537', NULL, NULL, NULL, NULL),
(139, 309, 1, 'Contact', '2022-07-14 13:24:27', '2022-07-14 13:24:27', '16d3c8fd-19ac-4531-9893-cd1a8a5e4677', NULL, NULL, NULL, NULL),
(140, 310, 1, 'Contact', '2022-07-14 13:24:27', '2022-07-14 13:24:27', '565b4081-e95b-49a4-b46f-13822f4f3c12', NULL, NULL, NULL, NULL),
(141, 311, 1, 'Contact', '2022-07-14 13:24:57', '2022-07-14 13:24:57', '2abc264d-2613-4aa9-8346-2d4b6e250f16', NULL, NULL, NULL, NULL),
(143, 313, 1, 'Test', '2022-07-14 13:25:26', '2022-07-14 13:25:26', 'b3ed2182-9907-41c0-bdff-5fc34d71ed14', NULL, NULL, NULL, NULL),
(144, 318, 1, 'Beratung', '2022-07-14 13:27:42', '2022-07-14 13:27:54', '9a78878d-a1d4-4485-8d21-3669da13fd19', NULL, NULL, NULL, NULL),
(145, 319, 1, 'Beratung', '2022-07-14 13:27:42', '2022-07-14 13:27:42', 'ff5d6f5a-bd96-48bd-8d92-1b27bf4acbdf', NULL, NULL, NULL, NULL),
(146, 320, 1, 'Beratung', '2022-07-14 13:27:42', '2022-07-14 13:27:42', 'c814292a-0c74-43d2-a0bb-f413637e1a39', NULL, NULL, NULL, NULL),
(147, 321, 1, 'Beratung', '2022-07-14 13:27:54', '2022-07-14 13:27:54', '3bd20941-ba77-4572-84ca-ba4c2a9c8fc2', NULL, NULL, NULL, NULL),
(148, 322, 1, 'Impressum & Datenschutz', '2022-07-14 13:57:13', '2022-07-14 14:12:13', '19a07ed9-0ce6-4bb1-8263-a0b5d064f591', 'Impressum & Datenschutz', NULL, NULL, NULL),
(149, 323, 1, 'Impressum & Datenschutz', '2022-07-14 13:57:13', '2022-07-14 13:57:13', '817a685f-4bb2-474a-b77b-876ede0fe895', NULL, NULL, NULL, NULL),
(150, 324, 1, 'Impressum & Datenschutz', '2022-07-14 13:57:13', '2022-07-14 13:57:13', 'ad45ad05-40de-4a9b-adda-3dfc6dd4e04b', NULL, NULL, NULL, NULL),
(151, 325, 1, 'Impressum & Datenschutz', '2022-07-14 13:57:39', '2022-07-14 13:57:39', '4f62da58-1dbd-46c4-a41c-986b209a1e8d', NULL, NULL, NULL, NULL),
(152, 326, 1, 'Support', '2022-07-14 14:04:46', '2022-07-14 14:04:46', '555949f8-407c-40c7-b86c-5dade0d27000', NULL, NULL, NULL, NULL),
(153, 327, 1, 'Support', '2022-07-14 14:04:46', '2022-07-14 14:04:46', '6a865d2a-00ae-49f1-81d0-733ec3490cce', NULL, NULL, NULL, NULL),
(155, 346, 1, 'Impressum & Datenschutz', '2022-07-14 14:12:13', '2022-07-14 14:12:13', '95282c49-695d-416e-8a8f-790b659ed354', 'Impressum & Datenschutz', NULL, NULL, NULL),
(157, 351, 1, 'Icon teams', '2022-07-14 14:35:50', '2022-07-14 14:35:50', '9a540618-49d2-4b73-89af-520abfb2113f', NULL, NULL, NULL, NULL),
(158, 352, 1, 'Microsoft Teams', '2022-07-14 14:36:18', '2022-07-14 14:36:18', '732a4fef-00e6-4165-87da-97293a8872d0', NULL, NULL, NULL, NULL),
(160, 358, 1, 'Test', '2022-07-14 14:43:20', '2022-07-14 14:43:20', '7f4fe78e-fa01-44b0-85ee-c09ee03b66be', NULL, NULL, NULL, NULL),
(162, 364, 1, 'Test', '2022-07-14 14:49:12', '2022-07-14 14:49:12', '5642252b-1767-46b5-b482-1d3868ad92ee', NULL, NULL, NULL, NULL),
(163, 369, 1, 'Modern Workplace', '2022-07-14 14:56:15', '2022-07-14 14:56:40', 'ddb241a0-3240-4715-b314-5e1e5bcaeae0', NULL, NULL, NULL, NULL),
(164, 370, 1, 'Modern Workplace', '2022-07-14 14:56:15', '2022-07-14 14:56:15', 'ee16b616-2387-4a55-bca8-f8974c56edb5', NULL, NULL, NULL, NULL),
(165, 371, 1, 'Modern Workplace', '2022-07-14 14:56:15', '2022-07-14 14:56:15', 'fa8802b5-f751-4fd3-9235-5e06c83b66e4', NULL, NULL, NULL, NULL),
(166, 372, 1, 'Modern Workplace', '2022-07-14 14:56:40', '2022-07-14 14:56:40', '55d09d03-f64b-4140-98e7-46dffa471561', NULL, NULL, NULL, NULL),
(167, 373, 1, 'Karriere Overview', '2022-07-14 14:57:11', '2022-07-14 14:57:11', '66361fe5-a5bb-4231-8bed-722ed323a819', NULL, NULL, NULL, NULL),
(168, 374, 1, 'Software Overview', '2022-07-14 14:57:26', '2022-07-14 14:57:26', '7ef7ed17-3a1c-4265-843b-74477423959f', NULL, NULL, NULL, NULL),
(170, 377, 1, 'Office', '2022-07-14 15:22:32', '2022-07-14 15:22:32', '3aa613f9-9f6f-4546-8920-55c659cfd650', NULL, NULL, NULL, NULL),
(172, 383, 1, 'Icon excel', '2022-07-14 15:24:07', '2022-07-14 15:24:07', '3b51716c-524c-4db0-8aaf-34c7b3c60694', NULL, NULL, NULL, NULL),
(173, 384, 1, 'Icon forms', '2022-07-14 15:24:07', '2022-07-14 15:24:07', '9c2e6846-699b-447f-9f45-464a12a7fe19', NULL, NULL, NULL, NULL),
(174, 385, 1, 'Icon office', '2022-07-14 15:24:07', '2022-07-14 15:24:07', 'caa33ce0-7b41-4c3f-8943-cd70430be31b', NULL, NULL, NULL, NULL),
(175, 386, 1, 'Icon onedrive', '2022-07-14 15:24:08', '2022-07-14 15:24:08', '70b18aad-0e41-4b55-b2d9-3e556821c887', NULL, NULL, NULL, NULL),
(176, 387, 1, 'Icon onenote', '2022-07-14 15:24:08', '2022-07-14 15:24:08', '9dcc798c-6d9b-4ab2-b09d-248466e0c6d5', NULL, NULL, NULL, NULL),
(177, 388, 1, 'Icon outlook', '2022-07-14 15:24:08', '2022-07-14 15:24:08', 'f6932d86-dd81-43da-b569-197da43e4a40', NULL, NULL, NULL, NULL),
(178, 389, 1, 'Icon planner', '2022-07-14 15:24:08', '2022-07-14 15:24:08', '19ab09d5-0316-48d9-aff6-3c700ac8c720', NULL, NULL, NULL, NULL),
(179, 390, 1, 'Icon sharepoint', '2022-07-14 15:24:09', '2022-07-14 15:24:09', '0f33c6ee-d705-45c3-ba47-d3d908494a87', NULL, NULL, NULL, NULL),
(180, 391, 1, 'Icon word', '2022-07-14 15:24:09', '2022-07-14 15:24:09', 'da402c4e-c65c-40d6-802f-f3012dd62a4c', NULL, NULL, NULL, NULL),
(181, 392, 1, 'Office', '2022-07-14 15:24:15', '2022-07-14 15:24:15', 'b06467df-db9a-4ef4-9e4b-507615c9fcc1', NULL, NULL, NULL, NULL),
(183, 399, 1, 'Outlook', '2022-07-14 15:25:06', '2022-07-14 15:25:06', '8ce142e2-233a-455f-a89b-b409e87508bc', NULL, NULL, NULL, NULL),
(185, 406, 1, 'SharePoint', '2022-07-14 15:26:05', '2022-07-14 15:26:05', '1b073d2d-9da1-460a-9398-3bc417e6720e', NULL, NULL, NULL, NULL),
(186, 411, 1, NULL, '2022-07-14 15:26:05', '2022-07-14 15:26:05', '5c742a0f-1dd4-4427-992e-65896783bc88', NULL, NULL, NULL, NULL),
(188, 417, 1, 'To-Do', '2022-07-14 15:27:00', '2022-07-14 15:31:44', '97cec1d8-9fbe-4cbd-b5a5-4e1f4373928d', NULL, NULL, NULL, NULL),
(189, 422, 1, 'SharePoint', '2022-07-14 15:27:00', '2022-07-14 15:27:00', 'd76c0db5-68ba-4a66-a352-632fd7466468', NULL, NULL, NULL, NULL),
(190, 427, 1, 'Microsoft Forms', '2022-07-14 15:27:03', '2022-07-14 15:29:53', '3a744a30-36c3-4904-b134-63603803b5a3', NULL, NULL, NULL, NULL),
(191, 432, 1, 'SharePoint', '2022-07-14 15:27:03', '2022-07-14 15:27:03', '22bf7240-dd5e-41f2-86c2-cf260042c87b', NULL, NULL, NULL, NULL),
(192, 437, 1, 'OneNote', '2022-07-14 15:27:05', '2022-07-14 15:29:14', 'd8e55608-14f3-42de-a32d-90be4a79ff57', NULL, NULL, NULL, NULL),
(193, 442, 1, 'SharePoint', '2022-07-14 15:27:05', '2022-07-14 15:27:05', 'bc6abef6-86dc-4829-986a-bbb1d4eade81', NULL, NULL, NULL, NULL),
(194, 447, 1, 'Planner', '2022-07-14 15:27:07', '2022-07-14 15:28:28', '0993e3ab-dfee-4266-8fbb-fa606ce771cf', NULL, NULL, NULL, NULL),
(195, 452, 1, 'SharePoint', '2022-07-14 15:27:07', '2022-07-14 15:27:07', '19bfe2a7-f046-4a7f-8142-cb9e28aa956d', NULL, NULL, NULL, NULL),
(196, 457, 1, 'OneDrive', '2022-07-14 15:27:10', '2022-07-14 15:28:39', '5adaec15-afaf-442a-ba3e-77a5c4ddb383', NULL, NULL, NULL, NULL),
(197, 462, 1, 'SharePoint', '2022-07-14 15:27:10', '2022-07-14 15:27:10', 'd9eea89a-02d8-4272-a3ab-cbe44671f156', NULL, NULL, NULL, NULL),
(199, 468, 1, 'Teams', '2022-07-14 15:27:27', '2022-07-14 15:27:27', '068ad50b-1b06-4555-9d0a-bd5c27d37fd9', NULL, NULL, NULL, NULL),
(201, 475, 1, 'OneDrive', '2022-07-14 15:28:02', '2022-07-14 15:28:02', 'f6370569-f9f7-4095-8fd6-fcde7972fd00', NULL, NULL, NULL, NULL),
(203, 482, 1, 'Planner', '2022-07-14 15:28:28', '2022-07-14 15:28:28', 'bc63e5c2-56ea-484c-b7b8-e0ecfb65a769', NULL, NULL, NULL, NULL),
(205, 488, 1, 'OneDrive', '2022-07-14 15:28:39', '2022-07-14 15:28:39', 'c061023a-cb36-47df-afcd-8cfa23849315', NULL, NULL, NULL, NULL),
(207, 495, 1, 'OneNote', '2022-07-14 15:29:14', '2022-07-14 15:29:14', 'c66e14f0-49d8-443d-9dd2-cdf4756590a6', NULL, NULL, NULL, NULL),
(209, 502, 1, 'Microsoft Forms', '2022-07-14 15:29:53', '2022-07-14 15:29:53', 'c929ff00-2d38-4018-a677-975a5509f31f', NULL, NULL, NULL, NULL),
(211, 508, 1, 'Icon todo', '2022-07-14 15:31:33', '2022-07-14 15:31:33', '9dcaef43-4bdd-4cc1-9cdc-a289c88a03c2', NULL, NULL, NULL, NULL),
(212, 510, 1, 'To-Do', '2022-07-14 15:31:44', '2022-07-14 15:31:44', '18ef151a-768a-42e6-8bb7-3d315a7878a4', NULL, NULL, NULL, NULL),
(214, 516, 1, 'Teams', '2022-07-14 15:34:09', '2022-07-14 15:34:09', 'bb150e7c-53c4-4c3a-877e-d2f6596fddb7', NULL, NULL, NULL, NULL),
(215, 521, 1, 'Microsoft Teams', '2022-07-14 15:43:34', '2022-07-14 15:44:08', '562e3b0c-7c36-49ed-94ca-92f511a207c9', NULL, NULL, NULL, NULL),
(216, 526, 1, 'Teams', '2022-07-14 15:43:34', '2022-07-14 15:43:34', '8e97e11b-5bf5-419d-9a45-dec564a77b35', NULL, NULL, NULL, NULL),
(218, 532, 1, 'Microsoft Teams', '2022-07-14 15:44:08', '2022-07-14 15:44:08', '77086180-1602-4073-bebf-15e57ae0072c', NULL, NULL, NULL, NULL),
(220, 538, 1, 'Image jobs1', '2022-07-14 15:54:40', '2022-07-14 15:54:40', 'c6da7af5-352a-4571-97f1-8bde673e9eb2', NULL, NULL, NULL, NULL),
(221, 539, 1, 'First Blog Post', '2022-07-14 15:54:59', '2022-07-14 15:54:59', 'f67707e1-a4ab-42cf-8c5b-791a64586ebb', 'First Blog Post Headline', NULL, '<h2>What’s a Rich Text element?</h2>\r\n<p>The rich text element allows you to create and format headings, paragraphs, blockquotes, images, and video all in one place instead of having to add and format them individually. Just double-click and easily create content.</p>\r\n<h4>Static and dynamic content editing</h4>\r\n<p>A rich text element can be used with static or dynamic content. For static content, just drop it into any page and begin editing. For dynamic content, add a rich text field to any collection and then connect a rich text element to that field in the settings panel. Voila!</p>\r\n<h4>How to customize formatting for each rich text</h4>\r\n<p>Headings, paragraphs, blockquotes, figures, images, and figure captions can all be styled after a class is added to the rich text element using the \"When inside of\" nested selector system.</p>', NULL),
(223, 541, 1, 'Second Blog Post', '2022-07-14 15:55:29', '2022-07-14 15:55:29', '6901866d-6007-4f2e-a18f-143210b32f08', 'Second Blog Post Headline', NULL, '<h2>What’s a Rich Text element?</h2>\r\n<p>The rich text element allows you to create and format headings, paragraphs, blockquotes, images, and video all in one place instead of having to add and format them individually. Just double-click and easily create content.</p>\r\n<h4>Static and dynamic content editing</h4>\r\n<p>A rich text element can be used with static or dynamic content. For static content, just drop it into any page and begin editing. For dynamic content, add a rich text field to any collection and then connect a rich text element to that field in the settings panel. Voila!</p>\r\n<h4>How to customize formatting for each rich text</h4>\r\n<p>Headings, paragraphs, blockquotes, figures, images, and figure captions can all be styled after a class is added to the rich text element using the \"When inside of\" nested selector system.</p>', NULL),
(225, 543, 1, 'Image workplace2 p 500', '2022-07-14 16:20:20', '2022-07-14 16:20:20', 'c1310f57-3789-4368-83cf-8008021126dc', NULL, NULL, NULL, NULL),
(226, 544, 1, 'BLog Post', '2022-07-14 16:20:24', '2022-07-14 16:20:24', 'ae5bcf66-0a2d-4494-9d80-4961000d2220', 'BLog Post Headline', NULL, '<h2>What’s a Rich Text element?</h2>\r\n<p>The rich text element allows you to create and format headings, paragraphs, blockquotes, images, and video all in one place instead of having to add and format them individually. Just double-click and easily create content.</p>\r\n<h4>Static and dynamic content editing</h4>\r\n<p>A rich text element can be used with static or dynamic content. For static content, just drop it into any page and begin editing. For dynamic content, add a rich text field to any collection and then connect a rich text element to that field in the settings panel. Voila!</p>\r\n<h4>How to customize formatting for each rich text</h4>\r\n<p>Headings, paragraphs, blockquotes, figures, images, and figure captions can all be styled after a class is added to the rich text element using the \"When inside of\" nested selector system.</p>', NULL),
(228, 546, 1, 'Job Example', '2022-07-14 16:20:47', '2022-07-14 16:20:47', '1ad7d732-1241-4e93-9e0b-f5bbdff3fe2b', NULL, 'Short Description', NULL, NULL),
(230, 551, 1, 'Job Software', '2022-07-14 16:21:12', '2022-07-14 16:21:12', '7f53a9e4-8bbc-45f5-a6ec-2a5b98951f62', NULL, 'Short Description', NULL, NULL),
(232, 556, 1, 'Stories Post Example 1', '2022-07-14 16:22:50', '2022-07-14 16:22:50', 'e49eb974-8ef3-42d3-bc3a-d89418dbc105', 'Stories Post Example 1', 'Short Text', '<h2>What’s a Rich Text element?</h2>\r\n<p>The rich text element allows you to create and format headings, paragraphs, blockquotes, images, and video all in one place instead of having to add and format them individually. Just double-click and easily create content.</p>\r\n<h4>Static and dynamic content editing</h4>\r\n<p>A rich text element can be used with static or dynamic content. For static content, just drop it into any page and begin editing. For dynamic content, add a rich text field to any collection and then connect a rich text element to that field in the settings panel. Voila!</p>\r\n<h4>How to customize formatting for each rich text</h4>\r\n<p>Headings, paragraphs, blockquotes, figures, images, and figure captions can all be styled after a class is added to the rich text element using the \"When inside of\" nested selector system.</p>', NULL),
(234, 558, 1, 'Stories Post Example 2', '2022-07-14 16:23:22', '2022-07-14 16:23:22', 'da13b238-b19b-42c2-a247-579b56a3a3b5', 'Post Headline 2', 'Short Text', '<h2>What’s a Rich Text element?</h2>\r\n<p>The rich text element allows you to create and format headings, paragraphs, blockquotes, images, and video all in one place instead of having to add and format them individually. Just double-click and easily create content.</p>\r\n<h4>Static and dynamic content editing</h4>\r\n<p>A rich text element can be used with static or dynamic content. For static content, just drop it into any page and begin editing. For dynamic content, add a rich text field to any collection and then connect a rich text element to that field in the settings panel. Voila!</p>\r\n<h4>How to customize formatting for each rich text</h4>\r\n<p>Headings, paragraphs, blockquotes, figures, images, and figure captions can all be styled after a class is added to the rich text element using the \"When inside of\" nested selector system.</p>', NULL),
(236, 560, 1, 'Stories Post Example 3', '2022-07-14 16:23:40', '2022-07-14 16:23:40', 'f5adbb76-508d-4fa2-ade5-d1fef64ba10d', 'Headline 3', 'Short Text', '<h2>What’s a Rich Text element?</h2>\r\n<p>The rich text element allows you to create and format headings, paragraphs, blockquotes, images, and video all in one place instead of having to add and format them individually. Just double-click and easily create content.</p>\r\n<h4>Static and dynamic content editing</h4>\r\n<p>A rich text element can be used with static or dynamic content. For static content, just drop it into any page and begin editing. For dynamic content, add a rich text field to any collection and then connect a rich text element to that field in the settings panel. Voila!</p>\r\n<h4>How to customize formatting for each rich text</h4>\r\n<p>Headings, paragraphs, blockquotes, figures, images, and figure captions can all be styled after a class is added to the rich text element using the \"When inside of\" nested selector system.</p>', NULL),
(238, 562, 1, 'Stories Post Example 1', '2022-07-14 16:25:28', '2022-07-14 16:25:28', '6da8d652-d2ad-4eee-8ecd-1928cb426441', 'Stories Post Example 1', 'Short Text', '<h2>What’s a Rich Text element?</h2>\r\n<p>The rich text element allows you to create and format headings, paragraphs, blockquotes, images, and video all in one place instead of having to add and format them individually. Just double-click and easily create content.</p>\r\n<h4>Static and dynamic content editing</h4>\r\n<p>A rich text element can be used with static or dynamic content. For static content, just drop it into any page and begin editing. For dynamic content, add a rich text field to any collection and then connect a rich text element to that field in the settings panel. Voila!</p>\r\n<h4>How to customize formatting for each rich text</h4>\r\n<p>Headings, paragraphs, blockquotes, figures, images, and figure captions can all be styled after a class is added to the rich text element using the \"When inside of\" nested selector system.</p>', NULL),
(240, 564, 1, 'Stories Post Example 2', '2022-07-14 16:25:40', '2022-07-14 16:25:40', 'f377860d-c67b-4d1d-8f08-cf5b6417db31', 'Post Headline 2', 'Short Text', '<h2>What’s a Rich Text element?</h2>\r\n<p>The rich text element allows you to create and format headings, paragraphs, blockquotes, images, and video all in one place instead of having to add and format them individually. Just double-click and easily create content.</p>\r\n<h4>Static and dynamic content editing</h4>\r\n<p>A rich text element can be used with static or dynamic content. For static content, just drop it into any page and begin editing. For dynamic content, add a rich text field to any collection and then connect a rich text element to that field in the settings panel. Voila!</p>\r\n<h4>How to customize formatting for each rich text</h4>\r\n<p>Headings, paragraphs, blockquotes, figures, images, and figure captions can all be styled after a class is added to the rich text element using the \"When inside of\" nested selector system.</p>', NULL),
(242, 566, 1, 'Stories Post Example 3', '2022-07-14 16:25:49', '2022-07-14 16:25:49', '74950cb4-390e-4c01-bae8-06f38e234885', 'Headline 3', 'Short Text', '<h2>What’s a Rich Text element?</h2>\r\n<p>The rich text element allows you to create and format headings, paragraphs, blockquotes, images, and video all in one place instead of having to add and format them individually. Just double-click and easily create content.</p>\r\n<h4>Static and dynamic content editing</h4>\r\n<p>A rich text element can be used with static or dynamic content. For static content, just drop it into any page and begin editing. For dynamic content, add a rich text field to any collection and then connect a rich text element to that field in the settings panel. Voila!</p>\r\n<h4>How to customize formatting for each rich text</h4>\r\n<p>Headings, paragraphs, blockquotes, figures, images, and figure captions can all be styled after a class is added to the rich text element using the \"When inside of\" nested selector system.</p>', NULL),
(243, 567, 1, 'Image 1 min', '2022-07-14 16:26:10', '2022-07-14 16:26:10', '5ede018e-f5a1-42e3-a13f-b373118cf657', NULL, NULL, NULL, NULL);
INSERT INTO `content` (`id`, `elementId`, `siteId`, `title`, `dateCreated`, `dateUpdated`, `uid`, `field_postHeadline_lffxpplo`, `field_postShortText_fdqywyjz`, `field_postRichText_khobvvwf`, `field_authorName_jyxeuits`) VALUES
(245, 569, 1, 'Stories Overview', '2022-07-14 16:26:20', '2022-07-14 16:26:20', 'c3db7408-4877-4f8a-81c1-720808772c52', 'Headline', 'Short Text', NULL, NULL),
(247, 571, 1, 'Blog Overview', '2022-07-14 16:30:11', '2022-07-14 16:30:11', '7ee2ce5c-fcb6-44b3-8246-6ab6b1bab44d', 'Blog Headline', 'Short Text', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `craftidtokens`
--

CREATE TABLE `craftidtokens` (
  `id` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `accessToken` text NOT NULL,
  `expiryDate` datetime DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `deprecationerrors`
--

CREATE TABLE `deprecationerrors` (
  `id` int(11) NOT NULL,
  `key` varchar(255) NOT NULL,
  `fingerprint` varchar(255) NOT NULL,
  `lastOccurrence` datetime NOT NULL,
  `file` varchar(255) NOT NULL,
  `line` smallint(6) UNSIGNED DEFAULT NULL,
  `message` text DEFAULT NULL,
  `traces` text DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `drafts`
--

CREATE TABLE `drafts` (
  `id` int(11) NOT NULL,
  `canonicalId` int(11) DEFAULT NULL,
  `creatorId` int(11) DEFAULT NULL,
  `provisional` tinyint(1) NOT NULL DEFAULT 0,
  `name` varchar(255) NOT NULL,
  `notes` text DEFAULT NULL,
  `trackChanges` tinyint(1) NOT NULL DEFAULT 0,
  `dateLastMerged` datetime DEFAULT NULL,
  `saved` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `drafts`
--

INSERT INTO `drafts` (`id`, `canonicalId`, `creatorId`, `provisional`, `name`, `notes`, `trackChanges`, `dateLastMerged`, `saved`) VALUES
(1, NULL, 1, 0, 'First draft', NULL, 0, NULL, 0),
(2, NULL, 1, 0, 'First draft', '', 0, NULL, 1),
(55, NULL, 1, 0, 'First draft', NULL, 0, NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `elements`
--

CREATE TABLE `elements` (
  `id` int(11) NOT NULL,
  `canonicalId` int(11) DEFAULT NULL,
  `draftId` int(11) DEFAULT NULL,
  `revisionId` int(11) DEFAULT NULL,
  `fieldLayoutId` int(11) DEFAULT NULL,
  `type` varchar(255) NOT NULL,
  `enabled` tinyint(1) NOT NULL DEFAULT 1,
  `archived` tinyint(1) NOT NULL DEFAULT 0,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `dateLastMerged` datetime DEFAULT NULL,
  `dateDeleted` datetime DEFAULT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `elements`
--

INSERT INTO `elements` (`id`, `canonicalId`, `draftId`, `revisionId`, `fieldLayoutId`, `type`, `enabled`, `archived`, `dateCreated`, `dateUpdated`, `dateLastMerged`, `dateDeleted`, `uid`) VALUES
(1, NULL, NULL, NULL, NULL, 'craft\\elements\\User', 1, 0, '2022-07-08 13:30:51', '2022-07-08 13:30:51', NULL, NULL, 'cbd5978b-266e-445a-99ac-19277a623953'),
(2, NULL, NULL, NULL, 1, 'craft\\elements\\Entry', 1, 0, '2022-07-08 13:58:08', '2022-07-13 13:51:04', NULL, NULL, 'e3a51ed7-61b3-4b38-8883-b8bf19c5829d'),
(3, 2, NULL, 1, 1, 'craft\\elements\\Entry', 1, 0, '2022-07-08 13:58:08', '2022-07-08 13:58:08', NULL, NULL, 'f49c9be2-d142-4e61-8ed0-0ecff2ed6129'),
(4, 2, NULL, 2, 1, 'craft\\elements\\Entry', 1, 0, '2022-07-08 13:58:08', '2022-07-08 13:58:08', NULL, NULL, '28fe0989-d78b-4aa6-8ffc-b803bc6c18cb'),
(5, NULL, NULL, NULL, 3, 'craft\\elements\\Entry', 1, 0, '2022-07-08 15:10:09', '2022-07-14 16:30:11', NULL, NULL, '0b27751c-8cf4-4852-a39a-265d37fb82d3'),
(6, 5, NULL, 3, 3, 'craft\\elements\\Entry', 1, 0, '2022-07-08 15:10:09', '2022-07-08 15:10:09', NULL, NULL, '7e6ee4df-cdd8-43a3-b706-287b1604f807'),
(7, 5, NULL, 4, 3, 'craft\\elements\\Entry', 1, 0, '2022-07-08 15:10:09', '2022-07-08 15:10:09', NULL, NULL, '9cc3dfb6-b679-4906-81de-ddec656acbf5'),
(8, 5, NULL, 5, 3, 'craft\\elements\\Entry', 1, 0, '2022-07-08 15:10:31', '2022-07-08 15:10:31', NULL, NULL, '5bc93a80-6894-434d-90b4-f1f61a97e3af'),
(9, 5, NULL, 6, 3, 'craft\\elements\\Entry', 1, 0, '2022-07-08 15:10:31', '2022-07-08 15:10:31', NULL, NULL, '415d34c8-58fe-4758-9332-1d684b280034'),
(10, NULL, NULL, NULL, 5, 'craft\\elements\\Entry', 1, 0, '2022-07-08 15:16:48', '2022-07-14 16:26:20', NULL, NULL, '1133d419-d224-4c33-a917-fbbd15a563f9'),
(11, 10, NULL, 7, 5, 'craft\\elements\\Entry', 1, 0, '2022-07-08 15:16:48', '2022-07-08 15:16:48', NULL, NULL, '2002740c-9000-4e92-867b-94db0095f64a'),
(12, 10, NULL, 8, 5, 'craft\\elements\\Entry', 1, 0, '2022-07-08 15:16:48', '2022-07-08 15:16:48', NULL, NULL, 'b2dc8f35-f514-40ff-94d1-cca306098bd7'),
(13, NULL, NULL, NULL, 7, 'craft\\elements\\Entry', 1, 0, '2022-07-08 15:41:35', '2022-07-14 14:57:11', NULL, NULL, '0383c636-e5c8-47d9-a54b-1638ed705d1e'),
(14, 13, NULL, 9, 7, 'craft\\elements\\Entry', 1, 0, '2022-07-08 15:41:35', '2022-07-08 15:41:35', NULL, NULL, '573715cc-025d-492b-95ea-9aab589e4ac0'),
(15, 13, NULL, 10, 7, 'craft\\elements\\Entry', 1, 0, '2022-07-08 15:41:35', '2022-07-08 15:41:35', NULL, NULL, '006ffcec-2a5b-46da-bc19-0c620c00a761'),
(16, 13, NULL, 11, 7, 'craft\\elements\\Entry', 1, 0, '2022-07-08 15:43:26', '2022-07-08 15:43:26', NULL, NULL, '30bd7744-aa94-4839-adf0-4674518bb607'),
(17, 13, NULL, 12, 7, 'craft\\elements\\Entry', 1, 0, '2022-07-08 15:43:26', '2022-07-08 15:43:26', NULL, NULL, '3917ea42-480b-4f22-b19e-a49c67f77ca6'),
(18, 13, NULL, 13, 7, 'craft\\elements\\Entry', 1, 0, '2022-07-08 15:43:26', '2022-07-08 15:43:26', NULL, NULL, 'db0330a2-1eea-43cc-adc5-d8324ad0daed'),
(19, NULL, NULL, NULL, 9, 'craft\\elements\\Entry', 1, 0, '2022-07-08 15:46:47', '2022-07-14 14:57:26', NULL, NULL, '8a87ea4f-e963-4813-89af-21ebaf46ac4b'),
(20, 19, NULL, 14, 9, 'craft\\elements\\Entry', 1, 0, '2022-07-08 15:46:47', '2022-07-08 15:46:47', NULL, NULL, '142ad6f7-d1d2-41b4-9dad-ef6fdbfa2733'),
(21, 19, NULL, 15, 9, 'craft\\elements\\Entry', 1, 0, '2022-07-08 15:46:47', '2022-07-08 15:46:47', NULL, NULL, '354bf537-559c-4566-b67d-fca77ef352cb'),
(22, NULL, NULL, NULL, 10, 'craft\\elements\\Entry', 1, 0, '2022-07-09 02:22:47', '2022-07-12 16:45:55', NULL, NULL, '90b51b16-adc9-4a50-ae59-6773b9f86128'),
(23, 22, NULL, 16, 10, 'craft\\elements\\Entry', 1, 0, '2022-07-09 02:22:47', '2022-07-09 02:22:48', NULL, NULL, 'dd8e15e6-3e22-416c-bcfe-2e3dbb370291'),
(24, 22, NULL, 17, 10, 'craft\\elements\\Entry', 1, 0, '2022-07-09 02:22:48', '2022-07-09 02:22:48', NULL, NULL, '39b8a61f-87c7-41b5-81ca-16ddc4065830'),
(25, 22, NULL, 18, 10, 'craft\\elements\\Entry', 1, 0, '2022-07-09 02:22:54', '2022-07-09 02:22:54', NULL, NULL, '73c3c640-a215-49b7-9960-e328f3c123ff'),
(26, 22, NULL, 19, 10, 'craft\\elements\\Entry', 1, 0, '2022-07-09 02:22:54', '2022-07-09 02:22:54', NULL, NULL, 'cf4055ed-ff40-4299-98b2-620b6bdc8665'),
(27, 22, NULL, 20, 10, 'craft\\elements\\Entry', 1, 0, '2022-07-09 03:40:37', '2022-07-09 03:40:37', NULL, NULL, '44c76df3-3382-446a-b7a9-a3bf610a4826'),
(28, NULL, 1, NULL, 4, 'craft\\elements\\Entry', 1, 0, '2022-07-09 03:51:39', '2022-07-09 03:51:39', NULL, NULL, '394f673d-d153-4982-bf4e-7635defa5325'),
(29, NULL, 2, NULL, 6, 'craft\\elements\\Entry', 1, 0, '2022-07-09 03:56:02', '2022-07-09 03:57:12', NULL, '2022-07-09 07:32:41', '567c05bb-cc8e-4a9a-8648-9ff0cc7f9426'),
(30, 5, NULL, 21, 3, 'craft\\elements\\Entry', 1, 0, '2022-07-09 04:52:29', '2022-07-09 04:52:29', NULL, NULL, '5902e86f-4b9f-489e-a358-3d6348b56690'),
(31, 10, NULL, 22, 5, 'craft\\elements\\Entry', 1, 0, '2022-07-09 04:52:45', '2022-07-09 04:52:45', NULL, NULL, '1528bba4-2552-4f5a-b45c-0372d38f656c'),
(32, NULL, NULL, NULL, 8, 'craft\\elements\\Entry', 1, 0, '2022-07-09 07:32:45', '2022-07-14 16:20:47', NULL, NULL, 'fd5d42b2-924c-45e8-b53c-c2742a91db8b'),
(33, NULL, NULL, NULL, 15, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2022-07-09 07:36:16', '2022-07-13 16:01:47', NULL, NULL, 'db6bf66d-81c4-4255-8ec3-f313bcbfa1d2'),
(34, NULL, NULL, NULL, 19, 'craft\\elements\\MatrixBlock', 1, 0, '2022-07-09 07:36:16', '2022-07-12 18:39:02', NULL, NULL, 'a0bc3974-02c2-4fca-9093-12d910b09968'),
(35, NULL, NULL, NULL, 14, 'craft\\elements\\MatrixBlock', 1, 0, '2022-07-09 07:36:16', '2022-07-12 18:39:02', NULL, NULL, 'f7570164-beeb-458a-bf66-10feb0c7819e'),
(36, NULL, NULL, NULL, 14, 'craft\\elements\\MatrixBlock', 1, 0, '2022-07-09 07:36:16', '2022-07-09 07:36:16', NULL, '2022-07-09 07:40:58', '09aa46ef-d9ae-4ff1-b314-dff3f0087254'),
(37, NULL, NULL, NULL, 20, 'craft\\elements\\MatrixBlock', 1, 0, '2022-07-09 07:41:01', '2022-07-09 08:43:25', NULL, '2022-07-09 08:44:10', 'a948da42-2ef0-433a-bcc7-6f39bb784b8c'),
(38, NULL, NULL, NULL, 20, 'craft\\elements\\MatrixBlock', 1, 0, '2022-07-09 08:44:13', '2022-07-09 08:44:13', NULL, '2022-07-09 08:44:15', '3f6277cb-722a-43f2-a4c4-2cb2cbad2569'),
(39, NULL, NULL, NULL, 20, 'craft\\elements\\MatrixBlock', 1, 0, '2022-07-09 08:44:15', '2022-07-11 14:10:15', NULL, '2022-07-12 18:24:19', 'c71d4a28-7cc3-474b-825a-33274320f4d6'),
(40, 2, NULL, 23, 1, 'craft\\elements\\Entry', 1, 0, '2022-07-09 15:18:14', '2022-07-09 15:18:14', NULL, NULL, '70c3e99f-8bca-42a3-93d3-5101859e127d'),
(41, 2, NULL, 24, 1, 'craft\\elements\\Entry', 1, 0, '2022-07-09 15:18:14', '2022-07-09 15:18:14', NULL, NULL, 'd93443c3-442f-4474-bd0c-a120364b5ad0'),
(42, NULL, NULL, NULL, 2, 'craft\\elements\\Entry', 1, 0, '2022-07-11 12:31:25', '2022-07-14 15:24:15', NULL, NULL, '8f244f8b-36a8-4000-979a-c9cf42a0240d'),
(43, NULL, NULL, NULL, 17, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2022-07-11 12:31:30', '2022-07-14 15:22:31', NULL, NULL, 'aafb650f-2898-46ba-a917-3504b46ff454'),
(44, 42, NULL, 25, 2, 'craft\\elements\\Entry', 1, 0, '2022-07-11 12:31:31', '2022-07-11 12:31:31', NULL, NULL, '610534e3-d07a-40a8-97c5-52ba5c45d750'),
(45, 43, NULL, 26, 17, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2022-07-11 12:31:30', '2022-07-11 12:31:31', NULL, NULL, '95c68234-1bd6-4bde-bc54-887643722757'),
(46, 32, NULL, 27, 8, 'craft\\elements\\Entry', 1, 0, '2022-07-11 14:10:15', '2022-07-11 14:10:15', NULL, NULL, 'e9870910-471e-4fb1-961a-11d28da746c0'),
(47, 33, NULL, 28, 15, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2022-07-11 14:10:15', '2022-07-11 14:10:15', NULL, NULL, '68986077-1061-4b33-be06-c2df364bc8c6'),
(48, 34, NULL, 29, 19, 'craft\\elements\\MatrixBlock', 1, 0, '2022-07-11 14:10:15', '2022-07-11 14:10:15', NULL, NULL, '25393be2-6088-4fa0-b662-e01ffbad7147'),
(49, 35, NULL, 30, 14, 'craft\\elements\\MatrixBlock', 1, 0, '2022-07-09 07:36:16', '2022-07-11 14:10:15', NULL, NULL, '493df483-1a38-451f-82f0-092f72c8c8e5'),
(50, 39, NULL, 31, 20, 'craft\\elements\\MatrixBlock', 1, 0, '2022-07-11 14:10:15', '2022-07-11 14:10:15', NULL, '2022-07-12 18:24:19', 'c1e7c725-6539-4c34-8e13-addf704c62b4'),
(51, NULL, NULL, NULL, 6, 'craft\\elements\\Entry', 1, 0, '2022-07-11 16:06:26', '2022-07-14 16:25:49', NULL, NULL, '74bb828c-5d79-47f9-bc8e-d13f5edf6b89'),
(52, 51, NULL, 32, 6, 'craft\\elements\\Entry', 1, 0, '2022-07-11 16:06:32', '2022-07-11 16:06:32', NULL, NULL, '88a37df6-5b5f-4775-b418-d223535c38ca'),
(53, NULL, NULL, NULL, 4, 'craft\\elements\\Entry', 1, 0, '2022-07-11 16:13:48', '2022-07-14 16:20:24', NULL, NULL, '369263fb-5352-4ab3-86e6-fcdd72693d85'),
(54, 53, NULL, 33, 4, 'craft\\elements\\Entry', 1, 0, '2022-07-11 16:13:58', '2022-07-11 16:13:58', NULL, NULL, '0e3f4e34-c847-47df-9c47-4f9f50d14099'),
(55, NULL, NULL, NULL, 12, 'craft\\elements\\Category', 1, 0, '2022-07-12 16:27:06', '2022-07-12 16:27:09', NULL, NULL, '0711b70a-a093-4b63-ab31-6670fae976d4'),
(57, 53, NULL, 34, 4, 'craft\\elements\\Entry', 1, 0, '2022-07-12 16:28:07', '2022-07-12 16:28:07', NULL, NULL, '03505e5d-915c-44d4-92e7-d836c54a3921'),
(59, 53, NULL, 35, 4, 'craft\\elements\\Entry', 1, 0, '2022-07-12 16:42:54', '2022-07-12 16:42:54', NULL, NULL, 'd468a84b-871e-4391-a31f-82530e3bda75'),
(61, 53, NULL, 36, 4, 'craft\\elements\\Entry', 1, 0, '2022-07-12 16:43:03', '2022-07-12 16:43:03', NULL, NULL, 'bbfe2a08-2b5a-4397-87ec-529284991523'),
(62, NULL, NULL, NULL, 11, 'craft\\elements\\Asset', 1, 0, '2022-07-12 16:45:08', '2022-07-12 16:45:08', NULL, NULL, '502c6d89-578c-4942-b756-eb9809fe6d1f'),
(64, 53, NULL, 37, 4, 'craft\\elements\\Entry', 1, 0, '2022-07-12 16:45:11', '2022-07-12 16:45:11', NULL, NULL, '6d03d8d0-1e93-4f5e-8763-4ad8d6993370'),
(66, 22, NULL, 38, 10, 'craft\\elements\\Entry', 1, 0, '2022-07-12 16:45:31', '2022-07-12 16:45:31', NULL, NULL, 'b9fdffbe-552f-4918-89e8-f974d50937c4'),
(68, 22, NULL, 39, 10, 'craft\\elements\\Entry', 1, 0, '2022-07-12 16:45:55', '2022-07-12 16:45:55', NULL, NULL, '88fbfcb1-cc89-40e1-9c7c-26bf45678783'),
(71, 39, NULL, NULL, 20, 'craft\\elements\\MatrixBlock', 1, 0, '2022-07-12 16:47:34', '2022-07-12 16:47:34', NULL, NULL, 'bb2f95cb-5e55-4657-9927-bb9995226bcb'),
(75, 51, NULL, 40, 6, 'craft\\elements\\Entry', 1, 0, '2022-07-12 16:53:04', '2022-07-12 16:53:04', NULL, NULL, 'b008c6b8-5bfd-4f54-bda9-32f9bf8f8832'),
(76, NULL, NULL, NULL, 13, 'craft\\elements\\Category', 1, 0, '2022-07-12 16:55:46', '2022-07-12 16:55:53', NULL, NULL, '2d8b17d5-cb3d-4288-b86b-21df2385a1e7'),
(78, 51, NULL, 41, 6, 'craft\\elements\\Entry', 1, 0, '2022-07-12 16:55:56', '2022-07-12 16:55:56', NULL, NULL, '3decdb6f-9586-4857-b969-10e49b2de335'),
(82, NULL, NULL, NULL, 14, 'craft\\elements\\MatrixBlock', 1, 0, '2022-07-12 18:04:11', '2022-07-14 14:21:42', NULL, NULL, 'bbb1db8c-6f35-43ac-bbfc-625bec67a425'),
(83, 42, NULL, 42, 2, 'craft\\elements\\Entry', 1, 0, '2022-07-12 18:04:11', '2022-07-12 18:04:11', NULL, NULL, '8f146ae4-a204-4d9b-ba70-1395b98d96f5'),
(84, 43, NULL, 43, 17, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2022-07-12 18:04:11', '2022-07-12 18:04:11', NULL, NULL, '75c8fc05-b186-43b9-9d1e-95a6b4283f84'),
(85, 82, NULL, 44, 14, 'craft\\elements\\MatrixBlock', 1, 0, '2022-07-12 18:04:11', '2022-07-12 18:04:11', NULL, NULL, 'd5bd33d8-3084-494e-b267-31b51ccb1b01'),
(88, NULL, NULL, NULL, 14, 'craft\\elements\\MatrixBlock', 1, 0, '2022-07-12 18:15:15', '2022-07-12 18:15:15', NULL, '2022-07-12 18:15:23', '1d23c555-6350-46bc-8727-baa0f49b39b2'),
(89, NULL, NULL, NULL, 14, 'craft\\elements\\MatrixBlock', 1, 0, '2022-07-12 18:15:23', '2022-07-12 18:15:23', NULL, '2022-07-12 18:15:25', 'fcc10281-94f7-4506-bc3a-e1c52cc10eda'),
(90, NULL, NULL, NULL, 14, 'craft\\elements\\MatrixBlock', 1, 0, '2022-07-12 18:15:25', '2022-07-12 18:15:25', NULL, '2022-07-12 18:15:29', '1f760367-7efe-4359-88c1-4d26d937da0c'),
(91, NULL, NULL, NULL, 14, 'craft\\elements\\MatrixBlock', 1, 0, '2022-07-12 18:15:29', '2022-07-12 18:15:29', NULL, '2022-07-12 18:15:32', '8c11dc3c-c3aa-4561-a254-2e6ab9d18d06'),
(92, NULL, NULL, NULL, 14, 'craft\\elements\\MatrixBlock', 1, 0, '2022-07-12 18:15:29', '2022-07-12 18:15:29', NULL, '2022-07-12 18:15:32', '5583284a-23c2-492b-883e-42693d1142da'),
(93, NULL, NULL, NULL, 14, 'craft\\elements\\MatrixBlock', 1, 0, '2022-07-12 18:15:32', '2022-07-12 18:15:32', NULL, '2022-07-12 18:15:38', '9b8db7ad-8f49-4b1d-9189-e22eb4ba8630'),
(94, NULL, NULL, NULL, 14, 'craft\\elements\\MatrixBlock', 1, 0, '2022-07-12 18:15:32', '2022-07-12 18:15:32', NULL, '2022-07-12 18:15:38', '5e6940b3-71e9-40dd-b098-64d71448e372'),
(95, NULL, NULL, NULL, 14, 'craft\\elements\\MatrixBlock', 1, 0, '2022-07-12 18:15:38', '2022-07-12 18:15:38', NULL, '2022-07-12 18:15:39', 'e1eaf3da-2454-4441-844e-88e8bd6604ff'),
(96, NULL, NULL, NULL, 14, 'craft\\elements\\MatrixBlock', 1, 0, '2022-07-12 18:15:38', '2022-07-12 18:15:38', NULL, '2022-07-12 18:15:39', '9ea25ed2-8771-4e79-a54b-a7f58d59d159'),
(97, NULL, NULL, NULL, 14, 'craft\\elements\\MatrixBlock', 1, 0, '2022-07-12 18:15:39', '2022-07-12 18:15:39', NULL, '2022-07-12 18:15:41', '05086177-0b35-4fb7-ac7e-0fd0034aa5f5'),
(98, NULL, NULL, NULL, 14, 'craft\\elements\\MatrixBlock', 1, 0, '2022-07-12 18:15:39', '2022-07-12 18:15:39', NULL, '2022-07-12 18:15:41', 'e99845d9-ff02-4cc4-b6c0-06a40921d63a'),
(99, NULL, NULL, NULL, 20, 'craft\\elements\\MatrixBlock', 1, 0, '2022-07-12 18:15:39', '2022-07-12 18:15:39', NULL, '2022-07-12 18:15:41', '719b5dda-fda1-4ff9-8616-497aec0e00a1'),
(100, NULL, NULL, NULL, 14, 'craft\\elements\\MatrixBlock', 1, 0, '2022-07-12 18:15:41', '2022-07-12 18:15:41', NULL, '2022-07-12 18:15:42', '90da36a6-3eb2-48d0-af13-79cf4eb95903'),
(101, NULL, NULL, NULL, 14, 'craft\\elements\\MatrixBlock', 1, 0, '2022-07-12 18:15:41', '2022-07-12 18:15:41', NULL, '2022-07-12 18:15:42', '0fb0e94c-bdf9-4e90-9283-9a784399d394'),
(102, NULL, NULL, NULL, 20, 'craft\\elements\\MatrixBlock', 1, 0, '2022-07-12 18:15:41', '2022-07-12 18:15:41', NULL, '2022-07-12 18:15:42', 'fb99ebae-18e1-4e28-a30f-87aa78e08130'),
(103, NULL, NULL, NULL, 14, 'craft\\elements\\MatrixBlock', 1, 0, '2022-07-12 18:15:42', '2022-07-12 18:15:42', NULL, '2022-07-12 18:15:43', '8d88a111-6b9c-4a1f-9453-f6ef14f023a5'),
(104, NULL, NULL, NULL, 14, 'craft\\elements\\MatrixBlock', 1, 0, '2022-07-12 18:15:42', '2022-07-12 18:15:42', NULL, '2022-07-12 18:15:44', '635792c1-354d-4b41-9a0f-548505412d34'),
(105, NULL, NULL, NULL, 20, 'craft\\elements\\MatrixBlock', 1, 0, '2022-07-12 18:15:42', '2022-07-12 18:15:42', NULL, '2022-07-12 18:15:44', 'c51b0e66-12bc-429b-901f-0c6c0a355bd5'),
(106, NULL, NULL, NULL, 14, 'craft\\elements\\MatrixBlock', 1, 0, '2022-07-12 18:15:43', '2022-07-12 18:15:43', NULL, '2022-07-12 18:15:53', 'af92cf2f-390f-4275-9dd8-217791a54670'),
(107, NULL, NULL, NULL, 14, 'craft\\elements\\MatrixBlock', 1, 0, '2022-07-12 18:15:43', '2022-07-12 18:15:43', NULL, '2022-07-12 18:15:53', 'da85bb65-8738-47e5-8d48-51270fb3a943'),
(108, NULL, NULL, NULL, 20, 'craft\\elements\\MatrixBlock', 1, 0, '2022-07-12 18:15:43', '2022-07-12 18:15:43', NULL, '2022-07-12 18:15:53', '5ad62f4f-12c8-4959-805b-211a67ee34d3'),
(109, NULL, NULL, NULL, 14, 'craft\\elements\\MatrixBlock', 1, 0, '2022-07-12 18:15:53', '2022-07-12 18:15:53', NULL, '2022-07-12 18:15:54', '704bd69a-21f7-4cbb-839b-7cebcbf6fc39'),
(110, NULL, NULL, NULL, 14, 'craft\\elements\\MatrixBlock', 1, 0, '2022-07-12 18:15:53', '2022-07-12 18:15:53', NULL, '2022-07-12 18:15:54', '8a1b39e3-ef63-4d33-8ef5-25c59c51a0f5'),
(111, NULL, NULL, NULL, 20, 'craft\\elements\\MatrixBlock', 1, 0, '2022-07-12 18:15:53', '2022-07-12 18:15:53', NULL, '2022-07-12 18:15:54', 'a9927aff-7c51-43a3-8b35-7cd2e75813e6'),
(112, NULL, NULL, NULL, 14, 'craft\\elements\\MatrixBlock', 1, 0, '2022-07-12 18:15:54', '2022-07-12 18:15:54', NULL, '2022-07-12 18:15:59', '3ca1cb7b-b7be-42ad-948e-15a9b9d604a7'),
(113, NULL, NULL, NULL, 14, 'craft\\elements\\MatrixBlock', 1, 0, '2022-07-12 18:15:54', '2022-07-12 18:15:54', NULL, '2022-07-12 18:15:59', 'e297f103-1d99-4e9c-9a29-4e94c812b5ac'),
(114, NULL, NULL, NULL, 20, 'craft\\elements\\MatrixBlock', 1, 0, '2022-07-12 18:15:54', '2022-07-12 18:15:54', NULL, '2022-07-12 18:15:59', 'ab3273bc-09c7-4889-a5bb-54404417a2c0'),
(118, NULL, NULL, NULL, 14, 'craft\\elements\\MatrixBlock', 1, 0, '2022-07-12 18:16:04', '2022-07-14 14:21:42', NULL, NULL, 'fb9d405e-86c3-4175-bc65-406a431d92e1'),
(119, NULL, NULL, NULL, 14, 'craft\\elements\\MatrixBlock', 1, 0, '2022-07-12 18:16:04', '2022-07-14 14:21:42', NULL, NULL, '94997aa1-7750-4165-be4f-17f2ac4151c9'),
(120, NULL, NULL, NULL, 20, 'craft\\elements\\MatrixBlock', 1, 0, '2022-07-12 18:16:04', '2022-07-12 18:16:04', NULL, '2022-07-12 18:24:19', '3f3727cd-2bcf-4ac5-ab01-bc5a2d079751'),
(121, 42, NULL, 45, 2, 'craft\\elements\\Entry', 1, 0, '2022-07-12 18:16:04', '2022-07-12 18:16:04', NULL, NULL, 'e876df47-9608-41d3-9cd8-fe165cbbb511'),
(122, 43, NULL, 46, 17, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2022-07-12 18:04:11', '2022-07-12 18:16:04', NULL, NULL, 'f7499366-343e-465d-b419-456252b41fd4'),
(123, 82, NULL, 47, 14, 'craft\\elements\\MatrixBlock', 1, 0, '2022-07-12 18:16:04', '2022-07-12 18:16:04', NULL, NULL, '66363515-4952-4653-8e92-5d82ab1be3cf'),
(124, 118, NULL, 48, 14, 'craft\\elements\\MatrixBlock', 1, 0, '2022-07-12 18:16:04', '2022-07-12 18:16:04', NULL, NULL, 'b9bacb20-6b78-4882-a244-7578432c7d9c'),
(125, 119, NULL, 49, 14, 'craft\\elements\\MatrixBlock', 1, 0, '2022-07-12 18:16:04', '2022-07-12 18:16:04', NULL, NULL, '2ba3cdd8-09bf-4322-94fe-aa9a334f1d85'),
(126, 120, NULL, 50, 20, 'craft\\elements\\MatrixBlock', 1, 0, '2022-07-12 18:16:04', '2022-07-12 18:16:04', NULL, '2022-07-12 18:24:19', 'c82f9b2e-234d-4f52-b5d8-acc26b159e2a'),
(128, 42, NULL, 51, 2, 'craft\\elements\\Entry', 1, 0, '2022-07-12 18:26:12', '2022-07-12 18:26:12', NULL, NULL, 'fa4d2495-0ece-4970-867d-b5f47fe74905'),
(129, 43, NULL, 52, 17, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2022-07-12 18:04:11', '2022-07-12 18:26:12', NULL, NULL, '2c50b75a-b949-46cf-a5f7-08cd67204f26'),
(130, 82, NULL, 53, 14, 'craft\\elements\\MatrixBlock', 1, 0, '2022-07-12 18:16:04', '2022-07-12 18:26:12', NULL, NULL, '8127ff93-35ba-4f2b-952b-06806004ca26'),
(131, 118, NULL, 54, 14, 'craft\\elements\\MatrixBlock', 1, 0, '2022-07-12 18:16:04', '2022-07-12 18:26:12', NULL, NULL, '13cc8d4c-1fa3-400d-90e2-1ccbff99c82c'),
(132, 119, NULL, 55, 14, 'craft\\elements\\MatrixBlock', 1, 0, '2022-07-12 18:16:04', '2022-07-12 18:26:12', NULL, NULL, '96d3f086-43aa-4d21-8970-d02917cff67b'),
(134, 42, NULL, 56, 2, 'craft\\elements\\Entry', 1, 0, '2022-07-12 18:33:07', '2022-07-12 18:33:07', NULL, NULL, '43d64217-95a9-4bfb-8f81-f83cb2fb2b8d'),
(135, 43, NULL, 57, 17, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2022-07-12 18:04:11', '2022-07-12 18:33:07', NULL, NULL, 'b948d435-a940-4f7b-9041-4b86abfca095'),
(136, 82, NULL, 58, 14, 'craft\\elements\\MatrixBlock', 1, 0, '2022-07-12 18:16:04', '2022-07-12 18:33:07', NULL, NULL, '9fe2223c-286b-4d16-bbf4-3bebacfea01c'),
(137, 118, NULL, 59, 14, 'craft\\elements\\MatrixBlock', 1, 0, '2022-07-12 18:16:04', '2022-07-12 18:33:07', NULL, NULL, 'e49b2166-549a-48d4-9fc4-9b9366a4d895'),
(138, 119, NULL, 60, 14, 'craft\\elements\\MatrixBlock', 1, 0, '2022-07-12 18:16:04', '2022-07-12 18:33:07', NULL, NULL, '8251000e-72f6-4ee5-a0c1-5b4ea5cf3130'),
(139, 42, NULL, 61, 2, 'craft\\elements\\Entry', 1, 0, '2022-07-12 18:33:24', '2022-07-12 18:33:24', NULL, NULL, '1c9c9735-b742-4065-9d80-46ea3996bd2f'),
(140, 43, NULL, 62, 17, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2022-07-12 18:04:11', '2022-07-12 18:33:24', NULL, NULL, '9596da54-a8f7-4466-89be-c9f4e4d14010'),
(141, 82, NULL, 63, 14, 'craft\\elements\\MatrixBlock', 1, 0, '2022-07-12 18:16:04', '2022-07-12 18:33:24', NULL, NULL, 'a294af8c-070c-4aa9-8708-d65700c02fec'),
(142, 118, NULL, 64, 14, 'craft\\elements\\MatrixBlock', 1, 0, '2022-07-12 18:16:04', '2022-07-12 18:33:24', NULL, NULL, 'f58f5b10-5715-49b0-acab-12e503c2bece'),
(143, 119, NULL, 65, 14, 'craft\\elements\\MatrixBlock', 1, 0, '2022-07-12 18:16:04', '2022-07-12 18:33:24', NULL, NULL, 'ea74fd31-1198-4e10-86fd-79bfc04e6f4a'),
(144, 42, NULL, 66, 2, 'craft\\elements\\Entry', 1, 0, '2022-07-12 18:34:53', '2022-07-12 18:34:53', NULL, NULL, '79ae02fe-c1d1-41a0-9ba2-93d02a368448'),
(145, 43, NULL, 67, 17, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2022-07-12 18:04:11', '2022-07-12 18:34:53', NULL, NULL, '4c22e9c6-c0de-4679-a1b9-be1646897ba4'),
(146, 82, NULL, 68, 14, 'craft\\elements\\MatrixBlock', 1, 0, '2022-07-12 18:16:04', '2022-07-12 18:34:53', NULL, NULL, '55a5678c-99a9-492a-a3bc-f5d9048e1fe0'),
(147, 118, NULL, 69, 14, 'craft\\elements\\MatrixBlock', 1, 0, '2022-07-12 18:16:04', '2022-07-12 18:34:53', NULL, NULL, '85ebdc67-a6e7-4899-9b7f-5159227d3ca2'),
(148, 119, NULL, 70, 14, 'craft\\elements\\MatrixBlock', 1, 0, '2022-07-12 18:16:04', '2022-07-12 18:34:53', NULL, NULL, '524fc419-ff0a-4522-aaf4-dd6292be0e58'),
(150, NULL, NULL, NULL, 14, 'craft\\elements\\MatrixBlock', 1, 0, '2022-07-12 18:39:02', '2022-07-12 18:39:02', NULL, NULL, 'd4b5107e-16ad-44ea-a798-59241285cf00'),
(151, 32, NULL, 71, 8, 'craft\\elements\\Entry', 1, 0, '2022-07-12 18:39:02', '2022-07-12 18:39:02', NULL, NULL, 'cf2ff338-b581-4ea9-9ed1-bde9ed542294'),
(152, 33, NULL, 72, 15, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2022-07-12 18:39:02', '2022-07-12 18:39:02', NULL, NULL, '88df6e7a-84e6-4977-8222-2e94e14247fa'),
(153, 34, NULL, 73, 19, 'craft\\elements\\MatrixBlock', 1, 0, '2022-07-12 18:39:02', '2022-07-12 18:39:02', NULL, NULL, '69b820da-422c-4acf-b600-04473605027a'),
(154, 35, NULL, 74, 14, 'craft\\elements\\MatrixBlock', 1, 0, '2022-07-12 18:39:02', '2022-07-12 18:39:02', NULL, NULL, 'efbb83c6-e619-4347-8e1c-19718232550d'),
(155, 150, NULL, 75, 14, 'craft\\elements\\MatrixBlock', 1, 0, '2022-07-12 18:39:02', '2022-07-12 18:39:02', NULL, NULL, '70c35aa2-2576-4530-a6a7-1b9ba2cdda2a'),
(157, 32, NULL, 76, 8, 'craft\\elements\\Entry', 1, 0, '2022-07-12 18:41:33', '2022-07-12 18:41:33', NULL, NULL, 'de25aa56-c9f1-41ba-85b3-c024272a56f1'),
(158, 33, NULL, 77, 15, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2022-07-12 18:39:02', '2022-07-12 18:41:33', NULL, NULL, '54fcb6f0-3a79-4341-bbdf-5500b4d818f7'),
(159, 35, NULL, 78, 14, 'craft\\elements\\MatrixBlock', 1, 0, '2022-07-12 18:39:02', '2022-07-12 18:41:33', NULL, NULL, 'e967243e-13b7-4725-b8db-6dc1ec8ff298'),
(160, 150, NULL, 79, 14, 'craft\\elements\\MatrixBlock', 1, 0, '2022-07-12 18:39:02', '2022-07-12 18:41:33', NULL, NULL, 'bad6b859-7332-41f2-a573-d70fc77c9a77'),
(163, 32, NULL, 80, 8, 'craft\\elements\\Entry', 1, 0, '2022-07-12 18:48:25', '2022-07-12 18:48:25', NULL, NULL, '0f437543-132c-47dd-a5d3-c0ff8560d931'),
(164, 33, NULL, 81, 15, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2022-07-12 18:48:25', '2022-07-12 18:48:25', NULL, NULL, '535d778b-66a1-4b2f-9c31-3c23b4c0a104'),
(165, 35, NULL, 82, 14, 'craft\\elements\\MatrixBlock', 1, 0, '2022-07-12 18:39:02', '2022-07-12 18:48:25', NULL, NULL, 'a977565b-3b52-432c-9833-1d059779a385'),
(166, 150, NULL, 83, 14, 'craft\\elements\\MatrixBlock', 1, 0, '2022-07-12 18:39:02', '2022-07-12 18:48:25', NULL, NULL, '452ccbf5-09df-49e1-8688-43cd1adf9f76'),
(167, 2, NULL, 84, 1, 'craft\\elements\\Entry', 1, 0, '2022-07-13 13:51:04', '2022-07-13 13:51:04', NULL, NULL, '491ffcec-4d22-4200-9dca-7afe8fb8f611'),
(168, NULL, NULL, NULL, 4, 'craft\\elements\\Entry', 1, 0, '2022-07-13 14:07:46', '2022-07-14 15:55:29', NULL, NULL, '016ac68d-f35d-466c-aad6-8804c7f4e921'),
(169, 168, NULL, 85, 4, 'craft\\elements\\Entry', 1, 0, '2022-07-13 14:07:46', '2022-07-13 14:07:46', NULL, NULL, '6561b720-6e6e-4fa7-8884-8c479d762311'),
(170, NULL, NULL, NULL, 4, 'craft\\elements\\Entry', 1, 0, '2022-07-13 14:07:48', '2022-07-14 15:54:59', NULL, NULL, '7fd22594-7166-4be1-a503-89504488adbf'),
(171, 170, NULL, 86, 4, 'craft\\elements\\Entry', 1, 0, '2022-07-13 14:07:48', '2022-07-13 14:07:48', NULL, NULL, '3c336310-f5b2-4cfb-81c0-3bad508d38e1'),
(174, NULL, NULL, NULL, 17, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2022-07-13 15:58:26', '2022-07-13 16:02:22', NULL, NULL, 'e44f7dab-8807-4a61-8261-8a20e132fd3c'),
(175, 5, NULL, 87, 3, 'craft\\elements\\Entry', 1, 0, '2022-07-13 15:58:26', '2022-07-13 15:58:26', NULL, NULL, '4d32e536-7a20-4bc3-8400-3466103b6955'),
(176, 174, NULL, 88, 17, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2022-07-13 15:58:26', '2022-07-13 15:58:26', NULL, NULL, '1dd031ce-c07a-4b57-9a94-a1c962573063'),
(179, 32, NULL, 89, 8, 'craft\\elements\\Entry', 1, 0, '2022-07-13 16:01:47', '2022-07-13 16:01:47', NULL, NULL, 'ca3b9b95-58db-4a12-8cc8-ea281f205bdf'),
(180, 33, NULL, 90, 15, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2022-07-13 16:01:47', '2022-07-13 16:01:47', NULL, NULL, '5173eaf5-faa5-4a3a-8606-5a94195773e0'),
(181, 35, NULL, 91, 14, 'craft\\elements\\MatrixBlock', 1, 0, '2022-07-12 18:39:02', '2022-07-13 16:01:47', NULL, NULL, 'f2713f53-b325-481f-a742-27db4045cea8'),
(182, 150, NULL, 92, 14, 'craft\\elements\\MatrixBlock', 1, 0, '2022-07-12 18:39:02', '2022-07-13 16:01:47', NULL, NULL, '4dc8fe32-7a6f-41e9-b7ff-8b967aae83d1'),
(185, 5, NULL, 93, 3, 'craft\\elements\\Entry', 1, 0, '2022-07-13 16:02:22', '2022-07-13 16:02:22', NULL, NULL, 'd68a38bf-516f-4d5e-96e0-de04ec34fff6'),
(186, 174, NULL, 94, 17, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2022-07-13 16:02:22', '2022-07-13 16:02:22', NULL, NULL, 'e0fe1ae4-de5a-48ef-97fa-816fc1bc72ed'),
(187, 5, NULL, 95, 3, 'craft\\elements\\Entry', 1, 0, '2022-07-13 16:03:02', '2022-07-13 16:03:02', NULL, NULL, '0aa4037b-fab5-49a1-9268-3a5bcd2ba2a5'),
(188, 174, NULL, 96, 17, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2022-07-13 16:02:22', '2022-07-13 16:03:03', NULL, NULL, 'b6efae76-db17-486e-a8c9-27f55f470022'),
(189, 5, NULL, 97, 3, 'craft\\elements\\Entry', 1, 0, '2022-07-13 16:04:57', '2022-07-13 16:04:57', NULL, NULL, '34a1284e-8370-46d6-be6b-7b37a999a276'),
(191, 5, NULL, 98, 3, 'craft\\elements\\Entry', 1, 0, '2022-07-13 16:05:11', '2022-07-13 16:05:11', NULL, NULL, '05a61ff8-fa78-479f-90fb-bec2729d7aef'),
(193, 5, NULL, 99, 3, 'craft\\elements\\Entry', 1, 0, '2022-07-13 16:07:48', '2022-07-13 16:07:48', NULL, NULL, 'd199068e-dcdf-4207-9d78-3969880f7509'),
(194, 10, NULL, 100, 5, 'craft\\elements\\Entry', 1, 0, '2022-07-13 16:19:37', '2022-07-13 16:19:37', NULL, NULL, 'b1cf053d-8d42-4bf8-ad1a-f9b0a3193c32'),
(195, 10, NULL, 101, 5, 'craft\\elements\\Entry', 1, 0, '2022-07-13 16:19:57', '2022-07-13 16:19:57', NULL, NULL, '4b0b8e88-44c9-4c0a-b4be-d34eac6486ea'),
(197, 10, NULL, 102, 5, 'craft\\elements\\Entry', 1, 0, '2022-07-13 16:20:08', '2022-07-13 16:20:08', NULL, NULL, '6acdd8d6-6cf6-4b78-a328-55d6e334d653'),
(198, NULL, NULL, NULL, 6, 'craft\\elements\\Entry', 1, 0, '2022-07-13 16:24:49', '2022-07-14 16:25:40', NULL, NULL, '9e7043cc-966a-4e33-becc-811f920f01f9'),
(199, 198, NULL, 103, 6, 'craft\\elements\\Entry', 1, 0, '2022-07-13 16:24:49', '2022-07-13 16:24:49', NULL, NULL, '49f87525-f535-45f2-92d9-9b6938887bc6'),
(200, NULL, NULL, NULL, 6, 'craft\\elements\\Entry', 1, 0, '2022-07-13 16:24:51', '2022-07-14 16:25:28', NULL, NULL, '9b2fb99b-fddf-40bf-8ba1-24ef2c434d95'),
(201, 200, NULL, 104, 6, 'craft\\elements\\Entry', 1, 0, '2022-07-13 16:24:51', '2022-07-13 16:24:51', NULL, NULL, '57893323-0ae0-4774-a7a6-831fdc2819cb'),
(203, 51, NULL, 105, 6, 'craft\\elements\\Entry', 1, 0, '2022-07-13 16:25:37', '2022-07-13 16:25:37', NULL, NULL, '73bf9442-f523-49da-8083-aa9f4d7a8bca'),
(205, 198, NULL, 106, 6, 'craft\\elements\\Entry', 1, 0, '2022-07-13 16:25:43', '2022-07-13 16:25:43', NULL, NULL, '2ba6519e-cd87-423a-8713-8084cc44ec6a'),
(207, 51, NULL, 107, 6, 'craft\\elements\\Entry', 1, 0, '2022-07-13 16:25:49', '2022-07-13 16:25:49', NULL, NULL, 'a843b02a-07d4-4df5-b8a8-93d9e35bb5d6'),
(208, 13, NULL, 108, 7, 'craft\\elements\\Entry', 1, 0, '2022-07-13 16:28:41', '2022-07-13 16:28:41', NULL, NULL, '4523b1d3-dedb-4236-a241-0c783df1f574'),
(209, 13, NULL, 109, 7, 'craft\\elements\\Entry', 1, 0, '2022-07-13 16:28:41', '2022-07-13 16:28:41', NULL, NULL, 'efbe4575-d78d-401f-a527-6f8ef5f6e20e'),
(210, NULL, NULL, NULL, 8, 'craft\\elements\\Entry', 1, 0, '2022-07-13 17:17:49', '2022-07-14 16:21:12', NULL, NULL, '1a8603c9-d38f-4121-aea4-dea6c9ad74c3'),
(211, NULL, NULL, NULL, 15, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2022-07-13 17:17:49', '2022-07-13 17:17:49', NULL, NULL, 'a75e6c16-e325-45d4-8866-c2eb8c0320a6'),
(212, NULL, NULL, NULL, 14, 'craft\\elements\\MatrixBlock', 1, 0, '2022-07-13 17:17:49', '2022-07-13 17:17:49', NULL, NULL, '12991512-4453-49c5-8234-a0a18e7eed48'),
(213, NULL, NULL, NULL, 14, 'craft\\elements\\MatrixBlock', 1, 0, '2022-07-13 17:17:49', '2022-07-13 17:17:49', NULL, NULL, '602de342-a7e9-419e-86ce-b84fed06630d'),
(214, 210, NULL, 110, 8, 'craft\\elements\\Entry', 1, 0, '2022-07-13 17:17:49', '2022-07-13 17:17:49', NULL, NULL, '92f35590-bac5-4a78-9003-f822de4f793a'),
(215, 211, NULL, 111, 15, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2022-07-13 17:17:49', '2022-07-13 17:17:49', NULL, NULL, 'af31a00d-e982-4df3-b0db-67e7735e892a'),
(216, 212, NULL, 112, 14, 'craft\\elements\\MatrixBlock', 1, 0, '2022-07-13 17:17:49', '2022-07-13 17:17:49', NULL, NULL, '23290d75-c767-4a10-8038-7b1c163c41f4'),
(217, 213, NULL, 113, 14, 'craft\\elements\\MatrixBlock', 1, 0, '2022-07-13 17:17:49', '2022-07-13 17:17:49', NULL, NULL, '81cefa13-4be4-4d93-a372-575688c88734'),
(218, 19, NULL, 114, 9, 'craft\\elements\\Entry', 1, 0, '2022-07-13 18:26:41', '2022-07-13 18:26:41', NULL, NULL, '5fbee6e7-cbca-41e5-9464-165188be6523'),
(219, 19, NULL, 115, 9, 'craft\\elements\\Entry', 1, 0, '2022-07-13 18:26:41', '2022-07-13 18:26:41', NULL, NULL, '08976de0-3095-4ba3-bc5c-fcc9e0c3d037'),
(220, NULL, NULL, NULL, 21, 'craft\\elements\\Entry', 1, 0, '2022-07-13 18:27:58', '2022-07-13 18:27:58', NULL, '2022-07-13 18:29:08', 'eb578561-9395-4b7b-9b75-60dec3087715'),
(221, 220, NULL, 116, 21, 'craft\\elements\\Entry', 1, 0, '2022-07-13 18:27:58', '2022-07-13 18:27:58', NULL, '2022-07-13 18:29:08', '2893f177-cc38-46c3-a0e5-4acf024ea947'),
(222, 220, NULL, 117, 21, 'craft\\elements\\Entry', 1, 0, '2022-07-13 18:27:58', '2022-07-13 18:27:58', NULL, '2022-07-13 18:29:08', 'bfbad6ce-dd5f-479c-bd06-b43c3547457f'),
(223, 19, NULL, 118, 9, 'craft\\elements\\Entry', 1, 0, '2022-07-13 18:32:11', '2022-07-13 18:32:11', NULL, NULL, 'df7b89e4-5015-45a4-a848-f0b562bff938'),
(224, NULL, NULL, NULL, 2, 'craft\\elements\\Entry', 1, 0, '2022-07-13 19:12:41', '2022-07-14 15:34:09', NULL, NULL, 'f3e6b7f6-84b6-4998-ab3c-9005cf20e015'),
(225, NULL, NULL, NULL, 17, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2022-07-13 19:12:41', '2022-07-14 14:36:18', NULL, NULL, '4cb0e803-7c1b-4e83-99e4-a0bacf4d1be8'),
(226, NULL, NULL, NULL, 14, 'craft\\elements\\MatrixBlock', 1, 0, '2022-07-13 19:12:41', '2022-07-14 14:21:42', NULL, NULL, '5704d290-8087-4d36-ba1a-a419d59a9b4c'),
(227, NULL, NULL, NULL, 14, 'craft\\elements\\MatrixBlock', 1, 0, '2022-07-13 19:12:41', '2022-07-14 14:21:42', NULL, NULL, '48c24a07-789d-44be-b4d6-ce5007583aee'),
(228, NULL, NULL, NULL, 14, 'craft\\elements\\MatrixBlock', 1, 0, '2022-07-13 19:12:41', '2022-07-14 14:21:42', NULL, NULL, '8c9a1a7c-e7b8-4308-910f-5776cd8174de'),
(229, 224, NULL, 119, 2, 'craft\\elements\\Entry', 1, 0, '2022-07-13 19:12:41', '2022-07-13 19:12:41', NULL, NULL, '5e636f36-ea04-4fab-8677-ca694c67dede'),
(230, 225, NULL, 120, 17, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2022-07-13 19:12:41', '2022-07-13 19:12:41', NULL, NULL, '72e92416-86cd-4fd8-9542-0b38053f5982'),
(231, 226, NULL, 121, 14, 'craft\\elements\\MatrixBlock', 1, 0, '2022-07-13 19:12:41', '2022-07-13 19:12:41', NULL, NULL, '0a78945f-ff25-4dac-97f9-cbf6b1835e62'),
(232, 227, NULL, 122, 14, 'craft\\elements\\MatrixBlock', 1, 0, '2022-07-13 19:12:41', '2022-07-13 19:12:41', NULL, NULL, 'fcb609c7-5b81-4f0f-adfd-218aa6fd0c5e'),
(233, 228, NULL, 123, 14, 'craft\\elements\\MatrixBlock', 1, 0, '2022-07-13 19:12:41', '2022-07-13 19:12:41', NULL, NULL, '7b5d7baf-6d57-41c9-a440-d4211ee7007c'),
(234, NULL, NULL, NULL, 2, 'craft\\elements\\Entry', 1, 0, '2022-07-13 19:12:43', '2022-07-14 15:25:06', NULL, NULL, 'a9d2aef9-1f72-4e5f-bc9e-4a3093098a52'),
(235, NULL, NULL, NULL, 17, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2022-07-13 19:12:43', '2022-07-14 15:25:06', NULL, NULL, 'd487e87d-7361-4916-9d12-245f407b9bb8'),
(236, NULL, NULL, NULL, 14, 'craft\\elements\\MatrixBlock', 1, 0, '2022-07-13 19:12:43', '2022-07-14 14:21:42', NULL, NULL, '3c985598-8f75-4be7-a986-99a24cf8bd52'),
(237, NULL, NULL, NULL, 14, 'craft\\elements\\MatrixBlock', 1, 0, '2022-07-13 19:12:43', '2022-07-14 14:21:42', NULL, NULL, '0ccca141-3920-4bab-84e0-f52488c42fdd'),
(238, NULL, NULL, NULL, 14, 'craft\\elements\\MatrixBlock', 1, 0, '2022-07-13 19:12:43', '2022-07-14 14:21:42', NULL, NULL, '0511ff31-84a1-4cf9-8050-69774770cd67'),
(239, 234, NULL, 124, 2, 'craft\\elements\\Entry', 1, 0, '2022-07-13 19:12:43', '2022-07-13 19:12:43', NULL, NULL, 'e463047e-761f-4b48-97fc-2a7b137af954'),
(240, 235, NULL, 125, 17, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2022-07-13 19:12:43', '2022-07-13 19:12:43', NULL, NULL, '4f6ffbba-8a01-4f65-a378-25acceee68e5'),
(241, 236, NULL, 126, 14, 'craft\\elements\\MatrixBlock', 1, 0, '2022-07-13 19:12:43', '2022-07-13 19:12:43', NULL, NULL, 'df36e5bd-5239-4e35-b70a-2851d8a309be'),
(242, 237, NULL, 127, 14, 'craft\\elements\\MatrixBlock', 1, 0, '2022-07-13 19:12:43', '2022-07-13 19:12:43', NULL, NULL, '56068485-198e-44b0-bf9c-c0493da4e843'),
(243, 238, NULL, 128, 14, 'craft\\elements\\MatrixBlock', 1, 0, '2022-07-13 19:12:43', '2022-07-13 19:12:43', NULL, NULL, 'ab4ff11d-1b83-489f-98a3-d20d5f3c0250'),
(244, NULL, NULL, NULL, 2, 'craft\\elements\\Entry', 1, 0, '2022-07-13 19:12:45', '2022-07-14 15:26:05', NULL, NULL, 'ef23479c-c94e-4c6f-b938-df90d911510a'),
(245, NULL, NULL, NULL, 17, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2022-07-13 19:12:45', '2022-07-14 15:26:05', NULL, NULL, '7a1c2ae5-cd0f-4a8b-b7d5-6c16aff78385'),
(246, NULL, NULL, NULL, 14, 'craft\\elements\\MatrixBlock', 1, 0, '2022-07-13 19:12:45', '2022-07-14 14:21:43', NULL, NULL, '0937a0c1-7927-4a7a-b0be-b38400268b5b'),
(247, NULL, NULL, NULL, 14, 'craft\\elements\\MatrixBlock', 1, 0, '2022-07-13 19:12:45', '2022-07-14 14:21:43', NULL, NULL, '790610da-518e-4a20-83d6-44b0e6aefcc5'),
(248, NULL, NULL, NULL, 14, 'craft\\elements\\MatrixBlock', 1, 0, '2022-07-13 19:12:45', '2022-07-14 14:21:43', NULL, NULL, '4452b503-f475-47e2-9405-befc767779e1'),
(249, 244, NULL, 129, 2, 'craft\\elements\\Entry', 1, 0, '2022-07-13 19:12:45', '2022-07-13 19:12:45', NULL, NULL, '3ea85935-b9b5-4d3f-a062-966904bee9ee'),
(250, 245, NULL, 130, 17, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2022-07-13 19:12:45', '2022-07-13 19:12:45', NULL, NULL, '015f9c2d-17e7-4678-a8c1-c8c74df0542b'),
(251, 246, NULL, 131, 14, 'craft\\elements\\MatrixBlock', 1, 0, '2022-07-13 19:12:45', '2022-07-13 19:12:45', NULL, NULL, '64c4066e-863f-40bc-8a8a-4f572ae1f1a8'),
(252, 247, NULL, 132, 14, 'craft\\elements\\MatrixBlock', 1, 0, '2022-07-13 19:12:45', '2022-07-13 19:12:45', NULL, NULL, '92ba6e72-e681-4b2d-bce0-57c6f7265d01'),
(253, 248, NULL, 133, 14, 'craft\\elements\\MatrixBlock', 1, 0, '2022-07-13 19:12:45', '2022-07-13 19:12:45', NULL, NULL, '8946948c-8070-4f45-a6c4-723374061ae7'),
(254, NULL, NULL, NULL, 2, 'craft\\elements\\Entry', 1, 0, '2022-07-13 19:12:46', '2022-07-13 19:12:46', NULL, '2022-07-14 15:25:40', 'ae3e9b63-6ad7-43fa-bdbb-43529b312a3e'),
(255, NULL, NULL, NULL, 17, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2022-07-13 19:12:46', '2022-07-14 14:21:43', NULL, '2022-07-14 15:25:40', 'c47a0338-a31e-4b8d-bf05-87a1198ee2f0'),
(256, NULL, NULL, NULL, 14, 'craft\\elements\\MatrixBlock', 1, 0, '2022-07-13 19:12:46', '2022-07-14 14:21:43', NULL, '2022-07-14 15:25:40', '2e05220b-4d9f-4de1-a304-7db6d626b97b'),
(257, NULL, NULL, NULL, 14, 'craft\\elements\\MatrixBlock', 1, 0, '2022-07-13 19:12:46', '2022-07-14 14:21:43', NULL, '2022-07-14 15:25:40', 'e7da422f-6a92-4b66-9d4b-dc1535e0ec19'),
(258, NULL, NULL, NULL, 14, 'craft\\elements\\MatrixBlock', 1, 0, '2022-07-13 19:12:46', '2022-07-14 14:21:43', NULL, '2022-07-14 15:25:40', '3e20b01f-3ea5-4481-98a5-30f58fc43ccc'),
(259, 254, NULL, 134, 2, 'craft\\elements\\Entry', 1, 0, '2022-07-13 19:12:46', '2022-07-13 19:12:46', NULL, '2022-07-14 15:25:40', '66ca4564-2123-4786-b31a-97c2baa4d875'),
(260, 255, NULL, 135, 17, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2022-07-13 19:12:46', '2022-07-13 19:12:46', NULL, '2022-07-14 15:25:40', '629dc472-1cb9-49d5-8dc6-be9fca4a95e6'),
(261, 256, NULL, 136, 14, 'craft\\elements\\MatrixBlock', 1, 0, '2022-07-13 19:12:46', '2022-07-13 19:12:46', NULL, '2022-07-14 15:25:40', 'c257efdb-d777-4ba7-897d-f4663f1809f1'),
(262, 257, NULL, 137, 14, 'craft\\elements\\MatrixBlock', 1, 0, '2022-07-13 19:12:46', '2022-07-13 19:12:46', NULL, '2022-07-14 15:25:40', '4d17191b-e63b-4d85-83de-ed54ddb4b770'),
(263, 258, NULL, 138, 14, 'craft\\elements\\MatrixBlock', 1, 0, '2022-07-13 19:12:46', '2022-07-13 19:12:46', NULL, '2022-07-14 15:25:40', 'eed36ca6-0bc0-4220-b6ad-4354232e80c2'),
(264, NULL, NULL, NULL, 2, 'craft\\elements\\Entry', 1, 0, '2022-07-13 19:12:48', '2022-07-13 19:12:48', NULL, '2022-07-14 15:25:40', '6ad26d1b-2758-4100-868d-5aaf567a3018'),
(265, NULL, NULL, NULL, 17, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2022-07-13 19:12:48', '2022-07-14 14:21:43', NULL, '2022-07-14 15:25:40', 'a6fb96a1-7803-494f-9e84-67f6d152ef12'),
(266, NULL, NULL, NULL, 14, 'craft\\elements\\MatrixBlock', 1, 0, '2022-07-13 19:12:48', '2022-07-14 14:21:43', NULL, '2022-07-14 15:25:40', 'dce51d60-6329-4720-a22b-ff726a6cc899'),
(267, NULL, NULL, NULL, 14, 'craft\\elements\\MatrixBlock', 1, 0, '2022-07-13 19:12:48', '2022-07-14 14:21:43', NULL, '2022-07-14 15:25:40', '8685a477-d9d1-40ab-86ad-28b6d71c2012'),
(268, NULL, NULL, NULL, 14, 'craft\\elements\\MatrixBlock', 1, 0, '2022-07-13 19:12:48', '2022-07-14 14:21:43', NULL, '2022-07-14 15:25:40', 'add91e93-c634-464d-87fe-ffb0403ed6b2'),
(269, 264, NULL, 139, 2, 'craft\\elements\\Entry', 1, 0, '2022-07-13 19:12:48', '2022-07-13 19:12:48', NULL, '2022-07-14 15:25:40', '15050d11-7941-45e2-9f10-fc3cf036847d'),
(270, 265, NULL, 140, 17, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2022-07-13 19:12:48', '2022-07-13 19:12:48', NULL, '2022-07-14 15:25:40', 'c0ed123e-ec7a-40a7-8c87-fb8bdd7c3aae'),
(271, 266, NULL, 141, 14, 'craft\\elements\\MatrixBlock', 1, 0, '2022-07-13 19:12:48', '2022-07-13 19:12:48', NULL, '2022-07-14 15:25:40', '5dcb92b8-1103-4ffb-8fdf-99895197a91e'),
(272, 267, NULL, 142, 14, 'craft\\elements\\MatrixBlock', 1, 0, '2022-07-13 19:12:48', '2022-07-13 19:12:48', NULL, '2022-07-14 15:25:40', '83a3778c-a300-463d-9924-48f52671f4df'),
(273, 268, NULL, 143, 14, 'craft\\elements\\MatrixBlock', 1, 0, '2022-07-13 19:12:48', '2022-07-13 19:12:48', NULL, '2022-07-14 15:25:40', '2ec8d7ec-db7e-46bd-b75d-4cd5699b7b7c'),
(274, NULL, NULL, NULL, 2, 'craft\\elements\\Entry', 1, 0, '2022-07-13 19:12:49', '2022-07-13 19:12:49', NULL, '2022-07-14 15:25:40', '2f3142e6-58ee-40e8-84f3-fa9cb96684ee'),
(275, NULL, NULL, NULL, 17, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2022-07-13 19:12:50', '2022-07-14 14:21:43', NULL, '2022-07-14 15:25:40', '181d5bd8-2e25-4305-a9c1-e7ea0c5ec12f'),
(276, NULL, NULL, NULL, 14, 'craft\\elements\\MatrixBlock', 1, 0, '2022-07-13 19:12:50', '2022-07-14 14:21:43', NULL, '2022-07-14 15:25:40', 'b90c5d9a-9d50-4d6f-ae17-a8db9e45be45'),
(277, NULL, NULL, NULL, 14, 'craft\\elements\\MatrixBlock', 1, 0, '2022-07-13 19:12:50', '2022-07-14 14:21:43', NULL, '2022-07-14 15:25:40', '2c0df8db-7386-4f3e-8b63-664140bb1706'),
(278, NULL, NULL, NULL, 14, 'craft\\elements\\MatrixBlock', 1, 0, '2022-07-13 19:12:50', '2022-07-14 14:21:43', NULL, '2022-07-14 15:25:40', '36e5835b-3879-46f5-94ad-6b7b2b3782f0'),
(279, 274, NULL, 144, 2, 'craft\\elements\\Entry', 1, 0, '2022-07-13 19:12:49', '2022-07-13 19:12:50', NULL, '2022-07-14 15:25:40', '83a1d7a5-57e2-4245-a119-745b764a82ca'),
(280, 275, NULL, 145, 17, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2022-07-13 19:12:50', '2022-07-13 19:12:50', NULL, '2022-07-14 15:25:40', 'ac7dccb5-3049-4c5a-bff4-b465692bb7ef'),
(281, 276, NULL, 146, 14, 'craft\\elements\\MatrixBlock', 1, 0, '2022-07-13 19:12:50', '2022-07-13 19:12:50', NULL, '2022-07-14 15:25:40', '4efba526-19b0-4865-b044-b2006e45e22b'),
(282, 277, NULL, 147, 14, 'craft\\elements\\MatrixBlock', 1, 0, '2022-07-13 19:12:50', '2022-07-13 19:12:50', NULL, '2022-07-14 15:25:40', '59b99a5f-e2da-4a3f-b344-091711753d59'),
(283, 278, NULL, 148, 14, 'craft\\elements\\MatrixBlock', 1, 0, '2022-07-13 19:12:50', '2022-07-13 19:12:50', NULL, '2022-07-14 15:25:40', 'd138d8c8-5339-45e1-a690-1c5650435c08'),
(284, NULL, NULL, NULL, 2, 'craft\\elements\\Entry', 1, 0, '2022-07-13 19:12:51', '2022-07-13 19:12:51', NULL, '2022-07-14 15:25:40', '80d3d254-dc51-4f3a-a998-90fce5abc6f3'),
(285, NULL, NULL, NULL, 17, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2022-07-13 19:12:51', '2022-07-14 14:21:43', NULL, '2022-07-14 15:25:40', 'd0e47dfc-f65f-43b7-bc25-09c41fddd939'),
(286, NULL, NULL, NULL, 14, 'craft\\elements\\MatrixBlock', 1, 0, '2022-07-13 19:12:51', '2022-07-14 14:21:43', NULL, '2022-07-14 15:25:40', '742343cf-962b-4be6-bb5e-99c84fc9c08d'),
(287, NULL, NULL, NULL, 14, 'craft\\elements\\MatrixBlock', 1, 0, '2022-07-13 19:12:51', '2022-07-14 14:21:43', NULL, '2022-07-14 15:25:40', '5c73a16a-50dc-4519-9fda-77638b328725'),
(288, NULL, NULL, NULL, 14, 'craft\\elements\\MatrixBlock', 1, 0, '2022-07-13 19:12:51', '2022-07-14 14:21:43', NULL, '2022-07-14 15:25:40', '2d885f82-d138-408f-bb29-70b4dfc7a325'),
(289, 284, NULL, 149, 2, 'craft\\elements\\Entry', 1, 0, '2022-07-13 19:12:51', '2022-07-13 19:12:51', NULL, '2022-07-14 15:25:40', '07e8f37d-e46d-4d8f-819d-a0fb0366124e'),
(290, 285, NULL, 150, 17, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2022-07-13 19:12:51', '2022-07-13 19:12:51', NULL, '2022-07-14 15:25:40', 'de972db5-dce6-4152-a970-637eb0c08fa2'),
(291, 286, NULL, 151, 14, 'craft\\elements\\MatrixBlock', 1, 0, '2022-07-13 19:12:51', '2022-07-13 19:12:51', NULL, '2022-07-14 15:25:40', '32cd622b-e830-4a6c-a47c-fc19c54b9b4b'),
(292, 287, NULL, 152, 14, 'craft\\elements\\MatrixBlock', 1, 0, '2022-07-13 19:12:51', '2022-07-13 19:12:51', NULL, '2022-07-14 15:25:40', 'd2cdf9e6-3ec9-49be-b99f-49e702e17d3d'),
(293, 288, NULL, 153, 14, 'craft\\elements\\MatrixBlock', 1, 0, '2022-07-13 19:12:51', '2022-07-13 19:12:51', NULL, '2022-07-14 15:25:40', '5d0a3fd6-d151-44ea-a3ea-e08f054938bf'),
(294, NULL, NULL, NULL, 2, 'craft\\elements\\Entry', 1, 0, '2022-07-13 19:12:53', '2022-07-13 19:12:53', NULL, '2022-07-14 15:25:40', 'e16ede2a-6ae0-41ec-a735-9a632ad99da0'),
(295, NULL, NULL, NULL, 17, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2022-07-13 19:12:53', '2022-07-14 14:21:43', NULL, '2022-07-14 15:25:40', 'be6783bf-2830-4273-bf8f-e73104aa0c83'),
(296, NULL, NULL, NULL, 14, 'craft\\elements\\MatrixBlock', 1, 0, '2022-07-13 19:12:53', '2022-07-14 14:21:43', NULL, '2022-07-14 15:25:40', 'b2ec0e34-ba6d-4249-be3b-766989bb0206'),
(297, NULL, NULL, NULL, 14, 'craft\\elements\\MatrixBlock', 1, 0, '2022-07-13 19:12:53', '2022-07-14 14:21:43', NULL, '2022-07-14 15:25:40', '7dd98c73-195f-4eb9-a3d6-f8aee05c8d73'),
(298, NULL, NULL, NULL, 14, 'craft\\elements\\MatrixBlock', 1, 0, '2022-07-13 19:12:53', '2022-07-14 14:21:43', NULL, '2022-07-14 15:25:40', '1664612e-a5ad-4869-9152-eb5e128fb639'),
(299, 294, NULL, 154, 2, 'craft\\elements\\Entry', 1, 0, '2022-07-13 19:12:53', '2022-07-13 19:12:53', NULL, '2022-07-14 15:25:40', 'a6a329cc-a933-48e5-b68b-916a163c84a3'),
(300, 295, NULL, 155, 17, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2022-07-13 19:12:53', '2022-07-13 19:12:53', NULL, '2022-07-14 15:25:40', '08d03a40-d336-412d-b768-27d028c52547'),
(301, 296, NULL, 156, 14, 'craft\\elements\\MatrixBlock', 1, 0, '2022-07-13 19:12:53', '2022-07-13 19:12:53', NULL, '2022-07-14 15:25:40', 'c49b1458-b837-4f66-a40e-0cb2692848f7'),
(302, 297, NULL, 157, 14, 'craft\\elements\\MatrixBlock', 1, 0, '2022-07-13 19:12:53', '2022-07-13 19:12:53', NULL, '2022-07-14 15:25:40', 'cab87557-e635-45e3-9a3a-03b4ce96d602'),
(303, 298, NULL, 158, 14, 'craft\\elements\\MatrixBlock', 1, 0, '2022-07-13 19:12:53', '2022-07-13 19:12:53', NULL, '2022-07-14 15:25:40', '112fef9c-08fe-4c4b-8a31-39ed4b3d0621'),
(304, NULL, NULL, NULL, 22, 'craft\\elements\\Entry', 1, 0, '2022-07-14 13:23:16', '2022-07-14 14:04:46', NULL, NULL, 'c1192579-e5ac-458a-aa7a-f0dfcb9b4a90'),
(305, 304, NULL, 159, 22, 'craft\\elements\\Entry', 1, 0, '2022-07-14 13:23:16', '2022-07-14 13:23:16', NULL, NULL, 'f5388bbc-c23c-49b5-94c5-b0cbeb0d198f'),
(306, 304, NULL, 160, 22, 'craft\\elements\\Entry', 1, 0, '2022-07-14 13:23:16', '2022-07-14 13:23:16', NULL, NULL, 'aa2c55de-796c-4e58-b46b-4f96a6c669c2'),
(307, 304, NULL, 161, 22, 'craft\\elements\\Entry', 1, 0, '2022-07-14 13:23:45', '2022-07-14 13:23:46', NULL, NULL, '12c85ed5-0f61-4cc7-b6bd-76870b8e19bc'),
(308, NULL, NULL, NULL, 23, 'craft\\elements\\Entry', 1, 0, '2022-07-14 13:24:27', '2022-07-14 13:24:57', NULL, NULL, '4a853e10-bdd2-4d6d-ace4-9695667023c6'),
(309, 308, NULL, 162, 23, 'craft\\elements\\Entry', 1, 0, '2022-07-14 13:24:27', '2022-07-14 13:24:27', NULL, NULL, '1c29f514-3f4d-4eb6-9109-87b648629c3d'),
(310, 308, NULL, 163, 23, 'craft\\elements\\Entry', 1, 0, '2022-07-14 13:24:27', '2022-07-14 13:24:27', NULL, NULL, '763a028a-39ad-4f28-a87b-ee1c7c4b206f'),
(311, 308, NULL, 164, 23, 'craft\\elements\\Entry', 1, 0, '2022-07-14 13:24:57', '2022-07-14 13:24:57', NULL, NULL, 'afd829c6-1686-4260-83ff-b3c0d6be7ed7'),
(313, 42, NULL, 165, 2, 'craft\\elements\\Entry', 1, 0, '2022-07-14 13:25:26', '2022-07-14 13:25:26', NULL, NULL, '72955c6d-1c32-4c16-98fd-d0ba42a18b40'),
(314, 43, NULL, 166, 17, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2022-07-12 18:04:11', '2022-07-14 13:25:26', NULL, NULL, '612dce54-525e-4ee2-9a3e-f5aac3417950'),
(315, 82, NULL, 167, 14, 'craft\\elements\\MatrixBlock', 1, 0, '2022-07-12 18:16:04', '2022-07-14 13:25:27', NULL, NULL, 'e9511826-98ef-40b0-a3a9-67ba191700fe'),
(316, 118, NULL, 168, 14, 'craft\\elements\\MatrixBlock', 1, 0, '2022-07-12 18:16:04', '2022-07-14 13:25:27', NULL, NULL, '80fd8a0b-6b81-45ae-b9d9-0412d99d4145'),
(317, 119, NULL, 169, 14, 'craft\\elements\\MatrixBlock', 1, 0, '2022-07-12 18:16:04', '2022-07-14 13:25:27', NULL, NULL, 'b04b5bc2-83f9-4ee4-8ab0-c6b6cb6855f0'),
(318, NULL, NULL, NULL, 24, 'craft\\elements\\Entry', 1, 0, '2022-07-14 13:27:42', '2022-07-14 13:27:54', NULL, NULL, '5f4e5d1f-c2a9-4691-8737-d2d893558466'),
(319, 318, NULL, 170, 24, 'craft\\elements\\Entry', 1, 0, '2022-07-14 13:27:42', '2022-07-14 13:27:42', NULL, NULL, '4f3c8926-4fb3-4153-91cc-816bcac7b557'),
(320, 318, NULL, 171, 24, 'craft\\elements\\Entry', 1, 0, '2022-07-14 13:27:42', '2022-07-14 13:27:42', NULL, NULL, '862fdf62-2de1-4bc7-9fbc-a3b9e9d8e01f'),
(321, 318, NULL, 172, 24, 'craft\\elements\\Entry', 1, 0, '2022-07-14 13:27:54', '2022-07-14 13:27:54', NULL, NULL, '5b8e45d0-a4d8-45f7-aa27-3b6ce8a3b247'),
(322, NULL, NULL, NULL, 25, 'craft\\elements\\Entry', 1, 0, '2022-07-14 13:57:13', '2022-07-14 14:12:13', NULL, NULL, '983c1de4-4172-4924-831e-cfe0785225f3'),
(323, 322, NULL, 173, 25, 'craft\\elements\\Entry', 1, 0, '2022-07-14 13:57:13', '2022-07-14 13:57:13', NULL, NULL, '3ff29349-bd3c-41c4-b36b-6287391be49b'),
(324, 322, NULL, 174, 25, 'craft\\elements\\Entry', 1, 0, '2022-07-14 13:57:13', '2022-07-14 13:57:13', NULL, NULL, 'f781607a-8c95-4476-93f1-fc783e7e6759'),
(325, 322, NULL, 175, 25, 'craft\\elements\\Entry', 1, 0, '2022-07-14 13:57:39', '2022-07-14 13:57:39', NULL, NULL, 'a518374e-d48b-4111-a17e-98576b13ec0d'),
(326, 304, NULL, 176, 22, 'craft\\elements\\Entry', 1, 0, '2022-07-14 14:04:46', '2022-07-14 14:04:46', NULL, NULL, '2fe99982-2b1b-4d6b-9440-98004de895f6'),
(327, 304, NULL, 177, 22, 'craft\\elements\\Entry', 1, 0, '2022-07-14 14:04:46', '2022-07-14 14:04:46', NULL, NULL, '0b27ec85-2d6a-4623-9357-f8b48cfe81f3'),
(329, NULL, NULL, NULL, 14, 'craft\\elements\\MatrixBlock', 1, 0, '2022-07-14 14:10:51', '2022-07-14 14:10:51', NULL, '2022-07-14 14:10:55', '6da34329-3d68-4b59-bbf7-6ba4851e39b3'),
(330, NULL, NULL, NULL, 14, 'craft\\elements\\MatrixBlock', 1, 0, '2022-07-14 14:10:55', '2022-07-14 14:10:55', NULL, '2022-07-14 14:10:56', '7ba31552-cca3-4b9a-9574-aaed960e2c39'),
(331, NULL, NULL, NULL, 14, 'craft\\elements\\MatrixBlock', 1, 0, '2022-07-14 14:10:56', '2022-07-14 14:10:56', NULL, '2022-07-14 14:10:58', '8eefc96b-c701-43b2-a6dd-540270060c77'),
(332, NULL, NULL, NULL, 14, 'craft\\elements\\MatrixBlock', 1, 0, '2022-07-14 14:10:58', '2022-07-14 14:10:58', NULL, '2022-07-14 14:10:59', '86c1b3cc-6175-48d2-82d9-4add5a7d202c'),
(333, NULL, NULL, NULL, 14, 'craft\\elements\\MatrixBlock', 1, 0, '2022-07-14 14:10:58', '2022-07-14 14:10:58', NULL, '2022-07-14 14:10:59', '6e3eec3d-4f88-4f11-bf85-4d1be9897940'),
(334, NULL, NULL, NULL, 14, 'craft\\elements\\MatrixBlock', 1, 0, '2022-07-14 14:10:59', '2022-07-14 14:10:59', NULL, '2022-07-14 14:11:01', 'fff34714-0fd4-45d1-b79c-0156140e9223'),
(335, NULL, NULL, NULL, 14, 'craft\\elements\\MatrixBlock', 1, 0, '2022-07-14 14:10:59', '2022-07-14 14:10:59', NULL, '2022-07-14 14:11:01', '5656bef0-b669-49d8-bd4c-f0a36433946b'),
(336, NULL, NULL, NULL, 14, 'craft\\elements\\MatrixBlock', 1, 0, '2022-07-14 14:11:01', '2022-07-14 14:11:01', NULL, '2022-07-14 14:11:16', 'ba31bec4-55db-4ca6-a816-80a3ab38802b'),
(337, NULL, NULL, NULL, 14, 'craft\\elements\\MatrixBlock', 1, 0, '2022-07-14 14:11:01', '2022-07-14 14:11:01', NULL, '2022-07-14 14:11:16', 'e263ecd8-460c-4d51-b02d-74dd5df4d487'),
(338, NULL, NULL, NULL, 14, 'craft\\elements\\MatrixBlock', 1, 0, '2022-07-14 14:11:16', '2022-07-14 14:11:16', NULL, '2022-07-14 14:11:52', '2b847383-9eb8-43da-bbc1-0de97e43b8f4'),
(339, NULL, NULL, NULL, 14, 'craft\\elements\\MatrixBlock', 1, 0, '2022-07-14 14:11:16', '2022-07-14 14:11:16', NULL, '2022-07-14 14:11:52', 'b01e8226-a8e6-4e93-bf76-5f7b58a0a7d0');
INSERT INTO `elements` (`id`, `canonicalId`, `draftId`, `revisionId`, `fieldLayoutId`, `type`, `enabled`, `archived`, `dateCreated`, `dateUpdated`, `dateLastMerged`, `dateDeleted`, `uid`) VALUES
(340, NULL, NULL, NULL, 14, 'craft\\elements\\MatrixBlock', 1, 0, '2022-07-14 14:11:52', '2022-07-14 14:11:52', NULL, '2022-07-14 14:12:09', '0792471a-8e22-4a2f-addd-28e068fc0851'),
(341, NULL, NULL, NULL, 14, 'craft\\elements\\MatrixBlock', 1, 0, '2022-07-14 14:11:52', '2022-07-14 14:11:52', NULL, '2022-07-14 14:12:09', '4bfdbac2-3dcf-476a-8e74-873038bbe9f5'),
(344, NULL, NULL, NULL, 14, 'craft\\elements\\MatrixBlock', 1, 0, '2022-07-14 14:12:13', '2022-07-14 14:12:13', NULL, NULL, '52109f33-eead-45bb-95a0-516fcd64a609'),
(345, NULL, NULL, NULL, 14, 'craft\\elements\\MatrixBlock', 1, 0, '2022-07-14 14:12:13', '2022-07-14 14:12:13', NULL, NULL, 'bbfc0528-1592-4802-acec-c067e6b5259b'),
(346, 322, NULL, 178, 25, 'craft\\elements\\Entry', 1, 0, '2022-07-14 14:12:13', '2022-07-14 14:12:13', NULL, NULL, '06285f9d-e7b7-4c80-8a4a-a10b3eb7f272'),
(347, 344, NULL, 179, 14, 'craft\\elements\\MatrixBlock', 1, 0, '2022-07-14 14:12:13', '2022-07-14 14:12:13', NULL, NULL, 'f288166e-1e9c-4f99-bb9a-495e0a049bf9'),
(348, 345, NULL, 180, 14, 'craft\\elements\\MatrixBlock', 1, 0, '2022-07-14 14:12:13', '2022-07-14 14:12:13', NULL, NULL, '605bee56-fb2d-44ac-8309-e583410448f5'),
(351, NULL, NULL, NULL, 11, 'craft\\elements\\Asset', 1, 0, '2022-07-14 14:35:50', '2022-07-14 14:35:50', NULL, NULL, '78f4660f-749e-44f4-849e-bc666b1f4d36'),
(352, 224, NULL, 181, 2, 'craft\\elements\\Entry', 1, 0, '2022-07-14 14:36:18', '2022-07-14 14:36:18', NULL, NULL, 'cebd0d23-e24a-4f1b-9071-34b6df3ede08'),
(353, 225, NULL, 182, 17, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2022-07-14 14:36:18', '2022-07-14 14:36:18', NULL, NULL, 'd96e2565-250f-4ae7-8c8a-86efeac530ad'),
(354, 226, NULL, 183, 14, 'craft\\elements\\MatrixBlock', 1, 0, '2022-07-14 14:21:42', '2022-07-14 14:36:18', NULL, NULL, '5d44ebf9-631b-46af-9189-4ea2a2d22eeb'),
(355, 227, NULL, 184, 14, 'craft\\elements\\MatrixBlock', 1, 0, '2022-07-14 14:21:42', '2022-07-14 14:36:18', NULL, NULL, '35e81875-ac69-49d4-bb2a-eed45094dddf'),
(356, 228, NULL, 185, 14, 'craft\\elements\\MatrixBlock', 1, 0, '2022-07-14 14:21:42', '2022-07-14 14:36:18', NULL, NULL, '436e1ade-d7d6-410f-8944-49b1e15011d1'),
(358, 42, NULL, 186, 2, 'craft\\elements\\Entry', 1, 0, '2022-07-14 14:43:19', '2022-07-14 14:43:20', NULL, NULL, '3956ae72-8156-4eec-8b56-eb2081395ee7'),
(359, 43, NULL, 187, 17, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2022-07-14 14:21:42', '2022-07-14 14:43:20', NULL, NULL, '79ec7f14-3983-47f1-88fd-41ceba56ad41'),
(360, 82, NULL, 188, 14, 'craft\\elements\\MatrixBlock', 1, 0, '2022-07-14 14:21:42', '2022-07-14 14:43:20', NULL, NULL, '83718358-bb0e-4e04-a4af-6a5ed974efb4'),
(361, 118, NULL, 189, 14, 'craft\\elements\\MatrixBlock', 1, 0, '2022-07-14 14:21:42', '2022-07-14 14:43:20', NULL, NULL, '9142da11-2715-470b-a6a8-cd2b0cd56351'),
(362, 119, NULL, 190, 14, 'craft\\elements\\MatrixBlock', 1, 0, '2022-07-14 14:21:42', '2022-07-14 14:43:20', NULL, NULL, 'c6340f37-263e-4ebd-8357-bd900aa719e9'),
(364, 234, NULL, 191, 2, 'craft\\elements\\Entry', 1, 0, '2022-07-14 14:49:12', '2022-07-14 14:49:12', NULL, NULL, '55ae4e52-018b-4bf8-ba64-5178dc9d7656'),
(365, 235, NULL, 192, 17, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2022-07-14 14:21:42', '2022-07-14 14:49:12', NULL, NULL, '57a5a60d-f6b5-4d14-a912-91618f6b0c49'),
(366, 236, NULL, 193, 14, 'craft\\elements\\MatrixBlock', 1, 0, '2022-07-14 14:21:42', '2022-07-14 14:49:12', NULL, NULL, '50f631e6-edf8-4712-a558-1562424cb24a'),
(367, 237, NULL, 194, 14, 'craft\\elements\\MatrixBlock', 1, 0, '2022-07-14 14:21:42', '2022-07-14 14:49:12', NULL, NULL, '7fad090f-03e1-4ae4-b331-e8887a497aba'),
(368, 238, NULL, 195, 14, 'craft\\elements\\MatrixBlock', 1, 0, '2022-07-14 14:21:42', '2022-07-14 14:49:12', NULL, NULL, 'ece89d12-e283-4dfc-92c0-174dbce65462'),
(369, NULL, NULL, NULL, 26, 'craft\\elements\\Entry', 1, 0, '2022-07-14 14:56:15', '2022-07-14 14:56:40', NULL, NULL, 'a6b4dbd0-e98c-473b-9adf-1b6006031bbf'),
(370, 369, NULL, 196, 26, 'craft\\elements\\Entry', 1, 0, '2022-07-14 14:56:15', '2022-07-14 14:56:15', NULL, NULL, '3cd88e06-3ae3-4cb4-9fce-03c52ae5cc73'),
(371, 369, NULL, 197, 26, 'craft\\elements\\Entry', 1, 0, '2022-07-14 14:56:15', '2022-07-14 14:56:15', NULL, NULL, 'c7e1aedb-efed-49ce-84b2-5dc4a56339d3'),
(372, 369, NULL, 198, 26, 'craft\\elements\\Entry', 1, 0, '2022-07-14 14:56:40', '2022-07-14 14:56:40', NULL, NULL, '36e6da03-1f17-4b45-a9e2-45ebcd070869'),
(373, 13, NULL, 199, 7, 'craft\\elements\\Entry', 1, 0, '2022-07-14 14:57:11', '2022-07-14 14:57:11', NULL, NULL, '47a8d9e0-c0eb-4b64-8ad1-fc1f21c6361d'),
(374, 19, NULL, 200, 9, 'craft\\elements\\Entry', 1, 0, '2022-07-14 14:57:26', '2022-07-14 14:57:26', NULL, NULL, '169e7002-209d-4620-b290-139777ede136'),
(377, 42, NULL, 201, 2, 'craft\\elements\\Entry', 1, 0, '2022-07-14 15:22:31', '2022-07-14 15:22:31', NULL, NULL, '2411b9cc-b499-49e0-bbe1-a5f61ea196e1'),
(378, 43, NULL, 202, 17, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2022-07-14 15:22:31', '2022-07-14 15:22:32', NULL, NULL, '603e5ba6-4234-42d7-ae1c-d460d993f242'),
(379, 82, NULL, 203, 14, 'craft\\elements\\MatrixBlock', 1, 0, '2022-07-14 14:21:42', '2022-07-14 15:22:32', NULL, NULL, '83092dc4-ff2c-45a8-be89-97a1d4f180c2'),
(380, 118, NULL, 204, 14, 'craft\\elements\\MatrixBlock', 1, 0, '2022-07-14 14:21:42', '2022-07-14 15:22:32', NULL, NULL, '402d037d-c3f0-4139-afd2-dd73c0575e8c'),
(381, 119, NULL, 205, 14, 'craft\\elements\\MatrixBlock', 1, 0, '2022-07-14 14:21:42', '2022-07-14 15:22:32', NULL, NULL, '12ccb3ec-c80a-43b7-a888-ea40d05e7eef'),
(383, NULL, NULL, NULL, 11, 'craft\\elements\\Asset', 1, 0, '2022-07-14 15:24:07', '2022-07-14 15:24:07', NULL, NULL, '2ae4cb7b-5bba-477b-a351-74412f6cbb2c'),
(384, NULL, NULL, NULL, 11, 'craft\\elements\\Asset', 1, 0, '2022-07-14 15:24:07', '2022-07-14 15:24:07', NULL, NULL, 'c54604cb-2b5d-4a4c-9ced-b32753c4d724'),
(385, NULL, NULL, NULL, 11, 'craft\\elements\\Asset', 1, 0, '2022-07-14 15:24:07', '2022-07-14 15:24:07', NULL, NULL, '33bb792b-21c0-4b32-9058-acc87890a0c5'),
(386, NULL, NULL, NULL, 11, 'craft\\elements\\Asset', 1, 0, '2022-07-14 15:24:08', '2022-07-14 15:24:08', NULL, NULL, '9f773746-a58f-4921-a6f9-2b250659a414'),
(387, NULL, NULL, NULL, 11, 'craft\\elements\\Asset', 1, 0, '2022-07-14 15:24:08', '2022-07-14 15:24:08', NULL, NULL, 'cf4d4701-494e-4822-aa5e-eac1e533e72e'),
(388, NULL, NULL, NULL, 11, 'craft\\elements\\Asset', 1, 0, '2022-07-14 15:24:08', '2022-07-14 15:24:08', NULL, NULL, 'caf3c1d2-18d1-4882-9dc6-222f91d2e588'),
(389, NULL, NULL, NULL, 11, 'craft\\elements\\Asset', 1, 0, '2022-07-14 15:24:08', '2022-07-14 15:24:08', NULL, NULL, '202c2338-a85d-4fe9-a064-1b1ea51c766f'),
(390, NULL, NULL, NULL, 11, 'craft\\elements\\Asset', 1, 0, '2022-07-14 15:24:09', '2022-07-14 15:24:09', NULL, NULL, '48fc0bbf-701c-4bad-a38f-162de8cbc389'),
(391, NULL, NULL, NULL, 11, 'craft\\elements\\Asset', 1, 0, '2022-07-14 15:24:09', '2022-07-14 15:24:09', NULL, NULL, '681859d1-a07d-4193-b93c-11fe67c68050'),
(392, 42, NULL, 206, 2, 'craft\\elements\\Entry', 1, 0, '2022-07-14 15:24:15', '2022-07-14 15:24:15', NULL, NULL, 'e0019170-58ca-48c4-bb45-226bf1cf0ed2'),
(393, 43, NULL, 207, 17, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2022-07-14 15:22:31', '2022-07-14 15:24:15', NULL, NULL, 'fead43d4-553f-43a3-96e2-9965e19fa16f'),
(394, 82, NULL, 208, 14, 'craft\\elements\\MatrixBlock', 1, 0, '2022-07-14 14:21:42', '2022-07-14 15:24:15', NULL, NULL, '614121d5-3212-4eab-ac1c-6f560a38e5f7'),
(395, 118, NULL, 209, 14, 'craft\\elements\\MatrixBlock', 1, 0, '2022-07-14 14:21:42', '2022-07-14 15:24:15', NULL, NULL, 'f6f050cd-b4e6-4233-959f-f0f821c1e0ee'),
(396, 119, NULL, 210, 14, 'craft\\elements\\MatrixBlock', 1, 0, '2022-07-14 14:21:42', '2022-07-14 15:24:15', NULL, NULL, '9fddaee8-e9db-4361-9836-022852a20f45'),
(399, 234, NULL, 211, 2, 'craft\\elements\\Entry', 1, 0, '2022-07-14 15:25:06', '2022-07-14 15:25:06', NULL, NULL, 'db29b6eb-2ee1-4fd9-b147-d8e1016425f3'),
(400, 235, NULL, 212, 17, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2022-07-14 15:25:06', '2022-07-14 15:25:06', NULL, NULL, '9a3f3e0e-a59c-4cdd-a558-4757c8685037'),
(401, 236, NULL, 213, 14, 'craft\\elements\\MatrixBlock', 1, 0, '2022-07-14 14:21:42', '2022-07-14 15:25:06', NULL, NULL, 'ff219ced-b2c7-4be8-bdbd-6b63da0565bf'),
(402, 237, NULL, 214, 14, 'craft\\elements\\MatrixBlock', 1, 0, '2022-07-14 14:21:42', '2022-07-14 15:25:06', NULL, NULL, '05dd5ed1-1c12-46f4-aa5a-d9198bc4dcd0'),
(403, 238, NULL, 215, 14, 'craft\\elements\\MatrixBlock', 1, 0, '2022-07-14 14:21:42', '2022-07-14 15:25:06', NULL, NULL, '978648b4-5ef5-40ea-a937-3a43e7bd1d64'),
(406, 244, NULL, 216, 2, 'craft\\elements\\Entry', 1, 0, '2022-07-14 15:26:05', '2022-07-14 15:26:05', NULL, NULL, 'bfad8146-542c-43ad-a4c4-ccb9875bbbf6'),
(407, 245, NULL, 217, 17, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2022-07-14 15:26:05', '2022-07-14 15:26:05', NULL, NULL, '0e8f298e-ab12-407e-baa3-f71c68215cbc'),
(408, 246, NULL, 218, 14, 'craft\\elements\\MatrixBlock', 1, 0, '2022-07-14 14:21:43', '2022-07-14 15:26:05', NULL, NULL, 'b5ee40fb-565c-4422-8b6e-fc19f6a3a016'),
(409, 247, NULL, 219, 14, 'craft\\elements\\MatrixBlock', 1, 0, '2022-07-14 14:21:43', '2022-07-14 15:26:05', NULL, NULL, '9e977309-0fc0-4d96-a3ca-e3acbaa5f60c'),
(410, 248, NULL, 220, 14, 'craft\\elements\\MatrixBlock', 1, 0, '2022-07-14 14:21:43', '2022-07-14 15:26:05', NULL, NULL, '77ad0e87-0424-4634-b8f7-215d9fa05b4d'),
(411, NULL, 55, NULL, 2, 'craft\\elements\\Entry', 1, 0, '2022-07-14 15:26:05', '2022-07-14 15:26:05', NULL, NULL, 'b704fbfa-786c-45f0-b70a-5540a7c5f82f'),
(413, NULL, NULL, NULL, 17, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2022-07-14 15:26:25', '2022-07-14 15:26:25', NULL, '2022-07-14 15:26:31', '0add23f0-f4be-41cb-9a25-e55601be0b62'),
(415, NULL, NULL, NULL, 17, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2022-07-14 15:26:31', '2022-07-14 15:26:31', NULL, '2022-07-14 15:26:33', 'b3ea9070-51ac-4792-b584-98f3f258b8a4'),
(417, NULL, NULL, NULL, 2, 'craft\\elements\\Entry', 1, 0, '2022-07-14 15:27:00', '2022-07-14 15:31:44', NULL, NULL, '10796724-f8de-4a48-9fea-64760b261a0e'),
(418, NULL, NULL, NULL, 17, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2022-07-14 15:27:00', '2022-07-14 15:31:44', NULL, NULL, 'bc4fbc16-adc8-4f0a-8434-5630234fc81a'),
(419, NULL, NULL, NULL, 14, 'craft\\elements\\MatrixBlock', 1, 0, '2022-07-14 15:27:00', '2022-07-14 15:27:00', NULL, NULL, '5967f323-9c9d-4032-ba7a-4795936d75ed'),
(420, NULL, NULL, NULL, 14, 'craft\\elements\\MatrixBlock', 1, 0, '2022-07-14 15:27:00', '2022-07-14 15:27:00', NULL, NULL, 'f5ac5cf5-961f-4da4-8cc9-6f9ffa436ea0'),
(421, NULL, NULL, NULL, 14, 'craft\\elements\\MatrixBlock', 1, 0, '2022-07-14 15:27:00', '2022-07-14 15:27:00', NULL, NULL, '474fdba0-fbf2-4052-a7d7-d8e18ecbb795'),
(422, 417, NULL, 221, 2, 'craft\\elements\\Entry', 1, 0, '2022-07-14 15:27:00', '2022-07-14 15:27:00', NULL, NULL, '9b193314-426e-48a6-a264-7fe3ac30e38d'),
(423, 418, NULL, 222, 17, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2022-07-14 15:27:00', '2022-07-14 15:27:00', NULL, NULL, '5457edce-dff1-4c2c-a1e0-2f5a09580cd1'),
(424, 419, NULL, 223, 14, 'craft\\elements\\MatrixBlock', 1, 0, '2022-07-14 15:27:00', '2022-07-14 15:27:00', NULL, NULL, 'a780ae5a-5619-4648-85c7-b76dd077ded9'),
(425, 420, NULL, 224, 14, 'craft\\elements\\MatrixBlock', 1, 0, '2022-07-14 15:27:00', '2022-07-14 15:27:00', NULL, NULL, 'b055a5de-1e98-4863-b833-efbb988c077d'),
(426, 421, NULL, 225, 14, 'craft\\elements\\MatrixBlock', 1, 0, '2022-07-14 15:27:00', '2022-07-14 15:27:00', NULL, NULL, 'd8717a4c-3ce0-45cc-b5df-496d634947aa'),
(427, NULL, NULL, NULL, 2, 'craft\\elements\\Entry', 1, 0, '2022-07-14 15:27:03', '2022-07-14 15:29:53', NULL, NULL, 'f239f70d-04d0-4eea-9f76-31567be10c76'),
(428, NULL, NULL, NULL, 17, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2022-07-14 15:27:03', '2022-07-14 15:29:53', NULL, NULL, '941e2fb7-1270-4e27-8454-58d53280bca1'),
(429, NULL, NULL, NULL, 14, 'craft\\elements\\MatrixBlock', 1, 0, '2022-07-14 15:27:03', '2022-07-14 15:27:03', NULL, NULL, 'df3012a6-c15b-4eb4-a31d-7f150f9092ba'),
(430, NULL, NULL, NULL, 14, 'craft\\elements\\MatrixBlock', 1, 0, '2022-07-14 15:27:03', '2022-07-14 15:27:03', NULL, NULL, '35d1528d-0aba-4ab0-8a68-85a21ef545a2'),
(431, NULL, NULL, NULL, 14, 'craft\\elements\\MatrixBlock', 1, 0, '2022-07-14 15:27:03', '2022-07-14 15:27:03', NULL, NULL, 'd92bc03e-30e1-4b70-b6f7-2d80947758f1'),
(432, 427, NULL, 226, 2, 'craft\\elements\\Entry', 1, 0, '2022-07-14 15:27:03', '2022-07-14 15:27:03', NULL, NULL, '540a6871-7a24-4c80-984f-20d412dfc307'),
(433, 428, NULL, 227, 17, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2022-07-14 15:27:03', '2022-07-14 15:27:03', NULL, NULL, 'b443dc6d-6d20-4339-9ebb-c3fd8496cdd7'),
(434, 429, NULL, 228, 14, 'craft\\elements\\MatrixBlock', 1, 0, '2022-07-14 15:27:03', '2022-07-14 15:27:03', NULL, NULL, 'f893ec95-8cc3-449e-8092-b84a8abd808b'),
(435, 430, NULL, 229, 14, 'craft\\elements\\MatrixBlock', 1, 0, '2022-07-14 15:27:03', '2022-07-14 15:27:03', NULL, NULL, '94686bc4-6d7a-4943-90b1-523f8558ed9c'),
(436, 431, NULL, 230, 14, 'craft\\elements\\MatrixBlock', 1, 0, '2022-07-14 15:27:03', '2022-07-14 15:27:03', NULL, NULL, '502104bd-f34e-4912-a888-db0b86b3dff7'),
(437, NULL, NULL, NULL, 2, 'craft\\elements\\Entry', 1, 0, '2022-07-14 15:27:05', '2022-07-14 15:29:14', NULL, NULL, '1511016d-0c83-40c1-b536-b4bf655468af'),
(438, NULL, NULL, NULL, 17, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2022-07-14 15:27:05', '2022-07-14 15:29:14', NULL, NULL, 'dad8c8ea-c60a-4210-8459-073fdddd4ef1'),
(439, NULL, NULL, NULL, 14, 'craft\\elements\\MatrixBlock', 1, 0, '2022-07-14 15:27:05', '2022-07-14 15:27:05', NULL, NULL, '686e939a-0903-4d74-a765-e69d0045361d'),
(440, NULL, NULL, NULL, 14, 'craft\\elements\\MatrixBlock', 1, 0, '2022-07-14 15:27:05', '2022-07-14 15:27:05', NULL, NULL, '4dd14d3a-2907-4575-ab34-6d8efb653fcc'),
(441, NULL, NULL, NULL, 14, 'craft\\elements\\MatrixBlock', 1, 0, '2022-07-14 15:27:05', '2022-07-14 15:27:05', NULL, NULL, 'a98b10c4-8a25-4d34-ae86-b91f58e1bb7b'),
(442, 437, NULL, 231, 2, 'craft\\elements\\Entry', 1, 0, '2022-07-14 15:27:05', '2022-07-14 15:27:05', NULL, NULL, '7729777b-17b1-42d9-a2eb-3307a2de6080'),
(443, 438, NULL, 232, 17, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2022-07-14 15:27:05', '2022-07-14 15:27:05', NULL, NULL, '54e1d27d-9e84-4668-b416-96f4e09fcd8a'),
(444, 439, NULL, 233, 14, 'craft\\elements\\MatrixBlock', 1, 0, '2022-07-14 15:27:05', '2022-07-14 15:27:05', NULL, NULL, '1ca5e3ea-f581-4b08-836a-1830304349f7'),
(445, 440, NULL, 234, 14, 'craft\\elements\\MatrixBlock', 1, 0, '2022-07-14 15:27:05', '2022-07-14 15:27:05', NULL, NULL, '0a4b1fc4-bb7a-4ca8-afeb-276874100ef0'),
(446, 441, NULL, 235, 14, 'craft\\elements\\MatrixBlock', 1, 0, '2022-07-14 15:27:05', '2022-07-14 15:27:05', NULL, NULL, 'ba0a8b9e-0c50-41ad-94eb-e0fcac08a5f7'),
(447, NULL, NULL, NULL, 2, 'craft\\elements\\Entry', 1, 0, '2022-07-14 15:27:07', '2022-07-14 15:28:28', NULL, NULL, 'e7682a3d-92ac-4e6a-bb64-29df08ec621a'),
(448, NULL, NULL, NULL, 17, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2022-07-14 15:27:07', '2022-07-14 15:28:28', NULL, NULL, '4bbe95c0-49a0-42c8-8302-301c34b9459a'),
(449, NULL, NULL, NULL, 14, 'craft\\elements\\MatrixBlock', 1, 0, '2022-07-14 15:27:07', '2022-07-14 15:27:07', NULL, NULL, '3fda803c-025e-49ea-9833-86c547774937'),
(450, NULL, NULL, NULL, 14, 'craft\\elements\\MatrixBlock', 1, 0, '2022-07-14 15:27:07', '2022-07-14 15:27:07', NULL, NULL, '97f9440e-fe27-47eb-82f5-b88fcef5b72f'),
(451, NULL, NULL, NULL, 14, 'craft\\elements\\MatrixBlock', 1, 0, '2022-07-14 15:27:07', '2022-07-14 15:27:07', NULL, NULL, '01b43b5d-9b3e-4bd7-a7b3-4509b7747b45'),
(452, 447, NULL, 236, 2, 'craft\\elements\\Entry', 1, 0, '2022-07-14 15:27:07', '2022-07-14 15:27:07', NULL, NULL, '496c9850-e4c4-47e1-975d-7108eb5dce0e'),
(453, 448, NULL, 237, 17, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2022-07-14 15:27:07', '2022-07-14 15:27:07', NULL, NULL, 'bdcfcfa3-359b-4ee2-ae2a-0f5a2fb399b8'),
(454, 449, NULL, 238, 14, 'craft\\elements\\MatrixBlock', 1, 0, '2022-07-14 15:27:07', '2022-07-14 15:27:07', NULL, NULL, 'b508e07a-fced-4c8f-8fa6-5f5d21118251'),
(455, 450, NULL, 239, 14, 'craft\\elements\\MatrixBlock', 1, 0, '2022-07-14 15:27:07', '2022-07-14 15:27:07', NULL, NULL, 'e47d49be-0865-4c94-a6c7-2221db1c221e'),
(456, 451, NULL, 240, 14, 'craft\\elements\\MatrixBlock', 1, 0, '2022-07-14 15:27:07', '2022-07-14 15:27:07', NULL, NULL, '379f130d-8207-4fc5-b6ff-adf7d10a0d2b'),
(457, NULL, NULL, NULL, 2, 'craft\\elements\\Entry', 1, 0, '2022-07-14 15:27:10', '2022-07-14 15:28:39', NULL, NULL, 'ac0ad43e-351c-4d68-b02f-f22602b13b52'),
(458, NULL, NULL, NULL, 17, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2022-07-14 15:27:10', '2022-07-14 15:28:02', NULL, NULL, '9f1c5999-4d1d-41fa-89e1-8b6c0dd8a5ab'),
(459, NULL, NULL, NULL, 14, 'craft\\elements\\MatrixBlock', 1, 0, '2022-07-14 15:27:10', '2022-07-14 15:27:10', NULL, NULL, '137d5313-bc9a-4542-a0dd-f7a6157a5598'),
(460, NULL, NULL, NULL, 14, 'craft\\elements\\MatrixBlock', 1, 0, '2022-07-14 15:27:10', '2022-07-14 15:27:10', NULL, NULL, 'eafc5228-5179-4f5e-b1b7-853b2511b4ed'),
(461, NULL, NULL, NULL, 14, 'craft\\elements\\MatrixBlock', 1, 0, '2022-07-14 15:27:10', '2022-07-14 15:27:10', NULL, NULL, '099f4f25-4cfb-4223-a309-66eba04aae03'),
(462, 457, NULL, 241, 2, 'craft\\elements\\Entry', 1, 0, '2022-07-14 15:27:10', '2022-07-14 15:27:10', NULL, NULL, '0fbff570-5475-4753-91e0-e9d0b4052808'),
(463, 458, NULL, 242, 17, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2022-07-14 15:27:10', '2022-07-14 15:27:10', NULL, NULL, '2d28c0d5-7d47-463c-8974-f7bc85a5d8f8'),
(464, 459, NULL, 243, 14, 'craft\\elements\\MatrixBlock', 1, 0, '2022-07-14 15:27:10', '2022-07-14 15:27:10', NULL, NULL, 'e1fd0422-daca-4980-816e-50314aa98753'),
(465, 460, NULL, 244, 14, 'craft\\elements\\MatrixBlock', 1, 0, '2022-07-14 15:27:10', '2022-07-14 15:27:10', NULL, NULL, 'e64a34a8-eb1b-4755-874b-a896ca3438ef'),
(466, 461, NULL, 245, 14, 'craft\\elements\\MatrixBlock', 1, 0, '2022-07-14 15:27:10', '2022-07-14 15:27:10', NULL, NULL, 'ceb6802a-2478-4ae9-aaea-0a238ebb7186'),
(468, 224, NULL, 246, 2, 'craft\\elements\\Entry', 1, 0, '2022-07-14 15:27:27', '2022-07-14 15:27:27', NULL, NULL, '0b8c0f2d-f9ea-486c-a63f-80e4735871a9'),
(469, 225, NULL, 247, 17, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2022-07-14 14:36:18', '2022-07-14 15:27:27', NULL, NULL, 'fba88a09-990b-455a-98f6-b4355634820e'),
(470, 226, NULL, 248, 14, 'craft\\elements\\MatrixBlock', 1, 0, '2022-07-14 14:21:42', '2022-07-14 15:27:27', NULL, NULL, 'cdf86a31-7fdd-4086-9686-6a3efa7a6e0e'),
(471, 227, NULL, 249, 14, 'craft\\elements\\MatrixBlock', 1, 0, '2022-07-14 14:21:42', '2022-07-14 15:27:27', NULL, NULL, 'ab0235f9-786b-4d50-aa65-b5c83a1f7163'),
(472, 228, NULL, 250, 14, 'craft\\elements\\MatrixBlock', 1, 0, '2022-07-14 14:21:42', '2022-07-14 15:27:27', NULL, NULL, '57b1bdae-d8fd-4728-8034-c41c3e9826b0'),
(475, 457, NULL, 251, 2, 'craft\\elements\\Entry', 1, 0, '2022-07-14 15:28:02', '2022-07-14 15:28:02', NULL, NULL, '62f7d1dc-676c-47e8-bb7b-fea61541fd2e'),
(476, 458, NULL, 252, 17, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2022-07-14 15:28:02', '2022-07-14 15:28:02', NULL, NULL, '26acdf86-db91-4894-8b51-ecf7e0362c10'),
(477, 459, NULL, 253, 14, 'craft\\elements\\MatrixBlock', 1, 0, '2022-07-14 15:27:10', '2022-07-14 15:28:02', NULL, NULL, '82cbe38d-1d2c-413f-902b-22fa2edd6f37'),
(478, 460, NULL, 254, 14, 'craft\\elements\\MatrixBlock', 1, 0, '2022-07-14 15:27:10', '2022-07-14 15:28:02', NULL, NULL, '16563ee9-7475-45fb-ab7d-6e29ff2d5a96'),
(479, 461, NULL, 255, 14, 'craft\\elements\\MatrixBlock', 1, 0, '2022-07-14 15:27:10', '2022-07-14 15:28:02', NULL, NULL, '4f11dcf1-b481-416d-bfce-03b7ce4f6cd1'),
(482, 447, NULL, 256, 2, 'craft\\elements\\Entry', 1, 0, '2022-07-14 15:28:28', '2022-07-14 15:28:28', NULL, NULL, '074a7cc9-880b-4c20-a043-75466a0480f4'),
(483, 448, NULL, 257, 17, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2022-07-14 15:28:28', '2022-07-14 15:28:28', NULL, NULL, '70277c18-a15f-4ccf-912f-881585ab2007'),
(484, 449, NULL, 258, 14, 'craft\\elements\\MatrixBlock', 1, 0, '2022-07-14 15:27:07', '2022-07-14 15:28:28', NULL, NULL, 'c707660c-2cad-47e1-b977-9f9ec02ab892'),
(485, 450, NULL, 259, 14, 'craft\\elements\\MatrixBlock', 1, 0, '2022-07-14 15:27:07', '2022-07-14 15:28:28', NULL, NULL, 'b86f039d-49e4-4b28-a390-065e92c01e93'),
(486, 451, NULL, 260, 14, 'craft\\elements\\MatrixBlock', 1, 0, '2022-07-14 15:27:07', '2022-07-14 15:28:28', NULL, NULL, 'a5c1704a-d6b1-4e20-ab85-65c2ca7bfe48'),
(488, 457, NULL, 261, 2, 'craft\\elements\\Entry', 1, 0, '2022-07-14 15:28:39', '2022-07-14 15:28:39', NULL, NULL, '00bebcb7-72b1-4bc8-9521-1b5a7a4f82d3'),
(489, 458, NULL, 262, 17, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2022-07-14 15:28:02', '2022-07-14 15:28:39', NULL, NULL, '48b87048-fec3-4c82-9dd4-181d10593305'),
(490, 459, NULL, 263, 14, 'craft\\elements\\MatrixBlock', 1, 0, '2022-07-14 15:27:10', '2022-07-14 15:28:39', NULL, NULL, 'cead5230-2c5a-4a50-a22d-6ebc0435a3bf'),
(491, 460, NULL, 264, 14, 'craft\\elements\\MatrixBlock', 1, 0, '2022-07-14 15:27:10', '2022-07-14 15:28:39', NULL, NULL, '44df9c33-cb5f-4e90-8367-865c3848b97d'),
(492, 461, NULL, 265, 14, 'craft\\elements\\MatrixBlock', 1, 0, '2022-07-14 15:27:10', '2022-07-14 15:28:39', NULL, NULL, '1f20d6f8-a183-46ad-b8f6-e65ecf77ace7'),
(495, 437, NULL, 266, 2, 'craft\\elements\\Entry', 1, 0, '2022-07-14 15:29:14', '2022-07-14 15:29:14', NULL, NULL, 'f94ebfb3-f381-4ef0-9949-ccecc69f4edf'),
(496, 438, NULL, 267, 17, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2022-07-14 15:29:14', '2022-07-14 15:29:14', NULL, NULL, 'a8477fb2-3de1-4516-bad1-ed050a7aa7de'),
(497, 439, NULL, 268, 14, 'craft\\elements\\MatrixBlock', 1, 0, '2022-07-14 15:27:05', '2022-07-14 15:29:14', NULL, NULL, '58bfbea3-9d45-4da5-860f-7c792ac43819'),
(498, 440, NULL, 269, 14, 'craft\\elements\\MatrixBlock', 1, 0, '2022-07-14 15:27:05', '2022-07-14 15:29:14', NULL, NULL, '2e991389-8c95-4bfa-9571-99f276373c77'),
(499, 441, NULL, 270, 14, 'craft\\elements\\MatrixBlock', 1, 0, '2022-07-14 15:27:05', '2022-07-14 15:29:14', NULL, NULL, 'd7210b92-8340-4343-9234-86a25bda4e3c'),
(502, 427, NULL, 271, 2, 'craft\\elements\\Entry', 1, 0, '2022-07-14 15:29:53', '2022-07-14 15:29:53', NULL, NULL, 'db6c8115-2726-45be-8134-481253586a07'),
(503, 428, NULL, 272, 17, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2022-07-14 15:29:53', '2022-07-14 15:29:53', NULL, NULL, '9e2fe059-f544-4434-8228-9622bb64cb53'),
(504, 429, NULL, 273, 14, 'craft\\elements\\MatrixBlock', 1, 0, '2022-07-14 15:27:03', '2022-07-14 15:29:54', NULL, NULL, '2b1cdc9c-a1d4-4f61-8e11-5df369d47adb'),
(505, 430, NULL, 274, 14, 'craft\\elements\\MatrixBlock', 1, 0, '2022-07-14 15:27:03', '2022-07-14 15:29:54', NULL, NULL, '1f50f857-0121-4dbd-acad-3c2756aabf9b'),
(506, 431, NULL, 275, 14, 'craft\\elements\\MatrixBlock', 1, 0, '2022-07-14 15:27:03', '2022-07-14 15:29:54', NULL, NULL, '1b52fe61-0858-48f5-a4dc-368f5d9dea6f'),
(508, NULL, NULL, NULL, 11, 'craft\\elements\\Asset', 1, 0, '2022-07-14 15:31:33', '2022-07-14 15:31:33', NULL, NULL, '710bc287-2c0b-4ce6-ae22-1e8c9ce6e2ed'),
(510, 417, NULL, 276, 2, 'craft\\elements\\Entry', 1, 0, '2022-07-14 15:31:44', '2022-07-14 15:31:44', NULL, NULL, '2539092f-ad5d-4088-ba8b-7e0ab8e472d0'),
(511, 418, NULL, 277, 17, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2022-07-14 15:31:44', '2022-07-14 15:31:44', NULL, NULL, 'f4d8754b-39d6-4195-b616-2dea437d36d5'),
(512, 419, NULL, 278, 14, 'craft\\elements\\MatrixBlock', 1, 0, '2022-07-14 15:27:00', '2022-07-14 15:31:44', NULL, NULL, '6f685d25-a8d1-4a33-ab0b-5c17969fff8f'),
(513, 420, NULL, 279, 14, 'craft\\elements\\MatrixBlock', 1, 0, '2022-07-14 15:27:00', '2022-07-14 15:31:44', NULL, NULL, 'a420d03c-fd5d-473e-a550-71543f5f4216'),
(514, 421, NULL, 280, 14, 'craft\\elements\\MatrixBlock', 1, 0, '2022-07-14 15:27:00', '2022-07-14 15:31:44', NULL, NULL, '43397c02-11b8-443b-9f43-1cc246d2b07a'),
(516, 224, NULL, 281, 2, 'craft\\elements\\Entry', 1, 0, '2022-07-14 15:34:09', '2022-07-14 15:34:09', NULL, NULL, '4e55e6dd-a9b5-40a2-9d81-ba2d2b916c80'),
(517, 225, NULL, 282, 17, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2022-07-14 14:36:18', '2022-07-14 15:34:09', NULL, NULL, '82a748d9-bc11-4e0d-917a-faa313fc24b2'),
(518, 226, NULL, 283, 14, 'craft\\elements\\MatrixBlock', 1, 0, '2022-07-14 14:21:42', '2022-07-14 15:34:09', NULL, NULL, 'cb94c10d-ce53-4961-9c73-d359abf2f40d'),
(519, 227, NULL, 284, 14, 'craft\\elements\\MatrixBlock', 1, 0, '2022-07-14 14:21:42', '2022-07-14 15:34:09', NULL, NULL, '692d995e-df3d-465b-b027-cd0094e3a354'),
(520, 228, NULL, 285, 14, 'craft\\elements\\MatrixBlock', 1, 0, '2022-07-14 14:21:42', '2022-07-14 15:34:09', NULL, NULL, '68e92b31-a6f8-4aee-8cb0-89d29bc735a6'),
(521, NULL, NULL, NULL, 2, 'craft\\elements\\Entry', 1, 0, '2022-07-14 15:43:34', '2022-07-14 15:44:08', NULL, NULL, '1237a211-1899-408c-98ad-f6e5ef70adf4'),
(522, NULL, NULL, NULL, 17, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2022-07-14 15:43:34', '2022-07-14 15:43:34', NULL, NULL, '6fda5681-bde3-49a7-b1e8-3c404db7531b'),
(523, NULL, NULL, NULL, 14, 'craft\\elements\\MatrixBlock', 1, 0, '2022-07-14 15:43:34', '2022-07-14 15:43:34', NULL, NULL, 'a18e6898-4135-4954-9243-b47032db26ed'),
(524, NULL, NULL, NULL, 14, 'craft\\elements\\MatrixBlock', 1, 0, '2022-07-14 15:43:34', '2022-07-14 15:43:34', NULL, NULL, '7949581b-eeee-44ae-a516-29a585771fc2'),
(525, NULL, NULL, NULL, 14, 'craft\\elements\\MatrixBlock', 1, 0, '2022-07-14 15:43:34', '2022-07-14 15:43:34', NULL, NULL, '50aa4856-f0fe-46cb-810f-3de6321d6e79'),
(526, 521, NULL, 286, 2, 'craft\\elements\\Entry', 1, 0, '2022-07-14 15:43:34', '2022-07-14 15:43:34', NULL, NULL, 'b1d78234-fbde-419f-86f5-3b02e5e55f1e'),
(527, 522, NULL, 287, 17, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2022-07-14 15:43:34', '2022-07-14 15:43:34', NULL, NULL, 'f02126b4-e112-42e1-bd2f-e3d2dc4aaef2'),
(528, 523, NULL, 288, 14, 'craft\\elements\\MatrixBlock', 1, 0, '2022-07-14 15:43:34', '2022-07-14 15:43:34', NULL, NULL, '998012ac-5777-4b67-ac3c-f23f5ffa369f'),
(529, 524, NULL, 289, 14, 'craft\\elements\\MatrixBlock', 1, 0, '2022-07-14 15:43:34', '2022-07-14 15:43:34', NULL, NULL, 'f2a4d6ce-d1c6-4e50-bb3a-489ed3a2cd7c'),
(530, 525, NULL, 290, 14, 'craft\\elements\\MatrixBlock', 1, 0, '2022-07-14 15:43:34', '2022-07-14 15:43:34', NULL, NULL, 'be5471b4-a359-47d5-bd40-d197e1854ec9'),
(532, 521, NULL, 291, 2, 'craft\\elements\\Entry', 1, 0, '2022-07-14 15:44:08', '2022-07-14 15:44:08', NULL, NULL, 'b8bc4574-93a6-42ae-bd5f-9c01362fd6fe'),
(533, 522, NULL, 292, 17, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2022-07-14 15:43:34', '2022-07-14 15:44:08', NULL, NULL, '432164e0-cd62-4965-8f0c-7ebee335aa31'),
(534, 523, NULL, 293, 14, 'craft\\elements\\MatrixBlock', 1, 0, '2022-07-14 15:43:34', '2022-07-14 15:44:08', NULL, NULL, '4e14ac81-f08f-486d-8e24-2a954c691506'),
(535, 524, NULL, 294, 14, 'craft\\elements\\MatrixBlock', 1, 0, '2022-07-14 15:43:34', '2022-07-14 15:44:08', NULL, NULL, '29516103-be50-47fd-9e5b-c8d7b226c339'),
(536, 525, NULL, 295, 14, 'craft\\elements\\MatrixBlock', 1, 0, '2022-07-14 15:43:34', '2022-07-14 15:44:08', NULL, NULL, 'efee7a46-ec57-42af-a80f-b18ab44fa0ce'),
(538, NULL, NULL, NULL, 11, 'craft\\elements\\Asset', 1, 0, '2022-07-14 15:54:40', '2022-07-14 15:54:40', NULL, NULL, 'ed59845d-f4ea-4c40-87c3-96fe27f2d28b'),
(539, 170, NULL, 296, 4, 'craft\\elements\\Entry', 1, 0, '2022-07-14 15:54:59', '2022-07-14 15:54:59', NULL, NULL, 'f9406ed5-090b-4cd1-b324-c4f2aa455b28'),
(541, 168, NULL, 297, 4, 'craft\\elements\\Entry', 1, 0, '2022-07-14 15:55:29', '2022-07-14 15:55:29', NULL, NULL, 'd8c33892-99f5-495b-a6f6-2e6565964d14'),
(543, NULL, NULL, NULL, 11, 'craft\\elements\\Asset', 1, 0, '2022-07-14 16:20:20', '2022-07-14 16:20:20', NULL, NULL, '10665e64-8833-4f0e-86dd-daf05f591fc6'),
(544, 53, NULL, 298, 4, 'craft\\elements\\Entry', 1, 0, '2022-07-14 16:20:24', '2022-07-14 16:20:24', NULL, NULL, 'd10029fd-ca0b-4db6-ad5f-14f898dc3f5c'),
(546, 32, NULL, 299, 8, 'craft\\elements\\Entry', 1, 0, '2022-07-14 16:20:47', '2022-07-14 16:20:47', NULL, NULL, '25be72ff-09fa-467d-8ded-1db51164b211'),
(547, 33, NULL, 300, 15, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2022-07-13 16:01:47', '2022-07-14 16:20:47', NULL, NULL, '0f314ed6-cd66-44e2-a969-0f3f1777b34b'),
(548, 35, NULL, 301, 14, 'craft\\elements\\MatrixBlock', 1, 0, '2022-07-12 18:39:02', '2022-07-14 16:20:47', NULL, NULL, '15c26add-710b-4291-9294-8e4c068925ef'),
(549, 150, NULL, 302, 14, 'craft\\elements\\MatrixBlock', 1, 0, '2022-07-12 18:39:02', '2022-07-14 16:20:47', NULL, NULL, '9c6b9a6a-2bef-4bf9-8dd6-c89e8e3838f1'),
(551, 210, NULL, 303, 8, 'craft\\elements\\Entry', 1, 0, '2022-07-14 16:21:12', '2022-07-14 16:21:12', NULL, NULL, '049c066a-b5cc-4687-99ce-13b9ee7bd179'),
(552, 211, NULL, 304, 15, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2022-07-13 17:17:49', '2022-07-14 16:21:12', NULL, NULL, '1d3dddcc-894c-4630-9849-a0f5fd0f5e12'),
(553, 212, NULL, 305, 14, 'craft\\elements\\MatrixBlock', 1, 0, '2022-07-13 17:17:49', '2022-07-14 16:21:12', NULL, NULL, 'df1433dd-61dc-4bc2-a61c-0d1cb1b32108'),
(554, 213, NULL, 306, 14, 'craft\\elements\\MatrixBlock', 1, 0, '2022-07-13 17:17:49', '2022-07-14 16:21:12', NULL, NULL, 'b522fbe8-11e2-43e7-9622-ca01dde07028'),
(556, 200, NULL, 307, 6, 'craft\\elements\\Entry', 1, 0, '2022-07-14 16:22:50', '2022-07-14 16:22:50', NULL, NULL, '3edada66-bea1-4496-b71a-c1c1238affa5'),
(558, 198, NULL, 308, 6, 'craft\\elements\\Entry', 1, 0, '2022-07-14 16:23:22', '2022-07-14 16:23:22', NULL, NULL, '5ab0977b-9e12-4aa9-9173-71bd38e919b8'),
(560, 51, NULL, 309, 6, 'craft\\elements\\Entry', 1, 0, '2022-07-14 16:23:40', '2022-07-14 16:23:40', NULL, NULL, 'b5760c19-d159-449d-8acf-226181ea20b8'),
(562, 200, NULL, 310, 6, 'craft\\elements\\Entry', 1, 0, '2022-07-14 16:25:28', '2022-07-14 16:25:28', NULL, NULL, '7b739bb3-9a6b-4f46-81e7-65418983a27d'),
(564, 198, NULL, 311, 6, 'craft\\elements\\Entry', 1, 0, '2022-07-14 16:25:40', '2022-07-14 16:25:40', NULL, NULL, '9da0372e-0406-4adb-ad82-03b475744871'),
(566, 51, NULL, 312, 6, 'craft\\elements\\Entry', 1, 0, '2022-07-14 16:25:49', '2022-07-14 16:25:49', NULL, NULL, 'da9abb46-950d-4ad8-820f-04f77ca67084'),
(567, NULL, NULL, NULL, 11, 'craft\\elements\\Asset', 1, 0, '2022-07-14 16:26:10', '2022-07-14 16:26:10', NULL, NULL, '123802fe-76be-46c9-a772-231f0f9f52a2'),
(569, 10, NULL, 313, 5, 'craft\\elements\\Entry', 1, 0, '2022-07-14 16:26:20', '2022-07-14 16:26:20', NULL, NULL, 'cd349eb4-0d14-4607-96f2-074ecf0baba3'),
(571, 5, NULL, 314, 3, 'craft\\elements\\Entry', 1, 0, '2022-07-14 16:30:11', '2022-07-14 16:30:11', NULL, NULL, 'f59e30c5-eeaf-483a-8bfc-159a36903343');

-- --------------------------------------------------------

--
-- Table structure for table `elements_sites`
--

CREATE TABLE `elements_sites` (
  `id` int(11) NOT NULL,
  `elementId` int(11) NOT NULL,
  `siteId` int(11) NOT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `uri` varchar(255) DEFAULT NULL,
  `enabled` tinyint(1) NOT NULL DEFAULT 1,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `elements_sites`
--

INSERT INTO `elements_sites` (`id`, `elementId`, `siteId`, `slug`, `uri`, `enabled`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 1, 1, NULL, NULL, 1, '2022-07-08 13:30:51', '2022-07-08 13:30:51', '5ebffbd9-6265-4956-81e1-46266bb433e4'),
(2, 2, 1, 'home', '__home__', 1, '2022-07-08 13:58:08', '2022-07-08 13:58:08', '4b9d27fb-2aa6-4a8d-a78b-b38efa9cd525'),
(3, 3, 1, 'home', '__home__', 1, '2022-07-08 13:58:08', '2022-07-08 13:58:08', '8cc1d2cf-2464-438e-995f-487f6b48eb40'),
(4, 4, 1, 'home', '__home__', 1, '2022-07-08 13:58:08', '2022-07-08 13:58:08', 'fe5f2323-6863-4b5a-b73e-be1f68241507'),
(5, 5, 1, 'blog-overview', 'blog', 1, '2022-07-08 15:10:09', '2022-07-08 15:10:09', '57fb7a3d-daec-45ce-aadb-9dc9d7bcae7a'),
(6, 6, 1, 'blog-overview', 'blog', 1, '2022-07-08 15:10:09', '2022-07-08 15:10:09', 'c1482b62-f4dd-4073-be75-71c0aa97688b'),
(7, 7, 1, 'blog-overview', 'blog', 1, '2022-07-08 15:10:09', '2022-07-08 15:10:09', '75c156e3-9380-42a6-aee5-9694dbd81a14'),
(8, 8, 1, 'blog-overview', 'blog', 1, '2022-07-08 15:10:31', '2022-07-08 15:10:31', '9d80494c-97f7-4b84-97cc-aea51def6cbe'),
(9, 9, 1, 'blog-overview', 'blog', 1, '2022-07-08 15:10:31', '2022-07-08 15:10:31', 'd827982e-0da4-46c4-867b-14e35cb24826'),
(10, 10, 1, 'stories-overview', 'success-stories', 1, '2022-07-08 15:16:48', '2022-07-08 15:16:48', 'bbce12e3-e875-4da7-ae31-c92e34a74849'),
(11, 11, 1, 'stories-overview', 'success-stories', 1, '2022-07-08 15:16:48', '2022-07-08 15:16:48', 'dea73ce9-7714-456a-b409-7ae52012412f'),
(12, 12, 1, 'stories-overview', 'success-stories', 1, '2022-07-08 15:16:48', '2022-07-08 15:16:48', '73d6c3f0-51c3-44fe-a211-ff934f89c8f3'),
(13, 13, 1, 'carrier-overview', 'unternehmen/karriere', 1, '2022-07-08 15:41:35', '2022-07-13 16:28:41', 'b1551e27-3ccb-47cf-931f-658cc5cc830b'),
(14, 14, 1, 'carrier-overview', 'carrier', 1, '2022-07-08 15:41:35', '2022-07-08 15:41:35', '12ce5a9f-b979-4c05-ac98-cf9c4c2c9231'),
(15, 15, 1, 'carrier-overview', 'carrier', 1, '2022-07-08 15:41:35', '2022-07-08 15:41:35', '51ef5112-084e-4308-ba80-2ccfc765ae26'),
(16, 16, 1, 'carrier-overview', 'karriere', 1, '2022-07-08 15:43:26', '2022-07-08 15:43:26', 'cdb62135-d6e2-4e79-8bb5-2ea8fff95c13'),
(17, 17, 1, 'carrier-overview', 'karriere', 1, '2022-07-08 15:43:26', '2022-07-08 15:43:26', 'a0dea4c3-cfb3-4e91-9e2d-9c604a7cf301'),
(18, 18, 1, 'carrier-overview', 'karriere', 1, '2022-07-08 15:43:26', '2022-07-08 15:43:26', '9d057f9f-97b9-46ab-aa87-8c6a7dc1e651'),
(19, 19, 1, 'software-overview', 'm365-apps', 1, '2022-07-08 15:46:47', '2022-07-13 18:26:41', '26e533ed-a7b6-4f36-973d-a1703f1220b9'),
(20, 20, 1, 'software-overview', 'software', 1, '2022-07-08 15:46:47', '2022-07-08 15:46:47', '4390e9f5-94fa-46cf-a961-c2513bb796f4'),
(21, 21, 1, 'software-overview', 'software', 1, '2022-07-08 15:46:47', '2022-07-08 15:46:47', '96ca636a-9c28-4e56-9859-e619511a02f0'),
(22, 22, 1, 'author', NULL, 1, '2022-07-09 02:22:47', '2022-07-09 02:22:54', 'bcc98283-38af-4499-9b2b-db76e574c677'),
(23, 23, 1, 'author', 'author', 1, '2022-07-09 02:22:48', '2022-07-09 02:22:48', '49e64df0-5d6c-4d5f-9408-36fd1152b2b7'),
(24, 24, 1, 'author', 'author', 1, '2022-07-09 02:22:48', '2022-07-09 02:22:48', '1130e3ac-2a69-4354-bd63-9c7ed26f4efc'),
(25, 25, 1, 'author', NULL, 1, '2022-07-09 02:22:54', '2022-07-09 02:22:54', '8b74fedf-328f-49af-815e-3a1f01b63893'),
(26, 26, 1, 'author', NULL, 1, '2022-07-09 02:22:54', '2022-07-09 02:22:54', 'a5686b64-148c-4a94-affa-20e7f4214630'),
(27, 27, 1, 'author', NULL, 1, '2022-07-09 03:40:37', '2022-07-09 03:40:37', '4c778b91-2f64-4668-b268-c5347f5b3a41'),
(28, 28, 1, '__temp_golqspurdgnbyvfgwxcegynplddquzngprth', 'blog/__temp_golqspurdgnbyvfgwxcegynplddquzngprth', 1, '2022-07-09 03:51:39', '2022-07-09 03:51:39', 'd97acb90-6bbb-4b88-a5fd-86df5d0ca53e'),
(29, 29, 1, '__temp_oamfchcneiusrlegfmomavajbotaygalzsqd', 'success-stories/__temp_oamfchcneiusrlegfmomavajbotaygalzsqd', 1, '2022-07-09 03:56:02', '2022-07-09 03:57:12', '77a479f1-5cc0-4032-b2c2-098ffa59b694'),
(30, 30, 1, 'blog-overview', 'blog', 1, '2022-07-09 04:52:29', '2022-07-09 04:52:29', 'b442d36b-7967-4e82-b6b7-34d54cd1b0a2'),
(31, 31, 1, 'stories-overview', 'success-stories', 1, '2022-07-09 04:52:45', '2022-07-09 04:52:45', '65f37149-edf2-406e-8c71-fd07af618b5c'),
(32, 32, 1, 'job-example', 'karriere/job-example', 1, '2022-07-09 07:32:45', '2022-07-14 16:20:47', 'f513b6c3-9868-43ab-a696-e2ea06eff0cc'),
(33, 33, 1, NULL, NULL, 1, '2022-07-09 07:36:16', '2022-07-09 07:36:16', 'c59ca4b6-e1e2-434c-a948-bdf4ccc6728f'),
(34, 34, 1, NULL, NULL, 1, '2022-07-09 07:36:16', '2022-07-09 07:36:16', 'bb28f0fb-3930-44e5-8854-6dedd9198848'),
(35, 35, 1, NULL, NULL, 1, '2022-07-09 07:36:16', '2022-07-09 07:36:16', 'c2af7189-d214-4f6f-9083-c2154adcccc3'),
(36, 36, 1, NULL, NULL, 1, '2022-07-09 07:36:16', '2022-07-09 07:36:16', '94ba65e5-1258-4828-82c5-6d1df0bee940'),
(37, 37, 1, NULL, NULL, 1, '2022-07-09 07:41:01', '2022-07-09 07:41:01', 'ab07f808-530e-489e-a27f-4bb44a734a8b'),
(38, 38, 1, NULL, NULL, 1, '2022-07-09 08:44:13', '2022-07-09 08:44:13', 'da6731a9-6aea-4411-b6e3-90393347f8dd'),
(39, 39, 1, NULL, NULL, 1, '2022-07-09 08:44:15', '2022-07-09 08:44:15', '86697a9d-8539-4819-8fc6-c62f677a4205'),
(40, 40, 1, 'home', '__home__', 1, '2022-07-09 15:18:14', '2022-07-09 15:18:14', '9f92510e-29ce-4bbc-a248-f0ad4144349c'),
(41, 41, 1, 'home', '__home__', 1, '2022-07-09 15:18:14', '2022-07-09 15:18:14', '167cff21-419c-4846-9018-8788a2f04883'),
(42, 42, 1, 'office', 'm365/office', 1, '2022-07-11 12:31:25', '2022-07-14 15:24:15', '6c8b8e58-8619-42d8-b11a-875e8120d2af'),
(43, 43, 1, NULL, NULL, 1, '2022-07-11 12:31:30', '2022-07-11 12:31:30', 'c772cb68-2eda-40f4-8a29-fdb8454d610f'),
(44, 44, 1, 'test', 'm365/software/test', 1, '2022-07-11 12:31:31', '2022-07-11 12:31:31', '5db611bc-8e55-411b-bc70-36e7f9a80f68'),
(45, 45, 1, NULL, NULL, 1, '2022-07-11 12:31:31', '2022-07-11 12:31:31', '766e96a4-6cb7-47d5-b0d0-8739b6be40da'),
(46, 46, 1, 'test', 'karriere/test', 1, '2022-07-11 14:10:15', '2022-07-11 14:10:15', 'cbef43b3-c88c-40c2-94b5-17d03c324421'),
(47, 47, 1, NULL, NULL, 1, '2022-07-11 14:10:15', '2022-07-11 14:10:15', 'f1d9f6d9-ab3f-432b-9f9e-461cb55b0c28'),
(48, 48, 1, NULL, NULL, 1, '2022-07-11 14:10:15', '2022-07-11 14:10:15', '28d6f85d-c5ff-4613-945c-1d06c0ef41af'),
(49, 49, 1, NULL, NULL, 1, '2022-07-11 14:10:15', '2022-07-11 14:10:15', '769289bd-b9d9-49c3-9182-13a7319b40d5'),
(50, 50, 1, NULL, NULL, 1, '2022-07-11 14:10:15', '2022-07-11 14:10:15', 'e11388f7-aa26-4d0c-965f-d3e5d23c5dca'),
(51, 51, 1, 'example-three', 'success-stories/example-three', 1, '2022-07-11 16:06:26', '2022-07-14 16:23:40', 'aa9ccdeb-d5ba-4019-bb8c-30dc562b76b9'),
(52, 52, 1, 'test', 'success-stories/test', 1, '2022-07-11 16:06:32', '2022-07-11 16:06:32', '83fbdee7-a504-4279-9f8d-df5b78ec1674'),
(53, 53, 1, 'blog-post', 'blog/blog-post', 1, '2022-07-11 16:13:48', '2022-07-14 16:20:24', 'e203527d-e634-49fe-851e-e659210af4a4'),
(54, 54, 1, 'test', 'blog/test', 1, '2022-07-11 16:13:58', '2022-07-11 16:13:58', '515c3785-c5e7-4958-b9a3-46acda210641'),
(55, 55, 1, 'category', NULL, 1, '2022-07-12 16:27:06', '2022-07-12 16:27:42', 'f97dd8c2-fcb7-4f92-b175-f8351fd29e73'),
(57, 57, 1, 'test', 'blog/test', 1, '2022-07-12 16:28:07', '2022-07-12 16:28:07', '5a327698-2fab-477c-a4ad-5142e28bd4a1'),
(59, 59, 1, 'test', 'blog/test', 1, '2022-07-12 16:42:54', '2022-07-12 16:42:54', 'f139f15c-dd9e-48b1-a886-88e4a8c489e5'),
(61, 61, 1, 'test', 'blog/test', 1, '2022-07-12 16:43:03', '2022-07-12 16:43:03', 'eebcb183-2499-4964-bfba-d2b4310e7b2d'),
(62, 62, 1, NULL, NULL, 1, '2022-07-12 16:45:08', '2022-07-12 16:45:08', '02f27a12-b1cd-44c9-b396-aec5c83bce97'),
(64, 64, 1, 'test', 'blog/test', 1, '2022-07-12 16:45:11', '2022-07-12 16:45:11', '816914ba-3bb6-4c0b-987c-1f6cc5050ca1'),
(66, 66, 1, 'author', NULL, 1, '2022-07-12 16:45:31', '2022-07-12 16:45:31', '002e2cdb-8d60-40a9-a89a-45fae0201fae'),
(68, 68, 1, 'author', NULL, 1, '2022-07-12 16:45:55', '2022-07-12 16:45:55', '376d703b-b90f-499a-b0a8-060580338f30'),
(71, 71, 1, NULL, NULL, 1, '2022-07-12 16:47:34', '2022-07-12 16:47:34', 'da80b1ff-310a-445d-b1cf-260f61376c6e'),
(75, 75, 1, 'test', 'success-stories/test', 1, '2022-07-12 16:53:04', '2022-07-12 16:53:04', '9560d1ca-d31a-456f-8b12-2fdbe887d374'),
(76, 76, 1, 'category', NULL, 1, '2022-07-12 16:55:46', '2022-07-12 16:55:57', 'f6876941-db2b-4733-ba9f-2afc69be7e87'),
(78, 78, 1, 'test', 'success-stories/test', 1, '2022-07-12 16:55:56', '2022-07-12 16:55:56', '8d98acb3-77e3-4bae-a6c7-88c657c4e061'),
(82, 82, 1, NULL, NULL, 1, '2022-07-12 18:04:11', '2022-07-12 18:04:11', 'a9417caa-1496-40aa-86e9-bf4a898a134e'),
(83, 83, 1, 'test', 'm365/test', 1, '2022-07-12 18:04:11', '2022-07-12 18:04:11', '52721d34-58cb-47d8-b655-281712980f82'),
(84, 84, 1, NULL, NULL, 1, '2022-07-12 18:04:11', '2022-07-12 18:04:11', 'e98a8093-58a1-4324-b989-b61e52022574'),
(85, 85, 1, NULL, NULL, 1, '2022-07-12 18:04:11', '2022-07-12 18:04:11', 'd92834c9-9198-46b0-bd80-8cadda7eae53'),
(88, 88, 1, NULL, NULL, 1, '2022-07-12 18:15:15', '2022-07-12 18:15:15', '1ff9e664-97be-4b26-a13e-a464d57d73bb'),
(89, 89, 1, NULL, NULL, 1, '2022-07-12 18:15:23', '2022-07-12 18:15:23', '3ceed70d-b1f9-4d31-b11f-28005d24e024'),
(90, 90, 1, NULL, NULL, 1, '2022-07-12 18:15:25', '2022-07-12 18:15:25', '0f37bb2c-32c4-4734-a43f-7d8e236e1fdd'),
(91, 91, 1, NULL, NULL, 1, '2022-07-12 18:15:29', '2022-07-12 18:15:29', '6bdc4d30-1ddb-48f4-b808-3ca2e0639577'),
(92, 92, 1, NULL, NULL, 1, '2022-07-12 18:15:29', '2022-07-12 18:15:29', 'a7e165b9-df5b-4432-830e-2200edcd6d90'),
(93, 93, 1, NULL, NULL, 1, '2022-07-12 18:15:32', '2022-07-12 18:15:32', '30e0ac21-d111-45d2-9493-5b20cd5ee50d'),
(94, 94, 1, NULL, NULL, 1, '2022-07-12 18:15:32', '2022-07-12 18:15:32', 'b96531fe-50f7-4c9a-9fe1-e65aba5b9ee7'),
(95, 95, 1, NULL, NULL, 1, '2022-07-12 18:15:38', '2022-07-12 18:15:38', '911dfa12-6f9c-480e-b934-2a4199ba2816'),
(96, 96, 1, NULL, NULL, 1, '2022-07-12 18:15:38', '2022-07-12 18:15:38', 'fee4b7db-0c2a-4cfc-a1bc-f3245d1e541f'),
(97, 97, 1, NULL, NULL, 1, '2022-07-12 18:15:39', '2022-07-12 18:15:39', 'de7e4d47-18f8-47ac-91e0-5bf4693fa0b6'),
(98, 98, 1, NULL, NULL, 1, '2022-07-12 18:15:39', '2022-07-12 18:15:39', '36968fc6-ca82-4218-a703-be3edbef9813'),
(99, 99, 1, NULL, NULL, 1, '2022-07-12 18:15:39', '2022-07-12 18:15:39', '185cf2c9-77b2-41ed-8302-5b7001f865b4'),
(100, 100, 1, NULL, NULL, 1, '2022-07-12 18:15:41', '2022-07-12 18:15:41', 'e23db2be-7332-4fad-9fbf-223cbd2fd727'),
(101, 101, 1, NULL, NULL, 1, '2022-07-12 18:15:41', '2022-07-12 18:15:41', '1ccc802c-df65-4967-a9af-9621855f4610'),
(102, 102, 1, NULL, NULL, 1, '2022-07-12 18:15:41', '2022-07-12 18:15:41', 'e22e0263-c3ad-44c6-8177-3470a6837640'),
(103, 103, 1, NULL, NULL, 1, '2022-07-12 18:15:42', '2022-07-12 18:15:42', '829d099f-56cc-48cc-af68-cfe9cfc9567f'),
(104, 104, 1, NULL, NULL, 1, '2022-07-12 18:15:42', '2022-07-12 18:15:42', '6f246eb9-f990-424d-acc3-87ba8841e4fd'),
(105, 105, 1, NULL, NULL, 1, '2022-07-12 18:15:42', '2022-07-12 18:15:42', '82761e56-a062-47a2-9850-e67a07e4fe2c'),
(106, 106, 1, NULL, NULL, 1, '2022-07-12 18:15:43', '2022-07-12 18:15:43', 'a18c1e8d-5ec0-4451-a60e-243fbff089d5'),
(107, 107, 1, NULL, NULL, 1, '2022-07-12 18:15:43', '2022-07-12 18:15:43', '0925d477-1f8b-456a-8608-651d2565e770'),
(108, 108, 1, NULL, NULL, 1, '2022-07-12 18:15:43', '2022-07-12 18:15:43', 'd1fa0e73-f20b-4de2-af12-4670d377bc4c'),
(109, 109, 1, NULL, NULL, 1, '2022-07-12 18:15:53', '2022-07-12 18:15:53', '777e793a-5b55-40e0-ac95-ab4c8816639c'),
(110, 110, 1, NULL, NULL, 1, '2022-07-12 18:15:53', '2022-07-12 18:15:53', '701a60f2-4e85-4cac-a72b-0aa3d8996be4'),
(111, 111, 1, NULL, NULL, 1, '2022-07-12 18:15:53', '2022-07-12 18:15:53', '53152158-3f92-4e77-8951-5e4a9c92a6ab'),
(112, 112, 1, NULL, NULL, 1, '2022-07-12 18:15:54', '2022-07-12 18:15:54', '3d4c3d0e-0417-44fa-92a0-81c7d0cc1a96'),
(113, 113, 1, NULL, NULL, 1, '2022-07-12 18:15:54', '2022-07-12 18:15:54', '38addd0f-3985-4d36-8e6f-3f44a73ef49c'),
(114, 114, 1, NULL, NULL, 1, '2022-07-12 18:15:54', '2022-07-12 18:15:54', '3421965f-a1c2-4256-be12-d41d2133f61f'),
(118, 118, 1, NULL, NULL, 1, '2022-07-12 18:16:04', '2022-07-12 18:16:04', 'cd06c8a2-5343-4ea8-9717-2820360e6ba0'),
(119, 119, 1, NULL, NULL, 1, '2022-07-12 18:16:04', '2022-07-12 18:16:04', 'cfdba5e3-6d36-497b-ba5f-69bfbf200d2f'),
(120, 120, 1, NULL, NULL, 1, '2022-07-12 18:16:04', '2022-07-12 18:16:04', 'b1087bf7-e1ec-47ee-8706-e1dc7c6c8768'),
(121, 121, 1, 'test', 'm365/test', 1, '2022-07-12 18:16:04', '2022-07-12 18:16:04', 'e7569c78-0434-41ed-858c-cf9dc858c9d5'),
(122, 122, 1, NULL, NULL, 1, '2022-07-12 18:16:04', '2022-07-12 18:16:04', '000d3231-4aff-4780-a4a6-bef6dae28631'),
(123, 123, 1, NULL, NULL, 1, '2022-07-12 18:16:04', '2022-07-12 18:16:04', '070b9a70-8b70-47c4-a69b-8d8f8527168e'),
(124, 124, 1, NULL, NULL, 1, '2022-07-12 18:16:04', '2022-07-12 18:16:04', '69db195f-9beb-423c-9ca2-c90d2ea45b6a'),
(125, 125, 1, NULL, NULL, 1, '2022-07-12 18:16:04', '2022-07-12 18:16:04', 'bd694cfc-f73c-4014-ae6d-f598bffba6d3'),
(126, 126, 1, NULL, NULL, 1, '2022-07-12 18:16:04', '2022-07-12 18:16:04', 'd47857f1-4b2a-43a5-97ab-a6b773b1228e'),
(128, 128, 1, 'test', 'm365/test', 1, '2022-07-12 18:26:12', '2022-07-12 18:26:12', 'cb8a958d-89d3-41a3-8a15-eb8a8ce16d71'),
(129, 129, 1, NULL, NULL, 1, '2022-07-12 18:26:12', '2022-07-12 18:26:12', 'd7afa3ef-e6df-456e-86ca-c694f10b6c40'),
(130, 130, 1, NULL, NULL, 1, '2022-07-12 18:26:12', '2022-07-12 18:26:12', '863459cf-0206-4057-bf70-8633e82d0436'),
(131, 131, 1, NULL, NULL, 1, '2022-07-12 18:26:12', '2022-07-12 18:26:12', '2e6c3deb-9135-4673-ad59-3aea4ef32b9c'),
(132, 132, 1, NULL, NULL, 1, '2022-07-12 18:26:12', '2022-07-12 18:26:12', 'f4541a1a-75b9-41c6-9992-9d46c79096c9'),
(134, 134, 1, 'test', 'm365/test', 1, '2022-07-12 18:33:07', '2022-07-12 18:33:07', '84a27cfc-5693-4b6d-a13d-faba3b0ffe22'),
(135, 135, 1, NULL, NULL, 1, '2022-07-12 18:33:07', '2022-07-12 18:33:07', 'f14b9aa7-125c-4c29-b219-bd72ac84cfbd'),
(136, 136, 1, NULL, NULL, 1, '2022-07-12 18:33:07', '2022-07-12 18:33:07', 'de0ed618-8d2f-456b-a6c9-9af26408ec45'),
(137, 137, 1, NULL, NULL, 1, '2022-07-12 18:33:07', '2022-07-12 18:33:07', 'b8bd70a2-041c-4037-80a0-0203ad112225'),
(138, 138, 1, NULL, NULL, 1, '2022-07-12 18:33:07', '2022-07-12 18:33:07', '79fbb8c6-c1f9-4ca7-a674-df14e8f6ab72'),
(139, 139, 1, 'test', 'm365/test', 1, '2022-07-12 18:33:24', '2022-07-12 18:33:24', 'd86dd8d0-cc39-4901-a7bf-9c78b6547350'),
(140, 140, 1, NULL, NULL, 1, '2022-07-12 18:33:24', '2022-07-12 18:33:24', 'db840ab8-d791-4e55-b1a5-695d06cd8ce3'),
(141, 141, 1, NULL, NULL, 1, '2022-07-12 18:33:24', '2022-07-12 18:33:24', '3172aeba-ea5f-4f43-a0c8-b8afcf8bf203'),
(142, 142, 1, NULL, NULL, 1, '2022-07-12 18:33:24', '2022-07-12 18:33:24', '5339d18c-2715-4236-9b5e-c74ba26403d5'),
(143, 143, 1, NULL, NULL, 1, '2022-07-12 18:33:24', '2022-07-12 18:33:24', 'd5cd5a74-62b9-4458-9410-2ce82a267796'),
(144, 144, 1, 'test', 'm365/test', 1, '2022-07-12 18:34:53', '2022-07-12 18:34:53', 'b384df1b-34db-487a-a2cc-28679cb9b39f'),
(145, 145, 1, NULL, NULL, 1, '2022-07-12 18:34:53', '2022-07-12 18:34:53', 'a835f249-96ed-4694-a2e4-f4d092eed1e2'),
(146, 146, 1, NULL, NULL, 1, '2022-07-12 18:34:53', '2022-07-12 18:34:53', 'bbf10725-d990-4859-ba10-7a6a7a035b91'),
(147, 147, 1, NULL, NULL, 1, '2022-07-12 18:34:53', '2022-07-12 18:34:53', '1d7a665f-ff08-4573-a6e5-1efc2b563d50'),
(148, 148, 1, NULL, NULL, 1, '2022-07-12 18:34:53', '2022-07-12 18:34:53', '6ac05149-6f3b-46be-a522-468b9a65a510'),
(150, 150, 1, NULL, NULL, 1, '2022-07-12 18:39:02', '2022-07-12 18:39:02', 'efc8e7d2-1ddd-4c91-993d-b81326fb979b'),
(151, 151, 1, 'test', 'karriere/test', 1, '2022-07-12 18:39:02', '2022-07-12 18:39:02', '62b19244-c7ef-4e64-bbd9-4a6f1a7f7566'),
(152, 152, 1, NULL, NULL, 1, '2022-07-12 18:39:02', '2022-07-12 18:39:02', '69db10b1-94e3-4523-877d-46e79fb7095b'),
(153, 153, 1, NULL, NULL, 1, '2022-07-12 18:39:02', '2022-07-12 18:39:02', 'bea91aba-e6f0-4449-b644-9d1293d76f52'),
(154, 154, 1, NULL, NULL, 1, '2022-07-12 18:39:02', '2022-07-12 18:39:02', 'ebb7a7d6-f183-4b53-9753-de4c8e170112'),
(155, 155, 1, NULL, NULL, 1, '2022-07-12 18:39:02', '2022-07-12 18:39:02', '823e3e49-fd3d-48c0-b1a0-14e002a33081'),
(157, 157, 1, 'test', 'karriere/test', 1, '2022-07-12 18:41:33', '2022-07-12 18:41:33', '00e7313e-9310-4906-b0ce-a7bba75b6c11'),
(158, 158, 1, NULL, NULL, 1, '2022-07-12 18:41:33', '2022-07-12 18:41:33', 'b0f028af-4fdf-40bf-9031-bf90afb8ec58'),
(159, 159, 1, NULL, NULL, 1, '2022-07-12 18:41:33', '2022-07-12 18:41:33', '86205422-2344-491f-8c74-a32530dc8d01'),
(160, 160, 1, NULL, NULL, 1, '2022-07-12 18:41:33', '2022-07-12 18:41:33', 'b3a05a96-4a5d-4580-8468-45d78ac59ba3'),
(163, 163, 1, 'test', 'karriere/test', 1, '2022-07-12 18:48:25', '2022-07-12 18:48:25', 'b7099ab7-16fd-446b-a299-4bb62127be7b'),
(164, 164, 1, NULL, NULL, 1, '2022-07-12 18:48:25', '2022-07-12 18:48:25', '66e84143-13f6-4bf3-ac1a-5ee7349a734d'),
(165, 165, 1, NULL, NULL, 1, '2022-07-12 18:48:25', '2022-07-12 18:48:25', '90966141-15f0-4297-afef-e6659ba20239'),
(166, 166, 1, NULL, NULL, 1, '2022-07-12 18:48:25', '2022-07-12 18:48:25', '8871c473-d495-439b-8b1f-d7901caaf301'),
(167, 167, 1, 'home', '__home__', 1, '2022-07-13 13:51:04', '2022-07-13 13:51:04', 'fafe7d0f-6992-4072-b19e-3165136e878a'),
(168, 168, 1, 'second-blog-post', 'blog/second-blog-post', 1, '2022-07-13 14:07:46', '2022-07-14 15:55:29', 'b9e56d10-7927-4c59-b9d6-8c31c2661227'),
(169, 169, 1, 'test-2', 'blog/test-2', 1, '2022-07-13 14:07:46', '2022-07-13 14:07:46', '4f658d87-b791-4746-b059-5998d964b5a1'),
(170, 170, 1, 'first-blog-post', 'blog/first-blog-post', 1, '2022-07-13 14:07:48', '2022-07-14 15:54:59', '51336db2-2e17-4141-b6aa-9d9afb95b86a'),
(171, 171, 1, 'test-3', 'blog/test-3', 1, '2022-07-13 14:07:48', '2022-07-13 14:07:48', '19d1c49a-1047-4389-956e-af1a872a2024'),
(174, 174, 1, NULL, NULL, 1, '2022-07-13 15:58:26', '2022-07-13 15:58:26', '8f46848c-8a09-4a01-9c68-56cbb427f36c'),
(175, 175, 1, 'blog-overview', 'blog', 1, '2022-07-13 15:58:26', '2022-07-13 15:58:26', '9c8a8dfb-cc55-4716-a21f-5c8227131482'),
(176, 176, 1, NULL, NULL, 1, '2022-07-13 15:58:26', '2022-07-13 15:58:26', '7fcf8b0e-aa59-4801-80d3-d3b687156556'),
(179, 179, 1, 'test', 'karriere/test', 1, '2022-07-13 16:01:47', '2022-07-13 16:01:47', 'b6deabd9-61a5-4974-95c6-625814cf1345'),
(180, 180, 1, NULL, NULL, 1, '2022-07-13 16:01:47', '2022-07-13 16:01:47', '084a7603-bd45-4e61-85c0-2b36a01678b9'),
(181, 181, 1, NULL, NULL, 1, '2022-07-13 16:01:47', '2022-07-13 16:01:47', '682b92ff-6f74-4eb9-9e4d-62af5600c930'),
(182, 182, 1, NULL, NULL, 1, '2022-07-13 16:01:47', '2022-07-13 16:01:47', '15d92034-4331-42bf-9a48-9ec84304af81'),
(185, 185, 1, 'blog-overview', 'blog', 1, '2022-07-13 16:02:22', '2022-07-13 16:02:22', 'b300f9f4-2a29-4a5c-94d6-9401aa1cc3bf'),
(186, 186, 1, NULL, NULL, 1, '2022-07-13 16:02:22', '2022-07-13 16:02:22', '33f4c112-66de-48d0-8e34-6f023c4a97ff'),
(187, 187, 1, 'blog-overview', 'blog', 1, '2022-07-13 16:03:02', '2022-07-13 16:03:02', 'dc831b3b-e375-446c-a004-746d9e60b41c'),
(188, 188, 1, NULL, NULL, 1, '2022-07-13 16:03:03', '2022-07-13 16:03:03', '53c821d0-d1a2-4978-9564-363afd5a717e'),
(189, 189, 1, 'blog-overview', 'blog', 1, '2022-07-13 16:04:57', '2022-07-13 16:04:57', 'ccdeef54-0e72-4e0c-8400-b48d76726df6'),
(191, 191, 1, 'blog-overview', 'blog', 1, '2022-07-13 16:05:11', '2022-07-13 16:05:11', '44a155b0-076b-4ae6-931b-ab3c2f3a374b'),
(193, 193, 1, 'blog-overview', 'blog', 1, '2022-07-13 16:07:48', '2022-07-13 16:07:48', '2100b407-4955-4f93-992d-f768e12880d0'),
(194, 194, 1, 'stories-overview', 'success-stories', 1, '2022-07-13 16:19:37', '2022-07-13 16:19:37', '36961cf8-4fff-42ac-93d8-90d1c5723de2'),
(195, 195, 1, 'stories-overview', 'success-stories', 1, '2022-07-13 16:19:57', '2022-07-13 16:19:57', '2f5d6b09-ef94-46e6-820a-b444ab7ae36f'),
(197, 197, 1, 'stories-overview', 'success-stories', 1, '2022-07-13 16:20:08', '2022-07-13 16:20:08', '9fe72439-cac9-45f4-adf6-2e11cf426c68'),
(198, 198, 1, 'example-two', 'success-stories/example-two', 1, '2022-07-13 16:24:49', '2022-07-14 16:23:22', '77fe5260-5376-4bde-9978-1f766addc55d'),
(199, 199, 1, 'test-2', 'success-stories/test-2', 1, '2022-07-13 16:24:49', '2022-07-13 16:24:49', 'e698d232-2108-4082-90d3-9efdc6107475'),
(200, 200, 1, 'stories-post-example', 'success-stories/stories-post-example', 1, '2022-07-13 16:24:51', '2022-07-14 16:22:50', '6fe8f922-f7e9-4628-89c7-a601aa276b8d'),
(201, 201, 1, 'test-3', 'success-stories/test-3', 1, '2022-07-13 16:24:51', '2022-07-13 16:24:51', 'a01cb76d-9999-498f-9007-958009124008'),
(203, 203, 1, 'test', 'success-stories/test', 1, '2022-07-13 16:25:37', '2022-07-13 16:25:37', '016f3343-f9e7-4775-b7d8-1366fbfe3c37'),
(205, 205, 1, 'test-2', 'success-stories/test-2', 1, '2022-07-13 16:25:43', '2022-07-13 16:25:43', 'd9cdbc97-8520-4164-ae4b-8bc17257fbe7'),
(207, 207, 1, 'test', 'success-stories/test', 1, '2022-07-13 16:25:49', '2022-07-13 16:25:49', '58301b5f-c87c-42d8-8d65-756fcf594e62'),
(208, 208, 1, 'carrier-overview', 'unternehmen/karriere', 1, '2022-07-13 16:28:41', '2022-07-13 16:28:41', '6319e23b-ac27-4e39-8121-d8b4808392a3'),
(209, 209, 1, 'carrier-overview', 'unternehmen/karriere', 1, '2022-07-13 16:28:41', '2022-07-13 16:28:41', 'c822eff2-7ce0-49fd-814d-455adecf7b39'),
(210, 210, 1, 'job-software', 'karriere/job-software', 1, '2022-07-13 17:17:49', '2022-07-14 16:21:12', '007c6c65-3025-44a8-8a5f-fbc6637814b0'),
(211, 211, 1, NULL, NULL, 1, '2022-07-13 17:17:49', '2022-07-13 17:17:49', '5c39f891-3483-4383-9a13-66eb748a6f04'),
(212, 212, 1, NULL, NULL, 1, '2022-07-13 17:17:49', '2022-07-13 17:17:49', 'c92b04dd-6caf-463a-91e4-8cadc7146049'),
(213, 213, 1, NULL, NULL, 1, '2022-07-13 17:17:49', '2022-07-13 17:17:49', '282ed98d-3e96-4c1e-acb0-5b7928996a6e'),
(214, 214, 1, 'test-2', 'karriere/test-2', 1, '2022-07-13 17:17:49', '2022-07-13 17:17:49', '49115045-8a1d-45cd-b2ce-66c841e7820d'),
(215, 215, 1, NULL, NULL, 1, '2022-07-13 17:17:49', '2022-07-13 17:17:49', 'f8e462d8-62dd-47ed-9d7f-2d5e4df91c69'),
(216, 216, 1, NULL, NULL, 1, '2022-07-13 17:17:49', '2022-07-13 17:17:49', '4cb837dc-50ed-4fad-9247-95229701f56e'),
(217, 217, 1, NULL, NULL, 1, '2022-07-13 17:17:49', '2022-07-13 17:17:49', '8a02ae96-5b2b-4e8e-8ec8-c859f2fcc5f9'),
(218, 218, 1, 'software-overview', 'm365-apps', 1, '2022-07-13 18:26:41', '2022-07-13 18:26:41', '2b76bc36-a608-48f0-b508-24b3729ee8d6'),
(219, 219, 1, 'software-overview', 'm365-apps', 1, '2022-07-13 18:26:41', '2022-07-13 18:26:41', '0bb85bf8-27a9-43e5-8c13-53cd6153ed99'),
(220, 220, 1, 'microsoft-teams', 'microsoft-teams', 1, '2022-07-13 18:27:58', '2022-07-13 18:27:58', '2557732b-e3fc-4233-b1b9-fbf811d6067b'),
(221, 221, 1, 'microsoft-teams', 'microsoft-teams', 1, '2022-07-13 18:27:58', '2022-07-13 18:27:58', '3ead7ade-7610-4f5f-816e-263e83747129'),
(222, 222, 1, 'microsoft-teams', 'microsoft-teams', 1, '2022-07-13 18:27:58', '2022-07-13 18:27:58', 'ef105a99-03e4-4a47-87d1-7d4e748e4769'),
(223, 223, 1, 'software-overview', 'm365-apps', 1, '2022-07-13 18:32:11', '2022-07-13 18:32:11', 'a7c1a6f7-aefc-4283-b489-99b822d04438'),
(224, 224, 1, 'teams-macht-schule', 'm365/teams-macht-schule', 1, '2022-07-13 19:12:41', '2022-07-14 15:34:09', '7a2b22a3-6d24-426b-8de0-5bd913111894'),
(225, 225, 1, NULL, NULL, 1, '2022-07-13 19:12:41', '2022-07-13 19:12:41', 'f0ae6ef8-9c65-4a89-b62a-24b333dfd5b1'),
(226, 226, 1, NULL, NULL, 1, '2022-07-13 19:12:41', '2022-07-13 19:12:41', '2901bd9f-79fc-4f97-be21-a28745767d78'),
(227, 227, 1, NULL, NULL, 1, '2022-07-13 19:12:41', '2022-07-13 19:12:41', '6959de32-aea5-4343-907d-052405a990cc'),
(228, 228, 1, NULL, NULL, 1, '2022-07-13 19:12:41', '2022-07-13 19:12:41', '9e442165-4b96-4c88-a894-c5c212598758'),
(229, 229, 1, 'test-2', 'm365/test-2', 1, '2022-07-13 19:12:41', '2022-07-13 19:12:41', '1598a035-e106-4d17-a15c-fd8a1a58b353'),
(230, 230, 1, NULL, NULL, 1, '2022-07-13 19:12:41', '2022-07-13 19:12:41', 'dad1c7a2-2f03-4be7-9abb-538656a68cbb'),
(231, 231, 1, NULL, NULL, 1, '2022-07-13 19:12:41', '2022-07-13 19:12:41', 'a7a03d54-7698-4c09-b166-86678994dd28'),
(232, 232, 1, NULL, NULL, 1, '2022-07-13 19:12:41', '2022-07-13 19:12:41', '397fae10-1f10-408b-8b0e-267e3a7eb06f'),
(233, 233, 1, NULL, NULL, 1, '2022-07-13 19:12:41', '2022-07-13 19:12:41', 'f5cbf385-2e18-43b3-b414-b7e1b9d2a35b'),
(234, 234, 1, 'outlook', 'm365/outlook', 1, '2022-07-13 19:12:43', '2022-07-14 15:25:06', '82889bcf-d3ba-41ff-afee-1dfcb950e161'),
(235, 235, 1, NULL, NULL, 1, '2022-07-13 19:12:43', '2022-07-13 19:12:43', '08904518-9af0-43cc-83be-9597e83be26d'),
(236, 236, 1, NULL, NULL, 1, '2022-07-13 19:12:43', '2022-07-13 19:12:43', '80e7cdd3-6aad-4a8a-888d-2a1287d665b9'),
(237, 237, 1, NULL, NULL, 1, '2022-07-13 19:12:43', '2022-07-13 19:12:43', 'af0b4c5f-12d2-4e3d-a23d-47bd8b25db6d'),
(238, 238, 1, NULL, NULL, 1, '2022-07-13 19:12:43', '2022-07-13 19:12:43', '240ad4a0-263b-4c3c-9bed-2119573dd18b'),
(239, 239, 1, 'test-3', 'm365/test-3', 1, '2022-07-13 19:12:43', '2022-07-13 19:12:43', '543654d7-2285-4576-9cf3-de3c74fb59fd'),
(240, 240, 1, NULL, NULL, 1, '2022-07-13 19:12:43', '2022-07-13 19:12:43', '05f5efa5-caab-4763-a7f2-50dda719806a'),
(241, 241, 1, NULL, NULL, 1, '2022-07-13 19:12:43', '2022-07-13 19:12:43', 'a05a297f-88c6-472b-9b52-c4bf790d870d'),
(242, 242, 1, NULL, NULL, 1, '2022-07-13 19:12:43', '2022-07-13 19:12:43', 'ed573562-7455-444d-b268-5acc4c7c16c6'),
(243, 243, 1, NULL, NULL, 1, '2022-07-13 19:12:43', '2022-07-13 19:12:43', '968360fb-0986-4410-9d88-24e8d1bcbff2'),
(244, 244, 1, 'sharepoint', 'm365/sharepoint', 1, '2022-07-13 19:12:45', '2022-07-14 15:27:38', '1a479708-3357-4289-bb23-1102d68d79ec'),
(245, 245, 1, NULL, NULL, 1, '2022-07-13 19:12:45', '2022-07-13 19:12:45', '6c550ac1-687c-4980-900c-67718151b839'),
(246, 246, 1, NULL, NULL, 1, '2022-07-13 19:12:45', '2022-07-13 19:12:45', '8e5b0001-2066-44d4-bae9-69f10929c2e4'),
(247, 247, 1, NULL, NULL, 1, '2022-07-13 19:12:45', '2022-07-13 19:12:45', 'a7328974-3a0d-4586-bcaa-0894a02e62ee'),
(248, 248, 1, NULL, NULL, 1, '2022-07-13 19:12:45', '2022-07-13 19:12:45', 'e4814d97-d002-4e74-ad59-efd803378c4a'),
(249, 249, 1, 'test-4', 'm365/test-4', 1, '2022-07-13 19:12:45', '2022-07-13 19:12:45', '91fe765f-8eb5-44a3-9127-2235063574e8'),
(250, 250, 1, NULL, NULL, 1, '2022-07-13 19:12:45', '2022-07-13 19:12:45', '99d0b89c-c28e-4395-a679-89f3f5c2f1db'),
(251, 251, 1, NULL, NULL, 1, '2022-07-13 19:12:45', '2022-07-13 19:12:45', 'e20f6b99-eef7-4123-a02f-47c28f1f2deb'),
(252, 252, 1, NULL, NULL, 1, '2022-07-13 19:12:45', '2022-07-13 19:12:45', 'b73de2c5-deca-4657-942d-3ee4edd2984e'),
(253, 253, 1, NULL, NULL, 1, '2022-07-13 19:12:45', '2022-07-13 19:12:45', '6d8b8ec4-6ec7-47ec-bf46-64971bc75c9f'),
(254, 254, 1, 'test-5', 'm365/test-5', 1, '2022-07-13 19:12:46', '2022-07-13 19:12:46', 'cc45b071-f9b0-4c2c-a7f2-bc1b533150f7'),
(255, 255, 1, NULL, NULL, 1, '2022-07-13 19:12:46', '2022-07-13 19:12:46', 'b649e65e-6f20-4297-8c34-4ce3a9b08556'),
(256, 256, 1, NULL, NULL, 1, '2022-07-13 19:12:46', '2022-07-13 19:12:46', 'be9004d8-14d1-488e-91b7-a0c1a35055b7'),
(257, 257, 1, NULL, NULL, 1, '2022-07-13 19:12:46', '2022-07-13 19:12:46', 'e7f66bbe-db85-4616-ac1e-2fdc8f37b70b'),
(258, 258, 1, NULL, NULL, 1, '2022-07-13 19:12:46', '2022-07-13 19:12:46', '0bfc1d71-0853-4b8d-8049-b142b190f1cc'),
(259, 259, 1, 'test-5', 'm365/test-5', 1, '2022-07-13 19:12:46', '2022-07-13 19:12:46', '1d6c77fe-dea2-45ab-86ec-0a02cd6adf82'),
(260, 260, 1, NULL, NULL, 1, '2022-07-13 19:12:46', '2022-07-13 19:12:46', '8d7d6a7a-d391-43f3-ae0b-f9e1b7e7067e'),
(261, 261, 1, NULL, NULL, 1, '2022-07-13 19:12:46', '2022-07-13 19:12:46', '9a34b4f2-3784-47ad-b9ab-6ee1a31fa615'),
(262, 262, 1, NULL, NULL, 1, '2022-07-13 19:12:46', '2022-07-13 19:12:46', 'cfd8cf79-fcd9-4b3e-815b-fe6fc8d41e84'),
(263, 263, 1, NULL, NULL, 1, '2022-07-13 19:12:46', '2022-07-13 19:12:46', 'a794353d-66a4-4c36-be0b-3688af488df6'),
(264, 264, 1, 'test-6', 'm365/test-6', 1, '2022-07-13 19:12:48', '2022-07-13 19:12:48', '3cfed804-7531-4714-8b90-e7828c719672'),
(265, 265, 1, NULL, NULL, 1, '2022-07-13 19:12:48', '2022-07-13 19:12:48', '25931b85-4617-41e0-be47-a6880fa5acfd'),
(266, 266, 1, NULL, NULL, 1, '2022-07-13 19:12:48', '2022-07-13 19:12:48', '5e0dce53-636e-4fcf-9f42-1bf8dd923c87'),
(267, 267, 1, NULL, NULL, 1, '2022-07-13 19:12:48', '2022-07-13 19:12:48', 'bfecdfa7-0cb9-4cde-91e2-43e26434f52a'),
(268, 268, 1, NULL, NULL, 1, '2022-07-13 19:12:48', '2022-07-13 19:12:48', 'fa157429-a4b3-41d0-918b-20f907682d5a'),
(269, 269, 1, 'test-6', 'm365/test-6', 1, '2022-07-13 19:12:48', '2022-07-13 19:12:48', 'fe7736ea-b261-472a-aeec-9ab6bf619eea'),
(270, 270, 1, NULL, NULL, 1, '2022-07-13 19:12:48', '2022-07-13 19:12:48', '62014871-f9f0-43f9-be87-9257668550a8'),
(271, 271, 1, NULL, NULL, 1, '2022-07-13 19:12:48', '2022-07-13 19:12:48', '0fb1d724-e03f-4e78-b568-bae5102e8032'),
(272, 272, 1, NULL, NULL, 1, '2022-07-13 19:12:48', '2022-07-13 19:12:48', 'bb825689-1fe4-402c-8764-e8a7b1288a17'),
(273, 273, 1, NULL, NULL, 1, '2022-07-13 19:12:48', '2022-07-13 19:12:48', '75e40db2-dd70-4eef-a24b-09e08748ad8c'),
(274, 274, 1, 'test-7', 'm365/test-7', 1, '2022-07-13 19:12:50', '2022-07-13 19:12:50', '93e83343-8f83-427f-8bd4-021979236398'),
(275, 275, 1, NULL, NULL, 1, '2022-07-13 19:12:50', '2022-07-13 19:12:50', '263da65e-b5fe-46b0-9d46-13ed27f9ec2e'),
(276, 276, 1, NULL, NULL, 1, '2022-07-13 19:12:50', '2022-07-13 19:12:50', 'bf6d8b0c-050a-4070-a306-55549903f270'),
(277, 277, 1, NULL, NULL, 1, '2022-07-13 19:12:50', '2022-07-13 19:12:50', '62da75ac-c572-45b0-9ac1-1ee2af043aac'),
(278, 278, 1, NULL, NULL, 1, '2022-07-13 19:12:50', '2022-07-13 19:12:50', 'd74509de-498b-48d9-baf0-fa7f0deb2a36'),
(279, 279, 1, 'test-7', 'm365/test-7', 1, '2022-07-13 19:12:50', '2022-07-13 19:12:50', 'd730a0cd-98ba-4cc1-9625-fb4560712ec8'),
(280, 280, 1, NULL, NULL, 1, '2022-07-13 19:12:50', '2022-07-13 19:12:50', 'bf302226-6cf7-44a2-94d7-3616c0d39249'),
(281, 281, 1, NULL, NULL, 1, '2022-07-13 19:12:50', '2022-07-13 19:12:50', '26c3fb64-525e-4621-a683-313ee84d5ce6'),
(282, 282, 1, NULL, NULL, 1, '2022-07-13 19:12:50', '2022-07-13 19:12:50', 'b8a27a5c-0b58-4c5a-8c2e-10c202ddabf7'),
(283, 283, 1, NULL, NULL, 1, '2022-07-13 19:12:50', '2022-07-13 19:12:50', 'eb4fc41a-03c2-4d53-8d05-a2db387a4789'),
(284, 284, 1, 'test-8', 'm365/test-8', 1, '2022-07-13 19:12:51', '2022-07-13 19:12:51', '75fddd6a-eb17-42e3-be18-c62f9a1145a0'),
(285, 285, 1, NULL, NULL, 1, '2022-07-13 19:12:51', '2022-07-13 19:12:51', '0032c523-2c1d-4b22-a26a-6a49ba33e8a9'),
(286, 286, 1, NULL, NULL, 1, '2022-07-13 19:12:51', '2022-07-13 19:12:51', '1c4d8da1-3448-4e3b-983b-8880ba7cb699'),
(287, 287, 1, NULL, NULL, 1, '2022-07-13 19:12:51', '2022-07-13 19:12:51', '2474aaba-3f3d-4ce1-95e5-789663f6de13'),
(288, 288, 1, NULL, NULL, 1, '2022-07-13 19:12:51', '2022-07-13 19:12:51', '73749dc8-bd3b-4896-a687-2afd47b6b6f6'),
(289, 289, 1, 'test-8', 'm365/test-8', 1, '2022-07-13 19:12:51', '2022-07-13 19:12:51', '7693db7a-ada4-4159-92c2-963f8575b616'),
(290, 290, 1, NULL, NULL, 1, '2022-07-13 19:12:51', '2022-07-13 19:12:51', '8f4f9083-7be9-48f2-87bb-88c72edce003'),
(291, 291, 1, NULL, NULL, 1, '2022-07-13 19:12:51', '2022-07-13 19:12:51', 'fb10975a-8001-48b0-b88e-fc79f369b8a4'),
(292, 292, 1, NULL, NULL, 1, '2022-07-13 19:12:51', '2022-07-13 19:12:51', '964b273b-652a-484e-8729-d1635697a486'),
(293, 293, 1, NULL, NULL, 1, '2022-07-13 19:12:51', '2022-07-13 19:12:51', 'f72cfc2e-5c41-4393-9686-3dbaad18a233'),
(294, 294, 1, 'test-9', 'm365/test-9', 1, '2022-07-13 19:12:53', '2022-07-13 19:12:53', '76557d3a-bda8-47ac-b179-007bca87dfd4'),
(295, 295, 1, NULL, NULL, 1, '2022-07-13 19:12:53', '2022-07-13 19:12:53', '4f3893d9-4f42-4f06-8822-06e4efffeb05'),
(296, 296, 1, NULL, NULL, 1, '2022-07-13 19:12:53', '2022-07-13 19:12:53', '1e7e82c7-8226-4542-b7cd-213f6907c02e'),
(297, 297, 1, NULL, NULL, 1, '2022-07-13 19:12:53', '2022-07-13 19:12:53', '0f8ab1ec-f7f0-4cd9-912c-637b4507ad4e'),
(298, 298, 1, NULL, NULL, 1, '2022-07-13 19:12:53', '2022-07-13 19:12:53', '34c122c4-63ce-4917-8bc1-aa109359c212'),
(299, 299, 1, 'test-9', 'm365/test-9', 1, '2022-07-13 19:12:53', '2022-07-13 19:12:53', 'ab5541d6-c152-4c6e-aec0-add3ca0c7d64'),
(300, 300, 1, NULL, NULL, 1, '2022-07-13 19:12:53', '2022-07-13 19:12:53', '8ad8af28-e77e-4ab7-9715-3ee5c9d942b9'),
(301, 301, 1, NULL, NULL, 1, '2022-07-13 19:12:53', '2022-07-13 19:12:53', '61dee77b-d6b3-4647-8853-1488364e30cc'),
(302, 302, 1, NULL, NULL, 1, '2022-07-13 19:12:53', '2022-07-13 19:12:53', 'e3483eab-bbfa-400e-b147-6916841bd1c6'),
(303, 303, 1, NULL, NULL, 1, '2022-07-13 19:12:53', '2022-07-13 19:12:53', '0160938f-3ada-4414-8a48-cf1f7a85af24'),
(304, 304, 1, 'support', 'unternehmen/support', 1, '2022-07-14 13:23:16', '2022-07-14 13:23:16', '9082368d-01b2-4b7c-8124-d3e4a2e38203'),
(305, 305, 1, 'support', 'unternehmen/support', 1, '2022-07-14 13:23:16', '2022-07-14 13:23:16', 'b82bf745-d77d-4484-888d-00694fdd69e8'),
(306, 306, 1, 'support', 'unternehmen/support', 1, '2022-07-14 13:23:16', '2022-07-14 13:23:16', 'b1e9cf44-354b-4ef1-83d1-7e2b68651bfb'),
(307, 307, 1, 'support', 'unternehmen/support', 1, '2022-07-14 13:23:46', '2022-07-14 13:23:46', '56272af5-058b-44e0-990c-f40cb84ffd8f'),
(308, 308, 1, 'contact', 'unternehmen/kontakt', 1, '2022-07-14 13:24:27', '2022-07-14 13:24:27', '4f90b77a-0543-4ef3-b4fb-f8e307235b25'),
(309, 309, 1, 'contact', 'unternehmen/kontakt', 1, '2022-07-14 13:24:27', '2022-07-14 13:24:27', '41d54195-17f0-496f-9c72-e4d1c414829a'),
(310, 310, 1, 'contact', 'unternehmen/kontakt', 1, '2022-07-14 13:24:27', '2022-07-14 13:24:27', 'abd81c12-ac68-423b-9872-eac7c098ac69'),
(311, 311, 1, 'contact', 'unternehmen/kontakt', 1, '2022-07-14 13:24:57', '2022-07-14 13:24:57', 'e6b55a54-1644-4368-a87e-e406f825daf6'),
(313, 313, 1, 'unternehmen-test', 'm365/unternehmen-test', 1, '2022-07-14 13:25:26', '2022-07-14 13:25:26', 'ff330169-1722-48aa-9781-40e7c7d48390'),
(314, 314, 1, NULL, NULL, 1, '2022-07-14 13:25:26', '2022-07-14 13:25:26', 'bca54be1-de4a-4ef0-b073-23939b58e39f'),
(315, 315, 1, NULL, NULL, 1, '2022-07-14 13:25:27', '2022-07-14 13:25:27', '7ec85a4b-d7a3-4bd3-bddc-52c71e88a3c9'),
(316, 316, 1, NULL, NULL, 1, '2022-07-14 13:25:27', '2022-07-14 13:25:27', '519b009d-449c-43f0-a307-3b6f40145d18'),
(317, 317, 1, NULL, NULL, 1, '2022-07-14 13:25:27', '2022-07-14 13:25:27', '02f436b1-66d3-40ff-b7ef-a2f53aa1350e'),
(318, 318, 1, 'beratung', 'unternehmen/beratung-workshop', 1, '2022-07-14 13:27:42', '2022-07-14 13:27:42', '2e881239-d28f-4163-bcce-4ba4fff663f1'),
(319, 319, 1, 'beratung', 'unternehmen/beratung-workshop', 1, '2022-07-14 13:27:42', '2022-07-14 13:27:42', 'a17d6ac1-e333-48fa-baef-95c52ed0d215'),
(320, 320, 1, 'beratung', 'unternehmen/beratung-workshop', 1, '2022-07-14 13:27:42', '2022-07-14 13:27:42', 'fb3bf643-64ef-49c3-9b08-70b770de009d'),
(321, 321, 1, 'beratung', 'unternehmen/beratung-workshop', 1, '2022-07-14 13:27:54', '2022-07-14 13:27:54', 'eb4d547d-b958-4624-92b1-7036d5b927aa'),
(322, 322, 1, 'impressum-datenschutz', 'unternehmen/impressum-datenschutz', 1, '2022-07-14 13:57:13', '2022-07-14 13:57:13', '7cd912b0-add4-48e3-8454-cd95b3920caf'),
(323, 323, 1, 'impressum-datenschutz', 'unternehmen/impressum-datenschutz', 1, '2022-07-14 13:57:13', '2022-07-14 13:57:13', '86c817ab-921e-4376-9d27-8703d3f14786'),
(324, 324, 1, 'impressum-datenschutz', 'unternehmen/impressum-datenschutz', 1, '2022-07-14 13:57:13', '2022-07-14 13:57:13', '0d225686-df7b-4971-916b-ab075438f5c0'),
(325, 325, 1, 'impressum-datenschutz', 'unternehmen/impressum-datenschutz', 1, '2022-07-14 13:57:39', '2022-07-14 13:57:39', '3a6883cf-4e59-4d97-b3d3-82ae6c692ef9'),
(326, 326, 1, 'support', 'unternehmen/support', 1, '2022-07-14 14:04:46', '2022-07-14 14:04:46', '70fce048-a881-46cc-b5a0-abc1386bc251'),
(327, 327, 1, 'support', 'unternehmen/support', 1, '2022-07-14 14:04:46', '2022-07-14 14:04:46', '277f0b50-27e9-4ca9-8b62-3ee347456fae'),
(329, 329, 1, NULL, NULL, 1, '2022-07-14 14:10:51', '2022-07-14 14:10:51', '47e70836-29d3-4b5c-8e6f-7ded470939fe'),
(330, 330, 1, NULL, NULL, 1, '2022-07-14 14:10:55', '2022-07-14 14:10:55', '353a355a-c397-48da-b248-3f804b7d7853'),
(331, 331, 1, NULL, NULL, 1, '2022-07-14 14:10:56', '2022-07-14 14:10:56', '1806bb54-d6ad-4778-b314-c72d191f9c60'),
(332, 332, 1, NULL, NULL, 1, '2022-07-14 14:10:58', '2022-07-14 14:10:58', '3c2b911e-dc7f-4de6-b038-dac5814ce82a'),
(333, 333, 1, NULL, NULL, 1, '2022-07-14 14:10:58', '2022-07-14 14:10:58', '49a4a541-dd64-4abb-b47c-7ad38a633ed5'),
(334, 334, 1, NULL, NULL, 1, '2022-07-14 14:10:59', '2022-07-14 14:10:59', 'f154b2aa-2b4b-4ba4-a2f5-9cf3f92a40ba'),
(335, 335, 1, NULL, NULL, 1, '2022-07-14 14:10:59', '2022-07-14 14:10:59', '4419d96d-2cb1-47de-b7ab-6be9523cd633'),
(336, 336, 1, NULL, NULL, 1, '2022-07-14 14:11:01', '2022-07-14 14:11:01', 'ea2a446d-af37-49c5-8a79-c1f9916e5800'),
(337, 337, 1, NULL, NULL, 1, '2022-07-14 14:11:01', '2022-07-14 14:11:01', 'a192db82-11a3-4600-b7ba-12d651604f5c'),
(338, 338, 1, NULL, NULL, 1, '2022-07-14 14:11:16', '2022-07-14 14:11:16', '44c36039-a580-45a4-a8f3-69bb41b8b299'),
(339, 339, 1, NULL, NULL, 1, '2022-07-14 14:11:16', '2022-07-14 14:11:16', '4ffabc74-9532-4091-bdd6-24716a7490ab'),
(340, 340, 1, NULL, NULL, 1, '2022-07-14 14:11:52', '2022-07-14 14:11:52', '59a48b3b-003d-4370-a133-4e567c92de87'),
(341, 341, 1, NULL, NULL, 1, '2022-07-14 14:11:52', '2022-07-14 14:11:52', '8406f03d-63b6-42b2-96af-dafb31a69a23'),
(344, 344, 1, NULL, NULL, 1, '2022-07-14 14:12:13', '2022-07-14 14:12:13', '374e8090-21e7-4ce9-8f48-b423311aad7b'),
(345, 345, 1, NULL, NULL, 1, '2022-07-14 14:12:13', '2022-07-14 14:12:13', 'f9da9fd7-fddf-4171-a637-37ef81e38031'),
(346, 346, 1, 'impressum-datenschutz', 'unternehmen/impressum-datenschutz', 1, '2022-07-14 14:12:13', '2022-07-14 14:12:13', '767953de-efd2-45c6-8b9f-bab7eea39b1b'),
(347, 347, 1, NULL, NULL, 1, '2022-07-14 14:12:13', '2022-07-14 14:12:13', 'd574620b-db88-4d8a-9546-8d2454b0d89e'),
(348, 348, 1, NULL, NULL, 1, '2022-07-14 14:12:13', '2022-07-14 14:12:13', '8b2d3e9e-9edd-4f58-9939-1b36029a091f'),
(351, 351, 1, NULL, NULL, 1, '2022-07-14 14:35:50', '2022-07-14 14:35:50', '79798830-3dcf-4fc8-8abe-70d158c98746'),
(352, 352, 1, 'microsoft-teams', 'm365/microsoft-teams', 1, '2022-07-14 14:36:18', '2022-07-14 14:36:18', '98d42a37-c7b6-4f44-83c9-4c4fed9b6ef9'),
(353, 353, 1, NULL, NULL, 1, '2022-07-14 14:36:18', '2022-07-14 14:36:18', '83e4f3a8-6349-4f99-8ee3-7f5171c5b6ad'),
(354, 354, 1, NULL, NULL, 1, '2022-07-14 14:36:18', '2022-07-14 14:36:18', '53c0856a-9088-4f4e-af1c-4bc86770b377'),
(355, 355, 1, NULL, NULL, 1, '2022-07-14 14:36:18', '2022-07-14 14:36:18', '7bbaf2fb-8668-4e23-aa75-a9036f11a60e'),
(356, 356, 1, NULL, NULL, 1, '2022-07-14 14:36:18', '2022-07-14 14:36:18', '83368e4c-413b-4223-ac84-1a6f86e26384'),
(358, 358, 1, 'test', 'm365/test', 1, '2022-07-14 14:43:20', '2022-07-14 14:43:20', '832d0cbf-8d5e-48d1-9b20-2159d2cb9463'),
(359, 359, 1, NULL, NULL, 1, '2022-07-14 14:43:20', '2022-07-14 14:43:20', '82d752c4-bc31-46a3-a8ff-d3ce11cc80ac'),
(360, 360, 1, NULL, NULL, 1, '2022-07-14 14:43:20', '2022-07-14 14:43:20', 'f87cc74e-344e-44b4-ab19-0675fc6c8fde'),
(361, 361, 1, NULL, NULL, 1, '2022-07-14 14:43:20', '2022-07-14 14:43:20', 'e3a6980e-9fec-4155-9ea3-36776b25cbb2'),
(362, 362, 1, NULL, NULL, 1, '2022-07-14 14:43:20', '2022-07-14 14:43:20', 'a0c3f686-4c8c-47b3-86e6-b6538c680908'),
(364, 364, 1, 'teams-macht-schule', 'm365/teams-macht-schule', 1, '2022-07-14 14:49:12', '2022-07-14 14:49:12', 'cba810ff-2a4c-4d4f-9a2f-6653c917b601'),
(365, 365, 1, NULL, NULL, 1, '2022-07-14 14:49:12', '2022-07-14 14:49:12', 'ff3eccd1-22c7-4e80-a718-fa83eca0aa11'),
(366, 366, 1, NULL, NULL, 1, '2022-07-14 14:49:12', '2022-07-14 14:49:12', 'abf2992d-64f4-4166-84d2-f62ab55cc0a1'),
(367, 367, 1, NULL, NULL, 1, '2022-07-14 14:49:12', '2022-07-14 14:49:12', '6905b194-f530-4a6f-8587-38a0f6b7f56d'),
(368, 368, 1, NULL, NULL, 1, '2022-07-14 14:49:12', '2022-07-14 14:49:12', '7816f36e-780e-4277-ba0d-3815dbe5c854'),
(369, 369, 1, 'modern-workplace', 'modern-workplace', 1, '2022-07-14 14:56:15', '2022-07-14 14:56:15', '4dc1c72b-40e2-4c53-9b7c-5eb25940df2e'),
(370, 370, 1, 'modern-workplace', 'modern-workplace', 1, '2022-07-14 14:56:15', '2022-07-14 14:56:15', '5d106d03-7803-4500-9491-4895ac37ff66'),
(371, 371, 1, 'modern-workplace', 'modern-workplace', 1, '2022-07-14 14:56:15', '2022-07-14 14:56:15', 'da8c976a-7a26-45dd-8cd8-4bde319fdda4'),
(372, 372, 1, 'modern-workplace', 'modern-workplace', 1, '2022-07-14 14:56:40', '2022-07-14 14:56:40', '08afae91-dbf6-4a0f-9416-c844424f6f04'),
(373, 373, 1, 'carrier-overview', 'unternehmen/karriere', 1, '2022-07-14 14:57:11', '2022-07-14 14:57:11', 'f3b5452b-0871-41b8-8650-58a42dfc1bff'),
(374, 374, 1, 'software-overview', 'm365-apps', 1, '2022-07-14 14:57:26', '2022-07-14 14:57:26', '5fc2bfe6-5621-4efa-a077-1446103ce99a'),
(377, 377, 1, 'test', 'm365/test', 1, '2022-07-14 15:22:32', '2022-07-14 15:22:32', '862045c9-c079-437c-af48-68fac11485a5'),
(378, 378, 1, NULL, NULL, 1, '2022-07-14 15:22:32', '2022-07-14 15:22:32', '0256e912-2e65-4639-aab8-c7ebe9cd0545'),
(379, 379, 1, NULL, NULL, 1, '2022-07-14 15:22:32', '2022-07-14 15:22:32', '98097976-b545-43b8-8bd2-e61b89162fd7'),
(380, 380, 1, NULL, NULL, 1, '2022-07-14 15:22:32', '2022-07-14 15:22:32', 'a7d1206b-f9a6-475b-9859-5d7d64d87065'),
(381, 381, 1, NULL, NULL, 1, '2022-07-14 15:22:32', '2022-07-14 15:22:32', '0116aaf0-2126-405f-bc7b-e14e191b8b89'),
(383, 383, 1, NULL, NULL, 1, '2022-07-14 15:24:07', '2022-07-14 15:24:07', 'c302ab6e-31c9-41cb-a0ab-0839cf9202f4'),
(384, 384, 1, NULL, NULL, 1, '2022-07-14 15:24:07', '2022-07-14 15:24:07', 'e0ca30f2-9199-4c00-855a-569ab2928684'),
(385, 385, 1, NULL, NULL, 1, '2022-07-14 15:24:07', '2022-07-14 15:24:07', '69ed28a5-4caa-4d07-b00e-234261ad0859'),
(386, 386, 1, NULL, NULL, 1, '2022-07-14 15:24:08', '2022-07-14 15:24:08', '2151f7cc-114d-438f-bc6b-e2d6e4c0f65d'),
(387, 387, 1, NULL, NULL, 1, '2022-07-14 15:24:08', '2022-07-14 15:24:08', '217c5070-b859-48da-b21b-5a6a9c776349'),
(388, 388, 1, NULL, NULL, 1, '2022-07-14 15:24:08', '2022-07-14 15:24:08', '659097b5-82b6-4de2-89d6-405e960fdbfa'),
(389, 389, 1, NULL, NULL, 1, '2022-07-14 15:24:08', '2022-07-14 15:24:08', 'dd245158-b255-4535-932f-befe5dd49fd5'),
(390, 390, 1, NULL, NULL, 1, '2022-07-14 15:24:09', '2022-07-14 15:24:09', '79cbc5c3-647e-40dc-a87d-8d02ddd7d214'),
(391, 391, 1, NULL, NULL, 1, '2022-07-14 15:24:09', '2022-07-14 15:24:09', 'e12e81ed-050d-4dab-9134-188fdec076f4'),
(392, 392, 1, 'office', 'm365/office', 1, '2022-07-14 15:24:15', '2022-07-14 15:24:15', '4a8c2c6a-264f-4e18-8d38-0c4f61522fc5'),
(393, 393, 1, NULL, NULL, 1, '2022-07-14 15:24:15', '2022-07-14 15:24:15', 'ccdd9de7-573e-4d60-a642-9b605cd932c8'),
(394, 394, 1, NULL, NULL, 1, '2022-07-14 15:24:15', '2022-07-14 15:24:15', 'c7a494b4-6b87-4ae1-837d-c8f8e619bfa7'),
(395, 395, 1, NULL, NULL, 1, '2022-07-14 15:24:15', '2022-07-14 15:24:15', 'ffad6ff1-95f4-430c-ab4f-c389793c4407'),
(396, 396, 1, NULL, NULL, 1, '2022-07-14 15:24:15', '2022-07-14 15:24:15', 'ae08c950-50d9-4db3-91c2-fa47bf09f46a'),
(399, 399, 1, 'outlook', 'm365/outlook', 1, '2022-07-14 15:25:06', '2022-07-14 15:25:06', 'ffdddfd5-441e-48eb-b034-e918165fffeb'),
(400, 400, 1, NULL, NULL, 1, '2022-07-14 15:25:06', '2022-07-14 15:25:06', '5d8162c2-ffd7-4a6c-922c-f4062eb94cd6'),
(401, 401, 1, NULL, NULL, 1, '2022-07-14 15:25:06', '2022-07-14 15:25:06', '138031c0-d8b0-4b44-a5d6-c7039beccff3'),
(402, 402, 1, NULL, NULL, 1, '2022-07-14 15:25:06', '2022-07-14 15:25:06', '4f48c901-aef7-4548-9b7b-ca8c9bcd3b6e'),
(403, 403, 1, NULL, NULL, 1, '2022-07-14 15:25:06', '2022-07-14 15:25:06', '5d5ed968-f9c7-44b3-8fb2-b89c52a8f764'),
(406, 406, 1, 'sharepoint', 'm365/sharepoint', 1, '2022-07-14 15:26:05', '2022-07-14 15:26:05', 'b032b40c-56e4-4846-a0ec-ea8b40db7039'),
(407, 407, 1, NULL, NULL, 1, '2022-07-14 15:26:05', '2022-07-14 15:26:05', '41ecb22f-7dad-4c0e-9cae-38ac6e30e47b'),
(408, 408, 1, NULL, NULL, 1, '2022-07-14 15:26:05', '2022-07-14 15:26:05', 'd7f8f860-92f3-4dac-8805-4d5cd0fd26e5'),
(409, 409, 1, NULL, NULL, 1, '2022-07-14 15:26:05', '2022-07-14 15:26:05', '12709335-994d-4929-b17b-f8574fb905b3'),
(410, 410, 1, NULL, NULL, 1, '2022-07-14 15:26:05', '2022-07-14 15:26:05', '5743e496-0406-483d-8364-1213551b290d'),
(411, 411, 1, '__temp_qlirbzkxiggqanqmboftpgnybrhvpezqlxev', 'm365/__temp_qlirbzkxiggqanqmboftpgnybrhvpezqlxev', 1, '2022-07-14 15:26:05', '2022-07-14 15:26:05', 'db4d80a0-91f4-416f-9811-706d59967192'),
(413, 413, 1, NULL, NULL, 1, '2022-07-14 15:26:25', '2022-07-14 15:26:25', 'a24b82b4-e9be-4a0a-9d68-c5e25f050691'),
(415, 415, 1, NULL, NULL, 1, '2022-07-14 15:26:31', '2022-07-14 15:26:31', '697bf31a-28dd-4559-93cd-4ea0a040cd6d'),
(417, 417, 1, 'todo', 'm365/todo', 1, '2022-07-14 15:27:00', '2022-07-14 15:31:44', 'fd4fb305-6975-42e4-9266-ce9f974e58ac'),
(418, 418, 1, NULL, NULL, 1, '2022-07-14 15:27:00', '2022-07-14 15:27:00', '226bbe12-e741-4570-ac8d-b7e4afefb5bf'),
(419, 419, 1, NULL, NULL, 1, '2022-07-14 15:27:00', '2022-07-14 15:27:00', '68746c84-6669-4f9b-ab75-b0ff00514f99'),
(420, 420, 1, NULL, NULL, 1, '2022-07-14 15:27:00', '2022-07-14 15:27:00', 'e4e4e834-d9fd-4dfb-9777-01a068604bf3'),
(421, 421, 1, NULL, NULL, 1, '2022-07-14 15:27:00', '2022-07-14 15:27:00', '113fce4c-b796-4e6c-ac91-8a25df2b03a3'),
(422, 422, 1, 'sharepoint-2', 'm365/sharepoint-2', 1, '2022-07-14 15:27:00', '2022-07-14 15:27:00', '512f4179-0828-4c36-bc7e-5d150f0f0e77'),
(423, 423, 1, NULL, NULL, 1, '2022-07-14 15:27:00', '2022-07-14 15:27:00', 'ad497444-280f-439c-921d-5b564f4c7452'),
(424, 424, 1, NULL, NULL, 1, '2022-07-14 15:27:00', '2022-07-14 15:27:00', '1d59cd10-1f55-4d36-a291-b18319a12ddf'),
(425, 425, 1, NULL, NULL, 1, '2022-07-14 15:27:00', '2022-07-14 15:27:00', '1a3db447-4637-4859-bcac-1a5bc9c6ad76'),
(426, 426, 1, NULL, NULL, 1, '2022-07-14 15:27:00', '2022-07-14 15:27:00', 'ff060a5f-f8c7-4f98-a07e-8bd9681e0c4f'),
(427, 427, 1, 'microsoft-forms', 'm365/microsoft-forms', 1, '2022-07-14 15:27:03', '2022-07-14 15:29:53', 'cc4b7075-84e0-4c59-a1c4-2e64e443f46f'),
(428, 428, 1, NULL, NULL, 1, '2022-07-14 15:27:03', '2022-07-14 15:27:03', '246e05f9-b0a6-4e03-8968-8cc0f7af0611'),
(429, 429, 1, NULL, NULL, 1, '2022-07-14 15:27:03', '2022-07-14 15:27:03', '94bb79c9-de68-4590-a1c5-219270c9bce1'),
(430, 430, 1, NULL, NULL, 1, '2022-07-14 15:27:03', '2022-07-14 15:27:03', 'acb202ce-d787-4d70-8155-b1bbf44fe723'),
(431, 431, 1, NULL, NULL, 1, '2022-07-14 15:27:03', '2022-07-14 15:27:03', '45ea7370-ddb4-4bf5-84db-6acce009e930'),
(432, 432, 1, 'sharepoint-3', 'm365/sharepoint-3', 1, '2022-07-14 15:27:03', '2022-07-14 15:27:03', '0c879945-2592-435a-a20d-74fb31957973'),
(433, 433, 1, NULL, NULL, 1, '2022-07-14 15:27:03', '2022-07-14 15:27:03', 'a76dfb39-930d-4025-bc04-65431e09c698'),
(434, 434, 1, NULL, NULL, 1, '2022-07-14 15:27:03', '2022-07-14 15:27:03', '5e4bfdf8-5ee2-4f69-a0ce-ed2bf0f7b82d'),
(435, 435, 1, NULL, NULL, 1, '2022-07-14 15:27:03', '2022-07-14 15:27:03', 'ee67a0fa-2211-40cf-b078-c6f396a8e74d'),
(436, 436, 1, NULL, NULL, 1, '2022-07-14 15:27:03', '2022-07-14 15:27:03', '3b94f9c8-aa3b-448f-b9af-ae54b2805990'),
(437, 437, 1, 'onenote', 'm365/onenote', 1, '2022-07-14 15:27:05', '2022-07-14 15:29:14', '51574978-47f9-4953-a229-db767989ffc7'),
(438, 438, 1, NULL, NULL, 1, '2022-07-14 15:27:05', '2022-07-14 15:27:05', '6970fa77-5cc3-4765-91ef-500478ae82f6'),
(439, 439, 1, NULL, NULL, 1, '2022-07-14 15:27:05', '2022-07-14 15:27:05', '983e8699-bdb4-4d16-8c37-32cb808b7cd5'),
(440, 440, 1, NULL, NULL, 1, '2022-07-14 15:27:05', '2022-07-14 15:27:05', '2a11e674-3a3b-4ca4-845f-509fe37874c2'),
(441, 441, 1, NULL, NULL, 1, '2022-07-14 15:27:05', '2022-07-14 15:27:05', '47a1ceb9-e792-4fa5-bdd0-62c5ceab39f9'),
(442, 442, 1, 'sharepoint-4', 'm365/sharepoint-4', 1, '2022-07-14 15:27:05', '2022-07-14 15:27:05', '5cff2f21-fb54-429d-8341-1b741e26fe0c'),
(443, 443, 1, NULL, NULL, 1, '2022-07-14 15:27:05', '2022-07-14 15:27:05', '6e830db6-2202-45e0-848c-9b1b5f89736c'),
(444, 444, 1, NULL, NULL, 1, '2022-07-14 15:27:05', '2022-07-14 15:27:05', 'f28f2e23-a6d6-49f9-9381-9652cbeee7e7'),
(445, 445, 1, NULL, NULL, 1, '2022-07-14 15:27:05', '2022-07-14 15:27:05', '655d1d63-e40e-4087-85ad-2cdceb0b68f4'),
(446, 446, 1, NULL, NULL, 1, '2022-07-14 15:27:05', '2022-07-14 15:27:05', '9b1fe021-a18e-4b81-9942-683028506892'),
(447, 447, 1, 'planner', 'm365/planner', 1, '2022-07-14 15:27:07', '2022-07-14 15:28:28', '4e0c6e96-860f-45e4-9d66-02053fd5305a'),
(448, 448, 1, NULL, NULL, 1, '2022-07-14 15:27:07', '2022-07-14 15:27:07', 'cfb4ed61-db85-4d1d-93c1-0947e0255668'),
(449, 449, 1, NULL, NULL, 1, '2022-07-14 15:27:07', '2022-07-14 15:27:07', 'c869ad70-a07f-4ce7-9d96-7fe70be7a38d'),
(450, 450, 1, NULL, NULL, 1, '2022-07-14 15:27:07', '2022-07-14 15:27:07', '354f44f3-8709-4fc1-8174-a738f4696ea4'),
(451, 451, 1, NULL, NULL, 1, '2022-07-14 15:27:07', '2022-07-14 15:27:07', '88592c4d-aed8-4910-ad23-5fc32bc81527'),
(452, 452, 1, 'sharepoint-5', 'm365/sharepoint-5', 1, '2022-07-14 15:27:07', '2022-07-14 15:27:07', 'f6f38d9c-5480-4de9-974a-489411dfc63a'),
(453, 453, 1, NULL, NULL, 1, '2022-07-14 15:27:07', '2022-07-14 15:27:07', 'cd9d6a12-2a38-423b-8ca0-3fe067538228'),
(454, 454, 1, NULL, NULL, 1, '2022-07-14 15:27:07', '2022-07-14 15:27:07', 'b316785e-1728-4b3c-8031-683b5c465817'),
(455, 455, 1, NULL, NULL, 1, '2022-07-14 15:27:07', '2022-07-14 15:27:07', 'f8e0ecc7-8e8c-4ad3-9c99-89ed7fec5ac0'),
(456, 456, 1, NULL, NULL, 1, '2022-07-14 15:27:07', '2022-07-14 15:27:07', '45ae0562-fb7e-4d0a-863c-25128758fc9a'),
(457, 457, 1, 'onedrive', 'm365/onedrive', 1, '2022-07-14 15:27:10', '2022-07-14 15:32:29', 'ff44308d-e8a3-4a22-92e5-ae0da6ac96bf'),
(458, 458, 1, NULL, NULL, 1, '2022-07-14 15:27:10', '2022-07-14 15:27:10', 'b7df5cab-3dcd-440d-a632-7f3a1eba57dd'),
(459, 459, 1, NULL, NULL, 1, '2022-07-14 15:27:10', '2022-07-14 15:27:10', '068c2f7d-a813-4325-9834-374f0dcd98f1'),
(460, 460, 1, NULL, NULL, 1, '2022-07-14 15:27:10', '2022-07-14 15:27:10', 'c6acdf6c-8ffa-4004-b2bc-0c1035660b02'),
(461, 461, 1, NULL, NULL, 1, '2022-07-14 15:27:10', '2022-07-14 15:27:10', '4fa1320e-bd6c-4755-a8fa-3d75988eebe3'),
(462, 462, 1, 'sharepoint-6', 'm365/sharepoint-6', 1, '2022-07-14 15:27:10', '2022-07-14 15:27:10', '814b4cc3-b0e5-415c-8bbb-7d6366baf721'),
(463, 463, 1, NULL, NULL, 1, '2022-07-14 15:27:10', '2022-07-14 15:27:10', '608ea8a3-bfd0-4a21-9722-05ea7d7e8210'),
(464, 464, 1, NULL, NULL, 1, '2022-07-14 15:27:10', '2022-07-14 15:27:10', 'ea3d9b75-8015-49a9-8853-8bf1528d5516'),
(465, 465, 1, NULL, NULL, 1, '2022-07-14 15:27:10', '2022-07-14 15:27:10', '544a3ced-a08e-4e82-8a4f-c4e2a9b35302'),
(466, 466, 1, NULL, NULL, 1, '2022-07-14 15:27:10', '2022-07-14 15:27:10', 'd502f454-76f2-43a7-b2ac-a408cae129f9');
INSERT INTO `elements_sites` (`id`, `elementId`, `siteId`, `slug`, `uri`, `enabled`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(468, 468, 1, 'microsoft-teams', 'm365/microsoft-teams', 1, '2022-07-14 15:27:27', '2022-07-14 15:27:27', '782652a7-8c79-4e25-b474-a7bc17c02c25'),
(469, 469, 1, NULL, NULL, 1, '2022-07-14 15:27:27', '2022-07-14 15:27:27', 'e12472be-e026-4ef0-98cc-c10b1ca1d5fd'),
(470, 470, 1, NULL, NULL, 1, '2022-07-14 15:27:27', '2022-07-14 15:27:27', 'cd551377-d2dc-4ed8-82b4-f73b99b1ab1c'),
(471, 471, 1, NULL, NULL, 1, '2022-07-14 15:27:27', '2022-07-14 15:27:27', '49aa26d6-fa82-445f-b661-dd83bb2d2a78'),
(472, 472, 1, NULL, NULL, 1, '2022-07-14 15:27:27', '2022-07-14 15:27:27', 'e26bd0d1-2b86-4b68-83a8-07b7ec5ce036'),
(475, 475, 1, 'onedrive', 'm365/onedrive', 1, '2022-07-14 15:28:02', '2022-07-14 15:28:02', '363f977a-8f3a-4450-969d-cf186a398154'),
(476, 476, 1, NULL, NULL, 1, '2022-07-14 15:28:02', '2022-07-14 15:28:02', '25244eb1-26e1-42e7-b43b-8d605cc42e4d'),
(477, 477, 1, NULL, NULL, 1, '2022-07-14 15:28:02', '2022-07-14 15:28:02', '7f071ecc-7923-4fe5-bd3b-07b27e6d576c'),
(478, 478, 1, NULL, NULL, 1, '2022-07-14 15:28:02', '2022-07-14 15:28:02', '4222645b-54e5-46a3-a381-1c4e0c8eba5f'),
(479, 479, 1, NULL, NULL, 1, '2022-07-14 15:28:02', '2022-07-14 15:28:02', '151e9e55-43b7-4d79-b34d-1f8d954c3ffe'),
(482, 482, 1, 'planner', 'm365/planner', 1, '2022-07-14 15:28:28', '2022-07-14 15:28:28', 'fa9ccf44-bf78-44b0-ae26-6080f588538f'),
(483, 483, 1, NULL, NULL, 1, '2022-07-14 15:28:28', '2022-07-14 15:28:28', 'f7443298-1a72-4efe-bd65-b9343b215ab8'),
(484, 484, 1, NULL, NULL, 1, '2022-07-14 15:28:28', '2022-07-14 15:28:28', '3ae4c526-2094-4bf1-b9b9-e78b0e6f174f'),
(485, 485, 1, NULL, NULL, 1, '2022-07-14 15:28:28', '2022-07-14 15:28:28', 'b1d319be-db91-4ff1-baeb-6f2720218617'),
(486, 486, 1, NULL, NULL, 1, '2022-07-14 15:28:28', '2022-07-14 15:28:28', '23f36b68-c2f3-4eb2-b361-c3eb86c36540'),
(488, 488, 1, 'onedrive', 'm365/onedrive', 1, '2022-07-14 15:28:39', '2022-07-14 15:28:39', 'eb498e8c-3373-43e3-8fb9-0c27bc75989b'),
(489, 489, 1, NULL, NULL, 1, '2022-07-14 15:28:39', '2022-07-14 15:28:39', '0ccb4cb7-7fc5-4812-8fd6-fa2c2806d11c'),
(490, 490, 1, NULL, NULL, 1, '2022-07-14 15:28:39', '2022-07-14 15:28:39', '17b9119e-a778-4ef1-b086-877b1fac524f'),
(491, 491, 1, NULL, NULL, 1, '2022-07-14 15:28:39', '2022-07-14 15:28:39', 'a1dfb074-ed0b-4837-bd40-bc7bbf6ebbd5'),
(492, 492, 1, NULL, NULL, 1, '2022-07-14 15:28:39', '2022-07-14 15:28:39', 'eaa3e66a-c0ec-4ce1-9849-66bfd149cac4'),
(495, 495, 1, 'onenote', 'm365/onenote', 1, '2022-07-14 15:29:14', '2022-07-14 15:29:14', '1aa10999-d8a3-4807-b7eb-1b3f2599345d'),
(496, 496, 1, NULL, NULL, 1, '2022-07-14 15:29:14', '2022-07-14 15:29:14', '5a6b8bf7-1171-48a4-b2a9-2c3520f09d44'),
(497, 497, 1, NULL, NULL, 1, '2022-07-14 15:29:14', '2022-07-14 15:29:14', 'ce96df6b-17c6-48b0-a79a-18e62cb36c71'),
(498, 498, 1, NULL, NULL, 1, '2022-07-14 15:29:14', '2022-07-14 15:29:14', 'ce141b68-08f2-4ef4-8d8c-e2636e16ff2b'),
(499, 499, 1, NULL, NULL, 1, '2022-07-14 15:29:14', '2022-07-14 15:29:14', '7148ef6e-1592-4bf0-b57a-6eb7365a429f'),
(502, 502, 1, 'microsoft-forms', 'm365/microsoft-forms', 1, '2022-07-14 15:29:53', '2022-07-14 15:29:53', '27cc70f7-e602-417f-83ea-f6dfb20a6a65'),
(503, 503, 1, NULL, NULL, 1, '2022-07-14 15:29:53', '2022-07-14 15:29:53', '40ff8324-33fc-415c-81ab-46b2e075195f'),
(504, 504, 1, NULL, NULL, 1, '2022-07-14 15:29:54', '2022-07-14 15:29:54', 'e88cb055-fd9f-4bc4-8d5d-13eedbcde945'),
(505, 505, 1, NULL, NULL, 1, '2022-07-14 15:29:54', '2022-07-14 15:29:54', '7977fe34-4dbe-4abd-99d3-ba3728275012'),
(506, 506, 1, NULL, NULL, 1, '2022-07-14 15:29:54', '2022-07-14 15:29:54', 'f24c999d-1a88-42f2-8918-2bf41b03bf70'),
(508, 508, 1, NULL, NULL, 1, '2022-07-14 15:31:33', '2022-07-14 15:31:33', 'c194ba6d-5442-4d37-9343-e741d6850215'),
(510, 510, 1, 'todo', 'm365/todo', 1, '2022-07-14 15:31:44', '2022-07-14 15:31:44', '01876bb5-e15a-40a7-a286-1e4d47d3aeec'),
(511, 511, 1, NULL, NULL, 1, '2022-07-14 15:31:44', '2022-07-14 15:31:44', '40cb27d7-08a3-48ed-9656-f86d18b24a87'),
(512, 512, 1, NULL, NULL, 1, '2022-07-14 15:31:44', '2022-07-14 15:31:44', '2de50aec-d5b5-45e3-aa7b-09456636cdc9'),
(513, 513, 1, NULL, NULL, 1, '2022-07-14 15:31:44', '2022-07-14 15:31:44', '23199aae-63f3-4055-8b7a-f3fe2c471e8d'),
(514, 514, 1, NULL, NULL, 1, '2022-07-14 15:31:44', '2022-07-14 15:31:44', 'd429f8d8-3924-4298-8558-acd4e3d03f66'),
(516, 516, 1, 'teams-macht-schule', 'm365/teams-macht-schule', 1, '2022-07-14 15:34:09', '2022-07-14 15:34:09', '79242b52-acaf-40ca-9e10-0176b3515e7c'),
(517, 517, 1, NULL, NULL, 1, '2022-07-14 15:34:09', '2022-07-14 15:34:09', '768a6c9b-6cb8-4334-b199-537ca29bf932'),
(518, 518, 1, NULL, NULL, 1, '2022-07-14 15:34:09', '2022-07-14 15:34:09', '7734dc4a-1bb8-46b2-b447-be8af672afb2'),
(519, 519, 1, NULL, NULL, 1, '2022-07-14 15:34:09', '2022-07-14 15:34:09', '8e492e2f-fb6a-4d1c-95a1-3d52ac1ddedb'),
(520, 520, 1, NULL, NULL, 1, '2022-07-14 15:34:09', '2022-07-14 15:34:09', 'ae3f89a9-194f-4c61-9805-c4c85833a464'),
(521, 521, 1, 'microsoft-teams', 'm365/microsoft-teams', 1, '2022-07-14 15:43:34', '2022-07-14 15:44:08', '09fcd8d9-dcaa-456c-9b3d-6e4acb8a60d7'),
(522, 522, 1, NULL, NULL, 1, '2022-07-14 15:43:34', '2022-07-14 15:43:34', '295873ad-d417-4710-aacd-1e91dba5ef1d'),
(523, 523, 1, NULL, NULL, 1, '2022-07-14 15:43:34', '2022-07-14 15:43:34', '22859316-fa66-4edf-8bb7-1003915f68b5'),
(524, 524, 1, NULL, NULL, 1, '2022-07-14 15:43:34', '2022-07-14 15:43:34', 'ce8093f0-f132-4893-a5d9-d19359a47b52'),
(525, 525, 1, NULL, NULL, 1, '2022-07-14 15:43:34', '2022-07-14 15:43:34', '92aa8721-d07f-403d-9ae4-4e356494bdfa'),
(526, 526, 1, 'teams-macht-schule-2', 'm365/teams-macht-schule-2', 1, '2022-07-14 15:43:34', '2022-07-14 15:43:34', '43edd15e-e254-4de1-b56c-31aaa4211792'),
(527, 527, 1, NULL, NULL, 1, '2022-07-14 15:43:34', '2022-07-14 15:43:34', '981d6af4-e163-430b-8a5e-8d8fac7966ec'),
(528, 528, 1, NULL, NULL, 1, '2022-07-14 15:43:34', '2022-07-14 15:43:34', 'c52b42fa-ba0a-4f10-b433-92ecbffb0afd'),
(529, 529, 1, NULL, NULL, 1, '2022-07-14 15:43:34', '2022-07-14 15:43:34', '5e9208cb-efc8-4fe4-b98e-052cf1c6c470'),
(530, 530, 1, NULL, NULL, 1, '2022-07-14 15:43:34', '2022-07-14 15:43:34', '8e7c551a-753a-42e5-8b6b-f5765cb18c58'),
(532, 532, 1, 'microsoft-teams', 'm365/microsoft-teams', 1, '2022-07-14 15:44:08', '2022-07-14 15:44:08', '8bd1f83b-6ad9-45ce-bce9-c7b7333bbba8'),
(533, 533, 1, NULL, NULL, 1, '2022-07-14 15:44:08', '2022-07-14 15:44:08', '8a9f2cb5-c33a-48ee-8f4f-19cca034add1'),
(534, 534, 1, NULL, NULL, 1, '2022-07-14 15:44:08', '2022-07-14 15:44:08', '32abcbf0-c6e1-4cc1-9760-aae89873de24'),
(535, 535, 1, NULL, NULL, 1, '2022-07-14 15:44:08', '2022-07-14 15:44:08', '5db81221-a4f3-4445-a4c4-b966b59e5cd8'),
(536, 536, 1, NULL, NULL, 1, '2022-07-14 15:44:08', '2022-07-14 15:44:08', 'f459cf88-e803-46ee-8fc0-8d80f39b142e'),
(538, 538, 1, NULL, NULL, 1, '2022-07-14 15:54:40', '2022-07-14 15:54:40', '59963405-40dc-47cf-abf4-719b0773b8f7'),
(539, 539, 1, 'first-blog-post', 'blog/first-blog-post', 1, '2022-07-14 15:54:59', '2022-07-14 15:54:59', '550d0c53-e776-4c8a-a08b-5f9e197a4565'),
(541, 541, 1, 'second-blog-post', 'blog/second-blog-post', 1, '2022-07-14 15:55:29', '2022-07-14 15:55:29', '1464feb7-0f04-4995-94d6-0b59078d7bf6'),
(543, 543, 1, NULL, NULL, 1, '2022-07-14 16:20:20', '2022-07-14 16:20:20', '0bf1e3cc-afce-403a-9af6-5ad74d140425'),
(544, 544, 1, 'blog-post', 'blog/blog-post', 1, '2022-07-14 16:20:24', '2022-07-14 16:20:24', 'f61d975a-a823-4a86-9902-adc74de5804f'),
(546, 546, 1, 'job-example', 'karriere/job-example', 1, '2022-07-14 16:20:47', '2022-07-14 16:20:47', '9d7aedd6-75bc-4326-b961-33a75ee27ed9'),
(547, 547, 1, NULL, NULL, 1, '2022-07-14 16:20:47', '2022-07-14 16:20:47', '4709c2ef-a066-47d6-9919-91804967b304'),
(548, 548, 1, NULL, NULL, 1, '2022-07-14 16:20:47', '2022-07-14 16:20:47', 'a043770f-bf21-4745-8931-890c3972a94b'),
(549, 549, 1, NULL, NULL, 1, '2022-07-14 16:20:47', '2022-07-14 16:20:47', '7a54f56d-b53b-454b-a37d-fbf09342b1b4'),
(551, 551, 1, 'job-software', 'karriere/job-software', 1, '2022-07-14 16:21:12', '2022-07-14 16:21:12', 'b6c53f9f-a96e-48dd-b72c-7d56ddc0badd'),
(552, 552, 1, NULL, NULL, 1, '2022-07-14 16:21:12', '2022-07-14 16:21:12', '9d040bbf-7b36-46a9-9d63-5fcfd227a262'),
(553, 553, 1, NULL, NULL, 1, '2022-07-14 16:21:12', '2022-07-14 16:21:12', '19b46905-f132-45e5-9ae1-2bcca5128116'),
(554, 554, 1, NULL, NULL, 1, '2022-07-14 16:21:12', '2022-07-14 16:21:12', 'e1377f7a-255d-432b-97b9-41ea05927a4c'),
(556, 556, 1, 'stories-post-example', 'success-stories/stories-post-example', 1, '2022-07-14 16:22:50', '2022-07-14 16:22:50', '0f518ec1-7d5b-4cdb-b84f-75159457a452'),
(558, 558, 1, 'example-two', 'success-stories/example-two', 1, '2022-07-14 16:23:22', '2022-07-14 16:23:22', 'feb641e0-5be1-4c10-ae9b-843cc39ac7b4'),
(560, 560, 1, 'example-three', 'success-stories/example-three', 1, '2022-07-14 16:23:40', '2022-07-14 16:23:40', 'a14fd00e-4540-4186-8921-3dac31d9a5c0'),
(562, 562, 1, 'stories-post-example', 'success-stories/stories-post-example', 1, '2022-07-14 16:25:28', '2022-07-14 16:25:28', '0ab4676c-7ed7-470f-8004-85bddbaf4c12'),
(564, 564, 1, 'example-two', 'success-stories/example-two', 1, '2022-07-14 16:25:40', '2022-07-14 16:25:40', '9d9fa0a7-4482-4253-8109-b9e05974fd91'),
(566, 566, 1, 'example-three', 'success-stories/example-three', 1, '2022-07-14 16:25:49', '2022-07-14 16:25:49', 'faa32328-f6ec-4c03-8eca-55575cd4a070'),
(567, 567, 1, NULL, NULL, 1, '2022-07-14 16:26:10', '2022-07-14 16:26:10', '6bb45ac8-3fac-45e5-b24b-5ea6fa1d5ad2'),
(569, 569, 1, 'stories-overview', 'success-stories', 1, '2022-07-14 16:26:20', '2022-07-14 16:26:20', 'f1a16ae4-69c0-4925-86cd-649856a96614'),
(571, 571, 1, 'blog-overview', 'blog', 1, '2022-07-14 16:30:11', '2022-07-14 16:30:11', 'dbc63f75-c0d5-4a87-93f8-1a92213a5d5b');

-- --------------------------------------------------------

--
-- Table structure for table `entries`
--

CREATE TABLE `entries` (
  `id` int(11) NOT NULL,
  `sectionId` int(11) NOT NULL,
  `parentId` int(11) DEFAULT NULL,
  `typeId` int(11) NOT NULL,
  `authorId` int(11) DEFAULT NULL,
  `postDate` datetime DEFAULT NULL,
  `expiryDate` datetime DEFAULT NULL,
  `deletedWithEntryType` tinyint(1) DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `entries`
--

INSERT INTO `entries` (`id`, `sectionId`, `parentId`, `typeId`, `authorId`, `postDate`, `expiryDate`, `deletedWithEntryType`, `dateCreated`, `dateUpdated`) VALUES
(2, 1, NULL, 1, NULL, '2022-07-08 13:58:00', NULL, NULL, '2022-07-08 13:58:08', '2022-07-08 13:58:08'),
(3, 1, NULL, 1, NULL, '2022-07-08 13:58:00', NULL, NULL, '2022-07-08 13:58:08', '2022-07-08 13:58:08'),
(4, 1, NULL, 1, NULL, '2022-07-08 13:58:00', NULL, NULL, '2022-07-08 13:58:08', '2022-07-08 13:58:08'),
(5, 3, NULL, 3, NULL, '2022-07-08 15:10:00', NULL, NULL, '2022-07-08 15:10:09', '2022-07-08 15:10:09'),
(6, 3, NULL, 3, NULL, '2022-07-08 15:10:00', NULL, NULL, '2022-07-08 15:10:09', '2022-07-08 15:10:09'),
(7, 3, NULL, 3, NULL, '2022-07-08 15:10:00', NULL, NULL, '2022-07-08 15:10:09', '2022-07-08 15:10:09'),
(8, 3, NULL, 3, NULL, '2022-07-08 15:10:00', NULL, NULL, '2022-07-08 15:10:31', '2022-07-08 15:10:31'),
(9, 3, NULL, 3, NULL, '2022-07-08 15:10:00', NULL, NULL, '2022-07-08 15:10:31', '2022-07-08 15:10:31'),
(10, 5, NULL, 5, NULL, '2022-07-08 15:16:00', NULL, NULL, '2022-07-08 15:16:48', '2022-07-08 15:16:48'),
(11, 5, NULL, 5, NULL, '2022-07-08 15:16:00', NULL, NULL, '2022-07-08 15:16:48', '2022-07-08 15:16:48'),
(12, 5, NULL, 5, NULL, '2022-07-08 15:16:00', NULL, NULL, '2022-07-08 15:16:48', '2022-07-08 15:16:48'),
(13, 7, NULL, 7, NULL, '2022-07-08 15:41:00', NULL, NULL, '2022-07-08 15:41:35', '2022-07-08 15:41:35'),
(14, 7, NULL, 7, NULL, '2022-07-08 15:41:00', NULL, NULL, '2022-07-08 15:41:35', '2022-07-08 15:41:35'),
(15, 7, NULL, 7, NULL, '2022-07-08 15:41:00', NULL, NULL, '2022-07-08 15:41:35', '2022-07-08 15:41:35'),
(16, 7, NULL, 7, NULL, '2022-07-08 15:41:00', NULL, NULL, '2022-07-08 15:43:26', '2022-07-08 15:43:26'),
(17, 7, NULL, 7, NULL, '2022-07-08 15:41:00', NULL, NULL, '2022-07-08 15:43:26', '2022-07-08 15:43:26'),
(18, 7, NULL, 7, NULL, '2022-07-08 15:41:00', NULL, NULL, '2022-07-08 15:43:26', '2022-07-08 15:43:26'),
(19, 9, NULL, 9, NULL, '2022-07-08 15:46:00', NULL, NULL, '2022-07-08 15:46:47', '2022-07-08 15:46:47'),
(20, 9, NULL, 9, NULL, '2022-07-08 15:46:00', NULL, NULL, '2022-07-08 15:46:47', '2022-07-08 15:46:47'),
(21, 9, NULL, 9, NULL, '2022-07-08 15:46:00', NULL, NULL, '2022-07-08 15:46:47', '2022-07-08 15:46:47'),
(22, 10, NULL, 10, 1, '2022-07-09 02:22:00', NULL, NULL, '2022-07-09 02:22:48', '2022-07-09 03:40:56'),
(23, 10, NULL, 10, NULL, '2022-07-09 02:22:00', NULL, NULL, '2022-07-09 02:22:48', '2022-07-09 02:22:48'),
(24, 10, NULL, 10, NULL, '2022-07-09 02:22:00', NULL, NULL, '2022-07-09 02:22:48', '2022-07-09 02:22:48'),
(25, 10, NULL, 10, NULL, '2022-07-09 02:22:00', NULL, NULL, '2022-07-09 02:22:54', '2022-07-09 02:22:54'),
(26, 10, NULL, 10, NULL, '2022-07-09 02:22:00', NULL, NULL, '2022-07-09 02:22:54', '2022-07-09 02:22:54'),
(27, 10, NULL, 10, NULL, '2022-07-09 02:22:00', NULL, NULL, '2022-07-09 03:40:37', '2022-07-09 03:40:37'),
(28, 4, NULL, 4, 1, '2022-07-09 03:51:39', NULL, NULL, '2022-07-09 03:51:39', '2022-07-09 03:51:39'),
(29, 6, NULL, 6, 1, '2022-07-09 03:56:02', NULL, 0, '2022-07-09 03:56:02', '2022-07-09 03:56:02'),
(30, 3, NULL, 3, NULL, '2022-07-08 15:10:00', NULL, NULL, '2022-07-09 04:52:29', '2022-07-09 04:52:29'),
(31, 5, NULL, 5, NULL, '2022-07-08 15:16:00', NULL, NULL, '2022-07-09 04:52:45', '2022-07-09 04:52:45'),
(32, 8, NULL, 8, 1, '2022-07-11 14:10:00', NULL, NULL, '2022-07-09 07:32:45', '2022-07-11 14:10:15'),
(40, 1, NULL, 1, NULL, '2022-07-08 13:58:00', NULL, NULL, '2022-07-09 15:18:14', '2022-07-09 15:18:14'),
(41, 1, NULL, 1, NULL, '2022-07-08 13:58:00', NULL, NULL, '2022-07-09 15:18:14', '2022-07-09 15:18:14'),
(42, 2, NULL, 2, 1, '2022-07-11 12:31:00', NULL, NULL, '2022-07-11 12:31:25', '2022-07-11 12:31:31'),
(44, 2, NULL, 2, 1, '2022-07-11 12:31:00', NULL, NULL, '2022-07-11 12:31:31', '2022-07-11 12:31:31'),
(46, 8, NULL, 8, 1, '2022-07-11 14:10:00', NULL, NULL, '2022-07-11 14:10:15', '2022-07-11 14:10:15'),
(51, 6, NULL, 6, 1, '2022-07-11 16:06:00', NULL, NULL, '2022-07-11 16:06:26', '2022-07-11 16:06:32'),
(52, 6, NULL, 6, 1, '2022-07-11 16:06:00', NULL, NULL, '2022-07-11 16:06:32', '2022-07-11 16:06:32'),
(53, 4, NULL, 4, 1, '2022-07-11 16:13:00', NULL, NULL, '2022-07-11 16:13:48', '2022-07-11 16:13:58'),
(54, 4, NULL, 4, 1, '2022-07-11 16:13:00', NULL, NULL, '2022-07-11 16:13:58', '2022-07-11 16:13:58'),
(57, 4, NULL, 4, 1, '2022-07-11 16:13:00', NULL, NULL, '2022-07-12 16:28:07', '2022-07-12 16:28:07'),
(59, 4, NULL, 4, 1, '2022-07-11 16:13:00', NULL, NULL, '2022-07-12 16:42:54', '2022-07-12 16:42:54'),
(61, 4, NULL, 4, 1, '2022-07-11 16:13:00', NULL, NULL, '2022-07-12 16:43:03', '2022-07-12 16:43:03'),
(64, 4, NULL, 4, 1, '2022-07-11 16:13:00', NULL, NULL, '2022-07-12 16:45:11', '2022-07-12 16:45:11'),
(66, 10, NULL, 10, 1, '2022-07-09 02:22:00', NULL, NULL, '2022-07-12 16:45:31', '2022-07-12 16:45:31'),
(68, 10, NULL, 10, 1, '2022-07-09 02:22:00', NULL, NULL, '2022-07-12 16:45:55', '2022-07-12 16:45:55'),
(75, 6, NULL, 6, 1, '2022-07-11 16:06:00', NULL, NULL, '2022-07-12 16:53:04', '2022-07-12 16:53:04'),
(78, 6, NULL, 6, 1, '2022-07-11 16:06:00', NULL, NULL, '2022-07-12 16:55:56', '2022-07-12 16:55:56'),
(83, 2, NULL, 2, 1, '2022-07-11 12:31:00', NULL, NULL, '2022-07-12 18:04:11', '2022-07-12 18:04:11'),
(121, 2, NULL, 2, 1, '2022-07-11 12:31:00', NULL, NULL, '2022-07-12 18:16:04', '2022-07-12 18:16:04'),
(128, 2, NULL, 2, 1, '2022-07-11 12:31:00', NULL, NULL, '2022-07-12 18:26:12', '2022-07-12 18:26:12'),
(134, 2, NULL, 2, 1, '2022-07-11 12:31:00', NULL, NULL, '2022-07-12 18:33:07', '2022-07-12 18:33:07'),
(139, 2, NULL, 2, 1, '2022-07-11 12:31:00', NULL, NULL, '2022-07-12 18:33:24', '2022-07-12 18:33:24'),
(144, 2, NULL, 2, 1, '2022-07-11 12:31:00', NULL, NULL, '2022-07-12 18:34:53', '2022-07-12 18:34:53'),
(151, 8, NULL, 8, 1, '2022-07-11 14:10:00', NULL, NULL, '2022-07-12 18:39:02', '2022-07-12 18:39:02'),
(157, 8, NULL, 8, 1, '2022-07-11 14:10:00', NULL, NULL, '2022-07-12 18:41:33', '2022-07-12 18:41:33'),
(163, 8, NULL, 8, 1, '2022-07-11 14:10:00', NULL, NULL, '2022-07-12 18:48:25', '2022-07-12 18:48:25'),
(167, 1, NULL, 1, NULL, '2022-07-08 13:58:00', NULL, NULL, '2022-07-13 13:51:04', '2022-07-13 13:51:04'),
(168, 4, NULL, 4, 1, '2022-07-11 16:13:00', NULL, NULL, '2022-07-13 14:07:46', '2022-07-13 14:07:46'),
(169, 4, NULL, 4, 1, '2022-07-11 16:13:00', NULL, NULL, '2022-07-13 14:07:46', '2022-07-13 14:07:46'),
(170, 4, NULL, 4, 1, '2022-07-11 16:13:00', NULL, NULL, '2022-07-13 14:07:48', '2022-07-13 14:07:48'),
(171, 4, NULL, 4, 1, '2022-07-11 16:13:00', NULL, NULL, '2022-07-13 14:07:48', '2022-07-13 14:07:48'),
(175, 3, NULL, 3, NULL, '2022-07-08 15:10:00', NULL, NULL, '2022-07-13 15:58:26', '2022-07-13 15:58:26'),
(179, 8, NULL, 8, 1, '2022-07-11 14:10:00', NULL, NULL, '2022-07-13 16:01:47', '2022-07-13 16:01:47'),
(185, 3, NULL, 3, NULL, '2022-07-08 15:10:00', NULL, NULL, '2022-07-13 16:02:22', '2022-07-13 16:02:22'),
(187, 3, NULL, 3, NULL, '2022-07-08 15:10:00', NULL, NULL, '2022-07-13 16:03:02', '2022-07-13 16:03:02'),
(189, 3, NULL, 3, NULL, '2022-07-08 15:10:00', NULL, NULL, '2022-07-13 16:04:57', '2022-07-13 16:04:57'),
(191, 3, NULL, 3, NULL, '2022-07-08 15:10:00', NULL, NULL, '2022-07-13 16:05:11', '2022-07-13 16:05:11'),
(193, 3, NULL, 3, NULL, '2022-07-08 15:10:00', NULL, NULL, '2022-07-13 16:07:48', '2022-07-13 16:07:48'),
(194, 5, NULL, 5, NULL, '2022-07-08 15:16:00', NULL, NULL, '2022-07-13 16:19:37', '2022-07-13 16:19:37'),
(195, 5, NULL, 5, NULL, '2022-07-08 15:16:00', NULL, NULL, '2022-07-13 16:19:57', '2022-07-13 16:19:57'),
(197, 5, NULL, 5, NULL, '2022-07-08 15:16:00', NULL, NULL, '2022-07-13 16:20:08', '2022-07-13 16:20:08'),
(198, 6, NULL, 6, 1, '2022-07-11 16:06:00', NULL, NULL, '2022-07-13 16:24:49', '2022-07-13 16:24:49'),
(199, 6, NULL, 6, 1, '2022-07-11 16:06:00', NULL, NULL, '2022-07-13 16:24:49', '2022-07-13 16:24:49'),
(200, 6, NULL, 6, 1, '2022-07-11 16:06:00', NULL, NULL, '2022-07-13 16:24:51', '2022-07-13 16:24:51'),
(201, 6, NULL, 6, 1, '2022-07-11 16:06:00', NULL, NULL, '2022-07-13 16:24:51', '2022-07-13 16:24:51'),
(203, 6, NULL, 6, 1, '2022-07-11 16:06:00', NULL, NULL, '2022-07-13 16:25:37', '2022-07-13 16:25:37'),
(205, 6, NULL, 6, 1, '2022-07-11 16:06:00', NULL, NULL, '2022-07-13 16:25:43', '2022-07-13 16:25:43'),
(207, 6, NULL, 6, 1, '2022-07-11 16:06:00', NULL, NULL, '2022-07-13 16:25:49', '2022-07-13 16:25:49'),
(208, 7, NULL, 7, NULL, '2022-07-08 15:41:00', NULL, NULL, '2022-07-13 16:28:41', '2022-07-13 16:28:41'),
(209, 7, NULL, 7, NULL, '2022-07-08 15:41:00', NULL, NULL, '2022-07-13 16:28:41', '2022-07-13 16:28:41'),
(210, 8, NULL, 8, 1, '2022-07-11 14:10:00', NULL, NULL, '2022-07-13 17:17:49', '2022-07-13 17:17:49'),
(214, 8, NULL, 8, 1, '2022-07-11 14:10:00', NULL, NULL, '2022-07-13 17:17:49', '2022-07-13 17:17:49'),
(218, 9, NULL, 9, NULL, '2022-07-08 15:46:00', NULL, NULL, '2022-07-13 18:26:41', '2022-07-13 18:26:41'),
(219, 9, NULL, 9, NULL, '2022-07-08 15:46:00', NULL, NULL, '2022-07-13 18:26:41', '2022-07-13 18:26:41'),
(220, 11, NULL, 11, NULL, '2022-07-13 18:27:00', NULL, 1, '2022-07-13 18:27:58', '2022-07-13 18:27:58'),
(221, 11, NULL, 11, NULL, '2022-07-13 18:27:00', NULL, NULL, '2022-07-13 18:27:58', '2022-07-13 18:27:58'),
(222, 11, NULL, 11, NULL, '2022-07-13 18:27:00', NULL, NULL, '2022-07-13 18:27:58', '2022-07-13 18:27:58'),
(223, 9, NULL, 9, NULL, '2022-07-08 15:46:00', NULL, NULL, '2022-07-13 18:32:11', '2022-07-13 18:32:11'),
(224, 2, NULL, 2, 1, '2022-07-11 12:31:00', NULL, NULL, '2022-07-13 19:12:41', '2022-07-13 19:12:41'),
(229, 2, NULL, 2, 1, '2022-07-11 12:31:00', NULL, NULL, '2022-07-13 19:12:41', '2022-07-13 19:12:41'),
(234, 2, NULL, 2, 1, '2022-07-11 12:31:00', NULL, NULL, '2022-07-13 19:12:43', '2022-07-13 19:12:43'),
(239, 2, NULL, 2, 1, '2022-07-11 12:31:00', NULL, NULL, '2022-07-13 19:12:43', '2022-07-13 19:12:43'),
(244, 2, NULL, 2, 1, '2022-07-11 12:31:00', NULL, NULL, '2022-07-13 19:12:45', '2022-07-13 19:12:45'),
(249, 2, NULL, 2, 1, '2022-07-11 12:31:00', NULL, NULL, '2022-07-13 19:12:45', '2022-07-13 19:12:45'),
(254, 2, NULL, 2, 1, '2022-07-11 12:31:00', NULL, 0, '2022-07-13 19:12:46', '2022-07-13 19:12:46'),
(259, 2, NULL, 2, 1, '2022-07-11 12:31:00', NULL, NULL, '2022-07-13 19:12:46', '2022-07-13 19:12:46'),
(264, 2, NULL, 2, 1, '2022-07-11 12:31:00', NULL, 0, '2022-07-13 19:12:48', '2022-07-13 19:12:48'),
(269, 2, NULL, 2, 1, '2022-07-11 12:31:00', NULL, NULL, '2022-07-13 19:12:48', '2022-07-13 19:12:48'),
(274, 2, NULL, 2, 1, '2022-07-11 12:31:00', NULL, 0, '2022-07-13 19:12:50', '2022-07-13 19:12:50'),
(279, 2, NULL, 2, 1, '2022-07-11 12:31:00', NULL, NULL, '2022-07-13 19:12:50', '2022-07-13 19:12:50'),
(284, 2, NULL, 2, 1, '2022-07-11 12:31:00', NULL, 0, '2022-07-13 19:12:51', '2022-07-13 19:12:51'),
(289, 2, NULL, 2, 1, '2022-07-11 12:31:00', NULL, NULL, '2022-07-13 19:12:51', '2022-07-13 19:12:51'),
(294, 2, NULL, 2, 1, '2022-07-11 12:31:00', NULL, 0, '2022-07-13 19:12:53', '2022-07-13 19:12:53'),
(299, 2, NULL, 2, 1, '2022-07-11 12:31:00', NULL, NULL, '2022-07-13 19:12:53', '2022-07-13 19:12:53'),
(304, 12, NULL, 12, NULL, '2022-07-14 13:23:00', NULL, NULL, '2022-07-14 13:23:16', '2022-07-14 13:23:16'),
(305, 12, NULL, 12, NULL, '2022-07-14 13:23:00', NULL, NULL, '2022-07-14 13:23:16', '2022-07-14 13:23:16'),
(306, 12, NULL, 12, NULL, '2022-07-14 13:23:00', NULL, NULL, '2022-07-14 13:23:16', '2022-07-14 13:23:16'),
(307, 12, NULL, 12, NULL, '2022-07-14 13:23:00', NULL, NULL, '2022-07-14 13:23:46', '2022-07-14 13:23:46'),
(308, 13, NULL, 13, NULL, '2022-07-14 13:24:00', NULL, NULL, '2022-07-14 13:24:27', '2022-07-14 13:24:27'),
(309, 13, NULL, 13, NULL, '2022-07-14 13:24:00', NULL, NULL, '2022-07-14 13:24:27', '2022-07-14 13:24:27'),
(310, 13, NULL, 13, NULL, '2022-07-14 13:24:00', NULL, NULL, '2022-07-14 13:24:27', '2022-07-14 13:24:27'),
(311, 13, NULL, 13, NULL, '2022-07-14 13:24:00', NULL, NULL, '2022-07-14 13:24:57', '2022-07-14 13:24:57'),
(313, 2, NULL, 2, 1, '2022-07-11 12:31:00', NULL, NULL, '2022-07-14 13:25:26', '2022-07-14 13:25:26'),
(318, 14, NULL, 14, NULL, '2022-07-14 13:27:00', NULL, NULL, '2022-07-14 13:27:42', '2022-07-14 13:27:42'),
(319, 14, NULL, 14, NULL, '2022-07-14 13:27:00', NULL, NULL, '2022-07-14 13:27:42', '2022-07-14 13:27:42'),
(320, 14, NULL, 14, NULL, '2022-07-14 13:27:00', NULL, NULL, '2022-07-14 13:27:42', '2022-07-14 13:27:42'),
(321, 14, NULL, 14, NULL, '2022-07-14 13:27:00', NULL, NULL, '2022-07-14 13:27:54', '2022-07-14 13:27:54'),
(322, 15, NULL, 15, NULL, '2022-07-14 13:57:00', NULL, NULL, '2022-07-14 13:57:13', '2022-07-14 13:57:13'),
(323, 15, NULL, 15, NULL, '2022-07-14 13:57:00', NULL, NULL, '2022-07-14 13:57:13', '2022-07-14 13:57:13'),
(324, 15, NULL, 15, NULL, '2022-07-14 13:57:00', NULL, NULL, '2022-07-14 13:57:13', '2022-07-14 13:57:13'),
(325, 15, NULL, 15, NULL, '2022-07-14 13:57:00', NULL, NULL, '2022-07-14 13:57:39', '2022-07-14 13:57:39'),
(326, 12, NULL, 12, NULL, '2022-07-14 13:23:00', NULL, NULL, '2022-07-14 14:04:46', '2022-07-14 14:04:46'),
(327, 12, NULL, 12, NULL, '2022-07-14 13:23:00', NULL, NULL, '2022-07-14 14:04:46', '2022-07-14 14:04:46'),
(346, 15, NULL, 15, NULL, '2022-07-14 13:57:00', NULL, NULL, '2022-07-14 14:12:13', '2022-07-14 14:12:13'),
(352, 2, NULL, 2, 1, '2022-07-11 12:31:00', NULL, NULL, '2022-07-14 14:36:18', '2022-07-14 14:36:18'),
(358, 2, NULL, 2, 1, '2022-07-11 12:31:00', NULL, NULL, '2022-07-14 14:43:20', '2022-07-14 14:43:20'),
(364, 2, NULL, 2, 1, '2022-07-11 12:31:00', NULL, NULL, '2022-07-14 14:49:12', '2022-07-14 14:49:12'),
(369, 16, NULL, 16, NULL, '2022-07-14 14:56:00', NULL, NULL, '2022-07-14 14:56:15', '2022-07-14 14:56:15'),
(370, 16, NULL, 16, NULL, '2022-07-14 14:56:00', NULL, NULL, '2022-07-14 14:56:15', '2022-07-14 14:56:15'),
(371, 16, NULL, 16, NULL, '2022-07-14 14:56:00', NULL, NULL, '2022-07-14 14:56:15', '2022-07-14 14:56:15'),
(372, 16, NULL, 16, NULL, '2022-07-14 14:56:00', NULL, NULL, '2022-07-14 14:56:40', '2022-07-14 14:56:40'),
(373, 7, NULL, 7, NULL, '2022-07-08 15:41:00', NULL, NULL, '2022-07-14 14:57:11', '2022-07-14 14:57:11'),
(374, 9, NULL, 9, NULL, '2022-07-08 15:46:00', NULL, NULL, '2022-07-14 14:57:26', '2022-07-14 14:57:26'),
(377, 2, NULL, 2, 1, '2022-07-11 12:31:00', NULL, NULL, '2022-07-14 15:22:32', '2022-07-14 15:22:32'),
(392, 2, NULL, 2, 1, '2022-07-11 12:31:00', NULL, NULL, '2022-07-14 15:24:15', '2022-07-14 15:24:15'),
(399, 2, NULL, 2, 1, '2022-07-11 12:31:00', NULL, NULL, '2022-07-14 15:25:06', '2022-07-14 15:25:06'),
(406, 2, NULL, 2, 1, '2022-07-11 12:31:00', NULL, NULL, '2022-07-14 15:26:05', '2022-07-14 15:26:05'),
(411, 2, NULL, 2, 1, NULL, NULL, NULL, '2022-07-14 15:26:05', '2022-07-14 15:26:05'),
(417, 2, NULL, 2, 1, '2022-07-11 12:31:00', NULL, NULL, '2022-07-14 15:27:00', '2022-07-14 15:27:00'),
(422, 2, NULL, 2, 1, '2022-07-11 12:31:00', NULL, NULL, '2022-07-14 15:27:00', '2022-07-14 15:27:00'),
(427, 2, NULL, 2, 1, '2022-07-11 12:31:00', NULL, NULL, '2022-07-14 15:27:03', '2022-07-14 15:27:03'),
(432, 2, NULL, 2, 1, '2022-07-11 12:31:00', NULL, NULL, '2022-07-14 15:27:03', '2022-07-14 15:27:03'),
(437, 2, NULL, 2, 1, '2022-07-11 12:31:00', NULL, NULL, '2022-07-14 15:27:05', '2022-07-14 15:27:05'),
(442, 2, NULL, 2, 1, '2022-07-11 12:31:00', NULL, NULL, '2022-07-14 15:27:05', '2022-07-14 15:27:05'),
(447, 2, NULL, 2, 1, '2022-07-11 12:31:00', NULL, NULL, '2022-07-14 15:27:07', '2022-07-14 15:27:07'),
(452, 2, NULL, 2, 1, '2022-07-11 12:31:00', NULL, NULL, '2022-07-14 15:27:07', '2022-07-14 15:27:07'),
(457, 2, NULL, 2, 1, '2022-07-11 12:31:00', NULL, NULL, '2022-07-14 15:27:10', '2022-07-14 15:27:10'),
(462, 2, NULL, 2, 1, '2022-07-11 12:31:00', NULL, NULL, '2022-07-14 15:27:10', '2022-07-14 15:27:10'),
(468, 2, NULL, 2, 1, '2022-07-11 12:31:00', NULL, NULL, '2022-07-14 15:27:27', '2022-07-14 15:27:27'),
(475, 2, NULL, 2, 1, '2022-07-11 12:31:00', NULL, NULL, '2022-07-14 15:28:02', '2022-07-14 15:28:02'),
(482, 2, NULL, 2, 1, '2022-07-11 12:31:00', NULL, NULL, '2022-07-14 15:28:28', '2022-07-14 15:28:28'),
(488, 2, NULL, 2, 1, '2022-07-11 12:31:00', NULL, NULL, '2022-07-14 15:28:39', '2022-07-14 15:28:39'),
(495, 2, NULL, 2, 1, '2022-07-11 12:31:00', NULL, NULL, '2022-07-14 15:29:14', '2022-07-14 15:29:14'),
(502, 2, NULL, 2, 1, '2022-07-11 12:31:00', NULL, NULL, '2022-07-14 15:29:53', '2022-07-14 15:29:53'),
(510, 2, NULL, 2, 1, '2022-07-11 12:31:00', NULL, NULL, '2022-07-14 15:31:44', '2022-07-14 15:31:44'),
(516, 2, NULL, 2, 1, '2022-07-11 12:31:00', NULL, NULL, '2022-07-14 15:34:09', '2022-07-14 15:34:09'),
(521, 2, NULL, 2, 1, '2022-07-11 12:31:00', NULL, NULL, '2022-07-14 15:43:34', '2022-07-14 15:43:34'),
(526, 2, NULL, 2, 1, '2022-07-11 12:31:00', NULL, NULL, '2022-07-14 15:43:34', '2022-07-14 15:43:34'),
(532, 2, NULL, 2, 1, '2022-07-11 12:31:00', NULL, NULL, '2022-07-14 15:44:08', '2022-07-14 15:44:08'),
(539, 4, NULL, 4, 1, '2022-07-11 16:13:00', NULL, NULL, '2022-07-14 15:54:59', '2022-07-14 15:54:59'),
(541, 4, NULL, 4, 1, '2022-07-11 16:13:00', NULL, NULL, '2022-07-14 15:55:29', '2022-07-14 15:55:29'),
(544, 4, NULL, 4, 1, '2022-07-11 16:13:00', NULL, NULL, '2022-07-14 16:20:24', '2022-07-14 16:20:24'),
(546, 8, NULL, 8, 1, '2022-07-11 14:10:00', NULL, NULL, '2022-07-14 16:20:47', '2022-07-14 16:20:47'),
(551, 8, NULL, 8, 1, '2022-07-11 14:10:00', NULL, NULL, '2022-07-14 16:21:12', '2022-07-14 16:21:12'),
(556, 6, NULL, 6, 1, '2022-07-11 16:06:00', NULL, NULL, '2022-07-14 16:22:50', '2022-07-14 16:22:50'),
(558, 6, NULL, 6, 1, '2022-07-11 16:06:00', NULL, NULL, '2022-07-14 16:23:22', '2022-07-14 16:23:22'),
(560, 6, NULL, 6, 1, '2022-07-11 16:06:00', NULL, NULL, '2022-07-14 16:23:40', '2022-07-14 16:23:40'),
(562, 6, NULL, 6, 1, '2022-07-11 16:06:00', NULL, NULL, '2022-07-14 16:25:28', '2022-07-14 16:25:28'),
(564, 6, NULL, 6, 1, '2022-07-11 16:06:00', NULL, NULL, '2022-07-14 16:25:40', '2022-07-14 16:25:40'),
(566, 6, NULL, 6, 1, '2022-07-11 16:06:00', NULL, NULL, '2022-07-14 16:25:49', '2022-07-14 16:25:49'),
(569, 5, NULL, 5, NULL, '2022-07-08 15:16:00', NULL, NULL, '2022-07-14 16:26:20', '2022-07-14 16:26:20'),
(571, 3, NULL, 3, NULL, '2022-07-08 15:10:00', NULL, NULL, '2022-07-14 16:30:11', '2022-07-14 16:30:11');

-- --------------------------------------------------------

--
-- Table structure for table `entrytypes`
--

CREATE TABLE `entrytypes` (
  `id` int(11) NOT NULL,
  `sectionId` int(11) NOT NULL,
  `fieldLayoutId` int(11) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `handle` varchar(255) NOT NULL,
  `hasTitleField` tinyint(1) NOT NULL DEFAULT 1,
  `titleTranslationMethod` varchar(255) NOT NULL DEFAULT 'site',
  `titleTranslationKeyFormat` text DEFAULT NULL,
  `titleFormat` varchar(255) DEFAULT NULL,
  `sortOrder` smallint(6) UNSIGNED DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `dateDeleted` datetime DEFAULT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `entrytypes`
--

INSERT INTO `entrytypes` (`id`, `sectionId`, `fieldLayoutId`, `name`, `handle`, `hasTitleField`, `titleTranslationMethod`, `titleTranslationKeyFormat`, `titleFormat`, `sortOrder`, `dateCreated`, `dateUpdated`, `dateDeleted`, `uid`) VALUES
(1, 1, 1, 'Home', 'home', 0, 'site', NULL, '{section.name|raw}', 1, '2022-07-08 13:58:08', '2022-07-08 13:58:08', NULL, '299609db-9eef-4aff-bcd8-5a92efda1dbb'),
(2, 2, 2, 'Software', 'software', 1, 'site', NULL, NULL, 1, '2022-07-08 15:09:08', '2022-07-08 15:09:24', NULL, '0d358e98-2829-44be-a4f1-978b41d2f0aa'),
(3, 3, 3, 'Blog Overview', 'blogOverview', 1, 'site', NULL, '{section.name|raw}', 1, '2022-07-08 15:10:09', '2022-07-13 16:03:02', NULL, 'ebe57e47-0c3e-420b-a5f2-f74dca7bb6ed'),
(4, 4, 4, 'Blog Post', 'blogPost', 1, 'site', NULL, NULL, 1, '2022-07-08 15:11:40', '2022-07-08 15:11:55', NULL, '69d2ba66-2d6a-48f3-b8cc-0850d42e2c18'),
(5, 5, 5, 'Stories Overview', 'storiesOverview', 1, 'site', NULL, '{section.name|raw}', 1, '2022-07-08 15:16:48', '2022-07-13 16:19:57', NULL, '59f2d7a3-cddc-441d-b150-0e18e523e267'),
(6, 6, 6, 'Stories Post', 'storiesPost', 1, 'site', NULL, NULL, 1, '2022-07-08 15:17:35', '2022-07-08 15:17:54', NULL, '3da196e2-18bf-4d1d-b323-c31fe0330c82'),
(7, 7, 7, 'Karriere Overview', 'karriereOverview', 0, 'site', NULL, '{section.name|raw}', 1, '2022-07-08 15:41:35', '2022-07-08 15:43:26', NULL, 'f0c8f2e7-dfeb-4a2b-a663-c1f3742952c4'),
(8, 8, 8, 'Karriere Post', 'karrierePost', 1, 'site', NULL, NULL, 1, '2022-07-08 15:42:40', '2022-07-08 15:42:56', NULL, '47ef9959-a528-4bd5-bd2d-c068e5248ae7'),
(9, 9, 9, 'Software Overview', 'softwareOverview', 0, 'site', NULL, '{section.name|raw}', 1, '2022-07-08 15:46:46', '2022-07-08 15:46:46', NULL, 'e2192567-c6db-4e5b-99f3-be24ed73f518'),
(10, 10, 10, 'Author', 'author', 0, 'site', NULL, '{section.name|raw}', 1, '2022-07-09 02:22:47', '2022-07-09 02:22:47', NULL, '604b0d19-51d0-48c3-b47a-2229a9ed23ac'),
(11, 11, 21, 'Microsoft Teams', 'microsoftTeams', 0, 'site', NULL, '{section.name|raw}', 1, '2022-07-13 18:27:58', '2022-07-13 18:27:58', '2022-07-13 18:29:08', '117162ed-6fd5-4463-9836-d81817400882'),
(12, 12, 22, 'Support', 'support', 0, 'site', NULL, '{section.name|raw}', 1, '2022-07-14 13:23:16', '2022-07-14 13:23:16', NULL, 'e495b10a-245e-4b45-8085-f55ca3e033e5'),
(13, 13, 23, 'Contact', 'contact', 0, 'site', NULL, '{section.name|raw}', 1, '2022-07-14 13:24:27', '2022-07-14 13:24:27', NULL, '62f883e4-2069-4014-a684-6dffb7e09607'),
(14, 14, 24, 'Beratung', 'beratung', 0, 'site', NULL, '{section.name|raw}', 1, '2022-07-14 13:27:42', '2022-07-14 13:27:42', NULL, '701103d9-8214-446d-83e8-9db864a6a593'),
(15, 15, 25, 'Impressum & Datenschutz', 'impressumDatenschutz', 0, 'site', NULL, '{section.name|raw}', 1, '2022-07-14 13:57:13', '2022-07-14 13:57:13', NULL, 'a242b979-f049-4865-9696-fb87e39d1a0c'),
(16, 16, 26, 'Modern Workplace', 'modernWorkplace', 0, 'site', NULL, '{section.name|raw}', 1, '2022-07-14 14:56:15', '2022-07-14 14:56:15', NULL, '36e73792-074d-4ef8-ab4e-a2efc6ad90d4');

-- --------------------------------------------------------

--
-- Table structure for table `fieldgroups`
--

CREATE TABLE `fieldgroups` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `dateDeleted` datetime DEFAULT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `fieldgroups`
--

INSERT INTO `fieldgroups` (`id`, `name`, `dateCreated`, `dateUpdated`, `dateDeleted`, `uid`) VALUES
(1, 'Common', '2022-07-08 13:30:51', '2022-07-08 13:30:51', NULL, 'dd2cab1f-d433-4267-bf6a-52fbb391b10f'),
(2, 'Author', '2022-07-09 03:38:50', '2022-07-09 03:38:50', NULL, '72e1ba88-7b1d-4682-804e-9e8fd8099292'),
(3, 'Job', '2022-07-09 04:36:50', '2022-07-09 04:36:50', NULL, '68486210-b568-4359-8c37-732c21e7518c');

-- --------------------------------------------------------

--
-- Table structure for table `fieldlayoutfields`
--

CREATE TABLE `fieldlayoutfields` (
  `id` int(11) NOT NULL,
  `layoutId` int(11) NOT NULL,
  `tabId` int(11) NOT NULL,
  `fieldId` int(11) NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT 0,
  `sortOrder` smallint(6) UNSIGNED DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `fieldlayoutfields`
--

INSERT INTO `fieldlayoutfields` (`id`, `layoutId`, `tabId`, `fieldId`, `required`, `sortOrder`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(8, 4, 20, 7, 1, 1, '2022-07-09 03:52:26', '2022-07-09 03:52:26', '9cdd8585-5fb4-4d47-a5aa-2dc39ac52ab2'),
(9, 4, 20, 8, 0, 2, '2022-07-09 03:52:26', '2022-07-09 03:52:26', 'eca1406b-db9d-40d9-b634-62d55492bd20'),
(10, 4, 20, 1, 0, 3, '2022-07-09 03:52:26', '2022-07-09 03:52:26', 'c0c55f1f-f6e3-4df3-8385-74be075f1916'),
(11, 4, 20, 3, 0, 4, '2022-07-09 03:52:26', '2022-07-09 03:52:26', '5d720d18-0bbc-4843-b071-c22bd5431fd3'),
(12, 4, 20, 4, 0, 6, '2022-07-09 03:52:26', '2022-07-09 03:52:26', 'bfbd42eb-ed5e-4a7a-bda6-3efa870d8e38'),
(13, 6, 22, 9, 0, 1, '2022-07-09 03:55:55', '2022-07-09 03:55:55', '55dc9e80-794a-40a3-bc65-f8961eec42eb'),
(14, 6, 22, 3, 0, 2, '2022-07-09 03:55:55', '2022-07-09 03:55:55', 'b296fae6-dcec-4865-bb01-99c2d65f90fe'),
(15, 6, 22, 1, 0, 3, '2022-07-09 03:55:55', '2022-07-09 03:55:55', '32ea002a-88d0-45b4-b144-48f2bc60ca8c'),
(16, 6, 22, 2, 0, 4, '2022-07-09 03:55:55', '2022-07-09 03:55:55', '2e2b9568-d2bf-400e-b41b-41f974289c81'),
(17, 6, 22, 4, 0, 6, '2022-07-09 03:55:55', '2022-07-09 03:55:55', 'a76989a5-919a-41d0-ad3a-f39f357bdeb9'),
(18, 14, 23, 11, 0, 0, '2022-07-09 04:38:24', '2022-07-09 04:38:24', 'bf40903d-0079-414d-bbc7-c31afaf23ae3'),
(19, 14, 23, 12, 0, 1, '2022-07-09 04:38:24', '2022-07-09 04:38:24', '58568caa-0665-4a66-9cfe-28ff78c9a86c'),
(50, 19, 36, 29, 0, 0, '2022-07-09 07:35:10', '2022-07-09 07:35:10', '33f32691-ac4e-46da-8973-a8065e28e7cb'),
(51, 19, 36, 30, 0, 1, '2022-07-09 07:35:10', '2022-07-09 07:35:10', 'e0522fa8-a7c4-47ba-a649-f57c40fe9087'),
(68, 10, 42, 5, 1, 1, '2022-07-12 16:45:42', '2022-07-12 16:45:42', 'af3fe502-a1be-4db8-bdf5-0c6faeefaba2'),
(69, 10, 42, 6, 0, 2, '2022-07-12 16:45:42', '2022-07-12 16:45:42', '2ef7a6a3-8643-4ba4-8fcd-2565e809cfca'),
(87, 2, 52, 3, 0, 1, '2022-07-12 18:23:49', '2022-07-12 18:23:49', '344d30ba-786e-458a-a4b4-c78556366f33'),
(88, 2, 52, 21, 0, 2, '2022-07-12 18:23:49', '2022-07-12 18:23:49', '11e348be-5008-474d-a658-ffd0c3b2ea7f'),
(89, 2, 53, 33, 0, 0, '2022-07-12 18:23:49', '2022-07-12 18:23:49', 'ea950b1f-20d8-4788-923d-845739ff901e'),
(90, 2, 53, 10, 0, 2, '2022-07-12 18:23:49', '2022-07-12 18:23:49', 'dac9e9de-8ac8-4e56-8f2e-36b8681a34c5'),
(94, 15, 56, 15, 0, 0, '2022-07-12 18:40:02', '2022-07-12 18:40:02', '0e186fb8-6dcf-419d-93d3-d6f191889b5c'),
(95, 15, 56, 16, 0, 1, '2022-07-12 18:40:02', '2022-07-12 18:40:02', 'f49efe74-acdf-4492-8610-b5a5b9ad2865'),
(96, 15, 56, 14, 0, 2, '2022-07-12 18:40:02', '2022-07-12 18:40:02', 'e51d3606-d3c4-4451-bf85-97c3204f6555'),
(97, 15, 56, 17, 0, 3, '2022-07-12 18:40:02', '2022-07-12 18:40:02', 'faa23b70-b729-45bc-8edd-bfe20f86d228'),
(98, 15, 56, 28, 0, 4, '2022-07-12 18:40:02', '2022-07-12 18:40:02', 'efb274fa-3fc3-42a7-9341-fad1ad99cefc'),
(99, 8, 57, 2, 0, 1, '2022-07-12 18:41:21', '2022-07-12 18:41:21', '57c7b230-0f51-4fa4-87fb-79f7b5c91faf'),
(100, 8, 57, 13, 0, 2, '2022-07-12 18:41:21', '2022-07-12 18:41:21', 'dbe38954-22a1-4a7e-a7a0-d5e049810591'),
(101, 8, 58, 33, 0, 0, '2022-07-12 18:41:21', '2022-07-12 18:41:21', 'c2a9139d-a294-4e69-874f-bff88cb72da3'),
(102, 8, 58, 10, 0, 2, '2022-07-12 18:41:21', '2022-07-12 18:41:21', 'f3c2fea2-2723-4703-9a1b-ecfabeecb092'),
(103, 1, 59, 3, 0, 1, '2022-07-13 13:51:04', '2022-07-13 13:51:04', '9faaba41-053f-4ee6-b755-bb6a8e9c2105'),
(104, 1, 59, 1, 0, 2, '2022-07-13 13:51:04', '2022-07-13 13:51:04', '612fa4a6-3e8c-425b-a428-01a078ec74e1'),
(105, 1, 59, 2, 0, 3, '2022-07-13 13:51:04', '2022-07-13 13:51:04', '9888cf82-1954-480c-b4d1-a5cc4762eede'),
(109, 17, 61, 23, 0, 0, '2022-07-13 15:57:46', '2022-07-13 15:57:46', 'cc577922-26dd-40b7-be94-aca36419f1d7'),
(110, 17, 61, 25, 0, 1, '2022-07-13 15:57:46', '2022-07-13 15:57:46', '232d1971-cd4d-420f-ad2c-782859fd7ab8'),
(111, 17, 61, 22, 0, 2, '2022-07-13 15:57:46', '2022-07-13 15:57:46', '30c9b510-0d85-47ee-a5e1-fa32bd478019'),
(113, 3, 63, 1, 0, 1, '2022-07-13 16:04:57', '2022-07-13 16:04:57', 'acd9b822-6965-4074-bfb8-670092ad6095'),
(114, 3, 63, 2, 0, 2, '2022-07-13 16:04:57', '2022-07-13 16:04:57', '72ac0eee-d1f9-4019-ab2a-92d380165c98'),
(115, 3, 63, 33, 0, 3, '2022-07-13 16:04:57', '2022-07-13 16:04:57', '09b31fc7-4082-4d2e-b157-9d820846f686'),
(116, 3, 63, 3, 0, 4, '2022-07-13 16:04:57', '2022-07-13 16:04:57', '5bd1380f-e495-4c73-9eeb-6f9031024ef5'),
(121, 5, 65, 1, 0, 1, '2022-07-13 16:19:57', '2022-07-13 16:19:57', 'acb799fa-35f0-478c-a14a-e619b2a8bfdc'),
(122, 5, 65, 2, 0, 2, '2022-07-13 16:19:57', '2022-07-13 16:19:57', '1b3ebcfc-18ea-4a72-8918-fd03365d9e7a'),
(123, 5, 65, 33, 0, 3, '2022-07-13 16:19:57', '2022-07-13 16:19:57', '1cb2a8a1-0c1e-48a6-9a2b-34e04f506ad1'),
(124, 5, 65, 3, 0, 4, '2022-07-13 16:19:57', '2022-07-13 16:19:57', '27bc082e-7306-4421-a4b0-34cf9586d677'),
(125, 22, 68, 1, 0, 1, '2022-07-14 13:23:45', '2022-07-14 13:23:45', '527f0df4-3ba5-422b-a70a-eddc03af62df'),
(126, 22, 68, 2, 0, 2, '2022-07-14 13:23:45', '2022-07-14 13:23:45', 'e68ae660-fb6c-454f-9285-63129c11c0b7'),
(127, 23, 70, 1, 0, 1, '2022-07-14 13:24:56', '2022-07-14 13:24:56', 'd2185713-a884-4b17-ba24-30f553003209'),
(128, 23, 70, 2, 0, 2, '2022-07-14 13:24:56', '2022-07-14 13:24:56', 'c954e736-aef3-400e-b2c2-f2cdad905d45'),
(129, 24, 72, 1, 0, 1, '2022-07-14 13:27:54', '2022-07-14 13:27:54', 'b19498d8-462f-4d2a-bd58-0aaeec929b66'),
(130, 24, 72, 2, 0, 2, '2022-07-14 13:27:54', '2022-07-14 13:27:54', 'f67f3d15-b93f-4e17-8171-8efbefcf9f10'),
(131, 25, 74, 1, 0, 1, '2022-07-14 13:57:39', '2022-07-14 13:57:39', 'ec10b4cf-473b-4dab-9ddc-abfb394fbcb5'),
(132, 25, 74, 2, 0, 2, '2022-07-14 13:57:39', '2022-07-14 13:57:39', '1505a53f-28a6-4e96-8540-87bb96dd10d4'),
(133, 25, 74, 10, 0, 3, '2022-07-14 13:57:39', '2022-07-14 13:57:39', '5f0ce775-7e25-43bd-88b5-acaf23835012'),
(134, 26, 76, 1, 0, 1, '2022-07-14 14:56:40', '2022-07-14 14:56:40', 'd2859342-e7cd-4659-aa1e-b5b07c54443e'),
(135, 26, 76, 2, 0, 2, '2022-07-14 14:56:40', '2022-07-14 14:56:40', 'a3c7b2b0-e2f7-49fc-849f-a1374aff5654'),
(136, 7, 77, 1, 0, 1, '2022-07-14 14:57:11', '2022-07-14 14:57:11', '6262ac24-895c-44d6-aa60-81347cd83482'),
(137, 7, 77, 2, 0, 2, '2022-07-14 14:57:11', '2022-07-14 14:57:11', '0d78257f-8163-40a0-b770-57bf101abd21'),
(138, 9, 78, 1, 0, 1, '2022-07-14 14:57:26', '2022-07-14 14:57:26', 'c97c679e-5810-46bc-84cb-4b744b34dc15'),
(139, 9, 78, 4, 0, 2, '2022-07-14 14:57:26', '2022-07-14 14:57:26', '3431ce35-68e0-4612-a550-5fd3d4b597d6');

-- --------------------------------------------------------

--
-- Table structure for table `fieldlayouts`
--

CREATE TABLE `fieldlayouts` (
  `id` int(11) NOT NULL,
  `type` varchar(255) NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `dateDeleted` datetime DEFAULT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `fieldlayouts`
--

INSERT INTO `fieldlayouts` (`id`, `type`, `dateCreated`, `dateUpdated`, `dateDeleted`, `uid`) VALUES
(1, 'craft\\elements\\Entry', '2022-07-08 13:58:08', '2022-07-08 13:58:08', NULL, '460156a6-ff26-4598-be21-3936885d86cb'),
(2, 'craft\\elements\\Entry', '2022-07-08 15:09:08', '2022-07-08 15:09:08', NULL, 'fa25e6a9-c0b0-4e2d-8fe6-bc1592edbd22'),
(3, 'craft\\elements\\Entry', '2022-07-08 15:10:09', '2022-07-08 15:10:09', NULL, '6068c8ca-7bb1-481c-ba93-705ebd72bf7d'),
(4, 'craft\\elements\\Entry', '2022-07-08 15:11:40', '2022-07-08 15:11:40', NULL, '68618d42-f000-4174-a6e4-3c7a57957a71'),
(5, 'craft\\elements\\Entry', '2022-07-08 15:16:48', '2022-07-08 15:16:48', NULL, '8b30de7d-f43a-4240-900e-89c2530695cc'),
(6, 'craft\\elements\\Entry', '2022-07-08 15:17:35', '2022-07-08 15:17:35', NULL, 'f9dc7281-e99d-4a44-8bbc-8001fe76e655'),
(7, 'craft\\elements\\Entry', '2022-07-08 15:41:35', '2022-07-08 15:41:35', NULL, 'db5594fb-0c00-4d15-9ec1-91845af66403'),
(8, 'craft\\elements\\Entry', '2022-07-08 15:42:40', '2022-07-08 15:42:40', NULL, 'e69b86d6-d5e9-4743-8fd5-c17007babeaf'),
(9, 'craft\\elements\\Entry', '2022-07-08 15:46:46', '2022-07-08 15:46:46', NULL, '3e74c7a0-4653-4b3a-8dd0-8570c00bad86'),
(10, 'craft\\elements\\Entry', '2022-07-09 02:22:47', '2022-07-09 02:22:47', NULL, 'de1e2454-6452-4650-8ad5-1b3c69f654ca'),
(11, 'craft\\elements\\Asset', '2022-07-09 03:33:29', '2022-07-09 03:33:29', NULL, '17653ab8-ea99-46c8-a8fb-0edb609253fd'),
(12, 'craft\\elements\\Category', '2022-07-09 03:44:40', '2022-07-09 03:44:40', NULL, '926c78a5-29ed-47f2-be1a-7087c436a018'),
(13, 'craft\\elements\\Category', '2022-07-09 03:53:41', '2022-07-09 03:53:41', NULL, '28f4a090-57ea-4653-98f6-fab29d52f692'),
(14, 'craft\\elements\\MatrixBlock', '2022-07-09 04:38:24', '2022-07-09 04:38:24', NULL, '07a0f9bc-5dd3-4478-9770-448cbdab0365'),
(15, 'verbb\\supertable\\elements\\SuperTableBlockElement', '2022-07-09 04:40:39', '2022-07-09 04:40:39', NULL, 'e4c1c0b9-a203-4b0e-8906-5fc16c1967d7'),
(16, 'verbb\\supertable\\elements\\SuperTableBlockElement', '2022-07-09 04:47:19', '2022-07-09 04:47:19', '2022-07-09 07:35:25', '9c9149ce-43d4-4916-962e-ea1debcf64bf'),
(17, 'verbb\\supertable\\elements\\SuperTableBlockElement', '2022-07-09 04:52:12', '2022-07-09 04:52:12', NULL, '7dadae18-9197-4025-8595-dbb345ba800c'),
(18, 'craft\\elements\\Category', '2022-07-09 07:29:15', '2022-07-09 07:29:15', NULL, '9c805793-8bc3-4ff0-894b-04e4c78e2798'),
(19, 'craft\\elements\\MatrixBlock', '2022-07-09 07:35:10', '2022-07-09 07:35:10', NULL, 'ca610aa8-2000-44d8-888b-870461256cf3'),
(20, 'craft\\elements\\MatrixBlock', '2022-07-09 07:38:23', '2022-07-09 07:38:23', '2022-07-12 18:24:19', '44c854be-a1e7-4389-a389-e81ae6133526'),
(21, 'craft\\elements\\Entry', '2022-07-13 18:27:58', '2022-07-13 18:27:58', '2022-07-13 18:29:08', 'bb7c5b33-74df-4d74-97ae-ad66481599eb'),
(22, 'craft\\elements\\Entry', '2022-07-14 13:23:16', '2022-07-14 13:23:16', NULL, '2a984276-d609-480c-b6e2-966cec3dad8c'),
(23, 'craft\\elements\\Entry', '2022-07-14 13:24:27', '2022-07-14 13:24:27', NULL, 'a3b12cfa-93d8-4f91-b9dc-56e1f633cdff'),
(24, 'craft\\elements\\Entry', '2022-07-14 13:27:42', '2022-07-14 13:27:42', NULL, '2f6e63ef-4612-4685-8d19-e30e84cfa2e3'),
(25, 'craft\\elements\\Entry', '2022-07-14 13:57:13', '2022-07-14 13:57:13', NULL, '5360fe2b-c14e-451d-a1d7-d868e55d8df9'),
(26, 'craft\\elements\\Entry', '2022-07-14 14:56:15', '2022-07-14 14:56:15', NULL, '0c8bdbda-62cf-43f1-a11d-fcc1af837d9c');

-- --------------------------------------------------------

--
-- Table structure for table `fieldlayouttabs`
--

CREATE TABLE `fieldlayouttabs` (
  `id` int(11) NOT NULL,
  `layoutId` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `settings` text DEFAULT NULL,
  `elements` text DEFAULT NULL,
  `sortOrder` smallint(6) UNSIGNED DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `fieldlayouttabs`
--

INSERT INTO `fieldlayouttabs` (`id`, `layoutId`, `name`, `settings`, `elements`, `sortOrder`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(16, 11, 'Content', '{\"userCondition\":null,\"elementCondition\":null}', '[{\"type\":\"craft\\\\fieldlayoutelements\\\\assets\\\\AssetTitleField\",\"autocomplete\":false,\"class\":null,\"size\":null,\"name\":null,\"autocorrect\":true,\"autocapitalize\":true,\"disabled\":false,\"readonly\":false,\"title\":null,\"placeholder\":null,\"step\":null,\"min\":null,\"max\":null,\"requirable\":false,\"id\":null,\"containerAttributes\":[],\"inputContainerAttributes\":[],\"labelAttributes\":[],\"orientation\":null,\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"width\":100,\"uid\":\"725b0e1c-f63d-42e8-873f-48d0a7c1483b\",\"userCondition\":null,\"elementCondition\":null}]', 1, '2022-07-09 03:33:29', '2022-07-09 03:33:29', '3b8dbe59-f111-494d-939e-bcf1010aba5b'),
(18, 12, 'Content', '{\"userCondition\":null,\"elementCondition\":null}', '[{\"type\":\"craft\\\\fieldlayoutelements\\\\TitleField\",\"autocomplete\":false,\"class\":null,\"size\":null,\"name\":null,\"autocorrect\":true,\"autocapitalize\":true,\"disabled\":false,\"readonly\":false,\"title\":null,\"placeholder\":null,\"step\":null,\"min\":null,\"max\":null,\"requirable\":false,\"id\":null,\"containerAttributes\":[],\"inputContainerAttributes\":[],\"labelAttributes\":[],\"orientation\":null,\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"width\":100,\"uid\":\"cf27284c-6264-4635-a0f6-3319d7fcfecf\",\"userCondition\":null,\"elementCondition\":null}]', 1, '2022-07-09 03:44:40', '2022-07-09 03:44:40', 'db7b2659-18f9-41e6-bf77-0dfd86e25a9b'),
(20, 4, 'Content', '{\"userCondition\":null,\"elementCondition\":null}', '[{\"type\":\"craft\\\\fieldlayoutelements\\\\entries\\\\EntryTitleField\",\"autocomplete\":false,\"class\":null,\"size\":null,\"name\":null,\"autocorrect\":true,\"autocapitalize\":true,\"disabled\":false,\"readonly\":false,\"title\":null,\"placeholder\":null,\"step\":null,\"min\":null,\"max\":null,\"requirable\":false,\"id\":null,\"containerAttributes\":[],\"inputContainerAttributes\":[],\"labelAttributes\":[],\"orientation\":null,\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"width\":100,\"uid\":\"31813845-d94e-4fce-a55d-6f5fc62c2901\",\"userCondition\":null,\"elementCondition\":null},{\"type\":\"craft\\\\fieldlayoutelements\\\\CustomField\",\"label\":\"Author\",\"instructions\":null,\"tip\":null,\"warning\":null,\"required\":true,\"width\":50,\"uid\":\"0ae8fffe-1e76-418a-8739-c825e5c1c889\",\"userCondition\":null,\"elementCondition\":null,\"fieldUid\":\"3cfc0ef4-6ff2-433b-a452-2d40f9bc5988\"},{\"type\":\"craft\\\\fieldlayoutelements\\\\CustomField\",\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"required\":false,\"width\":50,\"uid\":\"fad486d3-7feb-49e0-bb2c-9425571b227f\",\"userCondition\":null,\"elementCondition\":null,\"fieldUid\":\"5477467a-150b-4bea-ad59-e1f19719c73f\"},{\"type\":\"craft\\\\fieldlayoutelements\\\\CustomField\",\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"required\":false,\"width\":100,\"uid\":\"5c02408c-6456-41d0-a228-8a4af28a446f\",\"userCondition\":null,\"elementCondition\":null,\"fieldUid\":\"293cac4b-bd6e-4c92-98ca-eb719b885cda\"},{\"type\":\"craft\\\\fieldlayoutelements\\\\CustomField\",\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"required\":false,\"width\":100,\"uid\":\"346fa6e4-218a-4df8-8d89-c767ef229279\",\"userCondition\":null,\"elementCondition\":null,\"fieldUid\":\"be50f99b-b84e-45d6-99c6-9b79e5c52560\"},{\"type\":\"craft\\\\fieldlayoutelements\\\\HorizontalRule\",\"uid\":\"604ca2bf-8e8a-4f42-878c-d934ee7b6400\",\"userCondition\":null,\"elementCondition\":null},{\"type\":\"craft\\\\fieldlayoutelements\\\\CustomField\",\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"required\":false,\"width\":100,\"uid\":\"49f3857d-c84c-4ada-873e-8fd94ab29d8d\",\"userCondition\":null,\"elementCondition\":null,\"fieldUid\":\"170b0e9a-f69f-46c0-810f-b14d6378d6fe\"}]', 1, '2022-07-09 03:52:26', '2022-07-09 03:52:26', 'e62071ac-d41c-49f2-b15c-e357fe845628'),
(21, 13, 'Content', '{\"userCondition\":null,\"elementCondition\":null}', '[{\"type\":\"craft\\\\fieldlayoutelements\\\\TitleField\",\"autocomplete\":false,\"class\":null,\"size\":null,\"name\":null,\"autocorrect\":true,\"autocapitalize\":true,\"disabled\":false,\"readonly\":false,\"title\":null,\"placeholder\":null,\"step\":null,\"min\":null,\"max\":null,\"requirable\":false,\"id\":null,\"containerAttributes\":[],\"inputContainerAttributes\":[],\"labelAttributes\":[],\"orientation\":null,\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"width\":100,\"uid\":\"848ffc28-6460-4116-a010-bd866c152b29\",\"userCondition\":null,\"elementCondition\":null}]', 1, '2022-07-09 03:53:41', '2022-07-09 03:53:41', '4037bfb7-db8f-4339-aff1-52426cc001a7'),
(22, 6, 'Content', '{\"userCondition\":null,\"elementCondition\":null}', '[{\"type\":\"craft\\\\fieldlayoutelements\\\\entries\\\\EntryTitleField\",\"autocomplete\":false,\"class\":null,\"size\":null,\"name\":null,\"autocorrect\":true,\"autocapitalize\":true,\"disabled\":false,\"readonly\":false,\"title\":null,\"placeholder\":null,\"step\":null,\"min\":null,\"max\":null,\"requirable\":false,\"id\":null,\"containerAttributes\":[],\"inputContainerAttributes\":[],\"labelAttributes\":[],\"orientation\":null,\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"width\":100,\"uid\":\"0ac39602-164b-4856-94fa-e74733043237\",\"userCondition\":null,\"elementCondition\":null},{\"type\":\"craft\\\\fieldlayoutelements\\\\CustomField\",\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"required\":false,\"width\":50,\"uid\":\"d29aa23c-4321-42aa-9697-cb3eb9bc121a\",\"userCondition\":null,\"elementCondition\":null,\"fieldUid\":\"879b8fb2-8367-4ee2-846e-bd38b886d605\"},{\"type\":\"craft\\\\fieldlayoutelements\\\\CustomField\",\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"required\":false,\"width\":50,\"uid\":\"546d3e0d-3cf4-4ddd-b319-3c6d77c3bad0\",\"userCondition\":null,\"elementCondition\":null,\"fieldUid\":\"be50f99b-b84e-45d6-99c6-9b79e5c52560\"},{\"type\":\"craft\\\\fieldlayoutelements\\\\CustomField\",\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"required\":false,\"width\":100,\"uid\":\"7b68341e-e2ee-4841-a3d7-da0abb8fb6c2\",\"userCondition\":null,\"elementCondition\":null,\"fieldUid\":\"293cac4b-bd6e-4c92-98ca-eb719b885cda\"},{\"type\":\"craft\\\\fieldlayoutelements\\\\CustomField\",\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"required\":false,\"width\":100,\"uid\":\"a55efd5d-9ec3-4e4a-a3c0-06a8185967ba\",\"userCondition\":null,\"elementCondition\":null,\"fieldUid\":\"907b94e8-b3cb-408b-a4ed-d497104b2d55\"},{\"type\":\"craft\\\\fieldlayoutelements\\\\HorizontalRule\",\"uid\":\"c24c324e-569c-4814-8797-f0a19301dc0b\",\"userCondition\":null,\"elementCondition\":null},{\"type\":\"craft\\\\fieldlayoutelements\\\\CustomField\",\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"required\":false,\"width\":100,\"uid\":\"2be73e58-0be4-47a8-a5de-294d5b7f1acc\",\"userCondition\":null,\"elementCondition\":null,\"fieldUid\":\"170b0e9a-f69f-46c0-810f-b14d6378d6fe\"}]', 1, '2022-07-09 03:55:55', '2022-07-09 03:55:55', 'ba2d3088-293a-42db-bb1f-9fb0ce0d9cf0'),
(23, 14, 'Content', '{\"userCondition\":null,\"elementCondition\":null}', '[{\"type\":\"craft\\\\fieldlayoutelements\\\\CustomField\",\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"required\":false,\"width\":100,\"uid\":\"5a702e2e-6ce8-4bbc-9819-923d28f30c7c\",\"userCondition\":null,\"elementCondition\":null,\"fieldUid\":\"b2c25602-4953-49fc-a0ce-8fdac961d57b\"},{\"type\":\"craft\\\\fieldlayoutelements\\\\CustomField\",\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"required\":false,\"width\":100,\"uid\":\"3c88b38d-1e3b-4257-a1f8-2d363f81daf2\",\"userCondition\":null,\"elementCondition\":null,\"fieldUid\":\"b9a06d06-813d-4c92-bfab-1f6be8e4ed07\"}]', 1, '2022-07-09 04:38:24', '2022-07-09 04:38:24', '183a12e7-f4c8-48c4-8aac-c5778e74c813'),
(25, 16, 'Content', '{\"userCondition\":null,\"elementCondition\":null}', '[{\"type\":\"craft\\\\fieldlayoutelements\\\\CustomField\",\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"required\":false,\"width\":100,\"uid\":\"03bd5d65-0ad7-413f-8301-1b861b6fbe83\",\"userCondition\":null,\"elementCondition\":null,\"fieldUid\":\"e7a73574-4ac1-440a-9ecd-60810b7d4f02\"},{\"type\":\"craft\\\\fieldlayoutelements\\\\CustomField\",\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"required\":false,\"width\":100,\"uid\":\"6b7be536-8969-477d-bee0-7b63cd4a6bdc\",\"userCondition\":null,\"elementCondition\":null,\"fieldUid\":\"a86f6dff-5be9-4f49-9232-841c9b5d8dda\"}]', 1, '2022-07-09 04:47:19', '2022-07-09 04:47:19', 'cfe06468-f6d2-40c3-bc22-46744c752d1f'),
(31, 18, 'Content', '{\"userCondition\":null,\"elementCondition\":null}', '[{\"type\":\"craft\\\\fieldlayoutelements\\\\TitleField\",\"autocomplete\":false,\"class\":null,\"size\":null,\"name\":null,\"autocorrect\":true,\"autocapitalize\":true,\"disabled\":false,\"readonly\":false,\"title\":null,\"placeholder\":null,\"step\":null,\"min\":null,\"max\":null,\"requirable\":false,\"id\":null,\"containerAttributes\":[],\"inputContainerAttributes\":[],\"labelAttributes\":[],\"orientation\":null,\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"width\":100,\"uid\":\"62910302-df91-4c89-84f5-b77d5c037c49\",\"userCondition\":null,\"elementCondition\":null}]', 1, '2022-07-09 07:29:15', '2022-07-09 07:29:15', '248979b0-4f95-4e06-9ce9-c53215651c41'),
(36, 19, 'Content', '{\"userCondition\":null,\"elementCondition\":null}', '[{\"type\":\"craft\\\\fieldlayoutelements\\\\CustomField\",\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"required\":false,\"width\":100,\"uid\":\"adcf3f43-99ab-4c44-b838-284e8a37661a\",\"userCondition\":null,\"elementCondition\":null,\"fieldUid\":\"39a78532-3890-491b-bacb-c9efe356997a\"},{\"type\":\"craft\\\\fieldlayoutelements\\\\CustomField\",\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"required\":false,\"width\":100,\"uid\":\"59aa8233-f3e7-40b7-b65d-595dc54f393d\",\"userCondition\":null,\"elementCondition\":null,\"fieldUid\":\"2505b2b0-2821-445f-a8cc-a6c902395ae1\"}]', 1, '2022-07-09 07:35:10', '2022-07-09 07:35:10', '067d3f36-0088-4a60-b283-e10ce1996b98'),
(41, 20, 'Content', '{\"userCondition\":null,\"elementCondition\":null}', '[{\"type\":\"craft\\\\fieldlayoutelements\\\\CustomField\",\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"required\":false,\"width\":100,\"uid\":\"628ff436-1132-45eb-a426-8b3b81e16577\",\"userCondition\":null,\"elementCondition\":null,\"fieldUid\":\"2d382c82-c0eb-47c2-b9f6-05fd84e03045\"},{\"type\":\"craft\\\\fieldlayoutelements\\\\CustomField\",\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"required\":false,\"width\":100,\"uid\":\"448bac82-8046-48ba-a563-566234ee06d6\",\"userCondition\":null,\"elementCondition\":null,\"fieldUid\":\"874730fc-5e59-488f-a579-29b8a3f524d0\"}]', 1, '2022-07-09 08:43:59', '2022-07-09 08:43:59', 'b8659bb2-0191-4361-acdd-f41f51efa713'),
(42, 10, 'Content', '{\"userCondition\":null,\"elementCondition\":null}', '[{\"type\":\"craft\\\\fieldlayoutelements\\\\entries\\\\EntryTitleField\",\"autocomplete\":false,\"class\":null,\"size\":null,\"name\":null,\"autocorrect\":true,\"autocapitalize\":true,\"disabled\":false,\"readonly\":false,\"title\":null,\"placeholder\":null,\"step\":null,\"min\":null,\"max\":null,\"requirable\":false,\"id\":null,\"containerAttributes\":[],\"inputContainerAttributes\":[],\"labelAttributes\":[],\"orientation\":null,\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"width\":100,\"uid\":\"6f9fa017-6e9f-430a-9e1b-f77c10390bdb\",\"userCondition\":null,\"elementCondition\":null},{\"type\":\"craft\\\\fieldlayoutelements\\\\CustomField\",\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"required\":true,\"width\":100,\"uid\":\"87978fb4-2526-4c02-8d8e-054d27bf7209\",\"userCondition\":null,\"elementCondition\":null,\"fieldUid\":\"530023de-e527-4210-9215-b3e3099b4402\"},{\"type\":\"craft\\\\fieldlayoutelements\\\\CustomField\",\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"required\":false,\"width\":100,\"uid\":\"7a39dadd-8427-4f5e-ba53-2f7ff56e0028\",\"userCondition\":null,\"elementCondition\":null,\"fieldUid\":\"913d328b-09f7-4108-8816-f81c35cb7d2a\"}]', 1, '2022-07-12 16:45:42', '2022-07-12 16:45:42', 'dd3cf48b-73e9-4e5f-8e7d-9f55239f4dbf'),
(52, 2, 'Detail', '{\"userCondition\":null,\"elementCondition\":null}', '[{\"type\":\"craft\\\\fieldlayoutelements\\\\entries\\\\EntryTitleField\",\"autocomplete\":false,\"class\":null,\"size\":null,\"name\":null,\"autocorrect\":true,\"autocapitalize\":true,\"disabled\":false,\"readonly\":false,\"title\":null,\"placeholder\":null,\"step\":null,\"min\":null,\"max\":null,\"requirable\":false,\"id\":null,\"containerAttributes\":[],\"inputContainerAttributes\":[],\"labelAttributes\":[],\"orientation\":null,\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"width\":100,\"uid\":\"d134eae4-1925-468f-87b6-e57cd02312d4\",\"userCondition\":null,\"elementCondition\":null},{\"type\":\"craft\\\\fieldlayoutelements\\\\CustomField\",\"label\":\"Icon\",\"instructions\":null,\"tip\":null,\"warning\":null,\"required\":false,\"width\":100,\"uid\":\"531ae389-cc11-472d-aaa5-c1656f1bac84\",\"userCondition\":null,\"elementCondition\":null,\"fieldUid\":\"be50f99b-b84e-45d6-99c6-9b79e5c52560\"},{\"type\":\"craft\\\\fieldlayoutelements\\\\CustomField\",\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"required\":false,\"width\":100,\"uid\":\"15fbf079-0156-47eb-be55-f0507760be25\",\"userCondition\":null,\"elementCondition\":null,\"fieldUid\":\"c969cea5-b5b1-408f-a797-8806df0c5402\"}]', 1, '2022-07-12 18:23:49', '2022-07-12 18:23:49', '5300ab8c-1486-4c1e-a391-158153b30a9e'),
(53, 2, 'Content', '{\"userCondition\":null,\"elementCondition\":null}', '[{\"type\":\"craft\\\\fieldlayoutelements\\\\CustomField\",\"label\":\"Information Button\",\"instructions\":null,\"tip\":null,\"warning\":null,\"required\":false,\"width\":100,\"uid\":\"ca7d4cdb-76c5-4aec-9ab8-cd3bd51b5296\",\"userCondition\":null,\"elementCondition\":null,\"fieldUid\":\"7acc60ca-d954-466f-9d9c-79ecb579ed62\"},{\"type\":\"craft\\\\fieldlayoutelements\\\\HorizontalRule\",\"uid\":\"194a6035-bf5f-40ad-b10b-bc1c093841a9\",\"userCondition\":null,\"elementCondition\":null},{\"type\":\"craft\\\\fieldlayoutelements\\\\CustomField\",\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"required\":false,\"width\":100,\"uid\":\"1f1869b4-647b-4bc3-bb39-1b240b495629\",\"userCondition\":null,\"elementCondition\":null,\"fieldUid\":\"e1d6a3d2-955b-42e4-bcf0-ae40fbffba4f\"}]', 2, '2022-07-12 18:23:49', '2022-07-12 18:23:49', '0e0daa68-c0df-4aaa-8c33-19f070edf96c'),
(56, 15, 'Content', '{\"userCondition\":null,\"elementCondition\":null}', '[{\"type\":\"craft\\\\fieldlayoutelements\\\\CustomField\",\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"required\":false,\"width\":100,\"uid\":\"cf977ef4-f747-4645-9e08-165a57a92b0d\",\"userCondition\":null,\"elementCondition\":null,\"fieldUid\":\"2855e71a-4ab6-45e5-b716-fe4cfc071f33\"},{\"type\":\"craft\\\\fieldlayoutelements\\\\CustomField\",\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"required\":false,\"width\":100,\"uid\":\"5a56da0a-ce25-42f5-900e-678c8c4cee72\",\"userCondition\":null,\"elementCondition\":null,\"fieldUid\":\"9583ec6a-d404-475a-8632-f57bf1d4aa04\"},{\"type\":\"craft\\\\fieldlayoutelements\\\\CustomField\",\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"required\":false,\"width\":100,\"uid\":\"4eac30d7-f370-4c57-b8e6-fe88a43a9f6b\",\"userCondition\":null,\"elementCondition\":null,\"fieldUid\":\"4c833b87-8963-49bf-b039-fb9029ebcfa6\"},{\"type\":\"craft\\\\fieldlayoutelements\\\\CustomField\",\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"required\":false,\"width\":100,\"uid\":\"b3e28a12-e01c-4729-9b2e-082f5ca51077\",\"userCondition\":null,\"elementCondition\":null,\"fieldUid\":\"e9361ffe-b7e5-47e5-b505-06837d3a9487\"},{\"type\":\"craft\\\\fieldlayoutelements\\\\CustomField\",\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"required\":false,\"width\":100,\"uid\":\"696124f9-a166-4bfa-b533-84b1061b27ba\",\"userCondition\":null,\"elementCondition\":null,\"fieldUid\":\"26f05fc1-ee8e-4be8-95cb-ee95fc0ba4ea\"}]', 1, '2022-07-12 18:40:02', '2022-07-12 18:40:02', '03393706-d426-43eb-82b8-7e1cc0e8bca8'),
(57, 8, 'Detail', '{\"userCondition\":null,\"elementCondition\":null}', '[{\"type\":\"craft\\\\fieldlayoutelements\\\\entries\\\\EntryTitleField\",\"autocomplete\":false,\"class\":null,\"size\":null,\"name\":null,\"autocorrect\":true,\"autocapitalize\":true,\"disabled\":false,\"readonly\":false,\"title\":null,\"placeholder\":null,\"step\":null,\"min\":null,\"max\":null,\"requirable\":false,\"id\":null,\"containerAttributes\":[],\"inputContainerAttributes\":[],\"labelAttributes\":[],\"orientation\":null,\"label\":\"Job Title\",\"instructions\":null,\"tip\":null,\"warning\":null,\"width\":100,\"uid\":\"a7070c80-d28e-4411-b002-c66c303aaf4f\",\"userCondition\":null,\"elementCondition\":null},{\"type\":\"craft\\\\fieldlayoutelements\\\\CustomField\",\"label\":\"Job Short Description\",\"instructions\":null,\"tip\":null,\"warning\":null,\"required\":false,\"width\":100,\"uid\":\"a5d6cf65-f477-489e-9d8b-c350ab1e6992\",\"userCondition\":null,\"elementCondition\":null,\"fieldUid\":\"907b94e8-b3cb-408b-a4ed-d497104b2d55\"},{\"type\":\"craft\\\\fieldlayoutelements\\\\CustomField\",\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"required\":false,\"width\":100,\"uid\":\"15d9140e-4e2d-49f3-b5ab-db6c2f4e5da2\",\"userCondition\":null,\"elementCondition\":null,\"fieldUid\":\"9b168937-c11f-4a7e-9741-f9d6aa77c9d0\"}]', 1, '2022-07-12 18:41:21', '2022-07-12 18:41:21', '3dc77005-6609-4184-bd64-98878386d1a3'),
(58, 8, 'Content', '{\"userCondition\":null,\"elementCondition\":null}', '[{\"type\":\"craft\\\\fieldlayoutelements\\\\CustomField\",\"label\":\"Information Button\",\"instructions\":null,\"tip\":null,\"warning\":null,\"required\":false,\"width\":100,\"uid\":\"f374c463-6ea3-4f56-a496-541fe1ea6f7d\",\"userCondition\":null,\"elementCondition\":null,\"fieldUid\":\"7acc60ca-d954-466f-9d9c-79ecb579ed62\"},{\"type\":\"craft\\\\fieldlayoutelements\\\\HorizontalRule\",\"uid\":\"3f9eec28-e55f-4b2a-b464-6fd4df96bf0f\",\"userCondition\":null,\"elementCondition\":null},{\"type\":\"craft\\\\fieldlayoutelements\\\\CustomField\",\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"required\":false,\"width\":100,\"uid\":\"ca635acf-95a5-4164-8262-ec2aadf68caa\",\"userCondition\":null,\"elementCondition\":null,\"fieldUid\":\"e1d6a3d2-955b-42e4-bcf0-ae40fbffba4f\"}]', 2, '2022-07-12 18:41:21', '2022-07-12 18:41:21', '39b136d0-11c1-49b1-b440-9a280976d4e4'),
(59, 1, 'Content', '{\"userCondition\":null,\"elementCondition\":null}', '[{\"type\":\"craft\\\\fieldlayoutelements\\\\entries\\\\EntryTitleField\",\"autocomplete\":false,\"class\":null,\"size\":null,\"name\":null,\"autocorrect\":true,\"autocapitalize\":true,\"disabled\":false,\"readonly\":false,\"title\":null,\"placeholder\":null,\"step\":null,\"min\":null,\"max\":null,\"requirable\":false,\"id\":null,\"containerAttributes\":[],\"inputContainerAttributes\":[],\"labelAttributes\":[],\"orientation\":null,\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"width\":100,\"uid\":\"e59f1dc9-dd38-4c25-a59b-17271b4dcca7\",\"userCondition\":null,\"elementCondition\":null},{\"type\":\"craft\\\\fieldlayoutelements\\\\CustomField\",\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"required\":false,\"width\":100,\"uid\":\"6d409f74-31fb-4414-81e5-5c1407803f15\",\"userCondition\":null,\"elementCondition\":null,\"fieldUid\":\"be50f99b-b84e-45d6-99c6-9b79e5c52560\"},{\"type\":\"craft\\\\fieldlayoutelements\\\\CustomField\",\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"required\":false,\"width\":100,\"uid\":\"13e56410-185a-431c-88b0-67de9979c6fd\",\"userCondition\":null,\"elementCondition\":null,\"fieldUid\":\"293cac4b-bd6e-4c92-98ca-eb719b885cda\"},{\"type\":\"craft\\\\fieldlayoutelements\\\\CustomField\",\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"required\":false,\"width\":100,\"uid\":\"806ee183-0744-4bad-a08a-f6818100c164\",\"userCondition\":null,\"elementCondition\":null,\"fieldUid\":\"907b94e8-b3cb-408b-a4ed-d497104b2d55\"}]', 1, '2022-07-13 13:51:04', '2022-07-13 13:51:04', 'c43550ad-9845-41b5-a00d-04a348b2c3e3'),
(61, 17, 'Content', '{\"userCondition\":null,\"elementCondition\":null}', '[{\"type\":\"craft\\\\fieldlayoutelements\\\\CustomField\",\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"required\":false,\"width\":100,\"uid\":\"d1b9aeff-68de-445b-94b5-72744f7fee36\",\"userCondition\":null,\"elementCondition\":null,\"fieldUid\":\"7d14fb5f-7ea2-4695-95f7-923c9bbd3fb8\"},{\"type\":\"craft\\\\fieldlayoutelements\\\\CustomField\",\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"required\":false,\"width\":100,\"uid\":\"a0c15a39-4e27-442e-b869-ea895e9c6011\",\"userCondition\":null,\"elementCondition\":null,\"fieldUid\":\"987bd29f-6646-4a74-958b-01ebb601675b\"},{\"type\":\"craft\\\\fieldlayoutelements\\\\CustomField\",\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"required\":false,\"width\":100,\"uid\":\"46526c46-4a44-42c4-8fa4-07a3f529bad2\",\"userCondition\":null,\"elementCondition\":null,\"fieldUid\":\"1d7dc4a5-fcb3-477b-93d2-0adc9b88ccb6\"}]', 1, '2022-07-13 15:57:46', '2022-07-13 15:57:46', 'f3eed3e8-4faa-4106-b3cd-bb3a5265a2cc'),
(63, 3, 'Content', '{\"userCondition\":null,\"elementCondition\":null}', '[{\"type\":\"craft\\\\fieldlayoutelements\\\\entries\\\\EntryTitleField\",\"autocomplete\":false,\"class\":null,\"size\":null,\"name\":null,\"autocorrect\":true,\"autocapitalize\":true,\"disabled\":false,\"readonly\":false,\"title\":null,\"placeholder\":null,\"step\":null,\"min\":null,\"max\":null,\"requirable\":false,\"id\":null,\"containerAttributes\":[],\"inputContainerAttributes\":[],\"labelAttributes\":[],\"orientation\":null,\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"width\":100,\"uid\":\"5a7d382a-4423-426e-b35b-dc513e0f17a7\",\"userCondition\":null,\"elementCondition\":null},{\"type\":\"craft\\\\fieldlayoutelements\\\\CustomField\",\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"required\":false,\"width\":100,\"uid\":\"3aaa511c-10f9-46bb-96c7-89bbcca03d44\",\"userCondition\":null,\"elementCondition\":null,\"fieldUid\":\"293cac4b-bd6e-4c92-98ca-eb719b885cda\"},{\"type\":\"craft\\\\fieldlayoutelements\\\\CustomField\",\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"required\":false,\"width\":100,\"uid\":\"c10cc151-7231-481a-9232-434d7cd2ac7b\",\"userCondition\":null,\"elementCondition\":null,\"fieldUid\":\"907b94e8-b3cb-408b-a4ed-d497104b2d55\"},{\"type\":\"craft\\\\fieldlayoutelements\\\\CustomField\",\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"required\":false,\"width\":50,\"uid\":\"8fabc35c-f281-47dc-9acc-9ef89cd58feb\",\"userCondition\":null,\"elementCondition\":null,\"fieldUid\":\"7acc60ca-d954-466f-9d9c-79ecb579ed62\"},{\"type\":\"craft\\\\fieldlayoutelements\\\\CustomField\",\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"required\":false,\"width\":50,\"uid\":\"14fe1c68-d5cb-4070-84fa-d20e8c15d6df\",\"userCondition\":null,\"elementCondition\":null,\"fieldUid\":\"be50f99b-b84e-45d6-99c6-9b79e5c52560\"}]', 1, '2022-07-13 16:04:57', '2022-07-13 16:04:57', '6ac94b75-691d-40c6-b678-2aa8dee3aa8d'),
(65, 5, 'Content', '{\"userCondition\":null,\"elementCondition\":null}', '[{\"type\":\"craft\\\\fieldlayoutelements\\\\entries\\\\EntryTitleField\",\"autocomplete\":false,\"class\":null,\"size\":null,\"name\":null,\"autocorrect\":true,\"autocapitalize\":true,\"disabled\":false,\"readonly\":false,\"title\":null,\"placeholder\":null,\"step\":null,\"min\":null,\"max\":null,\"requirable\":false,\"id\":null,\"containerAttributes\":[],\"inputContainerAttributes\":[],\"labelAttributes\":[],\"orientation\":null,\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"width\":100,\"uid\":\"d58fa3d6-2039-436d-8e6a-eb1e7925814a\",\"userCondition\":null,\"elementCondition\":null},{\"type\":\"craft\\\\fieldlayoutelements\\\\CustomField\",\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"required\":false,\"width\":100,\"uid\":\"c6e820ac-b48c-491e-85b7-8a182151b09e\",\"userCondition\":null,\"elementCondition\":null,\"fieldUid\":\"293cac4b-bd6e-4c92-98ca-eb719b885cda\"},{\"type\":\"craft\\\\fieldlayoutelements\\\\CustomField\",\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"required\":false,\"width\":100,\"uid\":\"53968d38-0e63-48c7-8a1f-ceb58bb5d1ba\",\"userCondition\":null,\"elementCondition\":null,\"fieldUid\":\"907b94e8-b3cb-408b-a4ed-d497104b2d55\"},{\"type\":\"craft\\\\fieldlayoutelements\\\\CustomField\",\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"required\":false,\"width\":50,\"uid\":\"e62aaf0f-a00c-452b-8cd7-737dc764c7ea\",\"userCondition\":null,\"elementCondition\":null,\"fieldUid\":\"7acc60ca-d954-466f-9d9c-79ecb579ed62\"},{\"type\":\"craft\\\\fieldlayoutelements\\\\CustomField\",\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"required\":false,\"width\":50,\"uid\":\"fca877a3-7157-4c38-8f84-e70bf0bd59d9\",\"userCondition\":null,\"elementCondition\":null,\"fieldUid\":\"be50f99b-b84e-45d6-99c6-9b79e5c52560\"}]', 1, '2022-07-13 16:19:57', '2022-07-13 16:19:57', '47860d54-e544-44b6-90ec-0674f2ec5274'),
(66, 21, 'Content', '{\"userCondition\":null,\"elementCondition\":null}', '[{\"type\":\"craft\\\\fieldlayoutelements\\\\entries\\\\EntryTitleField\",\"autocomplete\":false,\"class\":null,\"size\":null,\"name\":null,\"autocorrect\":true,\"autocapitalize\":true,\"disabled\":false,\"readonly\":false,\"title\":null,\"placeholder\":null,\"step\":null,\"min\":null,\"max\":null,\"requirable\":false,\"id\":null,\"containerAttributes\":[],\"inputContainerAttributes\":[],\"labelAttributes\":[],\"orientation\":null,\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"width\":100,\"uid\":\"7e2ec4a1-5ffd-4f0b-b218-3709791b0b3b\",\"userCondition\":null,\"elementCondition\":null}]', 1, '2022-07-13 18:27:58', '2022-07-13 18:27:58', '5c523463-59b5-411f-8080-d09213c23f8e'),
(68, 22, 'Content', '{\"userCondition\":null,\"elementCondition\":null}', '[{\"type\":\"craft\\\\fieldlayoutelements\\\\entries\\\\EntryTitleField\",\"autocomplete\":false,\"class\":null,\"size\":null,\"name\":null,\"autocorrect\":true,\"autocapitalize\":true,\"disabled\":false,\"readonly\":false,\"title\":null,\"placeholder\":null,\"step\":null,\"min\":null,\"max\":null,\"requirable\":false,\"id\":null,\"containerAttributes\":[],\"inputContainerAttributes\":[],\"labelAttributes\":[],\"orientation\":null,\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"width\":100,\"uid\":\"e691d958-f748-4402-916c-f647c7424277\",\"userCondition\":null,\"elementCondition\":null},{\"type\":\"craft\\\\fieldlayoutelements\\\\CustomField\",\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"required\":false,\"width\":100,\"uid\":\"1eb767b3-0b66-41a9-89ef-1383952ac4a5\",\"userCondition\":null,\"elementCondition\":null,\"fieldUid\":\"293cac4b-bd6e-4c92-98ca-eb719b885cda\"},{\"type\":\"craft\\\\fieldlayoutelements\\\\CustomField\",\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"required\":false,\"width\":100,\"uid\":\"c9d72ecc-d788-42b9-b627-9907d0e3dac5\",\"userCondition\":null,\"elementCondition\":null,\"fieldUid\":\"907b94e8-b3cb-408b-a4ed-d497104b2d55\"}]', 1, '2022-07-14 13:23:45', '2022-07-14 13:23:45', '8a886982-bb52-48ed-ae53-d664ad27066f'),
(70, 23, 'Content', '{\"userCondition\":null,\"elementCondition\":null}', '[{\"type\":\"craft\\\\fieldlayoutelements\\\\entries\\\\EntryTitleField\",\"autocomplete\":false,\"class\":null,\"size\":null,\"name\":null,\"autocorrect\":true,\"autocapitalize\":true,\"disabled\":false,\"readonly\":false,\"title\":null,\"placeholder\":null,\"step\":null,\"min\":null,\"max\":null,\"requirable\":false,\"id\":null,\"containerAttributes\":[],\"inputContainerAttributes\":[],\"labelAttributes\":[],\"orientation\":null,\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"width\":100,\"uid\":\"fb3338ab-071d-4a4d-9a12-62ace503150e\",\"userCondition\":null,\"elementCondition\":null},{\"type\":\"craft\\\\fieldlayoutelements\\\\CustomField\",\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"required\":false,\"width\":100,\"uid\":\"e21a3561-690b-483d-a300-6dcf83b6680a\",\"userCondition\":null,\"elementCondition\":null,\"fieldUid\":\"293cac4b-bd6e-4c92-98ca-eb719b885cda\"},{\"type\":\"craft\\\\fieldlayoutelements\\\\CustomField\",\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"required\":false,\"width\":100,\"uid\":\"43524e20-4bd8-4555-9d93-90a31d97828f\",\"userCondition\":null,\"elementCondition\":null,\"fieldUid\":\"907b94e8-b3cb-408b-a4ed-d497104b2d55\"}]', 1, '2022-07-14 13:24:56', '2022-07-14 13:24:56', 'a8a4d154-b5d2-44ba-b640-2974f068bfa9'),
(72, 24, 'Content', '{\"userCondition\":null,\"elementCondition\":null}', '[{\"type\":\"craft\\\\fieldlayoutelements\\\\entries\\\\EntryTitleField\",\"autocomplete\":false,\"class\":null,\"size\":null,\"name\":null,\"autocorrect\":true,\"autocapitalize\":true,\"disabled\":false,\"readonly\":false,\"title\":null,\"placeholder\":null,\"step\":null,\"min\":null,\"max\":null,\"requirable\":false,\"id\":null,\"containerAttributes\":[],\"inputContainerAttributes\":[],\"labelAttributes\":[],\"orientation\":null,\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"width\":100,\"uid\":\"1972982c-6f26-4d6b-837c-5a3e38b974c8\",\"userCondition\":null,\"elementCondition\":null},{\"type\":\"craft\\\\fieldlayoutelements\\\\CustomField\",\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"required\":false,\"width\":100,\"uid\":\"65d710f3-7620-4a96-9bed-408e2744b966\",\"userCondition\":null,\"elementCondition\":null,\"fieldUid\":\"293cac4b-bd6e-4c92-98ca-eb719b885cda\"},{\"type\":\"craft\\\\fieldlayoutelements\\\\CustomField\",\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"required\":false,\"width\":100,\"uid\":\"1700688a-f0f5-41fd-a628-f56f2e7cc184\",\"userCondition\":null,\"elementCondition\":null,\"fieldUid\":\"907b94e8-b3cb-408b-a4ed-d497104b2d55\"}]', 1, '2022-07-14 13:27:54', '2022-07-14 13:27:54', '63fbf33d-1d7c-41b8-859e-5ecc0d59e82a'),
(74, 25, 'Content', '{\"userCondition\":null,\"elementCondition\":null}', '[{\"type\":\"craft\\\\fieldlayoutelements\\\\entries\\\\EntryTitleField\",\"autocomplete\":false,\"class\":null,\"size\":null,\"name\":null,\"autocorrect\":true,\"autocapitalize\":true,\"disabled\":false,\"readonly\":false,\"title\":null,\"placeholder\":null,\"step\":null,\"min\":null,\"max\":null,\"requirable\":false,\"id\":null,\"containerAttributes\":[],\"inputContainerAttributes\":[],\"labelAttributes\":[],\"orientation\":null,\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"width\":100,\"uid\":\"b6e142c9-b428-4022-aa32-2d1f4730f92e\",\"userCondition\":null,\"elementCondition\":null},{\"type\":\"craft\\\\fieldlayoutelements\\\\CustomField\",\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"required\":false,\"width\":100,\"uid\":\"d5774556-ede9-471e-9fc5-a6a6af89927c\",\"userCondition\":null,\"elementCondition\":null,\"fieldUid\":\"293cac4b-bd6e-4c92-98ca-eb719b885cda\"},{\"type\":\"craft\\\\fieldlayoutelements\\\\CustomField\",\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"required\":false,\"width\":100,\"uid\":\"f045e1ee-92a3-4d9d-aa79-4b88228e5a3c\",\"userCondition\":null,\"elementCondition\":null,\"fieldUid\":\"907b94e8-b3cb-408b-a4ed-d497104b2d55\"},{\"type\":\"craft\\\\fieldlayoutelements\\\\CustomField\",\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"required\":false,\"width\":100,\"uid\":\"d7bc3d96-29b9-4705-8d1b-4dd92026e946\",\"userCondition\":null,\"elementCondition\":null,\"fieldUid\":\"e1d6a3d2-955b-42e4-bcf0-ae40fbffba4f\"}]', 1, '2022-07-14 13:57:39', '2022-07-14 13:57:39', '93facda7-8c09-42b3-9c59-53cf8991b6d5'),
(76, 26, 'Content', '{\"userCondition\":null,\"elementCondition\":null}', '[{\"type\":\"craft\\\\fieldlayoutelements\\\\entries\\\\EntryTitleField\",\"autocomplete\":false,\"class\":null,\"size\":null,\"name\":null,\"autocorrect\":true,\"autocapitalize\":true,\"disabled\":false,\"readonly\":false,\"title\":null,\"placeholder\":null,\"step\":null,\"min\":null,\"max\":null,\"requirable\":false,\"id\":null,\"containerAttributes\":[],\"inputContainerAttributes\":[],\"labelAttributes\":[],\"orientation\":null,\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"width\":100,\"uid\":\"62ff9716-4900-4574-a228-44f4ed369a55\",\"userCondition\":null,\"elementCondition\":null},{\"type\":\"craft\\\\fieldlayoutelements\\\\CustomField\",\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"required\":false,\"width\":100,\"uid\":\"0e80d556-548b-47cb-8337-f1dbe99a6afa\",\"userCondition\":null,\"elementCondition\":null,\"fieldUid\":\"293cac4b-bd6e-4c92-98ca-eb719b885cda\"},{\"type\":\"craft\\\\fieldlayoutelements\\\\CustomField\",\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"required\":false,\"width\":100,\"uid\":\"66439132-cdb4-4394-b167-50b39e44940d\",\"userCondition\":null,\"elementCondition\":null,\"fieldUid\":\"907b94e8-b3cb-408b-a4ed-d497104b2d55\"}]', 1, '2022-07-14 14:56:40', '2022-07-14 14:56:40', 'aa19e5a8-7c63-40f8-991a-256580c226e4'),
(77, 7, 'Content', '{\"userCondition\":null,\"elementCondition\":null}', '[{\"type\":\"craft\\\\fieldlayoutelements\\\\entries\\\\EntryTitleField\",\"autocomplete\":false,\"class\":null,\"size\":null,\"name\":null,\"autocorrect\":true,\"autocapitalize\":true,\"disabled\":false,\"readonly\":false,\"title\":null,\"placeholder\":null,\"step\":null,\"min\":null,\"max\":null,\"requirable\":false,\"id\":null,\"containerAttributes\":[],\"inputContainerAttributes\":[],\"labelAttributes\":[],\"orientation\":null,\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"width\":100,\"uid\":\"68e37647-2601-47c9-a9a8-b00bfa73e2ae\",\"userCondition\":null,\"elementCondition\":null},{\"type\":\"craft\\\\fieldlayoutelements\\\\CustomField\",\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"required\":false,\"width\":100,\"uid\":\"5ca60539-cd75-43ac-b2f0-04b0abb61e41\",\"userCondition\":null,\"elementCondition\":null,\"fieldUid\":\"293cac4b-bd6e-4c92-98ca-eb719b885cda\"},{\"type\":\"craft\\\\fieldlayoutelements\\\\CustomField\",\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"required\":false,\"width\":100,\"uid\":\"939dab04-8389-4ebe-9120-1fe926d573c5\",\"userCondition\":null,\"elementCondition\":null,\"fieldUid\":\"907b94e8-b3cb-408b-a4ed-d497104b2d55\"}]', 1, '2022-07-14 14:57:11', '2022-07-14 14:57:11', '522503e9-9cd3-4d1b-819e-d042c411f58e'),
(78, 9, 'Content', '{\"userCondition\":null,\"elementCondition\":null}', '[{\"type\":\"craft\\\\fieldlayoutelements\\\\entries\\\\EntryTitleField\",\"autocomplete\":false,\"class\":null,\"size\":null,\"name\":null,\"autocorrect\":true,\"autocapitalize\":true,\"disabled\":false,\"readonly\":false,\"title\":null,\"placeholder\":null,\"step\":null,\"min\":null,\"max\":null,\"requirable\":false,\"id\":null,\"containerAttributes\":[],\"inputContainerAttributes\":[],\"labelAttributes\":[],\"orientation\":null,\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"width\":100,\"uid\":\"6f5927b5-f231-4aee-9a3b-8e72b7031635\",\"userCondition\":null,\"elementCondition\":null},{\"type\":\"craft\\\\fieldlayoutelements\\\\CustomField\",\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"required\":false,\"width\":100,\"uid\":\"e7957a63-fb80-4302-b1d7-e8a975757148\",\"userCondition\":null,\"elementCondition\":null,\"fieldUid\":\"293cac4b-bd6e-4c92-98ca-eb719b885cda\"},{\"type\":\"craft\\\\fieldlayoutelements\\\\CustomField\",\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"required\":false,\"width\":100,\"uid\":\"83e2b33c-c3b8-4803-8cc4-e609804bb768\",\"userCondition\":null,\"elementCondition\":null,\"fieldUid\":\"170b0e9a-f69f-46c0-810f-b14d6378d6fe\"}]', 1, '2022-07-14 14:57:26', '2022-07-14 14:57:26', '4e1c9cb6-9342-462c-8be6-a5ff6da0e384');

-- --------------------------------------------------------

--
-- Table structure for table `fields`
--

CREATE TABLE `fields` (
  `id` int(11) NOT NULL,
  `groupId` int(11) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `handle` varchar(64) NOT NULL,
  `context` varchar(255) NOT NULL DEFAULT 'global',
  `columnSuffix` char(8) DEFAULT NULL,
  `instructions` text DEFAULT NULL,
  `searchable` tinyint(1) NOT NULL DEFAULT 1,
  `translationMethod` varchar(255) NOT NULL DEFAULT 'none',
  `translationKeyFormat` text DEFAULT NULL,
  `type` varchar(255) NOT NULL,
  `settings` text DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `fields`
--

INSERT INTO `fields` (`id`, `groupId`, `name`, `handle`, `context`, `columnSuffix`, `instructions`, `searchable`, `translationMethod`, `translationKeyFormat`, `type`, `settings`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 1, 'Post Headline', 'postHeadline', 'global', 'lffxpplo', NULL, 0, 'none', NULL, 'craft\\fields\\PlainText', '{\"byteLimit\":null,\"charLimit\":null,\"code\":false,\"columnType\":null,\"initialRows\":4,\"multiline\":false,\"placeholder\":null,\"uiMode\":\"normal\"}', '2022-07-09 03:34:01', '2022-07-09 03:34:01', '293cac4b-bd6e-4c92-98ca-eb719b885cda'),
(2, 1, 'Post Short Text', 'postShortText', 'global', 'fdqywyjz', NULL, 0, 'none', NULL, 'craft\\fields\\PlainText', '{\"byteLimit\":null,\"charLimit\":null,\"code\":false,\"columnType\":null,\"initialRows\":2,\"multiline\":true,\"placeholder\":null,\"uiMode\":\"normal\"}', '2022-07-09 03:34:14', '2022-07-09 03:34:22', '907b94e8-b3cb-408b-a4ed-d497104b2d55'),
(3, 1, 'Post Image', 'postImage', 'global', NULL, NULL, 0, 'site', NULL, 'craft\\fields\\Assets', '{\"allowSelfRelations\":false,\"allowSubfolders\":false,\"allowUploads\":false,\"allowedKinds\":[\"image\"],\"defaultUploadLocationSource\":\"volume:cae04bf8-01a2-4040-b9cc-6584b31aaaae\",\"defaultUploadLocationSubpath\":null,\"localizeRelations\":false,\"maxRelations\":1,\"minRelations\":null,\"previewMode\":\"full\",\"restrictFiles\":true,\"restrictLocation\":false,\"restrictedDefaultUploadSubpath\":null,\"restrictedLocationSource\":\"volume:cae04bf8-01a2-4040-b9cc-6584b31aaaae\",\"restrictedLocationSubpath\":null,\"selectionCondition\":{\"elementType\":\"craft\\\\elements\\\\Asset\",\"fieldContext\":\"global\",\"class\":\"craft\\\\elements\\\\conditions\\\\assets\\\\AssetCondition\"},\"selectionLabel\":null,\"showSiteMenu\":false,\"showUnpermittedFiles\":false,\"showUnpermittedVolumes\":false,\"source\":null,\"sources\":\"*\",\"targetSiteId\":null,\"validateRelatedElements\":false,\"viewMode\":\"list\"}', '2022-07-09 03:35:04', '2022-07-09 03:35:04', 'be50f99b-b84e-45d6-99c6-9b79e5c52560'),
(4, 1, 'Post Rich Text', 'postRichText', 'global', 'khobvvwf', NULL, 0, 'none', NULL, 'craft\\redactor\\Field', '{\"uiMode\":\"enlarged\",\"redactorConfig\":null,\"availableVolumes\":\"*\",\"availableTransforms\":\"*\",\"showUnpermittedVolumes\":false,\"showUnpermittedFiles\":false,\"showHtmlButtonForNonAdmins\":false,\"configSelectionMode\":\"choose\",\"manualConfig\":\"\",\"defaultTransform\":\"\",\"purifierConfig\":null,\"removeInlineStyles\":false,\"removeEmptyTags\":false,\"removeNbsp\":false,\"purifyHtml\":true,\"columnType\":\"text\"}', '2022-07-09 03:38:40', '2022-07-09 03:57:18', '170b0e9a-f69f-46c0-810f-b14d6378d6fe'),
(5, 2, 'Author Name', 'authorName', 'global', 'jyxeuits', NULL, 0, 'none', NULL, 'craft\\fields\\PlainText', '{\"byteLimit\":null,\"charLimit\":null,\"code\":false,\"columnType\":null,\"initialRows\":4,\"multiline\":false,\"placeholder\":null,\"uiMode\":\"normal\"}', '2022-07-09 03:40:00', '2022-07-09 03:40:00', '530023de-e527-4210-9215-b3e3099b4402'),
(6, 2, 'Author Image', 'authorImage', 'global', NULL, NULL, 0, 'site', NULL, 'craft\\fields\\Assets', '{\"allowSelfRelations\":false,\"allowSubfolders\":false,\"allowUploads\":true,\"allowedKinds\":null,\"defaultUploadLocationSource\":\"volume:cae04bf8-01a2-4040-b9cc-6584b31aaaae\",\"defaultUploadLocationSubpath\":null,\"localizeRelations\":false,\"maxRelations\":1,\"minRelations\":null,\"previewMode\":\"full\",\"restrictFiles\":false,\"restrictLocation\":false,\"restrictedDefaultUploadSubpath\":null,\"restrictedLocationSource\":\"volume:cae04bf8-01a2-4040-b9cc-6584b31aaaae\",\"restrictedLocationSubpath\":null,\"selectionCondition\":{\"elementType\":\"craft\\\\elements\\\\Asset\",\"fieldContext\":\"global\",\"class\":\"craft\\\\elements\\\\conditions\\\\assets\\\\AssetCondition\"},\"selectionLabel\":null,\"showSiteMenu\":false,\"showUnpermittedFiles\":false,\"showUnpermittedVolumes\":false,\"source\":null,\"sources\":\"*\",\"targetSiteId\":null,\"validateRelatedElements\":false,\"viewMode\":\"list\"}', '2022-07-09 03:40:20', '2022-07-09 03:40:20', '913d328b-09f7-4108-8816-f81c35cb7d2a'),
(7, 1, 'Author Entry', 'authorEntry', 'global', NULL, NULL, 0, 'site', NULL, 'craft\\fields\\Entries', '{\"allowSelfRelations\":false,\"localizeRelations\":false,\"maxRelations\":1,\"minRelations\":1,\"selectionCondition\":{\"elementType\":\"craft\\\\elements\\\\Entry\",\"fieldContext\":\"global\",\"class\":\"craft\\\\elements\\\\conditions\\\\entries\\\\EntryCondition\"},\"selectionLabel\":\"Add The Author\",\"showSiteMenu\":false,\"source\":null,\"sources\":[\"section:8032f6af-316d-418e-ab60-c0ce3c7f60f9\"],\"targetSiteId\":null,\"validateRelatedElements\":false,\"viewMode\":null}', '2022-07-09 03:41:53', '2022-07-09 03:41:53', '3cfc0ef4-6ff2-433b-a452-2d40f9bc5988'),
(8, 1, 'Blog Category', 'blogCategory', 'global', NULL, NULL, 0, 'site', NULL, 'craft\\fields\\Categories', '{\"allowLimit\":false,\"allowMultipleSources\":false,\"allowSelfRelations\":false,\"branchLimit\":1,\"localizeRelations\":false,\"maxRelations\":null,\"minRelations\":null,\"selectionLabel\":null,\"showSiteMenu\":false,\"source\":\"group:7b44a9da-6f5d-4f88-a792-23abfa8d885f\",\"sources\":\"*\",\"targetSiteId\":null,\"validateRelatedElements\":false,\"viewMode\":null}', '2022-07-09 03:45:24', '2022-07-09 03:45:24', '5477467a-150b-4bea-ad59-e1f19719c73f'),
(9, 1, 'Post Company', 'postCompany', 'global', NULL, NULL, 0, 'site', NULL, 'craft\\fields\\Categories', '{\"allowLimit\":false,\"allowMultipleSources\":false,\"allowSelfRelations\":false,\"branchLimit\":1,\"localizeRelations\":false,\"maxRelations\":null,\"minRelations\":null,\"selectionLabel\":null,\"showSiteMenu\":false,\"source\":\"group:3d8e84b0-a04d-41aa-b0b1-03a2b6171be0\",\"sources\":\"*\",\"targetSiteId\":null,\"validateRelatedElements\":false,\"viewMode\":null}', '2022-07-09 03:54:04', '2022-07-09 03:54:04', '879b8fb2-8367-4ee2-846e-bd38b886d605'),
(10, 1, 'Content Post', 'contentPost', 'global', NULL, NULL, 0, 'site', NULL, 'craft\\fields\\Matrix', '{\"minBlocks\":1,\"maxBlocks\":null,\"contentTable\":\"{{%matrixcontent_contentpost}}\",\"propagationMethod\":\"all\",\"propagationKeyFormat\":null}', '2022-07-09 04:38:24', '2022-07-09 08:43:16', 'e1d6a3d2-955b-42e4-bcf0-ae40fbffba4f'),
(11, NULL, 'Title', 'titleText', 'matrixBlockType:bc85457f-240f-437f-b96f-c024374ead45', 'hscgklex', NULL, 0, 'none', NULL, 'craft\\fields\\PlainText', '{\"byteLimit\":null,\"charLimit\":null,\"code\":false,\"columnType\":null,\"initialRows\":4,\"multiline\":false,\"placeholder\":null,\"uiMode\":\"normal\"}', '2022-07-09 04:38:24', '2022-07-09 04:38:24', 'b2c25602-4953-49fc-a0ce-8fdac961d57b'),
(12, NULL, 'Descriptions', 'descriptions', 'matrixBlockType:bc85457f-240f-437f-b96f-c024374ead45', 'xgfjoona', NULL, 0, 'none', NULL, 'craft\\redactor\\Field', '{\"availableTransforms\":\"*\",\"availableVolumes\":\"*\",\"columnType\":\"text\",\"configSelectionMode\":\"choose\",\"defaultTransform\":\"\",\"manualConfig\":\"\",\"purifierConfig\":null,\"purifyHtml\":true,\"redactorConfig\":null,\"removeEmptyTags\":false,\"removeInlineStyles\":false,\"removeNbsp\":false,\"showHtmlButtonForNonAdmins\":false,\"showUnpermittedFiles\":false,\"showUnpermittedVolumes\":false,\"uiMode\":\"enlarged\"}', '2022-07-09 04:38:24', '2022-07-09 04:38:24', 'b9a06d06-813d-4c92-bfab-1f6be8e4ed07'),
(13, 3, 'Job Detail', 'jobDetail', 'global', NULL, NULL, 0, 'site', NULL, 'verbb\\supertable\\fields\\SuperTableField', '{\"blockTypeFields\":0,\"changedFieldIndicator\":2021789422,\"columns\":{\"2855e71a-4ab6-45e5-b716-fe4cfc071f33\":{\"width\":\"\"},\"9583ec6a-d404-475a-8632-f57bf1d4aa04\":{\"width\":\"\"},\"4c833b87-8963-49bf-b039-fb9029ebcfa6\":{\"width\":\"\"},\"e9361ffe-b7e5-47e5-b505-06837d3a9487\":{\"width\":\"\"},\"26f05fc1-ee8e-4be8-95cb-ee95fc0ba4ea\":{\"width\":\"\"}},\"contentTable\":\"{{%stc_jobdetail}}\",\"fieldLayout\":\"row\",\"maxRows\":null,\"minRows\":null,\"propagationKeyFormat\":null,\"propagationMethod\":\"all\",\"selectionLabel\":null,\"staticField\":true}', '2022-07-09 04:40:39', '2022-07-12 18:40:02', '9b168937-c11f-4a7e-9741-f9d6aa77c9d0'),
(14, NULL, 'Experience', 'experience', 'superTableBlockType:f33818e5-598e-4133-80af-07ea7ac337ef', NULL, NULL, 0, 'none', NULL, 'craft\\fields\\PlainText', '{\"byteLimit\":null,\"charLimit\":null,\"code\":false,\"columnType\":null,\"initialRows\":4,\"multiline\":false,\"placeholder\":null,\"uiMode\":\"normal\"}', '2022-07-09 04:40:39', '2022-07-09 07:35:10', '4c833b87-8963-49bf-b039-fb9029ebcfa6'),
(15, NULL, 'Location', 'location', 'superTableBlockType:f33818e5-598e-4133-80af-07ea7ac337ef', NULL, NULL, 0, 'none', NULL, 'craft\\fields\\PlainText', '{\"byteLimit\":null,\"charLimit\":null,\"code\":false,\"columnType\":null,\"initialRows\":4,\"multiline\":false,\"placeholder\":null,\"uiMode\":\"normal\"}', '2022-07-09 04:40:39', '2022-07-09 07:35:10', '2855e71a-4ab6-45e5-b716-fe4cfc071f33'),
(16, NULL, 'Duration', 'duration', 'superTableBlockType:f33818e5-598e-4133-80af-07ea7ac337ef', NULL, NULL, 0, 'none', NULL, 'craft\\fields\\PlainText', '{\"byteLimit\":null,\"charLimit\":null,\"code\":false,\"columnType\":null,\"initialRows\":4,\"multiline\":false,\"placeholder\":null,\"uiMode\":\"normal\"}', '2022-07-09 04:40:39', '2022-07-09 07:35:11', '9583ec6a-d404-475a-8632-f57bf1d4aa04'),
(17, NULL, 'Start Date', 'startDate', 'superTableBlockType:f33818e5-598e-4133-80af-07ea7ac337ef', NULL, NULL, 0, 'none', NULL, 'craft\\fields\\Date', '{\"max\":null,\"min\":null,\"minuteIncrement\":30,\"showDate\":true,\"showTime\":false,\"showTimeZone\":false}', '2022-07-09 04:40:39', '2022-07-09 07:35:11', 'e9361ffe-b7e5-47e5-b505-06837d3a9487'),
(21, 1, 'Post Banner', 'postBanner', 'global', NULL, NULL, 0, 'site', NULL, 'verbb\\supertable\\fields\\SuperTableField', '{\"blockTypeFields\":0,\"changedFieldIndicator\":105007311,\"columns\":{\"7d14fb5f-7ea2-4695-95f7-923c9bbd3fb8\":{\"width\":\"\"},\"987bd29f-6646-4a74-958b-01ebb601675b\":{\"width\":\"\"},\"1d7dc4a5-fcb3-477b-93d2-0adc9b88ccb6\":{\"width\":\"\"}},\"contentTable\":\"{{%stc_postbanner}}\",\"fieldLayout\":\"matrix\",\"maxRows\":null,\"minRows\":null,\"propagationKeyFormat\":null,\"propagationMethod\":\"all\",\"selectionLabel\":null,\"staticField\":true}', '2022-07-09 04:52:12', '2022-07-13 15:57:46', 'c969cea5-b5b1-408f-a797-8806df0c5402'),
(22, NULL, 'Button Url', 'buttonUrl', 'superTableBlockType:ba5406f8-567b-4ae1-8d90-b0fc6c47dbf7', NULL, NULL, 0, 'none', NULL, 'lenz\\linkfield\\fields\\LinkField', '{\"allowCustomText\":true,\"allowTarget\":false,\"autoNoReferrer\":false,\"customTextMaxLength\":0,\"customTextRequired\":false,\"defaultLinkName\":\"entry\",\"defaultText\":\"Jetzt lesen\",\"enableAllLinkTypes\":false,\"enableAriaLabel\":false,\"enableElementCache\":false,\"enableTitle\":false,\"typeSettings\":{\"asset\":{\"allowCrossSiteLink\":false,\"allowCustomQuery\":false,\"enabled\":false,\"sources\":\"*\"},\"category\":{\"allowCrossSiteLink\":false,\"allowCustomQuery\":false,\"enabled\":false,\"sources\":\"*\"},\"custom\":{\"allowAliases\":false,\"disableValidation\":false,\"enabled\":false},\"email\":{\"allowAliases\":false,\"disableValidation\":false,\"enabled\":false},\"entry\":{\"allowCrossSiteLink\":false,\"allowCustomQuery\":false,\"enabled\":true,\"sources\":\"*\"},\"site\":{\"enabled\":false,\"sites\":\"*\"},\"tel\":{\"allowAliases\":false,\"disableValidation\":false,\"enabled\":false},\"url\":{\"allowAliases\":false,\"disableValidation\":false,\"enabled\":true},\"user\":{\"allowCrossSiteLink\":false,\"allowCustomQuery\":false,\"enabled\":false,\"sources\":\"*\"}}}', '2022-07-09 04:52:12', '2022-07-13 15:57:46', '1d7dc4a5-fcb3-477b-93d2-0adc9b88ccb6'),
(23, NULL, 'Headline', 'headline', 'superTableBlockType:ba5406f8-567b-4ae1-8d90-b0fc6c47dbf7', NULL, NULL, 0, 'none', NULL, 'craft\\fields\\PlainText', '{\"byteLimit\":null,\"charLimit\":null,\"code\":false,\"columnType\":null,\"initialRows\":4,\"multiline\":false,\"placeholder\":null,\"uiMode\":\"normal\"}', '2022-07-09 04:52:12', '2022-07-09 07:31:11', '7d14fb5f-7ea2-4695-95f7-923c9bbd3fb8'),
(25, NULL, 'Short Text', 'shortText', 'superTableBlockType:ba5406f8-567b-4ae1-8d90-b0fc6c47dbf7', NULL, NULL, 0, 'none', NULL, 'craft\\fields\\PlainText', '{\"byteLimit\":null,\"charLimit\":null,\"code\":false,\"columnType\":null,\"initialRows\":4,\"multiline\":false,\"placeholder\":null,\"uiMode\":\"normal\"}', '2022-07-09 04:52:12', '2022-07-09 07:31:11', '987bd29f-6646-4a74-958b-01ebb601675b'),
(27, 1, 'Sofware Category', 'sofwareCategory', 'global', NULL, NULL, 0, 'site', NULL, 'craft\\fields\\Categories', '{\"allowLimit\":false,\"allowMultipleSources\":false,\"allowSelfRelations\":false,\"branchLimit\":1,\"localizeRelations\":false,\"maxRelations\":null,\"minRelations\":null,\"selectionLabel\":null,\"showSiteMenu\":false,\"source\":\"group:8bbb286a-ac71-4e2a-8a91-3dbff9e26b3d\",\"sources\":\"*\",\"targetSiteId\":null,\"validateRelatedElements\":false,\"viewMode\":null}', '2022-07-09 07:31:41', '2022-07-09 07:31:41', 'c1d9166e-5308-4e91-9bf1-5618717bdcd8'),
(28, NULL, 'Button', 'button', 'superTableBlockType:f33818e5-598e-4133-80af-07ea7ac337ef', NULL, NULL, 0, 'none', NULL, 'lenz\\linkfield\\fields\\LinkField', '{\"allowCustomText\":true,\"allowTarget\":false,\"autoNoReferrer\":false,\"customTextMaxLength\":0,\"customTextRequired\":false,\"defaultLinkName\":\"entry\",\"defaultText\":\"Jetzt bewerben\",\"enableAllLinkTypes\":false,\"enableAriaLabel\":false,\"enableElementCache\":false,\"enableTitle\":false,\"typeSettings\":{\"asset\":{\"allowCrossSiteLink\":false,\"allowCustomQuery\":false,\"enabled\":false,\"sources\":\"*\"},\"category\":{\"allowCrossSiteLink\":false,\"allowCustomQuery\":false,\"enabled\":false,\"sources\":\"*\"},\"custom\":{\"allowAliases\":false,\"disableValidation\":false,\"enabled\":false},\"email\":{\"allowAliases\":false,\"disableValidation\":false,\"enabled\":false},\"entry\":{\"allowCrossSiteLink\":false,\"allowCustomQuery\":false,\"enabled\":true,\"sources\":\"*\"},\"site\":{\"enabled\":false,\"sites\":\"*\"},\"tel\":{\"allowAliases\":false,\"disableValidation\":false,\"enabled\":false},\"url\":{\"allowAliases\":false,\"disableValidation\":false,\"enabled\":true},\"user\":{\"allowCrossSiteLink\":false,\"allowCustomQuery\":false,\"enabled\":false,\"sources\":\"*\"}}}', '2022-07-09 07:35:10', '2022-07-12 18:40:02', '26f05fc1-ee8e-4be8-95cb-ee95fc0ba4ea'),
(29, NULL, 'Title Button', 'titleButton', 'matrixBlockType:b9db48ea-9351-4304-8538-27a6064de37e', 'rjdlnmli', NULL, 0, 'none', NULL, 'craft\\fields\\PlainText', '{\"byteLimit\":null,\"charLimit\":null,\"code\":false,\"columnType\":null,\"initialRows\":4,\"multiline\":false,\"placeholder\":null,\"uiMode\":\"normal\"}', '2022-07-09 07:35:10', '2022-07-09 07:35:10', '39a78532-3890-491b-bacb-c9efe356997a'),
(30, NULL, 'Url Button', 'urlButton', 'matrixBlockType:b9db48ea-9351-4304-8538-27a6064de37e', 'xukdyhkz', NULL, 0, 'none', NULL, 'craft\\fields\\Url', '{\"maxLength\":255,\"types\":[\"url\"]}', '2022-07-09 07:35:10', '2022-07-09 07:35:10', '2505b2b0-2821-445f-a8cc-a6c902395ae1'),
(33, 1, 'Button', 'button', 'global', NULL, NULL, 0, 'none', NULL, 'lenz\\linkfield\\fields\\LinkField', '{\"allowCustomText\":true,\"allowTarget\":false,\"autoNoReferrer\":false,\"customTextMaxLength\":0,\"customTextRequired\":false,\"defaultLinkName\":\"entry\",\"defaultText\":\"Mehr Informationen\",\"enableAllLinkTypes\":false,\"enableAriaLabel\":false,\"enableElementCache\":false,\"enableTitle\":false,\"typeSettings\":{\"asset\":{\"allowCrossSiteLink\":false,\"allowCustomQuery\":false,\"enabled\":false,\"sources\":\"*\"},\"category\":{\"allowCrossSiteLink\":false,\"allowCustomQuery\":false,\"enabled\":false,\"sources\":\"*\"},\"custom\":{\"allowAliases\":false,\"disableValidation\":false,\"enabled\":false},\"email\":{\"allowAliases\":false,\"disableValidation\":false,\"enabled\":false},\"entry\":{\"allowCrossSiteLink\":false,\"allowCustomQuery\":false,\"enabled\":true,\"sources\":\"*\"},\"site\":{\"enabled\":false,\"sites\":\"*\"},\"tel\":{\"allowAliases\":false,\"disableValidation\":false,\"enabled\":false},\"url\":{\"allowAliases\":false,\"disableValidation\":false,\"enabled\":true},\"user\":{\"allowCrossSiteLink\":false,\"allowCustomQuery\":false,\"enabled\":false,\"sources\":\"*\"}}}', '2022-07-12 18:20:21', '2022-07-12 18:23:10', '7acc60ca-d954-466f-9d9c-79ecb579ed62');

-- --------------------------------------------------------

--
-- Table structure for table `globalsets`
--

CREATE TABLE `globalsets` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `handle` varchar(255) NOT NULL,
  `fieldLayoutId` int(11) DEFAULT NULL,
  `sortOrder` smallint(6) UNSIGNED DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `gqlschemas`
--

CREATE TABLE `gqlschemas` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `scope` text DEFAULT NULL,
  `isPublic` tinyint(1) NOT NULL DEFAULT 0,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `gqltokens`
--

CREATE TABLE `gqltokens` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `accessToken` varchar(255) NOT NULL,
  `enabled` tinyint(1) NOT NULL DEFAULT 1,
  `expiryDate` datetime DEFAULT NULL,
  `lastUsed` datetime DEFAULT NULL,
  `schemaId` int(11) DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `imagetransformindex`
--

CREATE TABLE `imagetransformindex` (
  `id` int(11) NOT NULL,
  `assetId` int(11) NOT NULL,
  `transformer` varchar(255) DEFAULT NULL,
  `filename` varchar(255) DEFAULT NULL,
  `format` varchar(255) DEFAULT NULL,
  `transformString` varchar(255) NOT NULL,
  `fileExists` tinyint(1) NOT NULL DEFAULT 0,
  `inProgress` tinyint(1) NOT NULL DEFAULT 0,
  `error` tinyint(1) NOT NULL DEFAULT 0,
  `dateIndexed` datetime DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `imagetransformindex`
--

INSERT INTO `imagetransformindex` (`id`, `assetId`, `transformer`, `filename`, `format`, `transformString`, `fileExists`, `inProgress`, `error`, `dateIndexed`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 62, 'craft\\imagetransforms\\ImageTransformer', 'craft.jpg', NULL, '_34x17_crop_center-center_none', 1, 0, 0, NULL, '2022-07-12 16:45:08', '2022-07-12 16:45:09', '8f78218d-13d9-4071-9b85-66edc9605d52'),
(2, 62, 'craft\\imagetransforms\\ImageTransformer', 'craft.jpg', NULL, '_68x35_crop_center-center_none', 1, 0, 0, NULL, '2022-07-12 16:45:08', '2022-07-12 16:45:12', '9741a713-ff3d-4e6e-9508-e38e197fa944'),
(3, 351, 'craft\\imagetransforms\\ImageTransformer', 'icon_teams.png', NULL, '_33x34_crop_center-center_none', 1, 0, 0, NULL, '2022-07-14 14:35:51', '2022-07-14 14:35:51', 'd0d92123-31b2-4606-b7b0-28f081d7e5a9'),
(4, 351, 'craft\\imagetransforms\\ImageTransformer', 'icon_teams.png', NULL, '_66x68_crop_center-center_none', 1, 0, 0, NULL, '2022-07-14 14:35:51', '2022-07-14 14:35:51', 'd5c90936-9dc9-4335-8c2b-76eafd0cfff7'),
(5, 390, 'craft\\imagetransforms\\ImageTransformer', 'icon_sharepoint.png', NULL, '_34x33_crop_center-center_none', 1, 0, 0, NULL, '2022-07-14 15:24:09', '2022-07-14 15:24:10', '0d3f6d32-ffb6-40a8-a037-a9c8c373aa37'),
(6, 390, 'craft\\imagetransforms\\ImageTransformer', 'icon_sharepoint.png', NULL, '_68x66_crop_center-center_none', 1, 0, 0, NULL, '2022-07-14 15:24:09', '2022-07-14 15:24:10', 'ad493496-a24e-4edd-ac31-c774783fff55'),
(7, 391, 'craft\\imagetransforms\\ImageTransformer', 'icon_word.png', NULL, '_33x34_crop_center-center_none', 1, 0, 0, NULL, '2022-07-14 15:24:09', '2022-07-14 15:24:10', '6150d843-1b52-492e-84df-44674142f8cf'),
(8, 391, 'craft\\imagetransforms\\ImageTransformer', 'icon_word.png', NULL, '_66x68_crop_center-center_none', 1, 0, 0, NULL, '2022-07-14 15:24:09', '2022-07-14 15:24:10', 'eaa01982-7517-4363-87de-d89fa2a5dcb1'),
(9, 386, 'craft\\imagetransforms\\ImageTransformer', 'icon_onedrive.png', NULL, '_34x21_crop_center-center_none', 1, 0, 0, NULL, '2022-07-14 15:24:09', '2022-07-14 15:24:10', '172fbb5d-be3e-495a-b6cd-9f8542bf7352'),
(10, 386, 'craft\\imagetransforms\\ImageTransformer', 'icon_onedrive.png', NULL, '_68x43_crop_center-center_none', 1, 0, 0, NULL, '2022-07-14 15:24:09', '2022-07-14 15:24:10', 'b7a4f127-8ec1-4140-9146-ddff84930a72'),
(11, 387, 'craft\\imagetransforms\\ImageTransformer', 'icon_onenote.png', NULL, '_34x32_crop_center-center_none', 1, 0, 0, NULL, '2022-07-14 15:24:09', '2022-07-14 15:24:10', '5d30546d-ef18-4112-99a2-14d4b83d515f'),
(12, 387, 'craft\\imagetransforms\\ImageTransformer', 'icon_onenote.png', NULL, '_68x64_crop_center-center_none', 1, 0, 0, NULL, '2022-07-14 15:24:09', '2022-07-14 15:24:11', '27976ea5-9f5c-4304-8195-fefeb58f3c6a'),
(13, 388, 'craft\\imagetransforms\\ImageTransformer', 'icon_outlook.png', NULL, '_34x32_crop_center-center_none', 1, 0, 0, NULL, '2022-07-14 15:24:09', '2022-07-14 15:24:10', 'c0beb528-e644-472d-9df8-aff52a2bec92'),
(14, 388, 'craft\\imagetransforms\\ImageTransformer', 'icon_outlook.png', NULL, '_68x64_crop_center-center_none', 1, 0, 0, NULL, '2022-07-14 15:24:09', '2022-07-14 15:24:11', '749c0e6c-a885-49e0-94c0-272b98210105'),
(15, 389, 'craft\\imagetransforms\\ImageTransformer', 'icon_planner.png', NULL, '_28x34_crop_center-center_none', 1, 0, 0, NULL, '2022-07-14 15:24:09', '2022-07-14 15:24:10', 'deb2bf6d-d149-49fb-9632-d3f5d3fdccfa'),
(16, 389, 'craft\\imagetransforms\\ImageTransformer', 'icon_planner.png', NULL, '_56x68_crop_center-center_none', 1, 0, 0, NULL, '2022-07-14 15:24:09', '2022-07-14 15:24:11', 'beb0575a-67f0-4ed6-b5c8-d5d89b287ba2'),
(17, 383, 'craft\\imagetransforms\\ImageTransformer', 'icon_excel.png', NULL, '_33x34_crop_center-center_none', 1, 0, 0, NULL, '2022-07-14 15:24:09', '2022-07-14 15:24:11', 'ec8b48cb-e44a-4153-9f2c-120af1e6a632'),
(18, 383, 'craft\\imagetransforms\\ImageTransformer', 'icon_excel.png', NULL, '_66x68_crop_center-center_none', 1, 0, 0, NULL, '2022-07-14 15:24:09', '2022-07-14 15:24:11', '8501917f-80a2-4324-8bce-da0d9ddd4fcd'),
(19, 384, 'craft\\imagetransforms\\ImageTransformer', 'icon_forms.png', NULL, '_34x31_crop_center-center_none', 1, 0, 0, NULL, '2022-07-14 15:24:09', '2022-07-14 15:24:11', '16b50786-91c8-451e-a7bb-df32e1fd0938'),
(20, 384, 'craft\\imagetransforms\\ImageTransformer', 'icon_forms.png', NULL, '_68x62_crop_center-center_none', 1, 0, 0, NULL, '2022-07-14 15:24:09', '2022-07-14 15:24:11', 'd1de9492-18e1-407a-86ec-404aea6f3981'),
(21, 385, 'craft\\imagetransforms\\ImageTransformer', 'icon_office.png', NULL, '_34x34_crop_center-center_none', 1, 0, 0, NULL, '2022-07-14 15:24:09', '2022-07-14 15:24:11', '566e788d-34e4-4b09-b9ef-59b454383cc6'),
(22, 385, 'craft\\imagetransforms\\ImageTransformer', 'icon_office.png', NULL, '_68x68_crop_center-center_none', 1, 0, 0, NULL, '2022-07-14 15:24:09', '2022-07-14 15:24:11', 'ec9c0538-ad82-4d14-bcc2-be0db8716605'),
(23, 508, 'craft\\imagetransforms\\ImageTransformer', 'icon_todo.png', NULL, '_34x28_crop_center-center_none', 1, 0, 0, NULL, '2022-07-14 15:31:34', '2022-07-14 15:31:34', 'cf73657c-ab5d-43ac-bd4e-d7bd06c7925a'),
(24, 508, 'craft\\imagetransforms\\ImageTransformer', 'icon_todo.png', NULL, '_68x57_crop_center-center_none', 1, 0, 0, NULL, '2022-07-14 15:31:34', '2022-07-14 15:31:45', 'c670b597-6713-4c57-9e44-5780b5254175'),
(25, 538, 'craft\\imagetransforms\\ImageTransformer', 'image_jobs1.jpg', NULL, '_34x25_crop_center-center_none', 1, 0, 0, NULL, '2022-07-14 15:54:41', '2022-07-14 15:54:41', '917adea4-a577-4b69-8374-92a4eecdc954'),
(26, 538, 'craft\\imagetransforms\\ImageTransformer', 'image_jobs1.jpg', NULL, '_68x50_crop_center-center_none', 1, 0, 0, NULL, '2022-07-14 15:54:41', '2022-07-14 15:55:00', '86cc98dd-1d6e-4947-b25a-abda772c7387'),
(27, 543, 'craft\\imagetransforms\\ImageTransformer', 'image_workplace2-p-500.jpeg', NULL, '_34x25_crop_center-center_none', 1, 0, 0, NULL, '2022-07-14 16:20:21', '2022-07-14 16:20:21', 'bbc8c895-d982-4260-a71c-2fc4ec9f45c6'),
(28, 543, 'craft\\imagetransforms\\ImageTransformer', 'image_workplace2-p-500.jpeg', NULL, '_68x50_crop_center-center_none', 1, 0, 0, NULL, '2022-07-14 16:20:21', '2022-07-14 16:20:22', 'c4dd86e8-fbae-4c0e-ab81-c6348478e1f9'),
(29, 567, 'craft\\imagetransforms\\ImageTransformer', 'Image-1-min.png', NULL, '_34x25_crop_center-center_none', 1, 0, 0, NULL, '2022-07-14 16:26:17', '2022-07-14 16:26:17', '7f407686-cbc1-439b-bc41-98347be72ac1'),
(30, 567, 'craft\\imagetransforms\\ImageTransformer', 'Image-1-min.png', NULL, '_68x50_crop_center-center_none', 1, 0, 0, NULL, '2022-07-14 16:26:17', '2022-07-14 16:29:34', '6ae4df57-b032-4159-bf3b-18d39ae5f905');

-- --------------------------------------------------------

--
-- Table structure for table `imagetransforms`
--

CREATE TABLE `imagetransforms` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `handle` varchar(255) NOT NULL,
  `mode` enum('stretch','fit','crop') NOT NULL DEFAULT 'crop',
  `position` enum('top-left','top-center','top-right','center-left','center-center','center-right','bottom-left','bottom-center','bottom-right') NOT NULL DEFAULT 'center-center',
  `width` int(11) UNSIGNED DEFAULT NULL,
  `height` int(11) UNSIGNED DEFAULT NULL,
  `format` varchar(255) DEFAULT NULL,
  `quality` int(11) DEFAULT NULL,
  `interlace` enum('none','line','plane','partition') NOT NULL DEFAULT 'none',
  `parameterChangeTime` datetime DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `info`
--

CREATE TABLE `info` (
  `id` int(11) NOT NULL,
  `version` varchar(50) NOT NULL,
  `schemaVersion` varchar(15) NOT NULL,
  `maintenance` tinyint(1) NOT NULL DEFAULT 0,
  `configVersion` char(12) NOT NULL DEFAULT '000000000000',
  `fieldVersion` char(12) NOT NULL DEFAULT '000000000000',
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `info`
--

INSERT INTO `info` (`id`, `version`, `schemaVersion`, `maintenance`, `configVersion`, `fieldVersion`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, '4.1.3', '4.0.0.9', 0, 'ctsyzhhqgfca', '3@qijsobzblt', '2022-07-08 13:30:51', '2022-07-14 14:57:26', '3e6f8bcf-bfaf-484f-8ccf-9fed2bf4d932');

-- --------------------------------------------------------

--
-- Table structure for table `lenz_linkfield`
--

CREATE TABLE `lenz_linkfield` (
  `id` int(11) NOT NULL,
  `elementId` int(11) NOT NULL,
  `fieldId` int(11) NOT NULL,
  `siteId` int(11) NOT NULL,
  `type` varchar(63) DEFAULT NULL,
  `linkedUrl` text DEFAULT NULL,
  `linkedId` int(11) DEFAULT NULL,
  `linkedSiteId` int(11) DEFAULT NULL,
  `linkedTitle` varchar(255) DEFAULT NULL,
  `payload` text DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `lenz_linkfield`
--

INSERT INTO `lenz_linkfield` (`id`, `elementId`, `fieldId`, `siteId`, `type`, `linkedUrl`, `linkedId`, `linkedSiteId`, `linkedTitle`, `payload`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(16, 42, 33, 1, '', NULL, NULL, NULL, NULL, NULL, '2022-07-12 18:26:12', '2022-07-12 18:33:24', 'fde3ae6b-0183-4dc9-b20a-e30065fabf94'),
(17, 128, 33, 1, 'entry', NULL, 53, NULL, NULL, '[]', '2022-07-12 18:26:12', '2022-07-12 18:26:12', 'a0a204d2-0cba-4e40-9235-460ba8375e7c'),
(19, 134, 33, 1, 'entry', NULL, NULL, NULL, NULL, NULL, '2022-07-12 18:33:07', '2022-07-12 18:33:07', 'e9148d73-144e-44a8-9d73-15ced45a80bf'),
(20, 139, 33, 1, '', NULL, NULL, NULL, NULL, NULL, '2022-07-12 18:33:24', '2022-07-12 18:33:24', 'd5bd4efc-67dd-4867-822b-32b2eeb0d5af'),
(21, 144, 33, 1, '', NULL, NULL, NULL, NULL, NULL, '2022-07-12 18:34:53', '2022-07-12 18:34:53', '6f1a84cb-c99d-44ea-bf1a-9edd791feea4'),
(23, 32, 33, 1, 'entry', NULL, 51, NULL, NULL, '{\"customText\":\"Jetzt bewerben\"}', '2022-07-12 18:39:02', '2022-07-12 18:39:02', '080f3965-3951-4b68-a80b-74da30c41f32'),
(24, 151, 33, 1, 'entry', NULL, 51, NULL, NULL, '{\"customText\":\"Jetzt bewerben\"}', '2022-07-12 18:39:02', '2022-07-12 18:39:02', 'b7d4379f-292e-4c89-864d-eb9d62487067'),
(26, 157, 33, 1, 'entry', NULL, 51, NULL, NULL, '{\"customText\":\"Jetzt bewerben\"}', '2022-07-12 18:41:33', '2022-07-12 18:41:33', '70810d50-8af4-49e7-b952-bb2f955096c8'),
(27, 158, 28, 1, '', NULL, NULL, NULL, NULL, NULL, '2022-07-12 18:41:33', '2022-07-12 18:41:33', 'a6fc9c72-bb0a-4904-9afc-38676d57bbdf'),
(30, 33, 28, 1, 'entry', NULL, 170, NULL, NULL, '[]', '2022-07-12 18:48:25', '2022-07-13 16:01:47', 'fbaab445-b76d-4250-a263-a4cdabf2c032'),
(31, 163, 33, 1, 'entry', NULL, 51, NULL, NULL, '{\"customText\":\"Jetzt bewerben\"}', '2022-07-12 18:48:25', '2022-07-12 18:48:25', '9d22f6d1-1eec-4377-8c72-aeae299215ce'),
(32, 164, 28, 1, 'entry', NULL, 32, NULL, NULL, '[]', '2022-07-12 18:48:25', '2022-07-12 18:48:25', '2d458ff1-8a32-445e-bd4a-97a4d3c5869b'),
(34, 174, 22, 1, 'entry', NULL, 32, NULL, NULL, '[]', '2022-07-13 15:58:26', '2022-07-13 16:02:22', '462ef513-0a43-4a28-9374-497f800d97d5'),
(35, 176, 22, 1, 'entry', NULL, NULL, NULL, NULL, NULL, '2022-07-13 15:58:26', '2022-07-13 15:58:26', '1020c4c3-eff4-4dd2-acb9-24d363624ca6'),
(38, 179, 33, 1, 'entry', NULL, 51, NULL, NULL, '{\"customText\":\"Jetzt bewerben\"}', '2022-07-13 16:01:47', '2022-07-13 16:01:47', '1a3fed4c-8e67-4a81-abfa-120edab4e6a8'),
(39, 180, 28, 1, 'entry', NULL, 170, NULL, NULL, '[]', '2022-07-13 16:01:47', '2022-07-13 16:01:47', '90fae891-ed1d-4adb-a87a-de113693463c'),
(41, 186, 22, 1, 'entry', NULL, 32, NULL, NULL, '[]', '2022-07-13 16:02:22', '2022-07-13 16:02:22', 'ebdd5c0f-38fd-44e7-a93a-a3dddc23731c'),
(42, 188, 22, 1, 'entry', NULL, 32, NULL, NULL, '[]', '2022-07-13 16:03:03', '2022-07-13 16:03:03', '82dcd1c2-3a5a-4a86-8301-9b681496271e'),
(43, 5, 33, 1, 'entry', NULL, 168, NULL, NULL, '[]', '2022-07-13 16:04:57', '2022-07-13 16:07:48', '56b2b4d5-06f8-424c-8aef-8d84c8f0c6d0'),
(44, 189, 33, 1, '', NULL, NULL, NULL, NULL, NULL, '2022-07-13 16:04:57', '2022-07-13 16:04:57', '2f7e569e-2334-4586-935a-1e7c4fcd07c0'),
(46, 191, 33, 1, '', NULL, NULL, NULL, NULL, NULL, '2022-07-13 16:05:11', '2022-07-13 16:05:11', '81eef65f-cb93-4f97-98b5-35f1c99192df'),
(48, 193, 33, 1, 'entry', NULL, 168, NULL, NULL, '[]', '2022-07-13 16:07:48', '2022-07-13 16:07:48', '24121b03-5738-4220-8074-34ecaca17293'),
(49, 10, 33, 1, '', NULL, NULL, NULL, NULL, NULL, '2022-07-13 16:19:37', '2022-07-13 16:19:37', '16da8cda-c450-4778-ab31-96139b4cccae'),
(50, 194, 33, 1, '', NULL, NULL, NULL, NULL, NULL, '2022-07-13 16:19:37', '2022-07-13 16:19:37', '601f8003-2acd-447c-8098-5ba153963b02'),
(51, 195, 33, 1, '', NULL, NULL, NULL, NULL, NULL, '2022-07-13 16:19:57', '2022-07-13 16:19:57', 'bd1959e0-b6a7-41fe-8cea-f49093469435'),
(53, 197, 33, 1, '', NULL, NULL, NULL, NULL, NULL, '2022-07-13 16:20:08', '2022-07-13 16:20:08', 'de274f3f-a3dc-473c-a636-7604d299cc7a'),
(54, 210, 33, 1, 'entry', NULL, 51, NULL, NULL, '{\"customText\":\"Jetzt bewerben\"}', '2022-07-13 17:17:49', '2022-07-13 17:17:49', 'abba1e14-71a8-48a1-b2ab-4b03b3b2b07e'),
(55, 211, 28, 1, 'entry', NULL, 170, NULL, NULL, '[]', '2022-07-13 17:17:49', '2022-07-13 17:17:49', 'aeb0137a-6e12-4319-8561-cc6a9ce14f64'),
(56, 214, 33, 1, 'entry', NULL, 51, NULL, NULL, '{\"customText\":\"Jetzt bewerben\"}', '2022-07-13 17:17:49', '2022-07-13 17:17:49', '10d18bda-0aaa-4934-87fd-f6ce0d1307ca'),
(57, 215, 28, 1, 'entry', NULL, 170, NULL, NULL, '[]', '2022-07-13 17:17:49', '2022-07-13 17:17:49', 'db151e46-8013-4c2d-9d72-363edeae0770'),
(58, 224, 33, 1, '', NULL, NULL, NULL, NULL, NULL, '2022-07-13 19:12:41', '2022-07-13 19:12:41', '2eb5decd-627f-40e0-ae49-83c0f5924611'),
(59, 225, 22, 1, '', NULL, NULL, NULL, NULL, NULL, '2022-07-13 19:12:41', '2022-07-13 19:12:41', '5cba9943-3767-4a02-8a01-edfba3fae0c1'),
(60, 229, 33, 1, '', NULL, NULL, NULL, NULL, NULL, '2022-07-13 19:12:41', '2022-07-13 19:12:41', 'ce4b43b4-93fd-4218-b964-8f14f96dc447'),
(61, 230, 22, 1, '', NULL, NULL, NULL, NULL, NULL, '2022-07-13 19:12:41', '2022-07-13 19:12:41', '16e2c18c-ee73-4f34-8776-8b9808f42b75'),
(62, 234, 33, 1, '', NULL, NULL, NULL, NULL, NULL, '2022-07-13 19:12:43', '2022-07-13 19:12:43', '61d3a11e-26f2-461a-9b7d-767247978943'),
(63, 235, 22, 1, '', NULL, NULL, NULL, NULL, NULL, '2022-07-13 19:12:43', '2022-07-13 19:12:43', '5e951c21-f212-4863-b95b-3cca4124405c'),
(64, 239, 33, 1, '', NULL, NULL, NULL, NULL, NULL, '2022-07-13 19:12:43', '2022-07-13 19:12:43', 'b81abb3c-5b39-49ae-acb3-346968871a0f'),
(65, 240, 22, 1, '', NULL, NULL, NULL, NULL, NULL, '2022-07-13 19:12:43', '2022-07-13 19:12:43', '50bb80d9-7b14-42a5-9f2b-2a4dba4e26f6'),
(66, 244, 33, 1, '', NULL, NULL, NULL, NULL, NULL, '2022-07-13 19:12:45', '2022-07-13 19:12:45', 'cbaf22be-ac0d-4846-b201-5d8cb61cedd1'),
(67, 245, 22, 1, '', NULL, NULL, NULL, NULL, NULL, '2022-07-13 19:12:45', '2022-07-13 19:12:45', '7f9168db-dda9-459c-ad81-65a4c5aa9058'),
(68, 249, 33, 1, '', NULL, NULL, NULL, NULL, NULL, '2022-07-13 19:12:45', '2022-07-13 19:12:45', '3809c2b1-1572-456f-b3ae-f9a3e71c9e3d'),
(69, 250, 22, 1, '', NULL, NULL, NULL, NULL, NULL, '2022-07-13 19:12:45', '2022-07-13 19:12:45', 'b6a5d4e0-732f-4b5f-8e3e-7ea2792eae05'),
(70, 254, 33, 1, '', NULL, NULL, NULL, NULL, NULL, '2022-07-13 19:12:46', '2022-07-13 19:12:46', '7986da8b-c53d-4c8a-8893-cd5aed493d46'),
(71, 255, 22, 1, '', NULL, NULL, NULL, NULL, NULL, '2022-07-13 19:12:46', '2022-07-13 19:12:46', '13ea8d21-3c00-4d8c-bddd-436f854aaff6'),
(72, 259, 33, 1, '', NULL, NULL, NULL, NULL, NULL, '2022-07-13 19:12:46', '2022-07-13 19:12:46', '3fc2ba83-6da5-40cf-bf45-f25141279ade'),
(73, 260, 22, 1, '', NULL, NULL, NULL, NULL, NULL, '2022-07-13 19:12:46', '2022-07-13 19:12:46', '9b80aa1c-8f18-48e4-a6bb-1f163064f649'),
(74, 264, 33, 1, '', NULL, NULL, NULL, NULL, NULL, '2022-07-13 19:12:48', '2022-07-13 19:12:48', '96365e47-2a19-4d8f-9131-64b02ed75895'),
(75, 265, 22, 1, '', NULL, NULL, NULL, NULL, NULL, '2022-07-13 19:12:48', '2022-07-13 19:12:48', '64e6985b-fd19-48d3-bfdb-30e0731329a5'),
(76, 269, 33, 1, '', NULL, NULL, NULL, NULL, NULL, '2022-07-13 19:12:48', '2022-07-13 19:12:48', '8bbd8094-027d-438b-9501-178b4ceb2cf5'),
(77, 270, 22, 1, '', NULL, NULL, NULL, NULL, NULL, '2022-07-13 19:12:48', '2022-07-13 19:12:48', '55ac60a9-e86c-4d15-9b01-4f8a146c8b22'),
(78, 274, 33, 1, '', NULL, NULL, NULL, NULL, NULL, '2022-07-13 19:12:50', '2022-07-13 19:12:50', '48f7c48f-11d4-40c0-8ee4-0d367ff93c9f'),
(79, 275, 22, 1, '', NULL, NULL, NULL, NULL, NULL, '2022-07-13 19:12:50', '2022-07-13 19:12:50', 'bd1d9886-fc93-494d-9d7f-25f81dab8d21'),
(80, 279, 33, 1, '', NULL, NULL, NULL, NULL, NULL, '2022-07-13 19:12:50', '2022-07-13 19:12:50', '35997066-2500-4fcb-b94f-d204b18df8ca'),
(81, 280, 22, 1, '', NULL, NULL, NULL, NULL, NULL, '2022-07-13 19:12:50', '2022-07-13 19:12:50', '1c7c26b7-b859-4508-a4c2-057b8df38ecd'),
(82, 284, 33, 1, '', NULL, NULL, NULL, NULL, NULL, '2022-07-13 19:12:51', '2022-07-13 19:12:51', '8d0ddb68-5b5f-42d4-aa50-a38c2423554c'),
(83, 285, 22, 1, '', NULL, NULL, NULL, NULL, NULL, '2022-07-13 19:12:51', '2022-07-13 19:12:51', '825ef54e-9f5c-4677-ae67-e4059eb3f175'),
(84, 289, 33, 1, '', NULL, NULL, NULL, NULL, NULL, '2022-07-13 19:12:51', '2022-07-13 19:12:51', '78b12554-8eea-4380-9147-18e061c54d56'),
(85, 290, 22, 1, '', NULL, NULL, NULL, NULL, NULL, '2022-07-13 19:12:51', '2022-07-13 19:12:51', '682776b2-d62d-43ba-805b-5623243feda4'),
(86, 294, 33, 1, '', NULL, NULL, NULL, NULL, NULL, '2022-07-13 19:12:53', '2022-07-13 19:12:53', 'd7e93238-fd2c-4d42-b9d9-12f37cf101e7'),
(87, 295, 22, 1, '', NULL, NULL, NULL, NULL, NULL, '2022-07-13 19:12:53', '2022-07-13 19:12:53', 'd404e5dd-fc89-4da8-a13b-a4c2cfd422f5'),
(88, 299, 33, 1, '', NULL, NULL, NULL, NULL, NULL, '2022-07-13 19:12:53', '2022-07-13 19:12:53', 'c3615ed4-3d57-45ad-88a9-eeb2a1189558'),
(89, 300, 22, 1, '', NULL, NULL, NULL, NULL, NULL, '2022-07-13 19:12:53', '2022-07-13 19:12:53', 'ca6dcf5f-ccb3-4f2a-b1f4-fc21b6022ded'),
(91, 313, 33, 1, '', NULL, NULL, NULL, NULL, NULL, '2022-07-14 13:25:26', '2022-07-14 13:25:26', 'b64ff8e1-0293-416e-8029-b62a96704719'),
(92, 314, 22, 1, '', NULL, NULL, NULL, NULL, NULL, '2022-07-14 13:25:26', '2022-07-14 13:25:26', '9e6ca866-0317-42a0-958e-73a9c1c182c8'),
(93, 43, 22, 1, '', NULL, NULL, NULL, NULL, NULL, '2022-07-14 14:21:42', '2022-07-14 14:21:42', '9a796c81-478b-4329-b12d-3ef310273c31'),
(96, 352, 33, 1, '', NULL, NULL, NULL, NULL, NULL, '2022-07-14 14:36:18', '2022-07-14 14:36:18', 'fa9e75d4-e1ed-42d4-8fd1-ea68eecfd4a2'),
(97, 353, 22, 1, '', NULL, NULL, NULL, NULL, NULL, '2022-07-14 14:36:18', '2022-07-14 14:36:18', 'a50e25e0-3185-421c-83fe-ef6d6a15058c'),
(99, 358, 33, 1, '', NULL, NULL, NULL, NULL, NULL, '2022-07-14 14:43:20', '2022-07-14 14:43:20', '27d3048b-2a08-480c-9962-ef61acf01d2d'),
(100, 359, 22, 1, '', NULL, NULL, NULL, NULL, NULL, '2022-07-14 14:43:20', '2022-07-14 14:43:20', 'd9044e16-fe0c-42b0-9b8b-c8971b755bb2'),
(102, 364, 33, 1, '', NULL, NULL, NULL, NULL, NULL, '2022-07-14 14:49:12', '2022-07-14 14:49:12', '7e70c8e0-625c-499a-9858-344d08082ba7'),
(103, 365, 22, 1, '', NULL, NULL, NULL, NULL, NULL, '2022-07-14 14:49:12', '2022-07-14 14:49:12', '41761691-36c7-4103-869a-00c34cc8df0f'),
(106, 377, 33, 1, '', NULL, NULL, NULL, NULL, NULL, '2022-07-14 15:22:32', '2022-07-14 15:22:32', 'c35575cd-b767-4dcf-8c12-127a138af26e'),
(107, 378, 22, 1, '', NULL, NULL, NULL, NULL, NULL, '2022-07-14 15:22:32', '2022-07-14 15:22:32', '5fda8415-faa0-44b8-88e1-5bdabc9b79d8'),
(109, 392, 33, 1, '', NULL, NULL, NULL, NULL, NULL, '2022-07-14 15:24:15', '2022-07-14 15:24:15', 'deb7dcd4-c587-47ac-95ab-d9631034e8fb'),
(110, 393, 22, 1, '', NULL, NULL, NULL, NULL, NULL, '2022-07-14 15:24:15', '2022-07-14 15:24:15', 'c579a605-feaa-435c-808f-5fdcf66a8688'),
(113, 399, 33, 1, '', NULL, NULL, NULL, NULL, NULL, '2022-07-14 15:25:06', '2022-07-14 15:25:06', '97ec4948-c23b-45bd-8d24-8bd9e900ddc7'),
(114, 400, 22, 1, '', NULL, NULL, NULL, NULL, NULL, '2022-07-14 15:25:06', '2022-07-14 15:25:06', '22787dbb-8f54-4d70-91ef-7977b1123166'),
(117, 406, 33, 1, '', NULL, NULL, NULL, NULL, NULL, '2022-07-14 15:26:05', '2022-07-14 15:26:05', 'e3bb4eb7-eb57-4f79-a279-d8c1d0cd5e7f'),
(118, 407, 22, 1, '', NULL, NULL, NULL, NULL, NULL, '2022-07-14 15:26:05', '2022-07-14 15:26:05', '6d0dcec9-e094-46ea-bea6-9d2721221e48'),
(119, 411, 33, 1, 'entry', NULL, NULL, NULL, NULL, NULL, '2022-07-14 15:26:05', '2022-07-14 15:26:05', 'dff04510-34bc-433c-8c35-e802168c1d95'),
(121, 413, 22, 1, '', NULL, NULL, NULL, NULL, NULL, '2022-07-14 15:26:25', '2022-07-14 15:26:25', 'ee2e1c24-4185-4e60-aa73-7ffdb82b4132'),
(122, 415, 22, 1, '', NULL, NULL, NULL, NULL, NULL, '2022-07-14 15:26:31', '2022-07-14 15:26:31', 'b2a0754a-4bda-4436-b736-afcd610ddf6a'),
(124, 417, 33, 1, '', NULL, NULL, NULL, NULL, NULL, '2022-07-14 15:27:00', '2022-07-14 15:27:00', 'a249356c-ee21-4685-9167-c7a98c2744cf'),
(125, 418, 22, 1, '', NULL, NULL, NULL, NULL, NULL, '2022-07-14 15:27:00', '2022-07-14 15:27:00', '84c762c9-3610-4282-9cb9-1a445848b025'),
(126, 422, 33, 1, '', NULL, NULL, NULL, NULL, NULL, '2022-07-14 15:27:00', '2022-07-14 15:27:00', '7f2f126d-1254-4323-a029-cf7ae600c50f'),
(127, 423, 22, 1, '', NULL, NULL, NULL, NULL, NULL, '2022-07-14 15:27:00', '2022-07-14 15:27:00', '7de8a9fc-399f-4650-a0f4-d1e834603efc'),
(128, 427, 33, 1, '', NULL, NULL, NULL, NULL, NULL, '2022-07-14 15:27:03', '2022-07-14 15:27:03', '6c3dbc2e-d3fd-48e2-a6e7-b849ae56be85'),
(129, 428, 22, 1, '', NULL, NULL, NULL, NULL, NULL, '2022-07-14 15:27:03', '2022-07-14 15:27:03', '21718256-18dd-4471-8e1d-c86741a08ced'),
(130, 432, 33, 1, '', NULL, NULL, NULL, NULL, NULL, '2022-07-14 15:27:03', '2022-07-14 15:27:03', '29b5925f-c706-4382-a954-46f717f9d3ae'),
(131, 433, 22, 1, '', NULL, NULL, NULL, NULL, NULL, '2022-07-14 15:27:03', '2022-07-14 15:27:03', '0ac0a750-b301-4521-b9f4-ab478978c8cb'),
(132, 437, 33, 1, '', NULL, NULL, NULL, NULL, NULL, '2022-07-14 15:27:05', '2022-07-14 15:27:05', '70f7ca11-117d-4c3e-8449-d49cf129c053'),
(133, 438, 22, 1, '', NULL, NULL, NULL, NULL, NULL, '2022-07-14 15:27:05', '2022-07-14 15:27:05', '1a9cdd22-ec4e-42cf-ab58-ba48d625c88d'),
(134, 442, 33, 1, '', NULL, NULL, NULL, NULL, NULL, '2022-07-14 15:27:05', '2022-07-14 15:27:05', '6965f6f6-3cae-49f5-86b4-d28e94ee0fc6'),
(135, 443, 22, 1, '', NULL, NULL, NULL, NULL, NULL, '2022-07-14 15:27:05', '2022-07-14 15:27:05', '94ddfbc4-69a9-4a22-a133-98d03604f44a'),
(136, 447, 33, 1, '', NULL, NULL, NULL, NULL, NULL, '2022-07-14 15:27:07', '2022-07-14 15:27:07', 'd143ace7-badf-449c-8bc3-824abfdf4b84'),
(137, 448, 22, 1, '', NULL, NULL, NULL, NULL, NULL, '2022-07-14 15:27:07', '2022-07-14 15:27:07', 'fd4090a6-1c0a-449a-9246-3dc1f8715dd7'),
(138, 452, 33, 1, '', NULL, NULL, NULL, NULL, NULL, '2022-07-14 15:27:07', '2022-07-14 15:27:07', 'e8a28c02-6793-410f-869e-8d85cf71b1e7'),
(139, 453, 22, 1, '', NULL, NULL, NULL, NULL, NULL, '2022-07-14 15:27:07', '2022-07-14 15:27:07', '7e8e4860-d5a5-4ad6-ae7d-baba4fbeb9d6'),
(140, 457, 33, 1, '', NULL, NULL, NULL, NULL, NULL, '2022-07-14 15:27:10', '2022-07-14 15:27:10', 'a0c6ac26-b6d3-456c-bff3-fd0f5c2c6eb5'),
(141, 458, 22, 1, '', NULL, NULL, NULL, NULL, NULL, '2022-07-14 15:27:10', '2022-07-14 15:27:10', '4cb7174c-45a1-499a-b9ba-65b80eecc097'),
(142, 462, 33, 1, '', NULL, NULL, NULL, NULL, NULL, '2022-07-14 15:27:10', '2022-07-14 15:27:10', '28df6554-d06a-4687-9daf-42352c0e00a7'),
(143, 463, 22, 1, '', NULL, NULL, NULL, NULL, NULL, '2022-07-14 15:27:10', '2022-07-14 15:27:10', '13c5589f-fb35-4d89-8e7a-94f92c583002'),
(145, 468, 33, 1, '', NULL, NULL, NULL, NULL, NULL, '2022-07-14 15:27:27', '2022-07-14 15:27:27', '42cb7482-ad3e-4a52-be51-163565d08356'),
(146, 469, 22, 1, '', NULL, NULL, NULL, NULL, NULL, '2022-07-14 15:27:27', '2022-07-14 15:27:27', 'f4007533-d3b4-4d2f-92a2-aeba925fc66a'),
(149, 475, 33, 1, '', NULL, NULL, NULL, NULL, NULL, '2022-07-14 15:28:02', '2022-07-14 15:28:02', '3ed4a51c-ea75-4e8f-becf-d3655aaa66ff'),
(150, 476, 22, 1, '', NULL, NULL, NULL, NULL, NULL, '2022-07-14 15:28:02', '2022-07-14 15:28:02', '3766ffc1-5cc6-49cd-8239-45b60dcb0614'),
(153, 482, 33, 1, '', NULL, NULL, NULL, NULL, NULL, '2022-07-14 15:28:28', '2022-07-14 15:28:28', 'bc766926-7b0c-499e-87d9-14b22eeb2d54'),
(154, 483, 22, 1, '', NULL, NULL, NULL, NULL, NULL, '2022-07-14 15:28:28', '2022-07-14 15:28:28', '7ee3d779-a7a4-4b5b-a068-93148762d496'),
(156, 488, 33, 1, '', NULL, NULL, NULL, NULL, NULL, '2022-07-14 15:28:39', '2022-07-14 15:28:39', '4e16c645-9c77-4e9f-be40-612245e9a4e3'),
(157, 489, 22, 1, '', NULL, NULL, NULL, NULL, NULL, '2022-07-14 15:28:39', '2022-07-14 15:28:39', 'c6876bf4-9267-472f-b292-0406ce795807'),
(160, 495, 33, 1, '', NULL, NULL, NULL, NULL, NULL, '2022-07-14 15:29:14', '2022-07-14 15:29:14', 'ba6885e1-3edd-4a2f-b4d1-7ee908b7d478'),
(161, 496, 22, 1, '', NULL, NULL, NULL, NULL, NULL, '2022-07-14 15:29:14', '2022-07-14 15:29:14', '597f23a4-7fdf-4699-ae4a-5f9670a6a465'),
(164, 502, 33, 1, '', NULL, NULL, NULL, NULL, NULL, '2022-07-14 15:29:53', '2022-07-14 15:29:53', 'c930a81d-97ec-49c0-8d1c-f38e4b766cea'),
(165, 503, 22, 1, '', NULL, NULL, NULL, NULL, NULL, '2022-07-14 15:29:53', '2022-07-14 15:29:53', '80690c10-256c-439d-836c-14caf58186a5'),
(168, 510, 33, 1, '', NULL, NULL, NULL, NULL, NULL, '2022-07-14 15:31:44', '2022-07-14 15:31:44', 'd0a9003e-db75-49dd-b64a-d943fd964cda'),
(169, 511, 22, 1, '', NULL, NULL, NULL, NULL, NULL, '2022-07-14 15:31:44', '2022-07-14 15:31:44', '519b1efb-63ad-41fb-bf36-79199c78bf4e'),
(171, 516, 33, 1, '', NULL, NULL, NULL, NULL, NULL, '2022-07-14 15:34:09', '2022-07-14 15:34:09', 'd5385431-ddef-4341-a7f8-e666dfd9e033'),
(172, 517, 22, 1, '', NULL, NULL, NULL, NULL, NULL, '2022-07-14 15:34:09', '2022-07-14 15:34:09', 'aa5a18b3-09fe-4637-92e8-4cbc5d76a3d9'),
(173, 521, 33, 1, '', NULL, NULL, NULL, NULL, NULL, '2022-07-14 15:43:34', '2022-07-14 15:43:34', '7d50e4bc-9de9-45ed-84f0-2a9f2ea553bc'),
(174, 522, 22, 1, '', NULL, NULL, NULL, NULL, NULL, '2022-07-14 15:43:34', '2022-07-14 15:43:34', '7d479945-9c7e-46ea-a20e-dc7ef09e4296'),
(175, 526, 33, 1, '', NULL, NULL, NULL, NULL, NULL, '2022-07-14 15:43:34', '2022-07-14 15:43:34', 'af186b9f-a2f0-4718-8ba5-ae9671499309'),
(176, 527, 22, 1, '', NULL, NULL, NULL, NULL, NULL, '2022-07-14 15:43:34', '2022-07-14 15:43:34', '8f4210cc-5467-4849-8dc5-118b477b15a7'),
(178, 532, 33, 1, '', NULL, NULL, NULL, NULL, NULL, '2022-07-14 15:44:08', '2022-07-14 15:44:08', '4984e59a-cb3b-4b79-842b-43d67894e3b7'),
(179, 533, 22, 1, '', NULL, NULL, NULL, NULL, NULL, '2022-07-14 15:44:08', '2022-07-14 15:44:08', 'a83f70d1-229b-4023-acaf-7df08f9f2b5a'),
(181, 546, 33, 1, 'entry', NULL, 51, NULL, NULL, '{\"customText\":\"Jetzt bewerben\"}', '2022-07-14 16:20:47', '2022-07-14 16:20:47', 'a3d9b537-92dc-48a0-b78c-6afe711c4c41'),
(182, 547, 28, 1, 'entry', NULL, 170, NULL, NULL, '[]', '2022-07-14 16:20:47', '2022-07-14 16:20:47', '5c1d495b-639c-4b5a-9b44-10da1d83698e'),
(184, 551, 33, 1, 'entry', NULL, 51, NULL, NULL, '{\"customText\":\"Jetzt bewerben\"}', '2022-07-14 16:21:12', '2022-07-14 16:21:12', '683b95f0-daed-47ec-9c3e-a065e7030491'),
(185, 552, 28, 1, 'entry', NULL, 170, NULL, NULL, '[]', '2022-07-14 16:21:12', '2022-07-14 16:21:12', 'f091e6fe-1bbf-4fc8-81ce-9b91a67b6f9a'),
(187, 569, 33, 1, '', NULL, NULL, NULL, NULL, NULL, '2022-07-14 16:26:20', '2022-07-14 16:26:20', '402df992-d7c9-4370-b3b4-a1e735ddf818'),
(189, 571, 33, 1, 'entry', NULL, 168, NULL, NULL, '[]', '2022-07-14 16:30:11', '2022-07-14 16:30:11', 'c0a56f97-2521-4bc7-acbe-f4891a006204');

-- --------------------------------------------------------

--
-- Table structure for table `matrixblocks`
--

CREATE TABLE `matrixblocks` (
  `id` int(11) NOT NULL,
  `primaryOwnerId` int(11) NOT NULL,
  `fieldId` int(11) NOT NULL,
  `typeId` int(11) NOT NULL,
  `deletedWithOwner` tinyint(1) DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `matrixblocks`
--

INSERT INTO `matrixblocks` (`id`, `primaryOwnerId`, `fieldId`, `typeId`, `deletedWithOwner`, `dateCreated`, `dateUpdated`) VALUES
(34, 33, 28, 2, NULL, '2022-07-09 07:36:16', '2022-07-09 07:36:16'),
(35, 32, 10, 1, NULL, '2022-07-09 07:36:16', '2022-07-09 07:36:16'),
(36, 32, 10, 1, 0, '2022-07-09 07:36:16', '2022-07-09 07:36:16'),
(48, 47, 28, 2, NULL, '2022-07-11 14:10:15', '2022-07-11 14:10:15'),
(49, 46, 10, 1, NULL, '2022-07-11 14:10:15', '2022-07-11 14:10:15'),
(82, 42, 10, 1, NULL, '2022-07-12 18:04:11', '2022-07-12 18:04:11'),
(85, 83, 10, 1, NULL, '2022-07-12 18:04:11', '2022-07-12 18:04:11'),
(118, 42, 10, 1, NULL, '2022-07-12 18:16:04', '2022-07-12 18:16:04'),
(119, 42, 10, 1, NULL, '2022-07-12 18:16:04', '2022-07-12 18:16:04'),
(123, 121, 10, 1, NULL, '2022-07-12 18:16:04', '2022-07-12 18:16:04'),
(124, 121, 10, 1, NULL, '2022-07-12 18:16:04', '2022-07-12 18:16:04'),
(125, 121, 10, 1, NULL, '2022-07-12 18:16:04', '2022-07-12 18:16:04'),
(130, 128, 10, 1, NULL, '2022-07-12 18:26:12', '2022-07-12 18:26:12'),
(131, 128, 10, 1, NULL, '2022-07-12 18:26:12', '2022-07-12 18:26:12'),
(132, 128, 10, 1, NULL, '2022-07-12 18:26:12', '2022-07-12 18:26:12'),
(136, 134, 10, 1, NULL, '2022-07-12 18:33:07', '2022-07-12 18:33:07'),
(137, 134, 10, 1, NULL, '2022-07-12 18:33:07', '2022-07-12 18:33:07'),
(138, 134, 10, 1, NULL, '2022-07-12 18:33:07', '2022-07-12 18:33:07'),
(141, 139, 10, 1, NULL, '2022-07-12 18:33:24', '2022-07-12 18:33:24'),
(142, 139, 10, 1, NULL, '2022-07-12 18:33:24', '2022-07-12 18:33:24'),
(143, 139, 10, 1, NULL, '2022-07-12 18:33:24', '2022-07-12 18:33:24'),
(146, 144, 10, 1, NULL, '2022-07-12 18:34:53', '2022-07-12 18:34:53'),
(147, 144, 10, 1, NULL, '2022-07-12 18:34:53', '2022-07-12 18:34:53'),
(148, 144, 10, 1, NULL, '2022-07-12 18:34:53', '2022-07-12 18:34:53'),
(150, 32, 10, 1, NULL, '2022-07-12 18:39:02', '2022-07-12 18:39:02'),
(153, 152, 28, 2, NULL, '2022-07-12 18:39:02', '2022-07-12 18:39:02'),
(154, 151, 10, 1, NULL, '2022-07-12 18:39:02', '2022-07-12 18:39:02'),
(155, 151, 10, 1, NULL, '2022-07-12 18:39:02', '2022-07-12 18:39:02'),
(159, 157, 10, 1, NULL, '2022-07-12 18:41:33', '2022-07-12 18:41:33'),
(160, 157, 10, 1, NULL, '2022-07-12 18:41:33', '2022-07-12 18:41:33'),
(165, 163, 10, 1, NULL, '2022-07-12 18:48:25', '2022-07-12 18:48:25'),
(166, 163, 10, 1, NULL, '2022-07-12 18:48:25', '2022-07-12 18:48:25'),
(181, 179, 10, 1, NULL, '2022-07-13 16:01:47', '2022-07-13 16:01:47'),
(182, 179, 10, 1, NULL, '2022-07-13 16:01:47', '2022-07-13 16:01:47'),
(212, 210, 10, 1, NULL, '2022-07-13 17:17:49', '2022-07-13 17:17:49'),
(213, 210, 10, 1, NULL, '2022-07-13 17:17:49', '2022-07-13 17:17:49'),
(216, 214, 10, 1, NULL, '2022-07-13 17:17:49', '2022-07-13 17:17:49'),
(217, 214, 10, 1, NULL, '2022-07-13 17:17:49', '2022-07-13 17:17:49'),
(226, 224, 10, 1, NULL, '2022-07-13 19:12:41', '2022-07-13 19:12:41'),
(227, 224, 10, 1, NULL, '2022-07-13 19:12:41', '2022-07-13 19:12:41'),
(228, 224, 10, 1, NULL, '2022-07-13 19:12:41', '2022-07-13 19:12:41'),
(231, 229, 10, 1, NULL, '2022-07-13 19:12:41', '2022-07-13 19:12:41'),
(232, 229, 10, 1, NULL, '2022-07-13 19:12:41', '2022-07-13 19:12:41'),
(233, 229, 10, 1, NULL, '2022-07-13 19:12:41', '2022-07-13 19:12:41'),
(236, 234, 10, 1, NULL, '2022-07-13 19:12:43', '2022-07-13 19:12:43'),
(237, 234, 10, 1, NULL, '2022-07-13 19:12:43', '2022-07-13 19:12:43'),
(238, 234, 10, 1, NULL, '2022-07-13 19:12:43', '2022-07-13 19:12:43'),
(241, 239, 10, 1, NULL, '2022-07-13 19:12:43', '2022-07-13 19:12:43'),
(242, 239, 10, 1, NULL, '2022-07-13 19:12:43', '2022-07-13 19:12:43'),
(243, 239, 10, 1, NULL, '2022-07-13 19:12:43', '2022-07-13 19:12:43'),
(246, 244, 10, 1, NULL, '2022-07-13 19:12:45', '2022-07-13 19:12:45'),
(247, 244, 10, 1, NULL, '2022-07-13 19:12:45', '2022-07-13 19:12:45'),
(248, 244, 10, 1, NULL, '2022-07-13 19:12:45', '2022-07-13 19:12:45'),
(251, 249, 10, 1, NULL, '2022-07-13 19:12:45', '2022-07-13 19:12:45'),
(252, 249, 10, 1, NULL, '2022-07-13 19:12:45', '2022-07-13 19:12:45'),
(253, 249, 10, 1, NULL, '2022-07-13 19:12:45', '2022-07-13 19:12:45'),
(256, 254, 10, 1, 1, '2022-07-13 19:12:46', '2022-07-13 19:12:46'),
(257, 254, 10, 1, 1, '2022-07-13 19:12:46', '2022-07-13 19:12:46'),
(258, 254, 10, 1, 1, '2022-07-13 19:12:46', '2022-07-13 19:12:46'),
(261, 259, 10, 1, NULL, '2022-07-13 19:12:46', '2022-07-13 19:12:46'),
(262, 259, 10, 1, NULL, '2022-07-13 19:12:46', '2022-07-13 19:12:46'),
(263, 259, 10, 1, NULL, '2022-07-13 19:12:46', '2022-07-13 19:12:46'),
(266, 264, 10, 1, 1, '2022-07-13 19:12:48', '2022-07-13 19:12:48'),
(267, 264, 10, 1, 1, '2022-07-13 19:12:48', '2022-07-13 19:12:48'),
(268, 264, 10, 1, 1, '2022-07-13 19:12:48', '2022-07-13 19:12:48'),
(271, 269, 10, 1, NULL, '2022-07-13 19:12:48', '2022-07-13 19:12:48'),
(272, 269, 10, 1, NULL, '2022-07-13 19:12:48', '2022-07-13 19:12:48'),
(273, 269, 10, 1, NULL, '2022-07-13 19:12:48', '2022-07-13 19:12:48'),
(276, 274, 10, 1, 1, '2022-07-13 19:12:50', '2022-07-13 19:12:50'),
(277, 274, 10, 1, 1, '2022-07-13 19:12:50', '2022-07-13 19:12:50'),
(278, 274, 10, 1, 1, '2022-07-13 19:12:50', '2022-07-13 19:12:50'),
(281, 279, 10, 1, NULL, '2022-07-13 19:12:50', '2022-07-13 19:12:50'),
(282, 279, 10, 1, NULL, '2022-07-13 19:12:50', '2022-07-13 19:12:50'),
(283, 279, 10, 1, NULL, '2022-07-13 19:12:50', '2022-07-13 19:12:50'),
(286, 284, 10, 1, 1, '2022-07-13 19:12:51', '2022-07-13 19:12:51'),
(287, 284, 10, 1, 1, '2022-07-13 19:12:51', '2022-07-13 19:12:51'),
(288, 284, 10, 1, 1, '2022-07-13 19:12:51', '2022-07-13 19:12:51'),
(291, 289, 10, 1, NULL, '2022-07-13 19:12:51', '2022-07-13 19:12:51'),
(292, 289, 10, 1, NULL, '2022-07-13 19:12:51', '2022-07-13 19:12:51'),
(293, 289, 10, 1, NULL, '2022-07-13 19:12:51', '2022-07-13 19:12:51'),
(296, 294, 10, 1, 1, '2022-07-13 19:12:53', '2022-07-13 19:12:53'),
(297, 294, 10, 1, 1, '2022-07-13 19:12:53', '2022-07-13 19:12:53'),
(298, 294, 10, 1, 1, '2022-07-13 19:12:53', '2022-07-13 19:12:53'),
(301, 299, 10, 1, NULL, '2022-07-13 19:12:53', '2022-07-13 19:12:53'),
(302, 299, 10, 1, NULL, '2022-07-13 19:12:53', '2022-07-13 19:12:53'),
(303, 299, 10, 1, NULL, '2022-07-13 19:12:53', '2022-07-13 19:12:53'),
(315, 313, 10, 1, NULL, '2022-07-14 13:25:27', '2022-07-14 13:25:27'),
(316, 313, 10, 1, NULL, '2022-07-14 13:25:27', '2022-07-14 13:25:27'),
(317, 313, 10, 1, NULL, '2022-07-14 13:25:27', '2022-07-14 13:25:27'),
(344, 322, 10, 1, NULL, '2022-07-14 14:12:13', '2022-07-14 14:12:13'),
(345, 322, 10, 1, NULL, '2022-07-14 14:12:13', '2022-07-14 14:12:13'),
(347, 346, 10, 1, NULL, '2022-07-14 14:12:13', '2022-07-14 14:12:13'),
(348, 346, 10, 1, NULL, '2022-07-14 14:12:13', '2022-07-14 14:12:13'),
(354, 352, 10, 1, NULL, '2022-07-14 14:36:18', '2022-07-14 14:36:18'),
(355, 352, 10, 1, NULL, '2022-07-14 14:36:18', '2022-07-14 14:36:18'),
(356, 352, 10, 1, NULL, '2022-07-14 14:36:18', '2022-07-14 14:36:18'),
(360, 358, 10, 1, NULL, '2022-07-14 14:43:20', '2022-07-14 14:43:20'),
(361, 358, 10, 1, NULL, '2022-07-14 14:43:20', '2022-07-14 14:43:20'),
(362, 358, 10, 1, NULL, '2022-07-14 14:43:20', '2022-07-14 14:43:20'),
(366, 364, 10, 1, NULL, '2022-07-14 14:49:12', '2022-07-14 14:49:12'),
(367, 364, 10, 1, NULL, '2022-07-14 14:49:12', '2022-07-14 14:49:12'),
(368, 364, 10, 1, NULL, '2022-07-14 14:49:12', '2022-07-14 14:49:12'),
(379, 377, 10, 1, NULL, '2022-07-14 15:22:32', '2022-07-14 15:22:32'),
(380, 377, 10, 1, NULL, '2022-07-14 15:22:32', '2022-07-14 15:22:32'),
(381, 377, 10, 1, NULL, '2022-07-14 15:22:32', '2022-07-14 15:22:32'),
(394, 392, 10, 1, NULL, '2022-07-14 15:24:15', '2022-07-14 15:24:15'),
(395, 392, 10, 1, NULL, '2022-07-14 15:24:15', '2022-07-14 15:24:15'),
(396, 392, 10, 1, NULL, '2022-07-14 15:24:15', '2022-07-14 15:24:15'),
(401, 399, 10, 1, NULL, '2022-07-14 15:25:06', '2022-07-14 15:25:06'),
(402, 399, 10, 1, NULL, '2022-07-14 15:25:06', '2022-07-14 15:25:06'),
(403, 399, 10, 1, NULL, '2022-07-14 15:25:06', '2022-07-14 15:25:06'),
(408, 406, 10, 1, NULL, '2022-07-14 15:26:05', '2022-07-14 15:26:05'),
(409, 406, 10, 1, NULL, '2022-07-14 15:26:05', '2022-07-14 15:26:05'),
(410, 406, 10, 1, NULL, '2022-07-14 15:26:05', '2022-07-14 15:26:05'),
(419, 417, 10, 1, NULL, '2022-07-14 15:27:00', '2022-07-14 15:27:00'),
(420, 417, 10, 1, NULL, '2022-07-14 15:27:00', '2022-07-14 15:27:00'),
(421, 417, 10, 1, NULL, '2022-07-14 15:27:00', '2022-07-14 15:27:00'),
(424, 422, 10, 1, NULL, '2022-07-14 15:27:00', '2022-07-14 15:27:00'),
(425, 422, 10, 1, NULL, '2022-07-14 15:27:00', '2022-07-14 15:27:00'),
(426, 422, 10, 1, NULL, '2022-07-14 15:27:00', '2022-07-14 15:27:00'),
(429, 427, 10, 1, NULL, '2022-07-14 15:27:03', '2022-07-14 15:27:03'),
(430, 427, 10, 1, NULL, '2022-07-14 15:27:03', '2022-07-14 15:27:03'),
(431, 427, 10, 1, NULL, '2022-07-14 15:27:03', '2022-07-14 15:27:03'),
(434, 432, 10, 1, NULL, '2022-07-14 15:27:03', '2022-07-14 15:27:03'),
(435, 432, 10, 1, NULL, '2022-07-14 15:27:03', '2022-07-14 15:27:03'),
(436, 432, 10, 1, NULL, '2022-07-14 15:27:03', '2022-07-14 15:27:03'),
(439, 437, 10, 1, NULL, '2022-07-14 15:27:05', '2022-07-14 15:27:05'),
(440, 437, 10, 1, NULL, '2022-07-14 15:27:05', '2022-07-14 15:27:05'),
(441, 437, 10, 1, NULL, '2022-07-14 15:27:05', '2022-07-14 15:27:05'),
(444, 442, 10, 1, NULL, '2022-07-14 15:27:05', '2022-07-14 15:27:05'),
(445, 442, 10, 1, NULL, '2022-07-14 15:27:05', '2022-07-14 15:27:05'),
(446, 442, 10, 1, NULL, '2022-07-14 15:27:05', '2022-07-14 15:27:05'),
(449, 447, 10, 1, NULL, '2022-07-14 15:27:07', '2022-07-14 15:27:07'),
(450, 447, 10, 1, NULL, '2022-07-14 15:27:07', '2022-07-14 15:27:07'),
(451, 447, 10, 1, NULL, '2022-07-14 15:27:07', '2022-07-14 15:27:07'),
(454, 452, 10, 1, NULL, '2022-07-14 15:27:07', '2022-07-14 15:27:07'),
(455, 452, 10, 1, NULL, '2022-07-14 15:27:07', '2022-07-14 15:27:07'),
(456, 452, 10, 1, NULL, '2022-07-14 15:27:07', '2022-07-14 15:27:07'),
(459, 457, 10, 1, NULL, '2022-07-14 15:27:10', '2022-07-14 15:27:10'),
(460, 457, 10, 1, NULL, '2022-07-14 15:27:10', '2022-07-14 15:27:10'),
(461, 457, 10, 1, NULL, '2022-07-14 15:27:10', '2022-07-14 15:27:10'),
(464, 462, 10, 1, NULL, '2022-07-14 15:27:10', '2022-07-14 15:27:10'),
(465, 462, 10, 1, NULL, '2022-07-14 15:27:10', '2022-07-14 15:27:10'),
(466, 462, 10, 1, NULL, '2022-07-14 15:27:10', '2022-07-14 15:27:10'),
(470, 468, 10, 1, NULL, '2022-07-14 15:27:27', '2022-07-14 15:27:27'),
(471, 468, 10, 1, NULL, '2022-07-14 15:27:27', '2022-07-14 15:27:27'),
(472, 468, 10, 1, NULL, '2022-07-14 15:27:27', '2022-07-14 15:27:27'),
(477, 475, 10, 1, NULL, '2022-07-14 15:28:02', '2022-07-14 15:28:02'),
(478, 475, 10, 1, NULL, '2022-07-14 15:28:02', '2022-07-14 15:28:02'),
(479, 475, 10, 1, NULL, '2022-07-14 15:28:02', '2022-07-14 15:28:02'),
(484, 482, 10, 1, NULL, '2022-07-14 15:28:28', '2022-07-14 15:28:28'),
(485, 482, 10, 1, NULL, '2022-07-14 15:28:28', '2022-07-14 15:28:28'),
(486, 482, 10, 1, NULL, '2022-07-14 15:28:28', '2022-07-14 15:28:28'),
(490, 488, 10, 1, NULL, '2022-07-14 15:28:39', '2022-07-14 15:28:39'),
(491, 488, 10, 1, NULL, '2022-07-14 15:28:39', '2022-07-14 15:28:39'),
(492, 488, 10, 1, NULL, '2022-07-14 15:28:39', '2022-07-14 15:28:39'),
(497, 495, 10, 1, NULL, '2022-07-14 15:29:14', '2022-07-14 15:29:14'),
(498, 495, 10, 1, NULL, '2022-07-14 15:29:14', '2022-07-14 15:29:14'),
(499, 495, 10, 1, NULL, '2022-07-14 15:29:14', '2022-07-14 15:29:14'),
(504, 502, 10, 1, NULL, '2022-07-14 15:29:54', '2022-07-14 15:29:54'),
(505, 502, 10, 1, NULL, '2022-07-14 15:29:54', '2022-07-14 15:29:54'),
(506, 502, 10, 1, NULL, '2022-07-14 15:29:54', '2022-07-14 15:29:54'),
(512, 510, 10, 1, NULL, '2022-07-14 15:31:44', '2022-07-14 15:31:44'),
(513, 510, 10, 1, NULL, '2022-07-14 15:31:44', '2022-07-14 15:31:44'),
(514, 510, 10, 1, NULL, '2022-07-14 15:31:44', '2022-07-14 15:31:44'),
(518, 516, 10, 1, NULL, '2022-07-14 15:34:09', '2022-07-14 15:34:09'),
(519, 516, 10, 1, NULL, '2022-07-14 15:34:09', '2022-07-14 15:34:09'),
(520, 516, 10, 1, NULL, '2022-07-14 15:34:09', '2022-07-14 15:34:09'),
(523, 521, 10, 1, NULL, '2022-07-14 15:43:34', '2022-07-14 15:43:34'),
(524, 521, 10, 1, NULL, '2022-07-14 15:43:34', '2022-07-14 15:43:34'),
(525, 521, 10, 1, NULL, '2022-07-14 15:43:34', '2022-07-14 15:43:34'),
(528, 526, 10, 1, NULL, '2022-07-14 15:43:34', '2022-07-14 15:43:34'),
(529, 526, 10, 1, NULL, '2022-07-14 15:43:34', '2022-07-14 15:43:34'),
(530, 526, 10, 1, NULL, '2022-07-14 15:43:34', '2022-07-14 15:43:34'),
(534, 532, 10, 1, NULL, '2022-07-14 15:44:08', '2022-07-14 15:44:08'),
(535, 532, 10, 1, NULL, '2022-07-14 15:44:08', '2022-07-14 15:44:08'),
(536, 532, 10, 1, NULL, '2022-07-14 15:44:08', '2022-07-14 15:44:08'),
(548, 546, 10, 1, NULL, '2022-07-14 16:20:47', '2022-07-14 16:20:47'),
(549, 546, 10, 1, NULL, '2022-07-14 16:20:47', '2022-07-14 16:20:47'),
(553, 551, 10, 1, NULL, '2022-07-14 16:21:12', '2022-07-14 16:21:12'),
(554, 551, 10, 1, NULL, '2022-07-14 16:21:12', '2022-07-14 16:21:12');

-- --------------------------------------------------------

--
-- Table structure for table `matrixblocks_owners`
--

CREATE TABLE `matrixblocks_owners` (
  `blockId` int(11) NOT NULL,
  `ownerId` int(11) NOT NULL,
  `sortOrder` smallint(6) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `matrixblocks_owners`
--

INSERT INTO `matrixblocks_owners` (`blockId`, `ownerId`, `sortOrder`) VALUES
(34, 33, 1),
(35, 32, 1),
(36, 32, 2),
(48, 47, 1),
(49, 46, 1),
(82, 42, 1),
(85, 83, 1),
(118, 42, 2),
(119, 42, 3),
(123, 121, 1),
(124, 121, 2),
(125, 121, 3),
(130, 128, 1),
(131, 128, 2),
(132, 128, 3),
(136, 134, 1),
(137, 134, 2),
(138, 134, 3),
(141, 139, 1),
(142, 139, 2),
(143, 139, 3),
(146, 144, 1),
(147, 144, 2),
(148, 144, 3),
(150, 32, 2),
(153, 152, 1),
(154, 151, 1),
(155, 151, 2),
(159, 157, 1),
(160, 157, 2),
(165, 163, 1),
(166, 163, 2),
(181, 179, 1),
(182, 179, 2),
(212, 210, 1),
(213, 210, 2),
(216, 214, 1),
(217, 214, 2),
(226, 224, 1),
(227, 224, 2),
(228, 224, 3),
(231, 229, 1),
(232, 229, 2),
(233, 229, 3),
(236, 234, 1),
(237, 234, 2),
(238, 234, 3),
(241, 239, 1),
(242, 239, 2),
(243, 239, 3),
(246, 244, 1),
(247, 244, 2),
(248, 244, 3),
(251, 249, 1),
(252, 249, 2),
(253, 249, 3),
(256, 254, 1),
(257, 254, 2),
(258, 254, 3),
(261, 259, 1),
(262, 259, 2),
(263, 259, 3),
(266, 264, 1),
(267, 264, 2),
(268, 264, 3),
(271, 269, 1),
(272, 269, 2),
(273, 269, 3),
(276, 274, 1),
(277, 274, 2),
(278, 274, 3),
(281, 279, 1),
(282, 279, 2),
(283, 279, 3),
(286, 284, 1),
(287, 284, 2),
(288, 284, 3),
(291, 289, 1),
(292, 289, 2),
(293, 289, 3),
(296, 294, 1),
(297, 294, 2),
(298, 294, 3),
(301, 299, 1),
(302, 299, 2),
(303, 299, 3),
(315, 313, 1),
(316, 313, 2),
(317, 313, 3),
(344, 322, 1),
(345, 322, 2),
(347, 346, 1),
(348, 346, 2),
(354, 352, 1),
(355, 352, 2),
(356, 352, 3),
(360, 358, 1),
(361, 358, 2),
(362, 358, 3),
(366, 364, 1),
(367, 364, 2),
(368, 364, 3),
(379, 377, 1),
(380, 377, 2),
(381, 377, 3),
(394, 392, 1),
(395, 392, 2),
(396, 392, 3),
(401, 399, 1),
(402, 399, 2),
(403, 399, 3),
(408, 406, 1),
(409, 406, 2),
(410, 406, 3),
(419, 417, 1),
(420, 417, 2),
(421, 417, 3),
(424, 422, 1),
(425, 422, 2),
(426, 422, 3),
(429, 427, 1),
(430, 427, 2),
(431, 427, 3),
(434, 432, 1),
(435, 432, 2),
(436, 432, 3),
(439, 437, 1),
(440, 437, 2),
(441, 437, 3),
(444, 442, 1),
(445, 442, 2),
(446, 442, 3),
(449, 447, 1),
(450, 447, 2),
(451, 447, 3),
(454, 452, 1),
(455, 452, 2),
(456, 452, 3),
(459, 457, 1),
(460, 457, 2),
(461, 457, 3),
(464, 462, 1),
(465, 462, 2),
(466, 462, 3),
(470, 468, 1),
(471, 468, 2),
(472, 468, 3),
(477, 475, 1),
(478, 475, 2),
(479, 475, 3),
(484, 482, 1),
(485, 482, 2),
(486, 482, 3),
(490, 488, 1),
(491, 488, 2),
(492, 488, 3),
(497, 495, 1),
(498, 495, 2),
(499, 495, 3),
(504, 502, 1),
(505, 502, 2),
(506, 502, 3),
(512, 510, 1),
(513, 510, 2),
(514, 510, 3),
(518, 516, 1),
(519, 516, 2),
(520, 516, 3),
(523, 521, 1),
(524, 521, 2),
(525, 521, 3),
(528, 526, 1),
(529, 526, 2),
(530, 526, 3),
(534, 532, 1),
(535, 532, 2),
(536, 532, 3),
(548, 546, 1),
(549, 546, 2),
(553, 551, 1),
(554, 551, 2);

-- --------------------------------------------------------

--
-- Table structure for table `matrixblocktypes`
--

CREATE TABLE `matrixblocktypes` (
  `id` int(11) NOT NULL,
  `fieldId` int(11) NOT NULL,
  `fieldLayoutId` int(11) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `handle` varchar(255) NOT NULL,
  `sortOrder` smallint(6) UNSIGNED DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `matrixblocktypes`
--

INSERT INTO `matrixblocktypes` (`id`, `fieldId`, `fieldLayoutId`, `name`, `handle`, `sortOrder`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 10, 14, 'Items', 'items', 1, '2022-07-09 04:38:24', '2022-07-09 04:38:24', 'bc85457f-240f-437f-b96f-c024374ead45'),
(2, 28, 19, 'Item', 'item', 1, '2022-07-09 07:35:10', '2022-07-09 07:35:10', 'b9db48ea-9351-4304-8538-27a6064de37e');

-- --------------------------------------------------------

--
-- Table structure for table `matrixcontent_button`
--

CREATE TABLE `matrixcontent_button` (
  `id` int(11) NOT NULL,
  `elementId` int(11) NOT NULL,
  `siteId` int(11) NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0',
  `field_item_titleButton_rjdlnmli` text DEFAULT NULL,
  `field_item_urlButton_xukdyhkz` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `matrixcontent_button`
--

INSERT INTO `matrixcontent_button` (`id`, `elementId`, `siteId`, `dateCreated`, `dateUpdated`, `uid`, `field_item_titleButton_rjdlnmli`, `field_item_urlButton_xukdyhkz`) VALUES
(1, 34, 1, '2022-07-09 07:36:16', '2022-07-12 18:39:02', '429115b7-b5ea-44e3-83f2-e95f3ecb85ef', NULL, NULL),
(2, 48, 1, '2022-07-11 14:10:15', '2022-07-11 14:10:15', '860f715c-53d7-4366-9c5a-d0d5465f6d07', NULL, NULL),
(4, 153, 1, '2022-07-12 18:39:02', '2022-07-12 18:39:02', '3c9598de-68fc-46b2-9d3d-227b327149a5', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `matrixcontent_contentpost`
--

CREATE TABLE `matrixcontent_contentpost` (
  `id` int(11) NOT NULL,
  `elementId` int(11) NOT NULL,
  `siteId` int(11) NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0',
  `field_items_titleText_hscgklex` text DEFAULT NULL,
  `field_items_descriptions_xgfjoona` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `matrixcontent_contentpost`
--

INSERT INTO `matrixcontent_contentpost` (`id`, `elementId`, `siteId`, `dateCreated`, `dateUpdated`, `uid`, `field_items_titleText_hscgklex`, `field_items_descriptions_xgfjoona`) VALUES
(1, 35, 1, '2022-07-09 07:36:16', '2022-07-12 18:39:02', 'e1801db2-ed6d-4293-b953-f3114dbacaca', 'Übersicht', '<p>Wer kennt sie nicht: Word, Excel, PowerPoint und Co. Alles leistungsfähige Apps für Selbständige, den Mittelstand und Großunternehmen. Gemacht für das produktive und mobile Arbeiten. Erstellen Sie ansprechende Dokumente, Informative Präsentationen oder Tabellenkalkulationen.</p>'),
(2, 36, 1, '2022-07-09 07:36:16', '2022-07-09 07:36:16', '3f63a435-a023-459d-a069-b6e78001921f', NULL, NULL),
(3, 37, 1, '2022-07-09 07:41:01', '2022-07-09 08:43:25', '924826b2-d33d-4757-b396-88224214e9c1', NULL, NULL),
(4, 38, 1, '2022-07-09 08:44:13', '2022-07-09 08:44:13', 'bfe9dfe1-b8d3-4c70-89b9-ab22c1bf7490', NULL, NULL),
(5, 39, 1, '2022-07-09 08:44:15', '2022-07-11 14:10:15', 'f538a5d6-9ee9-40f4-b69e-f9cc7da9bb47', NULL, NULL),
(6, 49, 1, '2022-07-11 14:10:15', '2022-07-11 14:10:15', '1b5e1d83-9b30-46b2-bbe4-98709a7cde63', NULL, NULL),
(7, 50, 1, '2022-07-11 14:10:15', '2022-07-11 14:10:15', 'dbd6530a-ea92-4dbd-a026-421139188d71', NULL, NULL),
(8, 71, 1, '2022-07-12 16:47:34', '2022-07-12 16:47:34', 'c38c3e32-c3e8-4fec-a713-604fbc680675', NULL, NULL),
(11, 82, 1, '2022-07-12 18:04:11', '2022-07-14 14:21:42', '626ff72c-0d50-4466-9687-717749808c9f', 'Übersicht', '<p>Wer kennt sie nicht: Word, Excel, PowerPoint und Co. Alles leistungsfähige Apps für Selbständige, den Mittelstand und Großunternehmen. Gemacht für das produktive und mobile Arbeiten. Erstellen Sie ansprechende Dokumente, Informative Präsentationen oder Tabellenkalkulationen.</p>'),
(12, 85, 1, '2022-07-12 18:04:11', '2022-07-12 18:04:11', 'b2378f37-be71-4b7f-a51f-910c87c5d1c3', NULL, NULL),
(14, 88, 1, '2022-07-12 18:15:15', '2022-07-12 18:15:15', '26d27827-80ea-423e-b3e5-7f2e6d908f33', NULL, NULL),
(15, 89, 1, '2022-07-12 18:15:23', '2022-07-12 18:15:23', '8c7dff2c-119f-474e-a3e4-2aef69da05d7', 'Einblick', NULL),
(16, 90, 1, '2022-07-12 18:15:25', '2022-07-12 18:15:25', '828f9db4-d734-4e3b-83fa-afaf55b2819c', 'Einblick', '<p>Verschaffen Sie sich einen kleinen Eindruck davon, wie diese Tools aussehen und in den Geschäftsalltag integriert werden können.</p>'),
(17, 91, 1, '2022-07-12 18:15:29', '2022-07-12 18:15:29', '7e1b3913-be3f-45c3-88bc-233d9e4e34cf', 'Einblick', '<p>Verschaffen Sie sich einen kleinen Eindruck davon, wie diese Tools aussehen und in den Geschäftsalltag integriert werden können.</p>'),
(18, 92, 1, '2022-07-12 18:15:29', '2022-07-12 18:15:29', '0a8859d8-043e-4901-87af-1f9f63061904', NULL, NULL),
(19, 93, 1, '2022-07-12 18:15:32', '2022-07-12 18:15:32', '28f70d65-18a2-46af-b158-53d40892dac0', 'Einblick', '<p>Verschaffen Sie sich einen kleinen Eindruck davon, wie diese Tools aussehen und in den Geschäftsalltag integriert werden können.</p>'),
(20, 94, 1, '2022-07-12 18:15:32', '2022-07-12 18:15:32', 'cbe05bea-c114-4546-9522-fa4e8b3c303d', NULL, '<p>Wenn Sie mehr zu den Apps wissen möchten, <a href=\"http://localhost/kontakt\">nehmen Sie Kontakt zu uns auf</a>. Alternativ können Sie sich gerne direkt bei Microsoft einen noch tieferen Einblick verschaffen.</p>'),
(21, 95, 1, '2022-07-12 18:15:38', '2022-07-12 18:15:38', '1c8d7601-402d-46ef-8303-5597a64d66ae', 'Einblick', '<p>Verschaffen Sie sich einen kleinen Eindruck davon, wie diese Tools aussehen und in den Geschäftsalltag integriert werden können.</p>'),
(22, 96, 1, '2022-07-12 18:15:38', '2022-07-12 18:15:38', '4353c064-0eea-4223-af59-61622c7f0aeb', 'Weitere Informationen', '<p>Wenn Sie mehr zu den Apps wissen möchten, <a href=\"http://localhost/kontakt\">nehmen Sie Kontakt zu uns auf</a>. Alternativ können Sie sich gerne direkt bei Microsoft einen noch tieferen Einblick verschaffen.</p>'),
(23, 97, 1, '2022-07-12 18:15:39', '2022-07-12 18:15:39', 'c2a8fc97-45b5-4fb4-b70b-e5b9059d869a', 'Einblick', '<p>Verschaffen Sie sich einen kleinen Eindruck davon, wie diese Tools aussehen und in den Geschäftsalltag integriert werden können.</p>'),
(24, 98, 1, '2022-07-12 18:15:39', '2022-07-12 18:15:39', '4f900a3f-81c8-42ae-acbf-d3153379cbbb', 'Weitere Informationen', '<p>Wenn Sie mehr zu den Apps wissen möchten, <a href=\"http://localhost/kontakt\">nehmen Sie Kontakt zu uns auf</a>. Alternativ können Sie sich gerne direkt bei Microsoft einen noch tieferen Einblick verschaffen.</p>'),
(25, 99, 1, '2022-07-12 18:15:39', '2022-07-12 18:15:39', '2b37c0fa-9ba7-49fe-b851-51cb4f401384', NULL, NULL),
(26, 100, 1, '2022-07-12 18:15:41', '2022-07-12 18:15:41', 'd7452e0c-2f2b-4b2d-9f46-7b38c47b8421', 'Einblick', '<p>Verschaffen Sie sich einen kleinen Eindruck davon, wie diese Tools aussehen und in den Geschäftsalltag integriert werden können.</p>'),
(27, 101, 1, '2022-07-12 18:15:41', '2022-07-12 18:15:41', 'fc65c271-9645-456e-92c1-a045e3fbdce4', 'Weitere Informationen', '<p>Wenn Sie mehr zu den Apps wissen möchten, <a href=\"http://localhost/kontakt\">nehmen Sie Kontakt zu uns auf</a>. Alternativ können Sie sich gerne direkt bei Microsoft einen noch tieferen Einblick verschaffen.</p>'),
(28, 102, 1, '2022-07-12 18:15:41', '2022-07-12 18:15:41', 'a568c6aa-e45a-49a3-87c5-67c72688c984', NULL, NULL),
(29, 103, 1, '2022-07-12 18:15:42', '2022-07-12 18:15:42', '7a941ac3-a0de-4088-a9d2-090aa19e97f7', 'Einblick', '<p>Verschaffen Sie sich einen kleinen Eindruck davon, wie diese Tools aussehen und in den Geschäftsalltag integriert werden können.</p>'),
(30, 104, 1, '2022-07-12 18:15:42', '2022-07-12 18:15:42', '4b2ea7f4-ad8b-463d-92ab-a12e82999882', 'Weitere Informationen', '<p>Wenn Sie mehr zu den Apps wissen möchten, <a href=\"http://localhost/kontakt\">nehmen Sie Kontakt zu uns auf</a>. Alternativ können Sie sich gerne direkt bei Microsoft einen noch tieferen Einblick verschaffen.</p>'),
(31, 105, 1, '2022-07-12 18:15:42', '2022-07-12 18:15:42', 'fb3a0aff-8996-473f-bb5f-4114860fcc1d', NULL, NULL),
(32, 106, 1, '2022-07-12 18:15:43', '2022-07-12 18:15:43', 'dbebc429-1344-4d45-81e1-024c91aaed2c', 'Einblick', '<p>Verschaffen Sie sich einen kleinen Eindruck davon, wie diese Tools aussehen und in den Geschäftsalltag integriert werden können.</p>'),
(33, 107, 1, '2022-07-12 18:15:43', '2022-07-12 18:15:43', '849d7737-d0a0-4feb-adb9-45b5e69492ca', 'Weitere Informationen', '<p>Wenn Sie mehr zu den Apps wissen möchten, <a href=\"http://localhost/kontakt\">nehmen Sie Kontakt zu uns auf</a>. Alternativ können Sie sich gerne direkt bei Microsoft einen noch tieferen Einblick verschaffen.</p>'),
(34, 108, 1, '2022-07-12 18:15:43', '2022-07-12 18:15:43', 'f64ff71c-1c7d-43cd-ac74-bad9a1dfc437', NULL, NULL),
(35, 109, 1, '2022-07-12 18:15:53', '2022-07-12 18:15:53', '672ca673-173d-4cad-9beb-edaf7b9c74c2', 'Einblick', '<p>Verschaffen Sie sich einen kleinen Eindruck davon, wie diese Tools aussehen und in den Geschäftsalltag integriert werden können.</p>'),
(36, 110, 1, '2022-07-12 18:15:53', '2022-07-12 18:15:53', 'a398afe0-69fd-47af-9945-338592d879b6', 'Weitere Informationen', '<p>Wenn Sie mehr zu den Apps wissen möchten, <a href=\"http://localhost/kontakt\">nehmen Sie Kontakt zu uns auf</a>. Alternativ können Sie sich gerne direkt bei Microsoft einen noch tieferen Einblick verschaffen.</p>'),
(37, 111, 1, '2022-07-12 18:15:53', '2022-07-12 18:15:53', '807878b8-ccd1-4004-8fd8-d8d4b0a5d39b', NULL, NULL),
(38, 112, 1, '2022-07-12 18:15:54', '2022-07-12 18:15:54', '820cb7ef-0e00-4f39-a44a-9b8d707980a1', 'Einblick', '<p>Verschaffen Sie sich einen kleinen Eindruck davon, wie diese Tools aussehen und in den Geschäftsalltag integriert werden können.</p>'),
(39, 113, 1, '2022-07-12 18:15:54', '2022-07-12 18:15:54', 'ac4fb848-69de-4098-8e61-0a626b47cd85', 'Weitere Informationen', '<p>Wenn Sie mehr zu den Apps wissen möchten, <a href=\"http://localhost/kontakt\">nehmen Sie Kontakt zu uns auf</a>. Alternativ können Sie sich gerne direkt bei Microsoft einen noch tieferen Einblick verschaffen.</p>'),
(40, 114, 1, '2022-07-12 18:15:54', '2022-07-12 18:15:54', '159bb4cd-6871-424d-9a35-57bb5060fbd4', NULL, NULL),
(44, 118, 1, '2022-07-12 18:16:04', '2022-07-14 14:21:42', 'b725b83a-9ff4-472c-a726-86e0de381f59', 'Einblick', '<p>Verschaffen Sie sich einen kleinen Eindruck davon, wie diese Tools aussehen und in den Geschäftsalltag integriert werden können.</p>'),
(45, 119, 1, '2022-07-12 18:16:04', '2022-07-14 14:21:42', 'bab7a7bb-f3bf-4341-b095-31fcf409b742', 'Weitere Informationen', '<p>Wenn Sie mehr zu den Apps wissen möchten, <a href=\"http://localhost/kontakt\">nehmen Sie Kontakt zu uns auf</a>. Alternativ können Sie sich gerne direkt bei Microsoft einen noch tieferen Einblick verschaffen.</p>'),
(46, 120, 1, '2022-07-12 18:16:04', '2022-07-12 18:16:04', '08762f50-c6d4-4014-8459-acd1f8aaa6ee', NULL, NULL),
(47, 123, 1, '2022-07-12 18:16:04', '2022-07-12 18:16:04', 'd2cc0626-7a86-483f-9d6c-d43168fb6435', 'Übersicht', '<p>Wer kennt sie nicht: Word, Excel, PowerPoint und Co. Alles leistungsfähige Apps für Selbständige, den Mittelstand und Großunternehmen. Gemacht für das produktive und mobile Arbeiten. Erstellen Sie ansprechende Dokumente, Informative Präsentationen oder Tabellenkalkulationen.</p>'),
(48, 124, 1, '2022-07-12 18:16:04', '2022-07-12 18:16:04', 'c76276d5-11ea-43dd-b4d7-f1dba280a38e', 'Einblick', '<p>Verschaffen Sie sich einen kleinen Eindruck davon, wie diese Tools aussehen und in den Geschäftsalltag integriert werden können.</p>'),
(49, 125, 1, '2022-07-12 18:16:04', '2022-07-12 18:16:04', '9d7bda6b-68b1-45c9-82dc-ff619ed6fcd5', 'Weitere Informationen', '<p>Wenn Sie mehr zu den Apps wissen möchten, <a href=\"http://localhost/kontakt\">nehmen Sie Kontakt zu uns auf</a>. Alternativ können Sie sich gerne direkt bei Microsoft einen noch tieferen Einblick verschaffen.</p>'),
(50, 126, 1, '2022-07-12 18:16:04', '2022-07-12 18:16:04', '92193ae4-41ce-4012-b65a-e4258c1da2ae', NULL, NULL),
(51, 130, 1, '2022-07-12 18:26:12', '2022-07-12 18:26:12', '77b80dd5-7008-478f-8810-6581ef1df356', 'Übersicht', '<p>Wer kennt sie nicht: Word, Excel, PowerPoint und Co. Alles leistungsfähige Apps für Selbständige, den Mittelstand und Großunternehmen. Gemacht für das produktive und mobile Arbeiten. Erstellen Sie ansprechende Dokumente, Informative Präsentationen oder Tabellenkalkulationen.</p>'),
(52, 131, 1, '2022-07-12 18:26:12', '2022-07-12 18:26:12', 'a9152289-819d-408f-a96a-c3d70044788b', 'Einblick', '<p>Verschaffen Sie sich einen kleinen Eindruck davon, wie diese Tools aussehen und in den Geschäftsalltag integriert werden können.</p>'),
(53, 132, 1, '2022-07-12 18:26:12', '2022-07-12 18:26:12', '54c47cf1-74b8-46f0-a3ef-664ab4bb07fd', 'Weitere Informationen', '<p>Wenn Sie mehr zu den Apps wissen möchten, <a href=\"http://localhost/kontakt\">nehmen Sie Kontakt zu uns auf</a>. Alternativ können Sie sich gerne direkt bei Microsoft einen noch tieferen Einblick verschaffen.</p>'),
(54, 136, 1, '2022-07-12 18:33:07', '2022-07-12 18:33:07', '8b96378e-d3ed-4040-9331-2e776d5be360', 'Übersicht', '<p>Wer kennt sie nicht: Word, Excel, PowerPoint und Co. Alles leistungsfähige Apps für Selbständige, den Mittelstand und Großunternehmen. Gemacht für das produktive und mobile Arbeiten. Erstellen Sie ansprechende Dokumente, Informative Präsentationen oder Tabellenkalkulationen.</p>'),
(55, 137, 1, '2022-07-12 18:33:07', '2022-07-12 18:33:07', 'e3111f85-e338-4f06-bd5c-4616c21b73d1', 'Einblick', '<p>Verschaffen Sie sich einen kleinen Eindruck davon, wie diese Tools aussehen und in den Geschäftsalltag integriert werden können.</p>'),
(56, 138, 1, '2022-07-12 18:33:07', '2022-07-12 18:33:07', '612c7118-f12d-431f-927d-3ff48f846961', 'Weitere Informationen', '<p>Wenn Sie mehr zu den Apps wissen möchten, <a href=\"http://localhost/kontakt\">nehmen Sie Kontakt zu uns auf</a>. Alternativ können Sie sich gerne direkt bei Microsoft einen noch tieferen Einblick verschaffen.</p>'),
(57, 141, 1, '2022-07-12 18:33:24', '2022-07-12 18:33:24', '318b0a99-0e60-447e-a418-1577a3638efb', 'Übersicht', '<p>Wer kennt sie nicht: Word, Excel, PowerPoint und Co. Alles leistungsfähige Apps für Selbständige, den Mittelstand und Großunternehmen. Gemacht für das produktive und mobile Arbeiten. Erstellen Sie ansprechende Dokumente, Informative Präsentationen oder Tabellenkalkulationen.</p>'),
(58, 142, 1, '2022-07-12 18:33:24', '2022-07-12 18:33:24', '174f6f7a-fd58-4313-b6cc-9092f70ed4f0', 'Einblick', '<p>Verschaffen Sie sich einen kleinen Eindruck davon, wie diese Tools aussehen und in den Geschäftsalltag integriert werden können.</p>'),
(59, 143, 1, '2022-07-12 18:33:24', '2022-07-12 18:33:24', '9b30b713-275e-4b7d-b166-a1647e166e17', 'Weitere Informationen', '<p>Wenn Sie mehr zu den Apps wissen möchten, <a href=\"http://localhost/kontakt\">nehmen Sie Kontakt zu uns auf</a>. Alternativ können Sie sich gerne direkt bei Microsoft einen noch tieferen Einblick verschaffen.</p>'),
(60, 146, 1, '2022-07-12 18:34:53', '2022-07-12 18:34:53', '12ea80ae-8f97-4b6d-a384-4cd98480861c', 'Übersicht', '<p>Wer kennt sie nicht: Word, Excel, PowerPoint und Co. Alles leistungsfähige Apps für Selbständige, den Mittelstand und Großunternehmen. Gemacht für das produktive und mobile Arbeiten. Erstellen Sie ansprechende Dokumente, Informative Präsentationen oder Tabellenkalkulationen.</p>'),
(61, 147, 1, '2022-07-12 18:34:53', '2022-07-12 18:34:53', 'c5016d40-8873-4916-8dc7-82f5dae572a9', 'Einblick', '<p>Verschaffen Sie sich einen kleinen Eindruck davon, wie diese Tools aussehen und in den Geschäftsalltag integriert werden können.</p>'),
(62, 148, 1, '2022-07-12 18:34:53', '2022-07-12 18:34:53', '892240d8-c3dc-4e17-8946-14ed7899e606', 'Weitere Informationen', '<p>Wenn Sie mehr zu den Apps wissen möchten, <a href=\"http://localhost/kontakt\">nehmen Sie Kontakt zu uns auf</a>. Alternativ können Sie sich gerne direkt bei Microsoft einen noch tieferen Einblick verschaffen.</p>'),
(64, 150, 1, '2022-07-12 18:39:02', '2022-07-12 18:39:02', 'ac703e80-bfeb-4371-abe9-c5c986142e5d', 'Einblick', '<p>Verschaffen Sie sich einen kleinen Eindruck davon, wie diese Tools aussehen und in den Geschäftsalltag integriert werden können.</p>'),
(65, 154, 1, '2022-07-12 18:39:02', '2022-07-12 18:39:02', 'a81bd77e-b843-4104-a7e4-581f800f98f9', 'Übersicht', '<p>Wer kennt sie nicht: Word, Excel, PowerPoint und Co. Alles leistungsfähige Apps für Selbständige, den Mittelstand und Großunternehmen. Gemacht für das produktive und mobile Arbeiten. Erstellen Sie ansprechende Dokumente, Informative Präsentationen oder Tabellenkalkulationen.</p>'),
(66, 155, 1, '2022-07-12 18:39:02', '2022-07-12 18:39:02', 'fb6bcb6e-cae7-4126-b12f-5d0c73b12fae', 'Einblick', '<p>Verschaffen Sie sich einen kleinen Eindruck davon, wie diese Tools aussehen und in den Geschäftsalltag integriert werden können.</p>'),
(67, 159, 1, '2022-07-12 18:41:33', '2022-07-12 18:41:33', 'bdc4b5ff-667e-4c46-b937-7e67cd3f0f77', 'Übersicht', '<p>Wer kennt sie nicht: Word, Excel, PowerPoint und Co. Alles leistungsfähige Apps für Selbständige, den Mittelstand und Großunternehmen. Gemacht für das produktive und mobile Arbeiten. Erstellen Sie ansprechende Dokumente, Informative Präsentationen oder Tabellenkalkulationen.</p>'),
(68, 160, 1, '2022-07-12 18:41:33', '2022-07-12 18:41:33', 'd371db00-5f05-47c2-a227-ad57030e2f6b', 'Einblick', '<p>Verschaffen Sie sich einen kleinen Eindruck davon, wie diese Tools aussehen und in den Geschäftsalltag integriert werden können.</p>'),
(69, 165, 1, '2022-07-12 18:48:25', '2022-07-12 18:48:25', '1dbb044f-c9b9-4c0f-a2ea-d784c6b80d28', 'Übersicht', '<p>Wer kennt sie nicht: Word, Excel, PowerPoint und Co. Alles leistungsfähige Apps für Selbständige, den Mittelstand und Großunternehmen. Gemacht für das produktive und mobile Arbeiten. Erstellen Sie ansprechende Dokumente, Informative Präsentationen oder Tabellenkalkulationen.</p>'),
(70, 166, 1, '2022-07-12 18:48:25', '2022-07-12 18:48:25', 'dfada58e-d0fd-49c1-87b8-ee080e874e9a', 'Einblick', '<p>Verschaffen Sie sich einen kleinen Eindruck davon, wie diese Tools aussehen und in den Geschäftsalltag integriert werden können.</p>'),
(71, 181, 1, '2022-07-13 16:01:47', '2022-07-13 16:01:47', 'ef5967e5-0da5-40a0-ade8-2b681caf22ce', 'Übersicht', '<p>Wer kennt sie nicht: Word, Excel, PowerPoint und Co. Alles leistungsfähige Apps für Selbständige, den Mittelstand und Großunternehmen. Gemacht für das produktive und mobile Arbeiten. Erstellen Sie ansprechende Dokumente, Informative Präsentationen oder Tabellenkalkulationen.</p>'),
(72, 182, 1, '2022-07-13 16:01:47', '2022-07-13 16:01:47', 'ff8419e6-ad0d-4828-910d-7471bf7de42b', 'Einblick', '<p>Verschaffen Sie sich einen kleinen Eindruck davon, wie diese Tools aussehen und in den Geschäftsalltag integriert werden können.</p>'),
(73, 212, 1, '2022-07-13 17:17:49', '2022-07-13 17:17:49', 'ab870ad6-bd92-49dc-98ba-13811eedd951', 'Übersicht', '<p>Wer kennt sie nicht: Word, Excel, PowerPoint und Co. Alles leistungsfähige Apps für Selbständige, den Mittelstand und Großunternehmen. Gemacht für das produktive und mobile Arbeiten. Erstellen Sie ansprechende Dokumente, Informative Präsentationen oder Tabellenkalkulationen.</p>'),
(74, 213, 1, '2022-07-13 17:17:49', '2022-07-13 17:17:49', 'c40654bf-4eff-4aef-9dfe-59297e79a866', 'Einblick', '<p>Verschaffen Sie sich einen kleinen Eindruck davon, wie diese Tools aussehen und in den Geschäftsalltag integriert werden können.</p>'),
(75, 216, 1, '2022-07-13 17:17:49', '2022-07-13 17:17:49', '050d5512-5dd7-4f10-bfc5-31540263e62a', 'Übersicht', '<p>Wer kennt sie nicht: Word, Excel, PowerPoint und Co. Alles leistungsfähige Apps für Selbständige, den Mittelstand und Großunternehmen. Gemacht für das produktive und mobile Arbeiten. Erstellen Sie ansprechende Dokumente, Informative Präsentationen oder Tabellenkalkulationen.</p>'),
(76, 217, 1, '2022-07-13 17:17:49', '2022-07-13 17:17:49', '91eba331-5cac-4018-8167-0eafe97a89ec', 'Einblick', '<p>Verschaffen Sie sich einen kleinen Eindruck davon, wie diese Tools aussehen und in den Geschäftsalltag integriert werden können.</p>'),
(77, 226, 1, '2022-07-13 19:12:41', '2022-07-14 14:21:42', 'b60e38d3-713d-47dd-bfa0-dda0683ba389', 'Übersicht', '<p>Wer kennt sie nicht: Word, Excel, PowerPoint und Co. Alles leistungsfähige Apps für Selbständige, den Mittelstand und Großunternehmen. Gemacht für das produktive und mobile Arbeiten. Erstellen Sie ansprechende Dokumente, Informative Präsentationen oder Tabellenkalkulationen.</p>'),
(78, 227, 1, '2022-07-13 19:12:41', '2022-07-14 14:21:42', '048dca80-2ec3-4148-aa4e-0b10eb9ca5c6', 'Einblick', '<p>Verschaffen Sie sich einen kleinen Eindruck davon, wie diese Tools aussehen und in den Geschäftsalltag integriert werden können.</p>'),
(79, 228, 1, '2022-07-13 19:12:41', '2022-07-14 14:21:42', 'd0656a4c-e736-40be-aed8-fa3631fee1aa', 'Weitere Informationen', '<p>Wenn Sie mehr zu den Apps wissen möchten, <a href=\"http://localhost/kontakt\">nehmen Sie Kontakt zu uns auf</a>. Alternativ können Sie sich gerne direkt bei Microsoft einen noch tieferen Einblick verschaffen.</p>'),
(80, 231, 1, '2022-07-13 19:12:41', '2022-07-13 19:12:41', 'd035d7b1-6d5f-45dd-889b-05c8f63f2a5c', 'Übersicht', '<p>Wer kennt sie nicht: Word, Excel, PowerPoint und Co. Alles leistungsfähige Apps für Selbständige, den Mittelstand und Großunternehmen. Gemacht für das produktive und mobile Arbeiten. Erstellen Sie ansprechende Dokumente, Informative Präsentationen oder Tabellenkalkulationen.</p>'),
(81, 232, 1, '2022-07-13 19:12:41', '2022-07-13 19:12:41', '7ae56470-0798-450e-96b7-b8e74df73b3a', 'Einblick', '<p>Verschaffen Sie sich einen kleinen Eindruck davon, wie diese Tools aussehen und in den Geschäftsalltag integriert werden können.</p>'),
(82, 233, 1, '2022-07-13 19:12:41', '2022-07-13 19:12:41', 'e086ca50-0695-45b6-8036-dcb43790906e', 'Weitere Informationen', '<p>Wenn Sie mehr zu den Apps wissen möchten, <a href=\"http://localhost/kontakt\">nehmen Sie Kontakt zu uns auf</a>. Alternativ können Sie sich gerne direkt bei Microsoft einen noch tieferen Einblick verschaffen.</p>'),
(83, 236, 1, '2022-07-13 19:12:43', '2022-07-14 14:21:42', 'ebc31387-1114-4bf3-a04f-0a3842a3253b', 'Übersicht', '<p>Wer kennt sie nicht: Word, Excel, PowerPoint und Co. Alles leistungsfähige Apps für Selbständige, den Mittelstand und Großunternehmen. Gemacht für das produktive und mobile Arbeiten. Erstellen Sie ansprechende Dokumente, Informative Präsentationen oder Tabellenkalkulationen.</p>'),
(84, 237, 1, '2022-07-13 19:12:43', '2022-07-14 14:21:42', '2e546f2d-ac6f-423c-ac2c-d38ea0d9630f', 'Einblick', '<p>Verschaffen Sie sich einen kleinen Eindruck davon, wie diese Tools aussehen und in den Geschäftsalltag integriert werden können.</p>'),
(85, 238, 1, '2022-07-13 19:12:43', '2022-07-14 14:21:42', '786b9665-1af2-45f1-8cea-e6dc1121ad28', 'Weitere Informationen', '<p>Wenn Sie mehr zu den Apps wissen möchten, <a href=\"http://localhost/kontakt\">nehmen Sie Kontakt zu uns auf</a>. Alternativ können Sie sich gerne direkt bei Microsoft einen noch tieferen Einblick verschaffen.</p>'),
(86, 241, 1, '2022-07-13 19:12:43', '2022-07-13 19:12:43', '5f970bd8-9c08-468a-80b3-88210c0ed380', 'Übersicht', '<p>Wer kennt sie nicht: Word, Excel, PowerPoint und Co. Alles leistungsfähige Apps für Selbständige, den Mittelstand und Großunternehmen. Gemacht für das produktive und mobile Arbeiten. Erstellen Sie ansprechende Dokumente, Informative Präsentationen oder Tabellenkalkulationen.</p>'),
(87, 242, 1, '2022-07-13 19:12:43', '2022-07-13 19:12:43', '39ea827e-e179-453f-8263-afc900b1d246', 'Einblick', '<p>Verschaffen Sie sich einen kleinen Eindruck davon, wie diese Tools aussehen und in den Geschäftsalltag integriert werden können.</p>'),
(88, 243, 1, '2022-07-13 19:12:43', '2022-07-13 19:12:43', '3abaaed2-4464-4896-b8ff-e09a5fa6ce2d', 'Weitere Informationen', '<p>Wenn Sie mehr zu den Apps wissen möchten, <a href=\"http://localhost/kontakt\">nehmen Sie Kontakt zu uns auf</a>. Alternativ können Sie sich gerne direkt bei Microsoft einen noch tieferen Einblick verschaffen.</p>'),
(89, 246, 1, '2022-07-13 19:12:45', '2022-07-14 14:21:43', 'bc6d1b9d-1a27-48f6-9eea-3b8faf4fb1a9', 'Übersicht', '<p>Wer kennt sie nicht: Word, Excel, PowerPoint und Co. Alles leistungsfähige Apps für Selbständige, den Mittelstand und Großunternehmen. Gemacht für das produktive und mobile Arbeiten. Erstellen Sie ansprechende Dokumente, Informative Präsentationen oder Tabellenkalkulationen.</p>'),
(90, 247, 1, '2022-07-13 19:12:45', '2022-07-14 14:21:43', '748cfc68-44b8-4dbe-b4f1-fd615b6c06fd', 'Einblick', '<p>Verschaffen Sie sich einen kleinen Eindruck davon, wie diese Tools aussehen und in den Geschäftsalltag integriert werden können.</p>'),
(91, 248, 1, '2022-07-13 19:12:45', '2022-07-14 14:21:43', 'a7499108-e233-4a48-aa94-60033c25511e', 'Weitere Informationen', '<p>Wenn Sie mehr zu den Apps wissen möchten, <a href=\"http://localhost/kontakt\">nehmen Sie Kontakt zu uns auf</a>. Alternativ können Sie sich gerne direkt bei Microsoft einen noch tieferen Einblick verschaffen.</p>'),
(92, 251, 1, '2022-07-13 19:12:45', '2022-07-13 19:12:45', '54deda34-bd7b-4351-a3fa-e400dbf5440c', 'Übersicht', '<p>Wer kennt sie nicht: Word, Excel, PowerPoint und Co. Alles leistungsfähige Apps für Selbständige, den Mittelstand und Großunternehmen. Gemacht für das produktive und mobile Arbeiten. Erstellen Sie ansprechende Dokumente, Informative Präsentationen oder Tabellenkalkulationen.</p>'),
(93, 252, 1, '2022-07-13 19:12:45', '2022-07-13 19:12:45', '2d928e5a-877e-41d5-bdc8-0479abc1b48e', 'Einblick', '<p>Verschaffen Sie sich einen kleinen Eindruck davon, wie diese Tools aussehen und in den Geschäftsalltag integriert werden können.</p>'),
(94, 253, 1, '2022-07-13 19:12:45', '2022-07-13 19:12:45', '65cc5a01-4e0d-45ee-a548-8e283600e40e', 'Weitere Informationen', '<p>Wenn Sie mehr zu den Apps wissen möchten, <a href=\"http://localhost/kontakt\">nehmen Sie Kontakt zu uns auf</a>. Alternativ können Sie sich gerne direkt bei Microsoft einen noch tieferen Einblick verschaffen.</p>'),
(95, 256, 1, '2022-07-13 19:12:46', '2022-07-14 14:21:43', '9645139e-040b-4ca3-9501-ccc1df525c25', 'Übersicht', '<p>Wer kennt sie nicht: Word, Excel, PowerPoint und Co. Alles leistungsfähige Apps für Selbständige, den Mittelstand und Großunternehmen. Gemacht für das produktive und mobile Arbeiten. Erstellen Sie ansprechende Dokumente, Informative Präsentationen oder Tabellenkalkulationen.</p>'),
(96, 257, 1, '2022-07-13 19:12:46', '2022-07-14 14:21:43', '457eb71d-6609-46bf-acd6-01111473e8ac', 'Einblick', '<p>Verschaffen Sie sich einen kleinen Eindruck davon, wie diese Tools aussehen und in den Geschäftsalltag integriert werden können.</p>'),
(97, 258, 1, '2022-07-13 19:12:46', '2022-07-14 14:21:43', 'ca287a50-bfe6-426d-8724-eb6ba9693b97', 'Weitere Informationen', '<p>Wenn Sie mehr zu den Apps wissen möchten, <a href=\"http://localhost/kontakt\">nehmen Sie Kontakt zu uns auf</a>. Alternativ können Sie sich gerne direkt bei Microsoft einen noch tieferen Einblick verschaffen.</p>'),
(98, 261, 1, '2022-07-13 19:12:46', '2022-07-13 19:12:46', 'cb99be97-6d73-43a0-977a-bc0c79077849', 'Übersicht', '<p>Wer kennt sie nicht: Word, Excel, PowerPoint und Co. Alles leistungsfähige Apps für Selbständige, den Mittelstand und Großunternehmen. Gemacht für das produktive und mobile Arbeiten. Erstellen Sie ansprechende Dokumente, Informative Präsentationen oder Tabellenkalkulationen.</p>'),
(99, 262, 1, '2022-07-13 19:12:46', '2022-07-13 19:12:46', 'c61f61c3-3952-4d16-a11a-d8ac6d29beb2', 'Einblick', '<p>Verschaffen Sie sich einen kleinen Eindruck davon, wie diese Tools aussehen und in den Geschäftsalltag integriert werden können.</p>'),
(100, 263, 1, '2022-07-13 19:12:46', '2022-07-13 19:12:46', 'e8b46f9b-c45f-4694-9b1a-3bb4cb5025b4', 'Weitere Informationen', '<p>Wenn Sie mehr zu den Apps wissen möchten, <a href=\"http://localhost/kontakt\">nehmen Sie Kontakt zu uns auf</a>. Alternativ können Sie sich gerne direkt bei Microsoft einen noch tieferen Einblick verschaffen.</p>'),
(101, 266, 1, '2022-07-13 19:12:48', '2022-07-14 14:21:43', '924afb1d-1159-4e2f-a1f0-6848bba2a43f', 'Übersicht', '<p>Wer kennt sie nicht: Word, Excel, PowerPoint und Co. Alles leistungsfähige Apps für Selbständige, den Mittelstand und Großunternehmen. Gemacht für das produktive und mobile Arbeiten. Erstellen Sie ansprechende Dokumente, Informative Präsentationen oder Tabellenkalkulationen.</p>'),
(102, 267, 1, '2022-07-13 19:12:48', '2022-07-14 14:21:43', '625e9da9-91c9-4e23-a458-414942c648d0', 'Einblick', '<p>Verschaffen Sie sich einen kleinen Eindruck davon, wie diese Tools aussehen und in den Geschäftsalltag integriert werden können.</p>'),
(103, 268, 1, '2022-07-13 19:12:48', '2022-07-14 14:21:43', 'd810afc1-9d89-45b3-a87e-de10dbcdce37', 'Weitere Informationen', '<p>Wenn Sie mehr zu den Apps wissen möchten, <a href=\"http://localhost/kontakt\">nehmen Sie Kontakt zu uns auf</a>. Alternativ können Sie sich gerne direkt bei Microsoft einen noch tieferen Einblick verschaffen.</p>'),
(104, 271, 1, '2022-07-13 19:12:48', '2022-07-13 19:12:48', 'b5758451-5d3a-4d30-ba26-687b5781e399', 'Übersicht', '<p>Wer kennt sie nicht: Word, Excel, PowerPoint und Co. Alles leistungsfähige Apps für Selbständige, den Mittelstand und Großunternehmen. Gemacht für das produktive und mobile Arbeiten. Erstellen Sie ansprechende Dokumente, Informative Präsentationen oder Tabellenkalkulationen.</p>'),
(105, 272, 1, '2022-07-13 19:12:48', '2022-07-13 19:12:48', '0ef82e88-31e4-439a-8e39-b08351bac120', 'Einblick', '<p>Verschaffen Sie sich einen kleinen Eindruck davon, wie diese Tools aussehen und in den Geschäftsalltag integriert werden können.</p>'),
(106, 273, 1, '2022-07-13 19:12:48', '2022-07-13 19:12:48', '9b880c3e-4b69-4c6e-bbe9-b1f5f633ae0d', 'Weitere Informationen', '<p>Wenn Sie mehr zu den Apps wissen möchten, <a href=\"http://localhost/kontakt\">nehmen Sie Kontakt zu uns auf</a>. Alternativ können Sie sich gerne direkt bei Microsoft einen noch tieferen Einblick verschaffen.</p>'),
(107, 276, 1, '2022-07-13 19:12:50', '2022-07-14 14:21:43', '6b00ff92-77c6-4f27-95d1-3c0b2f66ad03', 'Übersicht', '<p>Wer kennt sie nicht: Word, Excel, PowerPoint und Co. Alles leistungsfähige Apps für Selbständige, den Mittelstand und Großunternehmen. Gemacht für das produktive und mobile Arbeiten. Erstellen Sie ansprechende Dokumente, Informative Präsentationen oder Tabellenkalkulationen.</p>'),
(108, 277, 1, '2022-07-13 19:12:50', '2022-07-14 14:21:43', '83f99a32-8913-4a45-a186-d6c12374f35b', 'Einblick', '<p>Verschaffen Sie sich einen kleinen Eindruck davon, wie diese Tools aussehen und in den Geschäftsalltag integriert werden können.</p>'),
(109, 278, 1, '2022-07-13 19:12:50', '2022-07-14 14:21:43', '33d06658-0dd9-4c14-89c6-17d02ed7bd17', 'Weitere Informationen', '<p>Wenn Sie mehr zu den Apps wissen möchten, <a href=\"http://localhost/kontakt\">nehmen Sie Kontakt zu uns auf</a>. Alternativ können Sie sich gerne direkt bei Microsoft einen noch tieferen Einblick verschaffen.</p>'),
(110, 281, 1, '2022-07-13 19:12:50', '2022-07-13 19:12:50', '65f5fea8-e7c1-429a-a0a4-e95e6e085656', 'Übersicht', '<p>Wer kennt sie nicht: Word, Excel, PowerPoint und Co. Alles leistungsfähige Apps für Selbständige, den Mittelstand und Großunternehmen. Gemacht für das produktive und mobile Arbeiten. Erstellen Sie ansprechende Dokumente, Informative Präsentationen oder Tabellenkalkulationen.</p>'),
(111, 282, 1, '2022-07-13 19:12:50', '2022-07-13 19:12:50', '2cbf2773-9f02-4b4a-97e6-78e69182c789', 'Einblick', '<p>Verschaffen Sie sich einen kleinen Eindruck davon, wie diese Tools aussehen und in den Geschäftsalltag integriert werden können.</p>'),
(112, 283, 1, '2022-07-13 19:12:50', '2022-07-13 19:12:50', 'e3fefdf5-cc7e-4a39-8897-0edd5e436275', 'Weitere Informationen', '<p>Wenn Sie mehr zu den Apps wissen möchten, <a href=\"http://localhost/kontakt\">nehmen Sie Kontakt zu uns auf</a>. Alternativ können Sie sich gerne direkt bei Microsoft einen noch tieferen Einblick verschaffen.</p>'),
(113, 286, 1, '2022-07-13 19:12:51', '2022-07-14 14:21:43', '530be615-5243-4aba-8fc0-86a4549acc05', 'Übersicht', '<p>Wer kennt sie nicht: Word, Excel, PowerPoint und Co. Alles leistungsfähige Apps für Selbständige, den Mittelstand und Großunternehmen. Gemacht für das produktive und mobile Arbeiten. Erstellen Sie ansprechende Dokumente, Informative Präsentationen oder Tabellenkalkulationen.</p>'),
(114, 287, 1, '2022-07-13 19:12:51', '2022-07-14 14:21:43', '7e264ab8-34f4-4bd0-a07e-ca272db8d168', 'Einblick', '<p>Verschaffen Sie sich einen kleinen Eindruck davon, wie diese Tools aussehen und in den Geschäftsalltag integriert werden können.</p>'),
(115, 288, 1, '2022-07-13 19:12:51', '2022-07-14 14:21:43', 'c653273c-bd71-47bd-9efa-8e5f06083c83', 'Weitere Informationen', '<p>Wenn Sie mehr zu den Apps wissen möchten, <a href=\"http://localhost/kontakt\">nehmen Sie Kontakt zu uns auf</a>. Alternativ können Sie sich gerne direkt bei Microsoft einen noch tieferen Einblick verschaffen.</p>'),
(116, 291, 1, '2022-07-13 19:12:51', '2022-07-13 19:12:51', 'f3b1c9fc-d6e7-4dcb-b3a2-a40a1a11bda6', 'Übersicht', '<p>Wer kennt sie nicht: Word, Excel, PowerPoint und Co. Alles leistungsfähige Apps für Selbständige, den Mittelstand und Großunternehmen. Gemacht für das produktive und mobile Arbeiten. Erstellen Sie ansprechende Dokumente, Informative Präsentationen oder Tabellenkalkulationen.</p>'),
(117, 292, 1, '2022-07-13 19:12:51', '2022-07-13 19:12:51', '197c1d9d-f90d-4823-9c10-b27e8735a004', 'Einblick', '<p>Verschaffen Sie sich einen kleinen Eindruck davon, wie diese Tools aussehen und in den Geschäftsalltag integriert werden können.</p>'),
(118, 293, 1, '2022-07-13 19:12:51', '2022-07-13 19:12:51', 'd43f7990-59cc-4eba-9200-c2b02bb039c2', 'Weitere Informationen', '<p>Wenn Sie mehr zu den Apps wissen möchten, <a href=\"http://localhost/kontakt\">nehmen Sie Kontakt zu uns auf</a>. Alternativ können Sie sich gerne direkt bei Microsoft einen noch tieferen Einblick verschaffen.</p>'),
(119, 296, 1, '2022-07-13 19:12:53', '2022-07-14 14:21:43', 'f5dfc2a6-84da-422d-8f99-7ad372c2a64e', 'Übersicht', '<p>Wer kennt sie nicht: Word, Excel, PowerPoint und Co. Alles leistungsfähige Apps für Selbständige, den Mittelstand und Großunternehmen. Gemacht für das produktive und mobile Arbeiten. Erstellen Sie ansprechende Dokumente, Informative Präsentationen oder Tabellenkalkulationen.</p>'),
(120, 297, 1, '2022-07-13 19:12:53', '2022-07-14 14:21:43', '59a18775-fd64-4df5-bee7-e8094debe589', 'Einblick', '<p>Verschaffen Sie sich einen kleinen Eindruck davon, wie diese Tools aussehen und in den Geschäftsalltag integriert werden können.</p>'),
(121, 298, 1, '2022-07-13 19:12:53', '2022-07-14 14:21:43', 'c3ec5eaf-18e1-4519-8406-96c2e44a4687', 'Weitere Informationen', '<p>Wenn Sie mehr zu den Apps wissen möchten, <a href=\"http://localhost/kontakt\">nehmen Sie Kontakt zu uns auf</a>. Alternativ können Sie sich gerne direkt bei Microsoft einen noch tieferen Einblick verschaffen.</p>'),
(122, 301, 1, '2022-07-13 19:12:53', '2022-07-13 19:12:53', '4618aead-0e17-4ff8-8aa1-2ad34bc19856', 'Übersicht', '<p>Wer kennt sie nicht: Word, Excel, PowerPoint und Co. Alles leistungsfähige Apps für Selbständige, den Mittelstand und Großunternehmen. Gemacht für das produktive und mobile Arbeiten. Erstellen Sie ansprechende Dokumente, Informative Präsentationen oder Tabellenkalkulationen.</p>'),
(123, 302, 1, '2022-07-13 19:12:53', '2022-07-13 19:12:53', '9dab8dbd-a45d-4041-89ff-45cf9cee4e82', 'Einblick', '<p>Verschaffen Sie sich einen kleinen Eindruck davon, wie diese Tools aussehen und in den Geschäftsalltag integriert werden können.</p>'),
(124, 303, 1, '2022-07-13 19:12:53', '2022-07-13 19:12:53', '08210cd9-12d5-4dd3-b617-ad8bea4447d6', 'Weitere Informationen', '<p>Wenn Sie mehr zu den Apps wissen möchten, <a href=\"http://localhost/kontakt\">nehmen Sie Kontakt zu uns auf</a>. Alternativ können Sie sich gerne direkt bei Microsoft einen noch tieferen Einblick verschaffen.</p>'),
(125, 315, 1, '2022-07-14 13:25:27', '2022-07-14 13:25:27', '21eaf3ac-888a-4360-8496-a30323c35d7b', 'Übersicht', '<p>Wer kennt sie nicht: Word, Excel, PowerPoint und Co. Alles leistungsfähige Apps für Selbständige, den Mittelstand und Großunternehmen. Gemacht für das produktive und mobile Arbeiten. Erstellen Sie ansprechende Dokumente, Informative Präsentationen oder Tabellenkalkulationen.</p>'),
(126, 316, 1, '2022-07-14 13:25:27', '2022-07-14 13:25:27', 'c46db03a-b727-4c59-a977-595e0109b2fb', 'Einblick', '<p>Verschaffen Sie sich einen kleinen Eindruck davon, wie diese Tools aussehen und in den Geschäftsalltag integriert werden können.</p>'),
(127, 317, 1, '2022-07-14 13:25:27', '2022-07-14 13:25:27', 'd781d93f-423b-4cab-ad17-7430f7c13417', 'Weitere Informationen', '<p>Wenn Sie mehr zu den Apps wissen möchten, <a href=\"http://localhost/kontakt\">nehmen Sie Kontakt zu uns auf</a>. Alternativ können Sie sich gerne direkt bei Microsoft einen noch tieferen Einblick verschaffen.</p>'),
(128, 329, 1, '2022-07-14 14:10:51', '2022-07-14 14:10:51', '093c3bd0-56e5-4c8b-aa30-aa8f874784ab', NULL, NULL),
(129, 330, 1, '2022-07-14 14:10:55', '2022-07-14 14:10:55', '7221a9ab-9a8f-43ce-aec8-5072f84c2369', 'Impressum & Datenschutz', NULL),
(130, 331, 1, '2022-07-14 14:10:56', '2022-07-14 14:10:56', 'f34270d3-7220-4ed7-92d8-aa3edfec0ce8', 'Impressum', NULL),
(131, 332, 1, '2022-07-14 14:10:58', '2022-07-14 14:10:58', '21a8cc70-4a47-4d22-b62a-b3716fd0eb66', 'Impressum', NULL),
(132, 333, 1, '2022-07-14 14:10:58', '2022-07-14 14:10:58', '250e7f73-8e01-4492-aa02-69fe5b6e940e', NULL, NULL),
(133, 334, 1, '2022-07-14 14:10:59', '2022-07-14 14:10:59', '177d06c9-5473-4544-a7ad-c310cb5e9fbb', 'Impressum', NULL),
(134, 335, 1, '2022-07-14 14:10:59', '2022-07-14 14:10:59', 'b72765ce-ca34-4f14-a7dc-f376d9d82cbd', 'Impressum & Datenschutz', NULL),
(135, 336, 1, '2022-07-14 14:11:01', '2022-07-14 14:11:01', '34d4c0ea-22db-44a1-b6f4-c8027169a1b2', 'Impressum', NULL),
(136, 337, 1, '2022-07-14 14:11:01', '2022-07-14 14:11:01', '10d57515-5586-4c4f-b11c-9b5c38771e84', 'Datenschutz', NULL),
(137, 338, 1, '2022-07-14 14:11:16', '2022-07-14 14:11:16', 'c884b42c-eebe-441a-ae00-e04e21eb6ef7', 'Impressum', '<p>cloud4success GmbH<br />Mies-van-der-Rohe Str. 6<br />80807 München<br />Deutschland</p>\r\n<p>Telefon: +49 89 54198912<br />Mail: info@cloud4success.de<br />Geschäftsführer: Thomas Marco Barra<br />Handelsregister: Amtsgericht München, HRB 271652<br />Umsatzsteuer-Identifikationsnummer(n): DE349730742<br />‍</p>\r\n<p>Berufshaftpflichtversicherung:<br />exali AG<br />Franz-Kobinger-Str. 9<br />86157 Augsburg<br />Der räumliche Geltungsbereich des Versicherungsschutzes umfasst Tätigkeiten in Europa.</p>\r\n<p>Die Europäische Kommission stellt eine Plattform zur Online-Streitbeilegung (OS) bereit, die Sie hier finden <a href=\"https://ec.europa.eu/consumers/odr/\">https://ec.europa.eu/consumers...</a>. Zur Teilnahme an einem Streitbeilegungsverfahren vor einer Verbraucherschlichtungsstelle sind wir nicht verpflichtet und nicht bereit.</p>'),
(138, 339, 1, '2022-07-14 14:11:16', '2022-07-14 14:11:16', '511fb7fa-6ca9-444c-abb9-651a6f7069e9', 'Datenschutz', NULL),
(139, 340, 1, '2022-07-14 14:11:52', '2022-07-14 14:11:52', '4ad821f7-52f1-4141-9aea-3c38a1a5ccc2', 'Impressum', '<p>cloud4success GmbH<br />Mies-van-der-Rohe Str. 6<br />80807 München<br />Deutschland</p>\r\n<p>Telefon: +49 89 54198912<br />Mail: info@cloud4success.de<br />Geschäftsführer: Thomas Marco Barra<br />Handelsregister: Amtsgericht München, HRB 271652<br />Umsatzsteuer-Identifikationsnummer(n): DE349730742<br />‍</p>\r\n<p>Berufshaftpflichtversicherung:<br />exali AG<br />Franz-Kobinger-Str. 9<br />86157 Augsburg<br />Der räumliche Geltungsbereich des Versicherungsschutzes umfasst Tätigkeiten in Europa.</p>\r\n<p>Die Europäische Kommission stellt eine Plattform zur Online-Streitbeilegung (OS) bereit, die Sie hier finden <a href=\"https://ec.europa.eu/consumers/odr/\">https://ec.europa.eu/consumers...</a>. Zur Teilnahme an einem Streitbeilegungsverfahren vor einer Verbraucherschlichtungsstelle sind wir nicht verpflichtet und nicht bereit.</p>');
INSERT INTO `matrixcontent_contentpost` (`id`, `elementId`, `siteId`, `dateCreated`, `dateUpdated`, `uid`, `field_items_titleText_hscgklex`, `field_items_descriptions_xgfjoona`) VALUES
(140, 341, 1, '2022-07-14 14:11:52', '2022-07-14 14:11:52', '5ffbe143-2481-4e74-9216-007a42302117', 'Datenschutz', '<p>Verantwortlicher für die Datenverarbeitung ist:</p>\r\n<p>cloud4success GmbH<br />Mies-van-der-Rohe Str. 6<br />München<br />Deutschland<br />info@cloud4success.de<br />Wir freuen uns über Ihr Interesse an unserer Webseite. Der Schutz Ihrer Privatsphäre ist für uns sehr wichtig. Nachstehend informieren wir Sie ausführlich über den Umgang mit Ihren Daten.</p>\r\n<p>1. Zugriffsdaten und Hosting<br />Sie können unsere Webseiten besuchen, ohne Angaben zu Ihrer Person zu machen. Bei jedem Aufruf einer Webseite speichert der Webserver lediglich automatisch ein sogenanntes Server-Logfile, das z.B. den Namen der angeforderten Datei, Ihre IP-Adresse, Datum und Uhrzeit des Abrufs, übertragene Datenmenge und den anfragenden Provider (Zugriffsdaten) enthält und den Abruf dokumentiert. Diese Zugriffsdaten werden ausschließlich zum Zwecke der Sicherstellung eines störungsfreien Betriebs der Seite sowie der Verbesserung unseres Angebots ausgewertet. Dies dient der Wahrung unserer im Rahmen einer Interessensabwägung überwiegenden berechtigten Interessen an einer korrekten Darstellung unseres Angebots gemäß Art. 6 Abs. 1 S. 1 lit. f DSGVO. Alle Zugriffsdaten werden spätestens sieben Tage nach Ende Ihres Seitenbesuchs gelöscht.</p>\r\n<p>Die Dienste zum Hosting und zur Darstellung der Webseite werden teilweise durch unsere Dienstleister im Rahmen einer Verarbeitung in unserem Auftrag erbracht. Soweit im Rahmen der vorliegenden Datenschutzerklärung nichts anderes erläutert wird, werden alle Zugriffsdaten sowie alle Daten, die in dafür vorgesehenen Formularen auf dieser Webseite erhoben werden, auf ihren Servern verarbeitet. Bei Fragen zu unseren Dienstleistern und der Grundlage unserer Zusammenarbeit mit ihnen wenden Sie sich bitte an die in dieser Datenschutzerklärung beschriebenen Kontaktmöglichkeit. Unsere Dienstleister sitzen in den USA. Für die USA liegt kein Angemessenheitsbeschluss der Europäischen Kommission vor. Unsere Zusammenarbeit mit ihnen stützt sich auf Standarddatenschutzklauseln der Europäischen Kommission.</p>\r\n<p>Content Delivery Network<br />Zum Zwecke einer kürzeren Ladezeit setzen wir bei einigen Angeboten ein sogenanntes Content Delivery Network („CDN“) ein. Bei diesem Dienst werden Inhalte, z.B. große Mediendateien, über regional verteilte Server externer CDN-Dienstleister ausgeliefert. Daher werden auf den Servern der Dienstleister Zugriffsdaten verarbeitet. Unsere Dienstleister sind im Rahmen einer Auftragsverarbeitung für uns tätig. Bei Fragen zu unseren Dienstleistern und der Grundlage unserer Zusammenarbeit mit Ihnen wenden Sie sich bitte an die in dieser Datenschutzerklärung beschriebenen Kontaktmöglichkeit. Unsere Dienstleister sitzen in den USA. Für die USA liegt kein Angemessenheitsbeschluss der Europäischen Kommission vor. Unsere Zusammenarbeit mit ihnen stützt sich auf Standarddatenschutzklauseln der Europäischen Kommission.</p>\r\n<p>2. Datenverarbeitung zur Kontaktaufnahme und Kundenkommunikation<br />Wir erheben personenbezogene Daten, wenn Sie uns diese bei einer Kontaktaufnahme mit uns (z.B. per Kontaktformular oder E-Mail) freiwillig mitteilen. Pflichtfelder werden als solche gekennzeichnet, da wir in diesen Fällen die Daten zwingend zur Bearbeitung Ihrer Kontaktaufnahme benötigen und sie ohne deren Angabe die Kontaktaufnahme nicht versenden können. Welche Daten erhoben werden, ist aus den jeweiligen Eingabeformularen ersichtlich. Wir verwenden die von ihnen mitgeteilten Daten zur Bearbeitung Ihrer Anfragen gemäß Art. 6 Abs. 1 S. 1 lit. b DSGVO.</p>\r\n<p>Nach vollständiger Abwicklung Ihrer Kundenanfrage werden Ihre Daten für die weitere Verarbeitung eingeschränkt und nach Ablauf der steuer- und handelsrechtlichen Aufbewahrungsfristen gemäß Art. 6 Abs. 1 S. 1 lit. c DSGVO gelöscht, sofern Sie nicht ausdrücklich in eine weitere Nutzung Ihrer Daten gemäß Art. 6 Abs. 1 S. 1 lit. a DSGVO eingewilligt haben oder wir uns eine darüber hinausgehende Datenverwendung vorbehalten, die gesetzlich erlaubt ist und über die wir Sie in dieser Erklärung informieren.</p>\r\n<p>3. Cookies und weitere Technologien<br />3.1 Allgemeine Informationen<br />Um den Besuch unserer Webseite attraktiv zu gestalten und die Nutzung bestimmter Funktionen zu ermöglichen, verwenden wir auf verschiedenen Seiten Technologien einschließlich sogenannter Cookies. Cookies sind kleine Textdateien, die automatisch auf Ihrem Endgerät gespeichert werden. Einige der von uns verwendeten Cookies werden nach Ende der Browser-Sitzung, also nach Schließen Ihres Browsers, wieder gelöscht (sog. Sitzungs-Cookies). Andere Cookies verbleiben auf Ihrem Endgerät und ermöglichen uns, Ihren Browser beim nächsten Besuch wiederzuerkennen (persistente Cookies).<br />Wir verwenden solche Technologien, die für die Nutzung bestimmter Funktionen unserer Webseite (z.B. Präferenzeinstellungen der Webseite) zwingend erforderlich sind. Durch diese Technologien werden IP-Adresse, Zeitpunkt des Besuchs, Geräte- und Browser-Informationen sowie Informationen zu Ihrer Nutzung unserer Webseite (z.B. Informationen zu Ihren Präferenzen) erhoben und verarbeitet. Dies dient im Rahmen einer Interessensabwägung überwiegenden berechtigten Interessen an einer optimierten Darstellung unseres Angebots gemäß Art. 6 Abs. 1 S. 1 lit. f DSGVO.</p>\r\n<p>Zudem verwenden wir Technologien zur Erfüllung der rechtlichen Verpflichtungen, denen wir unterliegen (z.B. um Einwilligungen in die Verarbeitung Ihrer personenbezogenen Daten nachweisen zu können) sowie zu Webanalyse und Online-Marketing. Weitere Informationen hierzu einschließlich der jeweiligen Rechtsgrundlage für die Datenverarbeitung finden Sie in den nachfolgenden Abschnitten dieser Datenschutzerklärung.</p>\r\n<p>Die Cookie-Einstellungen für Ihren Browser finden Sie unter den folgenden Links: Microsoft Edge™ / Safari™ / Chrome™ / Firefox™ / Opera™ Alternativ können Sie auch folgenden Link aufrufen: -. Bei der Nichtannahme von Cookies kann die Funktionalität unserer Webseite eingeschränkt sein.</p>\r\n<p>3.2 Einsatz des Jimdo Consent Manager Tool zur Verwaltung von Einwilligungen<br />Auf unserer Webseite setzen wir das Jimdo Consent Manager Tool ein, um Sie über die Cookies und die anderen Technologien zu informieren, die wir auf unserer Webseite verwenden, sowie Ihre gegebenenfalls erforderliche Einwilligung in die Verarbeitung Ihrer personenbezogenen Daten durch diese Technologien einzuholen, zu verwalten und zu dokumentieren. Dies ist gemäß Art. 6 Abs. 1 S. 1 lit. c DSGVO zur Erfüllung unserer rechtlichen Verpflichtung gemäß Art. 7 Abs. 1 DSGVO erforderlich, Ihre Einwilligung in die Verarbeitung Ihrer personenbezogenen Daten nachweisen zu können, der wir unterliegen. Das Jimdo Consent Manager Tool ist ein Angebot der Jimdo GmbH, Stresemannstrasse 375, 22761 Hamburg, Deutschland (\"Jimdo\"). Nach Abgabe Ihrer Cookie-Erklärung auf unserer Webseite speichert der Webserver von Jimdo Ihre IP-Adresse, Datum und Uhrzeit Ihrer Erklärung, Browser-Informationen, Sprache und URL von der die Erklärung gesendet wurde sowie Informationen zu Ihrem Einwilligungsverhalten. Zudem wird ein Cookie eingesetzt, das die Informationen zu Ihrem Einwilligungsverhalten enthält. Ihre Daten werden nach 365 Tagen gelöscht, sofern Sie nicht ausdrücklich in eine weitere Nutzung Ihrer Daten gemäß Art. 6 Abs. 1 S. 1 lit. a DSGVO eingewilligt haben oder wir uns eine darüber hinausgehende Datenverwendung vorbehalten, die gesetzlich erlaubt ist und über die wir Sie in dieser Erklärung informieren.</p>\r\n<p>4. Social Media<br />Unsere Onlinepräsenz auf Facebook (by Meta), Instagram (by Meta), Youtube, LinkedIn<br />Soweit Sie hierzu Ihre Einwilligung nach Art. 6 Abs. 1 S. 1 lit. a DSGVO gegenüber dem jeweiligen Social Media Betreiber erteilt haben, werden bei Besuch unserer Onlinepräsenzen auf den in der oben genannten sozialen Medien Ihre Daten für Marktforschungs- und Werbezwecke automatisch erhoben und gespeichert, aus denen unter Verwendung von Pseudonymen Nutzungsprofile erstellt werden. Diese können verwendet werden, um z.B. Werbeanzeigen innerhalb und außerhalb der Plattformen zu schalten, die mutmaßlich Ihren Interessen entsprechen. Hierzu werden im Regelfall Cookies eingesetzt. Die detaillierten Informationen zur Verarbeitung und Nutzung der Daten durch den jeweiligen Social Media Betreiber sowie eine Kontaktmöglichkeit und Ihre diesbezüglichen Rechte und Einstellungsmöglichkeiten zum Schutz Ihrer Privatsphäre, entnehmen Sie bitte den unten verlinkten Datenschutzhinweisen der Anbieter. Sollten Sie diesbezüglich dennoch Hilfe benötigen, können Sie sich an uns wenden.</p>\r\n<p>Facebook (by Meta) ist ein Angebot der Meta Platforms Ireland Ltd., 4 Grand Canal Square, Dublin 2, Irland („Meta Platforms Ireland“). Die durch Meta Platforms Ireland automatisch erhobenen Informationen über Ihre Nutzung unserer Online-Präsenz auf Facebook (by Meta) werden in der Regel an einen Server der Meta Platforms, Inc., 1 Hacker Way, Menlo Park, California 94025, USA übertragen und dort gespeichert. Für die USA liegt kein Angemessenheitsbeschluss der Europäischen Kommission vor. Unsere Zusammenarbeit mit ihnen stützt sich auf Standarddatenschutzklauseln der Europäischen Kommission.  Die Datenverarbeitung im Rahmen des Besuchs einer Facebook (by Meta) Fanpage erfolgt auf Grundlage einer Vereinbarung zwischen gemeinsam Verantwortlichen gemäß Art. 26 DSGVO. Weitere Informationen (Informationen zu Insights-Daten) finden Sie hier.</p>\r\n<p>Instagram (by Meta) ist ein Angebot der Meta Platforms Ireland Ltd., 4 Grand Canal Square, Dublin 2, Irland („Meta Platforms Ireland“) Die durch Meta Platforms Ireland automatisch erhobenen Informationen über Ihre Nutzung unserer Online-Präsenz auf Instagram werden in der Regel an einen Server der Meta Platforms, Inc., 1 Hacker Way, Menlo Park, California 94025, USA übertragen und dort gespeichert. Für die USA liegt kein Angemessenheitsbeschluss der Europäischen Kommission vor. Unsere Zusammenarbeit mit ihnen stützt sich auf Standarddatenschutzklauseln der Europäischen Kommission.  Die Datenverarbeitung im Rahmen des Besuchs einer Instagram (by Meta) Fanpage erfolgt auf Grundlage einer Vereinbarung zwischen gemeinsam Verantwortlichen gemäß Art. 26 DSGVO. Weitere Informationen (Informationen zu Insights-Daten) finden Sie hier.</p>\r\n<p>YouTube ist ein Angebot der Google Ireland Ltd., Gordon House, Barrow Street, Dublin 4, Irland („Google“). Die von Google automatisch erhobenen Informationen über Ihre Nutzung unserer Online-Präsenz auf YouTube werden in der Regel an einen Server der Google LLC, 1600 Amphitheatre Parkway Mountain View, CA 94043, USA übertragen und dort gespeichert. Für die USA liegt kein Angemessenheitsbeschluss der Europäischen Kommission vor. Unsere Zusammenarbeit mit ihnen stützt sich auf Standarddatenschutzklauseln der Europäischen Kommission.</p>\r\n<p>LinkedIn ist ein Angebot der LinkedIn Ireland Unlimited Company, Wilton Place, Dublin 2, Irland („LinkedIn“). Die von LinkedIn automatisch erhobenen Informationen über Ihre Nutzung unserer Online-Präsenz auf LinkedIn werden in der Regel an einen Server der LinkedIn Corporation, 1000 W. Maude Avenue, Sunnyvale, CA 94085, USA übertragen und dort gespeichert. Für die USA liegt kein Angemessenheitsbeschluss der Europäischen Kommission vor. Unsere Zusammenarbeit mit ihnen stützt sich auf Standarddatenschutzklauseln der Europäischen Kommission.</p>\r\n<p>5. Kontaktmöglichkeiten und Ihre Rechte<br />5.1 Ihre Rechte<br />Als Betroffener haben Sie folgende Rechte:</p>\r\n<p>gemäß Art. 15 DSGVO das Recht, in dem dort bezeichneten Umfang Auskunft über Ihre von uns verarbeiteten personenbezogenen Daten zu verlangen;<br />gemäß Art. 16 DSGVO das Recht, unverzüglich die Berichtigung unrichtiger oder Vervollständigung Ihrer bei uns gespeicherten personenbezogenen Daten zu verlangen;<br />gemäß Art. 17 DSGVO das Recht, die Löschung Ihrer bei uns gespeicherten personenbezogenen Daten zu verlangen, soweit nicht die weitere Verarbeitung<br />zur Ausübung des Rechts auf freie Meinungsäußerung und Information;<br />zur Erfüllung einer rechtlichen Verpflichtung;<br />aus Gründen des öffentlichen Interesses oder<br />zur Geltendmachung, Ausübung oder Verteidigung von Rechtsansprüchen erforderlich ist;<br />gemäß Art. 18 DSGVO das Recht, die Einschränkung der Verarbeitung Ihrer personenbezogenen Daten zu verlangen, soweit<br />die Richtigkeit der Daten von Ihnen bestritten wird;<br />die Verarbeitung unrechtmäßig ist, Sie aber deren Löschung ablehnen;<br />wir die Daten nicht mehr benötigen, Sie diese jedoch zur Geltendmachung, Ausübung oder Verteidigung von Rechtsansprüchen benötigen oder<br />Sie gemäß Art. 21 DSGVO Widerspruch gegen die Verarbeitung eingelegt haben;<br />gemäß Art. 20 DSGVO das Recht, Ihre personenbezogenen Daten, die Sie uns bereitgestellt haben, in einem strukturierten, gängigen und maschinenlesbaren Format zu erhalten oder die Übermittlung an einen anderen Verantwortlichen zu verlangen;<br />gemäß Art. 77 DSGVO das Recht, sich bei einer Aufsichtsbehörde zu beschweren. In der Regel können Sie sich hierfür an die Aufsichtsbehörde Ihres üblichen Aufenthaltsortes oder Arbeitsplatzes oder unseres Unternehmenssitzes wenden.<br />Widerspruchsrecht<br />Soweit wir zur Wahrung unserer im Rahmen einer Interessensabwägung überwiegenden berechtigten Interessen personenbezogene Daten wie oben erläutert verarbeiten, können Sie dieser Verarbeitung mit Wirkung für die Zukunft widersprechen. Erfolgt die Verarbeitung zu Zwecken des Direktmarketings, können Sie dieses Recht jederzeit wie oben beschrieben ausüben. Soweit die Verarbeitung zu anderen Zwecken erfolgt, steht Ihnen ein Widerspruchsrecht nur bei Vorliegen von Gründen, die sich aus Ihrer besonderen Situation ergeben, zu.</p>\r\n<p>Nach Ausübung Ihres Widerspruchsrechts werden wir Ihre personenbezogenen Daten nicht weiter zu diesen Zwecken verarbeiten, es sei denn, wir können zwingende schutzwürdige Gründe für die Verarbeitung nachweisen, die Ihre Interessen, Rechte und Freiheiten überwiegen, oder wenn die Verarbeitung der Geltendmachung, Ausübung oder Verteidigung von Rechtsansprüchen dient.</p>\r\n<p>Dies gilt nicht, wenn die Verarbeitung zu Zwecken des Direktmarketings erfolgt. Dann werden wir Ihre personenbezogenen Daten nicht weiter zu diesem Zweck verarbeiten.</p>\r\n<p>5.2 Kontaktmöglichkeiten<br />Bei Fragen zur Erhebung, Verarbeitung oder Nutzung Ihrer personenbezogenen Daten, bei Auskünften, Berichtigung, Einschränkung oder Löschung von Daten sowie Widerruf erteilter Einwilligungen oder Widerspruch gegen eine bestimmte Datenverwendung wenden Sie sich bitte direkt an uns über die Kontaktdaten in unserem Impressum.</p>'),
(143, 344, 1, '2022-07-14 14:12:13', '2022-07-14 14:12:13', 'f21ee1ba-163a-4cee-9056-aef20d8e55d9', 'Impressum', '<p>cloud4success GmbH<br />Mies-van-der-Rohe Str. 6<br />80807 München<br />Deutschland</p>\r\n<p>Telefon: +49 89 54198912<br />Mail: info@cloud4success.de<br />Geschäftsführer: Thomas Marco Barra<br />Handelsregister: Amtsgericht München, HRB 271652<br />Umsatzsteuer-Identifikationsnummer(n): DE349730742<br />‍</p>\r\n<p>Berufshaftpflichtversicherung:<br />exali AG<br />Franz-Kobinger-Str. 9<br />86157 Augsburg<br />Der räumliche Geltungsbereich des Versicherungsschutzes umfasst Tätigkeiten in Europa.</p>\r\n<p>Die Europäische Kommission stellt eine Plattform zur Online-Streitbeilegung (OS) bereit, die Sie hier finden <a href=\"https://ec.europa.eu/consumers/odr/\">https://ec.europa.eu/consumers...</a>. Zur Teilnahme an einem Streitbeilegungsverfahren vor einer Verbraucherschlichtungsstelle sind wir nicht verpflichtet und nicht bereit.</p>'),
(144, 345, 1, '2022-07-14 14:12:13', '2022-07-14 14:12:13', '9d04ae67-cb14-4398-aecb-c6428eb08d15', 'Datenschutzerklärung', '<p>Verantwortlicher für die Datenverarbeitung ist:</p>\r\n<p>cloud4success GmbH<br />Mies-van-der-Rohe Str. 6<br />München<br />Deutschland<br />info@cloud4success.de<br />Wir freuen uns über Ihr Interesse an unserer Webseite. Der Schutz Ihrer Privatsphäre ist für uns sehr wichtig. Nachstehend informieren wir Sie ausführlich über den Umgang mit Ihren Daten.</p>\r\n<p>1. Zugriffsdaten und Hosting<br />Sie können unsere Webseiten besuchen, ohne Angaben zu Ihrer Person zu machen. Bei jedem Aufruf einer Webseite speichert der Webserver lediglich automatisch ein sogenanntes Server-Logfile, das z.B. den Namen der angeforderten Datei, Ihre IP-Adresse, Datum und Uhrzeit des Abrufs, übertragene Datenmenge und den anfragenden Provider (Zugriffsdaten) enthält und den Abruf dokumentiert. Diese Zugriffsdaten werden ausschließlich zum Zwecke der Sicherstellung eines störungsfreien Betriebs der Seite sowie der Verbesserung unseres Angebots ausgewertet. Dies dient der Wahrung unserer im Rahmen einer Interessensabwägung überwiegenden berechtigten Interessen an einer korrekten Darstellung unseres Angebots gemäß Art. 6 Abs. 1 S. 1 lit. f DSGVO. Alle Zugriffsdaten werden spätestens sieben Tage nach Ende Ihres Seitenbesuchs gelöscht.</p>\r\n<p>Die Dienste zum Hosting und zur Darstellung der Webseite werden teilweise durch unsere Dienstleister im Rahmen einer Verarbeitung in unserem Auftrag erbracht. Soweit im Rahmen der vorliegenden Datenschutzerklärung nichts anderes erläutert wird, werden alle Zugriffsdaten sowie alle Daten, die in dafür vorgesehenen Formularen auf dieser Webseite erhoben werden, auf ihren Servern verarbeitet. Bei Fragen zu unseren Dienstleistern und der Grundlage unserer Zusammenarbeit mit ihnen wenden Sie sich bitte an die in dieser Datenschutzerklärung beschriebenen Kontaktmöglichkeit. Unsere Dienstleister sitzen in den USA. Für die USA liegt kein Angemessenheitsbeschluss der Europäischen Kommission vor. Unsere Zusammenarbeit mit ihnen stützt sich auf Standarddatenschutzklauseln der Europäischen Kommission.</p>\r\n<p>Content Delivery Network<br />Zum Zwecke einer kürzeren Ladezeit setzen wir bei einigen Angeboten ein sogenanntes Content Delivery Network („CDN“) ein. Bei diesem Dienst werden Inhalte, z.B. große Mediendateien, über regional verteilte Server externer CDN-Dienstleister ausgeliefert. Daher werden auf den Servern der Dienstleister Zugriffsdaten verarbeitet. Unsere Dienstleister sind im Rahmen einer Auftragsverarbeitung für uns tätig. Bei Fragen zu unseren Dienstleistern und der Grundlage unserer Zusammenarbeit mit Ihnen wenden Sie sich bitte an die in dieser Datenschutzerklärung beschriebenen Kontaktmöglichkeit. Unsere Dienstleister sitzen in den USA. Für die USA liegt kein Angemessenheitsbeschluss der Europäischen Kommission vor. Unsere Zusammenarbeit mit ihnen stützt sich auf Standarddatenschutzklauseln der Europäischen Kommission.</p>\r\n<p>2. Datenverarbeitung zur Kontaktaufnahme und Kundenkommunikation<br />Wir erheben personenbezogene Daten, wenn Sie uns diese bei einer Kontaktaufnahme mit uns (z.B. per Kontaktformular oder E-Mail) freiwillig mitteilen. Pflichtfelder werden als solche gekennzeichnet, da wir in diesen Fällen die Daten zwingend zur Bearbeitung Ihrer Kontaktaufnahme benötigen und sie ohne deren Angabe die Kontaktaufnahme nicht versenden können. Welche Daten erhoben werden, ist aus den jeweiligen Eingabeformularen ersichtlich. Wir verwenden die von ihnen mitgeteilten Daten zur Bearbeitung Ihrer Anfragen gemäß Art. 6 Abs. 1 S. 1 lit. b DSGVO.</p>\r\n<p>Nach vollständiger Abwicklung Ihrer Kundenanfrage werden Ihre Daten für die weitere Verarbeitung eingeschränkt und nach Ablauf der steuer- und handelsrechtlichen Aufbewahrungsfristen gemäß Art. 6 Abs. 1 S. 1 lit. c DSGVO gelöscht, sofern Sie nicht ausdrücklich in eine weitere Nutzung Ihrer Daten gemäß Art. 6 Abs. 1 S. 1 lit. a DSGVO eingewilligt haben oder wir uns eine darüber hinausgehende Datenverwendung vorbehalten, die gesetzlich erlaubt ist und über die wir Sie in dieser Erklärung informieren.</p>\r\n<p>3. Cookies und weitere Technologien<br />3.1 Allgemeine Informationen<br />Um den Besuch unserer Webseite attraktiv zu gestalten und die Nutzung bestimmter Funktionen zu ermöglichen, verwenden wir auf verschiedenen Seiten Technologien einschließlich sogenannter Cookies. Cookies sind kleine Textdateien, die automatisch auf Ihrem Endgerät gespeichert werden. Einige der von uns verwendeten Cookies werden nach Ende der Browser-Sitzung, also nach Schließen Ihres Browsers, wieder gelöscht (sog. Sitzungs-Cookies). Andere Cookies verbleiben auf Ihrem Endgerät und ermöglichen uns, Ihren Browser beim nächsten Besuch wiederzuerkennen (persistente Cookies).<br />Wir verwenden solche Technologien, die für die Nutzung bestimmter Funktionen unserer Webseite (z.B. Präferenzeinstellungen der Webseite) zwingend erforderlich sind. Durch diese Technologien werden IP-Adresse, Zeitpunkt des Besuchs, Geräte- und Browser-Informationen sowie Informationen zu Ihrer Nutzung unserer Webseite (z.B. Informationen zu Ihren Präferenzen) erhoben und verarbeitet. Dies dient im Rahmen einer Interessensabwägung überwiegenden berechtigten Interessen an einer optimierten Darstellung unseres Angebots gemäß Art. 6 Abs. 1 S. 1 lit. f DSGVO.</p>\r\n<p>Zudem verwenden wir Technologien zur Erfüllung der rechtlichen Verpflichtungen, denen wir unterliegen (z.B. um Einwilligungen in die Verarbeitung Ihrer personenbezogenen Daten nachweisen zu können) sowie zu Webanalyse und Online-Marketing. Weitere Informationen hierzu einschließlich der jeweiligen Rechtsgrundlage für die Datenverarbeitung finden Sie in den nachfolgenden Abschnitten dieser Datenschutzerklärung.</p>\r\n<p>Die Cookie-Einstellungen für Ihren Browser finden Sie unter den folgenden Links: Microsoft Edge™ / Safari™ / Chrome™ / Firefox™ / Opera™ Alternativ können Sie auch folgenden Link aufrufen: -. Bei der Nichtannahme von Cookies kann die Funktionalität unserer Webseite eingeschränkt sein.</p>\r\n<p>3.2 Einsatz des Jimdo Consent Manager Tool zur Verwaltung von Einwilligungen<br />Auf unserer Webseite setzen wir das Jimdo Consent Manager Tool ein, um Sie über die Cookies und die anderen Technologien zu informieren, die wir auf unserer Webseite verwenden, sowie Ihre gegebenenfalls erforderliche Einwilligung in die Verarbeitung Ihrer personenbezogenen Daten durch diese Technologien einzuholen, zu verwalten und zu dokumentieren. Dies ist gemäß Art. 6 Abs. 1 S. 1 lit. c DSGVO zur Erfüllung unserer rechtlichen Verpflichtung gemäß Art. 7 Abs. 1 DSGVO erforderlich, Ihre Einwilligung in die Verarbeitung Ihrer personenbezogenen Daten nachweisen zu können, der wir unterliegen. Das Jimdo Consent Manager Tool ist ein Angebot der Jimdo GmbH, Stresemannstrasse 375, 22761 Hamburg, Deutschland (\"Jimdo\"). Nach Abgabe Ihrer Cookie-Erklärung auf unserer Webseite speichert der Webserver von Jimdo Ihre IP-Adresse, Datum und Uhrzeit Ihrer Erklärung, Browser-Informationen, Sprache und URL von der die Erklärung gesendet wurde sowie Informationen zu Ihrem Einwilligungsverhalten. Zudem wird ein Cookie eingesetzt, das die Informationen zu Ihrem Einwilligungsverhalten enthält. Ihre Daten werden nach 365 Tagen gelöscht, sofern Sie nicht ausdrücklich in eine weitere Nutzung Ihrer Daten gemäß Art. 6 Abs. 1 S. 1 lit. a DSGVO eingewilligt haben oder wir uns eine darüber hinausgehende Datenverwendung vorbehalten, die gesetzlich erlaubt ist und über die wir Sie in dieser Erklärung informieren.</p>\r\n<p>4. Social Media<br />Unsere Onlinepräsenz auf Facebook (by Meta), Instagram (by Meta), Youtube, LinkedIn<br />Soweit Sie hierzu Ihre Einwilligung nach Art. 6 Abs. 1 S. 1 lit. a DSGVO gegenüber dem jeweiligen Social Media Betreiber erteilt haben, werden bei Besuch unserer Onlinepräsenzen auf den in der oben genannten sozialen Medien Ihre Daten für Marktforschungs- und Werbezwecke automatisch erhoben und gespeichert, aus denen unter Verwendung von Pseudonymen Nutzungsprofile erstellt werden. Diese können verwendet werden, um z.B. Werbeanzeigen innerhalb und außerhalb der Plattformen zu schalten, die mutmaßlich Ihren Interessen entsprechen. Hierzu werden im Regelfall Cookies eingesetzt. Die detaillierten Informationen zur Verarbeitung und Nutzung der Daten durch den jeweiligen Social Media Betreiber sowie eine Kontaktmöglichkeit und Ihre diesbezüglichen Rechte und Einstellungsmöglichkeiten zum Schutz Ihrer Privatsphäre, entnehmen Sie bitte den unten verlinkten Datenschutzhinweisen der Anbieter. Sollten Sie diesbezüglich dennoch Hilfe benötigen, können Sie sich an uns wenden.</p>\r\n<p>Facebook (by Meta) ist ein Angebot der Meta Platforms Ireland Ltd., 4 Grand Canal Square, Dublin 2, Irland („Meta Platforms Ireland“). Die durch Meta Platforms Ireland automatisch erhobenen Informationen über Ihre Nutzung unserer Online-Präsenz auf Facebook (by Meta) werden in der Regel an einen Server der Meta Platforms, Inc., 1 Hacker Way, Menlo Park, California 94025, USA übertragen und dort gespeichert. Für die USA liegt kein Angemessenheitsbeschluss der Europäischen Kommission vor. Unsere Zusammenarbeit mit ihnen stützt sich auf Standarddatenschutzklauseln der Europäischen Kommission.  Die Datenverarbeitung im Rahmen des Besuchs einer Facebook (by Meta) Fanpage erfolgt auf Grundlage einer Vereinbarung zwischen gemeinsam Verantwortlichen gemäß Art. 26 DSGVO. Weitere Informationen (Informationen zu Insights-Daten) finden Sie hier.</p>\r\n<p>Instagram (by Meta) ist ein Angebot der Meta Platforms Ireland Ltd., 4 Grand Canal Square, Dublin 2, Irland („Meta Platforms Ireland“) Die durch Meta Platforms Ireland automatisch erhobenen Informationen über Ihre Nutzung unserer Online-Präsenz auf Instagram werden in der Regel an einen Server der Meta Platforms, Inc., 1 Hacker Way, Menlo Park, California 94025, USA übertragen und dort gespeichert. Für die USA liegt kein Angemessenheitsbeschluss der Europäischen Kommission vor. Unsere Zusammenarbeit mit ihnen stützt sich auf Standarddatenschutzklauseln der Europäischen Kommission.  Die Datenverarbeitung im Rahmen des Besuchs einer Instagram (by Meta) Fanpage erfolgt auf Grundlage einer Vereinbarung zwischen gemeinsam Verantwortlichen gemäß Art. 26 DSGVO. Weitere Informationen (Informationen zu Insights-Daten) finden Sie hier.</p>\r\n<p>YouTube ist ein Angebot der Google Ireland Ltd., Gordon House, Barrow Street, Dublin 4, Irland („Google“). Die von Google automatisch erhobenen Informationen über Ihre Nutzung unserer Online-Präsenz auf YouTube werden in der Regel an einen Server der Google LLC, 1600 Amphitheatre Parkway Mountain View, CA 94043, USA übertragen und dort gespeichert. Für die USA liegt kein Angemessenheitsbeschluss der Europäischen Kommission vor. Unsere Zusammenarbeit mit ihnen stützt sich auf Standarddatenschutzklauseln der Europäischen Kommission.</p>\r\n<p>LinkedIn ist ein Angebot der LinkedIn Ireland Unlimited Company, Wilton Place, Dublin 2, Irland („LinkedIn“). Die von LinkedIn automatisch erhobenen Informationen über Ihre Nutzung unserer Online-Präsenz auf LinkedIn werden in der Regel an einen Server der LinkedIn Corporation, 1000 W. Maude Avenue, Sunnyvale, CA 94085, USA übertragen und dort gespeichert. Für die USA liegt kein Angemessenheitsbeschluss der Europäischen Kommission vor. Unsere Zusammenarbeit mit ihnen stützt sich auf Standarddatenschutzklauseln der Europäischen Kommission.</p>\r\n<p>5. Kontaktmöglichkeiten und Ihre Rechte<br />5.1 Ihre Rechte<br />Als Betroffener haben Sie folgende Rechte:</p>\r\n<p>gemäß Art. 15 DSGVO das Recht, in dem dort bezeichneten Umfang Auskunft über Ihre von uns verarbeiteten personenbezogenen Daten zu verlangen;<br />gemäß Art. 16 DSGVO das Recht, unverzüglich die Berichtigung unrichtiger oder Vervollständigung Ihrer bei uns gespeicherten personenbezogenen Daten zu verlangen;<br />gemäß Art. 17 DSGVO das Recht, die Löschung Ihrer bei uns gespeicherten personenbezogenen Daten zu verlangen, soweit nicht die weitere Verarbeitung<br />zur Ausübung des Rechts auf freie Meinungsäußerung und Information;<br />zur Erfüllung einer rechtlichen Verpflichtung;<br />aus Gründen des öffentlichen Interesses oder<br />zur Geltendmachung, Ausübung oder Verteidigung von Rechtsansprüchen erforderlich ist;<br />gemäß Art. 18 DSGVO das Recht, die Einschränkung der Verarbeitung Ihrer personenbezogenen Daten zu verlangen, soweit<br />die Richtigkeit der Daten von Ihnen bestritten wird;<br />die Verarbeitung unrechtmäßig ist, Sie aber deren Löschung ablehnen;<br />wir die Daten nicht mehr benötigen, Sie diese jedoch zur Geltendmachung, Ausübung oder Verteidigung von Rechtsansprüchen benötigen oder<br />Sie gemäß Art. 21 DSGVO Widerspruch gegen die Verarbeitung eingelegt haben;<br />gemäß Art. 20 DSGVO das Recht, Ihre personenbezogenen Daten, die Sie uns bereitgestellt haben, in einem strukturierten, gängigen und maschinenlesbaren Format zu erhalten oder die Übermittlung an einen anderen Verantwortlichen zu verlangen;<br />gemäß Art. 77 DSGVO das Recht, sich bei einer Aufsichtsbehörde zu beschweren. In der Regel können Sie sich hierfür an die Aufsichtsbehörde Ihres üblichen Aufenthaltsortes oder Arbeitsplatzes oder unseres Unternehmenssitzes wenden.<br />Widerspruchsrecht<br />Soweit wir zur Wahrung unserer im Rahmen einer Interessensabwägung überwiegenden berechtigten Interessen personenbezogene Daten wie oben erläutert verarbeiten, können Sie dieser Verarbeitung mit Wirkung für die Zukunft widersprechen. Erfolgt die Verarbeitung zu Zwecken des Direktmarketings, können Sie dieses Recht jederzeit wie oben beschrieben ausüben. Soweit die Verarbeitung zu anderen Zwecken erfolgt, steht Ihnen ein Widerspruchsrecht nur bei Vorliegen von Gründen, die sich aus Ihrer besonderen Situation ergeben, zu.</p>\r\n<p>Nach Ausübung Ihres Widerspruchsrechts werden wir Ihre personenbezogenen Daten nicht weiter zu diesen Zwecken verarbeiten, es sei denn, wir können zwingende schutzwürdige Gründe für die Verarbeitung nachweisen, die Ihre Interessen, Rechte und Freiheiten überwiegen, oder wenn die Verarbeitung der Geltendmachung, Ausübung oder Verteidigung von Rechtsansprüchen dient.</p>\r\n<p>Dies gilt nicht, wenn die Verarbeitung zu Zwecken des Direktmarketings erfolgt. Dann werden wir Ihre personenbezogenen Daten nicht weiter zu diesem Zweck verarbeiten.</p>\r\n<p>5.2 Kontaktmöglichkeiten<br />Bei Fragen zur Erhebung, Verarbeitung oder Nutzung Ihrer personenbezogenen Daten, bei Auskünften, Berichtigung, Einschränkung oder Löschung von Daten sowie Widerruf erteilter Einwilligungen oder Widerspruch gegen eine bestimmte Datenverwendung wenden Sie sich bitte direkt an uns über die Kontaktdaten in unserem Impressum.</p>'),
(145, 347, 1, '2022-07-14 14:12:13', '2022-07-14 14:12:13', '0fe53d89-e977-4ad0-a69e-70c8157894b8', 'Impressum', '<p>cloud4success GmbH<br />Mies-van-der-Rohe Str. 6<br />80807 München<br />Deutschland</p>\r\n<p>Telefon: +49 89 54198912<br />Mail: info@cloud4success.de<br />Geschäftsführer: Thomas Marco Barra<br />Handelsregister: Amtsgericht München, HRB 271652<br />Umsatzsteuer-Identifikationsnummer(n): DE349730742<br />‍</p>\r\n<p>Berufshaftpflichtversicherung:<br />exali AG<br />Franz-Kobinger-Str. 9<br />86157 Augsburg<br />Der räumliche Geltungsbereich des Versicherungsschutzes umfasst Tätigkeiten in Europa.</p>\r\n<p>Die Europäische Kommission stellt eine Plattform zur Online-Streitbeilegung (OS) bereit, die Sie hier finden <a href=\"https://ec.europa.eu/consumers/odr/\">https://ec.europa.eu/consumers...</a>. Zur Teilnahme an einem Streitbeilegungsverfahren vor einer Verbraucherschlichtungsstelle sind wir nicht verpflichtet und nicht bereit.</p>'),
(146, 348, 1, '2022-07-14 14:12:13', '2022-07-14 14:12:13', '5fd7a548-cb99-4bad-9b9b-b6ce53317b93', 'Datenschutzerklärung', '<p>Verantwortlicher für die Datenverarbeitung ist:</p>\r\n<p>cloud4success GmbH<br />Mies-van-der-Rohe Str. 6<br />München<br />Deutschland<br />info@cloud4success.de<br />Wir freuen uns über Ihr Interesse an unserer Webseite. Der Schutz Ihrer Privatsphäre ist für uns sehr wichtig. Nachstehend informieren wir Sie ausführlich über den Umgang mit Ihren Daten.</p>\r\n<p>1. Zugriffsdaten und Hosting<br />Sie können unsere Webseiten besuchen, ohne Angaben zu Ihrer Person zu machen. Bei jedem Aufruf einer Webseite speichert der Webserver lediglich automatisch ein sogenanntes Server-Logfile, das z.B. den Namen der angeforderten Datei, Ihre IP-Adresse, Datum und Uhrzeit des Abrufs, übertragene Datenmenge und den anfragenden Provider (Zugriffsdaten) enthält und den Abruf dokumentiert. Diese Zugriffsdaten werden ausschließlich zum Zwecke der Sicherstellung eines störungsfreien Betriebs der Seite sowie der Verbesserung unseres Angebots ausgewertet. Dies dient der Wahrung unserer im Rahmen einer Interessensabwägung überwiegenden berechtigten Interessen an einer korrekten Darstellung unseres Angebots gemäß Art. 6 Abs. 1 S. 1 lit. f DSGVO. Alle Zugriffsdaten werden spätestens sieben Tage nach Ende Ihres Seitenbesuchs gelöscht.</p>\r\n<p>Die Dienste zum Hosting und zur Darstellung der Webseite werden teilweise durch unsere Dienstleister im Rahmen einer Verarbeitung in unserem Auftrag erbracht. Soweit im Rahmen der vorliegenden Datenschutzerklärung nichts anderes erläutert wird, werden alle Zugriffsdaten sowie alle Daten, die in dafür vorgesehenen Formularen auf dieser Webseite erhoben werden, auf ihren Servern verarbeitet. Bei Fragen zu unseren Dienstleistern und der Grundlage unserer Zusammenarbeit mit ihnen wenden Sie sich bitte an die in dieser Datenschutzerklärung beschriebenen Kontaktmöglichkeit. Unsere Dienstleister sitzen in den USA. Für die USA liegt kein Angemessenheitsbeschluss der Europäischen Kommission vor. Unsere Zusammenarbeit mit ihnen stützt sich auf Standarddatenschutzklauseln der Europäischen Kommission.</p>\r\n<p>Content Delivery Network<br />Zum Zwecke einer kürzeren Ladezeit setzen wir bei einigen Angeboten ein sogenanntes Content Delivery Network („CDN“) ein. Bei diesem Dienst werden Inhalte, z.B. große Mediendateien, über regional verteilte Server externer CDN-Dienstleister ausgeliefert. Daher werden auf den Servern der Dienstleister Zugriffsdaten verarbeitet. Unsere Dienstleister sind im Rahmen einer Auftragsverarbeitung für uns tätig. Bei Fragen zu unseren Dienstleistern und der Grundlage unserer Zusammenarbeit mit Ihnen wenden Sie sich bitte an die in dieser Datenschutzerklärung beschriebenen Kontaktmöglichkeit. Unsere Dienstleister sitzen in den USA. Für die USA liegt kein Angemessenheitsbeschluss der Europäischen Kommission vor. Unsere Zusammenarbeit mit ihnen stützt sich auf Standarddatenschutzklauseln der Europäischen Kommission.</p>\r\n<p>2. Datenverarbeitung zur Kontaktaufnahme und Kundenkommunikation<br />Wir erheben personenbezogene Daten, wenn Sie uns diese bei einer Kontaktaufnahme mit uns (z.B. per Kontaktformular oder E-Mail) freiwillig mitteilen. Pflichtfelder werden als solche gekennzeichnet, da wir in diesen Fällen die Daten zwingend zur Bearbeitung Ihrer Kontaktaufnahme benötigen und sie ohne deren Angabe die Kontaktaufnahme nicht versenden können. Welche Daten erhoben werden, ist aus den jeweiligen Eingabeformularen ersichtlich. Wir verwenden die von ihnen mitgeteilten Daten zur Bearbeitung Ihrer Anfragen gemäß Art. 6 Abs. 1 S. 1 lit. b DSGVO.</p>\r\n<p>Nach vollständiger Abwicklung Ihrer Kundenanfrage werden Ihre Daten für die weitere Verarbeitung eingeschränkt und nach Ablauf der steuer- und handelsrechtlichen Aufbewahrungsfristen gemäß Art. 6 Abs. 1 S. 1 lit. c DSGVO gelöscht, sofern Sie nicht ausdrücklich in eine weitere Nutzung Ihrer Daten gemäß Art. 6 Abs. 1 S. 1 lit. a DSGVO eingewilligt haben oder wir uns eine darüber hinausgehende Datenverwendung vorbehalten, die gesetzlich erlaubt ist und über die wir Sie in dieser Erklärung informieren.</p>\r\n<p>3. Cookies und weitere Technologien<br />3.1 Allgemeine Informationen<br />Um den Besuch unserer Webseite attraktiv zu gestalten und die Nutzung bestimmter Funktionen zu ermöglichen, verwenden wir auf verschiedenen Seiten Technologien einschließlich sogenannter Cookies. Cookies sind kleine Textdateien, die automatisch auf Ihrem Endgerät gespeichert werden. Einige der von uns verwendeten Cookies werden nach Ende der Browser-Sitzung, also nach Schließen Ihres Browsers, wieder gelöscht (sog. Sitzungs-Cookies). Andere Cookies verbleiben auf Ihrem Endgerät und ermöglichen uns, Ihren Browser beim nächsten Besuch wiederzuerkennen (persistente Cookies).<br />Wir verwenden solche Technologien, die für die Nutzung bestimmter Funktionen unserer Webseite (z.B. Präferenzeinstellungen der Webseite) zwingend erforderlich sind. Durch diese Technologien werden IP-Adresse, Zeitpunkt des Besuchs, Geräte- und Browser-Informationen sowie Informationen zu Ihrer Nutzung unserer Webseite (z.B. Informationen zu Ihren Präferenzen) erhoben und verarbeitet. Dies dient im Rahmen einer Interessensabwägung überwiegenden berechtigten Interessen an einer optimierten Darstellung unseres Angebots gemäß Art. 6 Abs. 1 S. 1 lit. f DSGVO.</p>\r\n<p>Zudem verwenden wir Technologien zur Erfüllung der rechtlichen Verpflichtungen, denen wir unterliegen (z.B. um Einwilligungen in die Verarbeitung Ihrer personenbezogenen Daten nachweisen zu können) sowie zu Webanalyse und Online-Marketing. Weitere Informationen hierzu einschließlich der jeweiligen Rechtsgrundlage für die Datenverarbeitung finden Sie in den nachfolgenden Abschnitten dieser Datenschutzerklärung.</p>\r\n<p>Die Cookie-Einstellungen für Ihren Browser finden Sie unter den folgenden Links: Microsoft Edge™ / Safari™ / Chrome™ / Firefox™ / Opera™ Alternativ können Sie auch folgenden Link aufrufen: -. Bei der Nichtannahme von Cookies kann die Funktionalität unserer Webseite eingeschränkt sein.</p>\r\n<p>3.2 Einsatz des Jimdo Consent Manager Tool zur Verwaltung von Einwilligungen<br />Auf unserer Webseite setzen wir das Jimdo Consent Manager Tool ein, um Sie über die Cookies und die anderen Technologien zu informieren, die wir auf unserer Webseite verwenden, sowie Ihre gegebenenfalls erforderliche Einwilligung in die Verarbeitung Ihrer personenbezogenen Daten durch diese Technologien einzuholen, zu verwalten und zu dokumentieren. Dies ist gemäß Art. 6 Abs. 1 S. 1 lit. c DSGVO zur Erfüllung unserer rechtlichen Verpflichtung gemäß Art. 7 Abs. 1 DSGVO erforderlich, Ihre Einwilligung in die Verarbeitung Ihrer personenbezogenen Daten nachweisen zu können, der wir unterliegen. Das Jimdo Consent Manager Tool ist ein Angebot der Jimdo GmbH, Stresemannstrasse 375, 22761 Hamburg, Deutschland (\"Jimdo\"). Nach Abgabe Ihrer Cookie-Erklärung auf unserer Webseite speichert der Webserver von Jimdo Ihre IP-Adresse, Datum und Uhrzeit Ihrer Erklärung, Browser-Informationen, Sprache und URL von der die Erklärung gesendet wurde sowie Informationen zu Ihrem Einwilligungsverhalten. Zudem wird ein Cookie eingesetzt, das die Informationen zu Ihrem Einwilligungsverhalten enthält. Ihre Daten werden nach 365 Tagen gelöscht, sofern Sie nicht ausdrücklich in eine weitere Nutzung Ihrer Daten gemäß Art. 6 Abs. 1 S. 1 lit. a DSGVO eingewilligt haben oder wir uns eine darüber hinausgehende Datenverwendung vorbehalten, die gesetzlich erlaubt ist und über die wir Sie in dieser Erklärung informieren.</p>\r\n<p>4. Social Media<br />Unsere Onlinepräsenz auf Facebook (by Meta), Instagram (by Meta), Youtube, LinkedIn<br />Soweit Sie hierzu Ihre Einwilligung nach Art. 6 Abs. 1 S. 1 lit. a DSGVO gegenüber dem jeweiligen Social Media Betreiber erteilt haben, werden bei Besuch unserer Onlinepräsenzen auf den in der oben genannten sozialen Medien Ihre Daten für Marktforschungs- und Werbezwecke automatisch erhoben und gespeichert, aus denen unter Verwendung von Pseudonymen Nutzungsprofile erstellt werden. Diese können verwendet werden, um z.B. Werbeanzeigen innerhalb und außerhalb der Plattformen zu schalten, die mutmaßlich Ihren Interessen entsprechen. Hierzu werden im Regelfall Cookies eingesetzt. Die detaillierten Informationen zur Verarbeitung und Nutzung der Daten durch den jeweiligen Social Media Betreiber sowie eine Kontaktmöglichkeit und Ihre diesbezüglichen Rechte und Einstellungsmöglichkeiten zum Schutz Ihrer Privatsphäre, entnehmen Sie bitte den unten verlinkten Datenschutzhinweisen der Anbieter. Sollten Sie diesbezüglich dennoch Hilfe benötigen, können Sie sich an uns wenden.</p>\r\n<p>Facebook (by Meta) ist ein Angebot der Meta Platforms Ireland Ltd., 4 Grand Canal Square, Dublin 2, Irland („Meta Platforms Ireland“). Die durch Meta Platforms Ireland automatisch erhobenen Informationen über Ihre Nutzung unserer Online-Präsenz auf Facebook (by Meta) werden in der Regel an einen Server der Meta Platforms, Inc., 1 Hacker Way, Menlo Park, California 94025, USA übertragen und dort gespeichert. Für die USA liegt kein Angemessenheitsbeschluss der Europäischen Kommission vor. Unsere Zusammenarbeit mit ihnen stützt sich auf Standarddatenschutzklauseln der Europäischen Kommission.  Die Datenverarbeitung im Rahmen des Besuchs einer Facebook (by Meta) Fanpage erfolgt auf Grundlage einer Vereinbarung zwischen gemeinsam Verantwortlichen gemäß Art. 26 DSGVO. Weitere Informationen (Informationen zu Insights-Daten) finden Sie hier.</p>\r\n<p>Instagram (by Meta) ist ein Angebot der Meta Platforms Ireland Ltd., 4 Grand Canal Square, Dublin 2, Irland („Meta Platforms Ireland“) Die durch Meta Platforms Ireland automatisch erhobenen Informationen über Ihre Nutzung unserer Online-Präsenz auf Instagram werden in der Regel an einen Server der Meta Platforms, Inc., 1 Hacker Way, Menlo Park, California 94025, USA übertragen und dort gespeichert. Für die USA liegt kein Angemessenheitsbeschluss der Europäischen Kommission vor. Unsere Zusammenarbeit mit ihnen stützt sich auf Standarddatenschutzklauseln der Europäischen Kommission.  Die Datenverarbeitung im Rahmen des Besuchs einer Instagram (by Meta) Fanpage erfolgt auf Grundlage einer Vereinbarung zwischen gemeinsam Verantwortlichen gemäß Art. 26 DSGVO. Weitere Informationen (Informationen zu Insights-Daten) finden Sie hier.</p>\r\n<p>YouTube ist ein Angebot der Google Ireland Ltd., Gordon House, Barrow Street, Dublin 4, Irland („Google“). Die von Google automatisch erhobenen Informationen über Ihre Nutzung unserer Online-Präsenz auf YouTube werden in der Regel an einen Server der Google LLC, 1600 Amphitheatre Parkway Mountain View, CA 94043, USA übertragen und dort gespeichert. Für die USA liegt kein Angemessenheitsbeschluss der Europäischen Kommission vor. Unsere Zusammenarbeit mit ihnen stützt sich auf Standarddatenschutzklauseln der Europäischen Kommission.</p>\r\n<p>LinkedIn ist ein Angebot der LinkedIn Ireland Unlimited Company, Wilton Place, Dublin 2, Irland („LinkedIn“). Die von LinkedIn automatisch erhobenen Informationen über Ihre Nutzung unserer Online-Präsenz auf LinkedIn werden in der Regel an einen Server der LinkedIn Corporation, 1000 W. Maude Avenue, Sunnyvale, CA 94085, USA übertragen und dort gespeichert. Für die USA liegt kein Angemessenheitsbeschluss der Europäischen Kommission vor. Unsere Zusammenarbeit mit ihnen stützt sich auf Standarddatenschutzklauseln der Europäischen Kommission.</p>\r\n<p>5. Kontaktmöglichkeiten und Ihre Rechte<br />5.1 Ihre Rechte<br />Als Betroffener haben Sie folgende Rechte:</p>\r\n<p>gemäß Art. 15 DSGVO das Recht, in dem dort bezeichneten Umfang Auskunft über Ihre von uns verarbeiteten personenbezogenen Daten zu verlangen;<br />gemäß Art. 16 DSGVO das Recht, unverzüglich die Berichtigung unrichtiger oder Vervollständigung Ihrer bei uns gespeicherten personenbezogenen Daten zu verlangen;<br />gemäß Art. 17 DSGVO das Recht, die Löschung Ihrer bei uns gespeicherten personenbezogenen Daten zu verlangen, soweit nicht die weitere Verarbeitung<br />zur Ausübung des Rechts auf freie Meinungsäußerung und Information;<br />zur Erfüllung einer rechtlichen Verpflichtung;<br />aus Gründen des öffentlichen Interesses oder<br />zur Geltendmachung, Ausübung oder Verteidigung von Rechtsansprüchen erforderlich ist;<br />gemäß Art. 18 DSGVO das Recht, die Einschränkung der Verarbeitung Ihrer personenbezogenen Daten zu verlangen, soweit<br />die Richtigkeit der Daten von Ihnen bestritten wird;<br />die Verarbeitung unrechtmäßig ist, Sie aber deren Löschung ablehnen;<br />wir die Daten nicht mehr benötigen, Sie diese jedoch zur Geltendmachung, Ausübung oder Verteidigung von Rechtsansprüchen benötigen oder<br />Sie gemäß Art. 21 DSGVO Widerspruch gegen die Verarbeitung eingelegt haben;<br />gemäß Art. 20 DSGVO das Recht, Ihre personenbezogenen Daten, die Sie uns bereitgestellt haben, in einem strukturierten, gängigen und maschinenlesbaren Format zu erhalten oder die Übermittlung an einen anderen Verantwortlichen zu verlangen;<br />gemäß Art. 77 DSGVO das Recht, sich bei einer Aufsichtsbehörde zu beschweren. In der Regel können Sie sich hierfür an die Aufsichtsbehörde Ihres üblichen Aufenthaltsortes oder Arbeitsplatzes oder unseres Unternehmenssitzes wenden.<br />Widerspruchsrecht<br />Soweit wir zur Wahrung unserer im Rahmen einer Interessensabwägung überwiegenden berechtigten Interessen personenbezogene Daten wie oben erläutert verarbeiten, können Sie dieser Verarbeitung mit Wirkung für die Zukunft widersprechen. Erfolgt die Verarbeitung zu Zwecken des Direktmarketings, können Sie dieses Recht jederzeit wie oben beschrieben ausüben. Soweit die Verarbeitung zu anderen Zwecken erfolgt, steht Ihnen ein Widerspruchsrecht nur bei Vorliegen von Gründen, die sich aus Ihrer besonderen Situation ergeben, zu.</p>\r\n<p>Nach Ausübung Ihres Widerspruchsrechts werden wir Ihre personenbezogenen Daten nicht weiter zu diesen Zwecken verarbeiten, es sei denn, wir können zwingende schutzwürdige Gründe für die Verarbeitung nachweisen, die Ihre Interessen, Rechte und Freiheiten überwiegen, oder wenn die Verarbeitung der Geltendmachung, Ausübung oder Verteidigung von Rechtsansprüchen dient.</p>\r\n<p>Dies gilt nicht, wenn die Verarbeitung zu Zwecken des Direktmarketings erfolgt. Dann werden wir Ihre personenbezogenen Daten nicht weiter zu diesem Zweck verarbeiten.</p>\r\n<p>5.2 Kontaktmöglichkeiten<br />Bei Fragen zur Erhebung, Verarbeitung oder Nutzung Ihrer personenbezogenen Daten, bei Auskünften, Berichtigung, Einschränkung oder Löschung von Daten sowie Widerruf erteilter Einwilligungen oder Widerspruch gegen eine bestimmte Datenverwendung wenden Sie sich bitte direkt an uns über die Kontaktdaten in unserem Impressum.</p>'),
(147, 354, 1, '2022-07-14 14:36:18', '2022-07-14 14:36:18', 'b5a737fc-20a4-4e4a-98ce-4360de2ca572', 'Übersicht', '<p>Wer kennt sie nicht: Word, Excel, PowerPoint und Co. Alles leistungsfähige Apps für Selbständige, den Mittelstand und Großunternehmen. Gemacht für das produktive und mobile Arbeiten. Erstellen Sie ansprechende Dokumente, Informative Präsentationen oder Tabellenkalkulationen.</p>'),
(148, 355, 1, '2022-07-14 14:36:18', '2022-07-14 14:36:18', '24441af2-e3ce-47de-8069-d92250faee37', 'Einblick', '<p>Verschaffen Sie sich einen kleinen Eindruck davon, wie diese Tools aussehen und in den Geschäftsalltag integriert werden können.</p>'),
(149, 356, 1, '2022-07-14 14:36:18', '2022-07-14 14:36:18', 'a795e80b-4bec-4c80-aead-74f9b0015082', 'Weitere Informationen', '<p>Wenn Sie mehr zu den Apps wissen möchten, <a href=\"http://localhost/kontakt\">nehmen Sie Kontakt zu uns auf</a>. Alternativ können Sie sich gerne direkt bei Microsoft einen noch tieferen Einblick verschaffen.</p>'),
(150, 360, 1, '2022-07-14 14:43:20', '2022-07-14 14:43:20', 'a6a7104e-72b9-41dd-adf2-29eefa9f701f', 'Übersicht', '<p>Wer kennt sie nicht: Word, Excel, PowerPoint und Co. Alles leistungsfähige Apps für Selbständige, den Mittelstand und Großunternehmen. Gemacht für das produktive und mobile Arbeiten. Erstellen Sie ansprechende Dokumente, Informative Präsentationen oder Tabellenkalkulationen.</p>'),
(151, 361, 1, '2022-07-14 14:43:20', '2022-07-14 14:43:20', '088e4ecd-a07a-46ac-ad1a-e04d8faa9769', 'Einblick', '<p>Verschaffen Sie sich einen kleinen Eindruck davon, wie diese Tools aussehen und in den Geschäftsalltag integriert werden können.</p>'),
(152, 362, 1, '2022-07-14 14:43:20', '2022-07-14 14:43:20', '385bedb4-f656-4ac7-9306-b22c154ac09a', 'Weitere Informationen', '<p>Wenn Sie mehr zu den Apps wissen möchten, <a href=\"http://localhost/kontakt\">nehmen Sie Kontakt zu uns auf</a>. Alternativ können Sie sich gerne direkt bei Microsoft einen noch tieferen Einblick verschaffen.</p>'),
(153, 366, 1, '2022-07-14 14:49:12', '2022-07-14 14:49:12', '330d7cd4-7541-4b00-af21-04f5ffbeb4a3', 'Übersicht', '<p>Wer kennt sie nicht: Word, Excel, PowerPoint und Co. Alles leistungsfähige Apps für Selbständige, den Mittelstand und Großunternehmen. Gemacht für das produktive und mobile Arbeiten. Erstellen Sie ansprechende Dokumente, Informative Präsentationen oder Tabellenkalkulationen.</p>'),
(154, 367, 1, '2022-07-14 14:49:12', '2022-07-14 14:49:12', '7d64545b-ced2-4b31-8d8d-7b0ca70d7c9f', 'Einblick', '<p>Verschaffen Sie sich einen kleinen Eindruck davon, wie diese Tools aussehen und in den Geschäftsalltag integriert werden können.</p>'),
(155, 368, 1, '2022-07-14 14:49:12', '2022-07-14 14:49:12', '7fe4be4e-84f4-4520-a290-c6639bb2b5ba', 'Weitere Informationen', '<p>Wenn Sie mehr zu den Apps wissen möchten, <a href=\"http://localhost/kontakt\">nehmen Sie Kontakt zu uns auf</a>. Alternativ können Sie sich gerne direkt bei Microsoft einen noch tieferen Einblick verschaffen.</p>'),
(156, 379, 1, '2022-07-14 15:22:32', '2022-07-14 15:22:32', 'edbbe2d0-b36e-46af-9007-ca24997e5603', 'Übersicht', '<p>Wer kennt sie nicht: Word, Excel, PowerPoint und Co. Alles leistungsfähige Apps für Selbständige, den Mittelstand und Großunternehmen. Gemacht für das produktive und mobile Arbeiten. Erstellen Sie ansprechende Dokumente, Informative Präsentationen oder Tabellenkalkulationen.</p>');
INSERT INTO `matrixcontent_contentpost` (`id`, `elementId`, `siteId`, `dateCreated`, `dateUpdated`, `uid`, `field_items_titleText_hscgklex`, `field_items_descriptions_xgfjoona`) VALUES
(157, 380, 1, '2022-07-14 15:22:32', '2022-07-14 15:22:32', '236a22ed-54c0-4ff4-8cd1-1323df3184f5', 'Einblick', '<p>Verschaffen Sie sich einen kleinen Eindruck davon, wie diese Tools aussehen und in den Geschäftsalltag integriert werden können.</p>'),
(158, 381, 1, '2022-07-14 15:22:32', '2022-07-14 15:22:32', 'c7fa432e-ad96-46ac-94c2-d8ac615ff4c2', 'Weitere Informationen', '<p>Wenn Sie mehr zu den Apps wissen möchten, <a href=\"http://localhost/kontakt\">nehmen Sie Kontakt zu uns auf</a>. Alternativ können Sie sich gerne direkt bei Microsoft einen noch tieferen Einblick verschaffen.</p>'),
(159, 394, 1, '2022-07-14 15:24:15', '2022-07-14 15:24:15', '7982d994-cc0d-4294-af3b-78041778ef80', 'Übersicht', '<p>Wer kennt sie nicht: Word, Excel, PowerPoint und Co. Alles leistungsfähige Apps für Selbständige, den Mittelstand und Großunternehmen. Gemacht für das produktive und mobile Arbeiten. Erstellen Sie ansprechende Dokumente, Informative Präsentationen oder Tabellenkalkulationen.</p>'),
(160, 395, 1, '2022-07-14 15:24:15', '2022-07-14 15:24:15', 'bd2ac287-fcf2-4796-92b8-728430e20701', 'Einblick', '<p>Verschaffen Sie sich einen kleinen Eindruck davon, wie diese Tools aussehen und in den Geschäftsalltag integriert werden können.</p>'),
(161, 396, 1, '2022-07-14 15:24:15', '2022-07-14 15:24:15', 'eea72734-3167-414a-b717-d45473503d18', 'Weitere Informationen', '<p>Wenn Sie mehr zu den Apps wissen möchten, <a href=\"http://localhost/kontakt\">nehmen Sie Kontakt zu uns auf</a>. Alternativ können Sie sich gerne direkt bei Microsoft einen noch tieferen Einblick verschaffen.</p>'),
(162, 401, 1, '2022-07-14 15:25:06', '2022-07-14 15:25:06', 'b0d3b1e7-a502-4a3d-8342-d9cc3994a269', 'Übersicht', '<p>Wer kennt sie nicht: Word, Excel, PowerPoint und Co. Alles leistungsfähige Apps für Selbständige, den Mittelstand und Großunternehmen. Gemacht für das produktive und mobile Arbeiten. Erstellen Sie ansprechende Dokumente, Informative Präsentationen oder Tabellenkalkulationen.</p>'),
(163, 402, 1, '2022-07-14 15:25:06', '2022-07-14 15:25:06', '5ccfa0f6-3964-416d-b884-05aff98a2bf0', 'Einblick', '<p>Verschaffen Sie sich einen kleinen Eindruck davon, wie diese Tools aussehen und in den Geschäftsalltag integriert werden können.</p>'),
(164, 403, 1, '2022-07-14 15:25:06', '2022-07-14 15:25:06', '209de30f-a6f4-403a-a9c2-7b9217f88f17', 'Weitere Informationen', '<p>Wenn Sie mehr zu den Apps wissen möchten, <a href=\"http://localhost/kontakt\">nehmen Sie Kontakt zu uns auf</a>. Alternativ können Sie sich gerne direkt bei Microsoft einen noch tieferen Einblick verschaffen.</p>'),
(165, 408, 1, '2022-07-14 15:26:05', '2022-07-14 15:26:05', '90c4b35c-7731-413d-b5a5-8672c40ce54a', 'Übersicht', '<p>Wer kennt sie nicht: Word, Excel, PowerPoint und Co. Alles leistungsfähige Apps für Selbständige, den Mittelstand und Großunternehmen. Gemacht für das produktive und mobile Arbeiten. Erstellen Sie ansprechende Dokumente, Informative Präsentationen oder Tabellenkalkulationen.</p>'),
(166, 409, 1, '2022-07-14 15:26:05', '2022-07-14 15:26:05', '4c994276-d6ef-4e57-9a4f-d690668c555b', 'Einblick', '<p>Verschaffen Sie sich einen kleinen Eindruck davon, wie diese Tools aussehen und in den Geschäftsalltag integriert werden können.</p>'),
(167, 410, 1, '2022-07-14 15:26:05', '2022-07-14 15:26:05', '7ff1e369-e4b5-4177-ab0d-ae7177388b4c', 'Weitere Informationen', '<p>Wenn Sie mehr zu den Apps wissen möchten, <a href=\"http://localhost/kontakt\">nehmen Sie Kontakt zu uns auf</a>. Alternativ können Sie sich gerne direkt bei Microsoft einen noch tieferen Einblick verschaffen.</p>'),
(169, 419, 1, '2022-07-14 15:27:00', '2022-07-14 15:27:00', 'edc38544-ea01-48ea-b840-fe7b5a381fb2', 'Übersicht', '<p>Wer kennt sie nicht: Word, Excel, PowerPoint und Co. Alles leistungsfähige Apps für Selbständige, den Mittelstand und Großunternehmen. Gemacht für das produktive und mobile Arbeiten. Erstellen Sie ansprechende Dokumente, Informative Präsentationen oder Tabellenkalkulationen.</p>'),
(170, 420, 1, '2022-07-14 15:27:00', '2022-07-14 15:27:00', '5cbedc2f-f193-4c4b-b3d5-092bade31768', 'Einblick', '<p>Verschaffen Sie sich einen kleinen Eindruck davon, wie diese Tools aussehen und in den Geschäftsalltag integriert werden können.</p>'),
(171, 421, 1, '2022-07-14 15:27:00', '2022-07-14 15:27:00', 'e9148170-6591-4665-82b8-b7bf6fb39e13', 'Weitere Informationen', '<p>Wenn Sie mehr zu den Apps wissen möchten, <a href=\"http://localhost/kontakt\">nehmen Sie Kontakt zu uns auf</a>. Alternativ können Sie sich gerne direkt bei Microsoft einen noch tieferen Einblick verschaffen.</p>'),
(172, 424, 1, '2022-07-14 15:27:00', '2022-07-14 15:27:00', 'f83981d4-751f-42af-954e-f119023f7f0b', 'Übersicht', '<p>Wer kennt sie nicht: Word, Excel, PowerPoint und Co. Alles leistungsfähige Apps für Selbständige, den Mittelstand und Großunternehmen. Gemacht für das produktive und mobile Arbeiten. Erstellen Sie ansprechende Dokumente, Informative Präsentationen oder Tabellenkalkulationen.</p>'),
(173, 425, 1, '2022-07-14 15:27:00', '2022-07-14 15:27:00', '1e606036-1849-48e4-a47e-6970f1e1d040', 'Einblick', '<p>Verschaffen Sie sich einen kleinen Eindruck davon, wie diese Tools aussehen und in den Geschäftsalltag integriert werden können.</p>'),
(174, 426, 1, '2022-07-14 15:27:00', '2022-07-14 15:27:00', 'fc96811a-bb10-430a-a086-1d2de8e97eb9', 'Weitere Informationen', '<p>Wenn Sie mehr zu den Apps wissen möchten, <a href=\"http://localhost/kontakt\">nehmen Sie Kontakt zu uns auf</a>. Alternativ können Sie sich gerne direkt bei Microsoft einen noch tieferen Einblick verschaffen.</p>'),
(175, 429, 1, '2022-07-14 15:27:03', '2022-07-14 15:27:03', 'c1986a86-126c-4e40-856a-a6422fcd6f80', 'Übersicht', '<p>Wer kennt sie nicht: Word, Excel, PowerPoint und Co. Alles leistungsfähige Apps für Selbständige, den Mittelstand und Großunternehmen. Gemacht für das produktive und mobile Arbeiten. Erstellen Sie ansprechende Dokumente, Informative Präsentationen oder Tabellenkalkulationen.</p>'),
(176, 430, 1, '2022-07-14 15:27:03', '2022-07-14 15:27:03', 'c200dc4f-01c7-41af-a5ce-c4a57ca18759', 'Einblick', '<p>Verschaffen Sie sich einen kleinen Eindruck davon, wie diese Tools aussehen und in den Geschäftsalltag integriert werden können.</p>'),
(177, 431, 1, '2022-07-14 15:27:03', '2022-07-14 15:27:03', 'c933d1d0-92fa-41ec-ac3d-9dc2ef8883ae', 'Weitere Informationen', '<p>Wenn Sie mehr zu den Apps wissen möchten, <a href=\"http://localhost/kontakt\">nehmen Sie Kontakt zu uns auf</a>. Alternativ können Sie sich gerne direkt bei Microsoft einen noch tieferen Einblick verschaffen.</p>'),
(178, 434, 1, '2022-07-14 15:27:03', '2022-07-14 15:27:03', 'fbd4f36d-3e00-4e47-9c5b-41b030a79222', 'Übersicht', '<p>Wer kennt sie nicht: Word, Excel, PowerPoint und Co. Alles leistungsfähige Apps für Selbständige, den Mittelstand und Großunternehmen. Gemacht für das produktive und mobile Arbeiten. Erstellen Sie ansprechende Dokumente, Informative Präsentationen oder Tabellenkalkulationen.</p>'),
(179, 435, 1, '2022-07-14 15:27:03', '2022-07-14 15:27:03', '16c8cc1a-989d-4910-ab3e-a0c23932003f', 'Einblick', '<p>Verschaffen Sie sich einen kleinen Eindruck davon, wie diese Tools aussehen und in den Geschäftsalltag integriert werden können.</p>'),
(180, 436, 1, '2022-07-14 15:27:03', '2022-07-14 15:27:03', '6549e6c1-654a-4c26-9212-5d844a6f3098', 'Weitere Informationen', '<p>Wenn Sie mehr zu den Apps wissen möchten, <a href=\"http://localhost/kontakt\">nehmen Sie Kontakt zu uns auf</a>. Alternativ können Sie sich gerne direkt bei Microsoft einen noch tieferen Einblick verschaffen.</p>'),
(181, 439, 1, '2022-07-14 15:27:05', '2022-07-14 15:27:05', 'ae1de5ea-79fc-4a51-bf41-2fee16d91ecb', 'Übersicht', '<p>Wer kennt sie nicht: Word, Excel, PowerPoint und Co. Alles leistungsfähige Apps für Selbständige, den Mittelstand und Großunternehmen. Gemacht für das produktive und mobile Arbeiten. Erstellen Sie ansprechende Dokumente, Informative Präsentationen oder Tabellenkalkulationen.</p>'),
(182, 440, 1, '2022-07-14 15:27:05', '2022-07-14 15:27:05', '11cb8fe4-c49b-4823-b4bf-d99b31c729e5', 'Einblick', '<p>Verschaffen Sie sich einen kleinen Eindruck davon, wie diese Tools aussehen und in den Geschäftsalltag integriert werden können.</p>'),
(183, 441, 1, '2022-07-14 15:27:05', '2022-07-14 15:27:05', '5c128d4b-026a-4178-995e-d47520d675db', 'Weitere Informationen', '<p>Wenn Sie mehr zu den Apps wissen möchten, <a href=\"http://localhost/kontakt\">nehmen Sie Kontakt zu uns auf</a>. Alternativ können Sie sich gerne direkt bei Microsoft einen noch tieferen Einblick verschaffen.</p>'),
(184, 444, 1, '2022-07-14 15:27:05', '2022-07-14 15:27:05', '5726306f-1641-44e7-9753-7ffbc80cb7bf', 'Übersicht', '<p>Wer kennt sie nicht: Word, Excel, PowerPoint und Co. Alles leistungsfähige Apps für Selbständige, den Mittelstand und Großunternehmen. Gemacht für das produktive und mobile Arbeiten. Erstellen Sie ansprechende Dokumente, Informative Präsentationen oder Tabellenkalkulationen.</p>'),
(185, 445, 1, '2022-07-14 15:27:05', '2022-07-14 15:27:05', '8d405d76-230e-410c-a511-0130a4828d82', 'Einblick', '<p>Verschaffen Sie sich einen kleinen Eindruck davon, wie diese Tools aussehen und in den Geschäftsalltag integriert werden können.</p>'),
(186, 446, 1, '2022-07-14 15:27:05', '2022-07-14 15:27:05', 'a67102b1-516d-4a9c-a220-91ed15b87f77', 'Weitere Informationen', '<p>Wenn Sie mehr zu den Apps wissen möchten, <a href=\"http://localhost/kontakt\">nehmen Sie Kontakt zu uns auf</a>. Alternativ können Sie sich gerne direkt bei Microsoft einen noch tieferen Einblick verschaffen.</p>'),
(187, 449, 1, '2022-07-14 15:27:07', '2022-07-14 15:27:07', 'c6e67c71-0bda-40e4-a87e-62b17a1f0f98', 'Übersicht', '<p>Wer kennt sie nicht: Word, Excel, PowerPoint und Co. Alles leistungsfähige Apps für Selbständige, den Mittelstand und Großunternehmen. Gemacht für das produktive und mobile Arbeiten. Erstellen Sie ansprechende Dokumente, Informative Präsentationen oder Tabellenkalkulationen.</p>'),
(188, 450, 1, '2022-07-14 15:27:07', '2022-07-14 15:27:07', '6778d2e6-f93e-4b52-ba35-94e626462fad', 'Einblick', '<p>Verschaffen Sie sich einen kleinen Eindruck davon, wie diese Tools aussehen und in den Geschäftsalltag integriert werden können.</p>'),
(189, 451, 1, '2022-07-14 15:27:07', '2022-07-14 15:27:07', '1e4e7247-4468-4e04-99b5-96b5cbc0f5de', 'Weitere Informationen', '<p>Wenn Sie mehr zu den Apps wissen möchten, <a href=\"http://localhost/kontakt\">nehmen Sie Kontakt zu uns auf</a>. Alternativ können Sie sich gerne direkt bei Microsoft einen noch tieferen Einblick verschaffen.</p>'),
(190, 454, 1, '2022-07-14 15:27:07', '2022-07-14 15:27:07', '194a6a8c-c378-4f72-82ce-05811ef80b52', 'Übersicht', '<p>Wer kennt sie nicht: Word, Excel, PowerPoint und Co. Alles leistungsfähige Apps für Selbständige, den Mittelstand und Großunternehmen. Gemacht für das produktive und mobile Arbeiten. Erstellen Sie ansprechende Dokumente, Informative Präsentationen oder Tabellenkalkulationen.</p>'),
(191, 455, 1, '2022-07-14 15:27:07', '2022-07-14 15:27:07', '3b0defdd-161e-403b-ac68-8918c7a5b6d9', 'Einblick', '<p>Verschaffen Sie sich einen kleinen Eindruck davon, wie diese Tools aussehen und in den Geschäftsalltag integriert werden können.</p>'),
(192, 456, 1, '2022-07-14 15:27:07', '2022-07-14 15:27:07', '601b8fda-bd32-45be-9bec-15fd0b0ad5d4', 'Weitere Informationen', '<p>Wenn Sie mehr zu den Apps wissen möchten, <a href=\"http://localhost/kontakt\">nehmen Sie Kontakt zu uns auf</a>. Alternativ können Sie sich gerne direkt bei Microsoft einen noch tieferen Einblick verschaffen.</p>'),
(193, 459, 1, '2022-07-14 15:27:10', '2022-07-14 15:27:10', '401a4773-ea4d-4eb3-8ddd-aac3e248e7bc', 'Übersicht', '<p>Wer kennt sie nicht: Word, Excel, PowerPoint und Co. Alles leistungsfähige Apps für Selbständige, den Mittelstand und Großunternehmen. Gemacht für das produktive und mobile Arbeiten. Erstellen Sie ansprechende Dokumente, Informative Präsentationen oder Tabellenkalkulationen.</p>'),
(194, 460, 1, '2022-07-14 15:27:10', '2022-07-14 15:27:10', '3dcbdd0e-5124-48c7-8e6b-c33045ccdd4c', 'Einblick', '<p>Verschaffen Sie sich einen kleinen Eindruck davon, wie diese Tools aussehen und in den Geschäftsalltag integriert werden können.</p>'),
(195, 461, 1, '2022-07-14 15:27:10', '2022-07-14 15:27:10', '66e5c6af-8cdf-4ca1-943a-64af301b9178', 'Weitere Informationen', '<p>Wenn Sie mehr zu den Apps wissen möchten, <a href=\"http://localhost/kontakt\">nehmen Sie Kontakt zu uns auf</a>. Alternativ können Sie sich gerne direkt bei Microsoft einen noch tieferen Einblick verschaffen.</p>'),
(196, 464, 1, '2022-07-14 15:27:10', '2022-07-14 15:27:10', '70d0f30b-4168-47e2-a953-69f0a96fd840', 'Übersicht', '<p>Wer kennt sie nicht: Word, Excel, PowerPoint und Co. Alles leistungsfähige Apps für Selbständige, den Mittelstand und Großunternehmen. Gemacht für das produktive und mobile Arbeiten. Erstellen Sie ansprechende Dokumente, Informative Präsentationen oder Tabellenkalkulationen.</p>'),
(197, 465, 1, '2022-07-14 15:27:10', '2022-07-14 15:27:10', '81f75163-a19c-4ea3-8308-2a94801b1eae', 'Einblick', '<p>Verschaffen Sie sich einen kleinen Eindruck davon, wie diese Tools aussehen und in den Geschäftsalltag integriert werden können.</p>'),
(198, 466, 1, '2022-07-14 15:27:10', '2022-07-14 15:27:10', '4ba6d9da-8abd-436b-a8b1-471a38114f28', 'Weitere Informationen', '<p>Wenn Sie mehr zu den Apps wissen möchten, <a href=\"http://localhost/kontakt\">nehmen Sie Kontakt zu uns auf</a>. Alternativ können Sie sich gerne direkt bei Microsoft einen noch tieferen Einblick verschaffen.</p>'),
(199, 470, 1, '2022-07-14 15:27:27', '2022-07-14 15:27:27', 'c654c99a-2fca-4fdb-b85a-cc1780cad680', 'Übersicht', '<p>Wer kennt sie nicht: Word, Excel, PowerPoint und Co. Alles leistungsfähige Apps für Selbständige, den Mittelstand und Großunternehmen. Gemacht für das produktive und mobile Arbeiten. Erstellen Sie ansprechende Dokumente, Informative Präsentationen oder Tabellenkalkulationen.</p>'),
(200, 471, 1, '2022-07-14 15:27:27', '2022-07-14 15:27:27', '97c93f84-7dc3-4dac-a36f-710525b65186', 'Einblick', '<p>Verschaffen Sie sich einen kleinen Eindruck davon, wie diese Tools aussehen und in den Geschäftsalltag integriert werden können.</p>'),
(201, 472, 1, '2022-07-14 15:27:27', '2022-07-14 15:27:27', '49fa6359-3c9b-439a-895e-5a007797d732', 'Weitere Informationen', '<p>Wenn Sie mehr zu den Apps wissen möchten, <a href=\"http://localhost/kontakt\">nehmen Sie Kontakt zu uns auf</a>. Alternativ können Sie sich gerne direkt bei Microsoft einen noch tieferen Einblick verschaffen.</p>'),
(202, 477, 1, '2022-07-14 15:28:02', '2022-07-14 15:28:02', '45dac854-2826-44d8-afe0-475cab57e167', 'Übersicht', '<p>Wer kennt sie nicht: Word, Excel, PowerPoint und Co. Alles leistungsfähige Apps für Selbständige, den Mittelstand und Großunternehmen. Gemacht für das produktive und mobile Arbeiten. Erstellen Sie ansprechende Dokumente, Informative Präsentationen oder Tabellenkalkulationen.</p>'),
(203, 478, 1, '2022-07-14 15:28:02', '2022-07-14 15:28:02', '3641b34d-ea03-4690-91ba-ab1320549d6d', 'Einblick', '<p>Verschaffen Sie sich einen kleinen Eindruck davon, wie diese Tools aussehen und in den Geschäftsalltag integriert werden können.</p>'),
(204, 479, 1, '2022-07-14 15:28:02', '2022-07-14 15:28:02', 'b3dbc7c0-e925-42dc-aa7f-da6ad4850457', 'Weitere Informationen', '<p>Wenn Sie mehr zu den Apps wissen möchten, <a href=\"http://localhost/kontakt\">nehmen Sie Kontakt zu uns auf</a>. Alternativ können Sie sich gerne direkt bei Microsoft einen noch tieferen Einblick verschaffen.</p>'),
(205, 484, 1, '2022-07-14 15:28:28', '2022-07-14 15:28:28', '16fe2692-68fe-4979-b7dc-11dc22532f0c', 'Übersicht', '<p>Wer kennt sie nicht: Word, Excel, PowerPoint und Co. Alles leistungsfähige Apps für Selbständige, den Mittelstand und Großunternehmen. Gemacht für das produktive und mobile Arbeiten. Erstellen Sie ansprechende Dokumente, Informative Präsentationen oder Tabellenkalkulationen.</p>'),
(206, 485, 1, '2022-07-14 15:28:28', '2022-07-14 15:28:28', '145ecabb-8bbf-4d61-a5ec-e02d1b963029', 'Einblick', '<p>Verschaffen Sie sich einen kleinen Eindruck davon, wie diese Tools aussehen und in den Geschäftsalltag integriert werden können.</p>'),
(207, 486, 1, '2022-07-14 15:28:28', '2022-07-14 15:28:28', '8a2a7d9f-b885-4c4f-b256-98faa77fa235', 'Weitere Informationen', '<p>Wenn Sie mehr zu den Apps wissen möchten, <a href=\"http://localhost/kontakt\">nehmen Sie Kontakt zu uns auf</a>. Alternativ können Sie sich gerne direkt bei Microsoft einen noch tieferen Einblick verschaffen.</p>'),
(208, 490, 1, '2022-07-14 15:28:39', '2022-07-14 15:28:39', '0869b6e2-ae53-4b51-8c80-605cb7afd5ac', 'Übersicht', '<p>Wer kennt sie nicht: Word, Excel, PowerPoint und Co. Alles leistungsfähige Apps für Selbständige, den Mittelstand und Großunternehmen. Gemacht für das produktive und mobile Arbeiten. Erstellen Sie ansprechende Dokumente, Informative Präsentationen oder Tabellenkalkulationen.</p>'),
(209, 491, 1, '2022-07-14 15:28:39', '2022-07-14 15:28:39', 'f96e9af6-c1a7-4668-9209-d522334e1156', 'Einblick', '<p>Verschaffen Sie sich einen kleinen Eindruck davon, wie diese Tools aussehen und in den Geschäftsalltag integriert werden können.</p>'),
(210, 492, 1, '2022-07-14 15:28:39', '2022-07-14 15:28:39', '2cfe5d75-5bbf-4452-a1d7-cc957f402d4f', 'Weitere Informationen', '<p>Wenn Sie mehr zu den Apps wissen möchten, <a href=\"http://localhost/kontakt\">nehmen Sie Kontakt zu uns auf</a>. Alternativ können Sie sich gerne direkt bei Microsoft einen noch tieferen Einblick verschaffen.</p>'),
(211, 497, 1, '2022-07-14 15:29:14', '2022-07-14 15:29:14', 'ff63a62b-77f1-45c0-87cf-8ec747b7d405', 'Übersicht', '<p>Wer kennt sie nicht: Word, Excel, PowerPoint und Co. Alles leistungsfähige Apps für Selbständige, den Mittelstand und Großunternehmen. Gemacht für das produktive und mobile Arbeiten. Erstellen Sie ansprechende Dokumente, Informative Präsentationen oder Tabellenkalkulationen.</p>'),
(212, 498, 1, '2022-07-14 15:29:14', '2022-07-14 15:29:14', 'c6cf45ad-494a-4919-928d-962d3b236320', 'Einblick', '<p>Verschaffen Sie sich einen kleinen Eindruck davon, wie diese Tools aussehen und in den Geschäftsalltag integriert werden können.</p>'),
(213, 499, 1, '2022-07-14 15:29:14', '2022-07-14 15:29:14', 'a7909256-fd76-4cef-91f8-26f77636dfa3', 'Weitere Informationen', '<p>Wenn Sie mehr zu den Apps wissen möchten, <a href=\"http://localhost/kontakt\">nehmen Sie Kontakt zu uns auf</a>. Alternativ können Sie sich gerne direkt bei Microsoft einen noch tieferen Einblick verschaffen.</p>'),
(214, 504, 1, '2022-07-14 15:29:54', '2022-07-14 15:29:54', 'b213b870-2485-42cf-9801-e82112c910bb', 'Übersicht', '<p>Wer kennt sie nicht: Word, Excel, PowerPoint und Co. Alles leistungsfähige Apps für Selbständige, den Mittelstand und Großunternehmen. Gemacht für das produktive und mobile Arbeiten. Erstellen Sie ansprechende Dokumente, Informative Präsentationen oder Tabellenkalkulationen.</p>'),
(215, 505, 1, '2022-07-14 15:29:54', '2022-07-14 15:29:54', '9c846aba-3373-4fb0-8c60-0baccbe91ff1', 'Einblick', '<p>Verschaffen Sie sich einen kleinen Eindruck davon, wie diese Tools aussehen und in den Geschäftsalltag integriert werden können.</p>'),
(216, 506, 1, '2022-07-14 15:29:54', '2022-07-14 15:29:54', '4f4f2bca-66d8-48aa-8504-93dded00e0d7', 'Weitere Informationen', '<p>Wenn Sie mehr zu den Apps wissen möchten, <a href=\"http://localhost/kontakt\">nehmen Sie Kontakt zu uns auf</a>. Alternativ können Sie sich gerne direkt bei Microsoft einen noch tieferen Einblick verschaffen.</p>'),
(217, 512, 1, '2022-07-14 15:31:44', '2022-07-14 15:31:44', '7be337c4-c8cb-4c44-bc84-51805de745fd', 'Übersicht', '<p>Wer kennt sie nicht: Word, Excel, PowerPoint und Co. Alles leistungsfähige Apps für Selbständige, den Mittelstand und Großunternehmen. Gemacht für das produktive und mobile Arbeiten. Erstellen Sie ansprechende Dokumente, Informative Präsentationen oder Tabellenkalkulationen.</p>'),
(218, 513, 1, '2022-07-14 15:31:44', '2022-07-14 15:31:44', 'a816ff5d-d6e9-4f4a-8843-f5c28d2741d4', 'Einblick', '<p>Verschaffen Sie sich einen kleinen Eindruck davon, wie diese Tools aussehen und in den Geschäftsalltag integriert werden können.</p>'),
(219, 514, 1, '2022-07-14 15:31:44', '2022-07-14 15:31:44', '7a9110a3-6a9f-4f42-b4d5-4b37d237b9cf', 'Weitere Informationen', '<p>Wenn Sie mehr zu den Apps wissen möchten, <a href=\"http://localhost/kontakt\">nehmen Sie Kontakt zu uns auf</a>. Alternativ können Sie sich gerne direkt bei Microsoft einen noch tieferen Einblick verschaffen.</p>'),
(220, 518, 1, '2022-07-14 15:34:09', '2022-07-14 15:34:09', '04d05cbd-df8f-4847-913a-ad20e3f87189', 'Übersicht', '<p>Wer kennt sie nicht: Word, Excel, PowerPoint und Co. Alles leistungsfähige Apps für Selbständige, den Mittelstand und Großunternehmen. Gemacht für das produktive und mobile Arbeiten. Erstellen Sie ansprechende Dokumente, Informative Präsentationen oder Tabellenkalkulationen.</p>'),
(221, 519, 1, '2022-07-14 15:34:09', '2022-07-14 15:34:09', '0e2a2652-e0b8-4848-9771-2f5288f1a43d', 'Einblick', '<p>Verschaffen Sie sich einen kleinen Eindruck davon, wie diese Tools aussehen und in den Geschäftsalltag integriert werden können.</p>'),
(222, 520, 1, '2022-07-14 15:34:09', '2022-07-14 15:34:09', '20f9ca80-9647-4a08-bdad-c4981daf1426', 'Weitere Informationen', '<p>Wenn Sie mehr zu den Apps wissen möchten, <a href=\"http://localhost/kontakt\">nehmen Sie Kontakt zu uns auf</a>. Alternativ können Sie sich gerne direkt bei Microsoft einen noch tieferen Einblick verschaffen.</p>'),
(223, 523, 1, '2022-07-14 15:43:34', '2022-07-14 15:43:34', '04a119e3-c0c9-4e81-a801-baf4b6e2ada5', 'Übersicht', '<p>Wer kennt sie nicht: Word, Excel, PowerPoint und Co. Alles leistungsfähige Apps für Selbständige, den Mittelstand und Großunternehmen. Gemacht für das produktive und mobile Arbeiten. Erstellen Sie ansprechende Dokumente, Informative Präsentationen oder Tabellenkalkulationen.</p>'),
(224, 524, 1, '2022-07-14 15:43:34', '2022-07-14 15:43:34', 'f834ebb6-d28f-4b2c-8e99-1e758b21736a', 'Einblick', '<p>Verschaffen Sie sich einen kleinen Eindruck davon, wie diese Tools aussehen und in den Geschäftsalltag integriert werden können.</p>'),
(225, 525, 1, '2022-07-14 15:43:34', '2022-07-14 15:43:34', 'e2476f66-e729-41f1-8e7e-e5c8a5851239', 'Weitere Informationen', '<p>Wenn Sie mehr zu den Apps wissen möchten, <a href=\"http://localhost/kontakt\">nehmen Sie Kontakt zu uns auf</a>. Alternativ können Sie sich gerne direkt bei Microsoft einen noch tieferen Einblick verschaffen.</p>'),
(226, 528, 1, '2022-07-14 15:43:34', '2022-07-14 15:43:34', '49991fad-244f-42e9-a847-1d9fbe9bf57f', 'Übersicht', '<p>Wer kennt sie nicht: Word, Excel, PowerPoint und Co. Alles leistungsfähige Apps für Selbständige, den Mittelstand und Großunternehmen. Gemacht für das produktive und mobile Arbeiten. Erstellen Sie ansprechende Dokumente, Informative Präsentationen oder Tabellenkalkulationen.</p>'),
(227, 529, 1, '2022-07-14 15:43:34', '2022-07-14 15:43:34', 'ff72adb4-294a-467f-b470-3f47d82dc71d', 'Einblick', '<p>Verschaffen Sie sich einen kleinen Eindruck davon, wie diese Tools aussehen und in den Geschäftsalltag integriert werden können.</p>'),
(228, 530, 1, '2022-07-14 15:43:34', '2022-07-14 15:43:34', 'd7d997da-d87e-4b6e-8e3e-1584b39baed4', 'Weitere Informationen', '<p>Wenn Sie mehr zu den Apps wissen möchten, <a href=\"http://localhost/kontakt\">nehmen Sie Kontakt zu uns auf</a>. Alternativ können Sie sich gerne direkt bei Microsoft einen noch tieferen Einblick verschaffen.</p>'),
(229, 534, 1, '2022-07-14 15:44:08', '2022-07-14 15:44:08', '614536e6-758f-4f1b-b5b8-ff83ea919bb9', 'Übersicht', '<p>Wer kennt sie nicht: Word, Excel, PowerPoint und Co. Alles leistungsfähige Apps für Selbständige, den Mittelstand und Großunternehmen. Gemacht für das produktive und mobile Arbeiten. Erstellen Sie ansprechende Dokumente, Informative Präsentationen oder Tabellenkalkulationen.</p>'),
(230, 535, 1, '2022-07-14 15:44:08', '2022-07-14 15:44:08', 'd48035a5-ca81-49b6-ac50-5ba8c73a8e61', 'Einblick', '<p>Verschaffen Sie sich einen kleinen Eindruck davon, wie diese Tools aussehen und in den Geschäftsalltag integriert werden können.</p>'),
(231, 536, 1, '2022-07-14 15:44:08', '2022-07-14 15:44:08', '0b6d1d3e-9bf7-4519-a9c7-4d36bd9afd0b', 'Weitere Informationen', '<p>Wenn Sie mehr zu den Apps wissen möchten, <a href=\"http://localhost/kontakt\">nehmen Sie Kontakt zu uns auf</a>. Alternativ können Sie sich gerne direkt bei Microsoft einen noch tieferen Einblick verschaffen.</p>'),
(232, 548, 1, '2022-07-14 16:20:47', '2022-07-14 16:20:47', 'e1f80b47-a1e6-49ae-b5bf-4029ff4cf9de', 'Übersicht', '<p>Wer kennt sie nicht: Word, Excel, PowerPoint und Co. Alles leistungsfähige Apps für Selbständige, den Mittelstand und Großunternehmen. Gemacht für das produktive und mobile Arbeiten. Erstellen Sie ansprechende Dokumente, Informative Präsentationen oder Tabellenkalkulationen.</p>'),
(233, 549, 1, '2022-07-14 16:20:47', '2022-07-14 16:20:47', '725177bb-f937-4d30-90e2-4db4e001a494', 'Einblick', '<p>Verschaffen Sie sich einen kleinen Eindruck davon, wie diese Tools aussehen und in den Geschäftsalltag integriert werden können.</p>'),
(234, 553, 1, '2022-07-14 16:21:12', '2022-07-14 16:21:12', '920a6b84-9c7b-4faf-96b1-f16c8e83b6a4', 'Übersicht', '<p>Wer kennt sie nicht: Word, Excel, PowerPoint und Co. Alles leistungsfähige Apps für Selbständige, den Mittelstand und Großunternehmen. Gemacht für das produktive und mobile Arbeiten. Erstellen Sie ansprechende Dokumente, Informative Präsentationen oder Tabellenkalkulationen.</p>'),
(235, 554, 1, '2022-07-14 16:21:12', '2022-07-14 16:21:12', '93377bb0-2c6f-4f06-8ea4-49e9904d9cae', 'Einblick', '<p>Verschaffen Sie sich einen kleinen Eindruck davon, wie diese Tools aussehen und in den Geschäftsalltag integriert werden können.</p>');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(11) NOT NULL,
  `track` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applyTime` datetime NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `track`, `name`, `applyTime`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 'craft', 'Install', '2022-07-08 13:30:52', '2022-07-08 13:30:52', '2022-07-08 13:30:52', '6fcc31f5-fdc4-427c-a6cf-bd15e1c85f86'),
(2, 'craft', 'm210121_145800_asset_indexing_changes', '2022-07-08 13:30:52', '2022-07-08 13:30:52', '2022-07-08 13:30:52', '65fe7910-672b-47dc-a7bd-3785c1dae39f'),
(3, 'craft', 'm210624_222934_drop_deprecated_tables', '2022-07-08 13:30:52', '2022-07-08 13:30:52', '2022-07-08 13:30:52', 'd60497c5-b27f-4c9c-a433-fb9aa7bcc540'),
(4, 'craft', 'm210724_180756_rename_source_cols', '2022-07-08 13:30:52', '2022-07-08 13:30:52', '2022-07-08 13:30:52', 'ebe6e11d-d935-46e0-9fd4-f253154fd889'),
(5, 'craft', 'm210809_124211_remove_superfluous_uids', '2022-07-08 13:30:52', '2022-07-08 13:30:52', '2022-07-08 13:30:52', 'd5e32851-41ba-4d4e-a75a-7d0e180f8c41'),
(6, 'craft', 'm210817_014201_universal_users', '2022-07-08 13:30:52', '2022-07-08 13:30:52', '2022-07-08 13:30:52', '8f758a5d-4d0a-49e3-8227-600ecf0309ac'),
(7, 'craft', 'm210904_132612_store_element_source_settings_in_project_config', '2022-07-08 13:30:52', '2022-07-08 13:30:52', '2022-07-08 13:30:52', '51dc3183-30be-446e-9f81-b99646941161'),
(8, 'craft', 'm211115_135500_image_transformers', '2022-07-08 13:30:52', '2022-07-08 13:30:52', '2022-07-08 13:30:52', '743812a4-f332-42eb-b85e-32bba190b033'),
(9, 'craft', 'm211201_131000_filesystems', '2022-07-08 13:30:52', '2022-07-08 13:30:52', '2022-07-08 13:30:52', '99f74963-a41f-4dd6-bdde-1f0a77e971b2'),
(10, 'craft', 'm220103_043103_tab_conditions', '2022-07-08 13:30:52', '2022-07-08 13:30:52', '2022-07-08 13:30:52', '0c8ea7d8-7336-410d-8b5d-e94386c374d8'),
(11, 'craft', 'm220104_003433_asset_alt_text', '2022-07-08 13:30:52', '2022-07-08 13:30:52', '2022-07-08 13:30:52', 'e2c4c313-c885-4eb8-89aa-277ac44fd1ef'),
(12, 'craft', 'm220123_213619_update_permissions', '2022-07-08 13:30:52', '2022-07-08 13:30:52', '2022-07-08 13:30:52', 'd0dbd53e-4068-40c8-8e57-a23007d5da53'),
(13, 'craft', 'm220126_003432_addresses', '2022-07-08 13:30:52', '2022-07-08 13:30:52', '2022-07-08 13:30:52', '1c4b818f-df81-4bf9-a01d-32fa452d7005'),
(14, 'craft', 'm220209_095604_add_indexes', '2022-07-08 13:30:52', '2022-07-08 13:30:52', '2022-07-08 13:30:52', 'd8e9e898-ae1d-43bf-acf7-47638a7d93d7'),
(15, 'craft', 'm220213_015220_matrixblocks_owners_table', '2022-07-08 13:30:52', '2022-07-08 13:30:52', '2022-07-08 13:30:52', '43b5f3bb-287f-4598-914f-1bb21ad03e51'),
(16, 'craft', 'm220214_000000_truncate_sessions', '2022-07-08 13:30:52', '2022-07-08 13:30:52', '2022-07-08 13:30:52', '830b5e2d-bcfd-4a3f-b831-45bd39eb689e'),
(17, 'craft', 'm220222_122159_full_names', '2022-07-08 13:30:52', '2022-07-08 13:30:52', '2022-07-08 13:30:52', '18595034-de32-4647-b34d-96b69ef5e65b'),
(18, 'craft', 'm220223_180559_nullable_address_owner', '2022-07-08 13:30:52', '2022-07-08 13:30:52', '2022-07-08 13:30:52', 'ac877228-0c78-42b2-9e84-c79bc8d3678d'),
(19, 'craft', 'm220225_165000_transform_filesystems', '2022-07-08 13:30:52', '2022-07-08 13:30:52', '2022-07-08 13:30:52', '3925a2f9-6d4f-4c1c-973f-5dfd631a43ff'),
(20, 'craft', 'm220309_152006_rename_field_layout_elements', '2022-07-08 13:30:52', '2022-07-08 13:30:52', '2022-07-08 13:30:52', '16bcfb98-07f0-4683-977e-4fb21ad5c396'),
(21, 'craft', 'm220314_211928_field_layout_element_uids', '2022-07-08 13:30:52', '2022-07-08 13:30:52', '2022-07-08 13:30:52', '6a1e41cf-880d-4b9a-996e-b469148dc01c'),
(22, 'craft', 'm220316_123800_transform_fs_subpath', '2022-07-08 13:30:52', '2022-07-08 13:30:52', '2022-07-08 13:30:52', '8990880b-0391-4e3e-bd21-b7624c693daf'),
(23, 'craft', 'm220317_174250_release_all_jobs', '2022-07-08 13:30:52', '2022-07-08 13:30:52', '2022-07-08 13:30:52', 'b33d7b85-d43f-45ab-836a-c995c188b41d'),
(24, 'craft', 'm220330_150000_add_site_gql_schema_components', '2022-07-08 13:30:52', '2022-07-08 13:30:52', '2022-07-08 13:30:52', '67d36873-f6df-4120-b1b1-d76e6ff3e5e3'),
(25, 'craft', 'm220413_024536_site_enabled_string', '2022-07-08 13:30:52', '2022-07-08 13:30:52', '2022-07-08 13:30:52', '2be8ef79-b252-48a9-bdfc-10b5a6009205'),
(26, 'plugin:redactor', 'm180430_204710_remove_old_plugins', '2022-07-09 03:37:14', '2022-07-09 03:37:14', '2022-07-09 03:37:14', '05a19106-2e43-461f-86b3-a192aa49f636'),
(27, 'plugin:redactor', 'Install', '2022-07-09 03:37:14', '2022-07-09 03:37:14', '2022-07-09 03:37:14', '09355e66-cfd7-4a01-9528-ff2f6a1b901e'),
(28, 'plugin:redactor', 'm190225_003922_split_cleanup_html_settings', '2022-07-09 03:37:14', '2022-07-09 03:37:14', '2022-07-09 03:37:14', 'b5a87572-1dba-4ca7-b2e8-d6b321d9ebfd'),
(29, 'plugin:super-table', 'Install', '2022-07-09 04:39:21', '2022-07-09 04:39:21', '2022-07-09 04:39:21', '27e2073b-56a8-459a-b228-ec0cc5dbbba7'),
(30, 'plugin:super-table', 'm220308_000000_remove_superfluous_uids', '2022-07-09 04:39:21', '2022-07-09 04:39:21', '2022-07-09 04:39:21', '40a81ea7-16b0-4f2b-9ea7-2f2c2cba9703'),
(31, 'plugin:super-table', 'm220308_100000_owners_table', '2022-07-09 04:39:21', '2022-07-09 04:39:21', '2022-07-09 04:39:21', '92ab215f-3be1-42aa-893e-08fa1b21f7ef'),
(34, 'plugin:typedlinkfield', 'Install', '2022-07-09 07:39:21', '2022-07-09 07:39:21', '2022-07-09 07:39:21', 'dc6121c0-9434-4d42-a695-4ea72829ca47'),
(35, 'plugin:typedlinkfield', 'm190417_202153_migrateDataToTable', '2022-07-09 07:39:21', '2022-07-09 07:39:21', '2022-07-09 07:39:21', '9d60334e-591a-467d-b40d-cfdf9d39453d');

-- --------------------------------------------------------

--
-- Table structure for table `plugins`
--

CREATE TABLE `plugins` (
  `id` int(11) NOT NULL,
  `handle` varchar(255) NOT NULL,
  `version` varchar(255) NOT NULL,
  `schemaVersion` varchar(255) NOT NULL,
  `licenseKeyStatus` enum('valid','trial','invalid','mismatched','astray','unknown') NOT NULL DEFAULT 'unknown',
  `licensedEdition` varchar(255) DEFAULT NULL,
  `installDate` datetime NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `plugins`
--

INSERT INTO `plugins` (`id`, `handle`, `version`, `schemaVersion`, `licenseKeyStatus`, `licensedEdition`, `installDate`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 'redactor', '3.0.2', '2.3.0', 'unknown', NULL, '2022-07-09 03:37:14', '2022-07-09 03:37:14', '2022-07-14 16:18:01', '6f2d5187-65f3-4c6e-b0ac-351c703f1322'),
(2, 'super-table', '3.0.0-beta.6', '3.0.0', 'unknown', NULL, '2022-07-09 04:39:21', '2022-07-09 04:39:21', '2022-07-14 16:18:01', '967e9dd0-8c7e-4432-a6f8-157255aa9332'),
(4, 'typedlinkfield', '2.1.3-rc', '2.0.0', 'unknown', NULL, '2022-07-09 07:39:20', '2022-07-09 07:39:20', '2022-07-14 16:18:01', 'a54bc6e4-5e44-4f32-96a9-2f3d234098ed');

-- --------------------------------------------------------

--
-- Table structure for table `projectconfig`
--

CREATE TABLE `projectconfig` (
  `path` varchar(255) NOT NULL,
  `value` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `projectconfig`
--

INSERT INTO `projectconfig` (`path`, `value`) VALUES
('categoryGroups.3d8e84b0-a04d-41aa-b0b1-03a2b6171be0.defaultPlacement', '\"end\"'),
('categoryGroups.3d8e84b0-a04d-41aa-b0b1-03a2b6171be0.fieldLayouts.28f4a090-57ea-4653-98f6-fab29d52f692.tabs.0.elementCondition', 'null'),
('categoryGroups.3d8e84b0-a04d-41aa-b0b1-03a2b6171be0.fieldLayouts.28f4a090-57ea-4653-98f6-fab29d52f692.tabs.0.elements.0.autocapitalize', 'true'),
('categoryGroups.3d8e84b0-a04d-41aa-b0b1-03a2b6171be0.fieldLayouts.28f4a090-57ea-4653-98f6-fab29d52f692.tabs.0.elements.0.autocomplete', 'false'),
('categoryGroups.3d8e84b0-a04d-41aa-b0b1-03a2b6171be0.fieldLayouts.28f4a090-57ea-4653-98f6-fab29d52f692.tabs.0.elements.0.autocorrect', 'true'),
('categoryGroups.3d8e84b0-a04d-41aa-b0b1-03a2b6171be0.fieldLayouts.28f4a090-57ea-4653-98f6-fab29d52f692.tabs.0.elements.0.class', 'null'),
('categoryGroups.3d8e84b0-a04d-41aa-b0b1-03a2b6171be0.fieldLayouts.28f4a090-57ea-4653-98f6-fab29d52f692.tabs.0.elements.0.disabled', 'false'),
('categoryGroups.3d8e84b0-a04d-41aa-b0b1-03a2b6171be0.fieldLayouts.28f4a090-57ea-4653-98f6-fab29d52f692.tabs.0.elements.0.elementCondition', 'null'),
('categoryGroups.3d8e84b0-a04d-41aa-b0b1-03a2b6171be0.fieldLayouts.28f4a090-57ea-4653-98f6-fab29d52f692.tabs.0.elements.0.id', 'null'),
('categoryGroups.3d8e84b0-a04d-41aa-b0b1-03a2b6171be0.fieldLayouts.28f4a090-57ea-4653-98f6-fab29d52f692.tabs.0.elements.0.instructions', 'null'),
('categoryGroups.3d8e84b0-a04d-41aa-b0b1-03a2b6171be0.fieldLayouts.28f4a090-57ea-4653-98f6-fab29d52f692.tabs.0.elements.0.label', 'null'),
('categoryGroups.3d8e84b0-a04d-41aa-b0b1-03a2b6171be0.fieldLayouts.28f4a090-57ea-4653-98f6-fab29d52f692.tabs.0.elements.0.max', 'null'),
('categoryGroups.3d8e84b0-a04d-41aa-b0b1-03a2b6171be0.fieldLayouts.28f4a090-57ea-4653-98f6-fab29d52f692.tabs.0.elements.0.min', 'null'),
('categoryGroups.3d8e84b0-a04d-41aa-b0b1-03a2b6171be0.fieldLayouts.28f4a090-57ea-4653-98f6-fab29d52f692.tabs.0.elements.0.name', 'null'),
('categoryGroups.3d8e84b0-a04d-41aa-b0b1-03a2b6171be0.fieldLayouts.28f4a090-57ea-4653-98f6-fab29d52f692.tabs.0.elements.0.orientation', 'null'),
('categoryGroups.3d8e84b0-a04d-41aa-b0b1-03a2b6171be0.fieldLayouts.28f4a090-57ea-4653-98f6-fab29d52f692.tabs.0.elements.0.placeholder', 'null'),
('categoryGroups.3d8e84b0-a04d-41aa-b0b1-03a2b6171be0.fieldLayouts.28f4a090-57ea-4653-98f6-fab29d52f692.tabs.0.elements.0.readonly', 'false'),
('categoryGroups.3d8e84b0-a04d-41aa-b0b1-03a2b6171be0.fieldLayouts.28f4a090-57ea-4653-98f6-fab29d52f692.tabs.0.elements.0.requirable', 'false'),
('categoryGroups.3d8e84b0-a04d-41aa-b0b1-03a2b6171be0.fieldLayouts.28f4a090-57ea-4653-98f6-fab29d52f692.tabs.0.elements.0.size', 'null'),
('categoryGroups.3d8e84b0-a04d-41aa-b0b1-03a2b6171be0.fieldLayouts.28f4a090-57ea-4653-98f6-fab29d52f692.tabs.0.elements.0.step', 'null'),
('categoryGroups.3d8e84b0-a04d-41aa-b0b1-03a2b6171be0.fieldLayouts.28f4a090-57ea-4653-98f6-fab29d52f692.tabs.0.elements.0.tip', 'null'),
('categoryGroups.3d8e84b0-a04d-41aa-b0b1-03a2b6171be0.fieldLayouts.28f4a090-57ea-4653-98f6-fab29d52f692.tabs.0.elements.0.title', 'null'),
('categoryGroups.3d8e84b0-a04d-41aa-b0b1-03a2b6171be0.fieldLayouts.28f4a090-57ea-4653-98f6-fab29d52f692.tabs.0.elements.0.type', '\"craft\\\\fieldlayoutelements\\\\TitleField\"'),
('categoryGroups.3d8e84b0-a04d-41aa-b0b1-03a2b6171be0.fieldLayouts.28f4a090-57ea-4653-98f6-fab29d52f692.tabs.0.elements.0.uid', '\"848ffc28-6460-4116-a010-bd866c152b29\"'),
('categoryGroups.3d8e84b0-a04d-41aa-b0b1-03a2b6171be0.fieldLayouts.28f4a090-57ea-4653-98f6-fab29d52f692.tabs.0.elements.0.userCondition', 'null'),
('categoryGroups.3d8e84b0-a04d-41aa-b0b1-03a2b6171be0.fieldLayouts.28f4a090-57ea-4653-98f6-fab29d52f692.tabs.0.elements.0.warning', 'null'),
('categoryGroups.3d8e84b0-a04d-41aa-b0b1-03a2b6171be0.fieldLayouts.28f4a090-57ea-4653-98f6-fab29d52f692.tabs.0.elements.0.width', '100'),
('categoryGroups.3d8e84b0-a04d-41aa-b0b1-03a2b6171be0.fieldLayouts.28f4a090-57ea-4653-98f6-fab29d52f692.tabs.0.name', '\"Content\"'),
('categoryGroups.3d8e84b0-a04d-41aa-b0b1-03a2b6171be0.fieldLayouts.28f4a090-57ea-4653-98f6-fab29d52f692.tabs.0.uid', '\"4037bfb7-db8f-4339-aff1-52426cc001a7\"'),
('categoryGroups.3d8e84b0-a04d-41aa-b0b1-03a2b6171be0.fieldLayouts.28f4a090-57ea-4653-98f6-fab29d52f692.tabs.0.userCondition', 'null'),
('categoryGroups.3d8e84b0-a04d-41aa-b0b1-03a2b6171be0.handle', '\"storyCompany\"'),
('categoryGroups.3d8e84b0-a04d-41aa-b0b1-03a2b6171be0.name', '\"Story Company\"'),
('categoryGroups.3d8e84b0-a04d-41aa-b0b1-03a2b6171be0.siteSettings.33732ef7-8cf5-46e3-a85d-565e9c838e3d.hasUrls', 'false'),
('categoryGroups.3d8e84b0-a04d-41aa-b0b1-03a2b6171be0.siteSettings.33732ef7-8cf5-46e3-a85d-565e9c838e3d.template', 'null'),
('categoryGroups.3d8e84b0-a04d-41aa-b0b1-03a2b6171be0.siteSettings.33732ef7-8cf5-46e3-a85d-565e9c838e3d.uriFormat', 'null'),
('categoryGroups.3d8e84b0-a04d-41aa-b0b1-03a2b6171be0.structure.maxLevels', '1'),
('categoryGroups.3d8e84b0-a04d-41aa-b0b1-03a2b6171be0.structure.uid', '\"351669bc-e7a8-4c52-997f-f9579865c970\"'),
('categoryGroups.7b44a9da-6f5d-4f88-a792-23abfa8d885f.defaultPlacement', '\"end\"'),
('categoryGroups.7b44a9da-6f5d-4f88-a792-23abfa8d885f.fieldLayouts.926c78a5-29ed-47f2-be1a-7087c436a018.tabs.0.elementCondition', 'null'),
('categoryGroups.7b44a9da-6f5d-4f88-a792-23abfa8d885f.fieldLayouts.926c78a5-29ed-47f2-be1a-7087c436a018.tabs.0.elements.0.autocapitalize', 'true'),
('categoryGroups.7b44a9da-6f5d-4f88-a792-23abfa8d885f.fieldLayouts.926c78a5-29ed-47f2-be1a-7087c436a018.tabs.0.elements.0.autocomplete', 'false'),
('categoryGroups.7b44a9da-6f5d-4f88-a792-23abfa8d885f.fieldLayouts.926c78a5-29ed-47f2-be1a-7087c436a018.tabs.0.elements.0.autocorrect', 'true'),
('categoryGroups.7b44a9da-6f5d-4f88-a792-23abfa8d885f.fieldLayouts.926c78a5-29ed-47f2-be1a-7087c436a018.tabs.0.elements.0.class', 'null'),
('categoryGroups.7b44a9da-6f5d-4f88-a792-23abfa8d885f.fieldLayouts.926c78a5-29ed-47f2-be1a-7087c436a018.tabs.0.elements.0.disabled', 'false'),
('categoryGroups.7b44a9da-6f5d-4f88-a792-23abfa8d885f.fieldLayouts.926c78a5-29ed-47f2-be1a-7087c436a018.tabs.0.elements.0.elementCondition', 'null'),
('categoryGroups.7b44a9da-6f5d-4f88-a792-23abfa8d885f.fieldLayouts.926c78a5-29ed-47f2-be1a-7087c436a018.tabs.0.elements.0.id', 'null'),
('categoryGroups.7b44a9da-6f5d-4f88-a792-23abfa8d885f.fieldLayouts.926c78a5-29ed-47f2-be1a-7087c436a018.tabs.0.elements.0.instructions', 'null'),
('categoryGroups.7b44a9da-6f5d-4f88-a792-23abfa8d885f.fieldLayouts.926c78a5-29ed-47f2-be1a-7087c436a018.tabs.0.elements.0.label', 'null'),
('categoryGroups.7b44a9da-6f5d-4f88-a792-23abfa8d885f.fieldLayouts.926c78a5-29ed-47f2-be1a-7087c436a018.tabs.0.elements.0.max', 'null'),
('categoryGroups.7b44a9da-6f5d-4f88-a792-23abfa8d885f.fieldLayouts.926c78a5-29ed-47f2-be1a-7087c436a018.tabs.0.elements.0.min', 'null'),
('categoryGroups.7b44a9da-6f5d-4f88-a792-23abfa8d885f.fieldLayouts.926c78a5-29ed-47f2-be1a-7087c436a018.tabs.0.elements.0.name', 'null'),
('categoryGroups.7b44a9da-6f5d-4f88-a792-23abfa8d885f.fieldLayouts.926c78a5-29ed-47f2-be1a-7087c436a018.tabs.0.elements.0.orientation', 'null'),
('categoryGroups.7b44a9da-6f5d-4f88-a792-23abfa8d885f.fieldLayouts.926c78a5-29ed-47f2-be1a-7087c436a018.tabs.0.elements.0.placeholder', 'null'),
('categoryGroups.7b44a9da-6f5d-4f88-a792-23abfa8d885f.fieldLayouts.926c78a5-29ed-47f2-be1a-7087c436a018.tabs.0.elements.0.readonly', 'false'),
('categoryGroups.7b44a9da-6f5d-4f88-a792-23abfa8d885f.fieldLayouts.926c78a5-29ed-47f2-be1a-7087c436a018.tabs.0.elements.0.requirable', 'false'),
('categoryGroups.7b44a9da-6f5d-4f88-a792-23abfa8d885f.fieldLayouts.926c78a5-29ed-47f2-be1a-7087c436a018.tabs.0.elements.0.size', 'null'),
('categoryGroups.7b44a9da-6f5d-4f88-a792-23abfa8d885f.fieldLayouts.926c78a5-29ed-47f2-be1a-7087c436a018.tabs.0.elements.0.step', 'null'),
('categoryGroups.7b44a9da-6f5d-4f88-a792-23abfa8d885f.fieldLayouts.926c78a5-29ed-47f2-be1a-7087c436a018.tabs.0.elements.0.tip', 'null'),
('categoryGroups.7b44a9da-6f5d-4f88-a792-23abfa8d885f.fieldLayouts.926c78a5-29ed-47f2-be1a-7087c436a018.tabs.0.elements.0.title', 'null'),
('categoryGroups.7b44a9da-6f5d-4f88-a792-23abfa8d885f.fieldLayouts.926c78a5-29ed-47f2-be1a-7087c436a018.tabs.0.elements.0.type', '\"craft\\\\fieldlayoutelements\\\\TitleField\"'),
('categoryGroups.7b44a9da-6f5d-4f88-a792-23abfa8d885f.fieldLayouts.926c78a5-29ed-47f2-be1a-7087c436a018.tabs.0.elements.0.uid', '\"cf27284c-6264-4635-a0f6-3319d7fcfecf\"'),
('categoryGroups.7b44a9da-6f5d-4f88-a792-23abfa8d885f.fieldLayouts.926c78a5-29ed-47f2-be1a-7087c436a018.tabs.0.elements.0.userCondition', 'null'),
('categoryGroups.7b44a9da-6f5d-4f88-a792-23abfa8d885f.fieldLayouts.926c78a5-29ed-47f2-be1a-7087c436a018.tabs.0.elements.0.warning', 'null'),
('categoryGroups.7b44a9da-6f5d-4f88-a792-23abfa8d885f.fieldLayouts.926c78a5-29ed-47f2-be1a-7087c436a018.tabs.0.elements.0.width', '100'),
('categoryGroups.7b44a9da-6f5d-4f88-a792-23abfa8d885f.fieldLayouts.926c78a5-29ed-47f2-be1a-7087c436a018.tabs.0.name', '\"Content\"'),
('categoryGroups.7b44a9da-6f5d-4f88-a792-23abfa8d885f.fieldLayouts.926c78a5-29ed-47f2-be1a-7087c436a018.tabs.0.uid', '\"db7b2659-18f9-41e6-bf77-0dfd86e25a9b\"'),
('categoryGroups.7b44a9da-6f5d-4f88-a792-23abfa8d885f.fieldLayouts.926c78a5-29ed-47f2-be1a-7087c436a018.tabs.0.userCondition', 'null'),
('categoryGroups.7b44a9da-6f5d-4f88-a792-23abfa8d885f.handle', '\"blogCategory\"'),
('categoryGroups.7b44a9da-6f5d-4f88-a792-23abfa8d885f.name', '\"Blog Category\"'),
('categoryGroups.7b44a9da-6f5d-4f88-a792-23abfa8d885f.siteSettings.33732ef7-8cf5-46e3-a85d-565e9c838e3d.hasUrls', 'false'),
('categoryGroups.7b44a9da-6f5d-4f88-a792-23abfa8d885f.siteSettings.33732ef7-8cf5-46e3-a85d-565e9c838e3d.template', 'null'),
('categoryGroups.7b44a9da-6f5d-4f88-a792-23abfa8d885f.siteSettings.33732ef7-8cf5-46e3-a85d-565e9c838e3d.uriFormat', 'null'),
('categoryGroups.7b44a9da-6f5d-4f88-a792-23abfa8d885f.structure.maxLevels', '1'),
('categoryGroups.7b44a9da-6f5d-4f88-a792-23abfa8d885f.structure.uid', '\"7eacc72b-c9f9-418e-b131-c20731759ccf\"'),
('categoryGroups.8bbb286a-ac71-4e2a-8a91-3dbff9e26b3d.defaultPlacement', '\"end\"'),
('categoryGroups.8bbb286a-ac71-4e2a-8a91-3dbff9e26b3d.fieldLayouts.9c805793-8bc3-4ff0-894b-04e4c78e2798.tabs.0.elementCondition', 'null'),
('categoryGroups.8bbb286a-ac71-4e2a-8a91-3dbff9e26b3d.fieldLayouts.9c805793-8bc3-4ff0-894b-04e4c78e2798.tabs.0.elements.0.autocapitalize', 'true'),
('categoryGroups.8bbb286a-ac71-4e2a-8a91-3dbff9e26b3d.fieldLayouts.9c805793-8bc3-4ff0-894b-04e4c78e2798.tabs.0.elements.0.autocomplete', 'false'),
('categoryGroups.8bbb286a-ac71-4e2a-8a91-3dbff9e26b3d.fieldLayouts.9c805793-8bc3-4ff0-894b-04e4c78e2798.tabs.0.elements.0.autocorrect', 'true'),
('categoryGroups.8bbb286a-ac71-4e2a-8a91-3dbff9e26b3d.fieldLayouts.9c805793-8bc3-4ff0-894b-04e4c78e2798.tabs.0.elements.0.class', 'null'),
('categoryGroups.8bbb286a-ac71-4e2a-8a91-3dbff9e26b3d.fieldLayouts.9c805793-8bc3-4ff0-894b-04e4c78e2798.tabs.0.elements.0.disabled', 'false'),
('categoryGroups.8bbb286a-ac71-4e2a-8a91-3dbff9e26b3d.fieldLayouts.9c805793-8bc3-4ff0-894b-04e4c78e2798.tabs.0.elements.0.elementCondition', 'null'),
('categoryGroups.8bbb286a-ac71-4e2a-8a91-3dbff9e26b3d.fieldLayouts.9c805793-8bc3-4ff0-894b-04e4c78e2798.tabs.0.elements.0.id', 'null'),
('categoryGroups.8bbb286a-ac71-4e2a-8a91-3dbff9e26b3d.fieldLayouts.9c805793-8bc3-4ff0-894b-04e4c78e2798.tabs.0.elements.0.instructions', 'null'),
('categoryGroups.8bbb286a-ac71-4e2a-8a91-3dbff9e26b3d.fieldLayouts.9c805793-8bc3-4ff0-894b-04e4c78e2798.tabs.0.elements.0.label', 'null'),
('categoryGroups.8bbb286a-ac71-4e2a-8a91-3dbff9e26b3d.fieldLayouts.9c805793-8bc3-4ff0-894b-04e4c78e2798.tabs.0.elements.0.max', 'null'),
('categoryGroups.8bbb286a-ac71-4e2a-8a91-3dbff9e26b3d.fieldLayouts.9c805793-8bc3-4ff0-894b-04e4c78e2798.tabs.0.elements.0.min', 'null'),
('categoryGroups.8bbb286a-ac71-4e2a-8a91-3dbff9e26b3d.fieldLayouts.9c805793-8bc3-4ff0-894b-04e4c78e2798.tabs.0.elements.0.name', 'null'),
('categoryGroups.8bbb286a-ac71-4e2a-8a91-3dbff9e26b3d.fieldLayouts.9c805793-8bc3-4ff0-894b-04e4c78e2798.tabs.0.elements.0.orientation', 'null'),
('categoryGroups.8bbb286a-ac71-4e2a-8a91-3dbff9e26b3d.fieldLayouts.9c805793-8bc3-4ff0-894b-04e4c78e2798.tabs.0.elements.0.placeholder', 'null'),
('categoryGroups.8bbb286a-ac71-4e2a-8a91-3dbff9e26b3d.fieldLayouts.9c805793-8bc3-4ff0-894b-04e4c78e2798.tabs.0.elements.0.readonly', 'false'),
('categoryGroups.8bbb286a-ac71-4e2a-8a91-3dbff9e26b3d.fieldLayouts.9c805793-8bc3-4ff0-894b-04e4c78e2798.tabs.0.elements.0.requirable', 'false'),
('categoryGroups.8bbb286a-ac71-4e2a-8a91-3dbff9e26b3d.fieldLayouts.9c805793-8bc3-4ff0-894b-04e4c78e2798.tabs.0.elements.0.size', 'null'),
('categoryGroups.8bbb286a-ac71-4e2a-8a91-3dbff9e26b3d.fieldLayouts.9c805793-8bc3-4ff0-894b-04e4c78e2798.tabs.0.elements.0.step', 'null'),
('categoryGroups.8bbb286a-ac71-4e2a-8a91-3dbff9e26b3d.fieldLayouts.9c805793-8bc3-4ff0-894b-04e4c78e2798.tabs.0.elements.0.tip', 'null'),
('categoryGroups.8bbb286a-ac71-4e2a-8a91-3dbff9e26b3d.fieldLayouts.9c805793-8bc3-4ff0-894b-04e4c78e2798.tabs.0.elements.0.title', 'null'),
('categoryGroups.8bbb286a-ac71-4e2a-8a91-3dbff9e26b3d.fieldLayouts.9c805793-8bc3-4ff0-894b-04e4c78e2798.tabs.0.elements.0.type', '\"craft\\\\fieldlayoutelements\\\\TitleField\"'),
('categoryGroups.8bbb286a-ac71-4e2a-8a91-3dbff9e26b3d.fieldLayouts.9c805793-8bc3-4ff0-894b-04e4c78e2798.tabs.0.elements.0.uid', '\"62910302-df91-4c89-84f5-b77d5c037c49\"'),
('categoryGroups.8bbb286a-ac71-4e2a-8a91-3dbff9e26b3d.fieldLayouts.9c805793-8bc3-4ff0-894b-04e4c78e2798.tabs.0.elements.0.userCondition', 'null'),
('categoryGroups.8bbb286a-ac71-4e2a-8a91-3dbff9e26b3d.fieldLayouts.9c805793-8bc3-4ff0-894b-04e4c78e2798.tabs.0.elements.0.warning', 'null'),
('categoryGroups.8bbb286a-ac71-4e2a-8a91-3dbff9e26b3d.fieldLayouts.9c805793-8bc3-4ff0-894b-04e4c78e2798.tabs.0.elements.0.width', '100'),
('categoryGroups.8bbb286a-ac71-4e2a-8a91-3dbff9e26b3d.fieldLayouts.9c805793-8bc3-4ff0-894b-04e4c78e2798.tabs.0.name', '\"Content\"'),
('categoryGroups.8bbb286a-ac71-4e2a-8a91-3dbff9e26b3d.fieldLayouts.9c805793-8bc3-4ff0-894b-04e4c78e2798.tabs.0.uid', '\"248979b0-4f95-4e06-9ce9-c53215651c41\"'),
('categoryGroups.8bbb286a-ac71-4e2a-8a91-3dbff9e26b3d.fieldLayouts.9c805793-8bc3-4ff0-894b-04e4c78e2798.tabs.0.userCondition', 'null'),
('categoryGroups.8bbb286a-ac71-4e2a-8a91-3dbff9e26b3d.handle', '\"softwareCategory\"'),
('categoryGroups.8bbb286a-ac71-4e2a-8a91-3dbff9e26b3d.name', '\"Software Category\"'),
('categoryGroups.8bbb286a-ac71-4e2a-8a91-3dbff9e26b3d.siteSettings.33732ef7-8cf5-46e3-a85d-565e9c838e3d.hasUrls', 'false'),
('categoryGroups.8bbb286a-ac71-4e2a-8a91-3dbff9e26b3d.siteSettings.33732ef7-8cf5-46e3-a85d-565e9c838e3d.template', 'null'),
('categoryGroups.8bbb286a-ac71-4e2a-8a91-3dbff9e26b3d.siteSettings.33732ef7-8cf5-46e3-a85d-565e9c838e3d.uriFormat', 'null'),
('categoryGroups.8bbb286a-ac71-4e2a-8a91-3dbff9e26b3d.structure.maxLevels', '1'),
('categoryGroups.8bbb286a-ac71-4e2a-8a91-3dbff9e26b3d.structure.uid', '\"08c003c2-df60-42b8-9da5-8c3943e5aa74\"'),
('dateModified', '1657810646'),
('elementSources.craft\\elements\\Entry.0.disabled', 'false'),
('elementSources.craft\\elements\\Entry.0.key', '\"*\"'),
('elementSources.craft\\elements\\Entry.0.tableAttributes.0', '\"section\"'),
('elementSources.craft\\elements\\Entry.0.tableAttributes.1', '\"postDate\"'),
('elementSources.craft\\elements\\Entry.0.tableAttributes.2', '\"expiryDate\"'),
('elementSources.craft\\elements\\Entry.0.tableAttributes.3', '\"link\"'),
('elementSources.craft\\elements\\Entry.0.type', '\"native\"'),
('elementSources.craft\\elements\\Entry.1.key', '\"singles\"'),
('elementSources.craft\\elements\\Entry.1.type', '\"native\"'),
('elementSources.craft\\elements\\Entry.2.heading', '\"Channels\"'),
('elementSources.craft\\elements\\Entry.2.type', '\"heading\"'),
('elementSources.craft\\elements\\Entry.3.key', '\"section:8032f6af-316d-418e-ab60-c0ce3c7f60f9\"'),
('elementSources.craft\\elements\\Entry.3.type', '\"native\"'),
('elementSources.craft\\elements\\Entry.4.key', '\"section:f87ff7ae-50ba-4e06-a75e-899fdc075507\"'),
('elementSources.craft\\elements\\Entry.4.type', '\"native\"'),
('elementSources.craft\\elements\\Entry.5.key', '\"section:b20b7ca8-6027-4f7f-a320-95ab24bc0b22\"'),
('elementSources.craft\\elements\\Entry.5.type', '\"native\"'),
('elementSources.craft\\elements\\Entry.6.disabled', 'false'),
('elementSources.craft\\elements\\Entry.6.key', '\"section:b2ea844f-e1dc-4538-a97d-a57a34bf1afe\"'),
('elementSources.craft\\elements\\Entry.6.tableAttributes.0', '\"postDate\"'),
('elementSources.craft\\elements\\Entry.6.tableAttributes.1', '\"link\"'),
('elementSources.craft\\elements\\Entry.6.type', '\"native\"'),
('elementSources.craft\\elements\\Entry.7.disabled', 'false'),
('elementSources.craft\\elements\\Entry.7.key', '\"section:b79a9ca5-e9d0-4e18-ad37-b38ee786a341\"'),
('elementSources.craft\\elements\\Entry.7.tableAttributes.0', '\"postDate\"'),
('elementSources.craft\\elements\\Entry.7.tableAttributes.1', '\"expiryDate\"'),
('elementSources.craft\\elements\\Entry.7.tableAttributes.2', '\"link\"'),
('elementSources.craft\\elements\\Entry.7.type', '\"native\"'),
('email.fromEmail', '\"admin@mail.com\"'),
('email.fromName', '\"cloud4success\"'),
('email.transportType', '\"craft\\\\mail\\\\transportadapters\\\\Sendmail\"'),
('entryTypes.0d358e98-2829-44be-a4f1-978b41d2f0aa.fieldLayouts.fa25e6a9-c0b0-4e2d-8fe6-bc1592edbd22.tabs.0.elementCondition', 'null'),
('entryTypes.0d358e98-2829-44be-a4f1-978b41d2f0aa.fieldLayouts.fa25e6a9-c0b0-4e2d-8fe6-bc1592edbd22.tabs.0.elements.0.autocapitalize', 'true'),
('entryTypes.0d358e98-2829-44be-a4f1-978b41d2f0aa.fieldLayouts.fa25e6a9-c0b0-4e2d-8fe6-bc1592edbd22.tabs.0.elements.0.autocomplete', 'false'),
('entryTypes.0d358e98-2829-44be-a4f1-978b41d2f0aa.fieldLayouts.fa25e6a9-c0b0-4e2d-8fe6-bc1592edbd22.tabs.0.elements.0.autocorrect', 'true'),
('entryTypes.0d358e98-2829-44be-a4f1-978b41d2f0aa.fieldLayouts.fa25e6a9-c0b0-4e2d-8fe6-bc1592edbd22.tabs.0.elements.0.class', 'null'),
('entryTypes.0d358e98-2829-44be-a4f1-978b41d2f0aa.fieldLayouts.fa25e6a9-c0b0-4e2d-8fe6-bc1592edbd22.tabs.0.elements.0.disabled', 'false'),
('entryTypes.0d358e98-2829-44be-a4f1-978b41d2f0aa.fieldLayouts.fa25e6a9-c0b0-4e2d-8fe6-bc1592edbd22.tabs.0.elements.0.elementCondition', 'null'),
('entryTypes.0d358e98-2829-44be-a4f1-978b41d2f0aa.fieldLayouts.fa25e6a9-c0b0-4e2d-8fe6-bc1592edbd22.tabs.0.elements.0.id', 'null'),
('entryTypes.0d358e98-2829-44be-a4f1-978b41d2f0aa.fieldLayouts.fa25e6a9-c0b0-4e2d-8fe6-bc1592edbd22.tabs.0.elements.0.instructions', 'null'),
('entryTypes.0d358e98-2829-44be-a4f1-978b41d2f0aa.fieldLayouts.fa25e6a9-c0b0-4e2d-8fe6-bc1592edbd22.tabs.0.elements.0.label', 'null'),
('entryTypes.0d358e98-2829-44be-a4f1-978b41d2f0aa.fieldLayouts.fa25e6a9-c0b0-4e2d-8fe6-bc1592edbd22.tabs.0.elements.0.max', 'null'),
('entryTypes.0d358e98-2829-44be-a4f1-978b41d2f0aa.fieldLayouts.fa25e6a9-c0b0-4e2d-8fe6-bc1592edbd22.tabs.0.elements.0.min', 'null'),
('entryTypes.0d358e98-2829-44be-a4f1-978b41d2f0aa.fieldLayouts.fa25e6a9-c0b0-4e2d-8fe6-bc1592edbd22.tabs.0.elements.0.name', 'null'),
('entryTypes.0d358e98-2829-44be-a4f1-978b41d2f0aa.fieldLayouts.fa25e6a9-c0b0-4e2d-8fe6-bc1592edbd22.tabs.0.elements.0.orientation', 'null'),
('entryTypes.0d358e98-2829-44be-a4f1-978b41d2f0aa.fieldLayouts.fa25e6a9-c0b0-4e2d-8fe6-bc1592edbd22.tabs.0.elements.0.placeholder', 'null'),
('entryTypes.0d358e98-2829-44be-a4f1-978b41d2f0aa.fieldLayouts.fa25e6a9-c0b0-4e2d-8fe6-bc1592edbd22.tabs.0.elements.0.readonly', 'false'),
('entryTypes.0d358e98-2829-44be-a4f1-978b41d2f0aa.fieldLayouts.fa25e6a9-c0b0-4e2d-8fe6-bc1592edbd22.tabs.0.elements.0.requirable', 'false'),
('entryTypes.0d358e98-2829-44be-a4f1-978b41d2f0aa.fieldLayouts.fa25e6a9-c0b0-4e2d-8fe6-bc1592edbd22.tabs.0.elements.0.size', 'null'),
('entryTypes.0d358e98-2829-44be-a4f1-978b41d2f0aa.fieldLayouts.fa25e6a9-c0b0-4e2d-8fe6-bc1592edbd22.tabs.0.elements.0.step', 'null'),
('entryTypes.0d358e98-2829-44be-a4f1-978b41d2f0aa.fieldLayouts.fa25e6a9-c0b0-4e2d-8fe6-bc1592edbd22.tabs.0.elements.0.tip', 'null'),
('entryTypes.0d358e98-2829-44be-a4f1-978b41d2f0aa.fieldLayouts.fa25e6a9-c0b0-4e2d-8fe6-bc1592edbd22.tabs.0.elements.0.title', 'null'),
('entryTypes.0d358e98-2829-44be-a4f1-978b41d2f0aa.fieldLayouts.fa25e6a9-c0b0-4e2d-8fe6-bc1592edbd22.tabs.0.elements.0.type', '\"craft\\\\fieldlayoutelements\\\\entries\\\\EntryTitleField\"'),
('entryTypes.0d358e98-2829-44be-a4f1-978b41d2f0aa.fieldLayouts.fa25e6a9-c0b0-4e2d-8fe6-bc1592edbd22.tabs.0.elements.0.uid', '\"d134eae4-1925-468f-87b6-e57cd02312d4\"'),
('entryTypes.0d358e98-2829-44be-a4f1-978b41d2f0aa.fieldLayouts.fa25e6a9-c0b0-4e2d-8fe6-bc1592edbd22.tabs.0.elements.0.userCondition', 'null'),
('entryTypes.0d358e98-2829-44be-a4f1-978b41d2f0aa.fieldLayouts.fa25e6a9-c0b0-4e2d-8fe6-bc1592edbd22.tabs.0.elements.0.warning', 'null'),
('entryTypes.0d358e98-2829-44be-a4f1-978b41d2f0aa.fieldLayouts.fa25e6a9-c0b0-4e2d-8fe6-bc1592edbd22.tabs.0.elements.0.width', '100'),
('entryTypes.0d358e98-2829-44be-a4f1-978b41d2f0aa.fieldLayouts.fa25e6a9-c0b0-4e2d-8fe6-bc1592edbd22.tabs.0.elements.1.elementCondition', 'null'),
('entryTypes.0d358e98-2829-44be-a4f1-978b41d2f0aa.fieldLayouts.fa25e6a9-c0b0-4e2d-8fe6-bc1592edbd22.tabs.0.elements.1.fieldUid', '\"be50f99b-b84e-45d6-99c6-9b79e5c52560\"'),
('entryTypes.0d358e98-2829-44be-a4f1-978b41d2f0aa.fieldLayouts.fa25e6a9-c0b0-4e2d-8fe6-bc1592edbd22.tabs.0.elements.1.instructions', 'null'),
('entryTypes.0d358e98-2829-44be-a4f1-978b41d2f0aa.fieldLayouts.fa25e6a9-c0b0-4e2d-8fe6-bc1592edbd22.tabs.0.elements.1.label', '\"Icon\"'),
('entryTypes.0d358e98-2829-44be-a4f1-978b41d2f0aa.fieldLayouts.fa25e6a9-c0b0-4e2d-8fe6-bc1592edbd22.tabs.0.elements.1.required', 'false'),
('entryTypes.0d358e98-2829-44be-a4f1-978b41d2f0aa.fieldLayouts.fa25e6a9-c0b0-4e2d-8fe6-bc1592edbd22.tabs.0.elements.1.tip', 'null'),
('entryTypes.0d358e98-2829-44be-a4f1-978b41d2f0aa.fieldLayouts.fa25e6a9-c0b0-4e2d-8fe6-bc1592edbd22.tabs.0.elements.1.type', '\"craft\\\\fieldlayoutelements\\\\CustomField\"'),
('entryTypes.0d358e98-2829-44be-a4f1-978b41d2f0aa.fieldLayouts.fa25e6a9-c0b0-4e2d-8fe6-bc1592edbd22.tabs.0.elements.1.uid', '\"531ae389-cc11-472d-aaa5-c1656f1bac84\"'),
('entryTypes.0d358e98-2829-44be-a4f1-978b41d2f0aa.fieldLayouts.fa25e6a9-c0b0-4e2d-8fe6-bc1592edbd22.tabs.0.elements.1.userCondition', 'null'),
('entryTypes.0d358e98-2829-44be-a4f1-978b41d2f0aa.fieldLayouts.fa25e6a9-c0b0-4e2d-8fe6-bc1592edbd22.tabs.0.elements.1.warning', 'null'),
('entryTypes.0d358e98-2829-44be-a4f1-978b41d2f0aa.fieldLayouts.fa25e6a9-c0b0-4e2d-8fe6-bc1592edbd22.tabs.0.elements.1.width', '100'),
('entryTypes.0d358e98-2829-44be-a4f1-978b41d2f0aa.fieldLayouts.fa25e6a9-c0b0-4e2d-8fe6-bc1592edbd22.tabs.0.elements.2.elementCondition', 'null'),
('entryTypes.0d358e98-2829-44be-a4f1-978b41d2f0aa.fieldLayouts.fa25e6a9-c0b0-4e2d-8fe6-bc1592edbd22.tabs.0.elements.2.fieldUid', '\"c969cea5-b5b1-408f-a797-8806df0c5402\"'),
('entryTypes.0d358e98-2829-44be-a4f1-978b41d2f0aa.fieldLayouts.fa25e6a9-c0b0-4e2d-8fe6-bc1592edbd22.tabs.0.elements.2.instructions', 'null'),
('entryTypes.0d358e98-2829-44be-a4f1-978b41d2f0aa.fieldLayouts.fa25e6a9-c0b0-4e2d-8fe6-bc1592edbd22.tabs.0.elements.2.label', 'null'),
('entryTypes.0d358e98-2829-44be-a4f1-978b41d2f0aa.fieldLayouts.fa25e6a9-c0b0-4e2d-8fe6-bc1592edbd22.tabs.0.elements.2.required', 'false'),
('entryTypes.0d358e98-2829-44be-a4f1-978b41d2f0aa.fieldLayouts.fa25e6a9-c0b0-4e2d-8fe6-bc1592edbd22.tabs.0.elements.2.tip', 'null'),
('entryTypes.0d358e98-2829-44be-a4f1-978b41d2f0aa.fieldLayouts.fa25e6a9-c0b0-4e2d-8fe6-bc1592edbd22.tabs.0.elements.2.type', '\"craft\\\\fieldlayoutelements\\\\CustomField\"'),
('entryTypes.0d358e98-2829-44be-a4f1-978b41d2f0aa.fieldLayouts.fa25e6a9-c0b0-4e2d-8fe6-bc1592edbd22.tabs.0.elements.2.uid', '\"15fbf079-0156-47eb-be55-f0507760be25\"'),
('entryTypes.0d358e98-2829-44be-a4f1-978b41d2f0aa.fieldLayouts.fa25e6a9-c0b0-4e2d-8fe6-bc1592edbd22.tabs.0.elements.2.userCondition', 'null'),
('entryTypes.0d358e98-2829-44be-a4f1-978b41d2f0aa.fieldLayouts.fa25e6a9-c0b0-4e2d-8fe6-bc1592edbd22.tabs.0.elements.2.warning', 'null'),
('entryTypes.0d358e98-2829-44be-a4f1-978b41d2f0aa.fieldLayouts.fa25e6a9-c0b0-4e2d-8fe6-bc1592edbd22.tabs.0.elements.2.width', '100'),
('entryTypes.0d358e98-2829-44be-a4f1-978b41d2f0aa.fieldLayouts.fa25e6a9-c0b0-4e2d-8fe6-bc1592edbd22.tabs.0.name', '\"Detail\"'),
('entryTypes.0d358e98-2829-44be-a4f1-978b41d2f0aa.fieldLayouts.fa25e6a9-c0b0-4e2d-8fe6-bc1592edbd22.tabs.0.uid', '\"5300ab8c-1486-4c1e-a391-158153b30a9e\"'),
('entryTypes.0d358e98-2829-44be-a4f1-978b41d2f0aa.fieldLayouts.fa25e6a9-c0b0-4e2d-8fe6-bc1592edbd22.tabs.0.userCondition', 'null'),
('entryTypes.0d358e98-2829-44be-a4f1-978b41d2f0aa.fieldLayouts.fa25e6a9-c0b0-4e2d-8fe6-bc1592edbd22.tabs.1.elementCondition', 'null'),
('entryTypes.0d358e98-2829-44be-a4f1-978b41d2f0aa.fieldLayouts.fa25e6a9-c0b0-4e2d-8fe6-bc1592edbd22.tabs.1.elements.0.elementCondition', 'null'),
('entryTypes.0d358e98-2829-44be-a4f1-978b41d2f0aa.fieldLayouts.fa25e6a9-c0b0-4e2d-8fe6-bc1592edbd22.tabs.1.elements.0.fieldUid', '\"7acc60ca-d954-466f-9d9c-79ecb579ed62\"'),
('entryTypes.0d358e98-2829-44be-a4f1-978b41d2f0aa.fieldLayouts.fa25e6a9-c0b0-4e2d-8fe6-bc1592edbd22.tabs.1.elements.0.instructions', 'null'),
('entryTypes.0d358e98-2829-44be-a4f1-978b41d2f0aa.fieldLayouts.fa25e6a9-c0b0-4e2d-8fe6-bc1592edbd22.tabs.1.elements.0.label', '\"Information Button\"'),
('entryTypes.0d358e98-2829-44be-a4f1-978b41d2f0aa.fieldLayouts.fa25e6a9-c0b0-4e2d-8fe6-bc1592edbd22.tabs.1.elements.0.required', 'false'),
('entryTypes.0d358e98-2829-44be-a4f1-978b41d2f0aa.fieldLayouts.fa25e6a9-c0b0-4e2d-8fe6-bc1592edbd22.tabs.1.elements.0.tip', 'null'),
('entryTypes.0d358e98-2829-44be-a4f1-978b41d2f0aa.fieldLayouts.fa25e6a9-c0b0-4e2d-8fe6-bc1592edbd22.tabs.1.elements.0.type', '\"craft\\\\fieldlayoutelements\\\\CustomField\"'),
('entryTypes.0d358e98-2829-44be-a4f1-978b41d2f0aa.fieldLayouts.fa25e6a9-c0b0-4e2d-8fe6-bc1592edbd22.tabs.1.elements.0.uid', '\"ca7d4cdb-76c5-4aec-9ab8-cd3bd51b5296\"'),
('entryTypes.0d358e98-2829-44be-a4f1-978b41d2f0aa.fieldLayouts.fa25e6a9-c0b0-4e2d-8fe6-bc1592edbd22.tabs.1.elements.0.userCondition', 'null'),
('entryTypes.0d358e98-2829-44be-a4f1-978b41d2f0aa.fieldLayouts.fa25e6a9-c0b0-4e2d-8fe6-bc1592edbd22.tabs.1.elements.0.warning', 'null'),
('entryTypes.0d358e98-2829-44be-a4f1-978b41d2f0aa.fieldLayouts.fa25e6a9-c0b0-4e2d-8fe6-bc1592edbd22.tabs.1.elements.0.width', '100'),
('entryTypes.0d358e98-2829-44be-a4f1-978b41d2f0aa.fieldLayouts.fa25e6a9-c0b0-4e2d-8fe6-bc1592edbd22.tabs.1.elements.1.elementCondition', 'null'),
('entryTypes.0d358e98-2829-44be-a4f1-978b41d2f0aa.fieldLayouts.fa25e6a9-c0b0-4e2d-8fe6-bc1592edbd22.tabs.1.elements.1.type', '\"craft\\\\fieldlayoutelements\\\\HorizontalRule\"'),
('entryTypes.0d358e98-2829-44be-a4f1-978b41d2f0aa.fieldLayouts.fa25e6a9-c0b0-4e2d-8fe6-bc1592edbd22.tabs.1.elements.1.uid', '\"194a6035-bf5f-40ad-b10b-bc1c093841a9\"'),
('entryTypes.0d358e98-2829-44be-a4f1-978b41d2f0aa.fieldLayouts.fa25e6a9-c0b0-4e2d-8fe6-bc1592edbd22.tabs.1.elements.1.userCondition', 'null'),
('entryTypes.0d358e98-2829-44be-a4f1-978b41d2f0aa.fieldLayouts.fa25e6a9-c0b0-4e2d-8fe6-bc1592edbd22.tabs.1.elements.2.elementCondition', 'null'),
('entryTypes.0d358e98-2829-44be-a4f1-978b41d2f0aa.fieldLayouts.fa25e6a9-c0b0-4e2d-8fe6-bc1592edbd22.tabs.1.elements.2.fieldUid', '\"e1d6a3d2-955b-42e4-bcf0-ae40fbffba4f\"'),
('entryTypes.0d358e98-2829-44be-a4f1-978b41d2f0aa.fieldLayouts.fa25e6a9-c0b0-4e2d-8fe6-bc1592edbd22.tabs.1.elements.2.instructions', 'null'),
('entryTypes.0d358e98-2829-44be-a4f1-978b41d2f0aa.fieldLayouts.fa25e6a9-c0b0-4e2d-8fe6-bc1592edbd22.tabs.1.elements.2.label', 'null'),
('entryTypes.0d358e98-2829-44be-a4f1-978b41d2f0aa.fieldLayouts.fa25e6a9-c0b0-4e2d-8fe6-bc1592edbd22.tabs.1.elements.2.required', 'false'),
('entryTypes.0d358e98-2829-44be-a4f1-978b41d2f0aa.fieldLayouts.fa25e6a9-c0b0-4e2d-8fe6-bc1592edbd22.tabs.1.elements.2.tip', 'null'),
('entryTypes.0d358e98-2829-44be-a4f1-978b41d2f0aa.fieldLayouts.fa25e6a9-c0b0-4e2d-8fe6-bc1592edbd22.tabs.1.elements.2.type', '\"craft\\\\fieldlayoutelements\\\\CustomField\"'),
('entryTypes.0d358e98-2829-44be-a4f1-978b41d2f0aa.fieldLayouts.fa25e6a9-c0b0-4e2d-8fe6-bc1592edbd22.tabs.1.elements.2.uid', '\"1f1869b4-647b-4bc3-bb39-1b240b495629\"'),
('entryTypes.0d358e98-2829-44be-a4f1-978b41d2f0aa.fieldLayouts.fa25e6a9-c0b0-4e2d-8fe6-bc1592edbd22.tabs.1.elements.2.userCondition', 'null'),
('entryTypes.0d358e98-2829-44be-a4f1-978b41d2f0aa.fieldLayouts.fa25e6a9-c0b0-4e2d-8fe6-bc1592edbd22.tabs.1.elements.2.warning', 'null'),
('entryTypes.0d358e98-2829-44be-a4f1-978b41d2f0aa.fieldLayouts.fa25e6a9-c0b0-4e2d-8fe6-bc1592edbd22.tabs.1.elements.2.width', '100'),
('entryTypes.0d358e98-2829-44be-a4f1-978b41d2f0aa.fieldLayouts.fa25e6a9-c0b0-4e2d-8fe6-bc1592edbd22.tabs.1.name', '\"Content\"'),
('entryTypes.0d358e98-2829-44be-a4f1-978b41d2f0aa.fieldLayouts.fa25e6a9-c0b0-4e2d-8fe6-bc1592edbd22.tabs.1.uid', '\"0e0daa68-c0df-4aaa-8c33-19f070edf96c\"'),
('entryTypes.0d358e98-2829-44be-a4f1-978b41d2f0aa.fieldLayouts.fa25e6a9-c0b0-4e2d-8fe6-bc1592edbd22.tabs.1.userCondition', 'null'),
('entryTypes.0d358e98-2829-44be-a4f1-978b41d2f0aa.handle', '\"software\"'),
('entryTypes.0d358e98-2829-44be-a4f1-978b41d2f0aa.hasTitleField', 'true'),
('entryTypes.0d358e98-2829-44be-a4f1-978b41d2f0aa.name', '\"Software\"'),
('entryTypes.0d358e98-2829-44be-a4f1-978b41d2f0aa.section', '\"b2ea844f-e1dc-4538-a97d-a57a34bf1afe\"'),
('entryTypes.0d358e98-2829-44be-a4f1-978b41d2f0aa.sortOrder', '1'),
('entryTypes.0d358e98-2829-44be-a4f1-978b41d2f0aa.titleFormat', 'null'),
('entryTypes.0d358e98-2829-44be-a4f1-978b41d2f0aa.titleTranslationKeyFormat', 'null'),
('entryTypes.0d358e98-2829-44be-a4f1-978b41d2f0aa.titleTranslationMethod', '\"site\"'),
('entryTypes.299609db-9eef-4aff-bcd8-5a92efda1dbb.fieldLayouts.460156a6-ff26-4598-be21-3936885d86cb.tabs.0.elementCondition', 'null'),
('entryTypes.299609db-9eef-4aff-bcd8-5a92efda1dbb.fieldLayouts.460156a6-ff26-4598-be21-3936885d86cb.tabs.0.elements.0.autocapitalize', 'true'),
('entryTypes.299609db-9eef-4aff-bcd8-5a92efda1dbb.fieldLayouts.460156a6-ff26-4598-be21-3936885d86cb.tabs.0.elements.0.autocomplete', 'false'),
('entryTypes.299609db-9eef-4aff-bcd8-5a92efda1dbb.fieldLayouts.460156a6-ff26-4598-be21-3936885d86cb.tabs.0.elements.0.autocorrect', 'true'),
('entryTypes.299609db-9eef-4aff-bcd8-5a92efda1dbb.fieldLayouts.460156a6-ff26-4598-be21-3936885d86cb.tabs.0.elements.0.class', 'null'),
('entryTypes.299609db-9eef-4aff-bcd8-5a92efda1dbb.fieldLayouts.460156a6-ff26-4598-be21-3936885d86cb.tabs.0.elements.0.disabled', 'false'),
('entryTypes.299609db-9eef-4aff-bcd8-5a92efda1dbb.fieldLayouts.460156a6-ff26-4598-be21-3936885d86cb.tabs.0.elements.0.elementCondition', 'null'),
('entryTypes.299609db-9eef-4aff-bcd8-5a92efda1dbb.fieldLayouts.460156a6-ff26-4598-be21-3936885d86cb.tabs.0.elements.0.id', 'null'),
('entryTypes.299609db-9eef-4aff-bcd8-5a92efda1dbb.fieldLayouts.460156a6-ff26-4598-be21-3936885d86cb.tabs.0.elements.0.instructions', 'null'),
('entryTypes.299609db-9eef-4aff-bcd8-5a92efda1dbb.fieldLayouts.460156a6-ff26-4598-be21-3936885d86cb.tabs.0.elements.0.label', 'null'),
('entryTypes.299609db-9eef-4aff-bcd8-5a92efda1dbb.fieldLayouts.460156a6-ff26-4598-be21-3936885d86cb.tabs.0.elements.0.max', 'null'),
('entryTypes.299609db-9eef-4aff-bcd8-5a92efda1dbb.fieldLayouts.460156a6-ff26-4598-be21-3936885d86cb.tabs.0.elements.0.min', 'null'),
('entryTypes.299609db-9eef-4aff-bcd8-5a92efda1dbb.fieldLayouts.460156a6-ff26-4598-be21-3936885d86cb.tabs.0.elements.0.name', 'null'),
('entryTypes.299609db-9eef-4aff-bcd8-5a92efda1dbb.fieldLayouts.460156a6-ff26-4598-be21-3936885d86cb.tabs.0.elements.0.orientation', 'null'),
('entryTypes.299609db-9eef-4aff-bcd8-5a92efda1dbb.fieldLayouts.460156a6-ff26-4598-be21-3936885d86cb.tabs.0.elements.0.placeholder', 'null'),
('entryTypes.299609db-9eef-4aff-bcd8-5a92efda1dbb.fieldLayouts.460156a6-ff26-4598-be21-3936885d86cb.tabs.0.elements.0.readonly', 'false'),
('entryTypes.299609db-9eef-4aff-bcd8-5a92efda1dbb.fieldLayouts.460156a6-ff26-4598-be21-3936885d86cb.tabs.0.elements.0.requirable', 'false'),
('entryTypes.299609db-9eef-4aff-bcd8-5a92efda1dbb.fieldLayouts.460156a6-ff26-4598-be21-3936885d86cb.tabs.0.elements.0.size', 'null'),
('entryTypes.299609db-9eef-4aff-bcd8-5a92efda1dbb.fieldLayouts.460156a6-ff26-4598-be21-3936885d86cb.tabs.0.elements.0.step', 'null'),
('entryTypes.299609db-9eef-4aff-bcd8-5a92efda1dbb.fieldLayouts.460156a6-ff26-4598-be21-3936885d86cb.tabs.0.elements.0.tip', 'null'),
('entryTypes.299609db-9eef-4aff-bcd8-5a92efda1dbb.fieldLayouts.460156a6-ff26-4598-be21-3936885d86cb.tabs.0.elements.0.title', 'null'),
('entryTypes.299609db-9eef-4aff-bcd8-5a92efda1dbb.fieldLayouts.460156a6-ff26-4598-be21-3936885d86cb.tabs.0.elements.0.type', '\"craft\\\\fieldlayoutelements\\\\entries\\\\EntryTitleField\"'),
('entryTypes.299609db-9eef-4aff-bcd8-5a92efda1dbb.fieldLayouts.460156a6-ff26-4598-be21-3936885d86cb.tabs.0.elements.0.uid', '\"e59f1dc9-dd38-4c25-a59b-17271b4dcca7\"'),
('entryTypes.299609db-9eef-4aff-bcd8-5a92efda1dbb.fieldLayouts.460156a6-ff26-4598-be21-3936885d86cb.tabs.0.elements.0.userCondition', 'null'),
('entryTypes.299609db-9eef-4aff-bcd8-5a92efda1dbb.fieldLayouts.460156a6-ff26-4598-be21-3936885d86cb.tabs.0.elements.0.warning', 'null'),
('entryTypes.299609db-9eef-4aff-bcd8-5a92efda1dbb.fieldLayouts.460156a6-ff26-4598-be21-3936885d86cb.tabs.0.elements.0.width', '100'),
('entryTypes.299609db-9eef-4aff-bcd8-5a92efda1dbb.fieldLayouts.460156a6-ff26-4598-be21-3936885d86cb.tabs.0.elements.1.elementCondition', 'null'),
('entryTypes.299609db-9eef-4aff-bcd8-5a92efda1dbb.fieldLayouts.460156a6-ff26-4598-be21-3936885d86cb.tabs.0.elements.1.fieldUid', '\"be50f99b-b84e-45d6-99c6-9b79e5c52560\"'),
('entryTypes.299609db-9eef-4aff-bcd8-5a92efda1dbb.fieldLayouts.460156a6-ff26-4598-be21-3936885d86cb.tabs.0.elements.1.instructions', 'null'),
('entryTypes.299609db-9eef-4aff-bcd8-5a92efda1dbb.fieldLayouts.460156a6-ff26-4598-be21-3936885d86cb.tabs.0.elements.1.label', 'null'),
('entryTypes.299609db-9eef-4aff-bcd8-5a92efda1dbb.fieldLayouts.460156a6-ff26-4598-be21-3936885d86cb.tabs.0.elements.1.required', 'false'),
('entryTypes.299609db-9eef-4aff-bcd8-5a92efda1dbb.fieldLayouts.460156a6-ff26-4598-be21-3936885d86cb.tabs.0.elements.1.tip', 'null'),
('entryTypes.299609db-9eef-4aff-bcd8-5a92efda1dbb.fieldLayouts.460156a6-ff26-4598-be21-3936885d86cb.tabs.0.elements.1.type', '\"craft\\\\fieldlayoutelements\\\\CustomField\"'),
('entryTypes.299609db-9eef-4aff-bcd8-5a92efda1dbb.fieldLayouts.460156a6-ff26-4598-be21-3936885d86cb.tabs.0.elements.1.uid', '\"6d409f74-31fb-4414-81e5-5c1407803f15\"'),
('entryTypes.299609db-9eef-4aff-bcd8-5a92efda1dbb.fieldLayouts.460156a6-ff26-4598-be21-3936885d86cb.tabs.0.elements.1.userCondition', 'null'),
('entryTypes.299609db-9eef-4aff-bcd8-5a92efda1dbb.fieldLayouts.460156a6-ff26-4598-be21-3936885d86cb.tabs.0.elements.1.warning', 'null'),
('entryTypes.299609db-9eef-4aff-bcd8-5a92efda1dbb.fieldLayouts.460156a6-ff26-4598-be21-3936885d86cb.tabs.0.elements.1.width', '100'),
('entryTypes.299609db-9eef-4aff-bcd8-5a92efda1dbb.fieldLayouts.460156a6-ff26-4598-be21-3936885d86cb.tabs.0.elements.2.elementCondition', 'null'),
('entryTypes.299609db-9eef-4aff-bcd8-5a92efda1dbb.fieldLayouts.460156a6-ff26-4598-be21-3936885d86cb.tabs.0.elements.2.fieldUid', '\"293cac4b-bd6e-4c92-98ca-eb719b885cda\"'),
('entryTypes.299609db-9eef-4aff-bcd8-5a92efda1dbb.fieldLayouts.460156a6-ff26-4598-be21-3936885d86cb.tabs.0.elements.2.instructions', 'null'),
('entryTypes.299609db-9eef-4aff-bcd8-5a92efda1dbb.fieldLayouts.460156a6-ff26-4598-be21-3936885d86cb.tabs.0.elements.2.label', 'null'),
('entryTypes.299609db-9eef-4aff-bcd8-5a92efda1dbb.fieldLayouts.460156a6-ff26-4598-be21-3936885d86cb.tabs.0.elements.2.required', 'false'),
('entryTypes.299609db-9eef-4aff-bcd8-5a92efda1dbb.fieldLayouts.460156a6-ff26-4598-be21-3936885d86cb.tabs.0.elements.2.tip', 'null'),
('entryTypes.299609db-9eef-4aff-bcd8-5a92efda1dbb.fieldLayouts.460156a6-ff26-4598-be21-3936885d86cb.tabs.0.elements.2.type', '\"craft\\\\fieldlayoutelements\\\\CustomField\"'),
('entryTypes.299609db-9eef-4aff-bcd8-5a92efda1dbb.fieldLayouts.460156a6-ff26-4598-be21-3936885d86cb.tabs.0.elements.2.uid', '\"13e56410-185a-431c-88b0-67de9979c6fd\"'),
('entryTypes.299609db-9eef-4aff-bcd8-5a92efda1dbb.fieldLayouts.460156a6-ff26-4598-be21-3936885d86cb.tabs.0.elements.2.userCondition', 'null'),
('entryTypes.299609db-9eef-4aff-bcd8-5a92efda1dbb.fieldLayouts.460156a6-ff26-4598-be21-3936885d86cb.tabs.0.elements.2.warning', 'null'),
('entryTypes.299609db-9eef-4aff-bcd8-5a92efda1dbb.fieldLayouts.460156a6-ff26-4598-be21-3936885d86cb.tabs.0.elements.2.width', '100'),
('entryTypes.299609db-9eef-4aff-bcd8-5a92efda1dbb.fieldLayouts.460156a6-ff26-4598-be21-3936885d86cb.tabs.0.elements.3.elementCondition', 'null'),
('entryTypes.299609db-9eef-4aff-bcd8-5a92efda1dbb.fieldLayouts.460156a6-ff26-4598-be21-3936885d86cb.tabs.0.elements.3.fieldUid', '\"907b94e8-b3cb-408b-a4ed-d497104b2d55\"'),
('entryTypes.299609db-9eef-4aff-bcd8-5a92efda1dbb.fieldLayouts.460156a6-ff26-4598-be21-3936885d86cb.tabs.0.elements.3.instructions', 'null'),
('entryTypes.299609db-9eef-4aff-bcd8-5a92efda1dbb.fieldLayouts.460156a6-ff26-4598-be21-3936885d86cb.tabs.0.elements.3.label', 'null'),
('entryTypes.299609db-9eef-4aff-bcd8-5a92efda1dbb.fieldLayouts.460156a6-ff26-4598-be21-3936885d86cb.tabs.0.elements.3.required', 'false'),
('entryTypes.299609db-9eef-4aff-bcd8-5a92efda1dbb.fieldLayouts.460156a6-ff26-4598-be21-3936885d86cb.tabs.0.elements.3.tip', 'null'),
('entryTypes.299609db-9eef-4aff-bcd8-5a92efda1dbb.fieldLayouts.460156a6-ff26-4598-be21-3936885d86cb.tabs.0.elements.3.type', '\"craft\\\\fieldlayoutelements\\\\CustomField\"'),
('entryTypes.299609db-9eef-4aff-bcd8-5a92efda1dbb.fieldLayouts.460156a6-ff26-4598-be21-3936885d86cb.tabs.0.elements.3.uid', '\"806ee183-0744-4bad-a08a-f6818100c164\"'),
('entryTypes.299609db-9eef-4aff-bcd8-5a92efda1dbb.fieldLayouts.460156a6-ff26-4598-be21-3936885d86cb.tabs.0.elements.3.userCondition', 'null'),
('entryTypes.299609db-9eef-4aff-bcd8-5a92efda1dbb.fieldLayouts.460156a6-ff26-4598-be21-3936885d86cb.tabs.0.elements.3.warning', 'null'),
('entryTypes.299609db-9eef-4aff-bcd8-5a92efda1dbb.fieldLayouts.460156a6-ff26-4598-be21-3936885d86cb.tabs.0.elements.3.width', '100'),
('entryTypes.299609db-9eef-4aff-bcd8-5a92efda1dbb.fieldLayouts.460156a6-ff26-4598-be21-3936885d86cb.tabs.0.name', '\"Content\"'),
('entryTypes.299609db-9eef-4aff-bcd8-5a92efda1dbb.fieldLayouts.460156a6-ff26-4598-be21-3936885d86cb.tabs.0.uid', '\"c43550ad-9845-41b5-a00d-04a348b2c3e3\"'),
('entryTypes.299609db-9eef-4aff-bcd8-5a92efda1dbb.fieldLayouts.460156a6-ff26-4598-be21-3936885d86cb.tabs.0.userCondition', 'null'),
('entryTypes.299609db-9eef-4aff-bcd8-5a92efda1dbb.handle', '\"home\"'),
('entryTypes.299609db-9eef-4aff-bcd8-5a92efda1dbb.hasTitleField', 'false'),
('entryTypes.299609db-9eef-4aff-bcd8-5a92efda1dbb.name', '\"Home\"'),
('entryTypes.299609db-9eef-4aff-bcd8-5a92efda1dbb.section', '\"e0c0b0fa-c719-49dc-9c62-cfe77e3a05b2\"'),
('entryTypes.299609db-9eef-4aff-bcd8-5a92efda1dbb.sortOrder', '1'),
('entryTypes.299609db-9eef-4aff-bcd8-5a92efda1dbb.titleFormat', '\"{section.name|raw}\"'),
('entryTypes.299609db-9eef-4aff-bcd8-5a92efda1dbb.titleTranslationKeyFormat', 'null'),
('entryTypes.299609db-9eef-4aff-bcd8-5a92efda1dbb.titleTranslationMethod', '\"site\"'),
('entryTypes.36e73792-074d-4ef8-ab4e-a2efc6ad90d4.fieldLayouts.0c8bdbda-62cf-43f1-a11d-fcc1af837d9c.tabs.0.elementCondition', 'null'),
('entryTypes.36e73792-074d-4ef8-ab4e-a2efc6ad90d4.fieldLayouts.0c8bdbda-62cf-43f1-a11d-fcc1af837d9c.tabs.0.elements.0.autocapitalize', 'true'),
('entryTypes.36e73792-074d-4ef8-ab4e-a2efc6ad90d4.fieldLayouts.0c8bdbda-62cf-43f1-a11d-fcc1af837d9c.tabs.0.elements.0.autocomplete', 'false'),
('entryTypes.36e73792-074d-4ef8-ab4e-a2efc6ad90d4.fieldLayouts.0c8bdbda-62cf-43f1-a11d-fcc1af837d9c.tabs.0.elements.0.autocorrect', 'true'),
('entryTypes.36e73792-074d-4ef8-ab4e-a2efc6ad90d4.fieldLayouts.0c8bdbda-62cf-43f1-a11d-fcc1af837d9c.tabs.0.elements.0.class', 'null'),
('entryTypes.36e73792-074d-4ef8-ab4e-a2efc6ad90d4.fieldLayouts.0c8bdbda-62cf-43f1-a11d-fcc1af837d9c.tabs.0.elements.0.disabled', 'false'),
('entryTypes.36e73792-074d-4ef8-ab4e-a2efc6ad90d4.fieldLayouts.0c8bdbda-62cf-43f1-a11d-fcc1af837d9c.tabs.0.elements.0.elementCondition', 'null'),
('entryTypes.36e73792-074d-4ef8-ab4e-a2efc6ad90d4.fieldLayouts.0c8bdbda-62cf-43f1-a11d-fcc1af837d9c.tabs.0.elements.0.id', 'null'),
('entryTypes.36e73792-074d-4ef8-ab4e-a2efc6ad90d4.fieldLayouts.0c8bdbda-62cf-43f1-a11d-fcc1af837d9c.tabs.0.elements.0.instructions', 'null'),
('entryTypes.36e73792-074d-4ef8-ab4e-a2efc6ad90d4.fieldLayouts.0c8bdbda-62cf-43f1-a11d-fcc1af837d9c.tabs.0.elements.0.label', 'null'),
('entryTypes.36e73792-074d-4ef8-ab4e-a2efc6ad90d4.fieldLayouts.0c8bdbda-62cf-43f1-a11d-fcc1af837d9c.tabs.0.elements.0.max', 'null'),
('entryTypes.36e73792-074d-4ef8-ab4e-a2efc6ad90d4.fieldLayouts.0c8bdbda-62cf-43f1-a11d-fcc1af837d9c.tabs.0.elements.0.min', 'null'),
('entryTypes.36e73792-074d-4ef8-ab4e-a2efc6ad90d4.fieldLayouts.0c8bdbda-62cf-43f1-a11d-fcc1af837d9c.tabs.0.elements.0.name', 'null'),
('entryTypes.36e73792-074d-4ef8-ab4e-a2efc6ad90d4.fieldLayouts.0c8bdbda-62cf-43f1-a11d-fcc1af837d9c.tabs.0.elements.0.orientation', 'null'),
('entryTypes.36e73792-074d-4ef8-ab4e-a2efc6ad90d4.fieldLayouts.0c8bdbda-62cf-43f1-a11d-fcc1af837d9c.tabs.0.elements.0.placeholder', 'null'),
('entryTypes.36e73792-074d-4ef8-ab4e-a2efc6ad90d4.fieldLayouts.0c8bdbda-62cf-43f1-a11d-fcc1af837d9c.tabs.0.elements.0.readonly', 'false'),
('entryTypes.36e73792-074d-4ef8-ab4e-a2efc6ad90d4.fieldLayouts.0c8bdbda-62cf-43f1-a11d-fcc1af837d9c.tabs.0.elements.0.requirable', 'false'),
('entryTypes.36e73792-074d-4ef8-ab4e-a2efc6ad90d4.fieldLayouts.0c8bdbda-62cf-43f1-a11d-fcc1af837d9c.tabs.0.elements.0.size', 'null'),
('entryTypes.36e73792-074d-4ef8-ab4e-a2efc6ad90d4.fieldLayouts.0c8bdbda-62cf-43f1-a11d-fcc1af837d9c.tabs.0.elements.0.step', 'null'),
('entryTypes.36e73792-074d-4ef8-ab4e-a2efc6ad90d4.fieldLayouts.0c8bdbda-62cf-43f1-a11d-fcc1af837d9c.tabs.0.elements.0.tip', 'null'),
('entryTypes.36e73792-074d-4ef8-ab4e-a2efc6ad90d4.fieldLayouts.0c8bdbda-62cf-43f1-a11d-fcc1af837d9c.tabs.0.elements.0.title', 'null'),
('entryTypes.36e73792-074d-4ef8-ab4e-a2efc6ad90d4.fieldLayouts.0c8bdbda-62cf-43f1-a11d-fcc1af837d9c.tabs.0.elements.0.type', '\"craft\\\\fieldlayoutelements\\\\entries\\\\EntryTitleField\"'),
('entryTypes.36e73792-074d-4ef8-ab4e-a2efc6ad90d4.fieldLayouts.0c8bdbda-62cf-43f1-a11d-fcc1af837d9c.tabs.0.elements.0.uid', '\"62ff9716-4900-4574-a228-44f4ed369a55\"'),
('entryTypes.36e73792-074d-4ef8-ab4e-a2efc6ad90d4.fieldLayouts.0c8bdbda-62cf-43f1-a11d-fcc1af837d9c.tabs.0.elements.0.userCondition', 'null'),
('entryTypes.36e73792-074d-4ef8-ab4e-a2efc6ad90d4.fieldLayouts.0c8bdbda-62cf-43f1-a11d-fcc1af837d9c.tabs.0.elements.0.warning', 'null'),
('entryTypes.36e73792-074d-4ef8-ab4e-a2efc6ad90d4.fieldLayouts.0c8bdbda-62cf-43f1-a11d-fcc1af837d9c.tabs.0.elements.0.width', '100'),
('entryTypes.36e73792-074d-4ef8-ab4e-a2efc6ad90d4.fieldLayouts.0c8bdbda-62cf-43f1-a11d-fcc1af837d9c.tabs.0.elements.1.elementCondition', 'null'),
('entryTypes.36e73792-074d-4ef8-ab4e-a2efc6ad90d4.fieldLayouts.0c8bdbda-62cf-43f1-a11d-fcc1af837d9c.tabs.0.elements.1.fieldUid', '\"293cac4b-bd6e-4c92-98ca-eb719b885cda\"'),
('entryTypes.36e73792-074d-4ef8-ab4e-a2efc6ad90d4.fieldLayouts.0c8bdbda-62cf-43f1-a11d-fcc1af837d9c.tabs.0.elements.1.instructions', 'null'),
('entryTypes.36e73792-074d-4ef8-ab4e-a2efc6ad90d4.fieldLayouts.0c8bdbda-62cf-43f1-a11d-fcc1af837d9c.tabs.0.elements.1.label', 'null'),
('entryTypes.36e73792-074d-4ef8-ab4e-a2efc6ad90d4.fieldLayouts.0c8bdbda-62cf-43f1-a11d-fcc1af837d9c.tabs.0.elements.1.required', 'false'),
('entryTypes.36e73792-074d-4ef8-ab4e-a2efc6ad90d4.fieldLayouts.0c8bdbda-62cf-43f1-a11d-fcc1af837d9c.tabs.0.elements.1.tip', 'null'),
('entryTypes.36e73792-074d-4ef8-ab4e-a2efc6ad90d4.fieldLayouts.0c8bdbda-62cf-43f1-a11d-fcc1af837d9c.tabs.0.elements.1.type', '\"craft\\\\fieldlayoutelements\\\\CustomField\"'),
('entryTypes.36e73792-074d-4ef8-ab4e-a2efc6ad90d4.fieldLayouts.0c8bdbda-62cf-43f1-a11d-fcc1af837d9c.tabs.0.elements.1.uid', '\"0e80d556-548b-47cb-8337-f1dbe99a6afa\"'),
('entryTypes.36e73792-074d-4ef8-ab4e-a2efc6ad90d4.fieldLayouts.0c8bdbda-62cf-43f1-a11d-fcc1af837d9c.tabs.0.elements.1.userCondition', 'null'),
('entryTypes.36e73792-074d-4ef8-ab4e-a2efc6ad90d4.fieldLayouts.0c8bdbda-62cf-43f1-a11d-fcc1af837d9c.tabs.0.elements.1.warning', 'null'),
('entryTypes.36e73792-074d-4ef8-ab4e-a2efc6ad90d4.fieldLayouts.0c8bdbda-62cf-43f1-a11d-fcc1af837d9c.tabs.0.elements.1.width', '100'),
('entryTypes.36e73792-074d-4ef8-ab4e-a2efc6ad90d4.fieldLayouts.0c8bdbda-62cf-43f1-a11d-fcc1af837d9c.tabs.0.elements.2.elementCondition', 'null'),
('entryTypes.36e73792-074d-4ef8-ab4e-a2efc6ad90d4.fieldLayouts.0c8bdbda-62cf-43f1-a11d-fcc1af837d9c.tabs.0.elements.2.fieldUid', '\"907b94e8-b3cb-408b-a4ed-d497104b2d55\"'),
('entryTypes.36e73792-074d-4ef8-ab4e-a2efc6ad90d4.fieldLayouts.0c8bdbda-62cf-43f1-a11d-fcc1af837d9c.tabs.0.elements.2.instructions', 'null'),
('entryTypes.36e73792-074d-4ef8-ab4e-a2efc6ad90d4.fieldLayouts.0c8bdbda-62cf-43f1-a11d-fcc1af837d9c.tabs.0.elements.2.label', 'null'),
('entryTypes.36e73792-074d-4ef8-ab4e-a2efc6ad90d4.fieldLayouts.0c8bdbda-62cf-43f1-a11d-fcc1af837d9c.tabs.0.elements.2.required', 'false'),
('entryTypes.36e73792-074d-4ef8-ab4e-a2efc6ad90d4.fieldLayouts.0c8bdbda-62cf-43f1-a11d-fcc1af837d9c.tabs.0.elements.2.tip', 'null'),
('entryTypes.36e73792-074d-4ef8-ab4e-a2efc6ad90d4.fieldLayouts.0c8bdbda-62cf-43f1-a11d-fcc1af837d9c.tabs.0.elements.2.type', '\"craft\\\\fieldlayoutelements\\\\CustomField\"'),
('entryTypes.36e73792-074d-4ef8-ab4e-a2efc6ad90d4.fieldLayouts.0c8bdbda-62cf-43f1-a11d-fcc1af837d9c.tabs.0.elements.2.uid', '\"66439132-cdb4-4394-b167-50b39e44940d\"'),
('entryTypes.36e73792-074d-4ef8-ab4e-a2efc6ad90d4.fieldLayouts.0c8bdbda-62cf-43f1-a11d-fcc1af837d9c.tabs.0.elements.2.userCondition', 'null'),
('entryTypes.36e73792-074d-4ef8-ab4e-a2efc6ad90d4.fieldLayouts.0c8bdbda-62cf-43f1-a11d-fcc1af837d9c.tabs.0.elements.2.warning', 'null'),
('entryTypes.36e73792-074d-4ef8-ab4e-a2efc6ad90d4.fieldLayouts.0c8bdbda-62cf-43f1-a11d-fcc1af837d9c.tabs.0.elements.2.width', '100'),
('entryTypes.36e73792-074d-4ef8-ab4e-a2efc6ad90d4.fieldLayouts.0c8bdbda-62cf-43f1-a11d-fcc1af837d9c.tabs.0.name', '\"Content\"'),
('entryTypes.36e73792-074d-4ef8-ab4e-a2efc6ad90d4.fieldLayouts.0c8bdbda-62cf-43f1-a11d-fcc1af837d9c.tabs.0.uid', '\"aa19e5a8-7c63-40f8-991a-256580c226e4\"'),
('entryTypes.36e73792-074d-4ef8-ab4e-a2efc6ad90d4.fieldLayouts.0c8bdbda-62cf-43f1-a11d-fcc1af837d9c.tabs.0.userCondition', 'null'),
('entryTypes.36e73792-074d-4ef8-ab4e-a2efc6ad90d4.handle', '\"modernWorkplace\"'),
('entryTypes.36e73792-074d-4ef8-ab4e-a2efc6ad90d4.hasTitleField', 'false'),
('entryTypes.36e73792-074d-4ef8-ab4e-a2efc6ad90d4.name', '\"Modern Workplace\"'),
('entryTypes.36e73792-074d-4ef8-ab4e-a2efc6ad90d4.section', '\"62bd963d-2296-4faa-b53a-80a39499b6ad\"'),
('entryTypes.36e73792-074d-4ef8-ab4e-a2efc6ad90d4.sortOrder', '1'),
('entryTypes.36e73792-074d-4ef8-ab4e-a2efc6ad90d4.titleFormat', '\"{section.name|raw}\"'),
('entryTypes.36e73792-074d-4ef8-ab4e-a2efc6ad90d4.titleTranslationKeyFormat', 'null'),
('entryTypes.36e73792-074d-4ef8-ab4e-a2efc6ad90d4.titleTranslationMethod', '\"site\"'),
('entryTypes.3da196e2-18bf-4d1d-b323-c31fe0330c82.fieldLayouts.f9dc7281-e99d-4a44-8bbc-8001fe76e655.tabs.0.elementCondition', 'null'),
('entryTypes.3da196e2-18bf-4d1d-b323-c31fe0330c82.fieldLayouts.f9dc7281-e99d-4a44-8bbc-8001fe76e655.tabs.0.elements.0.autocapitalize', 'true'),
('entryTypes.3da196e2-18bf-4d1d-b323-c31fe0330c82.fieldLayouts.f9dc7281-e99d-4a44-8bbc-8001fe76e655.tabs.0.elements.0.autocomplete', 'false'),
('entryTypes.3da196e2-18bf-4d1d-b323-c31fe0330c82.fieldLayouts.f9dc7281-e99d-4a44-8bbc-8001fe76e655.tabs.0.elements.0.autocorrect', 'true'),
('entryTypes.3da196e2-18bf-4d1d-b323-c31fe0330c82.fieldLayouts.f9dc7281-e99d-4a44-8bbc-8001fe76e655.tabs.0.elements.0.class', 'null'),
('entryTypes.3da196e2-18bf-4d1d-b323-c31fe0330c82.fieldLayouts.f9dc7281-e99d-4a44-8bbc-8001fe76e655.tabs.0.elements.0.disabled', 'false'),
('entryTypes.3da196e2-18bf-4d1d-b323-c31fe0330c82.fieldLayouts.f9dc7281-e99d-4a44-8bbc-8001fe76e655.tabs.0.elements.0.elementCondition', 'null'),
('entryTypes.3da196e2-18bf-4d1d-b323-c31fe0330c82.fieldLayouts.f9dc7281-e99d-4a44-8bbc-8001fe76e655.tabs.0.elements.0.id', 'null'),
('entryTypes.3da196e2-18bf-4d1d-b323-c31fe0330c82.fieldLayouts.f9dc7281-e99d-4a44-8bbc-8001fe76e655.tabs.0.elements.0.instructions', 'null'),
('entryTypes.3da196e2-18bf-4d1d-b323-c31fe0330c82.fieldLayouts.f9dc7281-e99d-4a44-8bbc-8001fe76e655.tabs.0.elements.0.label', 'null'),
('entryTypes.3da196e2-18bf-4d1d-b323-c31fe0330c82.fieldLayouts.f9dc7281-e99d-4a44-8bbc-8001fe76e655.tabs.0.elements.0.max', 'null'),
('entryTypes.3da196e2-18bf-4d1d-b323-c31fe0330c82.fieldLayouts.f9dc7281-e99d-4a44-8bbc-8001fe76e655.tabs.0.elements.0.min', 'null'),
('entryTypes.3da196e2-18bf-4d1d-b323-c31fe0330c82.fieldLayouts.f9dc7281-e99d-4a44-8bbc-8001fe76e655.tabs.0.elements.0.name', 'null'),
('entryTypes.3da196e2-18bf-4d1d-b323-c31fe0330c82.fieldLayouts.f9dc7281-e99d-4a44-8bbc-8001fe76e655.tabs.0.elements.0.orientation', 'null'),
('entryTypes.3da196e2-18bf-4d1d-b323-c31fe0330c82.fieldLayouts.f9dc7281-e99d-4a44-8bbc-8001fe76e655.tabs.0.elements.0.placeholder', 'null'),
('entryTypes.3da196e2-18bf-4d1d-b323-c31fe0330c82.fieldLayouts.f9dc7281-e99d-4a44-8bbc-8001fe76e655.tabs.0.elements.0.readonly', 'false'),
('entryTypes.3da196e2-18bf-4d1d-b323-c31fe0330c82.fieldLayouts.f9dc7281-e99d-4a44-8bbc-8001fe76e655.tabs.0.elements.0.requirable', 'false'),
('entryTypes.3da196e2-18bf-4d1d-b323-c31fe0330c82.fieldLayouts.f9dc7281-e99d-4a44-8bbc-8001fe76e655.tabs.0.elements.0.size', 'null'),
('entryTypes.3da196e2-18bf-4d1d-b323-c31fe0330c82.fieldLayouts.f9dc7281-e99d-4a44-8bbc-8001fe76e655.tabs.0.elements.0.step', 'null'),
('entryTypes.3da196e2-18bf-4d1d-b323-c31fe0330c82.fieldLayouts.f9dc7281-e99d-4a44-8bbc-8001fe76e655.tabs.0.elements.0.tip', 'null'),
('entryTypes.3da196e2-18bf-4d1d-b323-c31fe0330c82.fieldLayouts.f9dc7281-e99d-4a44-8bbc-8001fe76e655.tabs.0.elements.0.title', 'null'),
('entryTypes.3da196e2-18bf-4d1d-b323-c31fe0330c82.fieldLayouts.f9dc7281-e99d-4a44-8bbc-8001fe76e655.tabs.0.elements.0.type', '\"craft\\\\fieldlayoutelements\\\\entries\\\\EntryTitleField\"'),
('entryTypes.3da196e2-18bf-4d1d-b323-c31fe0330c82.fieldLayouts.f9dc7281-e99d-4a44-8bbc-8001fe76e655.tabs.0.elements.0.uid', '\"0ac39602-164b-4856-94fa-e74733043237\"');
INSERT INTO `projectconfig` (`path`, `value`) VALUES
('entryTypes.3da196e2-18bf-4d1d-b323-c31fe0330c82.fieldLayouts.f9dc7281-e99d-4a44-8bbc-8001fe76e655.tabs.0.elements.0.userCondition', 'null'),
('entryTypes.3da196e2-18bf-4d1d-b323-c31fe0330c82.fieldLayouts.f9dc7281-e99d-4a44-8bbc-8001fe76e655.tabs.0.elements.0.warning', 'null'),
('entryTypes.3da196e2-18bf-4d1d-b323-c31fe0330c82.fieldLayouts.f9dc7281-e99d-4a44-8bbc-8001fe76e655.tabs.0.elements.0.width', '100'),
('entryTypes.3da196e2-18bf-4d1d-b323-c31fe0330c82.fieldLayouts.f9dc7281-e99d-4a44-8bbc-8001fe76e655.tabs.0.elements.1.elementCondition', 'null'),
('entryTypes.3da196e2-18bf-4d1d-b323-c31fe0330c82.fieldLayouts.f9dc7281-e99d-4a44-8bbc-8001fe76e655.tabs.0.elements.1.fieldUid', '\"879b8fb2-8367-4ee2-846e-bd38b886d605\"'),
('entryTypes.3da196e2-18bf-4d1d-b323-c31fe0330c82.fieldLayouts.f9dc7281-e99d-4a44-8bbc-8001fe76e655.tabs.0.elements.1.instructions', 'null'),
('entryTypes.3da196e2-18bf-4d1d-b323-c31fe0330c82.fieldLayouts.f9dc7281-e99d-4a44-8bbc-8001fe76e655.tabs.0.elements.1.label', 'null'),
('entryTypes.3da196e2-18bf-4d1d-b323-c31fe0330c82.fieldLayouts.f9dc7281-e99d-4a44-8bbc-8001fe76e655.tabs.0.elements.1.required', 'false'),
('entryTypes.3da196e2-18bf-4d1d-b323-c31fe0330c82.fieldLayouts.f9dc7281-e99d-4a44-8bbc-8001fe76e655.tabs.0.elements.1.tip', 'null'),
('entryTypes.3da196e2-18bf-4d1d-b323-c31fe0330c82.fieldLayouts.f9dc7281-e99d-4a44-8bbc-8001fe76e655.tabs.0.elements.1.type', '\"craft\\\\fieldlayoutelements\\\\CustomField\"'),
('entryTypes.3da196e2-18bf-4d1d-b323-c31fe0330c82.fieldLayouts.f9dc7281-e99d-4a44-8bbc-8001fe76e655.tabs.0.elements.1.uid', '\"d29aa23c-4321-42aa-9697-cb3eb9bc121a\"'),
('entryTypes.3da196e2-18bf-4d1d-b323-c31fe0330c82.fieldLayouts.f9dc7281-e99d-4a44-8bbc-8001fe76e655.tabs.0.elements.1.userCondition', 'null'),
('entryTypes.3da196e2-18bf-4d1d-b323-c31fe0330c82.fieldLayouts.f9dc7281-e99d-4a44-8bbc-8001fe76e655.tabs.0.elements.1.warning', 'null'),
('entryTypes.3da196e2-18bf-4d1d-b323-c31fe0330c82.fieldLayouts.f9dc7281-e99d-4a44-8bbc-8001fe76e655.tabs.0.elements.1.width', '50'),
('entryTypes.3da196e2-18bf-4d1d-b323-c31fe0330c82.fieldLayouts.f9dc7281-e99d-4a44-8bbc-8001fe76e655.tabs.0.elements.2.elementCondition', 'null'),
('entryTypes.3da196e2-18bf-4d1d-b323-c31fe0330c82.fieldLayouts.f9dc7281-e99d-4a44-8bbc-8001fe76e655.tabs.0.elements.2.fieldUid', '\"be50f99b-b84e-45d6-99c6-9b79e5c52560\"'),
('entryTypes.3da196e2-18bf-4d1d-b323-c31fe0330c82.fieldLayouts.f9dc7281-e99d-4a44-8bbc-8001fe76e655.tabs.0.elements.2.instructions', 'null'),
('entryTypes.3da196e2-18bf-4d1d-b323-c31fe0330c82.fieldLayouts.f9dc7281-e99d-4a44-8bbc-8001fe76e655.tabs.0.elements.2.label', 'null'),
('entryTypes.3da196e2-18bf-4d1d-b323-c31fe0330c82.fieldLayouts.f9dc7281-e99d-4a44-8bbc-8001fe76e655.tabs.0.elements.2.required', 'false'),
('entryTypes.3da196e2-18bf-4d1d-b323-c31fe0330c82.fieldLayouts.f9dc7281-e99d-4a44-8bbc-8001fe76e655.tabs.0.elements.2.tip', 'null'),
('entryTypes.3da196e2-18bf-4d1d-b323-c31fe0330c82.fieldLayouts.f9dc7281-e99d-4a44-8bbc-8001fe76e655.tabs.0.elements.2.type', '\"craft\\\\fieldlayoutelements\\\\CustomField\"'),
('entryTypes.3da196e2-18bf-4d1d-b323-c31fe0330c82.fieldLayouts.f9dc7281-e99d-4a44-8bbc-8001fe76e655.tabs.0.elements.2.uid', '\"546d3e0d-3cf4-4ddd-b319-3c6d77c3bad0\"'),
('entryTypes.3da196e2-18bf-4d1d-b323-c31fe0330c82.fieldLayouts.f9dc7281-e99d-4a44-8bbc-8001fe76e655.tabs.0.elements.2.userCondition', 'null'),
('entryTypes.3da196e2-18bf-4d1d-b323-c31fe0330c82.fieldLayouts.f9dc7281-e99d-4a44-8bbc-8001fe76e655.tabs.0.elements.2.warning', 'null'),
('entryTypes.3da196e2-18bf-4d1d-b323-c31fe0330c82.fieldLayouts.f9dc7281-e99d-4a44-8bbc-8001fe76e655.tabs.0.elements.2.width', '50'),
('entryTypes.3da196e2-18bf-4d1d-b323-c31fe0330c82.fieldLayouts.f9dc7281-e99d-4a44-8bbc-8001fe76e655.tabs.0.elements.3.elementCondition', 'null'),
('entryTypes.3da196e2-18bf-4d1d-b323-c31fe0330c82.fieldLayouts.f9dc7281-e99d-4a44-8bbc-8001fe76e655.tabs.0.elements.3.fieldUid', '\"293cac4b-bd6e-4c92-98ca-eb719b885cda\"'),
('entryTypes.3da196e2-18bf-4d1d-b323-c31fe0330c82.fieldLayouts.f9dc7281-e99d-4a44-8bbc-8001fe76e655.tabs.0.elements.3.instructions', 'null'),
('entryTypes.3da196e2-18bf-4d1d-b323-c31fe0330c82.fieldLayouts.f9dc7281-e99d-4a44-8bbc-8001fe76e655.tabs.0.elements.3.label', 'null'),
('entryTypes.3da196e2-18bf-4d1d-b323-c31fe0330c82.fieldLayouts.f9dc7281-e99d-4a44-8bbc-8001fe76e655.tabs.0.elements.3.required', 'false'),
('entryTypes.3da196e2-18bf-4d1d-b323-c31fe0330c82.fieldLayouts.f9dc7281-e99d-4a44-8bbc-8001fe76e655.tabs.0.elements.3.tip', 'null'),
('entryTypes.3da196e2-18bf-4d1d-b323-c31fe0330c82.fieldLayouts.f9dc7281-e99d-4a44-8bbc-8001fe76e655.tabs.0.elements.3.type', '\"craft\\\\fieldlayoutelements\\\\CustomField\"'),
('entryTypes.3da196e2-18bf-4d1d-b323-c31fe0330c82.fieldLayouts.f9dc7281-e99d-4a44-8bbc-8001fe76e655.tabs.0.elements.3.uid', '\"7b68341e-e2ee-4841-a3d7-da0abb8fb6c2\"'),
('entryTypes.3da196e2-18bf-4d1d-b323-c31fe0330c82.fieldLayouts.f9dc7281-e99d-4a44-8bbc-8001fe76e655.tabs.0.elements.3.userCondition', 'null'),
('entryTypes.3da196e2-18bf-4d1d-b323-c31fe0330c82.fieldLayouts.f9dc7281-e99d-4a44-8bbc-8001fe76e655.tabs.0.elements.3.warning', 'null'),
('entryTypes.3da196e2-18bf-4d1d-b323-c31fe0330c82.fieldLayouts.f9dc7281-e99d-4a44-8bbc-8001fe76e655.tabs.0.elements.3.width', '100'),
('entryTypes.3da196e2-18bf-4d1d-b323-c31fe0330c82.fieldLayouts.f9dc7281-e99d-4a44-8bbc-8001fe76e655.tabs.0.elements.4.elementCondition', 'null'),
('entryTypes.3da196e2-18bf-4d1d-b323-c31fe0330c82.fieldLayouts.f9dc7281-e99d-4a44-8bbc-8001fe76e655.tabs.0.elements.4.fieldUid', '\"907b94e8-b3cb-408b-a4ed-d497104b2d55\"'),
('entryTypes.3da196e2-18bf-4d1d-b323-c31fe0330c82.fieldLayouts.f9dc7281-e99d-4a44-8bbc-8001fe76e655.tabs.0.elements.4.instructions', 'null'),
('entryTypes.3da196e2-18bf-4d1d-b323-c31fe0330c82.fieldLayouts.f9dc7281-e99d-4a44-8bbc-8001fe76e655.tabs.0.elements.4.label', 'null'),
('entryTypes.3da196e2-18bf-4d1d-b323-c31fe0330c82.fieldLayouts.f9dc7281-e99d-4a44-8bbc-8001fe76e655.tabs.0.elements.4.required', 'false'),
('entryTypes.3da196e2-18bf-4d1d-b323-c31fe0330c82.fieldLayouts.f9dc7281-e99d-4a44-8bbc-8001fe76e655.tabs.0.elements.4.tip', 'null'),
('entryTypes.3da196e2-18bf-4d1d-b323-c31fe0330c82.fieldLayouts.f9dc7281-e99d-4a44-8bbc-8001fe76e655.tabs.0.elements.4.type', '\"craft\\\\fieldlayoutelements\\\\CustomField\"'),
('entryTypes.3da196e2-18bf-4d1d-b323-c31fe0330c82.fieldLayouts.f9dc7281-e99d-4a44-8bbc-8001fe76e655.tabs.0.elements.4.uid', '\"a55efd5d-9ec3-4e4a-a3c0-06a8185967ba\"'),
('entryTypes.3da196e2-18bf-4d1d-b323-c31fe0330c82.fieldLayouts.f9dc7281-e99d-4a44-8bbc-8001fe76e655.tabs.0.elements.4.userCondition', 'null'),
('entryTypes.3da196e2-18bf-4d1d-b323-c31fe0330c82.fieldLayouts.f9dc7281-e99d-4a44-8bbc-8001fe76e655.tabs.0.elements.4.warning', 'null'),
('entryTypes.3da196e2-18bf-4d1d-b323-c31fe0330c82.fieldLayouts.f9dc7281-e99d-4a44-8bbc-8001fe76e655.tabs.0.elements.4.width', '100'),
('entryTypes.3da196e2-18bf-4d1d-b323-c31fe0330c82.fieldLayouts.f9dc7281-e99d-4a44-8bbc-8001fe76e655.tabs.0.elements.5.elementCondition', 'null'),
('entryTypes.3da196e2-18bf-4d1d-b323-c31fe0330c82.fieldLayouts.f9dc7281-e99d-4a44-8bbc-8001fe76e655.tabs.0.elements.5.type', '\"craft\\\\fieldlayoutelements\\\\HorizontalRule\"'),
('entryTypes.3da196e2-18bf-4d1d-b323-c31fe0330c82.fieldLayouts.f9dc7281-e99d-4a44-8bbc-8001fe76e655.tabs.0.elements.5.uid', '\"c24c324e-569c-4814-8797-f0a19301dc0b\"'),
('entryTypes.3da196e2-18bf-4d1d-b323-c31fe0330c82.fieldLayouts.f9dc7281-e99d-4a44-8bbc-8001fe76e655.tabs.0.elements.5.userCondition', 'null'),
('entryTypes.3da196e2-18bf-4d1d-b323-c31fe0330c82.fieldLayouts.f9dc7281-e99d-4a44-8bbc-8001fe76e655.tabs.0.elements.6.elementCondition', 'null'),
('entryTypes.3da196e2-18bf-4d1d-b323-c31fe0330c82.fieldLayouts.f9dc7281-e99d-4a44-8bbc-8001fe76e655.tabs.0.elements.6.fieldUid', '\"170b0e9a-f69f-46c0-810f-b14d6378d6fe\"'),
('entryTypes.3da196e2-18bf-4d1d-b323-c31fe0330c82.fieldLayouts.f9dc7281-e99d-4a44-8bbc-8001fe76e655.tabs.0.elements.6.instructions', 'null'),
('entryTypes.3da196e2-18bf-4d1d-b323-c31fe0330c82.fieldLayouts.f9dc7281-e99d-4a44-8bbc-8001fe76e655.tabs.0.elements.6.label', 'null'),
('entryTypes.3da196e2-18bf-4d1d-b323-c31fe0330c82.fieldLayouts.f9dc7281-e99d-4a44-8bbc-8001fe76e655.tabs.0.elements.6.required', 'false'),
('entryTypes.3da196e2-18bf-4d1d-b323-c31fe0330c82.fieldLayouts.f9dc7281-e99d-4a44-8bbc-8001fe76e655.tabs.0.elements.6.tip', 'null'),
('entryTypes.3da196e2-18bf-4d1d-b323-c31fe0330c82.fieldLayouts.f9dc7281-e99d-4a44-8bbc-8001fe76e655.tabs.0.elements.6.type', '\"craft\\\\fieldlayoutelements\\\\CustomField\"'),
('entryTypes.3da196e2-18bf-4d1d-b323-c31fe0330c82.fieldLayouts.f9dc7281-e99d-4a44-8bbc-8001fe76e655.tabs.0.elements.6.uid', '\"2be73e58-0be4-47a8-a5de-294d5b7f1acc\"'),
('entryTypes.3da196e2-18bf-4d1d-b323-c31fe0330c82.fieldLayouts.f9dc7281-e99d-4a44-8bbc-8001fe76e655.tabs.0.elements.6.userCondition', 'null'),
('entryTypes.3da196e2-18bf-4d1d-b323-c31fe0330c82.fieldLayouts.f9dc7281-e99d-4a44-8bbc-8001fe76e655.tabs.0.elements.6.warning', 'null'),
('entryTypes.3da196e2-18bf-4d1d-b323-c31fe0330c82.fieldLayouts.f9dc7281-e99d-4a44-8bbc-8001fe76e655.tabs.0.elements.6.width', '100'),
('entryTypes.3da196e2-18bf-4d1d-b323-c31fe0330c82.fieldLayouts.f9dc7281-e99d-4a44-8bbc-8001fe76e655.tabs.0.name', '\"Content\"'),
('entryTypes.3da196e2-18bf-4d1d-b323-c31fe0330c82.fieldLayouts.f9dc7281-e99d-4a44-8bbc-8001fe76e655.tabs.0.uid', '\"ba2d3088-293a-42db-bb1f-9fb0ce0d9cf0\"'),
('entryTypes.3da196e2-18bf-4d1d-b323-c31fe0330c82.fieldLayouts.f9dc7281-e99d-4a44-8bbc-8001fe76e655.tabs.0.userCondition', 'null'),
('entryTypes.3da196e2-18bf-4d1d-b323-c31fe0330c82.handle', '\"storiesPost\"'),
('entryTypes.3da196e2-18bf-4d1d-b323-c31fe0330c82.hasTitleField', 'true'),
('entryTypes.3da196e2-18bf-4d1d-b323-c31fe0330c82.name', '\"Stories Post\"'),
('entryTypes.3da196e2-18bf-4d1d-b323-c31fe0330c82.section', '\"b79a9ca5-e9d0-4e18-ad37-b38ee786a341\"'),
('entryTypes.3da196e2-18bf-4d1d-b323-c31fe0330c82.sortOrder', '1'),
('entryTypes.3da196e2-18bf-4d1d-b323-c31fe0330c82.titleFormat', 'null'),
('entryTypes.3da196e2-18bf-4d1d-b323-c31fe0330c82.titleTranslationKeyFormat', 'null'),
('entryTypes.3da196e2-18bf-4d1d-b323-c31fe0330c82.titleTranslationMethod', '\"site\"'),
('entryTypes.47ef9959-a528-4bd5-bd2d-c068e5248ae7.fieldLayouts.e69b86d6-d5e9-4743-8fd5-c17007babeaf.tabs.0.elementCondition', 'null'),
('entryTypes.47ef9959-a528-4bd5-bd2d-c068e5248ae7.fieldLayouts.e69b86d6-d5e9-4743-8fd5-c17007babeaf.tabs.0.elements.0.autocapitalize', 'true'),
('entryTypes.47ef9959-a528-4bd5-bd2d-c068e5248ae7.fieldLayouts.e69b86d6-d5e9-4743-8fd5-c17007babeaf.tabs.0.elements.0.autocomplete', 'false'),
('entryTypes.47ef9959-a528-4bd5-bd2d-c068e5248ae7.fieldLayouts.e69b86d6-d5e9-4743-8fd5-c17007babeaf.tabs.0.elements.0.autocorrect', 'true'),
('entryTypes.47ef9959-a528-4bd5-bd2d-c068e5248ae7.fieldLayouts.e69b86d6-d5e9-4743-8fd5-c17007babeaf.tabs.0.elements.0.class', 'null'),
('entryTypes.47ef9959-a528-4bd5-bd2d-c068e5248ae7.fieldLayouts.e69b86d6-d5e9-4743-8fd5-c17007babeaf.tabs.0.elements.0.disabled', 'false'),
('entryTypes.47ef9959-a528-4bd5-bd2d-c068e5248ae7.fieldLayouts.e69b86d6-d5e9-4743-8fd5-c17007babeaf.tabs.0.elements.0.elementCondition', 'null'),
('entryTypes.47ef9959-a528-4bd5-bd2d-c068e5248ae7.fieldLayouts.e69b86d6-d5e9-4743-8fd5-c17007babeaf.tabs.0.elements.0.id', 'null'),
('entryTypes.47ef9959-a528-4bd5-bd2d-c068e5248ae7.fieldLayouts.e69b86d6-d5e9-4743-8fd5-c17007babeaf.tabs.0.elements.0.instructions', 'null'),
('entryTypes.47ef9959-a528-4bd5-bd2d-c068e5248ae7.fieldLayouts.e69b86d6-d5e9-4743-8fd5-c17007babeaf.tabs.0.elements.0.label', '\"Job Title\"'),
('entryTypes.47ef9959-a528-4bd5-bd2d-c068e5248ae7.fieldLayouts.e69b86d6-d5e9-4743-8fd5-c17007babeaf.tabs.0.elements.0.max', 'null'),
('entryTypes.47ef9959-a528-4bd5-bd2d-c068e5248ae7.fieldLayouts.e69b86d6-d5e9-4743-8fd5-c17007babeaf.tabs.0.elements.0.min', 'null'),
('entryTypes.47ef9959-a528-4bd5-bd2d-c068e5248ae7.fieldLayouts.e69b86d6-d5e9-4743-8fd5-c17007babeaf.tabs.0.elements.0.name', 'null'),
('entryTypes.47ef9959-a528-4bd5-bd2d-c068e5248ae7.fieldLayouts.e69b86d6-d5e9-4743-8fd5-c17007babeaf.tabs.0.elements.0.orientation', 'null'),
('entryTypes.47ef9959-a528-4bd5-bd2d-c068e5248ae7.fieldLayouts.e69b86d6-d5e9-4743-8fd5-c17007babeaf.tabs.0.elements.0.placeholder', 'null'),
('entryTypes.47ef9959-a528-4bd5-bd2d-c068e5248ae7.fieldLayouts.e69b86d6-d5e9-4743-8fd5-c17007babeaf.tabs.0.elements.0.readonly', 'false'),
('entryTypes.47ef9959-a528-4bd5-bd2d-c068e5248ae7.fieldLayouts.e69b86d6-d5e9-4743-8fd5-c17007babeaf.tabs.0.elements.0.requirable', 'false'),
('entryTypes.47ef9959-a528-4bd5-bd2d-c068e5248ae7.fieldLayouts.e69b86d6-d5e9-4743-8fd5-c17007babeaf.tabs.0.elements.0.size', 'null'),
('entryTypes.47ef9959-a528-4bd5-bd2d-c068e5248ae7.fieldLayouts.e69b86d6-d5e9-4743-8fd5-c17007babeaf.tabs.0.elements.0.step', 'null'),
('entryTypes.47ef9959-a528-4bd5-bd2d-c068e5248ae7.fieldLayouts.e69b86d6-d5e9-4743-8fd5-c17007babeaf.tabs.0.elements.0.tip', 'null'),
('entryTypes.47ef9959-a528-4bd5-bd2d-c068e5248ae7.fieldLayouts.e69b86d6-d5e9-4743-8fd5-c17007babeaf.tabs.0.elements.0.title', 'null'),
('entryTypes.47ef9959-a528-4bd5-bd2d-c068e5248ae7.fieldLayouts.e69b86d6-d5e9-4743-8fd5-c17007babeaf.tabs.0.elements.0.type', '\"craft\\\\fieldlayoutelements\\\\entries\\\\EntryTitleField\"'),
('entryTypes.47ef9959-a528-4bd5-bd2d-c068e5248ae7.fieldLayouts.e69b86d6-d5e9-4743-8fd5-c17007babeaf.tabs.0.elements.0.uid', '\"a7070c80-d28e-4411-b002-c66c303aaf4f\"'),
('entryTypes.47ef9959-a528-4bd5-bd2d-c068e5248ae7.fieldLayouts.e69b86d6-d5e9-4743-8fd5-c17007babeaf.tabs.0.elements.0.userCondition', 'null'),
('entryTypes.47ef9959-a528-4bd5-bd2d-c068e5248ae7.fieldLayouts.e69b86d6-d5e9-4743-8fd5-c17007babeaf.tabs.0.elements.0.warning', 'null'),
('entryTypes.47ef9959-a528-4bd5-bd2d-c068e5248ae7.fieldLayouts.e69b86d6-d5e9-4743-8fd5-c17007babeaf.tabs.0.elements.0.width', '100'),
('entryTypes.47ef9959-a528-4bd5-bd2d-c068e5248ae7.fieldLayouts.e69b86d6-d5e9-4743-8fd5-c17007babeaf.tabs.0.elements.1.elementCondition', 'null'),
('entryTypes.47ef9959-a528-4bd5-bd2d-c068e5248ae7.fieldLayouts.e69b86d6-d5e9-4743-8fd5-c17007babeaf.tabs.0.elements.1.fieldUid', '\"907b94e8-b3cb-408b-a4ed-d497104b2d55\"'),
('entryTypes.47ef9959-a528-4bd5-bd2d-c068e5248ae7.fieldLayouts.e69b86d6-d5e9-4743-8fd5-c17007babeaf.tabs.0.elements.1.instructions', 'null'),
('entryTypes.47ef9959-a528-4bd5-bd2d-c068e5248ae7.fieldLayouts.e69b86d6-d5e9-4743-8fd5-c17007babeaf.tabs.0.elements.1.label', '\"Job Short Description\"'),
('entryTypes.47ef9959-a528-4bd5-bd2d-c068e5248ae7.fieldLayouts.e69b86d6-d5e9-4743-8fd5-c17007babeaf.tabs.0.elements.1.required', 'false'),
('entryTypes.47ef9959-a528-4bd5-bd2d-c068e5248ae7.fieldLayouts.e69b86d6-d5e9-4743-8fd5-c17007babeaf.tabs.0.elements.1.tip', 'null'),
('entryTypes.47ef9959-a528-4bd5-bd2d-c068e5248ae7.fieldLayouts.e69b86d6-d5e9-4743-8fd5-c17007babeaf.tabs.0.elements.1.type', '\"craft\\\\fieldlayoutelements\\\\CustomField\"'),
('entryTypes.47ef9959-a528-4bd5-bd2d-c068e5248ae7.fieldLayouts.e69b86d6-d5e9-4743-8fd5-c17007babeaf.tabs.0.elements.1.uid', '\"a5d6cf65-f477-489e-9d8b-c350ab1e6992\"'),
('entryTypes.47ef9959-a528-4bd5-bd2d-c068e5248ae7.fieldLayouts.e69b86d6-d5e9-4743-8fd5-c17007babeaf.tabs.0.elements.1.userCondition', 'null'),
('entryTypes.47ef9959-a528-4bd5-bd2d-c068e5248ae7.fieldLayouts.e69b86d6-d5e9-4743-8fd5-c17007babeaf.tabs.0.elements.1.warning', 'null'),
('entryTypes.47ef9959-a528-4bd5-bd2d-c068e5248ae7.fieldLayouts.e69b86d6-d5e9-4743-8fd5-c17007babeaf.tabs.0.elements.1.width', '100'),
('entryTypes.47ef9959-a528-4bd5-bd2d-c068e5248ae7.fieldLayouts.e69b86d6-d5e9-4743-8fd5-c17007babeaf.tabs.0.elements.2.elementCondition', 'null'),
('entryTypes.47ef9959-a528-4bd5-bd2d-c068e5248ae7.fieldLayouts.e69b86d6-d5e9-4743-8fd5-c17007babeaf.tabs.0.elements.2.fieldUid', '\"9b168937-c11f-4a7e-9741-f9d6aa77c9d0\"'),
('entryTypes.47ef9959-a528-4bd5-bd2d-c068e5248ae7.fieldLayouts.e69b86d6-d5e9-4743-8fd5-c17007babeaf.tabs.0.elements.2.instructions', 'null'),
('entryTypes.47ef9959-a528-4bd5-bd2d-c068e5248ae7.fieldLayouts.e69b86d6-d5e9-4743-8fd5-c17007babeaf.tabs.0.elements.2.label', 'null'),
('entryTypes.47ef9959-a528-4bd5-bd2d-c068e5248ae7.fieldLayouts.e69b86d6-d5e9-4743-8fd5-c17007babeaf.tabs.0.elements.2.required', 'false'),
('entryTypes.47ef9959-a528-4bd5-bd2d-c068e5248ae7.fieldLayouts.e69b86d6-d5e9-4743-8fd5-c17007babeaf.tabs.0.elements.2.tip', 'null'),
('entryTypes.47ef9959-a528-4bd5-bd2d-c068e5248ae7.fieldLayouts.e69b86d6-d5e9-4743-8fd5-c17007babeaf.tabs.0.elements.2.type', '\"craft\\\\fieldlayoutelements\\\\CustomField\"'),
('entryTypes.47ef9959-a528-4bd5-bd2d-c068e5248ae7.fieldLayouts.e69b86d6-d5e9-4743-8fd5-c17007babeaf.tabs.0.elements.2.uid', '\"15d9140e-4e2d-49f3-b5ab-db6c2f4e5da2\"'),
('entryTypes.47ef9959-a528-4bd5-bd2d-c068e5248ae7.fieldLayouts.e69b86d6-d5e9-4743-8fd5-c17007babeaf.tabs.0.elements.2.userCondition', 'null'),
('entryTypes.47ef9959-a528-4bd5-bd2d-c068e5248ae7.fieldLayouts.e69b86d6-d5e9-4743-8fd5-c17007babeaf.tabs.0.elements.2.warning', 'null'),
('entryTypes.47ef9959-a528-4bd5-bd2d-c068e5248ae7.fieldLayouts.e69b86d6-d5e9-4743-8fd5-c17007babeaf.tabs.0.elements.2.width', '100'),
('entryTypes.47ef9959-a528-4bd5-bd2d-c068e5248ae7.fieldLayouts.e69b86d6-d5e9-4743-8fd5-c17007babeaf.tabs.0.name', '\"Detail\"'),
('entryTypes.47ef9959-a528-4bd5-bd2d-c068e5248ae7.fieldLayouts.e69b86d6-d5e9-4743-8fd5-c17007babeaf.tabs.0.uid', '\"3dc77005-6609-4184-bd64-98878386d1a3\"'),
('entryTypes.47ef9959-a528-4bd5-bd2d-c068e5248ae7.fieldLayouts.e69b86d6-d5e9-4743-8fd5-c17007babeaf.tabs.0.userCondition', 'null'),
('entryTypes.47ef9959-a528-4bd5-bd2d-c068e5248ae7.fieldLayouts.e69b86d6-d5e9-4743-8fd5-c17007babeaf.tabs.1.elementCondition', 'null'),
('entryTypes.47ef9959-a528-4bd5-bd2d-c068e5248ae7.fieldLayouts.e69b86d6-d5e9-4743-8fd5-c17007babeaf.tabs.1.elements.0.elementCondition', 'null'),
('entryTypes.47ef9959-a528-4bd5-bd2d-c068e5248ae7.fieldLayouts.e69b86d6-d5e9-4743-8fd5-c17007babeaf.tabs.1.elements.0.fieldUid', '\"7acc60ca-d954-466f-9d9c-79ecb579ed62\"'),
('entryTypes.47ef9959-a528-4bd5-bd2d-c068e5248ae7.fieldLayouts.e69b86d6-d5e9-4743-8fd5-c17007babeaf.tabs.1.elements.0.instructions', 'null'),
('entryTypes.47ef9959-a528-4bd5-bd2d-c068e5248ae7.fieldLayouts.e69b86d6-d5e9-4743-8fd5-c17007babeaf.tabs.1.elements.0.label', '\"Information Button\"'),
('entryTypes.47ef9959-a528-4bd5-bd2d-c068e5248ae7.fieldLayouts.e69b86d6-d5e9-4743-8fd5-c17007babeaf.tabs.1.elements.0.required', 'false'),
('entryTypes.47ef9959-a528-4bd5-bd2d-c068e5248ae7.fieldLayouts.e69b86d6-d5e9-4743-8fd5-c17007babeaf.tabs.1.elements.0.tip', 'null'),
('entryTypes.47ef9959-a528-4bd5-bd2d-c068e5248ae7.fieldLayouts.e69b86d6-d5e9-4743-8fd5-c17007babeaf.tabs.1.elements.0.type', '\"craft\\\\fieldlayoutelements\\\\CustomField\"'),
('entryTypes.47ef9959-a528-4bd5-bd2d-c068e5248ae7.fieldLayouts.e69b86d6-d5e9-4743-8fd5-c17007babeaf.tabs.1.elements.0.uid', '\"f374c463-6ea3-4f56-a496-541fe1ea6f7d\"'),
('entryTypes.47ef9959-a528-4bd5-bd2d-c068e5248ae7.fieldLayouts.e69b86d6-d5e9-4743-8fd5-c17007babeaf.tabs.1.elements.0.userCondition', 'null'),
('entryTypes.47ef9959-a528-4bd5-bd2d-c068e5248ae7.fieldLayouts.e69b86d6-d5e9-4743-8fd5-c17007babeaf.tabs.1.elements.0.warning', 'null'),
('entryTypes.47ef9959-a528-4bd5-bd2d-c068e5248ae7.fieldLayouts.e69b86d6-d5e9-4743-8fd5-c17007babeaf.tabs.1.elements.0.width', '100'),
('entryTypes.47ef9959-a528-4bd5-bd2d-c068e5248ae7.fieldLayouts.e69b86d6-d5e9-4743-8fd5-c17007babeaf.tabs.1.elements.1.elementCondition', 'null'),
('entryTypes.47ef9959-a528-4bd5-bd2d-c068e5248ae7.fieldLayouts.e69b86d6-d5e9-4743-8fd5-c17007babeaf.tabs.1.elements.1.type', '\"craft\\\\fieldlayoutelements\\\\HorizontalRule\"'),
('entryTypes.47ef9959-a528-4bd5-bd2d-c068e5248ae7.fieldLayouts.e69b86d6-d5e9-4743-8fd5-c17007babeaf.tabs.1.elements.1.uid', '\"3f9eec28-e55f-4b2a-b464-6fd4df96bf0f\"'),
('entryTypes.47ef9959-a528-4bd5-bd2d-c068e5248ae7.fieldLayouts.e69b86d6-d5e9-4743-8fd5-c17007babeaf.tabs.1.elements.1.userCondition', 'null'),
('entryTypes.47ef9959-a528-4bd5-bd2d-c068e5248ae7.fieldLayouts.e69b86d6-d5e9-4743-8fd5-c17007babeaf.tabs.1.elements.2.elementCondition', 'null'),
('entryTypes.47ef9959-a528-4bd5-bd2d-c068e5248ae7.fieldLayouts.e69b86d6-d5e9-4743-8fd5-c17007babeaf.tabs.1.elements.2.fieldUid', '\"e1d6a3d2-955b-42e4-bcf0-ae40fbffba4f\"'),
('entryTypes.47ef9959-a528-4bd5-bd2d-c068e5248ae7.fieldLayouts.e69b86d6-d5e9-4743-8fd5-c17007babeaf.tabs.1.elements.2.instructions', 'null'),
('entryTypes.47ef9959-a528-4bd5-bd2d-c068e5248ae7.fieldLayouts.e69b86d6-d5e9-4743-8fd5-c17007babeaf.tabs.1.elements.2.label', 'null'),
('entryTypes.47ef9959-a528-4bd5-bd2d-c068e5248ae7.fieldLayouts.e69b86d6-d5e9-4743-8fd5-c17007babeaf.tabs.1.elements.2.required', 'false'),
('entryTypes.47ef9959-a528-4bd5-bd2d-c068e5248ae7.fieldLayouts.e69b86d6-d5e9-4743-8fd5-c17007babeaf.tabs.1.elements.2.tip', 'null'),
('entryTypes.47ef9959-a528-4bd5-bd2d-c068e5248ae7.fieldLayouts.e69b86d6-d5e9-4743-8fd5-c17007babeaf.tabs.1.elements.2.type', '\"craft\\\\fieldlayoutelements\\\\CustomField\"'),
('entryTypes.47ef9959-a528-4bd5-bd2d-c068e5248ae7.fieldLayouts.e69b86d6-d5e9-4743-8fd5-c17007babeaf.tabs.1.elements.2.uid', '\"ca635acf-95a5-4164-8262-ec2aadf68caa\"'),
('entryTypes.47ef9959-a528-4bd5-bd2d-c068e5248ae7.fieldLayouts.e69b86d6-d5e9-4743-8fd5-c17007babeaf.tabs.1.elements.2.userCondition', 'null'),
('entryTypes.47ef9959-a528-4bd5-bd2d-c068e5248ae7.fieldLayouts.e69b86d6-d5e9-4743-8fd5-c17007babeaf.tabs.1.elements.2.warning', 'null'),
('entryTypes.47ef9959-a528-4bd5-bd2d-c068e5248ae7.fieldLayouts.e69b86d6-d5e9-4743-8fd5-c17007babeaf.tabs.1.elements.2.width', '100'),
('entryTypes.47ef9959-a528-4bd5-bd2d-c068e5248ae7.fieldLayouts.e69b86d6-d5e9-4743-8fd5-c17007babeaf.tabs.1.name', '\"Content\"'),
('entryTypes.47ef9959-a528-4bd5-bd2d-c068e5248ae7.fieldLayouts.e69b86d6-d5e9-4743-8fd5-c17007babeaf.tabs.1.uid', '\"39b136d0-11c1-49b1-b440-9a280976d4e4\"'),
('entryTypes.47ef9959-a528-4bd5-bd2d-c068e5248ae7.fieldLayouts.e69b86d6-d5e9-4743-8fd5-c17007babeaf.tabs.1.userCondition', 'null'),
('entryTypes.47ef9959-a528-4bd5-bd2d-c068e5248ae7.handle', '\"karrierePost\"'),
('entryTypes.47ef9959-a528-4bd5-bd2d-c068e5248ae7.hasTitleField', 'true'),
('entryTypes.47ef9959-a528-4bd5-bd2d-c068e5248ae7.name', '\"Karriere Post\"'),
('entryTypes.47ef9959-a528-4bd5-bd2d-c068e5248ae7.section', '\"b20b7ca8-6027-4f7f-a320-95ab24bc0b22\"'),
('entryTypes.47ef9959-a528-4bd5-bd2d-c068e5248ae7.sortOrder', '1'),
('entryTypes.47ef9959-a528-4bd5-bd2d-c068e5248ae7.titleFormat', 'null'),
('entryTypes.47ef9959-a528-4bd5-bd2d-c068e5248ae7.titleTranslationKeyFormat', 'null'),
('entryTypes.47ef9959-a528-4bd5-bd2d-c068e5248ae7.titleTranslationMethod', '\"site\"'),
('entryTypes.59f2d7a3-cddc-441d-b150-0e18e523e267.fieldLayouts.8b30de7d-f43a-4240-900e-89c2530695cc.tabs.0.elementCondition', 'null'),
('entryTypes.59f2d7a3-cddc-441d-b150-0e18e523e267.fieldLayouts.8b30de7d-f43a-4240-900e-89c2530695cc.tabs.0.elements.0.autocapitalize', 'true'),
('entryTypes.59f2d7a3-cddc-441d-b150-0e18e523e267.fieldLayouts.8b30de7d-f43a-4240-900e-89c2530695cc.tabs.0.elements.0.autocomplete', 'false'),
('entryTypes.59f2d7a3-cddc-441d-b150-0e18e523e267.fieldLayouts.8b30de7d-f43a-4240-900e-89c2530695cc.tabs.0.elements.0.autocorrect', 'true'),
('entryTypes.59f2d7a3-cddc-441d-b150-0e18e523e267.fieldLayouts.8b30de7d-f43a-4240-900e-89c2530695cc.tabs.0.elements.0.class', 'null'),
('entryTypes.59f2d7a3-cddc-441d-b150-0e18e523e267.fieldLayouts.8b30de7d-f43a-4240-900e-89c2530695cc.tabs.0.elements.0.disabled', 'false'),
('entryTypes.59f2d7a3-cddc-441d-b150-0e18e523e267.fieldLayouts.8b30de7d-f43a-4240-900e-89c2530695cc.tabs.0.elements.0.elementCondition', 'null'),
('entryTypes.59f2d7a3-cddc-441d-b150-0e18e523e267.fieldLayouts.8b30de7d-f43a-4240-900e-89c2530695cc.tabs.0.elements.0.id', 'null'),
('entryTypes.59f2d7a3-cddc-441d-b150-0e18e523e267.fieldLayouts.8b30de7d-f43a-4240-900e-89c2530695cc.tabs.0.elements.0.instructions', 'null'),
('entryTypes.59f2d7a3-cddc-441d-b150-0e18e523e267.fieldLayouts.8b30de7d-f43a-4240-900e-89c2530695cc.tabs.0.elements.0.label', 'null'),
('entryTypes.59f2d7a3-cddc-441d-b150-0e18e523e267.fieldLayouts.8b30de7d-f43a-4240-900e-89c2530695cc.tabs.0.elements.0.max', 'null'),
('entryTypes.59f2d7a3-cddc-441d-b150-0e18e523e267.fieldLayouts.8b30de7d-f43a-4240-900e-89c2530695cc.tabs.0.elements.0.min', 'null'),
('entryTypes.59f2d7a3-cddc-441d-b150-0e18e523e267.fieldLayouts.8b30de7d-f43a-4240-900e-89c2530695cc.tabs.0.elements.0.name', 'null'),
('entryTypes.59f2d7a3-cddc-441d-b150-0e18e523e267.fieldLayouts.8b30de7d-f43a-4240-900e-89c2530695cc.tabs.0.elements.0.orientation', 'null'),
('entryTypes.59f2d7a3-cddc-441d-b150-0e18e523e267.fieldLayouts.8b30de7d-f43a-4240-900e-89c2530695cc.tabs.0.elements.0.placeholder', 'null'),
('entryTypes.59f2d7a3-cddc-441d-b150-0e18e523e267.fieldLayouts.8b30de7d-f43a-4240-900e-89c2530695cc.tabs.0.elements.0.readonly', 'false'),
('entryTypes.59f2d7a3-cddc-441d-b150-0e18e523e267.fieldLayouts.8b30de7d-f43a-4240-900e-89c2530695cc.tabs.0.elements.0.requirable', 'false'),
('entryTypes.59f2d7a3-cddc-441d-b150-0e18e523e267.fieldLayouts.8b30de7d-f43a-4240-900e-89c2530695cc.tabs.0.elements.0.size', 'null'),
('entryTypes.59f2d7a3-cddc-441d-b150-0e18e523e267.fieldLayouts.8b30de7d-f43a-4240-900e-89c2530695cc.tabs.0.elements.0.step', 'null'),
('entryTypes.59f2d7a3-cddc-441d-b150-0e18e523e267.fieldLayouts.8b30de7d-f43a-4240-900e-89c2530695cc.tabs.0.elements.0.tip', 'null'),
('entryTypes.59f2d7a3-cddc-441d-b150-0e18e523e267.fieldLayouts.8b30de7d-f43a-4240-900e-89c2530695cc.tabs.0.elements.0.title', 'null'),
('entryTypes.59f2d7a3-cddc-441d-b150-0e18e523e267.fieldLayouts.8b30de7d-f43a-4240-900e-89c2530695cc.tabs.0.elements.0.type', '\"craft\\\\fieldlayoutelements\\\\entries\\\\EntryTitleField\"'),
('entryTypes.59f2d7a3-cddc-441d-b150-0e18e523e267.fieldLayouts.8b30de7d-f43a-4240-900e-89c2530695cc.tabs.0.elements.0.uid', '\"d58fa3d6-2039-436d-8e6a-eb1e7925814a\"'),
('entryTypes.59f2d7a3-cddc-441d-b150-0e18e523e267.fieldLayouts.8b30de7d-f43a-4240-900e-89c2530695cc.tabs.0.elements.0.userCondition', 'null'),
('entryTypes.59f2d7a3-cddc-441d-b150-0e18e523e267.fieldLayouts.8b30de7d-f43a-4240-900e-89c2530695cc.tabs.0.elements.0.warning', 'null'),
('entryTypes.59f2d7a3-cddc-441d-b150-0e18e523e267.fieldLayouts.8b30de7d-f43a-4240-900e-89c2530695cc.tabs.0.elements.0.width', '100'),
('entryTypes.59f2d7a3-cddc-441d-b150-0e18e523e267.fieldLayouts.8b30de7d-f43a-4240-900e-89c2530695cc.tabs.0.elements.1.elementCondition', 'null'),
('entryTypes.59f2d7a3-cddc-441d-b150-0e18e523e267.fieldLayouts.8b30de7d-f43a-4240-900e-89c2530695cc.tabs.0.elements.1.fieldUid', '\"293cac4b-bd6e-4c92-98ca-eb719b885cda\"'),
('entryTypes.59f2d7a3-cddc-441d-b150-0e18e523e267.fieldLayouts.8b30de7d-f43a-4240-900e-89c2530695cc.tabs.0.elements.1.instructions', 'null'),
('entryTypes.59f2d7a3-cddc-441d-b150-0e18e523e267.fieldLayouts.8b30de7d-f43a-4240-900e-89c2530695cc.tabs.0.elements.1.label', 'null'),
('entryTypes.59f2d7a3-cddc-441d-b150-0e18e523e267.fieldLayouts.8b30de7d-f43a-4240-900e-89c2530695cc.tabs.0.elements.1.required', 'false'),
('entryTypes.59f2d7a3-cddc-441d-b150-0e18e523e267.fieldLayouts.8b30de7d-f43a-4240-900e-89c2530695cc.tabs.0.elements.1.tip', 'null'),
('entryTypes.59f2d7a3-cddc-441d-b150-0e18e523e267.fieldLayouts.8b30de7d-f43a-4240-900e-89c2530695cc.tabs.0.elements.1.type', '\"craft\\\\fieldlayoutelements\\\\CustomField\"'),
('entryTypes.59f2d7a3-cddc-441d-b150-0e18e523e267.fieldLayouts.8b30de7d-f43a-4240-900e-89c2530695cc.tabs.0.elements.1.uid', '\"c6e820ac-b48c-491e-85b7-8a182151b09e\"'),
('entryTypes.59f2d7a3-cddc-441d-b150-0e18e523e267.fieldLayouts.8b30de7d-f43a-4240-900e-89c2530695cc.tabs.0.elements.1.userCondition', 'null'),
('entryTypes.59f2d7a3-cddc-441d-b150-0e18e523e267.fieldLayouts.8b30de7d-f43a-4240-900e-89c2530695cc.tabs.0.elements.1.warning', 'null'),
('entryTypes.59f2d7a3-cddc-441d-b150-0e18e523e267.fieldLayouts.8b30de7d-f43a-4240-900e-89c2530695cc.tabs.0.elements.1.width', '100'),
('entryTypes.59f2d7a3-cddc-441d-b150-0e18e523e267.fieldLayouts.8b30de7d-f43a-4240-900e-89c2530695cc.tabs.0.elements.2.elementCondition', 'null'),
('entryTypes.59f2d7a3-cddc-441d-b150-0e18e523e267.fieldLayouts.8b30de7d-f43a-4240-900e-89c2530695cc.tabs.0.elements.2.fieldUid', '\"907b94e8-b3cb-408b-a4ed-d497104b2d55\"'),
('entryTypes.59f2d7a3-cddc-441d-b150-0e18e523e267.fieldLayouts.8b30de7d-f43a-4240-900e-89c2530695cc.tabs.0.elements.2.instructions', 'null'),
('entryTypes.59f2d7a3-cddc-441d-b150-0e18e523e267.fieldLayouts.8b30de7d-f43a-4240-900e-89c2530695cc.tabs.0.elements.2.label', 'null'),
('entryTypes.59f2d7a3-cddc-441d-b150-0e18e523e267.fieldLayouts.8b30de7d-f43a-4240-900e-89c2530695cc.tabs.0.elements.2.required', 'false'),
('entryTypes.59f2d7a3-cddc-441d-b150-0e18e523e267.fieldLayouts.8b30de7d-f43a-4240-900e-89c2530695cc.tabs.0.elements.2.tip', 'null'),
('entryTypes.59f2d7a3-cddc-441d-b150-0e18e523e267.fieldLayouts.8b30de7d-f43a-4240-900e-89c2530695cc.tabs.0.elements.2.type', '\"craft\\\\fieldlayoutelements\\\\CustomField\"'),
('entryTypes.59f2d7a3-cddc-441d-b150-0e18e523e267.fieldLayouts.8b30de7d-f43a-4240-900e-89c2530695cc.tabs.0.elements.2.uid', '\"53968d38-0e63-48c7-8a1f-ceb58bb5d1ba\"'),
('entryTypes.59f2d7a3-cddc-441d-b150-0e18e523e267.fieldLayouts.8b30de7d-f43a-4240-900e-89c2530695cc.tabs.0.elements.2.userCondition', 'null'),
('entryTypes.59f2d7a3-cddc-441d-b150-0e18e523e267.fieldLayouts.8b30de7d-f43a-4240-900e-89c2530695cc.tabs.0.elements.2.warning', 'null'),
('entryTypes.59f2d7a3-cddc-441d-b150-0e18e523e267.fieldLayouts.8b30de7d-f43a-4240-900e-89c2530695cc.tabs.0.elements.2.width', '100'),
('entryTypes.59f2d7a3-cddc-441d-b150-0e18e523e267.fieldLayouts.8b30de7d-f43a-4240-900e-89c2530695cc.tabs.0.elements.3.elementCondition', 'null'),
('entryTypes.59f2d7a3-cddc-441d-b150-0e18e523e267.fieldLayouts.8b30de7d-f43a-4240-900e-89c2530695cc.tabs.0.elements.3.fieldUid', '\"7acc60ca-d954-466f-9d9c-79ecb579ed62\"'),
('entryTypes.59f2d7a3-cddc-441d-b150-0e18e523e267.fieldLayouts.8b30de7d-f43a-4240-900e-89c2530695cc.tabs.0.elements.3.instructions', 'null'),
('entryTypes.59f2d7a3-cddc-441d-b150-0e18e523e267.fieldLayouts.8b30de7d-f43a-4240-900e-89c2530695cc.tabs.0.elements.3.label', 'null'),
('entryTypes.59f2d7a3-cddc-441d-b150-0e18e523e267.fieldLayouts.8b30de7d-f43a-4240-900e-89c2530695cc.tabs.0.elements.3.required', 'false'),
('entryTypes.59f2d7a3-cddc-441d-b150-0e18e523e267.fieldLayouts.8b30de7d-f43a-4240-900e-89c2530695cc.tabs.0.elements.3.tip', 'null'),
('entryTypes.59f2d7a3-cddc-441d-b150-0e18e523e267.fieldLayouts.8b30de7d-f43a-4240-900e-89c2530695cc.tabs.0.elements.3.type', '\"craft\\\\fieldlayoutelements\\\\CustomField\"'),
('entryTypes.59f2d7a3-cddc-441d-b150-0e18e523e267.fieldLayouts.8b30de7d-f43a-4240-900e-89c2530695cc.tabs.0.elements.3.uid', '\"e62aaf0f-a00c-452b-8cd7-737dc764c7ea\"'),
('entryTypes.59f2d7a3-cddc-441d-b150-0e18e523e267.fieldLayouts.8b30de7d-f43a-4240-900e-89c2530695cc.tabs.0.elements.3.userCondition', 'null'),
('entryTypes.59f2d7a3-cddc-441d-b150-0e18e523e267.fieldLayouts.8b30de7d-f43a-4240-900e-89c2530695cc.tabs.0.elements.3.warning', 'null'),
('entryTypes.59f2d7a3-cddc-441d-b150-0e18e523e267.fieldLayouts.8b30de7d-f43a-4240-900e-89c2530695cc.tabs.0.elements.3.width', '50'),
('entryTypes.59f2d7a3-cddc-441d-b150-0e18e523e267.fieldLayouts.8b30de7d-f43a-4240-900e-89c2530695cc.tabs.0.elements.4.elementCondition', 'null'),
('entryTypes.59f2d7a3-cddc-441d-b150-0e18e523e267.fieldLayouts.8b30de7d-f43a-4240-900e-89c2530695cc.tabs.0.elements.4.fieldUid', '\"be50f99b-b84e-45d6-99c6-9b79e5c52560\"'),
('entryTypes.59f2d7a3-cddc-441d-b150-0e18e523e267.fieldLayouts.8b30de7d-f43a-4240-900e-89c2530695cc.tabs.0.elements.4.instructions', 'null'),
('entryTypes.59f2d7a3-cddc-441d-b150-0e18e523e267.fieldLayouts.8b30de7d-f43a-4240-900e-89c2530695cc.tabs.0.elements.4.label', 'null'),
('entryTypes.59f2d7a3-cddc-441d-b150-0e18e523e267.fieldLayouts.8b30de7d-f43a-4240-900e-89c2530695cc.tabs.0.elements.4.required', 'false'),
('entryTypes.59f2d7a3-cddc-441d-b150-0e18e523e267.fieldLayouts.8b30de7d-f43a-4240-900e-89c2530695cc.tabs.0.elements.4.tip', 'null'),
('entryTypes.59f2d7a3-cddc-441d-b150-0e18e523e267.fieldLayouts.8b30de7d-f43a-4240-900e-89c2530695cc.tabs.0.elements.4.type', '\"craft\\\\fieldlayoutelements\\\\CustomField\"'),
('entryTypes.59f2d7a3-cddc-441d-b150-0e18e523e267.fieldLayouts.8b30de7d-f43a-4240-900e-89c2530695cc.tabs.0.elements.4.uid', '\"fca877a3-7157-4c38-8f84-e70bf0bd59d9\"'),
('entryTypes.59f2d7a3-cddc-441d-b150-0e18e523e267.fieldLayouts.8b30de7d-f43a-4240-900e-89c2530695cc.tabs.0.elements.4.userCondition', 'null'),
('entryTypes.59f2d7a3-cddc-441d-b150-0e18e523e267.fieldLayouts.8b30de7d-f43a-4240-900e-89c2530695cc.tabs.0.elements.4.warning', 'null'),
('entryTypes.59f2d7a3-cddc-441d-b150-0e18e523e267.fieldLayouts.8b30de7d-f43a-4240-900e-89c2530695cc.tabs.0.elements.4.width', '50'),
('entryTypes.59f2d7a3-cddc-441d-b150-0e18e523e267.fieldLayouts.8b30de7d-f43a-4240-900e-89c2530695cc.tabs.0.name', '\"Content\"'),
('entryTypes.59f2d7a3-cddc-441d-b150-0e18e523e267.fieldLayouts.8b30de7d-f43a-4240-900e-89c2530695cc.tabs.0.uid', '\"47860d54-e544-44b6-90ec-0674f2ec5274\"'),
('entryTypes.59f2d7a3-cddc-441d-b150-0e18e523e267.fieldLayouts.8b30de7d-f43a-4240-900e-89c2530695cc.tabs.0.userCondition', 'null'),
('entryTypes.59f2d7a3-cddc-441d-b150-0e18e523e267.handle', '\"storiesOverview\"'),
('entryTypes.59f2d7a3-cddc-441d-b150-0e18e523e267.hasTitleField', 'true'),
('entryTypes.59f2d7a3-cddc-441d-b150-0e18e523e267.name', '\"Stories Overview\"'),
('entryTypes.59f2d7a3-cddc-441d-b150-0e18e523e267.section', '\"aa851b3e-e45e-4c23-8c3b-e540929c28fe\"'),
('entryTypes.59f2d7a3-cddc-441d-b150-0e18e523e267.sortOrder', '1'),
('entryTypes.59f2d7a3-cddc-441d-b150-0e18e523e267.titleFormat', '\"{section.name|raw}\"'),
('entryTypes.59f2d7a3-cddc-441d-b150-0e18e523e267.titleTranslationKeyFormat', 'null'),
('entryTypes.59f2d7a3-cddc-441d-b150-0e18e523e267.titleTranslationMethod', '\"site\"'),
('entryTypes.604b0d19-51d0-48c3-b47a-2229a9ed23ac.fieldLayouts.de1e2454-6452-4650-8ad5-1b3c69f654ca.tabs.0.elementCondition', 'null'),
('entryTypes.604b0d19-51d0-48c3-b47a-2229a9ed23ac.fieldLayouts.de1e2454-6452-4650-8ad5-1b3c69f654ca.tabs.0.elements.0.autocapitalize', 'true'),
('entryTypes.604b0d19-51d0-48c3-b47a-2229a9ed23ac.fieldLayouts.de1e2454-6452-4650-8ad5-1b3c69f654ca.tabs.0.elements.0.autocomplete', 'false'),
('entryTypes.604b0d19-51d0-48c3-b47a-2229a9ed23ac.fieldLayouts.de1e2454-6452-4650-8ad5-1b3c69f654ca.tabs.0.elements.0.autocorrect', 'true'),
('entryTypes.604b0d19-51d0-48c3-b47a-2229a9ed23ac.fieldLayouts.de1e2454-6452-4650-8ad5-1b3c69f654ca.tabs.0.elements.0.class', 'null'),
('entryTypes.604b0d19-51d0-48c3-b47a-2229a9ed23ac.fieldLayouts.de1e2454-6452-4650-8ad5-1b3c69f654ca.tabs.0.elements.0.disabled', 'false'),
('entryTypes.604b0d19-51d0-48c3-b47a-2229a9ed23ac.fieldLayouts.de1e2454-6452-4650-8ad5-1b3c69f654ca.tabs.0.elements.0.elementCondition', 'null'),
('entryTypes.604b0d19-51d0-48c3-b47a-2229a9ed23ac.fieldLayouts.de1e2454-6452-4650-8ad5-1b3c69f654ca.tabs.0.elements.0.id', 'null'),
('entryTypes.604b0d19-51d0-48c3-b47a-2229a9ed23ac.fieldLayouts.de1e2454-6452-4650-8ad5-1b3c69f654ca.tabs.0.elements.0.instructions', 'null'),
('entryTypes.604b0d19-51d0-48c3-b47a-2229a9ed23ac.fieldLayouts.de1e2454-6452-4650-8ad5-1b3c69f654ca.tabs.0.elements.0.label', 'null'),
('entryTypes.604b0d19-51d0-48c3-b47a-2229a9ed23ac.fieldLayouts.de1e2454-6452-4650-8ad5-1b3c69f654ca.tabs.0.elements.0.max', 'null'),
('entryTypes.604b0d19-51d0-48c3-b47a-2229a9ed23ac.fieldLayouts.de1e2454-6452-4650-8ad5-1b3c69f654ca.tabs.0.elements.0.min', 'null'),
('entryTypes.604b0d19-51d0-48c3-b47a-2229a9ed23ac.fieldLayouts.de1e2454-6452-4650-8ad5-1b3c69f654ca.tabs.0.elements.0.name', 'null'),
('entryTypes.604b0d19-51d0-48c3-b47a-2229a9ed23ac.fieldLayouts.de1e2454-6452-4650-8ad5-1b3c69f654ca.tabs.0.elements.0.orientation', 'null'),
('entryTypes.604b0d19-51d0-48c3-b47a-2229a9ed23ac.fieldLayouts.de1e2454-6452-4650-8ad5-1b3c69f654ca.tabs.0.elements.0.placeholder', 'null'),
('entryTypes.604b0d19-51d0-48c3-b47a-2229a9ed23ac.fieldLayouts.de1e2454-6452-4650-8ad5-1b3c69f654ca.tabs.0.elements.0.readonly', 'false'),
('entryTypes.604b0d19-51d0-48c3-b47a-2229a9ed23ac.fieldLayouts.de1e2454-6452-4650-8ad5-1b3c69f654ca.tabs.0.elements.0.requirable', 'false'),
('entryTypes.604b0d19-51d0-48c3-b47a-2229a9ed23ac.fieldLayouts.de1e2454-6452-4650-8ad5-1b3c69f654ca.tabs.0.elements.0.size', 'null'),
('entryTypes.604b0d19-51d0-48c3-b47a-2229a9ed23ac.fieldLayouts.de1e2454-6452-4650-8ad5-1b3c69f654ca.tabs.0.elements.0.step', 'null'),
('entryTypes.604b0d19-51d0-48c3-b47a-2229a9ed23ac.fieldLayouts.de1e2454-6452-4650-8ad5-1b3c69f654ca.tabs.0.elements.0.tip', 'null'),
('entryTypes.604b0d19-51d0-48c3-b47a-2229a9ed23ac.fieldLayouts.de1e2454-6452-4650-8ad5-1b3c69f654ca.tabs.0.elements.0.title', 'null'),
('entryTypes.604b0d19-51d0-48c3-b47a-2229a9ed23ac.fieldLayouts.de1e2454-6452-4650-8ad5-1b3c69f654ca.tabs.0.elements.0.type', '\"craft\\\\fieldlayoutelements\\\\entries\\\\EntryTitleField\"'),
('entryTypes.604b0d19-51d0-48c3-b47a-2229a9ed23ac.fieldLayouts.de1e2454-6452-4650-8ad5-1b3c69f654ca.tabs.0.elements.0.uid', '\"6f9fa017-6e9f-430a-9e1b-f77c10390bdb\"'),
('entryTypes.604b0d19-51d0-48c3-b47a-2229a9ed23ac.fieldLayouts.de1e2454-6452-4650-8ad5-1b3c69f654ca.tabs.0.elements.0.userCondition', 'null'),
('entryTypes.604b0d19-51d0-48c3-b47a-2229a9ed23ac.fieldLayouts.de1e2454-6452-4650-8ad5-1b3c69f654ca.tabs.0.elements.0.warning', 'null'),
('entryTypes.604b0d19-51d0-48c3-b47a-2229a9ed23ac.fieldLayouts.de1e2454-6452-4650-8ad5-1b3c69f654ca.tabs.0.elements.0.width', '100'),
('entryTypes.604b0d19-51d0-48c3-b47a-2229a9ed23ac.fieldLayouts.de1e2454-6452-4650-8ad5-1b3c69f654ca.tabs.0.elements.1.elementCondition', 'null'),
('entryTypes.604b0d19-51d0-48c3-b47a-2229a9ed23ac.fieldLayouts.de1e2454-6452-4650-8ad5-1b3c69f654ca.tabs.0.elements.1.fieldUid', '\"530023de-e527-4210-9215-b3e3099b4402\"'),
('entryTypes.604b0d19-51d0-48c3-b47a-2229a9ed23ac.fieldLayouts.de1e2454-6452-4650-8ad5-1b3c69f654ca.tabs.0.elements.1.instructions', 'null'),
('entryTypes.604b0d19-51d0-48c3-b47a-2229a9ed23ac.fieldLayouts.de1e2454-6452-4650-8ad5-1b3c69f654ca.tabs.0.elements.1.label', 'null'),
('entryTypes.604b0d19-51d0-48c3-b47a-2229a9ed23ac.fieldLayouts.de1e2454-6452-4650-8ad5-1b3c69f654ca.tabs.0.elements.1.required', 'true'),
('entryTypes.604b0d19-51d0-48c3-b47a-2229a9ed23ac.fieldLayouts.de1e2454-6452-4650-8ad5-1b3c69f654ca.tabs.0.elements.1.tip', 'null'),
('entryTypes.604b0d19-51d0-48c3-b47a-2229a9ed23ac.fieldLayouts.de1e2454-6452-4650-8ad5-1b3c69f654ca.tabs.0.elements.1.type', '\"craft\\\\fieldlayoutelements\\\\CustomField\"'),
('entryTypes.604b0d19-51d0-48c3-b47a-2229a9ed23ac.fieldLayouts.de1e2454-6452-4650-8ad5-1b3c69f654ca.tabs.0.elements.1.uid', '\"87978fb4-2526-4c02-8d8e-054d27bf7209\"'),
('entryTypes.604b0d19-51d0-48c3-b47a-2229a9ed23ac.fieldLayouts.de1e2454-6452-4650-8ad5-1b3c69f654ca.tabs.0.elements.1.userCondition', 'null'),
('entryTypes.604b0d19-51d0-48c3-b47a-2229a9ed23ac.fieldLayouts.de1e2454-6452-4650-8ad5-1b3c69f654ca.tabs.0.elements.1.warning', 'null'),
('entryTypes.604b0d19-51d0-48c3-b47a-2229a9ed23ac.fieldLayouts.de1e2454-6452-4650-8ad5-1b3c69f654ca.tabs.0.elements.1.width', '100'),
('entryTypes.604b0d19-51d0-48c3-b47a-2229a9ed23ac.fieldLayouts.de1e2454-6452-4650-8ad5-1b3c69f654ca.tabs.0.elements.2.elementCondition', 'null'),
('entryTypes.604b0d19-51d0-48c3-b47a-2229a9ed23ac.fieldLayouts.de1e2454-6452-4650-8ad5-1b3c69f654ca.tabs.0.elements.2.fieldUid', '\"913d328b-09f7-4108-8816-f81c35cb7d2a\"'),
('entryTypes.604b0d19-51d0-48c3-b47a-2229a9ed23ac.fieldLayouts.de1e2454-6452-4650-8ad5-1b3c69f654ca.tabs.0.elements.2.instructions', 'null'),
('entryTypes.604b0d19-51d0-48c3-b47a-2229a9ed23ac.fieldLayouts.de1e2454-6452-4650-8ad5-1b3c69f654ca.tabs.0.elements.2.label', 'null'),
('entryTypes.604b0d19-51d0-48c3-b47a-2229a9ed23ac.fieldLayouts.de1e2454-6452-4650-8ad5-1b3c69f654ca.tabs.0.elements.2.required', 'false'),
('entryTypes.604b0d19-51d0-48c3-b47a-2229a9ed23ac.fieldLayouts.de1e2454-6452-4650-8ad5-1b3c69f654ca.tabs.0.elements.2.tip', 'null'),
('entryTypes.604b0d19-51d0-48c3-b47a-2229a9ed23ac.fieldLayouts.de1e2454-6452-4650-8ad5-1b3c69f654ca.tabs.0.elements.2.type', '\"craft\\\\fieldlayoutelements\\\\CustomField\"'),
('entryTypes.604b0d19-51d0-48c3-b47a-2229a9ed23ac.fieldLayouts.de1e2454-6452-4650-8ad5-1b3c69f654ca.tabs.0.elements.2.uid', '\"7a39dadd-8427-4f5e-ba53-2f7ff56e0028\"'),
('entryTypes.604b0d19-51d0-48c3-b47a-2229a9ed23ac.fieldLayouts.de1e2454-6452-4650-8ad5-1b3c69f654ca.tabs.0.elements.2.userCondition', 'null'),
('entryTypes.604b0d19-51d0-48c3-b47a-2229a9ed23ac.fieldLayouts.de1e2454-6452-4650-8ad5-1b3c69f654ca.tabs.0.elements.2.warning', 'null'),
('entryTypes.604b0d19-51d0-48c3-b47a-2229a9ed23ac.fieldLayouts.de1e2454-6452-4650-8ad5-1b3c69f654ca.tabs.0.elements.2.width', '100'),
('entryTypes.604b0d19-51d0-48c3-b47a-2229a9ed23ac.fieldLayouts.de1e2454-6452-4650-8ad5-1b3c69f654ca.tabs.0.name', '\"Content\"'),
('entryTypes.604b0d19-51d0-48c3-b47a-2229a9ed23ac.fieldLayouts.de1e2454-6452-4650-8ad5-1b3c69f654ca.tabs.0.uid', '\"dd3cf48b-73e9-4e5f-8e7d-9f55239f4dbf\"'),
('entryTypes.604b0d19-51d0-48c3-b47a-2229a9ed23ac.fieldLayouts.de1e2454-6452-4650-8ad5-1b3c69f654ca.tabs.0.userCondition', 'null'),
('entryTypes.604b0d19-51d0-48c3-b47a-2229a9ed23ac.handle', '\"author\"'),
('entryTypes.604b0d19-51d0-48c3-b47a-2229a9ed23ac.hasTitleField', 'false'),
('entryTypes.604b0d19-51d0-48c3-b47a-2229a9ed23ac.name', '\"Author\"'),
('entryTypes.604b0d19-51d0-48c3-b47a-2229a9ed23ac.section', '\"8032f6af-316d-418e-ab60-c0ce3c7f60f9\"'),
('entryTypes.604b0d19-51d0-48c3-b47a-2229a9ed23ac.sortOrder', '1'),
('entryTypes.604b0d19-51d0-48c3-b47a-2229a9ed23ac.titleFormat', '\"{section.name|raw}\"'),
('entryTypes.604b0d19-51d0-48c3-b47a-2229a9ed23ac.titleTranslationKeyFormat', 'null'),
('entryTypes.604b0d19-51d0-48c3-b47a-2229a9ed23ac.titleTranslationMethod', '\"site\"'),
('entryTypes.62f883e4-2069-4014-a684-6dffb7e09607.fieldLayouts.a3b12cfa-93d8-4f91-b9dc-56e1f633cdff.tabs.0.elementCondition', 'null'),
('entryTypes.62f883e4-2069-4014-a684-6dffb7e09607.fieldLayouts.a3b12cfa-93d8-4f91-b9dc-56e1f633cdff.tabs.0.elements.0.autocapitalize', 'true'),
('entryTypes.62f883e4-2069-4014-a684-6dffb7e09607.fieldLayouts.a3b12cfa-93d8-4f91-b9dc-56e1f633cdff.tabs.0.elements.0.autocomplete', 'false'),
('entryTypes.62f883e4-2069-4014-a684-6dffb7e09607.fieldLayouts.a3b12cfa-93d8-4f91-b9dc-56e1f633cdff.tabs.0.elements.0.autocorrect', 'true'),
('entryTypes.62f883e4-2069-4014-a684-6dffb7e09607.fieldLayouts.a3b12cfa-93d8-4f91-b9dc-56e1f633cdff.tabs.0.elements.0.class', 'null'),
('entryTypes.62f883e4-2069-4014-a684-6dffb7e09607.fieldLayouts.a3b12cfa-93d8-4f91-b9dc-56e1f633cdff.tabs.0.elements.0.disabled', 'false'),
('entryTypes.62f883e4-2069-4014-a684-6dffb7e09607.fieldLayouts.a3b12cfa-93d8-4f91-b9dc-56e1f633cdff.tabs.0.elements.0.elementCondition', 'null'),
('entryTypes.62f883e4-2069-4014-a684-6dffb7e09607.fieldLayouts.a3b12cfa-93d8-4f91-b9dc-56e1f633cdff.tabs.0.elements.0.id', 'null'),
('entryTypes.62f883e4-2069-4014-a684-6dffb7e09607.fieldLayouts.a3b12cfa-93d8-4f91-b9dc-56e1f633cdff.tabs.0.elements.0.instructions', 'null'),
('entryTypes.62f883e4-2069-4014-a684-6dffb7e09607.fieldLayouts.a3b12cfa-93d8-4f91-b9dc-56e1f633cdff.tabs.0.elements.0.label', 'null'),
('entryTypes.62f883e4-2069-4014-a684-6dffb7e09607.fieldLayouts.a3b12cfa-93d8-4f91-b9dc-56e1f633cdff.tabs.0.elements.0.max', 'null'),
('entryTypes.62f883e4-2069-4014-a684-6dffb7e09607.fieldLayouts.a3b12cfa-93d8-4f91-b9dc-56e1f633cdff.tabs.0.elements.0.min', 'null'),
('entryTypes.62f883e4-2069-4014-a684-6dffb7e09607.fieldLayouts.a3b12cfa-93d8-4f91-b9dc-56e1f633cdff.tabs.0.elements.0.name', 'null'),
('entryTypes.62f883e4-2069-4014-a684-6dffb7e09607.fieldLayouts.a3b12cfa-93d8-4f91-b9dc-56e1f633cdff.tabs.0.elements.0.orientation', 'null'),
('entryTypes.62f883e4-2069-4014-a684-6dffb7e09607.fieldLayouts.a3b12cfa-93d8-4f91-b9dc-56e1f633cdff.tabs.0.elements.0.placeholder', 'null'),
('entryTypes.62f883e4-2069-4014-a684-6dffb7e09607.fieldLayouts.a3b12cfa-93d8-4f91-b9dc-56e1f633cdff.tabs.0.elements.0.readonly', 'false'),
('entryTypes.62f883e4-2069-4014-a684-6dffb7e09607.fieldLayouts.a3b12cfa-93d8-4f91-b9dc-56e1f633cdff.tabs.0.elements.0.requirable', 'false'),
('entryTypes.62f883e4-2069-4014-a684-6dffb7e09607.fieldLayouts.a3b12cfa-93d8-4f91-b9dc-56e1f633cdff.tabs.0.elements.0.size', 'null'),
('entryTypes.62f883e4-2069-4014-a684-6dffb7e09607.fieldLayouts.a3b12cfa-93d8-4f91-b9dc-56e1f633cdff.tabs.0.elements.0.step', 'null'),
('entryTypes.62f883e4-2069-4014-a684-6dffb7e09607.fieldLayouts.a3b12cfa-93d8-4f91-b9dc-56e1f633cdff.tabs.0.elements.0.tip', 'null'),
('entryTypes.62f883e4-2069-4014-a684-6dffb7e09607.fieldLayouts.a3b12cfa-93d8-4f91-b9dc-56e1f633cdff.tabs.0.elements.0.title', 'null'),
('entryTypes.62f883e4-2069-4014-a684-6dffb7e09607.fieldLayouts.a3b12cfa-93d8-4f91-b9dc-56e1f633cdff.tabs.0.elements.0.type', '\"craft\\\\fieldlayoutelements\\\\entries\\\\EntryTitleField\"'),
('entryTypes.62f883e4-2069-4014-a684-6dffb7e09607.fieldLayouts.a3b12cfa-93d8-4f91-b9dc-56e1f633cdff.tabs.0.elements.0.uid', '\"fb3338ab-071d-4a4d-9a12-62ace503150e\"'),
('entryTypes.62f883e4-2069-4014-a684-6dffb7e09607.fieldLayouts.a3b12cfa-93d8-4f91-b9dc-56e1f633cdff.tabs.0.elements.0.userCondition', 'null'),
('entryTypes.62f883e4-2069-4014-a684-6dffb7e09607.fieldLayouts.a3b12cfa-93d8-4f91-b9dc-56e1f633cdff.tabs.0.elements.0.warning', 'null'),
('entryTypes.62f883e4-2069-4014-a684-6dffb7e09607.fieldLayouts.a3b12cfa-93d8-4f91-b9dc-56e1f633cdff.tabs.0.elements.0.width', '100'),
('entryTypes.62f883e4-2069-4014-a684-6dffb7e09607.fieldLayouts.a3b12cfa-93d8-4f91-b9dc-56e1f633cdff.tabs.0.elements.1.elementCondition', 'null'),
('entryTypes.62f883e4-2069-4014-a684-6dffb7e09607.fieldLayouts.a3b12cfa-93d8-4f91-b9dc-56e1f633cdff.tabs.0.elements.1.fieldUid', '\"293cac4b-bd6e-4c92-98ca-eb719b885cda\"'),
('entryTypes.62f883e4-2069-4014-a684-6dffb7e09607.fieldLayouts.a3b12cfa-93d8-4f91-b9dc-56e1f633cdff.tabs.0.elements.1.instructions', 'null'),
('entryTypes.62f883e4-2069-4014-a684-6dffb7e09607.fieldLayouts.a3b12cfa-93d8-4f91-b9dc-56e1f633cdff.tabs.0.elements.1.label', 'null'),
('entryTypes.62f883e4-2069-4014-a684-6dffb7e09607.fieldLayouts.a3b12cfa-93d8-4f91-b9dc-56e1f633cdff.tabs.0.elements.1.required', 'false'),
('entryTypes.62f883e4-2069-4014-a684-6dffb7e09607.fieldLayouts.a3b12cfa-93d8-4f91-b9dc-56e1f633cdff.tabs.0.elements.1.tip', 'null'),
('entryTypes.62f883e4-2069-4014-a684-6dffb7e09607.fieldLayouts.a3b12cfa-93d8-4f91-b9dc-56e1f633cdff.tabs.0.elements.1.type', '\"craft\\\\fieldlayoutelements\\\\CustomField\"'),
('entryTypes.62f883e4-2069-4014-a684-6dffb7e09607.fieldLayouts.a3b12cfa-93d8-4f91-b9dc-56e1f633cdff.tabs.0.elements.1.uid', '\"e21a3561-690b-483d-a300-6dcf83b6680a\"'),
('entryTypes.62f883e4-2069-4014-a684-6dffb7e09607.fieldLayouts.a3b12cfa-93d8-4f91-b9dc-56e1f633cdff.tabs.0.elements.1.userCondition', 'null'),
('entryTypes.62f883e4-2069-4014-a684-6dffb7e09607.fieldLayouts.a3b12cfa-93d8-4f91-b9dc-56e1f633cdff.tabs.0.elements.1.warning', 'null'),
('entryTypes.62f883e4-2069-4014-a684-6dffb7e09607.fieldLayouts.a3b12cfa-93d8-4f91-b9dc-56e1f633cdff.tabs.0.elements.1.width', '100'),
('entryTypes.62f883e4-2069-4014-a684-6dffb7e09607.fieldLayouts.a3b12cfa-93d8-4f91-b9dc-56e1f633cdff.tabs.0.elements.2.elementCondition', 'null'),
('entryTypes.62f883e4-2069-4014-a684-6dffb7e09607.fieldLayouts.a3b12cfa-93d8-4f91-b9dc-56e1f633cdff.tabs.0.elements.2.fieldUid', '\"907b94e8-b3cb-408b-a4ed-d497104b2d55\"'),
('entryTypes.62f883e4-2069-4014-a684-6dffb7e09607.fieldLayouts.a3b12cfa-93d8-4f91-b9dc-56e1f633cdff.tabs.0.elements.2.instructions', 'null'),
('entryTypes.62f883e4-2069-4014-a684-6dffb7e09607.fieldLayouts.a3b12cfa-93d8-4f91-b9dc-56e1f633cdff.tabs.0.elements.2.label', 'null'),
('entryTypes.62f883e4-2069-4014-a684-6dffb7e09607.fieldLayouts.a3b12cfa-93d8-4f91-b9dc-56e1f633cdff.tabs.0.elements.2.required', 'false'),
('entryTypes.62f883e4-2069-4014-a684-6dffb7e09607.fieldLayouts.a3b12cfa-93d8-4f91-b9dc-56e1f633cdff.tabs.0.elements.2.tip', 'null'),
('entryTypes.62f883e4-2069-4014-a684-6dffb7e09607.fieldLayouts.a3b12cfa-93d8-4f91-b9dc-56e1f633cdff.tabs.0.elements.2.type', '\"craft\\\\fieldlayoutelements\\\\CustomField\"'),
('entryTypes.62f883e4-2069-4014-a684-6dffb7e09607.fieldLayouts.a3b12cfa-93d8-4f91-b9dc-56e1f633cdff.tabs.0.elements.2.uid', '\"43524e20-4bd8-4555-9d93-90a31d97828f\"'),
('entryTypes.62f883e4-2069-4014-a684-6dffb7e09607.fieldLayouts.a3b12cfa-93d8-4f91-b9dc-56e1f633cdff.tabs.0.elements.2.userCondition', 'null'),
('entryTypes.62f883e4-2069-4014-a684-6dffb7e09607.fieldLayouts.a3b12cfa-93d8-4f91-b9dc-56e1f633cdff.tabs.0.elements.2.warning', 'null'),
('entryTypes.62f883e4-2069-4014-a684-6dffb7e09607.fieldLayouts.a3b12cfa-93d8-4f91-b9dc-56e1f633cdff.tabs.0.elements.2.width', '100'),
('entryTypes.62f883e4-2069-4014-a684-6dffb7e09607.fieldLayouts.a3b12cfa-93d8-4f91-b9dc-56e1f633cdff.tabs.0.name', '\"Content\"'),
('entryTypes.62f883e4-2069-4014-a684-6dffb7e09607.fieldLayouts.a3b12cfa-93d8-4f91-b9dc-56e1f633cdff.tabs.0.uid', '\"a8a4d154-b5d2-44ba-b640-2974f068bfa9\"'),
('entryTypes.62f883e4-2069-4014-a684-6dffb7e09607.fieldLayouts.a3b12cfa-93d8-4f91-b9dc-56e1f633cdff.tabs.0.userCondition', 'null'),
('entryTypes.62f883e4-2069-4014-a684-6dffb7e09607.handle', '\"contact\"'),
('entryTypes.62f883e4-2069-4014-a684-6dffb7e09607.hasTitleField', 'false'),
('entryTypes.62f883e4-2069-4014-a684-6dffb7e09607.name', '\"Contact\"'),
('entryTypes.62f883e4-2069-4014-a684-6dffb7e09607.section', '\"d0c9a98d-03f6-4647-8c8d-4971d91c23b3\"'),
('entryTypes.62f883e4-2069-4014-a684-6dffb7e09607.sortOrder', '1'),
('entryTypes.62f883e4-2069-4014-a684-6dffb7e09607.titleFormat', '\"{section.name|raw}\"'),
('entryTypes.62f883e4-2069-4014-a684-6dffb7e09607.titleTranslationKeyFormat', 'null'),
('entryTypes.62f883e4-2069-4014-a684-6dffb7e09607.titleTranslationMethod', '\"site\"'),
('entryTypes.69d2ba66-2d6a-48f3-b8cc-0850d42e2c18.fieldLayouts.68618d42-f000-4174-a6e4-3c7a57957a71.tabs.0.elementCondition', 'null'),
('entryTypes.69d2ba66-2d6a-48f3-b8cc-0850d42e2c18.fieldLayouts.68618d42-f000-4174-a6e4-3c7a57957a71.tabs.0.elements.0.autocapitalize', 'true'),
('entryTypes.69d2ba66-2d6a-48f3-b8cc-0850d42e2c18.fieldLayouts.68618d42-f000-4174-a6e4-3c7a57957a71.tabs.0.elements.0.autocomplete', 'false'),
('entryTypes.69d2ba66-2d6a-48f3-b8cc-0850d42e2c18.fieldLayouts.68618d42-f000-4174-a6e4-3c7a57957a71.tabs.0.elements.0.autocorrect', 'true');
INSERT INTO `projectconfig` (`path`, `value`) VALUES
('entryTypes.69d2ba66-2d6a-48f3-b8cc-0850d42e2c18.fieldLayouts.68618d42-f000-4174-a6e4-3c7a57957a71.tabs.0.elements.0.class', 'null'),
('entryTypes.69d2ba66-2d6a-48f3-b8cc-0850d42e2c18.fieldLayouts.68618d42-f000-4174-a6e4-3c7a57957a71.tabs.0.elements.0.disabled', 'false'),
('entryTypes.69d2ba66-2d6a-48f3-b8cc-0850d42e2c18.fieldLayouts.68618d42-f000-4174-a6e4-3c7a57957a71.tabs.0.elements.0.elementCondition', 'null'),
('entryTypes.69d2ba66-2d6a-48f3-b8cc-0850d42e2c18.fieldLayouts.68618d42-f000-4174-a6e4-3c7a57957a71.tabs.0.elements.0.id', 'null'),
('entryTypes.69d2ba66-2d6a-48f3-b8cc-0850d42e2c18.fieldLayouts.68618d42-f000-4174-a6e4-3c7a57957a71.tabs.0.elements.0.instructions', 'null'),
('entryTypes.69d2ba66-2d6a-48f3-b8cc-0850d42e2c18.fieldLayouts.68618d42-f000-4174-a6e4-3c7a57957a71.tabs.0.elements.0.label', 'null'),
('entryTypes.69d2ba66-2d6a-48f3-b8cc-0850d42e2c18.fieldLayouts.68618d42-f000-4174-a6e4-3c7a57957a71.tabs.0.elements.0.max', 'null'),
('entryTypes.69d2ba66-2d6a-48f3-b8cc-0850d42e2c18.fieldLayouts.68618d42-f000-4174-a6e4-3c7a57957a71.tabs.0.elements.0.min', 'null'),
('entryTypes.69d2ba66-2d6a-48f3-b8cc-0850d42e2c18.fieldLayouts.68618d42-f000-4174-a6e4-3c7a57957a71.tabs.0.elements.0.name', 'null'),
('entryTypes.69d2ba66-2d6a-48f3-b8cc-0850d42e2c18.fieldLayouts.68618d42-f000-4174-a6e4-3c7a57957a71.tabs.0.elements.0.orientation', 'null'),
('entryTypes.69d2ba66-2d6a-48f3-b8cc-0850d42e2c18.fieldLayouts.68618d42-f000-4174-a6e4-3c7a57957a71.tabs.0.elements.0.placeholder', 'null'),
('entryTypes.69d2ba66-2d6a-48f3-b8cc-0850d42e2c18.fieldLayouts.68618d42-f000-4174-a6e4-3c7a57957a71.tabs.0.elements.0.readonly', 'false'),
('entryTypes.69d2ba66-2d6a-48f3-b8cc-0850d42e2c18.fieldLayouts.68618d42-f000-4174-a6e4-3c7a57957a71.tabs.0.elements.0.requirable', 'false'),
('entryTypes.69d2ba66-2d6a-48f3-b8cc-0850d42e2c18.fieldLayouts.68618d42-f000-4174-a6e4-3c7a57957a71.tabs.0.elements.0.size', 'null'),
('entryTypes.69d2ba66-2d6a-48f3-b8cc-0850d42e2c18.fieldLayouts.68618d42-f000-4174-a6e4-3c7a57957a71.tabs.0.elements.0.step', 'null'),
('entryTypes.69d2ba66-2d6a-48f3-b8cc-0850d42e2c18.fieldLayouts.68618d42-f000-4174-a6e4-3c7a57957a71.tabs.0.elements.0.tip', 'null'),
('entryTypes.69d2ba66-2d6a-48f3-b8cc-0850d42e2c18.fieldLayouts.68618d42-f000-4174-a6e4-3c7a57957a71.tabs.0.elements.0.title', 'null'),
('entryTypes.69d2ba66-2d6a-48f3-b8cc-0850d42e2c18.fieldLayouts.68618d42-f000-4174-a6e4-3c7a57957a71.tabs.0.elements.0.type', '\"craft\\\\fieldlayoutelements\\\\entries\\\\EntryTitleField\"'),
('entryTypes.69d2ba66-2d6a-48f3-b8cc-0850d42e2c18.fieldLayouts.68618d42-f000-4174-a6e4-3c7a57957a71.tabs.0.elements.0.uid', '\"31813845-d94e-4fce-a55d-6f5fc62c2901\"'),
('entryTypes.69d2ba66-2d6a-48f3-b8cc-0850d42e2c18.fieldLayouts.68618d42-f000-4174-a6e4-3c7a57957a71.tabs.0.elements.0.userCondition', 'null'),
('entryTypes.69d2ba66-2d6a-48f3-b8cc-0850d42e2c18.fieldLayouts.68618d42-f000-4174-a6e4-3c7a57957a71.tabs.0.elements.0.warning', 'null'),
('entryTypes.69d2ba66-2d6a-48f3-b8cc-0850d42e2c18.fieldLayouts.68618d42-f000-4174-a6e4-3c7a57957a71.tabs.0.elements.0.width', '100'),
('entryTypes.69d2ba66-2d6a-48f3-b8cc-0850d42e2c18.fieldLayouts.68618d42-f000-4174-a6e4-3c7a57957a71.tabs.0.elements.1.elementCondition', 'null'),
('entryTypes.69d2ba66-2d6a-48f3-b8cc-0850d42e2c18.fieldLayouts.68618d42-f000-4174-a6e4-3c7a57957a71.tabs.0.elements.1.fieldUid', '\"3cfc0ef4-6ff2-433b-a452-2d40f9bc5988\"'),
('entryTypes.69d2ba66-2d6a-48f3-b8cc-0850d42e2c18.fieldLayouts.68618d42-f000-4174-a6e4-3c7a57957a71.tabs.0.elements.1.instructions', 'null'),
('entryTypes.69d2ba66-2d6a-48f3-b8cc-0850d42e2c18.fieldLayouts.68618d42-f000-4174-a6e4-3c7a57957a71.tabs.0.elements.1.label', '\"Author\"'),
('entryTypes.69d2ba66-2d6a-48f3-b8cc-0850d42e2c18.fieldLayouts.68618d42-f000-4174-a6e4-3c7a57957a71.tabs.0.elements.1.required', 'true'),
('entryTypes.69d2ba66-2d6a-48f3-b8cc-0850d42e2c18.fieldLayouts.68618d42-f000-4174-a6e4-3c7a57957a71.tabs.0.elements.1.tip', 'null'),
('entryTypes.69d2ba66-2d6a-48f3-b8cc-0850d42e2c18.fieldLayouts.68618d42-f000-4174-a6e4-3c7a57957a71.tabs.0.elements.1.type', '\"craft\\\\fieldlayoutelements\\\\CustomField\"'),
('entryTypes.69d2ba66-2d6a-48f3-b8cc-0850d42e2c18.fieldLayouts.68618d42-f000-4174-a6e4-3c7a57957a71.tabs.0.elements.1.uid', '\"0ae8fffe-1e76-418a-8739-c825e5c1c889\"'),
('entryTypes.69d2ba66-2d6a-48f3-b8cc-0850d42e2c18.fieldLayouts.68618d42-f000-4174-a6e4-3c7a57957a71.tabs.0.elements.1.userCondition', 'null'),
('entryTypes.69d2ba66-2d6a-48f3-b8cc-0850d42e2c18.fieldLayouts.68618d42-f000-4174-a6e4-3c7a57957a71.tabs.0.elements.1.warning', 'null'),
('entryTypes.69d2ba66-2d6a-48f3-b8cc-0850d42e2c18.fieldLayouts.68618d42-f000-4174-a6e4-3c7a57957a71.tabs.0.elements.1.width', '50'),
('entryTypes.69d2ba66-2d6a-48f3-b8cc-0850d42e2c18.fieldLayouts.68618d42-f000-4174-a6e4-3c7a57957a71.tabs.0.elements.2.elementCondition', 'null'),
('entryTypes.69d2ba66-2d6a-48f3-b8cc-0850d42e2c18.fieldLayouts.68618d42-f000-4174-a6e4-3c7a57957a71.tabs.0.elements.2.fieldUid', '\"5477467a-150b-4bea-ad59-e1f19719c73f\"'),
('entryTypes.69d2ba66-2d6a-48f3-b8cc-0850d42e2c18.fieldLayouts.68618d42-f000-4174-a6e4-3c7a57957a71.tabs.0.elements.2.instructions', 'null'),
('entryTypes.69d2ba66-2d6a-48f3-b8cc-0850d42e2c18.fieldLayouts.68618d42-f000-4174-a6e4-3c7a57957a71.tabs.0.elements.2.label', 'null'),
('entryTypes.69d2ba66-2d6a-48f3-b8cc-0850d42e2c18.fieldLayouts.68618d42-f000-4174-a6e4-3c7a57957a71.tabs.0.elements.2.required', 'false'),
('entryTypes.69d2ba66-2d6a-48f3-b8cc-0850d42e2c18.fieldLayouts.68618d42-f000-4174-a6e4-3c7a57957a71.tabs.0.elements.2.tip', 'null'),
('entryTypes.69d2ba66-2d6a-48f3-b8cc-0850d42e2c18.fieldLayouts.68618d42-f000-4174-a6e4-3c7a57957a71.tabs.0.elements.2.type', '\"craft\\\\fieldlayoutelements\\\\CustomField\"'),
('entryTypes.69d2ba66-2d6a-48f3-b8cc-0850d42e2c18.fieldLayouts.68618d42-f000-4174-a6e4-3c7a57957a71.tabs.0.elements.2.uid', '\"fad486d3-7feb-49e0-bb2c-9425571b227f\"'),
('entryTypes.69d2ba66-2d6a-48f3-b8cc-0850d42e2c18.fieldLayouts.68618d42-f000-4174-a6e4-3c7a57957a71.tabs.0.elements.2.userCondition', 'null'),
('entryTypes.69d2ba66-2d6a-48f3-b8cc-0850d42e2c18.fieldLayouts.68618d42-f000-4174-a6e4-3c7a57957a71.tabs.0.elements.2.warning', 'null'),
('entryTypes.69d2ba66-2d6a-48f3-b8cc-0850d42e2c18.fieldLayouts.68618d42-f000-4174-a6e4-3c7a57957a71.tabs.0.elements.2.width', '50'),
('entryTypes.69d2ba66-2d6a-48f3-b8cc-0850d42e2c18.fieldLayouts.68618d42-f000-4174-a6e4-3c7a57957a71.tabs.0.elements.3.elementCondition', 'null'),
('entryTypes.69d2ba66-2d6a-48f3-b8cc-0850d42e2c18.fieldLayouts.68618d42-f000-4174-a6e4-3c7a57957a71.tabs.0.elements.3.fieldUid', '\"293cac4b-bd6e-4c92-98ca-eb719b885cda\"'),
('entryTypes.69d2ba66-2d6a-48f3-b8cc-0850d42e2c18.fieldLayouts.68618d42-f000-4174-a6e4-3c7a57957a71.tabs.0.elements.3.instructions', 'null'),
('entryTypes.69d2ba66-2d6a-48f3-b8cc-0850d42e2c18.fieldLayouts.68618d42-f000-4174-a6e4-3c7a57957a71.tabs.0.elements.3.label', 'null'),
('entryTypes.69d2ba66-2d6a-48f3-b8cc-0850d42e2c18.fieldLayouts.68618d42-f000-4174-a6e4-3c7a57957a71.tabs.0.elements.3.required', 'false'),
('entryTypes.69d2ba66-2d6a-48f3-b8cc-0850d42e2c18.fieldLayouts.68618d42-f000-4174-a6e4-3c7a57957a71.tabs.0.elements.3.tip', 'null'),
('entryTypes.69d2ba66-2d6a-48f3-b8cc-0850d42e2c18.fieldLayouts.68618d42-f000-4174-a6e4-3c7a57957a71.tabs.0.elements.3.type', '\"craft\\\\fieldlayoutelements\\\\CustomField\"'),
('entryTypes.69d2ba66-2d6a-48f3-b8cc-0850d42e2c18.fieldLayouts.68618d42-f000-4174-a6e4-3c7a57957a71.tabs.0.elements.3.uid', '\"5c02408c-6456-41d0-a228-8a4af28a446f\"'),
('entryTypes.69d2ba66-2d6a-48f3-b8cc-0850d42e2c18.fieldLayouts.68618d42-f000-4174-a6e4-3c7a57957a71.tabs.0.elements.3.userCondition', 'null'),
('entryTypes.69d2ba66-2d6a-48f3-b8cc-0850d42e2c18.fieldLayouts.68618d42-f000-4174-a6e4-3c7a57957a71.tabs.0.elements.3.warning', 'null'),
('entryTypes.69d2ba66-2d6a-48f3-b8cc-0850d42e2c18.fieldLayouts.68618d42-f000-4174-a6e4-3c7a57957a71.tabs.0.elements.3.width', '100'),
('entryTypes.69d2ba66-2d6a-48f3-b8cc-0850d42e2c18.fieldLayouts.68618d42-f000-4174-a6e4-3c7a57957a71.tabs.0.elements.4.elementCondition', 'null'),
('entryTypes.69d2ba66-2d6a-48f3-b8cc-0850d42e2c18.fieldLayouts.68618d42-f000-4174-a6e4-3c7a57957a71.tabs.0.elements.4.fieldUid', '\"be50f99b-b84e-45d6-99c6-9b79e5c52560\"'),
('entryTypes.69d2ba66-2d6a-48f3-b8cc-0850d42e2c18.fieldLayouts.68618d42-f000-4174-a6e4-3c7a57957a71.tabs.0.elements.4.instructions', 'null'),
('entryTypes.69d2ba66-2d6a-48f3-b8cc-0850d42e2c18.fieldLayouts.68618d42-f000-4174-a6e4-3c7a57957a71.tabs.0.elements.4.label', 'null'),
('entryTypes.69d2ba66-2d6a-48f3-b8cc-0850d42e2c18.fieldLayouts.68618d42-f000-4174-a6e4-3c7a57957a71.tabs.0.elements.4.required', 'false'),
('entryTypes.69d2ba66-2d6a-48f3-b8cc-0850d42e2c18.fieldLayouts.68618d42-f000-4174-a6e4-3c7a57957a71.tabs.0.elements.4.tip', 'null'),
('entryTypes.69d2ba66-2d6a-48f3-b8cc-0850d42e2c18.fieldLayouts.68618d42-f000-4174-a6e4-3c7a57957a71.tabs.0.elements.4.type', '\"craft\\\\fieldlayoutelements\\\\CustomField\"'),
('entryTypes.69d2ba66-2d6a-48f3-b8cc-0850d42e2c18.fieldLayouts.68618d42-f000-4174-a6e4-3c7a57957a71.tabs.0.elements.4.uid', '\"346fa6e4-218a-4df8-8d89-c767ef229279\"'),
('entryTypes.69d2ba66-2d6a-48f3-b8cc-0850d42e2c18.fieldLayouts.68618d42-f000-4174-a6e4-3c7a57957a71.tabs.0.elements.4.userCondition', 'null'),
('entryTypes.69d2ba66-2d6a-48f3-b8cc-0850d42e2c18.fieldLayouts.68618d42-f000-4174-a6e4-3c7a57957a71.tabs.0.elements.4.warning', 'null'),
('entryTypes.69d2ba66-2d6a-48f3-b8cc-0850d42e2c18.fieldLayouts.68618d42-f000-4174-a6e4-3c7a57957a71.tabs.0.elements.4.width', '100'),
('entryTypes.69d2ba66-2d6a-48f3-b8cc-0850d42e2c18.fieldLayouts.68618d42-f000-4174-a6e4-3c7a57957a71.tabs.0.elements.5.elementCondition', 'null'),
('entryTypes.69d2ba66-2d6a-48f3-b8cc-0850d42e2c18.fieldLayouts.68618d42-f000-4174-a6e4-3c7a57957a71.tabs.0.elements.5.type', '\"craft\\\\fieldlayoutelements\\\\HorizontalRule\"'),
('entryTypes.69d2ba66-2d6a-48f3-b8cc-0850d42e2c18.fieldLayouts.68618d42-f000-4174-a6e4-3c7a57957a71.tabs.0.elements.5.uid', '\"604ca2bf-8e8a-4f42-878c-d934ee7b6400\"'),
('entryTypes.69d2ba66-2d6a-48f3-b8cc-0850d42e2c18.fieldLayouts.68618d42-f000-4174-a6e4-3c7a57957a71.tabs.0.elements.5.userCondition', 'null'),
('entryTypes.69d2ba66-2d6a-48f3-b8cc-0850d42e2c18.fieldLayouts.68618d42-f000-4174-a6e4-3c7a57957a71.tabs.0.elements.6.elementCondition', 'null'),
('entryTypes.69d2ba66-2d6a-48f3-b8cc-0850d42e2c18.fieldLayouts.68618d42-f000-4174-a6e4-3c7a57957a71.tabs.0.elements.6.fieldUid', '\"170b0e9a-f69f-46c0-810f-b14d6378d6fe\"'),
('entryTypes.69d2ba66-2d6a-48f3-b8cc-0850d42e2c18.fieldLayouts.68618d42-f000-4174-a6e4-3c7a57957a71.tabs.0.elements.6.instructions', 'null'),
('entryTypes.69d2ba66-2d6a-48f3-b8cc-0850d42e2c18.fieldLayouts.68618d42-f000-4174-a6e4-3c7a57957a71.tabs.0.elements.6.label', 'null'),
('entryTypes.69d2ba66-2d6a-48f3-b8cc-0850d42e2c18.fieldLayouts.68618d42-f000-4174-a6e4-3c7a57957a71.tabs.0.elements.6.required', 'false'),
('entryTypes.69d2ba66-2d6a-48f3-b8cc-0850d42e2c18.fieldLayouts.68618d42-f000-4174-a6e4-3c7a57957a71.tabs.0.elements.6.tip', 'null'),
('entryTypes.69d2ba66-2d6a-48f3-b8cc-0850d42e2c18.fieldLayouts.68618d42-f000-4174-a6e4-3c7a57957a71.tabs.0.elements.6.type', '\"craft\\\\fieldlayoutelements\\\\CustomField\"'),
('entryTypes.69d2ba66-2d6a-48f3-b8cc-0850d42e2c18.fieldLayouts.68618d42-f000-4174-a6e4-3c7a57957a71.tabs.0.elements.6.uid', '\"49f3857d-c84c-4ada-873e-8fd94ab29d8d\"'),
('entryTypes.69d2ba66-2d6a-48f3-b8cc-0850d42e2c18.fieldLayouts.68618d42-f000-4174-a6e4-3c7a57957a71.tabs.0.elements.6.userCondition', 'null'),
('entryTypes.69d2ba66-2d6a-48f3-b8cc-0850d42e2c18.fieldLayouts.68618d42-f000-4174-a6e4-3c7a57957a71.tabs.0.elements.6.warning', 'null'),
('entryTypes.69d2ba66-2d6a-48f3-b8cc-0850d42e2c18.fieldLayouts.68618d42-f000-4174-a6e4-3c7a57957a71.tabs.0.elements.6.width', '100'),
('entryTypes.69d2ba66-2d6a-48f3-b8cc-0850d42e2c18.fieldLayouts.68618d42-f000-4174-a6e4-3c7a57957a71.tabs.0.name', '\"Content\"'),
('entryTypes.69d2ba66-2d6a-48f3-b8cc-0850d42e2c18.fieldLayouts.68618d42-f000-4174-a6e4-3c7a57957a71.tabs.0.uid', '\"e62071ac-d41c-49f2-b15c-e357fe845628\"'),
('entryTypes.69d2ba66-2d6a-48f3-b8cc-0850d42e2c18.fieldLayouts.68618d42-f000-4174-a6e4-3c7a57957a71.tabs.0.userCondition', 'null'),
('entryTypes.69d2ba66-2d6a-48f3-b8cc-0850d42e2c18.handle', '\"blogPost\"'),
('entryTypes.69d2ba66-2d6a-48f3-b8cc-0850d42e2c18.hasTitleField', 'true'),
('entryTypes.69d2ba66-2d6a-48f3-b8cc-0850d42e2c18.name', '\"Blog Post\"'),
('entryTypes.69d2ba66-2d6a-48f3-b8cc-0850d42e2c18.section', '\"f87ff7ae-50ba-4e06-a75e-899fdc075507\"'),
('entryTypes.69d2ba66-2d6a-48f3-b8cc-0850d42e2c18.sortOrder', '1'),
('entryTypes.69d2ba66-2d6a-48f3-b8cc-0850d42e2c18.titleFormat', 'null'),
('entryTypes.69d2ba66-2d6a-48f3-b8cc-0850d42e2c18.titleTranslationKeyFormat', 'null'),
('entryTypes.69d2ba66-2d6a-48f3-b8cc-0850d42e2c18.titleTranslationMethod', '\"site\"'),
('entryTypes.701103d9-8214-446d-83e8-9db864a6a593.fieldLayouts.2f6e63ef-4612-4685-8d19-e30e84cfa2e3.tabs.0.elementCondition', 'null'),
('entryTypes.701103d9-8214-446d-83e8-9db864a6a593.fieldLayouts.2f6e63ef-4612-4685-8d19-e30e84cfa2e3.tabs.0.elements.0.autocapitalize', 'true'),
('entryTypes.701103d9-8214-446d-83e8-9db864a6a593.fieldLayouts.2f6e63ef-4612-4685-8d19-e30e84cfa2e3.tabs.0.elements.0.autocomplete', 'false'),
('entryTypes.701103d9-8214-446d-83e8-9db864a6a593.fieldLayouts.2f6e63ef-4612-4685-8d19-e30e84cfa2e3.tabs.0.elements.0.autocorrect', 'true'),
('entryTypes.701103d9-8214-446d-83e8-9db864a6a593.fieldLayouts.2f6e63ef-4612-4685-8d19-e30e84cfa2e3.tabs.0.elements.0.class', 'null'),
('entryTypes.701103d9-8214-446d-83e8-9db864a6a593.fieldLayouts.2f6e63ef-4612-4685-8d19-e30e84cfa2e3.tabs.0.elements.0.disabled', 'false'),
('entryTypes.701103d9-8214-446d-83e8-9db864a6a593.fieldLayouts.2f6e63ef-4612-4685-8d19-e30e84cfa2e3.tabs.0.elements.0.elementCondition', 'null'),
('entryTypes.701103d9-8214-446d-83e8-9db864a6a593.fieldLayouts.2f6e63ef-4612-4685-8d19-e30e84cfa2e3.tabs.0.elements.0.id', 'null'),
('entryTypes.701103d9-8214-446d-83e8-9db864a6a593.fieldLayouts.2f6e63ef-4612-4685-8d19-e30e84cfa2e3.tabs.0.elements.0.instructions', 'null'),
('entryTypes.701103d9-8214-446d-83e8-9db864a6a593.fieldLayouts.2f6e63ef-4612-4685-8d19-e30e84cfa2e3.tabs.0.elements.0.label', 'null'),
('entryTypes.701103d9-8214-446d-83e8-9db864a6a593.fieldLayouts.2f6e63ef-4612-4685-8d19-e30e84cfa2e3.tabs.0.elements.0.max', 'null'),
('entryTypes.701103d9-8214-446d-83e8-9db864a6a593.fieldLayouts.2f6e63ef-4612-4685-8d19-e30e84cfa2e3.tabs.0.elements.0.min', 'null'),
('entryTypes.701103d9-8214-446d-83e8-9db864a6a593.fieldLayouts.2f6e63ef-4612-4685-8d19-e30e84cfa2e3.tabs.0.elements.0.name', 'null'),
('entryTypes.701103d9-8214-446d-83e8-9db864a6a593.fieldLayouts.2f6e63ef-4612-4685-8d19-e30e84cfa2e3.tabs.0.elements.0.orientation', 'null'),
('entryTypes.701103d9-8214-446d-83e8-9db864a6a593.fieldLayouts.2f6e63ef-4612-4685-8d19-e30e84cfa2e3.tabs.0.elements.0.placeholder', 'null'),
('entryTypes.701103d9-8214-446d-83e8-9db864a6a593.fieldLayouts.2f6e63ef-4612-4685-8d19-e30e84cfa2e3.tabs.0.elements.0.readonly', 'false'),
('entryTypes.701103d9-8214-446d-83e8-9db864a6a593.fieldLayouts.2f6e63ef-4612-4685-8d19-e30e84cfa2e3.tabs.0.elements.0.requirable', 'false'),
('entryTypes.701103d9-8214-446d-83e8-9db864a6a593.fieldLayouts.2f6e63ef-4612-4685-8d19-e30e84cfa2e3.tabs.0.elements.0.size', 'null'),
('entryTypes.701103d9-8214-446d-83e8-9db864a6a593.fieldLayouts.2f6e63ef-4612-4685-8d19-e30e84cfa2e3.tabs.0.elements.0.step', 'null'),
('entryTypes.701103d9-8214-446d-83e8-9db864a6a593.fieldLayouts.2f6e63ef-4612-4685-8d19-e30e84cfa2e3.tabs.0.elements.0.tip', 'null'),
('entryTypes.701103d9-8214-446d-83e8-9db864a6a593.fieldLayouts.2f6e63ef-4612-4685-8d19-e30e84cfa2e3.tabs.0.elements.0.title', 'null'),
('entryTypes.701103d9-8214-446d-83e8-9db864a6a593.fieldLayouts.2f6e63ef-4612-4685-8d19-e30e84cfa2e3.tabs.0.elements.0.type', '\"craft\\\\fieldlayoutelements\\\\entries\\\\EntryTitleField\"'),
('entryTypes.701103d9-8214-446d-83e8-9db864a6a593.fieldLayouts.2f6e63ef-4612-4685-8d19-e30e84cfa2e3.tabs.0.elements.0.uid', '\"1972982c-6f26-4d6b-837c-5a3e38b974c8\"'),
('entryTypes.701103d9-8214-446d-83e8-9db864a6a593.fieldLayouts.2f6e63ef-4612-4685-8d19-e30e84cfa2e3.tabs.0.elements.0.userCondition', 'null'),
('entryTypes.701103d9-8214-446d-83e8-9db864a6a593.fieldLayouts.2f6e63ef-4612-4685-8d19-e30e84cfa2e3.tabs.0.elements.0.warning', 'null'),
('entryTypes.701103d9-8214-446d-83e8-9db864a6a593.fieldLayouts.2f6e63ef-4612-4685-8d19-e30e84cfa2e3.tabs.0.elements.0.width', '100'),
('entryTypes.701103d9-8214-446d-83e8-9db864a6a593.fieldLayouts.2f6e63ef-4612-4685-8d19-e30e84cfa2e3.tabs.0.elements.1.elementCondition', 'null'),
('entryTypes.701103d9-8214-446d-83e8-9db864a6a593.fieldLayouts.2f6e63ef-4612-4685-8d19-e30e84cfa2e3.tabs.0.elements.1.fieldUid', '\"293cac4b-bd6e-4c92-98ca-eb719b885cda\"'),
('entryTypes.701103d9-8214-446d-83e8-9db864a6a593.fieldLayouts.2f6e63ef-4612-4685-8d19-e30e84cfa2e3.tabs.0.elements.1.instructions', 'null'),
('entryTypes.701103d9-8214-446d-83e8-9db864a6a593.fieldLayouts.2f6e63ef-4612-4685-8d19-e30e84cfa2e3.tabs.0.elements.1.label', 'null'),
('entryTypes.701103d9-8214-446d-83e8-9db864a6a593.fieldLayouts.2f6e63ef-4612-4685-8d19-e30e84cfa2e3.tabs.0.elements.1.required', 'false'),
('entryTypes.701103d9-8214-446d-83e8-9db864a6a593.fieldLayouts.2f6e63ef-4612-4685-8d19-e30e84cfa2e3.tabs.0.elements.1.tip', 'null'),
('entryTypes.701103d9-8214-446d-83e8-9db864a6a593.fieldLayouts.2f6e63ef-4612-4685-8d19-e30e84cfa2e3.tabs.0.elements.1.type', '\"craft\\\\fieldlayoutelements\\\\CustomField\"'),
('entryTypes.701103d9-8214-446d-83e8-9db864a6a593.fieldLayouts.2f6e63ef-4612-4685-8d19-e30e84cfa2e3.tabs.0.elements.1.uid', '\"65d710f3-7620-4a96-9bed-408e2744b966\"'),
('entryTypes.701103d9-8214-446d-83e8-9db864a6a593.fieldLayouts.2f6e63ef-4612-4685-8d19-e30e84cfa2e3.tabs.0.elements.1.userCondition', 'null'),
('entryTypes.701103d9-8214-446d-83e8-9db864a6a593.fieldLayouts.2f6e63ef-4612-4685-8d19-e30e84cfa2e3.tabs.0.elements.1.warning', 'null'),
('entryTypes.701103d9-8214-446d-83e8-9db864a6a593.fieldLayouts.2f6e63ef-4612-4685-8d19-e30e84cfa2e3.tabs.0.elements.1.width', '100'),
('entryTypes.701103d9-8214-446d-83e8-9db864a6a593.fieldLayouts.2f6e63ef-4612-4685-8d19-e30e84cfa2e3.tabs.0.elements.2.elementCondition', 'null'),
('entryTypes.701103d9-8214-446d-83e8-9db864a6a593.fieldLayouts.2f6e63ef-4612-4685-8d19-e30e84cfa2e3.tabs.0.elements.2.fieldUid', '\"907b94e8-b3cb-408b-a4ed-d497104b2d55\"'),
('entryTypes.701103d9-8214-446d-83e8-9db864a6a593.fieldLayouts.2f6e63ef-4612-4685-8d19-e30e84cfa2e3.tabs.0.elements.2.instructions', 'null'),
('entryTypes.701103d9-8214-446d-83e8-9db864a6a593.fieldLayouts.2f6e63ef-4612-4685-8d19-e30e84cfa2e3.tabs.0.elements.2.label', 'null'),
('entryTypes.701103d9-8214-446d-83e8-9db864a6a593.fieldLayouts.2f6e63ef-4612-4685-8d19-e30e84cfa2e3.tabs.0.elements.2.required', 'false'),
('entryTypes.701103d9-8214-446d-83e8-9db864a6a593.fieldLayouts.2f6e63ef-4612-4685-8d19-e30e84cfa2e3.tabs.0.elements.2.tip', 'null'),
('entryTypes.701103d9-8214-446d-83e8-9db864a6a593.fieldLayouts.2f6e63ef-4612-4685-8d19-e30e84cfa2e3.tabs.0.elements.2.type', '\"craft\\\\fieldlayoutelements\\\\CustomField\"'),
('entryTypes.701103d9-8214-446d-83e8-9db864a6a593.fieldLayouts.2f6e63ef-4612-4685-8d19-e30e84cfa2e3.tabs.0.elements.2.uid', '\"1700688a-f0f5-41fd-a628-f56f2e7cc184\"'),
('entryTypes.701103d9-8214-446d-83e8-9db864a6a593.fieldLayouts.2f6e63ef-4612-4685-8d19-e30e84cfa2e3.tabs.0.elements.2.userCondition', 'null'),
('entryTypes.701103d9-8214-446d-83e8-9db864a6a593.fieldLayouts.2f6e63ef-4612-4685-8d19-e30e84cfa2e3.tabs.0.elements.2.warning', 'null'),
('entryTypes.701103d9-8214-446d-83e8-9db864a6a593.fieldLayouts.2f6e63ef-4612-4685-8d19-e30e84cfa2e3.tabs.0.elements.2.width', '100'),
('entryTypes.701103d9-8214-446d-83e8-9db864a6a593.fieldLayouts.2f6e63ef-4612-4685-8d19-e30e84cfa2e3.tabs.0.name', '\"Content\"'),
('entryTypes.701103d9-8214-446d-83e8-9db864a6a593.fieldLayouts.2f6e63ef-4612-4685-8d19-e30e84cfa2e3.tabs.0.uid', '\"63fbf33d-1d7c-41b8-859e-5ecc0d59e82a\"'),
('entryTypes.701103d9-8214-446d-83e8-9db864a6a593.fieldLayouts.2f6e63ef-4612-4685-8d19-e30e84cfa2e3.tabs.0.userCondition', 'null'),
('entryTypes.701103d9-8214-446d-83e8-9db864a6a593.handle', '\"beratung\"'),
('entryTypes.701103d9-8214-446d-83e8-9db864a6a593.hasTitleField', 'false'),
('entryTypes.701103d9-8214-446d-83e8-9db864a6a593.name', '\"Beratung\"'),
('entryTypes.701103d9-8214-446d-83e8-9db864a6a593.section', '\"d99048a1-a158-4b8e-bc5b-2e5c739a3985\"'),
('entryTypes.701103d9-8214-446d-83e8-9db864a6a593.sortOrder', '1'),
('entryTypes.701103d9-8214-446d-83e8-9db864a6a593.titleFormat', '\"{section.name|raw}\"'),
('entryTypes.701103d9-8214-446d-83e8-9db864a6a593.titleTranslationKeyFormat', 'null'),
('entryTypes.701103d9-8214-446d-83e8-9db864a6a593.titleTranslationMethod', '\"site\"'),
('entryTypes.a242b979-f049-4865-9696-fb87e39d1a0c.fieldLayouts.5360fe2b-c14e-451d-a1d7-d868e55d8df9.tabs.0.elementCondition', 'null'),
('entryTypes.a242b979-f049-4865-9696-fb87e39d1a0c.fieldLayouts.5360fe2b-c14e-451d-a1d7-d868e55d8df9.tabs.0.elements.0.autocapitalize', 'true'),
('entryTypes.a242b979-f049-4865-9696-fb87e39d1a0c.fieldLayouts.5360fe2b-c14e-451d-a1d7-d868e55d8df9.tabs.0.elements.0.autocomplete', 'false'),
('entryTypes.a242b979-f049-4865-9696-fb87e39d1a0c.fieldLayouts.5360fe2b-c14e-451d-a1d7-d868e55d8df9.tabs.0.elements.0.autocorrect', 'true'),
('entryTypes.a242b979-f049-4865-9696-fb87e39d1a0c.fieldLayouts.5360fe2b-c14e-451d-a1d7-d868e55d8df9.tabs.0.elements.0.class', 'null'),
('entryTypes.a242b979-f049-4865-9696-fb87e39d1a0c.fieldLayouts.5360fe2b-c14e-451d-a1d7-d868e55d8df9.tabs.0.elements.0.disabled', 'false'),
('entryTypes.a242b979-f049-4865-9696-fb87e39d1a0c.fieldLayouts.5360fe2b-c14e-451d-a1d7-d868e55d8df9.tabs.0.elements.0.elementCondition', 'null'),
('entryTypes.a242b979-f049-4865-9696-fb87e39d1a0c.fieldLayouts.5360fe2b-c14e-451d-a1d7-d868e55d8df9.tabs.0.elements.0.id', 'null'),
('entryTypes.a242b979-f049-4865-9696-fb87e39d1a0c.fieldLayouts.5360fe2b-c14e-451d-a1d7-d868e55d8df9.tabs.0.elements.0.instructions', 'null'),
('entryTypes.a242b979-f049-4865-9696-fb87e39d1a0c.fieldLayouts.5360fe2b-c14e-451d-a1d7-d868e55d8df9.tabs.0.elements.0.label', 'null'),
('entryTypes.a242b979-f049-4865-9696-fb87e39d1a0c.fieldLayouts.5360fe2b-c14e-451d-a1d7-d868e55d8df9.tabs.0.elements.0.max', 'null'),
('entryTypes.a242b979-f049-4865-9696-fb87e39d1a0c.fieldLayouts.5360fe2b-c14e-451d-a1d7-d868e55d8df9.tabs.0.elements.0.min', 'null'),
('entryTypes.a242b979-f049-4865-9696-fb87e39d1a0c.fieldLayouts.5360fe2b-c14e-451d-a1d7-d868e55d8df9.tabs.0.elements.0.name', 'null'),
('entryTypes.a242b979-f049-4865-9696-fb87e39d1a0c.fieldLayouts.5360fe2b-c14e-451d-a1d7-d868e55d8df9.tabs.0.elements.0.orientation', 'null'),
('entryTypes.a242b979-f049-4865-9696-fb87e39d1a0c.fieldLayouts.5360fe2b-c14e-451d-a1d7-d868e55d8df9.tabs.0.elements.0.placeholder', 'null'),
('entryTypes.a242b979-f049-4865-9696-fb87e39d1a0c.fieldLayouts.5360fe2b-c14e-451d-a1d7-d868e55d8df9.tabs.0.elements.0.readonly', 'false'),
('entryTypes.a242b979-f049-4865-9696-fb87e39d1a0c.fieldLayouts.5360fe2b-c14e-451d-a1d7-d868e55d8df9.tabs.0.elements.0.requirable', 'false'),
('entryTypes.a242b979-f049-4865-9696-fb87e39d1a0c.fieldLayouts.5360fe2b-c14e-451d-a1d7-d868e55d8df9.tabs.0.elements.0.size', 'null'),
('entryTypes.a242b979-f049-4865-9696-fb87e39d1a0c.fieldLayouts.5360fe2b-c14e-451d-a1d7-d868e55d8df9.tabs.0.elements.0.step', 'null'),
('entryTypes.a242b979-f049-4865-9696-fb87e39d1a0c.fieldLayouts.5360fe2b-c14e-451d-a1d7-d868e55d8df9.tabs.0.elements.0.tip', 'null'),
('entryTypes.a242b979-f049-4865-9696-fb87e39d1a0c.fieldLayouts.5360fe2b-c14e-451d-a1d7-d868e55d8df9.tabs.0.elements.0.title', 'null'),
('entryTypes.a242b979-f049-4865-9696-fb87e39d1a0c.fieldLayouts.5360fe2b-c14e-451d-a1d7-d868e55d8df9.tabs.0.elements.0.type', '\"craft\\\\fieldlayoutelements\\\\entries\\\\EntryTitleField\"'),
('entryTypes.a242b979-f049-4865-9696-fb87e39d1a0c.fieldLayouts.5360fe2b-c14e-451d-a1d7-d868e55d8df9.tabs.0.elements.0.uid', '\"b6e142c9-b428-4022-aa32-2d1f4730f92e\"'),
('entryTypes.a242b979-f049-4865-9696-fb87e39d1a0c.fieldLayouts.5360fe2b-c14e-451d-a1d7-d868e55d8df9.tabs.0.elements.0.userCondition', 'null'),
('entryTypes.a242b979-f049-4865-9696-fb87e39d1a0c.fieldLayouts.5360fe2b-c14e-451d-a1d7-d868e55d8df9.tabs.0.elements.0.warning', 'null'),
('entryTypes.a242b979-f049-4865-9696-fb87e39d1a0c.fieldLayouts.5360fe2b-c14e-451d-a1d7-d868e55d8df9.tabs.0.elements.0.width', '100'),
('entryTypes.a242b979-f049-4865-9696-fb87e39d1a0c.fieldLayouts.5360fe2b-c14e-451d-a1d7-d868e55d8df9.tabs.0.elements.1.elementCondition', 'null'),
('entryTypes.a242b979-f049-4865-9696-fb87e39d1a0c.fieldLayouts.5360fe2b-c14e-451d-a1d7-d868e55d8df9.tabs.0.elements.1.fieldUid', '\"293cac4b-bd6e-4c92-98ca-eb719b885cda\"'),
('entryTypes.a242b979-f049-4865-9696-fb87e39d1a0c.fieldLayouts.5360fe2b-c14e-451d-a1d7-d868e55d8df9.tabs.0.elements.1.instructions', 'null'),
('entryTypes.a242b979-f049-4865-9696-fb87e39d1a0c.fieldLayouts.5360fe2b-c14e-451d-a1d7-d868e55d8df9.tabs.0.elements.1.label', 'null'),
('entryTypes.a242b979-f049-4865-9696-fb87e39d1a0c.fieldLayouts.5360fe2b-c14e-451d-a1d7-d868e55d8df9.tabs.0.elements.1.required', 'false'),
('entryTypes.a242b979-f049-4865-9696-fb87e39d1a0c.fieldLayouts.5360fe2b-c14e-451d-a1d7-d868e55d8df9.tabs.0.elements.1.tip', 'null'),
('entryTypes.a242b979-f049-4865-9696-fb87e39d1a0c.fieldLayouts.5360fe2b-c14e-451d-a1d7-d868e55d8df9.tabs.0.elements.1.type', '\"craft\\\\fieldlayoutelements\\\\CustomField\"'),
('entryTypes.a242b979-f049-4865-9696-fb87e39d1a0c.fieldLayouts.5360fe2b-c14e-451d-a1d7-d868e55d8df9.tabs.0.elements.1.uid', '\"d5774556-ede9-471e-9fc5-a6a6af89927c\"'),
('entryTypes.a242b979-f049-4865-9696-fb87e39d1a0c.fieldLayouts.5360fe2b-c14e-451d-a1d7-d868e55d8df9.tabs.0.elements.1.userCondition', 'null'),
('entryTypes.a242b979-f049-4865-9696-fb87e39d1a0c.fieldLayouts.5360fe2b-c14e-451d-a1d7-d868e55d8df9.tabs.0.elements.1.warning', 'null'),
('entryTypes.a242b979-f049-4865-9696-fb87e39d1a0c.fieldLayouts.5360fe2b-c14e-451d-a1d7-d868e55d8df9.tabs.0.elements.1.width', '100'),
('entryTypes.a242b979-f049-4865-9696-fb87e39d1a0c.fieldLayouts.5360fe2b-c14e-451d-a1d7-d868e55d8df9.tabs.0.elements.2.elementCondition', 'null'),
('entryTypes.a242b979-f049-4865-9696-fb87e39d1a0c.fieldLayouts.5360fe2b-c14e-451d-a1d7-d868e55d8df9.tabs.0.elements.2.fieldUid', '\"907b94e8-b3cb-408b-a4ed-d497104b2d55\"'),
('entryTypes.a242b979-f049-4865-9696-fb87e39d1a0c.fieldLayouts.5360fe2b-c14e-451d-a1d7-d868e55d8df9.tabs.0.elements.2.instructions', 'null'),
('entryTypes.a242b979-f049-4865-9696-fb87e39d1a0c.fieldLayouts.5360fe2b-c14e-451d-a1d7-d868e55d8df9.tabs.0.elements.2.label', 'null'),
('entryTypes.a242b979-f049-4865-9696-fb87e39d1a0c.fieldLayouts.5360fe2b-c14e-451d-a1d7-d868e55d8df9.tabs.0.elements.2.required', 'false'),
('entryTypes.a242b979-f049-4865-9696-fb87e39d1a0c.fieldLayouts.5360fe2b-c14e-451d-a1d7-d868e55d8df9.tabs.0.elements.2.tip', 'null'),
('entryTypes.a242b979-f049-4865-9696-fb87e39d1a0c.fieldLayouts.5360fe2b-c14e-451d-a1d7-d868e55d8df9.tabs.0.elements.2.type', '\"craft\\\\fieldlayoutelements\\\\CustomField\"'),
('entryTypes.a242b979-f049-4865-9696-fb87e39d1a0c.fieldLayouts.5360fe2b-c14e-451d-a1d7-d868e55d8df9.tabs.0.elements.2.uid', '\"f045e1ee-92a3-4d9d-aa79-4b88228e5a3c\"'),
('entryTypes.a242b979-f049-4865-9696-fb87e39d1a0c.fieldLayouts.5360fe2b-c14e-451d-a1d7-d868e55d8df9.tabs.0.elements.2.userCondition', 'null'),
('entryTypes.a242b979-f049-4865-9696-fb87e39d1a0c.fieldLayouts.5360fe2b-c14e-451d-a1d7-d868e55d8df9.tabs.0.elements.2.warning', 'null'),
('entryTypes.a242b979-f049-4865-9696-fb87e39d1a0c.fieldLayouts.5360fe2b-c14e-451d-a1d7-d868e55d8df9.tabs.0.elements.2.width', '100'),
('entryTypes.a242b979-f049-4865-9696-fb87e39d1a0c.fieldLayouts.5360fe2b-c14e-451d-a1d7-d868e55d8df9.tabs.0.elements.3.elementCondition', 'null'),
('entryTypes.a242b979-f049-4865-9696-fb87e39d1a0c.fieldLayouts.5360fe2b-c14e-451d-a1d7-d868e55d8df9.tabs.0.elements.3.fieldUid', '\"e1d6a3d2-955b-42e4-bcf0-ae40fbffba4f\"'),
('entryTypes.a242b979-f049-4865-9696-fb87e39d1a0c.fieldLayouts.5360fe2b-c14e-451d-a1d7-d868e55d8df9.tabs.0.elements.3.instructions', 'null'),
('entryTypes.a242b979-f049-4865-9696-fb87e39d1a0c.fieldLayouts.5360fe2b-c14e-451d-a1d7-d868e55d8df9.tabs.0.elements.3.label', 'null'),
('entryTypes.a242b979-f049-4865-9696-fb87e39d1a0c.fieldLayouts.5360fe2b-c14e-451d-a1d7-d868e55d8df9.tabs.0.elements.3.required', 'false'),
('entryTypes.a242b979-f049-4865-9696-fb87e39d1a0c.fieldLayouts.5360fe2b-c14e-451d-a1d7-d868e55d8df9.tabs.0.elements.3.tip', 'null'),
('entryTypes.a242b979-f049-4865-9696-fb87e39d1a0c.fieldLayouts.5360fe2b-c14e-451d-a1d7-d868e55d8df9.tabs.0.elements.3.type', '\"craft\\\\fieldlayoutelements\\\\CustomField\"'),
('entryTypes.a242b979-f049-4865-9696-fb87e39d1a0c.fieldLayouts.5360fe2b-c14e-451d-a1d7-d868e55d8df9.tabs.0.elements.3.uid', '\"d7bc3d96-29b9-4705-8d1b-4dd92026e946\"'),
('entryTypes.a242b979-f049-4865-9696-fb87e39d1a0c.fieldLayouts.5360fe2b-c14e-451d-a1d7-d868e55d8df9.tabs.0.elements.3.userCondition', 'null'),
('entryTypes.a242b979-f049-4865-9696-fb87e39d1a0c.fieldLayouts.5360fe2b-c14e-451d-a1d7-d868e55d8df9.tabs.0.elements.3.warning', 'null'),
('entryTypes.a242b979-f049-4865-9696-fb87e39d1a0c.fieldLayouts.5360fe2b-c14e-451d-a1d7-d868e55d8df9.tabs.0.elements.3.width', '100'),
('entryTypes.a242b979-f049-4865-9696-fb87e39d1a0c.fieldLayouts.5360fe2b-c14e-451d-a1d7-d868e55d8df9.tabs.0.name', '\"Content\"'),
('entryTypes.a242b979-f049-4865-9696-fb87e39d1a0c.fieldLayouts.5360fe2b-c14e-451d-a1d7-d868e55d8df9.tabs.0.uid', '\"93facda7-8c09-42b3-9c59-53cf8991b6d5\"'),
('entryTypes.a242b979-f049-4865-9696-fb87e39d1a0c.fieldLayouts.5360fe2b-c14e-451d-a1d7-d868e55d8df9.tabs.0.userCondition', 'null'),
('entryTypes.a242b979-f049-4865-9696-fb87e39d1a0c.handle', '\"impressumDatenschutz\"'),
('entryTypes.a242b979-f049-4865-9696-fb87e39d1a0c.hasTitleField', 'false'),
('entryTypes.a242b979-f049-4865-9696-fb87e39d1a0c.name', '\"Impressum & Datenschutz\"'),
('entryTypes.a242b979-f049-4865-9696-fb87e39d1a0c.section', '\"2ad0f005-f573-4862-a07f-bf5258f7107b\"'),
('entryTypes.a242b979-f049-4865-9696-fb87e39d1a0c.sortOrder', '1'),
('entryTypes.a242b979-f049-4865-9696-fb87e39d1a0c.titleFormat', '\"{section.name|raw}\"'),
('entryTypes.a242b979-f049-4865-9696-fb87e39d1a0c.titleTranslationKeyFormat', 'null'),
('entryTypes.a242b979-f049-4865-9696-fb87e39d1a0c.titleTranslationMethod', '\"site\"'),
('entryTypes.e2192567-c6db-4e5b-99f3-be24ed73f518.fieldLayouts.3e74c7a0-4653-4b3a-8dd0-8570c00bad86.tabs.0.elementCondition', 'null'),
('entryTypes.e2192567-c6db-4e5b-99f3-be24ed73f518.fieldLayouts.3e74c7a0-4653-4b3a-8dd0-8570c00bad86.tabs.0.elements.0.autocapitalize', 'true'),
('entryTypes.e2192567-c6db-4e5b-99f3-be24ed73f518.fieldLayouts.3e74c7a0-4653-4b3a-8dd0-8570c00bad86.tabs.0.elements.0.autocomplete', 'false'),
('entryTypes.e2192567-c6db-4e5b-99f3-be24ed73f518.fieldLayouts.3e74c7a0-4653-4b3a-8dd0-8570c00bad86.tabs.0.elements.0.autocorrect', 'true'),
('entryTypes.e2192567-c6db-4e5b-99f3-be24ed73f518.fieldLayouts.3e74c7a0-4653-4b3a-8dd0-8570c00bad86.tabs.0.elements.0.class', 'null'),
('entryTypes.e2192567-c6db-4e5b-99f3-be24ed73f518.fieldLayouts.3e74c7a0-4653-4b3a-8dd0-8570c00bad86.tabs.0.elements.0.disabled', 'false'),
('entryTypes.e2192567-c6db-4e5b-99f3-be24ed73f518.fieldLayouts.3e74c7a0-4653-4b3a-8dd0-8570c00bad86.tabs.0.elements.0.elementCondition', 'null'),
('entryTypes.e2192567-c6db-4e5b-99f3-be24ed73f518.fieldLayouts.3e74c7a0-4653-4b3a-8dd0-8570c00bad86.tabs.0.elements.0.id', 'null'),
('entryTypes.e2192567-c6db-4e5b-99f3-be24ed73f518.fieldLayouts.3e74c7a0-4653-4b3a-8dd0-8570c00bad86.tabs.0.elements.0.instructions', 'null'),
('entryTypes.e2192567-c6db-4e5b-99f3-be24ed73f518.fieldLayouts.3e74c7a0-4653-4b3a-8dd0-8570c00bad86.tabs.0.elements.0.label', 'null'),
('entryTypes.e2192567-c6db-4e5b-99f3-be24ed73f518.fieldLayouts.3e74c7a0-4653-4b3a-8dd0-8570c00bad86.tabs.0.elements.0.max', 'null'),
('entryTypes.e2192567-c6db-4e5b-99f3-be24ed73f518.fieldLayouts.3e74c7a0-4653-4b3a-8dd0-8570c00bad86.tabs.0.elements.0.min', 'null'),
('entryTypes.e2192567-c6db-4e5b-99f3-be24ed73f518.fieldLayouts.3e74c7a0-4653-4b3a-8dd0-8570c00bad86.tabs.0.elements.0.name', 'null'),
('entryTypes.e2192567-c6db-4e5b-99f3-be24ed73f518.fieldLayouts.3e74c7a0-4653-4b3a-8dd0-8570c00bad86.tabs.0.elements.0.orientation', 'null'),
('entryTypes.e2192567-c6db-4e5b-99f3-be24ed73f518.fieldLayouts.3e74c7a0-4653-4b3a-8dd0-8570c00bad86.tabs.0.elements.0.placeholder', 'null'),
('entryTypes.e2192567-c6db-4e5b-99f3-be24ed73f518.fieldLayouts.3e74c7a0-4653-4b3a-8dd0-8570c00bad86.tabs.0.elements.0.readonly', 'false'),
('entryTypes.e2192567-c6db-4e5b-99f3-be24ed73f518.fieldLayouts.3e74c7a0-4653-4b3a-8dd0-8570c00bad86.tabs.0.elements.0.requirable', 'false'),
('entryTypes.e2192567-c6db-4e5b-99f3-be24ed73f518.fieldLayouts.3e74c7a0-4653-4b3a-8dd0-8570c00bad86.tabs.0.elements.0.size', 'null'),
('entryTypes.e2192567-c6db-4e5b-99f3-be24ed73f518.fieldLayouts.3e74c7a0-4653-4b3a-8dd0-8570c00bad86.tabs.0.elements.0.step', 'null'),
('entryTypes.e2192567-c6db-4e5b-99f3-be24ed73f518.fieldLayouts.3e74c7a0-4653-4b3a-8dd0-8570c00bad86.tabs.0.elements.0.tip', 'null'),
('entryTypes.e2192567-c6db-4e5b-99f3-be24ed73f518.fieldLayouts.3e74c7a0-4653-4b3a-8dd0-8570c00bad86.tabs.0.elements.0.title', 'null'),
('entryTypes.e2192567-c6db-4e5b-99f3-be24ed73f518.fieldLayouts.3e74c7a0-4653-4b3a-8dd0-8570c00bad86.tabs.0.elements.0.type', '\"craft\\\\fieldlayoutelements\\\\entries\\\\EntryTitleField\"'),
('entryTypes.e2192567-c6db-4e5b-99f3-be24ed73f518.fieldLayouts.3e74c7a0-4653-4b3a-8dd0-8570c00bad86.tabs.0.elements.0.uid', '\"6f5927b5-f231-4aee-9a3b-8e72b7031635\"'),
('entryTypes.e2192567-c6db-4e5b-99f3-be24ed73f518.fieldLayouts.3e74c7a0-4653-4b3a-8dd0-8570c00bad86.tabs.0.elements.0.userCondition', 'null'),
('entryTypes.e2192567-c6db-4e5b-99f3-be24ed73f518.fieldLayouts.3e74c7a0-4653-4b3a-8dd0-8570c00bad86.tabs.0.elements.0.warning', 'null'),
('entryTypes.e2192567-c6db-4e5b-99f3-be24ed73f518.fieldLayouts.3e74c7a0-4653-4b3a-8dd0-8570c00bad86.tabs.0.elements.0.width', '100'),
('entryTypes.e2192567-c6db-4e5b-99f3-be24ed73f518.fieldLayouts.3e74c7a0-4653-4b3a-8dd0-8570c00bad86.tabs.0.elements.1.elementCondition', 'null'),
('entryTypes.e2192567-c6db-4e5b-99f3-be24ed73f518.fieldLayouts.3e74c7a0-4653-4b3a-8dd0-8570c00bad86.tabs.0.elements.1.fieldUid', '\"293cac4b-bd6e-4c92-98ca-eb719b885cda\"'),
('entryTypes.e2192567-c6db-4e5b-99f3-be24ed73f518.fieldLayouts.3e74c7a0-4653-4b3a-8dd0-8570c00bad86.tabs.0.elements.1.instructions', 'null'),
('entryTypes.e2192567-c6db-4e5b-99f3-be24ed73f518.fieldLayouts.3e74c7a0-4653-4b3a-8dd0-8570c00bad86.tabs.0.elements.1.label', 'null'),
('entryTypes.e2192567-c6db-4e5b-99f3-be24ed73f518.fieldLayouts.3e74c7a0-4653-4b3a-8dd0-8570c00bad86.tabs.0.elements.1.required', 'false'),
('entryTypes.e2192567-c6db-4e5b-99f3-be24ed73f518.fieldLayouts.3e74c7a0-4653-4b3a-8dd0-8570c00bad86.tabs.0.elements.1.tip', 'null'),
('entryTypes.e2192567-c6db-4e5b-99f3-be24ed73f518.fieldLayouts.3e74c7a0-4653-4b3a-8dd0-8570c00bad86.tabs.0.elements.1.type', '\"craft\\\\fieldlayoutelements\\\\CustomField\"'),
('entryTypes.e2192567-c6db-4e5b-99f3-be24ed73f518.fieldLayouts.3e74c7a0-4653-4b3a-8dd0-8570c00bad86.tabs.0.elements.1.uid', '\"e7957a63-fb80-4302-b1d7-e8a975757148\"'),
('entryTypes.e2192567-c6db-4e5b-99f3-be24ed73f518.fieldLayouts.3e74c7a0-4653-4b3a-8dd0-8570c00bad86.tabs.0.elements.1.userCondition', 'null'),
('entryTypes.e2192567-c6db-4e5b-99f3-be24ed73f518.fieldLayouts.3e74c7a0-4653-4b3a-8dd0-8570c00bad86.tabs.0.elements.1.warning', 'null'),
('entryTypes.e2192567-c6db-4e5b-99f3-be24ed73f518.fieldLayouts.3e74c7a0-4653-4b3a-8dd0-8570c00bad86.tabs.0.elements.1.width', '100'),
('entryTypes.e2192567-c6db-4e5b-99f3-be24ed73f518.fieldLayouts.3e74c7a0-4653-4b3a-8dd0-8570c00bad86.tabs.0.elements.2.elementCondition', 'null'),
('entryTypes.e2192567-c6db-4e5b-99f3-be24ed73f518.fieldLayouts.3e74c7a0-4653-4b3a-8dd0-8570c00bad86.tabs.0.elements.2.fieldUid', '\"170b0e9a-f69f-46c0-810f-b14d6378d6fe\"'),
('entryTypes.e2192567-c6db-4e5b-99f3-be24ed73f518.fieldLayouts.3e74c7a0-4653-4b3a-8dd0-8570c00bad86.tabs.0.elements.2.instructions', 'null'),
('entryTypes.e2192567-c6db-4e5b-99f3-be24ed73f518.fieldLayouts.3e74c7a0-4653-4b3a-8dd0-8570c00bad86.tabs.0.elements.2.label', 'null'),
('entryTypes.e2192567-c6db-4e5b-99f3-be24ed73f518.fieldLayouts.3e74c7a0-4653-4b3a-8dd0-8570c00bad86.tabs.0.elements.2.required', 'false'),
('entryTypes.e2192567-c6db-4e5b-99f3-be24ed73f518.fieldLayouts.3e74c7a0-4653-4b3a-8dd0-8570c00bad86.tabs.0.elements.2.tip', 'null'),
('entryTypes.e2192567-c6db-4e5b-99f3-be24ed73f518.fieldLayouts.3e74c7a0-4653-4b3a-8dd0-8570c00bad86.tabs.0.elements.2.type', '\"craft\\\\fieldlayoutelements\\\\CustomField\"'),
('entryTypes.e2192567-c6db-4e5b-99f3-be24ed73f518.fieldLayouts.3e74c7a0-4653-4b3a-8dd0-8570c00bad86.tabs.0.elements.2.uid', '\"83e2b33c-c3b8-4803-8cc4-e609804bb768\"'),
('entryTypes.e2192567-c6db-4e5b-99f3-be24ed73f518.fieldLayouts.3e74c7a0-4653-4b3a-8dd0-8570c00bad86.tabs.0.elements.2.userCondition', 'null'),
('entryTypes.e2192567-c6db-4e5b-99f3-be24ed73f518.fieldLayouts.3e74c7a0-4653-4b3a-8dd0-8570c00bad86.tabs.0.elements.2.warning', 'null'),
('entryTypes.e2192567-c6db-4e5b-99f3-be24ed73f518.fieldLayouts.3e74c7a0-4653-4b3a-8dd0-8570c00bad86.tabs.0.elements.2.width', '100'),
('entryTypes.e2192567-c6db-4e5b-99f3-be24ed73f518.fieldLayouts.3e74c7a0-4653-4b3a-8dd0-8570c00bad86.tabs.0.name', '\"Content\"'),
('entryTypes.e2192567-c6db-4e5b-99f3-be24ed73f518.fieldLayouts.3e74c7a0-4653-4b3a-8dd0-8570c00bad86.tabs.0.uid', '\"4e1c9cb6-9342-462c-8be6-a5ff6da0e384\"'),
('entryTypes.e2192567-c6db-4e5b-99f3-be24ed73f518.fieldLayouts.3e74c7a0-4653-4b3a-8dd0-8570c00bad86.tabs.0.userCondition', 'null'),
('entryTypes.e2192567-c6db-4e5b-99f3-be24ed73f518.handle', '\"softwareOverview\"'),
('entryTypes.e2192567-c6db-4e5b-99f3-be24ed73f518.hasTitleField', 'false'),
('entryTypes.e2192567-c6db-4e5b-99f3-be24ed73f518.name', '\"Software Overview\"'),
('entryTypes.e2192567-c6db-4e5b-99f3-be24ed73f518.section', '\"f5515f40-8f50-4d87-82f2-f2ea5e7ab68d\"'),
('entryTypes.e2192567-c6db-4e5b-99f3-be24ed73f518.sortOrder', '1'),
('entryTypes.e2192567-c6db-4e5b-99f3-be24ed73f518.titleFormat', '\"{section.name|raw}\"'),
('entryTypes.e2192567-c6db-4e5b-99f3-be24ed73f518.titleTranslationKeyFormat', 'null'),
('entryTypes.e2192567-c6db-4e5b-99f3-be24ed73f518.titleTranslationMethod', '\"site\"'),
('entryTypes.e495b10a-245e-4b45-8085-f55ca3e033e5.fieldLayouts.2a984276-d609-480c-b6e2-966cec3dad8c.tabs.0.elementCondition', 'null'),
('entryTypes.e495b10a-245e-4b45-8085-f55ca3e033e5.fieldLayouts.2a984276-d609-480c-b6e2-966cec3dad8c.tabs.0.elements.0.autocapitalize', 'true'),
('entryTypes.e495b10a-245e-4b45-8085-f55ca3e033e5.fieldLayouts.2a984276-d609-480c-b6e2-966cec3dad8c.tabs.0.elements.0.autocomplete', 'false'),
('entryTypes.e495b10a-245e-4b45-8085-f55ca3e033e5.fieldLayouts.2a984276-d609-480c-b6e2-966cec3dad8c.tabs.0.elements.0.autocorrect', 'true'),
('entryTypes.e495b10a-245e-4b45-8085-f55ca3e033e5.fieldLayouts.2a984276-d609-480c-b6e2-966cec3dad8c.tabs.0.elements.0.class', 'null'),
('entryTypes.e495b10a-245e-4b45-8085-f55ca3e033e5.fieldLayouts.2a984276-d609-480c-b6e2-966cec3dad8c.tabs.0.elements.0.disabled', 'false'),
('entryTypes.e495b10a-245e-4b45-8085-f55ca3e033e5.fieldLayouts.2a984276-d609-480c-b6e2-966cec3dad8c.tabs.0.elements.0.elementCondition', 'null'),
('entryTypes.e495b10a-245e-4b45-8085-f55ca3e033e5.fieldLayouts.2a984276-d609-480c-b6e2-966cec3dad8c.tabs.0.elements.0.id', 'null'),
('entryTypes.e495b10a-245e-4b45-8085-f55ca3e033e5.fieldLayouts.2a984276-d609-480c-b6e2-966cec3dad8c.tabs.0.elements.0.instructions', 'null'),
('entryTypes.e495b10a-245e-4b45-8085-f55ca3e033e5.fieldLayouts.2a984276-d609-480c-b6e2-966cec3dad8c.tabs.0.elements.0.label', 'null'),
('entryTypes.e495b10a-245e-4b45-8085-f55ca3e033e5.fieldLayouts.2a984276-d609-480c-b6e2-966cec3dad8c.tabs.0.elements.0.max', 'null'),
('entryTypes.e495b10a-245e-4b45-8085-f55ca3e033e5.fieldLayouts.2a984276-d609-480c-b6e2-966cec3dad8c.tabs.0.elements.0.min', 'null'),
('entryTypes.e495b10a-245e-4b45-8085-f55ca3e033e5.fieldLayouts.2a984276-d609-480c-b6e2-966cec3dad8c.tabs.0.elements.0.name', 'null'),
('entryTypes.e495b10a-245e-4b45-8085-f55ca3e033e5.fieldLayouts.2a984276-d609-480c-b6e2-966cec3dad8c.tabs.0.elements.0.orientation', 'null'),
('entryTypes.e495b10a-245e-4b45-8085-f55ca3e033e5.fieldLayouts.2a984276-d609-480c-b6e2-966cec3dad8c.tabs.0.elements.0.placeholder', 'null'),
('entryTypes.e495b10a-245e-4b45-8085-f55ca3e033e5.fieldLayouts.2a984276-d609-480c-b6e2-966cec3dad8c.tabs.0.elements.0.readonly', 'false'),
('entryTypes.e495b10a-245e-4b45-8085-f55ca3e033e5.fieldLayouts.2a984276-d609-480c-b6e2-966cec3dad8c.tabs.0.elements.0.requirable', 'false'),
('entryTypes.e495b10a-245e-4b45-8085-f55ca3e033e5.fieldLayouts.2a984276-d609-480c-b6e2-966cec3dad8c.tabs.0.elements.0.size', 'null'),
('entryTypes.e495b10a-245e-4b45-8085-f55ca3e033e5.fieldLayouts.2a984276-d609-480c-b6e2-966cec3dad8c.tabs.0.elements.0.step', 'null'),
('entryTypes.e495b10a-245e-4b45-8085-f55ca3e033e5.fieldLayouts.2a984276-d609-480c-b6e2-966cec3dad8c.tabs.0.elements.0.tip', 'null'),
('entryTypes.e495b10a-245e-4b45-8085-f55ca3e033e5.fieldLayouts.2a984276-d609-480c-b6e2-966cec3dad8c.tabs.0.elements.0.title', 'null'),
('entryTypes.e495b10a-245e-4b45-8085-f55ca3e033e5.fieldLayouts.2a984276-d609-480c-b6e2-966cec3dad8c.tabs.0.elements.0.type', '\"craft\\\\fieldlayoutelements\\\\entries\\\\EntryTitleField\"'),
('entryTypes.e495b10a-245e-4b45-8085-f55ca3e033e5.fieldLayouts.2a984276-d609-480c-b6e2-966cec3dad8c.tabs.0.elements.0.uid', '\"e691d958-f748-4402-916c-f647c7424277\"'),
('entryTypes.e495b10a-245e-4b45-8085-f55ca3e033e5.fieldLayouts.2a984276-d609-480c-b6e2-966cec3dad8c.tabs.0.elements.0.userCondition', 'null'),
('entryTypes.e495b10a-245e-4b45-8085-f55ca3e033e5.fieldLayouts.2a984276-d609-480c-b6e2-966cec3dad8c.tabs.0.elements.0.warning', 'null'),
('entryTypes.e495b10a-245e-4b45-8085-f55ca3e033e5.fieldLayouts.2a984276-d609-480c-b6e2-966cec3dad8c.tabs.0.elements.0.width', '100'),
('entryTypes.e495b10a-245e-4b45-8085-f55ca3e033e5.fieldLayouts.2a984276-d609-480c-b6e2-966cec3dad8c.tabs.0.elements.1.elementCondition', 'null'),
('entryTypes.e495b10a-245e-4b45-8085-f55ca3e033e5.fieldLayouts.2a984276-d609-480c-b6e2-966cec3dad8c.tabs.0.elements.1.fieldUid', '\"293cac4b-bd6e-4c92-98ca-eb719b885cda\"'),
('entryTypes.e495b10a-245e-4b45-8085-f55ca3e033e5.fieldLayouts.2a984276-d609-480c-b6e2-966cec3dad8c.tabs.0.elements.1.instructions', 'null'),
('entryTypes.e495b10a-245e-4b45-8085-f55ca3e033e5.fieldLayouts.2a984276-d609-480c-b6e2-966cec3dad8c.tabs.0.elements.1.label', 'null'),
('entryTypes.e495b10a-245e-4b45-8085-f55ca3e033e5.fieldLayouts.2a984276-d609-480c-b6e2-966cec3dad8c.tabs.0.elements.1.required', 'false'),
('entryTypes.e495b10a-245e-4b45-8085-f55ca3e033e5.fieldLayouts.2a984276-d609-480c-b6e2-966cec3dad8c.tabs.0.elements.1.tip', 'null'),
('entryTypes.e495b10a-245e-4b45-8085-f55ca3e033e5.fieldLayouts.2a984276-d609-480c-b6e2-966cec3dad8c.tabs.0.elements.1.type', '\"craft\\\\fieldlayoutelements\\\\CustomField\"'),
('entryTypes.e495b10a-245e-4b45-8085-f55ca3e033e5.fieldLayouts.2a984276-d609-480c-b6e2-966cec3dad8c.tabs.0.elements.1.uid', '\"1eb767b3-0b66-41a9-89ef-1383952ac4a5\"'),
('entryTypes.e495b10a-245e-4b45-8085-f55ca3e033e5.fieldLayouts.2a984276-d609-480c-b6e2-966cec3dad8c.tabs.0.elements.1.userCondition', 'null'),
('entryTypes.e495b10a-245e-4b45-8085-f55ca3e033e5.fieldLayouts.2a984276-d609-480c-b6e2-966cec3dad8c.tabs.0.elements.1.warning', 'null'),
('entryTypes.e495b10a-245e-4b45-8085-f55ca3e033e5.fieldLayouts.2a984276-d609-480c-b6e2-966cec3dad8c.tabs.0.elements.1.width', '100'),
('entryTypes.e495b10a-245e-4b45-8085-f55ca3e033e5.fieldLayouts.2a984276-d609-480c-b6e2-966cec3dad8c.tabs.0.elements.2.elementCondition', 'null'),
('entryTypes.e495b10a-245e-4b45-8085-f55ca3e033e5.fieldLayouts.2a984276-d609-480c-b6e2-966cec3dad8c.tabs.0.elements.2.fieldUid', '\"907b94e8-b3cb-408b-a4ed-d497104b2d55\"'),
('entryTypes.e495b10a-245e-4b45-8085-f55ca3e033e5.fieldLayouts.2a984276-d609-480c-b6e2-966cec3dad8c.tabs.0.elements.2.instructions', 'null'),
('entryTypes.e495b10a-245e-4b45-8085-f55ca3e033e5.fieldLayouts.2a984276-d609-480c-b6e2-966cec3dad8c.tabs.0.elements.2.label', 'null'),
('entryTypes.e495b10a-245e-4b45-8085-f55ca3e033e5.fieldLayouts.2a984276-d609-480c-b6e2-966cec3dad8c.tabs.0.elements.2.required', 'false'),
('entryTypes.e495b10a-245e-4b45-8085-f55ca3e033e5.fieldLayouts.2a984276-d609-480c-b6e2-966cec3dad8c.tabs.0.elements.2.tip', 'null'),
('entryTypes.e495b10a-245e-4b45-8085-f55ca3e033e5.fieldLayouts.2a984276-d609-480c-b6e2-966cec3dad8c.tabs.0.elements.2.type', '\"craft\\\\fieldlayoutelements\\\\CustomField\"'),
('entryTypes.e495b10a-245e-4b45-8085-f55ca3e033e5.fieldLayouts.2a984276-d609-480c-b6e2-966cec3dad8c.tabs.0.elements.2.uid', '\"c9d72ecc-d788-42b9-b627-9907d0e3dac5\"'),
('entryTypes.e495b10a-245e-4b45-8085-f55ca3e033e5.fieldLayouts.2a984276-d609-480c-b6e2-966cec3dad8c.tabs.0.elements.2.userCondition', 'null'),
('entryTypes.e495b10a-245e-4b45-8085-f55ca3e033e5.fieldLayouts.2a984276-d609-480c-b6e2-966cec3dad8c.tabs.0.elements.2.warning', 'null'),
('entryTypes.e495b10a-245e-4b45-8085-f55ca3e033e5.fieldLayouts.2a984276-d609-480c-b6e2-966cec3dad8c.tabs.0.elements.2.width', '100'),
('entryTypes.e495b10a-245e-4b45-8085-f55ca3e033e5.fieldLayouts.2a984276-d609-480c-b6e2-966cec3dad8c.tabs.0.name', '\"Content\"'),
('entryTypes.e495b10a-245e-4b45-8085-f55ca3e033e5.fieldLayouts.2a984276-d609-480c-b6e2-966cec3dad8c.tabs.0.uid', '\"8a886982-bb52-48ed-ae53-d664ad27066f\"'),
('entryTypes.e495b10a-245e-4b45-8085-f55ca3e033e5.fieldLayouts.2a984276-d609-480c-b6e2-966cec3dad8c.tabs.0.userCondition', 'null'),
('entryTypes.e495b10a-245e-4b45-8085-f55ca3e033e5.handle', '\"support\"'),
('entryTypes.e495b10a-245e-4b45-8085-f55ca3e033e5.hasTitleField', 'false'),
('entryTypes.e495b10a-245e-4b45-8085-f55ca3e033e5.name', '\"Support\"'),
('entryTypes.e495b10a-245e-4b45-8085-f55ca3e033e5.section', '\"f6404666-341b-4af9-ad83-c96ed1be86fe\"'),
('entryTypes.e495b10a-245e-4b45-8085-f55ca3e033e5.sortOrder', '1'),
('entryTypes.e495b10a-245e-4b45-8085-f55ca3e033e5.titleFormat', '\"{section.name|raw}\"'),
('entryTypes.e495b10a-245e-4b45-8085-f55ca3e033e5.titleTranslationKeyFormat', 'null'),
('entryTypes.e495b10a-245e-4b45-8085-f55ca3e033e5.titleTranslationMethod', '\"site\"'),
('entryTypes.ebe57e47-0c3e-420b-a5f2-f74dca7bb6ed.fieldLayouts.6068c8ca-7bb1-481c-ba93-705ebd72bf7d.tabs.0.elementCondition', 'null'),
('entryTypes.ebe57e47-0c3e-420b-a5f2-f74dca7bb6ed.fieldLayouts.6068c8ca-7bb1-481c-ba93-705ebd72bf7d.tabs.0.elements.0.autocapitalize', 'true'),
('entryTypes.ebe57e47-0c3e-420b-a5f2-f74dca7bb6ed.fieldLayouts.6068c8ca-7bb1-481c-ba93-705ebd72bf7d.tabs.0.elements.0.autocomplete', 'false'),
('entryTypes.ebe57e47-0c3e-420b-a5f2-f74dca7bb6ed.fieldLayouts.6068c8ca-7bb1-481c-ba93-705ebd72bf7d.tabs.0.elements.0.autocorrect', 'true'),
('entryTypes.ebe57e47-0c3e-420b-a5f2-f74dca7bb6ed.fieldLayouts.6068c8ca-7bb1-481c-ba93-705ebd72bf7d.tabs.0.elements.0.class', 'null'),
('entryTypes.ebe57e47-0c3e-420b-a5f2-f74dca7bb6ed.fieldLayouts.6068c8ca-7bb1-481c-ba93-705ebd72bf7d.tabs.0.elements.0.disabled', 'false'),
('entryTypes.ebe57e47-0c3e-420b-a5f2-f74dca7bb6ed.fieldLayouts.6068c8ca-7bb1-481c-ba93-705ebd72bf7d.tabs.0.elements.0.elementCondition', 'null'),
('entryTypes.ebe57e47-0c3e-420b-a5f2-f74dca7bb6ed.fieldLayouts.6068c8ca-7bb1-481c-ba93-705ebd72bf7d.tabs.0.elements.0.id', 'null'),
('entryTypes.ebe57e47-0c3e-420b-a5f2-f74dca7bb6ed.fieldLayouts.6068c8ca-7bb1-481c-ba93-705ebd72bf7d.tabs.0.elements.0.instructions', 'null'),
('entryTypes.ebe57e47-0c3e-420b-a5f2-f74dca7bb6ed.fieldLayouts.6068c8ca-7bb1-481c-ba93-705ebd72bf7d.tabs.0.elements.0.label', 'null'),
('entryTypes.ebe57e47-0c3e-420b-a5f2-f74dca7bb6ed.fieldLayouts.6068c8ca-7bb1-481c-ba93-705ebd72bf7d.tabs.0.elements.0.max', 'null'),
('entryTypes.ebe57e47-0c3e-420b-a5f2-f74dca7bb6ed.fieldLayouts.6068c8ca-7bb1-481c-ba93-705ebd72bf7d.tabs.0.elements.0.min', 'null'),
('entryTypes.ebe57e47-0c3e-420b-a5f2-f74dca7bb6ed.fieldLayouts.6068c8ca-7bb1-481c-ba93-705ebd72bf7d.tabs.0.elements.0.name', 'null'),
('entryTypes.ebe57e47-0c3e-420b-a5f2-f74dca7bb6ed.fieldLayouts.6068c8ca-7bb1-481c-ba93-705ebd72bf7d.tabs.0.elements.0.orientation', 'null'),
('entryTypes.ebe57e47-0c3e-420b-a5f2-f74dca7bb6ed.fieldLayouts.6068c8ca-7bb1-481c-ba93-705ebd72bf7d.tabs.0.elements.0.placeholder', 'null'),
('entryTypes.ebe57e47-0c3e-420b-a5f2-f74dca7bb6ed.fieldLayouts.6068c8ca-7bb1-481c-ba93-705ebd72bf7d.tabs.0.elements.0.readonly', 'false'),
('entryTypes.ebe57e47-0c3e-420b-a5f2-f74dca7bb6ed.fieldLayouts.6068c8ca-7bb1-481c-ba93-705ebd72bf7d.tabs.0.elements.0.requirable', 'false'),
('entryTypes.ebe57e47-0c3e-420b-a5f2-f74dca7bb6ed.fieldLayouts.6068c8ca-7bb1-481c-ba93-705ebd72bf7d.tabs.0.elements.0.size', 'null'),
('entryTypes.ebe57e47-0c3e-420b-a5f2-f74dca7bb6ed.fieldLayouts.6068c8ca-7bb1-481c-ba93-705ebd72bf7d.tabs.0.elements.0.step', 'null'),
('entryTypes.ebe57e47-0c3e-420b-a5f2-f74dca7bb6ed.fieldLayouts.6068c8ca-7bb1-481c-ba93-705ebd72bf7d.tabs.0.elements.0.tip', 'null'),
('entryTypes.ebe57e47-0c3e-420b-a5f2-f74dca7bb6ed.fieldLayouts.6068c8ca-7bb1-481c-ba93-705ebd72bf7d.tabs.0.elements.0.title', 'null'),
('entryTypes.ebe57e47-0c3e-420b-a5f2-f74dca7bb6ed.fieldLayouts.6068c8ca-7bb1-481c-ba93-705ebd72bf7d.tabs.0.elements.0.type', '\"craft\\\\fieldlayoutelements\\\\entries\\\\EntryTitleField\"'),
('entryTypes.ebe57e47-0c3e-420b-a5f2-f74dca7bb6ed.fieldLayouts.6068c8ca-7bb1-481c-ba93-705ebd72bf7d.tabs.0.elements.0.uid', '\"5a7d382a-4423-426e-b35b-dc513e0f17a7\"'),
('entryTypes.ebe57e47-0c3e-420b-a5f2-f74dca7bb6ed.fieldLayouts.6068c8ca-7bb1-481c-ba93-705ebd72bf7d.tabs.0.elements.0.userCondition', 'null'),
('entryTypes.ebe57e47-0c3e-420b-a5f2-f74dca7bb6ed.fieldLayouts.6068c8ca-7bb1-481c-ba93-705ebd72bf7d.tabs.0.elements.0.warning', 'null'),
('entryTypes.ebe57e47-0c3e-420b-a5f2-f74dca7bb6ed.fieldLayouts.6068c8ca-7bb1-481c-ba93-705ebd72bf7d.tabs.0.elements.0.width', '100'),
('entryTypes.ebe57e47-0c3e-420b-a5f2-f74dca7bb6ed.fieldLayouts.6068c8ca-7bb1-481c-ba93-705ebd72bf7d.tabs.0.elements.1.elementCondition', 'null'),
('entryTypes.ebe57e47-0c3e-420b-a5f2-f74dca7bb6ed.fieldLayouts.6068c8ca-7bb1-481c-ba93-705ebd72bf7d.tabs.0.elements.1.fieldUid', '\"293cac4b-bd6e-4c92-98ca-eb719b885cda\"');
INSERT INTO `projectconfig` (`path`, `value`) VALUES
('entryTypes.ebe57e47-0c3e-420b-a5f2-f74dca7bb6ed.fieldLayouts.6068c8ca-7bb1-481c-ba93-705ebd72bf7d.tabs.0.elements.1.instructions', 'null'),
('entryTypes.ebe57e47-0c3e-420b-a5f2-f74dca7bb6ed.fieldLayouts.6068c8ca-7bb1-481c-ba93-705ebd72bf7d.tabs.0.elements.1.label', 'null'),
('entryTypes.ebe57e47-0c3e-420b-a5f2-f74dca7bb6ed.fieldLayouts.6068c8ca-7bb1-481c-ba93-705ebd72bf7d.tabs.0.elements.1.required', 'false'),
('entryTypes.ebe57e47-0c3e-420b-a5f2-f74dca7bb6ed.fieldLayouts.6068c8ca-7bb1-481c-ba93-705ebd72bf7d.tabs.0.elements.1.tip', 'null'),
('entryTypes.ebe57e47-0c3e-420b-a5f2-f74dca7bb6ed.fieldLayouts.6068c8ca-7bb1-481c-ba93-705ebd72bf7d.tabs.0.elements.1.type', '\"craft\\\\fieldlayoutelements\\\\CustomField\"'),
('entryTypes.ebe57e47-0c3e-420b-a5f2-f74dca7bb6ed.fieldLayouts.6068c8ca-7bb1-481c-ba93-705ebd72bf7d.tabs.0.elements.1.uid', '\"3aaa511c-10f9-46bb-96c7-89bbcca03d44\"'),
('entryTypes.ebe57e47-0c3e-420b-a5f2-f74dca7bb6ed.fieldLayouts.6068c8ca-7bb1-481c-ba93-705ebd72bf7d.tabs.0.elements.1.userCondition', 'null'),
('entryTypes.ebe57e47-0c3e-420b-a5f2-f74dca7bb6ed.fieldLayouts.6068c8ca-7bb1-481c-ba93-705ebd72bf7d.tabs.0.elements.1.warning', 'null'),
('entryTypes.ebe57e47-0c3e-420b-a5f2-f74dca7bb6ed.fieldLayouts.6068c8ca-7bb1-481c-ba93-705ebd72bf7d.tabs.0.elements.1.width', '100'),
('entryTypes.ebe57e47-0c3e-420b-a5f2-f74dca7bb6ed.fieldLayouts.6068c8ca-7bb1-481c-ba93-705ebd72bf7d.tabs.0.elements.2.elementCondition', 'null'),
('entryTypes.ebe57e47-0c3e-420b-a5f2-f74dca7bb6ed.fieldLayouts.6068c8ca-7bb1-481c-ba93-705ebd72bf7d.tabs.0.elements.2.fieldUid', '\"907b94e8-b3cb-408b-a4ed-d497104b2d55\"'),
('entryTypes.ebe57e47-0c3e-420b-a5f2-f74dca7bb6ed.fieldLayouts.6068c8ca-7bb1-481c-ba93-705ebd72bf7d.tabs.0.elements.2.instructions', 'null'),
('entryTypes.ebe57e47-0c3e-420b-a5f2-f74dca7bb6ed.fieldLayouts.6068c8ca-7bb1-481c-ba93-705ebd72bf7d.tabs.0.elements.2.label', 'null'),
('entryTypes.ebe57e47-0c3e-420b-a5f2-f74dca7bb6ed.fieldLayouts.6068c8ca-7bb1-481c-ba93-705ebd72bf7d.tabs.0.elements.2.required', 'false'),
('entryTypes.ebe57e47-0c3e-420b-a5f2-f74dca7bb6ed.fieldLayouts.6068c8ca-7bb1-481c-ba93-705ebd72bf7d.tabs.0.elements.2.tip', 'null'),
('entryTypes.ebe57e47-0c3e-420b-a5f2-f74dca7bb6ed.fieldLayouts.6068c8ca-7bb1-481c-ba93-705ebd72bf7d.tabs.0.elements.2.type', '\"craft\\\\fieldlayoutelements\\\\CustomField\"'),
('entryTypes.ebe57e47-0c3e-420b-a5f2-f74dca7bb6ed.fieldLayouts.6068c8ca-7bb1-481c-ba93-705ebd72bf7d.tabs.0.elements.2.uid', '\"c10cc151-7231-481a-9232-434d7cd2ac7b\"'),
('entryTypes.ebe57e47-0c3e-420b-a5f2-f74dca7bb6ed.fieldLayouts.6068c8ca-7bb1-481c-ba93-705ebd72bf7d.tabs.0.elements.2.userCondition', 'null'),
('entryTypes.ebe57e47-0c3e-420b-a5f2-f74dca7bb6ed.fieldLayouts.6068c8ca-7bb1-481c-ba93-705ebd72bf7d.tabs.0.elements.2.warning', 'null'),
('entryTypes.ebe57e47-0c3e-420b-a5f2-f74dca7bb6ed.fieldLayouts.6068c8ca-7bb1-481c-ba93-705ebd72bf7d.tabs.0.elements.2.width', '100'),
('entryTypes.ebe57e47-0c3e-420b-a5f2-f74dca7bb6ed.fieldLayouts.6068c8ca-7bb1-481c-ba93-705ebd72bf7d.tabs.0.elements.3.elementCondition', 'null'),
('entryTypes.ebe57e47-0c3e-420b-a5f2-f74dca7bb6ed.fieldLayouts.6068c8ca-7bb1-481c-ba93-705ebd72bf7d.tabs.0.elements.3.fieldUid', '\"7acc60ca-d954-466f-9d9c-79ecb579ed62\"'),
('entryTypes.ebe57e47-0c3e-420b-a5f2-f74dca7bb6ed.fieldLayouts.6068c8ca-7bb1-481c-ba93-705ebd72bf7d.tabs.0.elements.3.instructions', 'null'),
('entryTypes.ebe57e47-0c3e-420b-a5f2-f74dca7bb6ed.fieldLayouts.6068c8ca-7bb1-481c-ba93-705ebd72bf7d.tabs.0.elements.3.label', 'null'),
('entryTypes.ebe57e47-0c3e-420b-a5f2-f74dca7bb6ed.fieldLayouts.6068c8ca-7bb1-481c-ba93-705ebd72bf7d.tabs.0.elements.3.required', 'false'),
('entryTypes.ebe57e47-0c3e-420b-a5f2-f74dca7bb6ed.fieldLayouts.6068c8ca-7bb1-481c-ba93-705ebd72bf7d.tabs.0.elements.3.tip', 'null'),
('entryTypes.ebe57e47-0c3e-420b-a5f2-f74dca7bb6ed.fieldLayouts.6068c8ca-7bb1-481c-ba93-705ebd72bf7d.tabs.0.elements.3.type', '\"craft\\\\fieldlayoutelements\\\\CustomField\"'),
('entryTypes.ebe57e47-0c3e-420b-a5f2-f74dca7bb6ed.fieldLayouts.6068c8ca-7bb1-481c-ba93-705ebd72bf7d.tabs.0.elements.3.uid', '\"8fabc35c-f281-47dc-9acc-9ef89cd58feb\"'),
('entryTypes.ebe57e47-0c3e-420b-a5f2-f74dca7bb6ed.fieldLayouts.6068c8ca-7bb1-481c-ba93-705ebd72bf7d.tabs.0.elements.3.userCondition', 'null'),
('entryTypes.ebe57e47-0c3e-420b-a5f2-f74dca7bb6ed.fieldLayouts.6068c8ca-7bb1-481c-ba93-705ebd72bf7d.tabs.0.elements.3.warning', 'null'),
('entryTypes.ebe57e47-0c3e-420b-a5f2-f74dca7bb6ed.fieldLayouts.6068c8ca-7bb1-481c-ba93-705ebd72bf7d.tabs.0.elements.3.width', '50'),
('entryTypes.ebe57e47-0c3e-420b-a5f2-f74dca7bb6ed.fieldLayouts.6068c8ca-7bb1-481c-ba93-705ebd72bf7d.tabs.0.elements.4.elementCondition', 'null'),
('entryTypes.ebe57e47-0c3e-420b-a5f2-f74dca7bb6ed.fieldLayouts.6068c8ca-7bb1-481c-ba93-705ebd72bf7d.tabs.0.elements.4.fieldUid', '\"be50f99b-b84e-45d6-99c6-9b79e5c52560\"'),
('entryTypes.ebe57e47-0c3e-420b-a5f2-f74dca7bb6ed.fieldLayouts.6068c8ca-7bb1-481c-ba93-705ebd72bf7d.tabs.0.elements.4.instructions', 'null'),
('entryTypes.ebe57e47-0c3e-420b-a5f2-f74dca7bb6ed.fieldLayouts.6068c8ca-7bb1-481c-ba93-705ebd72bf7d.tabs.0.elements.4.label', 'null'),
('entryTypes.ebe57e47-0c3e-420b-a5f2-f74dca7bb6ed.fieldLayouts.6068c8ca-7bb1-481c-ba93-705ebd72bf7d.tabs.0.elements.4.required', 'false'),
('entryTypes.ebe57e47-0c3e-420b-a5f2-f74dca7bb6ed.fieldLayouts.6068c8ca-7bb1-481c-ba93-705ebd72bf7d.tabs.0.elements.4.tip', 'null'),
('entryTypes.ebe57e47-0c3e-420b-a5f2-f74dca7bb6ed.fieldLayouts.6068c8ca-7bb1-481c-ba93-705ebd72bf7d.tabs.0.elements.4.type', '\"craft\\\\fieldlayoutelements\\\\CustomField\"'),
('entryTypes.ebe57e47-0c3e-420b-a5f2-f74dca7bb6ed.fieldLayouts.6068c8ca-7bb1-481c-ba93-705ebd72bf7d.tabs.0.elements.4.uid', '\"14fe1c68-d5cb-4070-84fa-d20e8c15d6df\"'),
('entryTypes.ebe57e47-0c3e-420b-a5f2-f74dca7bb6ed.fieldLayouts.6068c8ca-7bb1-481c-ba93-705ebd72bf7d.tabs.0.elements.4.userCondition', 'null'),
('entryTypes.ebe57e47-0c3e-420b-a5f2-f74dca7bb6ed.fieldLayouts.6068c8ca-7bb1-481c-ba93-705ebd72bf7d.tabs.0.elements.4.warning', 'null'),
('entryTypes.ebe57e47-0c3e-420b-a5f2-f74dca7bb6ed.fieldLayouts.6068c8ca-7bb1-481c-ba93-705ebd72bf7d.tabs.0.elements.4.width', '50'),
('entryTypes.ebe57e47-0c3e-420b-a5f2-f74dca7bb6ed.fieldLayouts.6068c8ca-7bb1-481c-ba93-705ebd72bf7d.tabs.0.name', '\"Content\"'),
('entryTypes.ebe57e47-0c3e-420b-a5f2-f74dca7bb6ed.fieldLayouts.6068c8ca-7bb1-481c-ba93-705ebd72bf7d.tabs.0.uid', '\"6ac94b75-691d-40c6-b678-2aa8dee3aa8d\"'),
('entryTypes.ebe57e47-0c3e-420b-a5f2-f74dca7bb6ed.fieldLayouts.6068c8ca-7bb1-481c-ba93-705ebd72bf7d.tabs.0.userCondition', 'null'),
('entryTypes.ebe57e47-0c3e-420b-a5f2-f74dca7bb6ed.handle', '\"blogOverview\"'),
('entryTypes.ebe57e47-0c3e-420b-a5f2-f74dca7bb6ed.hasTitleField', 'true'),
('entryTypes.ebe57e47-0c3e-420b-a5f2-f74dca7bb6ed.name', '\"Blog Overview\"'),
('entryTypes.ebe57e47-0c3e-420b-a5f2-f74dca7bb6ed.section', '\"da7f3bc1-4533-411c-a8db-8637e8ca2282\"'),
('entryTypes.ebe57e47-0c3e-420b-a5f2-f74dca7bb6ed.sortOrder', '1'),
('entryTypes.ebe57e47-0c3e-420b-a5f2-f74dca7bb6ed.titleFormat', '\"{section.name|raw}\"'),
('entryTypes.ebe57e47-0c3e-420b-a5f2-f74dca7bb6ed.titleTranslationKeyFormat', 'null'),
('entryTypes.ebe57e47-0c3e-420b-a5f2-f74dca7bb6ed.titleTranslationMethod', '\"site\"'),
('entryTypes.f0c8f2e7-dfeb-4a2b-a663-c1f3742952c4.fieldLayouts.db5594fb-0c00-4d15-9ec1-91845af66403.tabs.0.elementCondition', 'null'),
('entryTypes.f0c8f2e7-dfeb-4a2b-a663-c1f3742952c4.fieldLayouts.db5594fb-0c00-4d15-9ec1-91845af66403.tabs.0.elements.0.autocapitalize', 'true'),
('entryTypes.f0c8f2e7-dfeb-4a2b-a663-c1f3742952c4.fieldLayouts.db5594fb-0c00-4d15-9ec1-91845af66403.tabs.0.elements.0.autocomplete', 'false'),
('entryTypes.f0c8f2e7-dfeb-4a2b-a663-c1f3742952c4.fieldLayouts.db5594fb-0c00-4d15-9ec1-91845af66403.tabs.0.elements.0.autocorrect', 'true'),
('entryTypes.f0c8f2e7-dfeb-4a2b-a663-c1f3742952c4.fieldLayouts.db5594fb-0c00-4d15-9ec1-91845af66403.tabs.0.elements.0.class', 'null'),
('entryTypes.f0c8f2e7-dfeb-4a2b-a663-c1f3742952c4.fieldLayouts.db5594fb-0c00-4d15-9ec1-91845af66403.tabs.0.elements.0.disabled', 'false'),
('entryTypes.f0c8f2e7-dfeb-4a2b-a663-c1f3742952c4.fieldLayouts.db5594fb-0c00-4d15-9ec1-91845af66403.tabs.0.elements.0.elementCondition', 'null'),
('entryTypes.f0c8f2e7-dfeb-4a2b-a663-c1f3742952c4.fieldLayouts.db5594fb-0c00-4d15-9ec1-91845af66403.tabs.0.elements.0.id', 'null'),
('entryTypes.f0c8f2e7-dfeb-4a2b-a663-c1f3742952c4.fieldLayouts.db5594fb-0c00-4d15-9ec1-91845af66403.tabs.0.elements.0.instructions', 'null'),
('entryTypes.f0c8f2e7-dfeb-4a2b-a663-c1f3742952c4.fieldLayouts.db5594fb-0c00-4d15-9ec1-91845af66403.tabs.0.elements.0.label', 'null'),
('entryTypes.f0c8f2e7-dfeb-4a2b-a663-c1f3742952c4.fieldLayouts.db5594fb-0c00-4d15-9ec1-91845af66403.tabs.0.elements.0.max', 'null'),
('entryTypes.f0c8f2e7-dfeb-4a2b-a663-c1f3742952c4.fieldLayouts.db5594fb-0c00-4d15-9ec1-91845af66403.tabs.0.elements.0.min', 'null'),
('entryTypes.f0c8f2e7-dfeb-4a2b-a663-c1f3742952c4.fieldLayouts.db5594fb-0c00-4d15-9ec1-91845af66403.tabs.0.elements.0.name', 'null'),
('entryTypes.f0c8f2e7-dfeb-4a2b-a663-c1f3742952c4.fieldLayouts.db5594fb-0c00-4d15-9ec1-91845af66403.tabs.0.elements.0.orientation', 'null'),
('entryTypes.f0c8f2e7-dfeb-4a2b-a663-c1f3742952c4.fieldLayouts.db5594fb-0c00-4d15-9ec1-91845af66403.tabs.0.elements.0.placeholder', 'null'),
('entryTypes.f0c8f2e7-dfeb-4a2b-a663-c1f3742952c4.fieldLayouts.db5594fb-0c00-4d15-9ec1-91845af66403.tabs.0.elements.0.readonly', 'false'),
('entryTypes.f0c8f2e7-dfeb-4a2b-a663-c1f3742952c4.fieldLayouts.db5594fb-0c00-4d15-9ec1-91845af66403.tabs.0.elements.0.requirable', 'false'),
('entryTypes.f0c8f2e7-dfeb-4a2b-a663-c1f3742952c4.fieldLayouts.db5594fb-0c00-4d15-9ec1-91845af66403.tabs.0.elements.0.size', 'null'),
('entryTypes.f0c8f2e7-dfeb-4a2b-a663-c1f3742952c4.fieldLayouts.db5594fb-0c00-4d15-9ec1-91845af66403.tabs.0.elements.0.step', 'null'),
('entryTypes.f0c8f2e7-dfeb-4a2b-a663-c1f3742952c4.fieldLayouts.db5594fb-0c00-4d15-9ec1-91845af66403.tabs.0.elements.0.tip', 'null'),
('entryTypes.f0c8f2e7-dfeb-4a2b-a663-c1f3742952c4.fieldLayouts.db5594fb-0c00-4d15-9ec1-91845af66403.tabs.0.elements.0.title', 'null'),
('entryTypes.f0c8f2e7-dfeb-4a2b-a663-c1f3742952c4.fieldLayouts.db5594fb-0c00-4d15-9ec1-91845af66403.tabs.0.elements.0.type', '\"craft\\\\fieldlayoutelements\\\\entries\\\\EntryTitleField\"'),
('entryTypes.f0c8f2e7-dfeb-4a2b-a663-c1f3742952c4.fieldLayouts.db5594fb-0c00-4d15-9ec1-91845af66403.tabs.0.elements.0.uid', '\"68e37647-2601-47c9-a9a8-b00bfa73e2ae\"'),
('entryTypes.f0c8f2e7-dfeb-4a2b-a663-c1f3742952c4.fieldLayouts.db5594fb-0c00-4d15-9ec1-91845af66403.tabs.0.elements.0.userCondition', 'null'),
('entryTypes.f0c8f2e7-dfeb-4a2b-a663-c1f3742952c4.fieldLayouts.db5594fb-0c00-4d15-9ec1-91845af66403.tabs.0.elements.0.warning', 'null'),
('entryTypes.f0c8f2e7-dfeb-4a2b-a663-c1f3742952c4.fieldLayouts.db5594fb-0c00-4d15-9ec1-91845af66403.tabs.0.elements.0.width', '100'),
('entryTypes.f0c8f2e7-dfeb-4a2b-a663-c1f3742952c4.fieldLayouts.db5594fb-0c00-4d15-9ec1-91845af66403.tabs.0.elements.1.elementCondition', 'null'),
('entryTypes.f0c8f2e7-dfeb-4a2b-a663-c1f3742952c4.fieldLayouts.db5594fb-0c00-4d15-9ec1-91845af66403.tabs.0.elements.1.fieldUid', '\"293cac4b-bd6e-4c92-98ca-eb719b885cda\"'),
('entryTypes.f0c8f2e7-dfeb-4a2b-a663-c1f3742952c4.fieldLayouts.db5594fb-0c00-4d15-9ec1-91845af66403.tabs.0.elements.1.instructions', 'null'),
('entryTypes.f0c8f2e7-dfeb-4a2b-a663-c1f3742952c4.fieldLayouts.db5594fb-0c00-4d15-9ec1-91845af66403.tabs.0.elements.1.label', 'null'),
('entryTypes.f0c8f2e7-dfeb-4a2b-a663-c1f3742952c4.fieldLayouts.db5594fb-0c00-4d15-9ec1-91845af66403.tabs.0.elements.1.required', 'false'),
('entryTypes.f0c8f2e7-dfeb-4a2b-a663-c1f3742952c4.fieldLayouts.db5594fb-0c00-4d15-9ec1-91845af66403.tabs.0.elements.1.tip', 'null'),
('entryTypes.f0c8f2e7-dfeb-4a2b-a663-c1f3742952c4.fieldLayouts.db5594fb-0c00-4d15-9ec1-91845af66403.tabs.0.elements.1.type', '\"craft\\\\fieldlayoutelements\\\\CustomField\"'),
('entryTypes.f0c8f2e7-dfeb-4a2b-a663-c1f3742952c4.fieldLayouts.db5594fb-0c00-4d15-9ec1-91845af66403.tabs.0.elements.1.uid', '\"5ca60539-cd75-43ac-b2f0-04b0abb61e41\"'),
('entryTypes.f0c8f2e7-dfeb-4a2b-a663-c1f3742952c4.fieldLayouts.db5594fb-0c00-4d15-9ec1-91845af66403.tabs.0.elements.1.userCondition', 'null'),
('entryTypes.f0c8f2e7-dfeb-4a2b-a663-c1f3742952c4.fieldLayouts.db5594fb-0c00-4d15-9ec1-91845af66403.tabs.0.elements.1.warning', 'null'),
('entryTypes.f0c8f2e7-dfeb-4a2b-a663-c1f3742952c4.fieldLayouts.db5594fb-0c00-4d15-9ec1-91845af66403.tabs.0.elements.1.width', '100'),
('entryTypes.f0c8f2e7-dfeb-4a2b-a663-c1f3742952c4.fieldLayouts.db5594fb-0c00-4d15-9ec1-91845af66403.tabs.0.elements.2.elementCondition', 'null'),
('entryTypes.f0c8f2e7-dfeb-4a2b-a663-c1f3742952c4.fieldLayouts.db5594fb-0c00-4d15-9ec1-91845af66403.tabs.0.elements.2.fieldUid', '\"907b94e8-b3cb-408b-a4ed-d497104b2d55\"'),
('entryTypes.f0c8f2e7-dfeb-4a2b-a663-c1f3742952c4.fieldLayouts.db5594fb-0c00-4d15-9ec1-91845af66403.tabs.0.elements.2.instructions', 'null'),
('entryTypes.f0c8f2e7-dfeb-4a2b-a663-c1f3742952c4.fieldLayouts.db5594fb-0c00-4d15-9ec1-91845af66403.tabs.0.elements.2.label', 'null'),
('entryTypes.f0c8f2e7-dfeb-4a2b-a663-c1f3742952c4.fieldLayouts.db5594fb-0c00-4d15-9ec1-91845af66403.tabs.0.elements.2.required', 'false'),
('entryTypes.f0c8f2e7-dfeb-4a2b-a663-c1f3742952c4.fieldLayouts.db5594fb-0c00-4d15-9ec1-91845af66403.tabs.0.elements.2.tip', 'null'),
('entryTypes.f0c8f2e7-dfeb-4a2b-a663-c1f3742952c4.fieldLayouts.db5594fb-0c00-4d15-9ec1-91845af66403.tabs.0.elements.2.type', '\"craft\\\\fieldlayoutelements\\\\CustomField\"'),
('entryTypes.f0c8f2e7-dfeb-4a2b-a663-c1f3742952c4.fieldLayouts.db5594fb-0c00-4d15-9ec1-91845af66403.tabs.0.elements.2.uid', '\"939dab04-8389-4ebe-9120-1fe926d573c5\"'),
('entryTypes.f0c8f2e7-dfeb-4a2b-a663-c1f3742952c4.fieldLayouts.db5594fb-0c00-4d15-9ec1-91845af66403.tabs.0.elements.2.userCondition', 'null'),
('entryTypes.f0c8f2e7-dfeb-4a2b-a663-c1f3742952c4.fieldLayouts.db5594fb-0c00-4d15-9ec1-91845af66403.tabs.0.elements.2.warning', 'null'),
('entryTypes.f0c8f2e7-dfeb-4a2b-a663-c1f3742952c4.fieldLayouts.db5594fb-0c00-4d15-9ec1-91845af66403.tabs.0.elements.2.width', '100'),
('entryTypes.f0c8f2e7-dfeb-4a2b-a663-c1f3742952c4.fieldLayouts.db5594fb-0c00-4d15-9ec1-91845af66403.tabs.0.name', '\"Content\"'),
('entryTypes.f0c8f2e7-dfeb-4a2b-a663-c1f3742952c4.fieldLayouts.db5594fb-0c00-4d15-9ec1-91845af66403.tabs.0.uid', '\"522503e9-9cd3-4d1b-819e-d042c411f58e\"'),
('entryTypes.f0c8f2e7-dfeb-4a2b-a663-c1f3742952c4.fieldLayouts.db5594fb-0c00-4d15-9ec1-91845af66403.tabs.0.userCondition', 'null'),
('entryTypes.f0c8f2e7-dfeb-4a2b-a663-c1f3742952c4.handle', '\"karriereOverview\"'),
('entryTypes.f0c8f2e7-dfeb-4a2b-a663-c1f3742952c4.hasTitleField', 'false'),
('entryTypes.f0c8f2e7-dfeb-4a2b-a663-c1f3742952c4.name', '\"Karriere Overview\"'),
('entryTypes.f0c8f2e7-dfeb-4a2b-a663-c1f3742952c4.section', '\"7557a405-b2c2-48b3-8ab2-c99ea0fb0885\"'),
('entryTypes.f0c8f2e7-dfeb-4a2b-a663-c1f3742952c4.sortOrder', '1'),
('entryTypes.f0c8f2e7-dfeb-4a2b-a663-c1f3742952c4.titleFormat', '\"{section.name|raw}\"'),
('entryTypes.f0c8f2e7-dfeb-4a2b-a663-c1f3742952c4.titleTranslationKeyFormat', 'null'),
('entryTypes.f0c8f2e7-dfeb-4a2b-a663-c1f3742952c4.titleTranslationMethod', '\"site\"'),
('fieldGroups.68486210-b568-4359-8c37-732c21e7518c.name', '\"Job\"'),
('fieldGroups.72e1ba88-7b1d-4682-804e-9e8fd8099292.name', '\"Author\"'),
('fieldGroups.dd2cab1f-d433-4267-bf6a-52fbb391b10f.name', '\"Common\"'),
('fields.170b0e9a-f69f-46c0-810f-b14d6378d6fe.columnSuffix', '\"khobvvwf\"'),
('fields.170b0e9a-f69f-46c0-810f-b14d6378d6fe.contentColumnType', '\"text\"'),
('fields.170b0e9a-f69f-46c0-810f-b14d6378d6fe.fieldGroup', '\"dd2cab1f-d433-4267-bf6a-52fbb391b10f\"'),
('fields.170b0e9a-f69f-46c0-810f-b14d6378d6fe.handle', '\"postRichText\"'),
('fields.170b0e9a-f69f-46c0-810f-b14d6378d6fe.instructions', 'null'),
('fields.170b0e9a-f69f-46c0-810f-b14d6378d6fe.name', '\"Post Rich Text\"'),
('fields.170b0e9a-f69f-46c0-810f-b14d6378d6fe.searchable', 'false'),
('fields.170b0e9a-f69f-46c0-810f-b14d6378d6fe.settings.availableTransforms', '\"*\"'),
('fields.170b0e9a-f69f-46c0-810f-b14d6378d6fe.settings.availableVolumes', '\"*\"'),
('fields.170b0e9a-f69f-46c0-810f-b14d6378d6fe.settings.columnType', '\"text\"'),
('fields.170b0e9a-f69f-46c0-810f-b14d6378d6fe.settings.configSelectionMode', '\"choose\"'),
('fields.170b0e9a-f69f-46c0-810f-b14d6378d6fe.settings.defaultTransform', '\"\"'),
('fields.170b0e9a-f69f-46c0-810f-b14d6378d6fe.settings.manualConfig', '\"\"'),
('fields.170b0e9a-f69f-46c0-810f-b14d6378d6fe.settings.purifierConfig', 'null'),
('fields.170b0e9a-f69f-46c0-810f-b14d6378d6fe.settings.purifyHtml', 'true'),
('fields.170b0e9a-f69f-46c0-810f-b14d6378d6fe.settings.redactorConfig', 'null'),
('fields.170b0e9a-f69f-46c0-810f-b14d6378d6fe.settings.removeEmptyTags', 'false'),
('fields.170b0e9a-f69f-46c0-810f-b14d6378d6fe.settings.removeInlineStyles', 'false'),
('fields.170b0e9a-f69f-46c0-810f-b14d6378d6fe.settings.removeNbsp', 'false'),
('fields.170b0e9a-f69f-46c0-810f-b14d6378d6fe.settings.showHtmlButtonForNonAdmins', 'false'),
('fields.170b0e9a-f69f-46c0-810f-b14d6378d6fe.settings.showUnpermittedFiles', 'false'),
('fields.170b0e9a-f69f-46c0-810f-b14d6378d6fe.settings.showUnpermittedVolumes', 'false'),
('fields.170b0e9a-f69f-46c0-810f-b14d6378d6fe.settings.uiMode', '\"enlarged\"'),
('fields.170b0e9a-f69f-46c0-810f-b14d6378d6fe.translationKeyFormat', 'null'),
('fields.170b0e9a-f69f-46c0-810f-b14d6378d6fe.translationMethod', '\"none\"'),
('fields.170b0e9a-f69f-46c0-810f-b14d6378d6fe.type', '\"craft\\\\redactor\\\\Field\"'),
('fields.293cac4b-bd6e-4c92-98ca-eb719b885cda.columnSuffix', '\"lffxpplo\"'),
('fields.293cac4b-bd6e-4c92-98ca-eb719b885cda.contentColumnType', '\"text\"'),
('fields.293cac4b-bd6e-4c92-98ca-eb719b885cda.fieldGroup', '\"dd2cab1f-d433-4267-bf6a-52fbb391b10f\"'),
('fields.293cac4b-bd6e-4c92-98ca-eb719b885cda.handle', '\"postHeadline\"'),
('fields.293cac4b-bd6e-4c92-98ca-eb719b885cda.instructions', 'null'),
('fields.293cac4b-bd6e-4c92-98ca-eb719b885cda.name', '\"Post Headline\"'),
('fields.293cac4b-bd6e-4c92-98ca-eb719b885cda.searchable', 'false'),
('fields.293cac4b-bd6e-4c92-98ca-eb719b885cda.settings.byteLimit', 'null'),
('fields.293cac4b-bd6e-4c92-98ca-eb719b885cda.settings.charLimit', 'null'),
('fields.293cac4b-bd6e-4c92-98ca-eb719b885cda.settings.code', 'false'),
('fields.293cac4b-bd6e-4c92-98ca-eb719b885cda.settings.columnType', 'null'),
('fields.293cac4b-bd6e-4c92-98ca-eb719b885cda.settings.initialRows', '4'),
('fields.293cac4b-bd6e-4c92-98ca-eb719b885cda.settings.multiline', 'false'),
('fields.293cac4b-bd6e-4c92-98ca-eb719b885cda.settings.placeholder', 'null'),
('fields.293cac4b-bd6e-4c92-98ca-eb719b885cda.settings.uiMode', '\"normal\"'),
('fields.293cac4b-bd6e-4c92-98ca-eb719b885cda.translationKeyFormat', 'null'),
('fields.293cac4b-bd6e-4c92-98ca-eb719b885cda.translationMethod', '\"none\"'),
('fields.293cac4b-bd6e-4c92-98ca-eb719b885cda.type', '\"craft\\\\fields\\\\PlainText\"'),
('fields.3cfc0ef4-6ff2-433b-a452-2d40f9bc5988.columnSuffix', 'null'),
('fields.3cfc0ef4-6ff2-433b-a452-2d40f9bc5988.contentColumnType', '\"string\"'),
('fields.3cfc0ef4-6ff2-433b-a452-2d40f9bc5988.fieldGroup', '\"dd2cab1f-d433-4267-bf6a-52fbb391b10f\"'),
('fields.3cfc0ef4-6ff2-433b-a452-2d40f9bc5988.handle', '\"authorEntry\"'),
('fields.3cfc0ef4-6ff2-433b-a452-2d40f9bc5988.instructions', 'null'),
('fields.3cfc0ef4-6ff2-433b-a452-2d40f9bc5988.name', '\"Author Entry\"'),
('fields.3cfc0ef4-6ff2-433b-a452-2d40f9bc5988.searchable', 'false'),
('fields.3cfc0ef4-6ff2-433b-a452-2d40f9bc5988.settings.allowSelfRelations', 'false'),
('fields.3cfc0ef4-6ff2-433b-a452-2d40f9bc5988.settings.localizeRelations', 'false'),
('fields.3cfc0ef4-6ff2-433b-a452-2d40f9bc5988.settings.maxRelations', '1'),
('fields.3cfc0ef4-6ff2-433b-a452-2d40f9bc5988.settings.minRelations', '1'),
('fields.3cfc0ef4-6ff2-433b-a452-2d40f9bc5988.settings.selectionCondition.__assoc__.0.0', '\"elementType\"'),
('fields.3cfc0ef4-6ff2-433b-a452-2d40f9bc5988.settings.selectionCondition.__assoc__.0.1', '\"craft\\\\elements\\\\Entry\"'),
('fields.3cfc0ef4-6ff2-433b-a452-2d40f9bc5988.settings.selectionCondition.__assoc__.1.0', '\"fieldContext\"'),
('fields.3cfc0ef4-6ff2-433b-a452-2d40f9bc5988.settings.selectionCondition.__assoc__.1.1', '\"global\"'),
('fields.3cfc0ef4-6ff2-433b-a452-2d40f9bc5988.settings.selectionCondition.__assoc__.2.0', '\"class\"'),
('fields.3cfc0ef4-6ff2-433b-a452-2d40f9bc5988.settings.selectionCondition.__assoc__.2.1', '\"craft\\\\elements\\\\conditions\\\\entries\\\\EntryCondition\"'),
('fields.3cfc0ef4-6ff2-433b-a452-2d40f9bc5988.settings.selectionLabel', '\"Add The Author\"'),
('fields.3cfc0ef4-6ff2-433b-a452-2d40f9bc5988.settings.showSiteMenu', 'false'),
('fields.3cfc0ef4-6ff2-433b-a452-2d40f9bc5988.settings.source', 'null'),
('fields.3cfc0ef4-6ff2-433b-a452-2d40f9bc5988.settings.sources.0', '\"section:8032f6af-316d-418e-ab60-c0ce3c7f60f9\"'),
('fields.3cfc0ef4-6ff2-433b-a452-2d40f9bc5988.settings.targetSiteId', 'null'),
('fields.3cfc0ef4-6ff2-433b-a452-2d40f9bc5988.settings.validateRelatedElements', 'false'),
('fields.3cfc0ef4-6ff2-433b-a452-2d40f9bc5988.settings.viewMode', 'null'),
('fields.3cfc0ef4-6ff2-433b-a452-2d40f9bc5988.translationKeyFormat', 'null'),
('fields.3cfc0ef4-6ff2-433b-a452-2d40f9bc5988.translationMethod', '\"site\"'),
('fields.3cfc0ef4-6ff2-433b-a452-2d40f9bc5988.type', '\"craft\\\\fields\\\\Entries\"'),
('fields.530023de-e527-4210-9215-b3e3099b4402.columnSuffix', '\"jyxeuits\"'),
('fields.530023de-e527-4210-9215-b3e3099b4402.contentColumnType', '\"text\"'),
('fields.530023de-e527-4210-9215-b3e3099b4402.fieldGroup', '\"72e1ba88-7b1d-4682-804e-9e8fd8099292\"'),
('fields.530023de-e527-4210-9215-b3e3099b4402.handle', '\"authorName\"'),
('fields.530023de-e527-4210-9215-b3e3099b4402.instructions', 'null'),
('fields.530023de-e527-4210-9215-b3e3099b4402.name', '\"Author Name\"'),
('fields.530023de-e527-4210-9215-b3e3099b4402.searchable', 'false'),
('fields.530023de-e527-4210-9215-b3e3099b4402.settings.byteLimit', 'null'),
('fields.530023de-e527-4210-9215-b3e3099b4402.settings.charLimit', 'null'),
('fields.530023de-e527-4210-9215-b3e3099b4402.settings.code', 'false'),
('fields.530023de-e527-4210-9215-b3e3099b4402.settings.columnType', 'null'),
('fields.530023de-e527-4210-9215-b3e3099b4402.settings.initialRows', '4'),
('fields.530023de-e527-4210-9215-b3e3099b4402.settings.multiline', 'false'),
('fields.530023de-e527-4210-9215-b3e3099b4402.settings.placeholder', 'null'),
('fields.530023de-e527-4210-9215-b3e3099b4402.settings.uiMode', '\"normal\"'),
('fields.530023de-e527-4210-9215-b3e3099b4402.translationKeyFormat', 'null'),
('fields.530023de-e527-4210-9215-b3e3099b4402.translationMethod', '\"none\"'),
('fields.530023de-e527-4210-9215-b3e3099b4402.type', '\"craft\\\\fields\\\\PlainText\"'),
('fields.5477467a-150b-4bea-ad59-e1f19719c73f.columnSuffix', 'null'),
('fields.5477467a-150b-4bea-ad59-e1f19719c73f.contentColumnType', '\"string\"'),
('fields.5477467a-150b-4bea-ad59-e1f19719c73f.fieldGroup', '\"dd2cab1f-d433-4267-bf6a-52fbb391b10f\"'),
('fields.5477467a-150b-4bea-ad59-e1f19719c73f.handle', '\"blogCategory\"'),
('fields.5477467a-150b-4bea-ad59-e1f19719c73f.instructions', 'null'),
('fields.5477467a-150b-4bea-ad59-e1f19719c73f.name', '\"Blog Category\"'),
('fields.5477467a-150b-4bea-ad59-e1f19719c73f.searchable', 'false'),
('fields.5477467a-150b-4bea-ad59-e1f19719c73f.settings.allowLimit', 'false'),
('fields.5477467a-150b-4bea-ad59-e1f19719c73f.settings.allowMultipleSources', 'false'),
('fields.5477467a-150b-4bea-ad59-e1f19719c73f.settings.allowSelfRelations', 'false'),
('fields.5477467a-150b-4bea-ad59-e1f19719c73f.settings.branchLimit', '1'),
('fields.5477467a-150b-4bea-ad59-e1f19719c73f.settings.localizeRelations', 'false'),
('fields.5477467a-150b-4bea-ad59-e1f19719c73f.settings.maxRelations', 'null'),
('fields.5477467a-150b-4bea-ad59-e1f19719c73f.settings.minRelations', 'null'),
('fields.5477467a-150b-4bea-ad59-e1f19719c73f.settings.selectionLabel', 'null'),
('fields.5477467a-150b-4bea-ad59-e1f19719c73f.settings.showSiteMenu', 'false'),
('fields.5477467a-150b-4bea-ad59-e1f19719c73f.settings.source', '\"group:7b44a9da-6f5d-4f88-a792-23abfa8d885f\"'),
('fields.5477467a-150b-4bea-ad59-e1f19719c73f.settings.sources', '\"*\"'),
('fields.5477467a-150b-4bea-ad59-e1f19719c73f.settings.targetSiteId', 'null'),
('fields.5477467a-150b-4bea-ad59-e1f19719c73f.settings.validateRelatedElements', 'false'),
('fields.5477467a-150b-4bea-ad59-e1f19719c73f.settings.viewMode', 'null'),
('fields.5477467a-150b-4bea-ad59-e1f19719c73f.translationKeyFormat', 'null'),
('fields.5477467a-150b-4bea-ad59-e1f19719c73f.translationMethod', '\"site\"'),
('fields.5477467a-150b-4bea-ad59-e1f19719c73f.type', '\"craft\\\\fields\\\\Categories\"'),
('fields.7acc60ca-d954-466f-9d9c-79ecb579ed62.columnSuffix', 'null'),
('fields.7acc60ca-d954-466f-9d9c-79ecb579ed62.contentColumnType', '\"string\"'),
('fields.7acc60ca-d954-466f-9d9c-79ecb579ed62.fieldGroup', '\"dd2cab1f-d433-4267-bf6a-52fbb391b10f\"'),
('fields.7acc60ca-d954-466f-9d9c-79ecb579ed62.handle', '\"button\"'),
('fields.7acc60ca-d954-466f-9d9c-79ecb579ed62.instructions', 'null'),
('fields.7acc60ca-d954-466f-9d9c-79ecb579ed62.name', '\"Button\"'),
('fields.7acc60ca-d954-466f-9d9c-79ecb579ed62.searchable', 'false'),
('fields.7acc60ca-d954-466f-9d9c-79ecb579ed62.settings.allowCustomText', 'true'),
('fields.7acc60ca-d954-466f-9d9c-79ecb579ed62.settings.allowTarget', 'false'),
('fields.7acc60ca-d954-466f-9d9c-79ecb579ed62.settings.autoNoReferrer', 'false'),
('fields.7acc60ca-d954-466f-9d9c-79ecb579ed62.settings.customTextMaxLength', '0'),
('fields.7acc60ca-d954-466f-9d9c-79ecb579ed62.settings.customTextRequired', 'false'),
('fields.7acc60ca-d954-466f-9d9c-79ecb579ed62.settings.defaultLinkName', '\"entry\"'),
('fields.7acc60ca-d954-466f-9d9c-79ecb579ed62.settings.defaultText', '\"Mehr Informationen\"'),
('fields.7acc60ca-d954-466f-9d9c-79ecb579ed62.settings.enableAllLinkTypes', 'false'),
('fields.7acc60ca-d954-466f-9d9c-79ecb579ed62.settings.enableAriaLabel', 'false'),
('fields.7acc60ca-d954-466f-9d9c-79ecb579ed62.settings.enableElementCache', 'false'),
('fields.7acc60ca-d954-466f-9d9c-79ecb579ed62.settings.enableTitle', 'false'),
('fields.7acc60ca-d954-466f-9d9c-79ecb579ed62.settings.typeSettings.asset.allowCrossSiteLink', 'false'),
('fields.7acc60ca-d954-466f-9d9c-79ecb579ed62.settings.typeSettings.asset.allowCustomQuery', 'false'),
('fields.7acc60ca-d954-466f-9d9c-79ecb579ed62.settings.typeSettings.asset.enabled', 'false'),
('fields.7acc60ca-d954-466f-9d9c-79ecb579ed62.settings.typeSettings.asset.sources', '\"*\"'),
('fields.7acc60ca-d954-466f-9d9c-79ecb579ed62.settings.typeSettings.category.allowCrossSiteLink', 'false'),
('fields.7acc60ca-d954-466f-9d9c-79ecb579ed62.settings.typeSettings.category.allowCustomQuery', 'false'),
('fields.7acc60ca-d954-466f-9d9c-79ecb579ed62.settings.typeSettings.category.enabled', 'false'),
('fields.7acc60ca-d954-466f-9d9c-79ecb579ed62.settings.typeSettings.category.sources', '\"*\"'),
('fields.7acc60ca-d954-466f-9d9c-79ecb579ed62.settings.typeSettings.custom.allowAliases', 'false'),
('fields.7acc60ca-d954-466f-9d9c-79ecb579ed62.settings.typeSettings.custom.disableValidation', 'false'),
('fields.7acc60ca-d954-466f-9d9c-79ecb579ed62.settings.typeSettings.custom.enabled', 'false'),
('fields.7acc60ca-d954-466f-9d9c-79ecb579ed62.settings.typeSettings.email.allowAliases', 'false'),
('fields.7acc60ca-d954-466f-9d9c-79ecb579ed62.settings.typeSettings.email.disableValidation', 'false'),
('fields.7acc60ca-d954-466f-9d9c-79ecb579ed62.settings.typeSettings.email.enabled', 'false'),
('fields.7acc60ca-d954-466f-9d9c-79ecb579ed62.settings.typeSettings.entry.allowCrossSiteLink', 'false'),
('fields.7acc60ca-d954-466f-9d9c-79ecb579ed62.settings.typeSettings.entry.allowCustomQuery', 'false'),
('fields.7acc60ca-d954-466f-9d9c-79ecb579ed62.settings.typeSettings.entry.enabled', 'true'),
('fields.7acc60ca-d954-466f-9d9c-79ecb579ed62.settings.typeSettings.entry.sources', '\"*\"'),
('fields.7acc60ca-d954-466f-9d9c-79ecb579ed62.settings.typeSettings.site.enabled', 'false'),
('fields.7acc60ca-d954-466f-9d9c-79ecb579ed62.settings.typeSettings.site.sites', '\"*\"'),
('fields.7acc60ca-d954-466f-9d9c-79ecb579ed62.settings.typeSettings.tel.allowAliases', 'false'),
('fields.7acc60ca-d954-466f-9d9c-79ecb579ed62.settings.typeSettings.tel.disableValidation', 'false'),
('fields.7acc60ca-d954-466f-9d9c-79ecb579ed62.settings.typeSettings.tel.enabled', 'false'),
('fields.7acc60ca-d954-466f-9d9c-79ecb579ed62.settings.typeSettings.url.allowAliases', 'false'),
('fields.7acc60ca-d954-466f-9d9c-79ecb579ed62.settings.typeSettings.url.disableValidation', 'false'),
('fields.7acc60ca-d954-466f-9d9c-79ecb579ed62.settings.typeSettings.url.enabled', 'true'),
('fields.7acc60ca-d954-466f-9d9c-79ecb579ed62.settings.typeSettings.user.allowCrossSiteLink', 'false'),
('fields.7acc60ca-d954-466f-9d9c-79ecb579ed62.settings.typeSettings.user.allowCustomQuery', 'false'),
('fields.7acc60ca-d954-466f-9d9c-79ecb579ed62.settings.typeSettings.user.enabled', 'false'),
('fields.7acc60ca-d954-466f-9d9c-79ecb579ed62.settings.typeSettings.user.sources', '\"*\"'),
('fields.7acc60ca-d954-466f-9d9c-79ecb579ed62.translationKeyFormat', 'null'),
('fields.7acc60ca-d954-466f-9d9c-79ecb579ed62.translationMethod', '\"none\"'),
('fields.7acc60ca-d954-466f-9d9c-79ecb579ed62.type', '\"lenz\\\\linkfield\\\\fields\\\\LinkField\"'),
('fields.879b8fb2-8367-4ee2-846e-bd38b886d605.columnSuffix', 'null'),
('fields.879b8fb2-8367-4ee2-846e-bd38b886d605.contentColumnType', '\"string\"'),
('fields.879b8fb2-8367-4ee2-846e-bd38b886d605.fieldGroup', '\"dd2cab1f-d433-4267-bf6a-52fbb391b10f\"'),
('fields.879b8fb2-8367-4ee2-846e-bd38b886d605.handle', '\"postCompany\"'),
('fields.879b8fb2-8367-4ee2-846e-bd38b886d605.instructions', 'null'),
('fields.879b8fb2-8367-4ee2-846e-bd38b886d605.name', '\"Post Company\"'),
('fields.879b8fb2-8367-4ee2-846e-bd38b886d605.searchable', 'false'),
('fields.879b8fb2-8367-4ee2-846e-bd38b886d605.settings.allowLimit', 'false'),
('fields.879b8fb2-8367-4ee2-846e-bd38b886d605.settings.allowMultipleSources', 'false'),
('fields.879b8fb2-8367-4ee2-846e-bd38b886d605.settings.allowSelfRelations', 'false'),
('fields.879b8fb2-8367-4ee2-846e-bd38b886d605.settings.branchLimit', '1'),
('fields.879b8fb2-8367-4ee2-846e-bd38b886d605.settings.localizeRelations', 'false'),
('fields.879b8fb2-8367-4ee2-846e-bd38b886d605.settings.maxRelations', 'null'),
('fields.879b8fb2-8367-4ee2-846e-bd38b886d605.settings.minRelations', 'null'),
('fields.879b8fb2-8367-4ee2-846e-bd38b886d605.settings.selectionLabel', 'null'),
('fields.879b8fb2-8367-4ee2-846e-bd38b886d605.settings.showSiteMenu', 'false'),
('fields.879b8fb2-8367-4ee2-846e-bd38b886d605.settings.source', '\"group:3d8e84b0-a04d-41aa-b0b1-03a2b6171be0\"'),
('fields.879b8fb2-8367-4ee2-846e-bd38b886d605.settings.sources', '\"*\"'),
('fields.879b8fb2-8367-4ee2-846e-bd38b886d605.settings.targetSiteId', 'null'),
('fields.879b8fb2-8367-4ee2-846e-bd38b886d605.settings.validateRelatedElements', 'false'),
('fields.879b8fb2-8367-4ee2-846e-bd38b886d605.settings.viewMode', 'null'),
('fields.879b8fb2-8367-4ee2-846e-bd38b886d605.translationKeyFormat', 'null'),
('fields.879b8fb2-8367-4ee2-846e-bd38b886d605.translationMethod', '\"site\"'),
('fields.879b8fb2-8367-4ee2-846e-bd38b886d605.type', '\"craft\\\\fields\\\\Categories\"'),
('fields.907b94e8-b3cb-408b-a4ed-d497104b2d55.columnSuffix', '\"fdqywyjz\"'),
('fields.907b94e8-b3cb-408b-a4ed-d497104b2d55.contentColumnType', '\"text\"'),
('fields.907b94e8-b3cb-408b-a4ed-d497104b2d55.fieldGroup', '\"dd2cab1f-d433-4267-bf6a-52fbb391b10f\"'),
('fields.907b94e8-b3cb-408b-a4ed-d497104b2d55.handle', '\"postShortText\"'),
('fields.907b94e8-b3cb-408b-a4ed-d497104b2d55.instructions', 'null'),
('fields.907b94e8-b3cb-408b-a4ed-d497104b2d55.name', '\"Post Short Text\"'),
('fields.907b94e8-b3cb-408b-a4ed-d497104b2d55.searchable', 'false'),
('fields.907b94e8-b3cb-408b-a4ed-d497104b2d55.settings.byteLimit', 'null'),
('fields.907b94e8-b3cb-408b-a4ed-d497104b2d55.settings.charLimit', 'null'),
('fields.907b94e8-b3cb-408b-a4ed-d497104b2d55.settings.code', 'false'),
('fields.907b94e8-b3cb-408b-a4ed-d497104b2d55.settings.columnType', 'null'),
('fields.907b94e8-b3cb-408b-a4ed-d497104b2d55.settings.initialRows', '2'),
('fields.907b94e8-b3cb-408b-a4ed-d497104b2d55.settings.multiline', 'true'),
('fields.907b94e8-b3cb-408b-a4ed-d497104b2d55.settings.placeholder', 'null'),
('fields.907b94e8-b3cb-408b-a4ed-d497104b2d55.settings.uiMode', '\"normal\"'),
('fields.907b94e8-b3cb-408b-a4ed-d497104b2d55.translationKeyFormat', 'null'),
('fields.907b94e8-b3cb-408b-a4ed-d497104b2d55.translationMethod', '\"none\"'),
('fields.907b94e8-b3cb-408b-a4ed-d497104b2d55.type', '\"craft\\\\fields\\\\PlainText\"'),
('fields.913d328b-09f7-4108-8816-f81c35cb7d2a.columnSuffix', 'null'),
('fields.913d328b-09f7-4108-8816-f81c35cb7d2a.contentColumnType', '\"string\"'),
('fields.913d328b-09f7-4108-8816-f81c35cb7d2a.fieldGroup', '\"72e1ba88-7b1d-4682-804e-9e8fd8099292\"'),
('fields.913d328b-09f7-4108-8816-f81c35cb7d2a.handle', '\"authorImage\"'),
('fields.913d328b-09f7-4108-8816-f81c35cb7d2a.instructions', 'null'),
('fields.913d328b-09f7-4108-8816-f81c35cb7d2a.name', '\"Author Image\"'),
('fields.913d328b-09f7-4108-8816-f81c35cb7d2a.searchable', 'false'),
('fields.913d328b-09f7-4108-8816-f81c35cb7d2a.settings.allowedKinds', 'null'),
('fields.913d328b-09f7-4108-8816-f81c35cb7d2a.settings.allowSelfRelations', 'false'),
('fields.913d328b-09f7-4108-8816-f81c35cb7d2a.settings.allowSubfolders', 'false'),
('fields.913d328b-09f7-4108-8816-f81c35cb7d2a.settings.allowUploads', 'true'),
('fields.913d328b-09f7-4108-8816-f81c35cb7d2a.settings.defaultUploadLocationSource', '\"volume:cae04bf8-01a2-4040-b9cc-6584b31aaaae\"'),
('fields.913d328b-09f7-4108-8816-f81c35cb7d2a.settings.defaultUploadLocationSubpath', 'null'),
('fields.913d328b-09f7-4108-8816-f81c35cb7d2a.settings.localizeRelations', 'false'),
('fields.913d328b-09f7-4108-8816-f81c35cb7d2a.settings.maxRelations', '1'),
('fields.913d328b-09f7-4108-8816-f81c35cb7d2a.settings.minRelations', 'null'),
('fields.913d328b-09f7-4108-8816-f81c35cb7d2a.settings.previewMode', '\"full\"'),
('fields.913d328b-09f7-4108-8816-f81c35cb7d2a.settings.restrictedDefaultUploadSubpath', 'null'),
('fields.913d328b-09f7-4108-8816-f81c35cb7d2a.settings.restrictedLocationSource', '\"volume:cae04bf8-01a2-4040-b9cc-6584b31aaaae\"'),
('fields.913d328b-09f7-4108-8816-f81c35cb7d2a.settings.restrictedLocationSubpath', 'null'),
('fields.913d328b-09f7-4108-8816-f81c35cb7d2a.settings.restrictFiles', 'false'),
('fields.913d328b-09f7-4108-8816-f81c35cb7d2a.settings.restrictLocation', 'false'),
('fields.913d328b-09f7-4108-8816-f81c35cb7d2a.settings.selectionCondition.__assoc__.0.0', '\"elementType\"'),
('fields.913d328b-09f7-4108-8816-f81c35cb7d2a.settings.selectionCondition.__assoc__.0.1', '\"craft\\\\elements\\\\Asset\"'),
('fields.913d328b-09f7-4108-8816-f81c35cb7d2a.settings.selectionCondition.__assoc__.1.0', '\"fieldContext\"'),
('fields.913d328b-09f7-4108-8816-f81c35cb7d2a.settings.selectionCondition.__assoc__.1.1', '\"global\"'),
('fields.913d328b-09f7-4108-8816-f81c35cb7d2a.settings.selectionCondition.__assoc__.2.0', '\"class\"'),
('fields.913d328b-09f7-4108-8816-f81c35cb7d2a.settings.selectionCondition.__assoc__.2.1', '\"craft\\\\elements\\\\conditions\\\\assets\\\\AssetCondition\"'),
('fields.913d328b-09f7-4108-8816-f81c35cb7d2a.settings.selectionLabel', 'null'),
('fields.913d328b-09f7-4108-8816-f81c35cb7d2a.settings.showSiteMenu', 'false'),
('fields.913d328b-09f7-4108-8816-f81c35cb7d2a.settings.showUnpermittedFiles', 'false'),
('fields.913d328b-09f7-4108-8816-f81c35cb7d2a.settings.showUnpermittedVolumes', 'false'),
('fields.913d328b-09f7-4108-8816-f81c35cb7d2a.settings.source', 'null'),
('fields.913d328b-09f7-4108-8816-f81c35cb7d2a.settings.sources', '\"*\"'),
('fields.913d328b-09f7-4108-8816-f81c35cb7d2a.settings.targetSiteId', 'null'),
('fields.913d328b-09f7-4108-8816-f81c35cb7d2a.settings.validateRelatedElements', 'false'),
('fields.913d328b-09f7-4108-8816-f81c35cb7d2a.settings.viewMode', '\"list\"'),
('fields.913d328b-09f7-4108-8816-f81c35cb7d2a.translationKeyFormat', 'null'),
('fields.913d328b-09f7-4108-8816-f81c35cb7d2a.translationMethod', '\"site\"'),
('fields.913d328b-09f7-4108-8816-f81c35cb7d2a.type', '\"craft\\\\fields\\\\Assets\"'),
('fields.9b168937-c11f-4a7e-9741-f9d6aa77c9d0.columnSuffix', 'null'),
('fields.9b168937-c11f-4a7e-9741-f9d6aa77c9d0.contentColumnType', '\"string\"'),
('fields.9b168937-c11f-4a7e-9741-f9d6aa77c9d0.fieldGroup', '\"68486210-b568-4359-8c37-732c21e7518c\"'),
('fields.9b168937-c11f-4a7e-9741-f9d6aa77c9d0.handle', '\"jobDetail\"'),
('fields.9b168937-c11f-4a7e-9741-f9d6aa77c9d0.instructions', 'null'),
('fields.9b168937-c11f-4a7e-9741-f9d6aa77c9d0.name', '\"Job Detail\"'),
('fields.9b168937-c11f-4a7e-9741-f9d6aa77c9d0.searchable', 'false'),
('fields.9b168937-c11f-4a7e-9741-f9d6aa77c9d0.settings.blockTypeFields', '0'),
('fields.9b168937-c11f-4a7e-9741-f9d6aa77c9d0.settings.changedFieldIndicator', '2021789422'),
('fields.9b168937-c11f-4a7e-9741-f9d6aa77c9d0.settings.columns.__assoc__.0.0', '\"2855e71a-4ab6-45e5-b716-fe4cfc071f33\"'),
('fields.9b168937-c11f-4a7e-9741-f9d6aa77c9d0.settings.columns.__assoc__.0.1.__assoc__.0.0', '\"width\"'),
('fields.9b168937-c11f-4a7e-9741-f9d6aa77c9d0.settings.columns.__assoc__.0.1.__assoc__.0.1', '\"\"'),
('fields.9b168937-c11f-4a7e-9741-f9d6aa77c9d0.settings.columns.__assoc__.1.0', '\"9583ec6a-d404-475a-8632-f57bf1d4aa04\"'),
('fields.9b168937-c11f-4a7e-9741-f9d6aa77c9d0.settings.columns.__assoc__.1.1.__assoc__.0.0', '\"width\"'),
('fields.9b168937-c11f-4a7e-9741-f9d6aa77c9d0.settings.columns.__assoc__.1.1.__assoc__.0.1', '\"\"'),
('fields.9b168937-c11f-4a7e-9741-f9d6aa77c9d0.settings.columns.__assoc__.2.0', '\"4c833b87-8963-49bf-b039-fb9029ebcfa6\"'),
('fields.9b168937-c11f-4a7e-9741-f9d6aa77c9d0.settings.columns.__assoc__.2.1.__assoc__.0.0', '\"width\"'),
('fields.9b168937-c11f-4a7e-9741-f9d6aa77c9d0.settings.columns.__assoc__.2.1.__assoc__.0.1', '\"\"'),
('fields.9b168937-c11f-4a7e-9741-f9d6aa77c9d0.settings.columns.__assoc__.3.0', '\"e9361ffe-b7e5-47e5-b505-06837d3a9487\"'),
('fields.9b168937-c11f-4a7e-9741-f9d6aa77c9d0.settings.columns.__assoc__.3.1.__assoc__.0.0', '\"width\"'),
('fields.9b168937-c11f-4a7e-9741-f9d6aa77c9d0.settings.columns.__assoc__.3.1.__assoc__.0.1', '\"\"'),
('fields.9b168937-c11f-4a7e-9741-f9d6aa77c9d0.settings.columns.__assoc__.4.0', '\"26f05fc1-ee8e-4be8-95cb-ee95fc0ba4ea\"'),
('fields.9b168937-c11f-4a7e-9741-f9d6aa77c9d0.settings.columns.__assoc__.4.1.__assoc__.0.0', '\"width\"'),
('fields.9b168937-c11f-4a7e-9741-f9d6aa77c9d0.settings.columns.__assoc__.4.1.__assoc__.0.1', '\"\"'),
('fields.9b168937-c11f-4a7e-9741-f9d6aa77c9d0.settings.contentTable', '\"{{%stc_jobdetail}}\"'),
('fields.9b168937-c11f-4a7e-9741-f9d6aa77c9d0.settings.fieldLayout', '\"row\"'),
('fields.9b168937-c11f-4a7e-9741-f9d6aa77c9d0.settings.maxRows', 'null'),
('fields.9b168937-c11f-4a7e-9741-f9d6aa77c9d0.settings.minRows', 'null'),
('fields.9b168937-c11f-4a7e-9741-f9d6aa77c9d0.settings.propagationKeyFormat', 'null'),
('fields.9b168937-c11f-4a7e-9741-f9d6aa77c9d0.settings.propagationMethod', '\"all\"'),
('fields.9b168937-c11f-4a7e-9741-f9d6aa77c9d0.settings.selectionLabel', 'null'),
('fields.9b168937-c11f-4a7e-9741-f9d6aa77c9d0.settings.staticField', 'true'),
('fields.9b168937-c11f-4a7e-9741-f9d6aa77c9d0.translationKeyFormat', 'null'),
('fields.9b168937-c11f-4a7e-9741-f9d6aa77c9d0.translationMethod', '\"site\"'),
('fields.9b168937-c11f-4a7e-9741-f9d6aa77c9d0.type', '\"verbb\\\\supertable\\\\fields\\\\SuperTableField\"'),
('fields.be50f99b-b84e-45d6-99c6-9b79e5c52560.columnSuffix', 'null'),
('fields.be50f99b-b84e-45d6-99c6-9b79e5c52560.contentColumnType', '\"string\"'),
('fields.be50f99b-b84e-45d6-99c6-9b79e5c52560.fieldGroup', '\"dd2cab1f-d433-4267-bf6a-52fbb391b10f\"'),
('fields.be50f99b-b84e-45d6-99c6-9b79e5c52560.handle', '\"postImage\"'),
('fields.be50f99b-b84e-45d6-99c6-9b79e5c52560.instructions', 'null'),
('fields.be50f99b-b84e-45d6-99c6-9b79e5c52560.name', '\"Post Image\"'),
('fields.be50f99b-b84e-45d6-99c6-9b79e5c52560.searchable', 'false'),
('fields.be50f99b-b84e-45d6-99c6-9b79e5c52560.settings.allowedKinds.0', '\"image\"'),
('fields.be50f99b-b84e-45d6-99c6-9b79e5c52560.settings.allowSelfRelations', 'false'),
('fields.be50f99b-b84e-45d6-99c6-9b79e5c52560.settings.allowSubfolders', 'false'),
('fields.be50f99b-b84e-45d6-99c6-9b79e5c52560.settings.allowUploads', 'false'),
('fields.be50f99b-b84e-45d6-99c6-9b79e5c52560.settings.defaultUploadLocationSource', '\"volume:cae04bf8-01a2-4040-b9cc-6584b31aaaae\"'),
('fields.be50f99b-b84e-45d6-99c6-9b79e5c52560.settings.defaultUploadLocationSubpath', 'null'),
('fields.be50f99b-b84e-45d6-99c6-9b79e5c52560.settings.localizeRelations', 'false'),
('fields.be50f99b-b84e-45d6-99c6-9b79e5c52560.settings.maxRelations', '1'),
('fields.be50f99b-b84e-45d6-99c6-9b79e5c52560.settings.minRelations', 'null'),
('fields.be50f99b-b84e-45d6-99c6-9b79e5c52560.settings.previewMode', '\"full\"'),
('fields.be50f99b-b84e-45d6-99c6-9b79e5c52560.settings.restrictedDefaultUploadSubpath', 'null'),
('fields.be50f99b-b84e-45d6-99c6-9b79e5c52560.settings.restrictedLocationSource', '\"volume:cae04bf8-01a2-4040-b9cc-6584b31aaaae\"'),
('fields.be50f99b-b84e-45d6-99c6-9b79e5c52560.settings.restrictedLocationSubpath', 'null'),
('fields.be50f99b-b84e-45d6-99c6-9b79e5c52560.settings.restrictFiles', 'true'),
('fields.be50f99b-b84e-45d6-99c6-9b79e5c52560.settings.restrictLocation', 'false'),
('fields.be50f99b-b84e-45d6-99c6-9b79e5c52560.settings.selectionCondition.__assoc__.0.0', '\"elementType\"'),
('fields.be50f99b-b84e-45d6-99c6-9b79e5c52560.settings.selectionCondition.__assoc__.0.1', '\"craft\\\\elements\\\\Asset\"'),
('fields.be50f99b-b84e-45d6-99c6-9b79e5c52560.settings.selectionCondition.__assoc__.1.0', '\"fieldContext\"'),
('fields.be50f99b-b84e-45d6-99c6-9b79e5c52560.settings.selectionCondition.__assoc__.1.1', '\"global\"'),
('fields.be50f99b-b84e-45d6-99c6-9b79e5c52560.settings.selectionCondition.__assoc__.2.0', '\"class\"'),
('fields.be50f99b-b84e-45d6-99c6-9b79e5c52560.settings.selectionCondition.__assoc__.2.1', '\"craft\\\\elements\\\\conditions\\\\assets\\\\AssetCondition\"'),
('fields.be50f99b-b84e-45d6-99c6-9b79e5c52560.settings.selectionLabel', 'null'),
('fields.be50f99b-b84e-45d6-99c6-9b79e5c52560.settings.showSiteMenu', 'false'),
('fields.be50f99b-b84e-45d6-99c6-9b79e5c52560.settings.showUnpermittedFiles', 'false'),
('fields.be50f99b-b84e-45d6-99c6-9b79e5c52560.settings.showUnpermittedVolumes', 'false'),
('fields.be50f99b-b84e-45d6-99c6-9b79e5c52560.settings.source', 'null'),
('fields.be50f99b-b84e-45d6-99c6-9b79e5c52560.settings.sources', '\"*\"'),
('fields.be50f99b-b84e-45d6-99c6-9b79e5c52560.settings.targetSiteId', 'null'),
('fields.be50f99b-b84e-45d6-99c6-9b79e5c52560.settings.validateRelatedElements', 'false'),
('fields.be50f99b-b84e-45d6-99c6-9b79e5c52560.settings.viewMode', '\"list\"'),
('fields.be50f99b-b84e-45d6-99c6-9b79e5c52560.translationKeyFormat', 'null'),
('fields.be50f99b-b84e-45d6-99c6-9b79e5c52560.translationMethod', '\"site\"'),
('fields.be50f99b-b84e-45d6-99c6-9b79e5c52560.type', '\"craft\\\\fields\\\\Assets\"'),
('fields.c1d9166e-5308-4e91-9bf1-5618717bdcd8.columnSuffix', 'null'),
('fields.c1d9166e-5308-4e91-9bf1-5618717bdcd8.contentColumnType', '\"string\"'),
('fields.c1d9166e-5308-4e91-9bf1-5618717bdcd8.fieldGroup', '\"dd2cab1f-d433-4267-bf6a-52fbb391b10f\"'),
('fields.c1d9166e-5308-4e91-9bf1-5618717bdcd8.handle', '\"sofwareCategory\"'),
('fields.c1d9166e-5308-4e91-9bf1-5618717bdcd8.instructions', 'null'),
('fields.c1d9166e-5308-4e91-9bf1-5618717bdcd8.name', '\"Sofware Category\"'),
('fields.c1d9166e-5308-4e91-9bf1-5618717bdcd8.searchable', 'false'),
('fields.c1d9166e-5308-4e91-9bf1-5618717bdcd8.settings.allowLimit', 'false'),
('fields.c1d9166e-5308-4e91-9bf1-5618717bdcd8.settings.allowMultipleSources', 'false'),
('fields.c1d9166e-5308-4e91-9bf1-5618717bdcd8.settings.allowSelfRelations', 'false'),
('fields.c1d9166e-5308-4e91-9bf1-5618717bdcd8.settings.branchLimit', '1'),
('fields.c1d9166e-5308-4e91-9bf1-5618717bdcd8.settings.localizeRelations', 'false'),
('fields.c1d9166e-5308-4e91-9bf1-5618717bdcd8.settings.maxRelations', 'null'),
('fields.c1d9166e-5308-4e91-9bf1-5618717bdcd8.settings.minRelations', 'null'),
('fields.c1d9166e-5308-4e91-9bf1-5618717bdcd8.settings.selectionLabel', 'null'),
('fields.c1d9166e-5308-4e91-9bf1-5618717bdcd8.settings.showSiteMenu', 'false'),
('fields.c1d9166e-5308-4e91-9bf1-5618717bdcd8.settings.source', '\"group:8bbb286a-ac71-4e2a-8a91-3dbff9e26b3d\"'),
('fields.c1d9166e-5308-4e91-9bf1-5618717bdcd8.settings.sources', '\"*\"'),
('fields.c1d9166e-5308-4e91-9bf1-5618717bdcd8.settings.targetSiteId', 'null'),
('fields.c1d9166e-5308-4e91-9bf1-5618717bdcd8.settings.validateRelatedElements', 'false'),
('fields.c1d9166e-5308-4e91-9bf1-5618717bdcd8.settings.viewMode', 'null'),
('fields.c1d9166e-5308-4e91-9bf1-5618717bdcd8.translationKeyFormat', 'null'),
('fields.c1d9166e-5308-4e91-9bf1-5618717bdcd8.translationMethod', '\"site\"'),
('fields.c1d9166e-5308-4e91-9bf1-5618717bdcd8.type', '\"craft\\\\fields\\\\Categories\"'),
('fields.c969cea5-b5b1-408f-a797-8806df0c5402.columnSuffix', 'null'),
('fields.c969cea5-b5b1-408f-a797-8806df0c5402.contentColumnType', '\"string\"'),
('fields.c969cea5-b5b1-408f-a797-8806df0c5402.fieldGroup', '\"dd2cab1f-d433-4267-bf6a-52fbb391b10f\"'),
('fields.c969cea5-b5b1-408f-a797-8806df0c5402.handle', '\"postBanner\"'),
('fields.c969cea5-b5b1-408f-a797-8806df0c5402.instructions', 'null'),
('fields.c969cea5-b5b1-408f-a797-8806df0c5402.name', '\"Post Banner\"'),
('fields.c969cea5-b5b1-408f-a797-8806df0c5402.searchable', 'false'),
('fields.c969cea5-b5b1-408f-a797-8806df0c5402.settings.blockTypeFields', '0'),
('fields.c969cea5-b5b1-408f-a797-8806df0c5402.settings.changedFieldIndicator', '105007311'),
('fields.c969cea5-b5b1-408f-a797-8806df0c5402.settings.columns.__assoc__.0.0', '\"7d14fb5f-7ea2-4695-95f7-923c9bbd3fb8\"'),
('fields.c969cea5-b5b1-408f-a797-8806df0c5402.settings.columns.__assoc__.0.1.__assoc__.0.0', '\"width\"'),
('fields.c969cea5-b5b1-408f-a797-8806df0c5402.settings.columns.__assoc__.0.1.__assoc__.0.1', '\"\"'),
('fields.c969cea5-b5b1-408f-a797-8806df0c5402.settings.columns.__assoc__.1.0', '\"987bd29f-6646-4a74-958b-01ebb601675b\"'),
('fields.c969cea5-b5b1-408f-a797-8806df0c5402.settings.columns.__assoc__.1.1.__assoc__.0.0', '\"width\"'),
('fields.c969cea5-b5b1-408f-a797-8806df0c5402.settings.columns.__assoc__.1.1.__assoc__.0.1', '\"\"'),
('fields.c969cea5-b5b1-408f-a797-8806df0c5402.settings.columns.__assoc__.2.0', '\"1d7dc4a5-fcb3-477b-93d2-0adc9b88ccb6\"'),
('fields.c969cea5-b5b1-408f-a797-8806df0c5402.settings.columns.__assoc__.2.1.__assoc__.0.0', '\"width\"'),
('fields.c969cea5-b5b1-408f-a797-8806df0c5402.settings.columns.__assoc__.2.1.__assoc__.0.1', '\"\"'),
('fields.c969cea5-b5b1-408f-a797-8806df0c5402.settings.contentTable', '\"{{%stc_postbanner}}\"'),
('fields.c969cea5-b5b1-408f-a797-8806df0c5402.settings.fieldLayout', '\"matrix\"'),
('fields.c969cea5-b5b1-408f-a797-8806df0c5402.settings.maxRows', 'null'),
('fields.c969cea5-b5b1-408f-a797-8806df0c5402.settings.minRows', 'null'),
('fields.c969cea5-b5b1-408f-a797-8806df0c5402.settings.propagationKeyFormat', 'null'),
('fields.c969cea5-b5b1-408f-a797-8806df0c5402.settings.propagationMethod', '\"all\"'),
('fields.c969cea5-b5b1-408f-a797-8806df0c5402.settings.selectionLabel', 'null'),
('fields.c969cea5-b5b1-408f-a797-8806df0c5402.settings.staticField', 'true'),
('fields.c969cea5-b5b1-408f-a797-8806df0c5402.translationKeyFormat', 'null'),
('fields.c969cea5-b5b1-408f-a797-8806df0c5402.translationMethod', '\"site\"'),
('fields.c969cea5-b5b1-408f-a797-8806df0c5402.type', '\"verbb\\\\supertable\\\\fields\\\\SuperTableField\"'),
('fields.e1d6a3d2-955b-42e4-bcf0-ae40fbffba4f.columnSuffix', 'null'),
('fields.e1d6a3d2-955b-42e4-bcf0-ae40fbffba4f.contentColumnType', '\"string\"'),
('fields.e1d6a3d2-955b-42e4-bcf0-ae40fbffba4f.fieldGroup', '\"dd2cab1f-d433-4267-bf6a-52fbb391b10f\"'),
('fields.e1d6a3d2-955b-42e4-bcf0-ae40fbffba4f.handle', '\"contentPost\"'),
('fields.e1d6a3d2-955b-42e4-bcf0-ae40fbffba4f.instructions', 'null'),
('fields.e1d6a3d2-955b-42e4-bcf0-ae40fbffba4f.name', '\"Content Post\"'),
('fields.e1d6a3d2-955b-42e4-bcf0-ae40fbffba4f.searchable', 'false'),
('fields.e1d6a3d2-955b-42e4-bcf0-ae40fbffba4f.settings.contentTable', '\"{{%matrixcontent_contentpost}}\"'),
('fields.e1d6a3d2-955b-42e4-bcf0-ae40fbffba4f.settings.maxBlocks', 'null'),
('fields.e1d6a3d2-955b-42e4-bcf0-ae40fbffba4f.settings.minBlocks', '1'),
('fields.e1d6a3d2-955b-42e4-bcf0-ae40fbffba4f.settings.propagationKeyFormat', 'null'),
('fields.e1d6a3d2-955b-42e4-bcf0-ae40fbffba4f.settings.propagationMethod', '\"all\"'),
('fields.e1d6a3d2-955b-42e4-bcf0-ae40fbffba4f.translationKeyFormat', 'null'),
('fields.e1d6a3d2-955b-42e4-bcf0-ae40fbffba4f.translationMethod', '\"site\"'),
('fields.e1d6a3d2-955b-42e4-bcf0-ae40fbffba4f.type', '\"craft\\\\fields\\\\Matrix\"'),
('fs.contentLocal.hasUrls', 'true'),
('fs.contentLocal.name', '\"Content Local\"'),
('fs.contentLocal.settings.path', '\"$CONTENT_LOCAL_BASE_PATH\"'),
('fs.contentLocal.type', '\"craft\\\\fs\\\\Local\"'),
('fs.contentLocal.url', '\"$CONTENT_LOCAL_ROOT_URL\"'),
('matrixBlockTypes.b9db48ea-9351-4304-8538-27a6064de37e.field', '\"26f05fc1-ee8e-4be8-95cb-ee95fc0ba4ea\"'),
('matrixBlockTypes.b9db48ea-9351-4304-8538-27a6064de37e.fieldLayouts.ca610aa8-2000-44d8-888b-870461256cf3.tabs.0.elementCondition', 'null'),
('matrixBlockTypes.b9db48ea-9351-4304-8538-27a6064de37e.fieldLayouts.ca610aa8-2000-44d8-888b-870461256cf3.tabs.0.elements.0.elementCondition', 'null'),
('matrixBlockTypes.b9db48ea-9351-4304-8538-27a6064de37e.fieldLayouts.ca610aa8-2000-44d8-888b-870461256cf3.tabs.0.elements.0.fieldUid', '\"39a78532-3890-491b-bacb-c9efe356997a\"'),
('matrixBlockTypes.b9db48ea-9351-4304-8538-27a6064de37e.fieldLayouts.ca610aa8-2000-44d8-888b-870461256cf3.tabs.0.elements.0.instructions', 'null'),
('matrixBlockTypes.b9db48ea-9351-4304-8538-27a6064de37e.fieldLayouts.ca610aa8-2000-44d8-888b-870461256cf3.tabs.0.elements.0.label', 'null'),
('matrixBlockTypes.b9db48ea-9351-4304-8538-27a6064de37e.fieldLayouts.ca610aa8-2000-44d8-888b-870461256cf3.tabs.0.elements.0.required', 'false'),
('matrixBlockTypes.b9db48ea-9351-4304-8538-27a6064de37e.fieldLayouts.ca610aa8-2000-44d8-888b-870461256cf3.tabs.0.elements.0.tip', 'null'),
('matrixBlockTypes.b9db48ea-9351-4304-8538-27a6064de37e.fieldLayouts.ca610aa8-2000-44d8-888b-870461256cf3.tabs.0.elements.0.type', '\"craft\\\\fieldlayoutelements\\\\CustomField\"');
INSERT INTO `projectconfig` (`path`, `value`) VALUES
('matrixBlockTypes.b9db48ea-9351-4304-8538-27a6064de37e.fieldLayouts.ca610aa8-2000-44d8-888b-870461256cf3.tabs.0.elements.0.uid', '\"adcf3f43-99ab-4c44-b838-284e8a37661a\"'),
('matrixBlockTypes.b9db48ea-9351-4304-8538-27a6064de37e.fieldLayouts.ca610aa8-2000-44d8-888b-870461256cf3.tabs.0.elements.0.userCondition', 'null'),
('matrixBlockTypes.b9db48ea-9351-4304-8538-27a6064de37e.fieldLayouts.ca610aa8-2000-44d8-888b-870461256cf3.tabs.0.elements.0.warning', 'null'),
('matrixBlockTypes.b9db48ea-9351-4304-8538-27a6064de37e.fieldLayouts.ca610aa8-2000-44d8-888b-870461256cf3.tabs.0.elements.0.width', '100'),
('matrixBlockTypes.b9db48ea-9351-4304-8538-27a6064de37e.fieldLayouts.ca610aa8-2000-44d8-888b-870461256cf3.tabs.0.elements.1.elementCondition', 'null'),
('matrixBlockTypes.b9db48ea-9351-4304-8538-27a6064de37e.fieldLayouts.ca610aa8-2000-44d8-888b-870461256cf3.tabs.0.elements.1.fieldUid', '\"2505b2b0-2821-445f-a8cc-a6c902395ae1\"'),
('matrixBlockTypes.b9db48ea-9351-4304-8538-27a6064de37e.fieldLayouts.ca610aa8-2000-44d8-888b-870461256cf3.tabs.0.elements.1.instructions', 'null'),
('matrixBlockTypes.b9db48ea-9351-4304-8538-27a6064de37e.fieldLayouts.ca610aa8-2000-44d8-888b-870461256cf3.tabs.0.elements.1.label', 'null'),
('matrixBlockTypes.b9db48ea-9351-4304-8538-27a6064de37e.fieldLayouts.ca610aa8-2000-44d8-888b-870461256cf3.tabs.0.elements.1.required', 'false'),
('matrixBlockTypes.b9db48ea-9351-4304-8538-27a6064de37e.fieldLayouts.ca610aa8-2000-44d8-888b-870461256cf3.tabs.0.elements.1.tip', 'null'),
('matrixBlockTypes.b9db48ea-9351-4304-8538-27a6064de37e.fieldLayouts.ca610aa8-2000-44d8-888b-870461256cf3.tabs.0.elements.1.type', '\"craft\\\\fieldlayoutelements\\\\CustomField\"'),
('matrixBlockTypes.b9db48ea-9351-4304-8538-27a6064de37e.fieldLayouts.ca610aa8-2000-44d8-888b-870461256cf3.tabs.0.elements.1.uid', '\"59aa8233-f3e7-40b7-b65d-595dc54f393d\"'),
('matrixBlockTypes.b9db48ea-9351-4304-8538-27a6064de37e.fieldLayouts.ca610aa8-2000-44d8-888b-870461256cf3.tabs.0.elements.1.userCondition', 'null'),
('matrixBlockTypes.b9db48ea-9351-4304-8538-27a6064de37e.fieldLayouts.ca610aa8-2000-44d8-888b-870461256cf3.tabs.0.elements.1.warning', 'null'),
('matrixBlockTypes.b9db48ea-9351-4304-8538-27a6064de37e.fieldLayouts.ca610aa8-2000-44d8-888b-870461256cf3.tabs.0.elements.1.width', '100'),
('matrixBlockTypes.b9db48ea-9351-4304-8538-27a6064de37e.fieldLayouts.ca610aa8-2000-44d8-888b-870461256cf3.tabs.0.name', '\"Content\"'),
('matrixBlockTypes.b9db48ea-9351-4304-8538-27a6064de37e.fieldLayouts.ca610aa8-2000-44d8-888b-870461256cf3.tabs.0.uid', '\"067d3f36-0088-4a60-b283-e10ce1996b98\"'),
('matrixBlockTypes.b9db48ea-9351-4304-8538-27a6064de37e.fieldLayouts.ca610aa8-2000-44d8-888b-870461256cf3.tabs.0.userCondition', 'null'),
('matrixBlockTypes.b9db48ea-9351-4304-8538-27a6064de37e.fields.2505b2b0-2821-445f-a8cc-a6c902395ae1.columnSuffix', '\"xukdyhkz\"'),
('matrixBlockTypes.b9db48ea-9351-4304-8538-27a6064de37e.fields.2505b2b0-2821-445f-a8cc-a6c902395ae1.contentColumnType', '\"string(255)\"'),
('matrixBlockTypes.b9db48ea-9351-4304-8538-27a6064de37e.fields.2505b2b0-2821-445f-a8cc-a6c902395ae1.fieldGroup', 'null'),
('matrixBlockTypes.b9db48ea-9351-4304-8538-27a6064de37e.fields.2505b2b0-2821-445f-a8cc-a6c902395ae1.handle', '\"urlButton\"'),
('matrixBlockTypes.b9db48ea-9351-4304-8538-27a6064de37e.fields.2505b2b0-2821-445f-a8cc-a6c902395ae1.instructions', 'null'),
('matrixBlockTypes.b9db48ea-9351-4304-8538-27a6064de37e.fields.2505b2b0-2821-445f-a8cc-a6c902395ae1.name', '\"Url Button\"'),
('matrixBlockTypes.b9db48ea-9351-4304-8538-27a6064de37e.fields.2505b2b0-2821-445f-a8cc-a6c902395ae1.searchable', 'false'),
('matrixBlockTypes.b9db48ea-9351-4304-8538-27a6064de37e.fields.2505b2b0-2821-445f-a8cc-a6c902395ae1.settings.maxLength', '255'),
('matrixBlockTypes.b9db48ea-9351-4304-8538-27a6064de37e.fields.2505b2b0-2821-445f-a8cc-a6c902395ae1.settings.types.0', '\"url\"'),
('matrixBlockTypes.b9db48ea-9351-4304-8538-27a6064de37e.fields.2505b2b0-2821-445f-a8cc-a6c902395ae1.translationKeyFormat', 'null'),
('matrixBlockTypes.b9db48ea-9351-4304-8538-27a6064de37e.fields.2505b2b0-2821-445f-a8cc-a6c902395ae1.translationMethod', '\"none\"'),
('matrixBlockTypes.b9db48ea-9351-4304-8538-27a6064de37e.fields.2505b2b0-2821-445f-a8cc-a6c902395ae1.type', '\"craft\\\\fields\\\\Url\"'),
('matrixBlockTypes.b9db48ea-9351-4304-8538-27a6064de37e.fields.39a78532-3890-491b-bacb-c9efe356997a.columnSuffix', '\"rjdlnmli\"'),
('matrixBlockTypes.b9db48ea-9351-4304-8538-27a6064de37e.fields.39a78532-3890-491b-bacb-c9efe356997a.contentColumnType', '\"text\"'),
('matrixBlockTypes.b9db48ea-9351-4304-8538-27a6064de37e.fields.39a78532-3890-491b-bacb-c9efe356997a.fieldGroup', 'null'),
('matrixBlockTypes.b9db48ea-9351-4304-8538-27a6064de37e.fields.39a78532-3890-491b-bacb-c9efe356997a.handle', '\"titleButton\"'),
('matrixBlockTypes.b9db48ea-9351-4304-8538-27a6064de37e.fields.39a78532-3890-491b-bacb-c9efe356997a.instructions', 'null'),
('matrixBlockTypes.b9db48ea-9351-4304-8538-27a6064de37e.fields.39a78532-3890-491b-bacb-c9efe356997a.name', '\"Title Button\"'),
('matrixBlockTypes.b9db48ea-9351-4304-8538-27a6064de37e.fields.39a78532-3890-491b-bacb-c9efe356997a.searchable', 'false'),
('matrixBlockTypes.b9db48ea-9351-4304-8538-27a6064de37e.fields.39a78532-3890-491b-bacb-c9efe356997a.settings.byteLimit', 'null'),
('matrixBlockTypes.b9db48ea-9351-4304-8538-27a6064de37e.fields.39a78532-3890-491b-bacb-c9efe356997a.settings.charLimit', 'null'),
('matrixBlockTypes.b9db48ea-9351-4304-8538-27a6064de37e.fields.39a78532-3890-491b-bacb-c9efe356997a.settings.code', 'false'),
('matrixBlockTypes.b9db48ea-9351-4304-8538-27a6064de37e.fields.39a78532-3890-491b-bacb-c9efe356997a.settings.columnType', 'null'),
('matrixBlockTypes.b9db48ea-9351-4304-8538-27a6064de37e.fields.39a78532-3890-491b-bacb-c9efe356997a.settings.initialRows', '4'),
('matrixBlockTypes.b9db48ea-9351-4304-8538-27a6064de37e.fields.39a78532-3890-491b-bacb-c9efe356997a.settings.multiline', 'false'),
('matrixBlockTypes.b9db48ea-9351-4304-8538-27a6064de37e.fields.39a78532-3890-491b-bacb-c9efe356997a.settings.placeholder', 'null'),
('matrixBlockTypes.b9db48ea-9351-4304-8538-27a6064de37e.fields.39a78532-3890-491b-bacb-c9efe356997a.settings.uiMode', '\"normal\"'),
('matrixBlockTypes.b9db48ea-9351-4304-8538-27a6064de37e.fields.39a78532-3890-491b-bacb-c9efe356997a.translationKeyFormat', 'null'),
('matrixBlockTypes.b9db48ea-9351-4304-8538-27a6064de37e.fields.39a78532-3890-491b-bacb-c9efe356997a.translationMethod', '\"none\"'),
('matrixBlockTypes.b9db48ea-9351-4304-8538-27a6064de37e.fields.39a78532-3890-491b-bacb-c9efe356997a.type', '\"craft\\\\fields\\\\PlainText\"'),
('matrixBlockTypes.b9db48ea-9351-4304-8538-27a6064de37e.handle', '\"item\"'),
('matrixBlockTypes.b9db48ea-9351-4304-8538-27a6064de37e.name', '\"Item\"'),
('matrixBlockTypes.b9db48ea-9351-4304-8538-27a6064de37e.sortOrder', '1'),
('matrixBlockTypes.bc85457f-240f-437f-b96f-c024374ead45.field', '\"e1d6a3d2-955b-42e4-bcf0-ae40fbffba4f\"'),
('matrixBlockTypes.bc85457f-240f-437f-b96f-c024374ead45.fieldLayouts.07a0f9bc-5dd3-4478-9770-448cbdab0365.tabs.0.elementCondition', 'null'),
('matrixBlockTypes.bc85457f-240f-437f-b96f-c024374ead45.fieldLayouts.07a0f9bc-5dd3-4478-9770-448cbdab0365.tabs.0.elements.0.elementCondition', 'null'),
('matrixBlockTypes.bc85457f-240f-437f-b96f-c024374ead45.fieldLayouts.07a0f9bc-5dd3-4478-9770-448cbdab0365.tabs.0.elements.0.fieldUid', '\"b2c25602-4953-49fc-a0ce-8fdac961d57b\"'),
('matrixBlockTypes.bc85457f-240f-437f-b96f-c024374ead45.fieldLayouts.07a0f9bc-5dd3-4478-9770-448cbdab0365.tabs.0.elements.0.instructions', 'null'),
('matrixBlockTypes.bc85457f-240f-437f-b96f-c024374ead45.fieldLayouts.07a0f9bc-5dd3-4478-9770-448cbdab0365.tabs.0.elements.0.label', 'null'),
('matrixBlockTypes.bc85457f-240f-437f-b96f-c024374ead45.fieldLayouts.07a0f9bc-5dd3-4478-9770-448cbdab0365.tabs.0.elements.0.required', 'false'),
('matrixBlockTypes.bc85457f-240f-437f-b96f-c024374ead45.fieldLayouts.07a0f9bc-5dd3-4478-9770-448cbdab0365.tabs.0.elements.0.tip', 'null'),
('matrixBlockTypes.bc85457f-240f-437f-b96f-c024374ead45.fieldLayouts.07a0f9bc-5dd3-4478-9770-448cbdab0365.tabs.0.elements.0.type', '\"craft\\\\fieldlayoutelements\\\\CustomField\"'),
('matrixBlockTypes.bc85457f-240f-437f-b96f-c024374ead45.fieldLayouts.07a0f9bc-5dd3-4478-9770-448cbdab0365.tabs.0.elements.0.uid', '\"5a702e2e-6ce8-4bbc-9819-923d28f30c7c\"'),
('matrixBlockTypes.bc85457f-240f-437f-b96f-c024374ead45.fieldLayouts.07a0f9bc-5dd3-4478-9770-448cbdab0365.tabs.0.elements.0.userCondition', 'null'),
('matrixBlockTypes.bc85457f-240f-437f-b96f-c024374ead45.fieldLayouts.07a0f9bc-5dd3-4478-9770-448cbdab0365.tabs.0.elements.0.warning', 'null'),
('matrixBlockTypes.bc85457f-240f-437f-b96f-c024374ead45.fieldLayouts.07a0f9bc-5dd3-4478-9770-448cbdab0365.tabs.0.elements.0.width', '100'),
('matrixBlockTypes.bc85457f-240f-437f-b96f-c024374ead45.fieldLayouts.07a0f9bc-5dd3-4478-9770-448cbdab0365.tabs.0.elements.1.elementCondition', 'null'),
('matrixBlockTypes.bc85457f-240f-437f-b96f-c024374ead45.fieldLayouts.07a0f9bc-5dd3-4478-9770-448cbdab0365.tabs.0.elements.1.fieldUid', '\"b9a06d06-813d-4c92-bfab-1f6be8e4ed07\"'),
('matrixBlockTypes.bc85457f-240f-437f-b96f-c024374ead45.fieldLayouts.07a0f9bc-5dd3-4478-9770-448cbdab0365.tabs.0.elements.1.instructions', 'null'),
('matrixBlockTypes.bc85457f-240f-437f-b96f-c024374ead45.fieldLayouts.07a0f9bc-5dd3-4478-9770-448cbdab0365.tabs.0.elements.1.label', 'null'),
('matrixBlockTypes.bc85457f-240f-437f-b96f-c024374ead45.fieldLayouts.07a0f9bc-5dd3-4478-9770-448cbdab0365.tabs.0.elements.1.required', 'false'),
('matrixBlockTypes.bc85457f-240f-437f-b96f-c024374ead45.fieldLayouts.07a0f9bc-5dd3-4478-9770-448cbdab0365.tabs.0.elements.1.tip', 'null'),
('matrixBlockTypes.bc85457f-240f-437f-b96f-c024374ead45.fieldLayouts.07a0f9bc-5dd3-4478-9770-448cbdab0365.tabs.0.elements.1.type', '\"craft\\\\fieldlayoutelements\\\\CustomField\"'),
('matrixBlockTypes.bc85457f-240f-437f-b96f-c024374ead45.fieldLayouts.07a0f9bc-5dd3-4478-9770-448cbdab0365.tabs.0.elements.1.uid', '\"3c88b38d-1e3b-4257-a1f8-2d363f81daf2\"'),
('matrixBlockTypes.bc85457f-240f-437f-b96f-c024374ead45.fieldLayouts.07a0f9bc-5dd3-4478-9770-448cbdab0365.tabs.0.elements.1.userCondition', 'null'),
('matrixBlockTypes.bc85457f-240f-437f-b96f-c024374ead45.fieldLayouts.07a0f9bc-5dd3-4478-9770-448cbdab0365.tabs.0.elements.1.warning', 'null'),
('matrixBlockTypes.bc85457f-240f-437f-b96f-c024374ead45.fieldLayouts.07a0f9bc-5dd3-4478-9770-448cbdab0365.tabs.0.elements.1.width', '100'),
('matrixBlockTypes.bc85457f-240f-437f-b96f-c024374ead45.fieldLayouts.07a0f9bc-5dd3-4478-9770-448cbdab0365.tabs.0.name', '\"Content\"'),
('matrixBlockTypes.bc85457f-240f-437f-b96f-c024374ead45.fieldLayouts.07a0f9bc-5dd3-4478-9770-448cbdab0365.tabs.0.uid', '\"183a12e7-f4c8-48c4-8aac-c5778e74c813\"'),
('matrixBlockTypes.bc85457f-240f-437f-b96f-c024374ead45.fieldLayouts.07a0f9bc-5dd3-4478-9770-448cbdab0365.tabs.0.userCondition', 'null'),
('matrixBlockTypes.bc85457f-240f-437f-b96f-c024374ead45.fields.b2c25602-4953-49fc-a0ce-8fdac961d57b.columnSuffix', '\"hscgklex\"'),
('matrixBlockTypes.bc85457f-240f-437f-b96f-c024374ead45.fields.b2c25602-4953-49fc-a0ce-8fdac961d57b.contentColumnType', '\"text\"'),
('matrixBlockTypes.bc85457f-240f-437f-b96f-c024374ead45.fields.b2c25602-4953-49fc-a0ce-8fdac961d57b.fieldGroup', 'null'),
('matrixBlockTypes.bc85457f-240f-437f-b96f-c024374ead45.fields.b2c25602-4953-49fc-a0ce-8fdac961d57b.handle', '\"titleText\"'),
('matrixBlockTypes.bc85457f-240f-437f-b96f-c024374ead45.fields.b2c25602-4953-49fc-a0ce-8fdac961d57b.instructions', 'null'),
('matrixBlockTypes.bc85457f-240f-437f-b96f-c024374ead45.fields.b2c25602-4953-49fc-a0ce-8fdac961d57b.name', '\"Title\"'),
('matrixBlockTypes.bc85457f-240f-437f-b96f-c024374ead45.fields.b2c25602-4953-49fc-a0ce-8fdac961d57b.searchable', 'false'),
('matrixBlockTypes.bc85457f-240f-437f-b96f-c024374ead45.fields.b2c25602-4953-49fc-a0ce-8fdac961d57b.settings.byteLimit', 'null'),
('matrixBlockTypes.bc85457f-240f-437f-b96f-c024374ead45.fields.b2c25602-4953-49fc-a0ce-8fdac961d57b.settings.charLimit', 'null'),
('matrixBlockTypes.bc85457f-240f-437f-b96f-c024374ead45.fields.b2c25602-4953-49fc-a0ce-8fdac961d57b.settings.code', 'false'),
('matrixBlockTypes.bc85457f-240f-437f-b96f-c024374ead45.fields.b2c25602-4953-49fc-a0ce-8fdac961d57b.settings.columnType', 'null'),
('matrixBlockTypes.bc85457f-240f-437f-b96f-c024374ead45.fields.b2c25602-4953-49fc-a0ce-8fdac961d57b.settings.initialRows', '4'),
('matrixBlockTypes.bc85457f-240f-437f-b96f-c024374ead45.fields.b2c25602-4953-49fc-a0ce-8fdac961d57b.settings.multiline', 'false'),
('matrixBlockTypes.bc85457f-240f-437f-b96f-c024374ead45.fields.b2c25602-4953-49fc-a0ce-8fdac961d57b.settings.placeholder', 'null'),
('matrixBlockTypes.bc85457f-240f-437f-b96f-c024374ead45.fields.b2c25602-4953-49fc-a0ce-8fdac961d57b.settings.uiMode', '\"normal\"'),
('matrixBlockTypes.bc85457f-240f-437f-b96f-c024374ead45.fields.b2c25602-4953-49fc-a0ce-8fdac961d57b.translationKeyFormat', 'null'),
('matrixBlockTypes.bc85457f-240f-437f-b96f-c024374ead45.fields.b2c25602-4953-49fc-a0ce-8fdac961d57b.translationMethod', '\"none\"'),
('matrixBlockTypes.bc85457f-240f-437f-b96f-c024374ead45.fields.b2c25602-4953-49fc-a0ce-8fdac961d57b.type', '\"craft\\\\fields\\\\PlainText\"'),
('matrixBlockTypes.bc85457f-240f-437f-b96f-c024374ead45.fields.b9a06d06-813d-4c92-bfab-1f6be8e4ed07.columnSuffix', '\"xgfjoona\"'),
('matrixBlockTypes.bc85457f-240f-437f-b96f-c024374ead45.fields.b9a06d06-813d-4c92-bfab-1f6be8e4ed07.contentColumnType', '\"text\"'),
('matrixBlockTypes.bc85457f-240f-437f-b96f-c024374ead45.fields.b9a06d06-813d-4c92-bfab-1f6be8e4ed07.fieldGroup', 'null'),
('matrixBlockTypes.bc85457f-240f-437f-b96f-c024374ead45.fields.b9a06d06-813d-4c92-bfab-1f6be8e4ed07.handle', '\"descriptions\"'),
('matrixBlockTypes.bc85457f-240f-437f-b96f-c024374ead45.fields.b9a06d06-813d-4c92-bfab-1f6be8e4ed07.instructions', 'null'),
('matrixBlockTypes.bc85457f-240f-437f-b96f-c024374ead45.fields.b9a06d06-813d-4c92-bfab-1f6be8e4ed07.name', '\"Descriptions\"'),
('matrixBlockTypes.bc85457f-240f-437f-b96f-c024374ead45.fields.b9a06d06-813d-4c92-bfab-1f6be8e4ed07.searchable', 'false'),
('matrixBlockTypes.bc85457f-240f-437f-b96f-c024374ead45.fields.b9a06d06-813d-4c92-bfab-1f6be8e4ed07.settings.availableTransforms', '\"*\"'),
('matrixBlockTypes.bc85457f-240f-437f-b96f-c024374ead45.fields.b9a06d06-813d-4c92-bfab-1f6be8e4ed07.settings.availableVolumes', '\"*\"'),
('matrixBlockTypes.bc85457f-240f-437f-b96f-c024374ead45.fields.b9a06d06-813d-4c92-bfab-1f6be8e4ed07.settings.columnType', '\"text\"'),
('matrixBlockTypes.bc85457f-240f-437f-b96f-c024374ead45.fields.b9a06d06-813d-4c92-bfab-1f6be8e4ed07.settings.configSelectionMode', '\"choose\"'),
('matrixBlockTypes.bc85457f-240f-437f-b96f-c024374ead45.fields.b9a06d06-813d-4c92-bfab-1f6be8e4ed07.settings.defaultTransform', '\"\"'),
('matrixBlockTypes.bc85457f-240f-437f-b96f-c024374ead45.fields.b9a06d06-813d-4c92-bfab-1f6be8e4ed07.settings.manualConfig', '\"\"'),
('matrixBlockTypes.bc85457f-240f-437f-b96f-c024374ead45.fields.b9a06d06-813d-4c92-bfab-1f6be8e4ed07.settings.purifierConfig', 'null'),
('matrixBlockTypes.bc85457f-240f-437f-b96f-c024374ead45.fields.b9a06d06-813d-4c92-bfab-1f6be8e4ed07.settings.purifyHtml', 'true'),
('matrixBlockTypes.bc85457f-240f-437f-b96f-c024374ead45.fields.b9a06d06-813d-4c92-bfab-1f6be8e4ed07.settings.redactorConfig', 'null'),
('matrixBlockTypes.bc85457f-240f-437f-b96f-c024374ead45.fields.b9a06d06-813d-4c92-bfab-1f6be8e4ed07.settings.removeEmptyTags', 'false'),
('matrixBlockTypes.bc85457f-240f-437f-b96f-c024374ead45.fields.b9a06d06-813d-4c92-bfab-1f6be8e4ed07.settings.removeInlineStyles', 'false'),
('matrixBlockTypes.bc85457f-240f-437f-b96f-c024374ead45.fields.b9a06d06-813d-4c92-bfab-1f6be8e4ed07.settings.removeNbsp', 'false'),
('matrixBlockTypes.bc85457f-240f-437f-b96f-c024374ead45.fields.b9a06d06-813d-4c92-bfab-1f6be8e4ed07.settings.showHtmlButtonForNonAdmins', 'false'),
('matrixBlockTypes.bc85457f-240f-437f-b96f-c024374ead45.fields.b9a06d06-813d-4c92-bfab-1f6be8e4ed07.settings.showUnpermittedFiles', 'false'),
('matrixBlockTypes.bc85457f-240f-437f-b96f-c024374ead45.fields.b9a06d06-813d-4c92-bfab-1f6be8e4ed07.settings.showUnpermittedVolumes', 'false'),
('matrixBlockTypes.bc85457f-240f-437f-b96f-c024374ead45.fields.b9a06d06-813d-4c92-bfab-1f6be8e4ed07.settings.uiMode', '\"enlarged\"'),
('matrixBlockTypes.bc85457f-240f-437f-b96f-c024374ead45.fields.b9a06d06-813d-4c92-bfab-1f6be8e4ed07.translationKeyFormat', 'null'),
('matrixBlockTypes.bc85457f-240f-437f-b96f-c024374ead45.fields.b9a06d06-813d-4c92-bfab-1f6be8e4ed07.translationMethod', '\"none\"'),
('matrixBlockTypes.bc85457f-240f-437f-b96f-c024374ead45.fields.b9a06d06-813d-4c92-bfab-1f6be8e4ed07.type', '\"craft\\\\redactor\\\\Field\"'),
('matrixBlockTypes.bc85457f-240f-437f-b96f-c024374ead45.handle', '\"items\"'),
('matrixBlockTypes.bc85457f-240f-437f-b96f-c024374ead45.name', '\"Items\"'),
('matrixBlockTypes.bc85457f-240f-437f-b96f-c024374ead45.sortOrder', '1'),
('meta.__names__.082ff081-aa3c-4188-afaf-1de984461e85', '\"Company Category\"'),
('meta.__names__.0d358e98-2829-44be-a4f1-978b41d2f0aa', '\"Software\"'),
('meta.__names__.16018a5d-e00b-488a-acca-11cd315f32dc', '\"cloud4success\"'),
('meta.__names__.170b0e9a-f69f-46c0-810f-b14d6378d6fe', '\"Post Rich Text\"'),
('meta.__names__.1d7dc4a5-fcb3-477b-93d2-0adc9b88ccb6', '\"Button Url\"'),
('meta.__names__.2505b2b0-2821-445f-a8cc-a6c902395ae1', '\"Url Button\"'),
('meta.__names__.26f05fc1-ee8e-4be8-95cb-ee95fc0ba4ea', '\"Button\"'),
('meta.__names__.2855e71a-4ab6-45e5-b716-fe4cfc071f33', '\"Location\"'),
('meta.__names__.293cac4b-bd6e-4c92-98ca-eb719b885cda', '\"Post Headline\"'),
('meta.__names__.299609db-9eef-4aff-bcd8-5a92efda1dbb', '\"Home\"'),
('meta.__names__.2ad0f005-f573-4862-a07f-bf5258f7107b', '\"Impressum & Datenschutz\"'),
('meta.__names__.2d382c82-c0eb-47c2-b9f6-05fd84e03045', '\"Title Button\"'),
('meta.__names__.33732ef7-8cf5-46e3-a85d-565e9c838e3d', '\"cloud4success\"'),
('meta.__names__.36e73792-074d-4ef8-ab4e-a2efc6ad90d4', '\"Modern Workplace\"'),
('meta.__names__.392575c9-9499-499c-b0cf-491dbb63a798', '\"Blog Category\"'),
('meta.__names__.39a78532-3890-491b-bacb-c9efe356997a', '\"Title Button\"'),
('meta.__names__.3cfc0ef4-6ff2-433b-a452-2d40f9bc5988', '\"Author Entry\"'),
('meta.__names__.3d8e84b0-a04d-41aa-b0b1-03a2b6171be0', '\"Story Company\"'),
('meta.__names__.3da196e2-18bf-4d1d-b323-c31fe0330c82', '\"Stories Post\"'),
('meta.__names__.47ef9959-a528-4bd5-bd2d-c068e5248ae7', '\"Karriere Post\"'),
('meta.__names__.4c833b87-8963-49bf-b039-fb9029ebcfa6', '\"Experience\"'),
('meta.__names__.530023de-e527-4210-9215-b3e3099b4402', '\"Author Name\"'),
('meta.__names__.5477467a-150b-4bea-ad59-e1f19719c73f', '\"Blog Category\"'),
('meta.__names__.59f2d7a3-cddc-441d-b150-0e18e523e267', '\"Stories Overview\"'),
('meta.__names__.604b0d19-51d0-48c3-b47a-2229a9ed23ac', '\"Author\"'),
('meta.__names__.62bd963d-2296-4faa-b53a-80a39499b6ad', '\"Modern Workplace\"'),
('meta.__names__.62f883e4-2069-4014-a684-6dffb7e09607', '\"Contact\"'),
('meta.__names__.68486210-b568-4359-8c37-732c21e7518c', '\"Job\"'),
('meta.__names__.69d2ba66-2d6a-48f3-b8cc-0850d42e2c18', '\"Blog Post\"'),
('meta.__names__.701103d9-8214-446d-83e8-9db864a6a593', '\"Beratung\"'),
('meta.__names__.72e1ba88-7b1d-4682-804e-9e8fd8099292', '\"Author\"'),
('meta.__names__.7557a405-b2c2-48b3-8ab2-c99ea0fb0885', '\"Karriere Overview\"'),
('meta.__names__.7acc60ca-d954-466f-9d9c-79ecb579ed62', '\"Button\"'),
('meta.__names__.7b44a9da-6f5d-4f88-a792-23abfa8d885f', '\"Blog Category\"'),
('meta.__names__.7d14fb5f-7ea2-4695-95f7-923c9bbd3fb8', '\"Headline\"'),
('meta.__names__.8032f6af-316d-418e-ab60-c0ce3c7f60f9', '\"Author\"'),
('meta.__names__.874730fc-5e59-488f-a579-29b8a3f524d0', '\"Url Button\"'),
('meta.__names__.879b8fb2-8367-4ee2-846e-bd38b886d605', '\"Post Company\"'),
('meta.__names__.8bbb286a-ac71-4e2a-8a91-3dbff9e26b3d', '\"Software Category\"'),
('meta.__names__.907b94e8-b3cb-408b-a4ed-d497104b2d55', '\"Post Short Text\"'),
('meta.__names__.913d328b-09f7-4108-8816-f81c35cb7d2a', '\"Author Image\"'),
('meta.__names__.9583ec6a-d404-475a-8632-f57bf1d4aa04', '\"Duration\"'),
('meta.__names__.987bd29f-6646-4a74-958b-01ebb601675b', '\"Short Text\"'),
('meta.__names__.9b168937-c11f-4a7e-9741-f9d6aa77c9d0', '\"Job Detail\"'),
('meta.__names__.a242b979-f049-4865-9696-fb87e39d1a0c', '\"Impressum & Datenschutz\"'),
('meta.__names__.a86f6dff-5be9-4f49-9232-841c9b5d8dda', '\"Link\"'),
('meta.__names__.aa851b3e-e45e-4c23-8c3b-e540929c28fe', '\"Stories Overview\"'),
('meta.__names__.b20b7ca8-6027-4f7f-a320-95ab24bc0b22', '\"Karriere Post\"'),
('meta.__names__.b2c25602-4953-49fc-a0ce-8fdac961d57b', '\"Title\"'),
('meta.__names__.b2ea844f-e1dc-4538-a97d-a57a34bf1afe', '\"Software Post\"'),
('meta.__names__.b79a9ca5-e9d0-4e18-ad37-b38ee786a341', '\"Stories Post\"'),
('meta.__names__.b9a06d06-813d-4c92-bfab-1f6be8e4ed07', '\"Descriptions\"'),
('meta.__names__.b9db48ea-9351-4304-8538-27a6064de37e', '\"Item\"'),
('meta.__names__.bc85457f-240f-437f-b96f-c024374ead45', '\"Items\"'),
('meta.__names__.be50f99b-b84e-45d6-99c6-9b79e5c52560', '\"Post Image\"'),
('meta.__names__.c1d9166e-5308-4e91-9bf1-5618717bdcd8', '\"Sofware Category\"'),
('meta.__names__.c969cea5-b5b1-408f-a797-8806df0c5402', '\"Post Banner\"'),
('meta.__names__.cae04bf8-01a2-4040-b9cc-6584b31aaaae', '\"Content Assets\"'),
('meta.__names__.d0c9a98d-03f6-4647-8c8d-4971d91c23b3', '\"Contact\"'),
('meta.__names__.d99048a1-a158-4b8e-bc5b-2e5c739a3985', '\"Beratung\"'),
('meta.__names__.da7f3bc1-4533-411c-a8db-8637e8ca2282', '\"Blog Overview\"'),
('meta.__names__.dd2cab1f-d433-4267-bf6a-52fbb391b10f', '\"Common\"'),
('meta.__names__.e0c0b0fa-c719-49dc-9c62-cfe77e3a05b2', '\"Home\"'),
('meta.__names__.e1d6a3d2-955b-42e4-bcf0-ae40fbffba4f', '\"Content Post\"'),
('meta.__names__.e2192567-c6db-4e5b-99f3-be24ed73f518', '\"Software Overview\"'),
('meta.__names__.e495b10a-245e-4b45-8085-f55ca3e033e5', '\"Support\"'),
('meta.__names__.e7a73574-4ac1-440a-9ecd-60810b7d4f02', '\"Text\"'),
('meta.__names__.e9361ffe-b7e5-47e5-b505-06837d3a9487', '\"Start Date\"'),
('meta.__names__.ebe57e47-0c3e-420b-a5f2-f74dca7bb6ed', '\"Blog Overview\"'),
('meta.__names__.f0c8f2e7-dfeb-4a2b-a663-c1f3742952c4', '\"Karriere Overview\"'),
('meta.__names__.f5515f40-8f50-4d87-82f2-f2ea5e7ab68d', '\"Software Overview\"'),
('meta.__names__.f6404666-341b-4af9-ad83-c96ed1be86fe', '\"Support\"'),
('meta.__names__.f87ff7ae-50ba-4e06-a75e-899fdc075507', '\"Blog Post\"'),
('plugins.redactor.edition', '\"standard\"'),
('plugins.redactor.enabled', 'true'),
('plugins.redactor.schemaVersion', '\"2.3.0\"'),
('plugins.super-table.edition', '\"standard\"'),
('plugins.super-table.enabled', 'true'),
('plugins.super-table.schemaVersion', '\"3.0.0\"'),
('plugins.typedlinkfield.edition', '\"standard\"'),
('plugins.typedlinkfield.enabled', 'true'),
('plugins.typedlinkfield.schemaVersion', '\"2.0.0\"'),
('sections.2ad0f005-f573-4862-a07f-bf5258f7107b.defaultPlacement', '\"end\"'),
('sections.2ad0f005-f573-4862-a07f-bf5258f7107b.enableVersioning', 'true'),
('sections.2ad0f005-f573-4862-a07f-bf5258f7107b.handle', '\"impressumDatenschutz\"'),
('sections.2ad0f005-f573-4862-a07f-bf5258f7107b.name', '\"Impressum & Datenschutz\"'),
('sections.2ad0f005-f573-4862-a07f-bf5258f7107b.propagationMethod', '\"all\"'),
('sections.2ad0f005-f573-4862-a07f-bf5258f7107b.siteSettings.33732ef7-8cf5-46e3-a85d-565e9c838e3d.enabledByDefault', 'true'),
('sections.2ad0f005-f573-4862-a07f-bf5258f7107b.siteSettings.33732ef7-8cf5-46e3-a85d-565e9c838e3d.hasUrls', 'true'),
('sections.2ad0f005-f573-4862-a07f-bf5258f7107b.siteSettings.33732ef7-8cf5-46e3-a85d-565e9c838e3d.template', '\"_\\\\unternehmen\\\\impressum\"'),
('sections.2ad0f005-f573-4862-a07f-bf5258f7107b.siteSettings.33732ef7-8cf5-46e3-a85d-565e9c838e3d.uriFormat', '\"unternehmen/impressum-datenschutz\"'),
('sections.2ad0f005-f573-4862-a07f-bf5258f7107b.type', '\"single\"'),
('sections.62bd963d-2296-4faa-b53a-80a39499b6ad.defaultPlacement', '\"end\"'),
('sections.62bd963d-2296-4faa-b53a-80a39499b6ad.enableVersioning', 'true'),
('sections.62bd963d-2296-4faa-b53a-80a39499b6ad.handle', '\"modernWorkplace\"'),
('sections.62bd963d-2296-4faa-b53a-80a39499b6ad.name', '\"Modern Workplace\"'),
('sections.62bd963d-2296-4faa-b53a-80a39499b6ad.propagationMethod', '\"all\"'),
('sections.62bd963d-2296-4faa-b53a-80a39499b6ad.siteSettings.33732ef7-8cf5-46e3-a85d-565e9c838e3d.enabledByDefault', 'true'),
('sections.62bd963d-2296-4faa-b53a-80a39499b6ad.siteSettings.33732ef7-8cf5-46e3-a85d-565e9c838e3d.hasUrls', 'true'),
('sections.62bd963d-2296-4faa-b53a-80a39499b6ad.siteSettings.33732ef7-8cf5-46e3-a85d-565e9c838e3d.template', '\"_\\\\modern\\\\index\"'),
('sections.62bd963d-2296-4faa-b53a-80a39499b6ad.siteSettings.33732ef7-8cf5-46e3-a85d-565e9c838e3d.uriFormat', '\"modern-workplace\"'),
('sections.62bd963d-2296-4faa-b53a-80a39499b6ad.type', '\"single\"'),
('sections.7557a405-b2c2-48b3-8ab2-c99ea0fb0885.defaultPlacement', '\"end\"'),
('sections.7557a405-b2c2-48b3-8ab2-c99ea0fb0885.enableVersioning', 'true'),
('sections.7557a405-b2c2-48b3-8ab2-c99ea0fb0885.handle', '\"karriereOverview\"'),
('sections.7557a405-b2c2-48b3-8ab2-c99ea0fb0885.name', '\"Karriere Overview\"'),
('sections.7557a405-b2c2-48b3-8ab2-c99ea0fb0885.propagationMethod', '\"all\"'),
('sections.7557a405-b2c2-48b3-8ab2-c99ea0fb0885.siteSettings.33732ef7-8cf5-46e3-a85d-565e9c838e3d.enabledByDefault', 'true'),
('sections.7557a405-b2c2-48b3-8ab2-c99ea0fb0885.siteSettings.33732ef7-8cf5-46e3-a85d-565e9c838e3d.hasUrls', 'true'),
('sections.7557a405-b2c2-48b3-8ab2-c99ea0fb0885.siteSettings.33732ef7-8cf5-46e3-a85d-565e9c838e3d.template', '\"_/karriere/index\"'),
('sections.7557a405-b2c2-48b3-8ab2-c99ea0fb0885.siteSettings.33732ef7-8cf5-46e3-a85d-565e9c838e3d.uriFormat', '\"unternehmen/karriere\"'),
('sections.7557a405-b2c2-48b3-8ab2-c99ea0fb0885.type', '\"single\"'),
('sections.8032f6af-316d-418e-ab60-c0ce3c7f60f9.defaultPlacement', '\"end\"'),
('sections.8032f6af-316d-418e-ab60-c0ce3c7f60f9.enableVersioning', 'true'),
('sections.8032f6af-316d-418e-ab60-c0ce3c7f60f9.handle', '\"author\"'),
('sections.8032f6af-316d-418e-ab60-c0ce3c7f60f9.name', '\"Author\"'),
('sections.8032f6af-316d-418e-ab60-c0ce3c7f60f9.propagationMethod', '\"all\"'),
('sections.8032f6af-316d-418e-ab60-c0ce3c7f60f9.siteSettings.33732ef7-8cf5-46e3-a85d-565e9c838e3d.enabledByDefault', 'true'),
('sections.8032f6af-316d-418e-ab60-c0ce3c7f60f9.siteSettings.33732ef7-8cf5-46e3-a85d-565e9c838e3d.hasUrls', 'false'),
('sections.8032f6af-316d-418e-ab60-c0ce3c7f60f9.siteSettings.33732ef7-8cf5-46e3-a85d-565e9c838e3d.template', 'null'),
('sections.8032f6af-316d-418e-ab60-c0ce3c7f60f9.siteSettings.33732ef7-8cf5-46e3-a85d-565e9c838e3d.uriFormat', 'null'),
('sections.8032f6af-316d-418e-ab60-c0ce3c7f60f9.type', '\"channel\"'),
('sections.aa851b3e-e45e-4c23-8c3b-e540929c28fe.defaultPlacement', '\"end\"'),
('sections.aa851b3e-e45e-4c23-8c3b-e540929c28fe.enableVersioning', 'true'),
('sections.aa851b3e-e45e-4c23-8c3b-e540929c28fe.handle', '\"storiesOverview\"'),
('sections.aa851b3e-e45e-4c23-8c3b-e540929c28fe.name', '\"Stories Overview\"'),
('sections.aa851b3e-e45e-4c23-8c3b-e540929c28fe.propagationMethod', '\"all\"'),
('sections.aa851b3e-e45e-4c23-8c3b-e540929c28fe.siteSettings.33732ef7-8cf5-46e3-a85d-565e9c838e3d.enabledByDefault', 'true'),
('sections.aa851b3e-e45e-4c23-8c3b-e540929c28fe.siteSettings.33732ef7-8cf5-46e3-a85d-565e9c838e3d.hasUrls', 'true'),
('sections.aa851b3e-e45e-4c23-8c3b-e540929c28fe.siteSettings.33732ef7-8cf5-46e3-a85d-565e9c838e3d.template', '\"_/stories/index\"'),
('sections.aa851b3e-e45e-4c23-8c3b-e540929c28fe.siteSettings.33732ef7-8cf5-46e3-a85d-565e9c838e3d.uriFormat', '\"success-stories\"'),
('sections.aa851b3e-e45e-4c23-8c3b-e540929c28fe.type', '\"single\"'),
('sections.b20b7ca8-6027-4f7f-a320-95ab24bc0b22.defaultPlacement', '\"end\"'),
('sections.b20b7ca8-6027-4f7f-a320-95ab24bc0b22.enableVersioning', 'true'),
('sections.b20b7ca8-6027-4f7f-a320-95ab24bc0b22.handle', '\"karrierePost\"'),
('sections.b20b7ca8-6027-4f7f-a320-95ab24bc0b22.name', '\"Karriere Post\"'),
('sections.b20b7ca8-6027-4f7f-a320-95ab24bc0b22.propagationMethod', '\"all\"'),
('sections.b20b7ca8-6027-4f7f-a320-95ab24bc0b22.siteSettings.33732ef7-8cf5-46e3-a85d-565e9c838e3d.enabledByDefault', 'true'),
('sections.b20b7ca8-6027-4f7f-a320-95ab24bc0b22.siteSettings.33732ef7-8cf5-46e3-a85d-565e9c838e3d.hasUrls', 'true'),
('sections.b20b7ca8-6027-4f7f-a320-95ab24bc0b22.siteSettings.33732ef7-8cf5-46e3-a85d-565e9c838e3d.template', '\"_/karriere/entry\"'),
('sections.b20b7ca8-6027-4f7f-a320-95ab24bc0b22.siteSettings.33732ef7-8cf5-46e3-a85d-565e9c838e3d.uriFormat', '\"karriere/{slug}\"'),
('sections.b20b7ca8-6027-4f7f-a320-95ab24bc0b22.type', '\"channel\"'),
('sections.b2ea844f-e1dc-4538-a97d-a57a34bf1afe.defaultPlacement', '\"end\"'),
('sections.b2ea844f-e1dc-4538-a97d-a57a34bf1afe.enableVersioning', 'true'),
('sections.b2ea844f-e1dc-4538-a97d-a57a34bf1afe.handle', '\"softwarePost\"'),
('sections.b2ea844f-e1dc-4538-a97d-a57a34bf1afe.name', '\"Software Post\"'),
('sections.b2ea844f-e1dc-4538-a97d-a57a34bf1afe.propagationMethod', '\"all\"'),
('sections.b2ea844f-e1dc-4538-a97d-a57a34bf1afe.siteSettings.33732ef7-8cf5-46e3-a85d-565e9c838e3d.enabledByDefault', 'true'),
('sections.b2ea844f-e1dc-4538-a97d-a57a34bf1afe.siteSettings.33732ef7-8cf5-46e3-a85d-565e9c838e3d.hasUrls', 'true'),
('sections.b2ea844f-e1dc-4538-a97d-a57a34bf1afe.siteSettings.33732ef7-8cf5-46e3-a85d-565e9c838e3d.template', '\"_/software/entry\"'),
('sections.b2ea844f-e1dc-4538-a97d-a57a34bf1afe.siteSettings.33732ef7-8cf5-46e3-a85d-565e9c838e3d.uriFormat', '\"m365/{slug}\"'),
('sections.b2ea844f-e1dc-4538-a97d-a57a34bf1afe.structure.maxLevels', '1'),
('sections.b2ea844f-e1dc-4538-a97d-a57a34bf1afe.structure.uid', '\"19f2dbbe-ef61-4ec6-a763-a9681a4985f1\"'),
('sections.b2ea844f-e1dc-4538-a97d-a57a34bf1afe.type', '\"structure\"'),
('sections.b79a9ca5-e9d0-4e18-ad37-b38ee786a341.defaultPlacement', '\"end\"'),
('sections.b79a9ca5-e9d0-4e18-ad37-b38ee786a341.enableVersioning', 'true'),
('sections.b79a9ca5-e9d0-4e18-ad37-b38ee786a341.handle', '\"storiesPost\"'),
('sections.b79a9ca5-e9d0-4e18-ad37-b38ee786a341.name', '\"Stories Post\"'),
('sections.b79a9ca5-e9d0-4e18-ad37-b38ee786a341.propagationMethod', '\"all\"'),
('sections.b79a9ca5-e9d0-4e18-ad37-b38ee786a341.siteSettings.33732ef7-8cf5-46e3-a85d-565e9c838e3d.enabledByDefault', 'true'),
('sections.b79a9ca5-e9d0-4e18-ad37-b38ee786a341.siteSettings.33732ef7-8cf5-46e3-a85d-565e9c838e3d.hasUrls', 'true'),
('sections.b79a9ca5-e9d0-4e18-ad37-b38ee786a341.siteSettings.33732ef7-8cf5-46e3-a85d-565e9c838e3d.template', '\"_/stories/entry\"'),
('sections.b79a9ca5-e9d0-4e18-ad37-b38ee786a341.siteSettings.33732ef7-8cf5-46e3-a85d-565e9c838e3d.uriFormat', '\"success-stories/{slug}\"'),
('sections.b79a9ca5-e9d0-4e18-ad37-b38ee786a341.type', '\"channel\"'),
('sections.d0c9a98d-03f6-4647-8c8d-4971d91c23b3.defaultPlacement', '\"end\"'),
('sections.d0c9a98d-03f6-4647-8c8d-4971d91c23b3.enableVersioning', 'true'),
('sections.d0c9a98d-03f6-4647-8c8d-4971d91c23b3.handle', '\"contact\"'),
('sections.d0c9a98d-03f6-4647-8c8d-4971d91c23b3.name', '\"Contact\"'),
('sections.d0c9a98d-03f6-4647-8c8d-4971d91c23b3.propagationMethod', '\"all\"'),
('sections.d0c9a98d-03f6-4647-8c8d-4971d91c23b3.siteSettings.33732ef7-8cf5-46e3-a85d-565e9c838e3d.enabledByDefault', 'true'),
('sections.d0c9a98d-03f6-4647-8c8d-4971d91c23b3.siteSettings.33732ef7-8cf5-46e3-a85d-565e9c838e3d.hasUrls', 'true'),
('sections.d0c9a98d-03f6-4647-8c8d-4971d91c23b3.siteSettings.33732ef7-8cf5-46e3-a85d-565e9c838e3d.template', '\"_\\\\unternehmen\\\\contact\"'),
('sections.d0c9a98d-03f6-4647-8c8d-4971d91c23b3.siteSettings.33732ef7-8cf5-46e3-a85d-565e9c838e3d.uriFormat', '\"unternehmen/kontakt\"'),
('sections.d0c9a98d-03f6-4647-8c8d-4971d91c23b3.type', '\"single\"'),
('sections.d99048a1-a158-4b8e-bc5b-2e5c739a3985.defaultPlacement', '\"end\"'),
('sections.d99048a1-a158-4b8e-bc5b-2e5c739a3985.enableVersioning', 'true'),
('sections.d99048a1-a158-4b8e-bc5b-2e5c739a3985.handle', '\"beratung\"'),
('sections.d99048a1-a158-4b8e-bc5b-2e5c739a3985.name', '\"Beratung\"'),
('sections.d99048a1-a158-4b8e-bc5b-2e5c739a3985.propagationMethod', '\"all\"'),
('sections.d99048a1-a158-4b8e-bc5b-2e5c739a3985.siteSettings.33732ef7-8cf5-46e3-a85d-565e9c838e3d.enabledByDefault', 'true'),
('sections.d99048a1-a158-4b8e-bc5b-2e5c739a3985.siteSettings.33732ef7-8cf5-46e3-a85d-565e9c838e3d.hasUrls', 'true'),
('sections.d99048a1-a158-4b8e-bc5b-2e5c739a3985.siteSettings.33732ef7-8cf5-46e3-a85d-565e9c838e3d.template', '\"_\\\\unternehmen\\\\beratung\"'),
('sections.d99048a1-a158-4b8e-bc5b-2e5c739a3985.siteSettings.33732ef7-8cf5-46e3-a85d-565e9c838e3d.uriFormat', '\"unternehmen/beratung-workshop\"'),
('sections.d99048a1-a158-4b8e-bc5b-2e5c739a3985.type', '\"single\"'),
('sections.da7f3bc1-4533-411c-a8db-8637e8ca2282.defaultPlacement', '\"end\"'),
('sections.da7f3bc1-4533-411c-a8db-8637e8ca2282.enableVersioning', 'true'),
('sections.da7f3bc1-4533-411c-a8db-8637e8ca2282.handle', '\"blogOverview\"'),
('sections.da7f3bc1-4533-411c-a8db-8637e8ca2282.name', '\"Blog Overview\"'),
('sections.da7f3bc1-4533-411c-a8db-8637e8ca2282.propagationMethod', '\"all\"'),
('sections.da7f3bc1-4533-411c-a8db-8637e8ca2282.siteSettings.33732ef7-8cf5-46e3-a85d-565e9c838e3d.enabledByDefault', 'true'),
('sections.da7f3bc1-4533-411c-a8db-8637e8ca2282.siteSettings.33732ef7-8cf5-46e3-a85d-565e9c838e3d.hasUrls', 'true'),
('sections.da7f3bc1-4533-411c-a8db-8637e8ca2282.siteSettings.33732ef7-8cf5-46e3-a85d-565e9c838e3d.template', '\"_/blog/index\"'),
('sections.da7f3bc1-4533-411c-a8db-8637e8ca2282.siteSettings.33732ef7-8cf5-46e3-a85d-565e9c838e3d.uriFormat', '\"blog\"'),
('sections.da7f3bc1-4533-411c-a8db-8637e8ca2282.type', '\"single\"'),
('sections.e0c0b0fa-c719-49dc-9c62-cfe77e3a05b2.defaultPlacement', '\"end\"'),
('sections.e0c0b0fa-c719-49dc-9c62-cfe77e3a05b2.enableVersioning', 'true'),
('sections.e0c0b0fa-c719-49dc-9c62-cfe77e3a05b2.handle', '\"home\"'),
('sections.e0c0b0fa-c719-49dc-9c62-cfe77e3a05b2.name', '\"Home\"'),
('sections.e0c0b0fa-c719-49dc-9c62-cfe77e3a05b2.propagationMethod', '\"all\"'),
('sections.e0c0b0fa-c719-49dc-9c62-cfe77e3a05b2.siteSettings.33732ef7-8cf5-46e3-a85d-565e9c838e3d.enabledByDefault', 'true'),
('sections.e0c0b0fa-c719-49dc-9c62-cfe77e3a05b2.siteSettings.33732ef7-8cf5-46e3-a85d-565e9c838e3d.hasUrls', 'true'),
('sections.e0c0b0fa-c719-49dc-9c62-cfe77e3a05b2.siteSettings.33732ef7-8cf5-46e3-a85d-565e9c838e3d.template', '\"_/base/index\"'),
('sections.e0c0b0fa-c719-49dc-9c62-cfe77e3a05b2.siteSettings.33732ef7-8cf5-46e3-a85d-565e9c838e3d.uriFormat', '\"__home__\"'),
('sections.e0c0b0fa-c719-49dc-9c62-cfe77e3a05b2.type', '\"single\"'),
('sections.f5515f40-8f50-4d87-82f2-f2ea5e7ab68d.defaultPlacement', '\"end\"'),
('sections.f5515f40-8f50-4d87-82f2-f2ea5e7ab68d.enableVersioning', 'true'),
('sections.f5515f40-8f50-4d87-82f2-f2ea5e7ab68d.handle', '\"softwareOverview\"'),
('sections.f5515f40-8f50-4d87-82f2-f2ea5e7ab68d.name', '\"Software Overview\"'),
('sections.f5515f40-8f50-4d87-82f2-f2ea5e7ab68d.propagationMethod', '\"all\"'),
('sections.f5515f40-8f50-4d87-82f2-f2ea5e7ab68d.siteSettings.33732ef7-8cf5-46e3-a85d-565e9c838e3d.enabledByDefault', 'true'),
('sections.f5515f40-8f50-4d87-82f2-f2ea5e7ab68d.siteSettings.33732ef7-8cf5-46e3-a85d-565e9c838e3d.hasUrls', 'true'),
('sections.f5515f40-8f50-4d87-82f2-f2ea5e7ab68d.siteSettings.33732ef7-8cf5-46e3-a85d-565e9c838e3d.template', '\"_/software/index\"'),
('sections.f5515f40-8f50-4d87-82f2-f2ea5e7ab68d.siteSettings.33732ef7-8cf5-46e3-a85d-565e9c838e3d.uriFormat', '\"m365-apps\"'),
('sections.f5515f40-8f50-4d87-82f2-f2ea5e7ab68d.type', '\"single\"'),
('sections.f6404666-341b-4af9-ad83-c96ed1be86fe.defaultPlacement', '\"end\"'),
('sections.f6404666-341b-4af9-ad83-c96ed1be86fe.enableVersioning', 'true'),
('sections.f6404666-341b-4af9-ad83-c96ed1be86fe.handle', '\"support\"'),
('sections.f6404666-341b-4af9-ad83-c96ed1be86fe.name', '\"Support\"'),
('sections.f6404666-341b-4af9-ad83-c96ed1be86fe.propagationMethod', '\"all\"'),
('sections.f6404666-341b-4af9-ad83-c96ed1be86fe.siteSettings.33732ef7-8cf5-46e3-a85d-565e9c838e3d.enabledByDefault', 'true'),
('sections.f6404666-341b-4af9-ad83-c96ed1be86fe.siteSettings.33732ef7-8cf5-46e3-a85d-565e9c838e3d.hasUrls', 'true'),
('sections.f6404666-341b-4af9-ad83-c96ed1be86fe.siteSettings.33732ef7-8cf5-46e3-a85d-565e9c838e3d.template', '\"_/unternehmen/support\"'),
('sections.f6404666-341b-4af9-ad83-c96ed1be86fe.siteSettings.33732ef7-8cf5-46e3-a85d-565e9c838e3d.uriFormat', '\"unternehmen/support\"'),
('sections.f6404666-341b-4af9-ad83-c96ed1be86fe.type', '\"single\"'),
('sections.f87ff7ae-50ba-4e06-a75e-899fdc075507.defaultPlacement', '\"end\"'),
('sections.f87ff7ae-50ba-4e06-a75e-899fdc075507.enableVersioning', 'true'),
('sections.f87ff7ae-50ba-4e06-a75e-899fdc075507.handle', '\"blogPost\"'),
('sections.f87ff7ae-50ba-4e06-a75e-899fdc075507.name', '\"Blog Post\"'),
('sections.f87ff7ae-50ba-4e06-a75e-899fdc075507.propagationMethod', '\"all\"'),
('sections.f87ff7ae-50ba-4e06-a75e-899fdc075507.siteSettings.33732ef7-8cf5-46e3-a85d-565e9c838e3d.enabledByDefault', 'true'),
('sections.f87ff7ae-50ba-4e06-a75e-899fdc075507.siteSettings.33732ef7-8cf5-46e3-a85d-565e9c838e3d.hasUrls', 'true'),
('sections.f87ff7ae-50ba-4e06-a75e-899fdc075507.siteSettings.33732ef7-8cf5-46e3-a85d-565e9c838e3d.template', '\"_/blog/entry\"'),
('sections.f87ff7ae-50ba-4e06-a75e-899fdc075507.siteSettings.33732ef7-8cf5-46e3-a85d-565e9c838e3d.uriFormat', '\"blog/{slug}\"'),
('sections.f87ff7ae-50ba-4e06-a75e-899fdc075507.type', '\"channel\"'),
('siteGroups.16018a5d-e00b-488a-acca-11cd315f32dc.name', '\"cloud4success\"'),
('sites.33732ef7-8cf5-46e3-a85d-565e9c838e3d.baseUrl', '\"$PRIMARY_SITE_URL\"'),
('sites.33732ef7-8cf5-46e3-a85d-565e9c838e3d.handle', '\"default\"'),
('sites.33732ef7-8cf5-46e3-a85d-565e9c838e3d.hasUrls', 'true'),
('sites.33732ef7-8cf5-46e3-a85d-565e9c838e3d.language', '\"en-US\"'),
('sites.33732ef7-8cf5-46e3-a85d-565e9c838e3d.name', '\"cloud4success\"'),
('sites.33732ef7-8cf5-46e3-a85d-565e9c838e3d.primary', 'true'),
('sites.33732ef7-8cf5-46e3-a85d-565e9c838e3d.siteGroup', '\"16018a5d-e00b-488a-acca-11cd315f32dc\"'),
('sites.33732ef7-8cf5-46e3-a85d-565e9c838e3d.sortOrder', '1'),
('superTableBlockTypes.ba5406f8-567b-4ae1-8d90-b0fc6c47dbf7.field', '\"c969cea5-b5b1-408f-a797-8806df0c5402\"'),
('superTableBlockTypes.ba5406f8-567b-4ae1-8d90-b0fc6c47dbf7.fieldLayouts.7dadae18-9197-4025-8595-dbb345ba800c.tabs.0.elementCondition', 'null'),
('superTableBlockTypes.ba5406f8-567b-4ae1-8d90-b0fc6c47dbf7.fieldLayouts.7dadae18-9197-4025-8595-dbb345ba800c.tabs.0.elements.0.elementCondition', 'null'),
('superTableBlockTypes.ba5406f8-567b-4ae1-8d90-b0fc6c47dbf7.fieldLayouts.7dadae18-9197-4025-8595-dbb345ba800c.tabs.0.elements.0.fieldUid', '\"7d14fb5f-7ea2-4695-95f7-923c9bbd3fb8\"'),
('superTableBlockTypes.ba5406f8-567b-4ae1-8d90-b0fc6c47dbf7.fieldLayouts.7dadae18-9197-4025-8595-dbb345ba800c.tabs.0.elements.0.instructions', 'null'),
('superTableBlockTypes.ba5406f8-567b-4ae1-8d90-b0fc6c47dbf7.fieldLayouts.7dadae18-9197-4025-8595-dbb345ba800c.tabs.0.elements.0.label', 'null'),
('superTableBlockTypes.ba5406f8-567b-4ae1-8d90-b0fc6c47dbf7.fieldLayouts.7dadae18-9197-4025-8595-dbb345ba800c.tabs.0.elements.0.required', 'false'),
('superTableBlockTypes.ba5406f8-567b-4ae1-8d90-b0fc6c47dbf7.fieldLayouts.7dadae18-9197-4025-8595-dbb345ba800c.tabs.0.elements.0.tip', 'null'),
('superTableBlockTypes.ba5406f8-567b-4ae1-8d90-b0fc6c47dbf7.fieldLayouts.7dadae18-9197-4025-8595-dbb345ba800c.tabs.0.elements.0.type', '\"craft\\\\fieldlayoutelements\\\\CustomField\"'),
('superTableBlockTypes.ba5406f8-567b-4ae1-8d90-b0fc6c47dbf7.fieldLayouts.7dadae18-9197-4025-8595-dbb345ba800c.tabs.0.elements.0.uid', '\"d1b9aeff-68de-445b-94b5-72744f7fee36\"'),
('superTableBlockTypes.ba5406f8-567b-4ae1-8d90-b0fc6c47dbf7.fieldLayouts.7dadae18-9197-4025-8595-dbb345ba800c.tabs.0.elements.0.userCondition', 'null'),
('superTableBlockTypes.ba5406f8-567b-4ae1-8d90-b0fc6c47dbf7.fieldLayouts.7dadae18-9197-4025-8595-dbb345ba800c.tabs.0.elements.0.warning', 'null'),
('superTableBlockTypes.ba5406f8-567b-4ae1-8d90-b0fc6c47dbf7.fieldLayouts.7dadae18-9197-4025-8595-dbb345ba800c.tabs.0.elements.0.width', '100'),
('superTableBlockTypes.ba5406f8-567b-4ae1-8d90-b0fc6c47dbf7.fieldLayouts.7dadae18-9197-4025-8595-dbb345ba800c.tabs.0.elements.1.elementCondition', 'null'),
('superTableBlockTypes.ba5406f8-567b-4ae1-8d90-b0fc6c47dbf7.fieldLayouts.7dadae18-9197-4025-8595-dbb345ba800c.tabs.0.elements.1.fieldUid', '\"987bd29f-6646-4a74-958b-01ebb601675b\"'),
('superTableBlockTypes.ba5406f8-567b-4ae1-8d90-b0fc6c47dbf7.fieldLayouts.7dadae18-9197-4025-8595-dbb345ba800c.tabs.0.elements.1.instructions', 'null'),
('superTableBlockTypes.ba5406f8-567b-4ae1-8d90-b0fc6c47dbf7.fieldLayouts.7dadae18-9197-4025-8595-dbb345ba800c.tabs.0.elements.1.label', 'null'),
('superTableBlockTypes.ba5406f8-567b-4ae1-8d90-b0fc6c47dbf7.fieldLayouts.7dadae18-9197-4025-8595-dbb345ba800c.tabs.0.elements.1.required', 'false'),
('superTableBlockTypes.ba5406f8-567b-4ae1-8d90-b0fc6c47dbf7.fieldLayouts.7dadae18-9197-4025-8595-dbb345ba800c.tabs.0.elements.1.tip', 'null'),
('superTableBlockTypes.ba5406f8-567b-4ae1-8d90-b0fc6c47dbf7.fieldLayouts.7dadae18-9197-4025-8595-dbb345ba800c.tabs.0.elements.1.type', '\"craft\\\\fieldlayoutelements\\\\CustomField\"'),
('superTableBlockTypes.ba5406f8-567b-4ae1-8d90-b0fc6c47dbf7.fieldLayouts.7dadae18-9197-4025-8595-dbb345ba800c.tabs.0.elements.1.uid', '\"a0c15a39-4e27-442e-b869-ea895e9c6011\"'),
('superTableBlockTypes.ba5406f8-567b-4ae1-8d90-b0fc6c47dbf7.fieldLayouts.7dadae18-9197-4025-8595-dbb345ba800c.tabs.0.elements.1.userCondition', 'null'),
('superTableBlockTypes.ba5406f8-567b-4ae1-8d90-b0fc6c47dbf7.fieldLayouts.7dadae18-9197-4025-8595-dbb345ba800c.tabs.0.elements.1.warning', 'null'),
('superTableBlockTypes.ba5406f8-567b-4ae1-8d90-b0fc6c47dbf7.fieldLayouts.7dadae18-9197-4025-8595-dbb345ba800c.tabs.0.elements.1.width', '100'),
('superTableBlockTypes.ba5406f8-567b-4ae1-8d90-b0fc6c47dbf7.fieldLayouts.7dadae18-9197-4025-8595-dbb345ba800c.tabs.0.elements.2.elementCondition', 'null'),
('superTableBlockTypes.ba5406f8-567b-4ae1-8d90-b0fc6c47dbf7.fieldLayouts.7dadae18-9197-4025-8595-dbb345ba800c.tabs.0.elements.2.fieldUid', '\"1d7dc4a5-fcb3-477b-93d2-0adc9b88ccb6\"'),
('superTableBlockTypes.ba5406f8-567b-4ae1-8d90-b0fc6c47dbf7.fieldLayouts.7dadae18-9197-4025-8595-dbb345ba800c.tabs.0.elements.2.instructions', 'null'),
('superTableBlockTypes.ba5406f8-567b-4ae1-8d90-b0fc6c47dbf7.fieldLayouts.7dadae18-9197-4025-8595-dbb345ba800c.tabs.0.elements.2.label', 'null'),
('superTableBlockTypes.ba5406f8-567b-4ae1-8d90-b0fc6c47dbf7.fieldLayouts.7dadae18-9197-4025-8595-dbb345ba800c.tabs.0.elements.2.required', 'false'),
('superTableBlockTypes.ba5406f8-567b-4ae1-8d90-b0fc6c47dbf7.fieldLayouts.7dadae18-9197-4025-8595-dbb345ba800c.tabs.0.elements.2.tip', 'null'),
('superTableBlockTypes.ba5406f8-567b-4ae1-8d90-b0fc6c47dbf7.fieldLayouts.7dadae18-9197-4025-8595-dbb345ba800c.tabs.0.elements.2.type', '\"craft\\\\fieldlayoutelements\\\\CustomField\"'),
('superTableBlockTypes.ba5406f8-567b-4ae1-8d90-b0fc6c47dbf7.fieldLayouts.7dadae18-9197-4025-8595-dbb345ba800c.tabs.0.elements.2.uid', '\"46526c46-4a44-42c4-8fa4-07a3f529bad2\"'),
('superTableBlockTypes.ba5406f8-567b-4ae1-8d90-b0fc6c47dbf7.fieldLayouts.7dadae18-9197-4025-8595-dbb345ba800c.tabs.0.elements.2.userCondition', 'null'),
('superTableBlockTypes.ba5406f8-567b-4ae1-8d90-b0fc6c47dbf7.fieldLayouts.7dadae18-9197-4025-8595-dbb345ba800c.tabs.0.elements.2.warning', 'null'),
('superTableBlockTypes.ba5406f8-567b-4ae1-8d90-b0fc6c47dbf7.fieldLayouts.7dadae18-9197-4025-8595-dbb345ba800c.tabs.0.elements.2.width', '100'),
('superTableBlockTypes.ba5406f8-567b-4ae1-8d90-b0fc6c47dbf7.fieldLayouts.7dadae18-9197-4025-8595-dbb345ba800c.tabs.0.name', '\"Content\"'),
('superTableBlockTypes.ba5406f8-567b-4ae1-8d90-b0fc6c47dbf7.fieldLayouts.7dadae18-9197-4025-8595-dbb345ba800c.tabs.0.uid', '\"f3eed3e8-4faa-4106-b3cd-bb3a5265a2cc\"'),
('superTableBlockTypes.ba5406f8-567b-4ae1-8d90-b0fc6c47dbf7.fieldLayouts.7dadae18-9197-4025-8595-dbb345ba800c.tabs.0.userCondition', 'null'),
('superTableBlockTypes.ba5406f8-567b-4ae1-8d90-b0fc6c47dbf7.fields.1d7dc4a5-fcb3-477b-93d2-0adc9b88ccb6.columnSuffix', 'null'),
('superTableBlockTypes.ba5406f8-567b-4ae1-8d90-b0fc6c47dbf7.fields.1d7dc4a5-fcb3-477b-93d2-0adc9b88ccb6.contentColumnType', '\"string\"'),
('superTableBlockTypes.ba5406f8-567b-4ae1-8d90-b0fc6c47dbf7.fields.1d7dc4a5-fcb3-477b-93d2-0adc9b88ccb6.fieldGroup', 'null'),
('superTableBlockTypes.ba5406f8-567b-4ae1-8d90-b0fc6c47dbf7.fields.1d7dc4a5-fcb3-477b-93d2-0adc9b88ccb6.handle', '\"buttonUrl\"'),
('superTableBlockTypes.ba5406f8-567b-4ae1-8d90-b0fc6c47dbf7.fields.1d7dc4a5-fcb3-477b-93d2-0adc9b88ccb6.instructions', 'null'),
('superTableBlockTypes.ba5406f8-567b-4ae1-8d90-b0fc6c47dbf7.fields.1d7dc4a5-fcb3-477b-93d2-0adc9b88ccb6.name', '\"Button Url\"'),
('superTableBlockTypes.ba5406f8-567b-4ae1-8d90-b0fc6c47dbf7.fields.1d7dc4a5-fcb3-477b-93d2-0adc9b88ccb6.searchable', 'false'),
('superTableBlockTypes.ba5406f8-567b-4ae1-8d90-b0fc6c47dbf7.fields.1d7dc4a5-fcb3-477b-93d2-0adc9b88ccb6.settings.allowCustomText', 'true'),
('superTableBlockTypes.ba5406f8-567b-4ae1-8d90-b0fc6c47dbf7.fields.1d7dc4a5-fcb3-477b-93d2-0adc9b88ccb6.settings.allowTarget', 'false'),
('superTableBlockTypes.ba5406f8-567b-4ae1-8d90-b0fc6c47dbf7.fields.1d7dc4a5-fcb3-477b-93d2-0adc9b88ccb6.settings.autoNoReferrer', 'false'),
('superTableBlockTypes.ba5406f8-567b-4ae1-8d90-b0fc6c47dbf7.fields.1d7dc4a5-fcb3-477b-93d2-0adc9b88ccb6.settings.customTextMaxLength', '0'),
('superTableBlockTypes.ba5406f8-567b-4ae1-8d90-b0fc6c47dbf7.fields.1d7dc4a5-fcb3-477b-93d2-0adc9b88ccb6.settings.customTextRequired', 'false'),
('superTableBlockTypes.ba5406f8-567b-4ae1-8d90-b0fc6c47dbf7.fields.1d7dc4a5-fcb3-477b-93d2-0adc9b88ccb6.settings.defaultLinkName', '\"entry\"'),
('superTableBlockTypes.ba5406f8-567b-4ae1-8d90-b0fc6c47dbf7.fields.1d7dc4a5-fcb3-477b-93d2-0adc9b88ccb6.settings.defaultText', '\"Jetzt lesen\"'),
('superTableBlockTypes.ba5406f8-567b-4ae1-8d90-b0fc6c47dbf7.fields.1d7dc4a5-fcb3-477b-93d2-0adc9b88ccb6.settings.enableAllLinkTypes', 'false'),
('superTableBlockTypes.ba5406f8-567b-4ae1-8d90-b0fc6c47dbf7.fields.1d7dc4a5-fcb3-477b-93d2-0adc9b88ccb6.settings.enableAriaLabel', 'false'),
('superTableBlockTypes.ba5406f8-567b-4ae1-8d90-b0fc6c47dbf7.fields.1d7dc4a5-fcb3-477b-93d2-0adc9b88ccb6.settings.enableElementCache', 'false'),
('superTableBlockTypes.ba5406f8-567b-4ae1-8d90-b0fc6c47dbf7.fields.1d7dc4a5-fcb3-477b-93d2-0adc9b88ccb6.settings.enableTitle', 'false'),
('superTableBlockTypes.ba5406f8-567b-4ae1-8d90-b0fc6c47dbf7.fields.1d7dc4a5-fcb3-477b-93d2-0adc9b88ccb6.settings.typeSettings.asset.allowCrossSiteLink', 'false'),
('superTableBlockTypes.ba5406f8-567b-4ae1-8d90-b0fc6c47dbf7.fields.1d7dc4a5-fcb3-477b-93d2-0adc9b88ccb6.settings.typeSettings.asset.allowCustomQuery', 'false'),
('superTableBlockTypes.ba5406f8-567b-4ae1-8d90-b0fc6c47dbf7.fields.1d7dc4a5-fcb3-477b-93d2-0adc9b88ccb6.settings.typeSettings.asset.enabled', 'false'),
('superTableBlockTypes.ba5406f8-567b-4ae1-8d90-b0fc6c47dbf7.fields.1d7dc4a5-fcb3-477b-93d2-0adc9b88ccb6.settings.typeSettings.asset.sources', '\"*\"'),
('superTableBlockTypes.ba5406f8-567b-4ae1-8d90-b0fc6c47dbf7.fields.1d7dc4a5-fcb3-477b-93d2-0adc9b88ccb6.settings.typeSettings.category.allowCrossSiteLink', 'false'),
('superTableBlockTypes.ba5406f8-567b-4ae1-8d90-b0fc6c47dbf7.fields.1d7dc4a5-fcb3-477b-93d2-0adc9b88ccb6.settings.typeSettings.category.allowCustomQuery', 'false'),
('superTableBlockTypes.ba5406f8-567b-4ae1-8d90-b0fc6c47dbf7.fields.1d7dc4a5-fcb3-477b-93d2-0adc9b88ccb6.settings.typeSettings.category.enabled', 'false'),
('superTableBlockTypes.ba5406f8-567b-4ae1-8d90-b0fc6c47dbf7.fields.1d7dc4a5-fcb3-477b-93d2-0adc9b88ccb6.settings.typeSettings.category.sources', '\"*\"'),
('superTableBlockTypes.ba5406f8-567b-4ae1-8d90-b0fc6c47dbf7.fields.1d7dc4a5-fcb3-477b-93d2-0adc9b88ccb6.settings.typeSettings.custom.allowAliases', 'false'),
('superTableBlockTypes.ba5406f8-567b-4ae1-8d90-b0fc6c47dbf7.fields.1d7dc4a5-fcb3-477b-93d2-0adc9b88ccb6.settings.typeSettings.custom.disableValidation', 'false'),
('superTableBlockTypes.ba5406f8-567b-4ae1-8d90-b0fc6c47dbf7.fields.1d7dc4a5-fcb3-477b-93d2-0adc9b88ccb6.settings.typeSettings.custom.enabled', 'false'),
('superTableBlockTypes.ba5406f8-567b-4ae1-8d90-b0fc6c47dbf7.fields.1d7dc4a5-fcb3-477b-93d2-0adc9b88ccb6.settings.typeSettings.email.allowAliases', 'false'),
('superTableBlockTypes.ba5406f8-567b-4ae1-8d90-b0fc6c47dbf7.fields.1d7dc4a5-fcb3-477b-93d2-0adc9b88ccb6.settings.typeSettings.email.disableValidation', 'false'),
('superTableBlockTypes.ba5406f8-567b-4ae1-8d90-b0fc6c47dbf7.fields.1d7dc4a5-fcb3-477b-93d2-0adc9b88ccb6.settings.typeSettings.email.enabled', 'false'),
('superTableBlockTypes.ba5406f8-567b-4ae1-8d90-b0fc6c47dbf7.fields.1d7dc4a5-fcb3-477b-93d2-0adc9b88ccb6.settings.typeSettings.entry.allowCrossSiteLink', 'false'),
('superTableBlockTypes.ba5406f8-567b-4ae1-8d90-b0fc6c47dbf7.fields.1d7dc4a5-fcb3-477b-93d2-0adc9b88ccb6.settings.typeSettings.entry.allowCustomQuery', 'false'),
('superTableBlockTypes.ba5406f8-567b-4ae1-8d90-b0fc6c47dbf7.fields.1d7dc4a5-fcb3-477b-93d2-0adc9b88ccb6.settings.typeSettings.entry.enabled', 'true'),
('superTableBlockTypes.ba5406f8-567b-4ae1-8d90-b0fc6c47dbf7.fields.1d7dc4a5-fcb3-477b-93d2-0adc9b88ccb6.settings.typeSettings.entry.sources', '\"*\"'),
('superTableBlockTypes.ba5406f8-567b-4ae1-8d90-b0fc6c47dbf7.fields.1d7dc4a5-fcb3-477b-93d2-0adc9b88ccb6.settings.typeSettings.site.enabled', 'false'),
('superTableBlockTypes.ba5406f8-567b-4ae1-8d90-b0fc6c47dbf7.fields.1d7dc4a5-fcb3-477b-93d2-0adc9b88ccb6.settings.typeSettings.site.sites', '\"*\"'),
('superTableBlockTypes.ba5406f8-567b-4ae1-8d90-b0fc6c47dbf7.fields.1d7dc4a5-fcb3-477b-93d2-0adc9b88ccb6.settings.typeSettings.tel.allowAliases', 'false'),
('superTableBlockTypes.ba5406f8-567b-4ae1-8d90-b0fc6c47dbf7.fields.1d7dc4a5-fcb3-477b-93d2-0adc9b88ccb6.settings.typeSettings.tel.disableValidation', 'false'),
('superTableBlockTypes.ba5406f8-567b-4ae1-8d90-b0fc6c47dbf7.fields.1d7dc4a5-fcb3-477b-93d2-0adc9b88ccb6.settings.typeSettings.tel.enabled', 'false'),
('superTableBlockTypes.ba5406f8-567b-4ae1-8d90-b0fc6c47dbf7.fields.1d7dc4a5-fcb3-477b-93d2-0adc9b88ccb6.settings.typeSettings.url.allowAliases', 'false'),
('superTableBlockTypes.ba5406f8-567b-4ae1-8d90-b0fc6c47dbf7.fields.1d7dc4a5-fcb3-477b-93d2-0adc9b88ccb6.settings.typeSettings.url.disableValidation', 'false');
INSERT INTO `projectconfig` (`path`, `value`) VALUES
('superTableBlockTypes.ba5406f8-567b-4ae1-8d90-b0fc6c47dbf7.fields.1d7dc4a5-fcb3-477b-93d2-0adc9b88ccb6.settings.typeSettings.url.enabled', 'true'),
('superTableBlockTypes.ba5406f8-567b-4ae1-8d90-b0fc6c47dbf7.fields.1d7dc4a5-fcb3-477b-93d2-0adc9b88ccb6.settings.typeSettings.user.allowCrossSiteLink', 'false'),
('superTableBlockTypes.ba5406f8-567b-4ae1-8d90-b0fc6c47dbf7.fields.1d7dc4a5-fcb3-477b-93d2-0adc9b88ccb6.settings.typeSettings.user.allowCustomQuery', 'false'),
('superTableBlockTypes.ba5406f8-567b-4ae1-8d90-b0fc6c47dbf7.fields.1d7dc4a5-fcb3-477b-93d2-0adc9b88ccb6.settings.typeSettings.user.enabled', 'false'),
('superTableBlockTypes.ba5406f8-567b-4ae1-8d90-b0fc6c47dbf7.fields.1d7dc4a5-fcb3-477b-93d2-0adc9b88ccb6.settings.typeSettings.user.sources', '\"*\"'),
('superTableBlockTypes.ba5406f8-567b-4ae1-8d90-b0fc6c47dbf7.fields.1d7dc4a5-fcb3-477b-93d2-0adc9b88ccb6.translationKeyFormat', 'null'),
('superTableBlockTypes.ba5406f8-567b-4ae1-8d90-b0fc6c47dbf7.fields.1d7dc4a5-fcb3-477b-93d2-0adc9b88ccb6.translationMethod', '\"none\"'),
('superTableBlockTypes.ba5406f8-567b-4ae1-8d90-b0fc6c47dbf7.fields.1d7dc4a5-fcb3-477b-93d2-0adc9b88ccb6.type', '\"lenz\\\\linkfield\\\\fields\\\\LinkField\"'),
('superTableBlockTypes.ba5406f8-567b-4ae1-8d90-b0fc6c47dbf7.fields.7d14fb5f-7ea2-4695-95f7-923c9bbd3fb8.columnSuffix', 'null'),
('superTableBlockTypes.ba5406f8-567b-4ae1-8d90-b0fc6c47dbf7.fields.7d14fb5f-7ea2-4695-95f7-923c9bbd3fb8.contentColumnType', '\"text\"'),
('superTableBlockTypes.ba5406f8-567b-4ae1-8d90-b0fc6c47dbf7.fields.7d14fb5f-7ea2-4695-95f7-923c9bbd3fb8.fieldGroup', 'null'),
('superTableBlockTypes.ba5406f8-567b-4ae1-8d90-b0fc6c47dbf7.fields.7d14fb5f-7ea2-4695-95f7-923c9bbd3fb8.handle', '\"headline\"'),
('superTableBlockTypes.ba5406f8-567b-4ae1-8d90-b0fc6c47dbf7.fields.7d14fb5f-7ea2-4695-95f7-923c9bbd3fb8.instructions', 'null'),
('superTableBlockTypes.ba5406f8-567b-4ae1-8d90-b0fc6c47dbf7.fields.7d14fb5f-7ea2-4695-95f7-923c9bbd3fb8.name', '\"Headline\"'),
('superTableBlockTypes.ba5406f8-567b-4ae1-8d90-b0fc6c47dbf7.fields.7d14fb5f-7ea2-4695-95f7-923c9bbd3fb8.searchable', 'false'),
('superTableBlockTypes.ba5406f8-567b-4ae1-8d90-b0fc6c47dbf7.fields.7d14fb5f-7ea2-4695-95f7-923c9bbd3fb8.settings.byteLimit', 'null'),
('superTableBlockTypes.ba5406f8-567b-4ae1-8d90-b0fc6c47dbf7.fields.7d14fb5f-7ea2-4695-95f7-923c9bbd3fb8.settings.charLimit', 'null'),
('superTableBlockTypes.ba5406f8-567b-4ae1-8d90-b0fc6c47dbf7.fields.7d14fb5f-7ea2-4695-95f7-923c9bbd3fb8.settings.code', 'false'),
('superTableBlockTypes.ba5406f8-567b-4ae1-8d90-b0fc6c47dbf7.fields.7d14fb5f-7ea2-4695-95f7-923c9bbd3fb8.settings.columnType', 'null'),
('superTableBlockTypes.ba5406f8-567b-4ae1-8d90-b0fc6c47dbf7.fields.7d14fb5f-7ea2-4695-95f7-923c9bbd3fb8.settings.initialRows', '4'),
('superTableBlockTypes.ba5406f8-567b-4ae1-8d90-b0fc6c47dbf7.fields.7d14fb5f-7ea2-4695-95f7-923c9bbd3fb8.settings.multiline', 'false'),
('superTableBlockTypes.ba5406f8-567b-4ae1-8d90-b0fc6c47dbf7.fields.7d14fb5f-7ea2-4695-95f7-923c9bbd3fb8.settings.placeholder', 'null'),
('superTableBlockTypes.ba5406f8-567b-4ae1-8d90-b0fc6c47dbf7.fields.7d14fb5f-7ea2-4695-95f7-923c9bbd3fb8.settings.uiMode', '\"normal\"'),
('superTableBlockTypes.ba5406f8-567b-4ae1-8d90-b0fc6c47dbf7.fields.7d14fb5f-7ea2-4695-95f7-923c9bbd3fb8.translationKeyFormat', 'null'),
('superTableBlockTypes.ba5406f8-567b-4ae1-8d90-b0fc6c47dbf7.fields.7d14fb5f-7ea2-4695-95f7-923c9bbd3fb8.translationMethod', '\"none\"'),
('superTableBlockTypes.ba5406f8-567b-4ae1-8d90-b0fc6c47dbf7.fields.7d14fb5f-7ea2-4695-95f7-923c9bbd3fb8.type', '\"craft\\\\fields\\\\PlainText\"'),
('superTableBlockTypes.ba5406f8-567b-4ae1-8d90-b0fc6c47dbf7.fields.987bd29f-6646-4a74-958b-01ebb601675b.columnSuffix', 'null'),
('superTableBlockTypes.ba5406f8-567b-4ae1-8d90-b0fc6c47dbf7.fields.987bd29f-6646-4a74-958b-01ebb601675b.contentColumnType', '\"text\"'),
('superTableBlockTypes.ba5406f8-567b-4ae1-8d90-b0fc6c47dbf7.fields.987bd29f-6646-4a74-958b-01ebb601675b.fieldGroup', 'null'),
('superTableBlockTypes.ba5406f8-567b-4ae1-8d90-b0fc6c47dbf7.fields.987bd29f-6646-4a74-958b-01ebb601675b.handle', '\"shortText\"'),
('superTableBlockTypes.ba5406f8-567b-4ae1-8d90-b0fc6c47dbf7.fields.987bd29f-6646-4a74-958b-01ebb601675b.instructions', 'null'),
('superTableBlockTypes.ba5406f8-567b-4ae1-8d90-b0fc6c47dbf7.fields.987bd29f-6646-4a74-958b-01ebb601675b.name', '\"Short Text\"'),
('superTableBlockTypes.ba5406f8-567b-4ae1-8d90-b0fc6c47dbf7.fields.987bd29f-6646-4a74-958b-01ebb601675b.searchable', 'false'),
('superTableBlockTypes.ba5406f8-567b-4ae1-8d90-b0fc6c47dbf7.fields.987bd29f-6646-4a74-958b-01ebb601675b.settings.byteLimit', 'null'),
('superTableBlockTypes.ba5406f8-567b-4ae1-8d90-b0fc6c47dbf7.fields.987bd29f-6646-4a74-958b-01ebb601675b.settings.charLimit', 'null'),
('superTableBlockTypes.ba5406f8-567b-4ae1-8d90-b0fc6c47dbf7.fields.987bd29f-6646-4a74-958b-01ebb601675b.settings.code', 'false'),
('superTableBlockTypes.ba5406f8-567b-4ae1-8d90-b0fc6c47dbf7.fields.987bd29f-6646-4a74-958b-01ebb601675b.settings.columnType', 'null'),
('superTableBlockTypes.ba5406f8-567b-4ae1-8d90-b0fc6c47dbf7.fields.987bd29f-6646-4a74-958b-01ebb601675b.settings.initialRows', '4'),
('superTableBlockTypes.ba5406f8-567b-4ae1-8d90-b0fc6c47dbf7.fields.987bd29f-6646-4a74-958b-01ebb601675b.settings.multiline', 'false'),
('superTableBlockTypes.ba5406f8-567b-4ae1-8d90-b0fc6c47dbf7.fields.987bd29f-6646-4a74-958b-01ebb601675b.settings.placeholder', 'null'),
('superTableBlockTypes.ba5406f8-567b-4ae1-8d90-b0fc6c47dbf7.fields.987bd29f-6646-4a74-958b-01ebb601675b.settings.uiMode', '\"normal\"'),
('superTableBlockTypes.ba5406f8-567b-4ae1-8d90-b0fc6c47dbf7.fields.987bd29f-6646-4a74-958b-01ebb601675b.translationKeyFormat', 'null'),
('superTableBlockTypes.ba5406f8-567b-4ae1-8d90-b0fc6c47dbf7.fields.987bd29f-6646-4a74-958b-01ebb601675b.translationMethod', '\"none\"'),
('superTableBlockTypes.ba5406f8-567b-4ae1-8d90-b0fc6c47dbf7.fields.987bd29f-6646-4a74-958b-01ebb601675b.type', '\"craft\\\\fields\\\\PlainText\"'),
('superTableBlockTypes.f33818e5-598e-4133-80af-07ea7ac337ef.field', '\"9b168937-c11f-4a7e-9741-f9d6aa77c9d0\"'),
('superTableBlockTypes.f33818e5-598e-4133-80af-07ea7ac337ef.fieldLayouts.e4c1c0b9-a203-4b0e-8906-5fc16c1967d7.tabs.0.elementCondition', 'null'),
('superTableBlockTypes.f33818e5-598e-4133-80af-07ea7ac337ef.fieldLayouts.e4c1c0b9-a203-4b0e-8906-5fc16c1967d7.tabs.0.elements.0.elementCondition', 'null'),
('superTableBlockTypes.f33818e5-598e-4133-80af-07ea7ac337ef.fieldLayouts.e4c1c0b9-a203-4b0e-8906-5fc16c1967d7.tabs.0.elements.0.fieldUid', '\"2855e71a-4ab6-45e5-b716-fe4cfc071f33\"'),
('superTableBlockTypes.f33818e5-598e-4133-80af-07ea7ac337ef.fieldLayouts.e4c1c0b9-a203-4b0e-8906-5fc16c1967d7.tabs.0.elements.0.instructions', 'null'),
('superTableBlockTypes.f33818e5-598e-4133-80af-07ea7ac337ef.fieldLayouts.e4c1c0b9-a203-4b0e-8906-5fc16c1967d7.tabs.0.elements.0.label', 'null'),
('superTableBlockTypes.f33818e5-598e-4133-80af-07ea7ac337ef.fieldLayouts.e4c1c0b9-a203-4b0e-8906-5fc16c1967d7.tabs.0.elements.0.required', 'false'),
('superTableBlockTypes.f33818e5-598e-4133-80af-07ea7ac337ef.fieldLayouts.e4c1c0b9-a203-4b0e-8906-5fc16c1967d7.tabs.0.elements.0.tip', 'null'),
('superTableBlockTypes.f33818e5-598e-4133-80af-07ea7ac337ef.fieldLayouts.e4c1c0b9-a203-4b0e-8906-5fc16c1967d7.tabs.0.elements.0.type', '\"craft\\\\fieldlayoutelements\\\\CustomField\"'),
('superTableBlockTypes.f33818e5-598e-4133-80af-07ea7ac337ef.fieldLayouts.e4c1c0b9-a203-4b0e-8906-5fc16c1967d7.tabs.0.elements.0.uid', '\"cf977ef4-f747-4645-9e08-165a57a92b0d\"'),
('superTableBlockTypes.f33818e5-598e-4133-80af-07ea7ac337ef.fieldLayouts.e4c1c0b9-a203-4b0e-8906-5fc16c1967d7.tabs.0.elements.0.userCondition', 'null'),
('superTableBlockTypes.f33818e5-598e-4133-80af-07ea7ac337ef.fieldLayouts.e4c1c0b9-a203-4b0e-8906-5fc16c1967d7.tabs.0.elements.0.warning', 'null'),
('superTableBlockTypes.f33818e5-598e-4133-80af-07ea7ac337ef.fieldLayouts.e4c1c0b9-a203-4b0e-8906-5fc16c1967d7.tabs.0.elements.0.width', '100'),
('superTableBlockTypes.f33818e5-598e-4133-80af-07ea7ac337ef.fieldLayouts.e4c1c0b9-a203-4b0e-8906-5fc16c1967d7.tabs.0.elements.1.elementCondition', 'null'),
('superTableBlockTypes.f33818e5-598e-4133-80af-07ea7ac337ef.fieldLayouts.e4c1c0b9-a203-4b0e-8906-5fc16c1967d7.tabs.0.elements.1.fieldUid', '\"9583ec6a-d404-475a-8632-f57bf1d4aa04\"'),
('superTableBlockTypes.f33818e5-598e-4133-80af-07ea7ac337ef.fieldLayouts.e4c1c0b9-a203-4b0e-8906-5fc16c1967d7.tabs.0.elements.1.instructions', 'null'),
('superTableBlockTypes.f33818e5-598e-4133-80af-07ea7ac337ef.fieldLayouts.e4c1c0b9-a203-4b0e-8906-5fc16c1967d7.tabs.0.elements.1.label', 'null'),
('superTableBlockTypes.f33818e5-598e-4133-80af-07ea7ac337ef.fieldLayouts.e4c1c0b9-a203-4b0e-8906-5fc16c1967d7.tabs.0.elements.1.required', 'false'),
('superTableBlockTypes.f33818e5-598e-4133-80af-07ea7ac337ef.fieldLayouts.e4c1c0b9-a203-4b0e-8906-5fc16c1967d7.tabs.0.elements.1.tip', 'null'),
('superTableBlockTypes.f33818e5-598e-4133-80af-07ea7ac337ef.fieldLayouts.e4c1c0b9-a203-4b0e-8906-5fc16c1967d7.tabs.0.elements.1.type', '\"craft\\\\fieldlayoutelements\\\\CustomField\"'),
('superTableBlockTypes.f33818e5-598e-4133-80af-07ea7ac337ef.fieldLayouts.e4c1c0b9-a203-4b0e-8906-5fc16c1967d7.tabs.0.elements.1.uid', '\"5a56da0a-ce25-42f5-900e-678c8c4cee72\"'),
('superTableBlockTypes.f33818e5-598e-4133-80af-07ea7ac337ef.fieldLayouts.e4c1c0b9-a203-4b0e-8906-5fc16c1967d7.tabs.0.elements.1.userCondition', 'null'),
('superTableBlockTypes.f33818e5-598e-4133-80af-07ea7ac337ef.fieldLayouts.e4c1c0b9-a203-4b0e-8906-5fc16c1967d7.tabs.0.elements.1.warning', 'null'),
('superTableBlockTypes.f33818e5-598e-4133-80af-07ea7ac337ef.fieldLayouts.e4c1c0b9-a203-4b0e-8906-5fc16c1967d7.tabs.0.elements.1.width', '100'),
('superTableBlockTypes.f33818e5-598e-4133-80af-07ea7ac337ef.fieldLayouts.e4c1c0b9-a203-4b0e-8906-5fc16c1967d7.tabs.0.elements.2.elementCondition', 'null'),
('superTableBlockTypes.f33818e5-598e-4133-80af-07ea7ac337ef.fieldLayouts.e4c1c0b9-a203-4b0e-8906-5fc16c1967d7.tabs.0.elements.2.fieldUid', '\"4c833b87-8963-49bf-b039-fb9029ebcfa6\"'),
('superTableBlockTypes.f33818e5-598e-4133-80af-07ea7ac337ef.fieldLayouts.e4c1c0b9-a203-4b0e-8906-5fc16c1967d7.tabs.0.elements.2.instructions', 'null'),
('superTableBlockTypes.f33818e5-598e-4133-80af-07ea7ac337ef.fieldLayouts.e4c1c0b9-a203-4b0e-8906-5fc16c1967d7.tabs.0.elements.2.label', 'null'),
('superTableBlockTypes.f33818e5-598e-4133-80af-07ea7ac337ef.fieldLayouts.e4c1c0b9-a203-4b0e-8906-5fc16c1967d7.tabs.0.elements.2.required', 'false'),
('superTableBlockTypes.f33818e5-598e-4133-80af-07ea7ac337ef.fieldLayouts.e4c1c0b9-a203-4b0e-8906-5fc16c1967d7.tabs.0.elements.2.tip', 'null'),
('superTableBlockTypes.f33818e5-598e-4133-80af-07ea7ac337ef.fieldLayouts.e4c1c0b9-a203-4b0e-8906-5fc16c1967d7.tabs.0.elements.2.type', '\"craft\\\\fieldlayoutelements\\\\CustomField\"'),
('superTableBlockTypes.f33818e5-598e-4133-80af-07ea7ac337ef.fieldLayouts.e4c1c0b9-a203-4b0e-8906-5fc16c1967d7.tabs.0.elements.2.uid', '\"4eac30d7-f370-4c57-b8e6-fe88a43a9f6b\"'),
('superTableBlockTypes.f33818e5-598e-4133-80af-07ea7ac337ef.fieldLayouts.e4c1c0b9-a203-4b0e-8906-5fc16c1967d7.tabs.0.elements.2.userCondition', 'null'),
('superTableBlockTypes.f33818e5-598e-4133-80af-07ea7ac337ef.fieldLayouts.e4c1c0b9-a203-4b0e-8906-5fc16c1967d7.tabs.0.elements.2.warning', 'null'),
('superTableBlockTypes.f33818e5-598e-4133-80af-07ea7ac337ef.fieldLayouts.e4c1c0b9-a203-4b0e-8906-5fc16c1967d7.tabs.0.elements.2.width', '100'),
('superTableBlockTypes.f33818e5-598e-4133-80af-07ea7ac337ef.fieldLayouts.e4c1c0b9-a203-4b0e-8906-5fc16c1967d7.tabs.0.elements.3.elementCondition', 'null'),
('superTableBlockTypes.f33818e5-598e-4133-80af-07ea7ac337ef.fieldLayouts.e4c1c0b9-a203-4b0e-8906-5fc16c1967d7.tabs.0.elements.3.fieldUid', '\"e9361ffe-b7e5-47e5-b505-06837d3a9487\"'),
('superTableBlockTypes.f33818e5-598e-4133-80af-07ea7ac337ef.fieldLayouts.e4c1c0b9-a203-4b0e-8906-5fc16c1967d7.tabs.0.elements.3.instructions', 'null'),
('superTableBlockTypes.f33818e5-598e-4133-80af-07ea7ac337ef.fieldLayouts.e4c1c0b9-a203-4b0e-8906-5fc16c1967d7.tabs.0.elements.3.label', 'null'),
('superTableBlockTypes.f33818e5-598e-4133-80af-07ea7ac337ef.fieldLayouts.e4c1c0b9-a203-4b0e-8906-5fc16c1967d7.tabs.0.elements.3.required', 'false'),
('superTableBlockTypes.f33818e5-598e-4133-80af-07ea7ac337ef.fieldLayouts.e4c1c0b9-a203-4b0e-8906-5fc16c1967d7.tabs.0.elements.3.tip', 'null'),
('superTableBlockTypes.f33818e5-598e-4133-80af-07ea7ac337ef.fieldLayouts.e4c1c0b9-a203-4b0e-8906-5fc16c1967d7.tabs.0.elements.3.type', '\"craft\\\\fieldlayoutelements\\\\CustomField\"'),
('superTableBlockTypes.f33818e5-598e-4133-80af-07ea7ac337ef.fieldLayouts.e4c1c0b9-a203-4b0e-8906-5fc16c1967d7.tabs.0.elements.3.uid', '\"b3e28a12-e01c-4729-9b2e-082f5ca51077\"'),
('superTableBlockTypes.f33818e5-598e-4133-80af-07ea7ac337ef.fieldLayouts.e4c1c0b9-a203-4b0e-8906-5fc16c1967d7.tabs.0.elements.3.userCondition', 'null'),
('superTableBlockTypes.f33818e5-598e-4133-80af-07ea7ac337ef.fieldLayouts.e4c1c0b9-a203-4b0e-8906-5fc16c1967d7.tabs.0.elements.3.warning', 'null'),
('superTableBlockTypes.f33818e5-598e-4133-80af-07ea7ac337ef.fieldLayouts.e4c1c0b9-a203-4b0e-8906-5fc16c1967d7.tabs.0.elements.3.width', '100'),
('superTableBlockTypes.f33818e5-598e-4133-80af-07ea7ac337ef.fieldLayouts.e4c1c0b9-a203-4b0e-8906-5fc16c1967d7.tabs.0.elements.4.elementCondition', 'null'),
('superTableBlockTypes.f33818e5-598e-4133-80af-07ea7ac337ef.fieldLayouts.e4c1c0b9-a203-4b0e-8906-5fc16c1967d7.tabs.0.elements.4.fieldUid', '\"26f05fc1-ee8e-4be8-95cb-ee95fc0ba4ea\"'),
('superTableBlockTypes.f33818e5-598e-4133-80af-07ea7ac337ef.fieldLayouts.e4c1c0b9-a203-4b0e-8906-5fc16c1967d7.tabs.0.elements.4.instructions', 'null'),
('superTableBlockTypes.f33818e5-598e-4133-80af-07ea7ac337ef.fieldLayouts.e4c1c0b9-a203-4b0e-8906-5fc16c1967d7.tabs.0.elements.4.label', 'null'),
('superTableBlockTypes.f33818e5-598e-4133-80af-07ea7ac337ef.fieldLayouts.e4c1c0b9-a203-4b0e-8906-5fc16c1967d7.tabs.0.elements.4.required', 'false'),
('superTableBlockTypes.f33818e5-598e-4133-80af-07ea7ac337ef.fieldLayouts.e4c1c0b9-a203-4b0e-8906-5fc16c1967d7.tabs.0.elements.4.tip', 'null'),
('superTableBlockTypes.f33818e5-598e-4133-80af-07ea7ac337ef.fieldLayouts.e4c1c0b9-a203-4b0e-8906-5fc16c1967d7.tabs.0.elements.4.type', '\"craft\\\\fieldlayoutelements\\\\CustomField\"'),
('superTableBlockTypes.f33818e5-598e-4133-80af-07ea7ac337ef.fieldLayouts.e4c1c0b9-a203-4b0e-8906-5fc16c1967d7.tabs.0.elements.4.uid', '\"696124f9-a166-4bfa-b533-84b1061b27ba\"'),
('superTableBlockTypes.f33818e5-598e-4133-80af-07ea7ac337ef.fieldLayouts.e4c1c0b9-a203-4b0e-8906-5fc16c1967d7.tabs.0.elements.4.userCondition', 'null'),
('superTableBlockTypes.f33818e5-598e-4133-80af-07ea7ac337ef.fieldLayouts.e4c1c0b9-a203-4b0e-8906-5fc16c1967d7.tabs.0.elements.4.warning', 'null'),
('superTableBlockTypes.f33818e5-598e-4133-80af-07ea7ac337ef.fieldLayouts.e4c1c0b9-a203-4b0e-8906-5fc16c1967d7.tabs.0.elements.4.width', '100'),
('superTableBlockTypes.f33818e5-598e-4133-80af-07ea7ac337ef.fieldLayouts.e4c1c0b9-a203-4b0e-8906-5fc16c1967d7.tabs.0.name', '\"Content\"'),
('superTableBlockTypes.f33818e5-598e-4133-80af-07ea7ac337ef.fieldLayouts.e4c1c0b9-a203-4b0e-8906-5fc16c1967d7.tabs.0.uid', '\"03393706-d426-43eb-82b8-7e1cc0e8bca8\"'),
('superTableBlockTypes.f33818e5-598e-4133-80af-07ea7ac337ef.fieldLayouts.e4c1c0b9-a203-4b0e-8906-5fc16c1967d7.tabs.0.userCondition', 'null'),
('superTableBlockTypes.f33818e5-598e-4133-80af-07ea7ac337ef.fields.26f05fc1-ee8e-4be8-95cb-ee95fc0ba4ea.columnSuffix', 'null'),
('superTableBlockTypes.f33818e5-598e-4133-80af-07ea7ac337ef.fields.26f05fc1-ee8e-4be8-95cb-ee95fc0ba4ea.contentColumnType', '\"string\"'),
('superTableBlockTypes.f33818e5-598e-4133-80af-07ea7ac337ef.fields.26f05fc1-ee8e-4be8-95cb-ee95fc0ba4ea.fieldGroup', 'null'),
('superTableBlockTypes.f33818e5-598e-4133-80af-07ea7ac337ef.fields.26f05fc1-ee8e-4be8-95cb-ee95fc0ba4ea.handle', '\"button\"'),
('superTableBlockTypes.f33818e5-598e-4133-80af-07ea7ac337ef.fields.26f05fc1-ee8e-4be8-95cb-ee95fc0ba4ea.instructions', 'null'),
('superTableBlockTypes.f33818e5-598e-4133-80af-07ea7ac337ef.fields.26f05fc1-ee8e-4be8-95cb-ee95fc0ba4ea.name', '\"Button\"'),
('superTableBlockTypes.f33818e5-598e-4133-80af-07ea7ac337ef.fields.26f05fc1-ee8e-4be8-95cb-ee95fc0ba4ea.searchable', 'false'),
('superTableBlockTypes.f33818e5-598e-4133-80af-07ea7ac337ef.fields.26f05fc1-ee8e-4be8-95cb-ee95fc0ba4ea.settings.allowCustomText', 'true'),
('superTableBlockTypes.f33818e5-598e-4133-80af-07ea7ac337ef.fields.26f05fc1-ee8e-4be8-95cb-ee95fc0ba4ea.settings.allowTarget', 'false'),
('superTableBlockTypes.f33818e5-598e-4133-80af-07ea7ac337ef.fields.26f05fc1-ee8e-4be8-95cb-ee95fc0ba4ea.settings.autoNoReferrer', 'false'),
('superTableBlockTypes.f33818e5-598e-4133-80af-07ea7ac337ef.fields.26f05fc1-ee8e-4be8-95cb-ee95fc0ba4ea.settings.customTextMaxLength', '0'),
('superTableBlockTypes.f33818e5-598e-4133-80af-07ea7ac337ef.fields.26f05fc1-ee8e-4be8-95cb-ee95fc0ba4ea.settings.customTextRequired', 'false'),
('superTableBlockTypes.f33818e5-598e-4133-80af-07ea7ac337ef.fields.26f05fc1-ee8e-4be8-95cb-ee95fc0ba4ea.settings.defaultLinkName', '\"entry\"'),
('superTableBlockTypes.f33818e5-598e-4133-80af-07ea7ac337ef.fields.26f05fc1-ee8e-4be8-95cb-ee95fc0ba4ea.settings.defaultText', '\"Jetzt bewerben\"'),
('superTableBlockTypes.f33818e5-598e-4133-80af-07ea7ac337ef.fields.26f05fc1-ee8e-4be8-95cb-ee95fc0ba4ea.settings.enableAllLinkTypes', 'false'),
('superTableBlockTypes.f33818e5-598e-4133-80af-07ea7ac337ef.fields.26f05fc1-ee8e-4be8-95cb-ee95fc0ba4ea.settings.enableAriaLabel', 'false'),
('superTableBlockTypes.f33818e5-598e-4133-80af-07ea7ac337ef.fields.26f05fc1-ee8e-4be8-95cb-ee95fc0ba4ea.settings.enableElementCache', 'false'),
('superTableBlockTypes.f33818e5-598e-4133-80af-07ea7ac337ef.fields.26f05fc1-ee8e-4be8-95cb-ee95fc0ba4ea.settings.enableTitle', 'false'),
('superTableBlockTypes.f33818e5-598e-4133-80af-07ea7ac337ef.fields.26f05fc1-ee8e-4be8-95cb-ee95fc0ba4ea.settings.typeSettings.asset.allowCrossSiteLink', 'false'),
('superTableBlockTypes.f33818e5-598e-4133-80af-07ea7ac337ef.fields.26f05fc1-ee8e-4be8-95cb-ee95fc0ba4ea.settings.typeSettings.asset.allowCustomQuery', 'false'),
('superTableBlockTypes.f33818e5-598e-4133-80af-07ea7ac337ef.fields.26f05fc1-ee8e-4be8-95cb-ee95fc0ba4ea.settings.typeSettings.asset.enabled', 'false'),
('superTableBlockTypes.f33818e5-598e-4133-80af-07ea7ac337ef.fields.26f05fc1-ee8e-4be8-95cb-ee95fc0ba4ea.settings.typeSettings.asset.sources', '\"*\"'),
('superTableBlockTypes.f33818e5-598e-4133-80af-07ea7ac337ef.fields.26f05fc1-ee8e-4be8-95cb-ee95fc0ba4ea.settings.typeSettings.category.allowCrossSiteLink', 'false'),
('superTableBlockTypes.f33818e5-598e-4133-80af-07ea7ac337ef.fields.26f05fc1-ee8e-4be8-95cb-ee95fc0ba4ea.settings.typeSettings.category.allowCustomQuery', 'false'),
('superTableBlockTypes.f33818e5-598e-4133-80af-07ea7ac337ef.fields.26f05fc1-ee8e-4be8-95cb-ee95fc0ba4ea.settings.typeSettings.category.enabled', 'false'),
('superTableBlockTypes.f33818e5-598e-4133-80af-07ea7ac337ef.fields.26f05fc1-ee8e-4be8-95cb-ee95fc0ba4ea.settings.typeSettings.category.sources', '\"*\"'),
('superTableBlockTypes.f33818e5-598e-4133-80af-07ea7ac337ef.fields.26f05fc1-ee8e-4be8-95cb-ee95fc0ba4ea.settings.typeSettings.custom.allowAliases', 'false'),
('superTableBlockTypes.f33818e5-598e-4133-80af-07ea7ac337ef.fields.26f05fc1-ee8e-4be8-95cb-ee95fc0ba4ea.settings.typeSettings.custom.disableValidation', 'false'),
('superTableBlockTypes.f33818e5-598e-4133-80af-07ea7ac337ef.fields.26f05fc1-ee8e-4be8-95cb-ee95fc0ba4ea.settings.typeSettings.custom.enabled', 'false'),
('superTableBlockTypes.f33818e5-598e-4133-80af-07ea7ac337ef.fields.26f05fc1-ee8e-4be8-95cb-ee95fc0ba4ea.settings.typeSettings.email.allowAliases', 'false'),
('superTableBlockTypes.f33818e5-598e-4133-80af-07ea7ac337ef.fields.26f05fc1-ee8e-4be8-95cb-ee95fc0ba4ea.settings.typeSettings.email.disableValidation', 'false'),
('superTableBlockTypes.f33818e5-598e-4133-80af-07ea7ac337ef.fields.26f05fc1-ee8e-4be8-95cb-ee95fc0ba4ea.settings.typeSettings.email.enabled', 'false'),
('superTableBlockTypes.f33818e5-598e-4133-80af-07ea7ac337ef.fields.26f05fc1-ee8e-4be8-95cb-ee95fc0ba4ea.settings.typeSettings.entry.allowCrossSiteLink', 'false'),
('superTableBlockTypes.f33818e5-598e-4133-80af-07ea7ac337ef.fields.26f05fc1-ee8e-4be8-95cb-ee95fc0ba4ea.settings.typeSettings.entry.allowCustomQuery', 'false'),
('superTableBlockTypes.f33818e5-598e-4133-80af-07ea7ac337ef.fields.26f05fc1-ee8e-4be8-95cb-ee95fc0ba4ea.settings.typeSettings.entry.enabled', 'true'),
('superTableBlockTypes.f33818e5-598e-4133-80af-07ea7ac337ef.fields.26f05fc1-ee8e-4be8-95cb-ee95fc0ba4ea.settings.typeSettings.entry.sources', '\"*\"'),
('superTableBlockTypes.f33818e5-598e-4133-80af-07ea7ac337ef.fields.26f05fc1-ee8e-4be8-95cb-ee95fc0ba4ea.settings.typeSettings.site.enabled', 'false'),
('superTableBlockTypes.f33818e5-598e-4133-80af-07ea7ac337ef.fields.26f05fc1-ee8e-4be8-95cb-ee95fc0ba4ea.settings.typeSettings.site.sites', '\"*\"'),
('superTableBlockTypes.f33818e5-598e-4133-80af-07ea7ac337ef.fields.26f05fc1-ee8e-4be8-95cb-ee95fc0ba4ea.settings.typeSettings.tel.allowAliases', 'false'),
('superTableBlockTypes.f33818e5-598e-4133-80af-07ea7ac337ef.fields.26f05fc1-ee8e-4be8-95cb-ee95fc0ba4ea.settings.typeSettings.tel.disableValidation', 'false'),
('superTableBlockTypes.f33818e5-598e-4133-80af-07ea7ac337ef.fields.26f05fc1-ee8e-4be8-95cb-ee95fc0ba4ea.settings.typeSettings.tel.enabled', 'false'),
('superTableBlockTypes.f33818e5-598e-4133-80af-07ea7ac337ef.fields.26f05fc1-ee8e-4be8-95cb-ee95fc0ba4ea.settings.typeSettings.url.allowAliases', 'false'),
('superTableBlockTypes.f33818e5-598e-4133-80af-07ea7ac337ef.fields.26f05fc1-ee8e-4be8-95cb-ee95fc0ba4ea.settings.typeSettings.url.disableValidation', 'false'),
('superTableBlockTypes.f33818e5-598e-4133-80af-07ea7ac337ef.fields.26f05fc1-ee8e-4be8-95cb-ee95fc0ba4ea.settings.typeSettings.url.enabled', 'true'),
('superTableBlockTypes.f33818e5-598e-4133-80af-07ea7ac337ef.fields.26f05fc1-ee8e-4be8-95cb-ee95fc0ba4ea.settings.typeSettings.user.allowCrossSiteLink', 'false'),
('superTableBlockTypes.f33818e5-598e-4133-80af-07ea7ac337ef.fields.26f05fc1-ee8e-4be8-95cb-ee95fc0ba4ea.settings.typeSettings.user.allowCustomQuery', 'false'),
('superTableBlockTypes.f33818e5-598e-4133-80af-07ea7ac337ef.fields.26f05fc1-ee8e-4be8-95cb-ee95fc0ba4ea.settings.typeSettings.user.enabled', 'false'),
('superTableBlockTypes.f33818e5-598e-4133-80af-07ea7ac337ef.fields.26f05fc1-ee8e-4be8-95cb-ee95fc0ba4ea.settings.typeSettings.user.sources', '\"*\"'),
('superTableBlockTypes.f33818e5-598e-4133-80af-07ea7ac337ef.fields.26f05fc1-ee8e-4be8-95cb-ee95fc0ba4ea.translationKeyFormat', 'null'),
('superTableBlockTypes.f33818e5-598e-4133-80af-07ea7ac337ef.fields.26f05fc1-ee8e-4be8-95cb-ee95fc0ba4ea.translationMethod', '\"none\"'),
('superTableBlockTypes.f33818e5-598e-4133-80af-07ea7ac337ef.fields.26f05fc1-ee8e-4be8-95cb-ee95fc0ba4ea.type', '\"lenz\\\\linkfield\\\\fields\\\\LinkField\"'),
('superTableBlockTypes.f33818e5-598e-4133-80af-07ea7ac337ef.fields.2855e71a-4ab6-45e5-b716-fe4cfc071f33.columnSuffix', 'null'),
('superTableBlockTypes.f33818e5-598e-4133-80af-07ea7ac337ef.fields.2855e71a-4ab6-45e5-b716-fe4cfc071f33.contentColumnType', '\"text\"'),
('superTableBlockTypes.f33818e5-598e-4133-80af-07ea7ac337ef.fields.2855e71a-4ab6-45e5-b716-fe4cfc071f33.fieldGroup', 'null'),
('superTableBlockTypes.f33818e5-598e-4133-80af-07ea7ac337ef.fields.2855e71a-4ab6-45e5-b716-fe4cfc071f33.handle', '\"location\"'),
('superTableBlockTypes.f33818e5-598e-4133-80af-07ea7ac337ef.fields.2855e71a-4ab6-45e5-b716-fe4cfc071f33.instructions', 'null'),
('superTableBlockTypes.f33818e5-598e-4133-80af-07ea7ac337ef.fields.2855e71a-4ab6-45e5-b716-fe4cfc071f33.name', '\"Location\"'),
('superTableBlockTypes.f33818e5-598e-4133-80af-07ea7ac337ef.fields.2855e71a-4ab6-45e5-b716-fe4cfc071f33.searchable', 'false'),
('superTableBlockTypes.f33818e5-598e-4133-80af-07ea7ac337ef.fields.2855e71a-4ab6-45e5-b716-fe4cfc071f33.settings.byteLimit', 'null'),
('superTableBlockTypes.f33818e5-598e-4133-80af-07ea7ac337ef.fields.2855e71a-4ab6-45e5-b716-fe4cfc071f33.settings.charLimit', 'null'),
('superTableBlockTypes.f33818e5-598e-4133-80af-07ea7ac337ef.fields.2855e71a-4ab6-45e5-b716-fe4cfc071f33.settings.code', 'false'),
('superTableBlockTypes.f33818e5-598e-4133-80af-07ea7ac337ef.fields.2855e71a-4ab6-45e5-b716-fe4cfc071f33.settings.columnType', 'null'),
('superTableBlockTypes.f33818e5-598e-4133-80af-07ea7ac337ef.fields.2855e71a-4ab6-45e5-b716-fe4cfc071f33.settings.initialRows', '4'),
('superTableBlockTypes.f33818e5-598e-4133-80af-07ea7ac337ef.fields.2855e71a-4ab6-45e5-b716-fe4cfc071f33.settings.multiline', 'false'),
('superTableBlockTypes.f33818e5-598e-4133-80af-07ea7ac337ef.fields.2855e71a-4ab6-45e5-b716-fe4cfc071f33.settings.placeholder', 'null'),
('superTableBlockTypes.f33818e5-598e-4133-80af-07ea7ac337ef.fields.2855e71a-4ab6-45e5-b716-fe4cfc071f33.settings.uiMode', '\"normal\"'),
('superTableBlockTypes.f33818e5-598e-4133-80af-07ea7ac337ef.fields.2855e71a-4ab6-45e5-b716-fe4cfc071f33.translationKeyFormat', 'null'),
('superTableBlockTypes.f33818e5-598e-4133-80af-07ea7ac337ef.fields.2855e71a-4ab6-45e5-b716-fe4cfc071f33.translationMethod', '\"none\"'),
('superTableBlockTypes.f33818e5-598e-4133-80af-07ea7ac337ef.fields.2855e71a-4ab6-45e5-b716-fe4cfc071f33.type', '\"craft\\\\fields\\\\PlainText\"'),
('superTableBlockTypes.f33818e5-598e-4133-80af-07ea7ac337ef.fields.4c833b87-8963-49bf-b039-fb9029ebcfa6.columnSuffix', 'null'),
('superTableBlockTypes.f33818e5-598e-4133-80af-07ea7ac337ef.fields.4c833b87-8963-49bf-b039-fb9029ebcfa6.contentColumnType', '\"text\"'),
('superTableBlockTypes.f33818e5-598e-4133-80af-07ea7ac337ef.fields.4c833b87-8963-49bf-b039-fb9029ebcfa6.fieldGroup', 'null'),
('superTableBlockTypes.f33818e5-598e-4133-80af-07ea7ac337ef.fields.4c833b87-8963-49bf-b039-fb9029ebcfa6.handle', '\"experience\"'),
('superTableBlockTypes.f33818e5-598e-4133-80af-07ea7ac337ef.fields.4c833b87-8963-49bf-b039-fb9029ebcfa6.instructions', 'null'),
('superTableBlockTypes.f33818e5-598e-4133-80af-07ea7ac337ef.fields.4c833b87-8963-49bf-b039-fb9029ebcfa6.name', '\"Experience\"'),
('superTableBlockTypes.f33818e5-598e-4133-80af-07ea7ac337ef.fields.4c833b87-8963-49bf-b039-fb9029ebcfa6.searchable', 'false'),
('superTableBlockTypes.f33818e5-598e-4133-80af-07ea7ac337ef.fields.4c833b87-8963-49bf-b039-fb9029ebcfa6.settings.byteLimit', 'null'),
('superTableBlockTypes.f33818e5-598e-4133-80af-07ea7ac337ef.fields.4c833b87-8963-49bf-b039-fb9029ebcfa6.settings.charLimit', 'null'),
('superTableBlockTypes.f33818e5-598e-4133-80af-07ea7ac337ef.fields.4c833b87-8963-49bf-b039-fb9029ebcfa6.settings.code', 'false'),
('superTableBlockTypes.f33818e5-598e-4133-80af-07ea7ac337ef.fields.4c833b87-8963-49bf-b039-fb9029ebcfa6.settings.columnType', 'null'),
('superTableBlockTypes.f33818e5-598e-4133-80af-07ea7ac337ef.fields.4c833b87-8963-49bf-b039-fb9029ebcfa6.settings.initialRows', '4'),
('superTableBlockTypes.f33818e5-598e-4133-80af-07ea7ac337ef.fields.4c833b87-8963-49bf-b039-fb9029ebcfa6.settings.multiline', 'false'),
('superTableBlockTypes.f33818e5-598e-4133-80af-07ea7ac337ef.fields.4c833b87-8963-49bf-b039-fb9029ebcfa6.settings.placeholder', 'null'),
('superTableBlockTypes.f33818e5-598e-4133-80af-07ea7ac337ef.fields.4c833b87-8963-49bf-b039-fb9029ebcfa6.settings.uiMode', '\"normal\"'),
('superTableBlockTypes.f33818e5-598e-4133-80af-07ea7ac337ef.fields.4c833b87-8963-49bf-b039-fb9029ebcfa6.translationKeyFormat', 'null'),
('superTableBlockTypes.f33818e5-598e-4133-80af-07ea7ac337ef.fields.4c833b87-8963-49bf-b039-fb9029ebcfa6.translationMethod', '\"none\"'),
('superTableBlockTypes.f33818e5-598e-4133-80af-07ea7ac337ef.fields.4c833b87-8963-49bf-b039-fb9029ebcfa6.type', '\"craft\\\\fields\\\\PlainText\"'),
('superTableBlockTypes.f33818e5-598e-4133-80af-07ea7ac337ef.fields.9583ec6a-d404-475a-8632-f57bf1d4aa04.columnSuffix', 'null'),
('superTableBlockTypes.f33818e5-598e-4133-80af-07ea7ac337ef.fields.9583ec6a-d404-475a-8632-f57bf1d4aa04.contentColumnType', '\"text\"'),
('superTableBlockTypes.f33818e5-598e-4133-80af-07ea7ac337ef.fields.9583ec6a-d404-475a-8632-f57bf1d4aa04.fieldGroup', 'null'),
('superTableBlockTypes.f33818e5-598e-4133-80af-07ea7ac337ef.fields.9583ec6a-d404-475a-8632-f57bf1d4aa04.handle', '\"duration\"'),
('superTableBlockTypes.f33818e5-598e-4133-80af-07ea7ac337ef.fields.9583ec6a-d404-475a-8632-f57bf1d4aa04.instructions', 'null'),
('superTableBlockTypes.f33818e5-598e-4133-80af-07ea7ac337ef.fields.9583ec6a-d404-475a-8632-f57bf1d4aa04.name', '\"Duration\"'),
('superTableBlockTypes.f33818e5-598e-4133-80af-07ea7ac337ef.fields.9583ec6a-d404-475a-8632-f57bf1d4aa04.searchable', 'false'),
('superTableBlockTypes.f33818e5-598e-4133-80af-07ea7ac337ef.fields.9583ec6a-d404-475a-8632-f57bf1d4aa04.settings.byteLimit', 'null'),
('superTableBlockTypes.f33818e5-598e-4133-80af-07ea7ac337ef.fields.9583ec6a-d404-475a-8632-f57bf1d4aa04.settings.charLimit', 'null'),
('superTableBlockTypes.f33818e5-598e-4133-80af-07ea7ac337ef.fields.9583ec6a-d404-475a-8632-f57bf1d4aa04.settings.code', 'false'),
('superTableBlockTypes.f33818e5-598e-4133-80af-07ea7ac337ef.fields.9583ec6a-d404-475a-8632-f57bf1d4aa04.settings.columnType', 'null'),
('superTableBlockTypes.f33818e5-598e-4133-80af-07ea7ac337ef.fields.9583ec6a-d404-475a-8632-f57bf1d4aa04.settings.initialRows', '4'),
('superTableBlockTypes.f33818e5-598e-4133-80af-07ea7ac337ef.fields.9583ec6a-d404-475a-8632-f57bf1d4aa04.settings.multiline', 'false'),
('superTableBlockTypes.f33818e5-598e-4133-80af-07ea7ac337ef.fields.9583ec6a-d404-475a-8632-f57bf1d4aa04.settings.placeholder', 'null'),
('superTableBlockTypes.f33818e5-598e-4133-80af-07ea7ac337ef.fields.9583ec6a-d404-475a-8632-f57bf1d4aa04.settings.uiMode', '\"normal\"'),
('superTableBlockTypes.f33818e5-598e-4133-80af-07ea7ac337ef.fields.9583ec6a-d404-475a-8632-f57bf1d4aa04.translationKeyFormat', 'null'),
('superTableBlockTypes.f33818e5-598e-4133-80af-07ea7ac337ef.fields.9583ec6a-d404-475a-8632-f57bf1d4aa04.translationMethod', '\"none\"'),
('superTableBlockTypes.f33818e5-598e-4133-80af-07ea7ac337ef.fields.9583ec6a-d404-475a-8632-f57bf1d4aa04.type', '\"craft\\\\fields\\\\PlainText\"'),
('superTableBlockTypes.f33818e5-598e-4133-80af-07ea7ac337ef.fields.e9361ffe-b7e5-47e5-b505-06837d3a9487.columnSuffix', 'null'),
('superTableBlockTypes.f33818e5-598e-4133-80af-07ea7ac337ef.fields.e9361ffe-b7e5-47e5-b505-06837d3a9487.contentColumnType', '\"datetime\"'),
('superTableBlockTypes.f33818e5-598e-4133-80af-07ea7ac337ef.fields.e9361ffe-b7e5-47e5-b505-06837d3a9487.fieldGroup', 'null'),
('superTableBlockTypes.f33818e5-598e-4133-80af-07ea7ac337ef.fields.e9361ffe-b7e5-47e5-b505-06837d3a9487.handle', '\"startDate\"'),
('superTableBlockTypes.f33818e5-598e-4133-80af-07ea7ac337ef.fields.e9361ffe-b7e5-47e5-b505-06837d3a9487.instructions', 'null'),
('superTableBlockTypes.f33818e5-598e-4133-80af-07ea7ac337ef.fields.e9361ffe-b7e5-47e5-b505-06837d3a9487.name', '\"Start Date\"'),
('superTableBlockTypes.f33818e5-598e-4133-80af-07ea7ac337ef.fields.e9361ffe-b7e5-47e5-b505-06837d3a9487.searchable', 'false'),
('superTableBlockTypes.f33818e5-598e-4133-80af-07ea7ac337ef.fields.e9361ffe-b7e5-47e5-b505-06837d3a9487.settings.max', 'null'),
('superTableBlockTypes.f33818e5-598e-4133-80af-07ea7ac337ef.fields.e9361ffe-b7e5-47e5-b505-06837d3a9487.settings.min', 'null'),
('superTableBlockTypes.f33818e5-598e-4133-80af-07ea7ac337ef.fields.e9361ffe-b7e5-47e5-b505-06837d3a9487.settings.minuteIncrement', '30'),
('superTableBlockTypes.f33818e5-598e-4133-80af-07ea7ac337ef.fields.e9361ffe-b7e5-47e5-b505-06837d3a9487.settings.showDate', 'true'),
('superTableBlockTypes.f33818e5-598e-4133-80af-07ea7ac337ef.fields.e9361ffe-b7e5-47e5-b505-06837d3a9487.settings.showTime', 'false'),
('superTableBlockTypes.f33818e5-598e-4133-80af-07ea7ac337ef.fields.e9361ffe-b7e5-47e5-b505-06837d3a9487.settings.showTimeZone', 'false'),
('superTableBlockTypes.f33818e5-598e-4133-80af-07ea7ac337ef.fields.e9361ffe-b7e5-47e5-b505-06837d3a9487.translationKeyFormat', 'null'),
('superTableBlockTypes.f33818e5-598e-4133-80af-07ea7ac337ef.fields.e9361ffe-b7e5-47e5-b505-06837d3a9487.translationMethod', '\"none\"'),
('superTableBlockTypes.f33818e5-598e-4133-80af-07ea7ac337ef.fields.e9361ffe-b7e5-47e5-b505-06837d3a9487.type', '\"craft\\\\fields\\\\Date\"'),
('system.edition', '\"solo\"'),
('system.live', 'true'),
('system.name', '\"cloud4success\"'),
('system.schemaVersion', '\"4.0.0.9\"'),
('system.timeZone', '\"America/Los_Angeles\"'),
('users.allowPublicRegistration', 'false'),
('users.defaultGroup', 'null'),
('users.photoSubpath', 'null'),
('users.photoVolumeUid', 'null'),
('users.requireEmailVerification', 'true'),
('volumes.cae04bf8-01a2-4040-b9cc-6584b31aaaae.fieldLayouts.17653ab8-ea99-46c8-a8fb-0edb609253fd.tabs.0.elementCondition', 'null'),
('volumes.cae04bf8-01a2-4040-b9cc-6584b31aaaae.fieldLayouts.17653ab8-ea99-46c8-a8fb-0edb609253fd.tabs.0.elements.0.autocapitalize', 'true'),
('volumes.cae04bf8-01a2-4040-b9cc-6584b31aaaae.fieldLayouts.17653ab8-ea99-46c8-a8fb-0edb609253fd.tabs.0.elements.0.autocomplete', 'false'),
('volumes.cae04bf8-01a2-4040-b9cc-6584b31aaaae.fieldLayouts.17653ab8-ea99-46c8-a8fb-0edb609253fd.tabs.0.elements.0.autocorrect', 'true'),
('volumes.cae04bf8-01a2-4040-b9cc-6584b31aaaae.fieldLayouts.17653ab8-ea99-46c8-a8fb-0edb609253fd.tabs.0.elements.0.class', 'null'),
('volumes.cae04bf8-01a2-4040-b9cc-6584b31aaaae.fieldLayouts.17653ab8-ea99-46c8-a8fb-0edb609253fd.tabs.0.elements.0.disabled', 'false'),
('volumes.cae04bf8-01a2-4040-b9cc-6584b31aaaae.fieldLayouts.17653ab8-ea99-46c8-a8fb-0edb609253fd.tabs.0.elements.0.elementCondition', 'null'),
('volumes.cae04bf8-01a2-4040-b9cc-6584b31aaaae.fieldLayouts.17653ab8-ea99-46c8-a8fb-0edb609253fd.tabs.0.elements.0.id', 'null'),
('volumes.cae04bf8-01a2-4040-b9cc-6584b31aaaae.fieldLayouts.17653ab8-ea99-46c8-a8fb-0edb609253fd.tabs.0.elements.0.instructions', 'null'),
('volumes.cae04bf8-01a2-4040-b9cc-6584b31aaaae.fieldLayouts.17653ab8-ea99-46c8-a8fb-0edb609253fd.tabs.0.elements.0.label', 'null'),
('volumes.cae04bf8-01a2-4040-b9cc-6584b31aaaae.fieldLayouts.17653ab8-ea99-46c8-a8fb-0edb609253fd.tabs.0.elements.0.max', 'null'),
('volumes.cae04bf8-01a2-4040-b9cc-6584b31aaaae.fieldLayouts.17653ab8-ea99-46c8-a8fb-0edb609253fd.tabs.0.elements.0.min', 'null'),
('volumes.cae04bf8-01a2-4040-b9cc-6584b31aaaae.fieldLayouts.17653ab8-ea99-46c8-a8fb-0edb609253fd.tabs.0.elements.0.name', 'null'),
('volumes.cae04bf8-01a2-4040-b9cc-6584b31aaaae.fieldLayouts.17653ab8-ea99-46c8-a8fb-0edb609253fd.tabs.0.elements.0.orientation', 'null'),
('volumes.cae04bf8-01a2-4040-b9cc-6584b31aaaae.fieldLayouts.17653ab8-ea99-46c8-a8fb-0edb609253fd.tabs.0.elements.0.placeholder', 'null'),
('volumes.cae04bf8-01a2-4040-b9cc-6584b31aaaae.fieldLayouts.17653ab8-ea99-46c8-a8fb-0edb609253fd.tabs.0.elements.0.readonly', 'false'),
('volumes.cae04bf8-01a2-4040-b9cc-6584b31aaaae.fieldLayouts.17653ab8-ea99-46c8-a8fb-0edb609253fd.tabs.0.elements.0.requirable', 'false'),
('volumes.cae04bf8-01a2-4040-b9cc-6584b31aaaae.fieldLayouts.17653ab8-ea99-46c8-a8fb-0edb609253fd.tabs.0.elements.0.size', 'null'),
('volumes.cae04bf8-01a2-4040-b9cc-6584b31aaaae.fieldLayouts.17653ab8-ea99-46c8-a8fb-0edb609253fd.tabs.0.elements.0.step', 'null'),
('volumes.cae04bf8-01a2-4040-b9cc-6584b31aaaae.fieldLayouts.17653ab8-ea99-46c8-a8fb-0edb609253fd.tabs.0.elements.0.tip', 'null'),
('volumes.cae04bf8-01a2-4040-b9cc-6584b31aaaae.fieldLayouts.17653ab8-ea99-46c8-a8fb-0edb609253fd.tabs.0.elements.0.title', 'null'),
('volumes.cae04bf8-01a2-4040-b9cc-6584b31aaaae.fieldLayouts.17653ab8-ea99-46c8-a8fb-0edb609253fd.tabs.0.elements.0.type', '\"craft\\\\fieldlayoutelements\\\\assets\\\\AssetTitleField\"'),
('volumes.cae04bf8-01a2-4040-b9cc-6584b31aaaae.fieldLayouts.17653ab8-ea99-46c8-a8fb-0edb609253fd.tabs.0.elements.0.uid', '\"725b0e1c-f63d-42e8-873f-48d0a7c1483b\"'),
('volumes.cae04bf8-01a2-4040-b9cc-6584b31aaaae.fieldLayouts.17653ab8-ea99-46c8-a8fb-0edb609253fd.tabs.0.elements.0.userCondition', 'null'),
('volumes.cae04bf8-01a2-4040-b9cc-6584b31aaaae.fieldLayouts.17653ab8-ea99-46c8-a8fb-0edb609253fd.tabs.0.elements.0.warning', 'null'),
('volumes.cae04bf8-01a2-4040-b9cc-6584b31aaaae.fieldLayouts.17653ab8-ea99-46c8-a8fb-0edb609253fd.tabs.0.elements.0.width', '100'),
('volumes.cae04bf8-01a2-4040-b9cc-6584b31aaaae.fieldLayouts.17653ab8-ea99-46c8-a8fb-0edb609253fd.tabs.0.name', '\"Content\"'),
('volumes.cae04bf8-01a2-4040-b9cc-6584b31aaaae.fieldLayouts.17653ab8-ea99-46c8-a8fb-0edb609253fd.tabs.0.uid', '\"3b8dbe59-f111-494d-939e-bcf1010aba5b\"'),
('volumes.cae04bf8-01a2-4040-b9cc-6584b31aaaae.fieldLayouts.17653ab8-ea99-46c8-a8fb-0edb609253fd.tabs.0.userCondition', 'null'),
('volumes.cae04bf8-01a2-4040-b9cc-6584b31aaaae.fs', '\"$CONTENT_FILE_SYSTEM\"'),
('volumes.cae04bf8-01a2-4040-b9cc-6584b31aaaae.handle', '\"contentAssets\"'),
('volumes.cae04bf8-01a2-4040-b9cc-6584b31aaaae.name', '\"Content Assets\"'),
('volumes.cae04bf8-01a2-4040-b9cc-6584b31aaaae.sortOrder', '1'),
('volumes.cae04bf8-01a2-4040-b9cc-6584b31aaaae.titleTranslationKeyFormat', 'null'),
('volumes.cae04bf8-01a2-4040-b9cc-6584b31aaaae.titleTranslationMethod', '\"site\"'),
('volumes.cae04bf8-01a2-4040-b9cc-6584b31aaaae.transformFs', '\"\"'),
('volumes.cae04bf8-01a2-4040-b9cc-6584b31aaaae.transformSubpath', '\"\"');

-- --------------------------------------------------------

--
-- Table structure for table `queue`
--

CREATE TABLE `queue` (
  `id` int(11) NOT NULL,
  `channel` varchar(255) NOT NULL DEFAULT 'queue',
  `job` longblob NOT NULL,
  `description` text DEFAULT NULL,
  `timePushed` int(11) NOT NULL,
  `ttr` int(11) NOT NULL,
  `delay` int(11) NOT NULL DEFAULT 0,
  `priority` int(11) UNSIGNED NOT NULL DEFAULT 1024,
  `dateReserved` datetime DEFAULT NULL,
  `timeUpdated` int(11) DEFAULT NULL,
  `progress` smallint(6) NOT NULL DEFAULT 0,
  `progressLabel` varchar(255) DEFAULT NULL,
  `attempt` int(11) DEFAULT NULL,
  `fail` tinyint(1) DEFAULT 0,
  `dateFailed` datetime DEFAULT NULL,
  `error` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `relations`
--

CREATE TABLE `relations` (
  `id` int(11) NOT NULL,
  `fieldId` int(11) NOT NULL,
  `sourceId` int(11) NOT NULL,
  `sourceSiteId` int(11) DEFAULT NULL,
  `targetId` int(11) NOT NULL,
  `sortOrder` smallint(6) UNSIGNED DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `relations`
--

INSERT INTO `relations` (`id`, `fieldId`, `sourceId`, `sourceSiteId`, `targetId`, `sortOrder`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 7, 53, NULL, 22, 1, '2022-07-11 16:13:57', '2022-07-11 16:13:57', '5f504e07-1366-400c-914f-cb5989f220d4'),
(2, 7, 54, NULL, 22, 1, '2022-07-11 16:13:58', '2022-07-11 16:13:58', '6f3f3e7f-9326-4679-8dc7-4644a467d5f2'),
(5, 8, 53, NULL, 55, 1, '2022-07-12 16:28:07', '2022-07-12 16:28:07', 'cfc3a566-8091-41ad-8ac9-81c382bd6788'),
(6, 7, 57, NULL, 22, 1, '2022-07-12 16:28:07', '2022-07-12 16:28:07', 'aa6c20a2-c60b-4663-a5ee-0a1d85122ee0'),
(7, 8, 57, NULL, 55, 1, '2022-07-12 16:28:07', '2022-07-12 16:28:07', '0689d261-e2cb-44d5-84cf-d2e443bbb645'),
(10, 7, 59, NULL, 22, 1, '2022-07-12 16:42:54', '2022-07-12 16:42:54', '25c303a8-a15b-4cb7-9741-38cf147f3d68'),
(11, 8, 59, NULL, 55, 1, '2022-07-12 16:42:54', '2022-07-12 16:42:54', '05443b78-4b53-411d-8d80-ee0bfef61df0'),
(14, 7, 61, NULL, 22, 1, '2022-07-12 16:43:03', '2022-07-12 16:43:03', '1a3db6ee-b73f-41d8-b7e6-69d2f1d8c3bf'),
(15, 8, 61, NULL, 55, 1, '2022-07-12 16:43:03', '2022-07-12 16:43:03', 'f546bab2-407f-48a6-aa7d-b49b145010db'),
(20, 7, 64, NULL, 22, 1, '2022-07-12 16:45:11', '2022-07-12 16:45:11', 'aa5e02ca-ae6b-49a5-a3d5-e84317dbba04'),
(21, 8, 64, NULL, 55, 1, '2022-07-12 16:45:11', '2022-07-12 16:45:11', '0b58329c-e6b3-4bef-b074-e30ae1be55bd'),
(22, 3, 64, NULL, 62, 1, '2022-07-12 16:45:11', '2022-07-12 16:45:11', 'f1472150-8dcb-4697-a1cd-980f9a08b108'),
(24, 6, 22, NULL, 62, 1, '2022-07-12 16:45:55', '2022-07-12 16:45:55', '686633db-ede7-473a-b1c2-30ad2fbb8347'),
(25, 6, 68, NULL, 62, 1, '2022-07-12 16:45:55', '2022-07-12 16:45:55', '6267f9ac-9ab4-4dda-992b-58352d70b289'),
(27, 9, 51, NULL, 76, 1, '2022-07-12 16:55:56', '2022-07-12 16:55:56', '712cc866-b6fa-4f1d-951c-ed00326054d3'),
(28, 9, 78, NULL, 76, 1, '2022-07-12 16:55:56', '2022-07-12 16:55:56', '4914d602-a094-4a64-bb93-8c2344153aa7'),
(32, 22, 43, NULL, 51, 1, '2022-07-12 18:04:11', '2022-07-12 18:04:11', 'f40e42f4-f27b-4e4b-8315-3960163b66cb'),
(33, 3, 83, NULL, 62, 1, '2022-07-12 18:04:11', '2022-07-12 18:04:11', '39ff115c-d69e-4acc-bd13-0ec18c2a737a'),
(34, 22, 84, NULL, 51, 1, '2022-07-12 18:04:11', '2022-07-12 18:04:11', '0b999c55-5201-4b51-947e-e2e1a8aa4927'),
(36, 3, 121, NULL, 62, 1, '2022-07-12 18:16:04', '2022-07-12 18:16:04', 'b165bd49-27e7-428b-9bc2-52425d2f7635'),
(37, 22, 122, NULL, 51, 1, '2022-07-12 18:16:04', '2022-07-12 18:16:04', '77846768-83a6-4b08-a43d-88c5f2b80364'),
(39, 3, 128, NULL, 62, 1, '2022-07-12 18:26:12', '2022-07-12 18:26:12', 'fa6c8537-e6b2-45f4-b6d1-89cd02394bb6'),
(40, 22, 129, NULL, 51, 1, '2022-07-12 18:26:12', '2022-07-12 18:26:12', '227ba4b5-7e61-403b-b185-d737237b9452'),
(42, 3, 134, NULL, 62, 1, '2022-07-12 18:33:07', '2022-07-12 18:33:07', '8f485095-f763-4969-b936-203680c49f5e'),
(43, 22, 135, NULL, 51, 1, '2022-07-12 18:33:07', '2022-07-12 18:33:07', '2f506d06-f44e-4c93-b455-60b5d4c2ea0c'),
(44, 3, 139, NULL, 62, 1, '2022-07-12 18:33:24', '2022-07-12 18:33:24', '4841c231-3198-4936-ade0-91ea375f8a2b'),
(45, 22, 140, NULL, 51, 1, '2022-07-12 18:33:24', '2022-07-12 18:33:24', '8f476a8d-4494-4911-a7af-7043b3e73f42'),
(46, 3, 144, NULL, 62, 1, '2022-07-12 18:34:53', '2022-07-12 18:34:53', '34e43e95-848a-41f6-825c-fd924d610e72'),
(47, 22, 145, NULL, 51, 1, '2022-07-12 18:34:53', '2022-07-12 18:34:53', 'fa8d8c1b-0aab-402c-a519-4479f0185762'),
(48, 7, 168, NULL, 22, 1, '2022-07-13 14:07:46', '2022-07-13 14:07:46', '99350def-d45a-4b9f-bad6-b3ab89104004'),
(49, 8, 168, NULL, 55, 1, '2022-07-13 14:07:46', '2022-07-13 14:07:46', '6b8ff635-6e66-4450-86b5-c6bea35e1c7c'),
(50, 3, 168, NULL, 62, 1, '2022-07-13 14:07:46', '2022-07-13 14:07:46', '0f506c5d-6031-415b-a8d6-233c03e55209'),
(51, 7, 169, NULL, 22, 1, '2022-07-13 14:07:46', '2022-07-13 14:07:46', '76f00fc6-dc6d-45c8-a61e-2a5ee7220eaa'),
(52, 8, 169, NULL, 55, 1, '2022-07-13 14:07:46', '2022-07-13 14:07:46', '1b05f613-981d-419a-b236-c920d717f4bd'),
(53, 3, 169, NULL, 62, 1, '2022-07-13 14:07:46', '2022-07-13 14:07:46', '174c5830-f8e4-4f39-b608-eb951a6dca9d'),
(54, 7, 170, NULL, 22, 1, '2022-07-13 14:07:48', '2022-07-13 14:07:48', '3d21cfb8-3077-4d12-9689-2c96924d906a'),
(55, 8, 170, NULL, 55, 1, '2022-07-13 14:07:48', '2022-07-13 14:07:48', 'ffcb0ee4-0bdc-4fd8-82ab-35e734e61842'),
(57, 7, 171, NULL, 22, 1, '2022-07-13 14:07:48', '2022-07-13 14:07:48', '8dd30139-aab4-4e09-8c90-e2ddf3340e31'),
(58, 8, 171, NULL, 55, 1, '2022-07-13 14:07:48', '2022-07-13 14:07:48', 'fa7b7a1b-dd70-4c9c-b018-81396ebcebe6'),
(59, 3, 171, NULL, 62, 1, '2022-07-13 14:07:48', '2022-07-13 14:07:48', '7b38c17f-1a90-4a46-ac51-50997b969dbb'),
(60, 9, 198, NULL, 76, 1, '2022-07-13 16:24:49', '2022-07-13 16:24:49', 'a406a714-ce16-4734-96e5-dc8d1c9d61b0'),
(61, 9, 199, NULL, 76, 1, '2022-07-13 16:24:49', '2022-07-13 16:24:49', 'dd22f0c5-ecaa-4bfb-9268-72e71ac32bc4'),
(62, 9, 200, NULL, 76, 1, '2022-07-13 16:24:51', '2022-07-13 16:24:51', 'e3107418-fc45-4a86-b418-2f5b1292b766'),
(63, 9, 201, NULL, 76, 1, '2022-07-13 16:24:51', '2022-07-13 16:24:51', '319e2e18-507f-4e01-815d-1e3d3b7440ff'),
(65, 9, 203, NULL, 76, 1, '2022-07-13 16:25:37', '2022-07-13 16:25:37', '539af6c9-c918-487d-bf13-18ef07c74f51'),
(67, 9, 205, NULL, 76, 1, '2022-07-13 16:25:43', '2022-07-13 16:25:43', '9b2553e3-8fe3-42c5-99d6-23a2ddcda8a8'),
(69, 9, 207, NULL, 76, 1, '2022-07-13 16:25:49', '2022-07-13 16:25:49', '82a4251e-07d0-41cc-8bc4-57f92149c12f'),
(71, 3, 229, NULL, 62, 1, '2022-07-13 19:12:41', '2022-07-13 19:12:41', 'd6673122-a98a-41c4-bf98-edb0ef91da28'),
(73, 3, 239, NULL, 62, 1, '2022-07-13 19:12:43', '2022-07-13 19:12:43', '04617a74-d7e5-43c4-9b4a-809bd2ecacf6'),
(75, 3, 249, NULL, 62, 1, '2022-07-13 19:12:45', '2022-07-13 19:12:45', '9b25c90e-6f7e-458f-9323-bd6fb6d7b5c1'),
(76, 3, 254, NULL, 62, 1, '2022-07-13 19:12:46', '2022-07-13 19:12:46', '2a3f1abb-03d7-415b-899b-6963ee956bd4'),
(77, 3, 259, NULL, 62, 1, '2022-07-13 19:12:46', '2022-07-13 19:12:46', '96610bf6-93c0-42ea-9deb-97a3377cbe75'),
(78, 3, 264, NULL, 62, 1, '2022-07-13 19:12:48', '2022-07-13 19:12:48', '4881d36b-3c9a-451b-8f3d-5733b55de2b9'),
(79, 3, 269, NULL, 62, 1, '2022-07-13 19:12:48', '2022-07-13 19:12:48', '6a77ce44-6c77-41e7-9699-a9d991ad7d8d'),
(80, 3, 274, NULL, 62, 1, '2022-07-13 19:12:50', '2022-07-13 19:12:50', '6fe0e78e-0203-4304-bd35-21633d855cdf'),
(81, 3, 279, NULL, 62, 1, '2022-07-13 19:12:50', '2022-07-13 19:12:50', 'b00f8164-65da-483d-983d-7ed9405b627b'),
(82, 3, 284, NULL, 62, 1, '2022-07-13 19:12:51', '2022-07-13 19:12:51', '3b870061-5bc8-4477-805c-bbf09479f9f2'),
(83, 3, 289, NULL, 62, 1, '2022-07-13 19:12:51', '2022-07-13 19:12:51', 'f53a01d1-7c12-496d-9965-937e3ddaf261'),
(84, 3, 294, NULL, 62, 1, '2022-07-13 19:12:53', '2022-07-13 19:12:53', 'e899c995-efee-4db1-9986-b5cb62a9bff7'),
(85, 3, 299, NULL, 62, 1, '2022-07-13 19:12:53', '2022-07-13 19:12:53', '505a5c74-dd46-4773-b10c-cfa81cdb6238'),
(87, 3, 313, NULL, 62, 1, '2022-07-14 13:25:26', '2022-07-14 13:25:26', 'f5ae0677-d296-4f74-a220-71db0ec2b265'),
(90, 3, 224, NULL, 351, 1, '2022-07-14 14:36:18', '2022-07-14 14:36:18', '65b1895c-cc00-4558-8a2f-19cb5f23fbb2'),
(91, 3, 352, NULL, 351, 1, '2022-07-14 14:36:18', '2022-07-14 14:36:18', 'e179d510-661f-4041-955d-35d6c4056a79'),
(93, 3, 358, NULL, 62, 1, '2022-07-14 14:43:20', '2022-07-14 14:43:20', '15c5cd2e-5def-4802-862e-ffb6f467a9bd'),
(95, 3, 364, NULL, 62, 1, '2022-07-14 14:49:12', '2022-07-14 14:49:12', 'e32cb0ac-6a83-4954-94de-101da681cd63'),
(97, 3, 377, NULL, 62, 1, '2022-07-14 15:22:32', '2022-07-14 15:22:32', '5c6ff510-ea05-4ae5-b6be-8a2e96d44ab8'),
(100, 3, 42, NULL, 385, 1, '2022-07-14 15:24:15', '2022-07-14 15:24:15', '428738f9-a7e0-42b6-baf2-33fdfdc8b8fa'),
(101, 3, 392, NULL, 385, 1, '2022-07-14 15:24:15', '2022-07-14 15:24:15', '6817c365-a506-4c2f-8fe2-b501bee192a6'),
(104, 3, 234, NULL, 388, 1, '2022-07-14 15:25:06', '2022-07-14 15:25:06', '6c1bd13b-e74e-48e8-a5b3-438952ea7d96'),
(105, 3, 399, NULL, 388, 1, '2022-07-14 15:25:06', '2022-07-14 15:25:06', 'b16e29ea-ad6b-4c70-904a-ccfc101135c6'),
(108, 3, 244, NULL, 390, 1, '2022-07-14 15:26:05', '2022-07-14 15:26:05', '94023908-7e3c-40e7-8a6d-65ca587796dc'),
(109, 3, 406, NULL, 390, 1, '2022-07-14 15:26:05', '2022-07-14 15:26:05', '5eb2fe44-c15d-4c14-926b-729997490140'),
(112, 3, 422, NULL, 390, 1, '2022-07-14 15:27:00', '2022-07-14 15:27:00', '5a3bf615-2aef-4b6f-9ff9-3caaf6b30085'),
(114, 3, 432, NULL, 390, 1, '2022-07-14 15:27:03', '2022-07-14 15:27:03', '75463612-6a2a-4fc7-be09-74bfeb83bf63'),
(116, 3, 442, NULL, 390, 1, '2022-07-14 15:27:05', '2022-07-14 15:27:05', '5bd7cea6-17eb-4925-a3b7-e6604ecab915'),
(118, 3, 452, NULL, 390, 1, '2022-07-14 15:27:07', '2022-07-14 15:27:07', '14bf4679-7b06-4045-860a-499fa7f262e8'),
(120, 3, 462, NULL, 390, 1, '2022-07-14 15:27:10', '2022-07-14 15:27:10', '1e217070-8f62-465f-a201-46f7c8679af4'),
(122, 3, 468, NULL, 351, 1, '2022-07-14 15:27:27', '2022-07-14 15:27:27', '0760a37e-5b47-42ae-a8bf-cf6c007d06b8'),
(124, 3, 475, NULL, 390, 1, '2022-07-14 15:28:02', '2022-07-14 15:28:02', '9e2e6b01-22ca-43b7-a336-9e4ed34f4572'),
(127, 3, 447, NULL, 389, 1, '2022-07-14 15:28:28', '2022-07-14 15:28:28', 'c6b810cb-eb4d-4b5a-b4a9-c551928390a6'),
(128, 3, 482, NULL, 389, 1, '2022-07-14 15:28:28', '2022-07-14 15:28:28', 'eea1329d-63d4-417d-b907-8d179804a2df'),
(131, 3, 457, NULL, 386, 1, '2022-07-14 15:28:39', '2022-07-14 15:28:39', 'f8e1b5dd-a092-475e-8428-17134a68d009'),
(132, 3, 488, NULL, 386, 1, '2022-07-14 15:28:39', '2022-07-14 15:28:39', '779b1a7c-455e-4de2-9c07-9e8cf52d7d3f'),
(135, 3, 437, NULL, 387, 1, '2022-07-14 15:29:14', '2022-07-14 15:29:14', '2d6cbf6d-cfb4-4b63-b15b-a2b012acc7b3'),
(136, 3, 495, NULL, 387, 1, '2022-07-14 15:29:14', '2022-07-14 15:29:14', 'aa5d4f57-8b35-411d-affd-91d1d65d9951'),
(139, 3, 427, NULL, 384, 1, '2022-07-14 15:29:53', '2022-07-14 15:29:53', '6eda5ad4-e3a8-4b15-a37a-4402e43c3417'),
(140, 3, 502, NULL, 384, 1, '2022-07-14 15:29:53', '2022-07-14 15:29:53', '982235d9-2750-43a8-aeed-aaf214722862'),
(143, 3, 417, NULL, 508, 1, '2022-07-14 15:31:44', '2022-07-14 15:31:44', '4882c58e-ba7e-4359-92b5-838b16e49958'),
(144, 3, 510, NULL, 508, 1, '2022-07-14 15:31:44', '2022-07-14 15:31:44', 'cea4d2ba-51f4-484d-ac8d-562e8064ec29'),
(146, 3, 516, NULL, 351, 1, '2022-07-14 15:34:09', '2022-07-14 15:34:09', '8aaf86ac-da83-4318-a8b8-339f669d4582'),
(147, 3, 521, NULL, 351, 1, '2022-07-14 15:43:34', '2022-07-14 15:43:34', 'ac0f5257-7828-4173-b128-6794981b43fb'),
(148, 3, 526, NULL, 351, 1, '2022-07-14 15:43:34', '2022-07-14 15:43:34', '982a7d32-3081-4aab-8c13-fe7059bba5bb'),
(150, 3, 532, NULL, 351, 1, '2022-07-14 15:44:08', '2022-07-14 15:44:08', 'ea036e7b-676c-475a-9b9e-2ffeb7ea8ef8'),
(155, 3, 170, NULL, 538, 1, '2022-07-14 15:54:59', '2022-07-14 15:54:59', 'f418b264-48fa-4cfd-a2d4-93ec40846712'),
(156, 7, 539, NULL, 22, 1, '2022-07-14 15:54:59', '2022-07-14 15:54:59', '7bb60e58-01e5-46bd-ba02-52d08479a0de'),
(157, 8, 539, NULL, 55, 1, '2022-07-14 15:54:59', '2022-07-14 15:54:59', 'ce190a15-60ca-4a93-8125-de2e1abdb2fd'),
(158, 3, 539, NULL, 538, 1, '2022-07-14 15:54:59', '2022-07-14 15:54:59', 'a11a2dc8-0d7a-44dd-9b0f-f16ffa6ab2fc'),
(162, 7, 541, NULL, 22, 1, '2022-07-14 15:55:29', '2022-07-14 15:55:29', 'a96fe0c9-acba-45e9-9978-fcda2a570af7'),
(163, 8, 541, NULL, 55, 1, '2022-07-14 15:55:29', '2022-07-14 15:55:29', '9b029343-48a8-4f42-bf91-e9c0121e95dd'),
(164, 3, 541, NULL, 62, 1, '2022-07-14 15:55:29', '2022-07-14 15:55:29', '838c5f40-b55b-4b9d-8d7b-403a07b7e7c8'),
(169, 3, 53, NULL, 543, 1, '2022-07-14 16:20:24', '2022-07-14 16:20:24', '0b8dcad3-0299-4a00-98e5-eed9234397e8'),
(170, 7, 544, NULL, 22, 1, '2022-07-14 16:20:24', '2022-07-14 16:20:24', '2688ab75-afdd-4552-96ab-b5e269e713e9'),
(171, 8, 544, NULL, 55, 1, '2022-07-14 16:20:24', '2022-07-14 16:20:24', 'ea7c3cd7-06e3-4a16-adc4-8abd78bd765e'),
(172, 3, 544, NULL, 543, 1, '2022-07-14 16:20:24', '2022-07-14 16:20:24', 'f1f0da83-2063-4ec0-a880-2eb776c932cc'),
(174, 9, 556, NULL, 76, 1, '2022-07-14 16:22:50', '2022-07-14 16:22:50', 'ebc769a4-8cd9-4eb7-ac7e-00a88c9d4d22'),
(176, 9, 558, NULL, 76, 1, '2022-07-14 16:23:22', '2022-07-14 16:23:22', 'cea2fbdc-da19-4b79-80c2-fdae2774df1f'),
(178, 9, 560, NULL, 76, 1, '2022-07-14 16:23:40', '2022-07-14 16:23:40', '6bca74ea-dd02-4c00-83d4-1f57f12f5144'),
(181, 3, 200, NULL, 543, 1, '2022-07-14 16:25:28', '2022-07-14 16:25:28', '817ca3b1-1274-4165-92f4-ffcc94a50159'),
(182, 9, 562, NULL, 76, 1, '2022-07-14 16:25:28', '2022-07-14 16:25:28', '11592c0b-664a-4d9f-a856-8de376a9e7ca'),
(183, 3, 562, NULL, 543, 1, '2022-07-14 16:25:28', '2022-07-14 16:25:28', '9d23d930-6086-4ab7-b9ab-5e5aae75066d'),
(186, 3, 198, NULL, 538, 1, '2022-07-14 16:25:40', '2022-07-14 16:25:40', '57950cea-ce43-4b0b-97b1-e72d04061a02'),
(187, 9, 564, NULL, 76, 1, '2022-07-14 16:25:40', '2022-07-14 16:25:40', '64dd4e1b-c5b5-4759-a898-3e6a1af231e7'),
(188, 3, 564, NULL, 538, 1, '2022-07-14 16:25:40', '2022-07-14 16:25:40', 'c5e5e37f-4af0-45be-bcc5-0ec8024497f8'),
(191, 3, 51, NULL, 62, 1, '2022-07-14 16:25:49', '2022-07-14 16:25:49', '13d51c3d-a3a0-4028-8c3c-d63e21363f19'),
(192, 9, 566, NULL, 76, 1, '2022-07-14 16:25:49', '2022-07-14 16:25:49', '77b07557-c4aa-4c1b-9fa3-c9dfbe4b0b6b'),
(193, 3, 566, NULL, 62, 1, '2022-07-14 16:25:49', '2022-07-14 16:25:49', '7639ef23-5103-406c-9b3f-5496101874ac'),
(195, 3, 10, NULL, 567, 1, '2022-07-14 16:26:20', '2022-07-14 16:26:20', '57faece3-0d4c-4a7c-97ff-2fb15b88d716'),
(196, 3, 569, NULL, 567, 1, '2022-07-14 16:26:20', '2022-07-14 16:26:20', '265ae05d-b6d2-4aeb-895b-44dbb3a77e63'),
(198, 3, 5, NULL, 543, 1, '2022-07-14 16:30:11', '2022-07-14 16:30:11', '70301e49-b4a7-4e69-8698-7784dfcf1bc3'),
(199, 3, 571, NULL, 543, 1, '2022-07-14 16:30:11', '2022-07-14 16:30:11', '38277e43-ce1e-4eb9-aa5e-6958dbf7cf8e');

-- --------------------------------------------------------

--
-- Table structure for table `resourcepaths`
--

CREATE TABLE `resourcepaths` (
  `hash` varchar(255) NOT NULL,
  `path` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `resourcepaths`
--

INSERT INTO `resourcepaths` (`hash`, `path`) VALUES
('19e62637', '@craft/web/assets/garnish/dist'),
('1bf63db4', '@craft/web/assets/fileupload/dist'),
('2302f61c', '@craft/web/assets/craftsupport/dist'),
('2a157b54', '@craft/web/assets/dashboard/dist'),
('31541120', '@craft/web/assets/fabric/dist'),
('35df9838', '@craft/web/assets/matrixsettings/dist'),
('3ec3f9db', '@craft/web/assets/htmx/dist'),
('4548e337', '@craft/web/assets/velocity/dist'),
('4653156a', '@craft/web/assets/recententries/dist'),
('482bfa72', '@craft/web/assets/editsection/dist'),
('4a94ca5e', '@craft/web/assets/d3/dist'),
('4e18d80a', '@lenz/linkfield/assets/admin/resources'),
('4f905335', '@craft/web/assets/updater/dist'),
('50a1ec17', '@craft/web/assets/cp/dist'),
('51683b6c', '@craft/web/assets/vue/dist'),
('53565d9f', '@craft/web/assets/feed/dist'),
('58deb1f', '@craft/web/assets/jqueryui/dist'),
('59970fa3', '@craft/web/assets/jquerytouchevents/dist'),
('59c4d0c1', '@craft/web/assets/jquerypayment/dist'),
('624001f1', '@verbb/supertable/resources/dist'),
('659f0a1f', '@craft/web/assets/picturefill/dist'),
('66d447d7', '@craft/web/assets/dbbackup/dist'),
('69ca96ff', '@craft/web/assets/tailwindreset/dist'),
('6ad8902a', '@craft/web/assets/iframeresizer/dist'),
('6cb1451c', '@craft/web/assets/fieldsettings/dist'),
('6edf2cdd', '@craft/web/assets/selectize/dist'),
('72f78fa9', '@craft/web/assets/pluginstore/dist'),
('758bd3f0', '@craft/web/assets/axios/dist'),
('773c865e', '@craft/web/assets/xregexp/dist'),
('77e21fbc', '@craft/web/assets/conditionbuilder/dist'),
('78e95704', '@craft/web/assets/updateswidget/dist'),
('79770c4f', '@craft/web/assets/focusvisible/dist'),
('927846c8', '@craft/web/assets/utilities/dist'),
('94de094c', '@craft/web/assets/htmx/dist'),
('9b49e1b7', '@craft/web/assets/fabric/dist'),
('9ed0d984', '@craft/web/assets/cp/dist'),
('a0979476', '@craft/web/assets/elementresizedetector/dist'),
('a2e1d722', '@craft/web/assets/axios/dist'),
('a5778b9e', '@bower/jquery/dist'),
('a8a64e1', '@craft/web/assets/elementresizedetector/dist'),
('ab25d800', '@craft/web/assets/dashboard/dist'),
('af901b88', '@craft/web/assets/jqueryui/dist'),
('b1ebcd23', '@craft/web/assets/fileupload/dist'),
('b3fbd6a0', '@craft/web/assets/garnish/dist'),
('b9932a2f', '@craft/web/assets/conditionbuilder/dist'),
('c0c560bd', '@craft/web/assets/iframeresizer/dist'),
('c1f14e7f', '@craft/web/assets/pluginstore/dist'),
('c2470542', '@verbb/base/resources/dist'),
('c3d76668', '@craft/web/assets/tailwindreset/dist'),
('c4c2dc4a', '@craft/web/assets/selectize/dist'),
('c6acb58b', '@craft/web/assets/fieldsettings/dist'),
('cba4690a', '@craft/web/assets/d3/dist'),
('cf82fa88', '@craft/web/assets/picturefill/dist'),
('d2f4a793', '@craft/web/assets/updateswidget/dist'),
('d36afcd8', '@craft/web/assets/focusvisible/dist'),
('dd2176c9', '@craft/web/assets/xregexp/dist'),
('e2360ae5', '@craft/web/assets/editsection/dist'),
('e58da3a2', '@craft/web/assets/updater/dist'),
('ec4ee5fd', '@craft/web/assets/recententries/dist'),
('ed73c38f', '@craft/web/assets/craftsupport/dist'),
('ef5513a0', '@craft/web/assets/velocity/dist'),
('f38aff34', '@craft/web/assets/jquerytouchevents/dist'),
('f3d92056', '@craft/web/assets/jquerypayment/dist'),
('f6a7b09', '@bower/jquery/dist'),
('f94bad08', '@craft/web/assets/feed/dist'),
('fb75cbfb', '@craft/web/assets/vue/dist');

-- --------------------------------------------------------

--
-- Table structure for table `revisions`
--

CREATE TABLE `revisions` (
  `id` int(11) NOT NULL,
  `canonicalId` int(11) NOT NULL,
  `creatorId` int(11) DEFAULT NULL,
  `num` int(11) NOT NULL,
  `notes` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `revisions`
--

INSERT INTO `revisions` (`id`, `canonicalId`, `creatorId`, `num`, `notes`) VALUES
(1, 2, 1, 1, NULL),
(2, 2, 1, 2, NULL),
(3, 5, 1, 1, NULL),
(4, 5, 1, 2, NULL),
(5, 5, 1, 3, NULL),
(6, 5, 1, 4, NULL),
(7, 10, 1, 1, NULL),
(8, 10, 1, 2, NULL),
(9, 13, 1, 1, NULL),
(10, 13, 1, 2, NULL),
(11, 13, 1, 3, NULL),
(12, 13, 1, 4, NULL),
(13, 13, 1, 5, NULL),
(14, 19, 1, 1, NULL),
(15, 19, 1, 2, NULL),
(16, 22, 1, 1, NULL),
(17, 22, 1, 2, NULL),
(18, 22, 1, 3, NULL),
(19, 22, 1, 4, NULL),
(20, 22, 1, 5, NULL),
(21, 5, 1, 5, NULL),
(22, 10, 1, 3, NULL),
(23, 2, 1, 3, NULL),
(24, 2, 1, 4, NULL),
(25, 42, 1, 1, ''),
(26, 43, 1, 1, NULL),
(27, 32, 1, 1, ''),
(28, 33, 1, 1, NULL),
(29, 34, 1, 1, NULL),
(30, 35, 1, 1, NULL),
(31, 39, 1, 1, NULL),
(32, 51, 1, 1, ''),
(33, 53, 1, 1, ''),
(34, 53, 1, 2, 'Applied “Draft 1”'),
(35, 53, 1, 3, 'Applied “Draft 1”'),
(36, 53, 1, 4, 'Applied “Draft 1”'),
(37, 53, 1, 5, 'Applied “Draft 1”'),
(38, 22, 1, 6, 'Applied “Draft 1”'),
(39, 22, 1, 7, 'Applied “Draft 1”'),
(40, 51, 1, 2, 'Applied “Draft 1”'),
(41, 51, 1, 3, ''),
(42, 42, 1, 2, 'Applied “Draft 1”'),
(43, 43, 1, 2, NULL),
(44, 82, 1, 1, NULL),
(45, 42, 1, 3, 'Applied “Draft 1”'),
(46, 43, 1, 3, NULL),
(47, 82, 1, 2, NULL),
(48, 118, 1, 1, NULL),
(49, 119, 1, 1, NULL),
(50, 120, 1, 1, NULL),
(51, 42, 1, 4, 'Applied “Draft 1”'),
(52, 43, 1, 4, NULL),
(53, 82, 1, 3, NULL),
(54, 118, 1, 2, NULL),
(55, 119, 1, 2, NULL),
(56, 42, 1, 5, 'Applied “Draft 1”'),
(57, 43, 1, 5, NULL),
(58, 82, 1, 4, NULL),
(59, 118, 1, 3, NULL),
(60, 119, 1, 3, NULL),
(61, 42, 1, 6, ''),
(62, 43, 1, 6, NULL),
(63, 82, 1, 5, NULL),
(64, 118, 1, 4, NULL),
(65, 119, 1, 4, NULL),
(66, 42, 1, 7, ''),
(67, 43, 1, 7, NULL),
(68, 82, 1, 6, NULL),
(69, 118, 1, 5, NULL),
(70, 119, 1, 5, NULL),
(71, 32, 1, 2, 'Applied “Draft 1”'),
(72, 33, 1, 2, NULL),
(73, 34, 1, 2, NULL),
(74, 35, 1, 2, NULL),
(75, 150, 1, 1, NULL),
(76, 32, 1, 3, ''),
(77, 33, 1, 3, NULL),
(78, 35, 1, 3, NULL),
(79, 150, 1, 2, NULL),
(80, 32, 1, 4, 'Applied “Draft 1”'),
(81, 33, 1, 4, NULL),
(82, 35, 1, 4, NULL),
(83, 150, 1, 3, NULL),
(84, 2, 1, 5, NULL),
(85, 168, 1, 1, NULL),
(86, 170, 1, 1, NULL),
(87, 5, 1, 6, 'Applied “Draft 1”'),
(88, 174, 1, 1, NULL),
(89, 32, 1, 5, 'Applied “Draft 1”'),
(90, 33, 1, 5, NULL),
(91, 35, 1, 5, NULL),
(92, 150, 1, 4, NULL),
(93, 5, 1, 7, 'Applied “Draft 1”'),
(94, 174, 1, 2, NULL),
(95, 5, 1, 8, NULL),
(96, 174, 1, 3, NULL),
(97, 5, 1, 9, NULL),
(98, 5, 1, 10, 'Applied “Draft 1”'),
(99, 5, 1, 11, 'Applied “Draft 1”'),
(100, 10, 1, 4, NULL),
(101, 10, 1, 5, NULL),
(102, 10, 1, 6, ''),
(103, 198, 1, 1, NULL),
(104, 200, 1, 1, NULL),
(105, 51, 1, 4, 'Applied “Draft 1”'),
(106, 198, 1, 2, 'Applied “Draft 1”'),
(107, 51, 1, 5, 'Applied “Draft 1”'),
(108, 13, 1, 6, NULL),
(109, 13, 1, 7, NULL),
(110, 210, 1, 1, NULL),
(111, 211, 1, 1, NULL),
(112, 212, 1, 1, NULL),
(113, 213, 1, 1, NULL),
(114, 19, 1, 3, NULL),
(115, 19, 1, 4, NULL),
(116, 220, 1, 1, NULL),
(117, 220, 1, 2, NULL),
(118, 19, 1, 5, NULL),
(119, 224, 1, 1, NULL),
(120, 225, 1, 1, NULL),
(121, 226, 1, 1, NULL),
(122, 227, 1, 1, NULL),
(123, 228, 1, 1, NULL),
(124, 234, 1, 1, NULL),
(125, 235, 1, 1, NULL),
(126, 236, 1, 1, NULL),
(127, 237, 1, 1, NULL),
(128, 238, 1, 1, NULL),
(129, 244, 1, 1, NULL),
(130, 245, 1, 1, NULL),
(131, 246, 1, 1, NULL),
(132, 247, 1, 1, NULL),
(133, 248, 1, 1, NULL),
(134, 254, 1, 1, NULL),
(135, 255, 1, 1, NULL),
(136, 256, 1, 1, NULL),
(137, 257, 1, 1, NULL),
(138, 258, 1, 1, NULL),
(139, 264, 1, 1, NULL),
(140, 265, 1, 1, NULL),
(141, 266, 1, 1, NULL),
(142, 267, 1, 1, NULL),
(143, 268, 1, 1, NULL),
(144, 274, 1, 1, NULL),
(145, 275, 1, 1, NULL),
(146, 276, 1, 1, NULL),
(147, 277, 1, 1, NULL),
(148, 278, 1, 1, NULL),
(149, 284, 1, 1, NULL),
(150, 285, 1, 1, NULL),
(151, 286, 1, 1, NULL),
(152, 287, 1, 1, NULL),
(153, 288, 1, 1, NULL),
(154, 294, 1, 1, NULL),
(155, 295, 1, 1, NULL),
(156, 296, 1, 1, NULL),
(157, 297, 1, 1, NULL),
(158, 298, 1, 1, NULL),
(159, 304, 1, 1, NULL),
(160, 304, 1, 2, NULL),
(161, 304, 1, 3, NULL),
(162, 308, 1, 1, NULL),
(163, 308, 1, 2, NULL),
(164, 308, 1, 3, NULL),
(165, 42, 1, 8, 'Applied “Draft 1”'),
(166, 43, 1, 8, NULL),
(167, 82, 1, 7, NULL),
(168, 118, 1, 6, NULL),
(169, 119, 1, 6, NULL),
(170, 318, 1, 1, NULL),
(171, 318, 1, 2, NULL),
(172, 318, 1, 3, NULL),
(173, 322, 1, 1, NULL),
(174, 322, 1, 2, NULL),
(175, 322, 1, 3, NULL),
(176, 304, 1, 4, NULL),
(177, 304, 1, 5, NULL),
(178, 322, 1, 4, 'Applied “Draft 1”'),
(179, 344, 1, 1, NULL),
(180, 345, 1, 1, NULL),
(181, 224, 1, 2, 'Applied “Draft 1”'),
(182, 225, 1, 2, NULL),
(183, 226, 1, 2, NULL),
(184, 227, 1, 2, NULL),
(185, 228, 1, 2, NULL),
(186, 42, 1, 9, 'Applied “Draft 1”'),
(187, 43, 1, 9, NULL),
(188, 82, 1, 8, NULL),
(189, 118, 1, 7, NULL),
(190, 119, 1, 7, NULL),
(191, 234, 1, 2, ''),
(192, 235, 1, 2, NULL),
(193, 236, 1, 2, NULL),
(194, 237, 1, 2, NULL),
(195, 238, 1, 2, NULL),
(196, 369, 1, 1, NULL),
(197, 369, 1, 2, NULL),
(198, 369, 1, 3, NULL),
(199, 13, 1, 8, NULL),
(200, 19, 1, 6, NULL),
(201, 42, 1, 10, 'Applied “Draft 1”'),
(202, 43, 1, 10, NULL),
(203, 82, 1, 9, NULL),
(204, 118, 1, 8, NULL),
(205, 119, 1, 8, NULL),
(206, 42, 1, 11, 'Applied “Draft 1”'),
(207, 43, 1, 11, NULL),
(208, 82, 1, 10, NULL),
(209, 118, 1, 9, NULL),
(210, 119, 1, 9, NULL),
(211, 234, 1, 3, 'Applied “Draft 1”'),
(212, 235, 1, 3, NULL),
(213, 236, 1, 3, NULL),
(214, 237, 1, 3, NULL),
(215, 238, 1, 3, NULL),
(216, 244, 1, 2, 'Applied “Draft 1”'),
(217, 245, 1, 2, NULL),
(218, 246, 1, 2, NULL),
(219, 247, 1, 2, NULL),
(220, 248, 1, 2, NULL),
(221, 417, 1, 1, NULL),
(222, 418, 1, 1, NULL),
(223, 419, 1, 1, NULL),
(224, 420, 1, 1, NULL),
(225, 421, 1, 1, NULL),
(226, 427, 1, 1, NULL),
(227, 428, 1, 1, NULL),
(228, 429, 1, 1, NULL),
(229, 430, 1, 1, NULL),
(230, 431, 1, 1, NULL),
(231, 437, 1, 1, NULL),
(232, 438, 1, 1, NULL),
(233, 439, 1, 1, NULL),
(234, 440, 1, 1, NULL),
(235, 441, 1, 1, NULL),
(236, 447, 1, 1, NULL),
(237, 448, 1, 1, NULL),
(238, 449, 1, 1, NULL),
(239, 450, 1, 1, NULL),
(240, 451, 1, 1, NULL),
(241, 457, 1, 1, NULL),
(242, 458, 1, 1, NULL),
(243, 459, 1, 1, NULL),
(244, 460, 1, 1, NULL),
(245, 461, 1, 1, NULL),
(246, 224, 1, 3, 'Applied “Draft 1”'),
(247, 225, 1, 3, NULL),
(248, 226, 1, 3, NULL),
(249, 227, 1, 3, NULL),
(250, 228, 1, 3, NULL),
(251, 457, 1, 2, 'Applied “Draft 1”'),
(252, 458, 1, 2, NULL),
(253, 459, 1, 2, NULL),
(254, 460, 1, 2, NULL),
(255, 461, 1, 2, NULL),
(256, 447, 1, 2, 'Applied “Draft 1”'),
(257, 448, 1, 2, NULL),
(258, 449, 1, 2, NULL),
(259, 450, 1, 2, NULL),
(260, 451, 1, 2, NULL),
(261, 457, 1, 3, 'Applied “Draft 1”'),
(262, 458, 1, 3, NULL),
(263, 459, 1, 3, NULL),
(264, 460, 1, 3, NULL),
(265, 461, 1, 3, NULL),
(266, 437, 1, 2, 'Applied “Draft 1”'),
(267, 438, 1, 2, NULL),
(268, 439, 1, 2, NULL),
(269, 440, 1, 2, NULL),
(270, 441, 1, 2, NULL),
(271, 427, 1, 2, 'Applied “Draft 1”'),
(272, 428, 1, 2, NULL),
(273, 429, 1, 2, NULL),
(274, 430, 1, 2, NULL),
(275, 431, 1, 2, NULL),
(276, 417, 1, 2, 'Applied “Draft 1”'),
(277, 418, 1, 2, NULL),
(278, 419, 1, 2, NULL),
(279, 420, 1, 2, NULL),
(280, 421, 1, 2, NULL),
(281, 224, 1, 4, 'Applied “Draft 1”'),
(282, 225, 1, 4, NULL),
(283, 226, 1, 4, NULL),
(284, 227, 1, 4, NULL),
(285, 228, 1, 4, NULL),
(286, 521, 1, 1, NULL),
(287, 522, 1, 1, NULL),
(288, 523, 1, 1, NULL),
(289, 524, 1, 1, NULL),
(290, 525, 1, 1, NULL),
(291, 521, 1, 2, 'Applied “Draft 1”'),
(292, 522, 1, 2, NULL),
(293, 523, 1, 2, NULL),
(294, 524, 1, 2, NULL),
(295, 525, 1, 2, NULL),
(296, 170, 1, 2, 'Applied “Draft 1”'),
(297, 168, 1, 2, 'Applied “Draft 1”'),
(298, 53, 1, 6, 'Applied “Draft 1”'),
(299, 32, 1, 6, 'Applied “Draft 1”'),
(300, 33, 1, 6, NULL),
(301, 35, 1, 6, NULL),
(302, 150, 1, 5, NULL),
(303, 210, 1, 2, 'Applied “Draft 1”'),
(304, 211, 1, 2, NULL),
(305, 212, 1, 2, NULL),
(306, 213, 1, 2, NULL),
(307, 200, 1, 2, 'Applied “Draft 1”'),
(308, 198, 1, 3, 'Applied “Draft 1”'),
(309, 51, 1, 6, 'Applied “Draft 1”'),
(310, 200, 1, 3, 'Applied “Draft 1”'),
(311, 198, 1, 4, 'Applied “Draft 1”'),
(312, 51, 1, 7, 'Applied “Draft 1”'),
(313, 10, 1, 7, 'Applied “Draft 1”'),
(314, 5, 1, 12, 'Applied “Draft 1”');

-- --------------------------------------------------------

--
-- Table structure for table `searchindex`
--

CREATE TABLE `searchindex` (
  `elementId` int(11) NOT NULL,
  `attribute` varchar(25) NOT NULL,
  `fieldId` int(11) NOT NULL,
  `siteId` int(11) NOT NULL,
  `keywords` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `searchindex`
--

INSERT INTO `searchindex` (`elementId`, `attribute`, `fieldId`, `siteId`, `keywords`) VALUES
(1, 'email', 0, 1, ' admin mail com '),
(1, 'firstname', 0, 1, ''),
(1, 'fullname', 0, 1, ''),
(1, 'lastname', 0, 1, ''),
(1, 'slug', 0, 1, ''),
(1, 'username', 0, 1, ' admin '),
(2, 'slug', 0, 1, ' home '),
(2, 'title', 0, 1, ' home '),
(5, 'slug', 0, 1, ' blog overview '),
(5, 'title', 0, 1, ' blog overview '),
(10, 'slug', 0, 1, ' stories overview '),
(10, 'title', 0, 1, ' stories overview '),
(13, 'slug', 0, 1, ' carrier overview '),
(13, 'title', 0, 1, ' karriere overview '),
(19, 'slug', 0, 1, ' software overview '),
(19, 'title', 0, 1, ' software overview '),
(22, 'slug', 0, 1, ' author '),
(22, 'title', 0, 1, ' author '),
(28, 'slug', 0, 1, ' temp golqspurdgnbyvfgwxcegynplddquzngprth '),
(28, 'title', 0, 1, ''),
(29, 'slug', 0, 1, ' temp oamfchcneiusrlegfmomavajbotaygalzsqd '),
(29, 'title', 0, 1, ''),
(32, 'slug', 0, 1, ' job example '),
(32, 'title', 0, 1, ' job example '),
(33, 'slug', 0, 1, ''),
(34, 'slug', 0, 1, ''),
(35, 'slug', 0, 1, ''),
(36, 'slug', 0, 1, ''),
(37, 'slug', 0, 1, ''),
(39, 'slug', 0, 1, ''),
(42, 'slug', 0, 1, ' office '),
(42, 'title', 0, 1, ' office '),
(43, 'slug', 0, 1, ''),
(51, 'slug', 0, 1, ' example three '),
(51, 'title', 0, 1, ' stories post example 3 '),
(53, 'slug', 0, 1, ' blog post '),
(53, 'title', 0, 1, ' blog post '),
(55, 'slug', 0, 1, ' category '),
(55, 'title', 0, 1, ' category '),
(62, 'extension', 0, 1, ' jpg '),
(62, 'filename', 0, 1, ' craft jpg '),
(62, 'kind', 0, 1, ' image '),
(62, 'slug', 0, 1, ''),
(62, 'title', 0, 1, ' craft '),
(71, 'slug', 0, 1, ''),
(76, 'slug', 0, 1, ' category '),
(76, 'title', 0, 1, ' category '),
(82, 'slug', 0, 1, ''),
(118, 'slug', 0, 1, ''),
(119, 'slug', 0, 1, ''),
(120, 'slug', 0, 1, ''),
(150, 'slug', 0, 1, ''),
(168, 'slug', 0, 1, ' second blog post '),
(168, 'title', 0, 1, ' second blog post '),
(170, 'slug', 0, 1, ' first blog post '),
(170, 'title', 0, 1, ' first blog post '),
(174, 'slug', 0, 1, ''),
(198, 'slug', 0, 1, ' example two '),
(198, 'title', 0, 1, ' stories post example 2 '),
(200, 'slug', 0, 1, ' stories post example '),
(200, 'title', 0, 1, ' stories post example 1 '),
(210, 'slug', 0, 1, ' job software '),
(210, 'title', 0, 1, ' job software '),
(211, 'slug', 0, 1, ''),
(212, 'slug', 0, 1, ''),
(213, 'slug', 0, 1, ''),
(220, 'slug', 0, 1, ' microsoft teams '),
(220, 'title', 0, 1, ' microsoft teams '),
(224, 'slug', 0, 1, ' teams macht schule '),
(224, 'title', 0, 1, ' teams '),
(225, 'slug', 0, 1, ''),
(226, 'slug', 0, 1, ''),
(227, 'slug', 0, 1, ''),
(228, 'slug', 0, 1, ''),
(234, 'slug', 0, 1, ' outlook '),
(234, 'title', 0, 1, ' outlook '),
(235, 'slug', 0, 1, ''),
(236, 'slug', 0, 1, ''),
(237, 'slug', 0, 1, ''),
(238, 'slug', 0, 1, ''),
(244, 'slug', 0, 1, ' sharepoint '),
(244, 'title', 0, 1, ' sharepoint '),
(245, 'slug', 0, 1, ''),
(246, 'slug', 0, 1, ''),
(247, 'slug', 0, 1, ''),
(248, 'slug', 0, 1, ''),
(254, 'slug', 0, 1, ' test 5 '),
(254, 'title', 0, 1, ' test '),
(255, 'slug', 0, 1, ''),
(256, 'slug', 0, 1, ''),
(257, 'slug', 0, 1, ''),
(258, 'slug', 0, 1, ''),
(264, 'slug', 0, 1, ' test 6 '),
(264, 'title', 0, 1, ' test '),
(265, 'slug', 0, 1, ''),
(266, 'slug', 0, 1, ''),
(267, 'slug', 0, 1, ''),
(268, 'slug', 0, 1, ''),
(274, 'slug', 0, 1, ' test 7 '),
(274, 'title', 0, 1, ' test '),
(275, 'slug', 0, 1, ''),
(276, 'slug', 0, 1, ''),
(277, 'slug', 0, 1, ''),
(278, 'slug', 0, 1, ''),
(284, 'slug', 0, 1, ' test 8 '),
(284, 'title', 0, 1, ' test '),
(285, 'slug', 0, 1, ''),
(286, 'slug', 0, 1, ''),
(287, 'slug', 0, 1, ''),
(288, 'slug', 0, 1, ''),
(294, 'slug', 0, 1, ' test 9 '),
(294, 'title', 0, 1, ' test '),
(295, 'slug', 0, 1, ''),
(296, 'slug', 0, 1, ''),
(297, 'slug', 0, 1, ''),
(298, 'slug', 0, 1, ''),
(304, 'slug', 0, 1, ' support '),
(304, 'title', 0, 1, ' support '),
(308, 'slug', 0, 1, ' contact '),
(308, 'title', 0, 1, ' contact '),
(318, 'slug', 0, 1, ' beratung '),
(318, 'title', 0, 1, ' beratung '),
(322, 'slug', 0, 1, ' impressum datenschutz '),
(322, 'title', 0, 1, ' impressum datenschutz '),
(344, 'slug', 0, 1, ''),
(345, 'slug', 0, 1, ''),
(351, 'extension', 0, 1, ' png '),
(351, 'filename', 0, 1, ' icon teams png '),
(351, 'kind', 0, 1, ' image '),
(351, 'slug', 0, 1, ''),
(351, 'title', 0, 1, ' icon teams '),
(369, 'slug', 0, 1, ' modern workplace '),
(369, 'title', 0, 1, ' modern workplace '),
(383, 'extension', 0, 1, ' png '),
(383, 'filename', 0, 1, ' icon excel png '),
(383, 'kind', 0, 1, ' image '),
(383, 'slug', 0, 1, ''),
(383, 'title', 0, 1, ' icon excel '),
(384, 'extension', 0, 1, ' png '),
(384, 'filename', 0, 1, ' icon forms png '),
(384, 'kind', 0, 1, ' image '),
(384, 'slug', 0, 1, ''),
(384, 'title', 0, 1, ' icon forms '),
(385, 'extension', 0, 1, ' png '),
(385, 'filename', 0, 1, ' icon office png '),
(385, 'kind', 0, 1, ' image '),
(385, 'slug', 0, 1, ''),
(385, 'title', 0, 1, ' icon office '),
(386, 'extension', 0, 1, ' png '),
(386, 'filename', 0, 1, ' icon onedrive png '),
(386, 'kind', 0, 1, ' image '),
(386, 'slug', 0, 1, ''),
(386, 'title', 0, 1, ' icon onedrive '),
(387, 'extension', 0, 1, ' png '),
(387, 'filename', 0, 1, ' icon onenote png '),
(387, 'kind', 0, 1, ' image '),
(387, 'slug', 0, 1, ''),
(387, 'title', 0, 1, ' icon onenote '),
(388, 'extension', 0, 1, ' png '),
(388, 'filename', 0, 1, ' icon outlook png '),
(388, 'kind', 0, 1, ' image '),
(388, 'slug', 0, 1, ''),
(388, 'title', 0, 1, ' icon outlook '),
(389, 'extension', 0, 1, ' png '),
(389, 'filename', 0, 1, ' icon planner png '),
(389, 'kind', 0, 1, ' image '),
(389, 'slug', 0, 1, ''),
(389, 'title', 0, 1, ' icon planner '),
(390, 'extension', 0, 1, ' png '),
(390, 'filename', 0, 1, ' icon sharepoint png '),
(390, 'kind', 0, 1, ' image '),
(390, 'slug', 0, 1, ''),
(390, 'title', 0, 1, ' icon sharepoint '),
(391, 'extension', 0, 1, ' png '),
(391, 'filename', 0, 1, ' icon word png '),
(391, 'kind', 0, 1, ' image '),
(391, 'slug', 0, 1, ''),
(391, 'title', 0, 1, ' icon word '),
(411, 'slug', 0, 1, ' temp qlirbzkxiggqanqmboftpgnybrhvpezqlxev '),
(411, 'title', 0, 1, ''),
(417, 'slug', 0, 1, ' todo '),
(417, 'title', 0, 1, ' to do '),
(418, 'slug', 0, 1, ''),
(419, 'slug', 0, 1, ''),
(420, 'slug', 0, 1, ''),
(421, 'slug', 0, 1, ''),
(427, 'slug', 0, 1, ' microsoft forms '),
(427, 'title', 0, 1, ' microsoft forms '),
(428, 'slug', 0, 1, ''),
(429, 'slug', 0, 1, ''),
(430, 'slug', 0, 1, ''),
(431, 'slug', 0, 1, ''),
(437, 'slug', 0, 1, ' onenote '),
(437, 'title', 0, 1, ' onenote '),
(438, 'slug', 0, 1, ''),
(439, 'slug', 0, 1, ''),
(440, 'slug', 0, 1, ''),
(441, 'slug', 0, 1, ''),
(447, 'slug', 0, 1, ' planner '),
(447, 'title', 0, 1, ' planner '),
(448, 'slug', 0, 1, ''),
(449, 'slug', 0, 1, ''),
(450, 'slug', 0, 1, ''),
(451, 'slug', 0, 1, ''),
(457, 'slug', 0, 1, ' onedrive '),
(457, 'title', 0, 1, ' onedrive '),
(458, 'slug', 0, 1, ''),
(459, 'slug', 0, 1, ''),
(460, 'slug', 0, 1, ''),
(461, 'slug', 0, 1, ''),
(508, 'extension', 0, 1, ' png '),
(508, 'filename', 0, 1, ' icon todo png '),
(508, 'kind', 0, 1, ' image '),
(508, 'slug', 0, 1, ''),
(508, 'title', 0, 1, ' icon todo '),
(521, 'slug', 0, 1, ' microsoft teams '),
(521, 'title', 0, 1, ' microsoft teams '),
(522, 'slug', 0, 1, ''),
(523, 'slug', 0, 1, ''),
(524, 'slug', 0, 1, ''),
(525, 'slug', 0, 1, ''),
(538, 'extension', 0, 1, ' jpg '),
(538, 'filename', 0, 1, ' image jobs1 jpg '),
(538, 'kind', 0, 1, ' image '),
(538, 'slug', 0, 1, ''),
(538, 'title', 0, 1, ' image jobs1 '),
(543, 'extension', 0, 1, ' jpeg '),
(543, 'filename', 0, 1, ' image workplace2 p 500 jpeg '),
(543, 'kind', 0, 1, ' image '),
(543, 'slug', 0, 1, ''),
(543, 'title', 0, 1, ' image workplace2 p 500 '),
(567, 'extension', 0, 1, ' png '),
(567, 'filename', 0, 1, ' image 1 min png '),
(567, 'kind', 0, 1, ' image '),
(567, 'slug', 0, 1, ''),
(567, 'title', 0, 1, ' image 1 min ');

-- --------------------------------------------------------

--
-- Table structure for table `sections`
--

CREATE TABLE `sections` (
  `id` int(11) NOT NULL,
  `structureId` int(11) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `handle` varchar(255) NOT NULL,
  `type` enum('single','channel','structure') NOT NULL DEFAULT 'channel',
  `enableVersioning` tinyint(1) NOT NULL DEFAULT 0,
  `propagationMethod` varchar(255) NOT NULL DEFAULT 'all',
  `defaultPlacement` enum('beginning','end') NOT NULL DEFAULT 'end',
  `previewTargets` text DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `dateDeleted` datetime DEFAULT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sections`
--

INSERT INTO `sections` (`id`, `structureId`, `name`, `handle`, `type`, `enableVersioning`, `propagationMethod`, `defaultPlacement`, `previewTargets`, `dateCreated`, `dateUpdated`, `dateDeleted`, `uid`) VALUES
(1, NULL, 'Home', 'home', 'single', 1, 'all', 'end', NULL, '2022-07-08 13:58:08', '2022-07-08 13:58:08', NULL, 'e0c0b0fa-c719-49dc-9c62-cfe77e3a05b2'),
(2, 4, 'Software Post', 'softwarePost', 'structure', 1, 'all', 'end', NULL, '2022-07-08 15:09:08', '2022-07-14 14:21:41', NULL, 'b2ea844f-e1dc-4538-a97d-a57a34bf1afe'),
(3, NULL, 'Blog Overview', 'blogOverview', 'single', 1, 'all', 'end', NULL, '2022-07-08 15:10:09', '2022-07-08 15:10:09', NULL, 'da7f3bc1-4533-411c-a8db-8637e8ca2282'),
(4, NULL, 'Blog Post', 'blogPost', 'channel', 1, 'all', 'end', NULL, '2022-07-08 15:11:40', '2022-07-08 15:11:40', NULL, 'f87ff7ae-50ba-4e06-a75e-899fdc075507'),
(5, NULL, 'Stories Overview', 'storiesOverview', 'single', 1, 'all', 'end', NULL, '2022-07-08 15:16:48', '2022-07-08 15:16:48', NULL, 'aa851b3e-e45e-4c23-8c3b-e540929c28fe'),
(6, NULL, 'Stories Post', 'storiesPost', 'channel', 1, 'all', 'end', NULL, '2022-07-08 15:17:35', '2022-07-08 15:17:35', NULL, 'b79a9ca5-e9d0-4e18-ad37-b38ee786a341'),
(7, NULL, 'Karriere Overview', 'karriereOverview', 'single', 1, 'all', 'end', NULL, '2022-07-08 15:41:35', '2022-07-08 15:43:26', NULL, '7557a405-b2c2-48b3-8ab2-c99ea0fb0885'),
(8, NULL, 'Karriere Post', 'karrierePost', 'channel', 1, 'all', 'end', NULL, '2022-07-08 15:42:40', '2022-07-08 15:43:08', NULL, 'b20b7ca8-6027-4f7f-a320-95ab24bc0b22'),
(9, NULL, 'Software Overview', 'softwareOverview', 'single', 1, 'all', 'end', NULL, '2022-07-08 15:46:46', '2022-07-08 15:46:46', NULL, 'f5515f40-8f50-4d87-82f2-f2ea5e7ab68d'),
(10, NULL, 'Author', 'author', 'channel', 1, 'all', 'end', NULL, '2022-07-09 02:22:47', '2022-07-09 03:40:55', NULL, '8032f6af-316d-418e-ab60-c0ce3c7f60f9'),
(11, NULL, 'Microsoft Teams', 'microsoftTeams', 'single', 1, 'all', 'end', NULL, '2022-07-13 18:27:58', '2022-07-13 18:27:58', '2022-07-13 18:29:08', '283fcfd0-8049-4955-b393-a3eb22953312'),
(12, NULL, 'Support', 'support', 'single', 1, 'all', 'end', NULL, '2022-07-14 13:23:16', '2022-07-14 13:23:16', NULL, 'f6404666-341b-4af9-ad83-c96ed1be86fe'),
(13, NULL, 'Contact', 'contact', 'single', 1, 'all', 'end', NULL, '2022-07-14 13:24:27', '2022-07-14 13:24:27', NULL, 'd0c9a98d-03f6-4647-8c8d-4971d91c23b3'),
(14, NULL, 'Beratung', 'beratung', 'single', 1, 'all', 'end', NULL, '2022-07-14 13:27:42', '2022-07-14 13:27:42', NULL, 'd99048a1-a158-4b8e-bc5b-2e5c739a3985'),
(15, NULL, 'Impressum & Datenschutz', 'impressumDatenschutz', 'single', 1, 'all', 'end', NULL, '2022-07-14 13:57:13', '2022-07-14 13:57:13', NULL, '2ad0f005-f573-4862-a07f-bf5258f7107b'),
(16, NULL, 'Modern Workplace', 'modernWorkplace', 'single', 1, 'all', 'end', NULL, '2022-07-14 14:56:14', '2022-07-14 14:56:14', NULL, '62bd963d-2296-4faa-b53a-80a39499b6ad');

-- --------------------------------------------------------

--
-- Table structure for table `sections_sites`
--

CREATE TABLE `sections_sites` (
  `id` int(11) NOT NULL,
  `sectionId` int(11) NOT NULL,
  `siteId` int(11) NOT NULL,
  `hasUrls` tinyint(1) NOT NULL DEFAULT 1,
  `uriFormat` text DEFAULT NULL,
  `template` varchar(500) DEFAULT NULL,
  `enabledByDefault` tinyint(1) NOT NULL DEFAULT 1,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sections_sites`
--

INSERT INTO `sections_sites` (`id`, `sectionId`, `siteId`, `hasUrls`, `uriFormat`, `template`, `enabledByDefault`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 1, 1, 1, '__home__', '_/base/index', 1, '2022-07-08 13:58:08', '2022-07-09 15:18:14', '0b88d523-f43a-4971-be0d-ee804c4924d1'),
(2, 2, 1, 1, 'm365/{slug}', '_/software/entry', 1, '2022-07-08 15:09:08', '2022-07-12 17:57:07', 'a3673a93-553b-46de-9996-55165fc2b6d6'),
(3, 3, 1, 1, 'blog', '_/blog/index', 1, '2022-07-08 15:10:09', '2022-07-08 15:10:31', 'dd3cdae0-0cfb-47e7-9a78-cd78d1eb1087'),
(4, 4, 1, 1, 'blog/{slug}', '_/blog/entry', 1, '2022-07-08 15:11:40', '2022-07-08 15:11:40', '9debf6bd-4525-4c78-870d-3985c2366be5'),
(5, 5, 1, 1, 'success-stories', '_/stories/index', 1, '2022-07-08 15:16:48', '2022-07-08 15:16:48', 'f5d71b5f-82b5-43f4-a396-ad40730e6efe'),
(6, 6, 1, 1, 'success-stories/{slug}', '_/stories/entry', 1, '2022-07-08 15:17:35', '2022-07-08 15:17:35', '684d9009-9dca-4f94-be5e-1f9ce87e77c5'),
(7, 7, 1, 1, 'unternehmen/karriere', '_/karriere/index', 1, '2022-07-08 15:41:35', '2022-07-13 16:28:41', 'a739af26-4d74-403a-b630-17ef2e11496d'),
(8, 8, 1, 1, 'karriere/{slug}', '_/karriere/entry', 1, '2022-07-08 15:42:40', '2022-07-08 15:42:40', '9d0f41a8-fb65-4f40-9a3a-cc995d0a0fe0'),
(9, 9, 1, 1, 'm365-apps', '_/software/index', 1, '2022-07-08 15:46:46', '2022-07-13 18:26:41', '443d3a4e-3d41-4fc0-b916-f64a91f397b3'),
(10, 10, 1, 0, NULL, NULL, 1, '2022-07-09 02:22:47', '2022-07-09 02:22:54', '76db747e-fb69-43cf-8743-da0a585416f3'),
(11, 11, 1, 1, 'microsoft-teams', '_\\software\\microsoft', 1, '2022-07-13 18:27:58', '2022-07-13 18:27:58', '4fd81cff-7991-44d4-b775-97a3032390f2'),
(12, 12, 1, 1, 'unternehmen/support', '_/unternehmen/support', 1, '2022-07-14 13:23:16', '2022-07-14 14:04:46', '199b7f38-fef4-4094-b97f-aedf9c4b6c09'),
(13, 13, 1, 1, 'unternehmen/kontakt', '_\\unternehmen\\contact', 1, '2022-07-14 13:24:27', '2022-07-14 13:24:27', '59861a92-e681-43f9-ad3f-eb3bad1e2fb8'),
(14, 14, 1, 1, 'unternehmen/beratung-workshop', '_\\unternehmen\\beratung', 1, '2022-07-14 13:27:42', '2022-07-14 13:27:42', '74b031a0-c8e6-4499-870f-4e9df4e0b18b'),
(15, 15, 1, 1, 'unternehmen/impressum-datenschutz', '_\\unternehmen\\impressum', 1, '2022-07-14 13:57:13', '2022-07-14 13:57:13', '3557acf6-fc88-406c-8aa0-4548249311f9'),
(16, 16, 1, 1, 'modern-workplace', '_\\modern\\index', 1, '2022-07-14 14:56:14', '2022-07-14 14:56:14', 'cb9e614d-7866-4fe7-80e3-439561952d9b');

-- --------------------------------------------------------

--
-- Table structure for table `sequences`
--

CREATE TABLE `sequences` (
  `name` varchar(255) NOT NULL,
  `next` int(11) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `token` char(100) NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `userId`, `token`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(12, 1, '6X0m2QrX6kZ4iVNva4qekXIZeAgyFoVwateRe8Na6PDEXrrSTXSh5pXJMKyHOqgz0Y7D3bi_ZcE5IDQ4SKOUtK0DkQuC3j358ouk', '2022-07-14 12:29:17', '2022-07-14 16:31:41', 'bc56a2fc-a099-41c7-91db-9f6676eb9cfa');

-- --------------------------------------------------------

--
-- Table structure for table `shunnedmessages`
--

CREATE TABLE `shunnedmessages` (
  `id` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `message` varchar(255) NOT NULL,
  `expiryDate` datetime DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `sitegroups`
--

CREATE TABLE `sitegroups` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `dateDeleted` datetime DEFAULT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sitegroups`
--

INSERT INTO `sitegroups` (`id`, `name`, `dateCreated`, `dateUpdated`, `dateDeleted`, `uid`) VALUES
(1, 'cloud4success', '2022-07-08 13:30:51', '2022-07-08 13:30:51', NULL, '16018a5d-e00b-488a-acca-11cd315f32dc');

-- --------------------------------------------------------

--
-- Table structure for table `sites`
--

CREATE TABLE `sites` (
  `id` int(11) NOT NULL,
  `groupId` int(11) NOT NULL,
  `primary` tinyint(1) NOT NULL,
  `enabled` varchar(255) NOT NULL DEFAULT 'true',
  `name` varchar(255) NOT NULL,
  `handle` varchar(255) NOT NULL,
  `language` varchar(12) NOT NULL,
  `hasUrls` tinyint(1) NOT NULL DEFAULT 0,
  `baseUrl` varchar(255) DEFAULT NULL,
  `sortOrder` smallint(6) UNSIGNED DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `dateDeleted` datetime DEFAULT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sites`
--

INSERT INTO `sites` (`id`, `groupId`, `primary`, `enabled`, `name`, `handle`, `language`, `hasUrls`, `baseUrl`, `sortOrder`, `dateCreated`, `dateUpdated`, `dateDeleted`, `uid`) VALUES
(1, 1, 1, 'true', 'cloud4success', 'default', 'en-US', 1, '$PRIMARY_SITE_URL', 1, '2022-07-08 13:30:51', '2022-07-08 13:30:51', NULL, '33732ef7-8cf5-46e3-a85d-565e9c838e3d');

-- --------------------------------------------------------

--
-- Table structure for table `stc_jobdetail`
--

CREATE TABLE `stc_jobdetail` (
  `id` int(11) NOT NULL,
  `elementId` int(11) NOT NULL,
  `siteId` int(11) NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0',
  `field_experience` text DEFAULT NULL,
  `field_location` text DEFAULT NULL,
  `field_duration` text DEFAULT NULL,
  `field_startDate` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `stc_jobdetail`
--

INSERT INTO `stc_jobdetail` (`id`, `elementId`, `siteId`, `dateCreated`, `dateUpdated`, `uid`, `field_experience`, `field_location`, `field_duration`, `field_startDate`) VALUES
(1, 33, 1, '2022-07-09 07:36:16', '2022-07-13 16:01:47', '00f82953-0211-453d-a0fa-abdb049a3ef9', '2 Years', 'Indonesia', '2 years', '2022-07-13 07:00:00'),
(2, 47, 1, '2022-07-11 14:10:15', '2022-07-11 14:10:15', '7f6a2707-4fbf-4240-a3e2-df30f439a748', NULL, NULL, NULL, NULL),
(4, 152, 1, '2022-07-12 18:39:02', '2022-07-12 18:39:02', 'e5959f6c-db0a-47c2-b5af-16ff09036ac4', '2 Years', 'Indonesia', '2 years', '2022-07-13 07:00:00'),
(5, 158, 1, '2022-07-12 18:41:33', '2022-07-12 18:41:33', 'e074244f-28cd-4b4f-838e-5c4ab6dde630', '2 Years', 'Indonesia', '2 years', '2022-07-13 07:00:00'),
(7, 164, 1, '2022-07-12 18:48:25', '2022-07-12 18:48:25', '4df91479-0159-4ed0-8693-17c6b1fdcc43', '2 Years', 'Indonesia', '2 years', '2022-07-13 07:00:00'),
(9, 180, 1, '2022-07-13 16:01:47', '2022-07-13 16:01:47', '5f7530a8-5d9c-4270-8151-5c3bb7cb51ca', '2 Years', 'Indonesia', '2 years', '2022-07-13 07:00:00'),
(10, 211, 1, '2022-07-13 17:17:49', '2022-07-13 17:17:49', 'f2dbf1dd-259e-45ae-8c96-453fed1ef8ec', '2 Years', 'Indonesia', '2 years', '2022-07-13 07:00:00'),
(11, 215, 1, '2022-07-13 17:17:49', '2022-07-13 17:17:49', 'fcf77bf2-9156-4479-a5c3-686d55278ffd', '2 Years', 'Indonesia', '2 years', '2022-07-13 07:00:00'),
(12, 547, 1, '2022-07-14 16:20:47', '2022-07-14 16:20:47', '013db8df-54bf-4f85-aeed-caa6b5a4ff48', '2 Years', 'Indonesia', '2 years', '2022-07-13 07:00:00'),
(13, 552, 1, '2022-07-14 16:21:12', '2022-07-14 16:21:12', '734e723a-b4a8-4757-9c9c-f94df53ce065', '2 Years', 'Indonesia', '2 years', '2022-07-13 07:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `stc_postbanner`
--

CREATE TABLE `stc_postbanner` (
  `id` int(11) NOT NULL,
  `elementId` int(11) NOT NULL,
  `siteId` int(11) NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0',
  `field_headline` text DEFAULT NULL,
  `field_shortText` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `stc_postbanner`
--

INSERT INTO `stc_postbanner` (`id`, `elementId`, `siteId`, `dateCreated`, `dateUpdated`, `uid`, `field_headline`, `field_shortText`) VALUES
(1, 43, 1, '2022-07-11 12:31:30', '2022-07-14 15:22:31', 'ef637b3b-3b2f-4e49-a9fb-8f9d9226e2bc', 'Office', 'Die bekannten Office-Anwendungen von Word bis PowerPoint.'),
(2, 45, 1, '2022-07-11 12:31:31', '2022-07-11 12:31:31', '4115c05e-2adf-4838-a59b-b85a356b74a5', NULL, NULL),
(4, 84, 1, '2022-07-12 18:04:11', '2022-07-12 18:04:11', 'ffe5e974-2b45-408c-a586-4d690e6a7e7c', 'HEADLINE', 'SHORT TEXT'),
(5, 122, 1, '2022-07-12 18:16:04', '2022-07-12 18:16:04', '37f5538c-80b1-4c9d-9302-f0ba66554694', 'HEADLINE', 'SHORT TEXT'),
(6, 129, 1, '2022-07-12 18:26:12', '2022-07-12 18:26:12', '496e8d06-151f-4094-bc7d-30c499331e77', 'HEADLINE', 'SHORT TEXT'),
(7, 135, 1, '2022-07-12 18:33:07', '2022-07-12 18:33:07', '00107043-29c0-47ba-92c2-5011d41f6cfe', 'HEADLINE', 'SHORT TEXT'),
(8, 140, 1, '2022-07-12 18:33:24', '2022-07-12 18:33:24', '0c2b20ae-9dde-4509-858f-fd597cbd16ef', 'HEADLINE', 'SHORT TEXT'),
(9, 145, 1, '2022-07-12 18:34:53', '2022-07-12 18:34:53', 'b54f3176-559a-4e1d-aa42-0197da7816ed', 'HEADLINE', 'SHORT TEXT'),
(11, 174, 1, '2022-07-13 15:58:26', '2022-07-13 16:02:22', '3e33857d-9eb4-4dc0-8014-04bc05c9efcc', 'Headline blog', 'Short Text blog'),
(12, 176, 1, '2022-07-13 15:58:26', '2022-07-13 15:58:26', '2b30ead5-2f71-4e05-9193-b1557402f8d7', NULL, NULL),
(14, 186, 1, '2022-07-13 16:02:22', '2022-07-13 16:02:22', 'd47ccdab-e8e2-4c96-a1cb-e7aa8d06c66e', 'Headline blog', 'Short Text blog'),
(15, 188, 1, '2022-07-13 16:03:03', '2022-07-13 16:03:03', '4e8c8696-2dfc-44a7-949f-70ff026a0b64', 'Headline blog', 'Short Text blog'),
(16, 225, 1, '2022-07-13 19:12:41', '2022-07-14 14:36:18', '0db05039-9a69-46a2-87fe-ae1c1526b312', 'Microsoft Teams', 'Bringen Sie alle an einem Ort zusammen – für Besprechungen, Chats, Anrufe und Zusammenarbeit.'),
(17, 230, 1, '2022-07-13 19:12:41', '2022-07-13 19:12:41', 'd8c679ad-3b72-46a7-8948-89f2bd9c86a7', 'HEADLINE', 'SHORT TEXT'),
(18, 235, 1, '2022-07-13 19:12:43', '2022-07-14 15:25:06', '86f77621-ecb0-4686-97bb-6e75420c590f', 'Outlook', 'E-Mails, Kontakte und Kalender an einem Ort.'),
(19, 240, 1, '2022-07-13 19:12:43', '2022-07-13 19:12:43', '53a17eba-cda3-4b57-9209-59f20c84693b', 'HEADLINE', 'SHORT TEXT'),
(20, 245, 1, '2022-07-13 19:12:45', '2022-07-14 15:26:05', '2e727568-8a86-4156-a166-08a4f729bae1', 'SharePoint', 'Teilen und verwalten von Inhalten, Know-How und vielem mehr.'),
(21, 250, 1, '2022-07-13 19:12:45', '2022-07-13 19:12:45', '39fcc89a-e849-46d4-9c8c-b70aac51c3a8', 'HEADLINE', 'SHORT TEXT'),
(22, 255, 1, '2022-07-13 19:12:46', '2022-07-14 14:21:43', 'f4e874ec-e75e-4a81-b226-e1d1ae2e6764', 'HEADLINE', 'SHORT TEXT'),
(23, 260, 1, '2022-07-13 19:12:46', '2022-07-13 19:12:46', 'ce93e393-f5d9-43ec-b5c7-3b1c61e0ac79', 'HEADLINE', 'SHORT TEXT'),
(24, 265, 1, '2022-07-13 19:12:48', '2022-07-14 14:21:43', '6a9e3902-7fd5-415c-9e58-2c9fa93a9cb8', 'HEADLINE', 'SHORT TEXT'),
(25, 270, 1, '2022-07-13 19:12:48', '2022-07-13 19:12:48', '7f807c66-7b93-410b-a06c-1e8c5cfa13ad', 'HEADLINE', 'SHORT TEXT'),
(26, 275, 1, '2022-07-13 19:12:50', '2022-07-14 14:21:43', 'b4243c42-5298-42fc-a420-3e9c1cf71514', 'HEADLINE', 'SHORT TEXT'),
(27, 280, 1, '2022-07-13 19:12:50', '2022-07-13 19:12:50', '1945d823-4833-4c18-a92d-8a2d5c772f9e', 'HEADLINE', 'SHORT TEXT'),
(28, 285, 1, '2022-07-13 19:12:51', '2022-07-14 14:21:43', '0ee6c977-786f-4828-b0b4-7a55326dcc17', 'HEADLINE', 'SHORT TEXT'),
(29, 290, 1, '2022-07-13 19:12:51', '2022-07-13 19:12:51', 'd0ce7462-f83c-4840-9a5e-cc2d38bf2f80', 'HEADLINE', 'SHORT TEXT'),
(30, 295, 1, '2022-07-13 19:12:53', '2022-07-14 14:21:43', 'bf5910fc-1ee5-4cb5-9848-b60e36a7ef87', 'HEADLINE', 'SHORT TEXT'),
(31, 300, 1, '2022-07-13 19:12:53', '2022-07-13 19:12:53', 'd3a4cba0-9481-4e46-b0e8-27b6b9ab97b1', 'HEADLINE', 'SHORT TEXT'),
(32, 314, 1, '2022-07-14 13:25:26', '2022-07-14 13:25:26', '16d86efd-f673-423a-8151-7c3dafded6a2', 'HEADLINE', 'SHORT TEXT'),
(34, 353, 1, '2022-07-14 14:36:18', '2022-07-14 14:36:18', 'a3f90f27-af83-468c-9940-bb57f02fef8d', 'Microsoft Teams', 'Bringen Sie alle an einem Ort zusammen – für Besprechungen, Chats, Anrufe und Zusammenarbeit.'),
(35, 359, 1, '2022-07-14 14:43:20', '2022-07-14 14:43:20', '734c8cd0-f3e3-4803-9937-f1f8394c6103', 'HEADLINE', 'SHORT TEXT'),
(36, 365, 1, '2022-07-14 14:49:12', '2022-07-14 14:49:12', 'c4359c5e-3a72-4bb5-9986-60da6e9d4743', 'HEADLINE', 'SHORT TEXT'),
(38, 378, 1, '2022-07-14 15:22:32', '2022-07-14 15:22:32', 'ab696461-8ec1-4aae-ab55-f2445d096bc8', 'Office', 'Die bekannten Office-Anwendungen von Word bis PowerPoint.'),
(39, 393, 1, '2022-07-14 15:24:15', '2022-07-14 15:24:15', 'e36e5098-3453-4ca8-bd90-1f708b745d2a', 'Office', 'Die bekannten Office-Anwendungen von Word bis PowerPoint.'),
(41, 400, 1, '2022-07-14 15:25:06', '2022-07-14 15:25:06', '8da82cc7-d420-47db-9ed7-8f7eb1c06aa1', 'Outlook', 'E-Mails, Kontakte und Kalender an einem Ort.'),
(43, 407, 1, '2022-07-14 15:26:05', '2022-07-14 15:26:05', 'acf70c07-af0e-4472-9705-c76180388d07', 'SharePoint', 'Teilen und verwalten von Inhalten, Know-How und vielem mehr.'),
(44, 413, 1, '2022-07-14 15:26:25', '2022-07-14 15:26:25', '077f6c29-4bb7-4183-930a-843493548678', NULL, NULL),
(45, 415, 1, '2022-07-14 15:26:31', '2022-07-14 15:26:31', 'f60eded8-05c8-4293-8822-fa532209bc33', NULL, 'Cloud-Speicher für eine nahtlose Zusammenarbeit.'),
(47, 418, 1, '2022-07-14 15:27:00', '2022-07-14 15:31:44', 'cff0439c-4141-453b-866b-44fc796c122d', 'To-Do', 'Mit To Do wird die Aufgabenverwaltung zum Kinderspiel.'),
(48, 423, 1, '2022-07-14 15:27:00', '2022-07-14 15:27:00', '7ae177a4-04f5-45b8-a48e-27186a3814c4', 'SharePoint', 'Teilen und verwalten von Inhalten, Know-How und vielem mehr.'),
(49, 428, 1, '2022-07-14 15:27:03', '2022-07-14 15:29:53', '560127f1-293b-4769-bcbb-eb45dae51fb0', 'Microsoft Forms', 'Erstellen Sie ganz einfach Umfragen, Formulare und Abstimmungen.'),
(50, 433, 1, '2022-07-14 15:27:03', '2022-07-14 15:27:03', '57ebff91-78c8-4f24-9487-997b48277cfd', 'SharePoint', 'Teilen und verwalten von Inhalten, Know-How und vielem mehr.'),
(51, 438, 1, '2022-07-14 15:27:05', '2022-07-14 15:29:14', '11fa733b-aab2-4ccf-985a-fde7b8f11f57', 'OneNote', 'Das digitale Notizbuch für vielfältige Einsatzbereiche und Anforderungen.'),
(52, 443, 1, '2022-07-14 15:27:05', '2022-07-14 15:27:05', 'd78c4d43-7f1c-4433-95bb-42a6cfb97d02', 'SharePoint', 'Teilen und verwalten von Inhalten, Know-How und vielem mehr.'),
(53, 448, 1, '2022-07-14 15:27:07', '2022-07-14 15:28:28', '2b1b3a09-80ca-467a-b5e9-719afb4c14bd', 'Planner', 'Effizient und einfach Teamarbeit organisieren.'),
(54, 453, 1, '2022-07-14 15:27:07', '2022-07-14 15:27:07', 'bf6574bf-9f60-449c-b780-b9188829890a', 'SharePoint', 'Teilen und verwalten von Inhalten, Know-How und vielem mehr.'),
(55, 458, 1, '2022-07-14 15:27:10', '2022-07-14 15:28:02', 'b04d2b9a-9cd8-4e73-a24a-eb941915cfb7', 'OneDrive', 'Cloud-Speicher für eine nahtlose Zusammenarbeit.'),
(56, 463, 1, '2022-07-14 15:27:10', '2022-07-14 15:27:10', 'e00c9c01-2be1-435b-8080-54d4b6ec28ec', 'SharePoint', 'Teilen und verwalten von Inhalten, Know-How und vielem mehr.'),
(57, 469, 1, '2022-07-14 15:27:27', '2022-07-14 15:27:27', 'ec9db347-4d0f-4ad6-9b53-32e212bedab0', 'Microsoft Teams', 'Bringen Sie alle an einem Ort zusammen – für Besprechungen, Chats, Anrufe und Zusammenarbeit.'),
(59, 476, 1, '2022-07-14 15:28:02', '2022-07-14 15:28:02', 'b74d5479-2cf0-4e38-a8a0-c0d18d4eade6', 'OneDrive', 'Cloud-Speicher für eine nahtlose Zusammenarbeit.'),
(61, 483, 1, '2022-07-14 15:28:28', '2022-07-14 15:28:28', '23fb19d8-ea5a-4aca-a445-9c4408d5d946', 'Planner', 'Effizient und einfach Teamarbeit organisieren.'),
(62, 489, 1, '2022-07-14 15:28:39', '2022-07-14 15:28:39', '88ccddb8-0910-4664-933d-347a3646ca14', 'OneDrive', 'Cloud-Speicher für eine nahtlose Zusammenarbeit.'),
(64, 496, 1, '2022-07-14 15:29:14', '2022-07-14 15:29:14', '3010d4dd-5cd0-44a2-aea7-5afea57a5066', 'OneNote', 'Das digitale Notizbuch für vielfältige Einsatzbereiche und Anforderungen.'),
(66, 503, 1, '2022-07-14 15:29:53', '2022-07-14 15:29:53', 'e87a7075-151a-4a57-a830-7328c3745c50', 'Microsoft Forms', 'Erstellen Sie ganz einfach Umfragen, Formulare und Abstimmungen.'),
(68, 511, 1, '2022-07-14 15:31:44', '2022-07-14 15:31:44', '1ba55961-875b-485e-99ca-dd6d4dc55e70', 'To-Do', 'Mit To Do wird die Aufgabenverwaltung zum Kinderspiel.'),
(69, 517, 1, '2022-07-14 15:34:09', '2022-07-14 15:34:09', '18b18c1a-2a0b-4f6b-8b8c-e6e775127635', 'Microsoft Teams', 'Bringen Sie alle an einem Ort zusammen – für Besprechungen, Chats, Anrufe und Zusammenarbeit.'),
(70, 522, 1, '2022-07-14 15:43:34', '2022-07-14 15:43:34', 'ee4be366-e0e7-4963-a808-a05443601b0a', 'Microsoft Teams', 'Bringen Sie alle an einem Ort zusammen – für Besprechungen, Chats, Anrufe und Zusammenarbeit.'),
(71, 527, 1, '2022-07-14 15:43:34', '2022-07-14 15:43:34', '30a56040-318f-4b4c-831b-e695d5fc42e2', 'Microsoft Teams', 'Bringen Sie alle an einem Ort zusammen – für Besprechungen, Chats, Anrufe und Zusammenarbeit.'),
(72, 533, 1, '2022-07-14 15:44:08', '2022-07-14 15:44:08', 'd9dcb7f3-534a-4377-b8bc-ea4be131bba6', 'Microsoft Teams', 'Bringen Sie alle an einem Ort zusammen – für Besprechungen, Chats, Anrufe und Zusammenarbeit.');

-- --------------------------------------------------------

--
-- Table structure for table `structureelements`
--

CREATE TABLE `structureelements` (
  `id` int(11) NOT NULL,
  `structureId` int(11) NOT NULL,
  `elementId` int(11) DEFAULT NULL,
  `root` int(11) UNSIGNED DEFAULT NULL,
  `lft` int(11) UNSIGNED NOT NULL,
  `rgt` int(11) UNSIGNED NOT NULL,
  `level` smallint(6) UNSIGNED NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `structureelements`
--

INSERT INTO `structureelements` (`id`, `structureId`, `elementId`, `root`, `lft`, `rgt`, `level`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 1, NULL, 1, 1, 4, 0, '2022-07-12 16:27:06', '2022-07-12 16:27:06', '37967551-051c-421f-b906-9031ef63aa84'),
(2, 1, 55, 1, 2, 3, 1, '2022-07-12 16:27:06', '2022-07-12 16:27:06', '6686a9a2-ba96-46bf-a6af-292a264e07f1'),
(3, 2, NULL, 3, 1, 4, 0, '2022-07-12 16:55:46', '2022-07-12 16:55:46', '99ae2341-ba42-4d12-99dd-60c0a056d156'),
(4, 2, 76, 3, 2, 3, 1, '2022-07-12 16:55:46', '2022-07-12 16:55:46', '757049cd-7aae-4f5e-b2e8-c939c9d5613a'),
(5, 4, NULL, 5, 1, 24, 0, '2022-07-14 14:21:41', '2022-07-14 15:43:36', '31f66665-4595-4cd0-8411-04614078a877'),
(6, 4, 42, 5, 2, 3, 1, '2022-07-14 14:21:41', '2022-07-14 14:26:16', 'cc5353c6-a1b4-4f64-b761-49f45456d286'),
(7, 4, 224, 5, 10, 11, 1, '2022-07-14 14:21:41', '2022-07-14 15:32:29', '51ee0008-ffd1-4ac3-8006-913309e287d4'),
(8, 4, 234, 5, 4, 5, 1, '2022-07-14 14:21:41', '2022-07-14 15:24:20', '3452bc92-70a1-45d3-bc9e-943886aa63ca'),
(9, 4, 244, 5, 8, 9, 1, '2022-07-14 14:21:41', '2022-07-14 15:32:29', 'efd5bf2e-7aa1-4eee-8330-acc095219dd8'),
(15, 4, 411, 5, 22, 23, 1, '2022-07-14 15:26:05', '2022-07-14 15:43:36', '45f8c149-0707-49b9-b101-0e40ca7faecc'),
(17, 4, 417, 5, 18, 19, 1, '2022-07-14 15:27:00', '2022-07-14 15:43:36', 'b29090db-d5d9-4d25-9b53-39d66b9fea85'),
(18, 4, 427, 5, 16, 17, 1, '2022-07-14 15:27:03', '2022-07-14 15:43:36', '92022d7d-eddd-432a-b57a-cac7bda50561'),
(19, 4, 437, 5, 14, 15, 1, '2022-07-14 15:27:05', '2022-07-14 15:43:36', '57f070dc-2d90-458e-8827-9ccfcdffdf58'),
(20, 4, 447, 5, 12, 13, 1, '2022-07-14 15:27:07', '2022-07-14 15:43:36', '541efb2b-3877-4000-b7eb-67535a89141d'),
(21, 4, 457, 5, 6, 7, 1, '2022-07-14 15:27:10', '2022-07-14 15:32:29', '3cd2d138-3cfb-42ac-903d-6eeb52da9f83'),
(22, 4, 521, 5, 20, 21, 1, '2022-07-14 15:43:34', '2022-07-14 15:43:36', 'a7437a22-6245-4d44-b44e-e117438060fd');

-- --------------------------------------------------------

--
-- Table structure for table `structures`
--

CREATE TABLE `structures` (
  `id` int(11) NOT NULL,
  `maxLevels` smallint(6) UNSIGNED DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `dateDeleted` datetime DEFAULT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `structures`
--

INSERT INTO `structures` (`id`, `maxLevels`, `dateCreated`, `dateUpdated`, `dateDeleted`, `uid`) VALUES
(1, 1, '2022-07-09 03:44:40', '2022-07-09 03:44:40', NULL, '7eacc72b-c9f9-418e-b131-c20731759ccf'),
(2, 1, '2022-07-09 03:53:41', '2022-07-09 03:53:41', NULL, '351669bc-e7a8-4c52-997f-f9579865c970'),
(3, 1, '2022-07-09 07:29:15', '2022-07-09 07:29:15', NULL, '08c003c2-df60-42b8-9da5-8c3943e5aa74'),
(4, 1, '2022-07-14 14:21:41', '2022-07-14 14:21:41', NULL, '19f2dbbe-ef61-4ec6-a763-a9681a4985f1');

-- --------------------------------------------------------

--
-- Table structure for table `supertableblocks`
--

CREATE TABLE `supertableblocks` (
  `id` int(11) NOT NULL,
  `primaryOwnerId` int(11) NOT NULL,
  `fieldId` int(11) NOT NULL,
  `typeId` int(11) NOT NULL,
  `deletedWithOwner` tinyint(1) DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `supertableblocks`
--

INSERT INTO `supertableblocks` (`id`, `primaryOwnerId`, `fieldId`, `typeId`, `deletedWithOwner`, `dateCreated`, `dateUpdated`) VALUES
(33, 32, 13, 1, NULL, '2022-07-09 07:36:16', '2022-07-09 07:36:16'),
(43, 42, 21, 3, NULL, '2022-07-11 12:31:30', '2022-07-11 12:31:30'),
(45, 44, 21, 3, NULL, '2022-07-11 12:31:31', '2022-07-11 12:31:31'),
(47, 46, 13, 1, NULL, '2022-07-11 14:10:15', '2022-07-11 14:10:15'),
(84, 83, 21, 3, NULL, '2022-07-12 18:04:11', '2022-07-12 18:04:11'),
(122, 121, 21, 3, NULL, '2022-07-12 18:16:04', '2022-07-12 18:16:04'),
(129, 128, 21, 3, NULL, '2022-07-12 18:26:12', '2022-07-12 18:26:12'),
(135, 134, 21, 3, NULL, '2022-07-12 18:33:07', '2022-07-12 18:33:07'),
(140, 139, 21, 3, NULL, '2022-07-12 18:33:24', '2022-07-12 18:33:24'),
(145, 144, 21, 3, NULL, '2022-07-12 18:34:53', '2022-07-12 18:34:53'),
(152, 151, 13, 1, NULL, '2022-07-12 18:39:02', '2022-07-12 18:39:02'),
(158, 157, 13, 1, NULL, '2022-07-12 18:41:33', '2022-07-12 18:41:33'),
(164, 163, 13, 1, NULL, '2022-07-12 18:48:25', '2022-07-12 18:48:25'),
(174, 5, 21, 3, NULL, '2022-07-13 15:58:26', '2022-07-13 15:58:26'),
(176, 175, 21, 3, NULL, '2022-07-13 15:58:26', '2022-07-13 15:58:26'),
(180, 179, 13, 1, NULL, '2022-07-13 16:01:47', '2022-07-13 16:01:47'),
(186, 185, 21, 3, NULL, '2022-07-13 16:02:22', '2022-07-13 16:02:22'),
(188, 187, 21, 3, NULL, '2022-07-13 16:03:03', '2022-07-13 16:03:03'),
(211, 210, 13, 1, NULL, '2022-07-13 17:17:49', '2022-07-13 17:17:49'),
(215, 214, 13, 1, NULL, '2022-07-13 17:17:49', '2022-07-13 17:17:49'),
(225, 224, 21, 3, NULL, '2022-07-13 19:12:41', '2022-07-13 19:12:41'),
(230, 229, 21, 3, NULL, '2022-07-13 19:12:41', '2022-07-13 19:12:41'),
(235, 234, 21, 3, NULL, '2022-07-13 19:12:43', '2022-07-13 19:12:43'),
(240, 239, 21, 3, NULL, '2022-07-13 19:12:43', '2022-07-13 19:12:43'),
(245, 244, 21, 3, NULL, '2022-07-13 19:12:45', '2022-07-13 19:12:45'),
(250, 249, 21, 3, NULL, '2022-07-13 19:12:45', '2022-07-13 19:12:45'),
(255, 254, 21, 3, 1, '2022-07-13 19:12:46', '2022-07-13 19:12:46'),
(260, 259, 21, 3, NULL, '2022-07-13 19:12:46', '2022-07-13 19:12:46'),
(265, 264, 21, 3, 1, '2022-07-13 19:12:48', '2022-07-13 19:12:48'),
(270, 269, 21, 3, NULL, '2022-07-13 19:12:48', '2022-07-13 19:12:48'),
(275, 274, 21, 3, 1, '2022-07-13 19:12:50', '2022-07-13 19:12:50'),
(280, 279, 21, 3, NULL, '2022-07-13 19:12:50', '2022-07-13 19:12:50'),
(285, 284, 21, 3, 1, '2022-07-13 19:12:51', '2022-07-13 19:12:51'),
(290, 289, 21, 3, NULL, '2022-07-13 19:12:51', '2022-07-13 19:12:51'),
(295, 294, 21, 3, 1, '2022-07-13 19:12:53', '2022-07-13 19:12:53'),
(300, 299, 21, 3, NULL, '2022-07-13 19:12:53', '2022-07-13 19:12:53'),
(314, 313, 21, 3, NULL, '2022-07-14 13:25:26', '2022-07-14 13:25:26'),
(353, 352, 21, 3, NULL, '2022-07-14 14:36:18', '2022-07-14 14:36:18'),
(359, 358, 21, 3, NULL, '2022-07-14 14:43:20', '2022-07-14 14:43:20'),
(365, 364, 21, 3, NULL, '2022-07-14 14:49:12', '2022-07-14 14:49:12'),
(378, 377, 21, 3, NULL, '2022-07-14 15:22:32', '2022-07-14 15:22:32'),
(393, 392, 21, 3, NULL, '2022-07-14 15:24:15', '2022-07-14 15:24:15'),
(400, 399, 21, 3, NULL, '2022-07-14 15:25:06', '2022-07-14 15:25:06'),
(407, 406, 21, 3, NULL, '2022-07-14 15:26:05', '2022-07-14 15:26:05'),
(418, 417, 21, 3, NULL, '2022-07-14 15:27:00', '2022-07-14 15:27:00'),
(423, 422, 21, 3, NULL, '2022-07-14 15:27:00', '2022-07-14 15:27:00'),
(428, 427, 21, 3, NULL, '2022-07-14 15:27:03', '2022-07-14 15:27:03'),
(433, 432, 21, 3, NULL, '2022-07-14 15:27:03', '2022-07-14 15:27:03'),
(438, 437, 21, 3, NULL, '2022-07-14 15:27:05', '2022-07-14 15:27:05'),
(443, 442, 21, 3, NULL, '2022-07-14 15:27:05', '2022-07-14 15:27:05'),
(448, 447, 21, 3, NULL, '2022-07-14 15:27:07', '2022-07-14 15:27:07'),
(453, 452, 21, 3, NULL, '2022-07-14 15:27:07', '2022-07-14 15:27:07'),
(458, 457, 21, 3, NULL, '2022-07-14 15:27:10', '2022-07-14 15:27:10'),
(463, 462, 21, 3, NULL, '2022-07-14 15:27:10', '2022-07-14 15:27:10'),
(469, 468, 21, 3, NULL, '2022-07-14 15:27:27', '2022-07-14 15:27:27'),
(476, 475, 21, 3, NULL, '2022-07-14 15:28:02', '2022-07-14 15:28:02'),
(483, 482, 21, 3, NULL, '2022-07-14 15:28:28', '2022-07-14 15:28:28'),
(489, 488, 21, 3, NULL, '2022-07-14 15:28:39', '2022-07-14 15:28:39'),
(496, 495, 21, 3, NULL, '2022-07-14 15:29:14', '2022-07-14 15:29:14'),
(503, 502, 21, 3, NULL, '2022-07-14 15:29:53', '2022-07-14 15:29:53'),
(511, 510, 21, 3, NULL, '2022-07-14 15:31:44', '2022-07-14 15:31:44'),
(517, 516, 21, 3, NULL, '2022-07-14 15:34:09', '2022-07-14 15:34:09'),
(522, 521, 21, 3, NULL, '2022-07-14 15:43:34', '2022-07-14 15:43:34'),
(527, 526, 21, 3, NULL, '2022-07-14 15:43:34', '2022-07-14 15:43:34'),
(533, 532, 21, 3, NULL, '2022-07-14 15:44:08', '2022-07-14 15:44:08'),
(547, 546, 13, 1, NULL, '2022-07-14 16:20:47', '2022-07-14 16:20:47'),
(552, 551, 13, 1, NULL, '2022-07-14 16:21:12', '2022-07-14 16:21:12');

-- --------------------------------------------------------

--
-- Table structure for table `supertableblocks_owners`
--

CREATE TABLE `supertableblocks_owners` (
  `blockId` int(11) NOT NULL,
  `ownerId` int(11) NOT NULL,
  `sortOrder` smallint(6) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `supertableblocks_owners`
--

INSERT INTO `supertableblocks_owners` (`blockId`, `ownerId`, `sortOrder`) VALUES
(33, 32, 1),
(43, 42, 1),
(45, 44, 1),
(47, 46, 1),
(84, 83, 1),
(122, 121, 1),
(129, 128, 1),
(135, 134, 1),
(140, 139, 1),
(145, 144, 1),
(152, 151, 1),
(158, 157, 1),
(164, 163, 1),
(174, 5, 1),
(176, 175, 1),
(180, 179, 1),
(186, 185, 1),
(188, 187, 1),
(211, 210, 1),
(215, 214, 1),
(225, 224, 1),
(230, 229, 1),
(235, 234, 1),
(240, 239, 1),
(245, 244, 1),
(250, 249, 1),
(255, 254, 1),
(260, 259, 1),
(265, 264, 1),
(270, 269, 1),
(275, 274, 1),
(280, 279, 1),
(285, 284, 1),
(290, 289, 1),
(295, 294, 1),
(300, 299, 1),
(314, 313, 1),
(353, 352, 1),
(359, 358, 1),
(365, 364, 1),
(378, 377, 1),
(393, 392, 1),
(400, 399, 1),
(407, 406, 1),
(418, 417, 1),
(423, 422, 1),
(428, 427, 1),
(433, 432, 1),
(438, 437, 1),
(443, 442, 1),
(448, 447, 1),
(453, 452, 1),
(458, 457, 1),
(463, 462, 1),
(469, 468, 1),
(476, 475, 1),
(483, 482, 1),
(489, 488, 1),
(496, 495, 1),
(503, 502, 1),
(511, 510, 1),
(517, 516, 1),
(522, 521, 1),
(527, 526, 1),
(533, 532, 1),
(547, 546, 1),
(552, 551, 1);

-- --------------------------------------------------------

--
-- Table structure for table `supertableblocktypes`
--

CREATE TABLE `supertableblocktypes` (
  `id` int(11) NOT NULL,
  `fieldId` int(11) NOT NULL,
  `fieldLayoutId` int(11) DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `supertableblocktypes`
--

INSERT INTO `supertableblocktypes` (`id`, `fieldId`, `fieldLayoutId`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 13, 15, '2022-07-09 04:40:39', '2022-07-09 04:40:39', 'f33818e5-598e-4133-80af-07ea7ac337ef'),
(3, 21, 17, '2022-07-09 04:52:12', '2022-07-09 04:52:12', 'ba5406f8-567b-4ae1-8d90-b0fc6c47dbf7');

-- --------------------------------------------------------

--
-- Table structure for table `systemmessages`
--

CREATE TABLE `systemmessages` (
  `id` int(11) NOT NULL,
  `language` varchar(255) NOT NULL,
  `key` varchar(255) NOT NULL,
  `subject` text NOT NULL,
  `body` text NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `taggroups`
--

CREATE TABLE `taggroups` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `handle` varchar(255) NOT NULL,
  `fieldLayoutId` int(11) DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `dateDeleted` datetime DEFAULT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

CREATE TABLE `tags` (
  `id` int(11) NOT NULL,
  `groupId` int(11) NOT NULL,
  `deletedWithGroup` tinyint(1) DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tokens`
--

CREATE TABLE `tokens` (
  `id` int(11) NOT NULL,
  `token` char(32) NOT NULL,
  `route` text DEFAULT NULL,
  `usageLimit` tinyint(3) UNSIGNED DEFAULT NULL,
  `usageCount` tinyint(3) UNSIGNED DEFAULT NULL,
  `expiryDate` datetime NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tokens`
--

INSERT INTO `tokens` (`id`, `token`, `route`, `usageLimit`, `usageCount`, `expiryDate`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 'qQHm0KG2sB7eRCBLfqTkfvs3w0rI3YC5', '[\"preview/preview\",{\"elementType\":\"craft\\\\elements\\\\Entry\",\"canonicalId\":224,\"siteId\":1,\"draftId\":null,\"revisionId\":null,\"userId\":1}]', NULL, NULL, '2022-07-15 14:33:46', '2022-07-14 14:33:46', '2022-07-14 14:33:46', 'c202935c-8efc-4a6f-b69a-ff5f5ee1243c');

-- --------------------------------------------------------

--
-- Table structure for table `usergroups`
--

CREATE TABLE `usergroups` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `handle` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `usergroups_users`
--

CREATE TABLE `usergroups_users` (
  `id` int(11) NOT NULL,
  `groupId` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `userpermissions`
--

CREATE TABLE `userpermissions` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `userpermissions_usergroups`
--

CREATE TABLE `userpermissions_usergroups` (
  `id` int(11) NOT NULL,
  `permissionId` int(11) NOT NULL,
  `groupId` int(11) NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `userpermissions_users`
--

CREATE TABLE `userpermissions_users` (
  `id` int(11) NOT NULL,
  `permissionId` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `userpreferences`
--

CREATE TABLE `userpreferences` (
  `userId` int(11) NOT NULL,
  `preferences` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `userpreferences`
--

INSERT INTO `userpreferences` (`userId`, `preferences`) VALUES
(1, '{\"language\":\"en-US\"}');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `photoId` int(11) DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT 0,
  `pending` tinyint(1) NOT NULL DEFAULT 0,
  `locked` tinyint(1) NOT NULL DEFAULT 0,
  `suspended` tinyint(1) NOT NULL DEFAULT 0,
  `admin` tinyint(1) NOT NULL DEFAULT 0,
  `username` varchar(255) DEFAULT NULL,
  `fullName` varchar(255) DEFAULT NULL,
  `firstName` varchar(255) DEFAULT NULL,
  `lastName` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `lastLoginDate` datetime DEFAULT NULL,
  `lastLoginAttemptIp` varchar(45) DEFAULT NULL,
  `invalidLoginWindowStart` datetime DEFAULT NULL,
  `invalidLoginCount` tinyint(3) UNSIGNED DEFAULT NULL,
  `lastInvalidLoginDate` datetime DEFAULT NULL,
  `lockoutDate` datetime DEFAULT NULL,
  `hasDashboard` tinyint(1) NOT NULL DEFAULT 0,
  `verificationCode` varchar(255) DEFAULT NULL,
  `verificationCodeIssuedDate` datetime DEFAULT NULL,
  `unverifiedEmail` varchar(255) DEFAULT NULL,
  `passwordResetRequired` tinyint(1) NOT NULL DEFAULT 0,
  `lastPasswordChangeDate` datetime DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `photoId`, `active`, `pending`, `locked`, `suspended`, `admin`, `username`, `fullName`, `firstName`, `lastName`, `email`, `password`, `lastLoginDate`, `lastLoginAttemptIp`, `invalidLoginWindowStart`, `invalidLoginCount`, `lastInvalidLoginDate`, `lockoutDate`, `hasDashboard`, `verificationCode`, `verificationCodeIssuedDate`, `unverifiedEmail`, `passwordResetRequired`, `lastPasswordChangeDate`, `dateCreated`, `dateUpdated`) VALUES
(1, NULL, 1, 0, 0, 0, 1, 'admin', NULL, NULL, NULL, 'admin@mail.com', '$2y$13$n9.eX13cXxx6LzjJia0Ibes5/aghqwteq6TwJlFYRiq1Ih.pM.Gdy', '2022-07-14 12:29:17', NULL, NULL, NULL, '2022-07-12 16:20:14', NULL, 1, NULL, NULL, NULL, 0, '2022-07-08 13:30:52', '2022-07-08 13:30:52', '2022-07-14 12:29:18');

-- --------------------------------------------------------

--
-- Table structure for table `volumefolders`
--

CREATE TABLE `volumefolders` (
  `id` int(11) NOT NULL,
  `parentId` int(11) DEFAULT NULL,
  `volumeId` int(11) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `path` varchar(255) DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `volumefolders`
--

INSERT INTO `volumefolders` (`id`, `parentId`, `volumeId`, `name`, `path`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, NULL, 1, 'Content Assets', '', '2022-07-09 03:33:29', '2022-07-09 03:33:29', '639e9878-3af1-42ad-93b9-4fa8f673623f'),
(2, 1, NULL, 'user_1', 'user_1/', '2022-07-09 03:40:43', '2022-07-09 03:40:43', 'd9aa8ae0-daac-41ff-b999-78648d9dd68d');

-- --------------------------------------------------------

--
-- Table structure for table `volumes`
--

CREATE TABLE `volumes` (
  `id` int(11) NOT NULL,
  `fieldLayoutId` int(11) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `handle` varchar(255) NOT NULL,
  `fs` varchar(255) NOT NULL,
  `transformFs` varchar(255) DEFAULT NULL,
  `transformSubpath` varchar(255) DEFAULT NULL,
  `titleTranslationMethod` varchar(255) NOT NULL DEFAULT 'site',
  `titleTranslationKeyFormat` text DEFAULT NULL,
  `sortOrder` smallint(6) UNSIGNED DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `dateDeleted` datetime DEFAULT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `volumes`
--

INSERT INTO `volumes` (`id`, `fieldLayoutId`, `name`, `handle`, `fs`, `transformFs`, `transformSubpath`, `titleTranslationMethod`, `titleTranslationKeyFormat`, `sortOrder`, `dateCreated`, `dateUpdated`, `dateDeleted`, `uid`) VALUES
(1, 11, 'Content Assets', 'contentAssets', '$CONTENT_FILE_SYSTEM', '', '', 'site', NULL, 1, '2022-07-09 03:33:29', '2022-07-09 03:33:29', NULL, 'cae04bf8-01a2-4040-b9cc-6584b31aaaae');

-- --------------------------------------------------------

--
-- Table structure for table `widgets`
--

CREATE TABLE `widgets` (
  `id` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `type` varchar(255) NOT NULL,
  `sortOrder` smallint(6) UNSIGNED DEFAULT NULL,
  `colspan` tinyint(3) DEFAULT NULL,
  `settings` text DEFAULT NULL,
  `enabled` tinyint(1) NOT NULL DEFAULT 1,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `widgets`
--

INSERT INTO `widgets` (`id`, `userId`, `type`, `sortOrder`, `colspan`, `settings`, `enabled`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 1, 'craft\\widgets\\RecentEntries', 1, NULL, '{\"siteId\":1,\"section\":\"*\",\"limit\":10}', 1, '2022-07-08 13:44:20', '2022-07-08 13:44:20', 'c7090fd7-4997-49ab-812c-61434bff861f'),
(2, 1, 'craft\\widgets\\CraftSupport', 2, NULL, '[]', 1, '2022-07-08 13:44:20', '2022-07-08 13:44:20', '10c5beef-e311-4f2e-8094-e86fa28a4f7b'),
(3, 1, 'craft\\widgets\\Updates', 3, NULL, '[]', 1, '2022-07-08 13:44:20', '2022-07-08 13:44:20', '21db6a30-16b8-4a66-a401-12e2b7810cb9'),
(4, 1, 'craft\\widgets\\Feed', 4, NULL, '{\"url\":\"https://craftcms.com/news.rss\",\"title\":\"Craft News\",\"limit\":5}', 1, '2022-07-08 13:44:20', '2022-07-08 13:44:20', '4b06994f-a8ad-45c6-ac12-319ab4f007d3');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `addresses`
--
ALTER TABLE `addresses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_mpxmsvuudeudtyvcfpfdmdnqdzdjrckogyox` (`ownerId`);

--
-- Indexes for table `announcements`
--
ALTER TABLE `announcements`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_qjyqpkgwcatqaulokuipnbndjugaovoksbae` (`userId`,`unread`,`dateRead`,`dateCreated`),
  ADD KEY `idx_vjvksyctkcfzmfvjqyjaxpbnjycjihmnqemp` (`dateRead`),
  ADD KEY `fk_jfzokqakpywqcgsgpgjtgfukumemohiyzwmo` (`pluginId`);

--
-- Indexes for table `assetindexdata`
--
ALTER TABLE `assetindexdata`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_eyyxjsmfzcpvrnouzgdhvpbdszeipmergxya` (`sessionId`,`volumeId`),
  ADD KEY `idx_gpwuznzyrqudjgbqqzvcxitryzotxapgohwk` (`volumeId`);

--
-- Indexes for table `assetindexingsessions`
--
ALTER TABLE `assetindexingsessions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `assets`
--
ALTER TABLE `assets`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_ebpjcwrrhnfwkthwxkrnwzcydydglcwcawoq` (`filename`,`folderId`),
  ADD KEY `idx_lglagnxfnefigvitqbfisrfxdhnukqkbozqr` (`folderId`),
  ADD KEY `idx_tndnjbrqfhzjagtnmtldornplvilupvzkcyl` (`volumeId`),
  ADD KEY `fk_msoisdavcaxbcqomlzomkpxvgiemldrynowu` (`uploaderId`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_wmsicpyaymagexntyebklqfhrdpfyonwtemk` (`groupId`),
  ADD KEY `fk_xtbwnvxodrsmhxqimxiwzshtisypljhbomrk` (`parentId`);

--
-- Indexes for table `categorygroups`
--
ALTER TABLE `categorygroups`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_zpcfgxpbuygaafpkqtjwmgjazopgoaxhshni` (`name`),
  ADD KEY `idx_uolwlrshtehklzycvdxlejvncrjnlamefftw` (`handle`),
  ADD KEY `idx_aynosmkosniffjfbqgcnlfkyqerxaiiodvtg` (`structureId`),
  ADD KEY `idx_nfazcywgvromgaavviuifmdxrvxbgjatdfzb` (`fieldLayoutId`),
  ADD KEY `idx_einxaoadbwqddrtrpjommjheqnozjylvaudx` (`dateDeleted`);

--
-- Indexes for table `categorygroups_sites`
--
ALTER TABLE `categorygroups_sites`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_lalmvyxcebdxykxeqjuepezvmudllefoiqnu` (`groupId`,`siteId`),
  ADD KEY `idx_ldaxftvnvoduvbpsiwvnxixecaiupealqwud` (`siteId`);

--
-- Indexes for table `changedattributes`
--
ALTER TABLE `changedattributes`
  ADD PRIMARY KEY (`elementId`,`siteId`,`attribute`),
  ADD KEY `idx_pltkyvhysizwufqnuioyrxmkbocnfdzjxpyz` (`elementId`,`siteId`,`dateUpdated`),
  ADD KEY `fk_fgbvdktzfclxhtlhwudssvbdzkjwrbqcnpns` (`siteId`),
  ADD KEY `fk_lffhsiurkgzvvpjtltgxthjvhqsxwdkzsqws` (`userId`);

--
-- Indexes for table `changedfields`
--
ALTER TABLE `changedfields`
  ADD PRIMARY KEY (`elementId`,`siteId`,`fieldId`),
  ADD KEY `idx_kgcnyewowyrcwcndacfzdbhbixunetfeowhv` (`elementId`,`siteId`,`dateUpdated`),
  ADD KEY `fk_ofrvamssndoclrtijuftukyusrnpzswwyulg` (`siteId`),
  ADD KEY `fk_voxfukabcfdffpqwsqobobkdyvssofyofott` (`fieldId`),
  ADD KEY `fk_fgiydrxlfviahldxgpojctbohymsztdydfpe` (`userId`);

--
-- Indexes for table `content`
--
ALTER TABLE `content`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_qrjygcnsjhgdlmfndeyduvitjfovgrhywpoq` (`elementId`,`siteId`),
  ADD KEY `idx_nondvgjdevmdrnftiscdebodxkoibywplavt` (`siteId`),
  ADD KEY `idx_hmdvhwoxtcwinfntqyjmywnxuuwpvqsxizuv` (`title`);

--
-- Indexes for table `craftidtokens`
--
ALTER TABLE `craftidtokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_xqwlmmanygobsvdrpqqbqbxsgyhbchhvlpur` (`userId`);

--
-- Indexes for table `deprecationerrors`
--
ALTER TABLE `deprecationerrors`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_puvqbnwihksicahunqddliimbpvnutptnqhh` (`key`,`fingerprint`);

--
-- Indexes for table `drafts`
--
ALTER TABLE `drafts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_ntrjnlemiseeftgknomsiipsltekkxfnnxmb` (`creatorId`,`provisional`),
  ADD KEY `idx_ysizarljqmejjgskgagnfkdtdetxpvzzyxbw` (`saved`),
  ADD KEY `fk_uevsqagteujwmyuhrrpermxjgtshsdkvuuni` (`canonicalId`);

--
-- Indexes for table `elements`
--
ALTER TABLE `elements`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_fvkmxpsyamafmrfqzwmdpckodlzqpexzpqbh` (`dateDeleted`),
  ADD KEY `idx_lpmlwyuhgkjqbpjesrutexqlegygadizycqq` (`fieldLayoutId`),
  ADD KEY `idx_irrlgxjvqukotoifhviqbtexmnmvqkavoull` (`type`),
  ADD KEY `idx_ptzszeyzfwivszbudngfklitbugvouomqdfr` (`enabled`),
  ADD KEY `idx_wfbgsdkynycssrjafltplooahwjzqfxnamcc` (`archived`,`dateCreated`),
  ADD KEY `idx_edfaphvujvojzncfkygofuvrielpnjxdbjbl` (`archived`,`dateDeleted`,`draftId`,`revisionId`,`canonicalId`),
  ADD KEY `idx_djovksgklrjqnlfprfvnkzluxdvciwapimhn` (`archived`,`dateDeleted`,`draftId`,`revisionId`,`canonicalId`,`enabled`),
  ADD KEY `fk_qrxhldedsacwjveofubaqrbwfnewccmpjhhx` (`canonicalId`),
  ADD KEY `fk_pxrjhgzjoismlwgifijevtntfyqggnfscjjo` (`draftId`),
  ADD KEY `fk_rdmckdvzihdzpehhqccvovdyjnlvxvckucta` (`revisionId`);

--
-- Indexes for table `elements_sites`
--
ALTER TABLE `elements_sites`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_jxorctdjhkuqncmozvrlicxdeggxuyqioilu` (`elementId`,`siteId`),
  ADD KEY `idx_ujzslgxwvestmmfccalnllcspmflcvnqnrbl` (`siteId`),
  ADD KEY `idx_wljljcnntklnjklvobhwykmbdqdamhlaigzg` (`slug`,`siteId`),
  ADD KEY `idx_qhecrvzkvumtphagsrypwwedmotdcdejfkng` (`enabled`),
  ADD KEY `idx_royukaipjhybsigjapwtbhdnntdixzwncgey` (`uri`,`siteId`);

--
-- Indexes for table `entries`
--
ALTER TABLE `entries`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_wicvrtoyzkxptbpirikomdmdfuhbkhabuutq` (`postDate`),
  ADD KEY `idx_jjurzxiebqerbsmymcqecjvmyuwmyidpnodl` (`expiryDate`),
  ADD KEY `idx_qtfsrwvhtdpfkzxxaudgzzvcnvrfvxgpodzb` (`authorId`),
  ADD KEY `idx_dakbeftfgedfsjjbrurinhsssmiwrrniigpp` (`sectionId`),
  ADD KEY `idx_lheijfaiwkrqdtttllopduppjfbptajlclmv` (`typeId`),
  ADD KEY `fk_ehtlgpfcitnhdvgtgvfqmaseptnxgzsqddyo` (`parentId`);

--
-- Indexes for table `entrytypes`
--
ALTER TABLE `entrytypes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_erwviuezwltbpgcgwxssfcataukcyafrhrzm` (`name`,`sectionId`),
  ADD KEY `idx_zbphkupnqexfigvisnivinjypmkacrvudaev` (`handle`,`sectionId`),
  ADD KEY `idx_wuieviqziykgqxzwrbavhiiktapekgkdbgsp` (`sectionId`),
  ADD KEY `idx_vsxktpswbypbmruwzabuhknxgvojtppdmxwq` (`fieldLayoutId`),
  ADD KEY `idx_jukqgfkgzfalyxltmgdekyexlyqwzdxgdtxk` (`dateDeleted`);

--
-- Indexes for table `fieldgroups`
--
ALTER TABLE `fieldgroups`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_umfkcaecocmomhkjbrsksvmtbyzntbrfgknq` (`name`),
  ADD KEY `idx_jvyvtteowaitlbbdblzrnocuxmvadqkmycpz` (`dateDeleted`,`name`);

--
-- Indexes for table `fieldlayoutfields`
--
ALTER TABLE `fieldlayoutfields`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_mxukpmqbqzobpyiwsobwiqnaunvfcreldepq` (`layoutId`,`fieldId`),
  ADD KEY `idx_vzjfucaehnqcaxanxqokgfizubirqnkurnyg` (`sortOrder`),
  ADD KEY `idx_urvvbocrgkcafesyvziuathxliestkerxyyl` (`tabId`),
  ADD KEY `idx_bezzkhbfykjekamrfwviwvkzwrwcwmmckyzv` (`fieldId`);

--
-- Indexes for table `fieldlayouts`
--
ALTER TABLE `fieldlayouts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_kbjotzjkwcxlsmujfowxehxpacdxfytekckw` (`dateDeleted`),
  ADD KEY `idx_iwbscmfzltbzsvrsdivvhztvoilmuvwtjkcs` (`type`);

--
-- Indexes for table `fieldlayouttabs`
--
ALTER TABLE `fieldlayouttabs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_zxyhprtbwxiqnrhvclltwqzbkcotfmuhaasm` (`sortOrder`),
  ADD KEY `idx_dwawrpoxdseauyspjxygvztubeixhgcvbtjo` (`layoutId`);

--
-- Indexes for table `fields`
--
ALTER TABLE `fields`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_dzqboocwzcnayqtedgssptlylqovhyiulrou` (`handle`,`context`),
  ADD KEY `idx_ifpxrclcoyqedbkxyhbrehjuklyvlfjocwuf` (`groupId`),
  ADD KEY `idx_yrryvdavebuhieltwumcnktsoykxbygfirph` (`context`);

--
-- Indexes for table `globalsets`
--
ALTER TABLE `globalsets`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_onpdmqkkgyuijclogahhlqdxawyvskszewrb` (`name`),
  ADD KEY `idx_ojdgrrcbcdisntmgrbvjevxcbjdybszsxbol` (`handle`),
  ADD KEY `idx_onjsfirjbhsaleimjhzbtzlcfpkzbakqgwpd` (`fieldLayoutId`),
  ADD KEY `idx_chvjpypmrtmxyolgzjqjhxjxcgpesgmjbgbf` (`sortOrder`);

--
-- Indexes for table `gqlschemas`
--
ALTER TABLE `gqlschemas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gqltokens`
--
ALTER TABLE `gqltokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_eolqsodqebszprnnopawquwjhfwtzqhszjbh` (`accessToken`),
  ADD UNIQUE KEY `idx_wuyuqhrkeirrivucndsptabkdizddzedqfuz` (`name`),
  ADD KEY `fk_ognslnysrqzfeiteukibruxzcjmtydzeptfr` (`schemaId`);

--
-- Indexes for table `imagetransformindex`
--
ALTER TABLE `imagetransformindex`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_ffmejfnvzwwukcsxukvwtmhrnotbugsagtvn` (`assetId`,`transformString`);

--
-- Indexes for table `imagetransforms`
--
ALTER TABLE `imagetransforms`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_xjgerajewaeeilqtwlxkquhenfwrwgfeewtc` (`name`),
  ADD KEY `idx_bukcyxosrzrrdjibtnegqkfymtpyqcnwnbqp` (`handle`);

--
-- Indexes for table `info`
--
ALTER TABLE `info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lenz_linkfield`
--
ALTER TABLE `lenz_linkfield`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_vpcugcpdowhsfswnupzsutlckoxmlpckpygh` (`elementId`,`siteId`,`fieldId`),
  ADD KEY `idx_rdjhjoistbdtlseivbmmyterqtnyfvndxher` (`fieldId`),
  ADD KEY `idx_nwhyugyizbtermqmesgblbkmttnicpooevtc` (`siteId`),
  ADD KEY `fk_kbyqgidgohokvxhmnrscxuicwdnvhmguwtsp` (`linkedId`),
  ADD KEY `fk_wpfchipctftsdyrnvxmhlgnqskzehkqpjagi` (`linkedSiteId`);

--
-- Indexes for table `matrixblocks`
--
ALTER TABLE `matrixblocks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_nizsqbzxniowxhniziucbacydxynbwyiiyyf` (`primaryOwnerId`),
  ADD KEY `idx_nitpwobbvnchuessnltvgytaonvswvhqvbap` (`fieldId`),
  ADD KEY `idx_xypafmnuuvjkaxjhekxycydqewqfvqltqkpw` (`typeId`);

--
-- Indexes for table `matrixblocks_owners`
--
ALTER TABLE `matrixblocks_owners`
  ADD PRIMARY KEY (`blockId`,`ownerId`),
  ADD KEY `fk_wcioaqjbouxccgomfnqdmifxbdgogdggykys` (`ownerId`);

--
-- Indexes for table `matrixblocktypes`
--
ALTER TABLE `matrixblocktypes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_drhsfzpelhmzkfvmzqvbqhsywlsbyxklwvbw` (`name`,`fieldId`),
  ADD KEY `idx_kkkckfmudfvljznaxuydhyknvxrpycjqpyhc` (`handle`,`fieldId`),
  ADD KEY `idx_tlykmsxpjqmdneqxzhyjsfeeqrrrctaudzmw` (`fieldId`),
  ADD KEY `idx_dzbrfknmategdhghspwidizkkcjgmuibepwq` (`fieldLayoutId`);

--
-- Indexes for table `matrixcontent_button`
--
ALTER TABLE `matrixcontent_button`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_yehvvxifsbmaelpnqgupkygjixxkairbpgut` (`elementId`,`siteId`),
  ADD KEY `fk_iyybopqcsgxkbavibvzybmcqvfkjlozzmiip` (`siteId`);

--
-- Indexes for table `matrixcontent_contentpost`
--
ALTER TABLE `matrixcontent_contentpost`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_zgabswjgwmnmlyjuawnhytrssephbumdtvsu` (`elementId`,`siteId`),
  ADD KEY `fk_nootggqppzdsvanoxkhttebqzirkirdyafek` (`siteId`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_rihqhugumwsvqdarqnhbmgcsgfzibldjyqvt` (`track`,`name`);

--
-- Indexes for table `plugins`
--
ALTER TABLE `plugins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_ogvulyyqnhavrbonnwhmihizyecfntibocil` (`handle`);

--
-- Indexes for table `projectconfig`
--
ALTER TABLE `projectconfig`
  ADD PRIMARY KEY (`path`);

--
-- Indexes for table `queue`
--
ALTER TABLE `queue`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_anmhkxfokenushlrxeuhyzvawvcgblliofqo` (`channel`,`fail`,`timeUpdated`,`timePushed`),
  ADD KEY `idx_zkfftymtndwemprblvqcupyusnxzpxbbczrm` (`channel`,`fail`,`timeUpdated`,`delay`);

--
-- Indexes for table `relations`
--
ALTER TABLE `relations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_rcrjiqxuuwywgxeqgvngmjbrkhbkrgusyrpa` (`fieldId`,`sourceId`,`sourceSiteId`,`targetId`),
  ADD KEY `idx_geetnoakudzhbmlfvgpxripvsscyrsrlpsti` (`sourceId`),
  ADD KEY `idx_xircfgoqdhgowobwnzxzclvfsuvnvshtgrjp` (`targetId`),
  ADD KEY `idx_wvekqjlsrrohfiqbdsblvipohxqqqulllbkf` (`sourceSiteId`);

--
-- Indexes for table `resourcepaths`
--
ALTER TABLE `resourcepaths`
  ADD PRIMARY KEY (`hash`);

--
-- Indexes for table `revisions`
--
ALTER TABLE `revisions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_hbuzqrtocpsvbqslzyblsgxyhiqlpoxduqey` (`canonicalId`,`num`),
  ADD KEY `fk_sokttrgrwcbsruyxqwmqqldnnqvbxhxuveur` (`creatorId`);

--
-- Indexes for table `searchindex`
--
ALTER TABLE `searchindex`
  ADD PRIMARY KEY (`elementId`,`attribute`,`fieldId`,`siteId`);
ALTER TABLE `searchindex` ADD FULLTEXT KEY `idx_tiqeqaafzomcigxgjtbbkkersdlqjorrrxsx` (`keywords`);

--
-- Indexes for table `sections`
--
ALTER TABLE `sections`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_ipyfshasxmgqwmukcpyzcdbgbikjrremlass` (`handle`),
  ADD KEY `idx_xwtzidyvwidpagqsrljoqcdwmcvaqcxmmcsh` (`name`),
  ADD KEY `idx_goczejewjqvimgwbbvdrwfjbipithjinivsg` (`structureId`),
  ADD KEY `idx_rkzdotnarhsbhkagbshsvpquouxptlkavvys` (`dateDeleted`);

--
-- Indexes for table `sections_sites`
--
ALTER TABLE `sections_sites`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_otohmxjjelgxksbjqheiwvdlvxxlvgeudxpq` (`sectionId`,`siteId`),
  ADD KEY `idx_kvzgirdogmexjujfrvbeahkdmuuqlnwowdag` (`siteId`);

--
-- Indexes for table `sequences`
--
ALTER TABLE `sequences`
  ADD PRIMARY KEY (`name`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_eftzewcxoxhblgtmsdoflmlgdujacurjixzz` (`uid`),
  ADD KEY `idx_mdfwzbknyyblyqptbfmkerzcxselgiflhrpm` (`token`),
  ADD KEY `idx_gpjlgdyrynlwmirgwyyfjiismxpmgcwhibkv` (`dateUpdated`),
  ADD KEY `idx_plqkcuyftyxvwvngwmagbcycidcwxoeedomn` (`userId`);

--
-- Indexes for table `shunnedmessages`
--
ALTER TABLE `shunnedmessages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_aigjkhvvkqbbstdrqckmnbrmnsykfogfoqza` (`userId`,`message`);

--
-- Indexes for table `sitegroups`
--
ALTER TABLE `sitegroups`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_nafuqhegwvwootxxyylygccochdrtfsvrsdq` (`name`);

--
-- Indexes for table `sites`
--
ALTER TABLE `sites`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_oicotzytezwyvvehwendpfeqiudbdhconthe` (`dateDeleted`),
  ADD KEY `idx_qjszpegdnuvresnjpnxozbyepinhpppmixbg` (`handle`),
  ADD KEY `idx_jmqnhtljmhqoodotwkssddmhnyhqlfgmyxxv` (`sortOrder`),
  ADD KEY `fk_ycpinjvkrzgicunqthllhhfftnyypmjhmzpz` (`groupId`);

--
-- Indexes for table `stc_jobdetail`
--
ALTER TABLE `stc_jobdetail`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_urrigfbxiioyoqvfetkvoqlyewgoycshzngq` (`elementId`,`siteId`),
  ADD KEY `fk_fgkwxjxzxwcmlqblacubwluiftqznyceoqns` (`siteId`);

--
-- Indexes for table `stc_postbanner`
--
ALTER TABLE `stc_postbanner`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_rrcownjhwzjrgknonxjgqhrmuaoithzuubsu` (`elementId`,`siteId`),
  ADD KEY `fk_mdvhrvnkthvxnduhuyolkmmwoxshevwiqixd` (`siteId`);

--
-- Indexes for table `structureelements`
--
ALTER TABLE `structureelements`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_ujnlldinmcsxbhjmdmxdwipbssqdvconjrng` (`structureId`,`elementId`),
  ADD KEY `idx_nvgyyeyvbqurslxthfsmzkwojsbtnwzcgglw` (`root`),
  ADD KEY `idx_zfueinyolblfgpubzasgefekopdstjztwaln` (`lft`),
  ADD KEY `idx_stmhcxvkswlljuztmuxxuhneambjxmedxmcg` (`rgt`),
  ADD KEY `idx_vhpibscruidcytwfvvjjuazjlwybskjxjoeq` (`level`),
  ADD KEY `idx_viaqaznjxyvtxzrigwhvfqzzgnmrvdcskneo` (`elementId`);

--
-- Indexes for table `structures`
--
ALTER TABLE `structures`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_ckgnivootkspmvmelkgrlizbrgckiwxgbpwf` (`dateDeleted`);

--
-- Indexes for table `supertableblocks`
--
ALTER TABLE `supertableblocks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_igqsriowzxkxbhkvxamvdehnrkpxtmckgugg` (`primaryOwnerId`),
  ADD KEY `idx_hbozrqqwkbtedxwkfnpuubsojethijuanbug` (`fieldId`),
  ADD KEY `idx_dpirrqfwlvimxtfygfykljqvlcoavhyymdml` (`typeId`);

--
-- Indexes for table `supertableblocks_owners`
--
ALTER TABLE `supertableblocks_owners`
  ADD PRIMARY KEY (`blockId`,`ownerId`),
  ADD KEY `fk_bmpvouxguiwfxypeeysjwbkvztzfxvljpsqt` (`ownerId`);

--
-- Indexes for table `supertableblocktypes`
--
ALTER TABLE `supertableblocktypes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_rxqwcpvcvahrwxwbmexppevkopsizdnbketw` (`fieldId`),
  ADD KEY `idx_pxejjljoayfcvgscxhudwfucgjlabeafdrsh` (`fieldLayoutId`);

--
-- Indexes for table `systemmessages`
--
ALTER TABLE `systemmessages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_wdirafnfzrojkvlfipeucrddxbpovbggivjg` (`key`,`language`),
  ADD KEY `idx_rtxjhaasgtxufcfxtezfdiqmzvgutgrkcruo` (`language`);

--
-- Indexes for table `taggroups`
--
ALTER TABLE `taggroups`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_irkbdylngfumrnqyystvwemimquqqmgkhgbn` (`name`),
  ADD KEY `idx_jgqcbupqvkfdrhxsqzkhjghkxxngacjugvoa` (`handle`),
  ADD KEY `idx_offmohkuwbqbhkbdoqlnmftdtpwkliobbjep` (`dateDeleted`),
  ADD KEY `fk_spfutblvuwfhfmatimsxrjhttgknhhevggac` (`fieldLayoutId`);

--
-- Indexes for table `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_djxuuejosrhxxmkgctattfizoobzeynakijc` (`groupId`);

--
-- Indexes for table `tokens`
--
ALTER TABLE `tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_iwjawehyhalxsmhjeprbvhviulzeponoszjx` (`token`),
  ADD KEY `idx_ahsvlohafqjuxzrxesfbwiaxszggqacnqkit` (`expiryDate`);

--
-- Indexes for table `usergroups`
--
ALTER TABLE `usergroups`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_hmwieyflosdxfvxmqelwhnsytfmpkbnestwt` (`handle`),
  ADD KEY `idx_perfeadoiozgkshgzdbrqbmkmokyqvfhwekq` (`name`);

--
-- Indexes for table `usergroups_users`
--
ALTER TABLE `usergroups_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_enesflwduusppkhmzletcotqfiglvyrwbcdl` (`groupId`,`userId`),
  ADD KEY `idx_kxwetswngvoqfcusiarbdiwomboemcuuzfcq` (`userId`);

--
-- Indexes for table `userpermissions`
--
ALTER TABLE `userpermissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_gprliydyqtrlhekdldyzakmeudoesrvpwnkb` (`name`);

--
-- Indexes for table `userpermissions_usergroups`
--
ALTER TABLE `userpermissions_usergroups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_oxashcumalojexpvrkcizlchnbutpqqhthgb` (`permissionId`,`groupId`),
  ADD KEY `idx_uosmpbaiuphfxvjfmfyfvurqnhdovajppbec` (`groupId`);

--
-- Indexes for table `userpermissions_users`
--
ALTER TABLE `userpermissions_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_oeuyfrcqmlwbnbagupozfeuscsoyszsrlnfj` (`permissionId`,`userId`),
  ADD KEY `idx_bpbgyasyhrqngkumdivssydjchgtnsvrfmts` (`userId`);

--
-- Indexes for table `userpreferences`
--
ALTER TABLE `userpreferences`
  ADD PRIMARY KEY (`userId`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_upnyhvfekvzdbhsiuerchnzdsbwamrtcnwhd` (`active`),
  ADD KEY `idx_nybazlgtmzidmyzfnhpjtqzdugeuaaarspas` (`locked`),
  ADD KEY `idx_cehhhtzvyiwbtlbuelggxulbzlhqbktcbaxc` (`pending`),
  ADD KEY `idx_ireidtujzvlxllbskrxityrdmwdmseoznpeq` (`suspended`),
  ADD KEY `idx_sfmtyvkwrmcjbucsljsshatzctmrlmnogrmn` (`verificationCode`),
  ADD KEY `idx_xtcrxapetubmgzwjblzyescbhcmtzuuurign` (`email`),
  ADD KEY `idx_mgbmiwirchstfcxazswxanicfaqpencjgcfu` (`username`),
  ADD KEY `fk_stvlqtwdxeexymaqlguasgzlnsejusnboapg` (`photoId`);

--
-- Indexes for table `volumefolders`
--
ALTER TABLE `volumefolders`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_uqidauknmjceswqpzlwugzwmzsegepdyrsxs` (`name`,`parentId`,`volumeId`),
  ADD KEY `idx_grknhbqpjnqfqodokqsskojptyfxgzzhiyfx` (`parentId`),
  ADD KEY `idx_kaebygcyucgoivhfopmsctmalxxhnuyqcffp` (`volumeId`);

--
-- Indexes for table `volumes`
--
ALTER TABLE `volumes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_iicdnnzuepobwkmnhtfilqswdgklgkcmshnt` (`name`),
  ADD KEY `idx_crwvjjvvbqqvnfsfcppjzmwvlaffpfiarqzk` (`handle`),
  ADD KEY `idx_qgpcdrnfoyqvrlcstdqchnxdtvtwkuooibry` (`fieldLayoutId`),
  ADD KEY `idx_gbtqegkascucjjleudengflgxkfgqychirki` (`dateDeleted`);

--
-- Indexes for table `widgets`
--
ALTER TABLE `widgets`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_adrgkmxjyskplwwujydehgwskrujajijuwkr` (`userId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `announcements`
--
ALTER TABLE `announcements`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `assetindexdata`
--
ALTER TABLE `assetindexdata`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `assetindexingsessions`
--
ALTER TABLE `assetindexingsessions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `categorygroups`
--
ALTER TABLE `categorygroups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `categorygroups_sites`
--
ALTER TABLE `categorygroups_sites`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `content`
--
ALTER TABLE `content`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=248;

--
-- AUTO_INCREMENT for table `craftidtokens`
--
ALTER TABLE `craftidtokens`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `deprecationerrors`
--
ALTER TABLE `deprecationerrors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `drafts`
--
ALTER TABLE `drafts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=84;

--
-- AUTO_INCREMENT for table `elements`
--
ALTER TABLE `elements`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=572;

--
-- AUTO_INCREMENT for table `elements_sites`
--
ALTER TABLE `elements_sites`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=572;

--
-- AUTO_INCREMENT for table `entrytypes`
--
ALTER TABLE `entrytypes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `fieldgroups`
--
ALTER TABLE `fieldgroups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `fieldlayoutfields`
--
ALTER TABLE `fieldlayoutfields`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=140;

--
-- AUTO_INCREMENT for table `fieldlayouts`
--
ALTER TABLE `fieldlayouts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `fieldlayouttabs`
--
ALTER TABLE `fieldlayouttabs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=79;

--
-- AUTO_INCREMENT for table `fields`
--
ALTER TABLE `fields`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `globalsets`
--
ALTER TABLE `globalsets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `gqlschemas`
--
ALTER TABLE `gqlschemas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `gqltokens`
--
ALTER TABLE `gqltokens`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `imagetransformindex`
--
ALTER TABLE `imagetransformindex`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `imagetransforms`
--
ALTER TABLE `imagetransforms`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `info`
--
ALTER TABLE `info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `lenz_linkfield`
--
ALTER TABLE `lenz_linkfield`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=190;

--
-- AUTO_INCREMENT for table `matrixblocktypes`
--
ALTER TABLE `matrixblocktypes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `matrixcontent_button`
--
ALTER TABLE `matrixcontent_button`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `matrixcontent_contentpost`
--
ALTER TABLE `matrixcontent_contentpost`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=236;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `plugins`
--
ALTER TABLE `plugins`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `queue`
--
ALTER TABLE `queue`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1360;

--
-- AUTO_INCREMENT for table `relations`
--
ALTER TABLE `relations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=200;

--
-- AUTO_INCREMENT for table `revisions`
--
ALTER TABLE `revisions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=315;

--
-- AUTO_INCREMENT for table `sections`
--
ALTER TABLE `sections`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `sections_sites`
--
ALTER TABLE `sections_sites`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `sessions`
--
ALTER TABLE `sessions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `shunnedmessages`
--
ALTER TABLE `shunnedmessages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sitegroups`
--
ALTER TABLE `sitegroups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sites`
--
ALTER TABLE `sites`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `stc_jobdetail`
--
ALTER TABLE `stc_jobdetail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `stc_postbanner`
--
ALTER TABLE `stc_postbanner`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;

--
-- AUTO_INCREMENT for table `structureelements`
--
ALTER TABLE `structureelements`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `structures`
--
ALTER TABLE `structures`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `supertableblocktypes`
--
ALTER TABLE `supertableblocktypes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `systemmessages`
--
ALTER TABLE `systemmessages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `taggroups`
--
ALTER TABLE `taggroups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tokens`
--
ALTER TABLE `tokens`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `usergroups`
--
ALTER TABLE `usergroups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `usergroups_users`
--
ALTER TABLE `usergroups_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `userpermissions`
--
ALTER TABLE `userpermissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `userpermissions_usergroups`
--
ALTER TABLE `userpermissions_usergroups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `userpermissions_users`
--
ALTER TABLE `userpermissions_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `userpreferences`
--
ALTER TABLE `userpreferences`
  MODIFY `userId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `volumefolders`
--
ALTER TABLE `volumefolders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `volumes`
--
ALTER TABLE `volumes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `widgets`
--
ALTER TABLE `widgets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `addresses`
--
ALTER TABLE `addresses`
  ADD CONSTRAINT `fk_mpxmsvuudeudtyvcfpfdmdnqdzdjrckogyox` FOREIGN KEY (`ownerId`) REFERENCES `elements` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_xpmqrqjakahtmslffcomtgumynngbdhqbkli` FOREIGN KEY (`id`) REFERENCES `elements` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `announcements`
--
ALTER TABLE `announcements`
  ADD CONSTRAINT `fk_jfzokqakpywqcgsgpgjtgfukumemohiyzwmo` FOREIGN KEY (`pluginId`) REFERENCES `plugins` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_trqoaaybzxncdcazjpxbndudacnrhtoggfxj` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `assetindexdata`
--
ALTER TABLE `assetindexdata`
  ADD CONSTRAINT `fk_bcmumblaehizbcvvgbffgnhkgekpsdavvcfl` FOREIGN KEY (`sessionId`) REFERENCES `assetindexingsessions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_ixeervjakjrwzxlsqcabgoeqasawrmcffkpx` FOREIGN KEY (`volumeId`) REFERENCES `volumes` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `assets`
--
ALTER TABLE `assets`
  ADD CONSTRAINT `fk_dvlmosvpbszihpgioimjayrzumgwsljzhmvd` FOREIGN KEY (`volumeId`) REFERENCES `volumes` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_fefdshgxxqfrtlghdklnlbidgelykreenmku` FOREIGN KEY (`id`) REFERENCES `elements` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_msoisdavcaxbcqomlzomkpxvgiemldrynowu` FOREIGN KEY (`uploaderId`) REFERENCES `users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `fk_vxefablwjtyglntdkajnphhodyrgyggcknzb` FOREIGN KEY (`folderId`) REFERENCES `volumefolders` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `categories`
--
ALTER TABLE `categories`
  ADD CONSTRAINT `fk_kxlbndycvgbucdycvvjpbxhslxccyautvjbn` FOREIGN KEY (`id`) REFERENCES `elements` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_uirqmydoxzunftmtkwznozvkfbqmuhkjnpsz` FOREIGN KEY (`groupId`) REFERENCES `categorygroups` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_xtbwnvxodrsmhxqimxiwzshtisypljhbomrk` FOREIGN KEY (`parentId`) REFERENCES `categories` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `categorygroups`
--
ALTER TABLE `categorygroups`
  ADD CONSTRAINT `fk_nvzgowwokspgitaqmpiryxjaxeraeslyaxkz` FOREIGN KEY (`fieldLayoutId`) REFERENCES `fieldlayouts` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `fk_oonaamekbrjdttnrpoxiekynojfqtkvlpolh` FOREIGN KEY (`structureId`) REFERENCES `structures` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `categorygroups_sites`
--
ALTER TABLE `categorygroups_sites`
  ADD CONSTRAINT `fk_qufmodefspxsadhznbtkbcxodeyztqxywmuu` FOREIGN KEY (`groupId`) REFERENCES `categorygroups` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_wnusrlcrjjyvceqcufgpdzmhhhihmvdcxxpx` FOREIGN KEY (`siteId`) REFERENCES `sites` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `changedattributes`
--
ALTER TABLE `changedattributes`
  ADD CONSTRAINT `fk_fgbvdktzfclxhtlhwudssvbdzkjwrbqcnpns` FOREIGN KEY (`siteId`) REFERENCES `sites` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_grbnigvbvveqzcbohwbekcnbhafjlbodfxii` FOREIGN KEY (`elementId`) REFERENCES `elements` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_lffhsiurkgzvvpjtltgxthjvhqsxwdkzsqws` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `changedfields`
--
ALTER TABLE `changedfields`
  ADD CONSTRAINT `fk_fgiydrxlfviahldxgpojctbohymsztdydfpe` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_ofrvamssndoclrtijuftukyusrnpzswwyulg` FOREIGN KEY (`siteId`) REFERENCES `sites` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_sfgsiumxmqiyjkodkyplctlihdreyrcgjbsp` FOREIGN KEY (`elementId`) REFERENCES `elements` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_voxfukabcfdffpqwsqobobkdyvssofyofott` FOREIGN KEY (`fieldId`) REFERENCES `fields` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `content`
--
ALTER TABLE `content`
  ADD CONSTRAINT `fk_msxsrctulyapjykgrgveeofishgkdvhukrua` FOREIGN KEY (`elementId`) REFERENCES `elements` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_uzntnvgtekzsjmmheuwykbeecsemxrmdjlbl` FOREIGN KEY (`siteId`) REFERENCES `sites` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `craftidtokens`
--
ALTER TABLE `craftidtokens`
  ADD CONSTRAINT `fk_xqwlmmanygobsvdrpqqbqbxsgyhbchhvlpur` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `drafts`
--
ALTER TABLE `drafts`
  ADD CONSTRAINT `fk_rorlqxbzhxkidhgwuunghvhqzxfzvqguflry` FOREIGN KEY (`creatorId`) REFERENCES `users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `fk_uevsqagteujwmyuhrrpermxjgtshsdkvuuni` FOREIGN KEY (`canonicalId`) REFERENCES `elements` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `elements`
--
ALTER TABLE `elements`
  ADD CONSTRAINT `fk_cncpwwdlmjpybomyppewagefobzzqovdtoey` FOREIGN KEY (`fieldLayoutId`) REFERENCES `fieldlayouts` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `fk_pxrjhgzjoismlwgifijevtntfyqggnfscjjo` FOREIGN KEY (`draftId`) REFERENCES `drafts` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_qrxhldedsacwjveofubaqrbwfnewccmpjhhx` FOREIGN KEY (`canonicalId`) REFERENCES `elements` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `fk_rdmckdvzihdzpehhqccvovdyjnlvxvckucta` FOREIGN KEY (`revisionId`) REFERENCES `revisions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `elements_sites`
--
ALTER TABLE `elements_sites`
  ADD CONSTRAINT `fk_iycgsbkryfvfwcflpdkvqfcypcqzyjgpqbms` FOREIGN KEY (`elementId`) REFERENCES `elements` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_uuoxgxogrhxghxbznxyddjncdjfqtbmurcsc` FOREIGN KEY (`siteId`) REFERENCES `sites` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `entries`
--
ALTER TABLE `entries`
  ADD CONSTRAINT `fk_ehtlgpfcitnhdvgtgvfqmaseptnxgzsqddyo` FOREIGN KEY (`parentId`) REFERENCES `entries` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `fk_mfonewjfzcaqqexzlyrjerpgxbpwlnnzwyfr` FOREIGN KEY (`sectionId`) REFERENCES `sections` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_mnvyaifzdsrcbhxojxxvymrqndyoqlahiubf` FOREIGN KEY (`id`) REFERENCES `elements` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_suuawvkqrpwwtxkwxvjthxtiyddzradcemem` FOREIGN KEY (`authorId`) REFERENCES `users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `fk_tmcohfgmkfohoybxnsjqmazstuixuemikxxp` FOREIGN KEY (`typeId`) REFERENCES `entrytypes` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `entrytypes`
--
ALTER TABLE `entrytypes`
  ADD CONSTRAINT `fk_glbvznhegswzjcdqvdpojwirgnnttauskvpz` FOREIGN KEY (`sectionId`) REFERENCES `sections` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_rwoyxoemoqipdboawfhtndjndbvxrvepkrnf` FOREIGN KEY (`fieldLayoutId`) REFERENCES `fieldlayouts` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `fieldlayoutfields`
--
ALTER TABLE `fieldlayoutfields`
  ADD CONSTRAINT `fk_dhayqfaftbucsxcigttanzgaxfwwtiksmftw` FOREIGN KEY (`tabId`) REFERENCES `fieldlayouttabs` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_jmfbrsjknljphepyupyhmtubfvsqlnnowhhr` FOREIGN KEY (`fieldId`) REFERENCES `fields` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_mkwkvhwkertductaombfwecbysmovrdxozbh` FOREIGN KEY (`layoutId`) REFERENCES `fieldlayouts` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `fieldlayouttabs`
--
ALTER TABLE `fieldlayouttabs`
  ADD CONSTRAINT `fk_eattllfqnpeqgnstiqfxhjkhwhetzzgyxzks` FOREIGN KEY (`layoutId`) REFERENCES `fieldlayouts` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `fields`
--
ALTER TABLE `fields`
  ADD CONSTRAINT `fk_aupotojxynsqhmfvekhgnwqrmetvodajfvhc` FOREIGN KEY (`groupId`) REFERENCES `fieldgroups` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `globalsets`
--
ALTER TABLE `globalsets`
  ADD CONSTRAINT `fk_nbsvjfoheuatkumafapqmkixlxapeysauwfn` FOREIGN KEY (`fieldLayoutId`) REFERENCES `fieldlayouts` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `fk_tnfzysnzzbqqevqvooxkxftqzthwhtybgbwv` FOREIGN KEY (`id`) REFERENCES `elements` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `gqltokens`
--
ALTER TABLE `gqltokens`
  ADD CONSTRAINT `fk_ognslnysrqzfeiteukibruxzcjmtydzeptfr` FOREIGN KEY (`schemaId`) REFERENCES `gqlschemas` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `lenz_linkfield`
--
ALTER TABLE `lenz_linkfield`
  ADD CONSTRAINT `fk_abdnplywecyddctywhlidtanhwxkperucldx` FOREIGN KEY (`fieldId`) REFERENCES `fields` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_hfnvwhdjrqvuflysqahfxfbojylxvrdyfdjc` FOREIGN KEY (`linkedSiteId`) REFERENCES `sites` (`id`) ON DELETE SET NULL ON UPDATE SET NULL,
  ADD CONSTRAINT `fk_iymncpmikwvqustpwegtscxvjhksxtsjfjuw` FOREIGN KEY (`elementId`) REFERENCES `elements` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_kbyqgidgohokvxhmnrscxuicwdnvhmguwtsp` FOREIGN KEY (`linkedId`) REFERENCES `elements` (`id`) ON DELETE SET NULL ON UPDATE SET NULL,
  ADD CONSTRAINT `fk_vgikfjrdqaehuavdxbcftafhehdbhhahgzzi` FOREIGN KEY (`linkedId`) REFERENCES `elements` (`id`) ON DELETE SET NULL ON UPDATE SET NULL,
  ADD CONSTRAINT `fk_wpfchipctftsdyrnvxmhlgnqskzehkqpjagi` FOREIGN KEY (`linkedSiteId`) REFERENCES `sites` (`id`) ON DELETE SET NULL ON UPDATE SET NULL;

--
-- Constraints for table `matrixblocks`
--
ALTER TABLE `matrixblocks`
  ADD CONSTRAINT `fk_hlbfzwvmjeonjzsdplrdvvvgdycedpaqguml` FOREIGN KEY (`id`) REFERENCES `elements` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_jzvoheulakpcjbygjxtvfkyobpbyxjjpfipp` FOREIGN KEY (`primaryOwnerId`) REFERENCES `elements` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_upnxpfljcdzwyavzyecuzmokdhddsfbqtzua` FOREIGN KEY (`typeId`) REFERENCES `matrixblocktypes` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_ybafvtpwcfpvnsrnlaxubygjmmswvkqohqbc` FOREIGN KEY (`fieldId`) REFERENCES `fields` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `matrixblocks_owners`
--
ALTER TABLE `matrixblocks_owners`
  ADD CONSTRAINT `fk_fkuqgoinuhoamesxmslaoqgjasracggaarxu` FOREIGN KEY (`blockId`) REFERENCES `matrixblocks` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_wcioaqjbouxccgomfnqdmifxbdgogdggykys` FOREIGN KEY (`ownerId`) REFERENCES `elements` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `matrixblocktypes`
--
ALTER TABLE `matrixblocktypes`
  ADD CONSTRAINT `fk_skycdbryzswbxscxfdcyrwnvuggxjuqzejkh` FOREIGN KEY (`fieldId`) REFERENCES `fields` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_wyzoprgtfuiqtvjomwcjzwiwteugxfkldquh` FOREIGN KEY (`fieldLayoutId`) REFERENCES `fieldlayouts` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `matrixcontent_button`
--
ALTER TABLE `matrixcontent_button`
  ADD CONSTRAINT `fk_iyybopqcsgxkbavibvzybmcqvfkjlozzmiip` FOREIGN KEY (`siteId`) REFERENCES `sites` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_qifcdgxdkfemoesmvltwkrbubmczadtwmmgt` FOREIGN KEY (`elementId`) REFERENCES `elements` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `matrixcontent_contentpost`
--
ALTER TABLE `matrixcontent_contentpost`
  ADD CONSTRAINT `fk_lgyxbyqiatgxsaxtcxtlgrecvyelejadzwfq` FOREIGN KEY (`elementId`) REFERENCES `elements` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_nootggqppzdsvanoxkhttebqzirkirdyafek` FOREIGN KEY (`siteId`) REFERENCES `sites` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `relations`
--
ALTER TABLE `relations`
  ADD CONSTRAINT `fk_akorymleholcbytcnvdflctwuyxroepmyuxh` FOREIGN KEY (`sourceId`) REFERENCES `elements` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_chowmivtkmddmrhnxmzhfjprgmeyessmkiwx` FOREIGN KEY (`fieldId`) REFERENCES `fields` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_fbpoppttqescietaauqadjqgapgrmedvlygm` FOREIGN KEY (`targetId`) REFERENCES `elements` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_nmlsuuxztwotlayhspkvmcrslspszbnxfwuv` FOREIGN KEY (`sourceSiteId`) REFERENCES `sites` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `revisions`
--
ALTER TABLE `revisions`
  ADD CONSTRAINT `fk_nwscacjitpjtnjiwgstnymucsuhejzhpbqjs` FOREIGN KEY (`canonicalId`) REFERENCES `elements` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_sokttrgrwcbsruyxqwmqqldnnqvbxhxuveur` FOREIGN KEY (`creatorId`) REFERENCES `users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `sections`
--
ALTER TABLE `sections`
  ADD CONSTRAINT `fk_kyuqrrhdwmoozopqloxycfotkwfsiudpxgdx` FOREIGN KEY (`structureId`) REFERENCES `structures` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `sections_sites`
--
ALTER TABLE `sections_sites`
  ADD CONSTRAINT `fk_lwnknobayhtjksmbpdvmdovmlrvgeozqtxhq` FOREIGN KEY (`sectionId`) REFERENCES `sections` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_wihwgklvlpbimwhuswwmaqhomlsxytqnjnci` FOREIGN KEY (`siteId`) REFERENCES `sites` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `sessions`
--
ALTER TABLE `sessions`
  ADD CONSTRAINT `fk_lkauqkcrrpgxxmbrmjcijhkeyhipkegsgdif` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `shunnedmessages`
--
ALTER TABLE `shunnedmessages`
  ADD CONSTRAINT `fk_ntbeqmqatvxioimbqdjbpciyhdcajhpvkvlv` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `sites`
--
ALTER TABLE `sites`
  ADD CONSTRAINT `fk_ycpinjvkrzgicunqthllhhfftnyypmjhmzpz` FOREIGN KEY (`groupId`) REFERENCES `sitegroups` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `stc_jobdetail`
--
ALTER TABLE `stc_jobdetail`
  ADD CONSTRAINT `fk_fgkwxjxzxwcmlqblacubwluiftqznyceoqns` FOREIGN KEY (`siteId`) REFERENCES `sites` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_ydjtgwmveyehficdribiwkestrryehsadqie` FOREIGN KEY (`elementId`) REFERENCES `elements` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `stc_postbanner`
--
ALTER TABLE `stc_postbanner`
  ADD CONSTRAINT `fk_mdvhrvnkthvxnduhuyolkmmwoxshevwiqixd` FOREIGN KEY (`siteId`) REFERENCES `sites` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_rkqwvkgbsxrobychrnssgxpygezjgyyewhel` FOREIGN KEY (`elementId`) REFERENCES `elements` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `structureelements`
--
ALTER TABLE `structureelements`
  ADD CONSTRAINT `fk_enreigtdzrueizolikjvnavfbasichegslae` FOREIGN KEY (`elementId`) REFERENCES `elements` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_vymtofmsdewmxbcrhxemywezfwjptuipbqvk` FOREIGN KEY (`structureId`) REFERENCES `structures` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `supertableblocks`
--
ALTER TABLE `supertableblocks`
  ADD CONSTRAINT `fk_dcywvoirtgdchdcsdllcbkxegvrqxctrwrey` FOREIGN KEY (`id`) REFERENCES `elements` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_olhyptzjhndtinuzsapysujxtxurwejwakok` FOREIGN KEY (`fieldId`) REFERENCES `fields` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_oreggpugfpszhkvhfjrmdeqhswzujvhxynno` FOREIGN KEY (`primaryOwnerId`) REFERENCES `elements` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_plobvuufeitpvvlrqvwmjmwrtxxytzinvxki` FOREIGN KEY (`typeId`) REFERENCES `supertableblocktypes` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `supertableblocks_owners`
--
ALTER TABLE `supertableblocks_owners`
  ADD CONSTRAINT `fk_bmpvouxguiwfxypeeysjwbkvztzfxvljpsqt` FOREIGN KEY (`ownerId`) REFERENCES `elements` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_sykpmpgrcfolubbvlnorbgmvxtzfbebzrhfp` FOREIGN KEY (`blockId`) REFERENCES `supertableblocks` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `supertableblocktypes`
--
ALTER TABLE `supertableblocktypes`
  ADD CONSTRAINT `fk_exinsbohskracoquwikvuzqqtrskkepiplcc` FOREIGN KEY (`fieldLayoutId`) REFERENCES `fieldlayouts` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `fk_odklimrfqgymkwzvcdcjvqdobypqriyxzxfu` FOREIGN KEY (`fieldId`) REFERENCES `fields` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `taggroups`
--
ALTER TABLE `taggroups`
  ADD CONSTRAINT `fk_spfutblvuwfhfmatimsxrjhttgknhhevggac` FOREIGN KEY (`fieldLayoutId`) REFERENCES `fieldlayouts` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `tags`
--
ALTER TABLE `tags`
  ADD CONSTRAINT `fk_xmtmipbdoaeojoxttbehhvvdqtquvygsatth` FOREIGN KEY (`groupId`) REFERENCES `taggroups` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_yecynewsuvjhpuzwyyfrlwkmfzyvpgwwpifi` FOREIGN KEY (`id`) REFERENCES `elements` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `usergroups_users`
--
ALTER TABLE `usergroups_users`
  ADD CONSTRAINT `fk_gworuurzsmnsudbtpadmgqtbxzyjgjdzfvtw` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_hspcgmpktylvocojldpruvgtwfusaaizvpwp` FOREIGN KEY (`groupId`) REFERENCES `usergroups` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `userpermissions_usergroups`
--
ALTER TABLE `userpermissions_usergroups`
  ADD CONSTRAINT `fk_esolbhqfnedugtmztgsbynfmlfwflgltponw` FOREIGN KEY (`groupId`) REFERENCES `usergroups` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_hbmkfmaolxxigryrigshijtulqechpyzqnrf` FOREIGN KEY (`permissionId`) REFERENCES `userpermissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `userpermissions_users`
--
ALTER TABLE `userpermissions_users`
  ADD CONSTRAINT `fk_ieousrnycomnwiizlncaxsihazuqpscsdktx` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_rzyyyqdtzlxhhtatsbkefurmhgrltyjdztqx` FOREIGN KEY (`permissionId`) REFERENCES `userpermissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `userpreferences`
--
ALTER TABLE `userpreferences`
  ADD CONSTRAINT `fk_trryhypatsokdtgiwnrbqrrdipoiptearqhm` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `fk_gtiihxtxeridvyvobonbqkcwfazqyfvxlkac` FOREIGN KEY (`id`) REFERENCES `elements` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_stvlqtwdxeexymaqlguasgzlnsejusnboapg` FOREIGN KEY (`photoId`) REFERENCES `assets` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `volumefolders`
--
ALTER TABLE `volumefolders`
  ADD CONSTRAINT `fk_mnrufucnpywqoaaucwljtofabqlghvfoxajm` FOREIGN KEY (`parentId`) REFERENCES `volumefolders` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_vzkcrtnescpdooizqsturlzjcyezrvazzvie` FOREIGN KEY (`volumeId`) REFERENCES `volumes` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `volumes`
--
ALTER TABLE `volumes`
  ADD CONSTRAINT `fk_qelykiqqyhevqoqdjahumckrgdmwsvlppsbl` FOREIGN KEY (`fieldLayoutId`) REFERENCES `fieldlayouts` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `widgets`
--
ALTER TABLE `widgets`
  ADD CONSTRAINT `fk_icbbslslqaffzdxfyqwqflolxnzucqgvvttr` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
