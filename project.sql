-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 15, 2017 at 04:35 AM
-- Server version: 10.1.25-MariaDB
-- PHP Version: 5.6.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `project`
--

-- --------------------------------------------------------

--
-- Table structure for table `aodau`
--

CREATE TABLE `aodau` (
  `MSCLB` varchar(20) NOT NULL,
  `AOSANNHA` char(50) NOT NULL,
  `AOSANKHACH` char(50) NOT NULL,
  `AOTHUBA` char(50) NOT NULL,
  `GHICHU` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `aodau`
--

INSERT INTO `aodau` (`MSCLB`, `AOSANNHA`, `AOSANKHACH`, `AOTHUBA`, `GHICHU`) VALUES
('ARS', 'arsHome.png', 'arsAway.png', 'arsThird.png', ''),
('CHE', 'cheHome.png', 'cheAway.png', 'cheThird.png', ''),
('LIV', 'livHome.png', 'livAway.png', 'livThird.png', ''),
('MNC', 'mncHome.png', 'mncAway.png', 'mncThird.png', ''),
('MNU', 'mnuHome.png', 'mnuAway.png', 'mnuThird.png', ''),
('TOT', 'totHome.png', 'totAway.png', 'totThird.png', '');

-- --------------------------------------------------------

--
-- Table structure for table `bhl`
--

CREATE TABLE `bhl` (
  `STT` int(11) DEFAULT NULL,
  `MSHL` varchar(20) NOT NULL,
  `MSCLB` varchar(20) NOT NULL,
  `TENHL` varchar(100) DEFAULT NULL,
  `NGAYSINH` date DEFAULT NULL,
  `GIOITINH` varchar(20) DEFAULT NULL,
  `VAITRO` varchar(100) DEFAULT NULL,
  `QUOCTICH` varchar(50) DEFAULT NULL,
  `HINHANH` varchar(50) NOT NULL,
  `GHICHU` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bhl`
--

INSERT INTO `bhl` (`STT`, `MSHL`, `MSCLB`, `TENHL`, `NGAYSINH`, `GIOITINH`, `VAITRO`, `QUOCTICH`, `HINHANH`, `GHICHU`) VALUES
(5, 'AC', 'CHE', 'Antonio Conte', '1969-07-31', 'Male', 'Manager', 'Italy', 'AC.png', NULL),
(11, 'AK', 'LIV', 'Andreas Kornmayer', '1974-09-21', 'Male', 'Fitness Coach', 'Germany', 'AK.png', NULL),
(12, 'AW', 'ARS', 'Arsene Wenger', '1949-10-22', 'Male', 'Manager', 'France', 'AW.png', NULL),
(17, 'BK', 'MNC', 'Brian Kidd', '1949-05-29', 'Male', 'Assistant Manager', 'England', 'BK.png', NULL),
(6, 'CC', 'CHE', 'Carlo Cudicini', '1973-09-06', 'Male', 'Assistant Manager', 'Italy', 'CC.png', NULL),
(3, 'CL', 'MNU', 'Carlos Lalín', '1970-08-04', 'Male', 'Physical Coach', 'Venezuela', 'CL.png', NULL),
(7, 'EN', 'CHE', 'Eddie Newton', '1971-12-13', 'Male', 'Loan Technical Coach', 'England', 'EN.png', NULL),
(14, 'GO', 'ARS', 'Gary O\'Driscoll', '1970-07-17', 'Male', 'Club Doctor', 'Ireland', 'GO.png', NULL),
(15, 'GP', 'ARS', 'Gerry Peyton', '1956-05-20', 'Male', 'Goalkeeping coach', 'England', 'GP.png', NULL),
(8, 'JK', 'LIV', 'Jurgen Klopp', '1967-06-16', 'Male', 'Manager', 'Germany', 'JK.png', NULL),
(4, 'JL', 'MNU', 'Jim Lawlor', '1963-06-05', 'Male', 'Chief scout', 'Ireland', 'JL.png', NULL),
(1, 'JM', 'MNU', 'Jose Mourinho', '1963-01-26', 'Male', 'Manager', 'Portugal', 'JM.png', NULL),
(20, 'JP', 'TOT', 'Jesus Perez', '1971-10-05', 'Male', 'Assistant Manager', 'Spain', 'JP.png', NULL),
(21, 'MD', 'TOT', 'Miguel D\'Agostino', '1972-01-01', 'Male', 'First team coach', 'Argentina', 'MD.png', NULL),
(10, 'MN', 'LIV', 'Mona Nemmer', NULL, 'Female', 'Head of Nutrition', 'Germany', 'MN.png', NULL),
(19, 'MP', 'TOT', 'Mauricio Pochettino', '1972-03-02', 'Male', 'Manager', 'Argentina', 'MP.png', NULL),
(16, 'PG', 'MNC', 'Pep Guardiola', '1971-01-18', 'Male', 'Manager', 'Spain', 'PG.png', NULL),
(2, 'RF', 'MNU', 'Rui Faria', '1975-06-14', 'Male', 'Assistant Manager', 'Portugal', 'RF.png', NULL),
(13, 'SB', 'ARS', 'Steve Bould', '1962-11-16', 'Male', 'Assistant Manager', 'England', 'SB.png', NULL),
(22, 'TJ', 'TOT', 'Toni Jiménez', '1970-10-12', 'Male', 'Goalkeeping coach', 'Spain', 'TJ.png', NULL),
(18, 'XM', 'MNC', 'Xabier Mancisidor', '1970-05-24', 'Male', 'Goalkeeping coach', 'Spain', 'XM.png', NULL),
(9, 'ZB', 'LIV', 'Zeljko Buva?', '1961-09-13', 'Male', 'Assistant Manager', 'Bosnia and Herzegovina', 'ZB.png', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cauthu`
--

CREATE TABLE `cauthu` (
  `STT` int(11) DEFAULT NULL,
  `MSCAUTHU` varchar(20) NOT NULL,
  `TENCAUTHU` varchar(100) NOT NULL,
  `MSCLB` varchar(20) DEFAULT NULL,
  `VITRI` varchar(100) DEFAULT NULL,
  `SOAO` int(11) DEFAULT NULL,
  `NGAYSINH` date DEFAULT NULL,
  `QUOCTICH` varchar(50) DEFAULT NULL,
  `CHIEUCAO` varchar(20) DEFAULT NULL,
  `HINHANH` varchar(50) NOT NULL,
  `GHICHU` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cauthu`
--

INSERT INTO `cauthu` (`STT`, `MSCAUTHU`, `TENCAUTHU`, `MSCLB`, `VITRI`, `SOAO`, `NGAYSINH`, `QUOCTICH`, `CHIEUCAO`, `HINHANH`, `GHICHU`) VALUES
(66, 'AL9', 'Alexandre Lacazette', 'ARS', 'CF', 9, '1991-05-28', 'France', '175 cm', 'AL9.png', NULL),
(10, 'AM11', 'Anthony Martial', 'MNU', 'LWF', 11, '1995-12-05', 'France', '184 cm', 'AM11.png', NULL),
(49, 'AM18', 'Alberto Moreno', 'LIV', 'LB', 18, '1992-07-05', 'Spain', '171 cm', 'AM18.png', NULL),
(32, 'AM9', 'Alvaro Morata\r\n', 'CHE', 'CF', 9, '1992-10-23', 'Spain', '189 cm', 'AM9.png', NULL),
(63, 'AR8', 'Aaron Ramsey', 'ARS', 'CMF', 8, '1990-12-26', 'Wales', '178 cm', 'AR8.png', NULL),
(64, 'AS7', 'Alexis Sanchez', 'ARS', 'LWF', 7, '1988-12-19', 'Chile', '169 cm', 'AS7.png', NULL),
(5, 'AV25', 'Antonio Valencia', 'MNU', 'RB', 25, '1985-08-04', 'Ecuador', '181 cm', 'AV25.png', NULL),
(4, 'AY18', 'Ashley Young', 'MNU', 'LB', 18, '1985-07-09', 'England', '175 cm', 'AY18.png', NULL),
(15, 'BM22', 'Benjamin Mendy', 'MNC', 'LB', 22, '1994-07-17', 'France', '185 cm', 'BM22.png', NULL),
(26, 'CA28', 'Cesar Azpilicueta', 'CHE', 'CB', 28, '1989-08-28', 'Spain', '178 cm', 'CA28.png', NULL),
(42, 'CE23', 'Christian Eriksen', 'TOT', 'AMF', 23, '1992-03-14', 'Denmark', '182 cm', 'CE23.png', NULL),
(16, 'D3', 'Danilo', 'MNC', 'RB', 3, '1991-07-15', 'Brazil', '184 cm', 'D3.png', NULL),
(41, 'DA20', 'Dele Alli', 'TOT', 'AMF', 20, '1996-04-11', 'England', '188 cm', 'DA20.png', NULL),
(1, 'DG1', 'David de Gea', 'MNU', 'GK', 1, '1990-11-07', 'Spain', '193 cm', 'DG1.png', NULL),
(24, 'DL30', 'David Luiz\r\n', 'CHE', 'CB', 30, '1987-04-22', 'Brazil', '189 cm', 'DL30.png', NULL),
(46, 'DL6', 'Dejan Lovren', 'LIV', 'CB', 6, '1989-07-05', 'Croatia', '188 cm', 'DL6.png', NULL),
(37, 'DR3', 'Danny Rose', 'TOT', 'LB', 3, '1990-07-02', 'England', '174 cm', 'DR3.png', NULL),
(18, 'DS21', 'David Silva', 'MNC', 'AMF', 21, '1986-01-08', 'Spain', '173 cm', 'DS21.png', NULL),
(3, 'EB3', 'Eric Bailly', 'MNU', 'CB', 3, '1994-04-12', 'Ivory Coast', '187 cm', 'EB3.png', NULL),
(52, 'EC23', 'Emre Can', 'LIV', 'CMF', 23, '1994-01-12', 'Germany', '184 cm', 'EC23.png', NULL),
(40, 'ED15', 'Eric Dier\r\n', 'TOT', 'DMF', 15, '1994-01-15', 'England', '188 cm', 'ED15.png', NULL),
(31, 'EH10', 'Eden Hazard', 'CHE', 'LWF', 10, '1991-01-07', 'Belgium', '172 cm', 'EH10.png', NULL),
(12, 'EM31', 'Ederson Moraes', 'MNC', 'GK', 31, '1993-08-17', 'Brazil', '188 cm', 'EM31.png', NULL),
(20, 'F25', 'Fernandinho\r\n', 'MNC', 'DMF', 25, '1985-05-04', 'Brazil', '179 cm', 'F25.png', NULL),
(25, 'GC24', 'Gary Cahill', 'CHE', 'CB', 24, '1985-12-19', 'England', '193 cm', 'GC24.png', NULL),
(50, 'GW5', 'Georginio Wijnaldum', 'LIV', 'CMF', 5, '1990-11-11', 'Netherlands', '175 cm', 'GW5.png', NULL),
(60, 'GX29', 'Granit Xhaka', 'ARS', 'DMF', 29, '1992-09-27', 'Switzerland', '185 cm', 'GX29.png', NULL),
(62, 'HB24', 'Hector Bellerin', 'ARS', 'RB', 24, '1995-03-19', 'Spain', '178 cm', 'HB24.png', NULL),
(44, 'HK10', 'Harry Kane', 'TOT', 'CF', 10, '1993-07-28', 'England', '188 cm', 'HK10.png', NULL),
(34, 'HL1', 'Hugo Lloris', 'TOT', 'GK', 1, '1986-12-26', 'France', '188 cm', 'HL1.png', NULL),
(9, 'HM22', 'Henrikh Mkhitaryan', 'MNU', 'RWF', 22, '1989-01-21', 'Armenia', '178 cm', 'HM22.png', NULL),
(51, 'JH14', 'Jordan Henderson', 'LIV', 'CMF', 14, '1990-06-17', 'England', '182 cm', 'JH14.png', NULL),
(47, 'JM32', 'Joel Matip\r\n', 'LIV', 'CB', 32, '1991-08-08', 'Germany', '195 cm', 'JM32.png', NULL),
(8, 'JM8', 'Juan Mata', 'MNU', 'CMF', 8, '1988-04-28', 'Spain', '170 cm', 'JM8.png', NULL),
(13, 'JS5', 'John Stones', 'MNC', 'CB', 5, '1994-05-28', 'England', '188 cm', 'JS5.png', NULL),
(36, 'JV5', 'Jan Vertonghen', 'TOT', 'CB', 5, '1987-04-24', 'Belgium', '189 cm', 'JV5.png', NULL),
(17, 'KDB17', 'Kevin De Bruyne', 'MNC', 'CMF', 17, '1991-06-28', 'Belgium', '181 cm', 'KDB17.png', NULL),
(38, 'KT2', 'Kieran Trippier', 'TOT', 'RB', 2, '1990-09-19', 'England', '178 cm', 'KT2.png', NULL),
(57, 'LK6', 'Laurent Koscielny', 'ARS', 'CB', 6, '1985-09-10', 'France', '186 cm', 'LK6.png', NULL),
(22, 'LS19', 'Leroy Sane\r\n', 'MNC', 'LWF', 19, '1996-01-11', 'Germany', '184 cm', 'LS19.png', NULL),
(30, 'MA3', 'Marcos Alonso', 'CHE', 'LMF', 3, '1990-12-28', 'Spain', '188 cm', 'MA3.png', NULL),
(65, 'MO11', 'Mesut Ozil', 'ARS', 'AMF', 11, '1988-10-15', 'Germany', '180 cm', 'MO11.png', NULL),
(53, 'MS11', 'Mohamed Salah', 'LIV', 'RWF', 11, '1992-06-15', 'Egypt', '175 cm', 'MS11.png', NULL),
(48, 'NC2', 'Nathaniel Clyne', 'LIV', 'RB', 2, '1991-04-05', 'England', '1.75 m', 'NC2.png', NULL),
(27, 'NK7', 'N\'Golo Kante\r\n', 'CHE', 'CMF', 7, '1991-03-29', 'France', '169 cm', 'NK7.png', NULL),
(59, 'NM18', 'Nacho Monreal', 'ARS', 'LB', 18, '1986-03-26', 'Spain', '179 cm', 'NM18.png', NULL),
(7, 'NM31', 'Nemanja Matic', 'MNU', 'DMF', 31, '1988-08-01', 'Serbia', '194 cm', 'NM31.png', NULL),
(14, 'NO30', 'Nicolas Otamendi\r\n', 'MNC', 'CB', 30, '1988-02-12', 'Argentina', '183 cm', 'NO30.png', NULL),
(33, 'P11', 'Pedro', 'CHE', 'RWF', 11, '1987-07-28', 'Spain', '167 cm', 'P11.png', NULL),
(56, 'PC33', 'Petr Cech', 'ARS', 'GK', 33, '1982-05-20', 'Czech Republic', '196 cm', 'PC33.png', NULL),
(2, 'PJ4', 'Phil Jones', 'MNU', 'CB', 4, '1992-02-21', 'England', '185 cm', 'PJ4.png', NULL),
(6, 'PP6', 'Paul Pogba', 'MNU', 'CMF', 6, '1993-03-15', 'France', '191 cm', 'PP6.png', NULL),
(54, 'RF9', 'Roberto Firmino', 'LIV', 'CF', 9, '1991-10-02', 'Brazil', '180 cm', 'RF9.png', NULL),
(11, 'RL9', 'Romelu Lukaku', 'MNU', 'CF', 9, '1993-05-13', 'Belgium', '191 cm', 'RL9.png', NULL),
(19, 'RS7', 'Raheem Sterling', 'MNC', 'RWF', 7, '1994-12-08', 'England', '170 cm', 'RS7.png', NULL),
(21, 'SA10', 'Sergio Aguero\r\n', 'MNC', 'CF', 10, '1988-06-02', 'Argentina', '173 cm', 'SA10.png', NULL),
(43, 'SH7', 'Son Heung-min', 'TOT', 'LWF', 7, '1992-07-08', 'South Korea', '183 cm', 'SH7.png', NULL),
(61, 'SK31', 'Sead Kolasinac', 'ARS', 'LB', 31, '1993-06-20', 'Bosnia and Herzegovina', '183 cm', 'SK31.png', NULL),
(55, 'SM19', 'Sadio Mane', 'LIV', 'LWF', 19, '1992-04-10', 'Senegal', '175 cm', 'SM19.png', NULL),
(58, 'SM20', 'Shkodran Mustafi', 'ARS', 'CB', 20, '1992-04-17', 'Germany', '184 cm', 'SM20.png', NULL),
(45, 'SM22', 'Simon Mignolet', 'LIV', 'GK', 22, '1988-03-06', 'Belgium', '193 cm', 'SM22.png', NULL),
(35, 'TA4', 'Toby Alderweireld', 'TOT', 'CB', 4, '1989-03-02', 'Belgium', '188 cm', 'TA4.png', NULL),
(28, 'TB14', 'Tiemoue Bakayoko', 'CHE', 'DMF', 14, '1994-08-17', 'France', '185 cm', 'TB14.png', NULL),
(23, 'TC13', 'Thibaut Courtois', 'CHE', 'GK', 13, '1992-05-11', 'Belgium', '199 cm', 'TC13.png', NULL),
(29, 'VM15', 'Victor Moses', 'CHE', 'RMF', 15, '1990-12-12', 'Nigeria', '177 cm', 'VM15.png', NULL),
(39, 'VW12', 'Victor Wanyama', 'TOT', 'DMF', 12, '1991-06-25', 'Kenya', '188 cm', 'VW12.png', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `clb`
--

CREATE TABLE `clb` (
  `STT` int(11) DEFAULT NULL,
  `MSCLB` varchar(20) NOT NULL,
  `TENCLB` varchar(100) NOT NULL,
  `LOGO` text NOT NULL,
  `TRUSO` varchar(250) DEFAULT NULL,
  `DIENTHOAI` varchar(20) DEFAULT NULL,
  `MSSVD` varchar(20) DEFAULT NULL,
  `NHATAITRO` varchar(100) DEFAULT NULL,
  `NAMTHANHLAP` int(11) DEFAULT NULL,
  `MAUAO` varchar(20) DEFAULT NULL,
  `WEBSITE` varchar(100) DEFAULT NULL,
  `TENHLV` varchar(100) DEFAULT NULL,
  `GHICHU` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `clb`
--

INSERT INTO `clb` (`STT`, `MSCLB`, `TENCLB`, `LOGO`, `TRUSO`, `DIENTHOAI`, `MSSVD`, `NHATAITRO`, `NAMTHANHLAP`, `MAUAO`, `WEBSITE`, `TENHLV`, `GHICHU`) VALUES
(3, 'ARS', 'Arsenal', 'arsLogo.png', 'London', '020 7619 5003', 'EmS', 'Emirates.png', 1886, 'Red', 'https://www.arsenal.com/', 'Arsène Wenger', NULL),
(4, 'CHE', 'Chelsea', 'cheLogo.png', 'London', '+44 20 7386 9373', 'SB', 'Yokohama.png', 1905, 'Blue', 'http://www.chelseafc.com/', 'Antonio Conte', NULL),
(5, 'LIV', 'Liverpool', 'livLogo.png', 'Liverpool', '0151 264 2500', 'An', 'StandardChartered.png', 1892, 'Red', 'http://www.liverpoolfc.com', 'Jürgen Klopp', NULL),
(2, 'MNC', 'Manchester City\r\n', 'mncLogo.png', 'Manchester', '+44 161 444 1894', 'EtS', 'EtihadAirways.png', 1880, 'Blue/White', 'https://www.mancity.com/', 'Pep Guardiola', NULL),
(1, 'MNU', 'Manchester United', 'mnuLogo.png', 'Manchester', '(0) 161 868 8000', 'OT', 'Chevrolet.png', 1878, 'Red', 'http://www.manutd.com/', 'José Mourinho', NULL),
(6, 'TOT', 'Tottenham Hotspur', 'totLogo.png', 'London', '0344 499 5000 ', 'WS', 'AIA.png', 1882, 'White', 'http://www.tottenhamhotspur.com/home/', 'Mauricio Pochettino', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `dieukhien`
--

CREATE TABLE `dieukhien` (
  `STT` int(11) DEFAULT NULL,
  `MSDIEUKHIEN` varchar(20) NOT NULL,
  `MSTRANDAU` varchar(20) NOT NULL,
  `MSTRONGTAI` varchar(20) DEFAULT NULL,
  `VAITRO` varchar(100) DEFAULT NULL,
  `GHICHU` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dieukhien`
--

INSERT INTO `dieukhien` (`STT`, `MSDIEUKHIEN`, `MSTRANDAU`, `MSTRONGTAI`, `VAITRO`, `GHICHU`) VALUES
(2, 'CHEMNU_Li', 'CHEMNU', 'MO', 'Linesman', NULL),
(1, 'CHEMNU_Re', 'CHEMNU', 'AM', 'Referee', NULL),
(4, 'MNCARS_Li', 'MNCARS', 'NS', 'Linesman', NULL),
(3, 'MNCARS_Re', 'MNCARS', 'MA', 'Referee', NULL),
(6, 'TOTLIV_Li', 'TOTLIV', 'RM', 'Linesman', NULL),
(5, 'TOTLIV_Re', 'TOTLIV', 'CP', 'Referee', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `dsghiban`
--

CREATE TABLE `dsghiban` (
  `STT` int(11) DEFAULT NULL,
  `MSCAUTHU` varchar(20) NOT NULL,
  `SOBANTHANG` int(11) DEFAULT NULL,
  `GHICHU` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dsghiban`
--

INSERT INTO `dsghiban` (`STT`, `MSCAUTHU`, `SOBANTHANG`, `GHICHU`) VALUES
(1, 'AM9', 1, NULL),
(6, 'HK10', 1, NULL),
(4, 'KDB17', 1, NULL),
(2, 'RF9', 1, NULL),
(5, 'RS7', 2, NULL),
(3, 'SA10', 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `lichthidau`
--

CREATE TABLE `lichthidau` (
  `MSTRANDAU` varchar(20) NOT NULL,
  `VONGDAU` int(11) DEFAULT NULL,
  `NGAYDAU` date DEFAULT NULL,
  `GIODAU` time DEFAULT NULL,
  `MSSVD` varchar(20) DEFAULT NULL,
  `MSCHU` varchar(20) DEFAULT NULL,
  `MSKHACH` varchar(20) DEFAULT NULL,
  `GHICHU` varchar(250) DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `lichthidau`
--

INSERT INTO `lichthidau` (`MSTRANDAU`, `VONGDAU`, `NGAYDAU`, `GIODAU`, `MSSVD`, `MSCHU`, `MSKHACH`, `GHICHU`) VALUES
('ARSCHE', 2, '2017-12-23', '19:30:00', 'EmS', 'ARS', 'CHE', ''),
('CHEMNU', 1, '2017-12-16', '23:00:00', 'SB', 'CHE', 'MNU', 'FT'),
('LIVMNC', 2, '2017-12-24', '23:00:00', 'An', 'LIV', 'MNC', ''),
('MNCARS', 1, '2017-12-16', '21:15:00', 'EtS', 'MNC', 'ARS', 'FT'),
('MNUTOT', 2, '2017-12-24', '21:00:00', 'OT', 'MNU', 'TOT', ''),
('TOTLIV', 1, '2017-12-17', '19:00:00', 'WS', 'TOT', 'LIV', 'FT');

-- --------------------------------------------------------

--
-- Table structure for table `quoctich`
--

CREATE TABLE `quoctich` (
  `QUOCTICH` varchar(50) NOT NULL,
  `FLAG` varchar(50) NOT NULL,
  `GHICHU` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `quoctich`
--

INSERT INTO `quoctich` (`QUOCTICH`, `FLAG`, `GHICHU`) VALUES
('Argentina', 'Argentina.png', ''),
('Armenia', 'Armenia.png', ''),
('Belgium', 'Belgium.png', ''),
('Bosnia and Herzegovina', 'Bosnia_and_Herzegovina.png', ''),
('Brazil', 'Brazil.png', ''),
('Chile', 'Chile.png', ''),
('Croatia', 'Croatia.png', ''),
('Czech Republic', 'Czech_Republic.png', ''),
('Denmark', 'Denmark.png', ''),
('Ecuador', 'Ecuador.png', ''),
('Egypt', 'Egypt.png', ''),
('England', 'England.png', ''),
('France', 'France.png', ''),
('Germany', 'Germany.png', ''),
('Ireland', 'Ireland.png', ''),
('Italy', 'Italy.png', ''),
('Ivory Coast', 'Ivory_Coast.png', ''),
('Kenya', 'Kenya.png', ''),
('Netherlands', 'Netherlands.png', ''),
('Nigeria', 'Nigeria.png', ''),
('Portugal', 'Portugal.png', ''),
('Senegal', 'Senegal.png', ''),
('Serbia', 'Serbia.png', ''),
('South Korea', 'South_Korea.png', ''),
('Spain', 'Spain.png', ''),
('Switzerland', 'Switzerland.png', ''),
('Venezuela', 'Venezuela.png', ''),
('Wales', 'Wales.png', '');

-- --------------------------------------------------------

--
-- Table structure for table `svd`
--

CREATE TABLE `svd` (
  `STT` int(11) DEFAULT NULL,
  `MSSVD` varchar(20) NOT NULL,
  `TENSVD` varchar(20) NOT NULL,
  `NAMXD` int(4) DEFAULT NULL,
  `SUCCHUA` int(11) DEFAULT NULL,
  `HINHANH` varchar(50) NOT NULL,
  `GHICHU` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `svd`
--

INSERT INTO `svd` (`STT`, `MSSVD`, `TENSVD`, `NAMXD`, `SUCCHUA`, `HINHANH`, `GHICHU`) VALUES
(4, 'An', 'Anfield', 1884, 54074, 'Anfield.jpg', NULL),
(2, 'EmS', 'Emirates Stadium', 2006, 60432, 'Emirates.jpg', NULL),
(3, 'EtS', 'Etihad Stadium', 2003, 55097, 'Etihad.jpg', NULL),
(1, 'OT', 'Old Trafford', 1910, 75635, 'OldTrafford.jpg', NULL),
(5, 'SB', 'Stamford Bridge', 1877, 41631, 'StamfordBridge.jpg', NULL),
(6, 'WS', 'Wembley Stadium', 2007, 90000, 'Wembley.jpg', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `trandau`
--

CREATE TABLE `trandau` (
  `STT` int(11) DEFAULT NULL,
  `MSTRANDAU` varchar(20) NOT NULL,
  `BANTHANGCHU` int(11) DEFAULT NULL,
  `BANTHANGKHACH` int(11) DEFAULT NULL,
  `GHICHU` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `trandau`
--

INSERT INTO `trandau` (`STT`, `MSTRANDAU`, `BANTHANGCHU`, `BANTHANGKHACH`, `GHICHU`) VALUES
(1, 'CHEMNU', 1, 0, NULL),
(2, 'MNCARS', 4, 0, NULL),
(3, 'TOTLIV', 1, 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `trd_banthang`
--

CREATE TABLE `trd_banthang` (
  `STT` int(11) DEFAULT NULL,
  `MSBANTHANG` varchar(20) NOT NULL,
  `MSTRANDAU` varchar(20) NOT NULL,
  `MSCAUTHU` varchar(20) DEFAULT NULL,
  `THOIDIEM` varchar(20) DEFAULT NULL,
  `GHICHU` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `trd_banthang`
--

INSERT INTO `trd_banthang` (`STT`, `MSBANTHANG`, `MSTRANDAU`, `MSCAUTHU`, `THOIDIEM`, `GHICHU`) VALUES
(1, 'CHE1', 'CHEMNU', 'AM9', '78\'', NULL),
(6, 'LIV1', 'TOTLIV', 'RF9', '7\'', NULL),
(2, 'MNC1', 'MNCARS', 'SA10', '30\'', NULL),
(3, 'MNC2', 'MNCARS', 'KDB17', '48\'', NULL),
(4, 'MNC3', 'MNCARS', 'RS7', '75\'', NULL),
(5, 'MNC4', 'MNCARS', 'RS7', '82\'', NULL),
(7, 'TOT1', 'TOTLIV', 'HK10', '62\'', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `trongtai`
--

CREATE TABLE `trongtai` (
  `STT` int(11) DEFAULT NULL,
  `MSTRONGTAI` varchar(20) NOT NULL,
  `TENTRONGTAI` varchar(100) NOT NULL,
  `NGAYSINH` date DEFAULT NULL,
  `GIOITINH` varchar(20) DEFAULT NULL,
  `NAMBD` varchar(10) NOT NULL,
  `QUOCTICH` varchar(50) DEFAULT NULL,
  `HINHANH` varchar(50) NOT NULL,
  `GHICHU` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `trongtai`
--

INSERT INTO `trongtai` (`STT`, `MSTRONGTAI`, `TENTRONGTAI`, `NGAYSINH`, `GIOITINH`, `NAMBD`, `QUOCTICH`, `HINHANH`, `GHICHU`) VALUES
(4, 'AM', 'Andre Marriner', '1971-01-01', 'Male', '2005', 'England', 'AM.png', NULL),
(10, 'AT', 'Anthony Taylor\r\n', '1978-10-20', 'Male', '2010', 'England', 'AT.png', NULL),
(2, 'CP', 'Craig Pawson', '1979-07-18', 'Male', '2013', 'England', 'CP.png', NULL),
(5, 'JM', 'Jonathan Moss', '1970-10-18', 'Male', '2011', 'England', 'JM.png', NULL),
(9, 'LM', 'Lee Mason', '1971-10-29', 'Male', '2006', 'England', 'LM.png', NULL),
(8, 'MA', 'Martin Atkinson', '1971-03-31', 'Male', '2004', 'England', 'MA.png', NULL),
(3, 'MD', 'Mike Dean', '1968-06-02', 'Male', '2000', 'England', 'MD.png', NULL),
(1, 'MO', 'Michael Oliver', '1985-02-20', 'Male', '2010', 'England', 'MO.png', NULL),
(6, 'NS', 'Neil Swarbrick', '1965-12-20', 'Male', '2011', 'England', 'NS.png', NULL),
(7, 'RM', 'Robert Madley', '1985-10-06', 'Male', '2013', 'England', 'RM.png', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `xephang`
--

CREATE TABLE `xephang` (
  `SOTRAN` int(11) DEFAULT NULL,
  `MSCLB` varchar(20) NOT NULL,
  `THANG` int(11) DEFAULT NULL,
  `HOA` int(11) DEFAULT NULL,
  `THUA` int(11) DEFAULT NULL,
  `BANTHANG` int(11) DEFAULT NULL,
  `BANTHUA` int(11) DEFAULT NULL,
  `HIEUSO` int(11) DEFAULT NULL,
  `DIEMSO` int(11) DEFAULT NULL,
  `GHICHU` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `xephang`
--

INSERT INTO `xephang` (`SOTRAN`, `MSCLB`, `THANG`, `HOA`, `THUA`, `BANTHANG`, `BANTHUA`, `HIEUSO`, `DIEMSO`, `GHICHU`) VALUES
(1, 'ARS', 0, 0, 1, 0, 4, -4, 0, NULL),
(1, 'CHE', 1, 0, 0, 1, 0, 1, 3, NULL),
(1, 'LIV', 0, 1, 0, 1, 1, 0, 1, NULL),
(1, 'MNC', 1, 0, 0, 4, 0, 4, 3, NULL),
(1, 'MNU', 0, 0, 1, 0, 1, -1, 0, NULL),
(1, 'TOT', 0, 1, 0, 1, 1, 0, 1, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `aodau`
--
ALTER TABLE `aodau`
  ADD PRIMARY KEY (`MSCLB`);

--
-- Indexes for table `bhl`
--
ALTER TABLE `bhl`
  ADD PRIMARY KEY (`MSHL`),
  ADD KEY `MSCLB` (`MSCLB`),
  ADD KEY `QUOCTICH` (`QUOCTICH`);

--
-- Indexes for table `cauthu`
--
ALTER TABLE `cauthu`
  ADD PRIMARY KEY (`MSCAUTHU`),
  ADD KEY `MSCLB` (`MSCLB`),
  ADD KEY `QUOCTICH` (`QUOCTICH`);

--
-- Indexes for table `clb`
--
ALTER TABLE `clb`
  ADD PRIMARY KEY (`MSCLB`),
  ADD KEY `MSSVD` (`MSSVD`);

--
-- Indexes for table `dieukhien`
--
ALTER TABLE `dieukhien`
  ADD PRIMARY KEY (`MSDIEUKHIEN`,`MSTRANDAU`),
  ADD KEY `MSTRANDAU` (`MSTRANDAU`),
  ADD KEY `MSTRONGTAI` (`MSTRONGTAI`);

--
-- Indexes for table `dsghiban`
--
ALTER TABLE `dsghiban`
  ADD PRIMARY KEY (`MSCAUTHU`);

--
-- Indexes for table `lichthidau`
--
ALTER TABLE `lichthidau`
  ADD PRIMARY KEY (`MSTRANDAU`),
  ADD KEY `MSCHU` (`MSCHU`),
  ADD KEY `MSKHACH` (`MSKHACH`),
  ADD KEY `MSSVD` (`MSSVD`);

--
-- Indexes for table `quoctich`
--
ALTER TABLE `quoctich`
  ADD PRIMARY KEY (`QUOCTICH`);

--
-- Indexes for table `svd`
--
ALTER TABLE `svd`
  ADD PRIMARY KEY (`MSSVD`);

--
-- Indexes for table `trandau`
--
ALTER TABLE `trandau`
  ADD PRIMARY KEY (`MSTRANDAU`);

--
-- Indexes for table `trd_banthang`
--
ALTER TABLE `trd_banthang`
  ADD PRIMARY KEY (`MSBANTHANG`,`MSTRANDAU`),
  ADD KEY `MSCAUTHU` (`MSCAUTHU`),
  ADD KEY `MSTRANDAU` (`MSTRANDAU`);

--
-- Indexes for table `trongtai`
--
ALTER TABLE `trongtai`
  ADD PRIMARY KEY (`MSTRONGTAI`),
  ADD KEY `QUOCTICH` (`QUOCTICH`);

--
-- Indexes for table `xephang`
--
ALTER TABLE `xephang`
  ADD PRIMARY KEY (`MSCLB`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `aodau`
--
ALTER TABLE `aodau`
  ADD CONSTRAINT `aodau_ibfk_1` FOREIGN KEY (`MSCLB`) REFERENCES `clb` (`MSCLB`);

--
-- Constraints for table `bhl`
--
ALTER TABLE `bhl`
  ADD CONSTRAINT `bhl_ibfk_1` FOREIGN KEY (`MSCLB`) REFERENCES `clb` (`MSCLB`),
  ADD CONSTRAINT `bhl_ibfk_2` FOREIGN KEY (`QUOCTICH`) REFERENCES `quoctich` (`QUOCTICH`);

--
-- Constraints for table `cauthu`
--
ALTER TABLE `cauthu`
  ADD CONSTRAINT `cauthu_ibfk_1` FOREIGN KEY (`MSCLB`) REFERENCES `clb` (`MSCLB`),
  ADD CONSTRAINT `cauthu_ibfk_2` FOREIGN KEY (`QUOCTICH`) REFERENCES `quoctich` (`QUOCTICH`);

--
-- Constraints for table `clb`
--
ALTER TABLE `clb`
  ADD CONSTRAINT `clb_ibfk_1` FOREIGN KEY (`MSSVD`) REFERENCES `svd` (`MSSVD`);

--
-- Constraints for table `dieukhien`
--
ALTER TABLE `dieukhien`
  ADD CONSTRAINT `dieukhien_ibfk_1` FOREIGN KEY (`MSTRANDAU`) REFERENCES `trandau` (`MSTRANDAU`),
  ADD CONSTRAINT `dieukhien_ibfk_2` FOREIGN KEY (`MSTRONGTAI`) REFERENCES `trongtai` (`MSTRONGTAI`);

--
-- Constraints for table `dsghiban`
--
ALTER TABLE `dsghiban`
  ADD CONSTRAINT `dsghiban_fk` FOREIGN KEY (`MSCAUTHU`) REFERENCES `trd_banthang` (`MSCAUTHU`);

--
-- Constraints for table `lichthidau`
--
ALTER TABLE `lichthidau`
  ADD CONSTRAINT `lichthidau_ibfk_1` FOREIGN KEY (`MSCHU`) REFERENCES `clb` (`MSCLB`),
  ADD CONSTRAINT `lichthidau_ibfk_2` FOREIGN KEY (`MSKHACH`) REFERENCES `clb` (`MSCLB`),
  ADD CONSTRAINT `lichthidau_ibfk_3` FOREIGN KEY (`MSSVD`) REFERENCES `svd` (`MSSVD`);

--
-- Constraints for table `trandau`
--
ALTER TABLE `trandau`
  ADD CONSTRAINT `trandau_ibfk_1` FOREIGN KEY (`MSTRANDAU`) REFERENCES `lichthidau` (`MSTRANDAU`);

--
-- Constraints for table `trd_banthang`
--
ALTER TABLE `trd_banthang`
  ADD CONSTRAINT `trd_banthang_ibfk_1` FOREIGN KEY (`MSCAUTHU`) REFERENCES `cauthu` (`MSCAUTHU`),
  ADD CONSTRAINT `trd_banthang_ibfk_2` FOREIGN KEY (`MSTRANDAU`) REFERENCES `trandau` (`MSTRANDAU`);

--
-- Constraints for table `trongtai`
--
ALTER TABLE `trongtai`
  ADD CONSTRAINT `trongtai_ibfk_1` FOREIGN KEY (`QUOCTICH`) REFERENCES `quoctich` (`QUOCTICH`);

--
-- Constraints for table `xephang`
--
ALTER TABLE `xephang`
  ADD CONSTRAINT `xephang_ibfk_1` FOREIGN KEY (`MSCLB`) REFERENCES `clb` (`MSCLB`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
