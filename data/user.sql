-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: db
-- Generation Time: Feb 11, 2018 at 02:27 AM
-- Server version: 10.2.12-MariaDB-10.2.12+maria~jessie
-- PHP Version: 7.1.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

use pydio;

UPDATE `ajxp_users` SET password='sha256:1000:USER1PASSWORD' WHERE login='useruser1';
UPDATE `ajxp_users` SET password='sha256:1000:USER2PASSWORD' WHERE login='useruser2';
UPDATE `ajxp_users` SET password='sha256:1000:USER3PASSWORD' WHERE login='useruser3';

UPDATE `ajxp_roles` SET serial_role='O:25:\"Pydio\\Conf\\Core\\AJXP_Role\":9:{s:12:\"\0*\0groupPath\";N;s:9:\"\0*\0roleId\";s:36:\"AJXP_USR_/useruser3\";s:7:\"\0*\0acls\";a:2:{s:9:\"ajxp_conf\";s:2:\"rw\";s:32:\"0210216687493a15c6a9ca323a519049\";s:2:\"rw\";}s:13:\"\0*\0parameters\";a:1:{s:19:\"AJXP_REPO_SCOPE_ALL\";a:2:{s:13:\"authfront.otp\";a:3:{s:20:\"google_enabled_admin\";b:1;s:14:\"google_enabled\";b:1;s:6:\"google\";s:16:\"USER3SECRET\";}s:9:\"core.conf\";a:1:{s:16:\"USER_LOCK_ACTION\";s:16:\"AJXP_VALUE_CLEAR\";}}}s:10:\"\0*\0actions\";a:0:{}s:14:\"\0*\0autoApplies\";a:0:{}s:8:\"\0*\0masks\";a:0:{}s:14:\"\0*\0lastUpdated\";i:1530491237;s:10:\"\0*\0ownerId\";N;}' WHERE role_id='AJXP_USR_/useruser3';
UPDATE `ajxp_roles` SET serial_role='O:25:\"Pydio\\Conf\\Core\\AJXP_Role\":9:{s:12:\"\0*\0groupPath\";N;s:9:\"\0*\0roleId\";s:32:\"AJXP_USR_/useruser2\";s:7:\"\0*\0acls\";a:2:{s:9:\"ajxp_conf\";s:2:\"rw\";s:32:\"0210216687493a15c6a9ca323a519049\";s:2:\"rw\";}s:13:\"\0*\0parameters\";a:1:{s:19:\"AJXP_REPO_SCOPE_ALL\";a:2:{s:13:\"authfront.otp\";a:4:{s:14:\"google_enabled\";b:1;s:6:\"google\";s:16:\"USER2SECRET\";s:20:\"google_enabled_admin\";b:1;s:11:\"google_last\";i:51018283;}s:9:\"core.conf\";a:1:{s:16:\"USER_LOCK_ACTION\";s:16:\"AJXP_VALUE_CLEAR\";}}}s:10:\"\0*\0actions\";a:0:{}s:14:\"\0*\0autoApplies\";a:0:{}s:8:\"\0*\0masks\";a:0:{}s:14:\"\0*\0lastUpdated\";i:1530548507;s:10:\"\0*\0ownerId\";N;}' WHERE role_id='AJXP_USR_/useruser2';
UPDATE `ajxp_roles` SET serial_role='O:25:\"Pydio\\Conf\\Core\\AJXP_Role\":9:{s:12:\"\0*\0groupPath\";N;s:9:\"\0*\0roleId\";s:30:\"AJXP_USR_/useruser1\";s:7:\"\0*\0acls\";a:3:{i:1;s:2:\"rw\";s:9:\"ajxp_conf\";s:2:\"rw\";s:32:\"0210216687493a15c6a9ca323a519049\";s:2:\"rw\";}s:13:\"\0*\0parameters\";a:1:{s:19:\"AJXP_REPO_SCOPE_ALL\";a:2:{s:13:\"authfront.otp\";a:4:{s:14:\"google_enabled\";b:1;s:6:\"google\";s:16:\"USER1SECRET\";s:20:\"google_enabled_admin\";b:1;s:11:\"google_last\";i:51018279;}s:9:\"core.conf\";a:1:{s:16:\"USER_LOCK_ACTION\";s:16:\"AJXP_VALUE_CLEAR\";}}}s:10:\"\0*\0actions\";a:0:{}s:14:\"\0*\0autoApplies\";a:0:{}s:8:\"\0*\0masks\";a:0:{}s:14:\"\0*\0lastUpdated\";i:1530548224;s:10:\"\0*\0ownerId\";N;}' WHERE role_id='AJXP_USR_/useruser1';


FLUSH PRIVILEGES;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
