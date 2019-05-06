-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3307
-- Généré le :  lun. 06 mai 2019 à 08:36
-- Version du serveur :  10.3.12-MariaDB
-- Version de PHP :  7.2.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `mydb`
--

-- --------------------------------------------------------

--
-- Structure de la table `book`
--

DROP TABLE IF EXISTS `book`;
CREATE TABLE IF NOT EXISTS `book` (
  `id` int(11) NOT NULL,
  `available` bit(1) NOT NULL,
  `barcode` varchar(255) DEFAULT NULL,
  `workId` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `book`
--

INSERT INTO `book` (`id`, `available`, `barcode`, `workId`) VALUES
(1, b'0', '1111', 1),
(2, b'0', '1112', 1),
(3, b'0', '1211', 2),
(4, b'0', '2111', 2),
(5, b'0', '1113', 3),
(16, b'1', '1113', 3),
(6, b'0', '1131', 4),
(7, b'1', '1311', 2),
(8, b'1', '3111', 1),
(9, b'0', '1114', 4),
(10, b'0', '1141', 4),
(11, b'1', '1444', 3),
(12, b'1', '4111', 2),
(13, b'1', '1132', 2),
(14, b'1', '1321', 3),
(15, b'1', '1322', 1);

-- --------------------------------------------------------

--
-- Structure de la table `borrow`
--

DROP TABLE IF EXISTS `borrow`;
CREATE TABLE IF NOT EXISTS `borrow` (
  `id` int(11) NOT NULL,
  `endBorrowDate` date DEFAULT NULL,
  `extended` bit(1) NOT NULL,
  `startBorrowDate` date DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `book_id` int(11) DEFAULT NULL,
  `userBorrowingId` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKgqh01ty3c1u7ja2rjdua05c36` (`book_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `borrow`
--

INSERT INTO `borrow` (`id`, `endBorrowDate`, `extended`, `startBorrowDate`, `status`, `book_id`, `userBorrowingId`) VALUES
(1, '2019-01-22', b'0', '2019-01-22', 'TERMINE', 1, 1),
(2, '2019-02-06', b'1', '2019-01-27', 'TERMINE', 1, 1),
(3, '2019-02-07', b'1', '2019-01-27', 'TERMINE', 2, 1),
(4, '2019-02-06', b'1', '2019-01-27', 'TERMINE', 2, 1),
(5, '2019-02-06', b'1', '2019-01-27', 'TERMINE', 1, 1),
(6, '2019-02-06', b'1', '2019-01-31', 'TERMINE', 1, 1),
(7, '2019-02-07', b'1', '2019-02-05', 'TERMINE', 3, 1),
(8, '2019-02-07', b'0', '2019-02-07', 'TERMINE', 5, 1),
(9, '2019-02-07', b'1', '2019-02-07', 'TERMINE', 8, 1),
(10, '2019-02-07', b'1', '2019-02-07', 'TERMINE', 16, 1),
(11, '2019-02-07', b'0', '2019-02-07', 'TERMINE', 6, 1),
(12, '2019-02-11', b'1', '2019-02-07', 'TERMINE', 15, 1),
(13, '2019-02-11', b'1', '2019-02-07', 'TERMINE', 9, 1),
(14, '2019-02-11', b'1', '2019-02-07', 'TERMINE', 7, 1),
(15, '2019-02-11', b'0', '2019-02-08', 'TERMINE', 10, 1),
(16, '2019-02-11', b'0', '2019-02-08', 'TERMINE', 12, 1),
(17, '2019-02-11', b'0', '2019-02-11', 'TERMINE', 11, 1),
(18, '2019-02-11', b'0', '2019-02-11', 'TERMINE', 13, 1),
(19, '2019-02-11', b'0', '2019-02-11', 'TERMINE', 1, 1),
(20, '2019-02-11', b'0', '2019-02-11', 'TERMINE', 3, 1),
(21, '2019-02-11', b'1', '2019-02-11', 'TERMINE', 1, 1),
(22, '2019-02-11', b'1', '2019-02-11', 'TERMINE', 6, 1),
(23, '2019-02-11', b'0', '2019-02-11', 'TERMINE', 5, 1),
(24, '2019-02-11', b'1', '2019-02-11', 'TERMINE', 2, 1),
(25, '2019-02-11', b'1', '2019-02-11', 'TERMINE', 1, 1),
(26, '2019-02-11', b'1', '2019-02-11', 'TERMINE', 3, 1),
(27, '2019-02-11', b'1', '2019-02-11', 'TERMINE', 5, 1),
(28, '2019-02-11', b'0', '2019-02-11', 'TERMINE', 1, 1),
(29, '2019-02-11', b'1', '2019-02-11', 'TERMINE', 6, 1),
(30, '2019-02-11', b'1', '2019-02-11', 'TERMINE', 8, 1),
(31, '2019-02-11', b'1', '2019-02-11', 'TERMINE', 9, 1),
(32, '2019-02-11', b'1', '2019-02-11', 'TERMINE', 1, 1),
(33, '2019-02-11', b'1', '2019-02-11', 'TERMINE', 5, 1),
(34, '2019-02-11', b'1', '2019-02-11', 'TERMINE', 15, 1),
(35, '2019-02-11', b'1', '2019-02-11', 'TERMINE', 16, 1),
(36, '2019-02-11', b'1', '2019-02-11', 'TERMINE', 3, 1),
(37, '2019-02-11', b'1', '2019-02-11', 'TERMINE', 4, 1),
(38, '2019-02-11', b'1', '2019-02-11', 'TERMINE', 6, 1),
(39, '2019-02-11', b'1', '2019-02-11', 'TERMINE', 3, 1),
(40, '2019-02-11', b'1', '2019-02-11', 'TERMINE', 6, 1),
(41, '2019-02-11', b'1', '2019-02-11', 'TERMINE', 4, 1),
(42, '2019-02-11', b'1', '2019-02-11', 'TERMINE', 1, 1),
(43, '2019-02-12', b'1', '2019-02-11', 'TERMINE', 9, 1),
(44, '2019-02-11', b'1', '2019-02-11', 'TERMINE', 5, 1),
(45, '2019-02-12', b'1', '2019-02-11', 'TERMINE', 7, 1),
(46, '2019-02-11', b'1', '2019-02-11', 'TERMINE', 10, 1),
(47, '2019-02-12', b'1', '2019-02-11', 'TERMINE', 5, 1),
(48, '2019-02-12', b'1', '2019-02-12', 'TERMINE', 1, 1),
(49, '2019-02-12', b'1', '2019-02-12', 'TERMINE', 3, 1),
(50, '2019-02-12', b'1', '2019-02-12', 'TERMINE', 1, 1),
(51, '2019-02-12', b'1', '2019-02-12', 'TERMINE', 6, 1),
(52, '2019-02-12', b'1', '2019-02-12', 'TERMINE', 1, 1),
(53, '2019-02-12', b'1', '2019-02-12', 'TERMINE', 2, 1),
(54, '2019-02-12', b'1', '2019-02-12', 'TERMINE', 5, 1),
(55, '2019-02-12', b'1', '2019-02-12', 'TERMINE', 8, 1),
(56, '2019-02-12', b'1', '2019-02-12', 'TERMINE', 4, 1),
(57, '2019-02-12', b'1', '2019-02-12', 'TERMINE', 1, 1),
(58, '2019-02-12', b'1', '2019-02-12', 'TERMINE', 2, 1),
(59, '2019-02-12', b'1', '2019-02-12', 'TERMINE', 7, 1),
(60, '2019-02-12', b'1', '2019-02-12', 'TERMINE', 15, 1),
(61, '2019-02-12', b'1', '2019-02-12', 'TERMINE', 16, 1),
(62, '2019-02-12', b'1', '2019-02-12', 'TERMINE', 2, 1),
(63, '2019-02-12', b'1', '2019-02-12', 'TERMINE', 11, 1),
(64, '2019-02-12', b'0', '2019-02-12', 'TERMINE', 6, 1),
(65, '2019-02-12', b'0', '2019-02-12', 'TERMINE', 9, 1),
(66, '2019-02-12', b'1', '2019-02-12', 'TERMINE', 2, 1),
(67, '2019-02-12', b'1', '2019-02-12', 'TERMINE', 5, 1),
(68, '2019-02-12', b'0', '2019-02-12', 'TERMINE', 16, 1),
(69, '2019-02-12', b'0', '2019-02-12', 'TERMINE', 11, 1),
(70, '2019-02-12', b'0', '2019-02-12', 'TERMINE', 14, 1),
(71, '2019-02-12', b'0', '2019-02-12', 'TERMINE', 2, 1),
(72, '2019-02-12', b'0', '2019-02-12', 'TERMINE', 8, 1),
(73, '2019-02-12', b'0', '2019-02-12', 'TERMINE', 15, 1),
(74, '2019-02-12', b'0', '2019-02-12', 'TERMINE', 3, 1),
(75, '2019-02-12', b'0', '2019-02-12', 'TERMINE', 15, 1),
(76, '2019-02-13', b'1', '2019-02-12', 'TERMINE', 1, 1),
(77, '2019-02-12', b'0', '2019-02-12', 'TERMINE', 3, 1),
(78, '2019-02-13', b'1', '2019-02-12', 'TERMINE', 4, 1),
(79, '2019-02-12', b'1', '2019-02-12', 'TERMINE', 7, 1),
(80, '2019-02-12', b'1', '2019-02-12', 'TERMINE', 6, 1),
(81, '2019-02-13', b'1', '2019-02-12', 'TERMINE', 5, 1),
(82, '2019-02-13', b'1', '2019-02-12', 'TERMINE', 16, 6),
(83, '2019-02-12', b'0', '2019-02-12', 'TERMINE', 9, 6),
(84, '2019-02-12', b'0', '2019-02-12', 'TERMINE', 2, 6),
(85, '2019-02-12', b'0', '2019-02-12', 'TERMINE', 11, 1),
(86, '2019-02-13', b'1', '2019-02-12', 'TERMINE', 2, 1),
(87, '2019-02-13', b'1', '2019-02-12', 'TERMINE', 11, 1),
(88, '2019-02-13', b'1', '2019-02-13', 'TERMINE', 8, 1),
(89, '2019-02-13', b'1', '2019-02-13', 'TERMINE', 15, 1),
(90, '2019-02-13', b'1', '2019-02-13', 'TERMINE', 3, 1),
(91, '2019-02-13', b'1', '2019-02-13', 'TERMINE', 6, 1),
(92, '2019-02-13', b'1', '2019-02-13', 'TERMINE', 7, 1),
(93, '2019-02-13', b'1', '2019-02-13', 'TERMINE', 12, 1),
(94, '2019-02-13', b'1', '2019-02-13', 'TERMINE', 5, 1),
(95, '2019-02-13', b'1', '2019-02-13', 'TERMINE', 1, 1),
(96, '2019-02-13', b'1', '2019-02-13', 'TERMINE', 11, 1),
(97, '2019-02-13', b'1', '2019-02-13', 'TERMINE', 2, 1),
(98, '2019-02-13', b'1', '2019-02-13', 'TERMINE', 8, 1),
(99, '2019-02-13', b'1', '2019-02-13', 'TERMINE', 3, 1),
(100, '2019-02-13', b'0', '2019-02-13', 'TERMINE', 4, 1),
(101, '2019-02-13', b'0', '2019-02-13', 'TERMINE', 4, 1),
(102, '2019-02-13', b'0', '2019-02-13', 'TERMINE', 8, 1),
(103, '2019-02-13', b'1', '2019-02-13', 'TERMINE', 14, 1),
(104, '2019-02-13', b'1', '2019-02-13', 'TERMINE', 4, 1),
(105, '2019-02-13', b'1', '2019-02-13', 'TERMINE', 1, 1),
(106, '2019-02-13', b'1', '2019-02-13', 'TERMINE', 3, 1),
(107, '2019-02-13', b'1', '2019-02-13', 'TERMINE', 3, 1),
(108, '2019-02-13', b'1', '2019-02-13', 'TERMINE', 3, 1),
(109, '2019-02-13', b'1', '2019-02-13', 'TERMINE', 6, 1),
(110, '2019-02-13', b'1', '2019-02-13', 'TERMINE', 3, 1),
(111, '2019-02-13', b'0', '2019-02-13', 'TERMINE', 5, 1),
(112, '2019-02-13', b'1', '2019-02-13', 'TERMINE', 6, 1),
(113, '2019-02-13', b'0', '2019-02-13', 'TERMINE', 5, 1),
(114, '2019-02-13', b'1', '2019-02-13', 'TERMINE', 3, 1),
(115, '2019-02-13', b'1', '2019-02-13', 'TERMINE', 3, 1),
(116, '2019-02-13', b'0', '2019-02-13', 'TERMINE', 5, 6),
(117, '2019-02-13', b'0', '2019-02-13', 'TERMINE', 16, 6),
(118, '2019-02-13', b'1', '2019-02-13', 'TERMINE', 6, 1),
(119, '2019-02-13', b'0', '2019-02-13', 'TERMINE', 3, 1),
(120, '2019-02-13', b'1', '2019-02-13', 'TERMINE', 11, 1),
(123, '2019-03-28', b'1', '2019-02-13', 'TERMINE', 5, 1),
(121, '2019-02-13', b'0', '2019-02-13', 'TERMINE', 1, 1),
(122, '2019-02-13', b'0', '2019-02-13', 'TERMINE', 14, 1),
(124, '2019-02-14', b'0', '2019-02-14', 'TERMINE', 1, 1),
(125, '2019-02-14', b'1', '2019-02-14', 'TERMINE', 6, 1),
(126, '2019-02-18', b'1', '2019-02-14', 'TERMINE', 3, 1),
(127, '2019-02-14', b'1', '2019-02-14', 'TERMINE', 2, 6),
(128, '2019-02-15', b'1', '2019-02-14', 'TERMINE', 4, 6),
(129, '2019-02-14', b'1', '2019-02-14', 'TERMINE', 16, 6),
(130, '2019-02-14', b'0', '2019-02-14', 'TERMINE', 7, 6),
(131, '2019-02-15', b'1', '2019-02-14', 'TERMINE', 11, 6),
(132, '2019-02-19', b'0', '2019-02-14', 'TERMINE', 16, 1),
(133, '2019-02-19', b'1', '2019-02-15', 'TERMINE', 4, 6),
(134, '2019-03-28', b'0', '2019-02-18', 'TERMINE', 6, 1),
(135, '2019-02-18', b'0', '2019-02-18', 'TERMINE', 11, 1),
(136, '2019-02-18', b'0', '2019-02-18', 'TERMINE', 9, 5),
(137, '2019-02-18', b'0', '2019-02-18', 'TERMINE', 1, 5),
(138, '2019-02-18', b'0', '2019-02-18', 'TERMINE', 14, 5),
(139, '2019-03-28', b'0', '2019-02-19', 'TERMINE', 3, 1),
(140, '2019-03-14', b'0', '2019-03-14', 'TERMINE', 1, 1),
(141, '2019-03-28', b'0', '2019-03-14', 'TERMINE', 1, 1),
(142, '2019-03-19', b'0', '2019-03-19', 'TERMINE', 2, 6),
(143, NULL, b'1', '2019-01-28', 'EXTENDED', 1, 1),
(144, NULL, b'0', '2019-02-25', 'ENCOURS', 6, 1),
(145, NULL, b'1', '2019-02-15', 'EXTENDED', 3, 1),
(146, NULL, b'1', '2019-03-28', 'EXTENDED', 2, 5),
(147, NULL, b'0', '2019-02-08', 'ENCOURS', 5, 5),
(148, NULL, b'0', '2019-03-28', 'ENCOURS', 4, 6),
(149, NULL, b'1', '2019-01-05', 'EXTENDED', 9, 6),
(150, NULL, b'0', '2019-04-04', 'ENCOURS', 10, 1);

-- --------------------------------------------------------

--
-- Structure de la table `library`
--

DROP TABLE IF EXISTS `library`;
CREATE TABLE IF NOT EXISTS `library` (
  `id` int(11) NOT NULL,
  `address` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `library`
--

INSERT INTO `library` (`id`, `address`, `city`, `name`) VALUES
(1, '16 rue du paradis', 'bordeaux', 'bibliotheca universalis'),
(2, '16 rue victor louis', 'le graillan de buch médoc', 'universita biliotheca');

-- --------------------------------------------------------

--
-- Structure de la table `member`
--

DROP TABLE IF EXISTS `member`;
CREATE TABLE IF NOT EXISTS `member` (
  `address` varchar(255) DEFAULT NULL,
  `birthdate` datetime DEFAULT NULL,
  `emailadress` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `profilePicture` varchar(255) DEFAULT NULL,
  `id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `member`
--

INSERT INTO `member` (`address`, `birthdate`, `emailadress`, `name`, `profilePicture`, `id`) VALUES
('19 rue du paradis 123456', '2017-01-10 12:17:11', 'paul.carino@gmail.com', 'paul carino', 'http://mysite.local:81/carino.jpg', 1),
('16 rue victor louis', '2000-01-01 10:08:33', 'ruthrouthe@gmail.com', 'ruth route', 'http://mysite.local:81/root.jpg', 6),
('34 rue seize dinars', '1976-12-21 10:08:33', 'salarsamy@gmail.com', 'rootayasamy rootsalar', 'http://mysite.local:81/rootroot.png', 5),
('12 allée des treize couturiers de valence 12500 Espalion ', '1987-04-21 15:08:33', 'administrrativementvotre@gmail.com', 'hadbeen adminette', 'http://mysite.local:81/admin.png', 4);

-- --------------------------------------------------------

--
-- Structure de la table `seq_book`
--

DROP TABLE IF EXISTS `seq_book`;
CREATE TABLE IF NOT EXISTS `seq_book` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `seq_book`
--

INSERT INTO `seq_book` (`next_val`) VALUES
(1);

-- --------------------------------------------------------

--
-- Structure de la table `seq_borrow`
--

DROP TABLE IF EXISTS `seq_borrow`;
CREATE TABLE IF NOT EXISTS `seq_borrow` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `seq_borrow`
--

INSERT INTO `seq_borrow` (`next_val`) VALUES
(151);

-- --------------------------------------------------------

--
-- Structure de la table `seq_library`
--

DROP TABLE IF EXISTS `seq_library`;
CREATE TABLE IF NOT EXISTS `seq_library` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `seq_library`
--

INSERT INTO `seq_library` (`next_val`) VALUES
(1);

-- --------------------------------------------------------

--
-- Structure de la table `seq_user`
--

DROP TABLE IF EXISTS `seq_user`;
CREATE TABLE IF NOT EXISTS `seq_user` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `seq_user`
--

INSERT INTO `seq_user` (`next_val`) VALUES
(1);

-- --------------------------------------------------------

--
-- Structure de la table `seq_work`
--

DROP TABLE IF EXISTS `seq_work`;
CREATE TABLE IF NOT EXISTS `seq_work` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `seq_work`
--

INSERT INTO `seq_work` (`next_val`) VALUES
(1);

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `id` int(11) NOT NULL,
  `password` varchar(255) DEFAULT NULL,
  `userName` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `user`
--

INSERT INTO `user` (`id`, `password`, `userName`) VALUES
(1, 'pass1', 'carino'),
(2, 'modep', 'util'),
(3, 'password', 'user'),
(4, 'password', 'admin'),
(5, 'rootroot', 'rootroot'),
(6, 'root', 'root');

-- --------------------------------------------------------

--
-- Structure de la table `user_borrow`
--

DROP TABLE IF EXISTS `user_borrow`;
CREATE TABLE IF NOT EXISTS `user_borrow` (
  `User_id` int(11) NOT NULL,
  `borrow_id` int(11) NOT NULL,
  UNIQUE KEY `UK_qb1xaoryg0wnfe4881yawjk1c` (`borrow_id`),
  KEY `FKaei2tow543vtkqrq1kmhbbap3` (`User_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `user_borrow`
--

INSERT INTO `user_borrow` (`User_id`, `borrow_id`) VALUES
(1, 145),
(1, 143),
(1, 140),
(1, 135),
(1, 132),
(1, 125),
(1, 123),
(1, 121),
(1, 119),
(1, 115),
(1, 113),
(1, 111),
(1, 109),
(1, 107),
(1, 105),
(1, 103),
(1, 101),
(1, 99),
(1, 97),
(1, 95),
(1, 93),
(1, 91),
(1, 89),
(1, 87),
(1, 85),
(1, 80),
(1, 78),
(1, 76),
(1, 74),
(1, 72),
(1, 70),
(1, 68),
(1, 66),
(1, 64),
(1, 62),
(1, 60),
(1, 58),
(1, 56),
(1, 54),
(1, 52),
(1, 50),
(1, 48),
(1, 46),
(1, 44),
(1, 42),
(1, 40),
(1, 38),
(1, 35),
(1, 33),
(1, 31),
(1, 29),
(1, 27),
(1, 25),
(1, 23),
(1, 21),
(1, 19),
(1, 17),
(1, 15),
(1, 13),
(1, 11),
(1, 9),
(1, 7),
(1, 5),
(1, 3),
(1, 2),
(1, 4),
(1, 6),
(1, 8),
(1, 10),
(1, 12),
(1, 14),
(1, 16),
(1, 18),
(1, 20),
(1, 22),
(1, 24),
(1, 26),
(1, 28),
(1, 30),
(1, 32),
(6, 148),
(6, 133),
(6, 130),
(1, 34),
(1, 36),
(1, 37),
(1, 39),
(1, 41),
(1, 43),
(1, 45),
(1, 47),
(1, 49),
(1, 51),
(1, 53),
(1, 55),
(1, 57),
(1, 59),
(1, 61),
(1, 63),
(1, 65),
(1, 67),
(1, 69),
(1, 71),
(1, 73),
(1, 75),
(1, 77),
(1, 79),
(1, 81),
(1, 86),
(1, 88),
(1, 90),
(1, 92),
(1, 94),
(1, 96),
(6, 128),
(6, 117),
(1, 98),
(1, 100),
(1, 102),
(1, 104),
(1, 106),
(1, 108),
(1, 110),
(1, 112),
(1, 114),
(6, 84),
(6, 82),
(6, 83),
(6, 116),
(6, 127),
(1, 118),
(6, 129),
(1, 120),
(1, 122),
(5, 146),
(5, 137),
(5, 136),
(1, 124),
(1, 126),
(1, 134),
(6, 131),
(1, 139),
(1, 141),
(1, 144),
(5, 138),
(5, 147),
(6, 142),
(6, 149),
(1, 150);

-- --------------------------------------------------------

--
-- Structure de la table `work`
--

DROP TABLE IF EXISTS `work`;
CREATE TABLE IF NOT EXISTS `work` (
  `id` int(11) NOT NULL,
  `author` varchar(255) DEFAULT NULL,
  `coverimageurl` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `publicationyear` int(11) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `library_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK9lneim6qjrs09jgnceg0juiy0` (`library_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `work`
--

INSERT INTO `work` (`id`, `author`, `coverimageurl`, `description`, `publicationyear`, `title`, `type`, `library_id`) VALUES
(1, 'yuan', 'http://mysite.local:81/noodles.jpg', 'something', 2013, 'noodles of the street', 'novel', 1),
(2, 'amina', 'http://mysite.local:81/couture.jpg', 'anything', 2009, 'coutures du sud', 'roman', 1),
(3, 'yuan', 'http://mysite.local:81/kitchen.jpg', 'Some book about martial cuisine', 2014, 'the art of kitchen-fu', 'manual', 1),
(4, 'amina', 'http://mysite.local:81/oils.jpg', 'documentary about the various oils of the world', 2016, 'a world of oils, cosmetic and gustative', 'documentary', 2);

-- --------------------------------------------------------

--
-- Structure de la table `work_book`
--

DROP TABLE IF EXISTS `work_book`;
CREATE TABLE IF NOT EXISTS `work_book` (
  `Work_id` int(11) NOT NULL,
  `book_id` int(11) NOT NULL,
  UNIQUE KEY `UK_a19yfbf0thpawoy247o1p5wks` (`book_id`),
  KEY `FKpfjykfiyisru6thvmn3b1x39t` (`Work_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `work_book`
--

INSERT INTO `work_book` (`Work_id`, `book_id`) VALUES
(1, 1),
(1, 2),
(2, 3),
(2, 4),
(3, 5),
(3, 16),
(4, 6),
(2, 7),
(1, 8),
(4, 9),
(4, 10),
(3, 11),
(2, 12),
(2, 13),
(3, 14),
(1, 15);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
