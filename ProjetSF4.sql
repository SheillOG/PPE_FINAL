-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : mer. 11 nov. 2020 à 13:55
-- Version du serveur :  5.7.31
-- Version de PHP : 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `real`
--

-- --------------------------------------------------------

--
-- Structure de la table `categorie`
--

DROP TABLE IF EXISTS `categorie`;
CREATE TABLE IF NOT EXISTS `categorie` (
  `Id_categorie` int(11) NOT NULL AUTO_INCREMENT,
  `libelle` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`Id_categorie`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `categorie`
--

INSERT INTO `categorie` (`Id_categorie`, `libelle`) VALUES
(1, 'FA (Full Access)'),
(2, 'SA (Semi Access)');

-- --------------------------------------------------------

--
-- Structure de la table `client`
--

DROP TABLE IF EXISTS `client`;
CREATE TABLE IF NOT EXISTS `client` (
  `Id_client` int(11) NOT NULL AUTO_INCREMENT,
  `nomClient` varchar(50) DEFAULT NULL,
  `emailClient` varchar(50) DEFAULT NULL,
  `telephoneClient` varchar(50) DEFAULT NULL,
  `adresse` text NOT NULL,
  PRIMARY KEY (`Id_client`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `client`
--

INSERT INTO `client` (`Id_client`, `nomClient`, `emailClient`, `telephoneClient`, `adresse`) VALUES
(18, 'thomas', 'romarin@gmail.com', '06784512', '12 avenue des romarins'),
(19, 'gilbert', 'gilbertm66@gmail.com', '0678451296', '75 rue des rom'),
(20, 'thomas', 'romarin@gmail.com', '0678451122', '10 rue des cerises'),
(21, 'romain', 'romai@gmail.com', '0741895620', '75 cedex des ramaux');

-- --------------------------------------------------------

--
-- Structure de la table `comprendre`
--

DROP TABLE IF EXISTS `comprendre`;
CREATE TABLE IF NOT EXISTS `comprendre` (
  `Id_vente` int(11) NOT NULL,
  `Id_produit` int(11) NOT NULL,
  `qte` int(11) DEFAULT NULL,
  PRIMARY KEY (`Id_vente`,`Id_produit`),
  KEY `Id_produit` (`Id_produit`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `compteagents`
--

DROP TABLE IF EXISTS `compteagents`;
CREATE TABLE IF NOT EXISTS `compteagents` (
  `id_agent` int(11) NOT NULL AUTO_INCREMENT,
  `nomAgent` varchar(50) DEFAULT NULL,
  `emailAgent` varchar(50) DEFAULT NULL,
  `loginAgent` varchar(50) DEFAULT NULL,
  `telephoneAgent` varchar(50) DEFAULT NULL,
  `motdepasseAgent` varchar(50) DEFAULT NULL,
  `id_profil` int(11) NOT NULL,
  PRIMARY KEY (`id_agent`),
  KEY `id_profil` (`id_profil`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `compteagents`
--

INSERT INTO `compteagents` (`id_agent`, `nomAgent`, `emailAgent`, `loginAgent`, `telephoneAgent`, `motdepasseAgent`, `id_profil`) VALUES
(2, 'theo', 'theo@gmail.com', 'theo', '0604050101', 'tt', 2),
(4, 'admin', 'totototo@gmail.com', 'admin', '05154140040', 'admin', 1),
(8, 'zdq', 'sqzdsq', '', 'zdqs', '', 1),
(9, 'zqds', 'zdqs', '', 'zdqs', '', 1),
(10, 'zdqs', 'zdqs', 'zqds', 'zdqs', 'zqdqs', 1);

-- --------------------------------------------------------

--
-- Structure de la table `produit`
--

DROP TABLE IF EXISTS `produit`;
CREATE TABLE IF NOT EXISTS `produit` (
  `Id_produit` int(11) NOT NULL AUTO_INCREMENT,
  `libellle` varchar(50) DEFAULT NULL,
  `categorie` varchar(50) DEFAULT NULL,
  `prix` varchar(50) DEFAULT NULL,
  `quantite` varchar(50) DEFAULT NULL,
  `evaluation` varchar(50) DEFAULT NULL,
  `Id_categorie` int(11) NOT NULL,
  PRIMARY KEY (`Id_produit`),
  KEY `Id_categorie` (`Id_categorie`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `produit`
--

INSERT INTO `produit` (`Id_produit`, `libellle`, `categorie`, `prix`, `quantite`, `evaluation`, `Id_categorie`) VALUES
(1, 'Cape Optifine', 'Acces complet', '10', '5', '4.7', 2),
(2, 'Cape Minecon', 'Acces complet', '150', '10', '5', 1);

-- --------------------------------------------------------

--
-- Structure de la table `profil`
--

DROP TABLE IF EXISTS `profil`;
CREATE TABLE IF NOT EXISTS `profil` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `libelle` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `profil`
--

INSERT INTO `profil` (`id`, `libelle`) VALUES
(1, 'admin'),
(2, 'agent');

-- --------------------------------------------------------

--
-- Structure de la table `vente`
--

DROP TABLE IF EXISTS `vente`;
CREATE TABLE IF NOT EXISTS `vente` (
  `Id_vente` int(11) NOT NULL AUTO_INCREMENT,
  `nomProduit` varchar(50) DEFAULT NULL,
  `Id_client` int(11) NOT NULL,
  `id_agent` int(11) NOT NULL,
  `la_date` date DEFAULT NULL,
  `Quantite` int(11) NOT NULL,
  PRIMARY KEY (`Id_vente`),
  KEY `Id_client` (`Id_client`),
  KEY `id` (`id_agent`),
  KEY `la_date` (`la_date`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `vente`
--

INSERT INTO `vente` (`Id_vente`, `nomProduit`, `Id_client`, `id_agent`, `la_date`, `Quantite`) VALUES
(26, 'Cape Minecon', 18, 2, NULL, 1),
(27, 'Cape Optifine', 18, 2, NULL, 1),
(28, 'Cape Minecon', 18, 2, NULL, 1),
(29, 'Cape Minecon', 18, 2, NULL, 4),
(30, 'Cape Optifine', 18, 2, NULL, 4),
(31, 'Cape Optifine', 18, 2, NULL, 1),
(32, 'Cape Optifine', 18, 8, NULL, 1);

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `comprendre`
--
ALTER TABLE `comprendre`
  ADD CONSTRAINT `comprendre_ibfk_1` FOREIGN KEY (`Id_vente`) REFERENCES `vente` (`Id_vente`),
  ADD CONSTRAINT `comprendre_ibfk_2` FOREIGN KEY (`Id_produit`) REFERENCES `produit` (`Id_produit`);

--
-- Contraintes pour la table `compteagents`
--
ALTER TABLE `compteagents`
  ADD CONSTRAINT `compteAgents_ibfk_1` FOREIGN KEY (`id_profil`) REFERENCES `profil` (`id`);

--
-- Contraintes pour la table `produit`
--
ALTER TABLE `produit`
  ADD CONSTRAINT `produit_ibfk_1` FOREIGN KEY (`Id_categorie`) REFERENCES `categorie` (`Id_categorie`);

--
-- Contraintes pour la table `vente`
--
ALTER TABLE `vente`
  ADD CONSTRAINT `vente_ibfk_1` FOREIGN KEY (`Id_client`) REFERENCES `client` (`Id_client`),
  ADD CONSTRAINT `vente_ibfk_2` FOREIGN KEY (`id_agent`) REFERENCES `compteagents` (`id_agent`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
