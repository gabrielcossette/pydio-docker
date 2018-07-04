-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Host: db
-- Generation Time: Jul 02, 2018 at 04:23 PM
-- Server version: 10.3.7-MariaDB-1:10.3.7+maria~jessie
-- PHP Version: 7.2.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pydio`
--

use pydio;

-- --------------------------------------------------------

--
-- Table structure for table `ajxp_changes`
--

CREATE TABLE `ajxp_changes` (
  `seq` int(20) NOT NULL,
  `repository_identifier` text COLLATE utf8_unicode_ci NOT NULL,
  `node_id` bigint(20) NOT NULL,
  `type` enum('create','delete','path','content') COLLATE utf8_unicode_ci NOT NULL,
  `source` text COLLATE utf8_unicode_ci NOT NULL,
  `target` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `ajxp_changes`
--

INSERT INTO `ajxp_changes` (`seq`, `repository_identifier`, `node_id`, `type`, `source`, `target`) VALUES
(1, '0210216687493a15c6a9ca323a519049', 1, 'create', 'NULL', '/FDSFSF'),
(2, '0210216687493a15c6a9ca323a519049', 1, 'path', '/FDSFSF', '/recycle_bin/FDSFSF');

-- --------------------------------------------------------

--
-- Table structure for table `ajxp_feed`
--

CREATE TABLE `ajxp_feed` (
  `id` int(11) NOT NULL,
  `edate` int(11) NOT NULL,
  `etype` varchar(12) COLLATE utf8_unicode_ci NOT NULL,
  `htype` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `index_path` mediumtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `repository_id` varchar(33) COLLATE utf8_unicode_ci NOT NULL,
  `user_group` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `repository_scope` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `repository_owner` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `content` longblob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `ajxp_feed`
--

INSERT INTO `ajxp_feed` (`id`, `edate`, `etype`, `htype`, `index_path`, `user_id`, `repository_id`, `user_group`, `repository_scope`, `repository_owner`, `content`) VALUES
(1, 1530548417, 'event', 'node.change', 'pydio://useruser1@0210216687493a15c6a9ca323a519049/FDSFSF', 'useruser1', '0210216687493a15c6a9ca323a519049', '/', 'ALL', NULL, 0x613a333a7b693a303b4e3b693a313b4f3a33333a22507964696f5c4163636573735c436f72655c4d6f64656c5c414a58505f4e6f6465223a31313a7b733a373a22002a005f75726c223b733a36383a22707964696f3a2f2f6a666f766466697366656a6f6572736c6b64666e4030323130323136363837343933613135633661396361333233613531393034392f464453465346223b733a31323a22002a005f6d65746164617461223b613a31373a7b733a373a2269735f66696c65223b623a303b733a383a2266696c656e616d65223b733a373a222f464453465346223b733a31333a226d696d65737472696e675f6964223b693a383b733a343a2269636f6e223b733a31303a22666f6c6465722e706e67223b733a383a22666f6e7469636f6e223b733a363a22666f6c646572223b733a383a226f70656e69636f6e223b733a31353a22666f6c6465725f6f70656e2e706e67223b733a393a22616a78705f6d696d65223b733a31313a22616a78705f666f6c646572223b733a31303a2266696c655f67726f7570223b623a313b733a31303a2266696c655f6f776e6572223b623a313b733a31333a22616a78705f726561646f6e6c79223b733a353a2266616c7365223b733a31303a2266696c655f7065726d73223b733a343a2230373535223b733a31343a22616a78705f6d6f64696674696d65223b693a313533303534383431363b733a383a226279746573697a65223b693a303b733a31373a22616a78705f72656c617469766574696d65223b733a31343a22746f6461792061742031363a3230223b733a31363a22616a78705f6465736372697074696f6e223b733a32333a224d6f64696669656420746f6461792061742031363a3230223b733a31303a226d696d65737472696e67223b733a393a224469726563746f7279223b733a31383a226e6f64655f7265706f7369746f72795f6964223b733a33323a223032313032313636383734393361313563366139636133323361353139303439223b7d733a32303a22002a005f77726170706572436c6173734e616d65223b733a33353a22507964696f5c4163636573735c436f72655c4d65746153747265616d57726170706572223b733a31313a22002a0075726c5061727473223b613a343a7b733a363a22736368656d65223b733a353a22707964696f223b733a343a22686f7374223b733a33323a223032313032313636383734393361313563366139636133323361353139303439223b733a343a2275736572223b733a32303a226a666f766466697366656a6f6572736c6b64666e223b733a343a2270617468223b733a373a222f464453465346223b7d733a31383a22002a007265616c46696c65506f696e746572223b4e3b733a31373a22002a006e6f6465496e666f4c6f61646564223b623a313b733a31363a22002a006e6f6465496e666f4c6576656c223b623a303b733a34363a2200507964696f5c4163636573735c436f72655c4d6f64656c5c414a58505f4e6f6465005f66696c65486173686572223b4e3b733a34303a2200507964696f5c4163636573735c436f72655c4d6f64656c5c414a58505f4e6f6465005f75736572223b733a32303a226a666f766466697366656a6f6572736c6b64666e223b733a35333a2200507964696f5c4163636573735c436f72655c4d6f64656c5c414a58505f4e6f6465005f696e64657861626c654d6574614b657973223b613a303a7b7d733a35343a2200507964696f5c4163636573735c436f72655c4d6f64656c5c414a58505f4e6f6465005f6d6574616461746142756c6b557064617465223b623a303b7d693a323b623a303b7d),
(2, 1530548421, 'event', 'node.change', 'pydio://useruser1@0210216687493a15c6a9ca323a519049/recycle_bin/FDSFSF', 'useruser1', '0210216687493a15c6a9ca323a519049', '/', 'ALL', NULL, 0x613a333a7b693a303b4f3a33333a22507964696f5c4163636573735c436f72655c4d6f64656c5c414a58505f4e6f6465223a31313a7b733a373a22002a005f75726c223b733a36383a22707964696f3a2f2f6a666f766466697366656a6f6572736c6b64666e4030323130323136363837343933613135633661396361333233613531393034392f464453465346223b733a31323a22002a005f6d65746164617461223b613a313a7b733a373a2269735f66696c65223b623a303b7d733a32303a22002a005f77726170706572436c6173734e616d65223b733a33353a22507964696f5c4163636573735c436f72655c4d65746153747265616d57726170706572223b733a31313a22002a0075726c5061727473223b613a343a7b733a363a22736368656d65223b733a353a22707964696f223b733a343a22686f7374223b733a33323a223032313032313636383734393361313563366139636133323361353139303439223b733a343a2275736572223b733a32303a226a666f766466697366656a6f6572736c6b64666e223b733a343a2270617468223b733a373a222f464453465346223b7d733a31383a22002a007265616c46696c65506f696e746572223b4e3b733a31373a22002a006e6f6465496e666f4c6f61646564223b623a303b733a31363a22002a006e6f6465496e666f4c6576656c223b733a373a226d696e696d616c223b733a34363a2200507964696f5c4163636573735c436f72655c4d6f64656c5c414a58505f4e6f6465005f66696c65486173686572223b4e3b733a34303a2200507964696f5c4163636573735c436f72655c4d6f64656c5c414a58505f4e6f6465005f75736572223b733a32303a226a666f766466697366656a6f6572736c6b64666e223b733a35333a2200507964696f5c4163636573735c436f72655c4d6f64656c5c414a58505f4e6f6465005f696e64657861626c654d6574614b657973223b613a303a7b7d733a35343a2200507964696f5c4163636573735c436f72655c4d6f64656c5c414a58505f4e6f6465005f6d6574616461746142756c6b557064617465223b623a303b7d693a313b4f3a33333a22507964696f5c4163636573735c436f72655c4d6f64656c5c414a58505f4e6f6465223a31313a7b733a373a22002a005f75726c223b733a38303a22707964696f3a2f2f6a666f766466697366656a6f6572736c6b64666e4030323130323136363837343933613135633661396361333233613531393034392f72656379636c655f62696e2f464453465346223b733a31323a22002a005f6d65746164617461223b613a31353a7b733a373a2269735f66696c65223b623a303b733a383a2266696c656e616d65223b733a31393a222f72656379636c655f62696e2f464453465346223b733a31333a226d696d65737472696e675f6964223b693a383b733a343a2269636f6e223b733a31303a22666f6c6465722e706e67223b733a383a22666f6e7469636f6e223b733a363a22666f6c646572223b733a383a226f70656e69636f6e223b733a31353a22666f6c6465725f6f70656e2e706e67223b733a393a22616a78705f6d696d65223b733a31313a22616a78705f666f6c646572223b733a31303a2266696c655f67726f7570223b623a313b733a31303a2266696c655f6f776e6572223b623a313b733a31333a22616a78705f726561646f6e6c79223b733a353a2266616c7365223b733a31303a2266696c655f7065726d73223b733a343a2230373535223b733a31343a22616a78705f6d6f64696674696d65223b693a313533303534383431363b733a383a226279746573697a65223b693a303b733a31373a22616a78705f72656c617469766574696d65223b733a31343a22746f6461792061742031363a3230223b733a31363a22616a78705f6465736372697074696f6e223b733a32333a224d6f64696669656420746f6461792061742031363a3230223b7d733a32303a22002a005f77726170706572436c6173734e616d65223b733a33353a22507964696f5c4163636573735c436f72655c4d65746153747265616d57726170706572223b733a31313a22002a0075726c5061727473223b613a343a7b733a363a22736368656d65223b733a353a22707964696f223b733a343a22686f7374223b733a33323a223032313032313636383734393361313563366139636133323361353139303439223b733a343a2275736572223b733a32303a226a666f766466697366656a6f6572736c6b64666e223b733a343a2270617468223b733a31393a222f72656379636c655f62696e2f464453465346223b7d733a31383a22002a007265616c46696c65506f696e746572223b4e3b733a31373a22002a006e6f6465496e666f4c6f61646564223b623a313b733a31363a22002a006e6f6465496e666f4c6576656c223b623a303b733a34363a2200507964696f5c4163636573735c436f72655c4d6f64656c5c414a58505f4e6f6465005f66696c65486173686572223b4e3b733a34303a2200507964696f5c4163636573735c436f72655c4d6f64656c5c414a58505f4e6f6465005f75736572223b733a32303a226a666f766466697366656a6f6572736c6b64666e223b733a35333a2200507964696f5c4163636573735c436f72655c4d6f64656c5c414a58505f4e6f6465005f696e64657861626c654d6574614b657973223b613a303a7b7d733a35343a2200507964696f5c4163636573735c436f72655c4d6f64656c5c414a58505f4e6f6465005f6d6574616461746142756c6b557064617465223b623a303b7d693a323b623a303b7d);

-- --------------------------------------------------------

--
-- Table structure for table `ajxp_groups`
--

CREATE TABLE `ajxp_groups` (
  `groupPath` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `groupLabel` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ajxp_index`
