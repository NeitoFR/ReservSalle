-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: db
-- Generation Time: Aug 30, 2019 at 07:17 AM
-- Server version: 10.4.7-MariaDB-1:10.4.7+maria~bionic
-- PHP Version: 7.2.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `TP_JavaEE`
--

-- --------------------------------------------------------

DROP TABLE IF EXISTS FORMATEURS, CLASSES, SALLES, FORMATIONS;

--
-- Table structure for table `CLASSES`
--

CREATE TABLE `CLASSES` (
  `id_Classe` int(11) NOT NULL,
  `nb_Etudiant` int(11) DEFAULT NULL,
  `nom_Classe` varchar(255) COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `CLASSES`
--

INSERT INTO `CLASSES` (`id_Classe`, `nb_Etudiant`, `nom_Classe`) VALUES
(1, 25, 'MSIA17'),
(2, 30, 'GMSIA17'),
(3, 36, 'MSIA18'),
(4, 15, 'MSICP19'),
(5, 26, 'EXIA');

-- --------------------------------------------------------

--
-- Table structure for table `FORMATEURS`
--

CREATE TABLE `FORMATEURS` (
  `id_Formateur` int(11) NOT NULL,
  `mail` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `nom` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `tel` varchar(255) COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `FORMATEURS`
--

INSERT INTO `FORMATEURS` (`id_Formateur`, `mail`, `nom`, `tel`) VALUES
(1, 'a@f.d', 'Jean', '852963741'),
(2, 'p@f.fr', 'Pierre', '0603055463'),
(3, 'v@fd.d', 'Papin', '071847633');

-- --------------------------------------------------------

--
-- Table structure for table `FORMATIONS`
--

CREATE TABLE `FORMATIONS` (
  `id_Formation` int(11) NOT NULL,
  `date_Debut` date DEFAULT NULL,
  `nb_DemiJournees` int(11) DEFAULT NULL,
  `nom_Formation` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `id_Classe` int(11) DEFAULT NULL,
  `id_Formateur` int(11) DEFAULT NULL,
  `id_Salle` int(11) DEFAULT NULL,
  `is_ApresMidi` bit(1) DEFAULT b'0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `FORMATIONS`
--

INSERT INTO `FORMATIONS` (`id_Formation`, `date_Debut`, `nb_DemiJournees`, `nom_Formation`, `id_Classe`, `id_Formateur`, `id_Salle`, `is_ApresMidi`) VALUES
(1, '2019-08-28', 6, 'JaveEE', 1, 2, 4, b'0'),
(2, '2019-09-02', 4, 'NodeJS', 2, 2, 2, b'0'),
(3, '2019-09-17', 3, 'Securite', 5, 3, 2, b'1');

-- --------------------------------------------------------

--
-- Table structure for table `SALLES`
--

CREATE TABLE `SALLES` (
  `id_Salle` int(11) NOT NULL,
  `nb_Salle` int(11) DEFAULT NULL,
  `nom_Salle` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `num_Salle` int(11) DEFAULT NULL,
  `type` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `SALLES`
--

INSERT INTO `SALLES` (`id_Salle`, `nb_Salle`, `nom_Salle`, `num_Salle`, `type`) VALUES
(1, 40, 'BRUXELLES', 101, 1),
(2, 65, 'PARIS', 205, 2),
(3, 0, 'METROPOLIS', 123, 4),
(4, 25, 'BERNE', 36, 3);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `CLASSES`
--
ALTER TABLE `CLASSES`
  ADD PRIMARY KEY (`id_Classe`);

--
-- Indexes for table `FORMATEURS`
--
ALTER TABLE `FORMATEURS`
  ADD PRIMARY KEY (`id_Formateur`);

--
-- Indexes for table `FORMATIONS`
--
ALTER TABLE `FORMATIONS`
  ADD PRIMARY KEY (`id_Formation`),
  ADD KEY `FKas360rci1ce5734fm88ereu8g` (`id_Classe`),
  ADD KEY `FKko91lihtxe6dn8306hcxjvtrv` (`id_Formateur`),
  ADD KEY `FK86esrt4wk3kjf5o6hqb74fi4t` (`id_Salle`);

--
-- Indexes for table `SALLES`
--
ALTER TABLE `SALLES`
  ADD PRIMARY KEY (`id_Salle`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `CLASSES`
--
ALTER TABLE `CLASSES`
  MODIFY `id_Classe` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `FORMATEURS`
--
ALTER TABLE `FORMATEURS`
  MODIFY `id_Formateur` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `FORMATIONS`
--
ALTER TABLE `FORMATIONS`
  MODIFY `id_Formation` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `SALLES`
--
ALTER TABLE `SALLES`
  MODIFY `id_Salle` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `FORMATIONS`
--
ALTER TABLE `FORMATIONS`
  ADD CONSTRAINT `FK86esrt4wk3kjf5o6hqb74fi4t` FOREIGN KEY (`id_Salle`) REFERENCES `SALLES` (`id_Salle`),
  ADD CONSTRAINT `FKas360rci1ce5734fm88ereu8g` FOREIGN KEY (`id_Classe`) REFERENCES `CLASSES` (`id_Classe`),
  ADD CONSTRAINT `FKko91lihtxe6dn8306hcxjvtrv` FOREIGN KEY (`id_Formateur`) REFERENCES `FORMATEURS` (`id_Formateur`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
