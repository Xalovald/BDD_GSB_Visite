-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : mer. 23 mars 2022 à 12:33
-- Version du serveur :  8.0.21
-- Version de PHP : 7.4.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `gsb_visites`
--

-- ------------------------------------------------------

-- --------------------------------------------------------

--
-- Structure de la table `visites`
--



--
-- Déchargement des données de la table `visites`
--



-- --------------------------------------------------------

--
-- Structure de la table `visiteur`
--


--
-- Déchargement des données de la table `visiteur`
--

INSERT INTO `visiteur` (`id`, `email`, `roles`, `password`, `vis_nom`, `vis_prenom`, `vis_tel`) VALUES
(1, 'Arnold38@gmail.com', '[]', '$2y$13$fE1KFcucbjqKgPrgud53Ce2c0b1Pfbt..wETVjzEFv2qT.jvqgDMq', NULL, NULL, NULL),
(3, 'Talia21@hotmail.com', '[]', '$2y$13$mehV.ftOKrMh9FT2LERD3O7xPGvpm4IgBrqO1sYty308nGwPoJYHq', NULL, NULL, NULL),
(4, 'Jaylen.Miller53@yahoo.com', '[]', '$2y$13$TaednCZ2qMV4y9hCKjcsxOxykPCrf.qNv..hyYbh5PUJGP5QfTeaa', NULL, NULL, NULL),
(5, 'Tatyana90@gmail.com', '[]', '$2y$13$Or5WrtL52ocrCytTzEjRCe.FB6E7ef0N2VZ72cQ.SVBH6QGSci/k.', NULL, NULL, NULL),
(6, 'John_Ryan@hotmail.com', '[]', '$2y$13$RLemxMkzaaSVCPM2LfhGue/gg123eOtMjWh3jdyFLC0K7J04aJx/m', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `visiteur_praticien`
--

--
-- Contraintes pour les tables déchargées
--

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