--

CREATE TABLE `ajxp_index` (
  `node_id` int(20) NOT NULL,
  `node_path` text COLLATE utf8_unicode_ci NOT NULL,
  `bytesize` bigint(20) NOT NULL,
  `md5` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `mtime` int(11) NOT NULL,
  `repository_identifier` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `ajxp_index`
--

INSERT INTO `ajxp_index` (`node_id`, `node_path`, `bytesize`, `md5`, `mtime`, `repository_identifier`) VALUES
(1, '/recycle_bin/FDSFSF', 4096, 'directory', 1530548416, '0210216687493a15c6a9ca323a519049');

--
-- Triggers `ajxp_index`
--
DELIMITER $$
CREATE TRIGGER `LOG_DELETE` AFTER DELETE ON `ajxp_index` FOR EACH ROW INSERT INTO ajxp_changes (repository_identifier, node_id,source,target,type)
  VALUES (old.repository_identifier, old.node_id, old.node_path, 'NULL', 'delete')
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `LOG_INSERT` AFTER INSERT ON `ajxp_index` FOR EACH ROW INSERT INTO ajxp_changes (repository_identifier, node_id,source,target,type)
  VALUES (new.repository_identifier, new.node_id, 'NULL', new.node_path, 'create')
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `LOG_UPDATE` AFTER UPDATE ON `ajxp_index` FOR EACH ROW INSERT INTO ajxp_changes (repository_identifier, node_id,source,target,type)
  VALUES (new.repository_identifier, new.node_id, old.node_path, new.node_path, CASE old.node_path = new.node_path WHEN true THEN 'content' ELSE 'path' END)
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `ajxp_log`
--

CREATE TABLE `ajxp_log` (
  `id` int(11) NOT NULL,
  `logdate` datetime DEFAULT NULL,
  `remote_ip` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `severity` enum('DEBUG','INFO','NOTICE','WARNING','ERROR') COLLATE utf8_unicode_ci DEFAULT NULL,
  `user` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `source` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `message` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `params` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `repository_id` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `device` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dirname` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `basename` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `ajxp_log`
--

INSERT INTO `ajxp_log` (`id`, `logdate`, `remote_ip`, `severity`, `user`, `source`, `message`, `params`, `repository_id`, `device`, `dirname`, `basename`) VALUES
(22, '2018-02-11 02:24:54', '10.42.161.116', 'ERROR', 'shared', 'SecureTokenMiddleware.php', 'error l.70', 'message=You are not allowed to access this resource.', 'no-repository', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.97 Safari/537.36 Vivaldi/1.94.1008.40', '', ''),
(23, '2018-02-11 02:24:58', '10.42.161.116', 'INFO', 'useruser1', 'Pydio\\Core\\Services\\AuthService', 'Log In', 'context=WebUI', 'no-repository', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.97 Safari/537.36 Vivaldi/1.94.1008.40', '', ''),
(24, '2018-02-11 02:25:08', '10.42.161.116', 'INFO', 'useruser1', 'conf.sql', 'Switch Repository', 'rep. id=ajxp_conf', 'ajxp_conf', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.97 Safari/537.36 Vivaldi/1.94.1008.40', '', ''),
(25, '2018-02-11 02:25:54', '10.42.161.116', 'INFO', 'useruser1', 'Pydio\\Core\\Services\\RepositoryService', 'Create Repository', 'repo_name=WordPress 2', 'ajxp_conf', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.97 Safari/537.36 Vivaldi/1.94.1008.40', '', ''),
(26, '2018-02-11 02:26:35', '10.42.161.116', 'INFO', 'useruser1', 'Pydio\\Core\\Services\\RepositoryService', 'Edit Repository', 'repo_name=WordPress', 'ajxp_conf', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.97 Safari/537.36 Vivaldi/1.94.1008.40', '', ''),
(27, '2018-02-11 02:26:43', '10.42.161.116', 'INFO', 'useruser1', 'Pydio\\Core\\Services\\RepositoryService', 'Edit Repository', 'repo_name=WordPress 2', 'ajxp_conf', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.97 Safari/537.36 Vivaldi/1.94.1008.40', '', ''),
(28, '2018-02-11 02:27:31', '10.42.161.116', 'INFO', 'useruser1', 'Pydio\\Core\\Services\\RepositoryService', 'Delete Repository', 'repo_id=7bb333463dd9df31f4eba6103c78fddf', 'ajxp_conf', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.97 Safari/537.36 Vivaldi/1.94.1008.40', '', ''),
(29, '2018-02-11 02:27:38', '10.42.161.116', 'INFO', 'useruser1', 'Pydio\\Core\\Services\\AuthService', 'Log Out', '', 'ajxp_conf', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.97 Safari/537.36 Vivaldi/1.94.1008.40', '', ''),
(30, '2018-05-22 21:42:43', '10.42.50.8', 'ERROR', 'shared', 'SecureTokenMiddleware.php', 'error l.70', 'message=You are not allowed to access this resource.', 'no-repository', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.183 Safari/537.36 Vivaldi/1.96.1146.5', '', ''),
(31, '2018-05-22 21:42:51', '10.42.50.8', 'INFO', 'useruser1', 'Pydio\\Core\\Services\\AuthService', 'Log In', 'context=WebUI', 'no-repository', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.183 Safari/537.36 Vivaldi/1.96.1146.5', '', ''),
(32, '2018-05-22 21:43:00', '10.42.50.8', 'INFO', 'useruser1', 'conf.sql', 'Switch Repository', 'rep. id=ajxp_conf', 'ajxp_conf', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.183 Safari/537.36 Vivaldi/1.96.1146.5', '', ''),
(33, '2018-05-22 21:48:41', '10.42.50.8', 'INFO', 'useruser1', 'Pydio\\Core\\Services\\AuthService', 'Log Out', '', 'ajxp_conf', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.183 Safari/537.36 Vivaldi/1.96.1146.5', '', ''),
(34, '2018-05-22 21:48:56', '10.42.50.8', 'WARNING', 'shared', 'Pydio\\Core\\Services\\AuthService', 'Login failed', 'user=useruser1;error=Invalid password', 'no-repository', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.183 Safari/537.36 Vivaldi/1.96.1146.5', '', ''),
(35, '2018-05-22 21:49:01', '10.42.50.8', 'WARNING', 'shared', 'Pydio\\Core\\Services\\AuthService', 'Login failed', 'user=useruser1;error=Invalid password', 'no-repository', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.183 Safari/537.36 Vivaldi/1.96.1146.5', '', ''),
(36, '2018-05-22 21:49:18', '10.42.50.8', 'INFO', 'useruser1', 'Pydio\\Core\\Services\\AuthService', 'Log In', 'context=WebUI', 'no-repository', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.183 Safari/537.36 Vivaldi/1.96.1146.5', '', ''),
(37, '2018-05-22 21:49:23', '10.42.50.8', 'INFO', 'useruser1', 'Pydio\\Core\\Services\\AuthService', 'Log Out', '', 'ajxp_home', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.183 Safari/537.36 Vivaldi/1.96.1146.5', '', ''),
(38, '2018-05-22 21:49:38', '10.42.50.8', 'INFO', 'useruser1', 'Pydio\\Core\\Services\\AuthService', 'Log In', 'context=WebUI', 'no-repository', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.183 Safari/537.36 Vivaldi/1.96.1146.5', '', ''),
(39, '2018-05-22 21:49:49', '10.42.50.8', 'INFO', 'useruser1', 'conf.sql', 'Switch Repository', 'rep. id=ajxp_conf', 'ajxp_conf', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.183 Safari/537.36 Vivaldi/1.96.1146.5', '', ''),
(40, '2018-05-22 21:51:14', '10.42.50.8', 'INFO', 'useruser1', 'Pydio\\Core\\Services\\AuthService', 'Log Out', '', 'ajxp_conf', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.183 Safari/537.36 Vivaldi/1.96.1146.5', '', ''),
(41, '2018-05-22 21:51:25', '10.42.50.8', 'INFO', 'useruser1', 'Pydio\\Core\\Services\\AuthService', 'Log In', 'context=WebUI', 'no-repository', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.183 Safari/537.36 Vivaldi/1.96.1146.5', '', ''),
(42, '2018-05-22 21:52:08', '10.42.50.8', 'INFO', 'useruser1', 'conf.sql', 'Switch Repository', 'rep. id=ajxp_conf', 'ajxp_conf', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.183 Safari/537.36 Vivaldi/1.96.1146.5', '', ''),
(43, '2018-05-22 21:52:36', '10.42.50.8', 'INFO', 'useruser1', 'Pydio\\Core\\Services\\AuthService', 'Log Out', '', 'ajxp_conf', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.183 Safari/537.36 Vivaldi/1.96.1146.5', '', ''),
(44, '2018-05-22 21:52:47', '10.42.50.8', 'INFO', 'useruser1', 'Pydio\\Core\\Services\\AuthService', 'Log In', 'context=WebUI', 'no-repository', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.183 Safari/537.36 Vivaldi/1.96.1146.5', '', ''),
(45, '2018-05-22 21:53:07', '10.42.50.8', 'INFO', 'useruser1', 'Pydio\\Core\\Services\\AuthService', 'Log Out', '', 'ajxp_home', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.183 Safari/537.36 Vivaldi/1.96.1146.5', '', ''),
(46, '2018-05-22 21:53:43', '10.42.50.8', 'INFO', 'useruser1', 'Pydio\\Core\\Services\\AuthService', 'Log In', 'context=WebUI', 'no-repository', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.183 Safari/537.36 Vivaldi/1.96.1146.5', '', ''),
(47, '2018-05-22 21:53:50', '10.42.50.8', 'INFO', 'useruser1', 'Pydio\\Core\\Services\\AuthService', 'Log Out', '', 'ajxp_home', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.183 Safari/537.36 Vivaldi/1.96.1146.5', '', ''),
(48, '2018-05-24 01:53:29', '10.42.50.8', 'ERROR', 'shared', 'SecureTokenMiddleware.php', 'error l.70', 'message=You are not allowed to access this resource.', 'no-repository', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.183 Safari/537.36 Vivaldi/1.97.1183.3', '', ''),
(49, '2018-05-24 01:53:43', '10.42.50.8', 'INFO', 'useruser1', 'Pydio\\Core\\Services\\AuthService', 'Log In', 'context=WebUI', 'no-repository', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.183 Safari/537.36 Vivaldi/1.97.1183.3', '', ''),
(50, '2018-05-24 01:53:48', '10.42.50.8', 'INFO', 'useruser1', 'conf.sql', 'Switch Repository', 'rep. id=ajxp_conf', 'ajxp_conf', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.183 Safari/537.36 Vivaldi/1.97.1183.3', '', ''),
(51, '2018-05-24 01:55:35', '10.42.50.8', 'INFO', 'useruser1', 'conf.sql', 'Switch Repository', 'rep. id=ajxp_home', 'ajxp_home', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.183 Safari/537.36 Vivaldi/1.97.1183.3', '', ''),
(52, '2018-05-24 02:25:46', '10.42.50.8', 'INFO', 'useruser1', 'Pydio\\Core\\Services\\AuthService', 'Log Out', '', 'ajxp_home', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.183 Safari/537.36 Vivaldi/1.97.1183.3', '', ''),
(53, '2018-05-25 01:17:17', '10.42.185.7', 'ERROR', 'shared', 'SecureTokenMiddleware.php', 'error l.70', 'message=You are not allowed to access this resource.', 'no-repository', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.183 Safari/537.36 Vivaldi/1.96.1146.5', '', ''),
(54, '2018-05-25 01:17:48', '10.42.185.7', 'INFO', 'useruser1', 'Pydio\\Core\\Services\\AuthService', 'Log In', 'context=WebUI', 'no-repository', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.183 Safari/537.36 Vivaldi/1.96.1146.5', '', ''),
(55, '2018-05-25 01:18:00', '10.42.185.7', 'INFO', 'useruser1', 'conf.sql', 'Switch Repository', 'rep. id=ajxp_conf', 'ajxp_conf', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.183 Safari/537.36 Vivaldi/1.96.1146.5', '', ''),
(56, '2018-05-25 01:18:24', '10.42.185.7', 'INFO', 'useruser2', 'Pydio\\Core\\Services\\UsersService', 'Create User', 'user_id=useruser2', 'no-repository', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.183 Safari/537.36 Vivaldi/1.96.1146.5', '', ''),
(57, '2018-05-25 01:20:51', '10.42.185.7', 'INFO', 'useruser3', 'Pydio\\Core\\Services\\UsersService', 'Create User', 'user_id=useruser3', 'no-repository', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.183 Safari/537.36 Vivaldi/1.96.1146.5', '', ''),
(58, '2018-05-25 01:22:18', '10.42.185.7', 'INFO', 'useruser1', 'Pydio\\Core\\Services\\AuthService', 'Log Out', '', 'ajxp_conf', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.183 Safari/537.36 Vivaldi/1.96.1146.5', '', ''),
(59, '2018-07-01 23:40:18', '10.42.207.183', 'ERROR', 'shared', 'SecureTokenMiddleware.php', 'error l.70', 'message=You are not allowed to access this resource.', 'no-repository', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.183 Safari/537.36 Vivaldi/1.97.1211.3', '', ''),
(60, '2018-07-01 23:40:25', '10.42.207.183', 'INFO', 'useruser1', 'Pydio\\Core\\Services\\AuthService', 'Log In', 'context=WebUI', 'no-repository', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.183 Safari/537.36 Vivaldi/1.97.1211.3', '', ''),
(61, '2018-07-01 23:40:32', '10.42.207.183', 'INFO', 'useruser1', 'Pydio\\Core\\Services\\AuthService', 'Log Out', '', 'ajxp_home', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.183 Safari/537.36 Vivaldi/1.97.1211.3', '', ''),
(62, '2018-07-01 23:40:44', '10.42.207.183', 'INFO', 'useruser1', 'Pydio\\Core\\Services\\AuthService', 'Log In', 'context=WebUI', 'no-repository', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.183 Safari/537.36 Vivaldi/1.97.1211.3', '', ''),
(63, '2018-07-01 23:41:24', '10.42.207.183', 'ERROR', 'shared', 'SqlConfDriver.php', 'error l.112', 'message=There was an error trying to connect to your database! Did you change any configuration for the core connection? Or maybe your database is down?', 'no-repository', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.183 Safari/537.36 Vivaldi/1.97.1211.3', '', ''),
(64, '2018-07-01 23:41:24', '10.42.207.183', 'INFO', 'useruser1', 'conf.sql', 'Switch Repository', 'rep. id=ajxp_conf', 'ajxp_conf', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.183 Safari/537.36 Vivaldi/1.97.1211.3', '', ''),
(65, '2018-07-01 23:41:43', '10.42.207.183', 'INFO', 'useruser1', 'Pydio\\Core\\Services\\AuthService', 'Log Out', '', 'ajxp_conf', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.183 Safari/537.36 Vivaldi/1.97.1211.3', '', ''),
(66, '2018-07-01 23:41:51', '10.42.207.183', 'INFO', 'useruser1', 'Pydio\\Core\\Services\\AuthService', 'Log In', 'context=WebUI', 'no-repository', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.183 Safari/537.36 Vivaldi/1.97.1211.3', '', ''),
(67, '2018-07-01 23:41:59', '10.42.207.183', 'INFO', 'useruser1', 'conf.sql', 'Switch Repository', 'rep. id=ajxp_conf', 'ajxp_conf', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.183 Safari/537.36 Vivaldi/1.97.1211.3', '', ''),
(68, '2018-07-02 00:13:56', '10.42.207.183', 'INFO', 'useruser1', 'Pydio\\Core\\Services\\AuthService', 'Log Out', '', 'ajxp_conf', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.183 Safari/537.36 Vivaldi/1.97.1211.3', '', ''),
(69, '2018-07-02 00:14:26', '10.42.207.183', 'INFO', 'useruser2', 'Pydio\\Core\\Services\\AuthService', 'Log In', 'context=WebUI', 'no-repository', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.183 Safari/537.36 Vivaldi/1.97.1211.3', '', ''),
(70, '2018-07-02 00:14:34', '10.42.207.183', 'INFO', 'useruser2', 'conf.sql', 'Switch Repository', 'rep. id=ajxp_conf', 'ajxp_conf', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.183 Safari/537.36 Vivaldi/1.97.1211.3', '', ''),
(71, '2018-07-02 00:14:53', '10.42.207.183', 'INFO', 'useruser2', 'Pydio\\Core\\Services\\AuthService', 'Log Out', '', 'ajxp_conf', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.183 Safari/537.36 Vivaldi/1.97.1211.3', '', ''),
(72, '2018-07-02 00:15:02', '10.42.207.183', 'INFO', 'useruser2', 'Pydio\\Core\\Services\\AuthService', 'Log In', 'context=WebUI', 'no-repository', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.183 Safari/537.36 Vivaldi/1.97.1211.3', '', ''),
(73, '2018-07-02 00:15:37', '10.42.207.183', 'ERROR', 'useruser2', 'OtpAuthFrontend.php', 'error l.218', 'message=Cannot validate code, did you properly set up your Google Authenticator application?', 'no-repository', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.183 Safari/537.36 Vivaldi/1.97.1211.3', '', ''),
(74, '2018-07-02 00:16:15', '10.42.207.183', 'INFO', 'useruser2', 'conf.sql', 'Switch Repository', 'rep. id=ajxp_conf', 'ajxp_conf', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.183 Safari/537.36 Vivaldi/1.97.1211.3', '', ''),
(75, '2018-07-02 00:16:40', '10.42.207.183', 'INFO', 'useruser2', 'Pydio\\Core\\Services\\AuthService', 'Log Out', '', 'ajxp_conf', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.183 Safari/537.36 Vivaldi/1.97.1211.3', '', ''),
(76, '2018-07-02 00:17:04', '10.42.207.183', 'INFO', 'useruser2', 'Pydio\\Core\\Services\\AuthService', 'Log In', 'context=WebUI', 'no-repository', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.183 Safari/537.36 Vivaldi/1.97.1211.3', '', ''),
(77, '2018-07-02 00:17:10', '10.42.207.183', 'INFO', 'useruser2', 'Pydio\\Core\\Services\\AuthService', 'Log Out', '', 'ajxp_home', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.183 Safari/537.36 Vivaldi/1.97.1211.3', '', ''),
(78, '2018-07-02 00:17:29', '10.42.207.183', 'INFO', 'useruser2', 'Pydio\\Core\\Services\\AuthService', 'Log In', 'context=WebUI', 'no-repository', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.183 Safari/537.36 Vivaldi/1.97.1211.3', '', ''),
(79, '2018-07-02 00:17:34', '10.42.207.183', 'INFO', 'useruser2', 'Pydio\\Core\\Services\\AuthService', 'Log Out', '', 'ajxp_home', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.183 Safari/537.36 Vivaldi/1.97.1211.3', '', ''),
(80, '2018-07-02 00:19:00', '10.42.207.183', 'INFO', 'useruser2', 'Pydio\\Core\\Services\\AuthService', 'Log In', 'context=WebUI', 'no-repository', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.183 Safari/537.36 Vivaldi/1.97.1211.3', '', ''),
(81, '2018-07-02 00:21:19', '10.42.207.183', 'INFO', 'useruser2', 'Pydio\\Core\\Services\\AuthService', 'Log Out', '', 'ajxp_home', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.183 Safari/537.36 Vivaldi/1.97.1211.3', '', ''),
(82, '2018-07-02 00:22:10', '10.42.207.183', 'INFO', 'useruser2', 'Pydio\\Core\\Services\\AuthService', 'Log In', 'context=WebUI', 'no-repository', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.183 Safari/537.36 Vivaldi/1.97.1211.3', '', ''),
(83, '2018-07-02 00:22:15', '10.42.207.183', 'INFO', 'useruser2', 'conf.sql', 'Switch Repository', 'rep. id=ajxp_conf', 'ajxp_conf', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.183 Safari/537.36 Vivaldi/1.97.1211.3', '', ''),
(84, '2018-07-02 00:22:59', '10.42.207.183', 'INFO', 'useruser2', 'Pydio\\Core\\Services\\AuthService', 'Log Out', '', 'ajxp_conf', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.183 Safari/537.36 Vivaldi/1.97.1211.3', '', ''),
(85, '2018-07-02 00:23:54', '10.42.207.183', 'INFO', 'useruser2', 'Pydio\\Core\\Services\\AuthService', 'Log In', 'context=WebUI', 'no-repository', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.183 Safari/537.36 Vivaldi/1.97.1211.3', '', ''),
(86, '2018-07-02 00:24:00', '10.42.207.183', 'INFO', 'useruser2', 'conf.sql', 'Switch Repository', 'rep. id=ajxp_conf', 'ajxp_conf', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.183 Safari/537.36 Vivaldi/1.97.1211.3', '', ''),
(87, '2018-07-02 00:26:49', '10.42.207.183', 'INFO', 'useruser2', 'Pydio\\Core\\Services\\AuthService', 'Log Out', '', 'ajxp_conf', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.183 Safari/537.36 Vivaldi/1.97.1211.3', '', ''),
(88, '2018-07-02 00:26:58', '10.42.207.183', 'INFO', 'useruser3', 'Pydio\\Core\\Services\\AuthService', 'Log In', 'context=WebUI', 'no-repository', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.183 Safari/537.36 Vivaldi/1.97.1211.3', '', ''),
(89, '2018-07-02 00:34:25', '10.42.207.183', 'INFO', 'useruser3', 'Pydio\\Core\\Services\\AuthService', 'Log Out', '', 'ajxp_home', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.183 Safari/537.36 Vivaldi/1.97.1211.3', '', ''),
(90, '2018-07-02 00:34:36', '10.42.207.183', 'INFO', 'useruser2', 'Pydio\\Core\\Services\\AuthService', 'Log In', 'context=WebUI', 'no-repository', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.183 Safari/537.36 Vivaldi/1.97.1211.3', '', ''),
(91, '2018-07-02 16:12:46', '10.42.207.183', 'INFO', 'useruser2', 'Pydio\\Core\\Services\\AuthService', 'Log In', 'context=WebUI', 'no-repository', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.183 Safari/537.36 Vivaldi/1.97.1211.3', '', ''),
(92, '2018-07-02 16:12:52', '10.42.207.183', 'INFO', 'useruser2', 'conf.sql', 'Switch Repository', 'rep. id=ajxp_conf', 'ajxp_conf', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.183 Safari/537.36 Vivaldi/1.97.1211.3', '', ''),
(93, '2018-07-02 16:13:44', '10.42.207.183', 'INFO', 'useruser2', 'Pydio\\Core\\Services\\AuthService', 'Log Out', '', 'ajxp_conf', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.183 Safari/537.36 Vivaldi/1.97.1211.3', '', ''),
(94, '2018-07-02 16:13:53', '10.42.207.183', 'INFO', 'useruser1', 'Pydio\\Core\\Services\\AuthService', 'Log In', 'context=WebUI', 'no-repository', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.183 Safari/537.36 Vivaldi/1.97.1211.3', '', ''),
(95, '2018-07-02 16:14:03', '10.42.207.183', 'ERROR', 'useruser1', 'UsersService.php', 'error l.149', 'message=Cannot access to workspace with id/alias 0210216687493a15c6a9ca323a519049', 'ajxp_home', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.183 Safari/537.36 Vivaldi/1.97.1211.3', '', ''),
(96, '2018-07-02 16:14:03', '10.42.207.183', 'ERROR', 'useruser1', 'UsersService.php', 'error l.149', 'message=Cannot access to workspace with id/alias 0210216687493a15c6a9ca323a519049', 'ajxp_home', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.183 Safari/537.36 Vivaldi/1.97.1211.3', '', ''),
(97, '2018-07-02 16:14:10', '10.42.207.183', 'ERROR', 'useruser1', 'UsersService.php', 'error l.149', 'message=Cannot access to workspace with id/alias 0210216687493a15c6a9ca323a519049', 'ajxp_home', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.183 Safari/537.36 Vivaldi/1.97.1211.3', '', ''),
(98, '2018-07-02 16:14:17', '10.42.207.183', 'INFO', 'useruser1', 'conf.sql', 'Switch Repository', 'rep. id=ajxp_conf', 'ajxp_conf', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.183 Safari/537.36 Vivaldi/1.97.1211.3', '', ''),
(99, '2018-07-02 16:14:37', '10.42.207.183', 'INFO', 'useruser1', 'Pydio\\Core\\Services\\AuthService', 'Log Out', '', 'ajxp_conf', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.183 Safari/537.36 Vivaldi/1.97.1211.3', '', ''),
(100, '2018-07-02 16:14:46', '10.42.207.183', 'INFO', 'useruser1', 'Pydio\\Core\\Services\\AuthService', 'Log In', 'context=WebUI', 'no-repository', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.183 Safari/537.36 Vivaldi/1.97.1211.3', '', ''),
(101, '2018-07-02 16:15:12', '10.42.207.183', 'INFO', 'useruser1', 'conf.sql', 'Switch Repository', 'rep. id=1', '1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.183 Safari/537.36 Vivaldi/1.97.1211.3', '', ''),
(102, '2018-07-02 16:15:19', '10.42.207.183', 'INFO', 'useruser1', 'conf.sql', 'Switch Repository', 'rep. id=ajxp_conf', 'ajxp_conf', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.183 Safari/537.36 Vivaldi/1.97.1211.3', '', ''),
(103, '2018-07-02 16:15:37', '10.42.207.183', 'INFO', 'useruser1', 'conf.sql', 'Switch Repository', 'rep. id=ajxp_home', 'ajxp_home', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.183 Safari/537.36 Vivaldi/1.97.1211.3', '', ''),
(104, '2018-07-02 16:15:43', '10.42.207.183', 'INFO', 'useruser1', 'conf.sql', 'Switch Repository', 'rep. id=1', '1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.183 Safari/537.36 Vivaldi/1.97.1211.3', '', ''),
(105, '2018-07-02 16:15:47', '10.42.207.183', 'INFO', 'useruser1', 'conf.sql', 'Switch Repository', 'rep. id=ajxp_conf', 'ajxp_conf', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.183 Safari/537.36 Vivaldi/1.97.1211.3', '', ''),
(106, '2018-07-02 16:17:07', '10.42.207.183', 'INFO', 'useruser1', 'conf.sql', 'Switch Repository', 'rep. id=ajxp_home', 'ajxp_home', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.183 Safari/537.36 Vivaldi/1.97.1211.3', '', ''),
(107, '2018-07-02 16:17:13', '10.42.207.183', 'ERROR', 'useruser1', 'UsersService.php', 'error l.149', 'message=Cannot access to workspace with id/alias 0210216687493a15c6a9ca323a519049', 'ajxp_home', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.183 Safari/537.36 Vivaldi/1.97.1211.3', '', ''),
(108, '2018-07-02 16:17:13', '10.42.207.183', 'ERROR', 'useruser1', 'UsersService.php', 'error l.149', 'message=Cannot access to workspace with id/alias 0210216687493a15c6a9ca323a519049', 'ajxp_home', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.183 Safari/537.36 Vivaldi/1.97.1211.3', '', ''),
(109, '2018-07-02 16:17:20', '10.42.207.183', 'INFO', 'useruser1', 'conf.sql', 'Switch Repository', 'rep. id=ajxp_conf', 'ajxp_conf', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.183 Safari/537.36 Vivaldi/1.97.1211.3', '', ''),
(110, '2018-07-02 16:18:19', '10.42.207.183', 'INFO', 'useruser1', 'conf.sql', 'Switch Repository', 'rep. id=ajxp_home', 'ajxp_home', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.183 Safari/537.36 Vivaldi/1.97.1211.3', '', ''),
(111, '2018-07-02 16:19:41', '10.42.207.183', 'INFO', 'useruser1', 'Pydio\\Core\\Services\\AuthService', 'Log Out', '', 'ajxp_home', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.183 Safari/537.36 Vivaldi/1.97.1211.3', '', ''),
(112, '2018-07-02 16:20:00', '10.42.207.183', 'INFO', 'useruser1', 'Pydio\\Core\\Services\\AuthService', 'Log In', 'context=WebUI', 'no-repository', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.183 Safari/537.36 Vivaldi/1.97.1211.3', '', ''),
(113, '2018-07-02 16:20:07', '10.42.207.183', 'INFO', 'useruser1', 'conf.sql', 'Switch Repository', 'rep. id=0210216687493a15c6a9ca323a519049', '0210216687493a15c6a9ca323a519049', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.183 Safari/537.36 Vivaldi/1.97.1211.3', '', ''),
(114, '2018-07-02 16:20:16', '10.42.207.183', 'INFO', 'useruser1', 'access.fs', 'Create Dir', 'dir=wordpress//FDSFSF;files=wordpress//FDSFSF', '0210216687493a15c6a9ca323a519049', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.183 Safari/537.36 Vivaldi/1.97.1211.3', 'wordpress', 'FDSFSF'),
(115, '2018-07-02 16:20:21', '10.42.207.183', 'INFO', 'useruser1', 'access.fs', 'Move', 'files=wordpress/FDSFSF;destination=wordpress/recycle_bin', '0210216687493a15c6a9ca323a519049', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.183 Safari/537.36 Vivaldi/1.97.1211.3', 'wordpress', 'FDSFSF'),
(116, '2018-07-02 16:21:29', '10.42.207.183', 'INFO', 'useruser1', 'Pydio\\Core\\Services\\AuthService', 'Log Out', '', '0210216687493a15c6a9ca323a519049', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.183 Safari/537.36 Vivaldi/1.97.1211.3', '', ''),
(117, '2018-07-02 16:21:47', '10.42.207.183', 'INFO', 'useruser2', 'Pydio\\Core\\Services\\AuthService', 'Log In', 'context=WebUI', 'no-repository', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.183 Safari/537.36 Vivaldi/1.97.1211.3', '', ''),
(118, '2018-07-02 16:21:53', '10.42.207.183', 'INFO', 'useruser2', 'conf.sql', 'Switch Repository', 'rep. id=ajxp_conf', 'ajxp_conf', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.183 Safari/537.36 Vivaldi/1.97.1211.3', '', ''),
(119, '2018-07-02 16:22:34', '10.42.207.183', 'INFO', 'useruser2', 'Pydio\\Core\\Services\\AuthService', 'Log Out', '', 'ajxp_conf', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.183 Safari/537.36 Vivaldi/1.97.1211.3', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `ajxp_mail_queue`
--

CREATE TABLE `ajxp_mail_queue` (
  `id` int(11) NOT NULL,
  `recipient` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `url` text COLLATE utf8_unicode_ci NOT NULL,
  `date_event` int(11) NOT NULL,
  `notification_object` longblob NOT NULL,
  `html` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Triggers `ajxp_mail_queue`
--
DELIMITER $$
CREATE TRIGGER `mail_queue_go_to_sent` BEFORE DELETE ON `ajxp_mail_queue` FOR EACH ROW INSERT INTO ajxp_mail_sent (recipient,url,date_event,notification_object,html) VALUES (old.recipient,old.url,old.date_event,old.notification_object,old.html)
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `ajxp_mail_sent`
--

CREATE TABLE `ajxp_mail_sent` (
  `id` int(11) NOT NULL,
  `recipient` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `url` text COLLATE utf8_unicode_ci NOT NULL,
  `date_event` int(11) NOT NULL,
  `notification_object` longblob NOT NULL,
  `html` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ajxp_mq_queues`
--

CREATE TABLE `ajxp_mq_queues` (
  `channel_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `content` longblob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `ajxp_mq_queues`
--

INSERT INTO `ajxp_mq_queues` (`channel_name`, `content`) VALUES
('nodes:*', 0xc593df4ec23014875fc5f401b474dd189d9a200e1841fe4d8c5e91413bec801577360831bcbb2d9068a22217462f7bfa6bfbe53ba71123ec155899a15a3bf03bf721f2a27dc9220c894571d37f1cd7fbad9b6977aa1c77dc5bba3377f5f0e2d062b6699ab065c23643d576f0e0234fb2926d619bbab86c79bb8b87a13f1805b748af08662889d58ac71262912891c17cc6e3d4ec95f45e63d01df646bdea7d735761e80279db3d4a753a1c36828ed3b2daf0d4ecf84fe9b3530c60fce8ca65d192f5632836a59f518841912a2bac0a8e81278a6b32e071741446d3b80cddf961586df8e1e151c9b0d73575c8796d1e0120460f56272acd459a9b1ba8c3d06526e62ae22399429e15935caaf44c8d1331c9af5026960a64aeb2cd682e214717d7e6943e5480c802fe93bf0a430b01104dc5a066b84aa737f1d4dcf6e32b66543491f682cf3175a855c6f8ec209c10aad3daff1f6939dacbff14432b0453fb5d8c6d957662c81f89d12bed434f0ad703b3164a26310735d16a92b5f84a0ef97d39a7fedf5373dfca7628aed8ee07d9d44ce176fb06);

-- --------------------------------------------------------

--
-- Table structure for table `ajxp_plugin_configs`
--

CREATE TABLE `ajxp_plugin_configs` (
  `id` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `configs` longblob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `ajxp_plugin_configs`
--

INSERT INTO `ajxp_plugin_configs` (`id`, `configs`) VALUES
('authfront.otp', 0x613a313a7b733a31393a22414a58505f504c5547494e5f454e41424c4544223b623a313b7d),
('core.ajaxplorer', 0x613a323a7b733a31373a224150504c49434154494f4e5f5449544c45223b733a353a22507964696f223b733a31363a2244454641554c545f4c414e4755414745223b733a323a22656e223b7d),
('core.log', 0x613a313a7b733a32323a22554e495155455f504c5547494e5f494e5354414e4345223b613a333a7b733a31333a22696e7374616e63655f6e616d65223b733a373a226c6f672e73716c223b733a31383a2267726f75705f7377697463685f76616c7565223b733a373a226c6f672e73716c223b733a31303a2253514c5f445249564552223b613a323a7b733a31313a22636f72655f647269766572223b733a343a22636f7265223b733a31383a2267726f75705f7377697463685f76616c7565223b733a343a22636f7265223b7d7d7d),
('core.mq', 0x613a313a7b733a31383a22554e495155455f4d535f494e5354414e4345223b613a333a7b733a31333a22696e7374616e63655f6e616d65223b733a363a226d712e73716c223b733a31383a2267726f75705f7377697463685f76616c7565223b733a363a226d712e73716c223b733a31303a2253514c5f445249564552223b613a323a7b733a31313a22636f72655f647269766572223b733a343a22636f7265223b733a31383a2267726f75705f7377697463685f76616c7565223b733a343a22636f7265223b7d7d7d),
('core.notifications', 0x613a323a7b733a32303a22554e495155455f464545445f494e5354414e4345223b613a333a7b733a31333a22696e7374616e63655f6e616d65223b733a383a22666565642e73716c223b733a31383a2267726f75705f7377697463685f76616c7565223b733a383a22666565642e73716c223b733a31303a2253514c5f445249564552223b613a323a7b733a31313a22636f72655f647269766572223b733a343a22636f7265223b733a31383a2267726f75705f7377697463685f76616c7565223b733a343a22636f7265223b7d7d733a31313a22555345525f4556454e5453223b623a313b7d),
('gui.ajax', 0x613a313a7b733a32323a22435553544f4d5f57454c434f4d455f4d455353414745223b733a31363a2257656c636f6d6520746f20507964696f223b7d);

-- --------------------------------------------------------

--
-- Table structure for table `ajxp_repo`
--

CREATE TABLE `ajxp_repo` (
  `uuid` varchar(33) COLLATE utf8_unicode_ci NOT NULL,
  `parent_uuid` varchar(33) COLLATE utf8_unicode_ci DEFAULT NULL,
  `owner_user_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `child_user_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `path` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `display` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `accessType` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `recycle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `bcreate` tinyint(1) DEFAULT NULL,
  `writeable` tinyint(1) DEFAULT NULL,
  `enabled` tinyint(1) DEFAULT NULL,
  `isTemplate` tinyint(1) DEFAULT NULL,
  `inferOptionsFromParent` tinyint(1) DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `groupPath` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `ajxp_repo`
--

INSERT INTO `ajxp_repo` (`uuid`, `parent_uuid`, `owner_user_id`, `child_user_id`, `path`, `display`, `accessType`, `recycle`, `bcreate`, `writeable`, `enabled`, `isTemplate`, `inferOptionsFromParent`, `slug`, `groupPath`) VALUES
('0210216687493a15c6a9ca323a519049', NULL, NULL, NULL, '/wp', 'WordPress', 'fs', '', 0, 1, NULL, 0, 0, 'wordpress', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ajxp_repo_options`
--

CREATE TABLE `ajxp_repo_options` (
  `oid` int(11) NOT NULL,
  `uuid` varchar(33) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `val` blob DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `ajxp_repo_options`
--

INSERT INTO `ajxp_repo_options` (`oid`, `uuid`, `name`, `val`) VALUES
(43, '0210216687493a15c6a9ca323a519049', 'CREATION_TIME', 0x2470687073657269616c24693a313531373336373536383b),
(44, '0210216687493a15c6a9ca323a519049', 'CREATE', 0x2470687073657269616c24623a303b),
(45, '0210216687493a15c6a9ca323a519049', 'CHMOD_VALUE', 0x30373535),
(46, '0210216687493a15c6a9ca323a519049', 'RECYCLE_BIN', 0x72656379636c655f62696e),
(47, '0210216687493a15c6a9ca323a519049', 'PAGINATION_THRESHOLD', 0x353030),
(48, '0210216687493a15c6a9ca323a519049', 'PAGINATION_NUMBER', 0x323030),
(49, '0210216687493a15c6a9ca323a519049', 'REMOTE_SORTING', 0x2470687073657269616c24623a313b),
(50, '0210216687493a15c6a9ca323a519049', 'REMOTE_SORTING_DEFAULT_COLUMN', 0x616a78705f6c6162656c),
(51, '0210216687493a15c6a9ca323a519049', 'REMOTE_SORTING_DEFAULT_DIRECTION', 0x617363),
(52, '0210216687493a15c6a9ca323a519049', 'UX_DISPLAY_DEFAULT_MODE', 0x6c697374),
(53, '0210216687493a15c6a9ca323a519049', 'UX_SORTING_DEFAULT_COLUMN', 0x6e61747572616c),
(54, '0210216687493a15c6a9ca323a519049', 'UX_SORTING_DEFAULT_DIRECTION', 0x617363),
(55, '0210216687493a15c6a9ca323a519049', 'PATH', 0x2f7770),
(56, '0210216687493a15c6a9ca323a519049', 'META_SOURCES', 0x2470687073657269616c24613a353a7b733a31363a226d65746173746f72652e73657269616c223b613a323a7b733a32323a224d455441444154415f46494c455f4c4f434154494f4e223b733a393a22696e666f6c64657273223b733a31333a224d455441444154415f46494c45223b733a31303a222e616a78705f6d657461223b7d733a31303a226d6574612e7761746368223b613a303a7b7d733a31333a226d6574612e73796e6361626c65223b613a333a7b733a31333a225245504f5f53594e4341424c45223b733a343a2274727565223b733a32333a224f4253455256455f53544f524147455f4348414e474553223b733a353a2266616c7365223b733a32313a224f4253455256455f53544f524147455f4556455259223b733a313a2235223b7d733a31353a226d6574612e66696c65686173686572223b613a303a7b7d733a31323a22696e6465782e6c7563656e65223b613a313a7b733a31333a22696e6465785f636f6e74656e74223b733a353a2266616c7365223b7d7d);

-- --------------------------------------------------------

--
-- Table structure for table `ajxp_roles`
--

CREATE TABLE `ajxp_roles` (
  `role_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `serial_role` text COLLATE utf8_unicode_ci NOT NULL,
  `last_updated` int(11) NOT NULL DEFAULT 0,
  `owner_user_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `ajxp_roles`
--

INSERT INTO `ajxp_roles` (`role_id`, `serial_role`, `last_updated`, `owner_user_id`) VALUES
('AJXP_GRP_/', 'O:9:\"AJXP_Role\":8:{s:12:\"\0*\0groupPath\";N;s:9:\"\0*\0roleId\";s:10:\"AJXP_GRP_/\";s:7:\"\0*\0acls\";a:4:{i:1;s:2:\"rw\";s:9:\"ajxp_user\";s:2:\"rw\";s:9:\"ajxp_home\";s:2:\"rw\";s:5:\"inbox\";s:2:\"rw\";}s:13:\"\0*\0parameters\";a:1:{s:19:\"AJXP_REPO_SCOPE_ALL\";a:4:{s:9:\"core.conf\";a:3:{s:17:\"ROLE_DISPLAY_NAME\";s:10:\"Root Group\";s:19:\"ROLE_FORCE_OVERRIDE\";s:5:\"false\";s:24:\"DEFAULT_START_REPOSITORY\";s:9:\"ajxp_home\";}s:17:\"action.disclaimer\";a:1:{s:19:\"DISCLAIMER_ACCEPTED\";s:2:\"no\";}s:13:\"meta.syncable\";a:1:{s:13:\"REPO_SYNCABLE\";s:4:\"true\";}s:11:\"core.mailer\";a:4:{s:23:\"NOTIFICATIONS_EMAIL_GET\";s:4:\"true\";s:29:\"NOTIFICATIONS_EMAIL_FREQUENCY\";s:1:\"M\";s:34:\"NOTIFICATIONS_EMAIL_FREQUENCY_USER\";s:1:\"5\";s:29:\"NOTIFICATIONS_EMAIL_SEND_HTML\";s:4:\"true\";}}}s:10:\"\0*\0actions\";a:0:{}s:14:\"\0*\0autoApplies\";a:0:{}s:8:\"\0*\0masks\";a:0:{}s:14:\"\0*\0lastUpdated\";i:0;}', 1477044205, NULL),
('AJXP_USR_/useruser3', 'O:25:\"Pydio\\Conf\\Core\\AJXP_Role\":9:{s:12:\"\0*\0groupPath\";N;s:9:\"\0*\0roleId\";s:36:\"AJXP_USR_/useruser3\";s:7:\"\0*\0acls\";a:2:{s:9:\"ajxp_conf\";s:2:\"rw\";s:32:\"0210216687493a15c6a9ca323a519049\";s:2:\"rw\";}s:13:\"\0*\0parameters\";a:1:{s:19:\"AJXP_REPO_SCOPE_ALL\";a:2:{s:13:\"authfront.otp\";a:3:{s:20:\"google_enabled_admin\";b:1;s:14:\"google_enabled\";b:1;s:6:\"google\";s:16:\"USER3SECRET\";}s:9:\"core.conf\";a:1:{s:16:\"USER_LOCK_ACTION\";s:16:\"AJXP_VALUE_CLEAR\";}}}s:10:\"\0*\0actions\";a:0:{}s:14:\"\0*\0autoApplies\";a:0:{}s:8:\"\0*\0masks\";a:0:{}s:14:\"\0*\0lastUpdated\";i:1530491237;s:10:\"\0*\0ownerId\";N;}', 1530548544, NULL),
('AJXP_USR_/useruser2', 'O:25:\"Pydio\\Conf\\Core\\AJXP_Role\":9:{s:12:\"\0*\0groupPath\";N;s:9:\"\0*\0roleId\";s:32:\"AJXP_USR_/useruser2\";s:7:\"\0*\0acls\";a:2:{s:9:\"ajxp_conf\";s:2:\"rw\";s:32:\"0210216687493a15c6a9ca323a519049\";s:2:\"rw\";}s:13:\"\0*\0parameters\";a:1:{s:19:\"AJXP_REPO_SCOPE_ALL\";a:2:{s:13:\"authfront.otp\";a:4:{s:14:\"google_enabled\";b:1;s:6:\"google\";s:16:\"USER2SECRET\";s:20:\"google_enabled_admin\";b:1;s:11:\"google_last\";i:51018283;}s:9:\"core.conf\";a:1:{s:16:\"USER_LOCK_ACTION\";s:16:\"AJXP_VALUE_CLEAR\";}}}s:10:\"\0*\0actions\";a:0:{}s:14:\"\0*\0autoApplies\";a:0:{}s:8:\"\0*\0masks\";a:0:{}s:14:\"\0*\0lastUpdated\";i:1530548507;s:10:\"\0*\0ownerId\";N;}', 1530548531, NULL),
('AJXP_USR_/useruser1', 'O:25:\"Pydio\\Conf\\Core\\AJXP_Role\":9:{s:12:\"\0*\0groupPath\";N;s:9:\"\0*\0roleId\";s:30:\"AJXP_USR_/useruser1\";s:7:\"\0*\0acls\";a:3:{i:1;s:2:\"rw\";s:9:\"ajxp_conf\";s:2:\"rw\";s:32:\"0210216687493a15c6a9ca323a519049\";s:2:\"rw\";}s:13:\"\0*\0parameters\";a:1:{s:19:\"AJXP_REPO_SCOPE_ALL\";a:2:{s:13:\"authfront.otp\";a:4:{s:14:\"google_enabled\";b:1;s:6:\"google\";s:16:\"USER1SECRET\";s:20:\"google_enabled_admin\";b:1;s:11:\"google_last\";i:51018279;}s:9:\"core.conf\";a:1:{s:16:\"USER_LOCK_ACTION\";s:16:\"AJXP_VALUE_CLEAR\";}}}s:10:\"\0*\0actions\";a:0:{}s:14:\"\0*\0autoApplies\";a:0:{}s:8:\"\0*\0masks\";a:0:{}s:14:\"\0*\0lastUpdated\";i:1530548224;s:10:\"\0*\0ownerId\";N;}', 1530548400, NULL),
('GUEST', 'O:9:\"AJXP_Role\":8:{s:12:\"\0*\0groupPath\";N;s:9:\"\0*\0roleId\";s:5:\"GUEST\";s:7:\"\0*\0acls\";a:0:{}s:13:\"\0*\0parameters\";a:1:{s:19:\"AJXP_REPO_SCOPE_ALL\";a:1:{s:9:\"core.conf\";a:1:{s:17:\"ROLE_DISPLAY_NAME\";s:15:\"Guest user role\";}}}s:10:\"\0*\0actions\";a:1:{s:19:\"AJXP_REPO_SCOPE_ALL\";a:3:{s:9:\"access.fs\";a:1:{s:5:\"purge\";s:8:\"disabled\";}s:10:\"meta.watch\";a:1:{s:12:\"toggle_watch\";s:8:\"disabled\";}s:12:\"index.lucene\";a:1:{s:5:\"index\";s:8:\"disabled\";}}}s:14:\"\0*\0autoApplies\";a:1:{i:0;s:5:\"guest\";}s:8:\"\0*\0masks\";a:0:{}s:14:\"\0*\0lastUpdated\";i:0;}', 1477044205, NULL),
('MINISITE', 'O:9:\"AJXP_Role\":8:{s:12:\"\0*\0groupPath\";N;s:9:\"\0*\0roleId\";s:8:\"MINISITE\";s:7:\"\0*\0acls\";a:0:{}s:13:\"\0*\0parameters\";a:1:{s:19:\"AJXP_REPO_SCOPE_ALL\";a:1:{s:9:\"core.conf\";a:1:{s:17:\"ROLE_DISPLAY_NAME\";s:14:\"Minisite Users\";}}}s:10:\"\0*\0actions\";a:1:{s:22:\"AJXP_REPO_SCOPE_SHARED\";a:9:{s:9:\"access.fs\";a:3:{s:9:\"ajxp_link\";b:0;s:5:\"chmod\";b:0;s:5:\"purge\";b:0;}s:10:\"meta.watch\";a:1:{s:12:\"toggle_watch\";b:0;}s:11:\"conf.serial\";a:1:{s:13:\"get_bookmarks\";b:0;}s:8:\"conf.sql\";a:1:{s:13:\"get_bookmarks\";b:0;}s:12:\"index.lucene\";a:1:{s:5:\"index\";b:0;}s:12:\"action.share\";a:6:{s:5:\"share\";b:0;s:17:\"share-edit-shared\";b:0;s:22:\"share-folder-workspace\";b:0;s:19:\"share-file-minisite\";b:0;s:24:\"share-selection-minisite\";b:0;s:28:\"share-folder-minisite-public\";b:0;}s:8:\"gui.ajax\";a:1:{s:8:\"bookmark\";b:0;}s:11:\"auth.serial\";a:1:{s:11:\"pass_change\";b:0;}s:8:\"auth.sql\";a:1:{s:11:\"pass_change\";b:0;}}}s:14:\"\0*\0autoApplies\";a:0:{}s:8:\"\0*\0masks\";a:0:{}s:14:\"\0*\0lastUpdated\";i:0;}', 1477044205, NULL),
('MINISITE_NODOWNLOAD', 'O:9:\"AJXP_Role\":8:{s:12:\"\0*\0groupPath\";N;s:9:\"\0*\0roleId\";s:19:\"MINISITE_NODOWNLOAD\";s:7:\"\0*\0acls\";a:0:{}s:13:\"\0*\0parameters\";a:1:{s:19:\"AJXP_REPO_SCOPE_ALL\";a:1:{s:9:\"core.conf\";a:1:{s:17:\"ROLE_DISPLAY_NAME\";s:28:\"Minisite Users - No Download\";}}}s:10:\"\0*\0actions\";a:1:{s:22:\"AJXP_REPO_SCOPE_SHARED\";a:1:{s:9:\"access.fs\";a:4:{s:8:\"download\";b:0;s:14:\"download_chunk\";b:0;s:16:\"prepare_chunk_dl\";b:0;s:12:\"download_all\";b:0;}}}s:14:\"\0*\0autoApplies\";a:0:{}s:8:\"\0*\0masks\";a:0:{}s:14:\"\0*\0lastUpdated\";i:0;}', 1477044205, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ajxp_simple_store`
--

CREATE TABLE `ajxp_simple_store` (
  `object_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `store_id` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `serialized_data` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `binary_data` longblob DEFAULT NULL,
  `related_object_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `insertion_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ajxp_tasks`
--

CREATE TABLE `ajxp_tasks` (
  `uid` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `type` int(11) NOT NULL,
  `parent_uid` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `flags` int(11) NOT NULL,
  `label` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ws_id` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `status` int(11) NOT NULL,
  `status_msg` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `progress` int(11) NOT NULL,
  `schedule` int(11) NOT NULL,
  `schedule_value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `action` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `parameters` mediumblob NOT NULL,
  `creation_date` int(11) NOT NULL DEFAULT 0,
  `status_update` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ajxp_tasks_nodes`
--

CREATE TABLE `ajxp_tasks_nodes` (
  `id` int(11) NOT NULL,
  `task_uid` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `node_base_url` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `node_path` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ajxp_users`
--

CREATE TABLE `ajxp_users` (
  `login` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `groupPath` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `ajxp_users`
--

INSERT INTO `ajxp_users` (`login`, `password`, `groupPath`) VALUES
('useruser3', 'sha256:1000:USER3PASSWORD', '/'),
('useruser2', 'sha256:1000:USER2PASSWORD', '/'),
('useruser1', 'sha256:1000:USER1PASSWORD', '/');

-- --------------------------------------------------------

--
-- Table structure for table `ajxp_user_bookmarks`
--

CREATE TABLE `ajxp_user_bookmarks` (
  `rid` int(11) NOT NULL,
  `login` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `repo_uuid` varchar(33) COLLATE utf8_unicode_ci NOT NULL,
  `path` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ajxp_user_prefs`
--

CREATE TABLE `ajxp_user_prefs` (
  `rid` int(11) NOT NULL,
  `login` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `val` blob DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `ajxp_user_prefs`
--

INSERT INTO `ajxp_user_prefs` (`rid`, `login`, `name`, `val`) VALUES
(1, 'useruser1', 'AJXP_WEBDAV_DATA', 0x2470687073657269616c24613a313a7b733a333a22484131223b733a33323a223133373263333363343132383865333632333135643234313538646135653133223b7d),
(2, 'useruser1', 'history', 0x2470687073657269616c24613a313a7b733a31353a226c6173745f7265706f7369746f7279223b733a33323a223032313032313636383734393361313563366139636133323361353139303439223b7d),
(3, 'useruser1', 'gui_preferences', 0x7b2257656c636f6d6550616e656c2e44617368626f6172644c61796f7574223a7b226c67223a5b7b2278223a302c2279223a31302c2277223a322c2268223a31302c226973526573697a61626c65223a66616c73652c2268616e646c65223a226834222c2269223a22717569636b5f75706c6f6164227d2c7b2278223a302c2279223a32302c2277223a322c2268223a31302c226973526573697a61626c65223a66616c73652c2268616e646c65223a226834222c2269223a22646f776e6c6f616473227d2c7b2278223a302c2279223a33302c2277223a322c2268223a31302c226973526573697a61626c65223a66616c73652c2268616e646c65223a226834222c2269223a2271725f636f6465227d2c7b2278223a302c2279223a35302c2277223a322c2268223a31322c226973526573697a61626c65223a66616c73652c2268616e646c65223a226834222c2269223a22766964656f73227d5d2c226d64223a5b7b2278223a302c2279223a31302c2277223a322c2268223a31302c226973526573697a61626c65223a66616c73652c2268616e646c65223a226834222c2269223a22717569636b5f75706c6f6164227d2c7b2278223a302c2279223a32302c2277223a322c2268223a31302c226973526573697a61626c65223a66616c73652c2268616e646c65223a226834222c2269223a22646f776e6c6f616473227d2c7b2278223a302c2279223a33302c2277223a322c2268223a31302c226973526573697a61626c65223a66616c73652c2268616e646c65223a226834222c2269223a2271725f636f6465227d2c7b2278223a302c2279223a35302c2277223a322c2268223a31322c226973526573697a61626c65223a66616c73652c2268616e646c65223a226834222c2269223a22766964656f73227d5d2c22736d223a5b7b2278223a302c2279223a31302c2277223a322c2268223a31302c226973526573697a61626c65223a66616c73652c2268616e646c65223a226834222c2269223a22717569636b5f75706c6f6164227d2c7b2278223a302c2279223a32302c2277223a322c2268223a31302c226973526573697a61626c65223a66616c73652c2268616e646c65223a226834222c2269223a22646f776e6c6f616473227d2c7b2278223a302c2279223a33302c2277223a322c2268223a31302c226973526573697a61626c65223a66616c73652c2268616e646c65223a226834222c2269223a2271725f636f6465227d2c7b2278223a302c2279223a35302c2277223a322c2268223a31322c226973526573697a61626c65223a66616c73652c2268616e646c65223a226834222c2269223a22766964656f73227d5d2c227873223a5b7b2278223a302c2279223a31302c2277223a322c2268223a31302c226973526573697a61626c65223a66616c73652c2268616e646c65223a226834222c2269223a22717569636b5f75706c6f6164227d2c7b2278223a302c2279223a32302c2277223a322c2268223a31302c226973526573697a61626c65223a66616c73652c2268616e646c65223a226834222c2269223a22646f776e6c6f616473227d2c7b2278223a302c2279223a33302c2277223a322c2268223a31302c226973526573697a61626c65223a66616c73652c2268616e646c65223a226834222c2269223a2271725f636f6465227d2c7b2278223a302c2279223a35302c2277223a322c2268223a31322c226973526573697a61626c65223a66616c73652c2268616e646c65223a226834222c2269223a22766964656f73227d5d2c22787873223a5b7b2277223a322c2268223a31302c2278223a302c2279223a31302c2269223a22717569636b5f75706c6f6164222c226d6f766564223a66616c73652c22737461746963223a66616c73652c226973526573697a61626c65223a66616c73657d2c7b2277223a322c2268223a31302c2278223a302c2279223a32302c2269223a22646f776e6c6f616473222c226d6f766564223a66616c73652c22737461746963223a66616c73652c226973526573697a61626c65223a66616c73657d2c7b2277223a322c2268223a31302c2278223a302c2279223a33302c2269223a2271725f636f6465222c226d6f766564223a66616c73652c22737461746963223a66616c73652c226973526573697a61626c65223a66616c73657d2c7b2277223a322c2268223a31322c2278223a302c2279223a35302c2269223a22766964656f73222c226d6f766564223a66616c73652c22737461746963223a66616c73652c226973526573697a61626c65223a66616c73657d5d7d2c22557365724163636f756e742e57656c636f6d654d6f64616c2e53686f776e223a747275652c2257656c636f6d65436f6d706f6e656e742e507964696f382e546f757247756964652e57656c636f6d65223a747275652c2257656c636f6d65436f6d706f6e656e742e507964696f382e546f757247756964652e465354656d706c617465223a747275657d),
(9, 'useruser1', 'repository_last_connected', 0x2470687073657269616c24613a353a7b733a393a22616a78705f636f6e66223b693a313533303534383234303b733a393a22616a78705f686f6d65223b693a313533303534383239393b733a33323a223032313032313636383734393361313563366139636133323361353139303439223b693a313533303534383430373b693a303b693a313531373336373539303b693a313b693a313533303534383134333b7d),
(17, 'useruser1', 'RECENT_LIST', 0x7b2231353330353438343038223a22707964696f3a5c2f5c2f6a666f766466697366656a6f6572736c6b64666e403032313032313636383734393361313563366139636133323361353139303439222c2231353330353438313434223a22707964696f3a5c2f5c2f6a666f766466697366656a6f6572736c6b64666e4031222c2231353137333637353933223a22707964696f3a5c2f5c2f61646d696e403032313032313636383734393361313563366139636133323361353139303439222c2231353137333637353931223a22707964696f3a5c2f5c2f61646d696e4030227d),
(70, 'useruser2', 'AJXP_WEBDAV_DATA', 0x2470687073657269616c24613a313a7b733a333a22484131223b733a33323a226166303537346434373663353861366263393464343134643636333933633564223b7d),
(71, 'useruser3', 'AJXP_WEBDAV_DATA', 0x2470687073657269616c24613a313a7b733a333a22484131223b733a33323a223261393539356634396331326534396335333938316465636333613865306662223b7d),
(84, 'useruser2', 'history', 0x2470687073657269616c24613a313a7b733a31353a226c6173745f7265706f7369746f7279223b733a393a22616a78705f636f6e66223b7d),
(85, 'useruser2', 'gui_preferences', 0x7b2257656c636f6d6550616e656c2e44617368626f6172644c61796f7574223a7b226c67223a5b7b2278223a302c2279223a31302c2277223a322c2268223a31302c226973526573697a61626c65223a66616c73652c2268616e646c65223a226834222c2269223a22717569636b5f75706c6f6164227d2c7b2278223a302c2279223a32302c2277223a322c2268223a31302c226973526573697a61626c65223a66616c73652c2268616e646c65223a226834222c2269223a22646f776e6c6f616473227d2c7b2278223a302c2279223a33302c2277223a322c2268223a31302c226973526573697a61626c65223a66616c73652c2268616e646c65223a226834222c2269223a2271725f636f6465227d2c7b2278223a302c2279223a35302c2277223a322c2268223a31322c226973526573697a61626c65223a66616c73652c2268616e646c65223a226834222c2269223a22766964656f73227d5d2c226d64223a5b7b2278223a302c2279223a31302c2277223a322c2268223a31302c226973526573697a61626c65223a66616c73652c2268616e646c65223a226834222c2269223a22717569636b5f75706c6f6164227d2c7b2278223a302c2279223a32302c2277223a322c2268223a31302c226973526573697a61626c65223a66616c73652c2268616e646c65223a226834222c2269223a22646f776e6c6f616473227d2c7b2278223a302c2279223a33302c2277223a322c2268223a31302c226973526573697a61626c65223a66616c73652c2268616e646c65223a226834222c2269223a2271725f636f6465227d2c7b2278223a302c2279223a35302c2277223a322c2268223a31322c226973526573697a61626c65223a66616c73652c2268616e646c65223a226834222c2269223a22766964656f73227d5d2c22736d223a5b7b2278223a302c2279223a31302c2277223a322c2268223a31302c226973526573697a61626c65223a66616c73652c2268616e646c65223a226834222c2269223a22717569636b5f75706c6f6164227d2c7b2278223a302c2279223a32302c2277223a322c2268223a31302c226973526573697a61626c65223a66616c73652c2268616e646c65223a226834222c2269223a22646f776e6c6f616473227d2c7b2278223a302c2279223a33302c2277223a322c2268223a31302c226973526573697a61626c65223a66616c73652c2268616e646c65223a226834222c2269223a2271725f636f6465227d2c7b2278223a302c2279223a35302c2277223a322c2268223a31322c226973526573697a61626c65223a66616c73652c2268616e646c65223a226834222c2269223a22766964656f73227d5d2c227873223a5b7b2278223a302c2279223a31302c2277223a322c2268223a31302c226973526573697a61626c65223a66616c73652c2268616e646c65223a226834222c2269223a22717569636b5f75706c6f6164227d2c7b2278223a302c2279223a32302c2277223a322c2268223a31302c226973526573697a61626c65223a66616c73652c2268616e646c65223a226834222c2269223a22646f776e6c6f616473227d2c7b2278223a302c2279223a33302c2277223a322c2268223a31302c226973526573697a61626c65223a66616c73652c2268616e646c65223a226834222c2269223a2271725f636f6465227d2c7b2278223a302c2279223a35302c2277223a322c2268223a31322c226973526573697a61626c65223a66616c73652c2268616e646c65223a226834222c2269223a22766964656f73227d5d2c22787873223a5b7b2277223a322c2268223a31302c2278223a302c2279223a31302c2269223a22717569636b5f75706c6f6164222c226d6f766564223a66616c73652c22737461746963223a66616c73652c226973526573697a61626c65223a66616c73657d2c7b2277223a322c2268223a31302c2278223a302c2279223a32302c2269223a22646f776e6c6f616473222c226d6f766564223a66616c73652c22737461746963223a66616c73652c226973526573697a61626c65223a66616c73657d2c7b2277223a322c2268223a31302c2278223a302c2279223a33302c2269223a2271725f636f6465222c226d6f766564223a66616c73652c22737461746963223a66616c73652c226973526573697a61626c65223a66616c73657d2c7b2277223a322c2268223a31322c2278223a302c2279223a35302c2269223a22766964656f73222c226d6f766564223a66616c73652c22737461746963223a66616c73652c226973526573697a61626c65223a66616c73657d5d7d2c22557365724163636f756e742e57656c636f6d654d6f64616c2e53686f776e223a747275652c2257656c636f6d65436f6d706f6e656e742e507964696f382e546f757247756964652e57656c636f6d65223a747275657d),
(89, 'useruser2', 'repository_last_connected', 0x2470687073657269616c24613a313a7b733a393a22616a78705f636f6e66223b693a313533303534383531333b7d),
(112, 'useruser3', 'history', 0x2470687073657269616c24613a313a7b733a31353a226c6173745f7265706f7369746f7279223b733a393a22616a78705f686f6d65223b7d),
(113, 'useruser3', 'gui_preferences', 0x7b2257656c636f6d6550616e656c2e44617368626f6172644c61796f7574223a7b226c67223a5b7b2278223a302c2279223a31302c2277223a322c2268223a31302c226973526573697a61626c65223a66616c73652c2268616e646c65223a226834222c2269223a22717569636b5f75706c6f6164227d2c7b2278223a302c2279223a32302c2277223a322c2268223a31302c226973526573697a61626c65223a66616c73652c2268616e646c65223a226834222c2269223a22646f776e6c6f616473227d2c7b2278223a302c2279223a33302c2277223a322c2268223a31302c226973526573697a61626c65223a66616c73652c2268616e646c65223a226834222c2269223a2271725f636f6465227d2c7b2278223a302c2279223a35302c2277223a322c2268223a31322c226973526573697a61626c65223a66616c73652c2268616e646c65223a226834222c2269223a22766964656f73227d5d2c226d64223a5b7b2278223a302c2279223a31302c2277223a322c2268223a31302c226973526573697a61626c65223a66616c73652c2268616e646c65223a226834222c2269223a22717569636b5f75706c6f6164227d2c7b2278223a302c2279223a32302c2277223a322c2268223a31302c226973526573697a61626c65223a66616c73652c2268616e646c65223a226834222c2269223a22646f776e6c6f616473227d2c7b2278223a302c2279223a33302c2277223a322c2268223a31302c226973526573697a61626c65223a66616c73652c2268616e646c65223a226834222c2269223a2271725f636f6465227d2c7b2278223a302c2279223a35302c2277223a322c2268223a31322c226973526573697a61626c65223a66616c73652c2268616e646c65223a226834222c2269223a22766964656f73227d5d2c22736d223a5b7b2278223a302c2279223a31302c2277223a322c2268223a31302c226973526573697a61626c65223a66616c73652c2268616e646c65223a226834222c2269223a22717569636b5f75706c6f6164227d2c7b2278223a302c2279223a32302c2277223a322c2268223a31302c226973526573697a61626c65223a66616c73652c2268616e646c65223a226834222c2269223a22646f776e6c6f616473227d2c7b2278223a302c2279223a33302c2277223a322c2268223a31302c226973526573697a61626c65223a66616c73652c2268616e646c65223a226834222c2269223a2271725f636f6465227d2c7b2278223a302c2279223a35302c2277223a322c2268223a31322c226973526573697a61626c65223a66616c73652c2268616e646c65223a226834222c2269223a22766964656f73227d5d2c227873223a5b7b2278223a302c2279223a31302c2277223a322c2268223a31302c226973526573697a61626c65223a66616c73652c2268616e646c65223a226834222c2269223a22717569636b5f75706c6f6164227d2c7b2278223a302c2279223a32302c2277223a322c2268223a31302c226973526573697a61626c65223a66616c73652c2268616e646c65223a226834222c2269223a22646f776e6c6f616473227d2c7b2278223a302c2279223a33302c2277223a322c2268223a31302c226973526573697a61626c65223a66616c73652c2268616e646c65223a226834222c2269223a2271725f636f6465227d2c7b2278223a302c2279223a35302c2277223a322c2268223a31322c226973526573697a61626c65223a66616c73652c2268616e646c65223a226834222c2269223a22766964656f73227d5d2c22787873223a5b7b2277223a322c2268223a31302c2278223a302c2279223a31302c2269223a22717569636b5f75706c6f6164222c226d6f766564223a66616c73652c22737461746963223a66616c73652c226973526573697a61626c65223a66616c73657d2c7b2277223a322c2268223a31302c2278223a302c2279223a32302c2269223a22646f776e6c6f616473222c226d6f766564223a66616c73652c22737461746963223a66616c73652c226973526573697a61626c65223a66616c73657d2c7b2277223a322c2268223a31302c2278223a302c2279223a33302c2269223a2271725f636f6465222c226d6f766564223a66616c73652c22737461746963223a66616c73652c226973526573697a61626c65223a66616c73657d2c7b2277223a322c2268223a31322c2278223a302c2279223a35302c2269223a22766964656f73222c226d6f766564223a66616c73652c22737461746963223a66616c73652c226973526573697a61626c65223a66616c73657d5d7d2c22557365724163636f756e742e57656c636f6d654d6f64616c2e53686f776e223a747275652c2257656c636f6d65436f6d706f6e656e742e507964696f382e546f757247756964652e57656c636f6d65223a747275657d);

-- --------------------------------------------------------

--
-- Table structure for table `ajxp_user_rights`
--

CREATE TABLE `ajxp_user_rights` (
  `rid` int(11) NOT NULL,
  `login` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `repo_uuid` varchar(33) COLLATE utf8_unicode_ci NOT NULL,
  `rights` mediumtext COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `ajxp_user_rights`
--

INSERT INTO `ajxp_user_rights` (`rid`, `login`, `repo_uuid`, `rights`) VALUES
(144, 'useruser1', 'ajxp.admin', '1'),
(145, 'useruser1', 'ajxp.roles', '$phpserial$a:1:{s:30:\"AJXP_USR_/useruser1\";b:1;}'),
(146, 'useruser1', 'ajxp.lock', '0'),
(147, 'useruser1', 'ajxp.roles.order', '$phpserial$a:1:{s:30:\"AJXP_USR_/useruser1\";i:1;}'),
(148, 'useruser2', 'ajxp.roles', '$phpserial$a:1:{s:32:\"AJXP_USR_/useruser2\";b:1;}'),
(149, 'useruser2', 'ajxp.admin', '1'),
(150, 'useruser2', 'ajxp.profile', 'admin'),
(151, 'useruser2', 'ajxp.roles.order', '$phpserial$a:1:{s:32:\"AJXP_USR_/useruser2\";i:1;}'),
(152, 'useruser2', 'ajxp.lock', '0'),
(153, 'useruser3', 'ajxp.roles', '$phpserial$a:1:{s:36:\"AJXP_USR_/useruser3\";b:1;}'),
(154, 'useruser3', 'ajxp.admin', '1'),
(155, 'useruser3', 'ajxp.profile', 'admin'),
(156, 'useruser3', 'ajxp.roles.order', '$phpserial$a:1:{s:36:\"AJXP_USR_/useruser3\";i:1;}'),
(157, 'useruser3', 'ajxp.lock', '0');

-- --------------------------------------------------------

--
-- Table structure for table `ajxp_user_teams`
--

CREATE TABLE `ajxp_user_teams` (
  `team_id` varchar(70) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `team_label` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `owner_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ajxp_version`
--

CREATE TABLE `ajxp_version` (
  `db_build` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ajxp_version`
--

INSERT INTO `ajxp_version` (`db_build`) VALUES
(68);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ajxp_changes`
--
ALTER TABLE `ajxp_changes`
  ADD PRIMARY KEY (`seq`),
  ADD KEY `node_id` (`node_id`,`type`);

--
-- Indexes for table `ajxp_feed`
--
ALTER TABLE `ajxp_feed`
  ADD PRIMARY KEY (`id`),
  ADD KEY `edate` (`edate`,`etype`,`htype`,`user_id`,`repository_id`),
  ADD KEY `index_path` (`index_path`(40));

--
-- Indexes for table `ajxp_groups`
--
ALTER TABLE `ajxp_groups`
  ADD PRIMARY KEY (`groupPath`);

--
-- Indexes for table `ajxp_index`
--
ALTER TABLE `ajxp_index`
  ADD PRIMARY KEY (`node_id`);

--
-- Indexes for table `ajxp_log`
--
ALTER TABLE `ajxp_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `source` (`source`),
  ADD KEY `repository_id` (`repository_id`),
  ADD KEY `logdate` (`logdate`),
  ADD KEY `severity` (`severity`),
  ADD KEY `dirname` (`dirname`),
  ADD KEY `basename` (`basename`);

--
-- Indexes for table `ajxp_mail_queue`
--
ALTER TABLE `ajxp_mail_queue`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ajxp_mail_sent`
--
ALTER TABLE `ajxp_mail_sent`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ajxp_mq_queues`
--
ALTER TABLE `ajxp_mq_queues`
  ADD PRIMARY KEY (`channel_name`);

--
-- Indexes for table `ajxp_plugin_configs`
--
ALTER TABLE `ajxp_plugin_configs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ajxp_repo`
--
ALTER TABLE `ajxp_repo`
  ADD PRIMARY KEY (`uuid`);

--
-- Indexes for table `ajxp_repo_options`
--
ALTER TABLE `ajxp_repo_options`
  ADD PRIMARY KEY (`oid`),
  ADD KEY `uuid` (`uuid`);

--
-- Indexes for table `ajxp_roles`
--
ALTER TABLE `ajxp_roles`
  ADD PRIMARY KEY (`role_id`),
  ADD UNIQUE KEY `owner_role` (`role_id`,`owner_user_id`),
  ADD KEY `last_updated` (`last_updated`);

--
-- Indexes for table `ajxp_simple_store`
--
ALTER TABLE `ajxp_simple_store`
  ADD PRIMARY KEY (`object_id`,`store_id`);

--
-- Indexes for table `ajxp_tasks`
--
ALTER TABLE `ajxp_tasks`
  ADD PRIMARY KEY (`uid`),
  ADD KEY `ajxp_task_usr_idx` (`user_id`),
  ADD KEY `ajxp_task_status_idx` (`status`),
  ADD KEY `ajxp_task_type` (`type`),
  ADD KEY `ajxp_task_schedule` (`schedule`);

--
-- Indexes for table `ajxp_tasks_nodes`
--
ALTER TABLE `ajxp_tasks_nodes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ajxp_taskn_tuid_idx` (`task_uid`),
  ADD KEY `ajxp_taskn_base_idx` (`node_base_url`),
  ADD KEY `ajxp_taskn_path_idx` (`node_path`);

--
-- Indexes for table `ajxp_users`
--
ALTER TABLE `ajxp_users`
  ADD PRIMARY KEY (`login`);

--
-- Indexes for table `ajxp_user_bookmarks`
--
ALTER TABLE `ajxp_user_bookmarks`
  ADD PRIMARY KEY (`rid`);

--
-- Indexes for table `ajxp_user_prefs`
--
ALTER TABLE `ajxp_user_prefs`
  ADD PRIMARY KEY (`rid`),
  ADD UNIQUE KEY `prefs_login_name` (`login`,`name`);

--
-- Indexes for table `ajxp_user_rights`
--
ALTER TABLE `ajxp_user_rights`
  ADD PRIMARY KEY (`rid`),
  ADD KEY `login` (`login`),
  ADD KEY `repo_uuid` (`repo_uuid`);

--
-- Indexes for table `ajxp_user_teams`
--
ALTER TABLE `ajxp_user_teams`
  ADD PRIMARY KEY (`team_id`,`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `ajxp_changes`
--
ALTER TABLE `ajxp_changes`
  MODIFY `seq` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `ajxp_feed`
--
ALTER TABLE `ajxp_feed`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `ajxp_index`
--
ALTER TABLE `ajxp_index`
  MODIFY `node_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `ajxp_log`
--
ALTER TABLE `ajxp_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=120;

--
-- AUTO_INCREMENT for table `ajxp_mail_queue`
--
ALTER TABLE `ajxp_mail_queue`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ajxp_mail_sent`
--
ALTER TABLE `ajxp_mail_sent`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ajxp_repo_options`
--
ALTER TABLE `ajxp_repo_options`
  MODIFY `oid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;

--
-- AUTO_INCREMENT for table `ajxp_tasks_nodes`
--
ALTER TABLE `ajxp_tasks_nodes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ajxp_user_bookmarks`
--
ALTER TABLE `ajxp_user_bookmarks`
  MODIFY `rid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ajxp_user_prefs`
--
ALTER TABLE `ajxp_user_prefs`
  MODIFY `rid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=166;

--
-- AUTO_INCREMENT for table `ajxp_user_rights`
--
ALTER TABLE `ajxp_user_rights`
  MODIFY `rid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=158;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
