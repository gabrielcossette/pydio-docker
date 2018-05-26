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

UPDATE `ajxp_roles` SET serial_role='O:25:\"Pydio\\Conf\\Core\\AJXP_Role\":9:{s:12:\"\0*\0groupPath\";N;s:9:\"\0*\0roleId\";s:15:\"AJXP_USR_/useruser1\";s:7:\"\0*\0acls\";a:8:{i:0;s:2:\"rw\";i:1;s:2:\"rw\";s:9:\"ajxp_user\";s:2:\"rw\";s:9:\"ajxp_home\";s:2:\"rw\";s:5:\"inbox\";s:2:\"rw\";s:9:\"ajxp_conf\";s:2:\"rw\";s:11:\"fs_template\";s:2:\"rw\";s:32:\"0210216687493a15c6a9ca323a519049\";s:2:\"rw\";}s:13:\"\0*\0parameters\";a:1:{s:19:\"AJXP_REPO_SCOPE_ALL\";a:2:{s:9:\"core.conf\";a:2:{s:17:\"USER_DISPLAY_NAME\";s:5:\"useruser1\";s:16:\"USER_LOCK_ACTION\";s:16:\"AJXP_VALUE_CLEAR\";}s:13:\"authfront.otp\";a:4:{s:14:\"google_enabled\";b:1;s:6:\"google\";s:16:\"USER1SECRET\";s:20:\"google_enabled_admin\";b:1;s:11:\"google_last\";i:50907035;}}}s:10:\"\0*\0actions\";a:0:{}s:14:\"\0*\0autoApplies\";a:0:{}s:8:\"\0*\0masks\";a:0:{}s:14:\"\0*\0lastUpdated\";i:1527126823;s:10:\"\0*\0ownerId\";N;}' WHERE login='useruser1';
UPDATE `ajxp_roles` SET serial_role='O:25:\"Pydio\\Conf\\Core\\AJXP_Role\":9:{s:12:\"\0*\0groupPath\";N;s:9:\"\0*\0roleId\";s:16:\"AJXP_USR_/useruser2\";s:7:\"\0*\0acls\";a:3:{i:0;s:2:\"rw\";s:32:\"0210216687493a15c6a9ca323a519049\";s:2:\"rw\";s:9:\"ajxp_conf\";s:2:\"rw\";}s:13:\"\0*\0parameters\";a:1:{s:19:\"AJXP_REPO_SCOPE_ALL\";a:1:{s:13:\"authfront.otp\";a:2:{s:14:\"google_enabled\";b:1;s:6:\"google\";s:14:\"USER2SECRET\";}}}s:10:\"\0*\0actions\";a:0:{}s:14:\"\0*\0autoApplies\";a:0:{}s:8:\"\0*\0masks\";a:0:{}s:14:\"\0*\0lastUpdated\";i:1527211230;s:10:\"\0*\0ownerId\";N;}' WHERE login='useruser2';
UPDATE `ajxp_roles` SET serial_role='O:25:\"Pydio\\Conf\\Core\\AJXP_Role\":9:{s:12:\"\0*\0groupPath\";N;s:9:\"\0*\0roleId\";s:16:\"AJXP_USR_/useruser3\";s:7:\"\0*\0acls\";a:3:{i:0;s:2:\"rw\";s:32:\"0210216687493a15c6a9ca323a519049\";s:2:\"rw\";s:9:\"ajxp_conf\";s:2:\"rw\";}s:13:\"\0*\0parameters\";a:1:{s:19:\"AJXP_REPO_SCOPE_ALL\";a:1:{s:13:\"authfront.otp\";a:2:{s:14:\"google_enabled\";b:1;s:6:\"google\";s:16:\"USER3SECRET\";}}}s:10:\"\0*\0actions\";a:0:{}s:14:\"\0*\0autoApplies\";a:0:{}s:8:\"\0*\0masks\";a:0:{}s:14:\"\0*\0lastUpdated\";i:1527211297;s:10:\"\0*\0ownerId\";N;}' WHERE login='useruser3';

FLUSH PRIVILEGES;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
