-- phpMyAdmin SQL Dump
-- version 4.0.4
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Erstellungszeit: 22. Aug 2013 um 15:11
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
  PRIMARY KEY (`ID`),
  KEY `IconID` (`IconID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `articlepage_live`
--

CREATE TABLE IF NOT EXISTS `articlepage_live` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Date` date DEFAULT NULL,
  `Author` mediumtext CHARACTER SET utf8,
  `IconID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `IconID` (`IconID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

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
  PRIMARY KEY (`ID`),
  UNIQUE KEY `RecordID_Version` (`RecordID`,`Version`),
  KEY `RecordID` (`RecordID`),
  KEY `Version` (`Version`),
  KEY `IconID` (`IconID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `cwsfoldergallerypage`
--

CREATE TABLE IF NOT EXISTS `cwsfoldergallerypage` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `AlbumFolderID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

--
-- Daten für Tabelle `cwsfoldergallerypage`
--

INSERT INTO `cwsfoldergallerypage` (`ID`, `AlbumFolderID`) VALUES
(6, 0),
(9, 21),
(10, 21);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `cwsfoldergallerypage_live`
--

CREATE TABLE IF NOT EXISTS `cwsfoldergallerypage_live` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `AlbumFolderID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- Daten für Tabelle `cwsfoldergallerypage_live`
--

INSERT INTO `cwsfoldergallerypage_live` (`ID`, `AlbumFolderID`) VALUES
(6, 0),
(9, 0);

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=26 ;

--
-- Daten für Tabelle `editableformfield`
--

INSERT INTO `editableformfield` (`ID`, `ClassName`, `Created`, `LastEdited`, `Name`, `Title`, `Default`, `Sort`, `Required`, `CustomErrorMessage`, `CustomRules`, `CustomSettings`, `CustomParameter`, `Version`, `ParentID`) VALUES
(1, 'EditableTextField', '2013-08-11 16:03:03', '2013-08-22 12:46:48', 'EditableTextField1', 'Name', NULL, 1, 1, NULL, 'a:0:{}', 'a:6:{s:10:"ExtraClass";s:0:"";s:10:"RightTitle";s:0:"";s:9:"MinLength";s:0:"";s:9:"MaxLength";s:0:"";s:4:"Rows";s:1:"1";s:10:"ShowOnLoad";s:4:"Show";}', NULL, 1, 13),
(2, 'EditableEmailField', '2013-08-11 16:03:09', '2013-08-22 12:46:48', 'EditableEmailField2', 'E-Mail Adresse', NULL, 2, 1, NULL, 'a:0:{}', 'a:3:{s:10:"ExtraClass";s:0:"";s:10:"RightTitle";s:0:"";s:10:"ShowOnLoad";s:4:"Show";}', NULL, 1, 13),
(3, 'EditableTextField', '2013-08-11 16:03:13', '2013-08-22 12:46:48', 'EditableTextField3', 'Kommentar', NULL, 3, 1, NULL, 'a:0:{}', 'a:6:{s:10:"ExtraClass";s:0:"";s:10:"RightTitle";s:0:"";s:9:"MinLength";s:0:"";s:9:"MaxLength";s:0:"";s:4:"Rows";s:1:"3";s:10:"ShowOnLoad";s:4:"Show";}', NULL, 1, 13),
(4, 'EditableTextField', '2013-08-11 16:08:21', '2013-08-22 12:46:03', 'EditableTextField4', 'Realname', NULL, 1, 1, NULL, 'a:0:{}', 'a:6:{s:10:"ExtraClass";s:0:"";s:10:"RightTitle";s:0:"";s:9:"MinLength";s:0:"";s:9:"MaxLength";s:2:"20";s:4:"Rows";s:1:"1";s:10:"ShowOnLoad";s:4:"Show";}', NULL, 3, 15),
(5, 'EditableTextField', '2013-08-11 16:08:30', '2013-08-22 12:46:03', 'EditableTextField5', 'Maidname', NULL, 2, 1, NULL, 'a:0:{}', 'a:6:{s:10:"ExtraClass";s:0:"";s:10:"RightTitle";s:0:"";s:9:"MinLength";s:0:"";s:9:"MaxLength";s:2:"20";s:4:"Rows";s:1:"1";s:10:"ShowOnLoad";s:4:"Show";}', NULL, 3, 15),
(6, 'EditableTextField', '2013-08-11 16:08:35', '2013-08-22 12:46:03', 'EditableTextField6', 'Alter', NULL, 3, 1, NULL, 'a:0:{}', 'a:6:{s:10:"ExtraClass";s:0:"";s:10:"RightTitle";s:0:"";s:9:"MinLength";s:0:"";s:9:"MaxLength";s:1:"3";s:4:"Rows";s:1:"1";s:10:"ShowOnLoad";s:4:"Show";}', NULL, 3, 15),
(7, 'EditableTextField', '2013-08-11 16:08:38', '2013-08-22 12:46:03', 'EditableTextField7', 'Wohnort', NULL, 4, 1, NULL, 'a:0:{}', 'a:6:{s:10:"ExtraClass";s:0:"";s:10:"RightTitle";s:0:"";s:9:"MinLength";s:0:"";s:9:"MaxLength";s:2:"20";s:4:"Rows";s:1:"1";s:10:"ShowOnLoad";s:4:"Show";}', NULL, 3, 15),
(8, 'EditableEmailField', '2013-08-11 16:08:42', '2013-08-22 12:46:04', 'EditableEmailField8', 'E-Mail Adresse', NULL, 5, 1, NULL, 'a:0:{}', 'a:3:{s:10:"ExtraClass";s:0:"";s:10:"RightTitle";s:0:"";s:10:"ShowOnLoad";s:4:"Show";}', NULL, 3, 15),
(9, 'EditableTextField', '2013-08-11 16:08:48', '2013-08-22 12:46:04', 'EditableTextField9', 'Über dich', NULL, 6, 1, NULL, 'a:0:{}', 'a:6:{s:10:"ExtraClass";s:0:"";s:10:"RightTitle";s:0:"";s:9:"MinLength";s:0:"";s:9:"MaxLength";s:0:"";s:4:"Rows";s:1:"9";s:10:"ShowOnLoad";s:4:"Show";}', NULL, 3, 15),
(10, 'EditableFileField', '2013-08-11 16:09:05', '2013-08-22 12:46:04', 'EditableFileField10', 'Bilder ( Bitte Name in der Datei angeben)', NULL, 7, 0, NULL, 'a:0:{}', 'a:3:{s:10:"ExtraClass";s:0:"";s:10:"RightTitle";s:0:"";s:10:"ShowOnLoad";s:4:"Show";}', NULL, 3, 15),
(16, 'EditableTextField', '2013-08-11 16:16:49', '2013-08-22 12:46:22', 'EditableTextField16', 'Firma/Convention', NULL, 1, 1, NULL, 'a:0:{}', 'a:6:{s:10:"ExtraClass";s:0:"";s:10:"RightTitle";s:0:"";s:9:"MinLength";s:0:"";s:9:"MaxLength";s:0:"";s:4:"Rows";s:1:"1";s:10:"ShowOnLoad";s:4:"Show";}', NULL, 1, 14),
(17, 'EditableTextField', '2013-08-11 16:16:52', '2013-08-22 12:46:22', 'EditableTextField17', 'Ansprechpartner', NULL, 2, 1, NULL, 'a:0:{}', 'a:6:{s:10:"ExtraClass";s:0:"";s:10:"RightTitle";s:0:"";s:9:"MinLength";s:0:"";s:9:"MaxLength";s:0:"";s:4:"Rows";s:1:"1";s:10:"ShowOnLoad";s:4:"Show";}', NULL, 1, 14),
(18, 'EditableEmailField', '2013-08-11 16:16:55', '2013-08-22 12:46:22', 'EditableEmailField18', 'E-Mail Adresse', NULL, 3, 1, NULL, 'a:0:{}', 'a:3:{s:10:"ExtraClass";s:0:"";s:10:"RightTitle";s:0:"";s:10:"ShowOnLoad";s:4:"Show";}', NULL, 1, 14),
(19, 'EditableTextField', '2013-08-11 16:16:59', '2013-08-22 12:46:22', 'EditableTextField19', 'Telefonnummer', NULL, 4, 1, NULL, 'a:0:{}', 'a:6:{s:10:"ExtraClass";s:0:"";s:10:"RightTitle";s:0:"";s:9:"MinLength";s:0:"";s:9:"MaxLength";s:0:"";s:4:"Rows";s:1:"1";s:10:"ShowOnLoad";s:4:"Show";}', NULL, 1, 14),
(20, 'EditableTextField', '2013-08-11 16:17:03', '2013-08-22 12:46:22', 'EditableTextField20', 'Veranstaltungsort', NULL, 5, 1, NULL, 'a:0:{}', 'a:6:{s:10:"ExtraClass";s:0:"";s:10:"RightTitle";s:0:"";s:9:"MinLength";s:0:"";s:9:"MaxLength";s:0:"";s:4:"Rows";s:1:"1";s:10:"ShowOnLoad";s:4:"Show";}', NULL, 1, 14),
(22, 'EditableTextField', '2013-08-11 16:17:13', '2013-08-22 12:46:22', 'EditableTextField22', 'Aufgaben', NULL, 7, 1, NULL, 'a:0:{}', 'a:6:{s:10:"ExtraClass";s:0:"";s:10:"RightTitle";s:0:"";s:9:"MinLength";s:0:"";s:9:"MaxLength";s:0:"";s:4:"Rows";s:1:"1";s:10:"ShowOnLoad";s:4:"Show";}', NULL, 1, 14),
(23, 'EditableTextField', '2013-08-11 16:17:17', '2013-08-22 12:46:23', 'EditableTextField23', 'Weiter Infos', NULL, 8, 1, NULL, 'a:0:{}', 'a:6:{s:10:"ExtraClass";s:0:"";s:10:"RightTitle";s:0:"";s:9:"MinLength";s:0:"";s:9:"MaxLength";s:0:"";s:4:"Rows";s:1:"9";s:10:"ShowOnLoad";s:4:"Show";}', NULL, 1, 14),
(25, 'EditableTextField', '2013-08-11 16:24:36', '2013-08-22 12:46:22', 'EditableTextField25', 'Datum', NULL, 6, 1, NULL, 'a:0:{}', 'a:6:{s:10:"ExtraClass";s:0:"";s:10:"RightTitle";s:0:"";s:9:"MinLength";s:0:"";s:9:"MaxLength";s:2:"10";s:4:"Rows";s:1:"1";s:10:"ShowOnLoad";s:4:"Show";}', NULL, 1, 14);

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=26 ;

--
-- Daten für Tabelle `editableformfield_live`
--

INSERT INTO `editableformfield_live` (`ID`, `ClassName`, `Created`, `LastEdited`, `Name`, `Title`, `Default`, `Sort`, `Required`, `CustomErrorMessage`, `CustomRules`, `CustomSettings`, `CustomParameter`, `Version`, `ParentID`) VALUES
(1, 'EditableTextField', '2013-08-11 16:03:03', '2013-08-22 12:46:49', 'EditableTextField1', 'Name', NULL, 1, 1, NULL, 'a:0:{}', 'a:6:{s:10:"ExtraClass";s:0:"";s:10:"RightTitle";s:0:"";s:9:"MinLength";s:0:"";s:9:"MaxLength";s:0:"";s:4:"Rows";s:1:"1";s:10:"ShowOnLoad";s:4:"Show";}', NULL, 1, 13),
(2, 'EditableEmailField', '2013-08-11 16:03:09', '2013-08-22 12:46:49', 'EditableEmailField2', 'E-Mail Adresse', NULL, 2, 1, NULL, 'a:0:{}', 'a:3:{s:10:"ExtraClass";s:0:"";s:10:"RightTitle";s:0:"";s:10:"ShowOnLoad";s:4:"Show";}', NULL, 1, 13),
(3, 'EditableTextField', '2013-08-11 16:03:13', '2013-08-22 12:46:49', 'EditableTextField3', 'Kommentar', NULL, 3, 1, NULL, 'a:0:{}', 'a:6:{s:10:"ExtraClass";s:0:"";s:10:"RightTitle";s:0:"";s:9:"MinLength";s:0:"";s:9:"MaxLength";s:0:"";s:4:"Rows";s:1:"3";s:10:"ShowOnLoad";s:4:"Show";}', NULL, 1, 13),
(4, 'EditableTextField', '2013-08-11 16:08:21', '2013-08-22 12:46:05', 'EditableTextField4', 'Realname', NULL, 1, 1, NULL, 'a:0:{}', 'a:6:{s:10:"ExtraClass";s:0:"";s:10:"RightTitle";s:0:"";s:9:"MinLength";s:0:"";s:9:"MaxLength";s:2:"20";s:4:"Rows";s:1:"1";s:10:"ShowOnLoad";s:4:"Show";}', NULL, 3, 15),
(5, 'EditableTextField', '2013-08-11 16:08:30', '2013-08-22 12:46:05', 'EditableTextField5', 'Maidname', NULL, 2, 1, NULL, 'a:0:{}', 'a:6:{s:10:"ExtraClass";s:0:"";s:10:"RightTitle";s:0:"";s:9:"MinLength";s:0:"";s:9:"MaxLength";s:2:"20";s:4:"Rows";s:1:"1";s:10:"ShowOnLoad";s:4:"Show";}', NULL, 3, 15),
(6, 'EditableTextField', '2013-08-11 16:08:35', '2013-08-22 12:46:05', 'EditableTextField6', 'Alter', NULL, 3, 1, NULL, 'a:0:{}', 'a:6:{s:10:"ExtraClass";s:0:"";s:10:"RightTitle";s:0:"";s:9:"MinLength";s:0:"";s:9:"MaxLength";s:1:"3";s:4:"Rows";s:1:"1";s:10:"ShowOnLoad";s:4:"Show";}', NULL, 3, 15),
(7, 'EditableTextField', '2013-08-11 16:08:38', '2013-08-22 12:46:05', 'EditableTextField7', 'Wohnort', NULL, 4, 1, NULL, 'a:0:{}', 'a:6:{s:10:"ExtraClass";s:0:"";s:10:"RightTitle";s:0:"";s:9:"MinLength";s:0:"";s:9:"MaxLength";s:2:"20";s:4:"Rows";s:1:"1";s:10:"ShowOnLoad";s:4:"Show";}', NULL, 3, 15),
(8, 'EditableEmailField', '2013-08-11 16:08:42', '2013-08-22 12:46:05', 'EditableEmailField8', 'E-Mail Adresse', NULL, 5, 1, NULL, 'a:0:{}', 'a:3:{s:10:"ExtraClass";s:0:"";s:10:"RightTitle";s:0:"";s:10:"ShowOnLoad";s:4:"Show";}', NULL, 3, 15),
(9, 'EditableTextField', '2013-08-11 16:08:48', '2013-08-22 12:46:05', 'EditableTextField9', 'Über dich', NULL, 6, 1, NULL, 'a:0:{}', 'a:6:{s:10:"ExtraClass";s:0:"";s:10:"RightTitle";s:0:"";s:9:"MinLength";s:0:"";s:9:"MaxLength";s:0:"";s:4:"Rows";s:1:"9";s:10:"ShowOnLoad";s:4:"Show";}', NULL, 3, 15),
(10, 'EditableFileField', '2013-08-11 16:09:05', '2013-08-22 12:46:05', 'EditableFileField10', 'Bilder ( Bitte Name in der Datei angeben)', NULL, 7, 0, NULL, 'a:0:{}', 'a:3:{s:10:"ExtraClass";s:0:"";s:10:"RightTitle";s:0:"";s:10:"ShowOnLoad";s:4:"Show";}', NULL, 3, 15),
(16, 'EditableTextField', '2013-08-11 16:16:49', '2013-08-22 12:46:24', 'EditableTextField16', 'Firma/Convention', NULL, 1, 1, NULL, 'a:0:{}', 'a:6:{s:10:"ExtraClass";s:0:"";s:10:"RightTitle";s:0:"";s:9:"MinLength";s:0:"";s:9:"MaxLength";s:0:"";s:4:"Rows";s:1:"1";s:10:"ShowOnLoad";s:4:"Show";}', NULL, 1, 14),
(17, 'EditableTextField', '2013-08-11 16:16:52', '2013-08-22 12:46:24', 'EditableTextField17', 'Ansprechpartner', NULL, 2, 1, NULL, 'a:0:{}', 'a:6:{s:10:"ExtraClass";s:0:"";s:10:"RightTitle";s:0:"";s:9:"MinLength";s:0:"";s:9:"MaxLength";s:0:"";s:4:"Rows";s:1:"1";s:10:"ShowOnLoad";s:4:"Show";}', NULL, 1, 14),
(18, 'EditableEmailField', '2013-08-11 16:16:55', '2013-08-22 12:46:24', 'EditableEmailField18', 'E-Mail Adresse', NULL, 3, 1, NULL, 'a:0:{}', 'a:3:{s:10:"ExtraClass";s:0:"";s:10:"RightTitle";s:0:"";s:10:"ShowOnLoad";s:4:"Show";}', NULL, 1, 14),
(19, 'EditableTextField', '2013-08-11 16:16:59', '2013-08-22 12:46:24', 'EditableTextField19', 'Telefonnummer', NULL, 4, 1, NULL, 'a:0:{}', 'a:6:{s:10:"ExtraClass";s:0:"";s:10:"RightTitle";s:0:"";s:9:"MinLength";s:0:"";s:9:"MaxLength";s:0:"";s:4:"Rows";s:1:"1";s:10:"ShowOnLoad";s:4:"Show";}', NULL, 1, 14),
(20, 'EditableTextField', '2013-08-11 16:17:03', '2013-08-22 12:46:24', 'EditableTextField20', 'Veranstaltungsort', NULL, 5, 1, NULL, 'a:0:{}', 'a:6:{s:10:"ExtraClass";s:0:"";s:10:"RightTitle";s:0:"";s:9:"MinLength";s:0:"";s:9:"MaxLength";s:0:"";s:4:"Rows";s:1:"1";s:10:"ShowOnLoad";s:4:"Show";}', NULL, 1, 14),
(22, 'EditableTextField', '2013-08-11 16:17:13', '2013-08-22 12:46:24', 'EditableTextField22', 'Aufgaben', NULL, 7, 1, NULL, 'a:0:{}', 'a:6:{s:10:"ExtraClass";s:0:"";s:10:"RightTitle";s:0:"";s:9:"MinLength";s:0:"";s:9:"MaxLength";s:0:"";s:4:"Rows";s:1:"1";s:10:"ShowOnLoad";s:4:"Show";}', NULL, 1, 14),
(23, 'EditableTextField', '2013-08-11 16:17:17', '2013-08-22 12:46:24', 'EditableTextField23', 'Weiter Infos', NULL, 8, 1, NULL, 'a:0:{}', 'a:6:{s:10:"ExtraClass";s:0:"";s:10:"RightTitle";s:0:"";s:9:"MinLength";s:0:"";s:9:"MaxLength";s:0:"";s:4:"Rows";s:1:"9";s:10:"ShowOnLoad";s:4:"Show";}', NULL, 1, 14),
(25, 'EditableTextField', '2013-08-11 16:24:36', '2013-08-22 12:46:24', 'EditableTextField25', 'Datum', NULL, 6, 1, NULL, 'a:0:{}', 'a:6:{s:10:"ExtraClass";s:0:"";s:10:"RightTitle";s:0:"";s:9:"MinLength";s:0:"";s:9:"MaxLength";s:2:"10";s:4:"Rows";s:1:"1";s:10:"ShowOnLoad";s:4:"Show";}', NULL, 1, 14);

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=33 ;

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
(32, 3, 1, 1, 1, 1, 'EditableTextField', '2013-08-11 16:03:13', '2013-08-22 12:46:48', 'EditableTextField3', 'Kommentar', NULL, 3, 1, NULL, 'a:0:{}', 'a:6:{s:10:"ExtraClass";s:0:"";s:10:"RightTitle";s:0:"";s:9:"MinLength";s:0:"";s:9:"MaxLength";s:0:"";s:4:"Rows";s:1:"3";s:10:"ShowOnLoad";s:4:"Show";}', NULL, 13);

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=82 ;

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
(81, 'Image', '2013-08-21 14:55:13', '2013-08-21 14:55:13', 'articlenewsicon.png', 'articlenewsicon.png', 'assets/icons/articlenewsicon.png', NULL, 1, 78, 1);

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
-- Tabellenstruktur für Tabelle `image`
--

CREATE TABLE IF NOT EXISTS `image` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ExifDate` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`)
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `maxskitterslide`
--

CREATE TABLE IF NOT EXISTS `maxskitterslide` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ClassName` enum('MaxSkitterSlide') CHARACTER SET utf8 DEFAULT 'MaxSkitterSlide',
  `Created` datetime DEFAULT NULL,
  `LastEdited` datetime DEFAULT NULL,
  `Name` varchar(64) CHARACTER SET utf8 DEFAULT NULL,
  `Label` mediumtext CHARACTER SET utf8,
  `animation` varchar(32) CHARACTER SET utf8 DEFAULT NULL,
  `ExternalLink` varchar(2083) CHARACTER SET utf8 DEFAULT NULL,
  `MaxSkitterImageID` int(11) NOT NULL DEFAULT '0',
  `InternalLinkID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `MaxSkitterImageID` (`MaxSkitterImageID`),
  KEY `InternalLinkID` (`InternalLinkID`),
  KEY `ClassName` (`ClassName`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

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
(1, 'Member', '2013-08-21 12:48:05', '2013-08-22 12:19:46', 'Standardadmin', NULL, 'admin', '$2y$10$effe9adc22281361577d4OOcChlOi./7IG4Pu7rJ9HT3igcGBojW6', '$2y$10$effe9adc22281361577d4OWB0gMDdhwY5ai/nzKs57GrZfld04Txm', 4, '2013-08-22 17:09:21', 0, NULL, NULL, 'blowfish', '10$effe9adc22281361577d4b', NULL, NULL, 'de_DE', 0, NULL, NULL);

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
-- Tabellenstruktur für Tabelle `page`
--

CREATE TABLE IF NOT EXISTS `page` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
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
  `notRecursive` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=16 ;

--
-- Daten für Tabelle `page`
--

INSERT INTO `page` (`ID`, `maxskitter_interval`, `maxskitter_animation`, `maxskitter_numbers`, `maxskitter_numbers_align`, `maxskitter_navigation`, `maxskitter_dots`, `maxskitter_thumbs`, `maxskitter_hideTools`, `maxskitter_label`, `maxskitter_animateNumberOut`, `maxskitter_animateNumberOver`, `maxskitter_animateNumberActive`, `maxskitter_controls`, `maxskitter_controls_position`, `maxskitter_easing_default`, `maxskitter_enable_navigation_keys`, `maxskitter_focus`, `maxskitter_focus_position`, `maxskitter_fullscreen`, `maxskitter_mouseOutButton`, `maxskitter_mouseOverButton`, `maxskitter_onLoad`, `maxskitter_preview`, `maxskitter_stop_over`, `maxskitter_show_randomly`, `maxskitter_velocity`, `maxskitter_width_label`, `maxskitter_with_animations`, `notRecursive`) VALUES
(11, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(12, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(13, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(14, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(15, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `page_live`
--

CREATE TABLE IF NOT EXISTS `page_live` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
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
  `notRecursive` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=16 ;

--
-- Daten für Tabelle `page_live`
--

INSERT INTO `page_live` (`ID`, `maxskitter_interval`, `maxskitter_animation`, `maxskitter_numbers`, `maxskitter_numbers_align`, `maxskitter_navigation`, `maxskitter_dots`, `maxskitter_thumbs`, `maxskitter_hideTools`, `maxskitter_label`, `maxskitter_animateNumberOut`, `maxskitter_animateNumberOver`, `maxskitter_animateNumberActive`, `maxskitter_controls`, `maxskitter_controls_position`, `maxskitter_easing_default`, `maxskitter_enable_navigation_keys`, `maxskitter_focus`, `maxskitter_focus_position`, `maxskitter_fullscreen`, `maxskitter_mouseOutButton`, `maxskitter_mouseOverButton`, `maxskitter_onLoad`, `maxskitter_preview`, `maxskitter_stop_over`, `maxskitter_show_randomly`, `maxskitter_velocity`, `maxskitter_width_label`, `maxskitter_with_animations`, `notRecursive`) VALUES
(11, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(12, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(13, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(14, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(15, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `page_maxskitterslides`
--

CREATE TABLE IF NOT EXISTS `page_maxskitterslides` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `PageID` int(11) NOT NULL DEFAULT '0',
  `MaxSkitterSlideID` int(11) NOT NULL DEFAULT '0',
  `SortOrder` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `PageID` (`PageID`),
  KEY `MaxSkitterSlideID` (`MaxSkitterSlideID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `page_versions`
--

CREATE TABLE IF NOT EXISTS `page_versions` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `RecordID` int(11) NOT NULL DEFAULT '0',
  `Version` int(11) NOT NULL DEFAULT '0',
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
  `notRecursive` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  UNIQUE KEY `RecordID_Version` (`RecordID`,`Version`),
  KEY `RecordID` (`RecordID`),
  KEY `Version` (`Version`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=20 ;

--
-- Daten für Tabelle `page_versions`
--

INSERT INTO `page_versions` (`ID`, `RecordID`, `Version`, `maxskitter_interval`, `maxskitter_animation`, `maxskitter_numbers`, `maxskitter_numbers_align`, `maxskitter_navigation`, `maxskitter_dots`, `maxskitter_thumbs`, `maxskitter_hideTools`, `maxskitter_label`, `maxskitter_animateNumberOut`, `maxskitter_animateNumberOver`, `maxskitter_animateNumberActive`, `maxskitter_controls`, `maxskitter_controls_position`, `maxskitter_easing_default`, `maxskitter_enable_navigation_keys`, `maxskitter_focus`, `maxskitter_focus_position`, `maxskitter_fullscreen`, `maxskitter_mouseOutButton`, `maxskitter_mouseOverButton`, `maxskitter_onLoad`, `maxskitter_preview`, `maxskitter_stop_over`, `maxskitter_show_randomly`, `maxskitter_velocity`, `maxskitter_width_label`, `maxskitter_with_animations`, `notRecursive`) VALUES
(1, 11, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(2, 11, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(3, 11, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(4, 12, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(5, 12, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(6, 12, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(7, 12, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(8, 12, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(9, 13, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(10, 14, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(11, 15, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(12, 15, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(13, 13, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(14, 15, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(15, 14, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(16, 15, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(17, 15, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(18, 14, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(19, 13, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0);

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
(1, 'SiteConfig', '2013-08-21 12:48:05', '2013-08-21 12:57:17', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Lucky Chocolate Maid Café', NULL, 'fancypants', 'Anyone', 'LoggedInUsers', 'LoggedInUsers');

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
  `ClassName` enum('Page','ErrorPage','cwsFolderGalleryPage','HomePage','ContactPage','Page2','UserDefinedForm','SiteTree','ArticleCategory','ArticleHolder','ArticlePage','Maid','MaidHolder','RedirectorPage','VirtualPage') CHARACTER SET utf8 DEFAULT 'Page',
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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=16 ;

--
-- Daten für Tabelle `sitetree`
--

INSERT INTO `sitetree` (`ID`, `ClassName`, `Created`, `LastEdited`, `URLSegment`, `Title`, `MenuTitle`, `Content`, `MetaTitle`, `MetaDescription`, `MetaKeywords`, `ExtraMeta`, `ShowInMenus`, `ShowInSearch`, `Sort`, `HasBrokenFile`, `HasBrokenLink`, `ReportClass`, `CanViewType`, `CanEditType`, `Version`, `ParentID`) VALUES
(1, 'HomePage', '2013-08-21 12:48:06', '2013-08-21 12:56:13', 'home', 'Startseite', NULL, '<p>Willkommen bei SilverStripe! Dies ist die Standard-Startseite. Sie können diese Seite bearbeiten, indem Sie <a href="admin/">das CMS</a> öffnen. Sie können außerdem die  <a href="http://doc.silverstripe.com">Entwicker-Dokumentation</a> oder die <a href="http://doc.silverstripe.com/doku.php?id=tutorials">Einführungskurse und Tutorien</a> aufrufen.</p>', NULL, NULL, NULL, NULL, 1, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 2, 0),
(2, 'Page', '2013-08-21 12:48:07', '2013-08-21 12:55:13', 'ueber-uns', 'Über uns', NULL, '<p>Sie können diese Seite mit Ihren eigenen Inhalten füllen, oder sie löschen und Ihre eigenen Seiten erstellen.<br></p>', NULL, NULL, NULL, NULL, 1, 1, 2, 0, 0, NULL, 'Inherit', 'Inherit', 1, 0),
(4, 'ErrorPage', '2013-08-21 12:48:08', '2013-08-21 12:55:14', 'seite-nicht-gefunden', 'Seite nicht gefunden', NULL, '<p>Entschuldigung, möglicherweise versuchen Sie eine Seite zu erreichen die nicht existiert.</p><p>Bitte überprüfen Sie die Schreibweise der URL die Sie versucht haben zu erreichen und versuchen Sie es noch einmal.</p>', NULL, NULL, NULL, NULL, 0, 0, 4, 0, 0, NULL, 'Inherit', 'Inherit', 1, 0),
(5, 'ErrorPage', '2013-08-21 12:48:09', '2013-08-21 12:55:14', 'serverfehler', 'Serverfehler', NULL, '<p>Entschuldigung, bei der Bearbeitung ihrer Anfrage ist ein Problem aufgetreten.</p>', NULL, NULL, NULL, NULL, 0, 0, 5, 0, 0, NULL, 'Inherit', 'Inherit', 1, 0),
(6, 'cwsFolderGalleryPage', '2013-08-21 12:54:59', '2013-08-21 12:55:37', 'bildergallerie', 'Bildergallerie', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 6, 0, 0, NULL, 'Inherit', 'Inherit', 2, 0),
(9, 'cwsFolderGalleryPage', '2013-08-21 13:15:23', '2013-08-22 12:19:58', 'neue-bildergalerie', 'Neue Bildergalerie', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 2, 0, 0, NULL, 'Inherit', 'Inherit', 2, 6),
(10, 'cwsFolderGalleryPage', '2013-08-21 13:16:37', '2013-08-22 12:20:28', 'neue-bildergalerie-2', 'Neue Bildergalerie', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 3, 0, 0, NULL, 'Inherit', 'Inherit', 2, 6),
(11, 'Page2', '2013-08-22 12:20:36', '2013-08-22 12:23:18', 'impressum', 'Impressum', NULL, '<p><strong>Angabe nach § 5 TMG und § 55 RStV:</strong></p>\n<p>André Stenzel<br>Tonhallenstraße 21<br>47051 Duisburg</p>\n<p>Kontakt:</p>\n<p>E-Mail: a.stenzel92@web.de</p>\n<p><strong>Haftung für Inhalte</strong></p>\n<p>Die Inhalte unserer Seiten wurden mit größter Sorgfalt erstellt. Für die Richtigkeit, Vollständigkeit und Aktualität der Inhalte können wir jedoch keine Gewähr übernehmen. Als Diensteanbieter sind wir gemäß § 7 Abs.1 TMG für eigene Inhalte auf diesen Seiten nach den allgemeinen Gesetzen verantwortlich. Nach §§ 8 bis 10 TMG sind wir als Diensteanbieter jedoch nicht verpflichtet, übermittelte oder gespeicherte fremde Informationen zu überwachen oder nach Umständen zu forschen, die auf eine rechtswidrige Tätigkeit hinweisen. Verpflichtungen zur Entfernung oder Sperrung der Nutzung von Informationen nach den allgemeinen Gesetzen bleiben hiervon unberührt. Eine diesbezügliche Haftung ist jedoch erst ab dem Zeitpunkt der Kenntnis einer konkreten Rechtsverletzung möglich. Bei Bekanntwerden von entsprechenden Rechtsverletzungen werden wir diese Inhalte umgehend entfernen.</p>\n<p><strong>Haftung für Links</strong></p>\n<p>Unser Angebot enthält Links zu externen Webseiten Dritter, auf deren Inhalte wir keinen Einfluss haben. Deshalb können wir für diese fremden Inhalte auch keine Gewähr übernehmen. Für die Inhalte der verlinkten Seiten ist stets der jeweilige Anbieter oder Betreiber der Seiten verantwortlich. Die verlinkten Seiten wurden zum Zeitpunkt der Verlinkung auf mögliche Rechtsverstöße überprüft. Rechtswidrige Inhalte waren zum Zeitpunkt der Verlinkung nicht erkennbar. Eine permanente inhaltliche Kontrolle der verlinkten Seiten ist jedoch ohne konkrete Anhaltspunkte einer Rechtsverletzung nicht zumutbar. Bei Bekanntwerden von Rechtsverletzungen werden wir derartige Links umgehend entfernen.</p>\n<p><strong>Urheberrecht</strong></p>\n<p>Die durch die Seitenbetreiber erstellten Inhalte und Werke auf diesen Seiten unterliegen dem deutschen Urheberrecht. Die Vervielfältigung, Bearbeitung, Verbreitung und jede Art der Verwertung außerhalb der Grenzen des Urheberrechtes bedürfen der schriftlichen Zustimmung des jeweiligen Autors bzw. Erstellers. Downloads und Kopien dieser Seite sind nur für den privaten, nicht kommerziellen Gebrauch gestattet. Soweit die Inhalte auf dieser Seite nicht vom Betreiber erstellt wurden, werden die Urheberrechte Dritter beachtet. Insbesondere werden Inhalte Dritter als solche gekennzeichnet. Sollten Sie trotzdem auf eine Urheberrechtsverletzung aufmerksam werden, bitten wir um einen entsprechenden Hinweis. Bei Bekanntwerden von Rechtsverletzungen werden wir derartige Inhalte umgehend entfernen.</p>\n<p><strong>Datenschutz</strong></p>\n<p>Die Nutzung unserer Webseite ist in der Regel ohne Angabe personenbezogener Daten möglich. Soweit auf unseren Seiten personenbezogene Daten (beispielsweise Name, Anschrift oder eMail-Adressen) erhoben werden, erfolgt dies, soweit möglich, stets auf freiwilliger Basis. Diese Daten werden ohne Ihre ausdrückliche Zustimmung nicht an Dritte weitergegeben.</p>\n<p>Wir weisen darauf hin, dass die Datenübertragung im Internet (z.B. bei der Kommunikation per E-Mail) Sicherheitslücken aufweisen kann. Ein lückenloser Schutz der Daten vor dem Zugriff durch Dritte ist nicht möglich.</p>\n<p>Der Nutzung von im Rahmen der Impressumspflicht veröffentlichten Kontaktdaten durch Dritte zur Übersendung von nicht ausdrücklich angeforderter Werbung und Informationsmaterialien wird hiermit ausdrücklich widersprochen. Die Betreiber der Seiten behalten sich ausdrücklich rechtliche Schritte im Falle der unverlangten Zusendung von Werbeinformationen, etwa durch Spam-Mails, vor.</p>\n<p> </p>\n<p><strong>Datenschutzerklärung für die Nutzung von Facebook-Plugins (Like-Button)</strong></p>\n<p>Auf unseren Seiten sind Plugins des sozialen Netzwerks Facebook, 1601 South California Avenue, Palo Alto, CA 94304, USA integriert. Die Facebook-Plugins erkennen Sie an dem Facebook-Logo oder dem "Like-Button" ("Gefällt mir") auf unserer Seite. Eine Übersicht über die Facebook-Plugins finden Sie hier: <a href="http://developers.facebook.com/docs/plugins/" target="_blank">http://developers.facebook.com/docs/plugins/</a>.<br> Wenn Sie unsere Seiten besuchen, wird über das Plugin eine direkte Verbindung zwischen Ihrem Browser und dem Facebook-Server hergestellt. Facebook erhält dadurch die Information, dass Sie mit Ihrer IP-Adresse unsere Seite besucht haben. Wenn Sie den Facebook "Like-Button" anklicken während Sie in Ihrem Facebook-Account eingeloggt sind, können Sie die Inhalte unserer Seiten auf Ihrem Facebook-Profil verlinken. Dadurch kann Facebook den Besuch unserer Seiten Ihrem Benutzerkonto zuordnen. Wir weisen darauf hin, dass wir als Anbieter der Seiten keine Kenntnis vom Inhalt der übermittelten Daten sowie deren Nutzung durch Facebook erhalten. Weitere Informationen hierzu finden Sie in der Datenschutzerklärung von facebook unter <a href="http://de-de.facebook.com/policy.php" target="_blank"> http://de-de.facebook.com/policy.php</a></p>\n<p>Wenn Sie nicht wünschen, dass Facebook den Besuch unserer Seiten Ihrem Facebook-Nutzerkonto zuordnen kann, loggen Sie sich bitte aus Ihrem Facebook-Benutzerkonto aus.</p>', NULL, NULL, NULL, NULL, 0, 1, 7, 0, 0, NULL, 'Inherit', 'Inherit', 3, 0),
(12, 'ContactPage', '2013-08-22 12:23:58', '2013-08-22 12:34:59', 'kontakt', 'Kontakt', NULL, '<p> </p>\n<p> Habt ihr Fragen, Wünsche oder Anregungen?</p>\n<p> Möchtet ihr uns für eure Convention buchen?</p>\n<p> Oder möchtet ihr sogar selber eine Maid werden?</p>\n<p> Dann seid ihr hier richtig! Schreibt uns euer Anliegen und wir werden euch so schnell wie möglich antworten! :D</p>', NULL, NULL, NULL, NULL, 1, 1, 8, 0, 0, NULL, 'Inherit', 'Inherit', 5, 0),
(13, 'UserDefinedForm', '2013-08-22 12:26:01', '2013-08-22 12:46:49', 'kontakt', 'Kontakt', NULL, '<p>Wenn dir etwas ganz besonders am Herzen liegt, schick uns einfach deine Nachricht :) Ob allgemeine Fragen, Feedback, Verbesserungsvorschläge bezüglich unseres Maidcafes, etc. - wir freuen uns immer auf deine Meinung :D!</p>\n<p>$UserDefinedForm</p>', NULL, NULL, NULL, NULL, 1, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 3, 12),
(14, 'UserDefinedForm', '2013-08-22 12:26:15', '2013-08-22 12:46:23', 'buchen', 'Buchen', NULL, '<p>Bucht das Lucky Chocolate Team jetzt für eure Convention, Firmenfeier oder andere Events!<br>Wir leiten oder sind Teil eures Maid Cafes, können frei in der Bedienung oder Küche einsetzbar sein.<br>Ihr braucht noch Werbestände für eure Convention? Wir kommen gerne bei euch vorbei um zu werben!<br>Auch auf der Bühne sind wir einsetzbar! Wir lernen jedes Jahr einen Maidtanz für die DoKomi, den wir auch bei euch präsentieren können! Andere Ideen? Schreibe in das freie Feld einfach deine Wünsche an uns!<br>Du möchtest bestimmte Maids? Frage nach ob unsere Maids für dein Event frei sind und buche deine Traummaids!<br>Wir bitten darum besonders bei Conventions anzugeben, ob es ein Budget für Fahrtkosten, Eintrittskarten, Übernachtung und Leistung geben wird.<br>Da wir uns selber finanzieren, ist es uns sonst evtl. nicht möglich euch euren Maidwunsch zu erfüllen! &lt;3<br>Liebe Grüße, euer Maidteam<br><br></p>\n<p>$UserDefinedForm</p>', NULL, NULL, NULL, NULL, 1, 1, 2, 0, 0, NULL, 'Inherit', 'Inherit', 3, 12),
(15, 'UserDefinedForm', '2013-08-22 12:26:31', '2013-08-22 12:46:04', 'bewerben', 'Bewerben', NULL, '<p>Du wolltest schon immer mal in einem Maid Cafe arbeiten?<br> Dann bist du bei uns genau richtig!<br><br>Wir bieten Dir:<br>- ein großes, freundliches Cafe auf der Dokomi mit Terasse<br> - ein süßes Team, das zwar etwas chaotisch aber total liebenswert ist<br> - von Zeit zur Zeit Jobangebote für Privatfirmen oder andere Conventions<br> - aktive Mitarbeit im Internet für unser Cafe<br> - Lernseminare, Besprechungsseminare, Fotoshootings und frei Kuchen ;D<br> - ein Wochenendticket für die Dokomi und Vergünstigungen beim Hotel<br> - eine gute Zusammenarbeit mit unserem Host Cafe der Dokomi<br> - die Gelegenheit auf der Bühne und im Cafe vor Publikum zu performen<br> - Zusammenarbeit mit erfahrenen Maids und Gastronomiearbeitern<br> - Spaß, Stress, Schweiß X''D</p>\n<p>Unsere Voraussetzungen: <br>- Du wohnst in Deutschland, vorzugsweise im NRW Bereich <br> - Du bist bereit 2~3x im Jahr zum Seminar oder Fotoshooting nach NRW zu reisen<br> (Unser Hauptstützpunkt liegt im VRR Bereich, Nähe Düsseldorf)<br> - Du bist freundlich, teamfähig und unterhaltsam<br> - Du bist bereit die Maiderstausstattung zu zahlen (ca. 60,00 €)<br> - Du erklärst Dich damit einverstanden, dass du als Maid auf der Dokomi kein <br> Geld als Bezahlung erhälst. Nur bei gebuchten Events ist es möglich bezahlt zu werden<br> - Du bist mindestens 16 Jahre alt<br> - Du hast einen Facebookaccount</p>\n<p>$UserDefinedForm</p>', NULL, NULL, NULL, NULL, 1, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 5, 12);

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
  `ClassName` enum('Page','ErrorPage','cwsFolderGalleryPage','HomePage','ContactPage','Page2','UserDefinedForm','SiteTree','ArticleCategory','ArticleHolder','ArticlePage','Maid','MaidHolder','RedirectorPage','VirtualPage') CHARACTER SET utf8 DEFAULT 'Page',
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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=16 ;

--
-- Daten für Tabelle `sitetree_live`
--

INSERT INTO `sitetree_live` (`ID`, `ClassName`, `Created`, `LastEdited`, `URLSegment`, `Title`, `MenuTitle`, `Content`, `MetaTitle`, `MetaDescription`, `MetaKeywords`, `ExtraMeta`, `ShowInMenus`, `ShowInSearch`, `Sort`, `HasBrokenFile`, `HasBrokenLink`, `ReportClass`, `CanViewType`, `CanEditType`, `Version`, `ParentID`) VALUES
(1, 'HomePage', '2013-08-21 12:48:06', '2013-08-21 12:56:13', 'home', 'Startseite', NULL, '<p>Willkommen bei SilverStripe! Dies ist die Standard-Startseite. Sie können diese Seite bearbeiten, indem Sie <a href="admin/">das CMS</a> öffnen. Sie können außerdem die  <a href="http://doc.silverstripe.com">Entwicker-Dokumentation</a> oder die <a href="http://doc.silverstripe.com/doku.php?id=tutorials">Einführungskurse und Tutorien</a> aufrufen.</p>', NULL, NULL, NULL, NULL, 1, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 2, 0),
(2, 'Page', '2013-08-21 12:48:07', '2013-08-21 12:48:07', 'ueber-uns', 'Über uns', NULL, '<p>Sie können diese Seite mit Ihren eigenen Inhalten füllen, oder sie löschen und Ihre eigenen Seiten erstellen.<br></p>', NULL, NULL, NULL, NULL, 1, 1, 2, 0, 0, NULL, 'Inherit', 'Inherit', 1, 0),
(4, 'ErrorPage', '2013-08-21 12:48:08', '2013-08-21 12:48:08', 'seite-nicht-gefunden', 'Seite nicht gefunden', NULL, '<p>Entschuldigung, möglicherweise versuchen Sie eine Seite zu erreichen die nicht existiert.</p><p>Bitte überprüfen Sie die Schreibweise der URL die Sie versucht haben zu erreichen und versuchen Sie es noch einmal.</p>', NULL, NULL, NULL, NULL, 0, 0, 4, 0, 0, NULL, 'Inherit', 'Inherit', 1, 0),
(5, 'ErrorPage', '2013-08-21 12:48:09', '2013-08-21 12:48:09', 'serverfehler', 'Serverfehler', NULL, '<p>Entschuldigung, bei der Bearbeitung ihrer Anfrage ist ein Problem aufgetreten.</p>', NULL, NULL, NULL, NULL, 0, 0, 5, 0, 0, NULL, 'Inherit', 'Inherit', 1, 0),
(6, 'cwsFolderGalleryPage', '2013-08-21 12:54:59', '2013-08-21 12:55:37', 'bildergallerie', 'Bildergallerie', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 6, 0, 0, NULL, 'Inherit', 'Inherit', 2, 0),
(9, 'cwsFolderGalleryPage', '2013-08-21 13:15:23', '2013-08-21 13:15:44', 'neue-bildergalerie', 'Neue Bildergalerie', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 2, 0, 0, NULL, 'Inherit', 'Inherit', 1, 6),
(11, 'Page2', '2013-08-22 12:20:36', '2013-08-22 12:23:18', 'impressum', 'Impressum', NULL, '<p><strong>Angabe nach § 5 TMG und § 55 RStV:</strong></p>\n<p>André Stenzel<br>Tonhallenstraße 21<br>47051 Duisburg</p>\n<p>Kontakt:</p>\n<p>E-Mail: a.stenzel92@web.de</p>\n<p><strong>Haftung für Inhalte</strong></p>\n<p>Die Inhalte unserer Seiten wurden mit größter Sorgfalt erstellt. Für die Richtigkeit, Vollständigkeit und Aktualität der Inhalte können wir jedoch keine Gewähr übernehmen. Als Diensteanbieter sind wir gemäß § 7 Abs.1 TMG für eigene Inhalte auf diesen Seiten nach den allgemeinen Gesetzen verantwortlich. Nach §§ 8 bis 10 TMG sind wir als Diensteanbieter jedoch nicht verpflichtet, übermittelte oder gespeicherte fremde Informationen zu überwachen oder nach Umständen zu forschen, die auf eine rechtswidrige Tätigkeit hinweisen. Verpflichtungen zur Entfernung oder Sperrung der Nutzung von Informationen nach den allgemeinen Gesetzen bleiben hiervon unberührt. Eine diesbezügliche Haftung ist jedoch erst ab dem Zeitpunkt der Kenntnis einer konkreten Rechtsverletzung möglich. Bei Bekanntwerden von entsprechenden Rechtsverletzungen werden wir diese Inhalte umgehend entfernen.</p>\n<p><strong>Haftung für Links</strong></p>\n<p>Unser Angebot enthält Links zu externen Webseiten Dritter, auf deren Inhalte wir keinen Einfluss haben. Deshalb können wir für diese fremden Inhalte auch keine Gewähr übernehmen. Für die Inhalte der verlinkten Seiten ist stets der jeweilige Anbieter oder Betreiber der Seiten verantwortlich. Die verlinkten Seiten wurden zum Zeitpunkt der Verlinkung auf mögliche Rechtsverstöße überprüft. Rechtswidrige Inhalte waren zum Zeitpunkt der Verlinkung nicht erkennbar. Eine permanente inhaltliche Kontrolle der verlinkten Seiten ist jedoch ohne konkrete Anhaltspunkte einer Rechtsverletzung nicht zumutbar. Bei Bekanntwerden von Rechtsverletzungen werden wir derartige Links umgehend entfernen.</p>\n<p><strong>Urheberrecht</strong></p>\n<p>Die durch die Seitenbetreiber erstellten Inhalte und Werke auf diesen Seiten unterliegen dem deutschen Urheberrecht. Die Vervielfältigung, Bearbeitung, Verbreitung und jede Art der Verwertung außerhalb der Grenzen des Urheberrechtes bedürfen der schriftlichen Zustimmung des jeweiligen Autors bzw. Erstellers. Downloads und Kopien dieser Seite sind nur für den privaten, nicht kommerziellen Gebrauch gestattet. Soweit die Inhalte auf dieser Seite nicht vom Betreiber erstellt wurden, werden die Urheberrechte Dritter beachtet. Insbesondere werden Inhalte Dritter als solche gekennzeichnet. Sollten Sie trotzdem auf eine Urheberrechtsverletzung aufmerksam werden, bitten wir um einen entsprechenden Hinweis. Bei Bekanntwerden von Rechtsverletzungen werden wir derartige Inhalte umgehend entfernen.</p>\n<p><strong>Datenschutz</strong></p>\n<p>Die Nutzung unserer Webseite ist in der Regel ohne Angabe personenbezogener Daten möglich. Soweit auf unseren Seiten personenbezogene Daten (beispielsweise Name, Anschrift oder eMail-Adressen) erhoben werden, erfolgt dies, soweit möglich, stets auf freiwilliger Basis. Diese Daten werden ohne Ihre ausdrückliche Zustimmung nicht an Dritte weitergegeben.</p>\n<p>Wir weisen darauf hin, dass die Datenübertragung im Internet (z.B. bei der Kommunikation per E-Mail) Sicherheitslücken aufweisen kann. Ein lückenloser Schutz der Daten vor dem Zugriff durch Dritte ist nicht möglich.</p>\n<p>Der Nutzung von im Rahmen der Impressumspflicht veröffentlichten Kontaktdaten durch Dritte zur Übersendung von nicht ausdrücklich angeforderter Werbung und Informationsmaterialien wird hiermit ausdrücklich widersprochen. Die Betreiber der Seiten behalten sich ausdrücklich rechtliche Schritte im Falle der unverlangten Zusendung von Werbeinformationen, etwa durch Spam-Mails, vor.</p>\n<p> </p>\n<p><strong>Datenschutzerklärung für die Nutzung von Facebook-Plugins (Like-Button)</strong></p>\n<p>Auf unseren Seiten sind Plugins des sozialen Netzwerks Facebook, 1601 South California Avenue, Palo Alto, CA 94304, USA integriert. Die Facebook-Plugins erkennen Sie an dem Facebook-Logo oder dem "Like-Button" ("Gefällt mir") auf unserer Seite. Eine Übersicht über die Facebook-Plugins finden Sie hier: <a href="http://developers.facebook.com/docs/plugins/" target="_blank">http://developers.facebook.com/docs/plugins/</a>.<br> Wenn Sie unsere Seiten besuchen, wird über das Plugin eine direkte Verbindung zwischen Ihrem Browser und dem Facebook-Server hergestellt. Facebook erhält dadurch die Information, dass Sie mit Ihrer IP-Adresse unsere Seite besucht haben. Wenn Sie den Facebook "Like-Button" anklicken während Sie in Ihrem Facebook-Account eingeloggt sind, können Sie die Inhalte unserer Seiten auf Ihrem Facebook-Profil verlinken. Dadurch kann Facebook den Besuch unserer Seiten Ihrem Benutzerkonto zuordnen. Wir weisen darauf hin, dass wir als Anbieter der Seiten keine Kenntnis vom Inhalt der übermittelten Daten sowie deren Nutzung durch Facebook erhalten. Weitere Informationen hierzu finden Sie in der Datenschutzerklärung von facebook unter <a href="http://de-de.facebook.com/policy.php" target="_blank"> http://de-de.facebook.com/policy.php</a></p>\n<p>Wenn Sie nicht wünschen, dass Facebook den Besuch unserer Seiten Ihrem Facebook-Nutzerkonto zuordnen kann, loggen Sie sich bitte aus Ihrem Facebook-Benutzerkonto aus.</p>', NULL, NULL, NULL, NULL, 0, 1, 7, 0, 0, NULL, 'Inherit', 'Inherit', 3, 0),
(12, 'ContactPage', '2013-08-22 12:23:58', '2013-08-22 12:34:59', 'kontakt', 'Kontakt', NULL, '<p> </p>\n<p> Habt ihr Fragen, Wünsche oder Anregungen?</p>\n<p> Möchtet ihr uns für eure Convention buchen?</p>\n<p> Oder möchtet ihr sogar selber eine Maid werden?</p>\n<p> Dann seid ihr hier richtig! Schreibt uns euer Anliegen und wir werden euch so schnell wie möglich antworten! :D</p>', NULL, NULL, NULL, NULL, 1, 1, 8, 0, 0, NULL, 'Inherit', 'Inherit', 5, 0),
(13, 'UserDefinedForm', '2013-08-22 12:26:01', '2013-08-22 12:46:49', 'kontakt', 'Kontakt', NULL, '<p>Wenn dir etwas ganz besonders am Herzen liegt, schick uns einfach deine Nachricht :) Ob allgemeine Fragen, Feedback, Verbesserungsvorschläge bezüglich unseres Maidcafes, etc. - wir freuen uns immer auf deine Meinung :D!</p>\n<p>$UserDefinedForm</p>', NULL, NULL, NULL, NULL, 1, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 3, 12),
(14, 'UserDefinedForm', '2013-08-22 12:26:15', '2013-08-22 12:46:25', 'buchen', 'Buchen', NULL, '<p>Bucht das Lucky Chocolate Team jetzt für eure Convention, Firmenfeier oder andere Events!<br>Wir leiten oder sind Teil eures Maid Cafes, können frei in der Bedienung oder Küche einsetzbar sein.<br>Ihr braucht noch Werbestände für eure Convention? Wir kommen gerne bei euch vorbei um zu werben!<br>Auch auf der Bühne sind wir einsetzbar! Wir lernen jedes Jahr einen Maidtanz für die DoKomi, den wir auch bei euch präsentieren können! Andere Ideen? Schreibe in das freie Feld einfach deine Wünsche an uns!<br>Du möchtest bestimmte Maids? Frage nach ob unsere Maids für dein Event frei sind und buche deine Traummaids!<br>Wir bitten darum besonders bei Conventions anzugeben, ob es ein Budget für Fahrtkosten, Eintrittskarten, Übernachtung und Leistung geben wird.<br>Da wir uns selber finanzieren, ist es uns sonst evtl. nicht möglich euch euren Maidwunsch zu erfüllen! &lt;3<br>Liebe Grüße, euer Maidteam<br><br></p>\n<p>$UserDefinedForm</p>', NULL, NULL, NULL, NULL, 1, 1, 2, 0, 0, NULL, 'Inherit', 'Inherit', 3, 12),
(15, 'UserDefinedForm', '2013-08-22 12:26:31', '2013-08-22 12:46:06', 'bewerben', 'Bewerben', NULL, '<p>Du wolltest schon immer mal in einem Maid Cafe arbeiten?<br> Dann bist du bei uns genau richtig!<br><br>Wir bieten Dir:<br>- ein großes, freundliches Cafe auf der Dokomi mit Terasse<br> - ein süßes Team, das zwar etwas chaotisch aber total liebenswert ist<br> - von Zeit zur Zeit Jobangebote für Privatfirmen oder andere Conventions<br> - aktive Mitarbeit im Internet für unser Cafe<br> - Lernseminare, Besprechungsseminare, Fotoshootings und frei Kuchen ;D<br> - ein Wochenendticket für die Dokomi und Vergünstigungen beim Hotel<br> - eine gute Zusammenarbeit mit unserem Host Cafe der Dokomi<br> - die Gelegenheit auf der Bühne und im Cafe vor Publikum zu performen<br> - Zusammenarbeit mit erfahrenen Maids und Gastronomiearbeitern<br> - Spaß, Stress, Schweiß X''D</p>\n<p>Unsere Voraussetzungen: <br>- Du wohnst in Deutschland, vorzugsweise im NRW Bereich <br> - Du bist bereit 2~3x im Jahr zum Seminar oder Fotoshooting nach NRW zu reisen<br> (Unser Hauptstützpunkt liegt im VRR Bereich, Nähe Düsseldorf)<br> - Du bist freundlich, teamfähig und unterhaltsam<br> - Du bist bereit die Maiderstausstattung zu zahlen (ca. 60,00 €)<br> - Du erklärst Dich damit einverstanden, dass du als Maid auf der Dokomi kein <br> Geld als Bezahlung erhälst. Nur bei gebuchten Events ist es möglich bezahlt zu werden<br> - Du bist mindestens 16 Jahre alt<br> - Du hast einen Facebookaccount</p>\n<p>$UserDefinedForm</p>', NULL, NULL, NULL, NULL, 1, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 5, 12);

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
  `ClassName` enum('Page','ErrorPage','cwsFolderGalleryPage','HomePage','ContactPage','Page2','UserDefinedForm','SiteTree','ArticleCategory','ArticleHolder','ArticlePage','Maid','MaidHolder','RedirectorPage','VirtualPage') CHARACTER SET utf8 DEFAULT 'Page',
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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=35 ;

--
-- Daten für Tabelle `sitetree_versions`
--

INSERT INTO `sitetree_versions` (`ID`, `RecordID`, `Version`, `WasPublished`, `AuthorID`, `PublisherID`, `ClassName`, `Created`, `LastEdited`, `URLSegment`, `Title`, `MenuTitle`, `Content`, `MetaTitle`, `MetaDescription`, `MetaKeywords`, `ExtraMeta`, `ShowInMenus`, `ShowInSearch`, `Sort`, `HasBrokenFile`, `HasBrokenLink`, `ReportClass`, `CanViewType`, `CanEditType`, `ParentID`) VALUES
(1, 1, 1, 1, 0, 0, 'Page', '2013-08-21 12:48:06', '2013-08-21 12:48:06', 'home', 'Startseite', NULL, '<p>Willkommen bei SilverStripe! Dies ist die Standard-Startseite. Sie können diese Seite bearbeiten, indem Sie <a href="admin/">das CMS</a> öffnen. Sie können außerdem die  <a href="http://doc.silverstripe.com">Entwicker-Dokumentation</a> oder die <a href="http://doc.silverstripe.com/doku.php?id=tutorials">Einführungskurse und Tutorien</a> aufrufen.</p>', NULL, NULL, NULL, NULL, 1, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(2, 2, 1, 1, 0, 0, 'Page', '2013-08-21 12:48:07', '2013-08-21 12:48:07', 'ueber-uns', 'Über uns', NULL, '<p>Sie können diese Seite mit Ihren eigenen Inhalten füllen, oder sie löschen und Ihre eigenen Seiten erstellen.<br></p>', NULL, NULL, NULL, NULL, 1, 1, 2, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(3, 3, 1, 1, 0, 0, 'Page', '2013-08-21 12:48:08', '2013-08-21 12:48:08', 'kontakt', 'Kontakt', NULL, '<p>Sie können diese Seite mit Ihren eigenen Inhalten füllen, oder sie löschen und Ihre eigenen Seiten erstellen.<br></p>', NULL, NULL, NULL, NULL, 1, 1, 3, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(4, 4, 1, 1, 0, 0, 'ErrorPage', '2013-08-21 12:48:08', '2013-08-21 12:48:08', 'seite-nicht-gefunden', 'Seite nicht gefunden', NULL, '<p>Entschuldigung, möglicherweise versuchen Sie eine Seite zu erreichen die nicht existiert.</p><p>Bitte überprüfen Sie die Schreibweise der URL die Sie versucht haben zu erreichen und versuchen Sie es noch einmal.</p>', NULL, NULL, NULL, NULL, 0, 0, 4, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(5, 5, 1, 1, 0, 0, 'ErrorPage', '2013-08-21 12:48:09', '2013-08-21 12:48:09', 'serverfehler', 'Serverfehler', NULL, '<p>Entschuldigung, bei der Bearbeitung ihrer Anfrage ist ein Problem aufgetreten.</p>', NULL, NULL, NULL, NULL, 0, 0, 5, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(6, 6, 1, 0, 1, 0, 'cwsFolderGalleryPage', '2013-08-21 12:54:59', '2013-08-21 12:54:59', 'neue-bildergalerie', 'Neue Bildergalerie', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 6, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(7, 6, 2, 1, 1, 1, 'cwsFolderGalleryPage', '2013-08-21 12:54:59', '2013-08-21 12:55:37', 'bildergallerie', 'Bildergallerie', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 6, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(8, 1, 2, 1, 1, 1, 'HomePage', '2013-08-21 12:48:06', '2013-08-21 12:56:13', 'home', 'Startseite', NULL, '<p>Willkommen bei SilverStripe! Dies ist die Standard-Startseite. Sie können diese Seite bearbeiten, indem Sie <a href="admin/">das CMS</a> öffnen. Sie können außerdem die  <a href="http://doc.silverstripe.com">Entwicker-Dokumentation</a> oder die <a href="http://doc.silverstripe.com/doku.php?id=tutorials">Einführungskurse und Tutorien</a> aufrufen.</p>', NULL, NULL, NULL, NULL, 1, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(9, 7, 1, 0, 1, 0, 'cwsFolderGalleryPage', '2013-08-21 12:57:40', '2013-08-21 12:57:40', 'neue-bildergalerie', 'Neue Bildergalerie', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 6),
(10, 7, 2, 0, 1, 0, 'cwsFolderGalleryPage', '2013-08-21 12:57:40', '2013-08-21 12:58:08', 'maids', 'Maids', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 6),
(11, 8, 1, 1, 1, 1, 'cwsFolderGalleryPage', '2013-08-21 13:00:54', '2013-08-21 13:00:54', 'neue-bildergalerie', 'Neue Bildergalerie', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 7),
(12, 9, 1, 1, 1, 1, 'cwsFolderGalleryPage', '2013-08-21 13:15:23', '2013-08-21 13:15:23', 'neue-bildergalerie', 'Neue Bildergalerie', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 2, 0, 0, NULL, 'Inherit', 'Inherit', 6),
(13, 9, 2, 0, 1, 0, 'cwsFolderGalleryPage', '2013-08-21 13:15:23', '2013-08-21 13:16:06', 'neue-bildergalerie', 'Neue Bildergalerie', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 2, 0, 0, NULL, 'Inherit', 'Inherit', 6),
(14, 10, 1, 0, 1, 0, 'cwsFolderGalleryPage', '2013-08-21 13:16:37', '2013-08-21 13:16:37', 'neue-bildergalerie-2', 'Neue Bildergalerie', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 3, 0, 0, NULL, 'Inherit', 'Inherit', 6),
(15, 10, 2, 0, 1, 0, 'cwsFolderGalleryPage', '2013-08-21 13:16:37', '2013-08-21 13:17:07', 'neue-bildergalerie-2', 'Neue Bildergalerie', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 3, 0, 0, NULL, 'Inherit', 'Inherit', 6),
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
(34, 13, 3, 1, 1, 1, 'UserDefinedForm', '2013-08-22 12:26:01', '2013-08-22 12:46:49', 'kontakt', 'Kontakt', NULL, '<p>Wenn dir etwas ganz besonders am Herzen liegt, schick uns einfach deine Nachricht :) Ob allgemeine Fragen, Feedback, Verbesserungsvorschläge bezüglich unseres Maidcafes, etc. - wir freuen uns immer auf deine Meinung :D!</p>\n<p>$UserDefinedForm</p>', NULL, NULL, NULL, NULL, 1, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 12);

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=43 ;

--
-- Daten für Tabelle `submittedfilefield`
--

INSERT INTO `submittedfilefield` (`ID`, `UploadedFileID`) VALUES
(42, 0),
(13, 4);

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=37 ;

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
(36, 'SubmittedFormField', '2013-08-11 20:16:17', '2013-08-11 20:16:17', 'EditableTextField4', 'André Stenzel', 'Realname', 8);

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
(15, 'Bewerben', '<p>Thanks, we''ve received your submission.</p>', 0, 0, 1, 0);

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Daten für Tabelle `userdefinedform_emailrecipient`
--

INSERT INTO `userdefinedform_emailrecipient` (`ID`, `ClassName`, `Created`, `LastEdited`, `EmailAddress`, `EmailSubject`, `EmailFrom`, `EmailReplyTo`, `EmailBody`, `SendPlain`, `HideFormData`, `FormID`, `SendEmailFromFieldID`, `SendEmailToFieldID`) VALUES
(1, 'UserDefinedForm_EmailRecipient', '2013-08-11 16:05:04', '2013-08-11 16:27:19', 'a.stentel@webschmitz.de', 'Kontakt', NULL, NULL, NULL, 0, 0, 13, 2, 0),
(2, 'UserDefinedForm_EmailRecipient', '2013-08-11 16:11:59', '2013-08-11 16:12:06', 'a.stenzel@webschmitz.de', NULL, NULL, NULL, NULL, 0, 0, 15, 8, 0),
(3, 'UserDefinedForm_EmailRecipient', '2013-08-11 16:19:47', '2013-08-11 16:19:55', 'a.stenzel@webschmitz.de', 'Buchen', NULL, NULL, NULL, 0, 0, 14, 18, 0);

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
(15, 'Bewerben', '<p>Thanks, we''ve received your submission.</p>', 0, 0, 1, 0);

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=12 ;

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
(11, 13, 3, NULL, '<p>Thanks, we''ve received your submission.</p>', 0, 0, 1, 0);

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
-- Tabellenstruktur für Tabelle `_obsolete_page`
--

CREATE TABLE IF NOT EXISTS `_obsolete_page` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
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
  `notRecursive` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Daten für Tabelle `_obsolete_page`
--

INSERT INTO `_obsolete_page` (`ID`, `maxskitter_interval`, `maxskitter_animation`, `maxskitter_numbers`, `maxskitter_numbers_align`, `maxskitter_navigation`, `maxskitter_dots`, `maxskitter_thumbs`, `maxskitter_hideTools`, `maxskitter_label`, `maxskitter_animateNumberOut`, `maxskitter_animateNumberOver`, `maxskitter_animateNumberActive`, `maxskitter_controls`, `maxskitter_controls_position`, `maxskitter_easing_default`, `maxskitter_enable_navigation_keys`, `maxskitter_focus`, `maxskitter_focus_position`, `maxskitter_fullscreen`, `maxskitter_mouseOutButton`, `maxskitter_mouseOverButton`, `maxskitter_onLoad`, `maxskitter_preview`, `maxskitter_stop_over`, `maxskitter_show_randomly`, `maxskitter_velocity`, `maxskitter_width_label`, `maxskitter_with_animations`, `notRecursive`) VALUES
(1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(8, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `_obsolete_page_live`
--

CREATE TABLE IF NOT EXISTS `_obsolete_page_live` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
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
  `notRecursive` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Daten für Tabelle `_obsolete_page_live`
--

INSERT INTO `_obsolete_page_live` (`ID`, `maxskitter_interval`, `maxskitter_animation`, `maxskitter_numbers`, `maxskitter_numbers_align`, `maxskitter_navigation`, `maxskitter_dots`, `maxskitter_thumbs`, `maxskitter_hideTools`, `maxskitter_label`, `maxskitter_animateNumberOut`, `maxskitter_animateNumberOver`, `maxskitter_animateNumberActive`, `maxskitter_controls`, `maxskitter_controls_position`, `maxskitter_easing_default`, `maxskitter_enable_navigation_keys`, `maxskitter_focus`, `maxskitter_focus_position`, `maxskitter_fullscreen`, `maxskitter_mouseOutButton`, `maxskitter_mouseOverButton`, `maxskitter_onLoad`, `maxskitter_preview`, `maxskitter_stop_over`, `maxskitter_show_randomly`, `maxskitter_velocity`, `maxskitter_width_label`, `maxskitter_with_animations`, `notRecursive`) VALUES
(1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `_obsolete_page_versions`
--

CREATE TABLE IF NOT EXISTS `_obsolete_page_versions` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `RecordID` int(11) NOT NULL DEFAULT '0',
  `Version` int(11) NOT NULL DEFAULT '0',
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
  `notRecursive` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  UNIQUE KEY `RecordID_Version` (`RecordID`,`Version`),
  KEY `RecordID` (`RecordID`),
  KEY `Version` (`Version`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=12 ;

--
-- Daten für Tabelle `_obsolete_page_versions`
--

INSERT INTO `_obsolete_page_versions` (`ID`, `RecordID`, `Version`, `maxskitter_interval`, `maxskitter_animation`, `maxskitter_numbers`, `maxskitter_numbers_align`, `maxskitter_navigation`, `maxskitter_dots`, `maxskitter_thumbs`, `maxskitter_hideTools`, `maxskitter_label`, `maxskitter_animateNumberOut`, `maxskitter_animateNumberOver`, `maxskitter_animateNumberActive`, `maxskitter_controls`, `maxskitter_controls_position`, `maxskitter_easing_default`, `maxskitter_enable_navigation_keys`, `maxskitter_focus`, `maxskitter_focus_position`, `maxskitter_fullscreen`, `maxskitter_mouseOutButton`, `maxskitter_mouseOverButton`, `maxskitter_onLoad`, `maxskitter_preview`, `maxskitter_stop_over`, `maxskitter_show_randomly`, `maxskitter_velocity`, `maxskitter_width_label`, `maxskitter_with_animations`, `notRecursive`) VALUES
(1, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(2, 2, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(3, 3, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(4, 4, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(5, 5, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(6, 6, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(7, 6, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(8, 1, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(9, 7, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(10, 7, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(11, 8, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
