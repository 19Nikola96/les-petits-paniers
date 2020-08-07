-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost:8889
-- Généré le :  ven. 07 août 2020 à 09:28
-- Version du serveur :  5.7.26
-- Version de PHP :  7.3.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `Lepanier`
--

-- --------------------------------------------------------

--
-- Structure de la table `delivery_spot`
--

CREATE TABLE `DeliverySpot` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address_home` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `postal_code` int(11) NOT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `latitude` double NOT NULL,
  `longitude` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `delivery_spot`
--

INSERT INTO `DeliverySpot` (`id`, `name`, `address_home`, `postal_code`, `city`, `latitude`, `longitude`) VALUES
(1, 'Chez Nikola', '8 rue Morice-Gallier', 91360, 'Villemoisson sur orge', 48.65823745727539, 2.328415870666504),
(2, 'Joey\'s Home', '15 Avenue des antilles', 75017, 'Paris', 48.5828169, 7.7495108),
(3, 'Fifi Market', '20 bis rue de Marcel Sebban', 95400, 'Enghien les bains', 48.9699732, 2.3068482),
(4, 'La boutique de Momo', '89 Boulevard Momo', 94000, 'Créteil', 48.7771486, 2.4530731);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `delivery_spot`
--
ALTER TABLE `DeliverySpot`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `delivery_spot`
--
ALTER TABLE `DeliverySpot`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
