-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 25, 2023 at 11:39 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `salle_sport`
--

-- --------------------------------------------------------

--
-- Table structure for table `abonner`
--

CREATE TABLE `abonner` (
  `cin_clt` varchar(20) NOT NULL,
  `nom_act` varchar(50) NOT NULL,
  `typ_abn` varchar(50) DEFAULT NULL,
  `eta_abn` varchar(50) DEFAULT NULL,
  `mnt_abn` decimal(10,2) DEFAULT NULL,
  `der_pai` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `activity`
--

CREATE TABLE `activity` (
  `nom_act` varchar(50) NOT NULL,
  `nbr_snc_mts` int(11) DEFAULT NULL,
  `id_sal` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `appartient`
--

CREATE TABLE `appartient` (
  `id_cat` varchar(20) NOT NULL,
  `cod_eqp` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `article`
--

CREATE TABLE `article` (
  `cod_art` varchar(20) NOT NULL,
  `nom_art` varchar(50) DEFAULT NULL,
  `prx_unt_art` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id_cat` varchar(20) NOT NULL,
  `nom_cat` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `client`
--

CREATE TABLE `client` (
  `cin_clt` varchar(20) NOT NULL,
  `nom_clt` varchar(50) DEFAULT NULL,
  `pre_clt` varchar(50) DEFAULT NULL,
  `gen_clt` varchar(10) DEFAULT NULL,
  `tel_clt` varchar(15) DEFAULT NULL,
  `adr_clt` varchar(100) DEFAULT NULL,
  `dat_nss_clt` date DEFAULT NULL,
  `eta_dbq` varchar(50) DEFAULT NULL,
  `dat_ins` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `commande`
--

CREATE TABLE `commande` (
  `cod_cmd` varchar(20) NOT NULL,
  `dat_cmd` date DEFAULT NULL,
  `cod_clt` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `contenir`
--

CREATE TABLE `contenir` (
  `cod_art` varchar(20) NOT NULL,
  `cod_cmd` varchar(20) NOT NULL,
  `qte_cmd` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `cin_emp` varchar(20) NOT NULL,
  `nom_emp` varchar(50) DEFAULT NULL,
  `pre_emp` varchar(50) DEFAULT NULL,
  `tel_emp` varchar(15) DEFAULT NULL,
  `eml_emp` varchar(50) DEFAULT NULL,
  `adr_emp` varchar(100) DEFAULT NULL,
  `dat_deb_con` date DEFAULT NULL,
  `dat_fin_con` date DEFAULT NULL,
  `sal_emp` decimal(10,2) DEFAULT NULL,
  `pst_emp` varchar(50) DEFAULT NULL,
  `atd_emp` varchar(50) DEFAULT NULL,
  `exp_emp` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `encadrer`
--

CREATE TABLE `encadrer` (
  `nom_act` varchar(50) NOT NULL,
  `cin_act` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `invoice`
--

CREATE TABLE `invoice` (
  `cod_fac` varchar(20) NOT NULL,
  `typ_fac` varchar(50) DEFAULT NULL,
  `prx_fac` decimal(10,2) DEFAULT NULL,
  `dat_ems` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `material`
--

CREATE TABLE `material` (
  `cod_eqp` varchar(20) NOT NULL,
  `nom_eqp` varchar(50) DEFAULT NULL,
  `eta_eqp` varchar(50) DEFAULT NULL,
  `dat_ach` date DEFAULT NULL,
  `nom_for` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payer`
--

CREATE TABLE `payer` (
  `cod_pmt_emp` varchar(20) NOT NULL,
  `met_pmt_emp` varchar(50) DEFAULT NULL,
  `dat_pmt_emp` date DEFAULT NULL,
  `cin_emp` varchar(20) DEFAULT NULL,
  `nom_sal` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `regler`
--

CREATE TABLE `regler` (
  `cod_pmt` varchar(20) NOT NULL,
  `met_pmt` varchar(50) DEFAULT NULL,
  `mnt_pmt` decimal(10,2) DEFAULT NULL,
  `dat_pmt` date DEFAULT NULL,
  `nom_sal` varchar(20) DEFAULT NULL,
  `cod_fac` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `salle`
--

CREATE TABLE `salle` (
  `nom_sal` varchar(20) NOT NULL,
  `adr_sal` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `utilise`
--

CREATE TABLE `utilise` (
  `cod_eqp` varchar(20) NOT NULL,
  `nom_act` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `abonner`
--
ALTER TABLE `abonner`
  ADD PRIMARY KEY (`cin_clt`,`nom_act`),
  ADD KEY `nom_act` (`nom_act`);

--
-- Indexes for table `activity`
--
ALTER TABLE `activity`
  ADD PRIMARY KEY (`nom_act`),
  ADD KEY `id_sal` (`id_sal`);

--
-- Indexes for table `appartient`
--
ALTER TABLE `appartient`
  ADD PRIMARY KEY (`id_cat`,`cod_eqp`),
  ADD KEY `cod_eqp` (`cod_eqp`);

--
-- Indexes for table `article`
--
ALTER TABLE `article`
  ADD PRIMARY KEY (`cod_art`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id_cat`);

--
-- Indexes for table `client`
--
ALTER TABLE `client`
  ADD PRIMARY KEY (`cin_clt`);

--
-- Indexes for table `commande`
--
ALTER TABLE `commande`
  ADD PRIMARY KEY (`cod_cmd`),
  ADD KEY `cod_clt` (`cod_clt`);

--
-- Indexes for table `contenir`
--
ALTER TABLE `contenir`
  ADD PRIMARY KEY (`cod_art`,`cod_cmd`),
  ADD KEY `cod_cmd` (`cod_cmd`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`cin_emp`);

--
-- Indexes for table `encadrer`
--
ALTER TABLE `encadrer`
  ADD PRIMARY KEY (`nom_act`,`cin_act`);

--
-- Indexes for table `invoice`
--
ALTER TABLE `invoice`
  ADD PRIMARY KEY (`cod_fac`);

--
-- Indexes for table `material`
--
ALTER TABLE `material`
  ADD PRIMARY KEY (`cod_eqp`);

--
-- Indexes for table `payer`
--
ALTER TABLE `payer`
  ADD PRIMARY KEY (`cod_pmt_emp`),
  ADD KEY `cin_emp` (`cin_emp`),
  ADD KEY `nom_sal` (`nom_sal`);

--
-- Indexes for table `regler`
--
ALTER TABLE `regler`
  ADD PRIMARY KEY (`cod_pmt`),
  ADD KEY `nom_sal` (`nom_sal`),
  ADD KEY `cod_fac` (`cod_fac`);

--
-- Indexes for table `salle`
--
ALTER TABLE `salle`
  ADD PRIMARY KEY (`nom_sal`);

--
-- Indexes for table `utilise`
--
ALTER TABLE `utilise`
  ADD PRIMARY KEY (`cod_eqp`,`nom_act`),
  ADD KEY `nom_act` (`nom_act`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `abonner`
--
ALTER TABLE `abonner`
  ADD CONSTRAINT `abonner_ibfk_1` FOREIGN KEY (`cin_clt`) REFERENCES `client` (`cin_clt`),
  ADD CONSTRAINT `abonner_ibfk_2` FOREIGN KEY (`nom_act`) REFERENCES `activity` (`nom_act`);

--
-- Constraints for table `activity`
--
ALTER TABLE `activity`
  ADD CONSTRAINT `activity_ibfk_1` FOREIGN KEY (`id_sal`) REFERENCES `salle` (`nom_sal`);

--
-- Constraints for table `appartient`
--
ALTER TABLE `appartient`
  ADD CONSTRAINT `appartient_ibfk_1` FOREIGN KEY (`id_cat`) REFERENCES `categories` (`id_cat`),
  ADD CONSTRAINT `appartient_ibfk_2` FOREIGN KEY (`cod_eqp`) REFERENCES `material` (`cod_eqp`);

--
-- Constraints for table `commande`
--
ALTER TABLE `commande`
  ADD CONSTRAINT `commande_ibfk_1` FOREIGN KEY (`cod_clt`) REFERENCES `client` (`cin_clt`);

--
-- Constraints for table `contenir`
--
ALTER TABLE `contenir`
  ADD CONSTRAINT `contenir_ibfk_1` FOREIGN KEY (`cod_art`) REFERENCES `article` (`cod_art`),
  ADD CONSTRAINT `contenir_ibfk_2` FOREIGN KEY (`cod_cmd`) REFERENCES `commande` (`cod_cmd`);

--
-- Constraints for table `payer`
--
ALTER TABLE `payer`
  ADD CONSTRAINT `payer_ibfk_1` FOREIGN KEY (`cin_emp`) REFERENCES `employee` (`cin_emp`),
  ADD CONSTRAINT `payer_ibfk_2` FOREIGN KEY (`nom_sal`) REFERENCES `salle` (`nom_sal`);

--
-- Constraints for table `regler`
--
ALTER TABLE `regler`
  ADD CONSTRAINT `regler_ibfk_1` FOREIGN KEY (`nom_sal`) REFERENCES `salle` (`nom_sal`),
  ADD CONSTRAINT `regler_ibfk_2` FOREIGN KEY (`cod_fac`) REFERENCES `invoice` (`cod_fac`);

--
-- Constraints for table `utilise`
--
ALTER TABLE `utilise`
  ADD CONSTRAINT `utilise_ibfk_1` FOREIGN KEY (`cod_eqp`) REFERENCES `material` (`cod_eqp`),
  ADD CONSTRAINT `utilise_ibfk_2` FOREIGN KEY (`nom_act`) REFERENCES `activity` (`nom_act`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
