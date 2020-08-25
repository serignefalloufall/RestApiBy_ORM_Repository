-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Aug 26, 2020 at 12:05 AM
-- Server version: 10.4.13-MariaDB
-- PHP Version: 7.4.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bd_api_orm`
--

-- --------------------------------------------------------

--
-- Table structure for table `agence`
--

CREATE TABLE `agence` (
  `id` int(11) NOT NULL,
  `region_id` int(11) DEFAULT NULL,
  `nom` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `client`
--

CREATE TABLE `client` (
  `id` int(11) NOT NULL,
  `type_client_id` int(11) DEFAULT NULL,
  `employeur_id` int(11) DEFAULT NULL,
  `nom` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `prenom` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `adresse` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tel` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `profession` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `salaire` decimal(10,0) DEFAULT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `client`
--

INSERT INTO `client` (`id`, `type_client_id`, `employeur_id`, `nom`, `prenom`, `adresse`, `tel`, `email`, `profession`, `salaire`, `password`) VALUES
(1, 2, NULL, 'Fall', 'Serigne Fallou', 'Thies', '773452692', NULL, NULL, NULL, NULL),
(2, 2, NULL, 'Diop', 'Mouhamed', 'Dakar', '789076543', NULL, NULL, NULL, NULL),
(3, 2, NULL, 'Sow', 'Fama', 'Ndar', NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `compte`
--

CREATE TABLE `compte` (
  `id` int(11) NOT NULL,
  `client_id` int(11) DEFAULT NULL,
  `type_compte_id` int(11) DEFAULT NULL,
  `agence_id` int(11) DEFAULT NULL,
  `num_compte` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cle_rip` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `frais_ouverture` decimal(10,0) DEFAULT NULL,
  `agio` decimal(10,0) DEFAULT NULL,
  `date_ouverture` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date_fermuture` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `etat` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `solde` decimal(10,0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `compte`
--

INSERT INTO `compte` (`id`, `client_id`, `type_compte_id`, `agence_id`, `num_compte`, `cle_rip`, `frais_ouverture`, `agio`, `date_ouverture`, `date_fermuture`, `etat`, `solde`) VALUES
(1, 1, 1, NULL, '001', '001', '1000', '500', '30/01/2020', NULL, NULL, '10000'),
(2, 1, 2, NULL, '002', NULL, NULL, NULL, NULL, NULL, NULL, '20000'),
(3, 2, 2, NULL, '003', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(4, 3, 2, NULL, '004', NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `employeur`
--

CREATE TABLE `employeur` (
  `id` int(11) NOT NULL,
  `numIdentification` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `raisonSocial` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `nom_employeur` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `adresse_employeur` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `operation`
--

CREATE TABLE `operation` (
  `id` int(11) NOT NULL,
  `type_operation_id` int(11) DEFAULT NULL,
  `compte_id` int(11) DEFAULT NULL,
  `montant` decimal(10,0) NOT NULL,
  `date_operation` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `operation`
--

INSERT INTO `operation` (`id`, `type_operation_id`, `compte_id`, `montant`, `date_operation`) VALUES
(1, 1, 1, '5000', '24/02/2020'),
(2, 2, 2, '5000', '24/02/2020'),
(3, 1, 3, '50000', ''),
(4, 1, 4, '700000', '03/05/2019'),
(5, 1, 4, '50000', '02/03/2020'),
(6, 2, 4, '80000', '19/09/2019');

-- --------------------------------------------------------

--
-- Table structure for table `region`
--

CREATE TABLE `region` (
  `id` int(11) NOT NULL,
  `nom` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `region`
--

INSERT INTO `region` (`id`, `nom`) VALUES
(1, 'Thies'),
(2, 'Dakar');

-- --------------------------------------------------------

--
-- Table structure for table `typeclient`
--

CREATE TABLE `typeclient` (
  `id` int(11) NOT NULL,
  `libelle` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `typeclient`
--

INSERT INTO `typeclient` (`id`, `libelle`) VALUES
(1, 'Salarie'),
(2, 'Non salarie'),
(3, 'Entreprise');

-- --------------------------------------------------------

--
-- Table structure for table `typecompte`
--

CREATE TABLE `typecompte` (
  `id` int(11) NOT NULL,
  `libelle` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `typecompte`
--

INSERT INTO `typecompte` (`id`, `libelle`) VALUES
(1, 'Epargne'),
(2, 'Courant'),
(3, 'Bloque');

-- --------------------------------------------------------

--
-- Table structure for table `typeoperation`
--

CREATE TABLE `typeoperation` (
  `id` int(11) NOT NULL,
  `libelle` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `typeoperation`
--

INSERT INTO `typeoperation` (`id`, `libelle`) VALUES
(1, 'Depot'),
(2, 'Retrait');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `agence`
--
ALTER TABLE `agence`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_64C19AA998260155` (`region_id`);

--
-- Indexes for table `client`
--
ALTER TABLE `client`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_C7440455AD2D2831` (`type_client_id`),
  ADD KEY `IDX_C74404555D7C53EC` (`employeur_id`);

--
-- Indexes for table `compte`
--
ALTER TABLE `compte`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_CFF6526019EB6921` (`client_id`),
  ADD KEY `IDX_CFF6526046032730` (`type_compte_id`),
  ADD KEY `IDX_CFF65260D725330D` (`agence_id`);

--
-- Indexes for table `employeur`
--
ALTER TABLE `employeur`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `operation`
--
ALTER TABLE `operation`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_1981A66DC3EF8F86` (`type_operation_id`),
  ADD KEY `IDX_1981A66DF2C56620` (`compte_id`);

--
-- Indexes for table `region`
--
ALTER TABLE `region`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `typeclient`
--
ALTER TABLE `typeclient`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `typecompte`
--
ALTER TABLE `typecompte`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `typeoperation`
--
ALTER TABLE `typeoperation`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `agence`
--
ALTER TABLE `agence`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `client`
--
ALTER TABLE `client`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `compte`
--
ALTER TABLE `compte`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `employeur`
--
ALTER TABLE `employeur`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `operation`
--
ALTER TABLE `operation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `region`
--
ALTER TABLE `region`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `typeclient`
--
ALTER TABLE `typeclient`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `typecompte`
--
ALTER TABLE `typecompte`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `typeoperation`
--
ALTER TABLE `typeoperation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `agence`
--
ALTER TABLE `agence`
  ADD CONSTRAINT `FK_64C19AA998260155` FOREIGN KEY (`region_id`) REFERENCES `region` (`id`);

--
-- Constraints for table `client`
--
ALTER TABLE `client`
  ADD CONSTRAINT `FK_C74404555D7C53EC` FOREIGN KEY (`employeur_id`) REFERENCES `employeur` (`id`),
  ADD CONSTRAINT `FK_C7440455AD2D2831` FOREIGN KEY (`type_client_id`) REFERENCES `typeclient` (`id`);

--
-- Constraints for table `compte`
--
ALTER TABLE `compte`
  ADD CONSTRAINT `FK_CFF6526019EB6921` FOREIGN KEY (`client_id`) REFERENCES `client` (`id`),
  ADD CONSTRAINT `FK_CFF6526046032730` FOREIGN KEY (`type_compte_id`) REFERENCES `typecompte` (`id`),
  ADD CONSTRAINT `FK_CFF65260D725330D` FOREIGN KEY (`agence_id`) REFERENCES `agence` (`id`);

--
-- Constraints for table `operation`
--
ALTER TABLE `operation`
  ADD CONSTRAINT `FK_1981A66DC3EF8F86` FOREIGN KEY (`type_operation_id`) REFERENCES `typeoperation` (`id`),
  ADD CONSTRAINT `FK_1981A66DF2C56620` FOREIGN KEY (`compte_id`) REFERENCES `compte` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
