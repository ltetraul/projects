-- phpMyAdmin SQL Dump
-- version 4.9.5deb2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Dec 12, 2023 at 04:39 PM
-- Server version: 10.3.38-MariaDB-0ubuntu0.20.04.1
-- PHP Version: 7.4.3-4ubuntu2.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ltetraul_2_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `physicals`
--

CREATE TABLE `physicals` (
  `physicalsID` int(11) NOT NULL,
  `playerID` int(11) NOT NULL,
  `positionID` int(11) NOT NULL,
  `height` int(11) NOT NULL,
  `weight` int(11) NOT NULL,
  `wingspan` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `physicals`
--

INSERT INTO `physicals` (`physicalsID`, `playerID`, `positionID`, `height`, `weight`, `wingspan`) VALUES
(701, 1, 502, 78, 198, 83),
(702, 2, 503, 81, 250, 84),
(703, 3, 501, 75, 200, 80),
(704, 4, 503, 79, 210, 83),
(705, 5, 504, 83, 242, 87),
(706, 6, 503, 81, 220, 84),
(707, 7, 504, 81, 250, 83),
(708, 8, 501, 74, 174, 79),
(709, 9, 503, 80, 215, 82),
(710, 10, 502, 76, 220, 83),
(711, 11, 501, 79, 180, 82),
(712, 12, 501, 73, 170, 76),
(713, 13, 505, 82, 245, 88),
(714, 14, 505, 84, 240, 85),
(715, 15, 501, 81, 215, 84),
(716, 16, 502, 78, 212, 83),
(717, 17, 505, 85, 325, 91),
(718, 18, 501, 79, 195, 82),
(719, 19, 504, 84, 245, 87),
(720, 20, 501, 76, 205, 80),
(721, 21, 505, 83, 284, 87),
(722, 22, 502, 79, 185, 83),
(723, 23, 504, 82, 254, 90),
(724, 24, 501, 73, 180, 76),
(725, 25, 503, 78, 220, 83),
(726, 26, 505, 84, 255, 90),
(727, 27, 504, 83, 250, 88),
(728, 28, 503, 83, 240, 89),
(729, 29, 501, 75, 195, 77),
(730, 30, 504, 83, 240, 88),
(731, 31, 505, 83, 210, 87),
(732, 32, 502, 79, 210, 82),
(733, 33, 501, 74, 185, 76),
(734, 34, 505, 79, 245, 82);

-- --------------------------------------------------------

--
-- Table structure for table `player`
--

CREATE TABLE `player` (
  `playerID` int(11) NOT NULL,
  `teamID` int(11) NOT NULL,
  `positionID` int(11) NOT NULL,
  `firstName` varchar(100) NOT NULL,
  `lastName` varchar(100) NOT NULL,
  `jerseyNum` int(11) NOT NULL,
  `entryYear` int(11) NOT NULL,
  `championshipWins` int(11) NOT NULL,
  `totalMVPAwards` int(11) NOT NULL,
  `lastModified` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `player`
--

INSERT INTO `player` (`playerID`, `teamID`, `positionID`, `firstName`, `lastName`, `jerseyNum`, `entryYear`, `championshipWins`, `totalMVPAwards`, `lastModified`) VALUES
(1, 103, 502, 'Michael', 'Jordan', 23, 1984, 6, 11, NULL),
(2, 104, 503, 'LeBron', 'James', 23, 2003, 4, 8, '2023-12-12'),
(3, 103, 501, 'Derrick', 'Rose', 1, 2008, 0, 1, NULL),
(4, 101, 503, 'Julius', 'Erving', 6, 1972, 1, 1, NULL),
(5, 102, 504, 'Giannis', 'Antetokounmpo', 34, 2013, 1, 3, NULL),
(6, 105, 503, 'Larry', 'Bird', 33, 1979, 3, 5, NULL),
(7, 106, 504, 'Blake', 'Griffin', 32, 2010, 0, 0, NULL),
(8, 107, 501, 'Ja', 'Morant', 12, 2019, 0, 0, NULL),
(9, 108, 503, 'Dominique', 'Wilkins', 21, 1982, 0, 0, NULL),
(10, 109, 502, 'Dwyane', 'Wade', 3, 2003, 3, 1, NULL),
(11, 110, 501, 'LaMelo', 'Ball', 1, 2020, 0, 0, NULL),
(12, 111, 501, 'John', 'Stockton', 12, 1984, 0, 0, NULL),
(13, 112, 505, 'Chris', 'Webber', 4, 1993, 0, 0, NULL),
(14, 113, 505, 'Patrick', 'Ewing', 33, 1985, 0, 0, NULL),
(15, 114, 501, 'Magic', 'Johnson', 32, 1979, 5, 6, NULL),
(16, 114, 502, 'Kobe', 'Bryant', 24, 1996, 5, 6, NULL),
(17, 115, 505, 'Shaquille', 'O\'Neal', 32, 1992, 4, 4, NULL),
(18, 115, 501, 'Penny', 'Hardaway', 1, 1993, 0, 0, NULL),
(19, 116, 504, 'Dirk', 'Nowitzki', 41, 1998, 1, 2, NULL),
(20, 117, 501, 'Jason', 'Kidd', 5, 1988, 1, 0, NULL),
(21, 118, 505, 'Nikola', 'Jokić', 15, 2014, 1, 3, NULL),
(22, 119, 502, 'Reggie', 'Miller', 31, 1987, 0, 0, NULL),
(23, 120, 504, 'Anthony', 'Davis', 23, 2012, 1, 0, NULL),
(24, 121, 501, 'Isiah', 'Thomas', 11, 1981, 2, 1, NULL),
(25, 122, 503, 'Vince', 'Carter', 15, 1998, 0, 0, NULL),
(26, 123, 505, 'Hakeem', 'Olajuwan', 34, 1984, 2, 3, NULL),
(27, 124, 504, 'Tim', 'Duncan', 21, 1998, 5, 5, NULL),
(28, 126, 503, 'Kevin', 'Durant', 35, 2007, 2, 3, NULL),
(29, 125, 501, 'Steve', 'Nash', 13, 1996, 0, 2, NULL),
(30, 127, 504, 'Kevin', 'Garnett', 21, 1995, 1, 1, NULL),
(31, 128, 505, 'Bill', 'Walton', 32, 1974, 2, 2, NULL),
(32, 128, 502, 'Clyde', 'Drexler', 22, 1983, 1, 0, NULL),
(33, 129, 501, 'Stephen', 'Curry', 30, 2009, 4, 3, NULL),
(34, 130, 505, 'Wes', 'Unseld', 41, 1968, 1, 2, NULL);

--
-- Triggers `player`
--
DELIMITER $$
CREATE TRIGGER `updateJerseyNum` BEFORE UPDATE ON `player` FOR EACH ROW BEGIN
    SET NEW.JerseyNum = NEW.JerseyNum;
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `updateTeam` AFTER UPDATE ON `player` FOR EACH ROW BEGIN
    UPDATE team
    SET teamName = NEW.firstName
    WHERE teamID = NEW.teamID;
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `update_lastModified` BEFORE UPDATE ON `player` FOR EACH ROW BEGIN
    SET NEW.lastModified = CURRENT_TIMESTAMP;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Stand-in structure for view `PlayerStatsView`
-- (See below for the actual view)
--
CREATE TABLE `PlayerStatsView` (
`playerID` int(11)
,`firstName` varchar(100)
,`lastName` varchar(100)
,`careerPPG` float
,`careerRPG` float
,`careerSPG` float
);

-- --------------------------------------------------------

--
-- Table structure for table `position`
--

CREATE TABLE `position` (
  `positionID` int(11) NOT NULL,
  `positionName` varchar(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `position`
--

INSERT INTO `position` (`positionID`, `positionName`) VALUES
(501, 'PG'),
(502, 'SG'),
(503, 'SF'),
(504, 'PF'),
(505, 'C');

-- --------------------------------------------------------

--
-- Stand-in structure for view `PositionPhysicalsView`
-- (See below for the actual view)
--
CREATE TABLE `PositionPhysicalsView` (
`firstName` varchar(100)
,`lastName` varchar(100)
,`positionName` varchar(2)
,`height` int(11)
,`weight` int(11)
,`wingspan` int(11)
);

-- --------------------------------------------------------

--
-- Table structure for table `stats`
--

CREATE TABLE `stats` (
  `statsID` int(11) NOT NULL,
  `playerID` int(11) NOT NULL,
  `careerPPG` float NOT NULL,
  `careerRPG` float NOT NULL,
  `careerAPG` float NOT NULL,
  `careerSPG` float NOT NULL,
  `careerBPG` float NOT NULL,
  `careerTPG` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `stats`
--

INSERT INTO `stats` (`statsID`, `playerID`, `careerPPG`, `careerRPG`, `careerAPG`, `careerSPG`, `careerBPG`, `careerTPG`) VALUES
(1001, 1, 30.1, 6.2, 5.3, 2.3, 0.8, 2.7),
(1002, 2, 27.2, 7.5, 7.3, 1.5, 0.8, 3.5),
(1003, 3, 17.6, 3.2, 5.2, 0.8, 0.3, 2.4),
(1004, 4, 24.2, 8.5, 4.2, 2, 1.7, 3.4),
(1005, 5, 22.8, 9.6, 4.7, 1.1, 1.3, 3),
(1006, 6, 24.3, 10, 6.3, 1.7, 0.8, 3.1),
(1007, 7, 19, 8, 4, 0.8, 0.5, 2.3),
(1008, 8, 22.4, 4.8, 7.4, 1, 0.3, 3.3),
(1009, 9, 24.8, 6.7, 2.5, 1.3, 0.6, 2.5),
(1010, 10, 22, 4.7, 5.4, 1.5, 0.8, 3.2),
(1011, 11, 19.9, 6.3, 7.4, 1.5, 0.4, 3.3),
(1012, 12, 13.1, 2.7, 10.5, 2.2, 0.2, 2.8),
(1013, 13, 20.7, 9.8, 4.2, 1.4, 1.4, 2.8),
(1014, 14, 21, 9.8, 1.9, 1, 2.4, 3),
(1015, 15, 19.5, 7.2, 11.2, 1.9, 0.4, 3.9),
(1016, 16, 25, 5.2, 4.7, 1.4, 0.5, 3),
(1017, 17, 23.7, 10.9, 2.5, 0.6, 2.3, 2.7),
(1018, 18, 15.2, 4.5, 5, 1.6, 0.4, 2.5),
(1019, 19, 20.7, 7.5, 2.4, 0.8, 0.8, 1.6),
(1020, 20, 12.6, 6.3, 8.7, 1.9, 0.3, 2.9),
(1021, 21, 20.5, 10.6, 6.8, 1.2, 0.7, 2.9),
(1022, 22, 18.2, 3, 3, 1.1, 0.2, 1.7),
(1023, 23, 24, 10.5, 2.4, 1.3, 2.3, 2),
(1024, 24, 19.2, 3.6, 9.3, 1.9, 0.3, 3.8),
(1025, 25, 16.7, 4.3, 3.1, 1, 0.6, 1.7),
(1026, 26, 21.8, 11.1, 2.5, 1.7, 3.1, 3),
(1027, 27, 19, 10.8, 3, 0.7, 2.2, 2.4),
(1028, 28, 27.3, 7, 4.4, 1.1, 1.1, 3.2),
(1029, 29, 14.3, 3, 8.5, 0.7, 0.1, 2.9),
(1030, 30, 17.8, 10, 3.7, 1.3, 1.4, 2.2),
(1031, 31, 13.3, 10.5, 3.4, 0.8, 2.2, 2.7),
(1032, 32, 20.4, 6.1, 5.6, 2, 0.7, 2.7),
(1033, 33, 24.7, 4.7, 6.5, 1.6, 0.2, 3.2),
(1034, 34, 10.8, 14, 3.9, 1.1, 0.6, 1.9);

-- --------------------------------------------------------

--
-- Table structure for table `team`
--

CREATE TABLE `team` (
  `teamID` int(11) NOT NULL,
  `teamName` varchar(100) NOT NULL,
  `teamLocation` varchar(100) NOT NULL,
  `yearFounded` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `team`
--

INSERT INTO `team` (`teamID`, `teamName`, `teamLocation`, `yearFounded`) VALUES
(101, '76ers', 'Philadelphia', 1946),
(102, 'Bucks', 'Milwaukee', 1968),
(103, 'Bulls', 'Chicago', 1966),
(104, 'Cavaliers', 'Cleveland', 1970),
(105, 'Celtics', 'Boston', 1946),
(106, 'Clippers', 'Los Angeles', 1970),
(107, 'Grizzlies', 'Memphis', 1995),
(108, 'Hawks', 'Atlanta', 1946),
(109, 'Heat', 'Miami', 1988),
(110, 'Hornets', 'Charlotte', 2004),
(111, 'Jazz', 'Utah', 1974),
(112, 'Kings', 'Sacramento', 1923),
(113, 'Knicks', 'New York', 1946),
(114, 'Lakers', 'Los Angeles', 1947),
(115, 'Magic', 'Orlando', 1989),
(116, 'Mavericks', 'Dallas', 1980),
(117, 'Nets', 'Brooklyn', 1967),
(118, 'Nuggets', 'Denver', 1967),
(119, 'Pacers', 'Indiana', 1967),
(120, 'Pelicans', 'New Orleans', 1988),
(121, 'Pistons', 'Detroit', 1937),
(122, 'Raptors', 'Toronto', 1995),
(123, 'Rockets', 'Houston', 1967),
(124, 'Spurs', 'San Antonio', 1967),
(125, 'Suns', 'Phoenix', 1968),
(126, 'Thunder', 'Oklahoma City', 1967),
(127, 'Timberwolves', 'Minnesota', 1989),
(128, 'Trail Blazers', 'Portland', 1970),
(129, 'Warriors', 'Golden State', 1946),
(130, 'Wizards', 'Washington', 1961);

-- --------------------------------------------------------

--
-- Structure for view `PlayerStatsView`
--
DROP TABLE IF EXISTS `PlayerStatsView`;

CREATE ALGORITHM=UNDEFINED DEFINER=`ltetraul`@`localhost` SQL SECURITY DEFINER VIEW `PlayerStatsView`  AS  select `p`.`playerID` AS `playerID`,`p`.`firstName` AS `firstName`,`p`.`lastName` AS `lastName`,`s`.`careerPPG` AS `careerPPG`,`s`.`careerRPG` AS `careerRPG`,`s`.`careerSPG` AS `careerSPG` from (`player` `p` join `stats` `s` on(`p`.`playerID` = `s`.`playerID`)) ;

-- --------------------------------------------------------

--
-- Structure for view `PositionPhysicalsView`
--
DROP TABLE IF EXISTS `PositionPhysicalsView`;

CREATE ALGORITHM=UNDEFINED DEFINER=`ltetraul`@`localhost` SQL SECURITY DEFINER VIEW `PositionPhysicalsView`  AS  select `r`.`firstName` AS `firstName`,`r`.`lastName` AS `lastName`,`p`.`positionName` AS `positionName`,`h`.`height` AS `height`,`h`.`weight` AS `weight`,`h`.`wingspan` AS `wingspan` from ((`position` `p` join `physicals` `h` on(`p`.`positionID` = `h`.`positionID`)) join `player` `r` on(`h`.`playerID` = `r`.`playerID`)) ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `physicals`
--
ALTER TABLE `physicals`
  ADD PRIMARY KEY (`physicalsID`),
  ADD KEY `playerID` (`playerID`),
  ADD KEY `positionID` (`positionID`);

--
-- Indexes for table `player`
--
ALTER TABLE `player`
  ADD PRIMARY KEY (`playerID`),
  ADD KEY `teamID` (`teamID`),
  ADD KEY `positionID` (`positionID`);

--
-- Indexes for table `position`
--
ALTER TABLE `position`
  ADD PRIMARY KEY (`positionID`);

--
-- Indexes for table `stats`
--
ALTER TABLE `stats`
  ADD PRIMARY KEY (`statsID`),
  ADD KEY `playerID` (`playerID`);

--
-- Indexes for table `team`
--
ALTER TABLE `team`
  ADD PRIMARY KEY (`teamID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `physicals`
--
ALTER TABLE `physicals`
  MODIFY `physicalsID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=736;

--
-- AUTO_INCREMENT for table `player`
--
ALTER TABLE `player`
  MODIFY `playerID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `position`
--
ALTER TABLE `position`
  MODIFY `positionID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=506;

--
-- AUTO_INCREMENT for table `stats`
--
ALTER TABLE `stats`
  MODIFY `statsID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1036;

--
-- AUTO_INCREMENT for table `team`
--
ALTER TABLE `team`
  MODIFY `teamID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=131;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `physicals`
--
ALTER TABLE `physicals`
  ADD CONSTRAINT `physicals_ibfk_1` FOREIGN KEY (`playerID`) REFERENCES `player` (`playerID`),
  ADD CONSTRAINT `physicals_ibfk_2` FOREIGN KEY (`positionID`) REFERENCES `position` (`positionID`);

--
-- Constraints for table `player`
--
ALTER TABLE `player`
  ADD CONSTRAINT `player_ibfk_1` FOREIGN KEY (`teamID`) REFERENCES `team` (`teamID`),
  ADD CONSTRAINT `player_ibfk_2` FOREIGN KEY (`positionID`) REFERENCES `position` (`positionID`);

--
-- Constraints for table `stats`
--
ALTER TABLE `stats`
  ADD CONSTRAINT `stats_ibfk_1` FOREIGN KEY (`playerID`) REFERENCES `player` (`playerID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
