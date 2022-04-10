-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : ven. 08 avr. 2022 à 13:09
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

-- --------------------------------------------------------

--
-- Structure de la table `doctrine_migration_versions`
--

DROP TABLE IF EXISTS `doctrine_migration_versions`;
CREATE TABLE IF NOT EXISTS `doctrine_migration_versions` (
  `version` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `executed_at` datetime DEFAULT NULL,
  `execution_time` int DEFAULT NULL,
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `doctrine_migration_versions`
--

INSERT INTO `doctrine_migration_versions` (`version`, `executed_at`, `execution_time`) VALUES
('DoctrineMigrations\\Version20211122155034', '2021-11-22 15:50:46', 180),
('DoctrineMigrations\\Version20211122161754', '2021-11-22 16:18:05', 107),
('DoctrineMigrations\\Version20211122162526', '2021-11-22 16:25:34', 58),
('DoctrineMigrations\\Version20211122163033', '2021-11-22 16:30:44', 53),
('DoctrineMigrations\\Version20211124104327', '2021-11-24 10:43:54', 312),
('DoctrineMigrations\\Version20220323110640', '2022-03-23 11:06:53', 1249);

-- --------------------------------------------------------

--
-- Structure de la table `motif`
--

DROP TABLE IF EXISTS `motif`;
CREATE TABLE IF NOT EXISTS `motif` (
  `id` int NOT NULL AUTO_INCREMENT,
  `mot_libelle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `praticien`
--

DROP TABLE IF EXISTS `praticien`;
CREATE TABLE IF NOT EXISTS `praticien` (
  `id` int NOT NULL AUTO_INCREMENT,
  `pra_nom` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pra_prenom` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pra_tel` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pra_mail` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pra_rue` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pra_code_postal` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pra_ville` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pra_coef_notoriete` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `praticien`
--

INSERT INTO `praticien` (`id`, `pra_nom`, `pra_prenom`, `pra_tel`, `pra_mail`, `pra_rue`, `pra_code_postal`, `pra_ville`, `pra_coef_notoriete`) VALUES
(1, 'Ondricka', 'Kyra', '626-738-5112', 'Osvaldo_Schamberger@hotmail.com', '127 rue des champs', '73000', 'Chambéry', 0),
(2, 'Derepierre', 'Alexandre', '0782681033', 'derepierre.alexandre@gmail.com', '1260 route de Saint-Saturnin', '73000', 'Chambéry', 0);

-- --------------------------------------------------------

--
-- Structure de la table `praticien_visiteur`
--

DROP TABLE IF EXISTS `praticien_visiteur`;
CREATE TABLE IF NOT EXISTS `praticien_visiteur` (
  `praticien_id` int NOT NULL,
  `visiteur_id` int NOT NULL,
  PRIMARY KEY (`praticien_id`,`visiteur_id`),
  KEY `IDX_497AEEC72391866B` (`praticien_id`),
  KEY `IDX_497AEEC77F72333D` (`visiteur_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `praticien_visiteur`
--

INSERT INTO `praticien_visiteur` (`praticien_id`, `visiteur_id`) VALUES
(1, 2),
(2, 2);

-- --------------------------------------------------------

--
-- Structure de la table `visites`
--

DROP TABLE IF EXISTS `visites`;
CREATE TABLE IF NOT EXISTS `visites` (
  `id` int NOT NULL AUTO_INCREMENT,
  `vst_praticien_id` int DEFAULT NULL,
  `vst_motif_id` int DEFAULT NULL,
  `vst_visiteurs_id` int DEFAULT NULL,
  `date_visite` datetime DEFAULT NULL,
  `vst_commentaire` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `IDX_470D3983F210BF63` (`vst_praticien_id`),
  KEY `IDX_470D398330E71ABC` (`vst_motif_id`),
  KEY `IDX_470D39836EE7BA0F` (`vst_visiteurs_id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `visites`
--

INSERT INTO `visites` (`id`, `vst_praticien_id`, `vst_motif_id`, `vst_visiteurs_id`, `date_visite`, `vst_commentaire`) VALUES
(13, 1, NULL, 2, '2022-03-18 17:21:22', 'test'),
(14, 2, NULL, 2, '2022-03-18 17:21:22', 'test'),
(15, 2, NULL, 2, '2022-04-06 17:21:22', 'test'),
(16, 2, NULL, 2, '2022-05-20 18:13:22', 'test'),
(17, 1, NULL, 2, '2021-12-30 20:40:10', 'test'),
(18, 1, NULL, 2, '2021-08-12 05:10:25', 'test');

-- --------------------------------------------------------

--
-- Structure de la table `visiteur`
--

DROP TABLE IF EXISTS `visiteur`;
CREATE TABLE IF NOT EXISTS `visiteur` (
  `id` int NOT NULL AUTO_INCREMENT,
  `email` varchar(180) COLLATE utf8mb4_unicode_ci NOT NULL,
  `roles` json NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `vis_nom` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `vis_prenom` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `vis_tel` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_4EA587B8E7927C74` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `visiteur`
--

INSERT INTO `visiteur` (`id`, `email`, `roles`, `password`, `vis_nom`, `vis_prenom`, `vis_tel`) VALUES
(1, 'Larue_Schaden70@yahoo.com', '[]', '$2y$13$TRtiJkWL90M/0hSTwcou2uGZIQHVcv.uZaKkmVW3w7cwNPADVOfLC', NULL, NULL, NULL),
(2, 'Dave71@yahoo.com', '[]', '$2y$13$qTQ4XoTEj4sZlzXNceoTd.Cctg2TMVY4ZucIj2TUn1QMd2tbOtkT2', 'Root', 'Dave', '0652314269'),
(3, 'Schuyler51@hotmail.com', '[]', '$2y$13$HIQUFLqUVv49aOWPlEEibOfgkViVCwTKgbFNkAT3nK/Dp/.ehg5Jm', NULL, NULL, NULL),
(4, 'Lue20@gmail.com', '[]', '$2y$13$YNeUFLNzRvzc8UKRaSizauk9/rFtScFhRs9JY1.qF5Njld/boGiuy', NULL, NULL, NULL);

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `praticien_visiteur`
--
ALTER TABLE `praticien_visiteur`
  ADD CONSTRAINT `FK_497AEEC72391866B` FOREIGN KEY (`praticien_id`) REFERENCES `praticien` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_497AEEC77F72333D` FOREIGN KEY (`visiteur_id`) REFERENCES `visiteur` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `visites`
--
ALTER TABLE `visites`
  ADD CONSTRAINT `FK_470D398330E71ABC` FOREIGN KEY (`vst_motif_id`) REFERENCES `motif` (`id`),
  ADD CONSTRAINT `FK_470D39836EE7BA0F` FOREIGN KEY (`vst_visiteurs_id`) REFERENCES `visiteur` (`id`),
  ADD CONSTRAINT `FK_470D3983F210BF63` FOREIGN KEY (`vst_praticien_id`) REFERENCES `praticien` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
