-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 17, 2024 at 05:23 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pokedex_db`
--

-- --------------------------------------------------------

--
-- Stand-in structure for view `att_def_hp`
-- (See below for the actual view)
--
CREATE TABLE `att_def_hp` (
`pok_id` int(1)
,`pok_name` int(1)
,`b_atk` int(1)
,`b_def` int(1)
,`b_hp` int(1)
,`b_speed` int(1)
,`b_sp_atk` int(1)
,`b_sp_def` int(1)
);

-- --------------------------------------------------------

--
-- Table structure for table `base_stats`
--

CREATE TABLE `base_stats` (
  `pok_id` int(11) NOT NULL,
  `b_hp` int(11) DEFAULT NULL,
  `b_atk` int(11) DEFAULT NULL,
  `b_def` int(11) DEFAULT NULL,
  `b_sp_atk` int(11) DEFAULT NULL,
  `b_sp_def` int(11) DEFAULT NULL,
  `b_speed` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `base_stats`
--

INSERT INTO `base_stats` (`pok_id`, `b_hp`, `b_atk`, `b_def`, `b_sp_atk`, `b_sp_def`, `b_speed`) VALUES
(1, 45, 49, 49, 65, 65, 45),
(2, 60, 62, 63, 80, 80, 60),
(3, 80, 82, 83, 100, 100, 80),
(4, 39, 52, 43, 60, 50, 65),
(5, 58, 64, 58, 80, 65, 80),
(6, 78, 84, 78, 109, 85, 100),
(7, 44, 48, 65, 50, 64, 43),
(8, 59, 63, 80, 65, 80, 58),
(9, 79, 83, 100, 85, 105, 78),
(10, 45, 30, 35, 20, 20, 45),
(11, 50, 20, 55, 25, 25, 30),
(12, 60, 45, 50, 90, 80, 70),
(13, 40, 35, 30, 20, 20, 50),
(14, 45, 25, 50, 25, 25, 35),
(15, 65, 90, 40, 45, 80, 75),
(16, 40, 45, 40, 35, 35, 56),
(17, 63, 60, 55, 50, 50, 71),
(18, 83, 80, 75, 70, 70, 101),
(19, 30, 56, 35, 25, 35, 72),
(20, 55, 81, 60, 50, 70, 97),
(21, 40, 60, 30, 31, 31, 70),
(22, 65, 90, 65, 61, 61, 100),
(23, 35, 60, 44, 40, 54, 55),
(24, 60, 85, 69, 65, 79, 80),
(25, 35, 55, 40, 50, 50, 90),
(26, 60, 90, 55, 90, 80, 110),
(27, 50, 75, 85, 20, 30, 40),
(28, 75, 100, 110, 45, 55, 65),
(29, 55, 47, 52, 40, 40, 41),
(30, 70, 62, 67, 55, 55, 56),
(31, 90, 92, 87, 75, 85, 76),
(32, 46, 57, 40, 40, 40, 50),
(33, 61, 72, 57, 55, 55, 65),
(34, 81, 102, 77, 85, 75, 85),
(35, 70, 45, 48, 60, 65, 35),
(36, 95, 70, 73, 95, 90, 60),
(37, 38, 41, 40, 50, 65, 65),
(38, 73, 76, 75, 81, 100, 100),
(39, 115, 45, 20, 45, 25, 20),
(40, 140, 70, 45, 85, 50, 45);

-- --------------------------------------------------------

--
-- Stand-in structure for view `habitat_view`
-- (See below for the actual view)
--
CREATE TABLE `habitat_view` (
`pok_id` int(1)
,`pok_name` int(1)
,`hab_name` int(1)
,`pok_height` int(1)
,`pok_weight` int(1)
,`capture_rate` int(1)
,`base_happiness` int(1)
);

-- --------------------------------------------------------

--
-- Table structure for table `pokemon`
--

CREATE TABLE `pokemon` (
  `pok_id` int(11) NOT NULL,
  `pok_name` varchar(79) NOT NULL,
  `pok_height` int(11) DEFAULT NULL,
  `pok_weight` int(11) DEFAULT NULL,
  `pok_base_experience` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `pokemon`
--

INSERT INTO `pokemon` (`pok_id`, `pok_name`, `pok_height`, `pok_weight`, `pok_base_experience`) VALUES
(1, 'bulbasaur', 7, 69, 64),
(2, 'ivysaur', 10, 130, 142),
(3, 'venusaur', 20, 1000, 236),
(4, 'charmander', 6, 85, 62),
(5, 'charmeleon', 11, 190, 142),
(6, 'charizard', 17, 905, 240),
(7, 'squirtle', 5, 90, 63),
(8, 'wartortle', 10, 225, 142),
(9, 'blastoise', 16, 855, 239),
(10, 'caterpie', 3, 29, 39),
(11, 'metapod', 7, 99, 72),
(12, 'butterfree', 11, 320, 178),
(13, 'weedle', 3, 32, 39),
(14, 'kakuna', 6, 100, 72),
(15, 'beedrill', 10, 295, 178),
(16, 'pidgey', 3, 18, 50),
(17, 'pidgeotto', 11, 300, 122),
(18, 'pidgeot', 15, 395, 216),
(19, 'rattata', 3, 35, 51),
(20, 'raticate', 7, 185, 145),
(21, 'spearow', 3, 20, 52),
(22, 'fearow', 12, 380, 155),
(23, 'ekans', 20, 69, 58),
(24, 'arbok', 35, 650, 153),
(25, 'pikachu', 4, 60, 112),
(26, 'raichu', 8, 300, 218),
(27, 'sandshrew', 6, 120, 60),
(28, 'sandslash', 10, 295, 158),
(29, 'nidoran-f', 4, 70, 55),
(30, 'nidorina', 8, 200, 128),
(31, 'nidoqueen', 13, 600, 227),
(32, 'nidoran-m', 5, 90, 55),
(33, 'nidorino', 9, 195, 128),
(34, 'nidoking', 14, 620, 227),
(35, 'clefairy', 6, 75, 113),
(36, 'clefable', 13, 400, 217),
(37, 'vulpix', 6, 99, 60),
(38, 'ninetales', 11, 199, 177),
(39, 'jigglypuff', 5, 55, 95),
(40, 'wigglytuff', 10, 120, 196);

--
-- Triggers `pokemon`
--
DELIMITER $$
CREATE TRIGGER `NEW_POKEMON` BEFORE INSERT ON `pokemon` FOR EACH ROW BEGIN 
	IF NEW.pok_height < 0 THEN
		SET NEW.pok_height = 0;
	END IF;
	IF NEW.pok_weight < 0 THEN
		SET NEW.pok_weight = 0;
	END IF;
	IF NEW.pok_base_experience < 0 THEN
		SET NEW.pok_base_experience = 0;
	END IF; 
	END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Stand-in structure for view `pokemon_total`
-- (See below for the actual view)
--
CREATE TABLE `pokemon_total` (
`pok_id` int(11)
,`pok_name` varchar(79)
,`b_atk` int(11)
,`b_def` int(11)
,`b_hp` int(11)
,`b_speed` int(11)
,`b_sp_atk` int(11)
,`b_sp_def` int(11)
,`total` decimal(37,0)
);

-- --------------------------------------------------------

--
-- Table structure for table `pokemon_types`
--

CREATE TABLE `pokemon_types` (
  `pok_id` int(11) NOT NULL,
  `type_id` int(11) NOT NULL,
  `slot` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `pokemon_types`
--

INSERT INTO `pokemon_types` (`pok_id`, `type_id`, `slot`) VALUES
(16, 1, 1),
(17, 1, 1),
(18, 1, 1),
(19, 1, 1),
(20, 1, 1),
(21, 1, 1),
(22, 1, 1),
(39, 1, 1),
(40, 1, 1),
(6, 3, 2),
(12, 3, 2),
(16, 3, 2),
(17, 3, 2),
(18, 3, 2),
(21, 3, 2),
(22, 3, 2),
(1, 4, 2),
(2, 4, 2),
(3, 4, 2),
(13, 4, 2),
(14, 4, 2),
(15, 4, 2),
(23, 4, 1),
(24, 4, 1),
(29, 4, 1),
(30, 4, 1),
(31, 4, 1),
(32, 4, 1),
(33, 4, 1),
(34, 4, 1),
(27, 5, 1),
(28, 5, 1),
(31, 5, 2),
(34, 5, 2),
(10, 7, 1),
(11, 7, 1),
(12, 7, 1),
(13, 7, 1),
(14, 7, 1),
(15, 7, 1),
(4, 10, 1),
(5, 10, 1),
(6, 10, 1),
(37, 10, 1),
(38, 10, 1),
(7, 11, 1),
(8, 11, 1),
(9, 11, 1),
(1, 12, 1),
(2, 12, 1),
(3, 12, 1),
(25, 13, 1),
(26, 13, 1),
(35, 18, 1),
(36, 18, 1),
(39, 18, 2),
(40, 18, 2);

-- --------------------------------------------------------

--
-- Stand-in structure for view `pok_abilities`
-- (See below for the actual view)
--
CREATE TABLE `pok_abilities` (
`pok_id` int(1)
,`pok_name` int(1)
,`abil_name` int(1)
,`is_hidden` int(1)
,`pok_base_experience` int(1)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `top_10_view`
-- (See below for the actual view)
--
CREATE TABLE `top_10_view` (
`pok_id` int(11)
,`pok_name` varchar(79)
,`b_atk` int(11)
,`b_def` int(11)
,`b_hp` int(11)
,`b_speed` int(11)
,`b_sp_atk` int(11)
,`b_sp_def` int(11)
,`TOTAL` decimal(37,0)
);

-- --------------------------------------------------------

--
-- Table structure for table `types`
--

CREATE TABLE `types` (
  `type_id` int(11) NOT NULL,
  `type_name` varchar(79) NOT NULL,
  `damage_type_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `types`
