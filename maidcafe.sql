-- phpMyAdmin SQL Dump
-- version 4.0.4
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Erstellungszeit: 27. Aug 2013 um 20:56
-- Server Version: 5.6.12-log
-- PHP-Version: 5.4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Datenbank: `maidcafe`
--
CREATE DATABASE IF NOT EXISTS `maidcafe` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `maidcafe`;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `articlepage`
--

CREATE TABLE IF NOT EXISTS `articlepage` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Date` date DEFAULT NULL,
  `Author` mediumtext CHARACTER SET utf8,
  `IconID` int(11) NOT NULL DEFAULT '0',
  `newstype` mediumtext CHARACTER SET utf8,
  PRIMARY KEY (`ID`),
  KEY `IconID` (`IconID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=20 ;

--
-- Daten für Tabelle `articlepage`
--

INSERT INTO `articlepage` (`ID`, `Date`, `Author`, `IconID`, `newstype`) VALUES
(19, NULL, NULL, 0, 'Allgemein');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `articlepage_live`
--

CREATE TABLE IF NOT EXISTS `articlepage_live` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Date` date DEFAULT NULL,
  `Author` mediumtext CHARACTER SET utf8,
  `IconID` int(11) NOT NULL DEFAULT '0',
  `newstype` mediumtext CHARACTER SET utf8,
  PRIMARY KEY (`ID`),
  KEY `IconID` (`IconID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=20 ;

--
-- Daten für Tabelle `articlepage_live`
--

INSERT INTO `articlepage_live` (`ID`, `Date`, `Author`, `IconID`, `newstype`) VALUES
(19, NULL, NULL, 0, 'Allgemein');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `articlepage_versions`
--

CREATE TABLE IF NOT EXISTS `articlepage_versions` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `RecordID` int(11) NOT NULL DEFAULT '0',
  `Version` int(11) NOT NULL DEFAULT '0',
  `Date` date DEFAULT NULL,
  `Author` mediumtext CHARACTER SET utf8,
  `IconID` int(11) NOT NULL DEFAULT '0',
  `newstype` mediumtext CHARACTER SET utf8,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `RecordID_Version` (`RecordID`,`Version`),
  KEY `RecordID` (`RecordID`),
  KEY `Version` (`Version`),
  KEY `IconID` (`IconID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Daten für Tabelle `articlepage_versions`
--

INSERT INTO `articlepage_versions` (`ID`, `RecordID`, `Version`, `Date`, `Author`, `IconID`, `newstype`) VALUES
(1, 19, 1, NULL, NULL, 0, NULL),
(2, 19, 2, NULL, NULL, 0, NULL),
(3, 19, 3, NULL, NULL, 0, NULL),
(4, 19, 4, NULL, NULL, 0, 'Gewinnspiel'),
(5, 19, 5, NULL, NULL, 0, 'Allgemein');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `cwsfoldergallerypage`
--

CREATE TABLE IF NOT EXISTS `cwsfoldergallerypage` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `AlbumFolderID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=28 ;

--
-- Daten für Tabelle `cwsfoldergallerypage`
--

INSERT INTO `cwsfoldergallerypage` (`ID`, `AlbumFolderID`) VALUES
(27, 0);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `cwsfoldergallerypage_live`
--

CREATE TABLE IF NOT EXISTS `cwsfoldergallerypage_live` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `AlbumFolderID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `cwsfoldergallerypage_versions`
--

CREATE TABLE IF NOT EXISTS `cwsfoldergallerypage_versions` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `RecordID` int(11) NOT NULL DEFAULT '0',
  `Version` int(11) NOT NULL DEFAULT '0',
  `AlbumFolderID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  UNIQUE KEY `RecordID_Version` (`RecordID`,`Version`),
  KEY `RecordID` (`RecordID`),
  KEY `Version` (`Version`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Daten für Tabelle `cwsfoldergallerypage_versions`
--

INSERT INTO `cwsfoldergallerypage_versions` (`ID`, `RecordID`, `Version`, `AlbumFolderID`) VALUES
(1, 23, 1, 0),
(2, 23, 2, 0),
(3, 24, 1, 0),
(4, 24, 2, 21),
(5, 25, 1, 0),
(6, 26, 2, 0),
(7, 27, 1, 0);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `editableformfield`
--

CREATE TABLE IF NOT EXISTS `editableformfield` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ClassName` enum('EditableEmailField','EditableFileField','EditableTextField','EditableFormField','EditableCheckbox','EditableDateField','EditableFormHeading','EditableLiteralField','EditableMemberListField','EditableMultipleOptionField','EditableCheckboxGroupField','EditableDropdown','EditableRadioField') CHARACTER SET utf8 DEFAULT 'EditableEmailField',
  `Created` datetime DEFAULT NULL,
  `LastEdited` datetime DEFAULT NULL,
  `Name` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `Title` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `Default` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `Sort` int(11) NOT NULL DEFAULT '0',
  `Required` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `CustomErrorMessage` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `CustomRules` mediumtext CHARACTER SET utf8,
  `CustomSettings` mediumtext CHARACTER SET utf8,
  `CustomParameter` varchar(200) CHARACTER SET utf8 DEFAULT NULL,
  `Version` int(11) NOT NULL DEFAULT '0',
  `ParentID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `ParentID` (`ParentID`),
  KEY `ClassName` (`ClassName`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=31 ;

--
-- Daten für Tabelle `editableformfield`
--

INSERT INTO `editableformfield` (`ID`, `ClassName`, `Created`, `LastEdited`, `Name`, `Title`, `Default`, `Sort`, `Required`, `CustomErrorMessage`, `CustomRules`, `CustomSettings`, `CustomParameter`, `Version`, `ParentID`) VALUES
(1, 'EditableTextField', '2013-08-11 16:03:03', '2013-08-22 12:46:48', 'EditableTextField1', 'Name', NULL, 1, 1, NULL, 'a:0:{}', 'a:6:{s:10:"ExtraClass";s:0:"";s:10:"RightTitle";s:0:"";s:9:"MinLength";s:0:"";s:9:"MaxLength";s:0:"";s:4:"Rows";s:1:"1";s:10:"ShowOnLoad";s:4:"Show";}', NULL, 1, 13),
(2, 'EditableEmailField', '2013-08-11 16:03:09', '2013-08-22 12:46:48', 'EditableEmailField2', 'E-Mail Adresse', NULL, 2, 1, NULL, 'a:0:{}', 'a:3:{s:10:"ExtraClass";s:0:"";s:10:"RightTitle";s:0:"";s:10:"ShowOnLoad";s:4:"Show";}', NULL, 1, 13),
(3, 'EditableTextField', '2013-08-11 16:03:13', '2013-08-22 12:46:48', 'EditableTextField3', 'Kommentar', NULL, 3, 1, NULL, 'a:0:{}', 'a:6:{s:10:"ExtraClass";s:0:"";s:10:"RightTitle";s:0:"";s:9:"MinLength";s:0:"";s:9:"MaxLength";s:0:"";s:4:"Rows";s:1:"3";s:10:"ShowOnLoad";s:4:"Show";}', NULL, 1, 13),
(4, 'EditableTextField', '2013-08-11 16:08:21', '2013-08-23 12:31:11', 'EditableTextField4', 'Realname', NULL, 1, 1, NULL, 'a:0:{}', 'a:6:{s:10:"ExtraClass";s:0:"";s:10:"RightTitle";s:0:"";s:9:"MinLength";s:0:"";s:9:"MaxLength";s:2:"20";s:4:"Rows";s:1:"1";s:10:"ShowOnLoad";s:4:"Show";}', NULL, 20, 15),
(5, 'EditableTextField', '2013-08-11 16:08:30', '2013-08-23 12:31:11', 'EditableTextField5', 'Maidname', NULL, 2, 1, NULL, 'a:0:{}', 'a:6:{s:10:"ExtraClass";s:0:"";s:10:"RightTitle";s:0:"";s:9:"MinLength";s:0:"";s:9:"MaxLength";s:2:"20";s:4:"Rows";s:1:"1";s:10:"ShowOnLoad";s:4:"Show";}', NULL, 20, 15),
(6, 'EditableTextField', '2013-08-11 16:08:35', '2013-08-23 12:31:11', 'EditableTextField6', 'Alter', NULL, 3, 1, NULL, 'a:0:{}', 'a:6:{s:10:"ExtraClass";s:0:"";s:10:"RightTitle";s:0:"";s:9:"MinLength";s:0:"";s:9:"MaxLength";s:1:"3";s:4:"Rows";s:1:"1";s:10:"ShowOnLoad";s:4:"Show";}', NULL, 20, 15),
(7, 'EditableTextField', '2013-08-11 16:08:38', '2013-08-23 12:31:12', 'EditableTextField7', 'Wohnort', NULL, 4, 1, NULL, 'a:0:{}', 'a:6:{s:10:"ExtraClass";s:0:"";s:10:"RightTitle";s:0:"";s:9:"MinLength";s:0:"";s:9:"MaxLength";s:2:"20";s:4:"Rows";s:1:"1";s:10:"ShowOnLoad";s:4:"Show";}', NULL, 20, 15),
(8, 'EditableEmailField', '2013-08-11 16:08:42', '2013-08-23 12:31:12', 'EditableEmailField8', 'E-Mail Adresse', NULL, 5, 1, NULL, 'a:0:{}', 'a:3:{s:10:"ExtraClass";s:0:"";s:10:"RightTitle";s:0:"";s:10:"ShowOnLoad";s:4:"Show";}', NULL, 20, 15),
(9, 'EditableTextField', '2013-08-11 16:08:48', '2013-08-23 12:31:12', 'EditableTextField9', 'Über dich', NULL, 6, 1, NULL, 'a:0:{}', 'a:6:{s:10:"ExtraClass";s:0:"";s:10:"RightTitle";s:0:"";s:9:"MinLength";s:0:"";s:9:"MaxLength";s:0:"";s:4:"Rows";s:1:"9";s:10:"ShowOnLoad";s:4:"Show";}', NULL, 20, 15),
(16, 'EditableTextField', '2013-08-11 16:16:49', '2013-08-22 12:46:22', 'EditableTextField16', 'Firma/Convention', NULL, 1, 1, NULL, 'a:0:{}', 'a:6:{s:10:"ExtraClass";s:0:"";s:10:"RightTitle";s:0:"";s:9:"MinLength";s:0:"";s:9:"MaxLength";s:0:"";s:4:"Rows";s:1:"1";s:10:"ShowOnLoad";s:4:"Show";}', NULL, 1, 14),
(17, 'EditableTextField', '2013-08-11 16:16:52', '2013-08-22 12:46:22', 'EditableTextField17', 'Ansprechpartner', NULL, 2, 1, NULL, 'a:0:{}', 'a:6:{s:10:"ExtraClass";s:0:"";s:10:"RightTitle";s:0:"";s:9:"MinLength";s:0:"";s:9:"MaxLength";s:0:"";s:4:"Rows";s:1:"1";s:10:"ShowOnLoad";s:4:"Show";}', NULL, 1, 14),
(18, 'EditableEmailField', '2013-08-11 16:16:55', '2013-08-22 12:46:22', 'EditableEmailField18', 'E-Mail Adresse', NULL, 3, 1, NULL, 'a:0:{}', 'a:3:{s:10:"ExtraClass";s:0:"";s:10:"RightTitle";s:0:"";s:10:"ShowOnLoad";s:4:"Show";}', NULL, 1, 14),
(19, 'EditableTextField', '2013-08-11 16:16:59', '2013-08-22 12:46:22', 'EditableTextField19', 'Telefonnummer', NULL, 4, 1, NULL, 'a:0:{}', 'a:6:{s:10:"ExtraClass";s:0:"";s:10:"RightTitle";s:0:"";s:9:"MinLength";s:0:"";s:9:"MaxLength";s:0:"";s:4:"Rows";s:1:"1";s:10:"ShowOnLoad";s:4:"Show";}', NULL, 1, 14),
(20, 'EditableTextField', '2013-08-11 16:17:03', '2013-08-22 12:46:22', 'EditableTextField20', 'Veranstaltungsort', NULL, 5, 1, NULL, 'a:0:{}', 'a:6:{s:10:"ExtraClass";s:0:"";s:10:"RightTitle";s:0:"";s:9:"MinLength";s:0:"";s:9:"MaxLength";s:0:"";s:4:"Rows";s:1:"1";s:10:"ShowOnLoad";s:4:"Show";}', NULL, 1, 14),
(22, 'EditableTextField', '2013-08-11 16:17:13', '2013-08-22 12:46:22', 'EditableTextField22', 'Aufgaben', NULL, 7, 1, NULL, 'a:0:{}', 'a:6:{s:10:"ExtraClass";s:0:"";s:10:"RightTitle";s:0:"";s:9:"MinLength";s:0:"";s:9:"MaxLength";s:0:"";s:4:"Rows";s:1:"1";s:10:"ShowOnLoad";s:4:"Show";}', NULL, 1, 14),
(23, 'EditableTextField', '2013-08-11 16:17:17', '2013-08-22 12:46:23', 'EditableTextField23', 'Weiter Infos', NULL, 8, 1, NULL, 'a:0:{}', 'a:6:{s:10:"ExtraClass";s:0:"";s:10:"RightTitle";s:0:"";s:9:"MinLength";s:0:"";s:9:"MaxLength";s:0:"";s:4:"Rows";s:1:"9";s:10:"ShowOnLoad";s:4:"Show";}', NULL, 1, 14),
(25, 'EditableTextField', '2013-08-11 16:24:36', '2013-08-22 12:46:22', 'EditableTextField25', 'Datum', NULL, 6, 1, NULL, 'a:0:{}', 'a:6:{s:10:"ExtraClass";s:0:"";s:10:"RightTitle";s:0:"";s:9:"MinLength";s:0:"";s:9:"MaxLength";s:2:"10";s:4:"Rows";s:1:"1";s:10:"ShowOnLoad";s:4:"Show";}', NULL, 1, 14),
(26, 'EditableFileField', '2013-08-22 16:04:13', '2013-08-23 12:31:12', 'EditableFileField26', 'Bilder (Bitte den Namen in Datei angeben)', NULL, 8, 0, NULL, 'a:0:{}', 'a:3:{s:10:"ExtraClass";s:0:"";s:10:"RightTitle";s:30:"Bilder nicht größer als 2MB!";s:10:"ShowOnLoad";s:4:"Show";}', NULL, 17, 15),
(29, 'EditableFileField', '2013-08-23 12:11:34', '2013-08-23 12:31:12', 'EditableFileField29', NULL, NULL, 9, 0, NULL, 'a:1:{i:0;a:4:{s:7:"Display";s:4:"Show";s:14:"ConditionField";s:19:"EditableFileField26";s:15:"ConditionOption";s:10:"IsNotBlank";s:5:"Value";s:0:"";}}', 'a:3:{s:10:"ExtraClass";s:0:"";s:10:"RightTitle";s:0:"";s:10:"ShowOnLoad";s:4:"Show";}', NULL, 9, 15),
(30, 'EditableFileField', '2013-08-23 12:23:34', '2013-08-23 12:31:12', 'EditableFileField30', NULL, NULL, 10, 0, NULL, 'a:1:{i:0;a:4:{s:7:"Display";s:4:"Show";s:14:"ConditionField";s:19:"EditableFileField29";s:15:"ConditionOption";s:10:"IsNotBlank";s:5:"Value";s:0:"";}}', 'a:3:{s:10:"ExtraClass";s:0:"";s:10:"RightTitle";s:0:"";s:10:"ShowOnLoad";s:4:"Show";}', NULL, 7, 15);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `editableformfield_live`
--

CREATE TABLE IF NOT EXISTS `editableformfield_live` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ClassName` enum('EditableEmailField','EditableFileField','EditableTextField','EditableFormField','EditableCheckbox','EditableDateField','EditableFormHeading','EditableLiteralField','EditableMemberListField','EditableMultipleOptionField','EditableCheckboxGroupField','EditableDropdown','EditableRadioField') CHARACTER SET utf8 DEFAULT 'EditableEmailField',
  `Created` datetime DEFAULT NULL,
  `LastEdited` datetime DEFAULT NULL,
  `Name` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `Title` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `Default` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `Sort` int(11) NOT NULL DEFAULT '0',
  `Required` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `CustomErrorMessage` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `CustomRules` mediumtext CHARACTER SET utf8,
  `CustomSettings` mediumtext CHARACTER SET utf8,
  `CustomParameter` varchar(200) CHARACTER SET utf8 DEFAULT NULL,
  `Version` int(11) NOT NULL DEFAULT '0',
  `ParentID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `ParentID` (`ParentID`),
  KEY `ClassName` (`ClassName`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=31 ;

--
-- Daten für Tabelle `editableformfield_live`
--

INSERT INTO `editableformfield_live` (`ID`, `ClassName`, `Created`, `LastEdited`, `Name`, `Title`, `Default`, `Sort`, `Required`, `CustomErrorMessage`, `CustomRules`, `CustomSettings`, `CustomParameter`, `Version`, `ParentID`) VALUES
(1, 'EditableTextField', '2013-08-11 16:03:03', '2013-08-22 12:46:49', 'EditableTextField1', 'Name', NULL, 1, 1, NULL, 'a:0:{}', 'a:6:{s:10:"ExtraClass";s:0:"";s:10:"RightTitle";s:0:"";s:9:"MinLength";s:0:"";s:9:"MaxLength";s:0:"";s:4:"Rows";s:1:"1";s:10:"ShowOnLoad";s:4:"Show";}', NULL, 1, 13),
(2, 'EditableEmailField', '2013-08-11 16:03:09', '2013-08-22 12:46:49', 'EditableEmailField2', 'E-Mail Adresse', NULL, 2, 1, NULL, 'a:0:{}', 'a:3:{s:10:"ExtraClass";s:0:"";s:10:"RightTitle";s:0:"";s:10:"ShowOnLoad";s:4:"Show";}', NULL, 1, 13),
(3, 'EditableTextField', '2013-08-11 16:03:13', '2013-08-22 12:46:49', 'EditableTextField3', 'Kommentar', NULL, 3, 1, NULL, 'a:0:{}', 'a:6:{s:10:"ExtraClass";s:0:"";s:10:"RightTitle";s:0:"";s:9:"MinLength";s:0:"";s:9:"MaxLength";s:0:"";s:4:"Rows";s:1:"3";s:10:"ShowOnLoad";s:4:"Show";}', NULL, 1, 13),
(4, 'EditableTextField', '2013-08-11 16:08:21', '2013-08-23 12:31:14', 'EditableTextField4', 'Realname', NULL, 1, 1, NULL, 'a:0:{}', 'a:6:{s:10:"ExtraClass";s:0:"";s:10:"RightTitle";s:0:"";s:9:"MinLength";s:0:"";s:9:"MaxLength";s:2:"20";s:4:"Rows";s:1:"1";s:10:"ShowOnLoad";s:4:"Show";}', NULL, 20, 15),
(5, 'EditableTextField', '2013-08-11 16:08:30', '2013-08-23 12:31:14', 'EditableTextField5', 'Maidname', NULL, 2, 1, NULL, 'a:0:{}', 'a:6:{s:10:"ExtraClass";s:0:"";s:10:"RightTitle";s:0:"";s:9:"MinLength";s:0:"";s:9:"MaxLength";s:2:"20";s:4:"Rows";s:1:"1";s:10:"ShowOnLoad";s:4:"Show";}', NULL, 20, 15),
(6, 'EditableTextField', '2013-08-11 16:08:35', '2013-08-23 12:31:14', 'EditableTextField6', 'Alter', NULL, 3, 1, NULL, 'a:0:{}', 'a:6:{s:10:"ExtraClass";s:0:"";s:10:"RightTitle";s:0:"";s:9:"MinLength";s:0:"";s:9:"MaxLength";s:1:"3";s:4:"Rows";s:1:"1";s:10:"ShowOnLoad";s:4:"Show";}', NULL, 20, 15),
(7, 'EditableTextField', '2013-08-11 16:08:38', '2013-08-23 12:31:14', 'EditableTextField7', 'Wohnort', NULL, 4, 1, NULL, 'a:0:{}', 'a:6:{s:10:"ExtraClass";s:0:"";s:10:"RightTitle";s:0:"";s:9:"MinLength";s:0:"";s:9:"MaxLength";s:2:"20";s:4:"Rows";s:1:"1";s:10:"ShowOnLoad";s:4:"Show";}', NULL, 20, 15),
(8, 'EditableEmailField', '2013-08-11 16:08:42', '2013-08-23 12:31:14', 'EditableEmailField8', 'E-Mail Adresse', NULL, 5, 1, NULL, 'a:0:{}', 'a:3:{s:10:"ExtraClass";s:0:"";s:10:"RightTitle";s:0:"";s:10:"ShowOnLoad";s:4:"Show";}', NULL, 20, 15),
(9, 'EditableTextField', '2013-08-11 16:08:48', '2013-08-23 12:31:14', 'EditableTextField9', 'Über dich', NULL, 6, 1, NULL, 'a:0:{}', 'a:6:{s:10:"ExtraClass";s:0:"";s:10:"RightTitle";s:0:"";s:9:"MinLength";s:0:"";s:9:"MaxLength";s:0:"";s:4:"Rows";s:1:"9";s:10:"ShowOnLoad";s:4:"Show";}', NULL, 20, 15),
(16, 'EditableTextField', '2013-08-11 16:16:49', '2013-08-22 12:46:24', 'EditableTextField16', 'Firma/Convention', NULL, 1, 1, NULL, 'a:0:{}', 'a:6:{s:10:"ExtraClass";s:0:"";s:10:"RightTitle";s:0:"";s:9:"MinLength";s:0:"";s:9:"MaxLength";s:0:"";s:4:"Rows";s:1:"1";s:10:"ShowOnLoad";s:4:"Show";}', NULL, 1, 14),
(17, 'EditableTextField', '2013-08-11 16:16:52', '2013-08-22 12:46:24', 'EditableTextField17', 'Ansprechpartner', NULL, 2, 1, NULL, 'a:0:{}', 'a:6:{s:10:"ExtraClass";s:0:"";s:10:"RightTitle";s:0:"";s:9:"MinLength";s:0:"";s:9:"MaxLength";s:0:"";s:4:"Rows";s:1:"1";s:10:"ShowOnLoad";s:4:"Show";}', NULL, 1, 14),
(18, 'EditableEmailField', '2013-08-11 16:16:55', '2013-08-22 12:46:24', 'EditableEmailField18', 'E-Mail Adresse', NULL, 3, 1, NULL, 'a:0:{}', 'a:3:{s:10:"ExtraClass";s:0:"";s:10:"RightTitle";s:0:"";s:10:"ShowOnLoad";s:4:"Show";}', NULL, 1, 14),
(19, 'EditableTextField', '2013-08-11 16:16:59', '2013-08-22 12:46:24', 'EditableTextField19', 'Telefonnummer', NULL, 4, 1, NULL, 'a:0:{}', 'a:6:{s:10:"ExtraClass";s:0:"";s:10:"RightTitle";s:0:"";s:9:"MinLength";s:0:"";s:9:"MaxLength";s:0:"";s:4:"Rows";s:1:"1";s:10:"ShowOnLoad";s:4:"Show";}', NULL, 1, 14),
(20, 'EditableTextField', '2013-08-11 16:17:03', '2013-08-22 12:46:24', 'EditableTextField20', 'Veranstaltungsort', NULL, 5, 1, NULL, 'a:0:{}', 'a:6:{s:10:"ExtraClass";s:0:"";s:10:"RightTitle";s:0:"";s:9:"MinLength";s:0:"";s:9:"MaxLength";s:0:"";s:4:"Rows";s:1:"1";s:10:"ShowOnLoad";s:4:"Show";}', NULL, 1, 14),
(22, 'EditableTextField', '2013-08-11 16:17:13', '2013-08-22 12:46:24', 'EditableTextField22', 'Aufgaben', NULL, 7, 1, NULL, 'a:0:{}', 'a:6:{s:10:"ExtraClass";s:0:"";s:10:"RightTitle";s:0:"";s:9:"MinLength";s:0:"";s:9:"MaxLength";s:0:"";s:4:"Rows";s:1:"1";s:10:"ShowOnLoad";s:4:"Show";}', NULL, 1, 14),
(23, 'EditableTextField', '2013-08-11 16:17:17', '2013-08-22 12:46:24', 'EditableTextField23', 'Weiter Infos', NULL, 8, 1, NULL, 'a:0:{}', 'a:6:{s:10:"ExtraClass";s:0:"";s:10:"RightTitle";s:0:"";s:9:"MinLength";s:0:"";s:9:"MaxLength";s:0:"";s:4:"Rows";s:1:"9";s:10:"ShowOnLoad";s:4:"Show";}', NULL, 1, 14),
(25, 'EditableTextField', '2013-08-11 16:24:36', '2013-08-22 12:46:24', 'EditableTextField25', 'Datum', NULL, 6, 1, NULL, 'a:0:{}', 'a:6:{s:10:"ExtraClass";s:0:"";s:10:"RightTitle";s:0:"";s:9:"MinLength";s:0:"";s:9:"MaxLength";s:2:"10";s:4:"Rows";s:1:"1";s:10:"ShowOnLoad";s:4:"Show";}', NULL, 1, 14),
(26, 'EditableFileField', '2013-08-22 16:04:13', '2013-08-23 12:31:14', 'EditableFileField26', 'Bilder (Bitte den Namen in Datei angeben)', NULL, 8, 0, NULL, 'a:0:{}', 'a:3:{s:10:"ExtraClass";s:0:"";s:10:"RightTitle";s:30:"Bilder nicht größer als 2MB!";s:10:"ShowOnLoad";s:4:"Show";}', NULL, 17, 15),
(29, 'EditableFileField', '2013-08-23 12:11:34', '2013-08-23 12:31:14', 'EditableFileField29', NULL, NULL, 9, 0, NULL, 'a:1:{i:0;a:4:{s:7:"Display";s:4:"Show";s:14:"ConditionField";s:19:"EditableFileField26";s:15:"ConditionOption";s:10:"IsNotBlank";s:5:"Value";s:0:"";}}', 'a:3:{s:10:"ExtraClass";s:0:"";s:10:"RightTitle";s:0:"";s:10:"ShowOnLoad";s:4:"Show";}', NULL, 9, 15),
(30, 'EditableFileField', '2013-08-23 12:23:34', '2013-08-23 12:31:14', 'EditableFileField30', NULL, NULL, 10, 0, NULL, 'a:1:{i:0;a:4:{s:7:"Display";s:4:"Show";s:14:"ConditionField";s:19:"EditableFileField29";s:15:"ConditionOption";s:10:"IsNotBlank";s:5:"Value";s:0:"";}}', 'a:3:{s:10:"ExtraClass";s:0:"";s:10:"RightTitle";s:0:"";s:10:"ShowOnLoad";s:4:"Show";}', NULL, 7, 15);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `editableformfield_versions`
--

CREATE TABLE IF NOT EXISTS `editableformfield_versions` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `RecordID` int(11) NOT NULL DEFAULT '0',
  `Version` int(11) NOT NULL DEFAULT '0',
  `WasPublished` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `AuthorID` int(11) NOT NULL DEFAULT '0',
  `PublisherID` int(11) NOT NULL DEFAULT '0',
  `ClassName` enum('EditableEmailField','EditableFileField','EditableTextField','EditableFormField','EditableCheckbox','EditableDateField','EditableFormHeading','EditableLiteralField','EditableMemberListField','EditableMultipleOptionField','EditableCheckboxGroupField','EditableDropdown','EditableRadioField') CHARACTER SET utf8 DEFAULT 'EditableEmailField',
  `Created` datetime DEFAULT NULL,
  `LastEdited` datetime DEFAULT NULL,
  `Name` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `Title` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `Default` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `Sort` int(11) NOT NULL DEFAULT '0',
  `Required` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `CustomErrorMessage` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `CustomRules` mediumtext CHARACTER SET utf8,
  `CustomSettings` mediumtext CHARACTER SET utf8,
  `CustomParameter` varchar(200) CHARACTER SET utf8 DEFAULT NULL,
  `ParentID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `RecordID_Version` (`RecordID`,`Version`),
  KEY `RecordID` (`RecordID`),
  KEY `Version` (`Version`),
  KEY `AuthorID` (`AuthorID`),
  KEY `PublisherID` (`PublisherID`),
  KEY `ParentID` (`ParentID`),
  KEY `ClassName` (`ClassName`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=181 ;

--
-- Daten für Tabelle `editableformfield_versions`
--

INSERT INTO `editableformfield_versions` (`ID`, `RecordID`, `Version`, `WasPublished`, `AuthorID`, `PublisherID`, `ClassName`, `Created`, `LastEdited`, `Name`, `Title`, `Default`, `Sort`, `Required`, `CustomErrorMessage`, `CustomRules`, `CustomSettings`, `CustomParameter`, `ParentID`) VALUES
(1, 4, 1, 1, 1, 1, 'EditableTextField', '2013-08-11 16:08:21', '2013-08-22 12:45:18', 'EditableTextField4', 'Realname', NULL, 1, 1, NULL, 'a:0:{}', 'a:6:{s:10:"ExtraClass";s:0:"";s:10:"RightTitle";s:0:"";s:9:"MinLength";s:0:"";s:9:"MaxLength";s:2:"20";s:4:"Rows";s:1:"1";s:10:"ShowOnLoad";s:4:"Show";}', NULL, 15),
(2, 5, 1, 1, 1, 1, 'EditableTextField', '2013-08-11 16:08:30', '2013-08-22 12:45:18', 'EditableTextField5', 'Maidname', NULL, 2, 1, NULL, 'a:0:{}', 'a:6:{s:10:"ExtraClass";s:0:"";s:10:"RightTitle";s:0:"";s:9:"MinLength";s:0:"";s:9:"MaxLength";s:2:"20";s:4:"Rows";s:1:"1";s:10:"ShowOnLoad";s:4:"Show";}', NULL, 15),
(3, 6, 1, 1, 1, 1, 'EditableTextField', '2013-08-11 16:08:35', '2013-08-22 12:45:18', 'EditableTextField6', 'Alter', NULL, 3, 1, NULL, 'a:0:{}', 'a:6:{s:10:"ExtraClass";s:0:"";s:10:"RightTitle";s:0:"";s:9:"MinLength";s:0:"";s:9:"MaxLength";s:1:"3";s:4:"Rows";s:1:"1";s:10:"ShowOnLoad";s:4:"Show";}', NULL, 15),
(4, 7, 1, 1, 1, 1, 'EditableTextField', '2013-08-11 16:08:38', '2013-08-22 12:45:18', 'EditableTextField7', 'Wohnort', NULL, 4, 1, NULL, 'a:0:{}', 'a:6:{s:10:"ExtraClass";s:0:"";s:10:"RightTitle";s:0:"";s:9:"MinLength";s:0:"";s:9:"MaxLength";s:2:"20";s:4:"Rows";s:1:"1";s:10:"ShowOnLoad";s:4:"Show";}', NULL, 15),
(5, 8, 1, 1, 1, 1, 'EditableEmailField', '2013-08-11 16:08:42', '2013-08-22 12:45:18', 'EditableEmailField8', 'E-Mail Adresse', NULL, 5, 1, NULL, 'a:0:{}', 'a:3:{s:10:"ExtraClass";s:0:"";s:10:"RightTitle";s:0:"";s:10:"ShowOnLoad";s:4:"Show";}', NULL, 15),
(6, 9, 1, 1, 1, 1, 'EditableTextField', '2013-08-11 16:08:48', '2013-08-22 12:45:18', 'EditableTextField9', 'Über dich', NULL, 6, 1, NULL, 'a:0:{}', 'a:6:{s:10:"ExtraClass";s:0:"";s:10:"RightTitle";s:0:"";s:9:"MinLength";s:0:"";s:9:"MaxLength";s:0:"";s:4:"Rows";s:1:"9";s:10:"ShowOnLoad";s:4:"Show";}', NULL, 15),
(7, 10, 1, 1, 1, 1, 'EditableFileField', '2013-08-11 16:09:05', '2013-08-22 12:45:18', 'EditableFileField10', 'Bilder ( Bitte Name in der Datei angeben)', NULL, 7, 0, NULL, 'a:0:{}', 'a:3:{s:10:"ExtraClass";s:0:"";s:10:"RightTitle";s:0:"";s:10:"ShowOnLoad";s:4:"Show";}', NULL, 15),
(8, 4, 2, 1, 1, 1, 'EditableTextField', '2013-08-11 16:08:21', '2013-08-22 12:45:33', 'EditableTextField4', 'Realname', NULL, 1, 1, NULL, 'a:0:{}', 'a:6:{s:10:"ExtraClass";s:0:"";s:10:"RightTitle";s:0:"";s:9:"MinLength";s:0:"";s:9:"MaxLength";s:2:"20";s:4:"Rows";s:1:"1";s:10:"ShowOnLoad";s:4:"Show";}', NULL, 15),
(9, 5, 2, 1, 1, 1, 'EditableTextField', '2013-08-11 16:08:30', '2013-08-22 12:45:33', 'EditableTextField5', 'Maidname', NULL, 2, 1, NULL, 'a:0:{}', 'a:6:{s:10:"ExtraClass";s:0:"";s:10:"RightTitle";s:0:"";s:9:"MinLength";s:0:"";s:9:"MaxLength";s:2:"20";s:4:"Rows";s:1:"1";s:10:"ShowOnLoad";s:4:"Show";}', NULL, 15),
(10, 6, 2, 1, 1, 1, 'EditableTextField', '2013-08-11 16:08:35', '2013-08-22 12:45:33', 'EditableTextField6', 'Alter', NULL, 3, 1, NULL, 'a:0:{}', 'a:6:{s:10:"ExtraClass";s:0:"";s:10:"RightTitle";s:0:"";s:9:"MinLength";s:0:"";s:9:"MaxLength";s:1:"3";s:4:"Rows";s:1:"1";s:10:"ShowOnLoad";s:4:"Show";}', NULL, 15),
(11, 7, 2, 1, 1, 1, 'EditableTextField', '2013-08-11 16:08:38', '2013-08-22 12:45:33', 'EditableTextField7', 'Wohnort', NULL, 4, 1, NULL, 'a:0:{}', 'a:6:{s:10:"ExtraClass";s:0:"";s:10:"RightTitle";s:0:"";s:9:"MinLength";s:0:"";s:9:"MaxLength";s:2:"20";s:4:"Rows";s:1:"1";s:10:"ShowOnLoad";s:4:"Show";}', NULL, 15),
(12, 8, 2, 1, 1, 1, 'EditableEmailField', '2013-08-11 16:08:42', '2013-08-22 12:45:33', 'EditableEmailField8', 'E-Mail Adresse', NULL, 5, 1, NULL, 'a:0:{}', 'a:3:{s:10:"ExtraClass";s:0:"";s:10:"RightTitle";s:0:"";s:10:"ShowOnLoad";s:4:"Show";}', NULL, 15),
(13, 9, 2, 1, 1, 1, 'EditableTextField', '2013-08-11 16:08:48', '2013-08-22 12:45:33', 'EditableTextField9', 'Über dich', NULL, 6, 1, NULL, 'a:0:{}', 'a:6:{s:10:"ExtraClass";s:0:"";s:10:"RightTitle";s:0:"";s:9:"MinLength";s:0:"";s:9:"MaxLength";s:0:"";s:4:"Rows";s:1:"9";s:10:"ShowOnLoad";s:4:"Show";}', NULL, 15),
(14, 10, 2, 1, 1, 1, 'EditableFileField', '2013-08-11 16:09:05', '2013-08-22 12:45:33', 'EditableFileField10', 'Bilder ( Bitte Name in der Datei angeben)', NULL, 7, 0, NULL, 'a:0:{}', 'a:3:{s:10:"ExtraClass";s:0:"";s:10:"RightTitle";s:0:"";s:10:"ShowOnLoad";s:4:"Show";}', NULL, 15),
(15, 4, 3, 1, 1, 1, 'EditableTextField', '2013-08-11 16:08:21', '2013-08-22 12:46:03', 'EditableTextField4', 'Realname', NULL, 1, 1, NULL, 'a:0:{}', 'a:6:{s:10:"ExtraClass";s:0:"";s:10:"RightTitle";s:0:"";s:9:"MinLength";s:0:"";s:9:"MaxLength";s:2:"20";s:4:"Rows";s:1:"1";s:10:"ShowOnLoad";s:4:"Show";}', NULL, 15),
(16, 5, 3, 1, 1, 1, 'EditableTextField', '2013-08-11 16:08:30', '2013-08-22 12:46:03', 'EditableTextField5', 'Maidname', NULL, 2, 1, NULL, 'a:0:{}', 'a:6:{s:10:"ExtraClass";s:0:"";s:10:"RightTitle";s:0:"";s:9:"MinLength";s:0:"";s:9:"MaxLength";s:2:"20";s:4:"Rows";s:1:"1";s:10:"ShowOnLoad";s:4:"Show";}', NULL, 15),
(17, 6, 3, 1, 1, 1, 'EditableTextField', '2013-08-11 16:08:35', '2013-08-22 12:46:03', 'EditableTextField6', 'Alter', NULL, 3, 1, NULL, 'a:0:{}', 'a:6:{s:10:"ExtraClass";s:0:"";s:10:"RightTitle";s:0:"";s:9:"MinLength";s:0:"";s:9:"MaxLength";s:1:"3";s:4:"Rows";s:1:"1";s:10:"ShowOnLoad";s:4:"Show";}', NULL, 15),
(18, 7, 3, 1, 1, 1, 'EditableTextField', '2013-08-11 16:08:38', '2013-08-22 12:46:03', 'EditableTextField7', 'Wohnort', NULL, 4, 1, NULL, 'a:0:{}', 'a:6:{s:10:"ExtraClass";s:0:"";s:10:"RightTitle";s:0:"";s:9:"MinLength";s:0:"";s:9:"MaxLength";s:2:"20";s:4:"Rows";s:1:"1";s:10:"ShowOnLoad";s:4:"Show";}', NULL, 15),
(19, 8, 3, 1, 1, 1, 'EditableEmailField', '2013-08-11 16:08:42', '2013-08-22 12:46:04', 'EditableEmailField8', 'E-Mail Adresse', NULL, 5, 1, NULL, 'a:0:{}', 'a:3:{s:10:"ExtraClass";s:0:"";s:10:"RightTitle";s:0:"";s:10:"ShowOnLoad";s:4:"Show";}', NULL, 15),
(20, 9, 3, 1, 1, 1, 'EditableTextField', '2013-08-11 16:08:48', '2013-08-22 12:46:04', 'EditableTextField9', 'Über dich', NULL, 6, 1, NULL, 'a:0:{}', 'a:6:{s:10:"ExtraClass";s:0:"";s:10:"RightTitle";s:0:"";s:9:"MinLength";s:0:"";s:9:"MaxLength";s:0:"";s:4:"Rows";s:1:"9";s:10:"ShowOnLoad";s:4:"Show";}', NULL, 15),
(21, 10, 3, 1, 1, 1, 'EditableFileField', '2013-08-11 16:09:05', '2013-08-22 12:46:04', 'EditableFileField10', 'Bilder ( Bitte Name in der Datei angeben)', NULL, 7, 0, NULL, 'a:0:{}', 'a:3:{s:10:"ExtraClass";s:0:"";s:10:"RightTitle";s:0:"";s:10:"ShowOnLoad";s:4:"Show";}', NULL, 15),
(22, 16, 1, 1, 1, 1, 'EditableTextField', '2013-08-11 16:16:49', '2013-08-22 12:46:22', 'EditableTextField16', 'Firma/Convention', NULL, 1, 1, NULL, 'a:0:{}', 'a:6:{s:10:"ExtraClass";s:0:"";s:10:"RightTitle";s:0:"";s:9:"MinLength";s:0:"";s:9:"MaxLength";s:0:"";s:4:"Rows";s:1:"1";s:10:"ShowOnLoad";s:4:"Show";}', NULL, 14),
(23, 17, 1, 1, 1, 1, 'EditableTextField', '2013-08-11 16:16:52', '2013-08-22 12:46:22', 'EditableTextField17', 'Ansprechpartner', NULL, 2, 1, NULL, 'a:0:{}', 'a:6:{s:10:"ExtraClass";s:0:"";s:10:"RightTitle";s:0:"";s:9:"MinLength";s:0:"";s:9:"MaxLength";s:0:"";s:4:"Rows";s:1:"1";s:10:"ShowOnLoad";s:4:"Show";}', NULL, 14),
(24, 18, 1, 1, 1, 1, 'EditableEmailField', '2013-08-11 16:16:55', '2013-08-22 12:46:22', 'EditableEmailField18', 'E-Mail Adresse', NULL, 3, 1, NULL, 'a:0:{}', 'a:3:{s:10:"ExtraClass";s:0:"";s:10:"RightTitle";s:0:"";s:10:"ShowOnLoad";s:4:"Show";}', NULL, 14),
(25, 19, 1, 1, 1, 1, 'EditableTextField', '2013-08-11 16:16:59', '2013-08-22 12:46:22', 'EditableTextField19', 'Telefonnummer', NULL, 4, 1, NULL, 'a:0:{}', 'a:6:{s:10:"ExtraClass";s:0:"";s:10:"RightTitle";s:0:"";s:9:"MinLength";s:0:"";s:9:"MaxLength";s:0:"";s:4:"Rows";s:1:"1";s:10:"ShowOnLoad";s:4:"Show";}', NULL, 14),
(26, 20, 1, 1, 1, 1, 'EditableTextField', '2013-08-11 16:17:03', '2013-08-22 12:46:22', 'EditableTextField20', 'Veranstaltungsort', NULL, 5, 1, NULL, 'a:0:{}', 'a:6:{s:10:"ExtraClass";s:0:"";s:10:"RightTitle";s:0:"";s:9:"MinLength";s:0:"";s:9:"MaxLength";s:0:"";s:4:"Rows";s:1:"1";s:10:"ShowOnLoad";s:4:"Show";}', NULL, 14),
(27, 25, 1, 1, 1, 1, 'EditableTextField', '2013-08-11 16:24:36', '2013-08-22 12:46:22', 'EditableTextField25', 'Datum', NULL, 6, 1, NULL, 'a:0:{}', 'a:6:{s:10:"ExtraClass";s:0:"";s:10:"RightTitle";s:0:"";s:9:"MinLength";s:0:"";s:9:"MaxLength";s:2:"10";s:4:"Rows";s:1:"1";s:10:"ShowOnLoad";s:4:"Show";}', NULL, 14),
(28, 22, 1, 1, 1, 1, 'EditableTextField', '2013-08-11 16:17:13', '2013-08-22 12:46:22', 'EditableTextField22', 'Aufgaben', NULL, 7, 1, NULL, 'a:0:{}', 'a:6:{s:10:"ExtraClass";s:0:"";s:10:"RightTitle";s:0:"";s:9:"MinLength";s:0:"";s:9:"MaxLength";s:0:"";s:4:"Rows";s:1:"1";s:10:"ShowOnLoad";s:4:"Show";}', NULL, 14),
(29, 23, 1, 1, 1, 1, 'EditableTextField', '2013-08-11 16:17:17', '2013-08-22 12:46:23', 'EditableTextField23', 'Weiter Infos', NULL, 8, 1, NULL, 'a:0:{}', 'a:6:{s:10:"ExtraClass";s:0:"";s:10:"RightTitle";s:0:"";s:9:"MinLength";s:0:"";s:9:"MaxLength";s:0:"";s:4:"Rows";s:1:"9";s:10:"ShowOnLoad";s:4:"Show";}', NULL, 14),
(30, 1, 1, 1, 1, 1, 'EditableTextField', '2013-08-11 16:03:03', '2013-08-22 12:46:48', 'EditableTextField1', 'Name', NULL, 1, 1, NULL, 'a:0:{}', 'a:6:{s:10:"ExtraClass";s:0:"";s:10:"RightTitle";s:0:"";s:9:"MinLength";s:0:"";s:9:"MaxLength";s:0:"";s:4:"Rows";s:1:"1";s:10:"ShowOnLoad";s:4:"Show";}', NULL, 13),
(31, 2, 1, 1, 1, 1, 'EditableEmailField', '2013-08-11 16:03:09', '2013-08-22 12:46:48', 'EditableEmailField2', 'E-Mail Adresse', NULL, 2, 1, NULL, 'a:0:{}', 'a:3:{s:10:"ExtraClass";s:0:"";s:10:"RightTitle";s:0:"";s:10:"ShowOnLoad";s:4:"Show";}', NULL, 13),
(32, 3, 1, 1, 1, 1, 'EditableTextField', '2013-08-11 16:03:13', '2013-08-22 12:46:48', 'EditableTextField3', 'Kommentar', NULL, 3, 1, NULL, 'a:0:{}', 'a:6:{s:10:"ExtraClass";s:0:"";s:10:"RightTitle";s:0:"";s:9:"MinLength";s:0:"";s:9:"MaxLength";s:0:"";s:4:"Rows";s:1:"3";s:10:"ShowOnLoad";s:4:"Show";}', NULL, 13),
(33, 4, 4, 1, 1, 1, 'EditableTextField', '2013-08-11 16:08:21', '2013-08-22 16:01:37', 'EditableTextField4', 'Realname', NULL, 1, 1, NULL, 'a:0:{}', 'a:6:{s:10:"ExtraClass";s:0:"";s:10:"RightTitle";s:0:"";s:9:"MinLength";s:0:"";s:9:"MaxLength";s:2:"20";s:4:"Rows";s:1:"1";s:10:"ShowOnLoad";s:4:"Show";}', NULL, 15),
(34, 5, 4, 1, 1, 1, 'EditableTextField', '2013-08-11 16:08:30', '2013-08-22 16:01:38', 'EditableTextField5', 'Maidname', NULL, 2, 1, NULL, 'a:0:{}', 'a:6:{s:10:"ExtraClass";s:0:"";s:10:"RightTitle";s:0:"";s:9:"MinLength";s:0:"";s:9:"MaxLength";s:2:"20";s:4:"Rows";s:1:"1";s:10:"ShowOnLoad";s:4:"Show";}', NULL, 15),
(35, 6, 4, 1, 1, 1, 'EditableTextField', '2013-08-11 16:08:35', '2013-08-22 16:01:38', 'EditableTextField6', 'Alter', NULL, 3, 1, NULL, 'a:0:{}', 'a:6:{s:10:"ExtraClass";s:0:"";s:10:"RightTitle";s:0:"";s:9:"MinLength";s:0:"";s:9:"MaxLength";s:1:"3";s:4:"Rows";s:1:"1";s:10:"ShowOnLoad";s:4:"Show";}', NULL, 15),
(36, 7, 4, 1, 1, 1, 'EditableTextField', '2013-08-11 16:08:38', '2013-08-22 16:01:38', 'EditableTextField7', 'Wohnort', NULL, 4, 1, NULL, 'a:0:{}', 'a:6:{s:10:"ExtraClass";s:0:"";s:10:"RightTitle";s:0:"";s:9:"MinLength";s:0:"";s:9:"MaxLength";s:2:"20";s:4:"Rows";s:1:"1";s:10:"ShowOnLoad";s:4:"Show";}', NULL, 15),
(37, 8, 4, 1, 1, 1, 'EditableEmailField', '2013-08-11 16:08:42', '2013-08-22 16:01:38', 'EditableEmailField8', 'E-Mail Adresse', NULL, 5, 1, NULL, 'a:0:{}', 'a:3:{s:10:"ExtraClass";s:0:"";s:10:"RightTitle";s:0:"";s:10:"ShowOnLoad";s:4:"Show";}', NULL, 15),
(38, 9, 4, 1, 1, 1, 'EditableTextField', '2013-08-11 16:08:48', '2013-08-22 16:01:38', 'EditableTextField9', 'Über dich', NULL, 6, 1, NULL, 'a:0:{}', 'a:6:{s:10:"ExtraClass";s:0:"";s:10:"RightTitle";s:0:"";s:9:"MinLength";s:0:"";s:9:"MaxLength";s:0:"";s:4:"Rows";s:1:"9";s:10:"ShowOnLoad";s:4:"Show";}', NULL, 15),
(39, 10, 4, 1, 1, 1, 'EditableFileField', '2013-08-11 16:09:05', '2013-08-22 16:01:38', 'EditableFileField10', 'Bilder ( Bitte Name in der Datei angeben)', NULL, 7, 1, NULL, 'a:0:{}', 'a:3:{s:10:"ExtraClass";s:0:"";s:10:"RightTitle";s:0:"";s:10:"ShowOnLoad";s:4:"Show";}', NULL, 15),
(40, 4, 5, 1, 1, 1, 'EditableTextField', '2013-08-11 16:08:21', '2013-08-22 16:02:17', 'EditableTextField4', 'Realname', NULL, 1, 1, NULL, 'a:0:{}', 'a:6:{s:10:"ExtraClass";s:0:"";s:10:"RightTitle";s:0:"";s:9:"MinLength";s:0:"";s:9:"MaxLength";s:2:"20";s:4:"Rows";s:1:"1";s:10:"ShowOnLoad";s:4:"Show";}', NULL, 15),
(41, 5, 5, 1, 1, 1, 'EditableTextField', '2013-08-11 16:08:30', '2013-08-22 16:02:17', 'EditableTextField5', 'Maidname', NULL, 2, 1, NULL, 'a:0:{}', 'a:6:{s:10:"ExtraClass";s:0:"";s:10:"RightTitle";s:0:"";s:9:"MinLength";s:0:"";s:9:"MaxLength";s:2:"20";s:4:"Rows";s:1:"1";s:10:"ShowOnLoad";s:4:"Show";}', NULL, 15),
(42, 6, 5, 1, 1, 1, 'EditableTextField', '2013-08-11 16:08:35', '2013-08-22 16:02:17', 'EditableTextField6', 'Alter', NULL, 3, 1, NULL, 'a:0:{}', 'a:6:{s:10:"ExtraClass";s:0:"";s:10:"RightTitle";s:0:"";s:9:"MinLength";s:0:"";s:9:"MaxLength";s:1:"3";s:4:"Rows";s:1:"1";s:10:"ShowOnLoad";s:4:"Show";}', NULL, 15),
(43, 7, 5, 1, 1, 1, 'EditableTextField', '2013-08-11 16:08:38', '2013-08-22 16:02:17', 'EditableTextField7', 'Wohnort', NULL, 4, 1, NULL, 'a:0:{}', 'a:6:{s:10:"ExtraClass";s:0:"";s:10:"RightTitle";s:0:"";s:9:"MinLength";s:0:"";s:9:"MaxLength";s:2:"20";s:4:"Rows";s:1:"1";s:10:"ShowOnLoad";s:4:"Show";}', NULL, 15),
(44, 8, 5, 1, 1, 1, 'EditableEmailField', '2013-08-11 16:08:42', '2013-08-22 16:02:18', 'EditableEmailField8', 'E-Mail Adresse', NULL, 5, 1, NULL, 'a:0:{}', 'a:3:{s:10:"ExtraClass";s:0:"";s:10:"RightTitle";s:0:"";s:10:"ShowOnLoad";s:4:"Show";}', NULL, 15),
(45, 9, 5, 1, 1, 1, 'EditableTextField', '2013-08-11 16:08:48', '2013-08-22 16:02:18', 'EditableTextField9', 'Über dich', NULL, 6, 1, NULL, 'a:0:{}', 'a:6:{s:10:"ExtraClass";s:0:"";s:10:"RightTitle";s:0:"";s:9:"MinLength";s:0:"";s:9:"MaxLength";s:0:"";s:4:"Rows";s:1:"9";s:10:"ShowOnLoad";s:4:"Show";}', NULL, 15),
(46, 10, 5, 1, 1, 1, 'EditableFileField', '2013-08-11 16:09:05', '2013-08-22 16:02:18', 'EditableFileField10', 'Bilder ( Bitte Name in der Datei angeben)', NULL, 7, 0, NULL, 'a:0:{}', 'a:3:{s:10:"ExtraClass";s:0:"";s:10:"RightTitle";s:0:"";s:10:"ShowOnLoad";s:4:"Show";}', NULL, 15),
(47, 26, 1, 0, 1, 0, 'EditableFileField', '2013-08-22 16:04:13', '2013-08-22 16:04:13', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, 0),
(48, 26, 2, 0, 1, 0, 'EditableFileField', '2013-08-22 16:04:13', '2013-08-22 16:04:13', 'EditableFileField26', NULL, NULL, 8, 0, NULL, NULL, NULL, NULL, 15),
(49, 4, 6, 1, 1, 1, 'EditableTextField', '2013-08-11 16:08:21', '2013-08-22 16:04:34', 'EditableTextField4', 'Realname', NULL, 1, 1, NULL, 'a:0:{}', 'a:6:{s:10:"ExtraClass";s:0:"";s:10:"RightTitle";s:0:"";s:9:"MinLength";s:0:"";s:9:"MaxLength";s:2:"20";s:4:"Rows";s:1:"1";s:10:"ShowOnLoad";s:4:"Show";}', NULL, 15),
(50, 5, 6, 1, 1, 1, 'EditableTextField', '2013-08-11 16:08:30', '2013-08-22 16:04:34', 'EditableTextField5', 'Maidname', NULL, 2, 1, NULL, 'a:0:{}', 'a:6:{s:10:"ExtraClass";s:0:"";s:10:"RightTitle";s:0:"";s:9:"MinLength";s:0:"";s:9:"MaxLength";s:2:"20";s:4:"Rows";s:1:"1";s:10:"ShowOnLoad";s:4:"Show";}', NULL, 15),
(51, 6, 6, 1, 1, 1, 'EditableTextField', '2013-08-11 16:08:35', '2013-08-22 16:04:34', 'EditableTextField6', 'Alter', NULL, 3, 1, NULL, 'a:0:{}', 'a:6:{s:10:"ExtraClass";s:0:"";s:10:"RightTitle";s:0:"";s:9:"MinLength";s:0:"";s:9:"MaxLength";s:1:"3";s:4:"Rows";s:1:"1";s:10:"ShowOnLoad";s:4:"Show";}', NULL, 15),
(52, 7, 6, 1, 1, 1, 'EditableTextField', '2013-08-11 16:08:38', '2013-08-22 16:04:34', 'EditableTextField7', 'Wohnort', NULL, 4, 1, NULL, 'a:0:{}', 'a:6:{s:10:"ExtraClass";s:0:"";s:10:"RightTitle";s:0:"";s:9:"MinLength";s:0:"";s:9:"MaxLength";s:2:"20";s:4:"Rows";s:1:"1";s:10:"ShowOnLoad";s:4:"Show";}', NULL, 15),
(53, 8, 6, 1, 1, 1, 'EditableEmailField', '2013-08-11 16:08:42', '2013-08-22 16:04:34', 'EditableEmailField8', 'E-Mail Adresse', NULL, 5, 1, NULL, 'a:0:{}', 'a:3:{s:10:"ExtraClass";s:0:"";s:10:"RightTitle";s:0:"";s:10:"ShowOnLoad";s:4:"Show";}', NULL, 15),
(54, 9, 6, 1, 1, 1, 'EditableTextField', '2013-08-11 16:08:48', '2013-08-22 16:04:35', 'EditableTextField9', 'Über dich', NULL, 6, 1, NULL, 'a:0:{}', 'a:6:{s:10:"ExtraClass";s:0:"";s:10:"RightTitle";s:0:"";s:9:"MinLength";s:0:"";s:9:"MaxLength";s:0:"";s:4:"Rows";s:1:"9";s:10:"ShowOnLoad";s:4:"Show";}', NULL, 15),
(55, 26, 3, 1, 1, 1, 'EditableFileField', '2013-08-22 16:04:13', '2013-08-22 16:04:35', 'EditableFileField26', 'Bilder ( Bitte Name in der Datei angeben)', NULL, 8, 0, NULL, 'a:0:{}', 'a:3:{s:10:"ExtraClass";s:0:"";s:10:"RightTitle";s:0:"";s:10:"ShowOnLoad";s:4:"Show";}', NULL, 15),
(56, 4, 7, 1, 1, 1, 'EditableTextField', '2013-08-11 16:08:21', '2013-08-22 16:06:16', 'EditableTextField4', 'Realname', NULL, 1, 1, NULL, 'a:0:{}', 'a:6:{s:10:"ExtraClass";s:0:"";s:10:"RightTitle";s:0:"";s:9:"MinLength";s:0:"";s:9:"MaxLength";s:2:"20";s:4:"Rows";s:1:"1";s:10:"ShowOnLoad";s:4:"Show";}', NULL, 15),
(57, 5, 7, 1, 1, 1, 'EditableTextField', '2013-08-11 16:08:30', '2013-08-22 16:06:17', 'EditableTextField5', 'Maidname', NULL, 2, 1, NULL, 'a:0:{}', 'a:6:{s:10:"ExtraClass";s:0:"";s:10:"RightTitle";s:0:"";s:9:"MinLength";s:0:"";s:9:"MaxLength";s:2:"20";s:4:"Rows";s:1:"1";s:10:"ShowOnLoad";s:4:"Show";}', NULL, 15),
(58, 6, 7, 1, 1, 1, 'EditableTextField', '2013-08-11 16:08:35', '2013-08-22 16:06:17', 'EditableTextField6', 'Alter', NULL, 3, 1, NULL, 'a:0:{}', 'a:6:{s:10:"ExtraClass";s:0:"";s:10:"RightTitle";s:0:"";s:9:"MinLength";s:0:"";s:9:"MaxLength";s:1:"3";s:4:"Rows";s:1:"1";s:10:"ShowOnLoad";s:4:"Show";}', NULL, 15),
(59, 7, 7, 1, 1, 1, 'EditableTextField', '2013-08-11 16:08:38', '2013-08-22 16:06:17', 'EditableTextField7', 'Wohnort', NULL, 4, 1, NULL, 'a:0:{}', 'a:6:{s:10:"ExtraClass";s:0:"";s:10:"RightTitle";s:0:"";s:9:"MinLength";s:0:"";s:9:"MaxLength";s:2:"20";s:4:"Rows";s:1:"1";s:10:"ShowOnLoad";s:4:"Show";}', NULL, 15),
(60, 8, 7, 1, 1, 1, 'EditableEmailField', '2013-08-11 16:08:42', '2013-08-22 16:06:17', 'EditableEmailField8', 'E-Mail Adresse', NULL, 5, 1, NULL, 'a:0:{}', 'a:3:{s:10:"ExtraClass";s:0:"";s:10:"RightTitle";s:0:"";s:10:"ShowOnLoad";s:4:"Show";}', NULL, 15),
(61, 9, 7, 1, 1, 1, 'EditableTextField', '2013-08-11 16:08:48', '2013-08-22 16:06:17', 'EditableTextField9', 'Über dich', NULL, 6, 1, NULL, 'a:0:{}', 'a:6:{s:10:"ExtraClass";s:0:"";s:10:"RightTitle";s:0:"";s:9:"MinLength";s:0:"";s:9:"MaxLength";s:0:"";s:4:"Rows";s:1:"9";s:10:"ShowOnLoad";s:4:"Show";}', NULL, 15),
(62, 26, 4, 1, 1, 1, 'EditableFileField', '2013-08-22 16:04:13', '2013-08-22 16:06:17', 'EditableFileField26', 'Bilder ( Bitte Name in der Datei angeben)', NULL, 8, 0, NULL, 'a:0:{}', 'a:3:{s:10:"ExtraClass";s:0:"";s:10:"RightTitle";s:0:"";s:10:"ShowOnLoad";s:4:"Show";}', NULL, 15),
(63, 4, 8, 1, 1, 1, 'EditableTextField', '2013-08-11 16:08:21', '2013-08-22 16:07:46', 'EditableTextField4', 'Realname', NULL, 1, 1, NULL, 'a:0:{}', 'a:6:{s:10:"ExtraClass";s:0:"";s:10:"RightTitle";s:0:"";s:9:"MinLength";s:0:"";s:9:"MaxLength";s:2:"20";s:4:"Rows";s:1:"1";s:10:"ShowOnLoad";s:4:"Show";}', NULL, 15),
(64, 5, 8, 1, 1, 1, 'EditableTextField', '2013-08-11 16:08:30', '2013-08-22 16:07:46', 'EditableTextField5', 'Maidname', NULL, 2, 1, NULL, 'a:0:{}', 'a:6:{s:10:"ExtraClass";s:0:"";s:10:"RightTitle";s:0:"";s:9:"MinLength";s:0:"";s:9:"MaxLength";s:2:"20";s:4:"Rows";s:1:"1";s:10:"ShowOnLoad";s:4:"Show";}', NULL, 15),
(65, 6, 8, 1, 1, 1, 'EditableTextField', '2013-08-11 16:08:35', '2013-08-22 16:07:46', 'EditableTextField6', 'Alter', NULL, 3, 1, NULL, 'a:0:{}', 'a:6:{s:10:"ExtraClass";s:0:"";s:10:"RightTitle";s:0:"";s:9:"MinLength";s:0:"";s:9:"MaxLength";s:1:"3";s:4:"Rows";s:1:"1";s:10:"ShowOnLoad";s:4:"Show";}', NULL, 15),
(66, 7, 8, 1, 1, 1, 'EditableTextField', '2013-08-11 16:08:38', '2013-08-22 16:07:46', 'EditableTextField7', 'Wohnort', NULL, 4, 1, NULL, 'a:0:{}', 'a:6:{s:10:"ExtraClass";s:0:"";s:10:"RightTitle";s:0:"";s:9:"MinLength";s:0:"";s:9:"MaxLength";s:2:"20";s:4:"Rows";s:1:"1";s:10:"ShowOnLoad";s:4:"Show";}', NULL, 15),
(67, 8, 8, 1, 1, 1, 'EditableEmailField', '2013-08-11 16:08:42', '2013-08-22 16:07:46', 'EditableEmailField8', 'E-Mail Adresse', NULL, 5, 1, NULL, 'a:0:{}', 'a:3:{s:10:"ExtraClass";s:0:"";s:10:"RightTitle";s:0:"";s:10:"ShowOnLoad";s:4:"Show";}', NULL, 15),
(68, 9, 8, 1, 1, 1, 'EditableTextField', '2013-08-11 16:08:48', '2013-08-22 16:07:46', 'EditableTextField9', 'Über dich', NULL, 6, 1, NULL, 'a:0:{}', 'a:6:{s:10:"ExtraClass";s:0:"";s:10:"RightTitle";s:0:"";s:9:"MinLength";s:0:"";s:9:"MaxLength";s:0:"";s:4:"Rows";s:1:"9";s:10:"ShowOnLoad";s:4:"Show";}', NULL, 15),
(69, 26, 5, 1, 1, 1, 'EditableFileField', '2013-08-22 16:04:13', '2013-08-22 16:07:47', 'EditableFileField26', 'Bilder ( Bitte Name in der Datei angeben)', NULL, 8, 0, NULL, 'a:0:{}', 'a:3:{s:10:"ExtraClass";s:0:"";s:10:"RightTitle";s:0:"";s:10:"ShowOnLoad";s:4:"Show";}', NULL, 15),
(70, 27, 1, 0, 1, 0, 'EditableFileField', '2013-08-23 11:56:14', '2013-08-23 11:56:14', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, 0),
(71, 27, 2, 0, 1, 0, 'EditableFileField', '2013-08-23 11:56:14', '2013-08-23 11:56:14', 'EditableFileField27', NULL, NULL, 9, 0, NULL, NULL, NULL, NULL, 15),
(72, 4, 9, 1, 1, 1, 'EditableTextField', '2013-08-11 16:08:21', '2013-08-23 11:56:56', 'EditableTextField4', 'Realname', NULL, 1, 1, NULL, 'a:0:{}', 'a:6:{s:10:"ExtraClass";s:0:"";s:10:"RightTitle";s:0:"";s:9:"MinLength";s:0:"";s:9:"MaxLength";s:2:"20";s:4:"Rows";s:1:"1";s:10:"ShowOnLoad";s:4:"Show";}', NULL, 15),
(73, 5, 9, 1, 1, 1, 'EditableTextField', '2013-08-11 16:08:30', '2013-08-23 11:56:56', 'EditableTextField5', 'Maidname', NULL, 2, 1, NULL, 'a:0:{}', 'a:6:{s:10:"ExtraClass";s:0:"";s:10:"RightTitle";s:0:"";s:9:"MinLength";s:0:"";s:9:"MaxLength";s:2:"20";s:4:"Rows";s:1:"1";s:10:"ShowOnLoad";s:4:"Show";}', NULL, 15),
(74, 6, 9, 1, 1, 1, 'EditableTextField', '2013-08-11 16:08:35', '2013-08-23 11:56:56', 'EditableTextField6', 'Alter', NULL, 3, 1, NULL, 'a:0:{}', 'a:6:{s:10:"ExtraClass";s:0:"";s:10:"RightTitle";s:0:"";s:9:"MinLength";s:0:"";s:9:"MaxLength";s:1:"3";s:4:"Rows";s:1:"1";s:10:"ShowOnLoad";s:4:"Show";}', NULL, 15),
(75, 7, 9, 1, 1, 1, 'EditableTextField', '2013-08-11 16:08:38', '2013-08-23 11:56:56', 'EditableTextField7', 'Wohnort', NULL, 4, 1, NULL, 'a:0:{}', 'a:6:{s:10:"ExtraClass";s:0:"";s:10:"RightTitle";s:0:"";s:9:"MinLength";s:0:"";s:9:"MaxLength";s:2:"20";s:4:"Rows";s:1:"1";s:10:"ShowOnLoad";s:4:"Show";}', NULL, 15),
(76, 8, 9, 1, 1, 1, 'EditableEmailField', '2013-08-11 16:08:42', '2013-08-23 11:56:56', 'EditableEmailField8', 'E-Mail Adresse', NULL, 5, 1, NULL, 'a:0:{}', 'a:3:{s:10:"ExtraClass";s:0:"";s:10:"RightTitle";s:0:"";s:10:"ShowOnLoad";s:4:"Show";}', NULL, 15),
(77, 9, 9, 1, 1, 1, 'EditableTextField', '2013-08-11 16:08:48', '2013-08-23 11:56:56', 'EditableTextField9', 'Über dich', NULL, 6, 1, NULL, 'a:0:{}', 'a:6:{s:10:"ExtraClass";s:0:"";s:10:"RightTitle";s:0:"";s:9:"MinLength";s:0:"";s:9:"MaxLength";s:0:"";s:4:"Rows";s:1:"9";s:10:"ShowOnLoad";s:4:"Show";}', NULL, 15),
(78, 26, 6, 1, 1, 1, 'EditableFileField', '2013-08-22 16:04:13', '2013-08-23 11:56:56', 'EditableFileField26', 'Bilder ( Bitte Name in der Datei angeben)', NULL, 8, 0, NULL, 'a:0:{}', 'a:3:{s:10:"ExtraClass";s:0:"";s:10:"RightTitle";s:0:"";s:10:"ShowOnLoad";s:4:"Show";}', NULL, 15),
(79, 27, 3, 1, 1, 1, 'EditableFileField', '2013-08-23 11:56:14', '2013-08-23 11:56:56', 'EditableFileField27', 'Bild 2', NULL, 9, 0, NULL, 'a:1:{i:0;a:4:{s:7:"Display";s:4:"Show";s:14:"ConditionField";s:19:"EditableFileField26";s:15:"ConditionOption";s:10:"IsNotBlank";s:5:"Value";s:0:"";}}', 'a:3:{s:10:"ExtraClass";s:0:"";s:10:"RightTitle";s:0:"";s:10:"ShowOnLoad";s:4:"Hide";}', NULL, 15),
(80, 28, 1, 0, 1, 0, 'EditableFileField', '2013-08-23 11:57:22', '2013-08-23 11:57:22', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, 0),
(81, 28, 2, 0, 1, 0, 'EditableFileField', '2013-08-23 11:57:22', '2013-08-23 11:57:22', 'EditableFileField28', NULL, NULL, 10, 0, NULL, NULL, NULL, NULL, 15),
(82, 4, 10, 1, 1, 1, 'EditableTextField', '2013-08-11 16:08:21', '2013-08-23 11:57:59', 'EditableTextField4', 'Realname', NULL, 1, 1, NULL, 'a:0:{}', 'a:6:{s:10:"ExtraClass";s:0:"";s:10:"RightTitle";s:0:"";s:9:"MinLength";s:0:"";s:9:"MaxLength";s:2:"20";s:4:"Rows";s:1:"1";s:10:"ShowOnLoad";s:4:"Show";}', NULL, 15),
(83, 5, 10, 1, 1, 1, 'EditableTextField', '2013-08-11 16:08:30', '2013-08-23 11:57:59', 'EditableTextField5', 'Maidname', NULL, 2, 1, NULL, 'a:0:{}', 'a:6:{s:10:"ExtraClass";s:0:"";s:10:"RightTitle";s:0:"";s:9:"MinLength";s:0:"";s:9:"MaxLength";s:2:"20";s:4:"Rows";s:1:"1";s:10:"ShowOnLoad";s:4:"Show";}', NULL, 15),
(84, 6, 10, 1, 1, 1, 'EditableTextField', '2013-08-11 16:08:35', '2013-08-23 11:57:59', 'EditableTextField6', 'Alter', NULL, 3, 1, NULL, 'a:0:{}', 'a:6:{s:10:"ExtraClass";s:0:"";s:10:"RightTitle";s:0:"";s:9:"MinLength";s:0:"";s:9:"MaxLength";s:1:"3";s:4:"Rows";s:1:"1";s:10:"ShowOnLoad";s:4:"Show";}', NULL, 15),
(85, 7, 10, 1, 1, 1, 'EditableTextField', '2013-08-11 16:08:38', '2013-08-23 11:58:00', 'EditableTextField7', 'Wohnort', NULL, 4, 1, NULL, 'a:0:{}', 'a:6:{s:10:"ExtraClass";s:0:"";s:10:"RightTitle";s:0:"";s:9:"MinLength";s:0:"";s:9:"MaxLength";s:2:"20";s:4:"Rows";s:1:"1";s:10:"ShowOnLoad";s:4:"Show";}', NULL, 15),
(86, 8, 10, 1, 1, 1, 'EditableEmailField', '2013-08-11 16:08:42', '2013-08-23 11:58:00', 'EditableEmailField8', 'E-Mail Adresse', NULL, 5, 1, NULL, 'a:0:{}', 'a:3:{s:10:"ExtraClass";s:0:"";s:10:"RightTitle";s:0:"";s:10:"ShowOnLoad";s:4:"Show";}', NULL, 15),
(87, 9, 10, 1, 1, 1, 'EditableTextField', '2013-08-11 16:08:48', '2013-08-23 11:58:00', 'EditableTextField9', 'Über dich', NULL, 6, 1, NULL, 'a:0:{}', 'a:6:{s:10:"ExtraClass";s:0:"";s:10:"RightTitle";s:0:"";s:9:"MinLength";s:0:"";s:9:"MaxLength";s:0:"";s:4:"Rows";s:1:"9";s:10:"ShowOnLoad";s:4:"Show";}', NULL, 15),
(88, 26, 7, 1, 1, 1, 'EditableFileField', '2013-08-22 16:04:13', '2013-08-23 11:58:00', 'EditableFileField26', 'Bilder ( Bitte Name in der Datei angeben)', NULL, 8, 0, NULL, 'a:0:{}', 'a:3:{s:10:"ExtraClass";s:0:"";s:10:"RightTitle";s:0:"";s:10:"ShowOnLoad";s:4:"Show";}', NULL, 15),
(89, 27, 4, 1, 1, 1, 'EditableFileField', '2013-08-23 11:56:14', '2013-08-23 11:58:00', 'EditableFileField27', 'Bild 2', NULL, 9, 0, NULL, 'a:1:{i:0;a:4:{s:7:"Display";s:4:"Show";s:14:"ConditionField";s:19:"EditableFileField26";s:15:"ConditionOption";s:10:"IsNotBlank";s:5:"Value";s:0:"";}}', 'a:3:{s:10:"ExtraClass";s:0:"";s:10:"RightTitle";s:0:"";s:10:"ShowOnLoad";s:4:"Hide";}', NULL, 15),
(90, 28, 3, 1, 1, 1, 'EditableFileField', '2013-08-23 11:57:22', '2013-08-23 11:58:00', 'EditableFileField28', 'Bild 3', NULL, 10, 0, NULL, 'a:1:{i:0;a:4:{s:7:"Display";s:4:"Show";s:14:"ConditionField";s:19:"EditableFileField27";s:15:"ConditionOption";s:10:"IsNotBlank";s:5:"Value";s:0:"";}}', 'a:3:{s:10:"ExtraClass";s:0:"";s:10:"RightTitle";s:0:"";s:10:"ShowOnLoad";s:4:"Show";}', NULL, 15),
(91, 4, 11, 1, 1, 1, 'EditableTextField', '2013-08-11 16:08:21', '2013-08-23 11:58:26', 'EditableTextField4', 'Realname', NULL, 1, 1, NULL, 'a:0:{}', 'a:6:{s:10:"ExtraClass";s:0:"";s:10:"RightTitle";s:0:"";s:9:"MinLength";s:0:"";s:9:"MaxLength";s:2:"20";s:4:"Rows";s:1:"1";s:10:"ShowOnLoad";s:4:"Show";}', NULL, 15),
(92, 5, 11, 1, 1, 1, 'EditableTextField', '2013-08-11 16:08:30', '2013-08-23 11:58:26', 'EditableTextField5', 'Maidname', NULL, 2, 1, NULL, 'a:0:{}', 'a:6:{s:10:"ExtraClass";s:0:"";s:10:"RightTitle";s:0:"";s:9:"MinLength";s:0:"";s:9:"MaxLength";s:2:"20";s:4:"Rows";s:1:"1";s:10:"ShowOnLoad";s:4:"Show";}', NULL, 15),
(93, 6, 11, 1, 1, 1, 'EditableTextField', '2013-08-11 16:08:35', '2013-08-23 11:58:26', 'EditableTextField6', 'Alter', NULL, 3, 1, NULL, 'a:0:{}', 'a:6:{s:10:"ExtraClass";s:0:"";s:10:"RightTitle";s:0:"";s:9:"MinLength";s:0:"";s:9:"MaxLength";s:1:"3";s:4:"Rows";s:1:"1";s:10:"ShowOnLoad";s:4:"Show";}', NULL, 15),
(94, 7, 11, 1, 1, 1, 'EditableTextField', '2013-08-11 16:08:38', '2013-08-23 11:58:26', 'EditableTextField7', 'Wohnort', NULL, 4, 1, NULL, 'a:0:{}', 'a:6:{s:10:"ExtraClass";s:0:"";s:10:"RightTitle";s:0:"";s:9:"MinLength";s:0:"";s:9:"MaxLength";s:2:"20";s:4:"Rows";s:1:"1";s:10:"ShowOnLoad";s:4:"Show";}', NULL, 15),
(95, 8, 11, 1, 1, 1, 'EditableEmailField', '2013-08-11 16:08:42', '2013-08-23 11:58:26', 'EditableEmailField8', 'E-Mail Adresse', NULL, 5, 1, NULL, 'a:0:{}', 'a:3:{s:10:"ExtraClass";s:0:"";s:10:"RightTitle";s:0:"";s:10:"ShowOnLoad";s:4:"Show";}', NULL, 15),
(96, 9, 11, 1, 1, 1, 'EditableTextField', '2013-08-11 16:08:48', '2013-08-23 11:58:26', 'EditableTextField9', 'Über dich', NULL, 6, 1, NULL, 'a:0:{}', 'a:6:{s:10:"ExtraClass";s:0:"";s:10:"RightTitle";s:0:"";s:9:"MinLength";s:0:"";s:9:"MaxLength";s:0:"";s:4:"Rows";s:1:"9";s:10:"ShowOnLoad";s:4:"Show";}', NULL, 15),
(97, 26, 8, 1, 1, 1, 'EditableFileField', '2013-08-22 16:04:13', '2013-08-23 11:58:26', 'EditableFileField26', 'Bilder ( Bitte Name in der Datei angeben)', NULL, 8, 0, NULL, 'a:0:{}', 'a:3:{s:10:"ExtraClass";s:0:"";s:10:"RightTitle";s:0:"";s:10:"ShowOnLoad";s:4:"Show";}', NULL, 15),
(98, 27, 5, 1, 1, 1, 'EditableFileField', '2013-08-23 11:56:14', '2013-08-23 11:58:26', 'EditableFileField27', NULL, NULL, 9, 0, NULL, 'a:1:{i:0;a:4:{s:7:"Display";s:4:"Show";s:14:"ConditionField";s:19:"EditableFileField26";s:15:"ConditionOption";s:10:"IsNotBlank";s:5:"Value";s:0:"";}}', 'a:3:{s:10:"ExtraClass";s:0:"";s:10:"RightTitle";s:0:"";s:10:"ShowOnLoad";s:4:"Hide";}', NULL, 15),
(99, 28, 4, 1, 1, 1, 'EditableFileField', '2013-08-23 11:57:22', '2013-08-23 11:58:27', 'EditableFileField28', NULL, NULL, 10, 0, NULL, 'a:1:{i:0;a:4:{s:7:"Display";s:4:"Show";s:14:"ConditionField";s:19:"EditableFileField27";s:15:"ConditionOption";s:10:"IsNotBlank";s:5:"Value";s:0:"";}}', 'a:3:{s:10:"ExtraClass";s:0:"";s:10:"RightTitle";s:0:"";s:10:"ShowOnLoad";s:4:"Show";}', NULL, 15),
(100, 4, 12, 1, 1, 1, 'EditableTextField', '2013-08-11 16:08:21', '2013-08-23 11:59:48', 'EditableTextField4', 'Realname', NULL, 1, 1, NULL, 'a:0:{}', 'a:6:{s:10:"ExtraClass";s:0:"";s:10:"RightTitle";s:0:"";s:9:"MinLength";s:0:"";s:9:"MaxLength";s:2:"20";s:4:"Rows";s:1:"1";s:10:"ShowOnLoad";s:4:"Show";}', NULL, 15),
(101, 5, 12, 1, 1, 1, 'EditableTextField', '2013-08-11 16:08:30', '2013-08-23 11:59:48', 'EditableTextField5', 'Maidname', NULL, 2, 1, NULL, 'a:0:{}', 'a:6:{s:10:"ExtraClass";s:0:"";s:10:"RightTitle";s:0:"";s:9:"MinLength";s:0:"";s:9:"MaxLength";s:2:"20";s:4:"Rows";s:1:"1";s:10:"ShowOnLoad";s:4:"Show";}', NULL, 15),
(102, 6, 12, 1, 1, 1, 'EditableTextField', '2013-08-11 16:08:35', '2013-08-23 11:59:48', 'EditableTextField6', 'Alter', NULL, 3, 1, NULL, 'a:0:{}', 'a:6:{s:10:"ExtraClass";s:0:"";s:10:"RightTitle";s:0:"";s:9:"MinLength";s:0:"";s:9:"MaxLength";s:1:"3";s:4:"Rows";s:1:"1";s:10:"ShowOnLoad";s:4:"Show";}', NULL, 15),
(103, 7, 12, 1, 1, 1, 'EditableTextField', '2013-08-11 16:08:38', '2013-08-23 11:59:48', 'EditableTextField7', 'Wohnort', NULL, 4, 1, NULL, 'a:0:{}', 'a:6:{s:10:"ExtraClass";s:0:"";s:10:"RightTitle";s:0:"";s:9:"MinLength";s:0:"";s:9:"MaxLength";s:2:"20";s:4:"Rows";s:1:"1";s:10:"ShowOnLoad";s:4:"Show";}', NULL, 15),
(104, 8, 12, 1, 1, 1, 'EditableEmailField', '2013-08-11 16:08:42', '2013-08-23 11:59:48', 'EditableEmailField8', 'E-Mail Adresse', NULL, 5, 1, NULL, 'a:0:{}', 'a:3:{s:10:"ExtraClass";s:0:"";s:10:"RightTitle";s:0:"";s:10:"ShowOnLoad";s:4:"Show";}', NULL, 15),
(105, 9, 12, 1, 1, 1, 'EditableTextField', '2013-08-11 16:08:48', '2013-08-23 11:59:48', 'EditableTextField9', 'Über dich', NULL, 6, 1, NULL, 'a:0:{}', 'a:6:{s:10:"ExtraClass";s:0:"";s:10:"RightTitle";s:0:"";s:9:"MinLength";s:0:"";s:9:"MaxLength";s:0:"";s:4:"Rows";s:1:"9";s:10:"ShowOnLoad";s:4:"Show";}', NULL, 15),
(106, 26, 9, 1, 1, 1, 'EditableFileField', '2013-08-22 16:04:13', '2013-08-23 11:59:48', 'EditableFileField26', 'Bilder ( Bitte Name in der Datei angeben)', NULL, 8, 0, NULL, 'a:0:{}', 'a:3:{s:10:"ExtraClass";s:0:"";s:10:"RightTitle";s:0:"";s:10:"ShowOnLoad";s:4:"Show";}', NULL, 15),
(107, 27, 6, 1, 1, 1, 'EditableFileField', '2013-08-23 11:56:14', '2013-08-23 11:59:49', 'EditableFileField27', NULL, NULL, 9, 0, NULL, 'a:1:{i:0;a:4:{s:7:"Display";s:4:"Show";s:14:"ConditionField";s:19:"EditableFileField26";s:15:"ConditionOption";s:10:"IsNotBlank";s:5:"Value";s:0:"";}}', 'a:3:{s:10:"ExtraClass";s:0:"";s:10:"RightTitle";s:0:"";s:10:"ShowOnLoad";s:4:"Hide";}', NULL, 15),
(108, 28, 5, 1, 1, 1, 'EditableFileField', '2013-08-23 11:57:22', '2013-08-23 11:59:49', 'EditableFileField28', NULL, NULL, 10, 0, NULL, 'a:1:{i:0;a:4:{s:7:"Display";s:4:"Show";s:14:"ConditionField";s:19:"EditableFileField27";s:15:"ConditionOption";s:10:"IsNotBlank";s:5:"Value";s:0:"";}}', 'a:3:{s:10:"ExtraClass";s:0:"";s:10:"RightTitle";s:0:"";s:10:"ShowOnLoad";s:4:"Show";}', NULL, 15),
(109, 4, 13, 1, 1, 1, 'EditableTextField', '2013-08-11 16:08:21', '2013-08-23 12:01:13', 'EditableTextField4', 'Realname', NULL, 1, 1, NULL, 'a:0:{}', 'a:6:{s:10:"ExtraClass";s:0:"";s:10:"RightTitle";s:0:"";s:9:"MinLength";s:0:"";s:9:"MaxLength";s:2:"20";s:4:"Rows";s:1:"1";s:10:"ShowOnLoad";s:4:"Show";}', NULL, 15),
(110, 5, 13, 1, 1, 1, 'EditableTextField', '2013-08-11 16:08:30', '2013-08-23 12:01:13', 'EditableTextField5', 'Maidname', NULL, 2, 1, NULL, 'a:0:{}', 'a:6:{s:10:"ExtraClass";s:0:"";s:10:"RightTitle";s:0:"";s:9:"MinLength";s:0:"";s:9:"MaxLength";s:2:"20";s:4:"Rows";s:1:"1";s:10:"ShowOnLoad";s:4:"Show";}', NULL, 15),
(111, 6, 13, 1, 1, 1, 'EditableTextField', '2013-08-11 16:08:35', '2013-08-23 12:01:13', 'EditableTextField6', 'Alter', NULL, 3, 1, NULL, 'a:0:{}', 'a:6:{s:10:"ExtraClass";s:0:"";s:10:"RightTitle";s:0:"";s:9:"MinLength";s:0:"";s:9:"MaxLength";s:1:"3";s:4:"Rows";s:1:"1";s:10:"ShowOnLoad";s:4:"Show";}', NULL, 15),
(112, 7, 13, 1, 1, 1, 'EditableTextField', '2013-08-11 16:08:38', '2013-08-23 12:01:13', 'EditableTextField7', 'Wohnort', NULL, 4, 1, NULL, 'a:0:{}', 'a:6:{s:10:"ExtraClass";s:0:"";s:10:"RightTitle";s:0:"";s:9:"MinLength";s:0:"";s:9:"MaxLength";s:2:"20";s:4:"Rows";s:1:"1";s:10:"ShowOnLoad";s:4:"Show";}', NULL, 15),
(113, 8, 13, 1, 1, 1, 'EditableEmailField', '2013-08-11 16:08:42', '2013-08-23 12:01:14', 'EditableEmailField8', 'E-Mail Adresse', NULL, 5, 1, NULL, 'a:0:{}', 'a:3:{s:10:"ExtraClass";s:0:"";s:10:"RightTitle";s:0:"";s:10:"ShowOnLoad";s:4:"Show";}', NULL, 15),
(114, 9, 13, 1, 1, 1, 'EditableTextField', '2013-08-11 16:08:48', '2013-08-23 12:01:14', 'EditableTextField9', 'Über dich', NULL, 6, 1, NULL, 'a:0:{}', 'a:6:{s:10:"ExtraClass";s:0:"";s:10:"RightTitle";s:0:"";s:9:"MinLength";s:0:"";s:9:"MaxLength";s:0:"";s:4:"Rows";s:1:"9";s:10:"ShowOnLoad";s:4:"Show";}', NULL, 15),
(115, 26, 10, 1, 1, 1, 'EditableFileField', '2013-08-22 16:04:13', '2013-08-23 12:01:14', 'EditableFileField26', 'Bilder ( Bitte Name in der Datei angeben)', NULL, 8, 0, NULL, 'a:0:{}', 'a:3:{s:10:"ExtraClass";s:0:"";s:10:"RightTitle";s:0:"";s:10:"ShowOnLoad";s:4:"Show";}', NULL, 15),
(116, 29, 1, 0, 1, 0, 'EditableFileField', '2013-08-23 12:11:34', '2013-08-23 12:11:34', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, 0),
(117, 29, 2, 0, 1, 0, 'EditableFileField', '2013-08-23 12:11:34', '2013-08-23 12:11:34', 'EditableFileField29', NULL, NULL, 9, 0, NULL, NULL, NULL, NULL, 15),
(118, 4, 14, 1, 1, 1, 'EditableTextField', '2013-08-11 16:08:21', '2013-08-23 12:11:46', 'EditableTextField4', 'Realname', NULL, 1, 1, NULL, 'a:0:{}', 'a:6:{s:10:"ExtraClass";s:0:"";s:10:"RightTitle";s:0:"";s:9:"MinLength";s:0:"";s:9:"MaxLength";s:2:"20";s:4:"Rows";s:1:"1";s:10:"ShowOnLoad";s:4:"Show";}', NULL, 15),
(119, 5, 14, 1, 1, 1, 'EditableTextField', '2013-08-11 16:08:30', '2013-08-23 12:11:46', 'EditableTextField5', 'Maidname', NULL, 2, 1, NULL, 'a:0:{}', 'a:6:{s:10:"ExtraClass";s:0:"";s:10:"RightTitle";s:0:"";s:9:"MinLength";s:0:"";s:9:"MaxLength";s:2:"20";s:4:"Rows";s:1:"1";s:10:"ShowOnLoad";s:4:"Show";}', NULL, 15),
(120, 6, 14, 1, 1, 1, 'EditableTextField', '2013-08-11 16:08:35', '2013-08-23 12:11:46', 'EditableTextField6', 'Alter', NULL, 3, 1, NULL, 'a:0:{}', 'a:6:{s:10:"ExtraClass";s:0:"";s:10:"RightTitle";s:0:"";s:9:"MinLength";s:0:"";s:9:"MaxLength";s:1:"3";s:4:"Rows";s:1:"1";s:10:"ShowOnLoad";s:4:"Show";}', NULL, 15),
(121, 7, 14, 1, 1, 1, 'EditableTextField', '2013-08-11 16:08:38', '2013-08-23 12:11:46', 'EditableTextField7', 'Wohnort', NULL, 4, 1, NULL, 'a:0:{}', 'a:6:{s:10:"ExtraClass";s:0:"";s:10:"RightTitle";s:0:"";s:9:"MinLength";s:0:"";s:9:"MaxLength";s:2:"20";s:4:"Rows";s:1:"1";s:10:"ShowOnLoad";s:4:"Show";}', NULL, 15),
(122, 8, 14, 1, 1, 1, 'EditableEmailField', '2013-08-11 16:08:42', '2013-08-23 12:11:46', 'EditableEmailField8', 'E-Mail Adresse', NULL, 5, 1, NULL, 'a:0:{}', 'a:3:{s:10:"ExtraClass";s:0:"";s:10:"RightTitle";s:0:"";s:10:"ShowOnLoad";s:4:"Show";}', NULL, 15),
(123, 9, 14, 1, 1, 1, 'EditableTextField', '2013-08-11 16:08:48', '2013-08-23 12:11:46', 'EditableTextField9', 'Über dich', NULL, 6, 1, NULL, 'a:0:{}', 'a:6:{s:10:"ExtraClass";s:0:"";s:10:"RightTitle";s:0:"";s:9:"MinLength";s:0:"";s:9:"MaxLength";s:0:"";s:4:"Rows";s:1:"9";s:10:"ShowOnLoad";s:4:"Show";}', NULL, 15),
(124, 26, 11, 1, 1, 1, 'EditableFileField', '2013-08-22 16:04:13', '2013-08-23 12:11:47', 'EditableFileField26', 'Bilder ( Bitte Name in der Datei angeben)', NULL, 8, 0, NULL, 'a:0:{}', 'a:3:{s:10:"ExtraClass";s:0:"";s:10:"RightTitle";s:0:"";s:10:"ShowOnLoad";s:4:"Show";}', NULL, 15),
(125, 29, 3, 1, 1, 1, 'EditableFileField', '2013-08-23 12:11:34', '2013-08-23 12:11:47', 'EditableFileField29', NULL, NULL, 9, 0, NULL, 'a:1:{i:0;a:4:{s:7:"Display";s:4:"Show";s:14:"ConditionField";s:19:"EditableFileField26";s:15:"ConditionOption";s:10:"IsNotBlank";s:5:"Value";s:0:"";}}', 'a:3:{s:10:"ExtraClass";s:0:"";s:10:"RightTitle";s:0:"";s:10:"ShowOnLoad";s:4:"Show";}', NULL, 15),
(126, 4, 15, 1, 1, 1, 'EditableTextField', '2013-08-11 16:08:21', '2013-08-23 12:13:20', 'EditableTextField4', 'Realname', NULL, 1, 1, NULL, 'a:0:{}', 'a:6:{s:10:"ExtraClass";s:0:"";s:10:"RightTitle";s:0:"";s:9:"MinLength";s:0:"";s:9:"MaxLength";s:2:"20";s:4:"Rows";s:1:"1";s:10:"ShowOnLoad";s:4:"Show";}', NULL, 15),
(127, 5, 15, 1, 1, 1, 'EditableTextField', '2013-08-11 16:08:30', '2013-08-23 12:13:20', 'EditableTextField5', 'Maidname', NULL, 2, 1, NULL, 'a:0:{}', 'a:6:{s:10:"ExtraClass";s:0:"";s:10:"RightTitle";s:0:"";s:9:"MinLength";s:0:"";s:9:"MaxLength";s:2:"20";s:4:"Rows";s:1:"1";s:10:"ShowOnLoad";s:4:"Show";}', NULL, 15),
(128, 6, 15, 1, 1, 1, 'EditableTextField', '2013-08-11 16:08:35', '2013-08-23 12:13:20', 'EditableTextField6', 'Alter', NULL, 3, 1, NULL, 'a:0:{}', 'a:6:{s:10:"ExtraClass";s:0:"";s:10:"RightTitle";s:0:"";s:9:"MinLength";s:0:"";s:9:"MaxLength";s:1:"3";s:4:"Rows";s:1:"1";s:10:"ShowOnLoad";s:4:"Show";}', NULL, 15),
(129, 7, 15, 1, 1, 1, 'EditableTextField', '2013-08-11 16:08:38', '2013-08-23 12:13:20', 'EditableTextField7', 'Wohnort', NULL, 4, 1, NULL, 'a:0:{}', 'a:6:{s:10:"ExtraClass";s:0:"";s:10:"RightTitle";s:0:"";s:9:"MinLength";s:0:"";s:9:"MaxLength";s:2:"20";s:4:"Rows";s:1:"1";s:10:"ShowOnLoad";s:4:"Show";}', NULL, 15),
(130, 8, 15, 1, 1, 1, 'EditableEmailField', '2013-08-11 16:08:42', '2013-08-23 12:13:20', 'EditableEmailField8', 'E-Mail Adresse', NULL, 5, 1, NULL, 'a:0:{}', 'a:3:{s:10:"ExtraClass";s:0:"";s:10:"RightTitle";s:0:"";s:10:"ShowOnLoad";s:4:"Show";}', NULL, 15),
(131, 9, 15, 1, 1, 1, 'EditableTextField', '2013-08-11 16:08:48', '2013-08-23 12:13:20', 'EditableTextField9', 'Über dich', NULL, 6, 1, NULL, 'a:0:{}', 'a:6:{s:10:"ExtraClass";s:0:"";s:10:"RightTitle";s:0:"";s:9:"MinLength";s:0:"";s:9:"MaxLength";s:0:"";s:4:"Rows";s:1:"9";s:10:"ShowOnLoad";s:4:"Show";}', NULL, 15),
(132, 26, 12, 1, 1, 1, 'EditableFileField', '2013-08-22 16:04:13', '2013-08-23 12:13:21', 'EditableFileField26', 'Bilder ( Bitte Name in der Datei angeben)', NULL, 8, 0, NULL, 'a:0:{}', 'a:3:{s:10:"ExtraClass";s:0:"";s:10:"RightTitle";s:0:"";s:10:"ShowOnLoad";s:4:"Show";}', NULL, 15),
(133, 29, 4, 1, 1, 1, 'EditableFileField', '2013-08-23 12:11:34', '2013-08-23 12:13:21', 'EditableFileField29', NULL, NULL, 9, 0, NULL, 'a:0:{}', 'a:3:{s:10:"ExtraClass";s:0:"";s:10:"RightTitle";s:0:"";s:10:"ShowOnLoad";s:4:"Show";}', NULL, 15),
(134, 30, 1, 0, 1, 0, 'EditableFileField', '2013-08-23 12:23:34', '2013-08-23 12:23:34', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, 0),
(135, 30, 2, 0, 1, 0, 'EditableFileField', '2013-08-23 12:23:34', '2013-08-23 12:23:35', 'EditableFileField30', NULL, NULL, 10, 0, NULL, NULL, NULL, NULL, 15),
(136, 4, 16, 1, 1, 1, 'EditableTextField', '2013-08-11 16:08:21', '2013-08-23 12:24:01', 'EditableTextField4', 'Realname', NULL, 1, 1, NULL, 'a:0:{}', 'a:6:{s:10:"ExtraClass";s:0:"";s:10:"RightTitle";s:0:"";s:9:"MinLength";s:0:"";s:9:"MaxLength";s:2:"20";s:4:"Rows";s:1:"1";s:10:"ShowOnLoad";s:4:"Show";}', NULL, 15),
(137, 5, 16, 1, 1, 1, 'EditableTextField', '2013-08-11 16:08:30', '2013-08-23 12:24:01', 'EditableTextField5', 'Maidname', NULL, 2, 1, NULL, 'a:0:{}', 'a:6:{s:10:"ExtraClass";s:0:"";s:10:"RightTitle";s:0:"";s:9:"MinLength";s:0:"";s:9:"MaxLength";s:2:"20";s:4:"Rows";s:1:"1";s:10:"ShowOnLoad";s:4:"Show";}', NULL, 15),
(138, 6, 16, 1, 1, 1, 'EditableTextField', '2013-08-11 16:08:35', '2013-08-23 12:24:01', 'EditableTextField6', 'Alter', NULL, 3, 1, NULL, 'a:0:{}', 'a:6:{s:10:"ExtraClass";s:0:"";s:10:"RightTitle";s:0:"";s:9:"MinLength";s:0:"";s:9:"MaxLength";s:1:"3";s:4:"Rows";s:1:"1";s:10:"ShowOnLoad";s:4:"Show";}', NULL, 15),
(139, 7, 16, 1, 1, 1, 'EditableTextField', '2013-08-11 16:08:38', '2013-08-23 12:24:02', 'EditableTextField7', 'Wohnort', NULL, 4, 1, NULL, 'a:0:{}', 'a:6:{s:10:"ExtraClass";s:0:"";s:10:"RightTitle";s:0:"";s:9:"MinLength";s:0:"";s:9:"MaxLength";s:2:"20";s:4:"Rows";s:1:"1";s:10:"ShowOnLoad";s:4:"Show";}', NULL, 15),
(140, 8, 16, 1, 1, 1, 'EditableEmailField', '2013-08-11 16:08:42', '2013-08-23 12:24:02', 'EditableEmailField8', 'E-Mail Adresse', NULL, 5, 1, NULL, 'a:0:{}', 'a:3:{s:10:"ExtraClass";s:0:"";s:10:"RightTitle";s:0:"";s:10:"ShowOnLoad";s:4:"Show";}', NULL, 15),
(141, 9, 16, 1, 1, 1, 'EditableTextField', '2013-08-11 16:08:48', '2013-08-23 12:24:02', 'EditableTextField9', 'Über dich', NULL, 6, 1, NULL, 'a:0:{}', 'a:6:{s:10:"ExtraClass";s:0:"";s:10:"RightTitle";s:0:"";s:9:"MinLength";s:0:"";s:9:"MaxLength";s:0:"";s:4:"Rows";s:1:"9";s:10:"ShowOnLoad";s:4:"Show";}', NULL, 15),
(142, 26, 13, 1, 1, 1, 'EditableFileField', '2013-08-22 16:04:13', '2013-08-23 12:24:02', 'EditableFileField26', 'Bilder (Nicht mehr als 2MB!!)', NULL, 8, 0, NULL, 'a:0:{}', 'a:3:{s:10:"ExtraClass";s:0:"";s:10:"RightTitle";s:0:"";s:10:"ShowOnLoad";s:4:"Show";}', NULL, 15),
(143, 29, 5, 1, 1, 1, 'EditableFileField', '2013-08-23 12:11:34', '2013-08-23 12:24:02', 'EditableFileField29', NULL, NULL, 9, 0, NULL, 'a:1:{i:0;a:4:{s:7:"Display";s:4:"Show";s:14:"ConditionField";s:19:"EditableFileField26";s:15:"ConditionOption";s:10:"IsNotBlank";s:5:"Value";s:0:"";}}', 'a:3:{s:10:"ExtraClass";s:0:"";s:10:"RightTitle";s:0:"";s:10:"ShowOnLoad";s:4:"Show";}', NULL, 15),
(144, 30, 3, 1, 1, 1, 'EditableFileField', '2013-08-23 12:23:34', '2013-08-23 12:24:02', 'EditableFileField30', NULL, NULL, 10, 0, NULL, 'a:1:{i:0;a:4:{s:7:"Display";s:4:"Show";s:14:"ConditionField";s:19:"EditableFileField29";s:15:"ConditionOption";s:10:"IsNotBlank";s:5:"Value";s:0:"";}}', 'a:3:{s:10:"ExtraClass";s:0:"";s:10:"RightTitle";s:0:"";s:10:"ShowOnLoad";s:4:"Show";}', NULL, 15),
(145, 4, 17, 1, 1, 1, 'EditableTextField', '2013-08-11 16:08:21', '2013-08-23 12:25:35', 'EditableTextField4', 'Realname', NULL, 1, 1, NULL, 'a:0:{}', 'a:6:{s:10:"ExtraClass";s:0:"";s:10:"RightTitle";s:0:"";s:9:"MinLength";s:0:"";s:9:"MaxLength";s:2:"20";s:4:"Rows";s:1:"1";s:10:"ShowOnLoad";s:4:"Show";}', NULL, 15),
(146, 5, 17, 1, 1, 1, 'EditableTextField', '2013-08-11 16:08:30', '2013-08-23 12:25:35', 'EditableTextField5', 'Maidname', NULL, 2, 1, NULL, 'a:0:{}', 'a:6:{s:10:"ExtraClass";s:0:"";s:10:"RightTitle";s:0:"";s:9:"MinLength";s:0:"";s:9:"MaxLength";s:2:"20";s:4:"Rows";s:1:"1";s:10:"ShowOnLoad";s:4:"Show";}', NULL, 15),
(147, 6, 17, 1, 1, 1, 'EditableTextField', '2013-08-11 16:08:35', '2013-08-23 12:25:36', 'EditableTextField6', 'Alter', NULL, 3, 1, NULL, 'a:0:{}', 'a:6:{s:10:"ExtraClass";s:0:"";s:10:"RightTitle";s:0:"";s:9:"MinLength";s:0:"";s:9:"MaxLength";s:1:"3";s:4:"Rows";s:1:"1";s:10:"ShowOnLoad";s:4:"Show";}', NULL, 15),
(148, 7, 17, 1, 1, 1, 'EditableTextField', '2013-08-11 16:08:38', '2013-08-23 12:25:36', 'EditableTextField7', 'Wohnort', NULL, 4, 1, NULL, 'a:0:{}', 'a:6:{s:10:"ExtraClass";s:0:"";s:10:"RightTitle";s:0:"";s:9:"MinLength";s:0:"";s:9:"MaxLength";s:2:"20";s:4:"Rows";s:1:"1";s:10:"ShowOnLoad";s:4:"Show";}', NULL, 15),
(149, 8, 17, 1, 1, 1, 'EditableEmailField', '2013-08-11 16:08:42', '2013-08-23 12:25:36', 'EditableEmailField8', 'E-Mail Adresse', NULL, 5, 1, NULL, 'a:0:{}', 'a:3:{s:10:"ExtraClass";s:0:"";s:10:"RightTitle";s:0:"";s:10:"ShowOnLoad";s:4:"Show";}', NULL, 15),
(150, 9, 17, 1, 1, 1, 'EditableTextField', '2013-08-11 16:08:48', '2013-08-23 12:25:36', 'EditableTextField9', 'Über dich', NULL, 6, 1, NULL, 'a:0:{}', 'a:6:{s:10:"ExtraClass";s:0:"";s:10:"RightTitle";s:0:"";s:9:"MinLength";s:0:"";s:9:"MaxLength";s:0:"";s:4:"Rows";s:1:"9";s:10:"ShowOnLoad";s:4:"Show";}', NULL, 15),
(151, 26, 14, 1, 1, 1, 'EditableFileField', '2013-08-22 16:04:13', '2013-08-23 12:25:36', 'EditableFileField26', 'Bilder (Nicht mehr als 2MB!!)', NULL, 8, 0, NULL, 'a:0:{}', 'a:3:{s:10:"ExtraClass";s:0:"";s:10:"RightTitle";s:3:"2mb";s:10:"ShowOnLoad";s:4:"Show";}', NULL, 15),
(152, 29, 6, 1, 1, 1, 'EditableFileField', '2013-08-23 12:11:34', '2013-08-23 12:25:36', 'EditableFileField29', NULL, NULL, 9, 0, NULL, 'a:1:{i:0;a:4:{s:7:"Display";s:4:"Show";s:14:"ConditionField";s:19:"EditableFileField26";s:15:"ConditionOption";s:10:"IsNotBlank";s:5:"Value";s:0:"";}}', 'a:3:{s:10:"ExtraClass";s:0:"";s:10:"RightTitle";s:0:"";s:10:"ShowOnLoad";s:4:"Show";}', NULL, 15),
(153, 30, 4, 1, 1, 1, 'EditableFileField', '2013-08-23 12:23:34', '2013-08-23 12:25:36', 'EditableFileField30', NULL, NULL, 10, 0, NULL, 'a:1:{i:0;a:4:{s:7:"Display";s:4:"Show";s:14:"ConditionField";s:19:"EditableFileField29";s:15:"ConditionOption";s:10:"IsNotBlank";s:5:"Value";s:0:"";}}', 'a:3:{s:10:"ExtraClass";s:0:"";s:10:"RightTitle";s:0:"";s:10:"ShowOnLoad";s:4:"Show";}', NULL, 15),
(154, 4, 18, 1, 1, 1, 'EditableTextField', '2013-08-11 16:08:21', '2013-08-23 12:27:37', 'EditableTextField4', 'Realname', NULL, 1, 1, NULL, 'a:0:{}', 'a:6:{s:10:"ExtraClass";s:0:"";s:10:"RightTitle";s:0:"";s:9:"MinLength";s:0:"";s:9:"MaxLength";s:2:"20";s:4:"Rows";s:1:"1";s:10:"ShowOnLoad";s:4:"Show";}', NULL, 15),
(155, 5, 18, 1, 1, 1, 'EditableTextField', '2013-08-11 16:08:30', '2013-08-23 12:27:37', 'EditableTextField5', 'Maidname', NULL, 2, 1, NULL, 'a:0:{}', 'a:6:{s:10:"ExtraClass";s:0:"";s:10:"RightTitle";s:0:"";s:9:"MinLength";s:0:"";s:9:"MaxLength";s:2:"20";s:4:"Rows";s:1:"1";s:10:"ShowOnLoad";s:4:"Show";}', NULL, 15),
(156, 6, 18, 1, 1, 1, 'EditableTextField', '2013-08-11 16:08:35', '2013-08-23 12:27:37', 'EditableTextField6', 'Alter', NULL, 3, 1, NULL, 'a:0:{}', 'a:6:{s:10:"ExtraClass";s:0:"";s:10:"RightTitle";s:0:"";s:9:"MinLength";s:0:"";s:9:"MaxLength";s:1:"3";s:4:"Rows";s:1:"1";s:10:"ShowOnLoad";s:4:"Show";}', NULL, 15),
(157, 7, 18, 1, 1, 1, 'EditableTextField', '2013-08-11 16:08:38', '2013-08-23 12:27:37', 'EditableTextField7', 'Wohnort', NULL, 4, 1, NULL, 'a:0:{}', 'a:6:{s:10:"ExtraClass";s:0:"";s:10:"RightTitle";s:0:"";s:9:"MinLength";s:0:"";s:9:"MaxLength";s:2:"20";s:4:"Rows";s:1:"1";s:10:"ShowOnLoad";s:4:"Show";}', NULL, 15),
(158, 8, 18, 1, 1, 1, 'EditableEmailField', '2013-08-11 16:08:42', '2013-08-23 12:27:38', 'EditableEmailField8', 'E-Mail Adresse', NULL, 5, 1, NULL, 'a:0:{}', 'a:3:{s:10:"ExtraClass";s:0:"";s:10:"RightTitle";s:0:"";s:10:"ShowOnLoad";s:4:"Show";}', NULL, 15),
(159, 9, 18, 1, 1, 1, 'EditableTextField', '2013-08-11 16:08:48', '2013-08-23 12:27:38', 'EditableTextField9', 'Über dich', NULL, 6, 1, NULL, 'a:0:{}', 'a:6:{s:10:"ExtraClass";s:0:"";s:10:"RightTitle";s:0:"";s:9:"MinLength";s:0:"";s:9:"MaxLength";s:0:"";s:4:"Rows";s:1:"9";s:10:"ShowOnLoad";s:4:"Show";}', NULL, 15),
(160, 26, 15, 1, 1, 1, 'EditableFileField', '2013-08-22 16:04:13', '2013-08-23 12:27:38', 'EditableFileField26', 'Bilder (Bitte den Namen in Datei angeben)', NULL, 8, 0, NULL, 'a:0:{}', 'a:3:{s:10:"ExtraClass";s:0:"";s:10:"RightTitle";s:30:"Bilder nicht größer als 2MB!";s:10:"ShowOnLoad";s:4:"Show";}', NULL, 15),
(161, 29, 7, 1, 1, 1, 'EditableFileField', '2013-08-23 12:11:34', '2013-08-23 12:27:38', 'EditableFileField29', NULL, NULL, 9, 0, NULL, 'a:1:{i:0;a:4:{s:7:"Display";s:4:"Show";s:14:"ConditionField";s:19:"EditableFileField26";s:15:"ConditionOption";s:10:"IsNotBlank";s:5:"Value";s:0:"";}}', 'a:3:{s:10:"ExtraClass";s:0:"";s:10:"RightTitle";s:0:"";s:10:"ShowOnLoad";s:4:"Show";}', NULL, 15),
(162, 30, 5, 1, 1, 1, 'EditableFileField', '2013-08-23 12:23:34', '2013-08-23 12:27:38', 'EditableFileField30', NULL, NULL, 10, 0, NULL, 'a:1:{i:0;a:4:{s:7:"Display";s:4:"Show";s:14:"ConditionField";s:19:"EditableFileField29";s:15:"ConditionOption";s:10:"IsNotBlank";s:5:"Value";s:0:"";}}', 'a:3:{s:10:"ExtraClass";s:0:"";s:10:"RightTitle";s:0:"";s:10:"ShowOnLoad";s:4:"Show";}', NULL, 15),
(163, 4, 19, 1, 1, 1, 'EditableTextField', '2013-08-11 16:08:21', '2013-08-23 12:30:31', 'EditableTextField4', 'Realname', NULL, 1, 1, NULL, 'a:0:{}', 'a:6:{s:10:"ExtraClass";s:0:"";s:10:"RightTitle";s:0:"";s:9:"MinLength";s:0:"";s:9:"MaxLength";s:2:"20";s:4:"Rows";s:1:"1";s:10:"ShowOnLoad";s:4:"Show";}', NULL, 15),
(164, 5, 19, 1, 1, 1, 'EditableTextField', '2013-08-11 16:08:30', '2013-08-23 12:30:31', 'EditableTextField5', 'Maidname', NULL, 2, 1, NULL, 'a:0:{}', 'a:6:{s:10:"ExtraClass";s:0:"";s:10:"RightTitle";s:0:"";s:9:"MinLength";s:0:"";s:9:"MaxLength";s:2:"20";s:4:"Rows";s:1:"1";s:10:"ShowOnLoad";s:4:"Show";}', NULL, 15),
(165, 6, 19, 1, 1, 1, 'EditableTextField', '2013-08-11 16:08:35', '2013-08-23 12:30:31', 'EditableTextField6', 'Alter', NULL, 3, 1, NULL, 'a:0:{}', 'a:6:{s:10:"ExtraClass";s:0:"";s:10:"RightTitle";s:0:"";s:9:"MinLength";s:0:"";s:9:"MaxLength";s:1:"3";s:4:"Rows";s:1:"1";s:10:"ShowOnLoad";s:4:"Show";}', NULL, 15);
INSERT INTO `editableformfield_versions` (`ID`, `RecordID`, `Version`, `WasPublished`, `AuthorID`, `PublisherID`, `ClassName`, `Created`, `LastEdited`, `Name`, `Title`, `Default`, `Sort`, `Required`, `CustomErrorMessage`, `CustomRules`, `CustomSettings`, `CustomParameter`, `ParentID`) VALUES
(166, 7, 19, 1, 1, 1, 'EditableTextField', '2013-08-11 16:08:38', '2013-08-23 12:30:31', 'EditableTextField7', 'Wohnort', NULL, 4, 1, NULL, 'a:0:{}', 'a:6:{s:10:"ExtraClass";s:0:"";s:10:"RightTitle";s:0:"";s:9:"MinLength";s:0:"";s:9:"MaxLength";s:2:"20";s:4:"Rows";s:1:"1";s:10:"ShowOnLoad";s:4:"Show";}', NULL, 15),
(167, 8, 19, 1, 1, 1, 'EditableEmailField', '2013-08-11 16:08:42', '2013-08-23 12:30:31', 'EditableEmailField8', 'E-Mail Adresse', NULL, 5, 1, NULL, 'a:0:{}', 'a:3:{s:10:"ExtraClass";s:0:"";s:10:"RightTitle";s:0:"";s:10:"ShowOnLoad";s:4:"Show";}', NULL, 15),
(168, 9, 19, 1, 1, 1, 'EditableTextField', '2013-08-11 16:08:48', '2013-08-23 12:30:31', 'EditableTextField9', 'Über dich', NULL, 6, 1, NULL, 'a:0:{}', 'a:6:{s:10:"ExtraClass";s:0:"";s:10:"RightTitle";s:0:"";s:9:"MinLength";s:0:"";s:9:"MaxLength";s:0:"";s:4:"Rows";s:1:"9";s:10:"ShowOnLoad";s:4:"Show";}', NULL, 15),
(169, 26, 16, 1, 1, 1, 'EditableFileField', '2013-08-22 16:04:13', '2013-08-23 12:30:31', 'EditableFileField26', 'Bilder (Bitte den Namen in Datei angeben)', NULL, 8, 0, NULL, 'a:0:{}', 'a:3:{s:10:"ExtraClass";s:0:"";s:10:"RightTitle";s:30:"Bilder nicht größer als 2MB!";s:10:"ShowOnLoad";s:4:"Show";}', NULL, 15),
(170, 29, 8, 1, 1, 1, 'EditableFileField', '2013-08-23 12:11:34', '2013-08-23 12:30:31', 'EditableFileField29', NULL, NULL, 9, 0, NULL, 'a:1:{i:0;a:4:{s:7:"Display";s:4:"Show";s:14:"ConditionField";s:19:"EditableFileField26";s:15:"ConditionOption";s:10:"IsNotBlank";s:5:"Value";s:0:"";}}', 'a:3:{s:10:"ExtraClass";s:0:"";s:10:"RightTitle";s:0:"";s:10:"ShowOnLoad";s:4:"Show";}', NULL, 15),
(171, 30, 6, 1, 1, 1, 'EditableFileField', '2013-08-23 12:23:34', '2013-08-23 12:30:31', 'EditableFileField30', NULL, NULL, 10, 0, NULL, 'a:1:{i:0;a:4:{s:7:"Display";s:4:"Show";s:14:"ConditionField";s:19:"EditableFileField29";s:15:"ConditionOption";s:10:"IsNotBlank";s:5:"Value";s:0:"";}}', 'a:3:{s:10:"ExtraClass";s:0:"";s:10:"RightTitle";s:0:"";s:10:"ShowOnLoad";s:4:"Show";}', NULL, 15),
(172, 4, 20, 1, 1, 1, 'EditableTextField', '2013-08-11 16:08:21', '2013-08-23 12:31:11', 'EditableTextField4', 'Realname', NULL, 1, 1, NULL, 'a:0:{}', 'a:6:{s:10:"ExtraClass";s:0:"";s:10:"RightTitle";s:0:"";s:9:"MinLength";s:0:"";s:9:"MaxLength";s:2:"20";s:4:"Rows";s:1:"1";s:10:"ShowOnLoad";s:4:"Show";}', NULL, 15),
(173, 5, 20, 1, 1, 1, 'EditableTextField', '2013-08-11 16:08:30', '2013-08-23 12:31:11', 'EditableTextField5', 'Maidname', NULL, 2, 1, NULL, 'a:0:{}', 'a:6:{s:10:"ExtraClass";s:0:"";s:10:"RightTitle";s:0:"";s:9:"MinLength";s:0:"";s:9:"MaxLength";s:2:"20";s:4:"Rows";s:1:"1";s:10:"ShowOnLoad";s:4:"Show";}', NULL, 15),
(174, 6, 20, 1, 1, 1, 'EditableTextField', '2013-08-11 16:08:35', '2013-08-23 12:31:11', 'EditableTextField6', 'Alter', NULL, 3, 1, NULL, 'a:0:{}', 'a:6:{s:10:"ExtraClass";s:0:"";s:10:"RightTitle";s:0:"";s:9:"MinLength";s:0:"";s:9:"MaxLength";s:1:"3";s:4:"Rows";s:1:"1";s:10:"ShowOnLoad";s:4:"Show";}', NULL, 15),
(175, 7, 20, 1, 1, 1, 'EditableTextField', '2013-08-11 16:08:38', '2013-08-23 12:31:12', 'EditableTextField7', 'Wohnort', NULL, 4, 1, NULL, 'a:0:{}', 'a:6:{s:10:"ExtraClass";s:0:"";s:10:"RightTitle";s:0:"";s:9:"MinLength";s:0:"";s:9:"MaxLength";s:2:"20";s:4:"Rows";s:1:"1";s:10:"ShowOnLoad";s:4:"Show";}', NULL, 15),
(176, 8, 20, 1, 1, 1, 'EditableEmailField', '2013-08-11 16:08:42', '2013-08-23 12:31:12', 'EditableEmailField8', 'E-Mail Adresse', NULL, 5, 1, NULL, 'a:0:{}', 'a:3:{s:10:"ExtraClass";s:0:"";s:10:"RightTitle";s:0:"";s:10:"ShowOnLoad";s:4:"Show";}', NULL, 15),
(177, 9, 20, 1, 1, 1, 'EditableTextField', '2013-08-11 16:08:48', '2013-08-23 12:31:12', 'EditableTextField9', 'Über dich', NULL, 6, 1, NULL, 'a:0:{}', 'a:6:{s:10:"ExtraClass";s:0:"";s:10:"RightTitle";s:0:"";s:9:"MinLength";s:0:"";s:9:"MaxLength";s:0:"";s:4:"Rows";s:1:"9";s:10:"ShowOnLoad";s:4:"Show";}', NULL, 15),
(178, 26, 17, 1, 1, 1, 'EditableFileField', '2013-08-22 16:04:13', '2013-08-23 12:31:12', 'EditableFileField26', 'Bilder (Bitte den Namen in Datei angeben)', NULL, 8, 0, NULL, 'a:0:{}', 'a:3:{s:10:"ExtraClass";s:0:"";s:10:"RightTitle";s:30:"Bilder nicht größer als 2MB!";s:10:"ShowOnLoad";s:4:"Show";}', NULL, 15),
(179, 29, 9, 1, 1, 1, 'EditableFileField', '2013-08-23 12:11:34', '2013-08-23 12:31:12', 'EditableFileField29', NULL, NULL, 9, 0, NULL, 'a:1:{i:0;a:4:{s:7:"Display";s:4:"Show";s:14:"ConditionField";s:19:"EditableFileField26";s:15:"ConditionOption";s:10:"IsNotBlank";s:5:"Value";s:0:"";}}', 'a:3:{s:10:"ExtraClass";s:0:"";s:10:"RightTitle";s:0:"";s:10:"ShowOnLoad";s:4:"Show";}', NULL, 15),
(180, 30, 7, 1, 1, 1, 'EditableFileField', '2013-08-23 12:23:34', '2013-08-23 12:31:12', 'EditableFileField30', NULL, NULL, 10, 0, NULL, 'a:1:{i:0;a:4:{s:7:"Display";s:4:"Show";s:14:"ConditionField";s:19:"EditableFileField29";s:15:"ConditionOption";s:10:"IsNotBlank";s:5:"Value";s:0:"";}}', 'a:3:{s:10:"ExtraClass";s:0:"";s:10:"RightTitle";s:0:"";s:10:"ShowOnLoad";s:4:"Show";}', NULL, 15);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `editableoption`
--

CREATE TABLE IF NOT EXISTS `editableoption` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ClassName` enum('EditableOption') CHARACTER SET utf8 DEFAULT 'EditableOption',
  `Created` datetime DEFAULT NULL,
  `LastEdited` datetime DEFAULT NULL,
  `Name` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `Title` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `Default` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `Sort` int(11) NOT NULL DEFAULT '0',
  `Version` int(11) NOT NULL DEFAULT '0',
  `ParentID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `ParentID` (`ParentID`),
  KEY `ClassName` (`ClassName`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `editableoption_live`
--

CREATE TABLE IF NOT EXISTS `editableoption_live` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ClassName` enum('EditableOption') CHARACTER SET utf8 DEFAULT 'EditableOption',
  `Created` datetime DEFAULT NULL,
  `LastEdited` datetime DEFAULT NULL,
  `Name` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `Title` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `Default` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `Sort` int(11) NOT NULL DEFAULT '0',
  `Version` int(11) NOT NULL DEFAULT '0',
  `ParentID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `ParentID` (`ParentID`),
  KEY `ClassName` (`ClassName`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `editableoption_versions`
--

CREATE TABLE IF NOT EXISTS `editableoption_versions` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `RecordID` int(11) NOT NULL DEFAULT '0',
  `Version` int(11) NOT NULL DEFAULT '0',
  `WasPublished` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `AuthorID` int(11) NOT NULL DEFAULT '0',
  `PublisherID` int(11) NOT NULL DEFAULT '0',
  `ClassName` enum('EditableOption') CHARACTER SET utf8 DEFAULT 'EditableOption',
  `Created` datetime DEFAULT NULL,
  `LastEdited` datetime DEFAULT NULL,
  `Name` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `Title` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `Default` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `Sort` int(11) NOT NULL DEFAULT '0',
  `ParentID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `RecordID_Version` (`RecordID`,`Version`),
  KEY `RecordID` (`RecordID`),
  KEY `Version` (`Version`),
  KEY `AuthorID` (`AuthorID`),
  KEY `PublisherID` (`PublisherID`),
  KEY `ParentID` (`ParentID`),
  KEY `ClassName` (`ClassName`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `email_bouncerecord`
--

CREATE TABLE IF NOT EXISTS `email_bouncerecord` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ClassName` enum('Email_BounceRecord') CHARACTER SET utf8 DEFAULT 'Email_BounceRecord',
  `Created` datetime DEFAULT NULL,
  `LastEdited` datetime DEFAULT NULL,
  `BounceEmail` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `BounceTime` datetime DEFAULT NULL,
  `BounceMessage` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `MemberID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `MemberID` (`MemberID`),
  KEY `ClassName` (`ClassName`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `errorpage`
--

CREATE TABLE IF NOT EXISTS `errorpage` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ErrorCode` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Daten für Tabelle `errorpage`
--

INSERT INTO `errorpage` (`ID`, `ErrorCode`) VALUES
(4, 404),
(5, 500);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `errorpage_live`
--

CREATE TABLE IF NOT EXISTS `errorpage_live` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ErrorCode` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Daten für Tabelle `errorpage_live`
--

INSERT INTO `errorpage_live` (`ID`, `ErrorCode`) VALUES
(4, 404),
(5, 500);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `errorpage_versions`
--

CREATE TABLE IF NOT EXISTS `errorpage_versions` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `RecordID` int(11) NOT NULL DEFAULT '0',
  `Version` int(11) NOT NULL DEFAULT '0',
  `ErrorCode` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  UNIQUE KEY `RecordID_Version` (`RecordID`,`Version`),
  KEY `RecordID` (`RecordID`),
  KEY `Version` (`Version`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `file`
--

CREATE TABLE IF NOT EXISTS `file` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ClassName` enum('File','Folder','Image','Image_Cached') CHARACTER SET utf8 DEFAULT 'File',
  `Created` datetime DEFAULT NULL,
  `LastEdited` datetime DEFAULT NULL,
  `Name` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `Title` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `Filename` mediumtext CHARACTER SET utf8,
  `Content` mediumtext CHARACTER SET utf8,
  `ShowInSearch` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `ParentID` int(11) NOT NULL DEFAULT '0',
  `OwnerID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `ParentID` (`ParentID`),
  KEY `OwnerID` (`OwnerID`),
  KEY `ClassName` (`ClassName`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=105 ;

--
-- Daten für Tabelle `file`
--

INSERT INTO `file` (`ID`, `ClassName`, `Created`, `LastEdited`, `Name`, `Title`, `Filename`, `Content`, `ShowInSearch`, `ParentID`, `OwnerID`) VALUES
(1, 'Folder', '2013-08-21 12:55:00', '2013-08-21 12:55:00', 'cwsoft-foldergallery', 'cwsoft-foldergallery', 'assets/cwsoft-foldergallery/', NULL, 1, 0, 1),
(2, 'Folder', '2013-08-21 14:55:10', '2013-08-21 14:55:10', 'Cafe Banner', 'Cafe Banner', 'assets/Cafe Banner/', NULL, 1, 0, 1),
(3, 'Image', '2013-08-21 14:55:10', '2013-08-21 14:55:10', 'gruppe1.jpg', 'gruppe1.jpg', 'assets/Cafe Banner/gruppe1.jpg', NULL, 1, 2, 1),
(4, 'Image', '2013-08-21 14:55:10', '2013-08-21 14:55:10', 'gruppe10.JPG', 'gruppe10.JPG', 'assets/Cafe Banner/gruppe10.JPG', NULL, 1, 2, 1),
(5, 'Image', '2013-08-21 14:55:10', '2013-08-21 14:55:10', 'gruppe2.jpg', 'gruppe2.jpg', 'assets/Cafe Banner/gruppe2.jpg', NULL, 1, 2, 1),
(6, 'Image', '2013-08-21 14:55:10', '2013-08-21 14:55:10', 'gruppe3.jpg', 'gruppe3.jpg', 'assets/Cafe Banner/gruppe3.jpg', NULL, 1, 2, 1),
(7, 'Image', '2013-08-21 14:55:10', '2013-08-21 14:55:10', 'gruppe4.jpg', 'gruppe4.jpg', 'assets/Cafe Banner/gruppe4.jpg', NULL, 1, 2, 1),
(8, 'Image', '2013-08-21 14:55:10', '2013-08-21 14:55:10', 'gruppe5.jpg', 'gruppe5.jpg', 'assets/Cafe Banner/gruppe5.jpg', NULL, 1, 2, 1),
(9, 'Image', '2013-08-21 14:55:10', '2013-08-21 14:55:10', 'gruppe6.JPG', 'gruppe6.JPG', 'assets/Cafe Banner/gruppe6.JPG', NULL, 1, 2, 1),
(10, 'Image', '2013-08-21 14:55:10', '2013-08-21 14:55:10', 'gruppe7.JPG', 'gruppe7.JPG', 'assets/Cafe Banner/gruppe7.JPG', NULL, 1, 2, 1),
(11, 'Image', '2013-08-21 14:55:10', '2013-08-21 14:55:10', 'gruppe8.JPG', 'gruppe8.JPG', 'assets/Cafe Banner/gruppe8.JPG', NULL, 1, 2, 1),
(12, 'Image', '2013-08-21 14:55:11', '2013-08-21 14:55:11', 'gruppe9.JPG', 'gruppe9.JPG', 'assets/Cafe Banner/gruppe9.JPG', NULL, 1, 2, 1),
(13, 'Image', '2013-08-21 14:55:11', '2013-08-21 14:55:11', 'k', 'k', 'assets/Cafe Banner/k', NULL, 1, 2, 1),
(14, 'Image', '2013-08-21 14:55:11', '2013-08-21 14:55:11', 'yukata.JPG', 'yukata.JPG', 'assets/Cafe Banner/yukata.JPG', NULL, 1, 2, 1),
(15, 'Folder', '2013-08-21 14:55:11', '2013-08-21 14:55:11', 'MaidProfilbilder', 'MaidProfilbilder', 'assets/MaidProfilbilder/', NULL, 1, 0, 1),
(16, 'Image', '2013-08-21 14:55:11', '2013-08-21 14:55:11', 'yusei2.jpg', 'yusei2.jpg', 'assets/MaidProfilbilder/yusei2.jpg', NULL, 1, 15, 1),
(17, 'Folder', '2013-08-21 14:55:11', '2013-08-21 14:55:11', 'Uploads', 'Uploads', 'assets/Uploads/', NULL, 1, 0, 1),
(18, 'Image', '2013-08-21 14:55:11', '2013-08-21 14:55:11', 'anne.jpg', 'anne.jpg', 'assets/Uploads/anne.jpg', NULL, 1, 17, 1),
(19, 'Image', '2013-08-21 14:55:11', '2013-08-21 14:55:11', 'chibi.jpg', 'chibi.jpg', 'assets/Uploads/chibi.jpg', NULL, 1, 17, 1),
(20, 'Image', '2013-08-21 14:55:11', '2013-08-21 14:55:11', 'yusei2.jpg', 'yusei2.jpg', 'assets/Uploads/yusei2.jpg', NULL, 1, 17, 1),
(21, 'Folder', '2013-08-21 14:55:11', '2013-08-21 14:55:11', 'Cafe Banner', 'Cafe Banner', 'assets/cwsoft-foldergallery/Cafe Banner/', NULL, 1, 1, 1),
(22, 'Image', '2013-08-21 14:55:11', '2013-08-21 14:55:11', 'gruppe1.jpg', 'gruppe1.jpg', 'assets/cwsoft-foldergallery/Cafe Banner/gruppe1.jpg', NULL, 1, 21, 1),
(23, 'Image', '2013-08-21 14:55:11', '2013-08-21 14:55:11', 'gruppe10.JPG', 'gruppe10.JPG', 'assets/cwsoft-foldergallery/Cafe Banner/gruppe10.JPG', NULL, 1, 21, 1),
(24, 'Image', '2013-08-21 14:55:11', '2013-08-21 14:55:11', 'gruppe2.jpg', 'gruppe2.jpg', 'assets/cwsoft-foldergallery/Cafe Banner/gruppe2.jpg', NULL, 1, 21, 1),
(25, 'Image', '2013-08-21 14:55:11', '2013-08-21 14:55:11', 'gruppe3.jpg', 'gruppe3.jpg', 'assets/cwsoft-foldergallery/Cafe Banner/gruppe3.jpg', NULL, 1, 21, 1),
(26, 'Image', '2013-08-21 14:55:11', '2013-08-21 14:55:11', 'gruppe4.jpg', 'gruppe4.jpg', 'assets/cwsoft-foldergallery/Cafe Banner/gruppe4.jpg', NULL, 1, 21, 1),
(27, 'Image', '2013-08-21 14:55:11', '2013-08-21 14:55:11', 'gruppe5.jpg', 'gruppe5.jpg', 'assets/cwsoft-foldergallery/Cafe Banner/gruppe5.jpg', NULL, 1, 21, 1),
(28, 'Image', '2013-08-21 14:55:11', '2013-08-21 14:55:11', 'gruppe6.JPG', 'gruppe6.JPG', 'assets/cwsoft-foldergallery/Cafe Banner/gruppe6.JPG', NULL, 1, 21, 1),
(29, 'Image', '2013-08-21 14:55:11', '2013-08-21 14:55:11', 'gruppe7.JPG', 'gruppe7.JPG', 'assets/cwsoft-foldergallery/Cafe Banner/gruppe7.JPG', NULL, 1, 21, 1),
(30, 'Image', '2013-08-21 14:55:11', '2013-08-21 14:55:11', 'gruppe8.JPG', 'gruppe8.JPG', 'assets/cwsoft-foldergallery/Cafe Banner/gruppe8.JPG', NULL, 1, 21, 1),
(31, 'Image', '2013-08-21 14:55:11', '2013-08-21 14:55:11', 'gruppe9.JPG', 'gruppe9.JPG', 'assets/cwsoft-foldergallery/Cafe Banner/gruppe9.JPG', NULL, 1, 21, 1),
(32, 'Image', '2013-08-21 14:55:11', '2013-08-21 14:55:11', 'k', 'k', 'assets/cwsoft-foldergallery/Cafe Banner/k', NULL, 1, 21, 1),
(33, 'Image', '2013-08-21 14:55:11', '2013-08-21 14:55:11', 'yukata.JPG', 'yukata.JPG', 'assets/cwsoft-foldergallery/Cafe Banner/yukata.JPG', NULL, 1, 21, 1),
(34, 'Folder', '2013-08-21 14:55:11', '2013-08-21 14:55:11', 'Maids', 'Maids', 'assets/cwsoft-foldergallery/Maids/', NULL, 1, 1, 1),
(35, 'Image', '2013-08-21 14:55:11', '2013-08-21 14:55:11', '06Momo.jpg', '06Momo.jpg', 'assets/cwsoft-foldergallery/Maids/06Momo.jpg', NULL, 1, 34, 1),
(36, 'Image', '2013-08-21 14:55:11', '2013-08-21 14:55:11', '11Rose.jpg', '11Rose.jpg', 'assets/cwsoft-foldergallery/Maids/11Rose.jpg', NULL, 1, 34, 1),
(37, 'Image', '2013-08-21 14:55:11', '2013-08-21 14:55:11', '13Jessi.jpg', '13Jessi.jpg', 'assets/cwsoft-foldergallery/Maids/13Jessi.jpg', NULL, 1, 34, 1),
(38, 'Image', '2013-08-21 14:55:12', '2013-08-21 14:55:12', '7720501.jpg', '7720501.jpg', 'assets/cwsoft-foldergallery/Maids/7720501.jpg', NULL, 1, 34, 1),
(39, 'Image', '2013-08-21 14:55:12', '2013-08-21 14:55:12', '7781377.gross.jpg', '7781377.gross.jpg', 'assets/cwsoft-foldergallery/Maids/7781377.gross.jpg', NULL, 1, 34, 1),
(40, 'Image', '2013-08-21 14:55:12', '2013-08-21 14:55:12', 'Anni1.jpg', 'Anni1.jpg', 'assets/cwsoft-foldergallery/Maids/Anni1.jpg', NULL, 1, 34, 1),
(41, 'Image', '2013-08-21 14:55:12', '2013-08-21 14:55:12', 'DSC9779.JPG', 'DSC9779.JPG', 'assets/cwsoft-foldergallery/Maids/DSC9779.JPG', NULL, 1, 34, 1),
(42, 'Image', '2013-08-21 14:55:12', '2013-08-21 14:55:12', 'Gini1.jpg', 'Gini1.jpg', 'assets/cwsoft-foldergallery/Maids/Gini1.jpg', NULL, 1, 34, 1),
(43, 'Image', '2013-08-21 14:55:12', '2013-08-21 14:55:12', 'Jenny1.jpg', 'Jenny1.jpg', 'assets/cwsoft-foldergallery/Maids/Jenny1.jpg', NULL, 1, 34, 1),
(44, 'Image', '2013-08-21 14:55:12', '2013-08-21 14:55:12', 'Jessi1.jpg', 'Jessi1.jpg', 'assets/cwsoft-foldergallery/Maids/Jessi1.jpg', NULL, 1, 34, 1),
(45, 'Image', '2013-08-21 14:55:12', '2013-08-21 14:55:12', 'Jessi2.jpg', 'Jessi2.jpg', 'assets/cwsoft-foldergallery/Maids/Jessi2.jpg', NULL, 1, 34, 1),
(46, 'Image', '2013-08-21 14:55:12', '2013-08-21 14:55:12', 'Momo1.jpg', 'Momo1.jpg', 'assets/cwsoft-foldergallery/Maids/Momo1.jpg', NULL, 1, 34, 1),
(47, 'Image', '2013-08-21 14:55:12', '2013-08-21 14:55:12', 'Rose2.jpg', 'Rose2.jpg', 'assets/cwsoft-foldergallery/Maids/Rose2.jpg', NULL, 1, 34, 1),
(48, 'Image', '2013-08-21 14:55:12', '2013-08-21 14:55:12', 'Sophie1.jpg', 'Sophie1.jpg', 'assets/cwsoft-foldergallery/Maids/Sophie1.jpg', NULL, 1, 34, 1),
(49, 'Image', '2013-08-21 14:55:12', '2013-08-21 14:55:12', 'Umi1.jpg', 'Umi1.jpg', 'assets/cwsoft-foldergallery/Maids/Umi1.jpg', NULL, 1, 34, 1),
(50, 'Image', '2013-08-21 14:55:12', '2013-08-21 14:55:12', 'Vivi1.jpg', 'Vivi1.jpg', 'assets/cwsoft-foldergallery/Maids/Vivi1.jpg', NULL, 1, 34, 1),
(51, 'Image', '2013-08-21 14:55:12', '2013-08-21 14:55:12', 'Yusei1.jpg', 'Yusei1.jpg', 'assets/cwsoft-foldergallery/Maids/Yusei1.jpg', NULL, 1, 34, 1),
(52, 'Image', '2013-08-21 14:55:12', '2013-08-21 14:55:12', 'aimi.jpg', 'aimi.jpg', 'assets/cwsoft-foldergallery/Maids/aimi.jpg', NULL, 1, 34, 1),
(53, 'Image', '2013-08-21 14:55:12', '2013-08-21 14:55:12', 'aimi2.jpg', 'aimi2.jpg', 'assets/cwsoft-foldergallery/Maids/aimi2.jpg', NULL, 1, 34, 1),
(54, 'Image', '2013-08-21 14:55:12', '2013-08-21 14:55:12', 'anne.jpg', 'anne.jpg', 'assets/cwsoft-foldergallery/Maids/anne.jpg', NULL, 1, 34, 1),
(55, 'Image', '2013-08-21 14:55:12', '2013-08-21 14:55:12', 'anni.jpg', 'anni.jpg', 'assets/cwsoft-foldergallery/Maids/anni.jpg', NULL, 1, 34, 1),
(56, 'Image', '2013-08-21 14:55:12', '2013-08-21 14:55:12', 'chibi.jpg', 'chibi.jpg', 'assets/cwsoft-foldergallery/Maids/chibi.jpg', NULL, 1, 34, 1),
(57, 'Image', '2013-08-21 14:55:12', '2013-08-21 14:55:12', 'gini.jpg', 'gini.jpg', 'assets/cwsoft-foldergallery/Maids/gini.jpg', NULL, 1, 34, 1),
(58, 'Image', '2013-08-21 14:55:12', '2013-08-21 14:55:12', 'kao01.jpg', 'kao01.jpg', 'assets/cwsoft-foldergallery/Maids/kao01.jpg', NULL, 1, 34, 1),
(59, 'Image', '2013-08-21 14:55:12', '2013-08-21 14:55:12', 'kaori.jpg', 'kaori.jpg', 'assets/cwsoft-foldergallery/Maids/kaori.jpg', NULL, 1, 34, 1),
(60, 'Image', '2013-08-21 14:55:12', '2013-08-21 14:55:12', 'kaori2.jpg', 'kaori2.jpg', 'assets/cwsoft-foldergallery/Maids/kaori2.jpg', NULL, 1, 34, 1),
(61, 'Image', '2013-08-21 14:55:12', '2013-08-21 14:55:12', 'katti04.jpg', 'katti04.jpg', 'assets/cwsoft-foldergallery/Maids/katti04.jpg', NULL, 1, 34, 1),
(62, 'Image', '2013-08-21 14:55:12', '2013-08-21 14:55:12', 'lcumie2.jpg', 'lcumie2.jpg', 'assets/cwsoft-foldergallery/Maids/lcumie2.jpg', NULL, 1, 34, 1),
(63, 'Image', '2013-08-21 14:55:13', '2013-08-21 14:55:13', 'miu.jpg', 'miu.jpg', 'assets/cwsoft-foldergallery/Maids/miu.jpg', NULL, 1, 34, 1),
(64, 'Image', '2013-08-21 14:55:13', '2013-08-21 14:55:13', 'miu1.jpg', 'miu1.jpg', 'assets/cwsoft-foldergallery/Maids/miu1.jpg', NULL, 1, 34, 1),
(65, 'Image', '2013-08-21 14:55:13', '2013-08-21 14:55:13', 'nana.jpg', 'nana.jpg', 'assets/cwsoft-foldergallery/Maids/nana.jpg', NULL, 1, 34, 1),
(66, 'Image', '2013-08-21 14:55:13', '2013-08-21 14:55:13', 'neko.jpg', 'neko.jpg', 'assets/cwsoft-foldergallery/Maids/neko.jpg', NULL, 1, 34, 1),
(67, 'Image', '2013-08-21 14:55:13', '2013-08-21 14:55:13', 'peggy.jpg', 'peggy.jpg', 'assets/cwsoft-foldergallery/Maids/peggy.jpg', NULL, 1, 34, 1),
(68, 'Image', '2013-08-21 14:55:13', '2013-08-21 14:55:13', 'peggy04.jpg', 'peggy04.jpg', 'assets/cwsoft-foldergallery/Maids/peggy04.jpg', NULL, 1, 34, 1),
(69, 'Image', '2013-08-21 14:55:13', '2013-08-21 14:55:13', 'sophie.jpg', 'sophie.jpg', 'assets/cwsoft-foldergallery/Maids/sophie.jpg', NULL, 1, 34, 1),
(70, 'Image', '2013-08-21 14:55:13', '2013-08-21 14:55:13', 'tsuki.jpg', 'tsuki.jpg', 'assets/cwsoft-foldergallery/Maids/tsuki.jpg', NULL, 1, 34, 1),
(71, 'Image', '2013-08-21 14:55:13', '2013-08-21 14:55:13', 'tsuki2.jpg', 'tsuki2.jpg', 'assets/cwsoft-foldergallery/Maids/tsuki2.jpg', NULL, 1, 34, 1),
(72, 'Image', '2013-08-21 14:55:13', '2013-08-21 14:55:13', 'vivi.jpg', 'vivi.jpg', 'assets/cwsoft-foldergallery/Maids/vivi.jpg', NULL, 1, 34, 1),
(73, 'Image', '2013-08-21 14:55:13', '2013-08-21 14:55:13', 'yusei.jpg', 'yusei.jpg', 'assets/cwsoft-foldergallery/Maids/yusei.jpg', NULL, 1, 34, 1),
(74, 'Image', '2013-08-21 14:55:13', '2013-08-21 14:55:13', 'yusei02.jpg', 'yusei02.jpg', 'assets/cwsoft-foldergallery/Maids/yusei02.jpg', NULL, 1, 34, 1),
(75, 'Image', '2013-08-21 14:55:13', '2013-08-21 14:55:13', 'yusei2.jpg', 'yusei2.jpg', 'assets/cwsoft-foldergallery/Maids/yusei2.jpg', NULL, 1, 34, 1),
(76, 'File', '2013-08-21 14:55:13', '2013-08-21 14:55:13', 'error-404.html', 'error-404.html', 'assets/error-404.html', NULL, 1, 0, 1),
(77, 'File', '2013-08-21 14:55:13', '2013-08-21 14:55:13', 'error-500.html', 'error-500.html', 'assets/error-500.html', NULL, 1, 0, 1),
(78, 'Folder', '2013-08-21 14:55:13', '2013-08-21 14:55:13', 'icons', 'icons', 'assets/icons/', NULL, 1, 0, 1),
(79, 'Image', '2013-08-21 14:55:13', '2013-08-21 14:55:13', 'articleconsicon.png', 'articleconsicon.png', 'assets/icons/articleconsicon.png', NULL, 1, 78, 1),
(80, 'Image', '2013-08-21 14:55:13', '2013-08-21 14:55:13', 'articleeventicon.png', 'articleeventicon.png', 'assets/icons/articleeventicon.png', NULL, 1, 78, 1),
(81, 'Image', '2013-08-21 14:55:13', '2013-08-21 14:55:13', 'articlenewsicon.png', 'articlenewsicon.png', 'assets/icons/articlenewsicon.png', NULL, 1, 78, 1),
(82, 'File', '2013-08-22 16:03:08', '2013-08-22 16:03:08', 'brief.jpg', 'brief', 'assets/Uploads/brief.jpg', NULL, 0, 17, 1),
(83, 'File', '2013-08-22 16:03:53', '2013-08-22 16:03:53', 'brief2.jpg', 'brief2', 'assets/Uploads/brief2.jpg', NULL, 0, 17, 1),
(84, 'File', '2013-08-22 16:05:00', '2013-08-22 16:05:00', 'brief3.jpg', 'brief3', 'assets/Uploads/brief3.jpg', NULL, 0, 17, 1),
(85, 'File', '2013-08-22 16:06:43', '2013-08-22 16:06:43', 'brief4.jpg', 'brief4', 'assets/Uploads/brief4.jpg', NULL, 0, 17, 1),
(86, 'File', '2013-08-22 16:08:14', '2013-08-22 16:08:14', 'brief5.jpg', 'brief5', 'assets/Uploads/brief5.jpg', NULL, 0, 17, 1),
(87, 'File', '2013-08-22 16:09:46', '2013-08-22 16:09:46', 'brief6.jpg', 'brief6', 'assets/Uploads/brief6.jpg', NULL, 0, 17, 1),
(88, 'File', '2013-08-23 12:04:46', '2013-08-23 12:04:46', 'gqHijMWpkcX27hj5ObtXcqwvyGALv5Dla1A5JLgg-bM.jpg', 'gqHijMWpkcX27hj5ObtXcqwvyGALv5Dla1A5JLgg bM', 'assets/Uploads/gqHijMWpkcX27hj5ObtXcqwvyGALv5Dla1A5JLgg-bM.jpg', NULL, 0, 17, 1),
(89, 'File', '2013-08-23 12:21:14', '2013-08-23 12:21:14', 'dumpt2.txt', 'dumpt2', 'assets/Uploads/dumpt2.txt', NULL, 0, 17, 1),
(90, 'File', '2013-08-23 12:24:38', '2013-08-23 12:24:38', 'brief7.jpg', 'brief7', 'assets/Uploads/brief7.jpg', NULL, 0, 17, 1),
(91, 'File', '2013-08-23 12:24:38', '2013-08-23 12:24:38', 'brief8.jpg', 'brief8', 'assets/Uploads/brief8.jpg', NULL, 0, 17, 1),
(92, 'File', '2013-08-23 12:24:39', '2013-08-23 12:24:39', 'brief9.jpg', 'brief9', 'assets/Uploads/brief9.jpg', NULL, 0, 17, 1),
(93, 'File', '2013-08-23 12:26:10', '2013-08-23 12:26:10', 'brief10.jpg', 'brief10', 'assets/Uploads/brief10.jpg', NULL, 0, 17, 1),
(94, 'File', '2013-08-23 12:28:12', '2013-08-23 12:28:12', 'brief11.jpg', 'brief11', 'assets/Uploads/brief11.jpg', NULL, 0, 17, 1),
(95, 'File', '2013-08-23 12:28:12', '2013-08-23 12:28:12', 'brief12.jpg', 'brief12', 'assets/Uploads/brief12.jpg', NULL, 0, 17, 1),
(96, 'File', '2013-08-23 12:28:13', '2013-08-23 12:28:13', 'brief13.jpg', 'brief13', 'assets/Uploads/brief13.jpg', NULL, 0, 17, 1),
(97, 'File', '2013-08-24 20:29:48', '2013-08-24 20:29:48', 'brief.jpg', 'brief', 'assets/Uploads/brief.jpg', NULL, 0, 17, 1),
(98, 'File', '2013-08-24 20:29:48', '2013-08-24 20:29:48', 'brief2.jpg', 'brief2', 'assets/Uploads/brief2.jpg', NULL, 0, 17, 1),
(99, 'File', '2013-08-24 20:29:48', '2013-08-24 20:29:48', 'brief3.jpg', 'brief3', 'assets/Uploads/brief3.jpg', NULL, 0, 17, 1),
(100, 'Folder', '2013-08-27 15:51:03', '2013-08-27 15:51:03', 'Banner', 'Banner', 'assets/Banner/', NULL, 1, 0, 1),
(101, 'Image', '2013-08-27 15:51:03', '2013-08-27 15:51:03', 'gruppe4.jpg', 'gruppe4', 'assets/Banner/gruppe4.jpg', NULL, 1, 100, 1),
(102, 'Image', '2013-08-27 15:51:04', '2013-08-27 15:51:04', 'gruppe2.jpg', 'gruppe2', 'assets/Banner/gruppe2.jpg', NULL, 1, 100, 1),
(103, 'Image', '2013-08-27 15:51:06', '2013-08-27 15:51:06', 'gruppe3.jpg', 'gruppe3', 'assets/Banner/gruppe3.jpg', NULL, 1, 100, 1),
(104, 'Image', '2013-08-27 15:51:07', '2013-08-27 15:51:07', 'gruppe1.jpg', 'gruppe1', 'assets/Banner/gruppe1.jpg', NULL, 1, 100, 1);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `galleryimage`
--

CREATE TABLE IF NOT EXISTS `galleryimage` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ClassName` enum('GalleryImage') CHARACTER SET utf8 DEFAULT 'GalleryImage',
  `Created` datetime DEFAULT NULL,
  `LastEdited` datetime DEFAULT NULL,
  `SortOrder` int(11) NOT NULL DEFAULT '0',
  `Title` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `Description` varchar(400) CHARACTER SET utf8 DEFAULT NULL,
  `ImageID` int(11) NOT NULL DEFAULT '0',
  `GalleryPageID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `ImageID` (`ImageID`),
  KEY `GalleryPageID` (`GalleryPageID`),
  KEY `ClassName` (`ClassName`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Daten für Tabelle `galleryimage`
--

INSERT INTO `galleryimage` (`ID`, `ClassName`, `Created`, `LastEdited`, `SortOrder`, `Title`, `Description`, `ImageID`, `GalleryPageID`) VALUES
(1, 'GalleryImage', '2013-08-27 15:51:03', '2013-08-27 15:51:40', 2, NULL, NULL, 101, 30),
(2, 'GalleryImage', '2013-08-27 15:51:04', '2013-08-27 15:51:40', 1, NULL, NULL, 102, 30),
(3, 'GalleryImage', '2013-08-27 15:51:05', '2013-08-27 15:51:40', 3, NULL, NULL, 103, 30),
(4, 'GalleryImage', '2013-08-27 15:51:07', '2013-08-27 15:51:40', 4, NULL, NULL, 104, 30);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `gallerypage`
--

CREATE TABLE IF NOT EXISTS `gallerypage` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `GalFolder` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=32 ;

--
-- Daten für Tabelle `gallerypage`
--

INSERT INTO `gallerypage` (`ID`, `GalFolder`) VALUES
(30, 'Banner'),
(31, NULL);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `gallerypage_live`
--

CREATE TABLE IF NOT EXISTS `gallerypage_live` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `GalFolder` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=32 ;

--
-- Daten für Tabelle `gallerypage_live`
--

INSERT INTO `gallerypage_live` (`ID`, `GalFolder`) VALUES
(30, 'Banner'),
(31, NULL);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `gallerypage_versions`
--

CREATE TABLE IF NOT EXISTS `gallerypage_versions` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `RecordID` int(11) NOT NULL DEFAULT '0',
  `Version` int(11) NOT NULL DEFAULT '0',
  `GalFolder` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `RecordID_Version` (`RecordID`,`Version`),
  KEY `RecordID` (`RecordID`),
  KEY `Version` (`Version`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Daten für Tabelle `gallerypage_versions`
--

INSERT INTO `gallerypage_versions` (`ID`, `RecordID`, `Version`, `GalFolder`) VALUES
(1, 30, 1, NULL),
(2, 31, 1, NULL),
(3, 30, 2, 'Banner');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `group`
--

CREATE TABLE IF NOT EXISTS `group` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ClassName` enum('Group') CHARACTER SET utf8 DEFAULT 'Group',
  `Created` datetime DEFAULT NULL,
  `LastEdited` datetime DEFAULT NULL,
  `Title` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `Description` mediumtext CHARACTER SET utf8,
  `Code` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `Locked` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `Sort` int(11) NOT NULL DEFAULT '0',
  `HtmlEditorConfig` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `ParentID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `ParentID` (`ParentID`),
  KEY `ClassName` (`ClassName`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Daten für Tabelle `group`
--

INSERT INTO `group` (`ID`, `ClassName`, `Created`, `LastEdited`, `Title`, `Description`, `Code`, `Locked`, `Sort`, `HtmlEditorConfig`, `ParentID`) VALUES
(1, 'Group', '2013-08-21 12:48:04', '2013-08-21 12:48:04', 'Inhaltsautoren', NULL, 'content-authors', 0, 1, NULL, 0),
(2, 'Group', '2013-08-21 12:48:05', '2013-08-21 12:48:05', 'Administratoren', NULL, 'administrators', 0, 0, NULL, 0);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `group_members`
--

CREATE TABLE IF NOT EXISTS `group_members` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `GroupID` int(11) NOT NULL DEFAULT '0',
  `MemberID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `GroupID` (`GroupID`),
  KEY `MemberID` (`MemberID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Daten für Tabelle `group_members`
--

INSERT INTO `group_members` (`ID`, `GroupID`, `MemberID`) VALUES
(1, 2, 1);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `group_roles`
--

CREATE TABLE IF NOT EXISTS `group_roles` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `GroupID` int(11) NOT NULL DEFAULT '0',
  `PermissionRoleID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `GroupID` (`GroupID`),
  KEY `PermissionRoleID` (`PermissionRoleID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `loginattempt`
--

CREATE TABLE IF NOT EXISTS `loginattempt` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ClassName` enum('LoginAttempt') CHARACTER SET utf8 DEFAULT 'LoginAttempt',
  `Created` datetime DEFAULT NULL,
  `LastEdited` datetime DEFAULT NULL,
  `Email` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `Status` enum('Success','Failure') CHARACTER SET utf8 DEFAULT 'Success',
  `IP` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `MemberID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `MemberID` (`MemberID`),
  KEY `ClassName` (`ClassName`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `maid`
--

CREATE TABLE IF NOT EXISTS `maid` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Type` mediumtext CHARACTER SET utf8,
  `colour` mediumtext CHARACTER SET utf8,
  `since` int(11) NOT NULL DEFAULT '0',
  `maidreason` mediumtext CHARACTER SET utf8,
  `BDay` date DEFAULT NULL,
  `zodiac` mediumtext CHARACTER SET utf8,
  `size` mediumtext CHARACTER SET utf8,
  `hobbys` mediumtext CHARACTER SET utf8,
  `favfood` mediumtext CHARACTER SET utf8,
  `favsweet` mediumtext CHARACTER SET utf8,
  `favanimal` mediumtext CHARACTER SET utf8,
  `pokemon` mediumtext CHARACTER SET utf8,
  `anime` mediumtext CHARACTER SET utf8,
  `animelocation` mediumtext CHARACTER SET utf8,
  `magicalgirl` mediumtext CHARACTER SET utf8,
  `funfairlocation` mediumtext CHARACTER SET utf8,
  `wish` mediumtext CHARACTER SET utf8,
  `aboutme` mediumtext CHARACTER SET utf8,
  `mcolour` mediumtext CHARACTER SET utf8,
  `maidphotoID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `maidphotoID` (`maidphotoID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=36 ;

--
-- Daten für Tabelle `maid`
--

INSERT INTO `maid` (`ID`, `Type`, `colour`, `since`, `maidreason`, `BDay`, `zodiac`, `size`, `hobbys`, `favfood`, `favsweet`, `favanimal`, `pokemon`, `anime`, `animelocation`, `magicalgirl`, `funfairlocation`, `wish`, `aboutme`, `mcolour`, `maidphotoID`) VALUES
(21, 'Organisator', 'og', 0, 'hiök', NULL, 'lgvbhulzhfv', '.jkbjhbhi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Ich bin die Neko und ich liebe Süßigkeiten <3. Am liebsten mit Erdbeer-geschmack, klassisch ist aber auch toll! Ich bin ein bisschen schüchtern, aber ich strenge mich an! Dann mag ich auch noch total gerne diese Lakritzpandas, ich glaube die heißen Tapsis oder so. Die sind so lecker! Kinderriegel sind auch toll. Aber am besten ist es im Sommer abends oder Nachts in Japan in einen Conbini zu gehen und sich dort Yukimi-Daifuku zu kaufen! Es ist so ein schönes Gefühl den Daifuku zu essen der langsam schön weich wird, innen aber noch total kalt ist und den Zikaden zuzuhören. ', '#0404B4', 16),
(33, 'Homepage', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '#FF00FF', 16),
(34, 'Entertainment', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '#00FA9A', 16),
(35, 'Maid', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '#FFD700', 16);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `maid_live`
--

CREATE TABLE IF NOT EXISTS `maid_live` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Type` mediumtext CHARACTER SET utf8,
  `colour` mediumtext CHARACTER SET utf8,
  `since` int(11) NOT NULL DEFAULT '0',
  `maidreason` mediumtext CHARACTER SET utf8,
  `BDay` date DEFAULT NULL,
  `zodiac` mediumtext CHARACTER SET utf8,
  `size` mediumtext CHARACTER SET utf8,
  `hobbys` mediumtext CHARACTER SET utf8,
  `favfood` mediumtext CHARACTER SET utf8,
  `favsweet` mediumtext CHARACTER SET utf8,
  `favanimal` mediumtext CHARACTER SET utf8,
  `pokemon` mediumtext CHARACTER SET utf8,
  `anime` mediumtext CHARACTER SET utf8,
  `animelocation` mediumtext CHARACTER SET utf8,
  `magicalgirl` mediumtext CHARACTER SET utf8,
  `funfairlocation` mediumtext CHARACTER SET utf8,
  `wish` mediumtext CHARACTER SET utf8,
  `aboutme` mediumtext CHARACTER SET utf8,
  `mcolour` mediumtext CHARACTER SET utf8,
  `maidphotoID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `maidphotoID` (`maidphotoID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=36 ;

--
-- Daten für Tabelle `maid_live`
--

INSERT INTO `maid_live` (`ID`, `Type`, `colour`, `since`, `maidreason`, `BDay`, `zodiac`, `size`, `hobbys`, `favfood`, `favsweet`, `favanimal`, `pokemon`, `anime`, `animelocation`, `magicalgirl`, `funfairlocation`, `wish`, `aboutme`, `mcolour`, `maidphotoID`) VALUES
(21, 'Organisator', 'og', 0, 'hiök', NULL, 'lgvbhulzhfv', '.jkbjhbhi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Ich bin die Neko und ich liebe Süßigkeiten <3. Am liebsten mit Erdbeer-geschmack, klassisch ist aber auch toll! Ich bin ein bisschen schüchtern, aber ich strenge mich an! Dann mag ich auch noch total gerne diese Lakritzpandas, ich glaube die heißen Tapsis oder so. Die sind so lecker! Kinderriegel sind auch toll. Aber am besten ist es im Sommer abends oder Nachts in Japan in einen Conbini zu gehen und sich dort Yukimi-Daifuku zu kaufen! Es ist so ein schönes Gefühl den Daifuku zu essen der langsam schön weich wird, innen aber noch total kalt ist und den Zikaden zuzuhören. ', '#0404B4', 16),
(33, 'Homepage', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '#FF00FF', 16),
(34, 'Entertainment', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '#00FA9A', 16),
(35, 'Maid', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '#FFD700', 16);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `maid_versions`
--

CREATE TABLE IF NOT EXISTS `maid_versions` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `RecordID` int(11) NOT NULL DEFAULT '0',
  `Version` int(11) NOT NULL DEFAULT '0',
  `Type` mediumtext CHARACTER SET utf8,
  `colour` mediumtext CHARACTER SET utf8,
  `since` int(11) NOT NULL DEFAULT '0',
  `maidreason` mediumtext CHARACTER SET utf8,
  `BDay` date DEFAULT NULL,
  `zodiac` mediumtext CHARACTER SET utf8,
  `size` mediumtext CHARACTER SET utf8,
  `hobbys` mediumtext CHARACTER SET utf8,
  `favfood` mediumtext CHARACTER SET utf8,
  `favsweet` mediumtext CHARACTER SET utf8,
  `favanimal` mediumtext CHARACTER SET utf8,
  `pokemon` mediumtext CHARACTER SET utf8,
  `anime` mediumtext CHARACTER SET utf8,
  `animelocation` mediumtext CHARACTER SET utf8,
  `magicalgirl` mediumtext CHARACTER SET utf8,
  `funfairlocation` mediumtext CHARACTER SET utf8,
  `wish` mediumtext CHARACTER SET utf8,
  `aboutme` mediumtext CHARACTER SET utf8,
  `mcolour` mediumtext CHARACTER SET utf8,
  `maidphotoID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  UNIQUE KEY `RecordID_Version` (`RecordID`,`Version`),
  KEY `RecordID` (`RecordID`),
  KEY `Version` (`Version`),
  KEY `maidphotoID` (`maidphotoID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=22 ;

--
-- Daten für Tabelle `maid_versions`
--

INSERT INTO `maid_versions` (`ID`, `RecordID`, `Version`, `Type`, `colour`, `since`, `maidreason`, `BDay`, `zodiac`, `size`, `hobbys`, `favfood`, `favsweet`, `favanimal`, `pokemon`, `anime`, `animelocation`, `magicalgirl`, `funfairlocation`, `wish`, `aboutme`, `mcolour`, `maidphotoID`) VALUES
(1, 21, 1, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(2, 21, 2, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(3, 21, 3, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '#04B404', 0),
(4, 21, 4, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '#04B404', 16),
(5, 21, 5, 'Organisator', 'og', 0, 'hiök', NULL, 'lgvbhulzhfv', '.jkbjhbhi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '#0404B4', 16),
(6, 21, 6, 'Organisator', 'og', 0, 'hiök', NULL, 'lgvbhulzhfv', '.jkbjhbhi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Ich bin blau, ich bin grüüüün blubb holladiewaldfeebinichbtext', '#0404B4', 16),
(7, 21, 7, 'Organisator', 'og', 0, 'hiök', NULL, 'lgvbhulzhfv', '.jkbjhbhi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Ich bin die Neko und ich liebe Süßigkeiten <3 Am liebsten mit Erdbeer-geschmack, klassisch ist aber auch toll! Ich bin ein bisschen schüchtern, aber ich strenge mich an! Dann mag ich auch noch total gerne diese Lakritzpandas, ich glaube die heißen Tapsis oder so. Die sind so lecker! Kinderriegel sind auch toll. Aber am besten ist es im Sommer abends oder Nachts in Japan in einen Conbini zu gehen und sich dort Yukimi-Daifuku zu kaufen! Es ist so ein schönes Gefühl den Daifuku zu essen der langsam schön weich wird, innen aber noch total kalt ist und den Zikaden zuzuhören. ', '#0404B4', 16),
(8, 21, 8, 'Organisator', 'og', 0, 'hiök', NULL, 'lgvbhulzhfv', '.jkbjhbhi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Ich bin die Neko und ich liebe Süßigkeiten. <3 Am liebsten mit Erdbeer-geschmack, klassisch ist aber auch toll! Ich bin ein bisschen schüchtern, aber ich strenge mich an! Dann mag ich auch noch total gerne diese Lakritzpandas, ich glaube die heißen Tapsis oder so. Die sind so lecker! Kinderriegel sind auch toll. Aber am besten ist es im Sommer abends oder Nachts in Japan in einen Conbini zu gehen und sich dort Yukimi-Daifuku zu kaufen! Es ist so ein schönes Gefühl den Daifuku zu essen der langsam schön weich wird, innen aber noch total kalt ist und den Zikaden zuzuhören. ', '#0404B4', 16),
(9, 21, 9, 'Organisator', 'og', 0, 'hiök', NULL, 'lgvbhulzhfv', '.jkbjhbhi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Ich bin die Neko und ich liebe Süßigkeiten <3 Am liebsten mit Erdbeer-geschmack, klassisch ist aber auch toll! Ich bin ein bisschen schüchtern, aber ich strenge mich an! Dann mag ich auch noch total gerne diese Lakritzpandas, ich glaube die heißen Tapsis oder so. Die sind so lecker! Kinderriegel sind auch toll. Aber am besten ist es im Sommer abends oder Nachts in Japan in einen Conbini zu gehen und sich dort Yukimi-Daifuku zu kaufen! Es ist so ein schönes Gefühl den Daifuku zu essen der langsam schön weich wird, innen aber noch total kalt ist und den Zikaden zuzuhören. ', '#0404B4', 16),
(10, 21, 10, 'Organisator', 'og', 0, 'hiök', NULL, 'lgvbhulzhfv', '.jkbjhbhi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Ich bin die Neko und ich liebe Süßigkeiten <3! Am liebsten mit Erdbeer-geschmack, klassisch ist aber auch toll! Ich bin ein bisschen schüchtern, aber ich strenge mich an! Dann mag ich auch noch total gerne diese Lakritzpandas, ich glaube die heißen Tapsis oder so. Die sind so lecker! Kinderriegel sind auch toll. Aber am besten ist es im Sommer abends oder Nachts in Japan in einen Conbini zu gehen und sich dort Yukimi-Daifuku zu kaufen! Es ist so ein schönes Gefühl den Daifuku zu essen der langsam schön weich wird, innen aber noch total kalt ist und den Zikaden zuzuhören. ', '#0404B4', 16),
(11, 21, 11, 'Organisator', 'og', 0, 'hiök', NULL, 'lgvbhulzhfv', '.jkbjhbhi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Ich bin die Neko und ich liebe Süßigkeiten <3. Am liebsten mit Erdbeer-geschmack, klassisch ist aber auch toll! Ich bin ein bisschen schüchtern, aber ich strenge mich an! Dann mag ich auch noch total gerne diese Lakritzpandas, ich glaube die heißen Tapsis oder so. Die sind so lecker! Kinderriegel sind auch toll. Aber am besten ist es im Sommer abends oder Nachts in Japan in einen Conbini zu gehen und sich dort Yukimi-Daifuku zu kaufen! Es ist so ein schönes Gefühl den Daifuku zu essen der langsam schön weich wird, innen aber noch total kalt ist und den Zikaden zuzuhören. ', '#0404B4', 16),
(12, 33, 1, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(13, 34, 1, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(14, 35, 1, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(15, 34, 2, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(16, 34, 3, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 16),
(17, 33, 2, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 16),
(18, 35, 2, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 16),
(19, 34, 4, 'Entertainment', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '#00FA9A', 16),
(20, 33, 3, 'Homepage', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '#FF00FF', 16),
(21, 35, 3, 'Maid', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '#FFD700', 16);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `member`
--

CREATE TABLE IF NOT EXISTS `member` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ClassName` enum('Member') CHARACTER SET utf8 DEFAULT 'Member',
  `Created` datetime DEFAULT NULL,
  `LastEdited` datetime DEFAULT NULL,
  `FirstName` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `Surname` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `Email` varchar(256) CHARACTER SET utf8 DEFAULT NULL,
  `Password` varchar(160) CHARACTER SET utf8 DEFAULT NULL,
  `RememberLoginToken` varchar(160) CHARACTER SET utf8 DEFAULT NULL,
  `NumVisit` int(11) NOT NULL DEFAULT '0',
  `LastVisited` datetime DEFAULT NULL,
  `Bounced` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `AutoLoginHash` varchar(160) CHARACTER SET utf8 DEFAULT NULL,
  `AutoLoginExpired` datetime DEFAULT NULL,
  `PasswordEncryption` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `Salt` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `PasswordExpiry` date DEFAULT NULL,
  `LockedOutUntil` datetime DEFAULT NULL,
  `Locale` varchar(6) CHARACTER SET utf8 DEFAULT NULL,
  `FailedLoginCount` int(11) NOT NULL DEFAULT '0',
  `DateFormat` varchar(30) CHARACTER SET utf8 DEFAULT NULL,
  `TimeFormat` varchar(30) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `Email` (`Email`(255)),
  KEY `ClassName` (`ClassName`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Daten für Tabelle `member`
--

INSERT INTO `member` (`ID`, `ClassName`, `Created`, `LastEdited`, `FirstName`, `Surname`, `Email`, `Password`, `RememberLoginToken`, `NumVisit`, `LastVisited`, `Bounced`, `AutoLoginHash`, `AutoLoginExpired`, `PasswordEncryption`, `Salt`, `PasswordExpiry`, `LockedOutUntil`, `Locale`, `FailedLoginCount`, `DateFormat`, `TimeFormat`) VALUES
(1, 'Member', '2013-08-21 12:48:05', '2013-08-27 17:38:27', 'Standardadmin', NULL, 'admin', '$2y$10$effe9adc22281361577d4OOcChlOi./7IG4Pu7rJ9HT3igcGBojW6', '$2y$10$effe9adc22281361577d4OHedkkurK/5vgBSFO4nsRu9Cq3qhBfe6', 13, '2013-08-27 22:53:55', 0, NULL, NULL, 'blowfish', '10$effe9adc22281361577d4b', NULL, NULL, 'de_DE', 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `memberpassword`
--

CREATE TABLE IF NOT EXISTS `memberpassword` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ClassName` enum('MemberPassword') CHARACTER SET utf8 DEFAULT 'MemberPassword',
  `Created` datetime DEFAULT NULL,
  `LastEdited` datetime DEFAULT NULL,
  `Password` varchar(160) CHARACTER SET utf8 DEFAULT NULL,
  `Salt` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `PasswordEncryption` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `MemberID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `MemberID` (`MemberID`),
  KEY `ClassName` (`ClassName`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `permission`
--

CREATE TABLE IF NOT EXISTS `permission` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ClassName` enum('Permission') CHARACTER SET utf8 DEFAULT 'Permission',
  `Created` datetime DEFAULT NULL,
  `LastEdited` datetime DEFAULT NULL,
  `Code` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `Arg` int(11) NOT NULL DEFAULT '0',
  `Type` int(11) NOT NULL DEFAULT '1',
  `GroupID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `GroupID` (`GroupID`),
  KEY `Code` (`Code`),
  KEY `ClassName` (`ClassName`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Daten für Tabelle `permission`
--

INSERT INTO `permission` (`ID`, `ClassName`, `Created`, `LastEdited`, `Code`, `Arg`, `Type`, `GroupID`) VALUES
(1, 'Permission', '2013-08-21 12:48:04', '2013-08-21 12:48:04', 'CMS_ACCESS_CMSMain', 0, 1, 1),
(2, 'Permission', '2013-08-21 12:48:04', '2013-08-21 12:48:04', 'CMS_ACCESS_AssetAdmin', 0, 1, 1),
(3, 'Permission', '2013-08-21 12:48:05', '2013-08-21 12:48:05', 'CMS_ACCESS_ReportAdmin', 0, 1, 1),
(4, 'Permission', '2013-08-21 12:48:05', '2013-08-21 12:48:05', 'SITETREE_REORGANISE', 0, 1, 1),
(5, 'Permission', '2013-08-21 12:48:05', '2013-08-21 12:48:05', 'ADMIN', 0, 1, 2);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `permissionrole`
--

CREATE TABLE IF NOT EXISTS `permissionrole` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ClassName` enum('PermissionRole') CHARACTER SET utf8 DEFAULT 'PermissionRole',
  `Created` datetime DEFAULT NULL,
  `LastEdited` datetime DEFAULT NULL,
  `Title` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `OnlyAdminCanApply` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `ClassName` (`ClassName`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `permissionrolecode`
--

CREATE TABLE IF NOT EXISTS `permissionrolecode` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ClassName` enum('PermissionRoleCode') CHARACTER SET utf8 DEFAULT 'PermissionRoleCode',
  `Created` datetime DEFAULT NULL,
  `LastEdited` datetime DEFAULT NULL,
  `Code` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `RoleID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `RoleID` (`RoleID`),
  KEY `ClassName` (`ClassName`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `redirectorpage`
--

CREATE TABLE IF NOT EXISTS `redirectorpage` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `RedirectionType` enum('Internal','External') CHARACTER SET utf8 DEFAULT 'Internal',
  `ExternalURL` varchar(2083) CHARACTER SET utf8 DEFAULT NULL,
  `LinkToID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `LinkToID` (`LinkToID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `redirectorpage_live`
--

CREATE TABLE IF NOT EXISTS `redirectorpage_live` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `RedirectionType` enum('Internal','External') CHARACTER SET utf8 DEFAULT 'Internal',
  `ExternalURL` varchar(2083) CHARACTER SET utf8 DEFAULT NULL,
  `LinkToID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `LinkToID` (`LinkToID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `redirectorpage_versions`
--

CREATE TABLE IF NOT EXISTS `redirectorpage_versions` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `RecordID` int(11) NOT NULL DEFAULT '0',
  `Version` int(11) NOT NULL DEFAULT '0',
  `RedirectionType` enum('Internal','External') CHARACTER SET utf8 DEFAULT 'Internal',
  `ExternalURL` varchar(2083) CHARACTER SET utf8 DEFAULT NULL,
  `LinkToID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  UNIQUE KEY `RecordID_Version` (`RecordID`,`Version`),
  KEY `RecordID` (`RecordID`),
  KEY `Version` (`Version`),
  KEY `LinkToID` (`LinkToID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `siteconfig`
--

CREATE TABLE IF NOT EXISTS `siteconfig` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ClassName` enum('SiteConfig') CHARACTER SET utf8 DEFAULT 'SiteConfig',
  `Created` datetime DEFAULT NULL,
  `LastEdited` datetime DEFAULT NULL,
  `maxskitter_interval` varchar(32) CHARACTER SET utf8 DEFAULT NULL,
  `maxskitter_animation` varchar(32) CHARACTER SET utf8 DEFAULT NULL,
  `maxskitter_numbers` varchar(8) CHARACTER SET utf8 DEFAULT NULL,
  `maxskitter_numbers_align` varchar(32) CHARACTER SET utf8 DEFAULT NULL,
  `maxskitter_navigation` varchar(8) CHARACTER SET utf8 DEFAULT NULL,
  `maxskitter_dots` varchar(8) CHARACTER SET utf8 DEFAULT NULL,
  `maxskitter_thumbs` varchar(8) CHARACTER SET utf8 DEFAULT NULL,
  `maxskitter_hideTools` varchar(8) CHARACTER SET utf8 DEFAULT NULL,
  `maxskitter_label` varchar(8) CHARACTER SET utf8 DEFAULT NULL,
  `maxskitter_animateNumberOut` varchar(127) CHARACTER SET utf8 DEFAULT NULL,
  `maxskitter_animateNumberOver` varchar(127) CHARACTER SET utf8 DEFAULT NULL,
  `maxskitter_animateNumberActive` varchar(127) CHARACTER SET utf8 DEFAULT NULL,
  `maxskitter_controls` varchar(8) CHARACTER SET utf8 DEFAULT NULL,
  `maxskitter_controls_position` varchar(32) CHARACTER SET utf8 DEFAULT NULL,
  `maxskitter_easing_default` varchar(32) CHARACTER SET utf8 DEFAULT NULL,
  `maxskitter_enable_navigation_keys` varchar(8) CHARACTER SET utf8 DEFAULT NULL,
  `maxskitter_focus` varchar(8) CHARACTER SET utf8 DEFAULT NULL,
  `maxskitter_focus_position` varchar(32) CHARACTER SET utf8 DEFAULT NULL,
  `maxskitter_fullscreen` varchar(8) CHARACTER SET utf8 DEFAULT NULL,
  `maxskitter_mouseOutButton` varchar(127) CHARACTER SET utf8 DEFAULT NULL,
  `maxskitter_mouseOverButton` varchar(127) CHARACTER SET utf8 DEFAULT NULL,
  `maxskitter_onLoad` varchar(127) CHARACTER SET utf8 DEFAULT NULL,
  `maxskitter_preview` varchar(8) CHARACTER SET utf8 DEFAULT NULL,
  `maxskitter_stop_over` varchar(8) CHARACTER SET utf8 DEFAULT NULL,
  `maxskitter_show_randomly` varchar(8) CHARACTER SET utf8 DEFAULT NULL,
  `maxskitter_velocity` varchar(32) CHARACTER SET utf8 DEFAULT NULL,
  `maxskitter_width_label` varchar(32) CHARACTER SET utf8 DEFAULT NULL,
  `maxskitter_with_animations` varchar(127) CHARACTER SET utf8 DEFAULT NULL,
  `Title` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `Tagline` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `Theme` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `CanViewType` enum('Anyone','LoggedInUsers','OnlyTheseUsers') CHARACTER SET utf8 DEFAULT 'Anyone',
  `CanEditType` enum('LoggedInUsers','OnlyTheseUsers') CHARACTER SET utf8 DEFAULT 'LoggedInUsers',
  `CanCreateTopLevelType` enum('LoggedInUsers','OnlyTheseUsers') CHARACTER SET utf8 DEFAULT 'LoggedInUsers',
  PRIMARY KEY (`ID`),
  KEY `ClassName` (`ClassName`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Daten für Tabelle `siteconfig`
--

INSERT INTO `siteconfig` (`ID`, `ClassName`, `Created`, `LastEdited`, `maxskitter_interval`, `maxskitter_animation`, `maxskitter_numbers`, `maxskitter_numbers_align`, `maxskitter_navigation`, `maxskitter_dots`, `maxskitter_thumbs`, `maxskitter_hideTools`, `maxskitter_label`, `maxskitter_animateNumberOut`, `maxskitter_animateNumberOver`, `maxskitter_animateNumberActive`, `maxskitter_controls`, `maxskitter_controls_position`, `maxskitter_easing_default`, `maxskitter_enable_navigation_keys`, `maxskitter_focus`, `maxskitter_focus_position`, `maxskitter_fullscreen`, `maxskitter_mouseOutButton`, `maxskitter_mouseOverButton`, `maxskitter_onLoad`, `maxskitter_preview`, `maxskitter_stop_over`, `maxskitter_show_randomly`, `maxskitter_velocity`, `maxskitter_width_label`, `maxskitter_with_animations`, `Title`, `Tagline`, `Theme`, `CanViewType`, `CanEditType`, `CanCreateTopLevelType`) VALUES
(1, 'SiteConfig', '2013-08-21 12:48:05', '2013-08-25 19:56:39', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Lucky Chocolate Maid Café', NULL, 'fancypants', 'Anyone', 'LoggedInUsers', 'LoggedInUsers');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `siteconfig_createtoplevelgroups`
--

CREATE TABLE IF NOT EXISTS `siteconfig_createtoplevelgroups` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `SiteConfigID` int(11) NOT NULL DEFAULT '0',
  `GroupID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `SiteConfigID` (`SiteConfigID`),
  KEY `GroupID` (`GroupID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `siteconfig_editorgroups`
--

CREATE TABLE IF NOT EXISTS `siteconfig_editorgroups` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `SiteConfigID` int(11) NOT NULL DEFAULT '0',
  `GroupID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `SiteConfigID` (`SiteConfigID`),
  KEY `GroupID` (`GroupID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `siteconfig_viewergroups`
--

CREATE TABLE IF NOT EXISTS `siteconfig_viewergroups` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `SiteConfigID` int(11) NOT NULL DEFAULT '0',
  `GroupID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `SiteConfigID` (`SiteConfigID`),
  KEY `GroupID` (`GroupID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `sitetree`
--

CREATE TABLE IF NOT EXISTS `sitetree` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ClassName` enum('ErrorPage','HomePage','ContactPage','Page2','UserDefinedForm','ArticleCategory','ArticleHolder','ArticlePage','Maid','MaidHolder','Albumholder','GalleryPage','SiteTree','Page','RedirectorPage','VirtualPage') CHARACTER SET utf8 DEFAULT 'ErrorPage',
  `Created` datetime DEFAULT NULL,
  `LastEdited` datetime DEFAULT NULL,
  `URLSegment` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `Title` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `MenuTitle` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `Content` mediumtext CHARACTER SET utf8,
  `MetaTitle` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `MetaDescription` mediumtext CHARACTER SET utf8,
  `MetaKeywords` varchar(1024) CHARACTER SET utf8 DEFAULT NULL,
  `ExtraMeta` mediumtext CHARACTER SET utf8,
  `ShowInMenus` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ShowInSearch` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `Sort` int(11) NOT NULL DEFAULT '0',
  `HasBrokenFile` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `HasBrokenLink` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ReportClass` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `CanViewType` enum('Anyone','LoggedInUsers','OnlyTheseUsers','Inherit') CHARACTER SET utf8 DEFAULT 'Inherit',
  `CanEditType` enum('LoggedInUsers','OnlyTheseUsers','Inherit') CHARACTER SET utf8 DEFAULT 'Inherit',
  `Version` int(11) NOT NULL DEFAULT '0',
  `ParentID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `ParentID` (`ParentID`),
  KEY `URLSegment` (`URLSegment`),
  KEY `ClassName` (`ClassName`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=36 ;

--
-- Daten für Tabelle `sitetree`
--

INSERT INTO `sitetree` (`ID`, `ClassName`, `Created`, `LastEdited`, `URLSegment`, `Title`, `MenuTitle`, `Content`, `MetaTitle`, `MetaDescription`, `MetaKeywords`, `ExtraMeta`, `ShowInMenus`, `ShowInSearch`, `Sort`, `HasBrokenFile`, `HasBrokenLink`, `ReportClass`, `CanViewType`, `CanEditType`, `Version`, `ParentID`) VALUES
(1, 'HomePage', '2013-08-21 12:48:06', '2013-08-21 12:56:13', 'home', 'Startseite', NULL, '<p>Willkommen bei SilverStripe! Dies ist die Standard-Startseite. Sie können diese Seite bearbeiten, indem Sie <a href="admin/">das CMS</a> öffnen. Sie können außerdem die  <a href="http://doc.silverstripe.com">Entwicker-Dokumentation</a> oder die <a href="http://doc.silverstripe.com/doku.php?id=tutorials">Einführungskurse und Tutorien</a> aufrufen.</p>', NULL, NULL, NULL, NULL, 1, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 2, 0),
(4, 'ErrorPage', '2013-08-21 12:48:08', '2013-08-21 12:55:14', 'seite-nicht-gefunden', 'Seite nicht gefunden', NULL, '<p>Entschuldigung, möglicherweise versuchen Sie eine Seite zu erreichen die nicht existiert.</p><p>Bitte überprüfen Sie die Schreibweise der URL die Sie versucht haben zu erreichen und versuchen Sie es noch einmal.</p>', NULL, NULL, NULL, NULL, 0, 0, 8, 0, 0, NULL, 'Inherit', 'Inherit', 1, 0),
(5, 'ErrorPage', '2013-08-21 12:48:09', '2013-08-21 12:55:14', 'serverfehler', 'Serverfehler', NULL, '<p>Entschuldigung, bei der Bearbeitung ihrer Anfrage ist ein Problem aufgetreten.</p>', NULL, NULL, NULL, NULL, 0, 0, 9, 0, 0, NULL, 'Inherit', 'Inherit', 1, 0),
(11, 'Page2', '2013-08-22 12:20:36', '2013-08-22 12:23:18', 'impressum', 'Impressum', NULL, '<p><strong>Angabe nach § 5 TMG und § 55 RStV:</strong></p>\n<p>André Stenzel<br>Tonhallenstraße 21<br>47051 Duisburg</p>\n<p>Kontakt:</p>\n<p>E-Mail: a.stenzel92@web.de</p>\n<p><strong>Haftung für Inhalte</strong></p>\n<p>Die Inhalte unserer Seiten wurden mit größter Sorgfalt erstellt. Für die Richtigkeit, Vollständigkeit und Aktualität der Inhalte können wir jedoch keine Gewähr übernehmen. Als Diensteanbieter sind wir gemäß § 7 Abs.1 TMG für eigene Inhalte auf diesen Seiten nach den allgemeinen Gesetzen verantwortlich. Nach §§ 8 bis 10 TMG sind wir als Diensteanbieter jedoch nicht verpflichtet, übermittelte oder gespeicherte fremde Informationen zu überwachen oder nach Umständen zu forschen, die auf eine rechtswidrige Tätigkeit hinweisen. Verpflichtungen zur Entfernung oder Sperrung der Nutzung von Informationen nach den allgemeinen Gesetzen bleiben hiervon unberührt. Eine diesbezügliche Haftung ist jedoch erst ab dem Zeitpunkt der Kenntnis einer konkreten Rechtsverletzung möglich. Bei Bekanntwerden von entsprechenden Rechtsverletzungen werden wir diese Inhalte umgehend entfernen.</p>\n<p><strong>Haftung für Links</strong></p>\n<p>Unser Angebot enthält Links zu externen Webseiten Dritter, auf deren Inhalte wir keinen Einfluss haben. Deshalb können wir für diese fremden Inhalte auch keine Gewähr übernehmen. Für die Inhalte der verlinkten Seiten ist stets der jeweilige Anbieter oder Betreiber der Seiten verantwortlich. Die verlinkten Seiten wurden zum Zeitpunkt der Verlinkung auf mögliche Rechtsverstöße überprüft. Rechtswidrige Inhalte waren zum Zeitpunkt der Verlinkung nicht erkennbar. Eine permanente inhaltliche Kontrolle der verlinkten Seiten ist jedoch ohne konkrete Anhaltspunkte einer Rechtsverletzung nicht zumutbar. Bei Bekanntwerden von Rechtsverletzungen werden wir derartige Links umgehend entfernen.</p>\n<p><strong>Urheberrecht</strong></p>\n<p>Die durch die Seitenbetreiber erstellten Inhalte und Werke auf diesen Seiten unterliegen dem deutschen Urheberrecht. Die Vervielfältigung, Bearbeitung, Verbreitung und jede Art der Verwertung außerhalb der Grenzen des Urheberrechtes bedürfen der schriftlichen Zustimmung des jeweiligen Autors bzw. Erstellers. Downloads und Kopien dieser Seite sind nur für den privaten, nicht kommerziellen Gebrauch gestattet. Soweit die Inhalte auf dieser Seite nicht vom Betreiber erstellt wurden, werden die Urheberrechte Dritter beachtet. Insbesondere werden Inhalte Dritter als solche gekennzeichnet. Sollten Sie trotzdem auf eine Urheberrechtsverletzung aufmerksam werden, bitten wir um einen entsprechenden Hinweis. Bei Bekanntwerden von Rechtsverletzungen werden wir derartige Inhalte umgehend entfernen.</p>\n<p><strong>Datenschutz</strong></p>\n<p>Die Nutzung unserer Webseite ist in der Regel ohne Angabe personenbezogener Daten möglich. Soweit auf unseren Seiten personenbezogene Daten (beispielsweise Name, Anschrift oder eMail-Adressen) erhoben werden, erfolgt dies, soweit möglich, stets auf freiwilliger Basis. Diese Daten werden ohne Ihre ausdrückliche Zustimmung nicht an Dritte weitergegeben.</p>\n<p>Wir weisen darauf hin, dass die Datenübertragung im Internet (z.B. bei der Kommunikation per E-Mail) Sicherheitslücken aufweisen kann. Ein lückenloser Schutz der Daten vor dem Zugriff durch Dritte ist nicht möglich.</p>\n<p>Der Nutzung von im Rahmen der Impressumspflicht veröffentlichten Kontaktdaten durch Dritte zur Übersendung von nicht ausdrücklich angeforderter Werbung und Informationsmaterialien wird hiermit ausdrücklich widersprochen. Die Betreiber der Seiten behalten sich ausdrücklich rechtliche Schritte im Falle der unverlangten Zusendung von Werbeinformationen, etwa durch Spam-Mails, vor.</p>\n<p> </p>\n<p><strong>Datenschutzerklärung für die Nutzung von Facebook-Plugins (Like-Button)</strong></p>\n<p>Auf unseren Seiten sind Plugins des sozialen Netzwerks Facebook, 1601 South California Avenue, Palo Alto, CA 94304, USA integriert. Die Facebook-Plugins erkennen Sie an dem Facebook-Logo oder dem "Like-Button" ("Gefällt mir") auf unserer Seite. Eine Übersicht über die Facebook-Plugins finden Sie hier: <a href="http://developers.facebook.com/docs/plugins/" target="_blank">http://developers.facebook.com/docs/plugins/</a>.<br> Wenn Sie unsere Seiten besuchen, wird über das Plugin eine direkte Verbindung zwischen Ihrem Browser und dem Facebook-Server hergestellt. Facebook erhält dadurch die Information, dass Sie mit Ihrer IP-Adresse unsere Seite besucht haben. Wenn Sie den Facebook "Like-Button" anklicken während Sie in Ihrem Facebook-Account eingeloggt sind, können Sie die Inhalte unserer Seiten auf Ihrem Facebook-Profil verlinken. Dadurch kann Facebook den Besuch unserer Seiten Ihrem Benutzerkonto zuordnen. Wir weisen darauf hin, dass wir als Anbieter der Seiten keine Kenntnis vom Inhalt der übermittelten Daten sowie deren Nutzung durch Facebook erhalten. Weitere Informationen hierzu finden Sie in der Datenschutzerklärung von facebook unter <a href="http://de-de.facebook.com/policy.php" target="_blank"> http://de-de.facebook.com/policy.php</a></p>\n<p>Wenn Sie nicht wünschen, dass Facebook den Besuch unserer Seiten Ihrem Facebook-Nutzerkonto zuordnen kann, loggen Sie sich bitte aus Ihrem Facebook-Benutzerkonto aus.</p>', NULL, NULL, NULL, NULL, 0, 1, 10, 0, 0, NULL, 'Inherit', 'Inherit', 3, 0),
(12, 'ContactPage', '2013-08-22 12:23:58', '2013-08-26 21:06:35', 'kontakt', 'Kontakt', NULL, '<p> </p>\n<p> Habt ihr Fragen, Wünsche oder Anregungen?</p>\n<p> Möchtet ihr uns für eure Convention buchen?</p>\n<p> Oder möchtet ihr sogar selber eine Maid werden?</p>\n<p> Dann seid ihr hier richtig! Schreibt uns euer Anliegen und wir werden euch so schnell wie möglich antworten! :D</p>', NULL, NULL, NULL, NULL, 1, 1, 5, 0, 0, NULL, 'Inherit', 'Inherit', 6, 0),
(13, 'UserDefinedForm', '2013-08-22 12:26:01', '2013-08-22 12:46:49', 'kontakt', 'Kontakt', NULL, '<p>Wenn dir etwas ganz besonders am Herzen liegt, schick uns einfach deine Nachricht :) Ob allgemeine Fragen, Feedback, Verbesserungsvorschläge bezüglich unseres Maidcafes, etc. - wir freuen uns immer auf deine Meinung :D!</p>\n<p>$UserDefinedForm</p>', NULL, NULL, NULL, NULL, 1, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 3, 12),
(14, 'UserDefinedForm', '2013-08-22 12:26:15', '2013-08-22 12:46:23', 'buchen', 'Buchen', NULL, '<p>Bucht das Lucky Chocolate Team jetzt für eure Convention, Firmenfeier oder andere Events!<br>Wir leiten oder sind Teil eures Maid Cafes, können frei in der Bedienung oder Küche einsetzbar sein.<br>Ihr braucht noch Werbestände für eure Convention? Wir kommen gerne bei euch vorbei um zu werben!<br>Auch auf der Bühne sind wir einsetzbar! Wir lernen jedes Jahr einen Maidtanz für die DoKomi, den wir auch bei euch präsentieren können! Andere Ideen? Schreibe in das freie Feld einfach deine Wünsche an uns!<br>Du möchtest bestimmte Maids? Frage nach ob unsere Maids für dein Event frei sind und buche deine Traummaids!<br>Wir bitten darum besonders bei Conventions anzugeben, ob es ein Budget für Fahrtkosten, Eintrittskarten, Übernachtung und Leistung geben wird.<br>Da wir uns selber finanzieren, ist es uns sonst evtl. nicht möglich euch euren Maidwunsch zu erfüllen! &lt;3<br>Liebe Grüße, euer Maidteam<br><br></p>\n<p>$UserDefinedForm</p>', NULL, NULL, NULL, NULL, 1, 1, 2, 0, 0, NULL, 'Inherit', 'Inherit', 3, 12),
(15, 'UserDefinedForm', '2013-08-22 12:26:31', '2013-08-23 12:31:13', 'bewerben', 'Bewerben', NULL, '<p>Du wolltest schon immer mal in einem Maid Cafe arbeiten?<br> Dann bist du bei uns genau richtig!<br><br>Wir bieten Dir:<br>- ein großes, freundliches Cafe auf der Dokomi mit Terasse<br> - ein süßes Team, das zwar etwas chaotisch aber total liebenswert ist<br> - von Zeit zur Zeit Jobangebote für Privatfirmen oder andere Conventions<br> - aktive Mitarbeit im Internet für unser Cafe<br> - Lernseminare, Besprechungsseminare, Fotoshootings und frei Kuchen ;D<br> - ein Wochenendticket für die Dokomi und Vergünstigungen beim Hotel<br> - eine gute Zusammenarbeit mit unserem Host Cafe der Dokomi<br> - die Gelegenheit auf der Bühne und im Cafe vor Publikum zu performen<br> - Zusammenarbeit mit erfahrenen Maids und Gastronomiearbeitern<br> - Spaß, Stress, Schweiß X''D</p>\n<p>Unsere Voraussetzungen: <br>- Du wohnst in Deutschland, vorzugsweise im NRW Bereich <br> - Du bist bereit 2~3x im Jahr zum Seminar oder Fotoshooting nach NRW zu reisen<br> (Unser Hauptstützpunkt liegt im VRR Bereich, Nähe Düsseldorf)<br> - Du bist freundlich, teamfähig und unterhaltsam<br> - Du bist bereit die Maiderstausstattung zu zahlen (ca. 60,00 €)<br> - Du erklärst Dich damit einverstanden, dass du als Maid auf der Dokomi kein <br> Geld als Bezahlung erhälst. Nur bei gebuchten Events ist es möglich bezahlt zu werden<br> - Du bist mindestens 16 Jahre alt<br> - Du hast einen Facebookaccount</p>\n<p>$UserDefinedForm</p>', NULL, NULL, NULL, NULL, 1, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 7, 12),
(16, 'ArticleHolder', '2013-08-23 13:16:05', '2013-08-26 21:05:25', 'news', 'News', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 2, 0, 0, NULL, 'Inherit', 'Inherit', 3, 0),
(17, 'ArticleCategory', '2013-08-23 13:16:28', '2013-08-23 13:17:05', 'allgemein', 'Allgemein', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 2, 16),
(18, 'ArticleCategory', '2013-08-23 13:16:41', '2013-08-23 13:17:20', 'neue-article-category-2', 'Gewinnspiel', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 2, 0, 0, NULL, 'Inherit', 'Inherit', 2, 16),
(19, 'ArticlePage', '2013-08-23 13:37:41', '2013-08-23 13:42:19', 'dokomi-2013-eine-leicht-verspaetete-berichterstattung-3-', 'Dokomi 2013 ! Eine leicht verspätete Berichterstattung <3 ', NULL, '<p><strong>Hallo Goushujin-sama und Ojou-sama!!</strong></p>\n<div>Es mag vielleicht ein wenig spät sein, aber besser zu spt als gar nicht:</div>\n<div><strong>hier kommt der offizielle Maidreport der Dokomi 2013 mit exklusiven Behind-the-scene-Fotos &lt;3</strong></div>\n<div>Dieses Jahr war die Dokomi noch toller, es waren noch viiiiel mehr Gäste zu Besuch und natürlich haben auch wir ausgebaut!</div>\n<div>Hier also unser Bericht der Dokomi 2013 mit vielen Fotos!</div>\n<p style="text-align: center;"> </p>\n<div style="text-align: center;"><img class="center" title="" src="http://www.luckychocolate.de/assets/_resampled/resizedimage600401-P1140021.JPG" alt="" height="401" width="600"></div>\n<div style="font-size: 10px;">Vor dem ganzen Ansturm ersrmal eine kurze Besprechung... schön zuhören Maids, auch wenn es für einige langweilig erscheinen mag &lt;3</div>\n<p> </p>\n<p style="text-align: center;"><img class="center" title="" src="http://www.luckychocolate.de/assets/_resampled/resizedimage600401-P1140022_2.JPG" alt="" height="401" width="600"></p>\n<div style="text-align: center;">Neue Leckereien auf der Karte mussten natürlich auch festgehalten werden :3</div>\n<p style="text-align: center;"><img class="center" title="" src="http://www.luckychocolate.de/assets/_resampled/resizedimage600401-P1130927.JPG" alt="" height="401" width="600"></p>\n<p style="text-align: center;"><img class="center" title="" src="http://www.luckychocolate.de/assets/_resampled/resizedimage600401-P1140069.JPG" alt="" height="401" width="600"></p>\n<p style="text-align: center;"><img class="center" title="" src="http://www.luckychocolate.de/assets/_resampled/resizedimage600401-P1140071.JPG" alt="" height="401" width="600"></p>\n<div style="text-align: center;">Unsere suße Maid Tecky in der Küche - eine kleine Erfrischung bevor es weiter geht &lt;3</div>\n<p style="text-align: center;"><img class="center" title="" src="http://www.luckychocolate.de/assets/_resampled/resizedimage401600-P1140097.JPG" alt="" height="600" width="401"></p>\n<div style="text-align: center;">Maid Arina und Maid Yui</div>\n<p style="text-align: center;"><img class="center" title="" src="http://www.luckychocolate.de/assets/_resampled/resizedimage401600-P1130996_2.JPG" alt="" height="600" width="401"></p>\n<div style="text-align: center;">Maid Yui und Maid Umi mit Host Momo</div>\n<p style="text-align: center;"><img class="center" title="" src="http://www.luckychocolate.de/assets/_resampled/resizedimage401600-P1130991_2.JPG" alt="" height="600" width="401"></p>\n<div style="text-align: center;">Maid Jenny und Maid May</div>\n<p style="text-align: center;"><img class="center" title="" src="http://www.luckychocolate.de/assets/_resampled/resizedimage401600-P1140086_2.JPG" alt="" height="600" width="401"></p>\n<div style="text-align: center;">Maid Momo beim Aufnehmen einer Bestellung ... in unserer gemütlichen Teeecke ! (Auch neu bei uns :3)</div>\n<p style="text-align: center;"><img class="center" title="" src="http://www.luckychocolate.de/assets/_resampled/resizedimage600401-P1140074_2.JPG" alt="" height="401" width="600"></p>\n<div style="text-align: center;">Maid Jacky bei der Arbeit :D</div>\n<p style="text-align: center;"><img class="center" title="" src="http://www.luckychocolate.de/assets/_resampled/resizedimage600401-P1140080_2.JPG" alt="" height="401" width="600"></p>\n<div style="text-align: center;">Maid May - immer bereit für ein hübsches Foto &lt;3</div>\n<p style="text-align: center;"><img class="center" title="" src="http://www.luckychocolate.de/assets/_resampled/resizedimage600401-P1140081_2.JPG" alt="" height="401" width="600"></p>\n<div>Scheint als ob der Bericht sich dem Ende naht... ich hoffe, euch hat die Dokomi 2013 mindestens so gut wir uns gefallen und das man sich auf der Dokomi 2014 wieder sieht?  Ich muss sagen, es ist einfach toll, in einer so großen Gruppe an Menschen zu arbeiten, die unterschiedlicher nicht sein könnten, aber dennoch ein gleiches Interesse bzw. Hobby miteinander teilen! Es macht super viel Spaß zusammen zu arbeiten, euch zu bedienen, mit euch zu spielen  etc. &lt;3 Deshalb können wir jedes Mal kaum abwarten, bis die Dokomi wieder ansteht. Bis zur Dokomi 2014 dauert es zwar noch... aber das Planen beginnt bei uns bereits jetzt! Bis bald wieder &lt;3</div>', NULL, NULL, NULL, NULL, 1, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 5, 17),
(20, 'MaidHolder', '2013-08-23 13:39:35', '2013-08-23 13:40:14', 'maids', 'Maids', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 3, 0, 0, NULL, 'Inherit', 'Inherit', 3, 0),
(21, 'Maid', '2013-08-23 13:40:31', '2013-08-27 19:18:43', 'neue-maid', 'Yusei', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 11, 20),
(29, 'Albumholder', '2013-08-26 21:06:07', '2013-08-27 17:44:26', 'medien', 'Medien', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 4, 0, 0, NULL, 'Inherit', 'Inherit', 5, 0),
(30, 'GalleryPage', '2013-08-26 21:08:19', '2013-08-27 15:51:46', 'banner', 'Banner', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 2, 29),
(31, 'GalleryPage', '2013-08-26 21:08:32', '2013-08-26 21:08:39', 'neue-photo-gallery-2', 'Neue Photo Gallery', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 2, 0, 0, NULL, 'Inherit', 'Inherit', 1, 29),
(32, 'Page', '2013-08-27 19:20:15', '2013-08-27 20:51:30', 'neue-seite', 'To Do', NULL, '<p>News:</p>\n<p>ersten paar zeilen mit Button "Weiterlesen"</p>\n<p>Möglicher Rahmen um Subnav</p>\n<p> </p>\n<p>bild für anzahl der jahre in Maidholder</p>', NULL, NULL, NULL, NULL, 0, 0, 11, 0, 0, NULL, 'Inherit', 'Inherit', 6, 0),
(33, 'Maid', '2013-08-27 19:27:00', '2013-08-27 19:42:26', 'neue-maid-2', 'Neue Maid', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 2, 0, 0, NULL, 'Inherit', 'Inherit', 3, 20),
(34, 'Maid', '2013-08-27 19:27:09', '2013-08-27 19:41:58', 'neue-maid-4', 'Neue Maid', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 4, 20),
(35, 'Maid', '2013-08-27 19:27:22', '2013-08-27 19:42:44', 'neue-maid-3', 'Neue Maid', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 3, 0, 0, NULL, 'Inherit', 'Inherit', 3, 20);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `sitetree_editorgroups`
--

CREATE TABLE IF NOT EXISTS `sitetree_editorgroups` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `SiteTreeID` int(11) NOT NULL DEFAULT '0',
  `GroupID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `SiteTreeID` (`SiteTreeID`),
  KEY `GroupID` (`GroupID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `sitetree_imagetracking`
--

CREATE TABLE IF NOT EXISTS `sitetree_imagetracking` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `SiteTreeID` int(11) NOT NULL DEFAULT '0',
  `FileID` int(11) NOT NULL DEFAULT '0',
  `FieldName` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `SiteTreeID` (`SiteTreeID`),
  KEY `FileID` (`FileID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `sitetree_linktracking`
--

CREATE TABLE IF NOT EXISTS `sitetree_linktracking` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `SiteTreeID` int(11) NOT NULL DEFAULT '0',
  `ChildID` int(11) NOT NULL DEFAULT '0',
  `FieldName` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `SiteTreeID` (`SiteTreeID`),
  KEY `ChildID` (`ChildID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `sitetree_live`
--

CREATE TABLE IF NOT EXISTS `sitetree_live` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ClassName` enum('ErrorPage','HomePage','ContactPage','Page2','UserDefinedForm','ArticleCategory','ArticleHolder','ArticlePage','Maid','MaidHolder','Albumholder','GalleryPage','SiteTree','Page','RedirectorPage','VirtualPage') CHARACTER SET utf8 DEFAULT 'ErrorPage',
  `Created` datetime DEFAULT NULL,
  `LastEdited` datetime DEFAULT NULL,
  `URLSegment` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `Title` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `MenuTitle` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `Content` mediumtext CHARACTER SET utf8,
  `MetaTitle` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `MetaDescription` mediumtext CHARACTER SET utf8,
  `MetaKeywords` varchar(1024) CHARACTER SET utf8 DEFAULT NULL,
  `ExtraMeta` mediumtext CHARACTER SET utf8,
  `ShowInMenus` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ShowInSearch` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `Sort` int(11) NOT NULL DEFAULT '0',
  `HasBrokenFile` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `HasBrokenLink` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ReportClass` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `CanViewType` enum('Anyone','LoggedInUsers','OnlyTheseUsers','Inherit') CHARACTER SET utf8 DEFAULT 'Inherit',
  `CanEditType` enum('LoggedInUsers','OnlyTheseUsers','Inherit') CHARACTER SET utf8 DEFAULT 'Inherit',
  `Version` int(11) NOT NULL DEFAULT '0',
  `ParentID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `ParentID` (`ParentID`),
  KEY `URLSegment` (`URLSegment`),
  KEY `ClassName` (`ClassName`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=36 ;

--
-- Daten für Tabelle `sitetree_live`
--

INSERT INTO `sitetree_live` (`ID`, `ClassName`, `Created`, `LastEdited`, `URLSegment`, `Title`, `MenuTitle`, `Content`, `MetaTitle`, `MetaDescription`, `MetaKeywords`, `ExtraMeta`, `ShowInMenus`, `ShowInSearch`, `Sort`, `HasBrokenFile`, `HasBrokenLink`, `ReportClass`, `CanViewType`, `CanEditType`, `Version`, `ParentID`) VALUES
(1, 'HomePage', '2013-08-21 12:48:06', '2013-08-21 12:56:13', 'home', 'Startseite', NULL, '<p>Willkommen bei SilverStripe! Dies ist die Standard-Startseite. Sie können diese Seite bearbeiten, indem Sie <a href="admin/">das CMS</a> öffnen. Sie können außerdem die  <a href="http://doc.silverstripe.com">Entwicker-Dokumentation</a> oder die <a href="http://doc.silverstripe.com/doku.php?id=tutorials">Einführungskurse und Tutorien</a> aufrufen.</p>', NULL, NULL, NULL, NULL, 1, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 2, 0),
(4, 'ErrorPage', '2013-08-21 12:48:08', '2013-08-21 12:48:08', 'seite-nicht-gefunden', 'Seite nicht gefunden', NULL, '<p>Entschuldigung, möglicherweise versuchen Sie eine Seite zu erreichen die nicht existiert.</p><p>Bitte überprüfen Sie die Schreibweise der URL die Sie versucht haben zu erreichen und versuchen Sie es noch einmal.</p>', NULL, NULL, NULL, NULL, 0, 0, 8, 0, 0, NULL, 'Inherit', 'Inherit', 1, 0),
(5, 'ErrorPage', '2013-08-21 12:48:09', '2013-08-21 12:48:09', 'serverfehler', 'Serverfehler', NULL, '<p>Entschuldigung, bei der Bearbeitung ihrer Anfrage ist ein Problem aufgetreten.</p>', NULL, NULL, NULL, NULL, 0, 0, 9, 0, 0, NULL, 'Inherit', 'Inherit', 1, 0),
(11, 'Page2', '2013-08-22 12:20:36', '2013-08-22 12:23:18', 'impressum', 'Impressum', NULL, '<p><strong>Angabe nach § 5 TMG und § 55 RStV:</strong></p>\n<p>André Stenzel<br>Tonhallenstraße 21<br>47051 Duisburg</p>\n<p>Kontakt:</p>\n<p>E-Mail: a.stenzel92@web.de</p>\n<p><strong>Haftung für Inhalte</strong></p>\n<p>Die Inhalte unserer Seiten wurden mit größter Sorgfalt erstellt. Für die Richtigkeit, Vollständigkeit und Aktualität der Inhalte können wir jedoch keine Gewähr übernehmen. Als Diensteanbieter sind wir gemäß § 7 Abs.1 TMG für eigene Inhalte auf diesen Seiten nach den allgemeinen Gesetzen verantwortlich. Nach §§ 8 bis 10 TMG sind wir als Diensteanbieter jedoch nicht verpflichtet, übermittelte oder gespeicherte fremde Informationen zu überwachen oder nach Umständen zu forschen, die auf eine rechtswidrige Tätigkeit hinweisen. Verpflichtungen zur Entfernung oder Sperrung der Nutzung von Informationen nach den allgemeinen Gesetzen bleiben hiervon unberührt. Eine diesbezügliche Haftung ist jedoch erst ab dem Zeitpunkt der Kenntnis einer konkreten Rechtsverletzung möglich. Bei Bekanntwerden von entsprechenden Rechtsverletzungen werden wir diese Inhalte umgehend entfernen.</p>\n<p><strong>Haftung für Links</strong></p>\n<p>Unser Angebot enthält Links zu externen Webseiten Dritter, auf deren Inhalte wir keinen Einfluss haben. Deshalb können wir für diese fremden Inhalte auch keine Gewähr übernehmen. Für die Inhalte der verlinkten Seiten ist stets der jeweilige Anbieter oder Betreiber der Seiten verantwortlich. Die verlinkten Seiten wurden zum Zeitpunkt der Verlinkung auf mögliche Rechtsverstöße überprüft. Rechtswidrige Inhalte waren zum Zeitpunkt der Verlinkung nicht erkennbar. Eine permanente inhaltliche Kontrolle der verlinkten Seiten ist jedoch ohne konkrete Anhaltspunkte einer Rechtsverletzung nicht zumutbar. Bei Bekanntwerden von Rechtsverletzungen werden wir derartige Links umgehend entfernen.</p>\n<p><strong>Urheberrecht</strong></p>\n<p>Die durch die Seitenbetreiber erstellten Inhalte und Werke auf diesen Seiten unterliegen dem deutschen Urheberrecht. Die Vervielfältigung, Bearbeitung, Verbreitung und jede Art der Verwertung außerhalb der Grenzen des Urheberrechtes bedürfen der schriftlichen Zustimmung des jeweiligen Autors bzw. Erstellers. Downloads und Kopien dieser Seite sind nur für den privaten, nicht kommerziellen Gebrauch gestattet. Soweit die Inhalte auf dieser Seite nicht vom Betreiber erstellt wurden, werden die Urheberrechte Dritter beachtet. Insbesondere werden Inhalte Dritter als solche gekennzeichnet. Sollten Sie trotzdem auf eine Urheberrechtsverletzung aufmerksam werden, bitten wir um einen entsprechenden Hinweis. Bei Bekanntwerden von Rechtsverletzungen werden wir derartige Inhalte umgehend entfernen.</p>\n<p><strong>Datenschutz</strong></p>\n<p>Die Nutzung unserer Webseite ist in der Regel ohne Angabe personenbezogener Daten möglich. Soweit auf unseren Seiten personenbezogene Daten (beispielsweise Name, Anschrift oder eMail-Adressen) erhoben werden, erfolgt dies, soweit möglich, stets auf freiwilliger Basis. Diese Daten werden ohne Ihre ausdrückliche Zustimmung nicht an Dritte weitergegeben.</p>\n<p>Wir weisen darauf hin, dass die Datenübertragung im Internet (z.B. bei der Kommunikation per E-Mail) Sicherheitslücken aufweisen kann. Ein lückenloser Schutz der Daten vor dem Zugriff durch Dritte ist nicht möglich.</p>\n<p>Der Nutzung von im Rahmen der Impressumspflicht veröffentlichten Kontaktdaten durch Dritte zur Übersendung von nicht ausdrücklich angeforderter Werbung und Informationsmaterialien wird hiermit ausdrücklich widersprochen. Die Betreiber der Seiten behalten sich ausdrücklich rechtliche Schritte im Falle der unverlangten Zusendung von Werbeinformationen, etwa durch Spam-Mails, vor.</p>\n<p> </p>\n<p><strong>Datenschutzerklärung für die Nutzung von Facebook-Plugins (Like-Button)</strong></p>\n<p>Auf unseren Seiten sind Plugins des sozialen Netzwerks Facebook, 1601 South California Avenue, Palo Alto, CA 94304, USA integriert. Die Facebook-Plugins erkennen Sie an dem Facebook-Logo oder dem "Like-Button" ("Gefällt mir") auf unserer Seite. Eine Übersicht über die Facebook-Plugins finden Sie hier: <a href="http://developers.facebook.com/docs/plugins/" target="_blank">http://developers.facebook.com/docs/plugins/</a>.<br> Wenn Sie unsere Seiten besuchen, wird über das Plugin eine direkte Verbindung zwischen Ihrem Browser und dem Facebook-Server hergestellt. Facebook erhält dadurch die Information, dass Sie mit Ihrer IP-Adresse unsere Seite besucht haben. Wenn Sie den Facebook "Like-Button" anklicken während Sie in Ihrem Facebook-Account eingeloggt sind, können Sie die Inhalte unserer Seiten auf Ihrem Facebook-Profil verlinken. Dadurch kann Facebook den Besuch unserer Seiten Ihrem Benutzerkonto zuordnen. Wir weisen darauf hin, dass wir als Anbieter der Seiten keine Kenntnis vom Inhalt der übermittelten Daten sowie deren Nutzung durch Facebook erhalten. Weitere Informationen hierzu finden Sie in der Datenschutzerklärung von facebook unter <a href="http://de-de.facebook.com/policy.php" target="_blank"> http://de-de.facebook.com/policy.php</a></p>\n<p>Wenn Sie nicht wünschen, dass Facebook den Besuch unserer Seiten Ihrem Facebook-Nutzerkonto zuordnen kann, loggen Sie sich bitte aus Ihrem Facebook-Benutzerkonto aus.</p>', NULL, NULL, NULL, NULL, 0, 1, 10, 0, 0, NULL, 'Inherit', 'Inherit', 3, 0),
(12, 'ContactPage', '2013-08-22 12:23:58', '2013-08-22 12:34:59', 'kontakt', 'Kontakt', NULL, '<p> </p>\n<p> Habt ihr Fragen, Wünsche oder Anregungen?</p>\n<p> Möchtet ihr uns für eure Convention buchen?</p>\n<p> Oder möchtet ihr sogar selber eine Maid werden?</p>\n<p> Dann seid ihr hier richtig! Schreibt uns euer Anliegen und wir werden euch so schnell wie möglich antworten! :D</p>', NULL, NULL, NULL, NULL, 1, 1, 5, 0, 0, NULL, 'Inherit', 'Inherit', 5, 0),
(13, 'UserDefinedForm', '2013-08-22 12:26:01', '2013-08-22 12:46:49', 'kontakt', 'Kontakt', NULL, '<p>Wenn dir etwas ganz besonders am Herzen liegt, schick uns einfach deine Nachricht :) Ob allgemeine Fragen, Feedback, Verbesserungsvorschläge bezüglich unseres Maidcafes, etc. - wir freuen uns immer auf deine Meinung :D!</p>\n<p>$UserDefinedForm</p>', NULL, NULL, NULL, NULL, 1, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 3, 12),
(14, 'UserDefinedForm', '2013-08-22 12:26:15', '2013-08-22 12:46:25', 'buchen', 'Buchen', NULL, '<p>Bucht das Lucky Chocolate Team jetzt für eure Convention, Firmenfeier oder andere Events!<br>Wir leiten oder sind Teil eures Maid Cafes, können frei in der Bedienung oder Küche einsetzbar sein.<br>Ihr braucht noch Werbestände für eure Convention? Wir kommen gerne bei euch vorbei um zu werben!<br>Auch auf der Bühne sind wir einsetzbar! Wir lernen jedes Jahr einen Maidtanz für die DoKomi, den wir auch bei euch präsentieren können! Andere Ideen? Schreibe in das freie Feld einfach deine Wünsche an uns!<br>Du möchtest bestimmte Maids? Frage nach ob unsere Maids für dein Event frei sind und buche deine Traummaids!<br>Wir bitten darum besonders bei Conventions anzugeben, ob es ein Budget für Fahrtkosten, Eintrittskarten, Übernachtung und Leistung geben wird.<br>Da wir uns selber finanzieren, ist es uns sonst evtl. nicht möglich euch euren Maidwunsch zu erfüllen! &lt;3<br>Liebe Grüße, euer Maidteam<br><br></p>\n<p>$UserDefinedForm</p>', NULL, NULL, NULL, NULL, 1, 1, 2, 0, 0, NULL, 'Inherit', 'Inherit', 3, 12),
(15, 'UserDefinedForm', '2013-08-22 12:26:31', '2013-08-23 12:31:15', 'bewerben', 'Bewerben', NULL, '<p>Du wolltest schon immer mal in einem Maid Cafe arbeiten?<br> Dann bist du bei uns genau richtig!<br><br>Wir bieten Dir:<br>- ein großes, freundliches Cafe auf der Dokomi mit Terasse<br> - ein süßes Team, das zwar etwas chaotisch aber total liebenswert ist<br> - von Zeit zur Zeit Jobangebote für Privatfirmen oder andere Conventions<br> - aktive Mitarbeit im Internet für unser Cafe<br> - Lernseminare, Besprechungsseminare, Fotoshootings und frei Kuchen ;D<br> - ein Wochenendticket für die Dokomi und Vergünstigungen beim Hotel<br> - eine gute Zusammenarbeit mit unserem Host Cafe der Dokomi<br> - die Gelegenheit auf der Bühne und im Cafe vor Publikum zu performen<br> - Zusammenarbeit mit erfahrenen Maids und Gastronomiearbeitern<br> - Spaß, Stress, Schweiß X''D</p>\n<p>Unsere Voraussetzungen: <br>- Du wohnst in Deutschland, vorzugsweise im NRW Bereich <br> - Du bist bereit 2~3x im Jahr zum Seminar oder Fotoshooting nach NRW zu reisen<br> (Unser Hauptstützpunkt liegt im VRR Bereich, Nähe Düsseldorf)<br> - Du bist freundlich, teamfähig und unterhaltsam<br> - Du bist bereit die Maiderstausstattung zu zahlen (ca. 60,00 €)<br> - Du erklärst Dich damit einverstanden, dass du als Maid auf der Dokomi kein <br> Geld als Bezahlung erhälst. Nur bei gebuchten Events ist es möglich bezahlt zu werden<br> - Du bist mindestens 16 Jahre alt<br> - Du hast einen Facebookaccount</p>\n<p>$UserDefinedForm</p>', NULL, NULL, NULL, NULL, 1, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 7, 12),
(16, 'ArticleHolder', '2013-08-23 13:16:05', '2013-08-23 13:16:18', 'news', 'News', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 2, 0, 0, NULL, 'Inherit', 'Inherit', 2, 0),
(17, 'ArticleCategory', '2013-08-23 13:16:28', '2013-08-23 13:17:05', 'allgemein', 'Allgemein', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 2, 16),
(18, 'ArticleCategory', '2013-08-23 13:16:41', '2013-08-23 13:17:20', 'neue-article-category-2', 'Gewinnspiel', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 2, 0, 0, NULL, 'Inherit', 'Inherit', 2, 16),
(19, 'ArticlePage', '2013-08-23 13:37:41', '2013-08-23 13:42:19', 'dokomi-2013-eine-leicht-verspaetete-berichterstattung-3-', 'Dokomi 2013 ! Eine leicht verspätete Berichterstattung <3 ', NULL, '<p><strong>Hallo Goushujin-sama und Ojou-sama!!</strong></p>\n<div>Es mag vielleicht ein wenig spät sein, aber besser zu spt als gar nicht:</div>\n<div><strong>hier kommt der offizielle Maidreport der Dokomi 2013 mit exklusiven Behind-the-scene-Fotos &lt;3</strong></div>\n<div>Dieses Jahr war die Dokomi noch toller, es waren noch viiiiel mehr Gäste zu Besuch und natürlich haben auch wir ausgebaut!</div>\n<div>Hier also unser Bericht der Dokomi 2013 mit vielen Fotos!</div>\n<p style="text-align: center;"> </p>\n<div style="text-align: center;"><img class="center" title="" src="http://www.luckychocolate.de/assets/_resampled/resizedimage600401-P1140021.JPG" alt="" height="401" width="600"></div>\n<div style="font-size: 10px;">Vor dem ganzen Ansturm ersrmal eine kurze Besprechung... schön zuhören Maids, auch wenn es für einige langweilig erscheinen mag &lt;3</div>\n<p> </p>\n<p style="text-align: center;"><img class="center" title="" src="http://www.luckychocolate.de/assets/_resampled/resizedimage600401-P1140022_2.JPG" alt="" height="401" width="600"></p>\n<div style="text-align: center;">Neue Leckereien auf der Karte mussten natürlich auch festgehalten werden :3</div>\n<p style="text-align: center;"><img class="center" title="" src="http://www.luckychocolate.de/assets/_resampled/resizedimage600401-P1130927.JPG" alt="" height="401" width="600"></p>\n<p style="text-align: center;"><img class="center" title="" src="http://www.luckychocolate.de/assets/_resampled/resizedimage600401-P1140069.JPG" alt="" height="401" width="600"></p>\n<p style="text-align: center;"><img class="center" title="" src="http://www.luckychocolate.de/assets/_resampled/resizedimage600401-P1140071.JPG" alt="" height="401" width="600"></p>\n<div style="text-align: center;">Unsere suße Maid Tecky in der Küche - eine kleine Erfrischung bevor es weiter geht &lt;3</div>\n<p style="text-align: center;"><img class="center" title="" src="http://www.luckychocolate.de/assets/_resampled/resizedimage401600-P1140097.JPG" alt="" height="600" width="401"></p>\n<div style="text-align: center;">Maid Arina und Maid Yui</div>\n<p style="text-align: center;"><img class="center" title="" src="http://www.luckychocolate.de/assets/_resampled/resizedimage401600-P1130996_2.JPG" alt="" height="600" width="401"></p>\n<div style="text-align: center;">Maid Yui und Maid Umi mit Host Momo</div>\n<p style="text-align: center;"><img class="center" title="" src="http://www.luckychocolate.de/assets/_resampled/resizedimage401600-P1130991_2.JPG" alt="" height="600" width="401"></p>\n<div style="text-align: center;">Maid Jenny und Maid May</div>\n<p style="text-align: center;"><img class="center" title="" src="http://www.luckychocolate.de/assets/_resampled/resizedimage401600-P1140086_2.JPG" alt="" height="600" width="401"></p>\n<div style="text-align: center;">Maid Momo beim Aufnehmen einer Bestellung ... in unserer gemütlichen Teeecke ! (Auch neu bei uns :3)</div>\n<p style="text-align: center;"><img class="center" title="" src="http://www.luckychocolate.de/assets/_resampled/resizedimage600401-P1140074_2.JPG" alt="" height="401" width="600"></p>\n<div style="text-align: center;">Maid Jacky bei der Arbeit :D</div>\n<p style="text-align: center;"><img class="center" title="" src="http://www.luckychocolate.de/assets/_resampled/resizedimage600401-P1140080_2.JPG" alt="" height="401" width="600"></p>\n<div style="text-align: center;">Maid May - immer bereit für ein hübsches Foto &lt;3</div>\n<p style="text-align: center;"><img class="center" title="" src="http://www.luckychocolate.de/assets/_resampled/resizedimage600401-P1140081_2.JPG" alt="" height="401" width="600"></p>\n<div>Scheint als ob der Bericht sich dem Ende naht... ich hoffe, euch hat die Dokomi 2013 mindestens so gut wir uns gefallen und das man sich auf der Dokomi 2014 wieder sieht?  Ich muss sagen, es ist einfach toll, in einer so großen Gruppe an Menschen zu arbeiten, die unterschiedlicher nicht sein könnten, aber dennoch ein gleiches Interesse bzw. Hobby miteinander teilen! Es macht super viel Spaß zusammen zu arbeiten, euch zu bedienen, mit euch zu spielen  etc. &lt;3 Deshalb können wir jedes Mal kaum abwarten, bis die Dokomi wieder ansteht. Bis zur Dokomi 2014 dauert es zwar noch... aber das Planen beginnt bei uns bereits jetzt! Bis bald wieder &lt;3</div>', NULL, NULL, NULL, NULL, 1, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 5, 17),
(20, 'MaidHolder', '2013-08-23 13:39:35', '2013-08-23 13:40:15', 'maids', 'Maids', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 3, 0, 0, NULL, 'Inherit', 'Inherit', 3, 0),
(21, 'Maid', '2013-08-23 13:40:31', '2013-08-27 19:18:44', 'neue-maid', 'Yusei', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 11, 20),
(29, 'Albumholder', '2013-08-26 21:06:07', '2013-08-27 17:44:27', 'medien', 'Medien', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 4, 0, 0, NULL, 'Inherit', 'Inherit', 5, 0),
(30, 'GalleryPage', '2013-08-26 21:08:19', '2013-08-27 15:51:47', 'banner', 'Banner', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 2, 29),
(31, 'GalleryPage', '2013-08-26 21:08:32', '2013-08-26 21:08:40', 'neue-photo-gallery-2', 'Neue Photo Gallery', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 2, 0, 0, NULL, 'Inherit', 'Inherit', 1, 29),
(32, 'Page', '2013-08-27 19:20:15', '2013-08-27 20:51:30', 'neue-seite', 'To Do', NULL, '<p>News:</p>\n<p>ersten paar zeilen mit Button "Weiterlesen"</p>\n<p>Möglicher Rahmen um Subnav</p>\n<p> </p>\n<p>bild für anzahl der jahre in Maidholder</p>', NULL, NULL, NULL, NULL, 0, 0, 11, 0, 0, NULL, 'Inherit', 'Inherit', 6, 0),
(33, 'Maid', '2013-08-27 19:27:00', '2013-08-27 19:42:27', 'neue-maid-2', 'Neue Maid', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 2, 0, 0, NULL, 'Inherit', 'Inherit', 3, 20),
(34, 'Maid', '2013-08-27 19:27:09', '2013-08-27 19:41:59', 'neue-maid-4', 'Neue Maid', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 4, 20),
(35, 'Maid', '2013-08-27 19:27:22', '2013-08-27 19:42:45', 'neue-maid-3', 'Neue Maid', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 3, 0, 0, NULL, 'Inherit', 'Inherit', 3, 20);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `sitetree_versions`
--

CREATE TABLE IF NOT EXISTS `sitetree_versions` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `RecordID` int(11) NOT NULL DEFAULT '0',
  `Version` int(11) NOT NULL DEFAULT '0',
  `WasPublished` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `AuthorID` int(11) NOT NULL DEFAULT '0',
  `PublisherID` int(11) NOT NULL DEFAULT '0',
  `ClassName` enum('ErrorPage','HomePage','ContactPage','Page2','UserDefinedForm','ArticleCategory','ArticleHolder','ArticlePage','Maid','MaidHolder','Albumholder','GalleryPage','SiteTree','Page','RedirectorPage','VirtualPage') CHARACTER SET utf8 DEFAULT 'ErrorPage',
  `Created` datetime DEFAULT NULL,
  `LastEdited` datetime DEFAULT NULL,
  `URLSegment` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `Title` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `MenuTitle` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `Content` mediumtext CHARACTER SET utf8,
  `MetaTitle` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `MetaDescription` mediumtext CHARACTER SET utf8,
  `MetaKeywords` varchar(1024) CHARACTER SET utf8 DEFAULT NULL,
  `ExtraMeta` mediumtext CHARACTER SET utf8,
  `ShowInMenus` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ShowInSearch` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `Sort` int(11) NOT NULL DEFAULT '0',
  `HasBrokenFile` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `HasBrokenLink` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ReportClass` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `CanViewType` enum('Anyone','LoggedInUsers','OnlyTheseUsers','Inherit') CHARACTER SET utf8 DEFAULT 'Inherit',
  `CanEditType` enum('LoggedInUsers','OnlyTheseUsers','Inherit') CHARACTER SET utf8 DEFAULT 'Inherit',
  `ParentID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `RecordID_Version` (`RecordID`,`Version`),
  KEY `RecordID` (`RecordID`),
  KEY `Version` (`Version`),
  KEY `AuthorID` (`AuthorID`),
  KEY `PublisherID` (`PublisherID`),
  KEY `ParentID` (`ParentID`),
  KEY `URLSegment` (`URLSegment`),
  KEY `ClassName` (`ClassName`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=99 ;

--
-- Daten für Tabelle `sitetree_versions`
--

INSERT INTO `sitetree_versions` (`ID`, `RecordID`, `Version`, `WasPublished`, `AuthorID`, `PublisherID`, `ClassName`, `Created`, `LastEdited`, `URLSegment`, `Title`, `MenuTitle`, `Content`, `MetaTitle`, `MetaDescription`, `MetaKeywords`, `ExtraMeta`, `ShowInMenus`, `ShowInSearch`, `Sort`, `HasBrokenFile`, `HasBrokenLink`, `ReportClass`, `CanViewType`, `CanEditType`, `ParentID`) VALUES
(1, 1, 1, 1, 0, 0, 'Page', '2013-08-21 12:48:06', '2013-08-21 12:48:06', 'home', 'Startseite', NULL, '<p>Willkommen bei SilverStripe! Dies ist die Standard-Startseite. Sie können diese Seite bearbeiten, indem Sie <a href="admin/">das CMS</a> öffnen. Sie können außerdem die  <a href="http://doc.silverstripe.com">Entwicker-Dokumentation</a> oder die <a href="http://doc.silverstripe.com/doku.php?id=tutorials">Einführungskurse und Tutorien</a> aufrufen.</p>', NULL, NULL, NULL, NULL, 1, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(2, 2, 1, 1, 0, 0, 'Page', '2013-08-21 12:48:07', '2013-08-21 12:48:07', 'ueber-uns', 'Über uns', NULL, '<p>Sie können diese Seite mit Ihren eigenen Inhalten füllen, oder sie löschen und Ihre eigenen Seiten erstellen.<br></p>', NULL, NULL, NULL, NULL, 1, 1, 2, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(3, 3, 1, 1, 0, 0, 'Page', '2013-08-21 12:48:08', '2013-08-21 12:48:08', 'kontakt', 'Kontakt', NULL, '<p>Sie können diese Seite mit Ihren eigenen Inhalten füllen, oder sie löschen und Ihre eigenen Seiten erstellen.<br></p>', NULL, NULL, NULL, NULL, 1, 1, 3, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(4, 4, 1, 1, 0, 0, 'ErrorPage', '2013-08-21 12:48:08', '2013-08-21 12:48:08', 'seite-nicht-gefunden', 'Seite nicht gefunden', NULL, '<p>Entschuldigung, möglicherweise versuchen Sie eine Seite zu erreichen die nicht existiert.</p><p>Bitte überprüfen Sie die Schreibweise der URL die Sie versucht haben zu erreichen und versuchen Sie es noch einmal.</p>', NULL, NULL, NULL, NULL, 0, 0, 4, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(5, 5, 1, 1, 0, 0, 'ErrorPage', '2013-08-21 12:48:09', '2013-08-21 12:48:09', 'serverfehler', 'Serverfehler', NULL, '<p>Entschuldigung, bei der Bearbeitung ihrer Anfrage ist ein Problem aufgetreten.</p>', NULL, NULL, NULL, NULL, 0, 0, 5, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(6, 6, 1, 0, 1, 0, '', '2013-08-21 12:54:59', '2013-08-21 12:54:59', 'neue-bildergalerie', 'Neue Bildergalerie', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 6, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(7, 6, 2, 1, 1, 1, '', '2013-08-21 12:54:59', '2013-08-21 12:55:37', 'bildergallerie', 'Bildergallerie', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 6, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(8, 1, 2, 1, 1, 1, 'HomePage', '2013-08-21 12:48:06', '2013-08-21 12:56:13', 'home', 'Startseite', NULL, '<p>Willkommen bei SilverStripe! Dies ist die Standard-Startseite. Sie können diese Seite bearbeiten, indem Sie <a href="admin/">das CMS</a> öffnen. Sie können außerdem die  <a href="http://doc.silverstripe.com">Entwicker-Dokumentation</a> oder die <a href="http://doc.silverstripe.com/doku.php?id=tutorials">Einführungskurse und Tutorien</a> aufrufen.</p>', NULL, NULL, NULL, NULL, 1, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(9, 7, 1, 0, 1, 0, '', '2013-08-21 12:57:40', '2013-08-21 12:57:40', 'neue-bildergalerie', 'Neue Bildergalerie', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 6),
(10, 7, 2, 0, 1, 0, '', '2013-08-21 12:57:40', '2013-08-21 12:58:08', 'maids', 'Maids', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 6),
(11, 8, 1, 1, 1, 1, '', '2013-08-21 13:00:54', '2013-08-21 13:00:54', 'neue-bildergalerie', 'Neue Bildergalerie', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 7),
(12, 9, 1, 1, 1, 1, '', '2013-08-21 13:15:23', '2013-08-21 13:15:23', 'neue-bildergalerie', 'Neue Bildergalerie', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 2, 0, 0, NULL, 'Inherit', 'Inherit', 6),
(13, 9, 2, 0, 1, 0, '', '2013-08-21 13:15:23', '2013-08-21 13:16:06', 'neue-bildergalerie', 'Neue Bildergalerie', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 2, 0, 0, NULL, 'Inherit', 'Inherit', 6),
(14, 10, 1, 0, 1, 0, '', '2013-08-21 13:16:37', '2013-08-21 13:16:37', 'neue-bildergalerie-2', 'Neue Bildergalerie', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 3, 0, 0, NULL, 'Inherit', 'Inherit', 6),
(15, 10, 2, 0, 1, 0, '', '2013-08-21 13:16:37', '2013-08-21 13:17:07', 'neue-bildergalerie-2', 'Neue Bildergalerie', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 3, 0, 0, NULL, 'Inherit', 'Inherit', 6),
(16, 11, 1, 0, 1, 0, 'Page2', '2013-08-22 12:20:36', '2013-08-22 12:20:36', 'neue-page2', 'Neue Page2', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 7, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(17, 11, 2, 1, 1, 1, 'Page2', '2013-08-22 12:20:36', '2013-08-22 12:20:53', 'impressum', 'Impressum', NULL, '<p>&lt;p&gt;&lt;strong&gt;Angabe nach § 5 TMG und § 55 RStV:&lt;/strong&gt;&lt;/p&gt;<br>&lt;p&gt;André Stenzel&lt;br&gt;Tonhallenstraße 21&lt;br&gt;47051 Duisburg&lt;/p&gt;<br>&lt;p&gt;Kontakt:&lt;/p&gt;<br>&lt;p&gt;E-Mail: a.stenzel92@web.de&lt;/p&gt;<br>&lt;p&gt;&lt;strong&gt;Haftung für Inhalte&lt;/strong&gt;&lt;/p&gt;<br>&lt;p&gt;Die Inhalte unserer Seiten wurden mit größter Sorgfalt erstellt. Für die Richtigkeit, Vollständigkeit und Aktualität der Inhalte können wir jedoch keine Gewähr übernehmen. Als Diensteanbieter sind wir gemäß § 7 Abs.1 TMG für eigene Inhalte auf diesen Seiten nach den allgemeinen Gesetzen verantwortlich. Nach §§ 8 bis 10 TMG sind wir als Diensteanbieter jedoch nicht verpflichtet, übermittelte oder gespeicherte fremde Informationen zu überwachen oder nach Umständen zu forschen, die auf eine rechtswidrige Tätigkeit hinweisen. Verpflichtungen zur Entfernung oder Sperrung der Nutzung von Informationen nach den allgemeinen Gesetzen bleiben hiervon unberührt. Eine diesbezügliche Haftung ist jedoch erst ab dem Zeitpunkt der Kenntnis einer konkreten Rechtsverletzung möglich. Bei Bekanntwerden von entsprechenden Rechtsverletzungen werden wir diese Inhalte umgehend entfernen.&lt;/p&gt;<br>&lt;p&gt;&lt;strong&gt;Haftung für Links&lt;/strong&gt;&lt;/p&gt;<br>&lt;p&gt;Unser Angebot enthält Links zu externen Webseiten Dritter, auf deren Inhalte wir keinen Einfluss haben. Deshalb können wir für diese fremden Inhalte auch keine Gewähr übernehmen. Für die Inhalte der verlinkten Seiten ist stets der jeweilige Anbieter oder Betreiber der Seiten verantwortlich. Die verlinkten Seiten wurden zum Zeitpunkt der Verlinkung auf mögliche Rechtsverstöße überprüft. Rechtswidrige Inhalte waren zum Zeitpunkt der Verlinkung nicht erkennbar. Eine permanente inhaltliche Kontrolle der verlinkten Seiten ist jedoch ohne konkrete Anhaltspunkte einer Rechtsverletzung nicht zumutbar. Bei Bekanntwerden von Rechtsverletzungen werden wir derartige Links umgehend entfernen.&lt;/p&gt;<br>&lt;p&gt;&lt;strong&gt;Urheberrecht&lt;/strong&gt;&lt;/p&gt;<br>&lt;p&gt;Die durch die Seitenbetreiber erstellten Inhalte und Werke auf diesen Seiten unterliegen dem deutschen Urheberrecht. Die Vervielfältigung, Bearbeitung, Verbreitung und jede Art der Verwertung außerhalb der Grenzen des Urheberrechtes bedürfen der schriftlichen Zustimmung des jeweiligen Autors bzw. Erstellers. Downloads und Kopien dieser Seite sind nur für den privaten, nicht kommerziellen Gebrauch gestattet. Soweit die Inhalte auf dieser Seite nicht vom Betreiber erstellt wurden, werden die Urheberrechte Dritter beachtet. Insbesondere werden Inhalte Dritter als solche gekennzeichnet. Sollten Sie trotzdem auf eine Urheberrechtsverletzung aufmerksam werden, bitten wir um einen entsprechenden Hinweis. Bei Bekanntwerden von Rechtsverletzungen werden wir derartige Inhalte umgehend entfernen.&lt;/p&gt;<br>&lt;p&gt;&lt;strong&gt;Datenschutz&lt;/strong&gt;&lt;/p&gt;<br>&lt;p&gt;Die Nutzung unserer Webseite ist in der Regel ohne Angabe personenbezogener Daten möglich. Soweit auf unseren Seiten personenbezogene Daten (beispielsweise Name, Anschrift oder eMail-Adressen) erhoben werden, erfolgt dies, soweit möglich, stets auf freiwilliger Basis. Diese Daten werden ohne Ihre ausdrückliche Zustimmung nicht an Dritte weitergegeben.&lt;/p&gt;<br>&lt;p&gt;Wir weisen darauf hin, dass die Datenübertragung im Internet (z.B. bei der Kommunikation per E-Mail) Sicherheitslücken aufweisen kann. Ein lückenloser Schutz der Daten vor dem Zugriff durch Dritte ist nicht möglich.&lt;/p&gt;<br>&lt;p&gt;Der Nutzung von im Rahmen der Impressumspflicht veröffentlichten Kontaktdaten durch Dritte zur Übersendung von nicht ausdrücklich angeforderter Werbung und Informationsmaterialien wird hiermit ausdrücklich widersprochen. Die Betreiber der Seiten behalten sich ausdrücklich rechtliche Schritte im Falle der unverlangten Zusendung von Werbeinformationen, etwa durch Spam-Mails, vor.&lt;/p&gt;<br>&lt;p&gt; &lt;/p&gt;<br>&lt;p&gt;&lt;strong&gt;Datenschutzerklärung für die Nutzung von Facebook-Plugins (Like-Button)&lt;/strong&gt;&lt;/p&gt;<br>&lt;p&gt;Auf unseren Seiten sind Plugins des sozialen Netzwerks Facebook, 1601 South California Avenue, Palo Alto, CA 94304, USA integriert. Die Facebook-Plugins erkennen Sie an dem Facebook-Logo oder dem "Like-Button" ("Gefällt mir") auf unserer Seite. Eine Übersicht über die Facebook-Plugins finden Sie hier: &lt;a href="http://developers.facebook.com/docs/plugins/" target="_blank"&gt;http://developers.facebook.com/docs/plugins/&lt;/a&gt;.&lt;br&gt; Wenn Sie unsere Seiten besuchen, wird über das Plugin eine direkte Verbindung zwischen Ihrem Browser und dem Facebook-Server hergestellt. Facebook erhält dadurch die Information, dass Sie mit Ihrer IP-Adresse unsere Seite besucht haben. Wenn Sie den Facebook "Like-Button" anklicken während Sie in Ihrem Facebook-Account eingeloggt sind, können Sie die Inhalte unserer Seiten auf Ihrem Facebook-Profil verlinken. Dadurch kann Facebook den Besuch unserer Seiten Ihrem Benutzerkonto zuordnen. Wir weisen darauf hin, dass wir als Anbieter der Seiten keine Kenntnis vom Inhalt der übermittelten Daten sowie deren Nutzung durch Facebook erhalten. Weitere Informationen hierzu finden Sie in der Datenschutzerklärung von facebook unter &lt;a href="http://de-de.facebook.com/policy.php" target="_blank"&gt; http://de-de.facebook.com/policy.php&lt;/a&gt;&lt;/p&gt;<br>&lt;p&gt;Wenn Sie nicht wünschen, dass Facebook den Besuch unserer Seiten Ihrem Facebook-Nutzerkonto zuordnen kann, loggen Sie sich bitte aus Ihrem Facebook-Benutzerkonto aus.&lt;/p&gt;</p>', NULL, NULL, NULL, NULL, 1, 1, 7, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(18, 11, 3, 1, 1, 1, 'Page2', '2013-08-22 12:20:36', '2013-08-22 12:23:18', 'impressum', 'Impressum', NULL, '<p><strong>Angabe nach § 5 TMG und § 55 RStV:</strong></p>\n<p>André Stenzel<br>Tonhallenstraße 21<br>47051 Duisburg</p>\n<p>Kontakt:</p>\n<p>E-Mail: a.stenzel92@web.de</p>\n<p><strong>Haftung für Inhalte</strong></p>\n<p>Die Inhalte unserer Seiten wurden mit größter Sorgfalt erstellt. Für die Richtigkeit, Vollständigkeit und Aktualität der Inhalte können wir jedoch keine Gewähr übernehmen. Als Diensteanbieter sind wir gemäß § 7 Abs.1 TMG für eigene Inhalte auf diesen Seiten nach den allgemeinen Gesetzen verantwortlich. Nach §§ 8 bis 10 TMG sind wir als Diensteanbieter jedoch nicht verpflichtet, übermittelte oder gespeicherte fremde Informationen zu überwachen oder nach Umständen zu forschen, die auf eine rechtswidrige Tätigkeit hinweisen. Verpflichtungen zur Entfernung oder Sperrung der Nutzung von Informationen nach den allgemeinen Gesetzen bleiben hiervon unberührt. Eine diesbezügliche Haftung ist jedoch erst ab dem Zeitpunkt der Kenntnis einer konkreten Rechtsverletzung möglich. Bei Bekanntwerden von entsprechenden Rechtsverletzungen werden wir diese Inhalte umgehend entfernen.</p>\n<p><strong>Haftung für Links</strong></p>\n<p>Unser Angebot enthält Links zu externen Webseiten Dritter, auf deren Inhalte wir keinen Einfluss haben. Deshalb können wir für diese fremden Inhalte auch keine Gewähr übernehmen. Für die Inhalte der verlinkten Seiten ist stets der jeweilige Anbieter oder Betreiber der Seiten verantwortlich. Die verlinkten Seiten wurden zum Zeitpunkt der Verlinkung auf mögliche Rechtsverstöße überprüft. Rechtswidrige Inhalte waren zum Zeitpunkt der Verlinkung nicht erkennbar. Eine permanente inhaltliche Kontrolle der verlinkten Seiten ist jedoch ohne konkrete Anhaltspunkte einer Rechtsverletzung nicht zumutbar. Bei Bekanntwerden von Rechtsverletzungen werden wir derartige Links umgehend entfernen.</p>\n<p><strong>Urheberrecht</strong></p>\n<p>Die durch die Seitenbetreiber erstellten Inhalte und Werke auf diesen Seiten unterliegen dem deutschen Urheberrecht. Die Vervielfältigung, Bearbeitung, Verbreitung und jede Art der Verwertung außerhalb der Grenzen des Urheberrechtes bedürfen der schriftlichen Zustimmung des jeweiligen Autors bzw. Erstellers. Downloads und Kopien dieser Seite sind nur für den privaten, nicht kommerziellen Gebrauch gestattet. Soweit die Inhalte auf dieser Seite nicht vom Betreiber erstellt wurden, werden die Urheberrechte Dritter beachtet. Insbesondere werden Inhalte Dritter als solche gekennzeichnet. Sollten Sie trotzdem auf eine Urheberrechtsverletzung aufmerksam werden, bitten wir um einen entsprechenden Hinweis. Bei Bekanntwerden von Rechtsverletzungen werden wir derartige Inhalte umgehend entfernen.</p>\n<p><strong>Datenschutz</strong></p>\n<p>Die Nutzung unserer Webseite ist in der Regel ohne Angabe personenbezogener Daten möglich. Soweit auf unseren Seiten personenbezogene Daten (beispielsweise Name, Anschrift oder eMail-Adressen) erhoben werden, erfolgt dies, soweit möglich, stets auf freiwilliger Basis. Diese Daten werden ohne Ihre ausdrückliche Zustimmung nicht an Dritte weitergegeben.</p>\n<p>Wir weisen darauf hin, dass die Datenübertragung im Internet (z.B. bei der Kommunikation per E-Mail) Sicherheitslücken aufweisen kann. Ein lückenloser Schutz der Daten vor dem Zugriff durch Dritte ist nicht möglich.</p>\n<p>Der Nutzung von im Rahmen der Impressumspflicht veröffentlichten Kontaktdaten durch Dritte zur Übersendung von nicht ausdrücklich angeforderter Werbung und Informationsmaterialien wird hiermit ausdrücklich widersprochen. Die Betreiber der Seiten behalten sich ausdrücklich rechtliche Schritte im Falle der unverlangten Zusendung von Werbeinformationen, etwa durch Spam-Mails, vor.</p>\n<p> </p>\n<p><strong>Datenschutzerklärung für die Nutzung von Facebook-Plugins (Like-Button)</strong></p>\n<p>Auf unseren Seiten sind Plugins des sozialen Netzwerks Facebook, 1601 South California Avenue, Palo Alto, CA 94304, USA integriert. Die Facebook-Plugins erkennen Sie an dem Facebook-Logo oder dem "Like-Button" ("Gefällt mir") auf unserer Seite. Eine Übersicht über die Facebook-Plugins finden Sie hier: <a href="http://developers.facebook.com/docs/plugins/" target="_blank">http://developers.facebook.com/docs/plugins/</a>.<br> Wenn Sie unsere Seiten besuchen, wird über das Plugin eine direkte Verbindung zwischen Ihrem Browser und dem Facebook-Server hergestellt. Facebook erhält dadurch die Information, dass Sie mit Ihrer IP-Adresse unsere Seite besucht haben. Wenn Sie den Facebook "Like-Button" anklicken während Sie in Ihrem Facebook-Account eingeloggt sind, können Sie die Inhalte unserer Seiten auf Ihrem Facebook-Profil verlinken. Dadurch kann Facebook den Besuch unserer Seiten Ihrem Benutzerkonto zuordnen. Wir weisen darauf hin, dass wir als Anbieter der Seiten keine Kenntnis vom Inhalt der übermittelten Daten sowie deren Nutzung durch Facebook erhalten. Weitere Informationen hierzu finden Sie in der Datenschutzerklärung von facebook unter <a href="http://de-de.facebook.com/policy.php" target="_blank"> http://de-de.facebook.com/policy.php</a></p>\n<p>Wenn Sie nicht wünschen, dass Facebook den Besuch unserer Seiten Ihrem Facebook-Nutzerkonto zuordnen kann, loggen Sie sich bitte aus Ihrem Facebook-Benutzerkonto aus.</p>', NULL, NULL, NULL, NULL, 0, 1, 7, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(19, 12, 1, 0, 1, 0, 'ContactPage', '2013-08-22 12:23:58', '2013-08-22 12:23:58', 'neue-contact-page', 'Neue Contact Page', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 8, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(20, 12, 2, 1, 1, 1, 'ContactPage', '2013-08-22 12:23:58', '2013-08-22 12:24:35', 'neue-contact-page', 'Kontakt', NULL, '<p>Wenn dir etwas ganz besonders am Herzen liegt, schick uns einfach deine Nachricht :) Ob allgemeine Fragen, Feedback, Verbesserungsvorschläge bezüglich unseres Maidcafes, etc. - wir freuen uns immer auf deine Meinung :D!<br>$UserDefinedForm</p>', NULL, NULL, NULL, NULL, 1, 1, 8, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(21, 12, 3, 1, 1, 1, 'ContactPage', '2013-08-22 12:23:58', '2013-08-22 12:24:56', 'neue-contact-page', 'Kontakt', NULL, '<p>&lt;p&gt; &lt;/p&gt;<br>&lt;p&gt; Habt ihr Fragen, Wünsche oder Anregungen?&lt;/p&gt;<br>&lt;p&gt; Möchtet ihr uns für eure Convention buchen?&lt;/p&gt;<br>&lt;p&gt; Oder möchtet ihr sogar selber eine Maid werden?&lt;/p&gt;<br>&lt;p&gt; Dann seid ihr hier richtig! Schreibt uns euer Anliegen und wir werden euch so schnell wie möglich antworten! :D&lt;/p&gt;</p>', NULL, NULL, NULL, NULL, 1, 1, 8, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(22, 12, 4, 1, 1, 1, 'ContactPage', '2013-08-22 12:23:58', '2013-08-22 12:25:23', 'kontakt-2', 'Kontakt', NULL, '<p>&lt;p&gt; &lt;/p&gt;<br>&lt;p&gt; Habt ihr Fragen, Wünsche oder Anregungen?&lt;/p&gt;<br>&lt;p&gt; Möchtet ihr uns für eure Convention buchen?&lt;/p&gt;<br>&lt;p&gt; Oder möchtet ihr sogar selber eine Maid werden?&lt;/p&gt;<br>&lt;p&gt; Dann seid ihr hier richtig! Schreibt uns euer Anliegen und wir werden euch so schnell wie möglich antworten! :D&lt;/p&gt;</p>', NULL, NULL, NULL, NULL, 1, 1, 8, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(23, 12, 5, 1, 1, 1, 'ContactPage', '2013-08-22 12:23:58', '2013-08-22 12:25:49', 'kontakt', 'Kontakt', NULL, '<p>&lt;p&gt; &lt;/p&gt;<br>&lt;p&gt; Habt ihr Fragen, Wünsche oder Anregungen?&lt;/p&gt;<br>&lt;p&gt; Möchtet ihr uns für eure Convention buchen?&lt;/p&gt;<br>&lt;p&gt; Oder möchtet ihr sogar selber eine Maid werden?&lt;/p&gt;<br>&lt;p&gt; Dann seid ihr hier richtig! Schreibt uns euer Anliegen und wir werden euch so schnell wie möglich antworten! :D&lt;/p&gt;</p>', NULL, NULL, NULL, NULL, 1, 1, 8, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(24, 13, 1, 0, 1, 0, 'UserDefinedForm', '2013-08-22 12:26:01', '2013-08-22 12:26:01', 'neue-anpassbares-formular', 'Neue Anpassbares Formular', NULL, '$UserDefinedForm', NULL, NULL, NULL, NULL, 1, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 12),
(25, 14, 1, 0, 1, 0, 'UserDefinedForm', '2013-08-22 12:26:15', '2013-08-22 12:26:15', 'neue-anpassbares-formular-2', 'Neue Anpassbares Formular', NULL, '$UserDefinedForm', NULL, NULL, NULL, NULL, 1, 1, 2, 0, 0, NULL, 'Inherit', 'Inherit', 12),
(26, 15, 1, 0, 1, 0, 'UserDefinedForm', '2013-08-22 12:26:31', '2013-08-22 12:26:31', 'neue-anpassbares-formular', 'Neue Anpassbares Formular', NULL, '$UserDefinedForm', NULL, NULL, NULL, NULL, 1, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 14),
(27, 15, 2, 1, 1, 1, 'UserDefinedForm', '2013-08-22 12:26:31', '2013-08-22 12:27:00', 'neue-anpassbares-formular-3', 'Neue Anpassbares Formular', NULL, '$UserDefinedForm', NULL, NULL, NULL, NULL, 1, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 12),
(28, 13, 2, 1, 1, 1, 'UserDefinedForm', '2013-08-22 12:26:01', '2013-08-22 12:27:19', 'kontakt', 'Kontakt', NULL, '$UserDefinedForm', NULL, NULL, NULL, NULL, 1, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 12),
(29, 15, 3, 1, 1, 1, 'UserDefinedForm', '2013-08-22 12:26:31', '2013-08-22 12:27:40', 'bewerben', 'Bewerben', NULL, '$UserDefinedForm', NULL, NULL, NULL, NULL, 1, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 12),
(30, 14, 2, 1, 1, 1, 'UserDefinedForm', '2013-08-22 12:26:15', '2013-08-22 12:27:56', 'buchen', 'Buchen', NULL, '$UserDefinedForm', NULL, NULL, NULL, NULL, 1, 1, 2, 0, 0, NULL, 'Inherit', 'Inherit', 12),
(31, 15, 4, 1, 1, 1, 'UserDefinedForm', '2013-08-22 12:26:31', '2013-08-22 12:45:19', 'bewerben', 'Bewerben', NULL, '<p>Du wolltest schon immer mal in einem Maid Cafe arbeiten?<br> Dann bist du bei uns genau richtig!<br><br>Wir bieten Dir:<br>- ein großes, freundliches Cafe auf der Dokomi mit Terasse<br> - ein süßes Team, das zwar etwas chaotisch aber total liebenswert ist<br> - von Zeit zur Zeit Jobangebote für Privatfirmen oder andere Conventions<br> - aktive Mitarbeit im Internet für unser Cafe<br> - Lernseminare, Besprechungsseminare, Fotoshootings und frei Kuchen ;D<br> - ein Wochenendticket für die Dokomi und Vergünstigungen beim Hotel<br> - eine gute Zusammenarbeit mit unserem Host Cafe der Dokomi<br> - die Gelegenheit auf der Bühne und im Cafe vor Publikum zu performen<br> - Zusammenarbeit mit erfahrenen Maids und Gastronomiearbeitern<br> - Spaß, Stress, Schweiß X''D</p>\n<p>Unsere Voraussetzungen: <br>- Du wohnst in Deutschland, vorzugsweise im NRW Bereich <br> - Du bist bereit 2~3x im Jahr zum Seminar oder Fotoshooting nach NRW zu reisen<br> (Unser Hauptstützpunkt liegt im VRR Bereich, Nähe Düsseldorf)<br> - Du bist freundlich, teamfähig und unterhaltsam<br> - Du bist bereit die Maiderstausstattung zu zahlen (ca. 60,00 €)<br> - Du erklärst Dich damit einverstanden, dass du als Maid auf der Dokomi kein <br> Geld als Bezahlung erhälst. Nur bei gebuchten Events ist es möglich bezahlt zu werden<br> - Du bist mindestens 16 Jahre alt<br> - Du hast einen Facebookaccount</p>\n<p>$UserDefinedForm</p>', NULL, NULL, NULL, NULL, 1, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 12),
(32, 15, 5, 1, 1, 1, 'UserDefinedForm', '2013-08-22 12:26:31', '2013-08-22 12:45:34', 'bewerben', 'Bewerben', NULL, '<p>Du wolltest schon immer mal in einem Maid Cafe arbeiten?<br> Dann bist du bei uns genau richtig!<br><br>Wir bieten Dir:<br>- ein großes, freundliches Cafe auf der Dokomi mit Terasse<br> - ein süßes Team, das zwar etwas chaotisch aber total liebenswert ist<br> - von Zeit zur Zeit Jobangebote für Privatfirmen oder andere Conventions<br> - aktive Mitarbeit im Internet für unser Cafe<br> - Lernseminare, Besprechungsseminare, Fotoshootings und frei Kuchen ;D<br> - ein Wochenendticket für die Dokomi und Vergünstigungen beim Hotel<br> - eine gute Zusammenarbeit mit unserem Host Cafe der Dokomi<br> - die Gelegenheit auf der Bühne und im Cafe vor Publikum zu performen<br> - Zusammenarbeit mit erfahrenen Maids und Gastronomiearbeitern<br> - Spaß, Stress, Schweiß X''D</p>\n<p>Unsere Voraussetzungen: <br>- Du wohnst in Deutschland, vorzugsweise im NRW Bereich <br> - Du bist bereit 2~3x im Jahr zum Seminar oder Fotoshooting nach NRW zu reisen<br> (Unser Hauptstützpunkt liegt im VRR Bereich, Nähe Düsseldorf)<br> - Du bist freundlich, teamfähig und unterhaltsam<br> - Du bist bereit die Maiderstausstattung zu zahlen (ca. 60,00 €)<br> - Du erklärst Dich damit einverstanden, dass du als Maid auf der Dokomi kein <br> Geld als Bezahlung erhälst. Nur bei gebuchten Events ist es möglich bezahlt zu werden<br> - Du bist mindestens 16 Jahre alt<br> - Du hast einen Facebookaccount</p>\n<p>$UserDefinedForm</p>', NULL, NULL, NULL, NULL, 1, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 12),
(33, 14, 3, 1, 1, 1, 'UserDefinedForm', '2013-08-22 12:26:15', '2013-08-22 12:46:23', 'buchen', 'Buchen', NULL, '<p>Bucht das Lucky Chocolate Team jetzt für eure Convention, Firmenfeier oder andere Events!<br>Wir leiten oder sind Teil eures Maid Cafes, können frei in der Bedienung oder Küche einsetzbar sein.<br>Ihr braucht noch Werbestände für eure Convention? Wir kommen gerne bei euch vorbei um zu werben!<br>Auch auf der Bühne sind wir einsetzbar! Wir lernen jedes Jahr einen Maidtanz für die DoKomi, den wir auch bei euch präsentieren können! Andere Ideen? Schreibe in das freie Feld einfach deine Wünsche an uns!<br>Du möchtest bestimmte Maids? Frage nach ob unsere Maids für dein Event frei sind und buche deine Traummaids!<br>Wir bitten darum besonders bei Conventions anzugeben, ob es ein Budget für Fahrtkosten, Eintrittskarten, Übernachtung und Leistung geben wird.<br>Da wir uns selber finanzieren, ist es uns sonst evtl. nicht möglich euch euren Maidwunsch zu erfüllen! &lt;3<br>Liebe Grüße, euer Maidteam<br><br></p>\n<p>$UserDefinedForm</p>', NULL, NULL, NULL, NULL, 1, 1, 2, 0, 0, NULL, 'Inherit', 'Inherit', 12),
(34, 13, 3, 1, 1, 1, 'UserDefinedForm', '2013-08-22 12:26:01', '2013-08-22 12:46:49', 'kontakt', 'Kontakt', NULL, '<p>Wenn dir etwas ganz besonders am Herzen liegt, schick uns einfach deine Nachricht :) Ob allgemeine Fragen, Feedback, Verbesserungsvorschläge bezüglich unseres Maidcafes, etc. - wir freuen uns immer auf deine Meinung :D!</p>\n<p>$UserDefinedForm</p>', NULL, NULL, NULL, NULL, 1, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 12),
(35, 15, 6, 1, 1, 1, 'UserDefinedForm', '2013-08-22 12:26:31', '2013-08-23 12:30:32', 'bewerben', 'Bewerben', NULL, '<p>Du wolltest schon immer mal in einem Maid Cafe arbeiten?<br> Dann bist du bei uns genau richtig!<br><br>Wir bieten Dir:<br>- ein großes, freundliches Cafe auf der Dokomi mit Terasse<br> - ein süßes Team, das zwar etwas chaotisch aber total liebenswert ist<br> - von Zeit zur Zeit Jobangebote für Privatfirmen oder andere Conventions<br> - aktive Mitarbeit im Internet für unser Cafe<br> - Lernseminare, Besprechungsseminare, Fotoshootings und frei Kuchen ;D<br> - ein Wochenendticket für die Dokomi und Vergünstigungen beim Hotel<br> - eine gute Zusammenarbeit mit unserem Host Cafe der Dokomi<br> - die Gelegenheit auf der Bühne und im Cafe vor Publikum zu performen<br> - Zusammenarbeit mit erfahrenen Maids und Gastronomiearbeitern<br> - Spaß, Stress, Schweiß X''D</p>\n<p>Unsere Voraussetzungen: <br>- Du wohnst in Deutschland, vorzugsweise im NRW Bereich <br> - Du bist bereit 2~3x im Jahr zum Seminar oder Fotoshooting nach NRW zu reisen<br> (Unser Hauptstützpunkt liegt im VRR Bereich, Nähe Düsseldorf)<br> - Du bist freundlich, teamfähig und unterhaltsam<br> - Du bist bereit die Maiderstausstattung zu zahlen (ca. 60,00 €)<br> - Du erklärst Dich damit einverstanden, dass du als Maid auf der Dokomi kein <br> Geld als Bezahlung erhälst. Nur bei gebuchten Events ist es möglich bezahlt zu werden<br> - Du bist mindestens 16 Jahre alt<br> - Du hast einen Facebookaccount</p>\n<p>$UserDefinedForm</p>', NULL, NULL, NULL, NULL, 1, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 12),
(36, 15, 7, 1, 1, 1, 'UserDefinedForm', '2013-08-22 12:26:31', '2013-08-23 12:31:13', 'bewerben', 'Bewerben', NULL, '<p>Du wolltest schon immer mal in einem Maid Cafe arbeiten?<br> Dann bist du bei uns genau richtig!<br><br>Wir bieten Dir:<br>- ein großes, freundliches Cafe auf der Dokomi mit Terasse<br> - ein süßes Team, das zwar etwas chaotisch aber total liebenswert ist<br> - von Zeit zur Zeit Jobangebote für Privatfirmen oder andere Conventions<br> - aktive Mitarbeit im Internet für unser Cafe<br> - Lernseminare, Besprechungsseminare, Fotoshootings und frei Kuchen ;D<br> - ein Wochenendticket für die Dokomi und Vergünstigungen beim Hotel<br> - eine gute Zusammenarbeit mit unserem Host Cafe der Dokomi<br> - die Gelegenheit auf der Bühne und im Cafe vor Publikum zu performen<br> - Zusammenarbeit mit erfahrenen Maids und Gastronomiearbeitern<br> - Spaß, Stress, Schweiß X''D</p>\n<p>Unsere Voraussetzungen: <br>- Du wohnst in Deutschland, vorzugsweise im NRW Bereich <br> - Du bist bereit 2~3x im Jahr zum Seminar oder Fotoshooting nach NRW zu reisen<br> (Unser Hauptstützpunkt liegt im VRR Bereich, Nähe Düsseldorf)<br> - Du bist freundlich, teamfähig und unterhaltsam<br> - Du bist bereit die Maiderstausstattung zu zahlen (ca. 60,00 €)<br> - Du erklärst Dich damit einverstanden, dass du als Maid auf der Dokomi kein <br> Geld als Bezahlung erhälst. Nur bei gebuchten Events ist es möglich bezahlt zu werden<br> - Du bist mindestens 16 Jahre alt<br> - Du hast einen Facebookaccount</p>\n<p>$UserDefinedForm</p>', NULL, NULL, NULL, NULL, 1, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 12),
(37, 16, 1, 0, 1, 0, 'ArticleHolder', '2013-08-23 13:16:05', '2013-08-23 13:16:05', 'neue-article-holder', 'Neue Article Holder', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 9, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(38, 16, 2, 1, 1, 1, 'ArticleHolder', '2013-08-23 13:16:05', '2013-08-23 13:16:17', 'news', 'News', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 9, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(39, 17, 1, 0, 1, 0, 'ArticleCategory', '2013-08-23 13:16:28', '2013-08-23 13:16:28', 'neue-article-category', 'Neue Article Category', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 16),
(40, 18, 1, 0, 1, 0, 'ArticleCategory', '2013-08-23 13:16:41', '2013-08-23 13:16:41', 'neue-article-category-2', 'Neue Article Category', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 2, 0, 0, NULL, 'Inherit', 'Inherit', 16),
(41, 17, 2, 1, 1, 1, 'ArticleCategory', '2013-08-23 13:16:28', '2013-08-23 13:17:05', 'allgemein', 'Allgemein', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 16),
(42, 18, 2, 1, 1, 1, 'ArticleCategory', '2013-08-23 13:16:41', '2013-08-23 13:17:20', 'neue-article-category-2', 'Gewinnspiel', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 2, 0, 0, NULL, 'Inherit', 'Inherit', 16),
(43, 19, 1, 0, 1, 0, 'ArticlePage', '2013-08-23 13:37:41', '2013-08-23 13:37:41', 'neue-article-page', 'Neue Article Page', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 17),
(44, 19, 2, 1, 1, 1, 'ArticlePage', '2013-08-23 13:37:41', '2013-08-23 13:37:59', 'neue-article-page', 'Neue Article Page', NULL, '<p><strong>Hallo Goushujin-sama und Ojou-sama!!</strong></p>\n<div>Es mag vielleicht ein wenig spät sein, aber besser zu spt als gar nicht:</div>\n<div><strong>hier kommt der offizielle Maidreport der Dokomi 2013 mit exklusiven Behind-the-scene-Fotos &lt;3</strong></div>\n<div>Dieses Jahr war die Dokomi noch toller, es waren noch viiiiel mehr Gäste zu Besuch und natürlich haben auch wir ausgebaut!</div>\n<div>Hier also unser Bericht der Dokomi 2013 mit vielen Fotos!</div>\n<p style="text-align: center;"> </p>\n<div style="text-align: center;"><img class="center" title="" src="http://www.luckychocolate.de/assets/_resampled/resizedimage600401-P1140021.JPG" alt="" height="401" width="600"></div>\n<div style="font-size: 10px;">Vor dem ganzen Ansturm ersrmal eine kurze Besprechung... schön zuhören Maids, auch wenn es für einige langweilig erscheinen mag &lt;3</div>\n<p> </p>\n<p style="text-align: center;"><img class="center" title="" src="http://www.luckychocolate.de/assets/_resampled/resizedimage600401-P1140022_2.JPG" alt="" height="401" width="600"></p>\n<div style="text-align: center;">Neue Leckereien auf der Karte mussten natürlich auch festgehalten werden :3</div>\n<p style="text-align: center;"><img class="center" title="" src="http://www.luckychocolate.de/assets/_resampled/resizedimage600401-P1130927.JPG" alt="" height="401" width="600"></p>\n<p style="text-align: center;"><img class="center" title="" src="http://www.luckychocolate.de/assets/_resampled/resizedimage600401-P1140069.JPG" alt="" height="401" width="600"></p>\n<p style="text-align: center;"><img class="center" title="" src="http://www.luckychocolate.de/assets/_resampled/resizedimage600401-P1140071.JPG" alt="" height="401" width="600"></p>\n<div style="text-align: center;">Unsere suße Maid Tecky in der Küche - eine kleine Erfrischung bevor es weiter geht &lt;3</div>\n<p style="text-align: center;"><img class="center" title="" src="http://www.luckychocolate.de/assets/_resampled/resizedimage401600-P1140097.JPG" alt="" height="600" width="401"></p>\n<div style="text-align: center;">Maid Arina und Maid Yui</div>\n<p style="text-align: center;"><img class="center" title="" src="http://www.luckychocolate.de/assets/_resampled/resizedimage401600-P1130996_2.JPG" alt="" height="600" width="401"></p>\n<div style="text-align: center;">Maid Yui und Maid Umi mit Host Momo</div>\n<p style="text-align: center;"><img class="center" title="" src="http://www.luckychocolate.de/assets/_resampled/resizedimage401600-P1130991_2.JPG" alt="" height="600" width="401"></p>\n<div style="text-align: center;">Maid Jenny und Maid May</div>\n<p style="text-align: center;"><img class="center" title="" src="http://www.luckychocolate.de/assets/_resampled/resizedimage401600-P1140086_2.JPG" alt="" height="600" width="401"></p>\n<div style="text-align: center;">Maid Momo beim Aufnehmen einer Bestellung ... in unserer gemütlichen Teeecke ! (Auch neu bei uns :3)</div>\n<p style="text-align: center;"><img class="center" title="" src="http://www.luckychocolate.de/assets/_resampled/resizedimage600401-P1140074_2.JPG" alt="" height="401" width="600"></p>\n<div style="text-align: center;">Maid Jacky bei der Arbeit :D</div>\n<p style="text-align: center;"><img class="center" title="" src="http://www.luckychocolate.de/assets/_resampled/resizedimage600401-P1140080_2.JPG" alt="" height="401" width="600"></p>\n<div style="text-align: center;">Maid May - immer bereit für ein hübsches Foto &lt;3</div>\n<p style="text-align: center;"><img class="center" title="" src="http://www.luckychocolate.de/assets/_resampled/resizedimage600401-P1140081_2.JPG" alt="" height="401" width="600"></p>\n<div>Scheint als ob der Bericht sich dem Ende naht... ich hoffe, euch hat die Dokomi 2013 mindestens so gut wir uns gefallen und das man sich auf der Dokomi 2014 wieder sieht?  Ich muss sagen, es ist einfach toll, in einer so großen Gruppe an Menschen zu arbeiten, die unterschiedlicher nicht sein könnten, aber dennoch ein gleiches Interesse bzw. Hobby miteinander teilen! Es macht super viel Spaß zusammen zu arbeiten, euch zu bedienen, mit euch zu spielen  etc. &lt;3 Deshalb können wir jedes Mal kaum abwarten, bis die Dokomi wieder ansteht. Bis zur Dokomi 2014 dauert es zwar noch... aber das Planen beginnt bei uns bereits jetzt! Bis bald wieder &lt;3</div>', NULL, NULL, NULL, NULL, 1, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 17),
(45, 19, 3, 1, 1, 1, 'ArticlePage', '2013-08-23 13:37:41', '2013-08-23 13:38:42', 'dokomi-2013-eine-leicht-verspaetete-berichterstattung-3-', 'Dokomi 2013 ! Eine leicht verspätete Berichterstattung <3 ', NULL, '<p><strong>Hallo Goushujin-sama und Ojou-sama!!</strong></p>\n<div>Es mag vielleicht ein wenig spät sein, aber besser zu spt als gar nicht:</div>\n<div><strong>hier kommt der offizielle Maidreport der Dokomi 2013 mit exklusiven Behind-the-scene-Fotos &lt;3</strong></div>\n<div>Dieses Jahr war die Dokomi noch toller, es waren noch viiiiel mehr Gäste zu Besuch und natürlich haben auch wir ausgebaut!</div>\n<div>Hier also unser Bericht der Dokomi 2013 mit vielen Fotos!</div>\n<p style="text-align: center;"> </p>\n<div style="text-align: center;"><img class="center" title="" src="http://www.luckychocolate.de/assets/_resampled/resizedimage600401-P1140021.JPG" alt="" height="401" width="600"></div>\n<div style="font-size: 10px;">Vor dem ganzen Ansturm ersrmal eine kurze Besprechung... schön zuhören Maids, auch wenn es für einige langweilig erscheinen mag &lt;3</div>\n<p> </p>\n<p style="text-align: center;"><img class="center" title="" src="http://www.luckychocolate.de/assets/_resampled/resizedimage600401-P1140022_2.JPG" alt="" height="401" width="600"></p>\n<div style="text-align: center;">Neue Leckereien auf der Karte mussten natürlich auch festgehalten werden :3</div>\n<p style="text-align: center;"><img class="center" title="" src="http://www.luckychocolate.de/assets/_resampled/resizedimage600401-P1130927.JPG" alt="" height="401" width="600"></p>\n<p style="text-align: center;"><img class="center" title="" src="http://www.luckychocolate.de/assets/_resampled/resizedimage600401-P1140069.JPG" alt="" height="401" width="600"></p>\n<p style="text-align: center;"><img class="center" title="" src="http://www.luckychocolate.de/assets/_resampled/resizedimage600401-P1140071.JPG" alt="" height="401" width="600"></p>\n<div style="text-align: center;">Unsere suße Maid Tecky in der Küche - eine kleine Erfrischung bevor es weiter geht &lt;3</div>\n<p style="text-align: center;"><img class="center" title="" src="http://www.luckychocolate.de/assets/_resampled/resizedimage401600-P1140097.JPG" alt="" height="600" width="401"></p>\n<div style="text-align: center;">Maid Arina und Maid Yui</div>\n<p style="text-align: center;"><img class="center" title="" src="http://www.luckychocolate.de/assets/_resampled/resizedimage401600-P1130996_2.JPG" alt="" height="600" width="401"></p>\n<div style="text-align: center;">Maid Yui und Maid Umi mit Host Momo</div>\n<p style="text-align: center;"><img class="center" title="" src="http://www.luckychocolate.de/assets/_resampled/resizedimage401600-P1130991_2.JPG" alt="" height="600" width="401"></p>\n<div style="text-align: center;">Maid Jenny und Maid May</div>\n<p style="text-align: center;"><img class="center" title="" src="http://www.luckychocolate.de/assets/_resampled/resizedimage401600-P1140086_2.JPG" alt="" height="600" width="401"></p>\n<div style="text-align: center;">Maid Momo beim Aufnehmen einer Bestellung ... in unserer gemütlichen Teeecke ! (Auch neu bei uns :3)</div>\n<p style="text-align: center;"><img class="center" title="" src="http://www.luckychocolate.de/assets/_resampled/resizedimage600401-P1140074_2.JPG" alt="" height="401" width="600"></p>\n<div style="text-align: center;">Maid Jacky bei der Arbeit :D</div>\n<p style="text-align: center;"><img class="center" title="" src="http://www.luckychocolate.de/assets/_resampled/resizedimage600401-P1140080_2.JPG" alt="" height="401" width="600"></p>\n<div style="text-align: center;">Maid May - immer bereit für ein hübsches Foto &lt;3</div>\n<p style="text-align: center;"><img class="center" title="" src="http://www.luckychocolate.de/assets/_resampled/resizedimage600401-P1140081_2.JPG" alt="" height="401" width="600"></p>\n<div>Scheint als ob der Bericht sich dem Ende naht... ich hoffe, euch hat die Dokomi 2013 mindestens so gut wir uns gefallen und das man sich auf der Dokomi 2014 wieder sieht?  Ich muss sagen, es ist einfach toll, in einer so großen Gruppe an Menschen zu arbeiten, die unterschiedlicher nicht sein könnten, aber dennoch ein gleiches Interesse bzw. Hobby miteinander teilen! Es macht super viel Spaß zusammen zu arbeiten, euch zu bedienen, mit euch zu spielen  etc. &lt;3 Deshalb können wir jedes Mal kaum abwarten, bis die Dokomi wieder ansteht. Bis zur Dokomi 2014 dauert es zwar noch... aber das Planen beginnt bei uns bereits jetzt! Bis bald wieder &lt;3</div>', NULL, NULL, NULL, NULL, 1, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 17),
(46, 20, 1, 0, 1, 0, 'MaidHolder', '2013-08-23 13:39:35', '2013-08-23 13:39:35', 'neue-maid-holder', 'Neue Maid Holder', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 19),
(47, 20, 2, 1, 1, 1, 'MaidHolder', '2013-08-23 13:39:35', '2013-08-23 13:39:52', 'neue-maid-holder', 'Neue Maid Holder', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(48, 20, 3, 1, 1, 1, 'MaidHolder', '2013-08-23 13:39:35', '2013-08-23 13:40:14', 'maids', 'Maids', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(49, 21, 1, 0, 1, 0, 'Maid', '2013-08-23 13:40:31', '2013-08-23 13:40:31', 'neue-maid', 'Neue Maid', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 20),
(50, 21, 2, 1, 1, 1, 'Maid', '2013-08-23 13:40:31', '2013-08-23 13:40:44', 'neue-maid', 'Yusei', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 20),
(51, 19, 4, 1, 1, 1, 'ArticlePage', '2013-08-23 13:37:41', '2013-08-23 13:42:09', 'dokomi-2013-eine-leicht-verspaetete-berichterstattung-3-', 'Dokomi 2013 ! Eine leicht verspätete Berichterstattung <3 ', NULL, '<p><strong>Hallo Goushujin-sama und Ojou-sama!!</strong></p>\n<div>Es mag vielleicht ein wenig spät sein, aber besser zu spt als gar nicht:</div>\n<div><strong>hier kommt der offizielle Maidreport der Dokomi 2013 mit exklusiven Behind-the-scene-Fotos &lt;3</strong></div>\n<div>Dieses Jahr war die Dokomi noch toller, es waren noch viiiiel mehr Gäste zu Besuch und natürlich haben auch wir ausgebaut!</div>\n<div>Hier also unser Bericht der Dokomi 2013 mit vielen Fotos!</div>\n<p style="text-align: center;"> </p>\n<div style="text-align: center;"><img class="center" title="" src="http://www.luckychocolate.de/assets/_resampled/resizedimage600401-P1140021.JPG" alt="" height="401" width="600"></div>\n<div style="font-size: 10px;">Vor dem ganzen Ansturm ersrmal eine kurze Besprechung... schön zuhören Maids, auch wenn es für einige langweilig erscheinen mag &lt;3</div>\n<p> </p>\n<p style="text-align: center;"><img class="center" title="" src="http://www.luckychocolate.de/assets/_resampled/resizedimage600401-P1140022_2.JPG" alt="" height="401" width="600"></p>\n<div style="text-align: center;">Neue Leckereien auf der Karte mussten natürlich auch festgehalten werden :3</div>\n<p style="text-align: center;"><img class="center" title="" src="http://www.luckychocolate.de/assets/_resampled/resizedimage600401-P1130927.JPG" alt="" height="401" width="600"></p>\n<p style="text-align: center;"><img class="center" title="" src="http://www.luckychocolate.de/assets/_resampled/resizedimage600401-P1140069.JPG" alt="" height="401" width="600"></p>\n<p style="text-align: center;"><img class="center" title="" src="http://www.luckychocolate.de/assets/_resampled/resizedimage600401-P1140071.JPG" alt="" height="401" width="600"></p>\n<div style="text-align: center;">Unsere suße Maid Tecky in der Küche - eine kleine Erfrischung bevor es weiter geht &lt;3</div>\n<p style="text-align: center;"><img class="center" title="" src="http://www.luckychocolate.de/assets/_resampled/resizedimage401600-P1140097.JPG" alt="" height="600" width="401"></p>\n<div style="text-align: center;">Maid Arina und Maid Yui</div>\n<p style="text-align: center;"><img class="center" title="" src="http://www.luckychocolate.de/assets/_resampled/resizedimage401600-P1130996_2.JPG" alt="" height="600" width="401"></p>\n<div style="text-align: center;">Maid Yui und Maid Umi mit Host Momo</div>\n<p style="text-align: center;"><img class="center" title="" src="http://www.luckychocolate.de/assets/_resampled/resizedimage401600-P1130991_2.JPG" alt="" height="600" width="401"></p>\n<div style="text-align: center;">Maid Jenny und Maid May</div>\n<p style="text-align: center;"><img class="center" title="" src="http://www.luckychocolate.de/assets/_resampled/resizedimage401600-P1140086_2.JPG" alt="" height="600" width="401"></p>\n<div style="text-align: center;">Maid Momo beim Aufnehmen einer Bestellung ... in unserer gemütlichen Teeecke ! (Auch neu bei uns :3)</div>\n<p style="text-align: center;"><img class="center" title="" src="http://www.luckychocolate.de/assets/_resampled/resizedimage600401-P1140074_2.JPG" alt="" height="401" width="600"></p>\n<div style="text-align: center;">Maid Jacky bei der Arbeit :D</div>\n<p style="text-align: center;"><img class="center" title="" src="http://www.luckychocolate.de/assets/_resampled/resizedimage600401-P1140080_2.JPG" alt="" height="401" width="600"></p>\n<div style="text-align: center;">Maid May - immer bereit für ein hübsches Foto &lt;3</div>\n<p style="text-align: center;"><img class="center" title="" src="http://www.luckychocolate.de/assets/_resampled/resizedimage600401-P1140081_2.JPG" alt="" height="401" width="600"></p>\n<div>Scheint als ob der Bericht sich dem Ende naht... ich hoffe, euch hat die Dokomi 2013 mindestens so gut wir uns gefallen und das man sich auf der Dokomi 2014 wieder sieht?  Ich muss sagen, es ist einfach toll, in einer so großen Gruppe an Menschen zu arbeiten, die unterschiedlicher nicht sein könnten, aber dennoch ein gleiches Interesse bzw. Hobby miteinander teilen! Es macht super viel Spaß zusammen zu arbeiten, euch zu bedienen, mit euch zu spielen  etc. &lt;3 Deshalb können wir jedes Mal kaum abwarten, bis die Dokomi wieder ansteht. Bis zur Dokomi 2014 dauert es zwar noch... aber das Planen beginnt bei uns bereits jetzt! Bis bald wieder &lt;3</div>', NULL, NULL, NULL, NULL, 1, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 17),
(52, 19, 5, 1, 1, 1, 'ArticlePage', '2013-08-23 13:37:41', '2013-08-23 13:42:19', 'dokomi-2013-eine-leicht-verspaetete-berichterstattung-3-', 'Dokomi 2013 ! Eine leicht verspätete Berichterstattung <3 ', NULL, '<p><strong>Hallo Goushujin-sama und Ojou-sama!!</strong></p>\n<div>Es mag vielleicht ein wenig spät sein, aber besser zu spt als gar nicht:</div>\n<div><strong>hier kommt der offizielle Maidreport der Dokomi 2013 mit exklusiven Behind-the-scene-Fotos &lt;3</strong></div>\n<div>Dieses Jahr war die Dokomi noch toller, es waren noch viiiiel mehr Gäste zu Besuch und natürlich haben auch wir ausgebaut!</div>\n<div>Hier also unser Bericht der Dokomi 2013 mit vielen Fotos!</div>\n<p style="text-align: center;"> </p>\n<div style="text-align: center;"><img class="center" title="" src="http://www.luckychocolate.de/assets/_resampled/resizedimage600401-P1140021.JPG" alt="" height="401" width="600"></div>\n<div style="font-size: 10px;">Vor dem ganzen Ansturm ersrmal eine kurze Besprechung... schön zuhören Maids, auch wenn es für einige langweilig erscheinen mag &lt;3</div>\n<p> </p>\n<p style="text-align: center;"><img class="center" title="" src="http://www.luckychocolate.de/assets/_resampled/resizedimage600401-P1140022_2.JPG" alt="" height="401" width="600"></p>\n<div style="text-align: center;">Neue Leckereien auf der Karte mussten natürlich auch festgehalten werden :3</div>\n<p style="text-align: center;"><img class="center" title="" src="http://www.luckychocolate.de/assets/_resampled/resizedimage600401-P1130927.JPG" alt="" height="401" width="600"></p>\n<p style="text-align: center;"><img class="center" title="" src="http://www.luckychocolate.de/assets/_resampled/resizedimage600401-P1140069.JPG" alt="" height="401" width="600"></p>\n<p style="text-align: center;"><img class="center" title="" src="http://www.luckychocolate.de/assets/_resampled/resizedimage600401-P1140071.JPG" alt="" height="401" width="600"></p>\n<div style="text-align: center;">Unsere suße Maid Tecky in der Küche - eine kleine Erfrischung bevor es weiter geht &lt;3</div>\n<p style="text-align: center;"><img class="center" title="" src="http://www.luckychocolate.de/assets/_resampled/resizedimage401600-P1140097.JPG" alt="" height="600" width="401"></p>\n<div style="text-align: center;">Maid Arina und Maid Yui</div>\n<p style="text-align: center;"><img class="center" title="" src="http://www.luckychocolate.de/assets/_resampled/resizedimage401600-P1130996_2.JPG" alt="" height="600" width="401"></p>\n<div style="text-align: center;">Maid Yui und Maid Umi mit Host Momo</div>\n<p style="text-align: center;"><img class="center" title="" src="http://www.luckychocolate.de/assets/_resampled/resizedimage401600-P1130991_2.JPG" alt="" height="600" width="401"></p>\n<div style="text-align: center;">Maid Jenny und Maid May</div>\n<p style="text-align: center;"><img class="center" title="" src="http://www.luckychocolate.de/assets/_resampled/resizedimage401600-P1140086_2.JPG" alt="" height="600" width="401"></p>\n<div style="text-align: center;">Maid Momo beim Aufnehmen einer Bestellung ... in unserer gemütlichen Teeecke ! (Auch neu bei uns :3)</div>\n<p style="text-align: center;"><img class="center" title="" src="http://www.luckychocolate.de/assets/_resampled/resizedimage600401-P1140074_2.JPG" alt="" height="401" width="600"></p>\n<div style="text-align: center;">Maid Jacky bei der Arbeit :D</div>\n<p style="text-align: center;"><img class="center" title="" src="http://www.luckychocolate.de/assets/_resampled/resizedimage600401-P1140080_2.JPG" alt="" height="401" width="600"></p>\n<div style="text-align: center;">Maid May - immer bereit für ein hübsches Foto &lt;3</div>\n<p style="text-align: center;"><img class="center" title="" src="http://www.luckychocolate.de/assets/_resampled/resizedimage600401-P1140081_2.JPG" alt="" height="401" width="600"></p>\n<div>Scheint als ob der Bericht sich dem Ende naht... ich hoffe, euch hat die Dokomi 2013 mindestens so gut wir uns gefallen und das man sich auf der Dokomi 2014 wieder sieht?  Ich muss sagen, es ist einfach toll, in einer so großen Gruppe an Menschen zu arbeiten, die unterschiedlicher nicht sein könnten, aber dennoch ein gleiches Interesse bzw. Hobby miteinander teilen! Es macht super viel Spaß zusammen zu arbeiten, euch zu bedienen, mit euch zu spielen  etc. &lt;3 Deshalb können wir jedes Mal kaum abwarten, bis die Dokomi wieder ansteht. Bis zur Dokomi 2014 dauert es zwar noch... aber das Planen beginnt bei uns bereits jetzt! Bis bald wieder &lt;3</div>', NULL, NULL, NULL, NULL, 1, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 17),
(53, 21, 3, 1, 1, 1, 'Maid', '2013-08-23 13:40:31', '2013-08-24 20:26:14', 'neue-maid', 'Yusei', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 20),
(54, 21, 4, 1, 1, 1, 'Maid', '2013-08-23 13:40:31', '2013-08-24 20:26:33', 'neue-maid', 'Yusei', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 20),
(55, 21, 5, 1, 1, 1, 'Maid', '2013-08-23 13:40:31', '2013-08-24 20:27:07', 'neue-maid', 'Yusei', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 20),
(56, 22, 1, 0, 1, 0, 'Page', '2013-08-24 20:28:02', '2013-08-24 20:28:02', 'neue-seite', 'Neue Seite', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 21),
(57, 22, 2, 1, 1, 1, 'Page', '2013-08-24 20:28:02', '2013-08-24 20:28:14', 'neue-seite', 'Neue Seite', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(58, 23, 1, 0, 1, 0, '', '2013-08-25 19:58:58', '2013-08-25 19:58:58', 'neue-bildergalerie', 'Neue Bildergalerie', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 10, 0, 0, NULL, 'Inherit', 'Inherit', 0);
INSERT INTO `sitetree_versions` (`ID`, `RecordID`, `Version`, `WasPublished`, `AuthorID`, `PublisherID`, `ClassName`, `Created`, `LastEdited`, `URLSegment`, `Title`, `MenuTitle`, `Content`, `MetaTitle`, `MetaDescription`, `MetaKeywords`, `ExtraMeta`, `ShowInMenus`, `ShowInSearch`, `Sort`, `HasBrokenFile`, `HasBrokenLink`, `ReportClass`, `CanViewType`, `CanEditType`, `ParentID`) VALUES
(59, 23, 2, 1, 1, 1, '', '2013-08-25 19:58:58', '2013-08-25 19:59:30', 'bildergalerie', 'Bildergalerie', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 10, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(60, 24, 1, 0, 1, 0, '', '2013-08-25 19:59:39', '2013-08-25 19:59:39', 'neue-bildergalerie', 'Neue Bildergalerie', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 23),
(61, 24, 2, 0, 1, 0, '', '2013-08-25 19:59:39', '2013-08-25 20:00:01', 'neue-bildergalerie', 'Neue Bildergalerie', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 23),
(62, 25, 1, 0, 1, 0, '', '2013-08-25 20:12:22', '2013-08-25 20:12:22', 'neue-bildergalerie-2', 'Neue Bildergalerie', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 2, 0, 0, NULL, 'Inherit', 'Inherit', 23),
(63, 26, 1, 1, 1, 1, 'Page', '2013-08-25 20:27:37', '2013-08-25 20:27:37', 'neue-seite-2', 'Neue Seite', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 11, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(64, 26, 2, 1, 1, 1, '', '2013-08-25 20:27:37', '2013-08-25 20:28:00', 'neue-seite-2', 'Neue Seite', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 11, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(65, 27, 1, 0, 1, 0, '', '2013-08-25 20:33:20', '2013-08-25 20:33:20', 'neue-bildergalerie', 'Neue Bildergalerie', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 10, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(66, 16, 3, 0, 1, 0, 'ArticleHolder', '2013-08-23 13:16:05', '2013-08-26 21:05:25', 'news', 'News', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 2, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(67, 28, 1, 0, 1, 0, 'Page', '2013-08-26 21:05:42', '2013-08-26 21:05:42', 'neue-seite-2', 'Neue Seite', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 11, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(68, 29, 1, 0, 1, 0, 'Albumholder', '2013-08-26 21:06:07', '2013-08-26 21:06:07', 'neue-albumholder', 'Neue Albumholder', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 10, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(69, 29, 2, 0, 1, 0, 'Albumholder', '2013-08-26 21:06:07', '2013-08-26 21:06:31', 'neue-albumholder', 'Neue Albumholder', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 4, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(70, 12, 6, 0, 1, 0, 'ContactPage', '2013-08-22 12:23:58', '2013-08-26 21:06:35', 'kontakt', 'Kontakt', NULL, '<p> </p>\n<p> Habt ihr Fragen, Wünsche oder Anregungen?</p>\n<p> Möchtet ihr uns für eure Convention buchen?</p>\n<p> Oder möchtet ihr sogar selber eine Maid werden?</p>\n<p> Dann seid ihr hier richtig! Schreibt uns euer Anliegen und wir werden euch so schnell wie möglich antworten! :D</p>', NULL, NULL, NULL, NULL, 1, 1, 5, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(71, 29, 3, 1, 1, 1, 'Albumholder', '2013-08-26 21:06:07', '2013-08-26 21:07:48', 'neue-albumholder', 'Bilder', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 4, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(72, 30, 1, 1, 1, 1, 'GalleryPage', '2013-08-26 21:08:19', '2013-08-26 21:08:19', 'neue-photo-gallery', 'Neue Photo Gallery', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 29),
(73, 31, 1, 1, 1, 1, 'GalleryPage', '2013-08-26 21:08:32', '2013-08-26 21:08:32', 'neue-photo-gallery-2', 'Neue Photo Gallery', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 2, 0, 0, NULL, 'Inherit', 'Inherit', 29),
(74, 21, 6, 1, 1, 1, 'Maid', '2013-08-23 13:40:31', '2013-08-27 14:49:06', 'neue-maid', 'Yusei', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 20),
(75, 30, 2, 1, 1, 1, 'GalleryPage', '2013-08-26 21:08:19', '2013-08-27 15:50:09', 'banner', 'Banner', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 29),
(76, 29, 4, 1, 1, 1, 'Albumholder', '2013-08-26 21:06:07', '2013-08-27 17:44:08', 'neue-albumholder', 'Gallerie', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 4, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(77, 29, 5, 1, 1, 1, 'Albumholder', '2013-08-26 21:06:07', '2013-08-27 17:44:26', 'medien', 'Medien', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 4, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(78, 21, 7, 1, 1, 1, 'Maid', '2013-08-23 13:40:31', '2013-08-27 18:14:18', 'neue-maid', 'Yusei', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 20),
(79, 21, 8, 1, 1, 1, 'Maid', '2013-08-23 13:40:31', '2013-08-27 18:25:35', 'neue-maid', 'Yusei', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 20),
(80, 21, 9, 1, 1, 1, 'Maid', '2013-08-23 13:40:31', '2013-08-27 18:25:48', 'neue-maid', 'Yusei', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 20),
(81, 21, 10, 1, 1, 1, 'Maid', '2013-08-23 13:40:31', '2013-08-27 19:18:31', 'neue-maid', 'Yusei', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 20),
(82, 21, 11, 1, 1, 1, 'Maid', '2013-08-23 13:40:31', '2013-08-27 19:18:43', 'neue-maid', 'Yusei', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 20),
(83, 32, 1, 0, 1, 0, 'Page', '2013-08-27 19:20:15', '2013-08-27 19:20:15', 'neue-seite', 'Neue Seite', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 11, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(84, 32, 2, 1, 1, 1, 'Page', '2013-08-27 19:20:15', '2013-08-27 19:20:25', 'neue-seite', 'To Do', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 11, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(85, 32, 3, 1, 1, 1, 'Page', '2013-08-27 19:20:15', '2013-08-27 19:21:18', 'neue-seite', 'To Do', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 11, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(86, 32, 4, 1, 1, 1, 'Page', '2013-08-27 19:20:15', '2013-08-27 19:21:49', 'neue-seite', 'To Do', NULL, '<p>l.erfipu</p>', NULL, NULL, NULL, NULL, 0, 0, 11, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(87, 32, 5, 1, 1, 1, 'Page', '2013-08-27 19:20:15', '2013-08-27 19:25:17', 'neue-seite', 'To Do', NULL, '<p>News:</p>\n<p>ersten paar zeilen mit Button "Weiterlesen"</p>\n<p>Möglicher Rahmen um Subnav</p>', NULL, NULL, NULL, NULL, 0, 0, 11, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(88, 33, 1, 0, 1, 0, 'Maid', '2013-08-27 19:27:00', '2013-08-27 19:27:00', 'neue-maid-2', 'Neue Maid', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 2, 0, 0, NULL, 'Inherit', 'Inherit', 20),
(89, 34, 1, 0, 1, 0, 'Maid', '2013-08-27 19:27:09', '2013-08-27 19:27:09', 'neue-maid', 'Neue Maid', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 33),
(90, 35, 1, 0, 1, 0, 'Maid', '2013-08-27 19:27:22', '2013-08-27 19:27:22', 'neue-maid-3', 'Neue Maid', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 3, 0, 0, NULL, 'Inherit', 'Inherit', 20),
(91, 34, 2, 1, 1, 1, 'Maid', '2013-08-27 19:27:09', '2013-08-27 19:27:42', 'neue-maid-4', 'Neue Maid', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 20),
(92, 34, 3, 1, 1, 1, 'Maid', '2013-08-27 19:27:09', '2013-08-27 19:28:00', 'neue-maid-4', 'Neue Maid', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 20),
(93, 33, 2, 1, 1, 1, 'Maid', '2013-08-27 19:27:00', '2013-08-27 19:28:15', 'neue-maid-2', 'Neue Maid', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 2, 0, 0, NULL, 'Inherit', 'Inherit', 20),
(94, 35, 2, 1, 1, 1, 'Maid', '2013-08-27 19:27:22', '2013-08-27 19:28:31', 'neue-maid-3', 'Neue Maid', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 3, 0, 0, NULL, 'Inherit', 'Inherit', 20),
(95, 34, 4, 1, 1, 1, 'Maid', '2013-08-27 19:27:09', '2013-08-27 19:41:58', 'neue-maid-4', 'Neue Maid', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 20),
(96, 33, 3, 1, 1, 1, 'Maid', '2013-08-27 19:27:00', '2013-08-27 19:42:26', 'neue-maid-2', 'Neue Maid', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 2, 0, 0, NULL, 'Inherit', 'Inherit', 20),
(97, 35, 3, 1, 1, 1, 'Maid', '2013-08-27 19:27:22', '2013-08-27 19:42:44', 'neue-maid-3', 'Neue Maid', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 3, 0, 0, NULL, 'Inherit', 'Inherit', 20),
(98, 32, 6, 1, 1, 1, 'Page', '2013-08-27 19:20:15', '2013-08-27 19:53:19', 'neue-seite', 'To Do', NULL, '<p>News:</p>\n<p>ersten paar zeilen mit Button "Weiterlesen"</p>\n<p>Möglicher Rahmen um Subnav</p>\n<p> </p>\n<p>bild für anzahl der jahre in Maidholder</p>', NULL, NULL, NULL, NULL, 0, 0, 11, 0, 0, NULL, 'Inherit', 'Inherit', 0);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `sitetree_viewergroups`
--

CREATE TABLE IF NOT EXISTS `sitetree_viewergroups` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `SiteTreeID` int(11) NOT NULL DEFAULT '0',
  `GroupID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `SiteTreeID` (`SiteTreeID`),
  KEY `GroupID` (`GroupID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `submittedfilefield`
--

CREATE TABLE IF NOT EXISTS `submittedfilefield` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `UploadedFileID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `UploadedFileID` (`UploadedFileID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=143 ;

--
-- Daten für Tabelle `submittedfilefield`
--

INSERT INTO `submittedfilefield` (`ID`, `UploadedFileID`) VALUES
(42, 0),
(88, 0),
(103, 0),
(120, 0),
(121, 0),
(13, 4),
(43, 82),
(50, 83),
(57, 84),
(64, 85),
(71, 86),
(78, 87),
(95, 88),
(102, 89),
(110, 90),
(111, 91),
(112, 92),
(119, 93),
(128, 94),
(129, 95),
(130, 96),
(140, 97),
(141, 98),
(142, 99);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `submittedform`
--

CREATE TABLE IF NOT EXISTS `submittedform` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ClassName` enum('SubmittedForm') CHARACTER SET utf8 DEFAULT 'SubmittedForm',
  `Created` datetime DEFAULT NULL,
  `LastEdited` datetime DEFAULT NULL,
  `SubmittedByID` int(11) NOT NULL DEFAULT '0',
  `ParentID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `SubmittedByID` (`SubmittedByID`),
  KEY `ParentID` (`ParentID`),
  KEY `ClassName` (`ClassName`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=16 ;

--
-- Daten für Tabelle `submittedform`
--

INSERT INTO `submittedform` (`ID`, `ClassName`, `Created`, `LastEdited`, `SubmittedByID`, `ParentID`) VALUES
(1, 'SubmittedForm', '2013-08-22 16:03:07', '2013-08-22 16:03:07', 1, 15),
(2, 'SubmittedForm', '2013-08-22 16:03:52', '2013-08-22 16:03:52', 1, 15),
(3, 'SubmittedForm', '2013-08-22 16:04:59', '2013-08-22 16:04:59', 1, 15),
(4, 'SubmittedForm', '2013-08-22 16:06:42', '2013-08-22 16:06:42', 1, 15),
(5, 'SubmittedForm', '2013-08-22 16:08:13', '2013-08-22 16:08:13', 1, 15),
(6, 'SubmittedForm', '2013-08-22 16:09:45', '2013-08-22 16:09:45', 1, 15),
(7, 'SubmittedForm', '2013-08-23 12:03:18', '2013-08-23 12:03:18', 1, 13),
(8, 'SubmittedForm', '2013-08-23 12:03:39', '2013-08-23 12:03:39', 1, 15),
(9, 'SubmittedForm', '2013-08-23 12:04:45', '2013-08-23 12:04:45', 1, 15),
(10, 'SubmittedForm', '2013-08-23 12:21:13', '2013-08-23 12:21:13', 1, 15),
(11, 'SubmittedForm', '2013-08-23 12:24:37', '2013-08-23 12:24:37', 1, 15),
(12, 'SubmittedForm', '2013-08-23 12:26:09', '2013-08-23 12:26:09', 1, 15),
(13, 'SubmittedForm', '2013-08-23 12:28:11', '2013-08-23 12:28:11', 1, 15),
(14, 'SubmittedForm', '2013-08-24 20:29:00', '2013-08-24 20:29:00', 1, 13),
(15, 'SubmittedForm', '2013-08-24 20:29:47', '2013-08-24 20:29:47', 1, 15);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `submittedformfield`
--

CREATE TABLE IF NOT EXISTS `submittedformfield` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ClassName` enum('SubmittedFormField','SubmittedFileField') CHARACTER SET utf8 DEFAULT 'SubmittedFormField',
  `Created` datetime DEFAULT NULL,
  `LastEdited` datetime DEFAULT NULL,
  `Name` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `Value` mediumtext CHARACTER SET utf8,
  `Title` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `ParentID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `ParentID` (`ParentID`),
  KEY `ClassName` (`ClassName`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=143 ;

--
-- Daten für Tabelle `submittedformfield`
--

INSERT INTO `submittedformfield` (`ID`, `ClassName`, `Created`, `LastEdited`, `Name`, `Value`, `Title`, `ParentID`) VALUES
(7, 'SubmittedFormField', '2013-08-11 16:14:09', '2013-08-11 16:14:09', 'EditableTextField4', 'rtgtr', 'Realname', 3),
(8, 'SubmittedFormField', '2013-08-11 16:14:09', '2013-08-11 16:14:09', 'EditableTextField5', 'trgt', 'Maidname', 3),
(9, 'SubmittedFormField', '2013-08-11 16:14:09', '2013-08-11 16:14:09', 'EditableTextField6', 'trg', 'Alter', 3),
(10, 'SubmittedFormField', '2013-08-11 16:14:09', '2013-08-11 16:14:09', 'EditableTextField7', 'ggt', 'Wohnort', 3),
(11, 'SubmittedFormField', '2013-08-11 16:14:09', '2013-08-11 16:14:09', 'EditableEmailField8', 'tahu12@web.de', 'E-Mail Adresse', 3),
(12, 'SubmittedFormField', '2013-08-11 16:14:09', '2013-08-11 16:14:09', 'EditableTextField9', 'ghrt', 'Über dich', 3),
(13, 'SubmittedFileField', '2013-08-11 16:14:10', '2013-08-11 16:14:10', 'EditableFileField10', 'Array', 'Bilder ( Bitte Name in der Datei angeben)', 3),
(14, 'SubmittedFormField', '2013-08-11 16:14:10', '2013-08-11 16:14:10', 'EditableDropdown11', NULL, NULL, 3),
(15, 'SubmittedFormField', '2013-08-11 16:23:37', '2013-08-11 16:23:37', 'EditableTextField16', 'grtg', 'Firma/Convention', 4),
(16, 'SubmittedFormField', '2013-08-11 16:23:37', '2013-08-11 16:23:37', 'EditableTextField17', 'rtgtr', 'Ansprechpartner', 4),
(17, 'SubmittedFormField', '2013-08-11 16:23:37', '2013-08-11 16:23:37', 'EditableEmailField18', 'tahu12@web.de', 'E-Mail Adresse', 4),
(18, 'SubmittedFormField', '2013-08-11 16:23:37', '2013-08-11 16:23:37', 'EditableTextField19', '01786050491', 'Telefonnummer', 4),
(19, 'SubmittedFormField', '2013-08-11 16:23:37', '2013-08-11 16:23:37', 'EditableTextField20', 'dgtgt', 'Veranstaltungsort', 4),
(20, 'SubmittedFormField', '2013-08-11 16:23:37', '2013-08-11 16:23:37', 'EditableTextField22', 'kink', 'Aufgaben', 4),
(21, 'SubmittedFormField', '2013-08-11 16:23:37', '2013-08-11 16:23:37', 'EditableTextField23', 'vujuzjuzj', 'Weiter Infos', 4),
(22, 'SubmittedFormField', '2013-08-11 16:25:39', '2013-08-11 16:25:39', 'EditableTextField16', '6cfzh6', 'Firma/Convention', 5),
(23, 'SubmittedFormField', '2013-08-11 16:25:39', '2013-08-11 16:25:39', 'EditableTextField17', 'rtgtr', 'Ansprechpartner', 5),
(24, 'SubmittedFormField', '2013-08-11 16:25:40', '2013-08-11 16:25:40', 'EditableEmailField18', 'tahu12@web.de', 'E-Mail Adresse', 5),
(25, 'SubmittedFormField', '2013-08-11 16:25:40', '2013-08-11 16:25:40', 'EditableTextField19', '01786050491', 'Telefonnummer', 5),
(26, 'SubmittedFormField', '2013-08-11 16:25:40', '2013-08-11 16:25:40', 'EditableTextField20', 'dgtgt', 'Veranstaltungsort', 5),
(27, 'SubmittedFormField', '2013-08-11 16:25:40', '2013-08-11 16:25:40', 'EditableTextField25', 'ezh', 'Datum', 5),
(28, 'SubmittedFormField', '2013-08-11 16:25:40', '2013-08-11 16:25:40', 'EditableTextField22', '6545', 'Aufgaben', 5),
(29, 'SubmittedFormField', '2013-08-11 16:25:40', '2013-08-11 16:25:40', 'EditableTextField23', '56zch65ht\r\nerxch\r\nchntezcjhtu\r\n', 'Weiter Infos', 5),
(30, 'SubmittedFormField', '2013-08-11 16:26:25', '2013-08-11 16:26:25', 'EditableTextField1', 'Nuros', 'Name', 6),
(31, 'SubmittedFormField', '2013-08-11 16:26:25', '2013-08-11 16:26:25', 'EditableEmailField2', 'tahu12@web.de', 'E-Mail Adresse', 6),
(32, 'SubmittedFormField', '2013-08-11 16:26:25', '2013-08-11 16:26:25', 'EditableTextField3', 'efwrx', 'Kommentar', 6),
(33, 'SubmittedFormField', '2013-08-11 16:26:49', '2013-08-11 16:26:49', 'EditableTextField1', 'Nuros', 'Name', 7),
(34, 'SubmittedFormField', '2013-08-11 16:26:49', '2013-08-11 16:26:49', 'EditableEmailField2', 'tahu12@web.de', 'E-Mail Adresse', 7),
(35, 'SubmittedFormField', '2013-08-11 16:26:49', '2013-08-11 16:26:49', 'EditableTextField3', 'wtcge', 'Kommentar', 7),
(36, 'SubmittedFormField', '2013-08-11 20:16:17', '2013-08-11 20:16:17', 'EditableTextField4', 'André Stenzel', 'Realname', 8),
(37, 'SubmittedFormField', '2013-08-22 16:03:07', '2013-08-22 16:03:07', 'EditableTextField4', 'erw', 'Realname', 1),
(38, 'SubmittedFormField', '2013-08-22 16:03:07', '2013-08-22 16:03:07', 'EditableTextField5', 'ewr', 'Maidname', 1),
(39, 'SubmittedFormField', '2013-08-22 16:03:07', '2013-08-22 16:03:07', 'EditableTextField6', 'erw', 'Alter', 1),
(40, 'SubmittedFormField', '2013-08-22 16:03:08', '2013-08-22 16:03:08', 'EditableTextField7', 'rwe', 'Wohnort', 1),
(41, 'SubmittedFormField', '2013-08-22 16:03:08', '2013-08-22 16:03:08', 'EditableEmailField8', 'wer@sdf.de', 'E-Mail Adresse', 1),
(42, 'SubmittedFormField', '2013-08-22 16:03:08', '2013-08-22 16:03:08', 'EditableTextField9', 'erwerw', 'Über dich', 1),
(43, 'SubmittedFileField', '2013-08-22 16:03:08', '2013-08-22 16:03:08', 'EditableFileField10', 'Array', 'Bilder ( Bitte Name in der Datei angeben)', 1),
(44, 'SubmittedFormField', '2013-08-22 16:03:53', '2013-08-22 16:03:53', 'EditableTextField4', 'sefes', 'Realname', 2),
(45, 'SubmittedFormField', '2013-08-22 16:03:53', '2013-08-22 16:03:53', 'EditableTextField5', 'sef', 'Maidname', 2),
(46, 'SubmittedFormField', '2013-08-22 16:03:53', '2013-08-22 16:03:53', 'EditableTextField6', 'efs', 'Alter', 2),
(47, 'SubmittedFormField', '2013-08-22 16:03:53', '2013-08-22 16:03:53', 'EditableTextField7', 'fse', 'Wohnort', 2),
(48, 'SubmittedFormField', '2013-08-22 16:03:53', '2013-08-22 16:03:53', 'EditableEmailField8', 'wer@sdf.de', 'E-Mail Adresse', 2),
(49, 'SubmittedFormField', '2013-08-22 16:03:53', '2013-08-22 16:03:53', 'EditableTextField9', 'dwaedeaw', 'Über dich', 2),
(50, 'SubmittedFileField', '2013-08-22 16:03:53', '2013-08-22 16:03:53', 'EditableFileField10', 'Array', 'Bilder ( Bitte Name in der Datei angeben)', 2),
(51, 'SubmittedFormField', '2013-08-22 16:04:59', '2013-08-22 16:04:59', 'EditableTextField4', 'esrf', 'Realname', 3),
(52, 'SubmittedFormField', '2013-08-22 16:04:59', '2013-08-22 16:04:59', 'EditableTextField5', 'rew', 'Maidname', 3),
(53, 'SubmittedFormField', '2013-08-22 16:04:59', '2013-08-22 16:04:59', 'EditableTextField6', 'erw', 'Alter', 3),
(54, 'SubmittedFormField', '2013-08-22 16:04:59', '2013-08-22 16:04:59', 'EditableTextField7', 'rwe', 'Wohnort', 3),
(55, 'SubmittedFormField', '2013-08-22 16:04:59', '2013-08-22 16:04:59', 'EditableEmailField8', 'wer@sdf.de', 'E-Mail Adresse', 3),
(56, 'SubmittedFormField', '2013-08-22 16:04:59', '2013-08-22 16:04:59', 'EditableTextField9', 'werewrew', 'Über dich', 3),
(57, 'SubmittedFileField', '2013-08-22 16:05:00', '2013-08-22 16:05:00', 'EditableFileField26', 'Array', 'Bilder ( Bitte Name in der Datei angeben)', 3),
(58, 'SubmittedFormField', '2013-08-22 16:06:42', '2013-08-22 16:06:42', 'EditableTextField4', 'qwe', 'Realname', 4),
(59, 'SubmittedFormField', '2013-08-22 16:06:42', '2013-08-22 16:06:42', 'EditableTextField5', 'qwe', 'Maidname', 4),
(60, 'SubmittedFormField', '2013-08-22 16:06:43', '2013-08-22 16:06:43', 'EditableTextField6', 'eqw', 'Alter', 4),
(61, 'SubmittedFormField', '2013-08-22 16:06:43', '2013-08-22 16:06:43', 'EditableTextField7', 'weq', 'Wohnort', 4),
(62, 'SubmittedFormField', '2013-08-22 16:06:43', '2013-08-22 16:06:43', 'EditableEmailField8', 'wer@sdf.de', 'E-Mail Adresse', 4),
(63, 'SubmittedFormField', '2013-08-22 16:06:43', '2013-08-22 16:06:43', 'EditableTextField9', 'wqeqw', 'Über dich', 4),
(64, 'SubmittedFileField', '2013-08-22 16:06:43', '2013-08-22 16:06:43', 'EditableFileField26', 'Array', 'Bilder ( Bitte Name in der Datei angeben)', 4),
(65, 'SubmittedFormField', '2013-08-22 16:08:13', '2013-08-22 16:08:13', 'EditableTextField4', 'adgad', 'Realname', 5),
(66, 'SubmittedFormField', '2013-08-22 16:08:13', '2013-08-22 16:08:13', 'EditableTextField5', 'adgrarg', 'Maidname', 5),
(67, 'SubmittedFormField', '2013-08-22 16:08:13', '2013-08-22 16:08:13', 'EditableTextField6', 'arg', 'Alter', 5),
(68, 'SubmittedFormField', '2013-08-22 16:08:13', '2013-08-22 16:08:13', 'EditableTextField7', 'rrretf', 'Wohnort', 5),
(69, 'SubmittedFormField', '2013-08-22 16:08:13', '2013-08-22 16:08:13', 'EditableEmailField8', 'wer@sdf.de', 'E-Mail Adresse', 5),
(70, 'SubmittedFormField', '2013-08-22 16:08:13', '2013-08-22 16:08:13', 'EditableTextField9', 'fwefrewr', 'Über dich', 5),
(71, 'SubmittedFileField', '2013-08-22 16:08:14', '2013-08-22 16:08:14', 'EditableFileField26', 'Array', 'Bilder ( Bitte Name in der Datei angeben)', 5),
(72, 'SubmittedFormField', '2013-08-22 16:09:46', '2013-08-22 16:09:46', 'EditableTextField4', 'reawfger', 'Realname', 6),
(73, 'SubmittedFormField', '2013-08-22 16:09:46', '2013-08-22 16:09:46', 'EditableTextField5', 'ergre', 'Maidname', 6),
(74, 'SubmittedFormField', '2013-08-22 16:09:46', '2013-08-22 16:09:46', 'EditableTextField6', 'tre', 'Alter', 6),
(75, 'SubmittedFormField', '2013-08-22 16:09:46', '2013-08-22 16:09:46', 'EditableTextField7', 'ert', 'Wohnort', 6),
(76, 'SubmittedFormField', '2013-08-22 16:09:46', '2013-08-22 16:09:46', 'EditableEmailField8', 'wer@sdf.de', 'E-Mail Adresse', 6),
(77, 'SubmittedFormField', '2013-08-22 16:09:46', '2013-08-22 16:09:46', 'EditableTextField9', 'etgret', 'Über dich', 6),
(78, 'SubmittedFileField', '2013-08-22 16:09:47', '2013-08-22 16:09:47', 'EditableFileField26', 'Array', 'Bilder ( Bitte Name in der Datei angeben)', 6),
(79, 'SubmittedFormField', '2013-08-23 12:03:19', '2013-08-23 12:03:19', 'EditableTextField1', 'dsf', 'Name', 7),
(80, 'SubmittedFormField', '2013-08-23 12:03:19', '2013-08-23 12:03:19', 'EditableEmailField2', 'tahu12@web.de', 'E-Mail Adresse', 7),
(81, 'SubmittedFormField', '2013-08-23 12:03:19', '2013-08-23 12:03:19', 'EditableTextField3', 'dsfds', 'Kommentar', 7),
(82, 'SubmittedFormField', '2013-08-23 12:03:39', '2013-08-23 12:03:39', 'EditableTextField4', 'dsfds', 'Realname', 8),
(83, 'SubmittedFormField', '2013-08-23 12:03:39', '2013-08-23 12:03:39', 'EditableTextField5', 'dsfdsf', 'Maidname', 8),
(84, 'SubmittedFormField', '2013-08-23 12:03:40', '2013-08-23 12:03:40', 'EditableTextField6', 'dsf', 'Alter', 8),
(85, 'SubmittedFormField', '2013-08-23 12:03:40', '2013-08-23 12:03:40', 'EditableTextField7', 'dsfds', 'Wohnort', 8),
(86, 'SubmittedFormField', '2013-08-23 12:03:40', '2013-08-23 12:03:40', 'EditableEmailField8', 'tahu12@web.de', 'E-Mail Adresse', 8),
(87, 'SubmittedFormField', '2013-08-23 12:03:40', '2013-08-23 12:03:40', 'EditableTextField9', 'sdfdsfds', 'Über dich', 8),
(88, 'SubmittedFileField', '2013-08-23 12:03:40', '2013-08-23 12:03:40', 'EditableFileField26', 'Array', 'Bilder ( Bitte Name in der Datei angeben)', 8),
(89, 'SubmittedFormField', '2013-08-23 12:04:45', '2013-08-23 12:04:45', 'EditableTextField4', 'dsfds', 'Realname', 9),
(90, 'SubmittedFormField', '2013-08-23 12:04:45', '2013-08-23 12:04:45', 'EditableTextField5', 'dsfds', 'Maidname', 9),
(91, 'SubmittedFormField', '2013-08-23 12:04:46', '2013-08-23 12:04:46', 'EditableTextField6', 'dsf', 'Alter', 9),
(92, 'SubmittedFormField', '2013-08-23 12:04:46', '2013-08-23 12:04:46', 'EditableTextField7', 'dfssd', 'Wohnort', 9),
(93, 'SubmittedFormField', '2013-08-23 12:04:46', '2013-08-23 12:04:46', 'EditableEmailField8', 'tahu12@web.de', 'E-Mail Adresse', 9),
(94, 'SubmittedFormField', '2013-08-23 12:04:46', '2013-08-23 12:04:46', 'EditableTextField9', 'sdfdsfds', 'Über dich', 9),
(95, 'SubmittedFileField', '2013-08-23 12:04:46', '2013-08-23 12:04:46', 'EditableFileField26', 'Array', 'Bilder ( Bitte Name in der Datei angeben)', 9),
(96, 'SubmittedFormField', '2013-08-23 12:21:13', '2013-08-23 12:21:13', 'EditableTextField4', 'tert', 'Realname', 10),
(97, 'SubmittedFormField', '2013-08-23 12:21:13', '2013-08-23 12:21:13', 'EditableTextField5', 'retre', 'Maidname', 10),
(98, 'SubmittedFormField', '2013-08-23 12:21:13', '2013-08-23 12:21:13', 'EditableTextField6', 'ret', 'Alter', 10),
(99, 'SubmittedFormField', '2013-08-23 12:21:13', '2013-08-23 12:21:13', 'EditableTextField7', 'retgre', 'Wohnort', 10),
(100, 'SubmittedFormField', '2013-08-23 12:21:13', '2013-08-23 12:21:13', 'EditableEmailField8', 'a.stenzel92@web.de', 'E-Mail Adresse', 10),
(101, 'SubmittedFormField', '2013-08-23 12:21:13', '2013-08-23 12:21:13', 'EditableTextField9', 'rgrdg', 'Über dich', 10),
(102, 'SubmittedFileField', '2013-08-23 12:21:14', '2013-08-23 12:21:14', 'EditableFileField26', 'Array', 'Bilder ( Bitte Name in der Datei angeben)', 10),
(103, 'SubmittedFileField', '2013-08-23 12:21:14', '2013-08-23 12:21:14', 'EditableFileField29', 'Array', NULL, 10),
(104, 'SubmittedFormField', '2013-08-23 12:24:37', '2013-08-23 12:24:37', 'EditableTextField4', 'ergre', 'Realname', 11),
(105, 'SubmittedFormField', '2013-08-23 12:24:37', '2013-08-23 12:24:37', 'EditableTextField5', 'ertre', 'Maidname', 11),
(106, 'SubmittedFormField', '2013-08-23 12:24:37', '2013-08-23 12:24:37', 'EditableTextField6', 'ret', 'Alter', 11),
(107, 'SubmittedFormField', '2013-08-23 12:24:37', '2013-08-23 12:24:37', 'EditableTextField7', 'ertre', 'Wohnort', 11),
(108, 'SubmittedFormField', '2013-08-23 12:24:37', '2013-08-23 12:24:37', 'EditableEmailField8', 'a.stenzel92@web.de', 'E-Mail Adresse', 11),
(109, 'SubmittedFormField', '2013-08-23 12:24:37', '2013-08-23 12:24:37', 'EditableTextField9', 'erertre', 'Über dich', 11),
(110, 'SubmittedFileField', '2013-08-23 12:24:38', '2013-08-23 12:24:38', 'EditableFileField26', 'Array', 'Bilder (Nicht mehr als 2MB!!)', 11),
(111, 'SubmittedFileField', '2013-08-23 12:24:38', '2013-08-23 12:24:38', 'EditableFileField29', 'Array', NULL, 11),
(112, 'SubmittedFileField', '2013-08-23 12:24:39', '2013-08-23 12:24:39', 'EditableFileField30', 'Array', NULL, 11),
(113, 'SubmittedFormField', '2013-08-23 12:26:10', '2013-08-23 12:26:10', 'EditableTextField4', 'tzrt', 'Realname', 12),
(114, 'SubmittedFormField', '2013-08-23 12:26:10', '2013-08-23 12:26:10', 'EditableTextField5', 'trz', 'Maidname', 12),
(115, 'SubmittedFormField', '2013-08-23 12:26:10', '2013-08-23 12:26:10', 'EditableTextField6', 'trz', 'Alter', 12),
(116, 'SubmittedFormField', '2013-08-23 12:26:10', '2013-08-23 12:26:10', 'EditableTextField7', 'trz', 'Wohnort', 12),
(117, 'SubmittedFormField', '2013-08-23 12:26:10', '2013-08-23 12:26:10', 'EditableEmailField8', 'a.stenzel92@web.de', 'E-Mail Adresse', 12),
(118, 'SubmittedFormField', '2013-08-23 12:26:10', '2013-08-23 12:26:10', 'EditableTextField9', 'trztrztrz', 'Über dich', 12),
(119, 'SubmittedFileField', '2013-08-23 12:26:11', '2013-08-23 12:26:11', 'EditableFileField26', 'Array', 'Bilder (Nicht mehr als 2MB!!)', 12),
(120, 'SubmittedFileField', '2013-08-23 12:26:11', '2013-08-23 12:26:11', 'EditableFileField29', 'Array', NULL, 12),
(121, 'SubmittedFileField', '2013-08-23 12:26:11', '2013-08-23 12:26:11', 'EditableFileField30', 'Array', NULL, 12),
(122, 'SubmittedFormField', '2013-08-23 12:28:11', '2013-08-23 12:28:11', 'EditableTextField4', 'dsf', 'Realname', 13),
(123, 'SubmittedFormField', '2013-08-23 12:28:11', '2013-08-23 12:28:11', 'EditableTextField5', 'dsfds', 'Maidname', 13),
(124, 'SubmittedFormField', '2013-08-23 12:28:11', '2013-08-23 12:28:11', 'EditableTextField6', 'fds', 'Alter', 13),
(125, 'SubmittedFormField', '2013-08-23 12:28:11', '2013-08-23 12:28:11', 'EditableTextField7', 'sdfds', 'Wohnort', 13),
(126, 'SubmittedFormField', '2013-08-23 12:28:12', '2013-08-23 12:28:12', 'EditableEmailField8', 'a.stenzel92@web.de', 'E-Mail Adresse', 13),
(127, 'SubmittedFormField', '2013-08-23 12:28:12', '2013-08-23 12:28:12', 'EditableTextField9', 'ewrewr', 'Über dich', 13),
(128, 'SubmittedFileField', '2013-08-23 12:28:12', '2013-08-23 12:28:12', 'EditableFileField26', 'Array', 'Bilder (Bitte den Namen in Datei angeben)', 13),
(129, 'SubmittedFileField', '2013-08-23 12:28:12', '2013-08-23 12:28:12', 'EditableFileField29', 'Array', NULL, 13),
(130, 'SubmittedFileField', '2013-08-23 12:28:13', '2013-08-23 12:28:13', 'EditableFileField30', 'Array', NULL, 13),
(131, 'SubmittedFormField', '2013-08-24 20:29:00', '2013-08-24 20:29:00', 'EditableTextField1', 'okbjk.öbjk.- ', 'Name', 14),
(132, 'SubmittedFormField', '2013-08-24 20:29:00', '2013-08-24 20:29:00', 'EditableEmailField2', 'tahu12@web.de', 'E-Mail Adresse', 14),
(133, 'SubmittedFormField', '2013-08-24 20:29:00', '2013-08-24 20:29:00', 'EditableTextField3', 'üjnkläjkl', 'Kommentar', 14),
(134, 'SubmittedFormField', '2013-08-24 20:29:47', '2013-08-24 20:29:47', 'EditableTextField4', 'jbj', 'Realname', 15),
(135, 'SubmittedFormField', '2013-08-24 20:29:47', '2013-08-24 20:29:47', 'EditableTextField5', '-mlmm,.', 'Maidname', 15),
(136, 'SubmittedFormField', '2013-08-24 20:29:47', '2013-08-24 20:29:47', 'EditableTextField6', '56', 'Alter', 15),
(137, 'SubmittedFormField', '2013-08-24 20:29:47', '2013-08-24 20:29:47', 'EditableTextField7', 'lhjkönkl', 'Wohnort', 15),
(138, 'SubmittedFormField', '2013-08-24 20:29:47', '2013-08-24 20:29:47', 'EditableEmailField8', 'a.stenzel92@web.de', 'E-Mail Adresse', 15),
(139, 'SubmittedFormField', '2013-08-24 20:29:47', '2013-08-24 20:29:47', 'EditableTextField9', '#nkbnl jnm', 'Über dich', 15),
(140, 'SubmittedFileField', '2013-08-24 20:29:48', '2013-08-24 20:29:48', 'EditableFileField26', 'Array', 'Bilder (Bitte den Namen in Datei angeben)', 15),
(141, 'SubmittedFileField', '2013-08-24 20:29:48', '2013-08-24 20:29:48', 'EditableFileField29', 'Array', NULL, 15),
(142, 'SubmittedFileField', '2013-08-24 20:29:48', '2013-08-24 20:29:48', 'EditableFileField30', 'Array', NULL, 15);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `userdefinedform`
--

CREATE TABLE IF NOT EXISTS `userdefinedform` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `SubmitButtonText` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `OnCompleteMessage` mediumtext CHARACTER SET utf8,
  `ShowClearButton` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `DisableSaveSubmissions` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `EnableLiveValidation` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `HideFieldLabels` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=16 ;

--
-- Daten für Tabelle `userdefinedform`
--

INSERT INTO `userdefinedform` (`ID`, `SubmitButtonText`, `OnCompleteMessage`, `ShowClearButton`, `DisableSaveSubmissions`, `EnableLiveValidation`, `HideFieldLabels`) VALUES
(13, NULL, '<p>Thanks, we''ve received your submission.</p>', 0, 0, 1, 0),
(14, NULL, '<p>Thanks, we''ve received your submission.</p>', 0, 0, 1, 0),
(15, 'Bewerben', '<p>Vielen Dank! Wir haben deine Bewerbung erhalten.</p>\n<p>Deine Bewerbung wird dir zur Bestätigung zugesendet.</p>', 0, 0, 1, 0);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `userdefinedform_emailrecipient`
--

CREATE TABLE IF NOT EXISTS `userdefinedform_emailrecipient` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ClassName` enum('UserDefinedForm_EmailRecipient') CHARACTER SET utf8 DEFAULT 'UserDefinedForm_EmailRecipient',
  `Created` datetime DEFAULT NULL,
  `LastEdited` datetime DEFAULT NULL,
  `EmailAddress` varchar(200) CHARACTER SET utf8 DEFAULT NULL,
  `EmailSubject` varchar(200) CHARACTER SET utf8 DEFAULT NULL,
  `EmailFrom` varchar(200) CHARACTER SET utf8 DEFAULT NULL,
  `EmailReplyTo` varchar(200) CHARACTER SET utf8 DEFAULT NULL,
  `EmailBody` mediumtext CHARACTER SET utf8,
  `SendPlain` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `HideFormData` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `FormID` int(11) NOT NULL DEFAULT '0',
  `SendEmailFromFieldID` int(11) NOT NULL DEFAULT '0',
  `SendEmailToFieldID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `FormID` (`FormID`),
  KEY `SendEmailFromFieldID` (`SendEmailFromFieldID`),
  KEY `SendEmailToFieldID` (`SendEmailToFieldID`),
  KEY `ClassName` (`ClassName`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Daten für Tabelle `userdefinedform_emailrecipient`
--

INSERT INTO `userdefinedform_emailrecipient` (`ID`, `ClassName`, `Created`, `LastEdited`, `EmailAddress`, `EmailSubject`, `EmailFrom`, `EmailReplyTo`, `EmailBody`, `SendPlain`, `HideFormData`, `FormID`, `SendEmailFromFieldID`, `SendEmailToFieldID`) VALUES
(1, 'UserDefinedForm_EmailRecipient', '2013-08-11 16:05:04', '2013-08-11 16:27:19', 'a.stentel@webschmitz.de', 'Kontakt', NULL, NULL, NULL, 0, 0, 13, 2, 0),
(2, 'UserDefinedForm_EmailRecipient', '2013-08-11 16:11:59', '2013-08-23 12:33:18', 'a.stenzel@webschmitz.de', 'Bewerbung', NULL, NULL, 'Eine neue Bewerbung ist eingetroffen:', 0, 0, 15, 8, 0),
(3, 'UserDefinedForm_EmailRecipient', '2013-08-11 16:19:47', '2013-08-11 16:19:55', 'a.stenzel@webschmitz.de', 'Buchen', NULL, NULL, NULL, 0, 0, 14, 18, 0),
(4, 'UserDefinedForm_EmailRecipient', '2013-08-22 16:07:25', '2013-08-23 12:32:22', NULL, 'Deine Bewerbung', 'maidcafe@nix.de', NULL, 'Deine Bewerbung ist bei uns angekommen und wir werden uns so schnell wie möglich bei dir zurückmelden <3\r\n\r\nHier nochmals deine Bewerbung:', 0, 0, 15, 0, 8);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `userdefinedform_live`
--

CREATE TABLE IF NOT EXISTS `userdefinedform_live` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `SubmitButtonText` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `OnCompleteMessage` mediumtext CHARACTER SET utf8,
  `ShowClearButton` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `DisableSaveSubmissions` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `EnableLiveValidation` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `HideFieldLabels` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=16 ;

--
-- Daten für Tabelle `userdefinedform_live`
--

INSERT INTO `userdefinedform_live` (`ID`, `SubmitButtonText`, `OnCompleteMessage`, `ShowClearButton`, `DisableSaveSubmissions`, `EnableLiveValidation`, `HideFieldLabels`) VALUES
(13, NULL, '<p>Thanks, we''ve received your submission.</p>', 0, 0, 1, 0),
(14, NULL, '<p>Thanks, we''ve received your submission.</p>', 0, 0, 1, 0),
(15, 'Bewerben', '<p>Vielen Dank! Wir haben deine Bewerbung erhalten.</p>\n<p>Deine Bewerbung wird dir zur Bestätigung zugesendet.</p>', 0, 0, 1, 0);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `userdefinedform_versions`
--

CREATE TABLE IF NOT EXISTS `userdefinedform_versions` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `RecordID` int(11) NOT NULL DEFAULT '0',
  `Version` int(11) NOT NULL DEFAULT '0',
  `SubmitButtonText` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `OnCompleteMessage` mediumtext CHARACTER SET utf8,
  `ShowClearButton` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `DisableSaveSubmissions` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `EnableLiveValidation` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `HideFieldLabels` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  UNIQUE KEY `RecordID_Version` (`RecordID`,`Version`),
  KEY `RecordID` (`RecordID`),
  KEY `Version` (`Version`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=14 ;

--
-- Daten für Tabelle `userdefinedform_versions`
--

INSERT INTO `userdefinedform_versions` (`ID`, `RecordID`, `Version`, `SubmitButtonText`, `OnCompleteMessage`, `ShowClearButton`, `DisableSaveSubmissions`, `EnableLiveValidation`, `HideFieldLabels`) VALUES
(1, 13, 1, NULL, '<p>Thanks, we''ve received your submission.</p>', 0, 0, 0, 0),
(2, 14, 1, NULL, '<p>Thanks, we''ve received your submission.</p>', 0, 0, 0, 0),
(3, 15, 1, NULL, '<p>Thanks, we''ve received your submission.</p>', 0, 0, 0, 0),
(4, 15, 2, NULL, '<p>Thanks, we''ve received your submission.</p>', 0, 0, 0, 0),
(5, 13, 2, NULL, '<p>Thanks, we''ve received your submission.</p>', 0, 0, 0, 0),
(6, 15, 3, NULL, '<p>Thanks, we''ve received your submission.</p>', 0, 0, 0, 0),
(7, 14, 2, NULL, '<p>Thanks, we''ve received your submission.</p>', 0, 0, 0, 0),
(8, 15, 4, 'Bewerben', '<p>Thanks, we''ve received your submission.</p>', 0, 0, 0, 0),
(9, 15, 5, 'Bewerben', '<p>Thanks, we''ve received your submission.</p>', 0, 0, 1, 0),
(10, 14, 3, NULL, '<p>Thanks, we''ve received your submission.</p>', 0, 0, 1, 0),
(11, 13, 3, NULL, '<p>Thanks, we''ve received your submission.</p>', 0, 0, 1, 0),
(12, 15, 6, 'Bewerben', '<p>Vielen Dank! Wir haben deine Bewerbung erhalten.</p>\n<p>Deine Bewerbung wird dir zur Bestätigung nochmals an deine E-Mail Adresse gesendet.</p>', 0, 0, 1, 0),
(13, 15, 7, 'Bewerben', '<p>Vielen Dank! Wir haben deine Bewerbung erhalten.</p>\n<p>Deine Bewerbung wird dir zur Bestätigung zugesendet.</p>', 0, 0, 1, 0);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `virtualpage`
--

CREATE TABLE IF NOT EXISTS `virtualpage` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `VersionID` int(11) NOT NULL DEFAULT '0',
  `CopyContentFromID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `CopyContentFromID` (`CopyContentFromID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `virtualpage_live`
--

CREATE TABLE IF NOT EXISTS `virtualpage_live` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `VersionID` int(11) NOT NULL DEFAULT '0',
  `CopyContentFromID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `CopyContentFromID` (`CopyContentFromID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `virtualpage_versions`
--

CREATE TABLE IF NOT EXISTS `virtualpage_versions` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `RecordID` int(11) NOT NULL DEFAULT '0',
  `Version` int(11) NOT NULL DEFAULT '0',
  `VersionID` int(11) NOT NULL DEFAULT '0',
  `CopyContentFromID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  UNIQUE KEY `RecordID_Version` (`RecordID`,`Version`),
  KEY `RecordID` (`RecordID`),
  KEY `Version` (`Version`),
  KEY `CopyContentFromID` (`CopyContentFromID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `_obsolete_image`
--

CREATE TABLE IF NOT EXISTS `_obsolete_image` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ExifDate` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
