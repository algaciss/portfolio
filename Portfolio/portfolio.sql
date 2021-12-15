-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3308
-- Généré le :  mer. 15 déc. 2021 à 10:10
-- Version du serveur :  8.0.18
-- Version de PHP :  7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `portfolio`
--

-- --------------------------------------------------------

--
-- Structure de la table `experiences`
--

DROP TABLE IF EXISTS `experiences`;
CREATE TABLE IF NOT EXISTS `experiences` (
  `experience_id` int(11) NOT NULL AUTO_INCREMENT,
  `annee` varchar(10) NOT NULL,
  `poste` varchar(255) NOT NULL,
  `societe` varchar(255) NOT NULL,
  `lieu` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `lang` enum('fr','en') NOT NULL,
  PRIMARY KEY (`experience_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `experiences`
--

INSERT INTO `experiences` (`experience_id`, `annee`, `poste`, `societe`, `lieu`, `description`, `lang`) VALUES
(1, '2021', 'Agent de Sécurité ', 'Securi-France', 'Département du Var', 'Chef de poste du Parc Nature Plan de La Garde du conseil départemental du Var, Nous avons réussi à éviter tout départ de feu pendant les fortes chaleurs de l\'été 2021', 'fr'),
(2, '2016-2019', 'Employé polyvalent', 'KFC', 'La Valette-du-Var', 'Etant un employé polyvalent j\'ai executé plusieurs taches', 'fr'),
(3, '2021', 'safety officer', 'Securi-France', 'Departement of Var', 'In this function i was a chief who apply a rules of environment ', 'en');

-- --------------------------------------------------------

--
-- Structure de la table `formations`
--

DROP TABLE IF EXISTS `formations`;
CREATE TABLE IF NOT EXISTS `formations` (
  `formation_id` int(11) NOT NULL AUTO_INCREMENT,
  `annee` varchar(10) NOT NULL,
  `niveau` varchar(255) NOT NULL,
  `intitule` varchar(255) NOT NULL,
  `univ` varchar(255) NOT NULL,
  `lieu` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `langue` enum('fr',' en') NOT NULL,
  PRIMARY KEY (`formation_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `formations`
--

INSERT INTO `formations` (`formation_id`, `annee`, `niveau`, `intitule`, `univ`, `lieu`, `description`, `langue`) VALUES
(1, '2011-2015', 'Licence Générale', 'Droit Public', 'Université de Hassan2', 'Casablanca (Maroc)', 'Après avoir fait un tronc commun en droit je me suis specialisé en droit public', 'fr'),
(2, '2011-2015', 'Bachelor', 'Law studies', 'University Hassan2', 'Casablanca (Maroc)', 'common studies about law', ' en');

-- --------------------------------------------------------

--
-- Structure de la table `propodemoi`
--

DROP TABLE IF EXISTS `propodemoi`;
CREATE TABLE IF NOT EXISTS `propodemoi` (
  `propodemoi_id` int(11) NOT NULL AUTO_INCREMENT,
  `langue` enum('fr','en') NOT NULL,
  `description` varchar(255) NOT NULL,
  PRIMARY KEY (`propodemoi_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `propodemoi`
--

INSERT INTO `propodemoi` (`propodemoi_id`, `langue`, `description`) VALUES
(1, 'fr', 'Je me nomme Algassimou Cissoko, je suis un Web Développeur, issu d\'une licence professionnelle. Apres avoir acquis des compétences  '),
(2, 'en', 'My name is Algassimou Cissoko i\'m web developper since this year.');

-- --------------------------------------------------------

--
-- Structure de la table `stage`
--

DROP TABLE IF EXISTS `stage`;
CREATE TABLE IF NOT EXISTS `stage` (
  `stage_id` int(11) NOT NULL AUTO_INCREMENT,
  `annee` varchar(10) NOT NULL,
  `titre` varchar(255) NOT NULL,
  `entite` varchar(255) NOT NULL,
  `lieu` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `lang` enum('fr','en') NOT NULL,
  PRIMARY KEY (`stage_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `stage`
--

INSERT INTO `stage` (`stage_id`, `annee`, `titre`, `entite`, `lieu`, `description`, `lang`) VALUES
(6, '2020', 'Certificat de réussite en langage HTML et CSS', 'Openclassrooms en ligne', 'France', 'J\'ai appris les fondements de la création d\'un site et surtout front-end, cette étape fut une ouverture et un changement qui m\'a mené vers le monde du digital', 'fr'),
(7, '2019', 'Séminaire de Formation', 'Institut des Hautes Études de la Défense Nationale(IHEDN)', 'Nice', 'C\'est un panel qui réunit les étudiants de plusieurs universités de France afin de débattre sur les enjeux sécuritaires sur le plan national qu\'international à travers des conférences animées par des experts du domaine.', 'fr'),
(8, '2019', 'training session', 'the National Defence Institute of Higher Education ', 'Nice ', 'this forum are a discussion about the new challenge to improving the international security.', 'en');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