--

INSERT INTO `types` (`type_id`, `type_name`, `damage_type_id`) VALUES
(1, 'normal', 1),
(2, 'fighting', 2),
(3, 'flying', 3),
(4, 'poison', 4),
(5, 'ground', 5),
(6, 'rock', 6),
(7, 'bug', 7),
(8, 'ghost', 8),
(9, 'steel', 9),
(10, 'fire', 10),
(11, 'water', 11),
(12, 'grass', 12),
(13, 'electric', 13),
(14, 'psychic', 14),
(15, 'ice', 15),
(16, 'dragon', 16),
(17, 'dark', 17),
(18, 'fairy', 18),
(10001, 'unknown', 1),
(10002, 'shadow', 2);

-- --------------------------------------------------------

--
-- Table structure for table `type_efficacy`
--

CREATE TABLE `type_efficacy` (
  `damage_type_id` int(11) NOT NULL,
  `target_type_id` int(11) NOT NULL,
  `damage_factor` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `type_efficacy`
--

INSERT INTO `type_efficacy` (`damage_type_id`, `target_type_id`, `damage_factor`) VALUES
(1, 1, 100),
(1, 2, 100),
(1, 3, 100),
(1, 4, 100),
(1, 5, 100),
(1, 6, 50),
(1, 7, 100),
(1, 8, 0),
(1, 9, 50),
(1, 10, 100),
(1, 11, 100),
(1, 12, 100),
(1, 13, 100),
(1, 14, 100),
(1, 15, 100),
(1, 16, 100),
(1, 17, 100),
(1, 18, 100),
(2, 1, 200),
(2, 2, 100),
(2, 3, 50),
(2, 4, 50),
(2, 5, 100),
(2, 6, 200),
(2, 7, 50),
(2, 8, 0),
(2, 9, 200),
(2, 10, 100),
(2, 11, 100),
(2, 12, 100),
(2, 13, 100),
(2, 14, 50),
(2, 15, 200),
(2, 16, 100),
(2, 17, 200),
(2, 18, 50),
(3, 1, 100),
(3, 2, 200),
(3, 3, 100),
(3, 4, 100),
(3, 5, 100),
(3, 6, 50),
(3, 7, 200),
(3, 8, 100),
(3, 9, 50),
(3, 10, 100),
(3, 11, 100),
(3, 12, 200),
(3, 13, 50),
(3, 14, 100),
(3, 15, 100),
(3, 16, 100),
(3, 17, 100),
(3, 18, 100),
(4, 1, 100),
(4, 2, 100),
(4, 3, 100),
(4, 4, 50),
(4, 5, 50),
(4, 6, 50),
(4, 7, 100),
(4, 8, 50),
(4, 9, 0),
(4, 10, 100),
(4, 11, 100),
(4, 12, 200),
(4, 13, 100),
(4, 14, 100),
(4, 15, 100),
(4, 16, 100),
(4, 17, 100),
(4, 18, 200),
(5, 1, 100),
(5, 2, 100),
(5, 3, 0),
(5, 4, 200),
(5, 5, 100),
(5, 6, 200),
(5, 7, 50),
(5, 8, 100),
(5, 9, 200),
(5, 10, 200),
(5, 11, 100),
(5, 12, 50),
(5, 13, 200),
(5, 14, 100),
(5, 15, 100),
(5, 16, 100),
(5, 17, 100),
(5, 18, 100),
(6, 1, 100),
(6, 2, 50),
(6, 3, 200),
(6, 4, 100),
(6, 5, 50),
(6, 6, 100),
(6, 7, 200),
(6, 8, 100),
(6, 9, 50),
(6, 10, 200),
(6, 11, 100),
(6, 12, 100),
(6, 13, 100),
(6, 14, 100),
(6, 15, 200),
(6, 16, 100),
(6, 17, 100),
(6, 18, 100),
(7, 1, 100),
(7, 2, 50),
(7, 3, 50),
(7, 4, 50),
(7, 5, 100),
(7, 6, 100),
(7, 7, 100),
(7, 8, 50),
(7, 9, 50),
(7, 10, 50),
(7, 11, 100),
(7, 12, 200),
(7, 13, 100),
(7, 14, 200),
(7, 15, 100),
(7, 16, 100),
(7, 17, 200),
(7, 18, 50),
(8, 1, 0),
(8, 2, 100),
(8, 3, 100),
(8, 4, 100),
(8, 5, 100),
(8, 6, 100),
(8, 7, 100),
(8, 8, 200),
(8, 9, 100),
(8, 10, 100),
(8, 11, 100),
(8, 12, 100),
(8, 13, 100),
(8, 14, 200),
(8, 15, 100),
(8, 16, 100),
(8, 17, 50),
(8, 18, 100),
(9, 1, 100),
(9, 2, 100),
(9, 3, 100),
(9, 4, 100),
(9, 5, 100),
(9, 6, 200),
(9, 7, 100),
(9, 8, 100),
(9, 9, 50),
(9, 10, 50),
(9, 11, 50),
(9, 12, 100),
(9, 13, 50),
(9, 14, 100),
(9, 15, 200),
(9, 16, 100),
(9, 17, 100),
(9, 18, 200),
(10, 1, 100),
(10, 2, 100),
(10, 3, 100),
(10, 4, 100),
(10, 5, 100),
(10, 6, 50),
(10, 7, 200),
(10, 8, 100),
(10, 9, 200),
(10, 10, 50),
(10, 11, 50),
(10, 12, 200),
(10, 13, 100),
(10, 14, 100),
(10, 15, 200),
(10, 16, 50),
(10, 17, 100),
(10, 18, 100),
(11, 1, 100),
(11, 2, 100),
(11, 3, 100),
(11, 4, 100),
(11, 5, 200),
(11, 6, 200),
(11, 7, 100),
(11, 8, 100),
(11, 9, 100),
(11, 10, 200),
(11, 11, 50),
(11, 12, 50),
(11, 13, 100),
(11, 14, 100),
(11, 15, 100),
(11, 16, 50),
(11, 17, 100),
(11, 18, 100),
(12, 1, 100),
(12, 2, 100),
(12, 3, 50),
(12, 4, 50),
(12, 5, 200),
(12, 6, 200),
(12, 7, 50),
(12, 8, 100),
(12, 9, 50),
(12, 10, 50),
(12, 11, 200),
(12, 12, 50),
(12, 13, 100),
(12, 14, 100),
(12, 15, 100),
(12, 16, 50),
(12, 17, 100),
(12, 18, 100),
(13, 1, 100),
(13, 2, 100),
(13, 3, 200),
(13, 4, 100),
(13, 5, 0),
(13, 6, 100),
(13, 7, 100),
(13, 8, 100),
(13, 9, 100),
(13, 10, 100),
(13, 11, 200),
(13, 12, 50),
(13, 13, 50),
(13, 14, 100),
(13, 15, 100),
(13, 16, 50),
(13, 17, 100),
(13, 18, 100),
(14, 1, 100),
(14, 2, 200),
(14, 3, 100),
(14, 4, 200),
(14, 5, 100),
(14, 6, 100),
(14, 7, 100),
(14, 8, 100),
(14, 9, 50),
(14, 10, 100),
(14, 11, 100),
(14, 12, 100),
(14, 13, 100),
(14, 14, 50),
(14, 15, 100),
(14, 16, 100),
(14, 17, 0),
(14, 18, 100),
(15, 1, 100),
(15, 2, 100),
(15, 3, 200),
(15, 4, 100),
(15, 5, 200),
(15, 6, 100),
(15, 7, 100),
(15, 8, 100),
(15, 9, 50),
(15, 10, 50),
(15, 11, 50),
(15, 12, 200),
(15, 13, 100),
(15, 14, 100),
(15, 15, 50),
(15, 16, 200),
(15, 17, 100),
(15, 18, 100),
(16, 1, 100),
(16, 2, 100),
(16, 3, 100),
(16, 4, 100),
(16, 5, 100),
(16, 6, 100),
(16, 7, 100),
(16, 8, 100),
(16, 9, 50),
(16, 10, 100),
(16, 11, 100),
(16, 12, 100),
(16, 13, 100),
(16, 14, 100),
(16, 15, 100),
(16, 16, 200),
(16, 17, 100),
(16, 18, 0),
(17, 1, 100),
(17, 2, 50),
(17, 3, 100),
(17, 4, 100),
(17, 5, 100),
(17, 6, 100),
(17, 7, 100),
(17, 8, 200),
(17, 9, 100),
(17, 10, 100),
(17, 11, 100),
(17, 12, 100),
(17, 13, 100),
(17, 14, 200),
(17, 15, 100),
(17, 16, 100),
(17, 17, 50),
(17, 18, 50),
(18, 1, 100),
(18, 2, 200),
(18, 3, 100),
(18, 4, 50),
(18, 5, 100),
(18, 6, 100),
(18, 7, 100),
(18, 8, 100),
(18, 9, 50),
(18, 10, 50),
(18, 11, 100),
(18, 12, 100),
(18, 13, 100),
(18, 14, 100),
(18, 15, 100),
(18, 16, 200),
(18, 17, 200),
(18, 18, 100);

-- --------------------------------------------------------

--
-- Structure for view `att_def_hp`
--
DROP TABLE IF EXISTS `att_def_hp`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `att_def_hp`  AS SELECT 1 AS `pok_id`, 1 AS `pok_name`, 1 AS `b_atk`, 1 AS `b_def`, 1 AS `b_hp`, 1 AS `b_speed`, 1 AS `b_sp_atk`, 1 AS `b_sp_def` ;

-- --------------------------------------------------------

--
-- Structure for view `habitat_view`
--
DROP TABLE IF EXISTS `habitat_view`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `habitat_view`  AS SELECT 1 AS `pok_id`, 1 AS `pok_name`, 1 AS `hab_name`, 1 AS `pok_height`, 1 AS `pok_weight`, 1 AS `capture_rate`, 1 AS `base_happiness` ;

-- --------------------------------------------------------

--
-- Structure for view `pokemon_total`
--
DROP TABLE IF EXISTS `pokemon_total`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `pokemon_total`  AS SELECT `pokemon`.`pok_id` AS `pok_id`, `pokemon`.`pok_name` AS `pok_name`, `base_stats`.`b_atk` AS `b_atk`, `base_stats`.`b_def` AS `b_def`, `base_stats`.`b_hp` AS `b_hp`, `base_stats`.`b_speed` AS `b_speed`, `base_stats`.`b_sp_atk` AS `b_sp_atk`, `base_stats`.`b_sp_def` AS `b_sp_def`, sum(`base_stats`.`b_atk` + `base_stats`.`b_def` + `base_stats`.`b_hp` + `base_stats`.`b_speed` + `base_stats`.`b_sp_atk` + `base_stats`.`b_sp_def`) AS `total` FROM (`pokemon` join `base_stats` on(`pokemon`.`pok_id` = `base_stats`.`pok_id`)) GROUP BY `pokemon`.`pok_id` ;

-- --------------------------------------------------------

--
-- Structure for view `pok_abilities`
--
DROP TABLE IF EXISTS `pok_abilities`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `pok_abilities`  AS SELECT 1 AS `pok_id`, 1 AS `pok_name`, 1 AS `abil_name`, 1 AS `is_hidden`, 1 AS `pok_base_experience` ;

-- --------------------------------------------------------

--
-- Structure for view `top_10_view`
--
DROP TABLE IF EXISTS `top_10_view`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `top_10_view`  AS SELECT `pokemon`.`pok_id` AS `pok_id`, `pokemon`.`pok_name` AS `pok_name`, `base_stats`.`b_atk` AS `b_atk`, `base_stats`.`b_def` AS `b_def`, `base_stats`.`b_hp` AS `b_hp`, `base_stats`.`b_speed` AS `b_speed`, `base_stats`.`b_sp_atk` AS `b_sp_atk`, `base_stats`.`b_sp_def` AS `b_sp_def`, sum(`base_stats`.`b_atk` + `base_stats`.`b_def` + `base_stats`.`b_hp` + `base_stats`.`b_speed` + `base_stats`.`b_sp_atk` + `base_stats`.`b_sp_def`) AS `TOTAL` FROM (`pokemon` join `base_stats` on(`pokemon`.`pok_id` <> 0)) WHERE `pokemon`.`pok_id` = `base_stats`.`pok_id` GROUP BY `pokemon`.`pok_id` ORDER BY sum(`base_stats`.`b_atk` + `base_stats`.`b_def` + `base_stats`.`b_hp` + `base_stats`.`b_speed` + `base_stats`.`b_sp_atk` + `base_stats`.`b_sp_def`) DESC LIMIT 0, 10 ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `base_stats`
--
ALTER TABLE `base_stats`
  ADD PRIMARY KEY (`pok_id`);

--
-- Indexes for table `pokemon`
--
ALTER TABLE `pokemon`
  ADD PRIMARY KEY (`pok_id`);

--
-- Indexes for table `pokemon_types`
--
ALTER TABLE `pokemon_types`
  ADD PRIMARY KEY (`pok_id`,`slot`),
  ADD KEY `type_id` (`type_id`);

--
-- Indexes for table `types`
--
ALTER TABLE `types`
  ADD PRIMARY KEY (`type_id`),
  ADD KEY `damage_type_idx` (`damage_type_id`);

--
-- Indexes for table `type_efficacy`
--
ALTER TABLE `type_efficacy`
  ADD PRIMARY KEY (`damage_type_id`,`target_type_id`),
  ADD KEY `target_type_id` (`target_type_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pokemon`
--
ALTER TABLE `pokemon`
  MODIFY `pok_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=724;

--
-- AUTO_INCREMENT for table `types`
--
ALTER TABLE `types`
  MODIFY `type_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10003;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `base_stats`
--
ALTER TABLE `base_stats`
  ADD CONSTRAINT `pok_id` FOREIGN KEY (`pok_id`) REFERENCES `pokemon` (`pok_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `pokemon_types`
--
ALTER TABLE `pokemon_types`
  ADD CONSTRAINT `pokemon_types_ibfk_1` FOREIGN KEY (`pok_id`) REFERENCES `pokemon` (`pok_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `pokemon_types_ibfk_2` FOREIGN KEY (`type_id`) REFERENCES `types` (`type_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `types`
--
ALTER TABLE `types`
  ADD CONSTRAINT `damage_type` FOREIGN KEY (`damage_type_id`) REFERENCES `type_efficacy` (`damage_type_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
