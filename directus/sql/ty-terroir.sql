-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Hôte : db
-- Généré le : mer. 05 jan. 2022 à 08:19
-- Version du serveur : 10.6.4-MariaDB-1:10.6.4+maria~focal
-- Version de PHP : 7.4.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `ty-terroir`
--

-- --------------------------------------------------------

--
-- Structure de la table `association`
--

CREATE TABLE `association` (
  `id` int(10) UNSIGNED NOT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'draft',
  `date_created` timestamp NULL DEFAULT NULL,
  `date_updated` timestamp NULL DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `street` varchar(255) DEFAULT NULL,
  `city` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `association`
--

INSERT INTO `association` (`id`, `status`, `date_created`, `date_updated`, `name`, `street`, `city`) VALUES
(1, 'published', '2021-12-11 19:14:28', '2021-12-11 19:14:48', 'Hopigac', 'Tibidy', 1),
(2, 'published', '2021-12-11 19:15:30', '2021-12-11 19:15:34', 'Bio Et Local', 'Quillafel', 2);

-- --------------------------------------------------------

--
-- Structure de la table `category`
--

CREATE TABLE `category` (
  `id` int(10) UNSIGNED NOT NULL,
  `date_created` timestamp NULL DEFAULT NULL,
  `date_updated` timestamp NULL DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `category`
--

INSERT INTO `category` (`id`, `date_created`, `date_updated`, `name`) VALUES
(1, '2021-12-11 17:21:54', NULL, 'Fruits et Légumes'),
(2, '2021-12-11 17:22:19', NULL, 'Viandes et charcuterres'),
(3, '2021-12-11 17:22:31', NULL, 'Produit de la mer'),
(4, '2021-12-11 17:22:42', NULL, 'Crèmerie'),
(5, '2021-12-11 17:23:01', NULL, 'Boulangerie et pâtisserie'),
(6, '2021-12-11 17:23:26', NULL, 'Épicerie'),
(7, '2021-12-11 17:23:36', NULL, 'Boissons'),
(8, '2021-12-11 17:24:02', NULL, 'Hygiène et bien-être'),
(9, '2021-12-11 17:24:11', NULL, 'Plants'),
(10, '2021-12-11 17:24:17', NULL, 'Autres');

-- --------------------------------------------------------

--
-- Structure de la table `certification`
--

CREATE TABLE `certification` (
  `id` int(10) UNSIGNED NOT NULL,
  `date_created` timestamp NULL DEFAULT NULL,
  `date_updated` timestamp NULL DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `certification`
--

INSERT INTO `certification` (`id`, `date_created`, `date_updated`, `name`) VALUES
(1, '2021-12-11 17:45:37', NULL, 'Agriculture Biologique'),
(2, '2021-12-11 17:45:43', NULL, 'Culture raisonné');

-- --------------------------------------------------------

--
-- Structure de la table `city`
--

CREATE TABLE `city` (
  `id` int(10) UNSIGNED NOT NULL,
  `date_created` timestamp NULL DEFAULT NULL,
  `date_updated` timestamp NULL DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `postal_code` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `city`
--

INSERT INTO `city` (`id`, `date_created`, `date_updated`, `name`, `postal_code`) VALUES
(1, '2021-12-11 19:14:28', NULL, 'L HOPITAL CAMFROUT', 29460),
(2, '2021-12-11 19:15:30', NULL, 'HANVEC', 29460),
(3, '2021-12-11 19:18:16', NULL, 'SAINT-MEEN', 29260),
(4, '2021-12-11 19:20:13', NULL, 'LOQUEFFRET', 29530);

-- --------------------------------------------------------

--
-- Structure de la table `directus_activity`
--

CREATE TABLE `directus_activity` (
  `id` int(10) UNSIGNED NOT NULL,
  `action` varchar(45) NOT NULL,
  `user` char(36) DEFAULT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp(),
  `ip` varchar(50) NOT NULL,
  `user_agent` varchar(255) DEFAULT NULL,
  `collection` varchar(64) NOT NULL,
  `item` varchar(255) NOT NULL,
  `comment` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `directus_activity`
--

INSERT INTO `directus_activity` (`id`, `action`, `user`, `timestamp`, `ip`, `user_agent`, `collection`, `item`, `comment`) VALUES
(1, 'login', '9739218f-0108-4da6-a584-55edb117841a', '2021-12-11 16:38:09', '::ffff:172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', 'directus_users', '9739218f-0108-4da6-a584-55edb117841a', NULL),
(2, 'create', '9739218f-0108-4da6-a584-55edb117841a', '2021-12-11 16:39:11', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', 'directus_users', '109171df-772a-4bf8-8f98-1fcbf802f710', NULL),
(3, 'login', '109171df-772a-4bf8-8f98-1fcbf802f710', '2021-12-11 16:39:41', '::ffff:172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', 'directus_users', '109171df-772a-4bf8-8f98-1fcbf802f710', NULL),
(4, 'create', '109171df-772a-4bf8-8f98-1fcbf802f710', '2021-12-11 16:45:00', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', 'directus_collections', 'subscription', NULL),
(5, 'create', '109171df-772a-4bf8-8f98-1fcbf802f710', '2021-12-11 16:45:00', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', 'directus_fields', '1', NULL),
(6, 'create', '109171df-772a-4bf8-8f98-1fcbf802f710', '2021-12-11 16:45:00', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', 'directus_fields', '2', NULL),
(7, 'create', '109171df-772a-4bf8-8f98-1fcbf802f710', '2021-12-11 16:45:00', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', 'directus_fields', '3', NULL),
(8, 'create', '109171df-772a-4bf8-8f98-1fcbf802f710', '2021-12-11 16:45:00', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', 'directus_fields', '4', NULL),
(9, 'create', '109171df-772a-4bf8-8f98-1fcbf802f710', '2021-12-11 16:45:00', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', 'directus_fields', '5', NULL),
(10, 'create', '109171df-772a-4bf8-8f98-1fcbf802f710', '2021-12-11 16:45:00', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', 'directus_fields', '6', NULL),
(11, 'create', '109171df-772a-4bf8-8f98-1fcbf802f710', '2021-12-11 16:45:00', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', 'directus_fields', '7', NULL),
(12, 'create', '109171df-772a-4bf8-8f98-1fcbf802f710', '2021-12-11 16:46:59', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', 'directus_fields', '8', NULL),
(13, 'create', '109171df-772a-4bf8-8f98-1fcbf802f710', '2021-12-11 16:48:12', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', 'directus_fields', '9', NULL),
(14, 'create', '109171df-772a-4bf8-8f98-1fcbf802f710', '2021-12-11 16:49:49', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', 'directus_fields', '10', NULL),
(15, 'create', '109171df-772a-4bf8-8f98-1fcbf802f710', '2021-12-11 16:51:07', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', 'directus_fields', '11', NULL),
(16, 'update', '109171df-772a-4bf8-8f98-1fcbf802f710', '2021-12-11 16:51:17', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', 'directus_fields', '10', NULL),
(17, 'create', '109171df-772a-4bf8-8f98-1fcbf802f710', '2021-12-11 16:55:31', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', 'directus_fields', '12', NULL),
(18, 'create', '109171df-772a-4bf8-8f98-1fcbf802f710', '2021-12-11 16:56:31', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', 'directus_fields', '13', NULL),
(19, 'update', '109171df-772a-4bf8-8f98-1fcbf802f710', '2021-12-11 16:57:10', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', 'directus_collections', 'subscription', NULL),
(20, 'update', '109171df-772a-4bf8-8f98-1fcbf802f710', '2021-12-11 16:59:42', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', 'directus_fields', '8', NULL),
(21, 'create', '109171df-772a-4bf8-8f98-1fcbf802f710', '2021-12-11 17:01:23', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', 'directus_fields', '14', NULL),
(22, 'update', '109171df-772a-4bf8-8f98-1fcbf802f710', '2021-12-11 17:01:31', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', 'directus_fields', '1', NULL),
(23, 'update', '109171df-772a-4bf8-8f98-1fcbf802f710', '2021-12-11 17:01:31', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', 'directus_fields', '2', NULL),
(24, 'update', '109171df-772a-4bf8-8f98-1fcbf802f710', '2021-12-11 17:01:31', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', 'directus_fields', '3', NULL),
(25, 'update', '109171df-772a-4bf8-8f98-1fcbf802f710', '2021-12-11 17:01:31', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', 'directus_fields', '4', NULL),
(26, 'update', '109171df-772a-4bf8-8f98-1fcbf802f710', '2021-12-11 17:01:31', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', 'directus_fields', '5', NULL),
(27, 'update', '109171df-772a-4bf8-8f98-1fcbf802f710', '2021-12-11 17:01:31', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', 'directus_fields', '6', NULL),
(28, 'update', '109171df-772a-4bf8-8f98-1fcbf802f710', '2021-12-11 17:01:31', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', 'directus_fields', '7', NULL),
(29, 'update', '109171df-772a-4bf8-8f98-1fcbf802f710', '2021-12-11 17:01:31', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', 'directus_fields', '14', NULL),
(30, 'update', '109171df-772a-4bf8-8f98-1fcbf802f710', '2021-12-11 17:01:31', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', 'directus_fields', '9', NULL),
(31, 'update', '109171df-772a-4bf8-8f98-1fcbf802f710', '2021-12-11 17:01:31', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', 'directus_fields', '10', NULL),
(32, 'update', '109171df-772a-4bf8-8f98-1fcbf802f710', '2021-12-11 17:01:31', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', 'directus_fields', '11', NULL),
(33, 'update', '109171df-772a-4bf8-8f98-1fcbf802f710', '2021-12-11 17:01:31', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', 'directus_fields', '12', NULL),
(34, 'update', '109171df-772a-4bf8-8f98-1fcbf802f710', '2021-12-11 17:01:31', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', 'directus_fields', '13', NULL),
(35, 'update', '109171df-772a-4bf8-8f98-1fcbf802f710', '2021-12-11 17:01:34', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', 'directus_fields', '14', NULL),
(36, 'update', '109171df-772a-4bf8-8f98-1fcbf802f710', '2021-12-11 17:01:37', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', 'directus_fields', '9', NULL),
(37, 'update', '109171df-772a-4bf8-8f98-1fcbf802f710', '2021-12-11 17:01:46', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', 'directus_fields', '10', NULL),
(38, 'update', '109171df-772a-4bf8-8f98-1fcbf802f710', '2021-12-11 17:01:49', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', 'directus_fields', '12', NULL),
(39, 'update', '109171df-772a-4bf8-8f98-1fcbf802f710', '2021-12-11 17:01:51', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', 'directus_fields', '1', NULL),
(40, 'update', '109171df-772a-4bf8-8f98-1fcbf802f710', '2021-12-11 17:01:51', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', 'directus_fields', '2', NULL),
(41, 'update', '109171df-772a-4bf8-8f98-1fcbf802f710', '2021-12-11 17:01:51', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', 'directus_fields', '3', NULL),
(42, 'update', '109171df-772a-4bf8-8f98-1fcbf802f710', '2021-12-11 17:01:51', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', 'directus_fields', '4', NULL),
(43, 'update', '109171df-772a-4bf8-8f98-1fcbf802f710', '2021-12-11 17:01:51', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', 'directus_fields', '5', NULL),
(44, 'update', '109171df-772a-4bf8-8f98-1fcbf802f710', '2021-12-11 17:01:51', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', 'directus_fields', '6', NULL),
(45, 'update', '109171df-772a-4bf8-8f98-1fcbf802f710', '2021-12-11 17:01:51', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', 'directus_fields', '7', NULL),
(46, 'update', '109171df-772a-4bf8-8f98-1fcbf802f710', '2021-12-11 17:01:51', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', 'directus_fields', '14', NULL),
(47, 'update', '109171df-772a-4bf8-8f98-1fcbf802f710', '2021-12-11 17:01:51', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', 'directus_fields', '9', NULL),
(48, 'update', '109171df-772a-4bf8-8f98-1fcbf802f710', '2021-12-11 17:01:51', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', 'directus_fields', '10', NULL),
(49, 'update', '109171df-772a-4bf8-8f98-1fcbf802f710', '2021-12-11 17:01:51', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', 'directus_fields', '12', NULL),
(50, 'update', '109171df-772a-4bf8-8f98-1fcbf802f710', '2021-12-11 17:01:51', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', 'directus_fields', '11', NULL),
(51, 'update', '109171df-772a-4bf8-8f98-1fcbf802f710', '2021-12-11 17:01:51', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', 'directus_fields', '13', NULL),
(52, 'update', '109171df-772a-4bf8-8f98-1fcbf802f710', '2021-12-11 17:01:56', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', 'directus_fields', '1', NULL),
(53, 'update', '109171df-772a-4bf8-8f98-1fcbf802f710', '2021-12-11 17:01:56', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', 'directus_fields', '2', NULL),
(54, 'update', '109171df-772a-4bf8-8f98-1fcbf802f710', '2021-12-11 17:01:56', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', 'directus_fields', '3', NULL),
(55, 'update', '109171df-772a-4bf8-8f98-1fcbf802f710', '2021-12-11 17:01:56', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', 'directus_fields', '13', NULL),
(56, 'update', '109171df-772a-4bf8-8f98-1fcbf802f710', '2021-12-11 17:01:56', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', 'directus_fields', '4', NULL),
(57, 'update', '109171df-772a-4bf8-8f98-1fcbf802f710', '2021-12-11 17:01:56', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', 'directus_fields', '5', NULL),
(58, 'update', '109171df-772a-4bf8-8f98-1fcbf802f710', '2021-12-11 17:01:56', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', 'directus_fields', '6', NULL),
(59, 'update', '109171df-772a-4bf8-8f98-1fcbf802f710', '2021-12-11 17:01:56', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', 'directus_fields', '7', NULL),
(60, 'update', '109171df-772a-4bf8-8f98-1fcbf802f710', '2021-12-11 17:01:56', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', 'directus_fields', '14', NULL),
(61, 'update', '109171df-772a-4bf8-8f98-1fcbf802f710', '2021-12-11 17:01:56', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', 'directus_fields', '9', NULL),
(62, 'update', '109171df-772a-4bf8-8f98-1fcbf802f710', '2021-12-11 17:01:56', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', 'directus_fields', '10', NULL),
(63, 'update', '109171df-772a-4bf8-8f98-1fcbf802f710', '2021-12-11 17:01:56', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', 'directus_fields', '12', NULL),
(64, 'update', '109171df-772a-4bf8-8f98-1fcbf802f710', '2021-12-11 17:01:56', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', 'directus_fields', '11', NULL),
(65, 'update', '109171df-772a-4bf8-8f98-1fcbf802f710', '2021-12-11 17:03:29', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', 'directus_fields', '2', NULL),
(66, 'create', '109171df-772a-4bf8-8f98-1fcbf802f710', '2021-12-11 17:04:08', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', 'subscription', '1', NULL),
(67, 'update', '109171df-772a-4bf8-8f98-1fcbf802f710', '2021-12-11 17:04:34', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', 'directus_fields', '13', NULL),
(68, 'update', '109171df-772a-4bf8-8f98-1fcbf802f710', '2021-12-11 17:06:11', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', 'directus_collections', 'subscription', NULL),
(69, 'create', '109171df-772a-4bf8-8f98-1fcbf802f710', '2021-12-11 17:06:38', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', 'directus_collections', 'producer', NULL),
(70, 'create', '109171df-772a-4bf8-8f98-1fcbf802f710', '2021-12-11 17:06:38', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', 'directus_fields', '15', NULL),
(71, 'create', '109171df-772a-4bf8-8f98-1fcbf802f710', '2021-12-11 17:06:38', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', 'directus_fields', '16', NULL),
(72, 'create', '109171df-772a-4bf8-8f98-1fcbf802f710', '2021-12-11 17:06:38', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', 'directus_fields', '17', NULL),
(73, 'create', '109171df-772a-4bf8-8f98-1fcbf802f710', '2021-12-11 17:06:38', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', 'directus_fields', '18', NULL),
(74, 'update', '109171df-772a-4bf8-8f98-1fcbf802f710', '2021-12-11 17:07:52', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', 'directus_collections', 'producer', NULL),
(75, 'update', '109171df-772a-4bf8-8f98-1fcbf802f710', '2021-12-11 17:08:56', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', 'directus_collections', 'producer', NULL),
(76, 'create', '109171df-772a-4bf8-8f98-1fcbf802f710', '2021-12-11 17:11:03', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', 'directus_fields', '19', NULL),
(77, 'create', '109171df-772a-4bf8-8f98-1fcbf802f710', '2021-12-11 17:11:47', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', 'directus_fields', '20', NULL),
(78, 'create', '109171df-772a-4bf8-8f98-1fcbf802f710', '2021-12-11 17:12:39', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', 'directus_fields', '21', NULL),
(79, 'create', '109171df-772a-4bf8-8f98-1fcbf802f710', '2021-12-11 17:13:10', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', 'directus_fields', '22', NULL),
(80, 'update', '109171df-772a-4bf8-8f98-1fcbf802f710', '2021-12-11 17:13:39', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', 'directus_fields', '19', NULL),
(81, 'update', '109171df-772a-4bf8-8f98-1fcbf802f710', '2021-12-11 17:13:42', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', 'directus_fields', '20', NULL),
(82, 'create', '109171df-772a-4bf8-8f98-1fcbf802f710', '2021-12-11 17:14:35', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', 'directus_fields', '23', NULL),
(83, 'create', '109171df-772a-4bf8-8f98-1fcbf802f710', '2021-12-11 17:14:57', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', 'directus_fields', '24', NULL),
(84, 'update', '109171df-772a-4bf8-8f98-1fcbf802f710', '2021-12-11 17:15:01', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', 'directus_fields', '23', NULL),
(85, 'update', '109171df-772a-4bf8-8f98-1fcbf802f710', '2021-12-11 17:15:02', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', 'directus_fields', '24', NULL),
(86, 'update', '109171df-772a-4bf8-8f98-1fcbf802f710', '2021-12-11 17:15:06', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', 'directus_fields', '15', NULL),
(87, 'update', '109171df-772a-4bf8-8f98-1fcbf802f710', '2021-12-11 17:15:06', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', 'directus_fields', '16', NULL),
(88, 'update', '109171df-772a-4bf8-8f98-1fcbf802f710', '2021-12-11 17:15:06', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', 'directus_fields', '17', NULL),
(89, 'update', '109171df-772a-4bf8-8f98-1fcbf802f710', '2021-12-11 17:15:06', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', 'directus_fields', '18', NULL),
(90, 'update', '109171df-772a-4bf8-8f98-1fcbf802f710', '2021-12-11 17:15:06', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', 'directus_fields', '19', NULL),
(91, 'update', '109171df-772a-4bf8-8f98-1fcbf802f710', '2021-12-11 17:15:06', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', 'directus_fields', '20', NULL),
(92, 'update', '109171df-772a-4bf8-8f98-1fcbf802f710', '2021-12-11 17:15:06', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', 'directus_fields', '21', NULL),
(93, 'update', '109171df-772a-4bf8-8f98-1fcbf802f710', '2021-12-11 17:15:06', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', 'directus_fields', '23', NULL),
(94, 'update', '109171df-772a-4bf8-8f98-1fcbf802f710', '2021-12-11 17:15:06', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', 'directus_fields', '24', NULL),
(95, 'update', '109171df-772a-4bf8-8f98-1fcbf802f710', '2021-12-11 17:15:06', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', 'directus_fields', '22', NULL),
(96, 'create', '109171df-772a-4bf8-8f98-1fcbf802f710', '2021-12-11 17:19:20', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', 'directus_collections', 'category', NULL),
(97, 'create', '109171df-772a-4bf8-8f98-1fcbf802f710', '2021-12-11 17:19:20', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', 'directus_fields', '25', NULL),
(98, 'create', '109171df-772a-4bf8-8f98-1fcbf802f710', '2021-12-11 17:19:20', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', 'directus_fields', '26', NULL),
(99, 'create', '109171df-772a-4bf8-8f98-1fcbf802f710', '2021-12-11 17:19:20', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', 'directus_fields', '27', NULL),
(100, 'create', '109171df-772a-4bf8-8f98-1fcbf802f710', '2021-12-11 17:19:20', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', 'directus_fields', '28', NULL),
(101, 'create', '109171df-772a-4bf8-8f98-1fcbf802f710', '2021-12-11 17:20:18', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', 'directus_fields', '29', NULL),
(102, 'update', '109171df-772a-4bf8-8f98-1fcbf802f710', '2021-12-11 17:21:09', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', 'directus_collections', 'category', NULL),
(103, 'create', '109171df-772a-4bf8-8f98-1fcbf802f710', '2021-12-11 17:21:54', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', 'category', '1', NULL),
(104, 'create', '109171df-772a-4bf8-8f98-1fcbf802f710', '2021-12-11 17:22:19', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', 'category', '2', NULL),
(105, 'create', '109171df-772a-4bf8-8f98-1fcbf802f710', '2021-12-11 17:22:31', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', 'category', '3', NULL),
(106, 'create', '109171df-772a-4bf8-8f98-1fcbf802f710', '2021-12-11 17:22:42', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', 'category', '4', NULL),
(107, 'create', '109171df-772a-4bf8-8f98-1fcbf802f710', '2021-12-11 17:23:01', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', 'category', '5', NULL),
(108, 'create', '109171df-772a-4bf8-8f98-1fcbf802f710', '2021-12-11 17:23:26', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', 'category', '6', NULL),
(109, 'create', '109171df-772a-4bf8-8f98-1fcbf802f710', '2021-12-11 17:23:36', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', 'category', '7', NULL),
(110, 'create', '109171df-772a-4bf8-8f98-1fcbf802f710', '2021-12-11 17:24:02', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', 'category', '8', NULL),
(111, 'create', '109171df-772a-4bf8-8f98-1fcbf802f710', '2021-12-11 17:24:11', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', 'category', '9', NULL),
(112, 'create', '109171df-772a-4bf8-8f98-1fcbf802f710', '2021-12-11 17:24:17', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', 'category', '10', NULL),
(113, 'create', '109171df-772a-4bf8-8f98-1fcbf802f710', '2021-12-11 17:24:46', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', 'directus_collections', 'products', NULL),
(114, 'create', '109171df-772a-4bf8-8f98-1fcbf802f710', '2021-12-11 17:24:46', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', 'directus_fields', '30', NULL),
(115, 'create', '109171df-772a-4bf8-8f98-1fcbf802f710', '2021-12-11 17:24:46', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', 'directus_fields', '31', NULL),
(116, 'create', '109171df-772a-4bf8-8f98-1fcbf802f710', '2021-12-11 17:24:46', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', 'directus_fields', '32', NULL),
(117, 'create', '109171df-772a-4bf8-8f98-1fcbf802f710', '2021-12-11 17:24:46', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', 'directus_fields', '33', NULL),
(118, 'create', '109171df-772a-4bf8-8f98-1fcbf802f710', '2021-12-11 17:24:46', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', 'directus_fields', '34', NULL),
(119, 'update', '109171df-772a-4bf8-8f98-1fcbf802f710', '2021-12-11 17:26:09', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', 'directus_collections', 'products', NULL),
(120, 'create', '109171df-772a-4bf8-8f98-1fcbf802f710', '2021-12-11 17:26:41', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', 'directus_fields', '35', NULL),
(121, 'create', '109171df-772a-4bf8-8f98-1fcbf802f710', '2021-12-11 17:27:13', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', 'directus_fields', '36', NULL),
(122, 'create', '109171df-772a-4bf8-8f98-1fcbf802f710', '2021-12-11 17:30:35', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', 'directus_fields', '37', NULL),
(123, 'update', '109171df-772a-4bf8-8f98-1fcbf802f710', '2021-12-11 17:31:02', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', 'directus_collections', 'category', NULL),
(124, 'update', '109171df-772a-4bf8-8f98-1fcbf802f710', '2021-12-11 17:31:15', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', 'directus_collections', 'products', NULL),
(125, 'update', '109171df-772a-4bf8-8f98-1fcbf802f710', '2021-12-11 17:34:17', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', 'directus_fields', '37', NULL),
(126, 'create', '109171df-772a-4bf8-8f98-1fcbf802f710', '2021-12-11 17:35:07', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', 'directus_fields', '38', NULL),
(127, 'update', '109171df-772a-4bf8-8f98-1fcbf802f710', '2021-12-11 17:35:11', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', 'directus_fields', '37', NULL),
(128, 'update', '109171df-772a-4bf8-8f98-1fcbf802f710', '2021-12-11 17:35:13', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', 'directus_fields', '38', NULL),
(129, 'create', '109171df-772a-4bf8-8f98-1fcbf802f710', '2021-12-11 17:35:58', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', 'directus_fields', '39', NULL),
(130, 'create', '109171df-772a-4bf8-8f98-1fcbf802f710', '2021-12-11 17:36:32', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', 'directus_fields', '40', NULL),
(131, 'create', '109171df-772a-4bf8-8f98-1fcbf802f710', '2021-12-11 17:37:46', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', 'directus_fields', '41', NULL),
(132, 'update', '109171df-772a-4bf8-8f98-1fcbf802f710', '2021-12-11 17:37:50', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', 'directus_fields', '41', NULL),
(133, 'update', '109171df-772a-4bf8-8f98-1fcbf802f710', '2021-12-11 17:37:56', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', 'directus_fields', '30', NULL),
(134, 'update', '109171df-772a-4bf8-8f98-1fcbf802f710', '2021-12-11 17:37:56', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', 'directus_fields', '31', NULL),
(135, 'update', '109171df-772a-4bf8-8f98-1fcbf802f710', '2021-12-11 17:37:56', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', 'directus_fields', '32', NULL),
(136, 'update', '109171df-772a-4bf8-8f98-1fcbf802f710', '2021-12-11 17:37:56', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', 'directus_fields', '33', NULL),
(137, 'update', '109171df-772a-4bf8-8f98-1fcbf802f710', '2021-12-11 17:37:56', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', 'directus_fields', '34', NULL),
(138, 'update', '109171df-772a-4bf8-8f98-1fcbf802f710', '2021-12-11 17:37:56', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', 'directus_fields', '35', NULL),
(139, 'update', '109171df-772a-4bf8-8f98-1fcbf802f710', '2021-12-11 17:37:56', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', 'directus_fields', '36', NULL),
(140, 'update', '109171df-772a-4bf8-8f98-1fcbf802f710', '2021-12-11 17:37:56', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', 'directus_fields', '37', NULL),
(141, 'update', '109171df-772a-4bf8-8f98-1fcbf802f710', '2021-12-11 17:37:56', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', 'directus_fields', '39', NULL),
(142, 'update', '109171df-772a-4bf8-8f98-1fcbf802f710', '2021-12-11 17:37:56', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', 'directus_fields', '38', NULL),
(143, 'update', '109171df-772a-4bf8-8f98-1fcbf802f710', '2021-12-11 17:37:56', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', 'directus_fields', '40', NULL),
(144, 'update', '109171df-772a-4bf8-8f98-1fcbf802f710', '2021-12-11 17:37:57', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', 'directus_fields', '41', NULL),
(145, 'update', '109171df-772a-4bf8-8f98-1fcbf802f710', '2021-12-11 17:37:59', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', 'directus_fields', '30', NULL),
(146, 'update', '109171df-772a-4bf8-8f98-1fcbf802f710', '2021-12-11 17:37:59', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', 'directus_fields', '31', NULL),
(147, 'update', '109171df-772a-4bf8-8f98-1fcbf802f710', '2021-12-11 17:37:59', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', 'directus_fields', '32', NULL),
(148, 'update', '109171df-772a-4bf8-8f98-1fcbf802f710', '2021-12-11 17:37:59', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', 'directus_fields', '33', NULL),
(149, 'update', '109171df-772a-4bf8-8f98-1fcbf802f710', '2021-12-11 17:37:59', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', 'directus_fields', '34', NULL),
(150, 'update', '109171df-772a-4bf8-8f98-1fcbf802f710', '2021-12-11 17:37:59', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', 'directus_fields', '35', NULL),
(151, 'update', '109171df-772a-4bf8-8f98-1fcbf802f710', '2021-12-11 17:37:59', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', 'directus_fields', '36', NULL),
(152, 'update', '109171df-772a-4bf8-8f98-1fcbf802f710', '2021-12-11 17:37:59', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', 'directus_fields', '41', NULL),
(153, 'update', '109171df-772a-4bf8-8f98-1fcbf802f710', '2021-12-11 17:37:59', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', 'directus_fields', '37', NULL),
(154, 'update', '109171df-772a-4bf8-8f98-1fcbf802f710', '2021-12-11 17:37:59', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', 'directus_fields', '39', NULL),
(155, 'update', '109171df-772a-4bf8-8f98-1fcbf802f710', '2021-12-11 17:37:59', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', 'directus_fields', '38', NULL),
(156, 'update', '109171df-772a-4bf8-8f98-1fcbf802f710', '2021-12-11 17:37:59', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', 'directus_fields', '40', NULL),
(157, 'update', '109171df-772a-4bf8-8f98-1fcbf802f710', '2021-12-11 17:38:02', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', 'directus_fields', '30', NULL),
(158, 'update', '109171df-772a-4bf8-8f98-1fcbf802f710', '2021-12-11 17:38:03', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', 'directus_fields', '31', NULL),
(159, 'update', '109171df-772a-4bf8-8f98-1fcbf802f710', '2021-12-11 17:38:03', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', 'directus_fields', '32', NULL),
(160, 'update', '109171df-772a-4bf8-8f98-1fcbf802f710', '2021-12-11 17:38:03', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', 'directus_fields', '33', NULL),
(161, 'update', '109171df-772a-4bf8-8f98-1fcbf802f710', '2021-12-11 17:38:03', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', 'directus_fields', '34', NULL),
(162, 'update', '109171df-772a-4bf8-8f98-1fcbf802f710', '2021-12-11 17:38:03', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', 'directus_fields', '35', NULL),
(163, 'update', '109171df-772a-4bf8-8f98-1fcbf802f710', '2021-12-11 17:38:03', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', 'directus_fields', '38', NULL),
(164, 'update', '109171df-772a-4bf8-8f98-1fcbf802f710', '2021-12-11 17:38:03', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', 'directus_fields', '36', NULL),
(165, 'update', '109171df-772a-4bf8-8f98-1fcbf802f710', '2021-12-11 17:38:03', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', 'directus_fields', '41', NULL),
(166, 'update', '109171df-772a-4bf8-8f98-1fcbf802f710', '2021-12-11 17:38:03', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', 'directus_fields', '37', NULL),
(167, 'update', '109171df-772a-4bf8-8f98-1fcbf802f710', '2021-12-11 17:38:03', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', 'directus_fields', '39', NULL),
(168, 'update', '109171df-772a-4bf8-8f98-1fcbf802f710', '2021-12-11 17:38:03', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', 'directus_fields', '40', NULL),
(169, 'update', '109171df-772a-4bf8-8f98-1fcbf802f710', '2021-12-11 17:38:08', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', 'directus_fields', '38', NULL),
(170, 'create', '109171df-772a-4bf8-8f98-1fcbf802f710', '2021-12-11 17:38:54', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', 'directus_fields', '42', NULL),
(171, 'create', '109171df-772a-4bf8-8f98-1fcbf802f710', '2021-12-11 17:39:29', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', 'directus_fields', '43', NULL),
(172, 'create', '109171df-772a-4bf8-8f98-1fcbf802f710', '2021-12-11 17:40:23', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', 'directus_collections', 'certification', NULL),
(173, 'create', '109171df-772a-4bf8-8f98-1fcbf802f710', '2021-12-11 17:40:23', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', 'directus_fields', '44', NULL),
(174, 'create', '109171df-772a-4bf8-8f98-1fcbf802f710', '2021-12-11 17:40:23', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', 'directus_fields', '45', NULL),
(175, 'create', '109171df-772a-4bf8-8f98-1fcbf802f710', '2021-12-11 17:40:23', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', 'directus_fields', '46', NULL),
(176, 'update', '109171df-772a-4bf8-8f98-1fcbf802f710', '2021-12-11 17:41:12', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', 'directus_collections', 'certification', NULL),
(177, 'create', '109171df-772a-4bf8-8f98-1fcbf802f710', '2021-12-11 17:43:10', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', 'directus_fields', '47', NULL),
(178, 'create', '109171df-772a-4bf8-8f98-1fcbf802f710', '2021-12-11 17:43:48', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', 'directus_fields', '48', NULL),
(179, 'update', '109171df-772a-4bf8-8f98-1fcbf802f710', '2021-12-11 17:44:03', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', 'directus_fields', '38', NULL),
(180, 'create', '109171df-772a-4bf8-8f98-1fcbf802f710', '2021-12-11 17:45:23', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', 'directus_fields', '49', NULL),
(181, 'create', '109171df-772a-4bf8-8f98-1fcbf802f710', '2021-12-11 17:45:37', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', 'certification', '1', NULL),
(182, 'create', '109171df-772a-4bf8-8f98-1fcbf802f710', '2021-12-11 17:45:43', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', 'certification', '2', NULL),
(183, 'create', '109171df-772a-4bf8-8f98-1fcbf802f710', '2021-12-11 17:46:44', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', 'directus_fields', '50', NULL),
(184, 'create', '109171df-772a-4bf8-8f98-1fcbf802f710', '2021-12-11 18:07:39', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', 'directus_collections', 'distribution_site', NULL),
(185, 'create', '109171df-772a-4bf8-8f98-1fcbf802f710', '2021-12-11 18:07:39', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', 'directus_fields', '51', NULL),
(186, 'create', '109171df-772a-4bf8-8f98-1fcbf802f710', '2021-12-11 18:07:39', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', 'directus_fields', '52', NULL),
(187, 'create', '109171df-772a-4bf8-8f98-1fcbf802f710', '2021-12-11 18:07:39', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', 'directus_fields', '53', NULL),
(188, 'create', '109171df-772a-4bf8-8f98-1fcbf802f710', '2021-12-11 18:07:39', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', 'directus_fields', '54', NULL),
(189, 'update', '109171df-772a-4bf8-8f98-1fcbf802f710', '2021-12-11 18:08:05', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', 'directus_collections', 'distribution_site', NULL),
(190, 'create', '109171df-772a-4bf8-8f98-1fcbf802f710', '2021-12-11 18:09:47', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', 'directus_fields', '55', NULL),
(191, 'create', '109171df-772a-4bf8-8f98-1fcbf802f710', '2021-12-11 18:10:08', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', 'directus_fields', '56', NULL),
(192, 'create', '109171df-772a-4bf8-8f98-1fcbf802f710', '2021-12-11 18:10:31', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', 'directus_fields', '57', NULL),
(193, 'create', '109171df-772a-4bf8-8f98-1fcbf802f710', '2021-12-11 18:12:24', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', 'directus_collections', 'distribution', NULL),
(194, 'create', '109171df-772a-4bf8-8f98-1fcbf802f710', '2021-12-11 18:12:24', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', 'directus_fields', '58', NULL),
(195, 'create', '109171df-772a-4bf8-8f98-1fcbf802f710', '2021-12-11 18:12:24', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', 'directus_fields', '59', NULL),
(196, 'create', '109171df-772a-4bf8-8f98-1fcbf802f710', '2021-12-11 18:12:24', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', 'directus_fields', '60', NULL),
(197, 'create', '109171df-772a-4bf8-8f98-1fcbf802f710', '2021-12-11 18:12:24', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', 'directus_fields', '61', NULL),
(198, 'update', '109171df-772a-4bf8-8f98-1fcbf802f710', '2021-12-11 18:13:00', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', 'directus_collections', 'distribution', NULL),
(199, 'create', '109171df-772a-4bf8-8f98-1fcbf802f710', '2021-12-11 18:13:36', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', 'directus_fields', '62', NULL),
(200, 'update', '109171df-772a-4bf8-8f98-1fcbf802f710', '2021-12-11 18:14:08', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', 'directus_collections', 'distribution_site', NULL),
(201, 'create', '109171df-772a-4bf8-8f98-1fcbf802f710', '2021-12-11 18:15:00', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', 'directus_fields', '63', NULL),
(202, 'create', '109171df-772a-4bf8-8f98-1fcbf802f710', '2021-12-11 18:15:53', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', 'directus_fields', '64', NULL),
(203, 'update', '109171df-772a-4bf8-8f98-1fcbf802f710', '2021-12-11 18:16:21', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', 'directus_collections', 'category', NULL),
(204, 'update', '109171df-772a-4bf8-8f98-1fcbf802f710', '2021-12-11 18:16:28', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', 'directus_collections', 'category', NULL),
(205, 'update', '109171df-772a-4bf8-8f98-1fcbf802f710', '2021-12-11 18:16:35', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', 'directus_collections', 'certification', NULL),
(206, 'update', '109171df-772a-4bf8-8f98-1fcbf802f710', '2021-12-11 18:16:42', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', 'directus_collections', 'products', NULL);
INSERT INTO `directus_activity` (`id`, `action`, `user`, `timestamp`, `ip`, `user_agent`, `collection`, `item`, `comment`) VALUES
(207, 'update', '109171df-772a-4bf8-8f98-1fcbf802f710', '2021-12-11 18:16:51', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', 'directus_collections', 'distribution', NULL),
(208, 'update', '109171df-772a-4bf8-8f98-1fcbf802f710', '2021-12-11 18:16:56', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', 'directus_collections', 'distribution_site', NULL),
(209, 'create', '109171df-772a-4bf8-8f98-1fcbf802f710', '2021-12-11 18:17:24', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', 'directus_collections', 'distribution_folder', NULL),
(210, 'delete', '109171df-772a-4bf8-8f98-1fcbf802f710', '2021-12-11 18:17:33', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', 'directus_collections', 'distribution_folder', NULL),
(211, 'update', '109171df-772a-4bf8-8f98-1fcbf802f710', '2021-12-11 18:18:34', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', 'directus_collections', 'category', NULL),
(212, 'update', '109171df-772a-4bf8-8f98-1fcbf802f710', '2021-12-11 18:18:34', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', 'directus_collections', 'certification', NULL),
(213, 'update', '109171df-772a-4bf8-8f98-1fcbf802f710', '2021-12-11 18:18:34', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', 'directus_collections', 'distribution', NULL),
(214, 'update', '109171df-772a-4bf8-8f98-1fcbf802f710', '2021-12-11 18:18:34', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', 'directus_collections', 'distribution_site', NULL),
(215, 'update', '109171df-772a-4bf8-8f98-1fcbf802f710', '2021-12-11 18:18:34', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', 'directus_collections', 'producer', NULL),
(216, 'update', '109171df-772a-4bf8-8f98-1fcbf802f710', '2021-12-11 18:18:35', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', 'directus_collections', 'subscription', NULL),
(217, 'update', '109171df-772a-4bf8-8f98-1fcbf802f710', '2021-12-11 18:18:35', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', 'directus_collections', 'products', NULL),
(218, 'update', '109171df-772a-4bf8-8f98-1fcbf802f710', '2021-12-11 18:18:37', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', 'directus_collections', 'category', NULL),
(219, 'update', '109171df-772a-4bf8-8f98-1fcbf802f710', '2021-12-11 18:18:37', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', 'directus_collections', 'distribution_site', NULL),
(220, 'update', '109171df-772a-4bf8-8f98-1fcbf802f710', '2021-12-11 18:18:37', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', 'directus_collections', 'producer', NULL),
(221, 'update', '109171df-772a-4bf8-8f98-1fcbf802f710', '2021-12-11 18:18:37', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', 'directus_collections', 'certification', NULL),
(222, 'update', '109171df-772a-4bf8-8f98-1fcbf802f710', '2021-12-11 18:18:37', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', 'directus_collections', 'distribution', NULL),
(223, 'update', '109171df-772a-4bf8-8f98-1fcbf802f710', '2021-12-11 18:18:37', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', 'directus_collections', 'products', NULL),
(224, 'update', '109171df-772a-4bf8-8f98-1fcbf802f710', '2021-12-11 18:18:37', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', 'directus_collections', 'subscription', NULL),
(225, 'update', '109171df-772a-4bf8-8f98-1fcbf802f710', '2021-12-11 18:18:42', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', 'directus_collections', 'producer', NULL),
(226, 'update', '109171df-772a-4bf8-8f98-1fcbf802f710', '2021-12-11 18:18:42', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', 'directus_collections', 'products', NULL),
(227, 'update', '109171df-772a-4bf8-8f98-1fcbf802f710', '2021-12-11 18:18:42', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', 'directus_collections', 'category', NULL),
(228, 'update', '109171df-772a-4bf8-8f98-1fcbf802f710', '2021-12-11 18:18:42', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', 'directus_collections', 'distribution_site', NULL),
(229, 'update', '109171df-772a-4bf8-8f98-1fcbf802f710', '2021-12-11 18:18:42', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', 'directus_collections', 'certification', NULL),
(230, 'update', '109171df-772a-4bf8-8f98-1fcbf802f710', '2021-12-11 18:18:42', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', 'directus_collections', 'subscription', NULL),
(231, 'update', '109171df-772a-4bf8-8f98-1fcbf802f710', '2021-12-11 18:18:44', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', 'directus_collections', 'category', NULL),
(232, 'update', '109171df-772a-4bf8-8f98-1fcbf802f710', '2021-12-11 18:18:44', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', 'directus_collections', 'producer', NULL),
(233, 'update', '109171df-772a-4bf8-8f98-1fcbf802f710', '2021-12-11 18:18:44', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', 'directus_collections', 'distribution_site', NULL),
(234, 'update', '109171df-772a-4bf8-8f98-1fcbf802f710', '2021-12-11 18:18:44', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', 'directus_collections', 'products', NULL),
(235, 'update', '109171df-772a-4bf8-8f98-1fcbf802f710', '2021-12-11 18:18:44', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', 'directus_collections', 'certification', NULL),
(236, 'update', '109171df-772a-4bf8-8f98-1fcbf802f710', '2021-12-11 18:18:44', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', 'directus_collections', 'subscription', NULL),
(237, 'update', '109171df-772a-4bf8-8f98-1fcbf802f710', '2021-12-11 18:18:47', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', 'directus_collections', 'category', NULL),
(238, 'update', '109171df-772a-4bf8-8f98-1fcbf802f710', '2021-12-11 18:18:47', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', 'directus_collections', 'products', NULL),
(239, 'update', '109171df-772a-4bf8-8f98-1fcbf802f710', '2021-12-11 18:18:47', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', 'directus_collections', 'producer', NULL),
(240, 'update', '109171df-772a-4bf8-8f98-1fcbf802f710', '2021-12-11 18:18:47', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', 'directus_collections', 'distribution_site', NULL),
(241, 'update', '109171df-772a-4bf8-8f98-1fcbf802f710', '2021-12-11 18:18:47', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', 'directus_collections', 'certification', NULL),
(242, 'update', '109171df-772a-4bf8-8f98-1fcbf802f710', '2021-12-11 18:18:48', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', 'directus_collections', 'subscription', NULL),
(243, 'update', '109171df-772a-4bf8-8f98-1fcbf802f710', '2021-12-11 18:18:52', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', 'directus_collections', 'category', NULL),
(244, 'update', '109171df-772a-4bf8-8f98-1fcbf802f710', '2021-12-11 18:18:52', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', 'directus_collections', 'distribution_site', NULL),
(245, 'update', '109171df-772a-4bf8-8f98-1fcbf802f710', '2021-12-11 18:18:52', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', 'directus_collections', 'subscription', NULL),
(246, 'update', '109171df-772a-4bf8-8f98-1fcbf802f710', '2021-12-11 18:18:52', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', 'directus_collections', 'producer', NULL),
(247, 'update', '109171df-772a-4bf8-8f98-1fcbf802f710', '2021-12-11 18:18:52', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', 'directus_collections', 'certification', NULL),
(248, 'update', '109171df-772a-4bf8-8f98-1fcbf802f710', '2021-12-11 18:18:58', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', 'directus_collections', 'category', NULL),
(249, 'update', '109171df-772a-4bf8-8f98-1fcbf802f710', '2021-12-11 18:18:58', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', 'directus_collections', 'subscription', NULL),
(250, 'update', '109171df-772a-4bf8-8f98-1fcbf802f710', '2021-12-11 18:18:58', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', 'directus_collections', 'producer', NULL),
(251, 'update', '109171df-772a-4bf8-8f98-1fcbf802f710', '2021-12-11 18:18:58', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', 'directus_collections', 'distribution_site', NULL),
(252, 'update', '109171df-772a-4bf8-8f98-1fcbf802f710', '2021-12-11 18:18:58', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', 'directus_collections', 'products', NULL),
(253, 'update', '109171df-772a-4bf8-8f98-1fcbf802f710', '2021-12-11 18:18:59', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', 'directus_collections', 'certification', NULL),
(254, 'update', '109171df-772a-4bf8-8f98-1fcbf802f710', '2021-12-11 18:19:00', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', 'directus_collections', 'category', NULL),
(255, 'update', '109171df-772a-4bf8-8f98-1fcbf802f710', '2021-12-11 18:19:00', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', 'directus_collections', 'subscription', NULL),
(256, 'update', '109171df-772a-4bf8-8f98-1fcbf802f710', '2021-12-11 18:19:00', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', 'directus_collections', 'distribution_site', NULL),
(257, 'update', '109171df-772a-4bf8-8f98-1fcbf802f710', '2021-12-11 18:19:00', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', 'directus_collections', 'producer', NULL),
(258, 'update', '109171df-772a-4bf8-8f98-1fcbf802f710', '2021-12-11 18:19:00', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', 'directus_collections', 'certification', NULL),
(259, 'update', '109171df-772a-4bf8-8f98-1fcbf802f710', '2021-12-11 18:19:01', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', 'directus_collections', 'products', NULL),
(260, 'update', '109171df-772a-4bf8-8f98-1fcbf802f710', '2021-12-11 18:19:08', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', 'directus_collections', 'category', NULL),
(261, 'update', '109171df-772a-4bf8-8f98-1fcbf802f710', '2021-12-11 18:19:08', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', 'directus_collections', 'producer', NULL),
(262, 'update', '109171df-772a-4bf8-8f98-1fcbf802f710', '2021-12-11 18:19:08', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', 'directus_collections', 'certification', NULL),
(263, 'update', '109171df-772a-4bf8-8f98-1fcbf802f710', '2021-12-11 18:19:08', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', 'directus_collections', 'distribution_site', NULL),
(264, 'update', '109171df-772a-4bf8-8f98-1fcbf802f710', '2021-12-11 18:19:08', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', 'directus_collections', 'subscription', NULL),
(265, 'update', '109171df-772a-4bf8-8f98-1fcbf802f710', '2021-12-11 18:19:09', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', 'directus_collections', 'products', NULL),
(266, 'update', '109171df-772a-4bf8-8f98-1fcbf802f710', '2021-12-11 18:19:13', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', 'directus_collections', 'subscription', NULL),
(267, 'update', '109171df-772a-4bf8-8f98-1fcbf802f710', '2021-12-11 18:19:13', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', 'directus_collections', 'distribution_site', NULL),
(268, 'update', '109171df-772a-4bf8-8f98-1fcbf802f710', '2021-12-11 18:19:13', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', 'directus_collections', 'products', NULL),
(269, 'update', '109171df-772a-4bf8-8f98-1fcbf802f710', '2021-12-11 18:19:13', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', 'directus_collections', 'producer', NULL),
(270, 'create', '109171df-772a-4bf8-8f98-1fcbf802f710', '2021-12-11 18:19:35', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', 'directus_collections', 'association', NULL),
(271, 'create', '109171df-772a-4bf8-8f98-1fcbf802f710', '2021-12-11 18:19:35', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', 'directus_fields', '65', NULL),
(272, 'create', '109171df-772a-4bf8-8f98-1fcbf802f710', '2021-12-11 18:19:35', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', 'directus_fields', '66', NULL),
(273, 'create', '109171df-772a-4bf8-8f98-1fcbf802f710', '2021-12-11 18:19:35', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', 'directus_fields', '67', NULL),
(274, 'create', '109171df-772a-4bf8-8f98-1fcbf802f710', '2021-12-11 18:19:35', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', 'directus_fields', '68', NULL),
(275, 'update', '109171df-772a-4bf8-8f98-1fcbf802f710', '2021-12-11 18:21:33', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', 'directus_collections', 'association', NULL),
(276, 'update', '109171df-772a-4bf8-8f98-1fcbf802f710', '2021-12-11 18:21:38', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', 'directus_collections', 'association', NULL),
(277, 'update', '109171df-772a-4bf8-8f98-1fcbf802f710', '2021-12-11 18:21:38', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', 'directus_collections', 'producer', NULL),
(278, 'update', '109171df-772a-4bf8-8f98-1fcbf802f710', '2021-12-11 18:21:38', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', 'directus_collections', 'products', NULL),
(279, 'update', '109171df-772a-4bf8-8f98-1fcbf802f710', '2021-12-11 18:21:38', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', 'directus_collections', 'distribution_site', NULL),
(280, 'update', '109171df-772a-4bf8-8f98-1fcbf802f710', '2021-12-11 18:21:38', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', 'directus_collections', 'subscription', NULL),
(281, 'update', '109171df-772a-4bf8-8f98-1fcbf802f710', '2021-12-11 18:21:43', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', 'directus_collections', 'association', NULL),
(282, 'update', '109171df-772a-4bf8-8f98-1fcbf802f710', '2021-12-11 18:21:45', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', 'directus_collections', 'subscription', NULL),
(283, 'update', '109171df-772a-4bf8-8f98-1fcbf802f710', '2021-12-11 18:21:45', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', 'directus_collections', 'producer', NULL),
(284, 'update', '109171df-772a-4bf8-8f98-1fcbf802f710', '2021-12-11 18:21:45', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', 'directus_collections', 'distribution_site', NULL),
(285, 'update', '109171df-772a-4bf8-8f98-1fcbf802f710', '2021-12-11 18:21:45', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', 'directus_collections', 'products', NULL),
(286, 'update', '109171df-772a-4bf8-8f98-1fcbf802f710', '2021-12-11 18:21:45', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', 'directus_collections', 'association', NULL),
(287, 'create', '109171df-772a-4bf8-8f98-1fcbf802f710', '2021-12-11 18:22:11', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', 'directus_fields', '69', NULL),
(288, 'create', '109171df-772a-4bf8-8f98-1fcbf802f710', '2021-12-11 18:24:44', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', 'directus_fields', '70', NULL),
(289, 'create', '109171df-772a-4bf8-8f98-1fcbf802f710', '2021-12-11 18:48:42', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', 'directus_collections', 'city', NULL),
(290, 'create', '109171df-772a-4bf8-8f98-1fcbf802f710', '2021-12-11 18:48:43', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', 'directus_fields', '71', NULL),
(291, 'create', '109171df-772a-4bf8-8f98-1fcbf802f710', '2021-12-11 18:48:43', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', 'directus_fields', '72', NULL),
(292, 'create', '109171df-772a-4bf8-8f98-1fcbf802f710', '2021-12-11 18:48:43', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', 'directus_fields', '73', NULL),
(293, 'create', '109171df-772a-4bf8-8f98-1fcbf802f710', '2021-12-11 18:49:10', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', 'directus_fields', '74', NULL),
(294, 'update', '109171df-772a-4bf8-8f98-1fcbf802f710', '2021-12-11 18:49:22', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', 'directus_collections', 'city', NULL),
(295, 'create', '109171df-772a-4bf8-8f98-1fcbf802f710', '2021-12-11 18:50:03', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', 'directus_fields', '75', NULL),
(296, 'create', '109171df-772a-4bf8-8f98-1fcbf802f710', '2021-12-11 18:50:36', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', 'directus_fields', '76', NULL),
(297, 'update', '109171df-772a-4bf8-8f98-1fcbf802f710', '2021-12-11 18:50:40', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', 'directus_fields', '76', NULL),
(298, 'update', '109171df-772a-4bf8-8f98-1fcbf802f710', '2021-12-11 18:50:42', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', 'directus_fields', '15', NULL),
(299, 'update', '109171df-772a-4bf8-8f98-1fcbf802f710', '2021-12-11 18:50:42', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', 'directus_fields', '16', NULL),
(300, 'update', '109171df-772a-4bf8-8f98-1fcbf802f710', '2021-12-11 18:50:42', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', 'directus_fields', '17', NULL),
(301, 'update', '109171df-772a-4bf8-8f98-1fcbf802f710', '2021-12-11 18:50:42', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', 'directus_fields', '18', NULL),
(302, 'update', '109171df-772a-4bf8-8f98-1fcbf802f710', '2021-12-11 18:50:42', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', 'directus_fields', '19', NULL),
(303, 'update', '109171df-772a-4bf8-8f98-1fcbf802f710', '2021-12-11 18:50:42', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', 'directus_fields', '20', NULL),
(304, 'update', '109171df-772a-4bf8-8f98-1fcbf802f710', '2021-12-11 18:50:42', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', 'directus_fields', '21', NULL),
(305, 'update', '109171df-772a-4bf8-8f98-1fcbf802f710', '2021-12-11 18:50:42', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', 'directus_fields', '23', NULL),
(306, 'update', '109171df-772a-4bf8-8f98-1fcbf802f710', '2021-12-11 18:50:42', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', 'directus_fields', '76', NULL),
(307, 'update', '109171df-772a-4bf8-8f98-1fcbf802f710', '2021-12-11 18:50:42', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', 'directus_fields', '22', NULL),
(308, 'create', '109171df-772a-4bf8-8f98-1fcbf802f710', '2021-12-11 18:51:30', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', 'directus_fields', '77', NULL),
(309, 'update', '109171df-772a-4bf8-8f98-1fcbf802f710', '2021-12-11 18:51:44', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', 'directus_fields', '56', NULL),
(310, 'update', '109171df-772a-4bf8-8f98-1fcbf802f710', '2021-12-11 18:51:46', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', 'directus_fields', '75', NULL),
(311, 'update', '109171df-772a-4bf8-8f98-1fcbf802f710', '2021-12-11 18:52:19', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', 'directus_fields', '75', NULL),
(312, 'update', '109171df-772a-4bf8-8f98-1fcbf802f710', '2021-12-11 18:52:38', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', 'directus_fields', '76', NULL),
(313, 'create', '109171df-772a-4bf8-8f98-1fcbf802f710', '2021-12-11 18:53:15', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', 'directus_fields', '78', NULL),
(314, 'update', '109171df-772a-4bf8-8f98-1fcbf802f710', '2021-12-11 18:53:18', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', 'directus_fields', '78', NULL),
(315, 'create', '109171df-772a-4bf8-8f98-1fcbf802f710', '2021-12-11 18:54:05', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', 'directus_fields', '79', NULL),
(316, 'update', '109171df-772a-4bf8-8f98-1fcbf802f710', '2021-12-11 18:54:09', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', 'directus_fields', '79', NULL),
(317, 'update', '109171df-772a-4bf8-8f98-1fcbf802f710', '2021-12-11 18:54:29', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', 'directus_fields', '76', NULL),
(318, 'update', '109171df-772a-4bf8-8f98-1fcbf802f710', '2021-12-11 18:54:43', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', 'directus_fields', '76', NULL),
(319, 'update', '109171df-772a-4bf8-8f98-1fcbf802f710', '2021-12-11 18:54:59', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', 'directus_fields', '75', NULL),
(320, 'update', '109171df-772a-4bf8-8f98-1fcbf802f710', '2021-12-11 18:55:11', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', 'directus_fields', '75', NULL),
(321, 'create', '109171df-772a-4bf8-8f98-1fcbf802f710', '2021-12-11 18:56:19', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', 'directus_collections', 'order', NULL),
(322, 'create', '109171df-772a-4bf8-8f98-1fcbf802f710', '2021-12-11 18:56:19', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', 'directus_fields', '80', NULL),
(323, 'create', '109171df-772a-4bf8-8f98-1fcbf802f710', '2021-12-11 18:56:19', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', 'directus_fields', '81', NULL),
(324, 'create', '109171df-772a-4bf8-8f98-1fcbf802f710', '2021-12-11 18:56:19', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', 'directus_fields', '82', NULL),
(325, 'create', '109171df-772a-4bf8-8f98-1fcbf802f710', '2021-12-11 18:56:19', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', 'directus_fields', '83', NULL),
(326, 'update', '109171df-772a-4bf8-8f98-1fcbf802f710', '2021-12-11 18:56:39', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', 'directus_collections', 'order', NULL),
(327, 'create', '109171df-772a-4bf8-8f98-1fcbf802f710', '2021-12-11 18:57:10', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', 'directus_fields', '84', NULL),
(328, 'create', '109171df-772a-4bf8-8f98-1fcbf802f710', '2021-12-11 18:57:48', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', 'directus_fields', '85', NULL),
(329, 'create', '109171df-772a-4bf8-8f98-1fcbf802f710', '2021-12-11 18:59:26', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', 'directus_fields', '86', NULL),
(330, 'create', '109171df-772a-4bf8-8f98-1fcbf802f710', '2021-12-11 19:02:59', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', 'directus_collections', 'order_product', NULL),
(331, 'create', '109171df-772a-4bf8-8f98-1fcbf802f710', '2021-12-11 19:02:59', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', 'directus_fields', '87', NULL),
(332, 'create', '109171df-772a-4bf8-8f98-1fcbf802f710', '2021-12-11 19:02:59', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', 'directus_fields', '88', NULL),
(333, 'create', '109171df-772a-4bf8-8f98-1fcbf802f710', '2021-12-11 19:02:59', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', 'directus_fields', '89', NULL),
(334, 'create', '109171df-772a-4bf8-8f98-1fcbf802f710', '2021-12-11 19:02:59', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', 'directus_fields', '90', NULL),
(335, 'update', '109171df-772a-4bf8-8f98-1fcbf802f710', '2021-12-11 19:03:44', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', 'directus_collections', 'order_product', NULL),
(336, 'update', '109171df-772a-4bf8-8f98-1fcbf802f710', '2021-12-11 19:03:48', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', 'directus_collections', 'order_product', NULL),
(337, 'update', '109171df-772a-4bf8-8f98-1fcbf802f710', '2021-12-11 19:03:48', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', 'directus_collections', 'association', NULL),
(338, 'update', '109171df-772a-4bf8-8f98-1fcbf802f710', '2021-12-11 19:03:48', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', 'directus_collections', 'distribution_site', NULL),
(339, 'update', '109171df-772a-4bf8-8f98-1fcbf802f710', '2021-12-11 19:03:48', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', 'directus_collections', 'producer', NULL),
(340, 'update', '109171df-772a-4bf8-8f98-1fcbf802f710', '2021-12-11 19:03:48', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', 'directus_collections', 'products', NULL),
(341, 'update', '109171df-772a-4bf8-8f98-1fcbf802f710', '2021-12-11 19:03:48', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', 'directus_collections', 'city', NULL),
(342, 'update', '109171df-772a-4bf8-8f98-1fcbf802f710', '2021-12-11 19:03:48', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', 'directus_collections', 'order', NULL),
(343, 'update', '109171df-772a-4bf8-8f98-1fcbf802f710', '2021-12-11 19:04:01', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', 'directus_collections', 'order', NULL),
(344, 'update', '109171df-772a-4bf8-8f98-1fcbf802f710', '2021-12-11 19:04:14', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', 'directus_collections', 'city', NULL),
(345, 'update', '109171df-772a-4bf8-8f98-1fcbf802f710', '2021-12-11 19:04:19', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', 'directus_collections', 'order', NULL),
(346, 'update', '109171df-772a-4bf8-8f98-1fcbf802f710', '2021-12-11 19:04:19', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', 'directus_collections', 'association', NULL),
(347, 'update', '109171df-772a-4bf8-8f98-1fcbf802f710', '2021-12-11 19:04:19', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', 'directus_collections', 'products', NULL),
(348, 'update', '109171df-772a-4bf8-8f98-1fcbf802f710', '2021-12-11 19:04:19', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', 'directus_collections', 'distribution_site', NULL),
(349, 'update', '109171df-772a-4bf8-8f98-1fcbf802f710', '2021-12-11 19:04:19', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', 'directus_collections', 'producer', NULL),
(350, 'update', '109171df-772a-4bf8-8f98-1fcbf802f710', '2021-12-11 19:04:19', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', 'directus_collections', 'city', NULL),
(351, 'update', '109171df-772a-4bf8-8f98-1fcbf802f710', '2021-12-11 19:04:23', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', 'directus_collections', 'distribution_site', NULL),
(352, 'update', '109171df-772a-4bf8-8f98-1fcbf802f710', '2021-12-11 19:04:23', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', 'directus_collections', 'producer', NULL),
(353, 'update', '109171df-772a-4bf8-8f98-1fcbf802f710', '2021-12-11 19:04:23', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', 'directus_collections', 'association', NULL),
(354, 'update', '109171df-772a-4bf8-8f98-1fcbf802f710', '2021-12-11 19:04:23', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', 'directus_collections', 'city', NULL),
(355, 'update', '109171df-772a-4bf8-8f98-1fcbf802f710', '2021-12-11 19:04:23', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', 'directus_collections', 'products', NULL),
(356, 'update', '109171df-772a-4bf8-8f98-1fcbf802f710', '2021-12-11 19:04:37', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', 'directus_collections', 'producer', NULL),
(357, 'update', '109171df-772a-4bf8-8f98-1fcbf802f710', '2021-12-11 19:04:37', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', 'directus_collections', 'distribution_site', NULL),
(358, 'update', '109171df-772a-4bf8-8f98-1fcbf802f710', '2021-12-11 19:04:37', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', 'directus_collections', 'products', NULL),
(359, 'update', '109171df-772a-4bf8-8f98-1fcbf802f710', '2021-12-11 19:04:38', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', 'directus_collections', 'city', NULL),
(360, 'update', '109171df-772a-4bf8-8f98-1fcbf802f710', '2021-12-11 19:04:38', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', 'directus_collections', 'association', NULL),
(361, 'update', '109171df-772a-4bf8-8f98-1fcbf802f710', '2021-12-11 19:04:38', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', 'directus_collections', 'order', NULL),
(362, 'update', '109171df-772a-4bf8-8f98-1fcbf802f710', '2021-12-11 19:04:45', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', 'directus_collections', 'producer', NULL),
(363, 'update', '109171df-772a-4bf8-8f98-1fcbf802f710', '2021-12-11 19:04:45', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', 'directus_collections', 'products', NULL),
(364, 'update', '109171df-772a-4bf8-8f98-1fcbf802f710', '2021-12-11 19:04:45', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', 'directus_collections', 'order', NULL),
(365, 'update', '109171df-772a-4bf8-8f98-1fcbf802f710', '2021-12-11 19:04:45', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', 'directus_collections', 'association', NULL),
(366, 'update', '109171df-772a-4bf8-8f98-1fcbf802f710', '2021-12-11 19:04:45', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', 'directus_collections', 'distribution_site', NULL),
(367, 'update', '109171df-772a-4bf8-8f98-1fcbf802f710', '2021-12-11 19:04:45', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', 'directus_collections', 'city', NULL),
(368, 'create', '109171df-772a-4bf8-8f98-1fcbf802f710', '2021-12-11 19:05:50', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', 'directus_fields', '91', NULL),
(369, 'create', '109171df-772a-4bf8-8f98-1fcbf802f710', '2021-12-11 19:06:38', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', 'directus_fields', '92', NULL),
(370, 'create', '109171df-772a-4bf8-8f98-1fcbf802f710', '2021-12-11 19:06:38', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', 'directus_fields', '93', NULL),
(371, 'create', '109171df-772a-4bf8-8f98-1fcbf802f710', '2021-12-11 19:07:43', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', 'directus_fields', '94', NULL),
(372, 'create', '109171df-772a-4bf8-8f98-1fcbf802f710', '2021-12-11 19:08:11', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', 'directus_fields', '95', NULL),
(373, 'update', '109171df-772a-4bf8-8f98-1fcbf802f710', '2021-12-11 19:08:22', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', 'directus_fields', '30', NULL),
(374, 'update', '109171df-772a-4bf8-8f98-1fcbf802f710', '2021-12-11 19:08:22', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', 'directus_fields', '31', NULL),
(375, 'update', '109171df-772a-4bf8-8f98-1fcbf802f710', '2021-12-11 19:08:22', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', 'directus_fields', '32', NULL),
(376, 'update', '109171df-772a-4bf8-8f98-1fcbf802f710', '2021-12-11 19:08:22', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', 'directus_fields', '33', NULL),
(377, 'update', '109171df-772a-4bf8-8f98-1fcbf802f710', '2021-12-11 19:08:22', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', 'directus_fields', '34', NULL),
(378, 'update', '109171df-772a-4bf8-8f98-1fcbf802f710', '2021-12-11 19:08:22', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', 'directus_fields', '95', NULL),
(379, 'update', '109171df-772a-4bf8-8f98-1fcbf802f710', '2021-12-11 19:08:22', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', 'directus_fields', '35', NULL),
(380, 'update', '109171df-772a-4bf8-8f98-1fcbf802f710', '2021-12-11 19:08:22', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', 'directus_fields', '38', NULL),
(381, 'update', '109171df-772a-4bf8-8f98-1fcbf802f710', '2021-12-11 19:08:22', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', 'directus_fields', '36', NULL),
(382, 'update', '109171df-772a-4bf8-8f98-1fcbf802f710', '2021-12-11 19:08:22', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', 'directus_fields', '41', NULL),
(383, 'update', '109171df-772a-4bf8-8f98-1fcbf802f710', '2021-12-11 19:08:22', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', 'directus_fields', '37', NULL),
(384, 'update', '109171df-772a-4bf8-8f98-1fcbf802f710', '2021-12-11 19:08:22', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', 'directus_fields', '39', NULL),
(385, 'update', '109171df-772a-4bf8-8f98-1fcbf802f710', '2021-12-11 19:08:22', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', 'directus_fields', '40', NULL),
(386, 'update', '109171df-772a-4bf8-8f98-1fcbf802f710', '2021-12-11 19:08:22', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', 'directus_fields', '42', NULL),
(387, 'update', '109171df-772a-4bf8-8f98-1fcbf802f710', '2021-12-11 19:08:22', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', 'directus_fields', '43', NULL),
(388, 'update', '109171df-772a-4bf8-8f98-1fcbf802f710', '2021-12-11 19:08:22', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', 'directus_fields', '48', NULL),
(389, 'update', '109171df-772a-4bf8-8f98-1fcbf802f710', '2021-12-11 19:08:22', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', 'directus_fields', '50', NULL),
(390, 'update', '109171df-772a-4bf8-8f98-1fcbf802f710', '2021-12-11 19:08:35', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', 'directus_fields', '94', NULL),
(391, 'update', '109171df-772a-4bf8-8f98-1fcbf802f710', '2021-12-11 19:08:41', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', 'directus_fields', '94', NULL),
(392, 'create', '109171df-772a-4bf8-8f98-1fcbf802f710', '2021-12-11 19:09:11', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', 'directus_fields', '96', NULL),
(393, 'create', '109171df-772a-4bf8-8f98-1fcbf802f710', '2021-12-11 19:09:36', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', 'directus_fields', '97', NULL),
(394, 'create', '109171df-772a-4bf8-8f98-1fcbf802f710', '2021-12-11 19:09:54', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', 'directus_fields', '98', NULL),
(395, 'create', '109171df-772a-4bf8-8f98-1fcbf802f710', '2021-12-11 19:11:01', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', 'directus_fields', '99', NULL),
(396, 'create', '109171df-772a-4bf8-8f98-1fcbf802f710', '2021-12-11 19:11:36', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', 'directus_fields', '100', NULL),
(397, 'delete', '109171df-772a-4bf8-8f98-1fcbf802f710', '2021-12-11 19:12:17', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', 'directus_users', '9739218f-0108-4da6-a584-55edb117841a', NULL),
(398, 'create', '109171df-772a-4bf8-8f98-1fcbf802f710', '2021-12-11 19:13:18', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', 'directus_files', '07ee7a26-5600-4ada-9823-42d652cb557a', NULL),
(399, 'update', '109171df-772a-4bf8-8f98-1fcbf802f710', '2021-12-11 19:13:20', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', 'directus_users', '109171df-772a-4bf8-8f98-1fcbf802f710', NULL),
(400, 'create', '109171df-772a-4bf8-8f98-1fcbf802f710', '2021-12-11 19:14:28', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', 'city', '1', NULL),
(401, 'create', '109171df-772a-4bf8-8f98-1fcbf802f710', '2021-12-11 19:14:28', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', 'association', '1', NULL),
(402, 'update', '109171df-772a-4bf8-8f98-1fcbf802f710', '2021-12-11 19:14:48', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', 'association', '1', NULL),
(403, 'create', '109171df-772a-4bf8-8f98-1fcbf802f710', '2021-12-11 19:15:30', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', 'city', '2', NULL),
(404, 'create', '109171df-772a-4bf8-8f98-1fcbf802f710', '2021-12-11 19:15:30', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', 'association', '2', NULL),
(405, 'update', '109171df-772a-4bf8-8f98-1fcbf802f710', '2021-12-11 19:15:34', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', 'association', '2', NULL),
(406, 'update', '109171df-772a-4bf8-8f98-1fcbf802f710', '2021-12-11 19:16:58', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', 'directus_fields', '19', NULL);
INSERT INTO `directus_activity` (`id`, `action`, `user`, `timestamp`, `ip`, `user_agent`, `collection`, `item`, `comment`) VALUES
(407, 'create', '109171df-772a-4bf8-8f98-1fcbf802f710', '2021-12-11 19:18:16', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', 'city', '3', NULL),
(408, 'create', '109171df-772a-4bf8-8f98-1fcbf802f710', '2021-12-11 19:18:16', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', 'producer', '1', NULL),
(409, 'create', '109171df-772a-4bf8-8f98-1fcbf802f710', '2021-12-11 19:20:13', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', 'city', '4', NULL),
(410, 'create', '109171df-772a-4bf8-8f98-1fcbf802f710', '2021-12-11 19:20:13', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', 'producer', '2', NULL),
(411, 'update', '109171df-772a-4bf8-8f98-1fcbf802f710', '2021-12-11 19:20:18', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', 'producer', '2', NULL),
(412, 'create', '109171df-772a-4bf8-8f98-1fcbf802f710', '2021-12-12 19:28:34', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', 'directus_files', '8c287c2a-0902-43be-ac32-09a025d001a0', NULL),
(413, 'create', '109171df-772a-4bf8-8f98-1fcbf802f710', '2021-12-12 19:28:45', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', 'directus_users', 'ea769905-90c0-452f-9c2f-c8c0bf3538e8', NULL),
(414, 'update', '109171df-772a-4bf8-8f98-1fcbf802f710', '2021-12-12 19:28:54', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', 'directus_users', 'ea769905-90c0-452f-9c2f-c8c0bf3538e8', NULL),
(415, 'create', '109171df-772a-4bf8-8f98-1fcbf802f710', '2021-12-12 19:29:49', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', 'directus_files', '8713c1fe-89aa-48d0-91eb-10497d1b2e27', NULL),
(416, 'create', '109171df-772a-4bf8-8f98-1fcbf802f710', '2021-12-12 19:29:55', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', 'directus_users', 'f17cb9ab-7646-4262-b01d-b0143ed21339', NULL),
(417, 'create', '109171df-772a-4bf8-8f98-1fcbf802f710', '2021-12-12 19:30:28', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', 'directus_users', '396cbc17-2191-4eea-aba5-afaf2d710a13', NULL),
(418, 'create', '109171df-772a-4bf8-8f98-1fcbf802f710', '2021-12-12 19:30:55', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', 'directus_files', '0ce3f020-808a-4a94-8356-1c957e468bd6', NULL),
(419, 'create', '109171df-772a-4bf8-8f98-1fcbf802f710', '2021-12-12 19:31:00', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', 'directus_users', 'a03a6aba-e836-47e1-8f32-da94deef4ce8', NULL),
(420, 'create', '109171df-772a-4bf8-8f98-1fcbf802f710', '2021-12-12 19:32:02', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', 'directus_fields', '101', NULL),
(421, 'update', '109171df-772a-4bf8-8f98-1fcbf802f710', '2021-12-12 19:32:06', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', 'directus_fields', '101', NULL),
(422, 'create', '109171df-772a-4bf8-8f98-1fcbf802f710', '2021-12-12 19:32:48', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', 'directus_fields', '102', NULL),
(423, 'update', '109171df-772a-4bf8-8f98-1fcbf802f710', '2021-12-12 19:32:52', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', 'directus_fields', '102', NULL),
(424, 'update', '109171df-772a-4bf8-8f98-1fcbf802f710', '2021-12-12 19:32:56', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', 'directus_fields', '1', NULL),
(425, 'update', '109171df-772a-4bf8-8f98-1fcbf802f710', '2021-12-12 19:32:56', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', 'directus_fields', '2', NULL),
(426, 'update', '109171df-772a-4bf8-8f98-1fcbf802f710', '2021-12-12 19:32:56', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', 'directus_fields', '3', NULL),
(427, 'update', '109171df-772a-4bf8-8f98-1fcbf802f710', '2021-12-12 19:32:56', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', 'directus_fields', '13', NULL),
(428, 'update', '109171df-772a-4bf8-8f98-1fcbf802f710', '2021-12-12 19:32:56', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', 'directus_fields', '4', NULL),
(429, 'update', '109171df-772a-4bf8-8f98-1fcbf802f710', '2021-12-12 19:32:56', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', 'directus_fields', '5', NULL),
(430, 'update', '109171df-772a-4bf8-8f98-1fcbf802f710', '2021-12-12 19:32:56', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', 'directus_fields', '6', NULL),
(431, 'update', '109171df-772a-4bf8-8f98-1fcbf802f710', '2021-12-12 19:32:56', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', 'directus_fields', '7', NULL),
(432, 'update', '109171df-772a-4bf8-8f98-1fcbf802f710', '2021-12-12 19:32:56', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', 'directus_fields', '14', NULL),
(433, 'update', '109171df-772a-4bf8-8f98-1fcbf802f710', '2021-12-12 19:32:56', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', 'directus_fields', '9', NULL),
(434, 'update', '109171df-772a-4bf8-8f98-1fcbf802f710', '2021-12-12 19:32:56', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', 'directus_fields', '10', NULL),
(435, 'update', '109171df-772a-4bf8-8f98-1fcbf802f710', '2021-12-12 19:32:56', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', 'directus_fields', '12', NULL),
(436, 'update', '109171df-772a-4bf8-8f98-1fcbf802f710', '2021-12-12 19:32:56', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', 'directus_fields', '11', NULL),
(437, 'update', '109171df-772a-4bf8-8f98-1fcbf802f710', '2021-12-12 19:32:56', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', 'directus_fields', '101', NULL),
(438, 'update', '109171df-772a-4bf8-8f98-1fcbf802f710', '2021-12-12 19:32:56', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', 'directus_fields', '102', NULL),
(439, 'update', '109171df-772a-4bf8-8f98-1fcbf802f710', '2021-12-12 19:32:56', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', 'directus_fields', '70', NULL),
(440, 'create', '109171df-772a-4bf8-8f98-1fcbf802f710', '2021-12-12 19:33:39', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', 'subscription', '2', NULL),
(441, 'create', '109171df-772a-4bf8-8f98-1fcbf802f710', '2021-12-12 19:34:28', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', 'subscription', '3', NULL),
(442, 'update', '109171df-772a-4bf8-8f98-1fcbf802f710', '2021-12-12 19:34:37', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', 'subscription', '3', NULL),
(443, 'create', '109171df-772a-4bf8-8f98-1fcbf802f710', '2021-12-12 19:35:23', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', 'subscription', '4', NULL),
(444, 'create', '109171df-772a-4bf8-8f98-1fcbf802f710', '2021-12-12 19:36:16', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', 'subscription', '5', NULL),
(445, 'update', '109171df-772a-4bf8-8f98-1fcbf802f710', '2021-12-12 19:36:22', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', 'subscription', '5', NULL),
(446, 'update', '109171df-772a-4bf8-8f98-1fcbf802f710', '2021-12-12 19:37:01', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', 'directus_fields', '13', NULL),
(447, 'create', '109171df-772a-4bf8-8f98-1fcbf802f710', '2021-12-12 19:38:18', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', 'distribution_site', '1', NULL),
(448, 'create', '109171df-772a-4bf8-8f98-1fcbf802f710', '2021-12-12 19:38:33', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', 'distribution_site', '2', NULL),
(449, 'update', '109171df-772a-4bf8-8f98-1fcbf802f710', '2021-12-12 19:38:46', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', 'distribution_site', '1', NULL),
(450, 'update', '109171df-772a-4bf8-8f98-1fcbf802f710', '2021-12-12 19:38:49', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', 'distribution_site', '2', NULL),
(451, 'create', '109171df-772a-4bf8-8f98-1fcbf802f710', '2021-12-12 19:39:30', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', 'directus_fields', '103', NULL),
(452, 'create', '109171df-772a-4bf8-8f98-1fcbf802f710', '2021-12-12 19:39:30', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', 'directus_collections', 'distribution_producer', NULL),
(453, 'create', '109171df-772a-4bf8-8f98-1fcbf802f710', '2021-12-12 19:39:30', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', 'directus_fields', '104', NULL),
(454, 'create', '109171df-772a-4bf8-8f98-1fcbf802f710', '2021-12-12 19:39:30', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', 'directus_fields', '105', NULL),
(455, 'create', '109171df-772a-4bf8-8f98-1fcbf802f710', '2021-12-12 19:39:30', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', 'directus_fields', '106', NULL),
(456, 'update', '109171df-772a-4bf8-8f98-1fcbf802f710', '2021-12-12 19:39:33', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', 'directus_fields', '58', NULL),
(457, 'update', '109171df-772a-4bf8-8f98-1fcbf802f710', '2021-12-12 19:39:33', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', 'directus_fields', '59', NULL),
(458, 'update', '109171df-772a-4bf8-8f98-1fcbf802f710', '2021-12-12 19:39:33', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', 'directus_fields', '60', NULL),
(459, 'update', '109171df-772a-4bf8-8f98-1fcbf802f710', '2021-12-12 19:39:33', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', 'directus_fields', '61', NULL),
(460, 'update', '109171df-772a-4bf8-8f98-1fcbf802f710', '2021-12-12 19:39:33', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', 'directus_fields', '62', NULL),
(461, 'update', '109171df-772a-4bf8-8f98-1fcbf802f710', '2021-12-12 19:39:33', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', 'directus_fields', '63', NULL),
(462, 'update', '109171df-772a-4bf8-8f98-1fcbf802f710', '2021-12-12 19:39:33', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', 'directus_fields', '103', NULL),
(463, 'update', '109171df-772a-4bf8-8f98-1fcbf802f710', '2021-12-12 19:39:33', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', 'directus_fields', '85', NULL),
(464, 'update', '109171df-772a-4bf8-8f98-1fcbf802f710', '2021-12-12 19:39:54', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', 'directus_fields', '103', NULL),
(465, 'update', '109171df-772a-4bf8-8f98-1fcbf802f710', '2021-12-12 19:40:10', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', 'directus_fields', '103', NULL),
(466, 'create', '109171df-772a-4bf8-8f98-1fcbf802f710', '2021-12-12 19:40:37', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', 'distribution_producer', '1', NULL),
(467, 'create', '109171df-772a-4bf8-8f98-1fcbf802f710', '2021-12-12 19:40:37', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', 'distribution_producer', '2', NULL),
(468, 'create', '109171df-772a-4bf8-8f98-1fcbf802f710', '2021-12-12 19:40:37', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', 'distribution', '1', NULL),
(469, 'create', '109171df-772a-4bf8-8f98-1fcbf802f710', '2021-12-12 19:40:59', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', 'distribution_producer', '3', NULL),
(470, 'create', '109171df-772a-4bf8-8f98-1fcbf802f710', '2021-12-12 19:40:59', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', 'distribution', '2', NULL),
(471, 'delete', '109171df-772a-4bf8-8f98-1fcbf802f710', '2021-12-13 16:47:55', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', 'subscription', '3', NULL),
(472, 'create', '109171df-772a-4bf8-8f98-1fcbf802f710', '2021-12-13 16:49:03', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', 'subscription', '6', NULL),
(473, 'create', '109171df-772a-4bf8-8f98-1fcbf802f710', '2021-12-13 16:50:35', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', 'directus_fields', '107', NULL),
(474, 'create', '109171df-772a-4bf8-8f98-1fcbf802f710', '2021-12-13 16:50:55', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', 'directus_fields', '108', NULL),
(475, 'update', '109171df-772a-4bf8-8f98-1fcbf802f710', '2021-12-13 16:51:01', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', 'directus_fields', '107', NULL),
(476, 'update', '109171df-772a-4bf8-8f98-1fcbf802f710', '2021-12-13 16:51:05', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', 'directus_fields', '108', NULL),
(477, 'update', '109171df-772a-4bf8-8f98-1fcbf802f710', '2021-12-13 16:51:08', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', 'directus_fields', '15', NULL),
(478, 'update', '109171df-772a-4bf8-8f98-1fcbf802f710', '2021-12-13 16:51:08', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', 'directus_fields', '16', NULL),
(479, 'update', '109171df-772a-4bf8-8f98-1fcbf802f710', '2021-12-13 16:51:08', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', 'directus_fields', '17', NULL),
(480, 'update', '109171df-772a-4bf8-8f98-1fcbf802f710', '2021-12-13 16:51:08', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', 'directus_fields', '18', NULL),
(481, 'update', '109171df-772a-4bf8-8f98-1fcbf802f710', '2021-12-13 16:51:08', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', 'directus_fields', '19', NULL),
(482, 'update', '109171df-772a-4bf8-8f98-1fcbf802f710', '2021-12-13 16:51:08', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', 'directus_fields', '20', NULL),
(483, 'update', '109171df-772a-4bf8-8f98-1fcbf802f710', '2021-12-13 16:51:08', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', 'directus_fields', '21', NULL),
(484, 'update', '109171df-772a-4bf8-8f98-1fcbf802f710', '2021-12-13 16:51:08', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', 'directus_fields', '23', NULL),
(485, 'update', '109171df-772a-4bf8-8f98-1fcbf802f710', '2021-12-13 16:51:08', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', 'directus_fields', '76', NULL),
(486, 'update', '109171df-772a-4bf8-8f98-1fcbf802f710', '2021-12-13 16:51:08', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', 'directus_fields', '107', NULL),
(487, 'update', '109171df-772a-4bf8-8f98-1fcbf802f710', '2021-12-13 16:51:08', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', 'directus_fields', '108', NULL),
(488, 'update', '109171df-772a-4bf8-8f98-1fcbf802f710', '2021-12-13 16:51:08', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', 'directus_fields', '22', NULL),
(489, 'create', '109171df-772a-4bf8-8f98-1fcbf802f710', '2021-12-13 16:52:57', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', 'distribution_producer', '4', NULL),
(490, 'create', '109171df-772a-4bf8-8f98-1fcbf802f710', '2021-12-13 16:52:57', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', 'distribution_producer', '5', NULL),
(491, 'create', '109171df-772a-4bf8-8f98-1fcbf802f710', '2021-12-13 16:52:57', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', 'distribution', '3', NULL),
(492, 'update', '109171df-772a-4bf8-8f98-1fcbf802f710', '2021-12-13 16:53:16', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', 'distribution', '3', NULL),
(493, 'login', '109171df-772a-4bf8-8f98-1fcbf802f710', '2022-01-04 14:09:20', '172.20.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', 'directus_users', '109171df-772a-4bf8-8f98-1fcbf802f710', NULL),
(494, 'create', '109171df-772a-4bf8-8f98-1fcbf802f710', '2022-01-04 15:35:07', '172.20.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', 'directus_permissions', '1', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `directus_collections`
--

CREATE TABLE `directus_collections` (
  `collection` varchar(64) NOT NULL,
  `icon` varchar(30) DEFAULT NULL,
  `note` text DEFAULT NULL,
  `display_template` varchar(255) DEFAULT NULL,
  `hidden` tinyint(1) NOT NULL DEFAULT 0,
  `singleton` tinyint(1) NOT NULL DEFAULT 0,
  `translations` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`translations`)),
  `archive_field` varchar(64) DEFAULT NULL,
  `archive_app_filter` tinyint(1) NOT NULL DEFAULT 1,
  `archive_value` varchar(255) DEFAULT NULL,
  `unarchive_value` varchar(255) DEFAULT NULL,
  `sort_field` varchar(64) DEFAULT NULL,
  `accountability` varchar(255) DEFAULT 'all',
  `color` varchar(255) DEFAULT NULL,
  `item_duplication_fields` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`item_duplication_fields`)),
  `sort` int(11) DEFAULT NULL,
  `group` varchar(64) DEFAULT NULL,
  `collapse` varchar(255) NOT NULL DEFAULT 'open'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `directus_collections`
--

INSERT INTO `directus_collections` (`collection`, `icon`, `note`, `display_template`, `hidden`, `singleton`, `translations`, `archive_field`, `archive_app_filter`, `archive_value`, `unarchive_value`, `sort_field`, `accountability`, `color`, `item_duplication_fields`, `sort`, `group`, `collapse`) VALUES
('association', 'people_alt', NULL, NULL, 0, 0, '[{\"language\":\"fr-FR\",\"translation\":\"Association\"}]', 'status', 1, 'archived', 'draft', NULL, 'all', '#F7971C', NULL, 1, NULL, 'open'),
('category', 'dns', NULL, NULL, 0, 0, '[{\"language\":\"fr-FR\",\"translation\":\"Catégorie\"}]', NULL, 1, 'archived', 'draft', NULL, 'all', '#68B0F4', NULL, 2, 'products', 'open'),
('certification', 'stars', NULL, NULL, 0, 0, '[{\"language\":\"fr-FR\",\"translation\":\"Certification\"}]', NULL, 1, NULL, NULL, NULL, 'all', '#68B0F4', NULL, 1, 'products', 'open'),
('city', 'location_city', NULL, NULL, 0, 0, '[{\"language\":\"fr-FR\",\"translation\":\"Ville\"}]', NULL, 1, NULL, NULL, NULL, 'all', '#607D8B', NULL, 6, NULL, 'open'),
('distribution', 'calendar_today', NULL, NULL, 0, 0, '[{\"language\":\"fr-FR\",\"translation\":\"Distribution\"}]', 'status', 1, 'archived', 'draft', NULL, 'all', '#9E8DE4', NULL, 1, 'distribution_site', 'open'),
('distribution_producer', 'import_export', NULL, NULL, 1, 0, NULL, NULL, 1, NULL, NULL, NULL, 'all', NULL, NULL, NULL, NULL, 'open'),
('distribution_site', 'storefront', NULL, NULL, 0, 0, '[{\"language\":\"fr-FR\",\"translation\":\"Lieu de distribution\"}]', 'status', 1, 'archived', 'draft', NULL, 'all', '#9E8DE4', NULL, 3, NULL, 'open'),
('order', 'shopping_cart', NULL, NULL, 0, 0, '[{\"language\":\"fr-FR\",\"translation\":\"Commande\"}]', 'status', 1, 'archived', 'draft', NULL, 'all', '#E35169', NULL, 5, NULL, 'open'),
('order_product', 'add_shopping_cart', NULL, NULL, 0, 0, '[{\"language\":\"fr-FR\",\"translation\":\"Produits de la commande\"}]', 'status', 1, 'archived', 'draft', NULL, 'all', '#E35169', NULL, 1, 'order', 'open'),
('producer', 'store_mall_directory', NULL, NULL, 0, 0, '[{\"language\":\"fr-FR\",\"translation\":\"Producteur\"}]', 'status', 1, 'archived', 'draft', NULL, 'all', '#00C897', NULL, 2, NULL, 'open'),
('products', 'spa', NULL, NULL, 0, 0, '[{\"language\":\"fr-FR\",\"translation\":\"Produit\"}]', 'status', 1, 'archived', 'draft', 'sort', 'all', '#68B0F4', NULL, 4, NULL, 'open'),
('subscription', 'supervised_user_circle', NULL, NULL, 0, 0, '[{\"language\":\"fr-FR\",\"translation\":\"Adhésion\"}]', 'status', 1, 'archived', 'draft', 'sort', 'all', '#F7971C', NULL, 1, 'association', 'open');

-- --------------------------------------------------------

--
-- Structure de la table `directus_dashboards`
--

CREATE TABLE `directus_dashboards` (
  `id` char(36) NOT NULL,
  `name` varchar(255) NOT NULL,
  `icon` varchar(30) NOT NULL DEFAULT 'dashboard',
  `note` text DEFAULT NULL,
  `date_created` timestamp NOT NULL DEFAULT current_timestamp(),
  `user_created` char(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `directus_fields`
--

CREATE TABLE `directus_fields` (
  `id` int(10) UNSIGNED NOT NULL,
  `collection` varchar(64) NOT NULL,
  `field` varchar(64) NOT NULL,
  `special` varchar(64) DEFAULT NULL,
  `interface` varchar(64) DEFAULT NULL,
  `options` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`options`)),
  `display` varchar(64) DEFAULT NULL,
  `display_options` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`display_options`)),
  `readonly` tinyint(1) NOT NULL DEFAULT 0,
  `hidden` tinyint(1) NOT NULL DEFAULT 0,
  `sort` int(10) UNSIGNED DEFAULT NULL,
  `width` varchar(30) DEFAULT 'full',
  `translations` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`translations`)),
  `note` text DEFAULT NULL,
  `conditions` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`conditions`)),
  `required` tinyint(1) DEFAULT 0,
  `group` varchar(64) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `directus_fields`
--

INSERT INTO `directus_fields` (`id`, `collection`, `field`, `special`, `interface`, `options`, `display`, `display_options`, `readonly`, `hidden`, `sort`, `width`, `translations`, `note`, `conditions`, `required`, `group`) VALUES
(1, 'subscription', 'id', NULL, 'input', NULL, NULL, NULL, 1, 1, 1, 'full', NULL, NULL, NULL, 0, NULL),
(2, 'subscription', 'status', NULL, 'select-dropdown', '{\"choices\":[{\"text\":\"En cours\",\"value\":\"published\"},{\"text\":\"Annulé\",\"value\":\"draft\"},{\"text\":\"$t:archived\",\"value\":\"archived\"}]}', 'labels', '{\"showAsDot\":true,\"choices\":[{\"background\":\"#00C897\",\"value\":\"published\",\"text\":\"En cours\"},{\"background\":\"#E35169\",\"value\":\"draft\",\"text\":\"Annulé\"},{\"background\":\"#F7971C\",\"value\":\"archived\",\"text\":\"Archivé\"}]}', 0, 0, 2, 'full', NULL, NULL, NULL, 0, NULL),
(3, 'subscription', 'sort', NULL, 'input', NULL, NULL, NULL, 0, 1, 3, 'full', NULL, NULL, NULL, 0, NULL),
(4, 'subscription', 'user_created', 'user-created', 'select-dropdown-m2o', '{\"template\":\"{{avatar.$thumbnail}} {{first_name}} {{last_name}}\"}', 'user', NULL, 1, 1, 5, 'half', NULL, NULL, NULL, 0, NULL),
(5, 'subscription', 'date_created', 'date-created', 'datetime', NULL, 'datetime', '{\"relative\":true}', 1, 1, 6, 'half', NULL, NULL, NULL, 0, NULL),
(6, 'subscription', 'user_updated', 'user-updated', 'select-dropdown-m2o', '{\"template\":\"{{avatar.$thumbnail}} {{first_name}} {{last_name}}\"}', 'user', NULL, 1, 1, 7, 'half', NULL, NULL, NULL, 0, NULL),
(7, 'subscription', 'date_updated', 'date-updated', 'datetime', NULL, 'datetime', '{\"relative\":true}', 1, 1, 8, 'half', NULL, NULL, NULL, 0, NULL),
(9, 'subscription', 'duration', NULL, 'input', '{\"min\":1}', 'raw', NULL, 0, 0, 10, 'half', '[{\"language\":\"fr-FR\",\"translation\":\"Durée de l\'adhésion\"}]', 'durée en année', NULL, 0, NULL),
(10, 'subscription', 'fee_amount', NULL, 'input', '{\"min\":0}', 'raw', NULL, 0, 0, 11, 'half', '[{\"language\":\"fr-FR\",\"translation\":\"Montant de la cotisation\"}]', NULL, NULL, 0, NULL),
(11, 'subscription', 'fee_date', NULL, 'datetime', NULL, 'datetime', NULL, 0, 0, 13, 'full', '[{\"language\":\"fr-FR\",\"translation\":\"Date du paiement de la cotisation\"}]', NULL, NULL, 0, NULL),
(12, 'subscription', 'fee_method', NULL, 'select-dropdown', '{\"choices\":[{\"text\":\"Espèce\",\"value\":\"cash\"},{\"text\":\"Chèque\",\"value\":\"check\"},{\"text\":\"Virement\",\"value\":\"bank_transfer\"}]}', 'labels', '{\"choices\":[{\"text\":\"cash\",\"value\":\"Espèce\",\"background\":\"#00C897\"},{\"text\":\"Chèque\",\"value\":\"check\",\"background\":\"#68B0F4\"},{\"text\":\"Virement\",\"value\":\"bank_transfer\",\"background\":\"#F7971C\"}]}', 0, 0, 12, 'half', '[{\"language\":\"fr-FR\",\"translation\":\"Méthode de paiement de la cotisation\"}]', NULL, NULL, 0, NULL),
(13, 'subscription', 'member', NULL, 'select-dropdown-m2o', '{\"template\":\"{{first_name}} {{last_name}}\"}', 'related-values', '{\"template\":\"{{first_name}} {{last_name}}\"}', 0, 0, 4, 'full', '[{\"language\":\"fr-FR\",\"translation\":\"Adhérent\"}]', NULL, NULL, 0, NULL),
(14, 'subscription', 'subscription_date', '', 'datetime', NULL, 'datetime', NULL, 0, 0, 9, 'half', '[{\"language\":\"fr-FR\",\"translation\":\"Date de l\'adhésion\"}]', NULL, NULL, 0, NULL),
(15, 'producer', 'id', NULL, 'input', NULL, NULL, NULL, 1, 1, 1, 'full', NULL, NULL, NULL, 0, NULL),
(16, 'producer', 'status', NULL, 'select-dropdown', '{\"choices\":[{\"text\":\"$t:published\",\"value\":\"published\"},{\"text\":\"$t:draft\",\"value\":\"draft\"},{\"text\":\"$t:archived\",\"value\":\"archived\"}]}', 'labels', '{\"showAsDot\":true,\"choices\":[{\"background\":\"#00C897\",\"value\":\"published\"},{\"background\":\"#D3DAE4\",\"value\":\"draft\"},{\"background\":\"#F7971C\",\"value\":\"archived\"}]}', 0, 0, 2, 'full', NULL, NULL, NULL, 0, NULL),
(17, 'producer', 'date_created', 'date-created', 'datetime', NULL, 'datetime', '{\"relative\":true}', 1, 1, 3, 'half', NULL, NULL, NULL, 0, NULL),
(18, 'producer', 'date_updated', 'date-updated', 'datetime', NULL, 'datetime', '{\"relative\":true}', 1, 1, 4, 'half', NULL, NULL, NULL, 0, NULL),
(19, 'producer', 'legal_status', NULL, 'select-dropdown', '{\"choices\":[{\"text\":\"Auto entreprise\",\"value\":\"auto\"},{\"text\":\"SAS\",\"value\":\"sas\"},{\"text\":\"EIRL\",\"value\":\"eirl\"},{\"text\":\"EARL\",\"value\":\"earl\"}]}', 'raw', NULL, 0, 0, 5, 'half', '[{\"language\":\"fr-FR\",\"translation\":\"Status Juridique\"}]', NULL, NULL, 0, NULL),
(20, 'producer', 'name', NULL, 'input', NULL, 'raw', NULL, 0, 0, 6, 'half', '[{\"language\":\"fr-FR\",\"translation\":\"Nom de l\'entreprise\"}]', NULL, NULL, 0, NULL),
(21, 'producer', 'date', NULL, 'datetime', NULL, 'datetime', NULL, 0, 0, 7, 'full', '[{\"language\":\"fr-FR\",\"translation\":\"Date de l\'inscription\"}]', NULL, NULL, 0, NULL),
(22, 'producer', 'image', NULL, 'file-image', NULL, 'image', NULL, 0, 0, 12, 'full', '[{\"language\":\"fr-FR\",\"translation\":\"Logo de l\'entreprise\"}]', NULL, NULL, 0, NULL),
(23, 'producer', 'street', NULL, 'input', NULL, 'raw', NULL, 0, 0, 8, 'half', '[{\"language\":\"fr-FR\",\"translation\":\"Adresse (rue)\"}]', NULL, NULL, 0, NULL),
(25, 'category', 'id', NULL, 'input', NULL, NULL, NULL, 1, 1, NULL, 'full', NULL, NULL, NULL, 0, NULL),
(27, 'category', 'date_created', 'date-created', 'datetime', NULL, 'datetime', '{\"relative\":true}', 1, 1, NULL, 'half', NULL, NULL, NULL, 0, NULL),
(28, 'category', 'date_updated', 'date-updated', 'datetime', NULL, 'datetime', '{\"relative\":true}', 1, 1, NULL, 'half', NULL, NULL, NULL, 0, NULL),
(29, 'category', 'name', NULL, 'input', NULL, 'raw', NULL, 0, 0, NULL, 'full', '[{\"language\":\"fr-FR\",\"translation\":\"Nom\"}]', NULL, NULL, 0, NULL),
(30, 'products', 'id', NULL, 'input', NULL, NULL, NULL, 1, 1, 1, 'full', NULL, NULL, NULL, 0, NULL),
(31, 'products', 'status', NULL, 'select-dropdown', '{\"choices\":[{\"text\":\"$t:published\",\"value\":\"published\"},{\"text\":\"$t:draft\",\"value\":\"draft\"},{\"text\":\"$t:archived\",\"value\":\"archived\"}]}', 'labels', '{\"showAsDot\":true,\"choices\":[{\"background\":\"#00C897\",\"value\":\"published\"},{\"background\":\"#D3DAE4\",\"value\":\"draft\"},{\"background\":\"#F7971C\",\"value\":\"archived\"}]}', 0, 0, 2, 'full', NULL, NULL, NULL, 0, NULL),
(32, 'products', 'sort', NULL, 'input', NULL, NULL, NULL, 0, 1, 3, 'full', NULL, NULL, NULL, 0, NULL),
(33, 'products', 'date_created', 'date-created', 'datetime', NULL, 'datetime', '{\"relative\":true}', 1, 1, 4, 'half', NULL, NULL, NULL, 0, NULL),
(34, 'products', 'date_updated', 'date-updated', 'datetime', NULL, 'datetime', '{\"relative\":true}', 1, 1, 5, 'half', NULL, NULL, NULL, 0, NULL),
(35, 'products', 'image', NULL, 'file-image', NULL, 'image', NULL, 0, 0, 7, 'full', NULL, NULL, NULL, 0, NULL),
(36, 'products', 'price', NULL, 'input', '{\"min\":0}', 'raw', NULL, 0, 0, 9, 'full', '[{\"language\":\"fr-FR\",\"translation\":\"Prix\"}]', NULL, NULL, 0, NULL),
(37, 'products', 'unit', NULL, 'select-dropdown', '{\"choices\":[{\"text\":\"Pièce\",\"value\":\"pieces\"},{\"text\":\"Kilogramme(s)\",\"value\":\"kilogram\"},{\"text\":\"Gramme(s)\",\"value\":\"gram\"},{\"text\":\"Litre(s)\",\"value\":\"liter\"},{\"text\":\"Centilitre(s)\",\"value\":\"centiliter\"},{\"text\":\"Mililitre(s)\",\"value\":\"milliliter\"}]}', 'labels', '{\"choices\":[{\"text\":\"Pièce\",\"value\":\"pieces\",\"foreground\":\"#FFFFFF\",\"background\":\"#607D8B\"},{\"text\":\"Kilogramme(s)\",\"value\":\"kilogram\",\"foreground\":\"#FFFFFF\",\"background\":\"#F7971C\"},{\"text\":\"Gramme(s)\",\"value\":\"gram\",\"foreground\":\"#FFFFFF\",\"background\":\"#F2C94C\"},{\"text\":\"Litre(s)\",\"value\":\"liter\",\"foreground\":\"#FFFFFF\",\"background\":\"#00C897\"},{\"text\":\"Centilitre(s)\",\"value\":\"centiliter\",\"foreground\":\"#FFFFFF\",\"background\":\"#68B0F4\"},{\"text\":\"Mililitre(s)\",\"value\":\"milliliter\",\"foreground\":\"#FFFFFF\",\"background\":\"#9E8DE4\"}]}', 0, 0, 11, 'half', '[{\"language\":\"fr-FR\",\"translation\":\"Unité de base\"}]', NULL, NULL, 0, NULL),
(38, 'products', 'stock', NULL, 'input', '{\"min\":0}', 'raw', NULL, 0, 0, 8, 'full', NULL, NULL, NULL, 0, NULL),
(39, 'products', 'description', NULL, 'input-rich-text-html', '{\"toolbar\":[\"bold\",\"italic\",\"underline\",\"removeformat\",\"bullist\",\"numlist\",\"blockquote\",\"h3\",\"hr\",\"fullscreen\",\"h4\",\"h5\",\"h6\"]}', 'raw', NULL, 0, 0, 12, 'full', NULL, NULL, NULL, 0, NULL),
(40, 'products', 'reference', NULL, 'input', NULL, 'raw', NULL, 0, 0, 13, 'full', '[{\"language\":\"fr-FR\",\"translation\":\"Référence\"}]', NULL, NULL, 0, NULL),
(41, 'products', 'weight', NULL, 'input', '{\"min\":0}', 'raw', NULL, 0, 0, 10, 'half', '[{\"language\":\"fr-FR\",\"translation\":\"Poids\"}]', NULL, NULL, 0, NULL),
(42, 'products', 'variable_price', 'boolean', NULL, NULL, 'boolean', NULL, 0, 0, 14, 'full', '[{\"language\":\"fr-FR\",\"translation\":\"Prix variable\"}]', NULL, NULL, 0, NULL),
(43, 'products', 'category', NULL, 'select-dropdown-m2o', '{\"template\":\"{{name}}\"}', 'related-values', '{\"template\":\"{{name}}\"}', 0, 0, 15, 'full', '[{\"language\":\"fr-FR\",\"translation\":\"Catégorie\"}]', NULL, NULL, 0, NULL),
(44, 'certification', 'id', NULL, 'input', NULL, NULL, NULL, 1, 1, NULL, 'full', NULL, NULL, NULL, 0, NULL),
(45, 'certification', 'date_created', 'date-created', 'datetime', NULL, 'datetime', '{\"relative\":true}', 1, 1, NULL, 'half', NULL, NULL, NULL, 0, NULL),
(46, 'certification', 'date_updated', 'date-updated', 'datetime', NULL, 'datetime', '{\"relative\":true}', 1, 1, NULL, 'half', NULL, NULL, NULL, 0, NULL),
(48, 'products', 'certification', NULL, 'select-dropdown-m2o', '{\"template\":\"{{name}}\"}', 'related-values', '{\"template\":\"{{name}}\"}', 0, 0, 16, 'full', NULL, NULL, NULL, 0, NULL),
(49, 'certification', 'name', NULL, 'input', NULL, 'raw', NULL, 0, 0, NULL, 'full', '[{\"language\":\"fr-FR\",\"translation\":\"Nom\"}]', NULL, NULL, 0, NULL),
(50, 'products', 'producer', NULL, 'select-dropdown-m2o', '{\"template\":\"{{name}}\"}', 'related-values', '{\"template\":\"{{name}}\"}', 0, 0, 17, 'full', '[{\"language\":\"fr-FR\",\"translation\":\"Producteur\"}]', NULL, NULL, 0, NULL),
(51, 'distribution_site', 'id', NULL, 'input', NULL, NULL, NULL, 1, 1, NULL, 'full', NULL, NULL, NULL, 0, NULL),
(52, 'distribution_site', 'status', NULL, 'select-dropdown', '{\"choices\":[{\"text\":\"$t:published\",\"value\":\"published\"},{\"text\":\"$t:draft\",\"value\":\"draft\"},{\"text\":\"$t:archived\",\"value\":\"archived\"}]}', 'labels', '{\"showAsDot\":true,\"choices\":[{\"background\":\"#00C897\",\"value\":\"published\"},{\"background\":\"#D3DAE4\",\"value\":\"draft\"},{\"background\":\"#F7971C\",\"value\":\"archived\"}]}', 0, 0, NULL, 'full', NULL, NULL, NULL, 0, NULL),
(53, 'distribution_site', 'date_created', 'date-created', 'datetime', NULL, 'datetime', '{\"relative\":true}', 1, 1, NULL, 'half', NULL, NULL, NULL, 0, NULL),
(54, 'distribution_site', 'date_updated', 'date-updated', 'datetime', NULL, 'datetime', '{\"relative\":true}', 1, 1, NULL, 'half', NULL, NULL, NULL, 0, NULL),
(55, 'distribution_site', 'name', NULL, 'input', NULL, 'raw', NULL, 0, 0, NULL, 'full', '[{\"language\":\"fr-FR\",\"translation\":\"Nom\"}]', NULL, NULL, 0, NULL),
(56, 'distribution_site', 'street', NULL, 'input', NULL, 'raw', NULL, 0, 0, NULL, 'half', '[{\"language\":\"fr-FR\",\"translation\":\"Adresse (rue)\"}]', NULL, NULL, 0, NULL),
(58, 'distribution', 'id', NULL, 'input', NULL, NULL, NULL, 1, 1, 1, 'full', NULL, NULL, NULL, 0, NULL),
(59, 'distribution', 'status', NULL, 'select-dropdown', '{\"choices\":[{\"text\":\"$t:published\",\"value\":\"published\"},{\"text\":\"$t:draft\",\"value\":\"draft\"},{\"text\":\"$t:archived\",\"value\":\"archived\"}]}', 'labels', '{\"showAsDot\":true,\"choices\":[{\"background\":\"#00C897\",\"value\":\"published\"},{\"background\":\"#D3DAE4\",\"value\":\"draft\"},{\"background\":\"#F7971C\",\"value\":\"archived\"}]}', 0, 0, 2, 'full', NULL, NULL, NULL, 0, NULL),
(60, 'distribution', 'date_created', 'date-created', 'datetime', NULL, 'datetime', '{\"relative\":true}', 1, 1, 3, 'half', NULL, NULL, NULL, 0, NULL),
(61, 'distribution', 'date_updated', 'date-updated', 'datetime', NULL, 'datetime', '{\"relative\":true}', 1, 1, 4, 'half', NULL, NULL, NULL, 0, NULL),
(62, 'distribution', 'date', NULL, 'datetime', NULL, NULL, NULL, 0, 0, 5, 'full', '[{\"language\":\"fr-FR\",\"translation\":\"Date de la distribution\"}]', NULL, NULL, 0, NULL),
(63, 'distribution', 'site', NULL, 'select-dropdown-m2o', '{\"template\":\"{{name}}\"}', 'related-values', '{\"template\":\"{{name}}\"}', 0, 0, 6, 'full', '[{\"language\":\"fr-FR\",\"translation\":\"Lieu de distribution\"}]', NULL, NULL, 0, NULL),
(65, 'association', 'id', NULL, 'input', NULL, NULL, NULL, 1, 1, NULL, 'full', NULL, NULL, NULL, 0, NULL),
(66, 'association', 'status', NULL, 'select-dropdown', '{\"choices\":[{\"text\":\"$t:published\",\"value\":\"published\"},{\"text\":\"$t:draft\",\"value\":\"draft\"},{\"text\":\"$t:archived\",\"value\":\"archived\"}]}', 'labels', '{\"showAsDot\":true,\"choices\":[{\"background\":\"#00C897\",\"value\":\"published\"},{\"background\":\"#D3DAE4\",\"value\":\"draft\"},{\"background\":\"#F7971C\",\"value\":\"archived\"}]}', 0, 0, NULL, 'full', NULL, NULL, NULL, 0, NULL),
(67, 'association', 'date_created', 'date-created', 'datetime', NULL, 'datetime', '{\"relative\":true}', 1, 1, NULL, 'half', NULL, NULL, NULL, 0, NULL),
(68, 'association', 'date_updated', 'date-updated', 'datetime', NULL, 'datetime', '{\"relative\":true}', 1, 1, NULL, 'half', NULL, NULL, NULL, 0, NULL),
(69, 'association', 'name', NULL, 'input', NULL, 'raw', NULL, 0, 0, NULL, 'full', '[{\"language\":\"fr-FR\",\"translation\":\"Nom\"}]', NULL, NULL, 0, NULL),
(70, 'subscription', 'association', NULL, 'select-dropdown-m2o', '{\"template\":\"{{name}}\"}', 'related-values', '{\"template\":\"{{name}}\"}', 0, 0, 16, 'full', NULL, NULL, NULL, 0, NULL),
(71, 'city', 'id', NULL, 'input', NULL, NULL, NULL, 1, 1, NULL, 'full', NULL, NULL, NULL, 0, NULL),
(72, 'city', 'date_created', 'date-created', 'datetime', NULL, 'datetime', '{\"relative\":true}', 1, 1, NULL, 'half', NULL, NULL, NULL, 0, NULL),
(73, 'city', 'date_updated', 'date-updated', 'datetime', NULL, 'datetime', '{\"relative\":true}', 1, 1, NULL, 'half', NULL, NULL, NULL, 0, NULL),
(74, 'city', 'name', NULL, 'input', NULL, NULL, NULL, 0, 0, NULL, 'full', '[{\"language\":\"fr-FR\",\"translation\":\"Nom de la ville\"}]', NULL, NULL, 0, NULL),
(75, 'distribution_site', 'city', NULL, 'select-dropdown-m2o', '{\"template\":\"{{postal_code}} - {{name}}\"}', 'related-values', '{\"template\":\"{{postal_code}} - {{name}}\"}', 0, 0, NULL, 'half', '[{\"language\":\"en-US\",\"translation\":\"Adresse (ville)\"}]', NULL, NULL, 0, NULL),
(76, 'producer', 'city', NULL, 'select-dropdown-m2o', '{\"template\":\"{{postal_code}} - {{name}}\"}', 'related-values', '{\"template\":\"{{postal_code}}- {{name}}\"}', 0, 0, 9, 'half', '[{\"language\":\"fr-FR\",\"translation\":\"Adresse (ville)\"}]', NULL, NULL, 0, NULL),
(77, 'city', 'postal_code', NULL, 'input', '{\"min\":0}', 'raw', NULL, 0, 0, NULL, 'full', '[{\"language\":\"fr-FR\",\"translation\":\"Code Postal\"}]', NULL, NULL, 0, NULL),
(78, 'association', 'street', NULL, 'input', NULL, 'raw', NULL, 0, 0, NULL, 'half', '[{\"language\":\"fr-FR\",\"translation\":\"Adresse (rue)\"}]', NULL, NULL, 0, NULL),
(79, 'association', 'city', NULL, 'select-dropdown-m2o', '{\"template\":\"{{postal_code}} - {{name}}\"}', 'related-values', '{\"template\":\"{{postal_code}} - {{name}}\"}', 0, 0, NULL, 'half', '[{\"language\":\"fr-FR\",\"translation\":\"Adresse (ville)\"}]', NULL, NULL, 0, NULL),
(80, 'order', 'id', NULL, 'input', NULL, NULL, NULL, 1, 1, NULL, 'full', NULL, NULL, NULL, 0, NULL),
(81, 'order', 'status', NULL, 'select-dropdown', '{\"choices\":[{\"text\":\"$t:published\",\"value\":\"published\"},{\"text\":\"$t:draft\",\"value\":\"draft\"},{\"text\":\"$t:archived\",\"value\":\"archived\"}]}', 'labels', '{\"showAsDot\":true,\"choices\":[{\"background\":\"#00C897\",\"value\":\"published\"},{\"background\":\"#D3DAE4\",\"value\":\"draft\"},{\"background\":\"#F7971C\",\"value\":\"archived\"}]}', 0, 0, NULL, 'full', NULL, NULL, NULL, 0, NULL),
(82, 'order', 'date_created', 'date-created', 'datetime', NULL, 'datetime', '{\"relative\":true}', 1, 1, NULL, 'half', NULL, NULL, NULL, 0, NULL),
(83, 'order', 'date_updated', 'date-updated', 'datetime', NULL, 'datetime', '{\"relative\":true}', 1, 1, NULL, 'half', NULL, NULL, NULL, 0, NULL),
(84, 'order', 'ditribution', NULL, 'select-dropdown-m2o', '{\"template\":\"{{date}}\"}', 'related-values', '{\"template\":\"{{date}}\"}', 0, 0, NULL, 'full', NULL, NULL, NULL, 0, NULL),
(85, 'distribution', 'association', NULL, 'select-dropdown-m2o', '{\"template\":\"{{name}}\"}', 'related-values', '{\"template\":\"{{name}}\"}', 0, 0, 8, 'full', NULL, NULL, NULL, 0, NULL),
(86, 'order', 'member', NULL, 'select-dropdown-m2o', '{\"template\":\"{{first_name}} {{last_name}}\"}', 'related-values', '{\"template\":\"{{first_name}} {{last_name}}\"}', 0, 0, NULL, 'full', '[{\"language\":\"fr-FR\",\"translation\":\"Adhérent\"}]', NULL, NULL, 0, NULL),
(87, 'order_product', 'id', NULL, 'input', NULL, NULL, NULL, 1, 1, NULL, 'full', NULL, NULL, NULL, 0, NULL),
(88, 'order_product', 'status', NULL, 'select-dropdown', '{\"choices\":[{\"text\":\"$t:published\",\"value\":\"published\"},{\"text\":\"$t:draft\",\"value\":\"draft\"},{\"text\":\"$t:archived\",\"value\":\"archived\"}]}', 'labels', '{\"showAsDot\":true,\"choices\":[{\"background\":\"#00C897\",\"value\":\"published\"},{\"background\":\"#D3DAE4\",\"value\":\"draft\"},{\"background\":\"#F7971C\",\"value\":\"archived\"}]}', 0, 0, NULL, 'full', NULL, NULL, NULL, 0, NULL),
(89, 'order_product', 'date_created', 'date-created', 'datetime', NULL, 'datetime', '{\"relative\":true}', 1, 1, NULL, 'half', NULL, NULL, NULL, 0, NULL),
(90, 'order_product', 'date_updated', 'date-updated', 'datetime', NULL, 'datetime', '{\"relative\":true}', 1, 1, NULL, 'half', NULL, NULL, NULL, 0, NULL),
(92, 'order', 'cart', NULL, 'select-dropdown-m2o', NULL, NULL, NULL, 0, 0, NULL, 'full', '[{\"language\":\"fr-FR\",\"translation\":\"Panier\"}]', NULL, NULL, 0, NULL),
(93, 'order_product', 'order', 'o2m', 'list-o2m', NULL, NULL, NULL, 0, 0, NULL, 'full', NULL, NULL, NULL, 0, NULL),
(94, 'order_product', 'product', NULL, 'select-dropdown-m2o', '{\"template\":\"{{name}}\"}', 'related-values', '{\"template\":\"{{name}}\"}', 0, 0, NULL, 'full', '[{\"language\":\"fr-FR\",\"translation\":\"Produits\"}]', NULL, NULL, 0, NULL),
(95, 'products', 'name', NULL, 'input', NULL, 'raw', NULL, 0, 0, 6, 'full', '[{\"language\":\"fr-FR\",\"translation\":\"Nom\"}]', NULL, NULL, 0, NULL),
(96, 'order_product', 'quantity', NULL, 'input', NULL, 'raw', NULL, 0, 0, NULL, 'full', '[{\"language\":\"fr-FR\",\"translation\":\"Quantité\"}]', NULL, NULL, 0, NULL),
(97, 'order_product', 'total', NULL, 'input', NULL, 'raw', NULL, 0, 0, NULL, 'full', NULL, NULL, NULL, 0, NULL),
(98, 'order_product', 'tva', NULL, 'input', NULL, 'raw', NULL, 0, 0, NULL, 'full', NULL, NULL, NULL, 0, NULL),
(99, 'products', 'tva', NULL, 'select-dropdown', '{\"choices\":[{\"text\":\"5,5%\",\"value\":\"5.5\"},{\"text\":\"20%\",\"value\":\"20\"}]}', 'labels', NULL, 0, 0, NULL, 'full', NULL, NULL, NULL, 0, NULL),
(100, 'order', 'total', NULL, 'input', NULL, 'raw', NULL, 0, 0, NULL, 'full', NULL, NULL, NULL, 0, NULL),
(101, 'subscription', 'street', NULL, 'input', NULL, 'raw', NULL, 0, 0, 14, 'half', '[{\"language\":\"fr-FR\",\"translation\":\"Adresse (rue)\"}]', NULL, NULL, 0, NULL),
(102, 'subscription', 'city', NULL, 'select-dropdown-m2o', '{\"template\":\"{{postal_code}} - {{name}}\"}', 'related-values', '{\"template\":\" {{postal_code}} - {{name}}\"}', 0, 0, 15, 'half', '[{\"language\":\"fr-FR\",\"translation\":\"Adresse (ville)\"}]', NULL, NULL, 0, NULL),
(103, 'distribution', 'producer', 'm2m', 'list-m2m', '{\"template\":\"{{producer_id.name}}\"}', 'related-values', '{\"template\":\"{{producer_id.name}}\"}', 0, 0, 7, 'full', '[{\"language\":\"fr-FR\",\"translation\":\"Producteur(s) présent\"}]', NULL, NULL, 0, NULL),
(104, 'distribution_producer', 'id', NULL, NULL, NULL, NULL, NULL, 0, 1, NULL, 'full', NULL, NULL, NULL, 0, NULL),
(105, 'distribution_producer', 'distribution_id', NULL, NULL, NULL, NULL, NULL, 0, 1, NULL, 'full', NULL, NULL, NULL, 0, NULL),
(106, 'distribution_producer', 'producer_id', NULL, NULL, NULL, NULL, NULL, 0, 1, NULL, 'full', NULL, NULL, NULL, 0, NULL),
(107, 'producer', 'mail', NULL, 'input', NULL, 'raw', NULL, 0, 0, 10, 'half', '[{\"language\":\"fr-FR\",\"translation\":\"Email\"}]', NULL, NULL, 0, NULL),
(108, 'producer', 'phone', NULL, 'input', NULL, 'raw', NULL, 0, 0, 11, 'half', '[{\"language\":\"fr-FR\",\"translation\":\"Téléphone\"}]', NULL, NULL, 0, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `directus_files`
--

CREATE TABLE `directus_files` (
  `id` char(36) NOT NULL,
  `storage` varchar(255) NOT NULL,
  `filename_disk` varchar(255) DEFAULT NULL,
  `filename_download` varchar(255) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `folder` char(36) DEFAULT NULL,
  `uploaded_by` char(36) DEFAULT NULL,
  `uploaded_on` timestamp NOT NULL DEFAULT current_timestamp(),
  `modified_by` char(36) DEFAULT NULL,
  `modified_on` timestamp NOT NULL DEFAULT current_timestamp(),
  `charset` varchar(50) DEFAULT NULL,
  `filesize` bigint(20) DEFAULT NULL,
  `width` int(10) UNSIGNED DEFAULT NULL,
  `height` int(10) UNSIGNED DEFAULT NULL,
  `duration` int(10) UNSIGNED DEFAULT NULL,
  `embed` varchar(200) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `location` text DEFAULT NULL,
  `tags` text DEFAULT NULL,
  `metadata` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`metadata`))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `directus_files`
--

INSERT INTO `directus_files` (`id`, `storage`, `filename_disk`, `filename_download`, `title`, `type`, `folder`, `uploaded_by`, `uploaded_on`, `modified_by`, `modified_on`, `charset`, `filesize`, `width`, `height`, `duration`, `embed`, `description`, `location`, `tags`, `metadata`) VALUES
('07ee7a26-5600-4ada-9823-42d652cb557a', 'local', '07ee7a26-5600-4ada-9823-42d652cb557a.jpg', 'portrait-12.jpg', 'Portrait 12', 'image/jpeg', NULL, '109171df-772a-4bf8-8f98-1fcbf802f710', '2021-12-11 19:13:18', NULL, '2021-12-11 19:13:19', NULL, 396331, 1365, 2048, NULL, NULL, NULL, NULL, NULL, '{\"ifd0\":{\"XResolution\":240,\"YResolution\":240,\"ResolutionUnit\":\"inches\"},\"ifd1\":{\"Compression\":6,\"XResolution\":72,\"YResolution\":72,\"ResolutionUnit\":\"inches\",\"ThumbnailOffset\":202,\"ThumbnailLength\":9234},\"exif\":{\"ExifVersion\":\"2.3.1\",\"ColorSpace\":1}}'),
('0ce3f020-808a-4a94-8356-1c957e468bd6', 'local', '0ce3f020-808a-4a94-8356-1c957e468bd6.png', 'female.png', 'Female', 'image/png', NULL, '109171df-772a-4bf8-8f98-1fcbf802f710', '2021-12-12 19:30:55', NULL, '2021-12-12 19:30:58', NULL, 81976, 400, 400, NULL, NULL, NULL, NULL, NULL, '{\"ihdr\":{\"ImageWidth\":400,\"ImageHeight\":400,\"BitDepth\":8,\"ColorType\":\"RGB with Alpha\",\"Compression\":\"Deflate/Inflate\",\"Filter\":\"Adaptive\",\"Interlace\":\"Noninterlaced\"}}'),
('8713c1fe-89aa-48d0-91eb-10497d1b2e27', 'local', '8713c1fe-89aa-48d0-91eb-10497d1b2e27.png', 'female.png', 'Female', 'image/png', NULL, '109171df-772a-4bf8-8f98-1fcbf802f710', '2021-12-12 19:29:49', NULL, '2021-12-12 19:29:52', NULL, 81976, 400, 400, NULL, NULL, NULL, NULL, NULL, '{\"ihdr\":{\"ImageWidth\":400,\"ImageHeight\":400,\"BitDepth\":8,\"ColorType\":\"RGB with Alpha\",\"Compression\":\"Deflate/Inflate\",\"Filter\":\"Adaptive\",\"Interlace\":\"Noninterlaced\"}}'),
('8c287c2a-0902-43be-ac32-09a025d001a0', 'local', '8c287c2a-0902-43be-ac32-09a025d001a0.png', 'male.png', 'Male', 'image/png', NULL, '109171df-772a-4bf8-8f98-1fcbf802f710', '2021-12-12 19:28:34', NULL, '2021-12-12 19:28:34', NULL, 66996, 400, 400, NULL, NULL, NULL, NULL, NULL, '{\"ihdr\":{\"ImageWidth\":400,\"ImageHeight\":400,\"BitDepth\":8,\"ColorType\":\"RGB with Alpha\",\"Compression\":\"Deflate/Inflate\",\"Filter\":\"Adaptive\",\"Interlace\":\"Noninterlaced\"}}');

-- --------------------------------------------------------

--
-- Structure de la table `directus_folders`
--

CREATE TABLE `directus_folders` (
  `id` char(36) NOT NULL,
  `name` varchar(255) NOT NULL,
  `parent` char(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `directus_migrations`
--

CREATE TABLE `directus_migrations` (
  `version` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `directus_migrations`
--

INSERT INTO `directus_migrations` (`version`, `name`, `timestamp`) VALUES
('20201028A', 'Remove Collection Foreign Keys', '2021-12-11 16:37:31'),
('20201029A', 'Remove System Relations', '2021-12-11 16:37:31'),
('20201029B', 'Remove System Collections', '2021-12-11 16:37:31'),
('20201029C', 'Remove System Fields', '2021-12-11 16:37:31'),
('20201105A', 'Add Cascade System Relations', '2021-12-11 16:37:32'),
('20201105B', 'Change Webhook URL Type', '2021-12-11 16:37:32'),
('20210225A', 'Add Relations Sort Field', '2021-12-11 16:37:32'),
('20210304A', 'Remove Locked Fields', '2021-12-11 16:37:32'),
('20210312A', 'Webhooks Collections Text', '2021-12-11 16:37:32'),
('20210331A', 'Add Refresh Interval', '2021-12-11 16:37:32'),
('20210415A', 'Make Filesize Nullable', '2021-12-11 16:37:32'),
('20210416A', 'Add Collections Accountability', '2021-12-11 16:37:32'),
('20210422A', 'Remove Files Interface', '2021-12-11 16:37:32'),
('20210506A', 'Rename Interfaces', '2021-12-11 16:37:32'),
('20210510A', 'Restructure Relations', '2021-12-11 16:37:33'),
('20210518A', 'Add Foreign Key Constraints', '2021-12-11 16:37:33'),
('20210519A', 'Add System Fk Triggers', '2021-12-11 16:37:33'),
('20210521A', 'Add Collections Icon Color', '2021-12-11 16:37:33'),
('20210525A', 'Add Insights', '2021-12-11 16:37:33'),
('20210608A', 'Add Deep Clone Config', '2021-12-11 16:37:33'),
('20210626A', 'Change Filesize Bigint', '2021-12-11 16:37:33'),
('20210716A', 'Add Conditions to Fields', '2021-12-11 16:37:34'),
('20210721A', 'Add Default Folder', '2021-12-11 16:37:34'),
('20210802A', 'Replace Groups', '2021-12-11 16:37:34'),
('20210803A', 'Add Required to Fields', '2021-12-11 16:37:34'),
('20210805A', 'Update Groups', '2021-12-11 16:37:34'),
('20210805B', 'Change Image Metadata Structure', '2021-12-11 16:37:34'),
('20210811A', 'Add Geometry Config', '2021-12-11 16:37:34'),
('20210831A', 'Remove Limit Column', '2021-12-11 16:37:34'),
('20210903A', 'Add Auth Provider', '2021-12-11 16:37:34'),
('20210907A', 'Webhooks Collections Not Null', '2021-12-11 16:37:34'),
('20210910A', 'Move Module Setup', '2021-12-11 16:37:34'),
('20210920A', 'Webhooks URL Not Null', '2021-12-11 16:37:34'),
('20210924A', 'Add Collection Organization', '2021-12-11 16:37:34'),
('20210927A', 'Replace Fields Group', '2021-12-11 16:37:34'),
('20210927B', 'Replace M2M Interface', '2021-12-11 16:37:34'),
('20210929A', 'Rename Login Action', '2021-12-11 16:37:34'),
('20211007A', 'Update Presets', '2021-12-11 16:37:34'),
('20211009A', 'Add Auth Data', '2021-12-11 16:37:34'),
('20211016A', 'Add Webhook Headers', '2022-01-04 14:08:56'),
('20211103A', 'Set Unique to User Token', '2022-01-04 14:08:56'),
('20211103B', 'Update Special Geometry', '2022-01-04 14:08:56'),
('20211104A', 'Remove Collections Listing', '2022-01-04 14:08:56'),
('20211118A', 'Add Notifications', '2022-01-04 14:08:56'),
('20211211A', 'Add Shares', '2022-01-04 14:08:57'),
('20211230A', 'Add Project Descriptor', '2022-01-04 14:08:57');

-- --------------------------------------------------------

--
-- Structure de la table `directus_notifications`
--

CREATE TABLE `directus_notifications` (
  `id` int(10) UNSIGNED NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `status` varchar(255) DEFAULT 'inbox',
  `recipient` char(36) NOT NULL,
  `sender` char(36) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `message` text DEFAULT NULL,
  `collection` varchar(64) DEFAULT NULL,
  `item` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `directus_panels`
--

CREATE TABLE `directus_panels` (
  `id` char(36) NOT NULL,
  `dashboard` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `icon` varchar(30) DEFAULT 'insert_chart',
  `color` varchar(10) DEFAULT NULL,
  `show_header` tinyint(1) NOT NULL DEFAULT 0,
  `note` text DEFAULT NULL,
  `type` varchar(255) NOT NULL,
  `position_x` int(11) NOT NULL,
  `position_y` int(11) NOT NULL,
  `width` int(11) NOT NULL,
  `height` int(11) NOT NULL,
  `options` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`options`)),
  `date_created` timestamp NOT NULL DEFAULT current_timestamp(),
  `user_created` char(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `directus_permissions`
--

CREATE TABLE `directus_permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `role` char(36) DEFAULT NULL,
  `collection` varchar(64) NOT NULL,
  `action` varchar(10) NOT NULL,
  `permissions` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`permissions`)),
  `validation` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`validation`)),
  `presets` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`presets`)),
  `fields` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `directus_permissions`
--

INSERT INTO `directus_permissions` (`id`, `role`, `collection`, `action`, `permissions`, `validation`, `presets`, `fields`) VALUES
(1, NULL, 'directus_files', 'read', '{}', '{}', NULL, '*');

-- --------------------------------------------------------

--
-- Structure de la table `directus_presets`
--

CREATE TABLE `directus_presets` (
  `id` int(10) UNSIGNED NOT NULL,
  `bookmark` varchar(255) DEFAULT NULL,
  `user` char(36) DEFAULT NULL,
  `role` char(36) DEFAULT NULL,
  `collection` varchar(64) DEFAULT NULL,
  `search` varchar(100) DEFAULT NULL,
  `layout` varchar(100) DEFAULT 'tabular',
  `layout_query` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`layout_query`)),
  `layout_options` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`layout_options`)),
  `refresh_interval` int(11) DEFAULT NULL,
  `filter` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`filter`))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `directus_presets`
--

INSERT INTO `directus_presets` (`id`, `bookmark`, `user`, `role`, `collection`, `search`, `layout`, `layout_query`, `layout_options`, `refresh_interval`, `filter`) VALUES
(2, NULL, '109171df-772a-4bf8-8f98-1fcbf802f710', NULL, 'subscription', NULL, 'tabular', '{\"tabular\":{\"page\":1,\"fields\":[\"member\",\"subscription_date\",\"status\",\"association\"]}}', '{\"tabular\":{\"widths\":{\"member\":212,\"subscription_date\":215}}}', NULL, NULL),
(3, NULL, '109171df-772a-4bf8-8f98-1fcbf802f710', NULL, 'producer', NULL, 'tabular', '{\"tabular\":{\"page\":1,\"fields\":[\"status\",\"name\",\"date\",\"street\",\"city\"]}}', '{\"tabular\":{\"widths\":{\"name\":214,\"date\":248,\"street\":193,\"city\":224}}}', NULL, NULL),
(4, NULL, '109171df-772a-4bf8-8f98-1fcbf802f710', NULL, 'category', NULL, 'tabular', '{\"tabular\":{\"page\":1}}', '{\"tabular\":{\"widths\":{\"name\":246}}}', NULL, NULL),
(5, NULL, '109171df-772a-4bf8-8f98-1fcbf802f710', NULL, 'products', NULL, 'tabular', '{\"tabular\":{\"page\":1}}', NULL, NULL, NULL),
(6, NULL, '109171df-772a-4bf8-8f98-1fcbf802f710', NULL, 'certification', NULL, 'tabular', '{\"tabular\":{\"page\":1}}', NULL, NULL, NULL),
(7, NULL, '109171df-772a-4bf8-8f98-1fcbf802f710', NULL, 'directus_users', NULL, 'cards', '{\"cards\":{\"sort\":[\"email\"],\"page\":1}}', '{\"cards\":{\"icon\":\"account_circle\",\"title\":\"{{ first_name }} {{ last_name }}\",\"subtitle\":\"{{ email }}\",\"size\":4}}', NULL, NULL),
(8, NULL, '109171df-772a-4bf8-8f98-1fcbf802f710', NULL, 'distribution_site', NULL, 'tabular', '{\"tabular\":{\"page\":1,\"fields\":[\"status\",\"city\",\"name\",\"street\"]}}', '{\"tabular\":{\"widths\":{\"status\":97,\"city\":263}}}', NULL, NULL),
(9, NULL, '109171df-772a-4bf8-8f98-1fcbf802f710', NULL, 'association', NULL, 'tabular', '{\"tabular\":{\"page\":1,\"fields\":[\"status\",\"name\"]}}', NULL, NULL, NULL),
(10, NULL, '109171df-772a-4bf8-8f98-1fcbf802f710', NULL, 'city', NULL, 'tabular', '{\"tabular\":{\"page\":1}}', '{\"tabular\":{\"widths\":{\"name\":233}}}', NULL, NULL),
(11, NULL, '109171df-772a-4bf8-8f98-1fcbf802f710', NULL, 'directus_files', NULL, 'cards', '{\"cards\":{\"sort\":[\"-uploaded_on\"],\"page\":1}}', '{\"cards\":{\"icon\":\"insert_drive_file\",\"title\":\"{{ title }}\",\"subtitle\":\"{{ type }} • {{ filesize }}\",\"size\":4,\"imageFit\":\"crop\"}}', NULL, NULL),
(12, NULL, '109171df-772a-4bf8-8f98-1fcbf802f710', NULL, 'distribution', NULL, 'tabular', '{\"tabular\":{\"page\":1,\"sort\":[\"-status\"]}}', NULL, NULL, NULL),
(13, NULL, '109171df-772a-4bf8-8f98-1fcbf802f710', NULL, 'order_product', NULL, 'tabular', '{\"tabular\":{\"page\":1}}', NULL, NULL, NULL),
(14, NULL, '109171df-772a-4bf8-8f98-1fcbf802f710', NULL, 'order', NULL, 'tabular', '{\"tabular\":{\"page\":1}}', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `directus_relations`
--

CREATE TABLE `directus_relations` (
  `id` int(10) UNSIGNED NOT NULL,
  `many_collection` varchar(64) NOT NULL,
  `many_field` varchar(64) NOT NULL,
  `one_collection` varchar(64) DEFAULT NULL,
  `one_field` varchar(64) DEFAULT NULL,
  `one_collection_field` varchar(64) DEFAULT NULL,
  `one_allowed_collections` text DEFAULT NULL,
  `junction_field` varchar(64) DEFAULT NULL,
  `sort_field` varchar(64) DEFAULT NULL,
  `one_deselect_action` varchar(255) NOT NULL DEFAULT 'nullify'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `directus_relations`
--

INSERT INTO `directus_relations` (`id`, `many_collection`, `many_field`, `one_collection`, `one_field`, `one_collection_field`, `one_allowed_collections`, `junction_field`, `sort_field`, `one_deselect_action`) VALUES
(1, 'subscription', 'user_created', 'directus_users', NULL, NULL, NULL, NULL, NULL, 'nullify'),
(2, 'subscription', 'user_updated', 'directus_users', NULL, NULL, NULL, NULL, NULL, 'nullify'),
(3, 'subscription', 'member', 'directus_users', NULL, NULL, NULL, NULL, NULL, 'nullify'),
(4, 'producer', 'image', 'directus_files', NULL, NULL, NULL, NULL, NULL, 'nullify'),
(5, 'products', 'image', 'directus_files', NULL, NULL, NULL, NULL, NULL, 'nullify'),
(6, 'products', 'category', 'category', NULL, NULL, NULL, NULL, NULL, 'nullify'),
(7, 'products', 'certification', 'certification', NULL, NULL, NULL, NULL, NULL, 'nullify'),
(8, 'products', 'producer', 'producer', NULL, NULL, NULL, NULL, NULL, 'nullify'),
(9, 'distribution', 'site', 'distribution_site', NULL, NULL, NULL, NULL, NULL, 'nullify'),
(11, 'subscription', 'association', 'association', NULL, NULL, NULL, NULL, NULL, 'nullify'),
(12, 'distribution_site', 'city', 'city', NULL, NULL, NULL, NULL, NULL, 'nullify'),
(13, 'producer', 'city', 'city', NULL, NULL, NULL, NULL, NULL, 'nullify'),
(14, 'association', 'city', 'city', NULL, NULL, NULL, NULL, NULL, 'nullify'),
(15, 'order', 'ditribution', 'distribution', NULL, NULL, NULL, NULL, NULL, 'nullify'),
(16, 'distribution', 'association', 'association', NULL, NULL, NULL, NULL, NULL, 'nullify'),
(17, 'order', 'member', 'directus_users', NULL, NULL, NULL, NULL, NULL, 'nullify'),
(19, 'order', 'cart', 'order_product', 'order', NULL, NULL, NULL, NULL, 'nullify'),
(20, 'order_product', 'product', 'products', NULL, NULL, NULL, NULL, NULL, 'nullify'),
(21, 'subscription', 'city', 'city', NULL, NULL, NULL, NULL, NULL, 'nullify'),
(22, 'distribution_producer', 'distribution_id', 'distribution', 'producer', NULL, NULL, 'producer_id', NULL, 'nullify'),
(23, 'distribution_producer', 'producer_id', 'producer', NULL, NULL, NULL, 'distribution_id', NULL, 'nullify');

-- --------------------------------------------------------

--
-- Structure de la table `directus_revisions`
--

CREATE TABLE `directus_revisions` (
  `id` int(10) UNSIGNED NOT NULL,
  `activity` int(10) UNSIGNED NOT NULL,
  `collection` varchar(64) NOT NULL,
  `item` varchar(255) NOT NULL,
  `data` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`data`)),
  `delta` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`delta`)),
  `parent` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `directus_revisions`
--

INSERT INTO `directus_revisions` (`id`, `activity`, `collection`, `item`, `data`, `delta`, `parent`) VALUES
(1, 2, 'directus_users', '109171df-772a-4bf8-8f98-1fcbf802f710', '{\"first_name\":\"Fabien\",\"last_name\":\"Perrichon\",\"email\":\"fatoon.dev@gmail.com\",\"password\":\"**********\",\"language\":\"fr-FR\",\"role\":\"fdcaa9db-c186-4905-8c1f-14a378416a0c\"}', '{\"first_name\":\"Fabien\",\"last_name\":\"Perrichon\",\"email\":\"fatoon.dev@gmail.com\",\"password\":\"**********\",\"language\":\"fr-FR\",\"role\":\"fdcaa9db-c186-4905-8c1f-14a378416a0c\"}', NULL),
(2, 4, 'directus_collections', 'subscription', '{\"sort_field\":\"sort\",\"archive_field\":\"status\",\"archive_value\":\"archived\",\"unarchive_value\":\"draft\",\"singleton\":false,\"collection\":\"subscription\"}', '{\"sort_field\":\"sort\",\"archive_field\":\"status\",\"archive_value\":\"archived\",\"unarchive_value\":\"draft\",\"singleton\":false,\"collection\":\"subscription\"}', NULL),
(3, 5, 'directus_fields', '1', '{\"hidden\":true,\"interface\":\"input\",\"readonly\":true,\"field\":\"id\",\"collection\":\"subscription\"}', '{\"hidden\":true,\"interface\":\"input\",\"readonly\":true,\"field\":\"id\",\"collection\":\"subscription\"}', NULL),
(4, 6, 'directus_fields', '2', '{\"width\":\"full\",\"options\":{\"choices\":[{\"text\":\"$t:published\",\"value\":\"published\"},{\"text\":\"$t:draft\",\"value\":\"draft\"},{\"text\":\"$t:archived\",\"value\":\"archived\"}]},\"interface\":\"select-dropdown\",\"display\":\"labels\",\"display_options\":{\"showAsDot\":true,\"choices\":[{\"background\":\"#00C897\",\"value\":\"published\"},{\"background\":\"#D3DAE4\",\"value\":\"draft\"},{\"background\":\"#F7971C\",\"value\":\"archived\"}]},\"field\":\"status\",\"collection\":\"subscription\"}', '{\"width\":\"full\",\"options\":{\"choices\":[{\"text\":\"$t:published\",\"value\":\"published\"},{\"text\":\"$t:draft\",\"value\":\"draft\"},{\"text\":\"$t:archived\",\"value\":\"archived\"}]},\"interface\":\"select-dropdown\",\"display\":\"labels\",\"display_options\":{\"showAsDot\":true,\"choices\":[{\"background\":\"#00C897\",\"value\":\"published\"},{\"background\":\"#D3DAE4\",\"value\":\"draft\"},{\"background\":\"#F7971C\",\"value\":\"archived\"}]},\"field\":\"status\",\"collection\":\"subscription\"}', NULL),
(5, 7, 'directus_fields', '3', '{\"interface\":\"input\",\"hidden\":true,\"field\":\"sort\",\"collection\":\"subscription\"}', '{\"interface\":\"input\",\"hidden\":true,\"field\":\"sort\",\"collection\":\"subscription\"}', NULL),
(6, 8, 'directus_fields', '4', '{\"special\":\"user-created\",\"interface\":\"select-dropdown-m2o\",\"options\":{\"template\":\"{{avatar.$thumbnail}} {{first_name}} {{last_name}}\"},\"display\":\"user\",\"readonly\":true,\"hidden\":true,\"width\":\"half\",\"field\":\"user_created\",\"collection\":\"subscription\"}', '{\"special\":\"user-created\",\"interface\":\"select-dropdown-m2o\",\"options\":{\"template\":\"{{avatar.$thumbnail}} {{first_name}} {{last_name}}\"},\"display\":\"user\",\"readonly\":true,\"hidden\":true,\"width\":\"half\",\"field\":\"user_created\",\"collection\":\"subscription\"}', NULL),
(7, 9, 'directus_fields', '5', '{\"special\":\"date-created\",\"interface\":\"datetime\",\"readonly\":true,\"hidden\":true,\"width\":\"half\",\"display\":\"datetime\",\"display_options\":{\"relative\":true},\"field\":\"date_created\",\"collection\":\"subscription\"}', '{\"special\":\"date-created\",\"interface\":\"datetime\",\"readonly\":true,\"hidden\":true,\"width\":\"half\",\"display\":\"datetime\",\"display_options\":{\"relative\":true},\"field\":\"date_created\",\"collection\":\"subscription\"}', NULL),
(8, 10, 'directus_fields', '6', '{\"special\":\"user-updated\",\"interface\":\"select-dropdown-m2o\",\"options\":{\"template\":\"{{avatar.$thumbnail}} {{first_name}} {{last_name}}\"},\"display\":\"user\",\"readonly\":true,\"hidden\":true,\"width\":\"half\",\"field\":\"user_updated\",\"collection\":\"subscription\"}', '{\"special\":\"user-updated\",\"interface\":\"select-dropdown-m2o\",\"options\":{\"template\":\"{{avatar.$thumbnail}} {{first_name}} {{last_name}}\"},\"display\":\"user\",\"readonly\":true,\"hidden\":true,\"width\":\"half\",\"field\":\"user_updated\",\"collection\":\"subscription\"}', NULL),
(9, 11, 'directus_fields', '7', '{\"special\":\"date-updated\",\"interface\":\"datetime\",\"readonly\":true,\"hidden\":true,\"width\":\"half\",\"display\":\"datetime\",\"display_options\":{\"relative\":true},\"field\":\"date_updated\",\"collection\":\"subscription\"}', '{\"special\":\"date-updated\",\"interface\":\"datetime\",\"readonly\":true,\"hidden\":true,\"width\":\"half\",\"display\":\"datetime\",\"display_options\":{\"relative\":true},\"field\":\"date_updated\",\"collection\":\"subscription\"}', NULL),
(10, 12, 'directus_fields', '8', '{\"hidden\":false,\"interface\":\"datetime\",\"options\":null,\"display\":\"datetime\",\"display_options\":null,\"readonly\":false,\"special\":\"date-created\",\"translations\":[{\"language\":\"fr-FR\",\"translation\":\"Date de l\'adhésion\"}],\"collection\":\"subscription\",\"field\":\"subscription_date\"}', '{\"hidden\":false,\"interface\":\"datetime\",\"options\":null,\"display\":\"datetime\",\"display_options\":null,\"readonly\":false,\"special\":\"date-created\",\"translations\":[{\"language\":\"fr-FR\",\"translation\":\"Date de l\'adhésion\"}],\"collection\":\"subscription\",\"field\":\"subscription_date\"}', NULL),
(11, 13, 'directus_fields', '9', '{\"hidden\":false,\"interface\":\"input\",\"options\":{\"min\":1},\"display\":\"raw\",\"display_options\":null,\"readonly\":false,\"special\":null,\"note\":\"durée en année\",\"translations\":[{\"language\":\"fr-FR\",\"translation\":\"Durée de l\'adhésion\"}],\"collection\":\"subscription\",\"field\":\"duration\"}', '{\"hidden\":false,\"interface\":\"input\",\"options\":{\"min\":1},\"display\":\"raw\",\"display_options\":null,\"readonly\":false,\"special\":null,\"note\":\"durée en année\",\"translations\":[{\"language\":\"fr-FR\",\"translation\":\"Durée de l\'adhésion\"}],\"collection\":\"subscription\",\"field\":\"duration\"}', NULL),
(12, 14, 'directus_fields', '10', '{\"hidden\":false,\"interface\":\"input\",\"options\":{\"min\":0},\"display\":\"raw\",\"display_options\":null,\"readonly\":false,\"special\":null,\"note\":null,\"translations\":[{\"language\":\"fr-FR\",\"translation\":\"Montant\"}],\"collection\":\"subscription\",\"field\":\"fee_amount\"}', '{\"hidden\":false,\"interface\":\"input\",\"options\":{\"min\":0},\"display\":\"raw\",\"display_options\":null,\"readonly\":false,\"special\":null,\"note\":null,\"translations\":[{\"language\":\"fr-FR\",\"translation\":\"Montant\"}],\"collection\":\"subscription\",\"field\":\"fee_amount\"}', NULL),
(13, 15, 'directus_fields', '11', '{\"hidden\":false,\"interface\":\"datetime\",\"options\":null,\"display\":\"datetime\",\"display_options\":null,\"readonly\":false,\"special\":null,\"translations\":[{\"language\":\"fr-FR\",\"translation\":\"Date du paiement de la cotisation\"}],\"collection\":\"subscription\",\"field\":\"fee_date\"}', '{\"hidden\":false,\"interface\":\"datetime\",\"options\":null,\"display\":\"datetime\",\"display_options\":null,\"readonly\":false,\"special\":null,\"translations\":[{\"language\":\"fr-FR\",\"translation\":\"Date du paiement de la cotisation\"}],\"collection\":\"subscription\",\"field\":\"fee_date\"}', NULL),
(14, 16, 'directus_fields', '10', '{\"id\":10,\"collection\":\"subscription\",\"field\":\"fee_amount\",\"special\":null,\"interface\":\"input\",\"options\":{\"min\":0},\"display\":\"raw\",\"display_options\":null,\"readonly\":false,\"hidden\":false,\"sort\":null,\"width\":\"full\",\"translations\":[{\"language\":\"fr-FR\",\"translation\":\"Montant de la cotisation\"}],\"note\":null,\"conditions\":null,\"required\":false,\"group\":null}', '{\"collection\":\"subscription\",\"field\":\"fee_amount\",\"special\":null,\"interface\":\"input\",\"options\":{\"min\":0},\"display\":\"raw\",\"display_options\":null,\"readonly\":false,\"hidden\":false,\"sort\":null,\"width\":\"full\",\"translations\":[{\"language\":\"fr-FR\",\"translation\":\"Montant de la cotisation\"}],\"note\":null,\"conditions\":null,\"required\":false,\"group\":null}', NULL),
(15, 17, 'directus_fields', '12', '{\"hidden\":false,\"interface\":\"select-dropdown\",\"options\":{\"choices\":[{\"text\":\"Espèce\",\"value\":\"cash\"},{\"text\":\"Chèque\",\"value\":\"check\"},{\"text\":\"Virement\",\"value\":\"bank_transfer\"}]},\"display\":\"labels\",\"display_options\":{\"choices\":[{\"text\":\"cash\",\"value\":\"Espèce\",\"background\":\"#00C897\"},{\"text\":\"Chèque\",\"value\":\"check\",\"background\":\"#68B0F4\"},{\"text\":\"Virement\",\"value\":\"bank_transfer\",\"background\":\"#F7971C\"}]},\"readonly\":false,\"translations\":[{\"language\":\"fr-FR\",\"translation\":\"Méthode de paiement de la cotisation\"}],\"collection\":\"subscription\",\"field\":\"fee_method\"}', '{\"hidden\":false,\"interface\":\"select-dropdown\",\"options\":{\"choices\":[{\"text\":\"Espèce\",\"value\":\"cash\"},{\"text\":\"Chèque\",\"value\":\"check\"},{\"text\":\"Virement\",\"value\":\"bank_transfer\"}]},\"display\":\"labels\",\"display_options\":{\"choices\":[{\"text\":\"cash\",\"value\":\"Espèce\",\"background\":\"#00C897\"},{\"text\":\"Chèque\",\"value\":\"check\",\"background\":\"#68B0F4\"},{\"text\":\"Virement\",\"value\":\"bank_transfer\",\"background\":\"#F7971C\"}]},\"readonly\":false,\"translations\":[{\"language\":\"fr-FR\",\"translation\":\"Méthode de paiement de la cotisation\"}],\"collection\":\"subscription\",\"field\":\"fee_method\"}', NULL),
(16, 18, 'directus_fields', '13', '{\"hidden\":false,\"interface\":\"select-dropdown-m2o\",\"options\":{\"template\":\"{{first_name}}{{last_name}}\"},\"readonly\":false,\"translations\":[{\"language\":\"fr-FR\",\"translation\":\"Adhérent\"}],\"collection\":\"subscription\",\"field\":\"member\"}', '{\"hidden\":false,\"interface\":\"select-dropdown-m2o\",\"options\":{\"template\":\"{{first_name}}{{last_name}}\"},\"readonly\":false,\"translations\":[{\"language\":\"fr-FR\",\"translation\":\"Adhérent\"}],\"collection\":\"subscription\",\"field\":\"member\"}', NULL),
(17, 19, 'directus_collections', 'subscription', '{\"collection\":\"subscription\",\"icon\":\"supervised_user_circle\",\"note\":null,\"display_template\":null,\"hidden\":false,\"singleton\":false,\"translations\":null,\"archive_field\":\"status\",\"archive_app_filter\":true,\"archive_value\":\"archived\",\"unarchive_value\":\"draft\",\"sort_field\":\"sort\",\"accountability\":\"all\",\"color\":\"#F7971C\",\"item_duplication_fields\":null,\"sort\":null,\"group\":null,\"collapse\":\"open\"}', '{\"icon\":\"supervised_user_circle\",\"color\":\"#F7971C\"}', NULL),
(18, 20, 'directus_fields', '8', '{\"id\":8,\"collection\":\"subscription\",\"field\":\"subscription_date\",\"special\":\"\",\"interface\":\"datetime\",\"options\":null,\"display\":\"datetime\",\"display_options\":null,\"readonly\":false,\"hidden\":false,\"sort\":null,\"width\":\"full\",\"translations\":[{\"language\":\"fr-FR\",\"translation\":\"Date de l\'adhésion\"}],\"note\":null,\"conditions\":null,\"required\":false,\"group\":null}', '{\"collection\":\"subscription\",\"field\":\"subscription_date\",\"special\":\"\",\"interface\":\"datetime\",\"options\":null,\"display\":\"datetime\",\"display_options\":null,\"readonly\":false,\"hidden\":false,\"sort\":null,\"width\":\"full\",\"translations\":[{\"language\":\"fr-FR\",\"translation\":\"Date de l\'adhésion\"}],\"note\":null,\"conditions\":null,\"required\":false,\"group\":null}', NULL),
(19, 21, 'directus_fields', '14', '{\"hidden\":false,\"interface\":\"datetime\",\"options\":null,\"display\":\"datetime\",\"display_options\":null,\"readonly\":false,\"special\":\"\",\"translations\":[{\"language\":\"fr-FR\",\"translation\":\"Date de l\'adhésion\"}],\"collection\":\"subscription\",\"field\":\"subscription_date\"}', '{\"hidden\":false,\"interface\":\"datetime\",\"options\":null,\"display\":\"datetime\",\"display_options\":null,\"readonly\":false,\"special\":\"\",\"translations\":[{\"language\":\"fr-FR\",\"translation\":\"Date de l\'adhésion\"}],\"collection\":\"subscription\",\"field\":\"subscription_date\"}', NULL),
(20, 22, 'directus_fields', '1', '{\"id\":1,\"collection\":\"subscription\",\"field\":\"id\",\"special\":null,\"interface\":\"input\",\"options\":null,\"display\":null,\"display_options\":null,\"readonly\":true,\"hidden\":true,\"sort\":1,\"width\":\"full\",\"translations\":null,\"note\":null,\"conditions\":null,\"required\":false,\"group\":null}', '{\"collection\":\"subscription\",\"field\":\"id\",\"sort\":1,\"group\":null}', NULL),
(21, 23, 'directus_fields', '2', '{\"id\":2,\"collection\":\"subscription\",\"field\":\"status\",\"special\":null,\"interface\":\"select-dropdown\",\"options\":{\"choices\":[{\"text\":\"$t:published\",\"value\":\"published\"},{\"text\":\"$t:draft\",\"value\":\"draft\"},{\"text\":\"$t:archived\",\"value\":\"archived\"}]},\"display\":\"labels\",\"display_options\":{\"showAsDot\":true,\"choices\":[{\"background\":\"#00C897\",\"value\":\"published\"},{\"background\":\"#D3DAE4\",\"value\":\"draft\"},{\"background\":\"#F7971C\",\"value\":\"archived\"}]},\"readonly\":false,\"hidden\":false,\"sort\":2,\"width\":\"full\",\"translations\":null,\"note\":null,\"conditions\":null,\"required\":false,\"group\":null}', '{\"collection\":\"subscription\",\"field\":\"status\",\"sort\":2,\"group\":null}', NULL),
(22, 24, 'directus_fields', '3', '{\"id\":3,\"collection\":\"subscription\",\"field\":\"sort\",\"special\":null,\"interface\":\"input\",\"options\":null,\"display\":null,\"display_options\":null,\"readonly\":false,\"hidden\":true,\"sort\":3,\"width\":\"full\",\"translations\":null,\"note\":null,\"conditions\":null,\"required\":false,\"group\":null}', '{\"collection\":\"subscription\",\"field\":\"sort\",\"sort\":3,\"group\":null}', NULL),
(23, 25, 'directus_fields', '4', '{\"id\":4,\"collection\":\"subscription\",\"field\":\"user_created\",\"special\":[\"user-created\"],\"interface\":\"select-dropdown-m2o\",\"options\":{\"template\":\"{{avatar.$thumbnail}} {{first_name}} {{last_name}}\"},\"display\":\"user\",\"display_options\":null,\"readonly\":true,\"hidden\":true,\"sort\":4,\"width\":\"half\",\"translations\":null,\"note\":null,\"conditions\":null,\"required\":false,\"group\":null}', '{\"collection\":\"subscription\",\"field\":\"user_created\",\"sort\":4,\"group\":null}', NULL),
(24, 26, 'directus_fields', '5', '{\"id\":5,\"collection\":\"subscription\",\"field\":\"date_created\",\"special\":[\"date-created\"],\"interface\":\"datetime\",\"options\":null,\"display\":\"datetime\",\"display_options\":{\"relative\":true},\"readonly\":true,\"hidden\":true,\"sort\":5,\"width\":\"half\",\"translations\":null,\"note\":null,\"conditions\":null,\"required\":false,\"group\":null}', '{\"collection\":\"subscription\",\"field\":\"date_created\",\"sort\":5,\"group\":null}', NULL),
(25, 27, 'directus_fields', '6', '{\"id\":6,\"collection\":\"subscription\",\"field\":\"user_updated\",\"special\":[\"user-updated\"],\"interface\":\"select-dropdown-m2o\",\"options\":{\"template\":\"{{avatar.$thumbnail}} {{first_name}} {{last_name}}\"},\"display\":\"user\",\"display_options\":null,\"readonly\":true,\"hidden\":true,\"sort\":6,\"width\":\"half\",\"translations\":null,\"note\":null,\"conditions\":null,\"required\":false,\"group\":null}', '{\"collection\":\"subscription\",\"field\":\"user_updated\",\"sort\":6,\"group\":null}', NULL),
(26, 28, 'directus_fields', '7', '{\"id\":7,\"collection\":\"subscription\",\"field\":\"date_updated\",\"special\":[\"date-updated\"],\"interface\":\"datetime\",\"options\":null,\"display\":\"datetime\",\"display_options\":{\"relative\":true},\"readonly\":true,\"hidden\":true,\"sort\":7,\"width\":\"half\",\"translations\":null,\"note\":null,\"conditions\":null,\"required\":false,\"group\":null}', '{\"collection\":\"subscription\",\"field\":\"date_updated\",\"sort\":7,\"group\":null}', NULL),
(27, 29, 'directus_fields', '14', '{\"id\":14,\"collection\":\"subscription\",\"field\":\"subscription_date\",\"special\":\"\",\"interface\":\"datetime\",\"options\":null,\"display\":\"datetime\",\"display_options\":null,\"readonly\":false,\"hidden\":false,\"sort\":8,\"width\":\"full\",\"translations\":[{\"language\":\"fr-FR\",\"translation\":\"Date de l\'adhésion\"}],\"note\":null,\"conditions\":null,\"required\":false,\"group\":null}', '{\"collection\":\"subscription\",\"field\":\"subscription_date\",\"sort\":8,\"group\":null}', NULL),
(28, 30, 'directus_fields', '9', '{\"id\":9,\"collection\":\"subscription\",\"field\":\"duration\",\"special\":null,\"interface\":\"input\",\"options\":{\"min\":1},\"display\":\"raw\",\"display_options\":null,\"readonly\":false,\"hidden\":false,\"sort\":9,\"width\":\"full\",\"translations\":[{\"language\":\"fr-FR\",\"translation\":\"Durée de l\'adhésion\"}],\"note\":\"durée en année\",\"conditions\":null,\"required\":false,\"group\":null}', '{\"collection\":\"subscription\",\"field\":\"duration\",\"sort\":9,\"group\":null}', NULL),
(29, 31, 'directus_fields', '10', '{\"id\":10,\"collection\":\"subscription\",\"field\":\"fee_amount\",\"special\":null,\"interface\":\"input\",\"options\":{\"min\":0},\"display\":\"raw\",\"display_options\":null,\"readonly\":false,\"hidden\":false,\"sort\":10,\"width\":\"full\",\"translations\":[{\"language\":\"fr-FR\",\"translation\":\"Montant de la cotisation\"}],\"note\":null,\"conditions\":null,\"required\":false,\"group\":null}', '{\"collection\":\"subscription\",\"field\":\"fee_amount\",\"sort\":10,\"group\":null}', NULL),
(30, 32, 'directus_fields', '11', '{\"id\":11,\"collection\":\"subscription\",\"field\":\"fee_date\",\"special\":null,\"interface\":\"datetime\",\"options\":null,\"display\":\"datetime\",\"display_options\":null,\"readonly\":false,\"hidden\":false,\"sort\":11,\"width\":\"full\",\"translations\":[{\"language\":\"fr-FR\",\"translation\":\"Date du paiement de la cotisation\"}],\"note\":null,\"conditions\":null,\"required\":false,\"group\":null}', '{\"collection\":\"subscription\",\"field\":\"fee_date\",\"sort\":11,\"group\":null}', NULL),
(31, 33, 'directus_fields', '12', '{\"id\":12,\"collection\":\"subscription\",\"field\":\"fee_method\",\"special\":null,\"interface\":\"select-dropdown\",\"options\":{\"choices\":[{\"text\":\"Espèce\",\"value\":\"cash\"},{\"text\":\"Chèque\",\"value\":\"check\"},{\"text\":\"Virement\",\"value\":\"bank_transfer\"}]},\"display\":\"labels\",\"display_options\":{\"choices\":[{\"text\":\"cash\",\"value\":\"Espèce\",\"background\":\"#00C897\"},{\"text\":\"Chèque\",\"value\":\"check\",\"background\":\"#68B0F4\"},{\"text\":\"Virement\",\"value\":\"bank_transfer\",\"background\":\"#F7971C\"}]},\"readonly\":false,\"hidden\":false,\"sort\":12,\"width\":\"full\",\"translations\":[{\"language\":\"fr-FR\",\"translation\":\"Méthode de paiement de la cotisation\"}],\"note\":null,\"conditions\":null,\"required\":false,\"group\":null}', '{\"collection\":\"subscription\",\"field\":\"fee_method\",\"sort\":12,\"group\":null}', NULL),
(32, 34, 'directus_fields', '13', '{\"id\":13,\"collection\":\"subscription\",\"field\":\"member\",\"special\":null,\"interface\":\"select-dropdown-m2o\",\"options\":{\"template\":\"{{first_name}}{{last_name}}\"},\"display\":null,\"display_options\":null,\"readonly\":false,\"hidden\":false,\"sort\":13,\"width\":\"full\",\"translations\":[{\"language\":\"fr-FR\",\"translation\":\"Adhérent\"}],\"note\":null,\"conditions\":null,\"required\":false,\"group\":null}', '{\"collection\":\"subscription\",\"field\":\"member\",\"sort\":13,\"group\":null}', NULL),
(33, 35, 'directus_fields', '14', '{\"id\":14,\"collection\":\"subscription\",\"field\":\"subscription_date\",\"special\":\"\",\"interface\":\"datetime\",\"options\":null,\"display\":\"datetime\",\"display_options\":null,\"readonly\":false,\"hidden\":false,\"sort\":8,\"width\":\"half\",\"translations\":[{\"language\":\"fr-FR\",\"translation\":\"Date de l\'adhésion\"}],\"note\":null,\"conditions\":null,\"required\":false,\"group\":null}', '{\"collection\":\"subscription\",\"field\":\"subscription_date\",\"width\":\"half\"}', NULL),
(34, 36, 'directus_fields', '9', '{\"id\":9,\"collection\":\"subscription\",\"field\":\"duration\",\"special\":null,\"interface\":\"input\",\"options\":{\"min\":1},\"display\":\"raw\",\"display_options\":null,\"readonly\":false,\"hidden\":false,\"sort\":9,\"width\":\"half\",\"translations\":[{\"language\":\"fr-FR\",\"translation\":\"Durée de l\'adhésion\"}],\"note\":\"durée en année\",\"conditions\":null,\"required\":false,\"group\":null}', '{\"collection\":\"subscription\",\"field\":\"duration\",\"width\":\"half\"}', NULL),
(35, 37, 'directus_fields', '10', '{\"id\":10,\"collection\":\"subscription\",\"field\":\"fee_amount\",\"special\":null,\"interface\":\"input\",\"options\":{\"min\":0},\"display\":\"raw\",\"display_options\":null,\"readonly\":false,\"hidden\":false,\"sort\":10,\"width\":\"half\",\"translations\":[{\"language\":\"fr-FR\",\"translation\":\"Montant de la cotisation\"}],\"note\":null,\"conditions\":null,\"required\":false,\"group\":null}', '{\"collection\":\"subscription\",\"field\":\"fee_amount\",\"width\":\"half\"}', NULL),
(36, 38, 'directus_fields', '12', '{\"id\":12,\"collection\":\"subscription\",\"field\":\"fee_method\",\"special\":null,\"interface\":\"select-dropdown\",\"options\":{\"choices\":[{\"text\":\"Espèce\",\"value\":\"cash\"},{\"text\":\"Chèque\",\"value\":\"check\"},{\"text\":\"Virement\",\"value\":\"bank_transfer\"}]},\"display\":\"labels\",\"display_options\":{\"choices\":[{\"text\":\"cash\",\"value\":\"Espèce\",\"background\":\"#00C897\"},{\"text\":\"Chèque\",\"value\":\"check\",\"background\":\"#68B0F4\"},{\"text\":\"Virement\",\"value\":\"bank_transfer\",\"background\":\"#F7971C\"}]},\"readonly\":false,\"hidden\":false,\"sort\":12,\"width\":\"half\",\"translations\":[{\"language\":\"fr-FR\",\"translation\":\"Méthode de paiement de la cotisation\"}],\"note\":null,\"conditions\":null,\"required\":false,\"group\":null}', '{\"collection\":\"subscription\",\"field\":\"fee_method\",\"width\":\"half\"}', NULL),
(37, 39, 'directus_fields', '1', '{\"id\":1,\"collection\":\"subscription\",\"field\":\"id\",\"special\":null,\"interface\":\"input\",\"options\":null,\"display\":null,\"display_options\":null,\"readonly\":true,\"hidden\":true,\"sort\":1,\"width\":\"full\",\"translations\":null,\"note\":null,\"conditions\":null,\"required\":false,\"group\":null}', '{\"collection\":\"subscription\",\"field\":\"id\",\"sort\":1,\"group\":null}', NULL),
(38, 40, 'directus_fields', '2', '{\"id\":2,\"collection\":\"subscription\",\"field\":\"status\",\"special\":null,\"interface\":\"select-dropdown\",\"options\":{\"choices\":[{\"text\":\"$t:published\",\"value\":\"published\"},{\"text\":\"$t:draft\",\"value\":\"draft\"},{\"text\":\"$t:archived\",\"value\":\"archived\"}]},\"display\":\"labels\",\"display_options\":{\"showAsDot\":true,\"choices\":[{\"background\":\"#00C897\",\"value\":\"published\"},{\"background\":\"#D3DAE4\",\"value\":\"draft\"},{\"background\":\"#F7971C\",\"value\":\"archived\"}]},\"readonly\":false,\"hidden\":false,\"sort\":2,\"width\":\"full\",\"translations\":null,\"note\":null,\"conditions\":null,\"required\":false,\"group\":null}', '{\"collection\":\"subscription\",\"field\":\"status\",\"sort\":2,\"group\":null}', NULL),
(39, 41, 'directus_fields', '3', '{\"id\":3,\"collection\":\"subscription\",\"field\":\"sort\",\"special\":null,\"interface\":\"input\",\"options\":null,\"display\":null,\"display_options\":null,\"readonly\":false,\"hidden\":true,\"sort\":3,\"width\":\"full\",\"translations\":null,\"note\":null,\"conditions\":null,\"required\":false,\"group\":null}', '{\"collection\":\"subscription\",\"field\":\"sort\",\"sort\":3,\"group\":null}', NULL),
(40, 42, 'directus_fields', '4', '{\"id\":4,\"collection\":\"subscription\",\"field\":\"user_created\",\"special\":[\"user-created\"],\"interface\":\"select-dropdown-m2o\",\"options\":{\"template\":\"{{avatar.$thumbnail}} {{first_name}} {{last_name}}\"},\"display\":\"user\",\"display_options\":null,\"readonly\":true,\"hidden\":true,\"sort\":4,\"width\":\"half\",\"translations\":null,\"note\":null,\"conditions\":null,\"required\":false,\"group\":null}', '{\"collection\":\"subscription\",\"field\":\"user_created\",\"sort\":4,\"group\":null}', NULL),
(41, 43, 'directus_fields', '5', '{\"id\":5,\"collection\":\"subscription\",\"field\":\"date_created\",\"special\":[\"date-created\"],\"interface\":\"datetime\",\"options\":null,\"display\":\"datetime\",\"display_options\":{\"relative\":true},\"readonly\":true,\"hidden\":true,\"sort\":5,\"width\":\"half\",\"translations\":null,\"note\":null,\"conditions\":null,\"required\":false,\"group\":null}', '{\"collection\":\"subscription\",\"field\":\"date_created\",\"sort\":5,\"group\":null}', NULL),
(42, 44, 'directus_fields', '6', '{\"id\":6,\"collection\":\"subscription\",\"field\":\"user_updated\",\"special\":[\"user-updated\"],\"interface\":\"select-dropdown-m2o\",\"options\":{\"template\":\"{{avatar.$thumbnail}} {{first_name}} {{last_name}}\"},\"display\":\"user\",\"display_options\":null,\"readonly\":true,\"hidden\":true,\"sort\":6,\"width\":\"half\",\"translations\":null,\"note\":null,\"conditions\":null,\"required\":false,\"group\":null}', '{\"collection\":\"subscription\",\"field\":\"user_updated\",\"sort\":6,\"group\":null}', NULL),
(43, 45, 'directus_fields', '7', '{\"id\":7,\"collection\":\"subscription\",\"field\":\"date_updated\",\"special\":[\"date-updated\"],\"interface\":\"datetime\",\"options\":null,\"display\":\"datetime\",\"display_options\":{\"relative\":true},\"readonly\":true,\"hidden\":true,\"sort\":7,\"width\":\"half\",\"translations\":null,\"note\":null,\"conditions\":null,\"required\":false,\"group\":null}', '{\"collection\":\"subscription\",\"field\":\"date_updated\",\"sort\":7,\"group\":null}', NULL),
(44, 46, 'directus_fields', '14', '{\"id\":14,\"collection\":\"subscription\",\"field\":\"subscription_date\",\"special\":\"\",\"interface\":\"datetime\",\"options\":null,\"display\":\"datetime\",\"display_options\":null,\"readonly\":false,\"hidden\":false,\"sort\":8,\"width\":\"half\",\"translations\":[{\"language\":\"fr-FR\",\"translation\":\"Date de l\'adhésion\"}],\"note\":null,\"conditions\":null,\"required\":false,\"group\":null}', '{\"collection\":\"subscription\",\"field\":\"subscription_date\",\"sort\":8,\"group\":null}', NULL),
(45, 47, 'directus_fields', '9', '{\"id\":9,\"collection\":\"subscription\",\"field\":\"duration\",\"special\":null,\"interface\":\"input\",\"options\":{\"min\":1},\"display\":\"raw\",\"display_options\":null,\"readonly\":false,\"hidden\":false,\"sort\":9,\"width\":\"half\",\"translations\":[{\"language\":\"fr-FR\",\"translation\":\"Durée de l\'adhésion\"}],\"note\":\"durée en année\",\"conditions\":null,\"required\":false,\"group\":null}', '{\"collection\":\"subscription\",\"field\":\"duration\",\"sort\":9,\"group\":null}', NULL),
(46, 48, 'directus_fields', '10', '{\"id\":10,\"collection\":\"subscription\",\"field\":\"fee_amount\",\"special\":null,\"interface\":\"input\",\"options\":{\"min\":0},\"display\":\"raw\",\"display_options\":null,\"readonly\":false,\"hidden\":false,\"sort\":10,\"width\":\"half\",\"translations\":[{\"language\":\"fr-FR\",\"translation\":\"Montant de la cotisation\"}],\"note\":null,\"conditions\":null,\"required\":false,\"group\":null}', '{\"collection\":\"subscription\",\"field\":\"fee_amount\",\"sort\":10,\"group\":null}', NULL),
(47, 49, 'directus_fields', '12', '{\"id\":12,\"collection\":\"subscription\",\"field\":\"fee_method\",\"special\":null,\"interface\":\"select-dropdown\",\"options\":{\"choices\":[{\"text\":\"Espèce\",\"value\":\"cash\"},{\"text\":\"Chèque\",\"value\":\"check\"},{\"text\":\"Virement\",\"value\":\"bank_transfer\"}]},\"display\":\"labels\",\"display_options\":{\"choices\":[{\"text\":\"cash\",\"value\":\"Espèce\",\"background\":\"#00C897\"},{\"text\":\"Chèque\",\"value\":\"check\",\"background\":\"#68B0F4\"},{\"text\":\"Virement\",\"value\":\"bank_transfer\",\"background\":\"#F7971C\"}]},\"readonly\":false,\"hidden\":false,\"sort\":11,\"width\":\"half\",\"translations\":[{\"language\":\"fr-FR\",\"translation\":\"Méthode de paiement de la cotisation\"}],\"note\":null,\"conditions\":null,\"required\":false,\"group\":null}', '{\"collection\":\"subscription\",\"field\":\"fee_method\",\"sort\":11,\"group\":null}', NULL),
(48, 50, 'directus_fields', '11', '{\"id\":11,\"collection\":\"subscription\",\"field\":\"fee_date\",\"special\":null,\"interface\":\"datetime\",\"options\":null,\"display\":\"datetime\",\"display_options\":null,\"readonly\":false,\"hidden\":false,\"sort\":12,\"width\":\"full\",\"translations\":[{\"language\":\"fr-FR\",\"translation\":\"Date du paiement de la cotisation\"}],\"note\":null,\"conditions\":null,\"required\":false,\"group\":null}', '{\"collection\":\"subscription\",\"field\":\"fee_date\",\"sort\":12,\"group\":null}', NULL),
(49, 51, 'directus_fields', '13', '{\"id\":13,\"collection\":\"subscription\",\"field\":\"member\",\"special\":null,\"interface\":\"select-dropdown-m2o\",\"options\":{\"template\":\"{{first_name}}{{last_name}}\"},\"display\":null,\"display_options\":null,\"readonly\":false,\"hidden\":false,\"sort\":13,\"width\":\"full\",\"translations\":[{\"language\":\"fr-FR\",\"translation\":\"Adhérent\"}],\"note\":null,\"conditions\":null,\"required\":false,\"group\":null}', '{\"collection\":\"subscription\",\"field\":\"member\",\"sort\":13,\"group\":null}', NULL),
(50, 52, 'directus_fields', '1', '{\"id\":1,\"collection\":\"subscription\",\"field\":\"id\",\"special\":null,\"interface\":\"input\",\"options\":null,\"display\":null,\"display_options\":null,\"readonly\":true,\"hidden\":true,\"sort\":1,\"width\":\"full\",\"translations\":null,\"note\":null,\"conditions\":null,\"required\":false,\"group\":null}', '{\"collection\":\"subscription\",\"field\":\"id\",\"sort\":1,\"group\":null}', NULL),
(51, 53, 'directus_fields', '2', '{\"id\":2,\"collection\":\"subscription\",\"field\":\"status\",\"special\":null,\"interface\":\"select-dropdown\",\"options\":{\"choices\":[{\"text\":\"$t:published\",\"value\":\"published\"},{\"text\":\"$t:draft\",\"value\":\"draft\"},{\"text\":\"$t:archived\",\"value\":\"archived\"}]},\"display\":\"labels\",\"display_options\":{\"showAsDot\":true,\"choices\":[{\"background\":\"#00C897\",\"value\":\"published\"},{\"background\":\"#D3DAE4\",\"value\":\"draft\"},{\"background\":\"#F7971C\",\"value\":\"archived\"}]},\"readonly\":false,\"hidden\":false,\"sort\":2,\"width\":\"full\",\"translations\":null,\"note\":null,\"conditions\":null,\"required\":false,\"group\":null}', '{\"collection\":\"subscription\",\"field\":\"status\",\"sort\":2,\"group\":null}', NULL),
(52, 54, 'directus_fields', '3', '{\"id\":3,\"collection\":\"subscription\",\"field\":\"sort\",\"special\":null,\"interface\":\"input\",\"options\":null,\"display\":null,\"display_options\":null,\"readonly\":false,\"hidden\":true,\"sort\":3,\"width\":\"full\",\"translations\":null,\"note\":null,\"conditions\":null,\"required\":false,\"group\":null}', '{\"collection\":\"subscription\",\"field\":\"sort\",\"sort\":3,\"group\":null}', NULL),
(53, 55, 'directus_fields', '13', '{\"id\":13,\"collection\":\"subscription\",\"field\":\"member\",\"special\":null,\"interface\":\"select-dropdown-m2o\",\"options\":{\"template\":\"{{first_name}}{{last_name}}\"},\"display\":null,\"display_options\":null,\"readonly\":false,\"hidden\":false,\"sort\":4,\"width\":\"full\",\"translations\":[{\"language\":\"fr-FR\",\"translation\":\"Adhérent\"}],\"note\":null,\"conditions\":null,\"required\":false,\"group\":null}', '{\"collection\":\"subscription\",\"field\":\"member\",\"sort\":4,\"group\":null}', NULL),
(54, 56, 'directus_fields', '4', '{\"id\":4,\"collection\":\"subscription\",\"field\":\"user_created\",\"special\":[\"user-created\"],\"interface\":\"select-dropdown-m2o\",\"options\":{\"template\":\"{{avatar.$thumbnail}} {{first_name}} {{last_name}}\"},\"display\":\"user\",\"display_options\":null,\"readonly\":true,\"hidden\":true,\"sort\":5,\"width\":\"half\",\"translations\":null,\"note\":null,\"conditions\":null,\"required\":false,\"group\":null}', '{\"collection\":\"subscription\",\"field\":\"user_created\",\"sort\":5,\"group\":null}', NULL),
(55, 57, 'directus_fields', '5', '{\"id\":5,\"collection\":\"subscription\",\"field\":\"date_created\",\"special\":[\"date-created\"],\"interface\":\"datetime\",\"options\":null,\"display\":\"datetime\",\"display_options\":{\"relative\":true},\"readonly\":true,\"hidden\":true,\"sort\":6,\"width\":\"half\",\"translations\":null,\"note\":null,\"conditions\":null,\"required\":false,\"group\":null}', '{\"collection\":\"subscription\",\"field\":\"date_created\",\"sort\":6,\"group\":null}', NULL),
(56, 58, 'directus_fields', '6', '{\"id\":6,\"collection\":\"subscription\",\"field\":\"user_updated\",\"special\":[\"user-updated\"],\"interface\":\"select-dropdown-m2o\",\"options\":{\"template\":\"{{avatar.$thumbnail}} {{first_name}} {{last_name}}\"},\"display\":\"user\",\"display_options\":null,\"readonly\":true,\"hidden\":true,\"sort\":7,\"width\":\"half\",\"translations\":null,\"note\":null,\"conditions\":null,\"required\":false,\"group\":null}', '{\"collection\":\"subscription\",\"field\":\"user_updated\",\"sort\":7,\"group\":null}', NULL),
(57, 59, 'directus_fields', '7', '{\"id\":7,\"collection\":\"subscription\",\"field\":\"date_updated\",\"special\":[\"date-updated\"],\"interface\":\"datetime\",\"options\":null,\"display\":\"datetime\",\"display_options\":{\"relative\":true},\"readonly\":true,\"hidden\":true,\"sort\":8,\"width\":\"half\",\"translations\":null,\"note\":null,\"conditions\":null,\"required\":false,\"group\":null}', '{\"collection\":\"subscription\",\"field\":\"date_updated\",\"sort\":8,\"group\":null}', NULL),
(58, 60, 'directus_fields', '14', '{\"id\":14,\"collection\":\"subscription\",\"field\":\"subscription_date\",\"special\":\"\",\"interface\":\"datetime\",\"options\":null,\"display\":\"datetime\",\"display_options\":null,\"readonly\":false,\"hidden\":false,\"sort\":9,\"width\":\"half\",\"translations\":[{\"language\":\"fr-FR\",\"translation\":\"Date de l\'adhésion\"}],\"note\":null,\"conditions\":null,\"required\":false,\"group\":null}', '{\"collection\":\"subscription\",\"field\":\"subscription_date\",\"sort\":9,\"group\":null}', NULL),
(59, 61, 'directus_fields', '9', '{\"id\":9,\"collection\":\"subscription\",\"field\":\"duration\",\"special\":null,\"interface\":\"input\",\"options\":{\"min\":1},\"display\":\"raw\",\"display_options\":null,\"readonly\":false,\"hidden\":false,\"sort\":10,\"width\":\"half\",\"translations\":[{\"language\":\"fr-FR\",\"translation\":\"Durée de l\'adhésion\"}],\"note\":\"durée en année\",\"conditions\":null,\"required\":false,\"group\":null}', '{\"collection\":\"subscription\",\"field\":\"duration\",\"sort\":10,\"group\":null}', NULL),
(60, 62, 'directus_fields', '10', '{\"id\":10,\"collection\":\"subscription\",\"field\":\"fee_amount\",\"special\":null,\"interface\":\"input\",\"options\":{\"min\":0},\"display\":\"raw\",\"display_options\":null,\"readonly\":false,\"hidden\":false,\"sort\":11,\"width\":\"half\",\"translations\":[{\"language\":\"fr-FR\",\"translation\":\"Montant de la cotisation\"}],\"note\":null,\"conditions\":null,\"required\":false,\"group\":null}', '{\"collection\":\"subscription\",\"field\":\"fee_amount\",\"sort\":11,\"group\":null}', NULL),
(61, 63, 'directus_fields', '12', '{\"id\":12,\"collection\":\"subscription\",\"field\":\"fee_method\",\"special\":null,\"interface\":\"select-dropdown\",\"options\":{\"choices\":[{\"text\":\"Espèce\",\"value\":\"cash\"},{\"text\":\"Chèque\",\"value\":\"check\"},{\"text\":\"Virement\",\"value\":\"bank_transfer\"}]},\"display\":\"labels\",\"display_options\":{\"choices\":[{\"text\":\"cash\",\"value\":\"Espèce\",\"background\":\"#00C897\"},{\"text\":\"Chèque\",\"value\":\"check\",\"background\":\"#68B0F4\"},{\"text\":\"Virement\",\"value\":\"bank_transfer\",\"background\":\"#F7971C\"}]},\"readonly\":false,\"hidden\":false,\"sort\":12,\"width\":\"half\",\"translations\":[{\"language\":\"fr-FR\",\"translation\":\"Méthode de paiement de la cotisation\"}],\"note\":null,\"conditions\":null,\"required\":false,\"group\":null}', '{\"collection\":\"subscription\",\"field\":\"fee_method\",\"sort\":12,\"group\":null}', NULL),
(62, 64, 'directus_fields', '11', '{\"id\":11,\"collection\":\"subscription\",\"field\":\"fee_date\",\"special\":null,\"interface\":\"datetime\",\"options\":null,\"display\":\"datetime\",\"display_options\":null,\"readonly\":false,\"hidden\":false,\"sort\":13,\"width\":\"full\",\"translations\":[{\"language\":\"fr-FR\",\"translation\":\"Date du paiement de la cotisation\"}],\"note\":null,\"conditions\":null,\"required\":false,\"group\":null}', '{\"collection\":\"subscription\",\"field\":\"fee_date\",\"sort\":13,\"group\":null}', NULL),
(63, 65, 'directus_fields', '2', '{\"id\":2,\"collection\":\"subscription\",\"field\":\"status\",\"special\":null,\"interface\":\"select-dropdown\",\"options\":{\"choices\":[{\"text\":\"En cours\",\"value\":\"published\"},{\"text\":\"Annulé\",\"value\":\"draft\"},{\"text\":\"$t:archived\",\"value\":\"archived\"}]},\"display\":\"labels\",\"display_options\":{\"showAsDot\":true,\"choices\":[{\"background\":\"#00C897\",\"value\":\"published\",\"text\":\"En cours\"},{\"background\":\"#E35169\",\"value\":\"draft\",\"text\":\"Annulé\"},{\"background\":\"#F7971C\",\"value\":\"archived\",\"text\":\"Archivé\"}]},\"readonly\":false,\"hidden\":false,\"sort\":2,\"width\":\"full\",\"translations\":null,\"note\":null,\"conditions\":null,\"required\":false,\"group\":null}', '{\"collection\":\"subscription\",\"field\":\"status\",\"special\":null,\"interface\":\"select-dropdown\",\"options\":{\"choices\":[{\"text\":\"En cours\",\"value\":\"published\"},{\"text\":\"Annulé\",\"value\":\"draft\"},{\"text\":\"$t:archived\",\"value\":\"archived\"}]},\"display\":\"labels\",\"display_options\":{\"showAsDot\":true,\"choices\":[{\"background\":\"#00C897\",\"value\":\"published\",\"text\":\"En cours\"},{\"background\":\"#E35169\",\"value\":\"draft\",\"text\":\"Annulé\"},{\"background\":\"#F7971C\",\"value\":\"archived\",\"text\":\"Archivé\"}]},\"readonly\":false,\"hidden\":false,\"sort\":2,\"width\":\"full\",\"translations\":null,\"note\":null,\"conditions\":null,\"required\":false,\"group\":null}', NULL),
(64, 66, 'subscription', '1', '{\"status\":\"published\",\"member\":\"109171df-772a-4bf8-8f98-1fcbf802f710\",\"subscription_date\":\"2021-12-11\",\"duration\":1,\"fee_amount\":20,\"fee_method\":\"cash\",\"fee_date\":\"2021-12-11T18:04:00\"}', '{\"status\":\"published\",\"member\":\"109171df-772a-4bf8-8f98-1fcbf802f710\",\"subscription_date\":\"2021-12-11\",\"duration\":1,\"fee_amount\":20,\"fee_method\":\"cash\",\"fee_date\":\"2021-12-11T18:04:00\"}', NULL),
(65, 67, 'directus_fields', '13', '{\"id\":13,\"collection\":\"subscription\",\"field\":\"member\",\"special\":null,\"interface\":\"select-dropdown-m2o\",\"options\":{\"template\":\"{{first_name}}{{last_name}}\"},\"display\":\"related-values\",\"display_options\":{\"template\":\"{{first_name}} {{last_name}}\"},\"readonly\":false,\"hidden\":false,\"sort\":4,\"width\":\"full\",\"translations\":[{\"language\":\"fr-FR\",\"translation\":\"Adhérent\"}],\"note\":null,\"conditions\":null,\"required\":false,\"group\":null}', '{\"collection\":\"subscription\",\"field\":\"member\",\"special\":null,\"interface\":\"select-dropdown-m2o\",\"options\":{\"template\":\"{{first_name}}{{last_name}}\"},\"display\":\"related-values\",\"display_options\":{\"template\":\"{{first_name}} {{last_name}}\"},\"readonly\":false,\"hidden\":false,\"sort\":4,\"width\":\"full\",\"translations\":[{\"language\":\"fr-FR\",\"translation\":\"Adhérent\"}],\"note\":null,\"conditions\":null,\"required\":false,\"group\":null}', NULL),
(66, 68, 'directus_collections', 'subscription', '{\"collection\":\"subscription\",\"icon\":\"supervised_user_circle\",\"note\":null,\"display_template\":null,\"hidden\":false,\"singleton\":false,\"translations\":[{\"language\":\"fr-FR\",\"translation\":\"Adhésion\"}],\"archive_field\":\"status\",\"archive_app_filter\":true,\"archive_value\":\"archived\",\"unarchive_value\":\"draft\",\"sort_field\":\"sort\",\"accountability\":\"all\",\"color\":\"#F7971C\",\"item_duplication_fields\":null,\"sort\":null,\"group\":null,\"collapse\":\"open\"}', '{\"translations\":[{\"language\":\"fr-FR\",\"translation\":\"Adhésion\"}]}', NULL),
(67, 69, 'directus_collections', 'producer', '{\"archive_field\":\"status\",\"archive_value\":\"archived\",\"unarchive_value\":\"draft\",\"singleton\":false,\"collection\":\"producer\"}', '{\"archive_field\":\"status\",\"archive_value\":\"archived\",\"unarchive_value\":\"draft\",\"singleton\":false,\"collection\":\"producer\"}', NULL),
(68, 70, 'directus_fields', '15', '{\"hidden\":true,\"interface\":\"input\",\"readonly\":true,\"field\":\"id\",\"collection\":\"producer\"}', '{\"hidden\":true,\"interface\":\"input\",\"readonly\":true,\"field\":\"id\",\"collection\":\"producer\"}', NULL),
(69, 71, 'directus_fields', '16', '{\"width\":\"full\",\"options\":{\"choices\":[{\"text\":\"$t:published\",\"value\":\"published\"},{\"text\":\"$t:draft\",\"value\":\"draft\"},{\"text\":\"$t:archived\",\"value\":\"archived\"}]},\"interface\":\"select-dropdown\",\"display\":\"labels\",\"display_options\":{\"showAsDot\":true,\"choices\":[{\"background\":\"#00C897\",\"value\":\"published\"},{\"background\":\"#D3DAE4\",\"value\":\"draft\"},{\"background\":\"#F7971C\",\"value\":\"archived\"}]},\"field\":\"status\",\"collection\":\"producer\"}', '{\"width\":\"full\",\"options\":{\"choices\":[{\"text\":\"$t:published\",\"value\":\"published\"},{\"text\":\"$t:draft\",\"value\":\"draft\"},{\"text\":\"$t:archived\",\"value\":\"archived\"}]},\"interface\":\"select-dropdown\",\"display\":\"labels\",\"display_options\":{\"showAsDot\":true,\"choices\":[{\"background\":\"#00C897\",\"value\":\"published\"},{\"background\":\"#D3DAE4\",\"value\":\"draft\"},{\"background\":\"#F7971C\",\"value\":\"archived\"}]},\"field\":\"status\",\"collection\":\"producer\"}', NULL),
(70, 72, 'directus_fields', '17', '{\"special\":\"date-created\",\"interface\":\"datetime\",\"readonly\":true,\"hidden\":true,\"width\":\"half\",\"display\":\"datetime\",\"display_options\":{\"relative\":true},\"field\":\"date_created\",\"collection\":\"producer\"}', '{\"special\":\"date-created\",\"interface\":\"datetime\",\"readonly\":true,\"hidden\":true,\"width\":\"half\",\"display\":\"datetime\",\"display_options\":{\"relative\":true},\"field\":\"date_created\",\"collection\":\"producer\"}', NULL),
(71, 73, 'directus_fields', '18', '{\"special\":\"date-updated\",\"interface\":\"datetime\",\"readonly\":true,\"hidden\":true,\"width\":\"half\",\"display\":\"datetime\",\"display_options\":{\"relative\":true},\"field\":\"date_updated\",\"collection\":\"producer\"}', '{\"special\":\"date-updated\",\"interface\":\"datetime\",\"readonly\":true,\"hidden\":true,\"width\":\"half\",\"display\":\"datetime\",\"display_options\":{\"relative\":true},\"field\":\"date_updated\",\"collection\":\"producer\"}', NULL),
(72, 74, 'directus_collections', 'producer', '{\"collection\":\"producer\",\"icon\":\"store_mall_directory\",\"note\":null,\"display_template\":null,\"hidden\":false,\"singleton\":false,\"translations\":null,\"archive_field\":\"status\",\"archive_app_filter\":true,\"archive_value\":\"archived\",\"unarchive_value\":\"draft\",\"sort_field\":null,\"accountability\":\"all\",\"color\":\"#00C897\",\"item_duplication_fields\":null,\"sort\":null,\"group\":null,\"collapse\":\"open\"}', '{\"icon\":\"store_mall_directory\",\"color\":\"#00C897\"}', NULL),
(73, 75, 'directus_collections', 'producer', '{\"collection\":\"producer\",\"icon\":\"store_mall_directory\",\"note\":null,\"display_template\":null,\"hidden\":false,\"singleton\":false,\"translations\":[{\"language\":\"fr-FR\",\"translation\":\"Producteur\"}],\"archive_field\":\"status\",\"archive_app_filter\":true,\"archive_value\":\"archived\",\"unarchive_value\":\"draft\",\"sort_field\":null,\"accountability\":\"all\",\"color\":\"#00C897\",\"item_duplication_fields\":null,\"sort\":null,\"group\":null,\"collapse\":\"open\"}', '{\"translations\":[{\"language\":\"fr-FR\",\"translation\":\"Producteur\"}]}', NULL),
(74, 76, 'directus_fields', '19', '{\"hidden\":false,\"interface\":\"select-dropdown\",\"options\":{\"choices\":[{\"text\":\"Auto entreprise\",\"value\":\"auto\"},{\"text\":\"SAS\",\"value\":\"sas\"},{\"text\":\"EIRL\",\"value\":\"eirl\"}]},\"display\":\"raw\",\"readonly\":false,\"translations\":[{\"language\":\"fr-FR\",\"translation\":\"Status Juridique\"}],\"collection\":\"producer\",\"field\":\"legal_status\"}', '{\"hidden\":false,\"interface\":\"select-dropdown\",\"options\":{\"choices\":[{\"text\":\"Auto entreprise\",\"value\":\"auto\"},{\"text\":\"SAS\",\"value\":\"sas\"},{\"text\":\"EIRL\",\"value\":\"eirl\"}]},\"display\":\"raw\",\"readonly\":false,\"translations\":[{\"language\":\"fr-FR\",\"translation\":\"Status Juridique\"}],\"collection\":\"producer\",\"field\":\"legal_status\"}', NULL),
(75, 77, 'directus_fields', '20', '{\"hidden\":false,\"interface\":\"input\",\"display\":\"raw\",\"readonly\":false,\"translations\":[{\"language\":\"fr-FR\",\"translation\":\"Nom de l\'entreprise\"}],\"collection\":\"producer\",\"field\":\"name\"}', '{\"hidden\":false,\"interface\":\"input\",\"display\":\"raw\",\"readonly\":false,\"translations\":[{\"language\":\"fr-FR\",\"translation\":\"Nom de l\'entreprise\"}],\"collection\":\"producer\",\"field\":\"name\"}', NULL),
(76, 78, 'directus_fields', '21', '{\"hidden\":false,\"interface\":\"datetime\",\"options\":null,\"display\":\"datetime\",\"display_options\":null,\"readonly\":false,\"special\":null,\"translations\":[{\"language\":\"fr-FR\",\"translation\":\"Date de l\'inscription\"}],\"collection\":\"producer\",\"field\":\"date\"}', '{\"hidden\":false,\"interface\":\"datetime\",\"options\":null,\"display\":\"datetime\",\"display_options\":null,\"readonly\":false,\"special\":null,\"translations\":[{\"language\":\"fr-FR\",\"translation\":\"Date de l\'inscription\"}],\"collection\":\"producer\",\"field\":\"date\"}', NULL),
(77, 79, 'directus_fields', '22', '{\"hidden\":false,\"interface\":\"file-image\",\"display\":\"image\",\"readonly\":false,\"translations\":[{\"language\":\"fr-FR\",\"translation\":\"Logo de l\'entreprise\"}],\"collection\":\"producer\",\"field\":\"image\"}', '{\"hidden\":false,\"interface\":\"file-image\",\"display\":\"image\",\"readonly\":false,\"translations\":[{\"language\":\"fr-FR\",\"translation\":\"Logo de l\'entreprise\"}],\"collection\":\"producer\",\"field\":\"image\"}', NULL),
(78, 80, 'directus_fields', '19', '{\"id\":19,\"collection\":\"producer\",\"field\":\"legal_status\",\"special\":null,\"interface\":\"select-dropdown\",\"options\":{\"choices\":[{\"text\":\"Auto entreprise\",\"value\":\"auto\"},{\"text\":\"SAS\",\"value\":\"sas\"},{\"text\":\"EIRL\",\"value\":\"eirl\"}]},\"display\":\"raw\",\"display_options\":null,\"readonly\":false,\"hidden\":false,\"sort\":null,\"width\":\"half\",\"translations\":[{\"language\":\"fr-FR\",\"translation\":\"Status Juridique\"}],\"note\":null,\"conditions\":null,\"required\":false,\"group\":null}', '{\"collection\":\"producer\",\"field\":\"legal_status\",\"width\":\"half\"}', NULL),
(79, 81, 'directus_fields', '20', '{\"id\":20,\"collection\":\"producer\",\"field\":\"name\",\"special\":null,\"interface\":\"input\",\"options\":null,\"display\":\"raw\",\"display_options\":null,\"readonly\":false,\"hidden\":false,\"sort\":null,\"width\":\"half\",\"translations\":[{\"language\":\"fr-FR\",\"translation\":\"Nom de l\'entreprise\"}],\"note\":null,\"conditions\":null,\"required\":false,\"group\":null}', '{\"collection\":\"producer\",\"field\":\"name\",\"width\":\"half\"}', NULL),
(80, 82, 'directus_fields', '23', '{\"hidden\":false,\"interface\":\"input\",\"display\":\"raw\",\"readonly\":false,\"translations\":[{\"language\":\"fr-FR\",\"translation\":\"Adresse (rue)\"}],\"collection\":\"producer\",\"field\":\"street\"}', '{\"hidden\":false,\"interface\":\"input\",\"display\":\"raw\",\"readonly\":false,\"translations\":[{\"language\":\"fr-FR\",\"translation\":\"Adresse (rue)\"}],\"collection\":\"producer\",\"field\":\"street\"}', NULL),
(81, 83, 'directus_fields', '24', '{\"hidden\":false,\"interface\":\"input\",\"display\":\"raw\",\"readonly\":false,\"translations\":[{\"language\":\"fr-FR\",\"translation\":\"Adresse (ville)\"}],\"collection\":\"producer\",\"field\":\"city\"}', '{\"hidden\":false,\"interface\":\"input\",\"display\":\"raw\",\"readonly\":false,\"translations\":[{\"language\":\"fr-FR\",\"translation\":\"Adresse (ville)\"}],\"collection\":\"producer\",\"field\":\"city\"}', NULL),
(82, 84, 'directus_fields', '23', '{\"id\":23,\"collection\":\"producer\",\"field\":\"street\",\"special\":null,\"interface\":\"input\",\"options\":null,\"display\":\"raw\",\"display_options\":null,\"readonly\":false,\"hidden\":false,\"sort\":null,\"width\":\"half\",\"translations\":[{\"language\":\"fr-FR\",\"translation\":\"Adresse (rue)\"}],\"note\":null,\"conditions\":null,\"required\":false,\"group\":null}', '{\"collection\":\"producer\",\"field\":\"street\",\"width\":\"half\"}', NULL),
(83, 85, 'directus_fields', '24', '{\"id\":24,\"collection\":\"producer\",\"field\":\"city\",\"special\":null,\"interface\":\"input\",\"options\":null,\"display\":\"raw\",\"display_options\":null,\"readonly\":false,\"hidden\":false,\"sort\":null,\"width\":\"half\",\"translations\":[{\"language\":\"fr-FR\",\"translation\":\"Adresse (ville)\"}],\"note\":null,\"conditions\":null,\"required\":false,\"group\":null}', '{\"collection\":\"producer\",\"field\":\"city\",\"width\":\"half\"}', NULL);
INSERT INTO `directus_revisions` (`id`, `activity`, `collection`, `item`, `data`, `delta`, `parent`) VALUES
(84, 86, 'directus_fields', '15', '{\"id\":15,\"collection\":\"producer\",\"field\":\"id\",\"special\":null,\"interface\":\"input\",\"options\":null,\"display\":null,\"display_options\":null,\"readonly\":true,\"hidden\":true,\"sort\":1,\"width\":\"full\",\"translations\":null,\"note\":null,\"conditions\":null,\"required\":false,\"group\":null}', '{\"collection\":\"producer\",\"field\":\"id\",\"sort\":1,\"group\":null}', NULL),
(85, 87, 'directus_fields', '16', '{\"id\":16,\"collection\":\"producer\",\"field\":\"status\",\"special\":null,\"interface\":\"select-dropdown\",\"options\":{\"choices\":[{\"text\":\"$t:published\",\"value\":\"published\"},{\"text\":\"$t:draft\",\"value\":\"draft\"},{\"text\":\"$t:archived\",\"value\":\"archived\"}]},\"display\":\"labels\",\"display_options\":{\"showAsDot\":true,\"choices\":[{\"background\":\"#00C897\",\"value\":\"published\"},{\"background\":\"#D3DAE4\",\"value\":\"draft\"},{\"background\":\"#F7971C\",\"value\":\"archived\"}]},\"readonly\":false,\"hidden\":false,\"sort\":2,\"width\":\"full\",\"translations\":null,\"note\":null,\"conditions\":null,\"required\":false,\"group\":null}', '{\"collection\":\"producer\",\"field\":\"status\",\"sort\":2,\"group\":null}', NULL),
(86, 88, 'directus_fields', '17', '{\"id\":17,\"collection\":\"producer\",\"field\":\"date_created\",\"special\":[\"date-created\"],\"interface\":\"datetime\",\"options\":null,\"display\":\"datetime\",\"display_options\":{\"relative\":true},\"readonly\":true,\"hidden\":true,\"sort\":3,\"width\":\"half\",\"translations\":null,\"note\":null,\"conditions\":null,\"required\":false,\"group\":null}', '{\"collection\":\"producer\",\"field\":\"date_created\",\"sort\":3,\"group\":null}', NULL),
(87, 89, 'directus_fields', '18', '{\"id\":18,\"collection\":\"producer\",\"field\":\"date_updated\",\"special\":[\"date-updated\"],\"interface\":\"datetime\",\"options\":null,\"display\":\"datetime\",\"display_options\":{\"relative\":true},\"readonly\":true,\"hidden\":true,\"sort\":4,\"width\":\"half\",\"translations\":null,\"note\":null,\"conditions\":null,\"required\":false,\"group\":null}', '{\"collection\":\"producer\",\"field\":\"date_updated\",\"sort\":4,\"group\":null}', NULL),
(88, 90, 'directus_fields', '19', '{\"id\":19,\"collection\":\"producer\",\"field\":\"legal_status\",\"special\":null,\"interface\":\"select-dropdown\",\"options\":{\"choices\":[{\"text\":\"Auto entreprise\",\"value\":\"auto\"},{\"text\":\"SAS\",\"value\":\"sas\"},{\"text\":\"EIRL\",\"value\":\"eirl\"}]},\"display\":\"raw\",\"display_options\":null,\"readonly\":false,\"hidden\":false,\"sort\":5,\"width\":\"half\",\"translations\":[{\"language\":\"fr-FR\",\"translation\":\"Status Juridique\"}],\"note\":null,\"conditions\":null,\"required\":false,\"group\":null}', '{\"collection\":\"producer\",\"field\":\"legal_status\",\"sort\":5,\"group\":null}', NULL),
(89, 91, 'directus_fields', '20', '{\"id\":20,\"collection\":\"producer\",\"field\":\"name\",\"special\":null,\"interface\":\"input\",\"options\":null,\"display\":\"raw\",\"display_options\":null,\"readonly\":false,\"hidden\":false,\"sort\":6,\"width\":\"half\",\"translations\":[{\"language\":\"fr-FR\",\"translation\":\"Nom de l\'entreprise\"}],\"note\":null,\"conditions\":null,\"required\":false,\"group\":null}', '{\"collection\":\"producer\",\"field\":\"name\",\"sort\":6,\"group\":null}', NULL),
(90, 92, 'directus_fields', '21', '{\"id\":21,\"collection\":\"producer\",\"field\":\"date\",\"special\":null,\"interface\":\"datetime\",\"options\":null,\"display\":\"datetime\",\"display_options\":null,\"readonly\":false,\"hidden\":false,\"sort\":7,\"width\":\"full\",\"translations\":[{\"language\":\"fr-FR\",\"translation\":\"Date de l\'inscription\"}],\"note\":null,\"conditions\":null,\"required\":false,\"group\":null}', '{\"collection\":\"producer\",\"field\":\"date\",\"sort\":7,\"group\":null}', NULL),
(91, 93, 'directus_fields', '23', '{\"id\":23,\"collection\":\"producer\",\"field\":\"street\",\"special\":null,\"interface\":\"input\",\"options\":null,\"display\":\"raw\",\"display_options\":null,\"readonly\":false,\"hidden\":false,\"sort\":8,\"width\":\"half\",\"translations\":[{\"language\":\"fr-FR\",\"translation\":\"Adresse (rue)\"}],\"note\":null,\"conditions\":null,\"required\":false,\"group\":null}', '{\"collection\":\"producer\",\"field\":\"street\",\"sort\":8,\"group\":null}', NULL),
(92, 94, 'directus_fields', '24', '{\"id\":24,\"collection\":\"producer\",\"field\":\"city\",\"special\":null,\"interface\":\"input\",\"options\":null,\"display\":\"raw\",\"display_options\":null,\"readonly\":false,\"hidden\":false,\"sort\":9,\"width\":\"half\",\"translations\":[{\"language\":\"fr-FR\",\"translation\":\"Adresse (ville)\"}],\"note\":null,\"conditions\":null,\"required\":false,\"group\":null}', '{\"collection\":\"producer\",\"field\":\"city\",\"sort\":9,\"group\":null}', NULL),
(93, 95, 'directus_fields', '22', '{\"id\":22,\"collection\":\"producer\",\"field\":\"image\",\"special\":null,\"interface\":\"file-image\",\"options\":null,\"display\":\"image\",\"display_options\":null,\"readonly\":false,\"hidden\":false,\"sort\":10,\"width\":\"full\",\"translations\":[{\"language\":\"fr-FR\",\"translation\":\"Logo de l\'entreprise\"}],\"note\":null,\"conditions\":null,\"required\":false,\"group\":null}', '{\"collection\":\"producer\",\"field\":\"image\",\"sort\":10,\"group\":null}', NULL),
(94, 96, 'directus_collections', 'category', '{\"archive_field\":\"status\",\"archive_value\":\"archived\",\"unarchive_value\":\"draft\",\"singleton\":false,\"collection\":\"category\"}', '{\"archive_field\":\"status\",\"archive_value\":\"archived\",\"unarchive_value\":\"draft\",\"singleton\":false,\"collection\":\"category\"}', NULL),
(95, 97, 'directus_fields', '25', '{\"hidden\":true,\"interface\":\"input\",\"readonly\":true,\"field\":\"id\",\"collection\":\"category\"}', '{\"hidden\":true,\"interface\":\"input\",\"readonly\":true,\"field\":\"id\",\"collection\":\"category\"}', NULL),
(96, 98, 'directus_fields', '26', '{\"width\":\"full\",\"options\":{\"choices\":[{\"text\":\"$t:published\",\"value\":\"published\"},{\"text\":\"$t:draft\",\"value\":\"draft\"},{\"text\":\"$t:archived\",\"value\":\"archived\"}]},\"interface\":\"select-dropdown\",\"display\":\"labels\",\"display_options\":{\"showAsDot\":true,\"choices\":[{\"background\":\"#00C897\",\"value\":\"published\"},{\"background\":\"#D3DAE4\",\"value\":\"draft\"},{\"background\":\"#F7971C\",\"value\":\"archived\"}]},\"field\":\"status\",\"collection\":\"category\"}', '{\"width\":\"full\",\"options\":{\"choices\":[{\"text\":\"$t:published\",\"value\":\"published\"},{\"text\":\"$t:draft\",\"value\":\"draft\"},{\"text\":\"$t:archived\",\"value\":\"archived\"}]},\"interface\":\"select-dropdown\",\"display\":\"labels\",\"display_options\":{\"showAsDot\":true,\"choices\":[{\"background\":\"#00C897\",\"value\":\"published\"},{\"background\":\"#D3DAE4\",\"value\":\"draft\"},{\"background\":\"#F7971C\",\"value\":\"archived\"}]},\"field\":\"status\",\"collection\":\"category\"}', NULL),
(97, 99, 'directus_fields', '27', '{\"special\":\"date-created\",\"interface\":\"datetime\",\"readonly\":true,\"hidden\":true,\"width\":\"half\",\"display\":\"datetime\",\"display_options\":{\"relative\":true},\"field\":\"date_created\",\"collection\":\"category\"}', '{\"special\":\"date-created\",\"interface\":\"datetime\",\"readonly\":true,\"hidden\":true,\"width\":\"half\",\"display\":\"datetime\",\"display_options\":{\"relative\":true},\"field\":\"date_created\",\"collection\":\"category\"}', NULL),
(98, 100, 'directus_fields', '28', '{\"special\":\"date-updated\",\"interface\":\"datetime\",\"readonly\":true,\"hidden\":true,\"width\":\"half\",\"display\":\"datetime\",\"display_options\":{\"relative\":true},\"field\":\"date_updated\",\"collection\":\"category\"}', '{\"special\":\"date-updated\",\"interface\":\"datetime\",\"readonly\":true,\"hidden\":true,\"width\":\"half\",\"display\":\"datetime\",\"display_options\":{\"relative\":true},\"field\":\"date_updated\",\"collection\":\"category\"}', NULL),
(99, 101, 'directus_fields', '29', '{\"hidden\":false,\"interface\":\"input\",\"display\":\"raw\",\"readonly\":false,\"translations\":[{\"language\":\"fr-FR\",\"translation\":\"Nom\"}],\"collection\":\"category\",\"field\":\"name\"}', '{\"hidden\":false,\"interface\":\"input\",\"display\":\"raw\",\"readonly\":false,\"translations\":[{\"language\":\"fr-FR\",\"translation\":\"Nom\"}],\"collection\":\"category\",\"field\":\"name\"}', NULL),
(100, 102, 'directus_collections', 'category', '{\"collection\":\"category\",\"icon\":\"dns\",\"note\":null,\"display_template\":null,\"hidden\":false,\"singleton\":false,\"translations\":null,\"archive_field\":\"status\",\"archive_app_filter\":true,\"archive_value\":\"archived\",\"unarchive_value\":\"draft\",\"sort_field\":null,\"accountability\":\"all\",\"color\":\"#9E8DE4\",\"item_duplication_fields\":null,\"sort\":null,\"group\":null,\"collapse\":\"open\"}', '{\"icon\":\"dns\",\"color\":\"#9E8DE4\"}', NULL),
(101, 103, 'category', '1', '{\"name\":\"Fruits et Légumes\"}', '{\"name\":\"Fruits et Légumes\"}', NULL),
(102, 104, 'category', '2', '{\"name\":\"Viandes et charcuterres\"}', '{\"name\":\"Viandes et charcuterres\"}', NULL),
(103, 105, 'category', '3', '{\"name\":\"Produit de la mer\"}', '{\"name\":\"Produit de la mer\"}', NULL),
(104, 106, 'category', '4', '{\"name\":\"Crèmerie\"}', '{\"name\":\"Crèmerie\"}', NULL),
(105, 107, 'category', '5', '{\"name\":\"Boulangerie et pâtisserie\"}', '{\"name\":\"Boulangerie et pâtisserie\"}', NULL),
(106, 108, 'category', '6', '{\"name\":\"Épicerie\"}', '{\"name\":\"Épicerie\"}', NULL),
(107, 109, 'category', '7', '{\"name\":\"Boissons\"}', '{\"name\":\"Boissons\"}', NULL),
(108, 110, 'category', '8', '{\"name\":\"Hygiène et bien-être\"}', '{\"name\":\"Hygiène et bien-être\"}', NULL),
(109, 111, 'category', '9', '{\"name\":\"Plants\"}', '{\"name\":\"Plants\"}', NULL),
(110, 112, 'category', '10', '{\"name\":\"Autres\"}', '{\"name\":\"Autres\"}', NULL),
(111, 113, 'directus_collections', 'products', '{\"sort_field\":\"sort\",\"archive_field\":\"status\",\"archive_value\":\"archived\",\"unarchive_value\":\"draft\",\"singleton\":false,\"collection\":\"products\"}', '{\"sort_field\":\"sort\",\"archive_field\":\"status\",\"archive_value\":\"archived\",\"unarchive_value\":\"draft\",\"singleton\":false,\"collection\":\"products\"}', NULL),
(112, 114, 'directus_fields', '30', '{\"hidden\":true,\"interface\":\"input\",\"readonly\":true,\"field\":\"id\",\"collection\":\"products\"}', '{\"hidden\":true,\"interface\":\"input\",\"readonly\":true,\"field\":\"id\",\"collection\":\"products\"}', NULL),
(113, 115, 'directus_fields', '31', '{\"width\":\"full\",\"options\":{\"choices\":[{\"text\":\"$t:published\",\"value\":\"published\"},{\"text\":\"$t:draft\",\"value\":\"draft\"},{\"text\":\"$t:archived\",\"value\":\"archived\"}]},\"interface\":\"select-dropdown\",\"display\":\"labels\",\"display_options\":{\"showAsDot\":true,\"choices\":[{\"background\":\"#00C897\",\"value\":\"published\"},{\"background\":\"#D3DAE4\",\"value\":\"draft\"},{\"background\":\"#F7971C\",\"value\":\"archived\"}]},\"field\":\"status\",\"collection\":\"products\"}', '{\"width\":\"full\",\"options\":{\"choices\":[{\"text\":\"$t:published\",\"value\":\"published\"},{\"text\":\"$t:draft\",\"value\":\"draft\"},{\"text\":\"$t:archived\",\"value\":\"archived\"}]},\"interface\":\"select-dropdown\",\"display\":\"labels\",\"display_options\":{\"showAsDot\":true,\"choices\":[{\"background\":\"#00C897\",\"value\":\"published\"},{\"background\":\"#D3DAE4\",\"value\":\"draft\"},{\"background\":\"#F7971C\",\"value\":\"archived\"}]},\"field\":\"status\",\"collection\":\"products\"}', NULL),
(114, 116, 'directus_fields', '32', '{\"interface\":\"input\",\"hidden\":true,\"field\":\"sort\",\"collection\":\"products\"}', '{\"interface\":\"input\",\"hidden\":true,\"field\":\"sort\",\"collection\":\"products\"}', NULL),
(115, 117, 'directus_fields', '33', '{\"special\":\"date-created\",\"interface\":\"datetime\",\"readonly\":true,\"hidden\":true,\"width\":\"half\",\"display\":\"datetime\",\"display_options\":{\"relative\":true},\"field\":\"date_created\",\"collection\":\"products\"}', '{\"special\":\"date-created\",\"interface\":\"datetime\",\"readonly\":true,\"hidden\":true,\"width\":\"half\",\"display\":\"datetime\",\"display_options\":{\"relative\":true},\"field\":\"date_created\",\"collection\":\"products\"}', NULL),
(116, 118, 'directus_fields', '34', '{\"special\":\"date-updated\",\"interface\":\"datetime\",\"readonly\":true,\"hidden\":true,\"width\":\"half\",\"display\":\"datetime\",\"display_options\":{\"relative\":true},\"field\":\"date_updated\",\"collection\":\"products\"}', '{\"special\":\"date-updated\",\"interface\":\"datetime\",\"readonly\":true,\"hidden\":true,\"width\":\"half\",\"display\":\"datetime\",\"display_options\":{\"relative\":true},\"field\":\"date_updated\",\"collection\":\"products\"}', NULL),
(117, 119, 'directus_collections', 'products', '{\"collection\":\"products\",\"icon\":\"spa\",\"note\":null,\"display_template\":null,\"hidden\":false,\"singleton\":false,\"translations\":null,\"archive_field\":\"status\",\"archive_app_filter\":true,\"archive_value\":\"archived\",\"unarchive_value\":\"draft\",\"sort_field\":\"sort\",\"accountability\":\"all\",\"color\":\"#F2C94C\",\"item_duplication_fields\":null,\"sort\":null,\"group\":null,\"collapse\":\"open\"}', '{\"icon\":\"spa\",\"color\":\"#F2C94C\"}', NULL),
(118, 120, 'directus_fields', '35', '{\"hidden\":false,\"interface\":\"file-image\",\"display\":\"image\",\"readonly\":false,\"translations\":null,\"collection\":\"products\",\"field\":\"image\"}', '{\"hidden\":false,\"interface\":\"file-image\",\"display\":\"image\",\"readonly\":false,\"translations\":null,\"collection\":\"products\",\"field\":\"image\"}', NULL),
(119, 121, 'directus_fields', '36', '{\"hidden\":false,\"interface\":\"input\",\"options\":{\"min\":0},\"display\":\"raw\",\"display_options\":null,\"readonly\":false,\"special\":null,\"translations\":[{\"language\":\"fr-FR\",\"translation\":\"Prix\"}],\"collection\":\"products\",\"field\":\"price\"}', '{\"hidden\":false,\"interface\":\"input\",\"options\":{\"min\":0},\"display\":\"raw\",\"display_options\":null,\"readonly\":false,\"special\":null,\"translations\":[{\"language\":\"fr-FR\",\"translation\":\"Prix\"}],\"collection\":\"products\",\"field\":\"price\"}', NULL),
(120, 122, 'directus_fields', '37', '{\"hidden\":false,\"interface\":\"select-dropdown\",\"options\":{\"choices\":[{\"text\":\"Pièce\",\"value\":\"pieces\"},{\"text\":\"Kilogramme(s)\",\"value\":\"kilogram\"},{\"text\":\"Gramme(s)\",\"value\":\"gram\"},{\"text\":\"Litre(s)\",\"value\":\"liter\"},{\"text\":\"Centilitre(s)\",\"value\":\"centiliter\"},{\"text\":\"Mililitre(s)\",\"value\":\"milliliter\"}]},\"display\":\"labels\",\"display_options\":{\"choices\":null},\"readonly\":false,\"translations\":[{\"language\":\"fr-FR\",\"translation\":\"Unité de base\"}],\"collection\":\"products\",\"field\":\"unit\"}', '{\"hidden\":false,\"interface\":\"select-dropdown\",\"options\":{\"choices\":[{\"text\":\"Pièce\",\"value\":\"pieces\"},{\"text\":\"Kilogramme(s)\",\"value\":\"kilogram\"},{\"text\":\"Gramme(s)\",\"value\":\"gram\"},{\"text\":\"Litre(s)\",\"value\":\"liter\"},{\"text\":\"Centilitre(s)\",\"value\":\"centiliter\"},{\"text\":\"Mililitre(s)\",\"value\":\"milliliter\"}]},\"display\":\"labels\",\"display_options\":{\"choices\":null},\"readonly\":false,\"translations\":[{\"language\":\"fr-FR\",\"translation\":\"Unité de base\"}],\"collection\":\"products\",\"field\":\"unit\"}', NULL),
(121, 123, 'directus_collections', 'category', '{\"collection\":\"category\",\"icon\":\"dns\",\"note\":null,\"display_template\":null,\"hidden\":false,\"singleton\":false,\"translations\":[{\"language\":\"fr-FR\",\"translation\":\"Catégorie\"}],\"archive_field\":null,\"archive_app_filter\":true,\"archive_value\":\"archived\",\"unarchive_value\":\"draft\",\"sort_field\":null,\"accountability\":\"all\",\"color\":\"#9E8DE4\",\"item_duplication_fields\":null,\"sort\":null,\"group\":null,\"collapse\":\"open\"}', '{\"translations\":[{\"language\":\"fr-FR\",\"translation\":\"Catégorie\"}]}', NULL),
(122, 124, 'directus_collections', 'products', '{\"collection\":\"products\",\"icon\":\"spa\",\"note\":null,\"display_template\":null,\"hidden\":false,\"singleton\":false,\"translations\":[{\"language\":\"fr-FR\",\"translation\":\"Produit\"}],\"archive_field\":\"status\",\"archive_app_filter\":true,\"archive_value\":\"archived\",\"unarchive_value\":\"draft\",\"sort_field\":\"sort\",\"accountability\":\"all\",\"color\":\"#F2C94C\",\"item_duplication_fields\":null,\"sort\":null,\"group\":null,\"collapse\":\"open\"}', '{\"translations\":[{\"language\":\"fr-FR\",\"translation\":\"Produit\"}]}', NULL),
(123, 125, 'directus_fields', '37', '{\"id\":37,\"collection\":\"products\",\"field\":\"unit\",\"special\":null,\"interface\":\"select-dropdown\",\"options\":{\"choices\":[{\"text\":\"Pièce\",\"value\":\"pieces\"},{\"text\":\"Kilogramme(s)\",\"value\":\"kilogram\"},{\"text\":\"Gramme(s)\",\"value\":\"gram\"},{\"text\":\"Litre(s)\",\"value\":\"liter\"},{\"text\":\"Centilitre(s)\",\"value\":\"centiliter\"},{\"text\":\"Mililitre(s)\",\"value\":\"milliliter\"}]},\"display\":\"labels\",\"display_options\":{\"choices\":[{\"text\":\"Pièce\",\"value\":\"pieces\",\"foreground\":\"#FFFFFF\",\"background\":\"#607D8B\"},{\"text\":\"Kilogramme(s)\",\"value\":\"kilogram\",\"foreground\":\"#FFFFFF\",\"background\":\"#F7971C\"},{\"text\":\"Gramme(s)\",\"value\":\"gram\",\"foreground\":\"#FFFFFF\",\"background\":\"#F2C94C\"},{\"text\":\"Litre(s)\",\"value\":\"liter\",\"foreground\":\"#FFFFFF\",\"background\":\"#00C897\"},{\"text\":\"Centilitre(s)\",\"value\":\"centiliter\",\"foreground\":\"#FFFFFF\",\"background\":\"#68B0F4\"},{\"text\":\"Mililitre(s)\",\"value\":\"milliliter\",\"foreground\":\"#FFFFFF\",\"background\":\"#9E8DE4\"}]},\"readonly\":false,\"hidden\":false,\"sort\":null,\"width\":\"full\",\"translations\":[{\"language\":\"fr-FR\",\"translation\":\"Unité de base\"}],\"note\":null,\"conditions\":null,\"required\":false,\"group\":null}', '{\"collection\":\"products\",\"field\":\"unit\",\"special\":null,\"interface\":\"select-dropdown\",\"options\":{\"choices\":[{\"text\":\"Pièce\",\"value\":\"pieces\"},{\"text\":\"Kilogramme(s)\",\"value\":\"kilogram\"},{\"text\":\"Gramme(s)\",\"value\":\"gram\"},{\"text\":\"Litre(s)\",\"value\":\"liter\"},{\"text\":\"Centilitre(s)\",\"value\":\"centiliter\"},{\"text\":\"Mililitre(s)\",\"value\":\"milliliter\"}]},\"display\":\"labels\",\"display_options\":{\"choices\":[{\"text\":\"Pièce\",\"value\":\"pieces\",\"foreground\":\"#FFFFFF\",\"background\":\"#607D8B\"},{\"text\":\"Kilogramme(s)\",\"value\":\"kilogram\",\"foreground\":\"#FFFFFF\",\"background\":\"#F7971C\"},{\"text\":\"Gramme(s)\",\"value\":\"gram\",\"foreground\":\"#FFFFFF\",\"background\":\"#F2C94C\"},{\"text\":\"Litre(s)\",\"value\":\"liter\",\"foreground\":\"#FFFFFF\",\"background\":\"#00C897\"},{\"text\":\"Centilitre(s)\",\"value\":\"centiliter\",\"foreground\":\"#FFFFFF\",\"background\":\"#68B0F4\"},{\"text\":\"Mililitre(s)\",\"value\":\"milliliter\",\"foreground\":\"#FFFFFF\",\"background\":\"#9E8DE4\"}]},\"readonly\":false,\"hidden\":false,\"sort\":null,\"width\":\"full\",\"translations\":[{\"language\":\"fr-FR\",\"translation\":\"Unité de base\"}],\"note\":null,\"conditions\":null,\"required\":false,\"group\":null}', NULL),
(124, 126, 'directus_fields', '38', '{\"hidden\":false,\"interface\":\"input\",\"options\":{\"min\":0},\"display\":\"raw\",\"display_options\":null,\"readonly\":false,\"special\":null,\"collection\":\"products\",\"field\":\"stock\"}', '{\"hidden\":false,\"interface\":\"input\",\"options\":{\"min\":0},\"display\":\"raw\",\"display_options\":null,\"readonly\":false,\"special\":null,\"collection\":\"products\",\"field\":\"stock\"}', NULL),
(125, 127, 'directus_fields', '37', '{\"id\":37,\"collection\":\"products\",\"field\":\"unit\",\"special\":null,\"interface\":\"select-dropdown\",\"options\":{\"choices\":[{\"text\":\"Pièce\",\"value\":\"pieces\"},{\"text\":\"Kilogramme(s)\",\"value\":\"kilogram\"},{\"text\":\"Gramme(s)\",\"value\":\"gram\"},{\"text\":\"Litre(s)\",\"value\":\"liter\"},{\"text\":\"Centilitre(s)\",\"value\":\"centiliter\"},{\"text\":\"Mililitre(s)\",\"value\":\"milliliter\"}]},\"display\":\"labels\",\"display_options\":{\"choices\":[{\"text\":\"Pièce\",\"value\":\"pieces\",\"foreground\":\"#FFFFFF\",\"background\":\"#607D8B\"},{\"text\":\"Kilogramme(s)\",\"value\":\"kilogram\",\"foreground\":\"#FFFFFF\",\"background\":\"#F7971C\"},{\"text\":\"Gramme(s)\",\"value\":\"gram\",\"foreground\":\"#FFFFFF\",\"background\":\"#F2C94C\"},{\"text\":\"Litre(s)\",\"value\":\"liter\",\"foreground\":\"#FFFFFF\",\"background\":\"#00C897\"},{\"text\":\"Centilitre(s)\",\"value\":\"centiliter\",\"foreground\":\"#FFFFFF\",\"background\":\"#68B0F4\"},{\"text\":\"Mililitre(s)\",\"value\":\"milliliter\",\"foreground\":\"#FFFFFF\",\"background\":\"#9E8DE4\"}]},\"readonly\":false,\"hidden\":false,\"sort\":null,\"width\":\"half\",\"translations\":[{\"language\":\"fr-FR\",\"translation\":\"Unité de base\"}],\"note\":null,\"conditions\":null,\"required\":false,\"group\":null}', '{\"collection\":\"products\",\"field\":\"unit\",\"width\":\"half\"}', NULL),
(126, 128, 'directus_fields', '38', '{\"id\":38,\"collection\":\"products\",\"field\":\"stock\",\"special\":null,\"interface\":\"input\",\"options\":{\"min\":0},\"display\":\"raw\",\"display_options\":null,\"readonly\":false,\"hidden\":false,\"sort\":null,\"width\":\"half\",\"translations\":null,\"note\":null,\"conditions\":null,\"required\":false,\"group\":null}', '{\"collection\":\"products\",\"field\":\"stock\",\"width\":\"half\"}', NULL),
(127, 129, 'directus_fields', '39', '{\"hidden\":false,\"interface\":\"input-rich-text-html\",\"options\":{\"toolbar\":[\"bold\",\"italic\",\"underline\",\"removeformat\",\"bullist\",\"numlist\",\"blockquote\",\"h3\",\"hr\",\"fullscreen\",\"h4\",\"h5\",\"h6\"]},\"display\":\"raw\",\"display_options\":null,\"readonly\":false,\"special\":null,\"collection\":\"products\",\"field\":\"description\"}', '{\"hidden\":false,\"interface\":\"input-rich-text-html\",\"options\":{\"toolbar\":[\"bold\",\"italic\",\"underline\",\"removeformat\",\"bullist\",\"numlist\",\"blockquote\",\"h3\",\"hr\",\"fullscreen\",\"h4\",\"h5\",\"h6\"]},\"display\":\"raw\",\"display_options\":null,\"readonly\":false,\"special\":null,\"collection\":\"products\",\"field\":\"description\"}', NULL),
(128, 130, 'directus_fields', '40', '{\"hidden\":false,\"interface\":\"input\",\"display\":\"raw\",\"readonly\":false,\"translations\":[{\"language\":\"fr-FR\",\"translation\":\"Référence\"}],\"collection\":\"products\",\"field\":\"reference\"}', '{\"hidden\":false,\"interface\":\"input\",\"display\":\"raw\",\"readonly\":false,\"translations\":[{\"language\":\"fr-FR\",\"translation\":\"Référence\"}],\"collection\":\"products\",\"field\":\"reference\"}', NULL),
(129, 131, 'directus_fields', '41', '{\"hidden\":false,\"interface\":\"input\",\"options\":{\"min\":0},\"display\":\"raw\",\"display_options\":null,\"readonly\":false,\"special\":null,\"translations\":[{\"language\":\"fr-FR\",\"translation\":\"Poids\"}],\"collection\":\"products\",\"field\":\"weight\"}', '{\"hidden\":false,\"interface\":\"input\",\"options\":{\"min\":0},\"display\":\"raw\",\"display_options\":null,\"readonly\":false,\"special\":null,\"translations\":[{\"language\":\"fr-FR\",\"translation\":\"Poids\"}],\"collection\":\"products\",\"field\":\"weight\"}', NULL),
(130, 132, 'directus_fields', '41', '{\"id\":41,\"collection\":\"products\",\"field\":\"weight\",\"special\":null,\"interface\":\"input\",\"options\":{\"min\":0},\"display\":\"raw\",\"display_options\":null,\"readonly\":false,\"hidden\":false,\"sort\":null,\"width\":\"half\",\"translations\":[{\"language\":\"fr-FR\",\"translation\":\"Poids\"}],\"note\":null,\"conditions\":null,\"required\":false,\"group\":null}', '{\"collection\":\"products\",\"field\":\"weight\",\"width\":\"half\"}', NULL),
(131, 133, 'directus_fields', '30', '{\"id\":30,\"collection\":\"products\",\"field\":\"id\",\"special\":null,\"interface\":\"input\",\"options\":null,\"display\":null,\"display_options\":null,\"readonly\":true,\"hidden\":true,\"sort\":1,\"width\":\"full\",\"translations\":null,\"note\":null,\"conditions\":null,\"required\":false,\"group\":null}', '{\"collection\":\"products\",\"field\":\"id\",\"sort\":1,\"group\":null}', NULL),
(132, 134, 'directus_fields', '31', '{\"id\":31,\"collection\":\"products\",\"field\":\"status\",\"special\":null,\"interface\":\"select-dropdown\",\"options\":{\"choices\":[{\"text\":\"$t:published\",\"value\":\"published\"},{\"text\":\"$t:draft\",\"value\":\"draft\"},{\"text\":\"$t:archived\",\"value\":\"archived\"}]},\"display\":\"labels\",\"display_options\":{\"showAsDot\":true,\"choices\":[{\"background\":\"#00C897\",\"value\":\"published\"},{\"background\":\"#D3DAE4\",\"value\":\"draft\"},{\"background\":\"#F7971C\",\"value\":\"archived\"}]},\"readonly\":false,\"hidden\":false,\"sort\":2,\"width\":\"full\",\"translations\":null,\"note\":null,\"conditions\":null,\"required\":false,\"group\":null}', '{\"collection\":\"products\",\"field\":\"status\",\"sort\":2,\"group\":null}', NULL),
(133, 135, 'directus_fields', '32', '{\"id\":32,\"collection\":\"products\",\"field\":\"sort\",\"special\":null,\"interface\":\"input\",\"options\":null,\"display\":null,\"display_options\":null,\"readonly\":false,\"hidden\":true,\"sort\":3,\"width\":\"full\",\"translations\":null,\"note\":null,\"conditions\":null,\"required\":false,\"group\":null}', '{\"collection\":\"products\",\"field\":\"sort\",\"sort\":3,\"group\":null}', NULL),
(134, 136, 'directus_fields', '33', '{\"id\":33,\"collection\":\"products\",\"field\":\"date_created\",\"special\":[\"date-created\"],\"interface\":\"datetime\",\"options\":null,\"display\":\"datetime\",\"display_options\":{\"relative\":true},\"readonly\":true,\"hidden\":true,\"sort\":4,\"width\":\"half\",\"translations\":null,\"note\":null,\"conditions\":null,\"required\":false,\"group\":null}', '{\"collection\":\"products\",\"field\":\"date_created\",\"sort\":4,\"group\":null}', NULL),
(135, 137, 'directus_fields', '34', '{\"id\":34,\"collection\":\"products\",\"field\":\"date_updated\",\"special\":[\"date-updated\"],\"interface\":\"datetime\",\"options\":null,\"display\":\"datetime\",\"display_options\":{\"relative\":true},\"readonly\":true,\"hidden\":true,\"sort\":5,\"width\":\"half\",\"translations\":null,\"note\":null,\"conditions\":null,\"required\":false,\"group\":null}', '{\"collection\":\"products\",\"field\":\"date_updated\",\"sort\":5,\"group\":null}', NULL),
(136, 138, 'directus_fields', '35', '{\"id\":35,\"collection\":\"products\",\"field\":\"image\",\"special\":null,\"interface\":\"file-image\",\"options\":null,\"display\":\"image\",\"display_options\":null,\"readonly\":false,\"hidden\":false,\"sort\":6,\"width\":\"full\",\"translations\":null,\"note\":null,\"conditions\":null,\"required\":false,\"group\":null}', '{\"collection\":\"products\",\"field\":\"image\",\"sort\":6,\"group\":null}', NULL),
(137, 139, 'directus_fields', '36', '{\"id\":36,\"collection\":\"products\",\"field\":\"price\",\"special\":null,\"interface\":\"input\",\"options\":{\"min\":0},\"display\":\"raw\",\"display_options\":null,\"readonly\":false,\"hidden\":false,\"sort\":7,\"width\":\"full\",\"translations\":[{\"language\":\"fr-FR\",\"translation\":\"Prix\"}],\"note\":null,\"conditions\":null,\"required\":false,\"group\":null}', '{\"collection\":\"products\",\"field\":\"price\",\"sort\":7,\"group\":null}', NULL),
(138, 140, 'directus_fields', '37', '{\"id\":37,\"collection\":\"products\",\"field\":\"unit\",\"special\":null,\"interface\":\"select-dropdown\",\"options\":{\"choices\":[{\"text\":\"Pièce\",\"value\":\"pieces\"},{\"text\":\"Kilogramme(s)\",\"value\":\"kilogram\"},{\"text\":\"Gramme(s)\",\"value\":\"gram\"},{\"text\":\"Litre(s)\",\"value\":\"liter\"},{\"text\":\"Centilitre(s)\",\"value\":\"centiliter\"},{\"text\":\"Mililitre(s)\",\"value\":\"milliliter\"}]},\"display\":\"labels\",\"display_options\":{\"choices\":[{\"text\":\"Pièce\",\"value\":\"pieces\",\"foreground\":\"#FFFFFF\",\"background\":\"#607D8B\"},{\"text\":\"Kilogramme(s)\",\"value\":\"kilogram\",\"foreground\":\"#FFFFFF\",\"background\":\"#F7971C\"},{\"text\":\"Gramme(s)\",\"value\":\"gram\",\"foreground\":\"#FFFFFF\",\"background\":\"#F2C94C\"},{\"text\":\"Litre(s)\",\"value\":\"liter\",\"foreground\":\"#FFFFFF\",\"background\":\"#00C897\"},{\"text\":\"Centilitre(s)\",\"value\":\"centiliter\",\"foreground\":\"#FFFFFF\",\"background\":\"#68B0F4\"},{\"text\":\"Mililitre(s)\",\"value\":\"milliliter\",\"foreground\":\"#FFFFFF\",\"background\":\"#9E8DE4\"}]},\"readonly\":false,\"hidden\":false,\"sort\":8,\"width\":\"half\",\"translations\":[{\"language\":\"fr-FR\",\"translation\":\"Unité de base\"}],\"note\":null,\"conditions\":null,\"required\":false,\"group\":null}', '{\"collection\":\"products\",\"field\":\"unit\",\"sort\":8,\"group\":null}', NULL),
(139, 141, 'directus_fields', '39', '{\"id\":39,\"collection\":\"products\",\"field\":\"description\",\"special\":null,\"interface\":\"input-rich-text-html\",\"options\":{\"toolbar\":[\"bold\",\"italic\",\"underline\",\"removeformat\",\"bullist\",\"numlist\",\"blockquote\",\"h3\",\"hr\",\"fullscreen\",\"h4\",\"h5\",\"h6\"]},\"display\":\"raw\",\"display_options\":null,\"readonly\":false,\"hidden\":false,\"sort\":9,\"width\":\"full\",\"translations\":null,\"note\":null,\"conditions\":null,\"required\":false,\"group\":null}', '{\"collection\":\"products\",\"field\":\"description\",\"sort\":9,\"group\":null}', NULL),
(140, 142, 'directus_fields', '38', '{\"id\":38,\"collection\":\"products\",\"field\":\"stock\",\"special\":null,\"interface\":\"input\",\"options\":{\"min\":0},\"display\":\"raw\",\"display_options\":null,\"readonly\":false,\"hidden\":false,\"sort\":10,\"width\":\"half\",\"translations\":null,\"note\":null,\"conditions\":null,\"required\":false,\"group\":null}', '{\"collection\":\"products\",\"field\":\"stock\",\"sort\":10,\"group\":null}', NULL),
(141, 143, 'directus_fields', '40', '{\"id\":40,\"collection\":\"products\",\"field\":\"reference\",\"special\":null,\"interface\":\"input\",\"options\":null,\"display\":\"raw\",\"display_options\":null,\"readonly\":false,\"hidden\":false,\"sort\":11,\"width\":\"full\",\"translations\":[{\"language\":\"fr-FR\",\"translation\":\"Référence\"}],\"note\":null,\"conditions\":null,\"required\":false,\"group\":null}', '{\"collection\":\"products\",\"field\":\"reference\",\"sort\":11,\"group\":null}', NULL),
(142, 144, 'directus_fields', '41', '{\"id\":41,\"collection\":\"products\",\"field\":\"weight\",\"special\":null,\"interface\":\"input\",\"options\":{\"min\":0},\"display\":\"raw\",\"display_options\":null,\"readonly\":false,\"hidden\":false,\"sort\":12,\"width\":\"half\",\"translations\":[{\"language\":\"fr-FR\",\"translation\":\"Poids\"}],\"note\":null,\"conditions\":null,\"required\":false,\"group\":null}', '{\"collection\":\"products\",\"field\":\"weight\",\"sort\":12,\"group\":null}', NULL),
(143, 145, 'directus_fields', '30', '{\"id\":30,\"collection\":\"products\",\"field\":\"id\",\"special\":null,\"interface\":\"input\",\"options\":null,\"display\":null,\"display_options\":null,\"readonly\":true,\"hidden\":true,\"sort\":1,\"width\":\"full\",\"translations\":null,\"note\":null,\"conditions\":null,\"required\":false,\"group\":null}', '{\"collection\":\"products\",\"field\":\"id\",\"sort\":1,\"group\":null}', NULL),
(144, 146, 'directus_fields', '31', '{\"id\":31,\"collection\":\"products\",\"field\":\"status\",\"special\":null,\"interface\":\"select-dropdown\",\"options\":{\"choices\":[{\"text\":\"$t:published\",\"value\":\"published\"},{\"text\":\"$t:draft\",\"value\":\"draft\"},{\"text\":\"$t:archived\",\"value\":\"archived\"}]},\"display\":\"labels\",\"display_options\":{\"showAsDot\":true,\"choices\":[{\"background\":\"#00C897\",\"value\":\"published\"},{\"background\":\"#D3DAE4\",\"value\":\"draft\"},{\"background\":\"#F7971C\",\"value\":\"archived\"}]},\"readonly\":false,\"hidden\":false,\"sort\":2,\"width\":\"full\",\"translations\":null,\"note\":null,\"conditions\":null,\"required\":false,\"group\":null}', '{\"collection\":\"products\",\"field\":\"status\",\"sort\":2,\"group\":null}', NULL),
(145, 147, 'directus_fields', '32', '{\"id\":32,\"collection\":\"products\",\"field\":\"sort\",\"special\":null,\"interface\":\"input\",\"options\":null,\"display\":null,\"display_options\":null,\"readonly\":false,\"hidden\":true,\"sort\":3,\"width\":\"full\",\"translations\":null,\"note\":null,\"conditions\":null,\"required\":false,\"group\":null}', '{\"collection\":\"products\",\"field\":\"sort\",\"sort\":3,\"group\":null}', NULL),
(146, 148, 'directus_fields', '33', '{\"id\":33,\"collection\":\"products\",\"field\":\"date_created\",\"special\":[\"date-created\"],\"interface\":\"datetime\",\"options\":null,\"display\":\"datetime\",\"display_options\":{\"relative\":true},\"readonly\":true,\"hidden\":true,\"sort\":4,\"width\":\"half\",\"translations\":null,\"note\":null,\"conditions\":null,\"required\":false,\"group\":null}', '{\"collection\":\"products\",\"field\":\"date_created\",\"sort\":4,\"group\":null}', NULL),
(147, 149, 'directus_fields', '34', '{\"id\":34,\"collection\":\"products\",\"field\":\"date_updated\",\"special\":[\"date-updated\"],\"interface\":\"datetime\",\"options\":null,\"display\":\"datetime\",\"display_options\":{\"relative\":true},\"readonly\":true,\"hidden\":true,\"sort\":5,\"width\":\"half\",\"translations\":null,\"note\":null,\"conditions\":null,\"required\":false,\"group\":null}', '{\"collection\":\"products\",\"field\":\"date_updated\",\"sort\":5,\"group\":null}', NULL),
(148, 150, 'directus_fields', '35', '{\"id\":35,\"collection\":\"products\",\"field\":\"image\",\"special\":null,\"interface\":\"file-image\",\"options\":null,\"display\":\"image\",\"display_options\":null,\"readonly\":false,\"hidden\":false,\"sort\":6,\"width\":\"full\",\"translations\":null,\"note\":null,\"conditions\":null,\"required\":false,\"group\":null}', '{\"collection\":\"products\",\"field\":\"image\",\"sort\":6,\"group\":null}', NULL),
(149, 151, 'directus_fields', '36', '{\"id\":36,\"collection\":\"products\",\"field\":\"price\",\"special\":null,\"interface\":\"input\",\"options\":{\"min\":0},\"display\":\"raw\",\"display_options\":null,\"readonly\":false,\"hidden\":false,\"sort\":7,\"width\":\"full\",\"translations\":[{\"language\":\"fr-FR\",\"translation\":\"Prix\"}],\"note\":null,\"conditions\":null,\"required\":false,\"group\":null}', '{\"collection\":\"products\",\"field\":\"price\",\"sort\":7,\"group\":null}', NULL),
(150, 152, 'directus_fields', '41', '{\"id\":41,\"collection\":\"products\",\"field\":\"weight\",\"special\":null,\"interface\":\"input\",\"options\":{\"min\":0},\"display\":\"raw\",\"display_options\":null,\"readonly\":false,\"hidden\":false,\"sort\":8,\"width\":\"half\",\"translations\":[{\"language\":\"fr-FR\",\"translation\":\"Poids\"}],\"note\":null,\"conditions\":null,\"required\":false,\"group\":null}', '{\"collection\":\"products\",\"field\":\"weight\",\"sort\":8,\"group\":null}', NULL),
(151, 153, 'directus_fields', '37', '{\"id\":37,\"collection\":\"products\",\"field\":\"unit\",\"special\":null,\"interface\":\"select-dropdown\",\"options\":{\"choices\":[{\"text\":\"Pièce\",\"value\":\"pieces\"},{\"text\":\"Kilogramme(s)\",\"value\":\"kilogram\"},{\"text\":\"Gramme(s)\",\"value\":\"gram\"},{\"text\":\"Litre(s)\",\"value\":\"liter\"},{\"text\":\"Centilitre(s)\",\"value\":\"centiliter\"},{\"text\":\"Mililitre(s)\",\"value\":\"milliliter\"}]},\"display\":\"labels\",\"display_options\":{\"choices\":[{\"text\":\"Pièce\",\"value\":\"pieces\",\"foreground\":\"#FFFFFF\",\"background\":\"#607D8B\"},{\"text\":\"Kilogramme(s)\",\"value\":\"kilogram\",\"foreground\":\"#FFFFFF\",\"background\":\"#F7971C\"},{\"text\":\"Gramme(s)\",\"value\":\"gram\",\"foreground\":\"#FFFFFF\",\"background\":\"#F2C94C\"},{\"text\":\"Litre(s)\",\"value\":\"liter\",\"foreground\":\"#FFFFFF\",\"background\":\"#00C897\"},{\"text\":\"Centilitre(s)\",\"value\":\"centiliter\",\"foreground\":\"#FFFFFF\",\"background\":\"#68B0F4\"},{\"text\":\"Mililitre(s)\",\"value\":\"milliliter\",\"foreground\":\"#FFFFFF\",\"background\":\"#9E8DE4\"}]},\"readonly\":false,\"hidden\":false,\"sort\":9,\"width\":\"half\",\"translations\":[{\"language\":\"fr-FR\",\"translation\":\"Unité de base\"}],\"note\":null,\"conditions\":null,\"required\":false,\"group\":null}', '{\"collection\":\"products\",\"field\":\"unit\",\"sort\":9,\"group\":null}', NULL),
(152, 154, 'directus_fields', '39', '{\"id\":39,\"collection\":\"products\",\"field\":\"description\",\"special\":null,\"interface\":\"input-rich-text-html\",\"options\":{\"toolbar\":[\"bold\",\"italic\",\"underline\",\"removeformat\",\"bullist\",\"numlist\",\"blockquote\",\"h3\",\"hr\",\"fullscreen\",\"h4\",\"h5\",\"h6\"]},\"display\":\"raw\",\"display_options\":null,\"readonly\":false,\"hidden\":false,\"sort\":10,\"width\":\"full\",\"translations\":null,\"note\":null,\"conditions\":null,\"required\":false,\"group\":null}', '{\"collection\":\"products\",\"field\":\"description\",\"sort\":10,\"group\":null}', NULL),
(153, 155, 'directus_fields', '38', '{\"id\":38,\"collection\":\"products\",\"field\":\"stock\",\"special\":null,\"interface\":\"input\",\"options\":{\"min\":0},\"display\":\"raw\",\"display_options\":null,\"readonly\":false,\"hidden\":false,\"sort\":11,\"width\":\"half\",\"translations\":null,\"note\":null,\"conditions\":null,\"required\":false,\"group\":null}', '{\"collection\":\"products\",\"field\":\"stock\",\"sort\":11,\"group\":null}', NULL),
(154, 156, 'directus_fields', '40', '{\"id\":40,\"collection\":\"products\",\"field\":\"reference\",\"special\":null,\"interface\":\"input\",\"options\":null,\"display\":\"raw\",\"display_options\":null,\"readonly\":false,\"hidden\":false,\"sort\":12,\"width\":\"full\",\"translations\":[{\"language\":\"fr-FR\",\"translation\":\"Référence\"}],\"note\":null,\"conditions\":null,\"required\":false,\"group\":null}', '{\"collection\":\"products\",\"field\":\"reference\",\"sort\":12,\"group\":null}', NULL),
(155, 157, 'directus_fields', '30', '{\"id\":30,\"collection\":\"products\",\"field\":\"id\",\"special\":null,\"interface\":\"input\",\"options\":null,\"display\":null,\"display_options\":null,\"readonly\":true,\"hidden\":true,\"sort\":1,\"width\":\"full\",\"translations\":null,\"note\":null,\"conditions\":null,\"required\":false,\"group\":null}', '{\"collection\":\"products\",\"field\":\"id\",\"sort\":1,\"group\":null}', NULL),
(156, 158, 'directus_fields', '31', '{\"id\":31,\"collection\":\"products\",\"field\":\"status\",\"special\":null,\"interface\":\"select-dropdown\",\"options\":{\"choices\":[{\"text\":\"$t:published\",\"value\":\"published\"},{\"text\":\"$t:draft\",\"value\":\"draft\"},{\"text\":\"$t:archived\",\"value\":\"archived\"}]},\"display\":\"labels\",\"display_options\":{\"showAsDot\":true,\"choices\":[{\"background\":\"#00C897\",\"value\":\"published\"},{\"background\":\"#D3DAE4\",\"value\":\"draft\"},{\"background\":\"#F7971C\",\"value\":\"archived\"}]},\"readonly\":false,\"hidden\":false,\"sort\":2,\"width\":\"full\",\"translations\":null,\"note\":null,\"conditions\":null,\"required\":false,\"group\":null}', '{\"collection\":\"products\",\"field\":\"status\",\"sort\":2,\"group\":null}', NULL),
(157, 159, 'directus_fields', '32', '{\"id\":32,\"collection\":\"products\",\"field\":\"sort\",\"special\":null,\"interface\":\"input\",\"options\":null,\"display\":null,\"display_options\":null,\"readonly\":false,\"hidden\":true,\"sort\":3,\"width\":\"full\",\"translations\":null,\"note\":null,\"conditions\":null,\"required\":false,\"group\":null}', '{\"collection\":\"products\",\"field\":\"sort\",\"sort\":3,\"group\":null}', NULL),
(158, 160, 'directus_fields', '33', '{\"id\":33,\"collection\":\"products\",\"field\":\"date_created\",\"special\":[\"date-created\"],\"interface\":\"datetime\",\"options\":null,\"display\":\"datetime\",\"display_options\":{\"relative\":true},\"readonly\":true,\"hidden\":true,\"sort\":4,\"width\":\"half\",\"translations\":null,\"note\":null,\"conditions\":null,\"required\":false,\"group\":null}', '{\"collection\":\"products\",\"field\":\"date_created\",\"sort\":4,\"group\":null}', NULL),
(159, 161, 'directus_fields', '34', '{\"id\":34,\"collection\":\"products\",\"field\":\"date_updated\",\"special\":[\"date-updated\"],\"interface\":\"datetime\",\"options\":null,\"display\":\"datetime\",\"display_options\":{\"relative\":true},\"readonly\":true,\"hidden\":true,\"sort\":5,\"width\":\"half\",\"translations\":null,\"note\":null,\"conditions\":null,\"required\":false,\"group\":null}', '{\"collection\":\"products\",\"field\":\"date_updated\",\"sort\":5,\"group\":null}', NULL),
(160, 162, 'directus_fields', '35', '{\"id\":35,\"collection\":\"products\",\"field\":\"image\",\"special\":null,\"interface\":\"file-image\",\"options\":null,\"display\":\"image\",\"display_options\":null,\"readonly\":false,\"hidden\":false,\"sort\":6,\"width\":\"full\",\"translations\":null,\"note\":null,\"conditions\":null,\"required\":false,\"group\":null}', '{\"collection\":\"products\",\"field\":\"image\",\"sort\":6,\"group\":null}', NULL),
(161, 163, 'directus_fields', '38', '{\"id\":38,\"collection\":\"products\",\"field\":\"stock\",\"special\":null,\"interface\":\"input\",\"options\":{\"min\":0},\"display\":\"raw\",\"display_options\":null,\"readonly\":false,\"hidden\":false,\"sort\":7,\"width\":\"half\",\"translations\":null,\"note\":null,\"conditions\":null,\"required\":false,\"group\":null}', '{\"collection\":\"products\",\"field\":\"stock\",\"sort\":7,\"group\":null}', NULL),
(162, 164, 'directus_fields', '36', '{\"id\":36,\"collection\":\"products\",\"field\":\"price\",\"special\":null,\"interface\":\"input\",\"options\":{\"min\":0},\"display\":\"raw\",\"display_options\":null,\"readonly\":false,\"hidden\":false,\"sort\":8,\"width\":\"full\",\"translations\":[{\"language\":\"fr-FR\",\"translation\":\"Prix\"}],\"note\":null,\"conditions\":null,\"required\":false,\"group\":null}', '{\"collection\":\"products\",\"field\":\"price\",\"sort\":8,\"group\":null}', NULL),
(163, 165, 'directus_fields', '41', '{\"id\":41,\"collection\":\"products\",\"field\":\"weight\",\"special\":null,\"interface\":\"input\",\"options\":{\"min\":0},\"display\":\"raw\",\"display_options\":null,\"readonly\":false,\"hidden\":false,\"sort\":9,\"width\":\"half\",\"translations\":[{\"language\":\"fr-FR\",\"translation\":\"Poids\"}],\"note\":null,\"conditions\":null,\"required\":false,\"group\":null}', '{\"collection\":\"products\",\"field\":\"weight\",\"sort\":9,\"group\":null}', NULL),
(164, 166, 'directus_fields', '37', '{\"id\":37,\"collection\":\"products\",\"field\":\"unit\",\"special\":null,\"interface\":\"select-dropdown\",\"options\":{\"choices\":[{\"text\":\"Pièce\",\"value\":\"pieces\"},{\"text\":\"Kilogramme(s)\",\"value\":\"kilogram\"},{\"text\":\"Gramme(s)\",\"value\":\"gram\"},{\"text\":\"Litre(s)\",\"value\":\"liter\"},{\"text\":\"Centilitre(s)\",\"value\":\"centiliter\"},{\"text\":\"Mililitre(s)\",\"value\":\"milliliter\"}]},\"display\":\"labels\",\"display_options\":{\"choices\":[{\"text\":\"Pièce\",\"value\":\"pieces\",\"foreground\":\"#FFFFFF\",\"background\":\"#607D8B\"},{\"text\":\"Kilogramme(s)\",\"value\":\"kilogram\",\"foreground\":\"#FFFFFF\",\"background\":\"#F7971C\"},{\"text\":\"Gramme(s)\",\"value\":\"gram\",\"foreground\":\"#FFFFFF\",\"background\":\"#F2C94C\"},{\"text\":\"Litre(s)\",\"value\":\"liter\",\"foreground\":\"#FFFFFF\",\"background\":\"#00C897\"},{\"text\":\"Centilitre(s)\",\"value\":\"centiliter\",\"foreground\":\"#FFFFFF\",\"background\":\"#68B0F4\"},{\"text\":\"Mililitre(s)\",\"value\":\"milliliter\",\"foreground\":\"#FFFFFF\",\"background\":\"#9E8DE4\"}]},\"readonly\":false,\"hidden\":false,\"sort\":10,\"width\":\"half\",\"translations\":[{\"language\":\"fr-FR\",\"translation\":\"Unité de base\"}],\"note\":null,\"conditions\":null,\"required\":false,\"group\":null}', '{\"collection\":\"products\",\"field\":\"unit\",\"sort\":10,\"group\":null}', NULL),
(165, 167, 'directus_fields', '39', '{\"id\":39,\"collection\":\"products\",\"field\":\"description\",\"special\":null,\"interface\":\"input-rich-text-html\",\"options\":{\"toolbar\":[\"bold\",\"italic\",\"underline\",\"removeformat\",\"bullist\",\"numlist\",\"blockquote\",\"h3\",\"hr\",\"fullscreen\",\"h4\",\"h5\",\"h6\"]},\"display\":\"raw\",\"display_options\":null,\"readonly\":false,\"hidden\":false,\"sort\":11,\"width\":\"full\",\"translations\":null,\"note\":null,\"conditions\":null,\"required\":false,\"group\":null}', '{\"collection\":\"products\",\"field\":\"description\",\"sort\":11,\"group\":null}', NULL),
(166, 168, 'directus_fields', '40', '{\"id\":40,\"collection\":\"products\",\"field\":\"reference\",\"special\":null,\"interface\":\"input\",\"options\":null,\"display\":\"raw\",\"display_options\":null,\"readonly\":false,\"hidden\":false,\"sort\":12,\"width\":\"full\",\"translations\":[{\"language\":\"fr-FR\",\"translation\":\"Référence\"}],\"note\":null,\"conditions\":null,\"required\":false,\"group\":null}', '{\"collection\":\"products\",\"field\":\"reference\",\"sort\":12,\"group\":null}', NULL),
(167, 169, 'directus_fields', '38', '{\"id\":38,\"collection\":\"products\",\"field\":\"stock\",\"special\":null,\"interface\":\"input\",\"options\":{\"min\":0},\"display\":\"raw\",\"display_options\":null,\"readonly\":false,\"hidden\":false,\"sort\":7,\"width\":\"fill\",\"translations\":null,\"note\":null,\"conditions\":null,\"required\":false,\"group\":null}', '{\"collection\":\"products\",\"field\":\"stock\",\"width\":\"fill\"}', NULL),
(168, 170, 'directus_fields', '42', '{\"hidden\":false,\"interface\":null,\"options\":null,\"display\":\"boolean\",\"display_options\":null,\"readonly\":false,\"special\":\"boolean\",\"translations\":[{\"language\":\"fr-FR\",\"translation\":\"Prix variable\"}],\"collection\":\"products\",\"field\":\"variable_price\"}', '{\"hidden\":false,\"interface\":null,\"options\":null,\"display\":\"boolean\",\"display_options\":null,\"readonly\":false,\"special\":\"boolean\",\"translations\":[{\"language\":\"fr-FR\",\"translation\":\"Prix variable\"}],\"collection\":\"products\",\"field\":\"variable_price\"}', NULL),
(169, 171, 'directus_fields', '43', '{\"hidden\":false,\"interface\":\"select-dropdown-m2o\",\"options\":{\"template\":\"{{name}}\"},\"display\":\"related-values\",\"display_options\":{\"template\":\"{{name}}\"},\"readonly\":false,\"translations\":[{\"language\":\"fr-FR\",\"translation\":\"Catégorie\"}],\"collection\":\"products\",\"field\":\"category\"}', '{\"hidden\":false,\"interface\":\"select-dropdown-m2o\",\"options\":{\"template\":\"{{name}}\"},\"display\":\"related-values\",\"display_options\":{\"template\":\"{{name}}\"},\"readonly\":false,\"translations\":[{\"language\":\"fr-FR\",\"translation\":\"Catégorie\"}],\"collection\":\"products\",\"field\":\"category\"}', NULL),
(170, 172, 'directus_collections', 'certification', '{\"singleton\":false,\"collection\":\"certification\"}', '{\"singleton\":false,\"collection\":\"certification\"}', NULL),
(171, 173, 'directus_fields', '44', '{\"hidden\":true,\"interface\":\"input\",\"readonly\":true,\"field\":\"id\",\"collection\":\"certification\"}', '{\"hidden\":true,\"interface\":\"input\",\"readonly\":true,\"field\":\"id\",\"collection\":\"certification\"}', NULL),
(172, 174, 'directus_fields', '45', '{\"special\":\"date-created\",\"interface\":\"datetime\",\"readonly\":true,\"hidden\":true,\"width\":\"half\",\"display\":\"datetime\",\"display_options\":{\"relative\":true},\"field\":\"date_created\",\"collection\":\"certification\"}', '{\"special\":\"date-created\",\"interface\":\"datetime\",\"readonly\":true,\"hidden\":true,\"width\":\"half\",\"display\":\"datetime\",\"display_options\":{\"relative\":true},\"field\":\"date_created\",\"collection\":\"certification\"}', NULL),
(173, 175, 'directus_fields', '46', '{\"special\":\"date-updated\",\"interface\":\"datetime\",\"readonly\":true,\"hidden\":true,\"width\":\"half\",\"display\":\"datetime\",\"display_options\":{\"relative\":true},\"field\":\"date_updated\",\"collection\":\"certification\"}', '{\"special\":\"date-updated\",\"interface\":\"datetime\",\"readonly\":true,\"hidden\":true,\"width\":\"half\",\"display\":\"datetime\",\"display_options\":{\"relative\":true},\"field\":\"date_updated\",\"collection\":\"certification\"}', NULL),
(174, 176, 'directus_collections', 'certification', '{\"collection\":\"certification\",\"icon\":\"stars\",\"note\":null,\"display_template\":null,\"hidden\":false,\"singleton\":false,\"translations\":[{\"language\":\"fr-FR\",\"translation\":\"Certification\"}],\"archive_field\":null,\"archive_app_filter\":true,\"archive_value\":null,\"unarchive_value\":null,\"sort_field\":null,\"accountability\":\"all\",\"color\":\"#F2C94C\",\"item_duplication_fields\":null,\"sort\":null,\"group\":null,\"collapse\":\"open\"}', '{\"icon\":\"stars\",\"translations\":[{\"language\":\"fr-FR\",\"translation\":\"Certification\"}],\"color\":\"#F2C94C\"}', NULL);
INSERT INTO `directus_revisions` (`id`, `activity`, `collection`, `item`, `data`, `delta`, `parent`) VALUES
(175, 177, 'directus_fields', '47', '{\"hidden\":false,\"interface\":\"select-dropdown\",\"options\":{\"choices\":[{\"text\":\"Agriculture biologique\",\"value\":\"bio\"},{\"text\":\"Culture raisonné\",\"value\":\"raisonable\"}]},\"display\":\"labels\",\"display_options\":{\"choices\":[{\"text\":\"Agriculture Biologique\",\"value\":\"bio\",\"foreground\":\"#FFFFFF\",\"background\":\"#00C897\"},{\"text\":\"Culture raisonné\",\"value\":\"raisonable\",\"foreground\":\"#FFFFFF\",\"background\":\"#68B0F4\"}]},\"readonly\":false,\"translations\":[{\"language\":\"fr-FR\",\"translation\":\"Nom\"}],\"collection\":\"certification\",\"field\":\"name\"}', '{\"hidden\":false,\"interface\":\"select-dropdown\",\"options\":{\"choices\":[{\"text\":\"Agriculture biologique\",\"value\":\"bio\"},{\"text\":\"Culture raisonné\",\"value\":\"raisonable\"}]},\"display\":\"labels\",\"display_options\":{\"choices\":[{\"text\":\"Agriculture Biologique\",\"value\":\"bio\",\"foreground\":\"#FFFFFF\",\"background\":\"#00C897\"},{\"text\":\"Culture raisonné\",\"value\":\"raisonable\",\"foreground\":\"#FFFFFF\",\"background\":\"#68B0F4\"}]},\"readonly\":false,\"translations\":[{\"language\":\"fr-FR\",\"translation\":\"Nom\"}],\"collection\":\"certification\",\"field\":\"name\"}', NULL),
(176, 178, 'directus_fields', '48', '{\"hidden\":false,\"interface\":\"select-dropdown-m2o\",\"options\":{\"template\":\"{{name}}\"},\"display\":\"related-values\",\"display_options\":{\"template\":\"{{name}}\"},\"readonly\":false,\"translations\":null,\"collection\":\"products\",\"field\":\"certification\"}', '{\"hidden\":false,\"interface\":\"select-dropdown-m2o\",\"options\":{\"template\":\"{{name}}\"},\"display\":\"related-values\",\"display_options\":{\"template\":\"{{name}}\"},\"readonly\":false,\"translations\":null,\"collection\":\"products\",\"field\":\"certification\"}', NULL),
(177, 179, 'directus_fields', '38', '{\"id\":38,\"collection\":\"products\",\"field\":\"stock\",\"special\":null,\"interface\":\"input\",\"options\":{\"min\":0},\"display\":\"raw\",\"display_options\":null,\"readonly\":false,\"hidden\":false,\"sort\":7,\"width\":\"full\",\"translations\":null,\"note\":null,\"conditions\":null,\"required\":false,\"group\":null}', '{\"collection\":\"products\",\"field\":\"stock\",\"width\":\"full\"}', NULL),
(178, 180, 'directus_fields', '49', '{\"hidden\":false,\"interface\":\"input\",\"display\":\"raw\",\"readonly\":false,\"translations\":[{\"language\":\"fr-FR\",\"translation\":\"Nom\"}],\"collection\":\"certification\",\"field\":\"name\"}', '{\"hidden\":false,\"interface\":\"input\",\"display\":\"raw\",\"readonly\":false,\"translations\":[{\"language\":\"fr-FR\",\"translation\":\"Nom\"}],\"collection\":\"certification\",\"field\":\"name\"}', NULL),
(179, 181, 'certification', '1', '{\"name\":\"Agriculture Biologique\"}', '{\"name\":\"Agriculture Biologique\"}', NULL),
(180, 182, 'certification', '2', '{\"name\":\"Culture raisonné\"}', '{\"name\":\"Culture raisonné\"}', NULL),
(181, 183, 'directus_fields', '50', '{\"hidden\":false,\"interface\":\"select-dropdown-m2o\",\"options\":{\"template\":\"{{name}}\"},\"display\":\"related-values\",\"display_options\":{\"template\":\"{{name}}\"},\"readonly\":false,\"translations\":[{\"language\":\"fr-FR\",\"translation\":\"Producteur\"}],\"collection\":\"products\",\"field\":\"producer\"}', '{\"hidden\":false,\"interface\":\"select-dropdown-m2o\",\"options\":{\"template\":\"{{name}}\"},\"display\":\"related-values\",\"display_options\":{\"template\":\"{{name}}\"},\"readonly\":false,\"translations\":[{\"language\":\"fr-FR\",\"translation\":\"Producteur\"}],\"collection\":\"products\",\"field\":\"producer\"}', NULL),
(182, 184, 'directus_collections', 'distribution_site', '{\"archive_field\":\"status\",\"archive_value\":\"archived\",\"unarchive_value\":\"draft\",\"singleton\":false,\"collection\":\"distribution_site\"}', '{\"archive_field\":\"status\",\"archive_value\":\"archived\",\"unarchive_value\":\"draft\",\"singleton\":false,\"collection\":\"distribution_site\"}', NULL),
(183, 185, 'directus_fields', '51', '{\"hidden\":true,\"interface\":\"input\",\"readonly\":true,\"field\":\"id\",\"collection\":\"distribution_site\"}', '{\"hidden\":true,\"interface\":\"input\",\"readonly\":true,\"field\":\"id\",\"collection\":\"distribution_site\"}', NULL),
(184, 186, 'directus_fields', '52', '{\"width\":\"full\",\"options\":{\"choices\":[{\"text\":\"$t:published\",\"value\":\"published\"},{\"text\":\"$t:draft\",\"value\":\"draft\"},{\"text\":\"$t:archived\",\"value\":\"archived\"}]},\"interface\":\"select-dropdown\",\"display\":\"labels\",\"display_options\":{\"showAsDot\":true,\"choices\":[{\"background\":\"#00C897\",\"value\":\"published\"},{\"background\":\"#D3DAE4\",\"value\":\"draft\"},{\"background\":\"#F7971C\",\"value\":\"archived\"}]},\"field\":\"status\",\"collection\":\"distribution_site\"}', '{\"width\":\"full\",\"options\":{\"choices\":[{\"text\":\"$t:published\",\"value\":\"published\"},{\"text\":\"$t:draft\",\"value\":\"draft\"},{\"text\":\"$t:archived\",\"value\":\"archived\"}]},\"interface\":\"select-dropdown\",\"display\":\"labels\",\"display_options\":{\"showAsDot\":true,\"choices\":[{\"background\":\"#00C897\",\"value\":\"published\"},{\"background\":\"#D3DAE4\",\"value\":\"draft\"},{\"background\":\"#F7971C\",\"value\":\"archived\"}]},\"field\":\"status\",\"collection\":\"distribution_site\"}', NULL),
(185, 187, 'directus_fields', '53', '{\"special\":\"date-created\",\"interface\":\"datetime\",\"readonly\":true,\"hidden\":true,\"width\":\"half\",\"display\":\"datetime\",\"display_options\":{\"relative\":true},\"field\":\"date_created\",\"collection\":\"distribution_site\"}', '{\"special\":\"date-created\",\"interface\":\"datetime\",\"readonly\":true,\"hidden\":true,\"width\":\"half\",\"display\":\"datetime\",\"display_options\":{\"relative\":true},\"field\":\"date_created\",\"collection\":\"distribution_site\"}', NULL),
(186, 188, 'directus_fields', '54', '{\"special\":\"date-updated\",\"interface\":\"datetime\",\"readonly\":true,\"hidden\":true,\"width\":\"half\",\"display\":\"datetime\",\"display_options\":{\"relative\":true},\"field\":\"date_updated\",\"collection\":\"distribution_site\"}', '{\"special\":\"date-updated\",\"interface\":\"datetime\",\"readonly\":true,\"hidden\":true,\"width\":\"half\",\"display\":\"datetime\",\"display_options\":{\"relative\":true},\"field\":\"date_updated\",\"collection\":\"distribution_site\"}', NULL),
(187, 189, 'directus_collections', 'distribution_site', '{\"collection\":\"distribution_site\",\"icon\":\"storefront\",\"note\":null,\"display_template\":null,\"hidden\":false,\"singleton\":false,\"translations\":null,\"archive_field\":\"status\",\"archive_app_filter\":true,\"archive_value\":\"archived\",\"unarchive_value\":\"draft\",\"sort_field\":null,\"accountability\":\"all\",\"color\":null,\"item_duplication_fields\":null,\"sort\":null,\"group\":null,\"collapse\":\"open\"}', '{\"icon\":\"storefront\"}', NULL),
(188, 190, 'directus_fields', '55', '{\"hidden\":false,\"interface\":\"input\",\"display\":\"raw\",\"readonly\":false,\"translations\":[{\"language\":\"fr-FR\",\"translation\":\"Nom\"}],\"collection\":\"distribution_site\",\"field\":\"name\"}', '{\"hidden\":false,\"interface\":\"input\",\"display\":\"raw\",\"readonly\":false,\"translations\":[{\"language\":\"fr-FR\",\"translation\":\"Nom\"}],\"collection\":\"distribution_site\",\"field\":\"name\"}', NULL),
(189, 191, 'directus_fields', '56', '{\"hidden\":false,\"interface\":\"input\",\"display\":\"raw\",\"readonly\":false,\"translations\":[{\"language\":\"fr-FR\",\"translation\":\"Adresse (rue)\"}],\"collection\":\"distribution_site\",\"field\":\"street\"}', '{\"hidden\":false,\"interface\":\"input\",\"display\":\"raw\",\"readonly\":false,\"translations\":[{\"language\":\"fr-FR\",\"translation\":\"Adresse (rue)\"}],\"collection\":\"distribution_site\",\"field\":\"street\"}', NULL),
(190, 192, 'directus_fields', '57', '{\"hidden\":false,\"interface\":\"input\",\"display\":\"raw\",\"readonly\":false,\"translations\":[{\"language\":\"fr-FR\",\"translation\":\"Adresse (ville)\"}],\"collection\":\"distribution_site\",\"field\":\"city\"}', '{\"hidden\":false,\"interface\":\"input\",\"display\":\"raw\",\"readonly\":false,\"translations\":[{\"language\":\"fr-FR\",\"translation\":\"Adresse (ville)\"}],\"collection\":\"distribution_site\",\"field\":\"city\"}', NULL),
(191, 193, 'directus_collections', 'distribution', '{\"archive_field\":\"status\",\"archive_value\":\"archived\",\"unarchive_value\":\"draft\",\"singleton\":false,\"collection\":\"distribution\"}', '{\"archive_field\":\"status\",\"archive_value\":\"archived\",\"unarchive_value\":\"draft\",\"singleton\":false,\"collection\":\"distribution\"}', NULL),
(192, 194, 'directus_fields', '58', '{\"hidden\":true,\"interface\":\"input\",\"readonly\":true,\"field\":\"id\",\"collection\":\"distribution\"}', '{\"hidden\":true,\"interface\":\"input\",\"readonly\":true,\"field\":\"id\",\"collection\":\"distribution\"}', NULL),
(193, 195, 'directus_fields', '59', '{\"width\":\"full\",\"options\":{\"choices\":[{\"text\":\"$t:published\",\"value\":\"published\"},{\"text\":\"$t:draft\",\"value\":\"draft\"},{\"text\":\"$t:archived\",\"value\":\"archived\"}]},\"interface\":\"select-dropdown\",\"display\":\"labels\",\"display_options\":{\"showAsDot\":true,\"choices\":[{\"background\":\"#00C897\",\"value\":\"published\"},{\"background\":\"#D3DAE4\",\"value\":\"draft\"},{\"background\":\"#F7971C\",\"value\":\"archived\"}]},\"field\":\"status\",\"collection\":\"distribution\"}', '{\"width\":\"full\",\"options\":{\"choices\":[{\"text\":\"$t:published\",\"value\":\"published\"},{\"text\":\"$t:draft\",\"value\":\"draft\"},{\"text\":\"$t:archived\",\"value\":\"archived\"}]},\"interface\":\"select-dropdown\",\"display\":\"labels\",\"display_options\":{\"showAsDot\":true,\"choices\":[{\"background\":\"#00C897\",\"value\":\"published\"},{\"background\":\"#D3DAE4\",\"value\":\"draft\"},{\"background\":\"#F7971C\",\"value\":\"archived\"}]},\"field\":\"status\",\"collection\":\"distribution\"}', NULL),
(194, 196, 'directus_fields', '60', '{\"special\":\"date-created\",\"interface\":\"datetime\",\"readonly\":true,\"hidden\":true,\"width\":\"half\",\"display\":\"datetime\",\"display_options\":{\"relative\":true},\"field\":\"date_created\",\"collection\":\"distribution\"}', '{\"special\":\"date-created\",\"interface\":\"datetime\",\"readonly\":true,\"hidden\":true,\"width\":\"half\",\"display\":\"datetime\",\"display_options\":{\"relative\":true},\"field\":\"date_created\",\"collection\":\"distribution\"}', NULL),
(195, 197, 'directus_fields', '61', '{\"special\":\"date-updated\",\"interface\":\"datetime\",\"readonly\":true,\"hidden\":true,\"width\":\"half\",\"display\":\"datetime\",\"display_options\":{\"relative\":true},\"field\":\"date_updated\",\"collection\":\"distribution\"}', '{\"special\":\"date-updated\",\"interface\":\"datetime\",\"readonly\":true,\"hidden\":true,\"width\":\"half\",\"display\":\"datetime\",\"display_options\":{\"relative\":true},\"field\":\"date_updated\",\"collection\":\"distribution\"}', NULL),
(196, 198, 'directus_collections', 'distribution', '{\"collection\":\"distribution\",\"icon\":\"calendar_today\",\"note\":null,\"display_template\":null,\"hidden\":false,\"singleton\":false,\"translations\":[{\"language\":\"fr-FR\",\"translation\":\"Distribution\"}],\"archive_field\":\"status\",\"archive_app_filter\":true,\"archive_value\":\"archived\",\"unarchive_value\":\"draft\",\"sort_field\":null,\"accountability\":\"all\",\"color\":null,\"item_duplication_fields\":null,\"sort\":null,\"group\":null,\"collapse\":\"open\"}', '{\"icon\":\"calendar_today\",\"translations\":[{\"language\":\"fr-FR\",\"translation\":\"Distribution\"}]}', NULL),
(197, 199, 'directus_fields', '62', '{\"hidden\":false,\"interface\":\"datetime\",\"options\":null,\"display\":null,\"display_options\":null,\"readonly\":false,\"special\":null,\"translations\":[{\"language\":\"fr-FR\",\"translation\":\"Date de la distribution\"}],\"collection\":\"distribution\",\"field\":\"date\"}', '{\"hidden\":false,\"interface\":\"datetime\",\"options\":null,\"display\":null,\"display_options\":null,\"readonly\":false,\"special\":null,\"translations\":[{\"language\":\"fr-FR\",\"translation\":\"Date de la distribution\"}],\"collection\":\"distribution\",\"field\":\"date\"}', NULL),
(198, 200, 'directus_collections', 'distribution_site', '{\"collection\":\"distribution_site\",\"icon\":\"storefront\",\"note\":null,\"display_template\":null,\"hidden\":false,\"singleton\":false,\"translations\":[{\"language\":\"fr-FR\",\"translation\":\"Lieu de distribution\"}],\"archive_field\":\"status\",\"archive_app_filter\":true,\"archive_value\":\"archived\",\"unarchive_value\":\"draft\",\"sort_field\":null,\"accountability\":\"all\",\"color\":null,\"item_duplication_fields\":null,\"sort\":null,\"group\":null,\"collapse\":\"open\"}', '{\"translations\":[{\"language\":\"fr-FR\",\"translation\":\"Lieu de distribution\"}]}', NULL),
(199, 201, 'directus_fields', '63', '{\"hidden\":false,\"interface\":\"select-dropdown-m2o\",\"options\":{\"template\":\"{{name}}\"},\"display\":\"related-values\",\"display_options\":{\"template\":\"{{name}}\"},\"readonly\":false,\"translations\":[{\"language\":\"fr-FR\",\"translation\":\"Lieu de distribution\"}],\"collection\":\"distribution\",\"field\":\"site\"}', '{\"hidden\":false,\"interface\":\"select-dropdown-m2o\",\"options\":{\"template\":\"{{name}}\"},\"display\":\"related-values\",\"display_options\":{\"template\":\"{{name}}\"},\"readonly\":false,\"translations\":[{\"language\":\"fr-FR\",\"translation\":\"Lieu de distribution\"}],\"collection\":\"distribution\",\"field\":\"site\"}', NULL),
(200, 202, 'directus_fields', '64', '{\"hidden\":false,\"interface\":\"select-dropdown-m2o\",\"options\":{\"template\":\"{{name}}\"},\"display\":\"related-values\",\"display_options\":{\"template\":\"{{name}}\"},\"readonly\":false,\"translations\":[{\"language\":\"fr-FR\",\"translation\":\"Producteurs participant\"}],\"collection\":\"distribution\",\"field\":\"producer\"}', '{\"hidden\":false,\"interface\":\"select-dropdown-m2o\",\"options\":{\"template\":\"{{name}}\"},\"display\":\"related-values\",\"display_options\":{\"template\":\"{{name}}\"},\"readonly\":false,\"translations\":[{\"language\":\"fr-FR\",\"translation\":\"Producteurs participant\"}],\"collection\":\"distribution\",\"field\":\"producer\"}', NULL),
(201, 203, 'directus_collections', 'category', '{\"collection\":\"category\",\"icon\":\"dns\",\"note\":null,\"display_template\":null,\"hidden\":false,\"singleton\":false,\"translations\":[{\"language\":\"fr-FR\",\"translation\":\"Catégorie\"}],\"archive_field\":null,\"archive_app_filter\":true,\"archive_value\":\"archived\",\"unarchive_value\":\"draft\",\"sort_field\":null,\"accountability\":\"all\",\"color\":\"#00C897\",\"item_duplication_fields\":null,\"sort\":null,\"group\":null,\"collapse\":\"open\"}', '{\"color\":\"#00C897\"}', NULL),
(202, 204, 'directus_collections', 'category', '{\"collection\":\"category\",\"icon\":\"dns\",\"note\":null,\"display_template\":null,\"hidden\":false,\"singleton\":false,\"translations\":[{\"language\":\"fr-FR\",\"translation\":\"Catégorie\"}],\"archive_field\":null,\"archive_app_filter\":true,\"archive_value\":\"archived\",\"unarchive_value\":\"draft\",\"sort_field\":null,\"accountability\":\"all\",\"color\":\"#68B0F4\",\"item_duplication_fields\":null,\"sort\":null,\"group\":null,\"collapse\":\"open\"}', '{\"color\":\"#68B0F4\"}', NULL),
(203, 205, 'directus_collections', 'certification', '{\"collection\":\"certification\",\"icon\":\"stars\",\"note\":null,\"display_template\":null,\"hidden\":false,\"singleton\":false,\"translations\":[{\"language\":\"fr-FR\",\"translation\":\"Certification\"}],\"archive_field\":null,\"archive_app_filter\":true,\"archive_value\":null,\"unarchive_value\":null,\"sort_field\":null,\"accountability\":\"all\",\"color\":\"#68B0F4\",\"item_duplication_fields\":null,\"sort\":null,\"group\":null,\"collapse\":\"open\"}', '{\"color\":\"#68B0F4\"}', NULL),
(204, 206, 'directus_collections', 'products', '{\"collection\":\"products\",\"icon\":\"spa\",\"note\":null,\"display_template\":null,\"hidden\":false,\"singleton\":false,\"translations\":[{\"language\":\"fr-FR\",\"translation\":\"Produit\"}],\"archive_field\":\"status\",\"archive_app_filter\":true,\"archive_value\":\"archived\",\"unarchive_value\":\"draft\",\"sort_field\":\"sort\",\"accountability\":\"all\",\"color\":\"#68B0F4\",\"item_duplication_fields\":null,\"sort\":null,\"group\":null,\"collapse\":\"open\"}', '{\"color\":\"#68B0F4\"}', NULL),
(205, 207, 'directus_collections', 'distribution', '{\"collection\":\"distribution\",\"icon\":\"calendar_today\",\"note\":null,\"display_template\":null,\"hidden\":false,\"singleton\":false,\"translations\":[{\"language\":\"fr-FR\",\"translation\":\"Distribution\"}],\"archive_field\":\"status\",\"archive_app_filter\":true,\"archive_value\":\"archived\",\"unarchive_value\":\"draft\",\"sort_field\":null,\"accountability\":\"all\",\"color\":\"#9E8DE4\",\"item_duplication_fields\":null,\"sort\":null,\"group\":null,\"collapse\":\"open\"}', '{\"color\":\"#9E8DE4\"}', NULL),
(206, 208, 'directus_collections', 'distribution_site', '{\"collection\":\"distribution_site\",\"icon\":\"storefront\",\"note\":null,\"display_template\":null,\"hidden\":false,\"singleton\":false,\"translations\":[{\"language\":\"fr-FR\",\"translation\":\"Lieu de distribution\"}],\"archive_field\":\"status\",\"archive_app_filter\":true,\"archive_value\":\"archived\",\"unarchive_value\":\"draft\",\"sort_field\":null,\"accountability\":\"all\",\"color\":\"#9E8DE4\",\"item_duplication_fields\":null,\"sort\":null,\"group\":null,\"collapse\":\"open\"}', '{\"color\":\"#9E8DE4\"}', NULL),
(207, 209, 'directus_collections', 'distribution_folder', '{\"collection\":\"distribution_folder\",\"icon\":\"folder\",\"note\":null,\"color\":\"#9E8DE4\",\"translations\":[{\"language\":\"en-US\"}]}', '{\"collection\":\"distribution_folder\",\"icon\":\"folder\",\"note\":null,\"color\":\"#9E8DE4\",\"translations\":[{\"language\":\"en-US\"}]}', NULL),
(208, 212, 'directus_collections', 'certification', '{\"collection\":\"certification\",\"icon\":\"stars\",\"note\":null,\"display_template\":null,\"hidden\":false,\"singleton\":false,\"translations\":[{\"language\":\"fr-FR\",\"translation\":\"Certification\"}],\"archive_field\":null,\"archive_app_filter\":true,\"archive_value\":null,\"unarchive_value\":null,\"sort_field\":null,\"accountability\":\"all\",\"color\":\"#68B0F4\",\"item_duplication_fields\":null,\"sort\":2,\"group\":null,\"collapse\":\"open\"}', '{\"sort\":2,\"group\":null}', NULL),
(209, 213, 'directus_collections', 'distribution', '{\"collection\":\"distribution\",\"icon\":\"calendar_today\",\"note\":null,\"display_template\":null,\"hidden\":false,\"singleton\":false,\"translations\":[{\"language\":\"fr-FR\",\"translation\":\"Distribution\"}],\"archive_field\":\"status\",\"archive_app_filter\":true,\"archive_value\":\"archived\",\"unarchive_value\":\"draft\",\"sort_field\":null,\"accountability\":\"all\",\"color\":\"#9E8DE4\",\"item_duplication_fields\":null,\"sort\":4,\"group\":null,\"collapse\":\"open\"}', '{\"sort\":4,\"group\":null}', NULL),
(210, 211, 'directus_collections', 'category', '{\"collection\":\"category\",\"icon\":\"dns\",\"note\":null,\"display_template\":null,\"hidden\":false,\"singleton\":false,\"translations\":[{\"language\":\"fr-FR\",\"translation\":\"Catégorie\"}],\"archive_field\":null,\"archive_app_filter\":true,\"archive_value\":\"archived\",\"unarchive_value\":\"draft\",\"sort_field\":null,\"accountability\":\"all\",\"color\":\"#68B0F4\",\"item_duplication_fields\":null,\"sort\":1,\"group\":null,\"collapse\":\"open\"}', '{\"sort\":1,\"group\":null}', NULL),
(211, 214, 'directus_collections', 'distribution_site', '{\"collection\":\"distribution_site\",\"icon\":\"storefront\",\"note\":null,\"display_template\":null,\"hidden\":false,\"singleton\":false,\"translations\":[{\"language\":\"fr-FR\",\"translation\":\"Lieu de distribution\"}],\"archive_field\":\"status\",\"archive_app_filter\":true,\"archive_value\":\"archived\",\"unarchive_value\":\"draft\",\"sort_field\":null,\"accountability\":\"all\",\"color\":\"#9E8DE4\",\"item_duplication_fields\":null,\"sort\":3,\"group\":null,\"collapse\":\"open\"}', '{\"sort\":3,\"group\":null}', NULL),
(212, 215, 'directus_collections', 'producer', '{\"collection\":\"producer\",\"icon\":\"store_mall_directory\",\"note\":null,\"display_template\":null,\"hidden\":false,\"singleton\":false,\"translations\":[{\"language\":\"fr-FR\",\"translation\":\"Producteur\"}],\"archive_field\":\"status\",\"archive_app_filter\":true,\"archive_value\":\"archived\",\"unarchive_value\":\"draft\",\"sort_field\":null,\"accountability\":\"all\",\"color\":\"#00C897\",\"item_duplication_fields\":null,\"sort\":5,\"group\":null,\"collapse\":\"open\"}', '{\"sort\":5,\"group\":null}', NULL),
(213, 216, 'directus_collections', 'subscription', '{\"collection\":\"subscription\",\"icon\":\"supervised_user_circle\",\"note\":null,\"display_template\":null,\"hidden\":false,\"singleton\":false,\"translations\":[{\"language\":\"fr-FR\",\"translation\":\"Adhésion\"}],\"archive_field\":\"status\",\"archive_app_filter\":true,\"archive_value\":\"archived\",\"unarchive_value\":\"draft\",\"sort_field\":\"sort\",\"accountability\":\"all\",\"color\":\"#F7971C\",\"item_duplication_fields\":null,\"sort\":7,\"group\":null,\"collapse\":\"open\"}', '{\"sort\":7,\"group\":null}', NULL),
(214, 217, 'directus_collections', 'products', '{\"collection\":\"products\",\"icon\":\"spa\",\"note\":null,\"display_template\":null,\"hidden\":false,\"singleton\":false,\"translations\":[{\"language\":\"fr-FR\",\"translation\":\"Produit\"}],\"archive_field\":\"status\",\"archive_app_filter\":true,\"archive_value\":\"archived\",\"unarchive_value\":\"draft\",\"sort_field\":\"sort\",\"accountability\":\"all\",\"color\":\"#68B0F4\",\"item_duplication_fields\":null,\"sort\":6,\"group\":null,\"collapse\":\"open\"}', '{\"sort\":6,\"group\":null}', NULL),
(215, 218, 'directus_collections', 'category', '{\"collection\":\"category\",\"icon\":\"dns\",\"note\":null,\"display_template\":null,\"hidden\":false,\"singleton\":false,\"translations\":[{\"language\":\"fr-FR\",\"translation\":\"Catégorie\"}],\"archive_field\":null,\"archive_app_filter\":true,\"archive_value\":\"archived\",\"unarchive_value\":\"draft\",\"sort_field\":null,\"accountability\":\"all\",\"color\":\"#68B0F4\",\"item_duplication_fields\":null,\"sort\":1,\"group\":null,\"collapse\":\"open\"}', '{\"sort\":1,\"group\":null}', NULL),
(216, 219, 'directus_collections', 'distribution_site', '{\"collection\":\"distribution_site\",\"icon\":\"storefront\",\"note\":null,\"display_template\":null,\"hidden\":false,\"singleton\":false,\"translations\":[{\"language\":\"fr-FR\",\"translation\":\"Lieu de distribution\"}],\"archive_field\":\"status\",\"archive_app_filter\":true,\"archive_value\":\"archived\",\"unarchive_value\":\"draft\",\"sort_field\":null,\"accountability\":\"all\",\"color\":\"#9E8DE4\",\"item_duplication_fields\":null,\"sort\":3,\"group\":null,\"collapse\":\"open\"}', '{\"sort\":3,\"group\":null}', NULL),
(217, 220, 'directus_collections', 'producer', '{\"collection\":\"producer\",\"icon\":\"store_mall_directory\",\"note\":null,\"display_template\":null,\"hidden\":false,\"singleton\":false,\"translations\":[{\"language\":\"fr-FR\",\"translation\":\"Producteur\"}],\"archive_field\":\"status\",\"archive_app_filter\":true,\"archive_value\":\"archived\",\"unarchive_value\":\"draft\",\"sort_field\":null,\"accountability\":\"all\",\"color\":\"#00C897\",\"item_duplication_fields\":null,\"sort\":4,\"group\":null,\"collapse\":\"open\"}', '{\"sort\":4,\"group\":null}', NULL),
(218, 221, 'directus_collections', 'certification', '{\"collection\":\"certification\",\"icon\":\"stars\",\"note\":null,\"display_template\":null,\"hidden\":false,\"singleton\":false,\"translations\":[{\"language\":\"fr-FR\",\"translation\":\"Certification\"}],\"archive_field\":null,\"archive_app_filter\":true,\"archive_value\":null,\"unarchive_value\":null,\"sort_field\":null,\"accountability\":\"all\",\"color\":\"#68B0F4\",\"item_duplication_fields\":null,\"sort\":2,\"group\":null,\"collapse\":\"open\"}', '{\"sort\":2,\"group\":null}', NULL),
(219, 222, 'directus_collections', 'distribution', '{\"collection\":\"distribution\",\"icon\":\"calendar_today\",\"note\":null,\"display_template\":null,\"hidden\":false,\"singleton\":false,\"translations\":[{\"language\":\"fr-FR\",\"translation\":\"Distribution\"}],\"archive_field\":\"status\",\"archive_app_filter\":true,\"archive_value\":\"archived\",\"unarchive_value\":\"draft\",\"sort_field\":null,\"accountability\":\"all\",\"color\":\"#9E8DE4\",\"item_duplication_fields\":null,\"sort\":1,\"group\":\"distribution_site\",\"collapse\":\"open\"}', '{\"sort\":1,\"group\":\"distribution_site\"}', NULL),
(220, 224, 'directus_collections', 'subscription', '{\"collection\":\"subscription\",\"icon\":\"supervised_user_circle\",\"note\":null,\"display_template\":null,\"hidden\":false,\"singleton\":false,\"translations\":[{\"language\":\"fr-FR\",\"translation\":\"Adhésion\"}],\"archive_field\":\"status\",\"archive_app_filter\":true,\"archive_value\":\"archived\",\"unarchive_value\":\"draft\",\"sort_field\":\"sort\",\"accountability\":\"all\",\"color\":\"#F7971C\",\"item_duplication_fields\":null,\"sort\":6,\"group\":null,\"collapse\":\"open\"}', '{\"sort\":6,\"group\":null}', NULL),
(221, 223, 'directus_collections', 'products', '{\"collection\":\"products\",\"icon\":\"spa\",\"note\":null,\"display_template\":null,\"hidden\":false,\"singleton\":false,\"translations\":[{\"language\":\"fr-FR\",\"translation\":\"Produit\"}],\"archive_field\":\"status\",\"archive_app_filter\":true,\"archive_value\":\"archived\",\"unarchive_value\":\"draft\",\"sort_field\":\"sort\",\"accountability\":\"all\",\"color\":\"#68B0F4\",\"item_duplication_fields\":null,\"sort\":5,\"group\":null,\"collapse\":\"open\"}', '{\"sort\":5,\"group\":null}', NULL),
(222, 225, 'directus_collections', 'producer', '{\"collection\":\"producer\",\"icon\":\"store_mall_directory\",\"note\":null,\"display_template\":null,\"hidden\":false,\"singleton\":false,\"translations\":[{\"language\":\"fr-FR\",\"translation\":\"Producteur\"}],\"archive_field\":\"status\",\"archive_app_filter\":true,\"archive_value\":\"archived\",\"unarchive_value\":\"draft\",\"sort_field\":null,\"accountability\":\"all\",\"color\":\"#00C897\",\"item_duplication_fields\":null,\"sort\":3,\"group\":null,\"collapse\":\"open\"}', '{\"sort\":3,\"group\":null}', NULL),
(223, 226, 'directus_collections', 'products', '{\"collection\":\"products\",\"icon\":\"spa\",\"note\":null,\"display_template\":null,\"hidden\":false,\"singleton\":false,\"translations\":[{\"language\":\"fr-FR\",\"translation\":\"Produit\"}],\"archive_field\":\"status\",\"archive_app_filter\":true,\"archive_value\":\"archived\",\"unarchive_value\":\"draft\",\"sort_field\":\"sort\",\"accountability\":\"all\",\"color\":\"#68B0F4\",\"item_duplication_fields\":null,\"sort\":4,\"group\":null,\"collapse\":\"open\"}', '{\"sort\":4,\"group\":null}', NULL),
(224, 227, 'directus_collections', 'category', '{\"collection\":\"category\",\"icon\":\"dns\",\"note\":null,\"display_template\":null,\"hidden\":false,\"singleton\":false,\"translations\":[{\"language\":\"fr-FR\",\"translation\":\"Catégorie\"}],\"archive_field\":null,\"archive_app_filter\":true,\"archive_value\":\"archived\",\"unarchive_value\":\"draft\",\"sort_field\":null,\"accountability\":\"all\",\"color\":\"#68B0F4\",\"item_duplication_fields\":null,\"sort\":1,\"group\":null,\"collapse\":\"open\"}', '{\"sort\":1,\"group\":null}', NULL),
(225, 228, 'directus_collections', 'distribution_site', '{\"collection\":\"distribution_site\",\"icon\":\"storefront\",\"note\":null,\"display_template\":null,\"hidden\":false,\"singleton\":false,\"translations\":[{\"language\":\"fr-FR\",\"translation\":\"Lieu de distribution\"}],\"archive_field\":\"status\",\"archive_app_filter\":true,\"archive_value\":\"archived\",\"unarchive_value\":\"draft\",\"sort_field\":null,\"accountability\":\"all\",\"color\":\"#9E8DE4\",\"item_duplication_fields\":null,\"sort\":2,\"group\":null,\"collapse\":\"open\"}', '{\"sort\":2,\"group\":null}', NULL),
(226, 229, 'directus_collections', 'certification', '{\"collection\":\"certification\",\"icon\":\"stars\",\"note\":null,\"display_template\":null,\"hidden\":false,\"singleton\":false,\"translations\":[{\"language\":\"fr-FR\",\"translation\":\"Certification\"}],\"archive_field\":null,\"archive_app_filter\":true,\"archive_value\":null,\"unarchive_value\":null,\"sort_field\":null,\"accountability\":\"all\",\"color\":\"#68B0F4\",\"item_duplication_fields\":null,\"sort\":1,\"group\":\"producer\",\"collapse\":\"open\"}', '{\"sort\":1,\"group\":\"producer\"}', NULL),
(227, 230, 'directus_collections', 'subscription', '{\"collection\":\"subscription\",\"icon\":\"supervised_user_circle\",\"note\":null,\"display_template\":null,\"hidden\":false,\"singleton\":false,\"translations\":[{\"language\":\"fr-FR\",\"translation\":\"Adhésion\"}],\"archive_field\":\"status\",\"archive_app_filter\":true,\"archive_value\":\"archived\",\"unarchive_value\":\"draft\",\"sort_field\":\"sort\",\"accountability\":\"all\",\"color\":\"#F7971C\",\"item_duplication_fields\":null,\"sort\":5,\"group\":null,\"collapse\":\"open\"}', '{\"sort\":5,\"group\":null}', NULL),
(228, 231, 'directus_collections', 'category', '{\"collection\":\"category\",\"icon\":\"dns\",\"note\":null,\"display_template\":null,\"hidden\":false,\"singleton\":false,\"translations\":[{\"language\":\"fr-FR\",\"translation\":\"Catégorie\"}],\"archive_field\":null,\"archive_app_filter\":true,\"archive_value\":\"archived\",\"unarchive_value\":\"draft\",\"sort_field\":null,\"accountability\":\"all\",\"color\":\"#68B0F4\",\"item_duplication_fields\":null,\"sort\":1,\"group\":null,\"collapse\":\"open\"}', '{\"sort\":1,\"group\":null}', NULL),
(229, 232, 'directus_collections', 'producer', '{\"collection\":\"producer\",\"icon\":\"store_mall_directory\",\"note\":null,\"display_template\":null,\"hidden\":false,\"singleton\":false,\"translations\":[{\"language\":\"fr-FR\",\"translation\":\"Producteur\"}],\"archive_field\":\"status\",\"archive_app_filter\":true,\"archive_value\":\"archived\",\"unarchive_value\":\"draft\",\"sort_field\":null,\"accountability\":\"all\",\"color\":\"#00C897\",\"item_duplication_fields\":null,\"sort\":3,\"group\":null,\"collapse\":\"open\"}', '{\"sort\":3,\"group\":null}', NULL),
(230, 233, 'directus_collections', 'distribution_site', '{\"collection\":\"distribution_site\",\"icon\":\"storefront\",\"note\":null,\"display_template\":null,\"hidden\":false,\"singleton\":false,\"translations\":[{\"language\":\"fr-FR\",\"translation\":\"Lieu de distribution\"}],\"archive_field\":\"status\",\"archive_app_filter\":true,\"archive_value\":\"archived\",\"unarchive_value\":\"draft\",\"sort_field\":null,\"accountability\":\"all\",\"color\":\"#9E8DE4\",\"item_duplication_fields\":null,\"sort\":2,\"group\":null,\"collapse\":\"open\"}', '{\"sort\":2,\"group\":null}', NULL),
(231, 234, 'directus_collections', 'products', '{\"collection\":\"products\",\"icon\":\"spa\",\"note\":null,\"display_template\":null,\"hidden\":false,\"singleton\":false,\"translations\":[{\"language\":\"fr-FR\",\"translation\":\"Produit\"}],\"archive_field\":\"status\",\"archive_app_filter\":true,\"archive_value\":\"archived\",\"unarchive_value\":\"draft\",\"sort_field\":\"sort\",\"accountability\":\"all\",\"color\":\"#68B0F4\",\"item_duplication_fields\":null,\"sort\":5,\"group\":null,\"collapse\":\"open\"}', '{\"sort\":5,\"group\":null}', NULL),
(232, 235, 'directus_collections', 'certification', '{\"collection\":\"certification\",\"icon\":\"stars\",\"note\":null,\"display_template\":null,\"hidden\":false,\"singleton\":false,\"translations\":[{\"language\":\"fr-FR\",\"translation\":\"Certification\"}],\"archive_field\":null,\"archive_app_filter\":true,\"archive_value\":null,\"unarchive_value\":null,\"sort_field\":null,\"accountability\":\"all\",\"color\":\"#68B0F4\",\"item_duplication_fields\":null,\"sort\":4,\"group\":null,\"collapse\":\"open\"}', '{\"sort\":4,\"group\":null}', NULL),
(233, 236, 'directus_collections', 'subscription', '{\"collection\":\"subscription\",\"icon\":\"supervised_user_circle\",\"note\":null,\"display_template\":null,\"hidden\":false,\"singleton\":false,\"translations\":[{\"language\":\"fr-FR\",\"translation\":\"Adhésion\"}],\"archive_field\":\"status\",\"archive_app_filter\":true,\"archive_value\":\"archived\",\"unarchive_value\":\"draft\",\"sort_field\":\"sort\",\"accountability\":\"all\",\"color\":\"#F7971C\",\"item_duplication_fields\":null,\"sort\":6,\"group\":null,\"collapse\":\"open\"}', '{\"sort\":6,\"group\":null}', NULL),
(234, 237, 'directus_collections', 'category', '{\"collection\":\"category\",\"icon\":\"dns\",\"note\":null,\"display_template\":null,\"hidden\":false,\"singleton\":false,\"translations\":[{\"language\":\"fr-FR\",\"translation\":\"Catégorie\"}],\"archive_field\":null,\"archive_app_filter\":true,\"archive_value\":\"archived\",\"unarchive_value\":\"draft\",\"sort_field\":null,\"accountability\":\"all\",\"color\":\"#68B0F4\",\"item_duplication_fields\":null,\"sort\":1,\"group\":null,\"collapse\":\"open\"}', '{\"sort\":1,\"group\":null}', NULL),
(235, 238, 'directus_collections', 'products', '{\"collection\":\"products\",\"icon\":\"spa\",\"note\":null,\"display_template\":null,\"hidden\":false,\"singleton\":false,\"translations\":[{\"language\":\"fr-FR\",\"translation\":\"Produit\"}],\"archive_field\":\"status\",\"archive_app_filter\":true,\"archive_value\":\"archived\",\"unarchive_value\":\"draft\",\"sort_field\":\"sort\",\"accountability\":\"all\",\"color\":\"#68B0F4\",\"item_duplication_fields\":null,\"sort\":1,\"group\":\"certification\",\"collapse\":\"open\"}', '{\"sort\":1,\"group\":\"certification\"}', NULL),
(236, 239, 'directus_collections', 'producer', '{\"collection\":\"producer\",\"icon\":\"store_mall_directory\",\"note\":null,\"display_template\":null,\"hidden\":false,\"singleton\":false,\"translations\":[{\"language\":\"fr-FR\",\"translation\":\"Producteur\"}],\"archive_field\":\"status\",\"archive_app_filter\":true,\"archive_value\":\"archived\",\"unarchive_value\":\"draft\",\"sort_field\":null,\"accountability\":\"all\",\"color\":\"#00C897\",\"item_duplication_fields\":null,\"sort\":3,\"group\":null,\"collapse\":\"open\"}', '{\"sort\":3,\"group\":null}', NULL),
(237, 240, 'directus_collections', 'distribution_site', '{\"collection\":\"distribution_site\",\"icon\":\"storefront\",\"note\":null,\"display_template\":null,\"hidden\":false,\"singleton\":false,\"translations\":[{\"language\":\"fr-FR\",\"translation\":\"Lieu de distribution\"}],\"archive_field\":\"status\",\"archive_app_filter\":true,\"archive_value\":\"archived\",\"unarchive_value\":\"draft\",\"sort_field\":null,\"accountability\":\"all\",\"color\":\"#9E8DE4\",\"item_duplication_fields\":null,\"sort\":2,\"group\":null,\"collapse\":\"open\"}', '{\"sort\":2,\"group\":null}', NULL),
(238, 241, 'directus_collections', 'certification', '{\"collection\":\"certification\",\"icon\":\"stars\",\"note\":null,\"display_template\":null,\"hidden\":false,\"singleton\":false,\"translations\":[{\"language\":\"fr-FR\",\"translation\":\"Certification\"}],\"archive_field\":null,\"archive_app_filter\":true,\"archive_value\":null,\"unarchive_value\":null,\"sort_field\":null,\"accountability\":\"all\",\"color\":\"#68B0F4\",\"item_duplication_fields\":null,\"sort\":4,\"group\":null,\"collapse\":\"open\"}', '{\"sort\":4,\"group\":null}', NULL),
(239, 242, 'directus_collections', 'subscription', '{\"collection\":\"subscription\",\"icon\":\"supervised_user_circle\",\"note\":null,\"display_template\":null,\"hidden\":false,\"singleton\":false,\"translations\":[{\"language\":\"fr-FR\",\"translation\":\"Adhésion\"}],\"archive_field\":\"status\",\"archive_app_filter\":true,\"archive_value\":\"archived\",\"unarchive_value\":\"draft\",\"sort_field\":\"sort\",\"accountability\":\"all\",\"color\":\"#F7971C\",\"item_duplication_fields\":null,\"sort\":5,\"group\":null,\"collapse\":\"open\"}', '{\"sort\":5,\"group\":null}', NULL),
(240, 243, 'directus_collections', 'category', '{\"collection\":\"category\",\"icon\":\"dns\",\"note\":null,\"display_template\":null,\"hidden\":false,\"singleton\":false,\"translations\":[{\"language\":\"fr-FR\",\"translation\":\"Catégorie\"}],\"archive_field\":null,\"archive_app_filter\":true,\"archive_value\":\"archived\",\"unarchive_value\":\"draft\",\"sort_field\":null,\"accountability\":\"all\",\"color\":\"#68B0F4\",\"item_duplication_fields\":null,\"sort\":1,\"group\":null,\"collapse\":\"open\"}', '{\"sort\":1,\"group\":null}', NULL),
(241, 244, 'directus_collections', 'distribution_site', '{\"collection\":\"distribution_site\",\"icon\":\"storefront\",\"note\":null,\"display_template\":null,\"hidden\":false,\"singleton\":false,\"translations\":[{\"language\":\"fr-FR\",\"translation\":\"Lieu de distribution\"}],\"archive_field\":\"status\",\"archive_app_filter\":true,\"archive_value\":\"archived\",\"unarchive_value\":\"draft\",\"sort_field\":null,\"accountability\":\"all\",\"color\":\"#9E8DE4\",\"item_duplication_fields\":null,\"sort\":2,\"group\":null,\"collapse\":\"open\"}', '{\"sort\":2,\"group\":null}', NULL),
(242, 246, 'directus_collections', 'producer', '{\"collection\":\"producer\",\"icon\":\"store_mall_directory\",\"note\":null,\"display_template\":null,\"hidden\":false,\"singleton\":false,\"translations\":[{\"language\":\"fr-FR\",\"translation\":\"Producteur\"}],\"archive_field\":\"status\",\"archive_app_filter\":true,\"archive_value\":\"archived\",\"unarchive_value\":\"draft\",\"sort_field\":null,\"accountability\":\"all\",\"color\":\"#00C897\",\"item_duplication_fields\":null,\"sort\":3,\"group\":null,\"collapse\":\"open\"}', '{\"sort\":3,\"group\":null}', NULL),
(243, 245, 'directus_collections', 'subscription', '{\"collection\":\"subscription\",\"icon\":\"supervised_user_circle\",\"note\":null,\"display_template\":null,\"hidden\":false,\"singleton\":false,\"translations\":[{\"language\":\"fr-FR\",\"translation\":\"Adhésion\"}],\"archive_field\":\"status\",\"archive_app_filter\":true,\"archive_value\":\"archived\",\"unarchive_value\":\"draft\",\"sort_field\":\"sort\",\"accountability\":\"all\",\"color\":\"#F7971C\",\"item_duplication_fields\":null,\"sort\":4,\"group\":null,\"collapse\":\"open\"}', '{\"sort\":4,\"group\":null}', NULL),
(244, 247, 'directus_collections', 'certification', '{\"collection\":\"certification\",\"icon\":\"stars\",\"note\":null,\"display_template\":null,\"hidden\":false,\"singleton\":false,\"translations\":[{\"language\":\"fr-FR\",\"translation\":\"Certification\"}],\"archive_field\":null,\"archive_app_filter\":true,\"archive_value\":null,\"unarchive_value\":null,\"sort_field\":null,\"accountability\":\"all\",\"color\":\"#68B0F4\",\"item_duplication_fields\":null,\"sort\":5,\"group\":null,\"collapse\":\"open\"}', '{\"sort\":5,\"group\":null}', NULL),
(245, 248, 'directus_collections', 'category', '{\"collection\":\"category\",\"icon\":\"dns\",\"note\":null,\"display_template\":null,\"hidden\":false,\"singleton\":false,\"translations\":[{\"language\":\"fr-FR\",\"translation\":\"Catégorie\"}],\"archive_field\":null,\"archive_app_filter\":true,\"archive_value\":\"archived\",\"unarchive_value\":\"draft\",\"sort_field\":null,\"accountability\":\"all\",\"color\":\"#68B0F4\",\"item_duplication_fields\":null,\"sort\":1,\"group\":null,\"collapse\":\"open\"}', '{\"sort\":1,\"group\":null}', NULL),
(246, 249, 'directus_collections', 'subscription', '{\"collection\":\"subscription\",\"icon\":\"supervised_user_circle\",\"note\":null,\"display_template\":null,\"hidden\":false,\"singleton\":false,\"translations\":[{\"language\":\"fr-FR\",\"translation\":\"Adhésion\"}],\"archive_field\":\"status\",\"archive_app_filter\":true,\"archive_value\":\"archived\",\"unarchive_value\":\"draft\",\"sort_field\":\"sort\",\"accountability\":\"all\",\"color\":\"#F7971C\",\"item_duplication_fields\":null,\"sort\":4,\"group\":null,\"collapse\":\"open\"}', '{\"sort\":4,\"group\":null}', NULL),
(247, 250, 'directus_collections', 'producer', '{\"collection\":\"producer\",\"icon\":\"store_mall_directory\",\"note\":null,\"display_template\":null,\"hidden\":false,\"singleton\":false,\"translations\":[{\"language\":\"fr-FR\",\"translation\":\"Producteur\"}],\"archive_field\":\"status\",\"archive_app_filter\":true,\"archive_value\":\"archived\",\"unarchive_value\":\"draft\",\"sort_field\":null,\"accountability\":\"all\",\"color\":\"#00C897\",\"item_duplication_fields\":null,\"sort\":3,\"group\":null,\"collapse\":\"open\"}', '{\"sort\":3,\"group\":null}', NULL),
(248, 252, 'directus_collections', 'products', '{\"collection\":\"products\",\"icon\":\"spa\",\"note\":null,\"display_template\":null,\"hidden\":false,\"singleton\":false,\"translations\":[{\"language\":\"fr-FR\",\"translation\":\"Produit\"}],\"archive_field\":\"status\",\"archive_app_filter\":true,\"archive_value\":\"archived\",\"unarchive_value\":\"draft\",\"sort_field\":\"sort\",\"accountability\":\"all\",\"color\":\"#68B0F4\",\"item_duplication_fields\":null,\"sort\":5,\"group\":null,\"collapse\":\"open\"}', '{\"sort\":5,\"group\":null}', NULL),
(249, 251, 'directus_collections', 'distribution_site', '{\"collection\":\"distribution_site\",\"icon\":\"storefront\",\"note\":null,\"display_template\":null,\"hidden\":false,\"singleton\":false,\"translations\":[{\"language\":\"fr-FR\",\"translation\":\"Lieu de distribution\"}],\"archive_field\":\"status\",\"archive_app_filter\":true,\"archive_value\":\"archived\",\"unarchive_value\":\"draft\",\"sort_field\":null,\"accountability\":\"all\",\"color\":\"#9E8DE4\",\"item_duplication_fields\":null,\"sort\":2,\"group\":null,\"collapse\":\"open\"}', '{\"sort\":2,\"group\":null}', NULL),
(250, 253, 'directus_collections', 'certification', '{\"collection\":\"certification\",\"icon\":\"stars\",\"note\":null,\"display_template\":null,\"hidden\":false,\"singleton\":false,\"translations\":[{\"language\":\"fr-FR\",\"translation\":\"Certification\"}],\"archive_field\":null,\"archive_app_filter\":true,\"archive_value\":null,\"unarchive_value\":null,\"sort_field\":null,\"accountability\":\"all\",\"color\":\"#68B0F4\",\"item_duplication_fields\":null,\"sort\":6,\"group\":null,\"collapse\":\"open\"}', '{\"sort\":6,\"group\":null}', NULL),
(251, 254, 'directus_collections', 'category', '{\"collection\":\"category\",\"icon\":\"dns\",\"note\":null,\"display_template\":null,\"hidden\":false,\"singleton\":false,\"translations\":[{\"language\":\"fr-FR\",\"translation\":\"Catégorie\"}],\"archive_field\":null,\"archive_app_filter\":true,\"archive_value\":\"archived\",\"unarchive_value\":\"draft\",\"sort_field\":null,\"accountability\":\"all\",\"color\":\"#68B0F4\",\"item_duplication_fields\":null,\"sort\":1,\"group\":null,\"collapse\":\"open\"}', '{\"sort\":1,\"group\":null}', NULL),
(252, 257, 'directus_collections', 'producer', '{\"collection\":\"producer\",\"icon\":\"store_mall_directory\",\"note\":null,\"display_template\":null,\"hidden\":false,\"singleton\":false,\"translations\":[{\"language\":\"fr-FR\",\"translation\":\"Producteur\"}],\"archive_field\":\"status\",\"archive_app_filter\":true,\"archive_value\":\"archived\",\"unarchive_value\":\"draft\",\"sort_field\":null,\"accountability\":\"all\",\"color\":\"#00C897\",\"item_duplication_fields\":null,\"sort\":3,\"group\":null,\"collapse\":\"open\"}', '{\"sort\":3,\"group\":null}', NULL),
(253, 258, 'directus_collections', 'certification', '{\"collection\":\"certification\",\"icon\":\"stars\",\"note\":null,\"display_template\":null,\"hidden\":false,\"singleton\":false,\"translations\":[{\"language\":\"fr-FR\",\"translation\":\"Certification\"}],\"archive_field\":null,\"archive_app_filter\":true,\"archive_value\":null,\"unarchive_value\":null,\"sort_field\":null,\"accountability\":\"all\",\"color\":\"#68B0F4\",\"item_duplication_fields\":null,\"sort\":1,\"group\":\"products\",\"collapse\":\"open\"}', '{\"sort\":1,\"group\":\"products\"}', NULL),
(254, 255, 'directus_collections', 'subscription', '{\"collection\":\"subscription\",\"icon\":\"supervised_user_circle\",\"note\":null,\"display_template\":null,\"hidden\":false,\"singleton\":false,\"translations\":[{\"language\":\"fr-FR\",\"translation\":\"Adhésion\"}],\"archive_field\":\"status\",\"archive_app_filter\":true,\"archive_value\":\"archived\",\"unarchive_value\":\"draft\",\"sort_field\":\"sort\",\"accountability\":\"all\",\"color\":\"#F7971C\",\"item_duplication_fields\":null,\"sort\":4,\"group\":null,\"collapse\":\"open\"}', '{\"sort\":4,\"group\":null}', NULL),
(255, 256, 'directus_collections', 'distribution_site', '{\"collection\":\"distribution_site\",\"icon\":\"storefront\",\"note\":null,\"display_template\":null,\"hidden\":false,\"singleton\":false,\"translations\":[{\"language\":\"fr-FR\",\"translation\":\"Lieu de distribution\"}],\"archive_field\":\"status\",\"archive_app_filter\":true,\"archive_value\":\"archived\",\"unarchive_value\":\"draft\",\"sort_field\":null,\"accountability\":\"all\",\"color\":\"#9E8DE4\",\"item_duplication_fields\":null,\"sort\":2,\"group\":null,\"collapse\":\"open\"}', '{\"sort\":2,\"group\":null}', NULL),
(256, 259, 'directus_collections', 'products', '{\"collection\":\"products\",\"icon\":\"spa\",\"note\":null,\"display_template\":null,\"hidden\":false,\"singleton\":false,\"translations\":[{\"language\":\"fr-FR\",\"translation\":\"Produit\"}],\"archive_field\":\"status\",\"archive_app_filter\":true,\"archive_value\":\"archived\",\"unarchive_value\":\"draft\",\"sort_field\":\"sort\",\"accountability\":\"all\",\"color\":\"#68B0F4\",\"item_duplication_fields\":null,\"sort\":5,\"group\":null,\"collapse\":\"open\"}', '{\"sort\":5,\"group\":null}', NULL),
(257, 260, 'directus_collections', 'category', '{\"collection\":\"category\",\"icon\":\"dns\",\"note\":null,\"display_template\":null,\"hidden\":false,\"singleton\":false,\"translations\":[{\"language\":\"fr-FR\",\"translation\":\"Catégorie\"}],\"archive_field\":null,\"archive_app_filter\":true,\"archive_value\":\"archived\",\"unarchive_value\":\"draft\",\"sort_field\":null,\"accountability\":\"all\",\"color\":\"#68B0F4\",\"item_duplication_fields\":null,\"sort\":2,\"group\":\"products\",\"collapse\":\"open\"}', '{\"sort\":2,\"group\":\"products\"}', NULL),
(258, 261, 'directus_collections', 'producer', '{\"collection\":\"producer\",\"icon\":\"store_mall_directory\",\"note\":null,\"display_template\":null,\"hidden\":false,\"singleton\":false,\"translations\":[{\"language\":\"fr-FR\",\"translation\":\"Producteur\"}],\"archive_field\":\"status\",\"archive_app_filter\":true,\"archive_value\":\"archived\",\"unarchive_value\":\"draft\",\"sort_field\":null,\"accountability\":\"all\",\"color\":\"#00C897\",\"item_duplication_fields\":null,\"sort\":2,\"group\":null,\"collapse\":\"open\"}', '{\"sort\":2,\"group\":null}', NULL),
(259, 262, 'directus_collections', 'certification', '{\"collection\":\"certification\",\"icon\":\"stars\",\"note\":null,\"display_template\":null,\"hidden\":false,\"singleton\":false,\"translations\":[{\"language\":\"fr-FR\",\"translation\":\"Certification\"}],\"archive_field\":null,\"archive_app_filter\":true,\"archive_value\":null,\"unarchive_value\":null,\"sort_field\":null,\"accountability\":\"all\",\"color\":\"#68B0F4\",\"item_duplication_fields\":null,\"sort\":1,\"group\":\"products\",\"collapse\":\"open\"}', '{\"sort\":1,\"group\":\"products\"}', NULL),
(260, 263, 'directus_collections', 'distribution_site', '{\"collection\":\"distribution_site\",\"icon\":\"storefront\",\"note\":null,\"display_template\":null,\"hidden\":false,\"singleton\":false,\"translations\":[{\"language\":\"fr-FR\",\"translation\":\"Lieu de distribution\"}],\"archive_field\":\"status\",\"archive_app_filter\":true,\"archive_value\":\"archived\",\"unarchive_value\":\"draft\",\"sort_field\":null,\"accountability\":\"all\",\"color\":\"#9E8DE4\",\"item_duplication_fields\":null,\"sort\":1,\"group\":null,\"collapse\":\"open\"}', '{\"sort\":1,\"group\":null}', NULL),
(261, 264, 'directus_collections', 'subscription', '{\"collection\":\"subscription\",\"icon\":\"supervised_user_circle\",\"note\":null,\"display_template\":null,\"hidden\":false,\"singleton\":false,\"translations\":[{\"language\":\"fr-FR\",\"translation\":\"Adhésion\"}],\"archive_field\":\"status\",\"archive_app_filter\":true,\"archive_value\":\"archived\",\"unarchive_value\":\"draft\",\"sort_field\":\"sort\",\"accountability\":\"all\",\"color\":\"#F7971C\",\"item_duplication_fields\":null,\"sort\":3,\"group\":null,\"collapse\":\"open\"}', '{\"sort\":3,\"group\":null}', NULL),
(262, 265, 'directus_collections', 'products', '{\"collection\":\"products\",\"icon\":\"spa\",\"note\":null,\"display_template\":null,\"hidden\":false,\"singleton\":false,\"translations\":[{\"language\":\"fr-FR\",\"translation\":\"Produit\"}],\"archive_field\":\"status\",\"archive_app_filter\":true,\"archive_value\":\"archived\",\"unarchive_value\":\"draft\",\"sort_field\":\"sort\",\"accountability\":\"all\",\"color\":\"#68B0F4\",\"item_duplication_fields\":null,\"sort\":4,\"group\":null,\"collapse\":\"open\"}', '{\"sort\":4,\"group\":null}', NULL);
INSERT INTO `directus_revisions` (`id`, `activity`, `collection`, `item`, `data`, `delta`, `parent`) VALUES
(263, 266, 'directus_collections', 'subscription', '{\"collection\":\"subscription\",\"icon\":\"supervised_user_circle\",\"note\":null,\"display_template\":null,\"hidden\":false,\"singleton\":false,\"translations\":[{\"language\":\"fr-FR\",\"translation\":\"Adhésion\"}],\"archive_field\":\"status\",\"archive_app_filter\":true,\"archive_value\":\"archived\",\"unarchive_value\":\"draft\",\"sort_field\":\"sort\",\"accountability\":\"all\",\"color\":\"#F7971C\",\"item_duplication_fields\":null,\"sort\":1,\"group\":null,\"collapse\":\"open\"}', '{\"sort\":1,\"group\":null}', NULL),
(264, 267, 'directus_collections', 'distribution_site', '{\"collection\":\"distribution_site\",\"icon\":\"storefront\",\"note\":null,\"display_template\":null,\"hidden\":false,\"singleton\":false,\"translations\":[{\"language\":\"fr-FR\",\"translation\":\"Lieu de distribution\"}],\"archive_field\":\"status\",\"archive_app_filter\":true,\"archive_value\":\"archived\",\"unarchive_value\":\"draft\",\"sort_field\":null,\"accountability\":\"all\",\"color\":\"#9E8DE4\",\"item_duplication_fields\":null,\"sort\":2,\"group\":null,\"collapse\":\"open\"}', '{\"sort\":2,\"group\":null}', NULL),
(265, 269, 'directus_collections', 'producer', '{\"collection\":\"producer\",\"icon\":\"store_mall_directory\",\"note\":null,\"display_template\":null,\"hidden\":false,\"singleton\":false,\"translations\":[{\"language\":\"fr-FR\",\"translation\":\"Producteur\"}],\"archive_field\":\"status\",\"archive_app_filter\":true,\"archive_value\":\"archived\",\"unarchive_value\":\"draft\",\"sort_field\":null,\"accountability\":\"all\",\"color\":\"#00C897\",\"item_duplication_fields\":null,\"sort\":3,\"group\":null,\"collapse\":\"open\"}', '{\"sort\":3,\"group\":null}', NULL),
(266, 268, 'directus_collections', 'products', '{\"collection\":\"products\",\"icon\":\"spa\",\"note\":null,\"display_template\":null,\"hidden\":false,\"singleton\":false,\"translations\":[{\"language\":\"fr-FR\",\"translation\":\"Produit\"}],\"archive_field\":\"status\",\"archive_app_filter\":true,\"archive_value\":\"archived\",\"unarchive_value\":\"draft\",\"sort_field\":\"sort\",\"accountability\":\"all\",\"color\":\"#68B0F4\",\"item_duplication_fields\":null,\"sort\":4,\"group\":null,\"collapse\":\"open\"}', '{\"sort\":4,\"group\":null}', NULL),
(267, 270, 'directus_collections', 'association', '{\"archive_field\":\"status\",\"archive_value\":\"archived\",\"unarchive_value\":\"draft\",\"singleton\":false,\"collection\":\"association\"}', '{\"archive_field\":\"status\",\"archive_value\":\"archived\",\"unarchive_value\":\"draft\",\"singleton\":false,\"collection\":\"association\"}', NULL),
(268, 271, 'directus_fields', '65', '{\"hidden\":true,\"interface\":\"input\",\"readonly\":true,\"field\":\"id\",\"collection\":\"association\"}', '{\"hidden\":true,\"interface\":\"input\",\"readonly\":true,\"field\":\"id\",\"collection\":\"association\"}', NULL),
(269, 272, 'directus_fields', '66', '{\"width\":\"full\",\"options\":{\"choices\":[{\"text\":\"$t:published\",\"value\":\"published\"},{\"text\":\"$t:draft\",\"value\":\"draft\"},{\"text\":\"$t:archived\",\"value\":\"archived\"}]},\"interface\":\"select-dropdown\",\"display\":\"labels\",\"display_options\":{\"showAsDot\":true,\"choices\":[{\"background\":\"#00C897\",\"value\":\"published\"},{\"background\":\"#D3DAE4\",\"value\":\"draft\"},{\"background\":\"#F7971C\",\"value\":\"archived\"}]},\"field\":\"status\",\"collection\":\"association\"}', '{\"width\":\"full\",\"options\":{\"choices\":[{\"text\":\"$t:published\",\"value\":\"published\"},{\"text\":\"$t:draft\",\"value\":\"draft\"},{\"text\":\"$t:archived\",\"value\":\"archived\"}]},\"interface\":\"select-dropdown\",\"display\":\"labels\",\"display_options\":{\"showAsDot\":true,\"choices\":[{\"background\":\"#00C897\",\"value\":\"published\"},{\"background\":\"#D3DAE4\",\"value\":\"draft\"},{\"background\":\"#F7971C\",\"value\":\"archived\"}]},\"field\":\"status\",\"collection\":\"association\"}', NULL),
(270, 273, 'directus_fields', '67', '{\"special\":\"date-created\",\"interface\":\"datetime\",\"readonly\":true,\"hidden\":true,\"width\":\"half\",\"display\":\"datetime\",\"display_options\":{\"relative\":true},\"field\":\"date_created\",\"collection\":\"association\"}', '{\"special\":\"date-created\",\"interface\":\"datetime\",\"readonly\":true,\"hidden\":true,\"width\":\"half\",\"display\":\"datetime\",\"display_options\":{\"relative\":true},\"field\":\"date_created\",\"collection\":\"association\"}', NULL),
(271, 274, 'directus_fields', '68', '{\"special\":\"date-updated\",\"interface\":\"datetime\",\"readonly\":true,\"hidden\":true,\"width\":\"half\",\"display\":\"datetime\",\"display_options\":{\"relative\":true},\"field\":\"date_updated\",\"collection\":\"association\"}', '{\"special\":\"date-updated\",\"interface\":\"datetime\",\"readonly\":true,\"hidden\":true,\"width\":\"half\",\"display\":\"datetime\",\"display_options\":{\"relative\":true},\"field\":\"date_updated\",\"collection\":\"association\"}', NULL),
(272, 275, 'directus_collections', 'association', '{\"collection\":\"association\",\"icon\":\"people_alt\",\"note\":null,\"display_template\":null,\"hidden\":false,\"singleton\":false,\"translations\":[{\"language\":\"fr-FR\",\"translation\":\"Association\"}],\"archive_field\":\"status\",\"archive_app_filter\":true,\"archive_value\":\"archived\",\"unarchive_value\":\"draft\",\"sort_field\":null,\"accountability\":\"all\",\"color\":\"#E35169\",\"item_duplication_fields\":null,\"sort\":null,\"group\":null,\"collapse\":\"open\"}', '{\"icon\":\"people_alt\",\"translations\":[{\"language\":\"fr-FR\",\"translation\":\"Association\"}],\"color\":\"#E35169\"}', NULL),
(273, 276, 'directus_collections', 'association', '{\"collection\":\"association\",\"icon\":\"people_alt\",\"note\":null,\"display_template\":null,\"hidden\":false,\"singleton\":false,\"translations\":[{\"language\":\"fr-FR\",\"translation\":\"Association\"}],\"archive_field\":\"status\",\"archive_app_filter\":true,\"archive_value\":\"archived\",\"unarchive_value\":\"draft\",\"sort_field\":null,\"accountability\":\"all\",\"color\":\"#E35169\",\"item_duplication_fields\":null,\"sort\":1,\"group\":null,\"collapse\":\"open\"}', '{\"sort\":1,\"group\":null}', NULL),
(274, 278, 'directus_collections', 'products', '{\"collection\":\"products\",\"icon\":\"spa\",\"note\":null,\"display_template\":null,\"hidden\":false,\"singleton\":false,\"translations\":[{\"language\":\"fr-FR\",\"translation\":\"Produit\"}],\"archive_field\":\"status\",\"archive_app_filter\":true,\"archive_value\":\"archived\",\"unarchive_value\":\"draft\",\"sort_field\":\"sort\",\"accountability\":\"all\",\"color\":\"#68B0F4\",\"item_duplication_fields\":null,\"sort\":5,\"group\":null,\"collapse\":\"open\"}', '{\"sort\":5,\"group\":null}', NULL),
(275, 277, 'directus_collections', 'producer', '{\"collection\":\"producer\",\"icon\":\"store_mall_directory\",\"note\":null,\"display_template\":null,\"hidden\":false,\"singleton\":false,\"translations\":[{\"language\":\"fr-FR\",\"translation\":\"Producteur\"}],\"archive_field\":\"status\",\"archive_app_filter\":true,\"archive_value\":\"archived\",\"unarchive_value\":\"draft\",\"sort_field\":null,\"accountability\":\"all\",\"color\":\"#00C897\",\"item_duplication_fields\":null,\"sort\":4,\"group\":null,\"collapse\":\"open\"}', '{\"sort\":4,\"group\":null}', NULL),
(276, 279, 'directus_collections', 'distribution_site', '{\"collection\":\"distribution_site\",\"icon\":\"storefront\",\"note\":null,\"display_template\":null,\"hidden\":false,\"singleton\":false,\"translations\":[{\"language\":\"fr-FR\",\"translation\":\"Lieu de distribution\"}],\"archive_field\":\"status\",\"archive_app_filter\":true,\"archive_value\":\"archived\",\"unarchive_value\":\"draft\",\"sort_field\":null,\"accountability\":\"all\",\"color\":\"#9E8DE4\",\"item_duplication_fields\":null,\"sort\":3,\"group\":null,\"collapse\":\"open\"}', '{\"sort\":3,\"group\":null}', NULL),
(277, 280, 'directus_collections', 'subscription', '{\"collection\":\"subscription\",\"icon\":\"supervised_user_circle\",\"note\":null,\"display_template\":null,\"hidden\":false,\"singleton\":false,\"translations\":[{\"language\":\"fr-FR\",\"translation\":\"Adhésion\"}],\"archive_field\":\"status\",\"archive_app_filter\":true,\"archive_value\":\"archived\",\"unarchive_value\":\"draft\",\"sort_field\":\"sort\",\"accountability\":\"all\",\"color\":\"#F7971C\",\"item_duplication_fields\":null,\"sort\":2,\"group\":null,\"collapse\":\"open\"}', '{\"sort\":2,\"group\":null}', NULL),
(278, 281, 'directus_collections', 'association', '{\"collection\":\"association\",\"icon\":\"people_alt\",\"note\":null,\"display_template\":null,\"hidden\":false,\"singleton\":false,\"translations\":[{\"language\":\"fr-FR\",\"translation\":\"Association\"}],\"archive_field\":\"status\",\"archive_app_filter\":true,\"archive_value\":\"archived\",\"unarchive_value\":\"draft\",\"sort_field\":null,\"accountability\":\"all\",\"color\":\"#F7971C\",\"item_duplication_fields\":null,\"sort\":1,\"group\":null,\"collapse\":\"open\"}', '{\"color\":\"#F7971C\"}', NULL),
(279, 282, 'directus_collections', 'subscription', '{\"collection\":\"subscription\",\"icon\":\"supervised_user_circle\",\"note\":null,\"display_template\":null,\"hidden\":false,\"singleton\":false,\"translations\":[{\"language\":\"fr-FR\",\"translation\":\"Adhésion\"}],\"archive_field\":\"status\",\"archive_app_filter\":true,\"archive_value\":\"archived\",\"unarchive_value\":\"draft\",\"sort_field\":\"sort\",\"accountability\":\"all\",\"color\":\"#F7971C\",\"item_duplication_fields\":null,\"sort\":1,\"group\":\"association\",\"collapse\":\"open\"}', '{\"sort\":1,\"group\":\"association\"}', NULL),
(280, 283, 'directus_collections', 'producer', '{\"collection\":\"producer\",\"icon\":\"store_mall_directory\",\"note\":null,\"display_template\":null,\"hidden\":false,\"singleton\":false,\"translations\":[{\"language\":\"fr-FR\",\"translation\":\"Producteur\"}],\"archive_field\":\"status\",\"archive_app_filter\":true,\"archive_value\":\"archived\",\"unarchive_value\":\"draft\",\"sort_field\":null,\"accountability\":\"all\",\"color\":\"#00C897\",\"item_duplication_fields\":null,\"sort\":3,\"group\":null,\"collapse\":\"open\"}', '{\"sort\":3,\"group\":null}', NULL),
(281, 284, 'directus_collections', 'distribution_site', '{\"collection\":\"distribution_site\",\"icon\":\"storefront\",\"note\":null,\"display_template\":null,\"hidden\":false,\"singleton\":false,\"translations\":[{\"language\":\"fr-FR\",\"translation\":\"Lieu de distribution\"}],\"archive_field\":\"status\",\"archive_app_filter\":true,\"archive_value\":\"archived\",\"unarchive_value\":\"draft\",\"sort_field\":null,\"accountability\":\"all\",\"color\":\"#9E8DE4\",\"item_duplication_fields\":null,\"sort\":2,\"group\":null,\"collapse\":\"open\"}', '{\"sort\":2,\"group\":null}', NULL),
(282, 285, 'directus_collections', 'products', '{\"collection\":\"products\",\"icon\":\"spa\",\"note\":null,\"display_template\":null,\"hidden\":false,\"singleton\":false,\"translations\":[{\"language\":\"fr-FR\",\"translation\":\"Produit\"}],\"archive_field\":\"status\",\"archive_app_filter\":true,\"archive_value\":\"archived\",\"unarchive_value\":\"draft\",\"sort_field\":\"sort\",\"accountability\":\"all\",\"color\":\"#68B0F4\",\"item_duplication_fields\":null,\"sort\":4,\"group\":null,\"collapse\":\"open\"}', '{\"sort\":4,\"group\":null}', NULL),
(283, 286, 'directus_collections', 'association', '{\"collection\":\"association\",\"icon\":\"people_alt\",\"note\":null,\"display_template\":null,\"hidden\":false,\"singleton\":false,\"translations\":[{\"language\":\"fr-FR\",\"translation\":\"Association\"}],\"archive_field\":\"status\",\"archive_app_filter\":true,\"archive_value\":\"archived\",\"unarchive_value\":\"draft\",\"sort_field\":null,\"accountability\":\"all\",\"color\":\"#F7971C\",\"item_duplication_fields\":null,\"sort\":1,\"group\":null,\"collapse\":\"open\"}', '{\"sort\":1,\"group\":null}', NULL),
(284, 287, 'directus_fields', '69', '{\"hidden\":false,\"interface\":\"input\",\"display\":\"raw\",\"readonly\":false,\"translations\":[{\"language\":\"fr-FR\",\"translation\":\"Nom\"}],\"collection\":\"association\",\"field\":\"name\"}', '{\"hidden\":false,\"interface\":\"input\",\"display\":\"raw\",\"readonly\":false,\"translations\":[{\"language\":\"fr-FR\",\"translation\":\"Nom\"}],\"collection\":\"association\",\"field\":\"name\"}', NULL),
(285, 288, 'directus_fields', '70', '{\"hidden\":false,\"interface\":\"select-dropdown-m2o\",\"options\":{\"template\":\"{{name}}\"},\"display\":\"related-values\",\"display_options\":{\"template\":\"{{name}}\"},\"readonly\":false,\"collection\":\"subscription\",\"field\":\"association\"}', '{\"hidden\":false,\"interface\":\"select-dropdown-m2o\",\"options\":{\"template\":\"{{name}}\"},\"display\":\"related-values\",\"display_options\":{\"template\":\"{{name}}\"},\"readonly\":false,\"collection\":\"subscription\",\"field\":\"association\"}', NULL),
(286, 289, 'directus_collections', 'city', '{\"singleton\":false,\"collection\":\"city\"}', '{\"singleton\":false,\"collection\":\"city\"}', NULL),
(287, 290, 'directus_fields', '71', '{\"hidden\":true,\"interface\":\"input\",\"readonly\":true,\"field\":\"id\",\"collection\":\"city\"}', '{\"hidden\":true,\"interface\":\"input\",\"readonly\":true,\"field\":\"id\",\"collection\":\"city\"}', NULL),
(288, 291, 'directus_fields', '72', '{\"special\":\"date-created\",\"interface\":\"datetime\",\"readonly\":true,\"hidden\":true,\"width\":\"half\",\"display\":\"datetime\",\"display_options\":{\"relative\":true},\"field\":\"date_created\",\"collection\":\"city\"}', '{\"special\":\"date-created\",\"interface\":\"datetime\",\"readonly\":true,\"hidden\":true,\"width\":\"half\",\"display\":\"datetime\",\"display_options\":{\"relative\":true},\"field\":\"date_created\",\"collection\":\"city\"}', NULL),
(289, 292, 'directus_fields', '73', '{\"special\":\"date-updated\",\"interface\":\"datetime\",\"readonly\":true,\"hidden\":true,\"width\":\"half\",\"display\":\"datetime\",\"display_options\":{\"relative\":true},\"field\":\"date_updated\",\"collection\":\"city\"}', '{\"special\":\"date-updated\",\"interface\":\"datetime\",\"readonly\":true,\"hidden\":true,\"width\":\"half\",\"display\":\"datetime\",\"display_options\":{\"relative\":true},\"field\":\"date_updated\",\"collection\":\"city\"}', NULL),
(290, 293, 'directus_fields', '74', '{\"hidden\":false,\"interface\":\"input\",\"readonly\":false,\"translations\":[{\"language\":\"fr-FR\",\"translation\":\"Nom de la ville\"}],\"collection\":\"city\",\"field\":\"name\"}', '{\"hidden\":false,\"interface\":\"input\",\"readonly\":false,\"translations\":[{\"language\":\"fr-FR\",\"translation\":\"Nom de la ville\"}],\"collection\":\"city\",\"field\":\"name\"}', NULL),
(291, 294, 'directus_collections', 'city', '{\"collection\":\"city\",\"icon\":\"location_city\",\"note\":null,\"display_template\":null,\"hidden\":false,\"singleton\":false,\"translations\":null,\"archive_field\":null,\"archive_app_filter\":true,\"archive_value\":null,\"unarchive_value\":null,\"sort_field\":null,\"accountability\":\"all\",\"color\":\"#607D8B\",\"item_duplication_fields\":null,\"sort\":null,\"group\":null,\"collapse\":\"open\"}', '{\"icon\":\"location_city\",\"color\":\"#607D8B\"}', NULL),
(292, 295, 'directus_fields', '75', '{\"hidden\":false,\"interface\":\"select-dropdown-m2o\",\"options\":{\"template\":\"{{name}}\"},\"display\":\"related-values\",\"display_options\":{\"template\":\"{{name}}\"},\"readonly\":false,\"translations\":[{\"language\":\"en-US\",\"translation\":\"Adresse (ville)\"}],\"collection\":\"distribution_site\",\"field\":\"city\"}', '{\"hidden\":false,\"interface\":\"select-dropdown-m2o\",\"options\":{\"template\":\"{{name}}\"},\"display\":\"related-values\",\"display_options\":{\"template\":\"{{name}}\"},\"readonly\":false,\"translations\":[{\"language\":\"en-US\",\"translation\":\"Adresse (ville)\"}],\"collection\":\"distribution_site\",\"field\":\"city\"}', NULL),
(293, 296, 'directus_fields', '76', '{\"hidden\":false,\"interface\":\"select-dropdown-m2o\",\"options\":{\"template\":\"{{name}}\"},\"display\":\"related-values\",\"display_options\":{\"template\":\"{{name}}\"},\"readonly\":false,\"translations\":[{\"language\":\"fr-FR\",\"translation\":\"Adresse (ville)\"}],\"collection\":\"producer\",\"field\":\"city\"}', '{\"hidden\":false,\"interface\":\"select-dropdown-m2o\",\"options\":{\"template\":\"{{name}}\"},\"display\":\"related-values\",\"display_options\":{\"template\":\"{{name}}\"},\"readonly\":false,\"translations\":[{\"language\":\"fr-FR\",\"translation\":\"Adresse (ville)\"}],\"collection\":\"producer\",\"field\":\"city\"}', NULL),
(294, 297, 'directus_fields', '76', '{\"id\":76,\"collection\":\"producer\",\"field\":\"city\",\"special\":null,\"interface\":\"select-dropdown-m2o\",\"options\":{\"template\":\"{{name}}\"},\"display\":\"related-values\",\"display_options\":{\"template\":\"{{name}}\"},\"readonly\":false,\"hidden\":false,\"sort\":null,\"width\":\"half\",\"translations\":[{\"language\":\"fr-FR\",\"translation\":\"Adresse (ville)\"}],\"note\":null,\"conditions\":null,\"required\":false,\"group\":null}', '{\"collection\":\"producer\",\"field\":\"city\",\"width\":\"half\"}', NULL),
(295, 298, 'directus_fields', '15', '{\"id\":15,\"collection\":\"producer\",\"field\":\"id\",\"special\":null,\"interface\":\"input\",\"options\":null,\"display\":null,\"display_options\":null,\"readonly\":true,\"hidden\":true,\"sort\":1,\"width\":\"full\",\"translations\":null,\"note\":null,\"conditions\":null,\"required\":false,\"group\":null}', '{\"collection\":\"producer\",\"field\":\"id\",\"sort\":1,\"group\":null}', NULL),
(296, 299, 'directus_fields', '16', '{\"id\":16,\"collection\":\"producer\",\"field\":\"status\",\"special\":null,\"interface\":\"select-dropdown\",\"options\":{\"choices\":[{\"text\":\"$t:published\",\"value\":\"published\"},{\"text\":\"$t:draft\",\"value\":\"draft\"},{\"text\":\"$t:archived\",\"value\":\"archived\"}]},\"display\":\"labels\",\"display_options\":{\"showAsDot\":true,\"choices\":[{\"background\":\"#00C897\",\"value\":\"published\"},{\"background\":\"#D3DAE4\",\"value\":\"draft\"},{\"background\":\"#F7971C\",\"value\":\"archived\"}]},\"readonly\":false,\"hidden\":false,\"sort\":2,\"width\":\"full\",\"translations\":null,\"note\":null,\"conditions\":null,\"required\":false,\"group\":null}', '{\"collection\":\"producer\",\"field\":\"status\",\"sort\":2,\"group\":null}', NULL),
(297, 300, 'directus_fields', '17', '{\"id\":17,\"collection\":\"producer\",\"field\":\"date_created\",\"special\":[\"date-created\"],\"interface\":\"datetime\",\"options\":null,\"display\":\"datetime\",\"display_options\":{\"relative\":true},\"readonly\":true,\"hidden\":true,\"sort\":3,\"width\":\"half\",\"translations\":null,\"note\":null,\"conditions\":null,\"required\":false,\"group\":null}', '{\"collection\":\"producer\",\"field\":\"date_created\",\"sort\":3,\"group\":null}', NULL),
(298, 301, 'directus_fields', '18', '{\"id\":18,\"collection\":\"producer\",\"field\":\"date_updated\",\"special\":[\"date-updated\"],\"interface\":\"datetime\",\"options\":null,\"display\":\"datetime\",\"display_options\":{\"relative\":true},\"readonly\":true,\"hidden\":true,\"sort\":4,\"width\":\"half\",\"translations\":null,\"note\":null,\"conditions\":null,\"required\":false,\"group\":null}', '{\"collection\":\"producer\",\"field\":\"date_updated\",\"sort\":4,\"group\":null}', NULL),
(299, 302, 'directus_fields', '19', '{\"id\":19,\"collection\":\"producer\",\"field\":\"legal_status\",\"special\":null,\"interface\":\"select-dropdown\",\"options\":{\"choices\":[{\"text\":\"Auto entreprise\",\"value\":\"auto\"},{\"text\":\"SAS\",\"value\":\"sas\"},{\"text\":\"EIRL\",\"value\":\"eirl\"}]},\"display\":\"raw\",\"display_options\":null,\"readonly\":false,\"hidden\":false,\"sort\":5,\"width\":\"half\",\"translations\":[{\"language\":\"fr-FR\",\"translation\":\"Status Juridique\"}],\"note\":null,\"conditions\":null,\"required\":false,\"group\":null}', '{\"collection\":\"producer\",\"field\":\"legal_status\",\"sort\":5,\"group\":null}', NULL),
(300, 303, 'directus_fields', '20', '{\"id\":20,\"collection\":\"producer\",\"field\":\"name\",\"special\":null,\"interface\":\"input\",\"options\":null,\"display\":\"raw\",\"display_options\":null,\"readonly\":false,\"hidden\":false,\"sort\":6,\"width\":\"half\",\"translations\":[{\"language\":\"fr-FR\",\"translation\":\"Nom de l\'entreprise\"}],\"note\":null,\"conditions\":null,\"required\":false,\"group\":null}', '{\"collection\":\"producer\",\"field\":\"name\",\"sort\":6,\"group\":null}', NULL),
(301, 304, 'directus_fields', '21', '{\"id\":21,\"collection\":\"producer\",\"field\":\"date\",\"special\":null,\"interface\":\"datetime\",\"options\":null,\"display\":\"datetime\",\"display_options\":null,\"readonly\":false,\"hidden\":false,\"sort\":7,\"width\":\"full\",\"translations\":[{\"language\":\"fr-FR\",\"translation\":\"Date de l\'inscription\"}],\"note\":null,\"conditions\":null,\"required\":false,\"group\":null}', '{\"collection\":\"producer\",\"field\":\"date\",\"sort\":7,\"group\":null}', NULL),
(302, 305, 'directus_fields', '23', '{\"id\":23,\"collection\":\"producer\",\"field\":\"street\",\"special\":null,\"interface\":\"input\",\"options\":null,\"display\":\"raw\",\"display_options\":null,\"readonly\":false,\"hidden\":false,\"sort\":8,\"width\":\"half\",\"translations\":[{\"language\":\"fr-FR\",\"translation\":\"Adresse (rue)\"}],\"note\":null,\"conditions\":null,\"required\":false,\"group\":null}', '{\"collection\":\"producer\",\"field\":\"street\",\"sort\":8,\"group\":null}', NULL),
(303, 306, 'directus_fields', '76', '{\"id\":76,\"collection\":\"producer\",\"field\":\"city\",\"special\":null,\"interface\":\"select-dropdown-m2o\",\"options\":{\"template\":\"{{name}}\"},\"display\":\"related-values\",\"display_options\":{\"template\":\"{{name}}\"},\"readonly\":false,\"hidden\":false,\"sort\":9,\"width\":\"half\",\"translations\":[{\"language\":\"fr-FR\",\"translation\":\"Adresse (ville)\"}],\"note\":null,\"conditions\":null,\"required\":false,\"group\":null}', '{\"collection\":\"producer\",\"field\":\"city\",\"sort\":9,\"group\":null}', NULL),
(304, 307, 'directus_fields', '22', '{\"id\":22,\"collection\":\"producer\",\"field\":\"image\",\"special\":null,\"interface\":\"file-image\",\"options\":null,\"display\":\"image\",\"display_options\":null,\"readonly\":false,\"hidden\":false,\"sort\":10,\"width\":\"full\",\"translations\":[{\"language\":\"fr-FR\",\"translation\":\"Logo de l\'entreprise\"}],\"note\":null,\"conditions\":null,\"required\":false,\"group\":null}', '{\"collection\":\"producer\",\"field\":\"image\",\"sort\":10,\"group\":null}', NULL),
(305, 308, 'directus_fields', '77', '{\"hidden\":false,\"interface\":\"input\",\"options\":{\"min\":0},\"display\":\"raw\",\"display_options\":null,\"readonly\":false,\"special\":null,\"translations\":[{\"language\":\"fr-FR\",\"translation\":\"Code Postal\"}],\"collection\":\"city\",\"field\":\"postal_code\"}', '{\"hidden\":false,\"interface\":\"input\",\"options\":{\"min\":0},\"display\":\"raw\",\"display_options\":null,\"readonly\":false,\"special\":null,\"translations\":[{\"language\":\"fr-FR\",\"translation\":\"Code Postal\"}],\"collection\":\"city\",\"field\":\"postal_code\"}', NULL),
(306, 309, 'directus_fields', '56', '{\"id\":56,\"collection\":\"distribution_site\",\"field\":\"street\",\"special\":null,\"interface\":\"input\",\"options\":null,\"display\":\"raw\",\"display_options\":null,\"readonly\":false,\"hidden\":false,\"sort\":null,\"width\":\"half\",\"translations\":[{\"language\":\"fr-FR\",\"translation\":\"Adresse (rue)\"}],\"note\":null,\"conditions\":null,\"required\":false,\"group\":null}', '{\"collection\":\"distribution_site\",\"field\":\"street\",\"width\":\"half\"}', NULL),
(307, 310, 'directus_fields', '75', '{\"id\":75,\"collection\":\"distribution_site\",\"field\":\"city\",\"special\":null,\"interface\":\"select-dropdown-m2o\",\"options\":{\"template\":\"{{name}}\"},\"display\":\"related-values\",\"display_options\":{\"template\":\"{{name}}\"},\"readonly\":false,\"hidden\":false,\"sort\":null,\"width\":\"half\",\"translations\":[{\"language\":\"en-US\",\"translation\":\"Adresse (ville)\"}],\"note\":null,\"conditions\":null,\"required\":false,\"group\":null}', '{\"collection\":\"distribution_site\",\"field\":\"city\",\"width\":\"half\"}', NULL),
(308, 311, 'directus_fields', '75', '{\"id\":75,\"collection\":\"distribution_site\",\"field\":\"city\",\"special\":null,\"interface\":\"select-dropdown-m2o\",\"options\":{\"template\":\"{{name}}-{{postal_code}}\"},\"display\":\"related-values\",\"display_options\":{\"template\":\"{{name}}\"},\"readonly\":false,\"hidden\":false,\"sort\":null,\"width\":\"half\",\"translations\":[{\"language\":\"en-US\",\"translation\":\"Adresse (ville)\"}],\"note\":null,\"conditions\":null,\"required\":false,\"group\":null}', '{\"collection\":\"distribution_site\",\"field\":\"city\",\"special\":null,\"interface\":\"select-dropdown-m2o\",\"options\":{\"template\":\"{{name}}-{{postal_code}}\"},\"display\":\"related-values\",\"display_options\":{\"template\":\"{{name}}\"},\"readonly\":false,\"hidden\":false,\"sort\":null,\"width\":\"half\",\"translations\":[{\"language\":\"en-US\",\"translation\":\"Adresse (ville)\"}],\"note\":null,\"conditions\":null,\"required\":false,\"group\":null}', NULL),
(309, 312, 'directus_fields', '76', '{\"id\":76,\"collection\":\"producer\",\"field\":\"city\",\"special\":null,\"interface\":\"select-dropdown-m2o\",\"options\":{\"template\":\"{{name}}- {{postal_code}}\"},\"display\":\"related-values\",\"display_options\":{\"template\":\"{{name}}- {{postal_code}}\"},\"readonly\":false,\"hidden\":false,\"sort\":9,\"width\":\"half\",\"translations\":[{\"language\":\"fr-FR\",\"translation\":\"Adresse (ville)\"}],\"note\":null,\"conditions\":null,\"required\":false,\"group\":null}', '{\"collection\":\"producer\",\"field\":\"city\",\"special\":null,\"interface\":\"select-dropdown-m2o\",\"options\":{\"template\":\"{{name}}- {{postal_code}}\"},\"display\":\"related-values\",\"display_options\":{\"template\":\"{{name}}- {{postal_code}}\"},\"readonly\":false,\"hidden\":false,\"sort\":9,\"width\":\"half\",\"translations\":[{\"language\":\"fr-FR\",\"translation\":\"Adresse (ville)\"}],\"note\":null,\"conditions\":null,\"required\":false,\"group\":null}', NULL),
(310, 313, 'directus_fields', '78', '{\"hidden\":false,\"interface\":\"input\",\"display\":\"raw\",\"readonly\":false,\"translations\":[{\"language\":\"fr-FR\",\"translation\":\"Adresse (rue)\"}],\"collection\":\"association\",\"field\":\"street\"}', '{\"hidden\":false,\"interface\":\"input\",\"display\":\"raw\",\"readonly\":false,\"translations\":[{\"language\":\"fr-FR\",\"translation\":\"Adresse (rue)\"}],\"collection\":\"association\",\"field\":\"street\"}', NULL),
(311, 314, 'directus_fields', '78', '{\"id\":78,\"collection\":\"association\",\"field\":\"street\",\"special\":null,\"interface\":\"input\",\"options\":null,\"display\":\"raw\",\"display_options\":null,\"readonly\":false,\"hidden\":false,\"sort\":null,\"width\":\"half\",\"translations\":[{\"language\":\"fr-FR\",\"translation\":\"Adresse (rue)\"}],\"note\":null,\"conditions\":null,\"required\":false,\"group\":null}', '{\"collection\":\"association\",\"field\":\"street\",\"width\":\"half\"}', NULL),
(312, 315, 'directus_fields', '79', '{\"hidden\":false,\"interface\":\"select-dropdown-m2o\",\"options\":{\"template\":\"{{postal_code}} - {{name}}\"},\"display\":\"related-values\",\"display_options\":{\"template\":\"{{postal_code}} - {{name}}\"},\"readonly\":false,\"translations\":[{\"language\":\"fr-FR\",\"translation\":\"Adresse (ville)\"}],\"collection\":\"association\",\"field\":\"city\"}', '{\"hidden\":false,\"interface\":\"select-dropdown-m2o\",\"options\":{\"template\":\"{{postal_code}} - {{name}}\"},\"display\":\"related-values\",\"display_options\":{\"template\":\"{{postal_code}} - {{name}}\"},\"readonly\":false,\"translations\":[{\"language\":\"fr-FR\",\"translation\":\"Adresse (ville)\"}],\"collection\":\"association\",\"field\":\"city\"}', NULL),
(313, 316, 'directus_fields', '79', '{\"id\":79,\"collection\":\"association\",\"field\":\"city\",\"special\":null,\"interface\":\"select-dropdown-m2o\",\"options\":{\"template\":\"{{postal_code}} - {{name}}\"},\"display\":\"related-values\",\"display_options\":{\"template\":\"{{postal_code}} - {{name}}\"},\"readonly\":false,\"hidden\":false,\"sort\":null,\"width\":\"half\",\"translations\":[{\"language\":\"fr-FR\",\"translation\":\"Adresse (ville)\"}],\"note\":null,\"conditions\":null,\"required\":false,\"group\":null}', '{\"collection\":\"association\",\"field\":\"city\",\"width\":\"half\"}', NULL),
(314, 317, 'directus_fields', '76', '{\"id\":76,\"collection\":\"producer\",\"field\":\"city\",\"special\":null,\"interface\":\"select-dropdown-m2o\",\"options\":{\"template\":\"{{postal_code}} - {{name}}\"},\"display\":\"related-values\",\"display_options\":{\"template\":\"{{name}}- {{postal_code}}\"},\"readonly\":false,\"hidden\":false,\"sort\":9,\"width\":\"half\",\"translations\":[{\"language\":\"fr-FR\",\"translation\":\"Adresse (ville)\"}],\"note\":null,\"conditions\":null,\"required\":false,\"group\":null}', '{\"collection\":\"producer\",\"field\":\"city\",\"special\":null,\"interface\":\"select-dropdown-m2o\",\"options\":{\"template\":\"{{postal_code}} - {{name}}\"},\"display\":\"related-values\",\"display_options\":{\"template\":\"{{name}}- {{postal_code}}\"},\"readonly\":false,\"hidden\":false,\"sort\":9,\"width\":\"half\",\"translations\":[{\"language\":\"fr-FR\",\"translation\":\"Adresse (ville)\"}],\"note\":null,\"conditions\":null,\"required\":false,\"group\":null}', NULL),
(315, 318, 'directus_fields', '76', '{\"id\":76,\"collection\":\"producer\",\"field\":\"city\",\"special\":null,\"interface\":\"select-dropdown-m2o\",\"options\":{\"template\":\"{{postal_code}} - {{name}}\"},\"display\":\"related-values\",\"display_options\":{\"template\":\"{{postal_code}}- {{name}}\"},\"readonly\":false,\"hidden\":false,\"sort\":9,\"width\":\"half\",\"translations\":[{\"language\":\"fr-FR\",\"translation\":\"Adresse (ville)\"}],\"note\":null,\"conditions\":null,\"required\":false,\"group\":null}', '{\"collection\":\"producer\",\"field\":\"city\",\"special\":null,\"interface\":\"select-dropdown-m2o\",\"options\":{\"template\":\"{{postal_code}} - {{name}}\"},\"display\":\"related-values\",\"display_options\":{\"template\":\"{{postal_code}}- {{name}}\"},\"readonly\":false,\"hidden\":false,\"sort\":9,\"width\":\"half\",\"translations\":[{\"language\":\"fr-FR\",\"translation\":\"Adresse (ville)\"}],\"note\":null,\"conditions\":null,\"required\":false,\"group\":null}', NULL),
(316, 319, 'directus_fields', '75', '{\"id\":75,\"collection\":\"distribution_site\",\"field\":\"city\",\"special\":null,\"interface\":\"select-dropdown-m2o\",\"options\":{\"template\":\"{{postal_code}} - {{name}}\"},\"display\":\"related-values\",\"display_options\":{\"template\":\"{{name}}\"},\"readonly\":false,\"hidden\":false,\"sort\":null,\"width\":\"half\",\"translations\":[{\"language\":\"en-US\",\"translation\":\"Adresse (ville)\"}],\"note\":null,\"conditions\":null,\"required\":false,\"group\":null}', '{\"collection\":\"distribution_site\",\"field\":\"city\",\"special\":null,\"interface\":\"select-dropdown-m2o\",\"options\":{\"template\":\"{{postal_code}} - {{name}}\"},\"display\":\"related-values\",\"display_options\":{\"template\":\"{{name}}\"},\"readonly\":false,\"hidden\":false,\"sort\":null,\"width\":\"half\",\"translations\":[{\"language\":\"en-US\",\"translation\":\"Adresse (ville)\"}],\"note\":null,\"conditions\":null,\"required\":false,\"group\":null}', NULL),
(317, 320, 'directus_fields', '75', '{\"id\":75,\"collection\":\"distribution_site\",\"field\":\"city\",\"special\":null,\"interface\":\"select-dropdown-m2o\",\"options\":{\"template\":\"{{postal_code}} - {{name}}\"},\"display\":\"related-values\",\"display_options\":{\"template\":\"{{postal_code}} - {{name}}\"},\"readonly\":false,\"hidden\":false,\"sort\":null,\"width\":\"half\",\"translations\":[{\"language\":\"en-US\",\"translation\":\"Adresse (ville)\"}],\"note\":null,\"conditions\":null,\"required\":false,\"group\":null}', '{\"collection\":\"distribution_site\",\"field\":\"city\",\"special\":null,\"interface\":\"select-dropdown-m2o\",\"options\":{\"template\":\"{{postal_code}} - {{name}}\"},\"display\":\"related-values\",\"display_options\":{\"template\":\"{{postal_code}} - {{name}}\"},\"readonly\":false,\"hidden\":false,\"sort\":null,\"width\":\"half\",\"translations\":[{\"language\":\"en-US\",\"translation\":\"Adresse (ville)\"}],\"note\":null,\"conditions\":null,\"required\":false,\"group\":null}', NULL),
(318, 321, 'directus_collections', 'order', '{\"archive_field\":\"status\",\"archive_value\":\"archived\",\"unarchive_value\":\"draft\",\"singleton\":false,\"collection\":\"order\"}', '{\"archive_field\":\"status\",\"archive_value\":\"archived\",\"unarchive_value\":\"draft\",\"singleton\":false,\"collection\":\"order\"}', NULL),
(319, 322, 'directus_fields', '80', '{\"hidden\":true,\"interface\":\"input\",\"readonly\":true,\"field\":\"id\",\"collection\":\"order\"}', '{\"hidden\":true,\"interface\":\"input\",\"readonly\":true,\"field\":\"id\",\"collection\":\"order\"}', NULL),
(320, 323, 'directus_fields', '81', '{\"width\":\"full\",\"options\":{\"choices\":[{\"text\":\"$t:published\",\"value\":\"published\"},{\"text\":\"$t:draft\",\"value\":\"draft\"},{\"text\":\"$t:archived\",\"value\":\"archived\"}]},\"interface\":\"select-dropdown\",\"display\":\"labels\",\"display_options\":{\"showAsDot\":true,\"choices\":[{\"background\":\"#00C897\",\"value\":\"published\"},{\"background\":\"#D3DAE4\",\"value\":\"draft\"},{\"background\":\"#F7971C\",\"value\":\"archived\"}]},\"field\":\"status\",\"collection\":\"order\"}', '{\"width\":\"full\",\"options\":{\"choices\":[{\"text\":\"$t:published\",\"value\":\"published\"},{\"text\":\"$t:draft\",\"value\":\"draft\"},{\"text\":\"$t:archived\",\"value\":\"archived\"}]},\"interface\":\"select-dropdown\",\"display\":\"labels\",\"display_options\":{\"showAsDot\":true,\"choices\":[{\"background\":\"#00C897\",\"value\":\"published\"},{\"background\":\"#D3DAE4\",\"value\":\"draft\"},{\"background\":\"#F7971C\",\"value\":\"archived\"}]},\"field\":\"status\",\"collection\":\"order\"}', NULL),
(321, 324, 'directus_fields', '82', '{\"special\":\"date-created\",\"interface\":\"datetime\",\"readonly\":true,\"hidden\":true,\"width\":\"half\",\"display\":\"datetime\",\"display_options\":{\"relative\":true},\"field\":\"date_created\",\"collection\":\"order\"}', '{\"special\":\"date-created\",\"interface\":\"datetime\",\"readonly\":true,\"hidden\":true,\"width\":\"half\",\"display\":\"datetime\",\"display_options\":{\"relative\":true},\"field\":\"date_created\",\"collection\":\"order\"}', NULL),
(322, 325, 'directus_fields', '83', '{\"special\":\"date-updated\",\"interface\":\"datetime\",\"readonly\":true,\"hidden\":true,\"width\":\"half\",\"display\":\"datetime\",\"display_options\":{\"relative\":true},\"field\":\"date_updated\",\"collection\":\"order\"}', '{\"special\":\"date-updated\",\"interface\":\"datetime\",\"readonly\":true,\"hidden\":true,\"width\":\"half\",\"display\":\"datetime\",\"display_options\":{\"relative\":true},\"field\":\"date_updated\",\"collection\":\"order\"}', NULL),
(323, 326, 'directus_collections', 'order', '{\"collection\":\"order\",\"icon\":\"shopping_cart\",\"note\":null,\"display_template\":null,\"hidden\":false,\"singleton\":false,\"translations\":null,\"archive_field\":\"status\",\"archive_app_filter\":true,\"archive_value\":\"archived\",\"unarchive_value\":\"draft\",\"sort_field\":null,\"accountability\":\"all\",\"color\":\"#E35169\",\"item_duplication_fields\":null,\"sort\":null,\"group\":null,\"collapse\":\"open\"}', '{\"icon\":\"shopping_cart\",\"color\":\"#E35169\"}', NULL),
(324, 327, 'directus_fields', '84', '{\"hidden\":false,\"interface\":\"select-dropdown-m2o\",\"options\":{\"template\":\"{{date}}\"},\"display\":\"related-values\",\"display_options\":{\"template\":\"{{date}}\"},\"readonly\":false,\"translations\":null,\"collection\":\"order\",\"field\":\"ditribution\"}', '{\"hidden\":false,\"interface\":\"select-dropdown-m2o\",\"options\":{\"template\":\"{{date}}\"},\"display\":\"related-values\",\"display_options\":{\"template\":\"{{date}}\"},\"readonly\":false,\"translations\":null,\"collection\":\"order\",\"field\":\"ditribution\"}', NULL),
(325, 328, 'directus_fields', '85', '{\"hidden\":false,\"interface\":\"select-dropdown-m2o\",\"options\":{\"template\":\"{{name}}\"},\"display\":\"related-values\",\"display_options\":{\"template\":\"{{name}}\"},\"readonly\":false,\"collection\":\"distribution\",\"field\":\"association\"}', '{\"hidden\":false,\"interface\":\"select-dropdown-m2o\",\"options\":{\"template\":\"{{name}}\"},\"display\":\"related-values\",\"display_options\":{\"template\":\"{{name}}\"},\"readonly\":false,\"collection\":\"distribution\",\"field\":\"association\"}', NULL),
(326, 329, 'directus_fields', '86', '{\"hidden\":false,\"interface\":\"select-dropdown-m2o\",\"options\":{\"template\":\"{{first_name}} {{last_name}}\"},\"display\":\"related-values\",\"display_options\":{\"template\":\"{{first_name}} {{last_name}}\"},\"readonly\":false,\"translations\":[{\"language\":\"fr-FR\",\"translation\":\"Adhérent\"}],\"collection\":\"order\",\"field\":\"member\"}', '{\"hidden\":false,\"interface\":\"select-dropdown-m2o\",\"options\":{\"template\":\"{{first_name}} {{last_name}}\"},\"display\":\"related-values\",\"display_options\":{\"template\":\"{{first_name}} {{last_name}}\"},\"readonly\":false,\"translations\":[{\"language\":\"fr-FR\",\"translation\":\"Adhérent\"}],\"collection\":\"order\",\"field\":\"member\"}', NULL),
(327, 330, 'directus_collections', 'order_product', '{\"archive_field\":\"status\",\"archive_value\":\"archived\",\"unarchive_value\":\"draft\",\"singleton\":false,\"collection\":\"order_product\"}', '{\"archive_field\":\"status\",\"archive_value\":\"archived\",\"unarchive_value\":\"draft\",\"singleton\":false,\"collection\":\"order_product\"}', NULL),
(328, 331, 'directus_fields', '87', '{\"hidden\":true,\"interface\":\"input\",\"readonly\":true,\"field\":\"id\",\"collection\":\"order_product\"}', '{\"hidden\":true,\"interface\":\"input\",\"readonly\":true,\"field\":\"id\",\"collection\":\"order_product\"}', NULL),
(329, 332, 'directus_fields', '88', '{\"width\":\"full\",\"options\":{\"choices\":[{\"text\":\"$t:published\",\"value\":\"published\"},{\"text\":\"$t:draft\",\"value\":\"draft\"},{\"text\":\"$t:archived\",\"value\":\"archived\"}]},\"interface\":\"select-dropdown\",\"display\":\"labels\",\"display_options\":{\"showAsDot\":true,\"choices\":[{\"background\":\"#00C897\",\"value\":\"published\"},{\"background\":\"#D3DAE4\",\"value\":\"draft\"},{\"background\":\"#F7971C\",\"value\":\"archived\"}]},\"field\":\"status\",\"collection\":\"order_product\"}', '{\"width\":\"full\",\"options\":{\"choices\":[{\"text\":\"$t:published\",\"value\":\"published\"},{\"text\":\"$t:draft\",\"value\":\"draft\"},{\"text\":\"$t:archived\",\"value\":\"archived\"}]},\"interface\":\"select-dropdown\",\"display\":\"labels\",\"display_options\":{\"showAsDot\":true,\"choices\":[{\"background\":\"#00C897\",\"value\":\"published\"},{\"background\":\"#D3DAE4\",\"value\":\"draft\"},{\"background\":\"#F7971C\",\"value\":\"archived\"}]},\"field\":\"status\",\"collection\":\"order_product\"}', NULL),
(330, 333, 'directus_fields', '89', '{\"special\":\"date-created\",\"interface\":\"datetime\",\"readonly\":true,\"hidden\":true,\"width\":\"half\",\"display\":\"datetime\",\"display_options\":{\"relative\":true},\"field\":\"date_created\",\"collection\":\"order_product\"}', '{\"special\":\"date-created\",\"interface\":\"datetime\",\"readonly\":true,\"hidden\":true,\"width\":\"half\",\"display\":\"datetime\",\"display_options\":{\"relative\":true},\"field\":\"date_created\",\"collection\":\"order_product\"}', NULL),
(331, 334, 'directus_fields', '90', '{\"special\":\"date-updated\",\"interface\":\"datetime\",\"readonly\":true,\"hidden\":true,\"width\":\"half\",\"display\":\"datetime\",\"display_options\":{\"relative\":true},\"field\":\"date_updated\",\"collection\":\"order_product\"}', '{\"special\":\"date-updated\",\"interface\":\"datetime\",\"readonly\":true,\"hidden\":true,\"width\":\"half\",\"display\":\"datetime\",\"display_options\":{\"relative\":true},\"field\":\"date_updated\",\"collection\":\"order_product\"}', NULL),
(332, 335, 'directus_collections', 'order_product', '{\"collection\":\"order_product\",\"icon\":\"add_shopping_cart\",\"note\":null,\"display_template\":null,\"hidden\":false,\"singleton\":false,\"translations\":[{\"language\":\"fr-FR\",\"translation\":\"Produits de la commande\"}],\"archive_field\":\"status\",\"archive_app_filter\":true,\"archive_value\":\"archived\",\"unarchive_value\":\"draft\",\"sort_field\":null,\"accountability\":\"all\",\"color\":\"#E35169\",\"item_duplication_fields\":null,\"sort\":null,\"group\":null,\"collapse\":\"open\"}', '{\"icon\":\"add_shopping_cart\",\"translations\":[{\"language\":\"fr-FR\",\"translation\":\"Produits de la commande\"}],\"color\":\"#E35169\"}', NULL),
(333, 336, 'directus_collections', 'order_product', '{\"collection\":\"order_product\",\"icon\":\"add_shopping_cart\",\"note\":null,\"display_template\":null,\"hidden\":false,\"singleton\":false,\"translations\":[{\"language\":\"fr-FR\",\"translation\":\"Produits de la commande\"}],\"archive_field\":\"status\",\"archive_app_filter\":true,\"archive_value\":\"archived\",\"unarchive_value\":\"draft\",\"sort_field\":null,\"accountability\":\"all\",\"color\":\"#E35169\",\"item_duplication_fields\":null,\"sort\":1,\"group\":\"order\",\"collapse\":\"open\"}', '{\"sort\":1,\"group\":\"order\"}', NULL),
(334, 337, 'directus_collections', 'association', '{\"collection\":\"association\",\"icon\":\"people_alt\",\"note\":null,\"display_template\":null,\"hidden\":false,\"singleton\":false,\"translations\":[{\"language\":\"fr-FR\",\"translation\":\"Association\"}],\"archive_field\":\"status\",\"archive_app_filter\":true,\"archive_value\":\"archived\",\"unarchive_value\":\"draft\",\"sort_field\":null,\"accountability\":\"all\",\"color\":\"#F7971C\",\"item_duplication_fields\":null,\"sort\":1,\"group\":null,\"collapse\":\"open\"}', '{\"sort\":1,\"group\":null}', NULL),
(335, 338, 'directus_collections', 'distribution_site', '{\"collection\":\"distribution_site\",\"icon\":\"storefront\",\"note\":null,\"display_template\":null,\"hidden\":false,\"singleton\":false,\"translations\":[{\"language\":\"fr-FR\",\"translation\":\"Lieu de distribution\"}],\"archive_field\":\"status\",\"archive_app_filter\":true,\"archive_value\":\"archived\",\"unarchive_value\":\"draft\",\"sort_field\":null,\"accountability\":\"all\",\"color\":\"#9E8DE4\",\"item_duplication_fields\":null,\"sort\":2,\"group\":null,\"collapse\":\"open\"}', '{\"sort\":2,\"group\":null}', NULL),
(336, 339, 'directus_collections', 'producer', '{\"collection\":\"producer\",\"icon\":\"store_mall_directory\",\"note\":null,\"display_template\":null,\"hidden\":false,\"singleton\":false,\"translations\":[{\"language\":\"fr-FR\",\"translation\":\"Producteur\"}],\"archive_field\":\"status\",\"archive_app_filter\":true,\"archive_value\":\"archived\",\"unarchive_value\":\"draft\",\"sort_field\":null,\"accountability\":\"all\",\"color\":\"#00C897\",\"item_duplication_fields\":null,\"sort\":3,\"group\":null,\"collapse\":\"open\"}', '{\"sort\":3,\"group\":null}', NULL),
(337, 340, 'directus_collections', 'products', '{\"collection\":\"products\",\"icon\":\"spa\",\"note\":null,\"display_template\":null,\"hidden\":false,\"singleton\":false,\"translations\":[{\"language\":\"fr-FR\",\"translation\":\"Produit\"}],\"archive_field\":\"status\",\"archive_app_filter\":true,\"archive_value\":\"archived\",\"unarchive_value\":\"draft\",\"sort_field\":\"sort\",\"accountability\":\"all\",\"color\":\"#68B0F4\",\"item_duplication_fields\":null,\"sort\":4,\"group\":null,\"collapse\":\"open\"}', '{\"sort\":4,\"group\":null}', NULL),
(338, 342, 'directus_collections', 'order', '{\"collection\":\"order\",\"icon\":\"shopping_cart\",\"note\":null,\"display_template\":null,\"hidden\":false,\"singleton\":false,\"translations\":null,\"archive_field\":\"status\",\"archive_app_filter\":true,\"archive_value\":\"archived\",\"unarchive_value\":\"draft\",\"sort_field\":null,\"accountability\":\"all\",\"color\":\"#E35169\",\"item_duplication_fields\":null,\"sort\":6,\"group\":null,\"collapse\":\"open\"}', '{\"sort\":6,\"group\":null}', NULL),
(339, 341, 'directus_collections', 'city', '{\"collection\":\"city\",\"icon\":\"location_city\",\"note\":null,\"display_template\":null,\"hidden\":false,\"singleton\":false,\"translations\":null,\"archive_field\":null,\"archive_app_filter\":true,\"archive_value\":null,\"unarchive_value\":null,\"sort_field\":null,\"accountability\":\"all\",\"color\":\"#607D8B\",\"item_duplication_fields\":null,\"sort\":5,\"group\":null,\"collapse\":\"open\"}', '{\"sort\":5,\"group\":null}', NULL),
(340, 343, 'directus_collections', 'order', '{\"collection\":\"order\",\"icon\":\"shopping_cart\",\"note\":null,\"display_template\":null,\"hidden\":false,\"singleton\":false,\"translations\":[{\"language\":\"fr-FR\",\"translation\":\"Commande\"}],\"archive_field\":\"status\",\"archive_app_filter\":true,\"archive_value\":\"archived\",\"unarchive_value\":\"draft\",\"sort_field\":null,\"accountability\":\"all\",\"color\":\"#E35169\",\"item_duplication_fields\":null,\"sort\":6,\"group\":null,\"collapse\":\"open\"}', '{\"translations\":[{\"language\":\"fr-FR\",\"translation\":\"Commande\"}]}', NULL),
(341, 344, 'directus_collections', 'city', '{\"collection\":\"city\",\"icon\":\"location_city\",\"note\":null,\"display_template\":null,\"hidden\":false,\"singleton\":false,\"translations\":[{\"language\":\"fr-FR\",\"translation\":\"Ville\"}],\"archive_field\":null,\"archive_app_filter\":true,\"archive_value\":null,\"unarchive_value\":null,\"sort_field\":null,\"accountability\":\"all\",\"color\":\"#607D8B\",\"item_duplication_fields\":null,\"sort\":5,\"group\":null,\"collapse\":\"open\"}', '{\"translations\":[{\"language\":\"fr-FR\",\"translation\":\"Ville\"}]}', NULL),
(342, 345, 'directus_collections', 'order', '{\"collection\":\"order\",\"icon\":\"shopping_cart\",\"note\":null,\"display_template\":null,\"hidden\":false,\"singleton\":false,\"translations\":[{\"language\":\"fr-FR\",\"translation\":\"Commande\"}],\"archive_field\":\"status\",\"archive_app_filter\":true,\"archive_value\":\"archived\",\"unarchive_value\":\"draft\",\"sort_field\":null,\"accountability\":\"all\",\"color\":\"#E35169\",\"item_duplication_fields\":null,\"sort\":1,\"group\":\"city\",\"collapse\":\"open\"}', '{\"sort\":1,\"group\":\"city\"}', NULL),
(343, 346, 'directus_collections', 'association', '{\"collection\":\"association\",\"icon\":\"people_alt\",\"note\":null,\"display_template\":null,\"hidden\":false,\"singleton\":false,\"translations\":[{\"language\":\"fr-FR\",\"translation\":\"Association\"}],\"archive_field\":\"status\",\"archive_app_filter\":true,\"archive_value\":\"archived\",\"unarchive_value\":\"draft\",\"sort_field\":null,\"accountability\":\"all\",\"color\":\"#F7971C\",\"item_duplication_fields\":null,\"sort\":1,\"group\":null,\"collapse\":\"open\"}', '{\"sort\":1,\"group\":null}', NULL),
(344, 347, 'directus_collections', 'products', '{\"collection\":\"products\",\"icon\":\"spa\",\"note\":null,\"display_template\":null,\"hidden\":false,\"singleton\":false,\"translations\":[{\"language\":\"fr-FR\",\"translation\":\"Produit\"}],\"archive_field\":\"status\",\"archive_app_filter\":true,\"archive_value\":\"archived\",\"unarchive_value\":\"draft\",\"sort_field\":\"sort\",\"accountability\":\"all\",\"color\":\"#68B0F4\",\"item_duplication_fields\":null,\"sort\":4,\"group\":null,\"collapse\":\"open\"}', '{\"sort\":4,\"group\":null}', NULL),
(345, 348, 'directus_collections', 'distribution_site', '{\"collection\":\"distribution_site\",\"icon\":\"storefront\",\"note\":null,\"display_template\":null,\"hidden\":false,\"singleton\":false,\"translations\":[{\"language\":\"fr-FR\",\"translation\":\"Lieu de distribution\"}],\"archive_field\":\"status\",\"archive_app_filter\":true,\"archive_value\":\"archived\",\"unarchive_value\":\"draft\",\"sort_field\":null,\"accountability\":\"all\",\"color\":\"#9E8DE4\",\"item_duplication_fields\":null,\"sort\":2,\"group\":null,\"collapse\":\"open\"}', '{\"sort\":2,\"group\":null}', NULL),
(346, 349, 'directus_collections', 'producer', '{\"collection\":\"producer\",\"icon\":\"store_mall_directory\",\"note\":null,\"display_template\":null,\"hidden\":false,\"singleton\":false,\"translations\":[{\"language\":\"fr-FR\",\"translation\":\"Producteur\"}],\"archive_field\":\"status\",\"archive_app_filter\":true,\"archive_value\":\"archived\",\"unarchive_value\":\"draft\",\"sort_field\":null,\"accountability\":\"all\",\"color\":\"#00C897\",\"item_duplication_fields\":null,\"sort\":3,\"group\":null,\"collapse\":\"open\"}', '{\"sort\":3,\"group\":null}', NULL),
(347, 350, 'directus_collections', 'city', '{\"collection\":\"city\",\"icon\":\"location_city\",\"note\":null,\"display_template\":null,\"hidden\":false,\"singleton\":false,\"translations\":[{\"language\":\"fr-FR\",\"translation\":\"Ville\"}],\"archive_field\":null,\"archive_app_filter\":true,\"archive_value\":null,\"unarchive_value\":null,\"sort_field\":null,\"accountability\":\"all\",\"color\":\"#607D8B\",\"item_duplication_fields\":null,\"sort\":5,\"group\":null,\"collapse\":\"open\"}', '{\"sort\":5,\"group\":null}', NULL);
INSERT INTO `directus_revisions` (`id`, `activity`, `collection`, `item`, `data`, `delta`, `parent`) VALUES
(348, 351, 'directus_collections', 'distribution_site', '{\"collection\":\"distribution_site\",\"icon\":\"storefront\",\"note\":null,\"display_template\":null,\"hidden\":false,\"singleton\":false,\"translations\":[{\"language\":\"fr-FR\",\"translation\":\"Lieu de distribution\"}],\"archive_field\":\"status\",\"archive_app_filter\":true,\"archive_value\":\"archived\",\"unarchive_value\":\"draft\",\"sort_field\":null,\"accountability\":\"all\",\"color\":\"#9E8DE4\",\"item_duplication_fields\":null,\"sort\":3,\"group\":null,\"collapse\":\"open\"}', '{\"sort\":3,\"group\":null}', NULL),
(349, 352, 'directus_collections', 'producer', '{\"collection\":\"producer\",\"icon\":\"store_mall_directory\",\"note\":null,\"display_template\":null,\"hidden\":false,\"singleton\":false,\"translations\":[{\"language\":\"fr-FR\",\"translation\":\"Producteur\"}],\"archive_field\":\"status\",\"archive_app_filter\":true,\"archive_value\":\"archived\",\"unarchive_value\":\"draft\",\"sort_field\":null,\"accountability\":\"all\",\"color\":\"#00C897\",\"item_duplication_fields\":null,\"sort\":2,\"group\":null,\"collapse\":\"open\"}', '{\"sort\":2,\"group\":null}', NULL),
(350, 353, 'directus_collections', 'association', '{\"collection\":\"association\",\"icon\":\"people_alt\",\"note\":null,\"display_template\":null,\"hidden\":false,\"singleton\":false,\"translations\":[{\"language\":\"fr-FR\",\"translation\":\"Association\"}],\"archive_field\":\"status\",\"archive_app_filter\":true,\"archive_value\":\"archived\",\"unarchive_value\":\"draft\",\"sort_field\":null,\"accountability\":\"all\",\"color\":\"#F7971C\",\"item_duplication_fields\":null,\"sort\":1,\"group\":null,\"collapse\":\"open\"}', '{\"sort\":1,\"group\":null}', NULL),
(351, 354, 'directus_collections', 'city', '{\"collection\":\"city\",\"icon\":\"location_city\",\"note\":null,\"display_template\":null,\"hidden\":false,\"singleton\":false,\"translations\":[{\"language\":\"fr-FR\",\"translation\":\"Ville\"}],\"archive_field\":null,\"archive_app_filter\":true,\"archive_value\":null,\"unarchive_value\":null,\"sort_field\":null,\"accountability\":\"all\",\"color\":\"#607D8B\",\"item_duplication_fields\":null,\"sort\":5,\"group\":null,\"collapse\":\"open\"}', '{\"sort\":5,\"group\":null}', NULL),
(352, 355, 'directus_collections', 'products', '{\"collection\":\"products\",\"icon\":\"spa\",\"note\":null,\"display_template\":null,\"hidden\":false,\"singleton\":false,\"translations\":[{\"language\":\"fr-FR\",\"translation\":\"Produit\"}],\"archive_field\":\"status\",\"archive_app_filter\":true,\"archive_value\":\"archived\",\"unarchive_value\":\"draft\",\"sort_field\":\"sort\",\"accountability\":\"all\",\"color\":\"#68B0F4\",\"item_duplication_fields\":null,\"sort\":4,\"group\":null,\"collapse\":\"open\"}', '{\"sort\":4,\"group\":null}', NULL),
(353, 356, 'directus_collections', 'producer', '{\"collection\":\"producer\",\"icon\":\"store_mall_directory\",\"note\":null,\"display_template\":null,\"hidden\":false,\"singleton\":false,\"translations\":[{\"language\":\"fr-FR\",\"translation\":\"Producteur\"}],\"archive_field\":\"status\",\"archive_app_filter\":true,\"archive_value\":\"archived\",\"unarchive_value\":\"draft\",\"sort_field\":null,\"accountability\":\"all\",\"color\":\"#00C897\",\"item_duplication_fields\":null,\"sort\":2,\"group\":null,\"collapse\":\"open\"}', '{\"sort\":2,\"group\":null}', NULL),
(354, 357, 'directus_collections', 'distribution_site', '{\"collection\":\"distribution_site\",\"icon\":\"storefront\",\"note\":null,\"display_template\":null,\"hidden\":false,\"singleton\":false,\"translations\":[{\"language\":\"fr-FR\",\"translation\":\"Lieu de distribution\"}],\"archive_field\":\"status\",\"archive_app_filter\":true,\"archive_value\":\"archived\",\"unarchive_value\":\"draft\",\"sort_field\":null,\"accountability\":\"all\",\"color\":\"#9E8DE4\",\"item_duplication_fields\":null,\"sort\":3,\"group\":null,\"collapse\":\"open\"}', '{\"sort\":3,\"group\":null}', NULL),
(355, 358, 'directus_collections', 'products', '{\"collection\":\"products\",\"icon\":\"spa\",\"note\":null,\"display_template\":null,\"hidden\":false,\"singleton\":false,\"translations\":[{\"language\":\"fr-FR\",\"translation\":\"Produit\"}],\"archive_field\":\"status\",\"archive_app_filter\":true,\"archive_value\":\"archived\",\"unarchive_value\":\"draft\",\"sort_field\":\"sort\",\"accountability\":\"all\",\"color\":\"#68B0F4\",\"item_duplication_fields\":null,\"sort\":4,\"group\":null,\"collapse\":\"open\"}', '{\"sort\":4,\"group\":null}', NULL),
(356, 360, 'directus_collections', 'association', '{\"collection\":\"association\",\"icon\":\"people_alt\",\"note\":null,\"display_template\":null,\"hidden\":false,\"singleton\":false,\"translations\":[{\"language\":\"fr-FR\",\"translation\":\"Association\"}],\"archive_field\":\"status\",\"archive_app_filter\":true,\"archive_value\":\"archived\",\"unarchive_value\":\"draft\",\"sort_field\":null,\"accountability\":\"all\",\"color\":\"#F7971C\",\"item_duplication_fields\":null,\"sort\":1,\"group\":null,\"collapse\":\"open\"}', '{\"sort\":1,\"group\":null}', NULL),
(357, 359, 'directus_collections', 'city', '{\"collection\":\"city\",\"icon\":\"location_city\",\"note\":null,\"display_template\":null,\"hidden\":false,\"singleton\":false,\"translations\":[{\"language\":\"fr-FR\",\"translation\":\"Ville\"}],\"archive_field\":null,\"archive_app_filter\":true,\"archive_value\":null,\"unarchive_value\":null,\"sort_field\":null,\"accountability\":\"all\",\"color\":\"#607D8B\",\"item_duplication_fields\":null,\"sort\":5,\"group\":null,\"collapse\":\"open\"}', '{\"sort\":5,\"group\":null}', NULL),
(358, 361, 'directus_collections', 'order', '{\"collection\":\"order\",\"icon\":\"shopping_cart\",\"note\":null,\"display_template\":null,\"hidden\":false,\"singleton\":false,\"translations\":[{\"language\":\"fr-FR\",\"translation\":\"Commande\"}],\"archive_field\":\"status\",\"archive_app_filter\":true,\"archive_value\":\"archived\",\"unarchive_value\":\"draft\",\"sort_field\":null,\"accountability\":\"all\",\"color\":\"#E35169\",\"item_duplication_fields\":null,\"sort\":6,\"group\":null,\"collapse\":\"open\"}', '{\"sort\":6,\"group\":null}', NULL),
(359, 362, 'directus_collections', 'producer', '{\"collection\":\"producer\",\"icon\":\"store_mall_directory\",\"note\":null,\"display_template\":null,\"hidden\":false,\"singleton\":false,\"translations\":[{\"language\":\"fr-FR\",\"translation\":\"Producteur\"}],\"archive_field\":\"status\",\"archive_app_filter\":true,\"archive_value\":\"archived\",\"unarchive_value\":\"draft\",\"sort_field\":null,\"accountability\":\"all\",\"color\":\"#00C897\",\"item_duplication_fields\":null,\"sort\":2,\"group\":null,\"collapse\":\"open\"}', '{\"sort\":2,\"group\":null}', NULL),
(360, 363, 'directus_collections', 'products', '{\"collection\":\"products\",\"icon\":\"spa\",\"note\":null,\"display_template\":null,\"hidden\":false,\"singleton\":false,\"translations\":[{\"language\":\"fr-FR\",\"translation\":\"Produit\"}],\"archive_field\":\"status\",\"archive_app_filter\":true,\"archive_value\":\"archived\",\"unarchive_value\":\"draft\",\"sort_field\":\"sort\",\"accountability\":\"all\",\"color\":\"#68B0F4\",\"item_duplication_fields\":null,\"sort\":4,\"group\":null,\"collapse\":\"open\"}', '{\"sort\":4,\"group\":null}', NULL),
(361, 364, 'directus_collections', 'order', '{\"collection\":\"order\",\"icon\":\"shopping_cart\",\"note\":null,\"display_template\":null,\"hidden\":false,\"singleton\":false,\"translations\":[{\"language\":\"fr-FR\",\"translation\":\"Commande\"}],\"archive_field\":\"status\",\"archive_app_filter\":true,\"archive_value\":\"archived\",\"unarchive_value\":\"draft\",\"sort_field\":null,\"accountability\":\"all\",\"color\":\"#E35169\",\"item_duplication_fields\":null,\"sort\":5,\"group\":null,\"collapse\":\"open\"}', '{\"sort\":5,\"group\":null}', NULL),
(362, 365, 'directus_collections', 'association', '{\"collection\":\"association\",\"icon\":\"people_alt\",\"note\":null,\"display_template\":null,\"hidden\":false,\"singleton\":false,\"translations\":[{\"language\":\"fr-FR\",\"translation\":\"Association\"}],\"archive_field\":\"status\",\"archive_app_filter\":true,\"archive_value\":\"archived\",\"unarchive_value\":\"draft\",\"sort_field\":null,\"accountability\":\"all\",\"color\":\"#F7971C\",\"item_duplication_fields\":null,\"sort\":1,\"group\":null,\"collapse\":\"open\"}', '{\"sort\":1,\"group\":null}', NULL),
(363, 366, 'directus_collections', 'distribution_site', '{\"collection\":\"distribution_site\",\"icon\":\"storefront\",\"note\":null,\"display_template\":null,\"hidden\":false,\"singleton\":false,\"translations\":[{\"language\":\"fr-FR\",\"translation\":\"Lieu de distribution\"}],\"archive_field\":\"status\",\"archive_app_filter\":true,\"archive_value\":\"archived\",\"unarchive_value\":\"draft\",\"sort_field\":null,\"accountability\":\"all\",\"color\":\"#9E8DE4\",\"item_duplication_fields\":null,\"sort\":3,\"group\":null,\"collapse\":\"open\"}', '{\"sort\":3,\"group\":null}', NULL),
(364, 367, 'directus_collections', 'city', '{\"collection\":\"city\",\"icon\":\"location_city\",\"note\":null,\"display_template\":null,\"hidden\":false,\"singleton\":false,\"translations\":[{\"language\":\"fr-FR\",\"translation\":\"Ville\"}],\"archive_field\":null,\"archive_app_filter\":true,\"archive_value\":null,\"unarchive_value\":null,\"sort_field\":null,\"accountability\":\"all\",\"color\":\"#607D8B\",\"item_duplication_fields\":null,\"sort\":6,\"group\":null,\"collapse\":\"open\"}', '{\"sort\":6,\"group\":null}', NULL),
(365, 368, 'directus_fields', '91', '{\"hidden\":false,\"interface\":\"select-dropdown-m2o\",\"readonly\":false,\"translations\":[{\"language\":\"fr-FR\",\"translation\":\"Panier\"}],\"collection\":\"order\",\"field\":\"cart\"}', '{\"hidden\":false,\"interface\":\"select-dropdown-m2o\",\"readonly\":false,\"translations\":[{\"language\":\"fr-FR\",\"translation\":\"Panier\"}],\"collection\":\"order\",\"field\":\"cart\"}', NULL),
(366, 369, 'directus_fields', '92', '{\"hidden\":false,\"interface\":\"select-dropdown-m2o\",\"readonly\":false,\"translations\":[{\"language\":\"fr-FR\",\"translation\":\"Panier\"}],\"collection\":\"order\",\"field\":\"cart\"}', '{\"hidden\":false,\"interface\":\"select-dropdown-m2o\",\"readonly\":false,\"translations\":[{\"language\":\"fr-FR\",\"translation\":\"Panier\"}],\"collection\":\"order\",\"field\":\"cart\"}', NULL),
(367, 370, 'directus_fields', '93', '{\"special\":\"o2m\",\"interface\":\"list-o2m\",\"collection\":\"order_product\",\"field\":\"order\"}', '{\"special\":\"o2m\",\"interface\":\"list-o2m\",\"collection\":\"order_product\",\"field\":\"order\"}', NULL),
(368, 371, 'directus_fields', '94', '{\"hidden\":false,\"interface\":\"select-dropdown-m2o\",\"readonly\":false,\"translations\":[{\"language\":\"fr-FR\",\"translation\":\"Produits\"}],\"collection\":\"order_product\",\"field\":\"product\"}', '{\"hidden\":false,\"interface\":\"select-dropdown-m2o\",\"readonly\":false,\"translations\":[{\"language\":\"fr-FR\",\"translation\":\"Produits\"}],\"collection\":\"order_product\",\"field\":\"product\"}', NULL),
(369, 372, 'directus_fields', '95', '{\"hidden\":false,\"interface\":\"input\",\"display\":\"raw\",\"readonly\":false,\"translations\":[{\"language\":\"fr-FR\",\"translation\":\"Nom\"}],\"collection\":\"products\",\"field\":\"name\"}', '{\"hidden\":false,\"interface\":\"input\",\"display\":\"raw\",\"readonly\":false,\"translations\":[{\"language\":\"fr-FR\",\"translation\":\"Nom\"}],\"collection\":\"products\",\"field\":\"name\"}', NULL),
(370, 373, 'directus_fields', '30', '{\"id\":30,\"collection\":\"products\",\"field\":\"id\",\"special\":null,\"interface\":\"input\",\"options\":null,\"display\":null,\"display_options\":null,\"readonly\":true,\"hidden\":true,\"sort\":1,\"width\":\"full\",\"translations\":null,\"note\":null,\"conditions\":null,\"required\":false,\"group\":null}', '{\"collection\":\"products\",\"field\":\"id\",\"sort\":1,\"group\":null}', NULL),
(371, 374, 'directus_fields', '31', '{\"id\":31,\"collection\":\"products\",\"field\":\"status\",\"special\":null,\"interface\":\"select-dropdown\",\"options\":{\"choices\":[{\"text\":\"$t:published\",\"value\":\"published\"},{\"text\":\"$t:draft\",\"value\":\"draft\"},{\"text\":\"$t:archived\",\"value\":\"archived\"}]},\"display\":\"labels\",\"display_options\":{\"showAsDot\":true,\"choices\":[{\"background\":\"#00C897\",\"value\":\"published\"},{\"background\":\"#D3DAE4\",\"value\":\"draft\"},{\"background\":\"#F7971C\",\"value\":\"archived\"}]},\"readonly\":false,\"hidden\":false,\"sort\":2,\"width\":\"full\",\"translations\":null,\"note\":null,\"conditions\":null,\"required\":false,\"group\":null}', '{\"collection\":\"products\",\"field\":\"status\",\"sort\":2,\"group\":null}', NULL),
(372, 375, 'directus_fields', '32', '{\"id\":32,\"collection\":\"products\",\"field\":\"sort\",\"special\":null,\"interface\":\"input\",\"options\":null,\"display\":null,\"display_options\":null,\"readonly\":false,\"hidden\":true,\"sort\":3,\"width\":\"full\",\"translations\":null,\"note\":null,\"conditions\":null,\"required\":false,\"group\":null}', '{\"collection\":\"products\",\"field\":\"sort\",\"sort\":3,\"group\":null}', NULL),
(373, 376, 'directus_fields', '33', '{\"id\":33,\"collection\":\"products\",\"field\":\"date_created\",\"special\":[\"date-created\"],\"interface\":\"datetime\",\"options\":null,\"display\":\"datetime\",\"display_options\":{\"relative\":true},\"readonly\":true,\"hidden\":true,\"sort\":4,\"width\":\"half\",\"translations\":null,\"note\":null,\"conditions\":null,\"required\":false,\"group\":null}', '{\"collection\":\"products\",\"field\":\"date_created\",\"sort\":4,\"group\":null}', NULL),
(374, 377, 'directus_fields', '34', '{\"id\":34,\"collection\":\"products\",\"field\":\"date_updated\",\"special\":[\"date-updated\"],\"interface\":\"datetime\",\"options\":null,\"display\":\"datetime\",\"display_options\":{\"relative\":true},\"readonly\":true,\"hidden\":true,\"sort\":5,\"width\":\"half\",\"translations\":null,\"note\":null,\"conditions\":null,\"required\":false,\"group\":null}', '{\"collection\":\"products\",\"field\":\"date_updated\",\"sort\":5,\"group\":null}', NULL),
(375, 378, 'directus_fields', '95', '{\"id\":95,\"collection\":\"products\",\"field\":\"name\",\"special\":null,\"interface\":\"input\",\"options\":null,\"display\":\"raw\",\"display_options\":null,\"readonly\":false,\"hidden\":false,\"sort\":6,\"width\":\"full\",\"translations\":[{\"language\":\"fr-FR\",\"translation\":\"Nom\"}],\"note\":null,\"conditions\":null,\"required\":false,\"group\":null}', '{\"collection\":\"products\",\"field\":\"name\",\"sort\":6,\"group\":null}', NULL),
(376, 379, 'directus_fields', '35', '{\"id\":35,\"collection\":\"products\",\"field\":\"image\",\"special\":null,\"interface\":\"file-image\",\"options\":null,\"display\":\"image\",\"display_options\":null,\"readonly\":false,\"hidden\":false,\"sort\":7,\"width\":\"full\",\"translations\":null,\"note\":null,\"conditions\":null,\"required\":false,\"group\":null}', '{\"collection\":\"products\",\"field\":\"image\",\"sort\":7,\"group\":null}', NULL),
(377, 380, 'directus_fields', '38', '{\"id\":38,\"collection\":\"products\",\"field\":\"stock\",\"special\":null,\"interface\":\"input\",\"options\":{\"min\":0},\"display\":\"raw\",\"display_options\":null,\"readonly\":false,\"hidden\":false,\"sort\":8,\"width\":\"full\",\"translations\":null,\"note\":null,\"conditions\":null,\"required\":false,\"group\":null}', '{\"collection\":\"products\",\"field\":\"stock\",\"sort\":8,\"group\":null}', NULL),
(378, 381, 'directus_fields', '36', '{\"id\":36,\"collection\":\"products\",\"field\":\"price\",\"special\":null,\"interface\":\"input\",\"options\":{\"min\":0},\"display\":\"raw\",\"display_options\":null,\"readonly\":false,\"hidden\":false,\"sort\":9,\"width\":\"full\",\"translations\":[{\"language\":\"fr-FR\",\"translation\":\"Prix\"}],\"note\":null,\"conditions\":null,\"required\":false,\"group\":null}', '{\"collection\":\"products\",\"field\":\"price\",\"sort\":9,\"group\":null}', NULL),
(379, 382, 'directus_fields', '41', '{\"id\":41,\"collection\":\"products\",\"field\":\"weight\",\"special\":null,\"interface\":\"input\",\"options\":{\"min\":0},\"display\":\"raw\",\"display_options\":null,\"readonly\":false,\"hidden\":false,\"sort\":10,\"width\":\"half\",\"translations\":[{\"language\":\"fr-FR\",\"translation\":\"Poids\"}],\"note\":null,\"conditions\":null,\"required\":false,\"group\":null}', '{\"collection\":\"products\",\"field\":\"weight\",\"sort\":10,\"group\":null}', NULL),
(380, 383, 'directus_fields', '37', '{\"id\":37,\"collection\":\"products\",\"field\":\"unit\",\"special\":null,\"interface\":\"select-dropdown\",\"options\":{\"choices\":[{\"text\":\"Pièce\",\"value\":\"pieces\"},{\"text\":\"Kilogramme(s)\",\"value\":\"kilogram\"},{\"text\":\"Gramme(s)\",\"value\":\"gram\"},{\"text\":\"Litre(s)\",\"value\":\"liter\"},{\"text\":\"Centilitre(s)\",\"value\":\"centiliter\"},{\"text\":\"Mililitre(s)\",\"value\":\"milliliter\"}]},\"display\":\"labels\",\"display_options\":{\"choices\":[{\"text\":\"Pièce\",\"value\":\"pieces\",\"foreground\":\"#FFFFFF\",\"background\":\"#607D8B\"},{\"text\":\"Kilogramme(s)\",\"value\":\"kilogram\",\"foreground\":\"#FFFFFF\",\"background\":\"#F7971C\"},{\"text\":\"Gramme(s)\",\"value\":\"gram\",\"foreground\":\"#FFFFFF\",\"background\":\"#F2C94C\"},{\"text\":\"Litre(s)\",\"value\":\"liter\",\"foreground\":\"#FFFFFF\",\"background\":\"#00C897\"},{\"text\":\"Centilitre(s)\",\"value\":\"centiliter\",\"foreground\":\"#FFFFFF\",\"background\":\"#68B0F4\"},{\"text\":\"Mililitre(s)\",\"value\":\"milliliter\",\"foreground\":\"#FFFFFF\",\"background\":\"#9E8DE4\"}]},\"readonly\":false,\"hidden\":false,\"sort\":11,\"width\":\"half\",\"translations\":[{\"language\":\"fr-FR\",\"translation\":\"Unité de base\"}],\"note\":null,\"conditions\":null,\"required\":false,\"group\":null}', '{\"collection\":\"products\",\"field\":\"unit\",\"sort\":11,\"group\":null}', NULL),
(381, 384, 'directus_fields', '39', '{\"id\":39,\"collection\":\"products\",\"field\":\"description\",\"special\":null,\"interface\":\"input-rich-text-html\",\"options\":{\"toolbar\":[\"bold\",\"italic\",\"underline\",\"removeformat\",\"bullist\",\"numlist\",\"blockquote\",\"h3\",\"hr\",\"fullscreen\",\"h4\",\"h5\",\"h6\"]},\"display\":\"raw\",\"display_options\":null,\"readonly\":false,\"hidden\":false,\"sort\":12,\"width\":\"full\",\"translations\":null,\"note\":null,\"conditions\":null,\"required\":false,\"group\":null}', '{\"collection\":\"products\",\"field\":\"description\",\"sort\":12,\"group\":null}', NULL),
(382, 385, 'directus_fields', '40', '{\"id\":40,\"collection\":\"products\",\"field\":\"reference\",\"special\":null,\"interface\":\"input\",\"options\":null,\"display\":\"raw\",\"display_options\":null,\"readonly\":false,\"hidden\":false,\"sort\":13,\"width\":\"full\",\"translations\":[{\"language\":\"fr-FR\",\"translation\":\"Référence\"}],\"note\":null,\"conditions\":null,\"required\":false,\"group\":null}', '{\"collection\":\"products\",\"field\":\"reference\",\"sort\":13,\"group\":null}', NULL),
(383, 386, 'directus_fields', '42', '{\"id\":42,\"collection\":\"products\",\"field\":\"variable_price\",\"special\":[\"boolean\"],\"interface\":null,\"options\":null,\"display\":\"boolean\",\"display_options\":null,\"readonly\":false,\"hidden\":false,\"sort\":14,\"width\":\"full\",\"translations\":[{\"language\":\"fr-FR\",\"translation\":\"Prix variable\"}],\"note\":null,\"conditions\":null,\"required\":false,\"group\":null}', '{\"collection\":\"products\",\"field\":\"variable_price\",\"sort\":14,\"group\":null}', NULL),
(384, 387, 'directus_fields', '43', '{\"id\":43,\"collection\":\"products\",\"field\":\"category\",\"special\":null,\"interface\":\"select-dropdown-m2o\",\"options\":{\"template\":\"{{name}}\"},\"display\":\"related-values\",\"display_options\":{\"template\":\"{{name}}\"},\"readonly\":false,\"hidden\":false,\"sort\":15,\"width\":\"full\",\"translations\":[{\"language\":\"fr-FR\",\"translation\":\"Catégorie\"}],\"note\":null,\"conditions\":null,\"required\":false,\"group\":null}', '{\"collection\":\"products\",\"field\":\"category\",\"sort\":15,\"group\":null}', NULL),
(385, 388, 'directus_fields', '48', '{\"id\":48,\"collection\":\"products\",\"field\":\"certification\",\"special\":null,\"interface\":\"select-dropdown-m2o\",\"options\":{\"template\":\"{{name}}\"},\"display\":\"related-values\",\"display_options\":{\"template\":\"{{name}}\"},\"readonly\":false,\"hidden\":false,\"sort\":16,\"width\":\"full\",\"translations\":null,\"note\":null,\"conditions\":null,\"required\":false,\"group\":null}', '{\"collection\":\"products\",\"field\":\"certification\",\"sort\":16,\"group\":null}', NULL),
(386, 389, 'directus_fields', '50', '{\"id\":50,\"collection\":\"products\",\"field\":\"producer\",\"special\":null,\"interface\":\"select-dropdown-m2o\",\"options\":{\"template\":\"{{name}}\"},\"display\":\"related-values\",\"display_options\":{\"template\":\"{{name}}\"},\"readonly\":false,\"hidden\":false,\"sort\":17,\"width\":\"full\",\"translations\":[{\"language\":\"fr-FR\",\"translation\":\"Producteur\"}],\"note\":null,\"conditions\":null,\"required\":false,\"group\":null}', '{\"collection\":\"products\",\"field\":\"producer\",\"sort\":17,\"group\":null}', NULL),
(387, 390, 'directus_fields', '94', '{\"id\":94,\"collection\":\"order_product\",\"field\":\"product\",\"special\":null,\"interface\":\"select-dropdown-m2o\",\"options\":{\"template\":\"{{name}}\"},\"display\":null,\"display_options\":null,\"readonly\":false,\"hidden\":false,\"sort\":null,\"width\":\"full\",\"translations\":[{\"language\":\"fr-FR\",\"translation\":\"Produits\"}],\"note\":null,\"conditions\":null,\"required\":false,\"group\":null}', '{\"collection\":\"order_product\",\"field\":\"product\",\"special\":null,\"interface\":\"select-dropdown-m2o\",\"options\":{\"template\":\"{{name}}\"},\"display\":null,\"display_options\":null,\"readonly\":false,\"hidden\":false,\"sort\":null,\"width\":\"full\",\"translations\":[{\"language\":\"fr-FR\",\"translation\":\"Produits\"}],\"note\":null,\"conditions\":null,\"required\":false,\"group\":null}', NULL),
(388, 391, 'directus_fields', '94', '{\"id\":94,\"collection\":\"order_product\",\"field\":\"product\",\"special\":null,\"interface\":\"select-dropdown-m2o\",\"options\":{\"template\":\"{{name}}\"},\"display\":\"related-values\",\"display_options\":{\"template\":\"{{name}}\"},\"readonly\":false,\"hidden\":false,\"sort\":null,\"width\":\"full\",\"translations\":[{\"language\":\"fr-FR\",\"translation\":\"Produits\"}],\"note\":null,\"conditions\":null,\"required\":false,\"group\":null}', '{\"collection\":\"order_product\",\"field\":\"product\",\"special\":null,\"interface\":\"select-dropdown-m2o\",\"options\":{\"template\":\"{{name}}\"},\"display\":\"related-values\",\"display_options\":{\"template\":\"{{name}}\"},\"readonly\":false,\"hidden\":false,\"sort\":null,\"width\":\"full\",\"translations\":[{\"language\":\"fr-FR\",\"translation\":\"Produits\"}],\"note\":null,\"conditions\":null,\"required\":false,\"group\":null}', NULL),
(389, 392, 'directus_fields', '96', '{\"hidden\":false,\"interface\":\"input\",\"options\":null,\"display\":\"raw\",\"display_options\":null,\"readonly\":false,\"special\":null,\"translations\":[{\"language\":\"fr-FR\",\"translation\":\"Quantité\"}],\"collection\":\"order_product\",\"field\":\"quantity\"}', '{\"hidden\":false,\"interface\":\"input\",\"options\":null,\"display\":\"raw\",\"display_options\":null,\"readonly\":false,\"special\":null,\"translations\":[{\"language\":\"fr-FR\",\"translation\":\"Quantité\"}],\"collection\":\"order_product\",\"field\":\"quantity\"}', NULL),
(390, 393, 'directus_fields', '97', '{\"hidden\":false,\"interface\":\"input\",\"options\":null,\"display\":\"raw\",\"display_options\":null,\"readonly\":false,\"special\":null,\"collection\":\"order_product\",\"field\":\"total\"}', '{\"hidden\":false,\"interface\":\"input\",\"options\":null,\"display\":\"raw\",\"display_options\":null,\"readonly\":false,\"special\":null,\"collection\":\"order_product\",\"field\":\"total\"}', NULL),
(391, 394, 'directus_fields', '98', '{\"hidden\":false,\"interface\":\"input\",\"options\":null,\"display\":\"raw\",\"display_options\":null,\"readonly\":false,\"special\":null,\"collection\":\"order_product\",\"field\":\"tva\"}', '{\"hidden\":false,\"interface\":\"input\",\"options\":null,\"display\":\"raw\",\"display_options\":null,\"readonly\":false,\"special\":null,\"collection\":\"order_product\",\"field\":\"tva\"}', NULL),
(392, 395, 'directus_fields', '99', '{\"hidden\":false,\"interface\":\"select-dropdown\",\"options\":{\"choices\":[{\"text\":\"5,5%\",\"value\":\"5.5\"},{\"text\":\"20%\",\"value\":\"20\"}]},\"display\":\"labels\",\"display_options\":null,\"readonly\":false,\"special\":null,\"translations\":null,\"collection\":\"products\",\"field\":\"tva\"}', '{\"hidden\":false,\"interface\":\"select-dropdown\",\"options\":{\"choices\":[{\"text\":\"5,5%\",\"value\":\"5.5\"},{\"text\":\"20%\",\"value\":\"20\"}]},\"display\":\"labels\",\"display_options\":null,\"readonly\":false,\"special\":null,\"translations\":null,\"collection\":\"products\",\"field\":\"tva\"}', NULL),
(393, 396, 'directus_fields', '100', '{\"hidden\":false,\"interface\":\"input\",\"options\":null,\"display\":\"raw\",\"display_options\":null,\"readonly\":false,\"special\":null,\"translations\":null,\"collection\":\"order\",\"field\":\"total\"}', '{\"hidden\":false,\"interface\":\"input\",\"options\":null,\"display\":\"raw\",\"display_options\":null,\"readonly\":false,\"special\":null,\"translations\":null,\"collection\":\"order\",\"field\":\"total\"}', NULL),
(394, 398, 'directus_files', '07ee7a26-5600-4ada-9823-42d652cb557a', '{\"title\":\"Portrait 12\",\"filename_download\":\"portrait-12.jpg\",\"type\":\"image/jpeg\",\"storage\":\"local\"}', '{\"title\":\"Portrait 12\",\"filename_download\":\"portrait-12.jpg\",\"type\":\"image/jpeg\",\"storage\":\"local\"}', NULL),
(395, 399, 'directus_users', '109171df-772a-4bf8-8f98-1fcbf802f710', '{\"id\":\"109171df-772a-4bf8-8f98-1fcbf802f710\",\"first_name\":\"Fabien\",\"last_name\":\"Perrichon\",\"email\":\"fatoon.dev@gmail.com\",\"password\":\"**********\",\"location\":null,\"title\":null,\"description\":null,\"tags\":null,\"avatar\":\"07ee7a26-5600-4ada-9823-42d652cb557a\",\"language\":\"fr-FR\",\"theme\":\"auto\",\"tfa_secret\":null,\"status\":\"active\",\"role\":\"fdcaa9db-c186-4905-8c1f-14a378416a0c\",\"token\":null,\"last_access\":\"2021-12-11T19:13:20.000Z\",\"last_page\":\"/users/109171df-772a-4bf8-8f98-1fcbf802f710\",\"provider\":\"default\",\"external_identifier\":null,\"auth_data\":null}', '{\"avatar\":\"07ee7a26-5600-4ada-9823-42d652cb557a\"}', NULL),
(396, 400, 'city', '1', '{\"postal_code\":29460,\"name\":\"L HOPITAL CAMFROUT\"}', '{\"postal_code\":29460,\"name\":\"L HOPITAL CAMFROUT\"}', 397),
(397, 401, 'association', '1', '{\"name\":\"Hopigac\",\"city\":{\"postal_code\":29460,\"name\":\"L HOPITAL CAMFROUT\"},\"street\":\"Tibidy\"}', '{\"name\":\"Hopigac\",\"city\":{\"postal_code\":29460,\"name\":\"L HOPITAL CAMFROUT\"},\"street\":\"Tibidy\"}', NULL),
(398, 402, 'association', '1', '{\"id\":1,\"status\":\"published\",\"date_created\":\"2021-12-11T19:14:28.000Z\",\"date_updated\":\"2021-12-11T19:14:48.000Z\",\"name\":\"Hopigac\",\"street\":\"Tibidy\",\"city\":1}', '{\"status\":\"published\",\"date_updated\":\"2021-12-11T19:14:48.221Z\"}', NULL),
(399, 403, 'city', '2', '{\"name\":\"HANVEC\",\"postal_code\":29460}', '{\"name\":\"HANVEC\",\"postal_code\":29460}', 400),
(400, 404, 'association', '2', '{\"name\":\"Bio Et Local\",\"street\":\"Quillafel\",\"city\":{\"name\":\"HANVEC\",\"postal_code\":29460}}', '{\"name\":\"Bio Et Local\",\"street\":\"Quillafel\",\"city\":{\"name\":\"HANVEC\",\"postal_code\":29460}}', NULL),
(401, 405, 'association', '2', '{\"id\":2,\"status\":\"published\",\"date_created\":\"2021-12-11T19:15:30.000Z\",\"date_updated\":\"2021-12-11T19:15:34.000Z\",\"name\":\"Bio Et Local\",\"street\":\"Quillafel\",\"city\":2}', '{\"status\":\"published\",\"date_updated\":\"2021-12-11T19:15:34.533Z\"}', NULL),
(402, 406, 'directus_fields', '19', '{\"id\":19,\"collection\":\"producer\",\"field\":\"legal_status\",\"special\":null,\"interface\":\"select-dropdown\",\"options\":{\"choices\":[{\"text\":\"Auto entreprise\",\"value\":\"auto\"},{\"text\":\"SAS\",\"value\":\"sas\"},{\"text\":\"EIRL\",\"value\":\"eirl\"},{\"text\":\"EARL\",\"value\":\"earl\"}]},\"display\":\"raw\",\"display_options\":null,\"readonly\":false,\"hidden\":false,\"sort\":5,\"width\":\"half\",\"translations\":[{\"language\":\"fr-FR\",\"translation\":\"Status Juridique\"}],\"note\":null,\"conditions\":null,\"required\":false,\"group\":null}', '{\"collection\":\"producer\",\"field\":\"legal_status\",\"special\":null,\"interface\":\"select-dropdown\",\"options\":{\"choices\":[{\"text\":\"Auto entreprise\",\"value\":\"auto\"},{\"text\":\"SAS\",\"value\":\"sas\"},{\"text\":\"EIRL\",\"value\":\"eirl\"},{\"text\":\"EARL\",\"value\":\"earl\"}]},\"display\":\"raw\",\"display_options\":null,\"readonly\":false,\"hidden\":false,\"sort\":5,\"width\":\"half\",\"translations\":[{\"language\":\"fr-FR\",\"translation\":\"Status Juridique\"}],\"note\":null,\"conditions\":null,\"required\":false,\"group\":null}', NULL),
(403, 407, 'city', '3', '{\"name\":\"SAINT-MEEN\",\"postal_code\":29260}', '{\"name\":\"SAINT-MEEN\",\"postal_code\":29260}', 404),
(404, 408, 'producer', '1', '{\"status\":\"published\",\"legal_status\":\"earl\",\"name\":\"Lescoat\",\"date\":\"2021-12-11T20:17:00\",\"street\":\"LESCOAT MORIZUR\",\"city\":{\"name\":\"SAINT-MEEN\",\"postal_code\":29260}}', '{\"status\":\"published\",\"legal_status\":\"earl\",\"name\":\"Lescoat\",\"date\":\"2021-12-11T20:17:00\",\"street\":\"LESCOAT MORIZUR\",\"city\":{\"name\":\"SAINT-MEEN\",\"postal_code\":29260}}', NULL),
(405, 409, 'city', '4', '{\"name\":\"LOQUEFFRET\",\"postal_code\":29530}', '{\"name\":\"LOQUEFFRET\",\"postal_code\":29530}', 406),
(406, 410, 'producer', '2', '{\"name\":\"Les Landes celtes\",\"legal_status\":\"earl\",\"date\":\"2021-12-11T20:19:00\",\"street\":\"LE BOURG\",\"city\":{\"name\":\"LOQUEFFRET\",\"postal_code\":29530}}', '{\"name\":\"Les Landes celtes\",\"legal_status\":\"earl\",\"date\":\"2021-12-11T20:19:00\",\"street\":\"LE BOURG\",\"city\":{\"name\":\"LOQUEFFRET\",\"postal_code\":29530}}', NULL),
(407, 411, 'producer', '2', '{\"id\":2,\"status\":\"published\",\"date_created\":\"2021-12-11T19:20:13.000Z\",\"date_updated\":\"2021-12-11T19:20:18.000Z\",\"legal_status\":\"earl\",\"name\":\"Les Landes celtes\",\"date\":\"2021-12-11T20:19:00\",\"image\":null,\"street\":\"LE BOURG\",\"city\":4}', '{\"status\":\"published\",\"date_updated\":\"2021-12-11T19:20:18.529Z\"}', NULL),
(408, 412, 'directus_files', '8c287c2a-0902-43be-ac32-09a025d001a0', '{\"title\":\"Male\",\"filename_download\":\"male.png\",\"type\":\"image/png\",\"storage\":\"local\"}', '{\"title\":\"Male\",\"filename_download\":\"male.png\",\"type\":\"image/png\",\"storage\":\"local\"}', NULL),
(409, 413, 'directus_users', 'ea769905-90c0-452f-9c2f-c8c0bf3538e8', '{\"first_name\":\"Huette\",\"last_name\":\"Tanguay\",\"email\":\"test1@gmail.com\",\"password\":\"**********\",\"avatar\":\"8c287c2a-0902-43be-ac32-09a025d001a0\"}', '{\"first_name\":\"Huette\",\"last_name\":\"Tanguay\",\"email\":\"test1@gmail.com\",\"password\":\"**********\",\"avatar\":\"8c287c2a-0902-43be-ac32-09a025d001a0\"}', NULL),
(410, 414, 'directus_users', 'ea769905-90c0-452f-9c2f-c8c0bf3538e8', '{\"id\":\"ea769905-90c0-452f-9c2f-c8c0bf3538e8\",\"first_name\":\"Denis\",\"last_name\":\"Tanguay\",\"email\":\"test1@gmail.com\",\"password\":\"**********\",\"location\":null,\"title\":null,\"description\":null,\"tags\":null,\"avatar\":\"8c287c2a-0902-43be-ac32-09a025d001a0\",\"language\":\"en-US\",\"theme\":\"auto\",\"tfa_secret\":null,\"status\":\"active\",\"role\":null,\"token\":null,\"last_access\":\"2021-12-12T19:28:54.000Z\",\"last_page\":null,\"provider\":\"default\",\"external_identifier\":null,\"auth_data\":null}', '{\"first_name\":\"Denis\"}', NULL),
(411, 415, 'directus_files', '8713c1fe-89aa-48d0-91eb-10497d1b2e27', '{\"title\":\"Female\",\"filename_download\":\"female.png\",\"type\":\"image/png\",\"storage\":\"local\"}', '{\"title\":\"Female\",\"filename_download\":\"female.png\",\"type\":\"image/png\",\"storage\":\"local\"}', NULL),
(412, 416, 'directus_users', 'f17cb9ab-7646-4262-b01d-b0143ed21339', '{\"first_name\":\"Dianne\",\"last_name\":\"Datz\",\"email\":\"test2@gmail.com\",\"password\":\"**********\",\"avatar\":\"8713c1fe-89aa-48d0-91eb-10497d1b2e27\"}', '{\"first_name\":\"Dianne\",\"last_name\":\"Datz\",\"email\":\"test2@gmail.com\",\"password\":\"**********\",\"avatar\":\"8713c1fe-89aa-48d0-91eb-10497d1b2e27\"}', NULL),
(413, 417, 'directus_users', '396cbc17-2191-4eea-aba5-afaf2d710a13', '{\"first_name\":\"Armand\",\"last_name\":\"Laurent\",\"email\":\"test3@gmail.com\",\"password\":\"**********\",\"avatar\":\"8c287c2a-0902-43be-ac32-09a025d001a0\"}', '{\"first_name\":\"Armand\",\"last_name\":\"Laurent\",\"email\":\"test3@gmail.com\",\"password\":\"**********\",\"avatar\":\"8c287c2a-0902-43be-ac32-09a025d001a0\"}', NULL),
(414, 418, 'directus_files', '0ce3f020-808a-4a94-8356-1c957e468bd6', '{\"title\":\"Female\",\"filename_download\":\"female.png\",\"type\":\"image/png\",\"storage\":\"local\"}', '{\"title\":\"Female\",\"filename_download\":\"female.png\",\"type\":\"image/png\",\"storage\":\"local\"}', NULL),
(415, 419, 'directus_users', 'a03a6aba-e836-47e1-8f32-da94deef4ce8', '{\"first_name\":\"Anastasie\",\"last_name\":\"Lanoie\",\"email\":\"test4@gmail.com\",\"password\":\"**********\",\"avatar\":\"0ce3f020-808a-4a94-8356-1c957e468bd6\"}', '{\"first_name\":\"Anastasie\",\"last_name\":\"Lanoie\",\"email\":\"test4@gmail.com\",\"password\":\"**********\",\"avatar\":\"0ce3f020-808a-4a94-8356-1c957e468bd6\"}', NULL),
(416, 420, 'directus_fields', '101', '{\"hidden\":false,\"interface\":\"input\",\"display\":\"raw\",\"readonly\":false,\"translations\":[{\"language\":\"fr-FR\",\"translation\":\"Adresse (rue)\"}],\"collection\":\"subscription\",\"field\":\"street\"}', '{\"hidden\":false,\"interface\":\"input\",\"display\":\"raw\",\"readonly\":false,\"translations\":[{\"language\":\"fr-FR\",\"translation\":\"Adresse (rue)\"}],\"collection\":\"subscription\",\"field\":\"street\"}', NULL),
(417, 421, 'directus_fields', '101', '{\"id\":101,\"collection\":\"subscription\",\"field\":\"street\",\"special\":null,\"interface\":\"input\",\"options\":null,\"display\":\"raw\",\"display_options\":null,\"readonly\":false,\"hidden\":false,\"sort\":null,\"width\":\"half\",\"translations\":[{\"language\":\"fr-FR\",\"translation\":\"Adresse (rue)\"}],\"note\":null,\"conditions\":null,\"required\":false,\"group\":null}', '{\"collection\":\"subscription\",\"field\":\"street\",\"width\":\"half\"}', NULL),
(418, 422, 'directus_fields', '102', '{\"hidden\":false,\"interface\":\"select-dropdown-m2o\",\"options\":{\"template\":\"{{postal_code}} - {{name}}\"},\"display\":\"related-values\",\"display_options\":{\"template\":\" {{postal_code}} - {{name}}\"},\"readonly\":false,\"translations\":[{\"language\":\"fr-FR\",\"translation\":\"Adresse (ville)\"}],\"collection\":\"subscription\",\"field\":\"city\"}', '{\"hidden\":false,\"interface\":\"select-dropdown-m2o\",\"options\":{\"template\":\"{{postal_code}} - {{name}}\"},\"display\":\"related-values\",\"display_options\":{\"template\":\" {{postal_code}} - {{name}}\"},\"readonly\":false,\"translations\":[{\"language\":\"fr-FR\",\"translation\":\"Adresse (ville)\"}],\"collection\":\"subscription\",\"field\":\"city\"}', NULL),
(419, 423, 'directus_fields', '102', '{\"id\":102,\"collection\":\"subscription\",\"field\":\"city\",\"special\":null,\"interface\":\"select-dropdown-m2o\",\"options\":{\"template\":\"{{postal_code}} - {{name}}\"},\"display\":\"related-values\",\"display_options\":{\"template\":\" {{postal_code}} - {{name}}\"},\"readonly\":false,\"hidden\":false,\"sort\":null,\"width\":\"half\",\"translations\":[{\"language\":\"fr-FR\",\"translation\":\"Adresse (ville)\"}],\"note\":null,\"conditions\":null,\"required\":false,\"group\":null}', '{\"collection\":\"subscription\",\"field\":\"city\",\"width\":\"half\"}', NULL),
(420, 424, 'directus_fields', '1', '{\"id\":1,\"collection\":\"subscription\",\"field\":\"id\",\"special\":null,\"interface\":\"input\",\"options\":null,\"display\":null,\"display_options\":null,\"readonly\":true,\"hidden\":true,\"sort\":1,\"width\":\"full\",\"translations\":null,\"note\":null,\"conditions\":null,\"required\":false,\"group\":null}', '{\"collection\":\"subscription\",\"field\":\"id\",\"sort\":1,\"group\":null}', NULL),
(421, 425, 'directus_fields', '2', '{\"id\":2,\"collection\":\"subscription\",\"field\":\"status\",\"special\":null,\"interface\":\"select-dropdown\",\"options\":{\"choices\":[{\"text\":\"En cours\",\"value\":\"published\"},{\"text\":\"Annulé\",\"value\":\"draft\"},{\"text\":\"$t:archived\",\"value\":\"archived\"}]},\"display\":\"labels\",\"display_options\":{\"showAsDot\":true,\"choices\":[{\"background\":\"#00C897\",\"value\":\"published\",\"text\":\"En cours\"},{\"background\":\"#E35169\",\"value\":\"draft\",\"text\":\"Annulé\"},{\"background\":\"#F7971C\",\"value\":\"archived\",\"text\":\"Archivé\"}]},\"readonly\":false,\"hidden\":false,\"sort\":2,\"width\":\"full\",\"translations\":null,\"note\":null,\"conditions\":null,\"required\":false,\"group\":null}', '{\"collection\":\"subscription\",\"field\":\"status\",\"sort\":2,\"group\":null}', NULL),
(422, 426, 'directus_fields', '3', '{\"id\":3,\"collection\":\"subscription\",\"field\":\"sort\",\"special\":null,\"interface\":\"input\",\"options\":null,\"display\":null,\"display_options\":null,\"readonly\":false,\"hidden\":true,\"sort\":3,\"width\":\"full\",\"translations\":null,\"note\":null,\"conditions\":null,\"required\":false,\"group\":null}', '{\"collection\":\"subscription\",\"field\":\"sort\",\"sort\":3,\"group\":null}', NULL),
(423, 427, 'directus_fields', '13', '{\"id\":13,\"collection\":\"subscription\",\"field\":\"member\",\"special\":null,\"interface\":\"select-dropdown-m2o\",\"options\":{\"template\":\"{{first_name}}{{last_name}}\"},\"display\":\"related-values\",\"display_options\":{\"template\":\"{{first_name}} {{last_name}}\"},\"readonly\":false,\"hidden\":false,\"sort\":4,\"width\":\"full\",\"translations\":[{\"language\":\"fr-FR\",\"translation\":\"Adhérent\"}],\"note\":null,\"conditions\":null,\"required\":false,\"group\":null}', '{\"collection\":\"subscription\",\"field\":\"member\",\"sort\":4,\"group\":null}', NULL),
(424, 428, 'directus_fields', '4', '{\"id\":4,\"collection\":\"subscription\",\"field\":\"user_created\",\"special\":[\"user-created\"],\"interface\":\"select-dropdown-m2o\",\"options\":{\"template\":\"{{avatar.$thumbnail}} {{first_name}} {{last_name}}\"},\"display\":\"user\",\"display_options\":null,\"readonly\":true,\"hidden\":true,\"sort\":5,\"width\":\"half\",\"translations\":null,\"note\":null,\"conditions\":null,\"required\":false,\"group\":null}', '{\"collection\":\"subscription\",\"field\":\"user_created\",\"sort\":5,\"group\":null}', NULL),
(425, 429, 'directus_fields', '5', '{\"id\":5,\"collection\":\"subscription\",\"field\":\"date_created\",\"special\":[\"date-created\"],\"interface\":\"datetime\",\"options\":null,\"display\":\"datetime\",\"display_options\":{\"relative\":true},\"readonly\":true,\"hidden\":true,\"sort\":6,\"width\":\"half\",\"translations\":null,\"note\":null,\"conditions\":null,\"required\":false,\"group\":null}', '{\"collection\":\"subscription\",\"field\":\"date_created\",\"sort\":6,\"group\":null}', NULL),
(426, 430, 'directus_fields', '6', '{\"id\":6,\"collection\":\"subscription\",\"field\":\"user_updated\",\"special\":[\"user-updated\"],\"interface\":\"select-dropdown-m2o\",\"options\":{\"template\":\"{{avatar.$thumbnail}} {{first_name}} {{last_name}}\"},\"display\":\"user\",\"display_options\":null,\"readonly\":true,\"hidden\":true,\"sort\":7,\"width\":\"half\",\"translations\":null,\"note\":null,\"conditions\":null,\"required\":false,\"group\":null}', '{\"collection\":\"subscription\",\"field\":\"user_updated\",\"sort\":7,\"group\":null}', NULL),
(427, 431, 'directus_fields', '7', '{\"id\":7,\"collection\":\"subscription\",\"field\":\"date_updated\",\"special\":[\"date-updated\"],\"interface\":\"datetime\",\"options\":null,\"display\":\"datetime\",\"display_options\":{\"relative\":true},\"readonly\":true,\"hidden\":true,\"sort\":8,\"width\":\"half\",\"translations\":null,\"note\":null,\"conditions\":null,\"required\":false,\"group\":null}', '{\"collection\":\"subscription\",\"field\":\"date_updated\",\"sort\":8,\"group\":null}', NULL),
(428, 432, 'directus_fields', '14', '{\"id\":14,\"collection\":\"subscription\",\"field\":\"subscription_date\",\"special\":\"\",\"interface\":\"datetime\",\"options\":null,\"display\":\"datetime\",\"display_options\":null,\"readonly\":false,\"hidden\":false,\"sort\":9,\"width\":\"half\",\"translations\":[{\"language\":\"fr-FR\",\"translation\":\"Date de l\'adhésion\"}],\"note\":null,\"conditions\":null,\"required\":false,\"group\":null}', '{\"collection\":\"subscription\",\"field\":\"subscription_date\",\"sort\":9,\"group\":null}', NULL),
(429, 433, 'directus_fields', '9', '{\"id\":9,\"collection\":\"subscription\",\"field\":\"duration\",\"special\":null,\"interface\":\"input\",\"options\":{\"min\":1},\"display\":\"raw\",\"display_options\":null,\"readonly\":false,\"hidden\":false,\"sort\":10,\"width\":\"half\",\"translations\":[{\"language\":\"fr-FR\",\"translation\":\"Durée de l\'adhésion\"}],\"note\":\"durée en année\",\"conditions\":null,\"required\":false,\"group\":null}', '{\"collection\":\"subscription\",\"field\":\"duration\",\"sort\":10,\"group\":null}', NULL),
(430, 434, 'directus_fields', '10', '{\"id\":10,\"collection\":\"subscription\",\"field\":\"fee_amount\",\"special\":null,\"interface\":\"input\",\"options\":{\"min\":0},\"display\":\"raw\",\"display_options\":null,\"readonly\":false,\"hidden\":false,\"sort\":11,\"width\":\"half\",\"translations\":[{\"language\":\"fr-FR\",\"translation\":\"Montant de la cotisation\"}],\"note\":null,\"conditions\":null,\"required\":false,\"group\":null}', '{\"collection\":\"subscription\",\"field\":\"fee_amount\",\"sort\":11,\"group\":null}', NULL),
(431, 435, 'directus_fields', '12', '{\"id\":12,\"collection\":\"subscription\",\"field\":\"fee_method\",\"special\":null,\"interface\":\"select-dropdown\",\"options\":{\"choices\":[{\"text\":\"Espèce\",\"value\":\"cash\"},{\"text\":\"Chèque\",\"value\":\"check\"},{\"text\":\"Virement\",\"value\":\"bank_transfer\"}]},\"display\":\"labels\",\"display_options\":{\"choices\":[{\"text\":\"cash\",\"value\":\"Espèce\",\"background\":\"#00C897\"},{\"text\":\"Chèque\",\"value\":\"check\",\"background\":\"#68B0F4\"},{\"text\":\"Virement\",\"value\":\"bank_transfer\",\"background\":\"#F7971C\"}]},\"readonly\":false,\"hidden\":false,\"sort\":12,\"width\":\"half\",\"translations\":[{\"language\":\"fr-FR\",\"translation\":\"Méthode de paiement de la cotisation\"}],\"note\":null,\"conditions\":null,\"required\":false,\"group\":null}', '{\"collection\":\"subscription\",\"field\":\"fee_method\",\"sort\":12,\"group\":null}', NULL),
(432, 436, 'directus_fields', '11', '{\"id\":11,\"collection\":\"subscription\",\"field\":\"fee_date\",\"special\":null,\"interface\":\"datetime\",\"options\":null,\"display\":\"datetime\",\"display_options\":null,\"readonly\":false,\"hidden\":false,\"sort\":13,\"width\":\"full\",\"translations\":[{\"language\":\"fr-FR\",\"translation\":\"Date du paiement de la cotisation\"}],\"note\":null,\"conditions\":null,\"required\":false,\"group\":null}', '{\"collection\":\"subscription\",\"field\":\"fee_date\",\"sort\":13,\"group\":null}', NULL),
(433, 437, 'directus_fields', '101', '{\"id\":101,\"collection\":\"subscription\",\"field\":\"street\",\"special\":null,\"interface\":\"input\",\"options\":null,\"display\":\"raw\",\"display_options\":null,\"readonly\":false,\"hidden\":false,\"sort\":14,\"width\":\"half\",\"translations\":[{\"language\":\"fr-FR\",\"translation\":\"Adresse (rue)\"}],\"note\":null,\"conditions\":null,\"required\":false,\"group\":null}', '{\"collection\":\"subscription\",\"field\":\"street\",\"sort\":14,\"group\":null}', NULL),
(434, 438, 'directus_fields', '102', '{\"id\":102,\"collection\":\"subscription\",\"field\":\"city\",\"special\":null,\"interface\":\"select-dropdown-m2o\",\"options\":{\"template\":\"{{postal_code}} - {{name}}\"},\"display\":\"related-values\",\"display_options\":{\"template\":\" {{postal_code}} - {{name}}\"},\"readonly\":false,\"hidden\":false,\"sort\":15,\"width\":\"half\",\"translations\":[{\"language\":\"fr-FR\",\"translation\":\"Adresse (ville)\"}],\"note\":null,\"conditions\":null,\"required\":false,\"group\":null}', '{\"collection\":\"subscription\",\"field\":\"city\",\"sort\":15,\"group\":null}', NULL),
(435, 439, 'directus_fields', '70', '{\"id\":70,\"collection\":\"subscription\",\"field\":\"association\",\"special\":null,\"interface\":\"select-dropdown-m2o\",\"options\":{\"template\":\"{{name}}\"},\"display\":\"related-values\",\"display_options\":{\"template\":\"{{name}}\"},\"readonly\":false,\"hidden\":false,\"sort\":16,\"width\":\"full\",\"translations\":null,\"note\":null,\"conditions\":null,\"required\":false,\"group\":null}', '{\"collection\":\"subscription\",\"field\":\"association\",\"sort\":16,\"group\":null}', NULL),
(436, 440, 'subscription', '2', '{\"status\":\"published\",\"member\":\"ea769905-90c0-452f-9c2f-c8c0bf3538e8\",\"subscription_date\":\"2021-12-12\",\"duration\":1,\"fee_amount\":10,\"fee_method\":\"bank_transfer\",\"fee_date\":\"2021-12-12T20:33:00\",\"street\":\"2 rue de la gare\",\"city\":3,\"association\":1}', '{\"status\":\"published\",\"member\":\"ea769905-90c0-452f-9c2f-c8c0bf3538e8\",\"subscription_date\":\"2021-12-12\",\"duration\":1,\"fee_amount\":10,\"fee_method\":\"bank_transfer\",\"fee_date\":\"2021-12-12T20:33:00\",\"street\":\"2 rue de la gare\",\"city\":3,\"association\":1}', NULL),
(437, 441, 'subscription', '3', '{\"member\":\"f17cb9ab-7646-4262-b01d-b0143ed21339\",\"subscription_date\":\"2021-09-12\",\"duration\":1,\"fee_amount\":20,\"fee_method\":\"check\",\"fee_date\":\"2021-12-12T20:34:00\",\"street\":\"5 rue bis\",\"city\":1,\"association\":2}', '{\"member\":\"f17cb9ab-7646-4262-b01d-b0143ed21339\",\"subscription_date\":\"2021-09-12\",\"duration\":1,\"fee_amount\":20,\"fee_method\":\"check\",\"fee_date\":\"2021-12-12T20:34:00\",\"street\":\"5 rue bis\",\"city\":1,\"association\":2}', NULL),
(438, 442, 'subscription', '3', '{\"id\":3,\"status\":\"published\",\"sort\":null,\"user_created\":\"109171df-772a-4bf8-8f98-1fcbf802f710\",\"date_created\":\"2021-12-12T19:34:28.000Z\",\"user_updated\":\"109171df-772a-4bf8-8f98-1fcbf802f710\",\"date_updated\":\"2021-12-12T19:34:37.000Z\",\"duration\":1,\"fee_amount\":20,\"fee_date\":\"2021-12-12T20:34:00\",\"fee_method\":\"check\",\"member\":\"f17cb9ab-7646-4262-b01d-b0143ed21339\",\"subscription_date\":\"2021-09-12\",\"association\":2,\"street\":\"5 rue bis\",\"city\":1}', '{\"status\":\"published\",\"user_updated\":\"109171df-772a-4bf8-8f98-1fcbf802f710\",\"date_updated\":\"2021-12-12T19:34:37.899Z\"}', NULL),
(439, 443, 'subscription', '4', '{\"member\":\"396cbc17-2191-4eea-aba5-afaf2d710a13\",\"subscription_date\":\"2020-12-12\",\"duration\":1,\"fee_amount\":20,\"fee_method\":\"cash\",\"fee_date\":\"2020-12-12T20:35:00\",\"street\":\"2 rue annulé\",\"city\":3,\"association\":2}', '{\"member\":\"396cbc17-2191-4eea-aba5-afaf2d710a13\",\"subscription_date\":\"2020-12-12\",\"duration\":1,\"fee_amount\":20,\"fee_method\":\"cash\",\"fee_date\":\"2020-12-12T20:35:00\",\"street\":\"2 rue annulé\",\"city\":3,\"association\":2}', NULL),
(440, 444, 'subscription', '5', '{\"member\":\"a03a6aba-e836-47e1-8f32-da94deef4ce8\",\"subscription_date\":\"2021-12-12\",\"duration\":3,\"fee_amount\":30,\"fee_method\":\"check\",\"fee_date\":\"2021-12-12T20:35:00\",\"street\":\"5 rue du paiement\",\"city\":3,\"association\":2}', '{\"member\":\"a03a6aba-e836-47e1-8f32-da94deef4ce8\",\"subscription_date\":\"2021-12-12\",\"duration\":3,\"fee_amount\":30,\"fee_method\":\"check\",\"fee_date\":\"2021-12-12T20:35:00\",\"street\":\"5 rue du paiement\",\"city\":3,\"association\":2}', NULL),
(441, 445, 'subscription', '5', '{\"id\":5,\"status\":\"published\",\"sort\":null,\"user_created\":\"109171df-772a-4bf8-8f98-1fcbf802f710\",\"date_created\":\"2021-12-12T19:36:16.000Z\",\"user_updated\":\"109171df-772a-4bf8-8f98-1fcbf802f710\",\"date_updated\":\"2021-12-12T19:36:22.000Z\",\"duration\":3,\"fee_amount\":30,\"fee_date\":\"2021-12-12T20:35:00\",\"fee_method\":\"check\",\"member\":\"a03a6aba-e836-47e1-8f32-da94deef4ce8\",\"subscription_date\":\"2021-12-12\",\"association\":2,\"street\":\"5 rue du paiement\",\"city\":3}', '{\"status\":\"published\",\"user_updated\":\"109171df-772a-4bf8-8f98-1fcbf802f710\",\"date_updated\":\"2021-12-12T19:36:22.780Z\"}', NULL);
INSERT INTO `directus_revisions` (`id`, `activity`, `collection`, `item`, `data`, `delta`, `parent`) VALUES
(442, 446, 'directus_fields', '13', '{\"id\":13,\"collection\":\"subscription\",\"field\":\"member\",\"special\":null,\"interface\":\"select-dropdown-m2o\",\"options\":{\"template\":\"{{first_name}} {{last_name}}\"},\"display\":\"related-values\",\"display_options\":{\"template\":\"{{first_name}} {{last_name}}\"},\"readonly\":false,\"hidden\":false,\"sort\":4,\"width\":\"full\",\"translations\":[{\"language\":\"fr-FR\",\"translation\":\"Adhérent\"}],\"note\":null,\"conditions\":null,\"required\":false,\"group\":null}', '{\"collection\":\"subscription\",\"field\":\"member\",\"special\":null,\"interface\":\"select-dropdown-m2o\",\"options\":{\"template\":\"{{first_name}} {{last_name}}\"},\"display\":\"related-values\",\"display_options\":{\"template\":\"{{first_name}} {{last_name}}\"},\"readonly\":false,\"hidden\":false,\"sort\":4,\"width\":\"full\",\"translations\":[{\"language\":\"fr-FR\",\"translation\":\"Adhérent\"}],\"note\":null,\"conditions\":null,\"required\":false,\"group\":null}', NULL),
(443, 447, 'distribution_site', '1', '{\"name\":\"Lieu 1\",\"street\":\"1 rue de la chance\",\"city\":1}', '{\"name\":\"Lieu 1\",\"street\":\"1 rue de la chance\",\"city\":1}', NULL),
(444, 448, 'distribution_site', '2', '{\"name\":\"Lieu 2\",\"street\":\"2 rue de la veine\",\"city\":2}', '{\"name\":\"Lieu 2\",\"street\":\"2 rue de la veine\",\"city\":2}', NULL),
(445, 449, 'distribution_site', '1', '{\"id\":1,\"status\":\"published\",\"date_created\":\"2021-12-12T19:38:18.000Z\",\"date_updated\":\"2021-12-12T19:38:46.000Z\",\"name\":\"Lieu 1\",\"street\":\"1 rue de la chance\",\"city\":1}', '{\"status\":\"published\",\"date_updated\":\"2021-12-12T19:38:46.179Z\"}', NULL),
(446, 450, 'distribution_site', '2', '{\"id\":2,\"status\":\"published\",\"date_created\":\"2021-12-12T19:38:33.000Z\",\"date_updated\":\"2021-12-12T19:38:49.000Z\",\"name\":\"Lieu 2\",\"street\":\"2 rue de la veine\",\"city\":2}', '{\"status\":\"published\",\"date_updated\":\"2021-12-12T19:38:49.552Z\"}', NULL),
(447, 451, 'directus_fields', '103', '{\"hidden\":false,\"interface\":\"list-m2m\",\"readonly\":false,\"special\":\"m2m\",\"translations\":[{\"language\":\"fr-FR\",\"translation\":\"Producteur\"}],\"collection\":\"distribution\",\"field\":\"producer\"}', '{\"hidden\":false,\"interface\":\"list-m2m\",\"readonly\":false,\"special\":\"m2m\",\"translations\":[{\"language\":\"fr-FR\",\"translation\":\"Producteur\"}],\"collection\":\"distribution\",\"field\":\"producer\"}', NULL),
(448, 452, 'directus_collections', 'distribution_producer', '{\"hidden\":true,\"icon\":\"import_export\",\"collection\":\"distribution_producer\"}', '{\"hidden\":true,\"icon\":\"import_export\",\"collection\":\"distribution_producer\"}', NULL),
(449, 453, 'directus_fields', '104', '{\"hidden\":true,\"field\":\"id\",\"collection\":\"distribution_producer\"}', '{\"hidden\":true,\"field\":\"id\",\"collection\":\"distribution_producer\"}', NULL),
(450, 454, 'directus_fields', '105', '{\"hidden\":true,\"collection\":\"distribution_producer\",\"field\":\"distribution_id\"}', '{\"hidden\":true,\"collection\":\"distribution_producer\",\"field\":\"distribution_id\"}', NULL),
(451, 455, 'directus_fields', '106', '{\"hidden\":true,\"collection\":\"distribution_producer\",\"field\":\"producer_id\"}', '{\"hidden\":true,\"collection\":\"distribution_producer\",\"field\":\"producer_id\"}', NULL),
(452, 456, 'directus_fields', '58', '{\"id\":58,\"collection\":\"distribution\",\"field\":\"id\",\"special\":null,\"interface\":\"input\",\"options\":null,\"display\":null,\"display_options\":null,\"readonly\":true,\"hidden\":true,\"sort\":1,\"width\":\"full\",\"translations\":null,\"note\":null,\"conditions\":null,\"required\":false,\"group\":null}', '{\"collection\":\"distribution\",\"field\":\"id\",\"sort\":1,\"group\":null}', NULL),
(453, 457, 'directus_fields', '59', '{\"id\":59,\"collection\":\"distribution\",\"field\":\"status\",\"special\":null,\"interface\":\"select-dropdown\",\"options\":{\"choices\":[{\"text\":\"$t:published\",\"value\":\"published\"},{\"text\":\"$t:draft\",\"value\":\"draft\"},{\"text\":\"$t:archived\",\"value\":\"archived\"}]},\"display\":\"labels\",\"display_options\":{\"showAsDot\":true,\"choices\":[{\"background\":\"#00C897\",\"value\":\"published\"},{\"background\":\"#D3DAE4\",\"value\":\"draft\"},{\"background\":\"#F7971C\",\"value\":\"archived\"}]},\"readonly\":false,\"hidden\":false,\"sort\":2,\"width\":\"full\",\"translations\":null,\"note\":null,\"conditions\":null,\"required\":false,\"group\":null}', '{\"collection\":\"distribution\",\"field\":\"status\",\"sort\":2,\"group\":null}', NULL),
(454, 458, 'directus_fields', '60', '{\"id\":60,\"collection\":\"distribution\",\"field\":\"date_created\",\"special\":[\"date-created\"],\"interface\":\"datetime\",\"options\":null,\"display\":\"datetime\",\"display_options\":{\"relative\":true},\"readonly\":true,\"hidden\":true,\"sort\":3,\"width\":\"half\",\"translations\":null,\"note\":null,\"conditions\":null,\"required\":false,\"group\":null}', '{\"collection\":\"distribution\",\"field\":\"date_created\",\"sort\":3,\"group\":null}', NULL),
(455, 459, 'directus_fields', '61', '{\"id\":61,\"collection\":\"distribution\",\"field\":\"date_updated\",\"special\":[\"date-updated\"],\"interface\":\"datetime\",\"options\":null,\"display\":\"datetime\",\"display_options\":{\"relative\":true},\"readonly\":true,\"hidden\":true,\"sort\":4,\"width\":\"half\",\"translations\":null,\"note\":null,\"conditions\":null,\"required\":false,\"group\":null}', '{\"collection\":\"distribution\",\"field\":\"date_updated\",\"sort\":4,\"group\":null}', NULL),
(456, 460, 'directus_fields', '62', '{\"id\":62,\"collection\":\"distribution\",\"field\":\"date\",\"special\":null,\"interface\":\"datetime\",\"options\":null,\"display\":null,\"display_options\":null,\"readonly\":false,\"hidden\":false,\"sort\":5,\"width\":\"full\",\"translations\":[{\"language\":\"fr-FR\",\"translation\":\"Date de la distribution\"}],\"note\":null,\"conditions\":null,\"required\":false,\"group\":null}', '{\"collection\":\"distribution\",\"field\":\"date\",\"sort\":5,\"group\":null}', NULL),
(457, 461, 'directus_fields', '63', '{\"id\":63,\"collection\":\"distribution\",\"field\":\"site\",\"special\":null,\"interface\":\"select-dropdown-m2o\",\"options\":{\"template\":\"{{name}}\"},\"display\":\"related-values\",\"display_options\":{\"template\":\"{{name}}\"},\"readonly\":false,\"hidden\":false,\"sort\":6,\"width\":\"full\",\"translations\":[{\"language\":\"fr-FR\",\"translation\":\"Lieu de distribution\"}],\"note\":null,\"conditions\":null,\"required\":false,\"group\":null}', '{\"collection\":\"distribution\",\"field\":\"site\",\"sort\":6,\"group\":null}', NULL),
(458, 462, 'directus_fields', '103', '{\"id\":103,\"collection\":\"distribution\",\"field\":\"producer\",\"special\":[\"m2m\"],\"interface\":\"list-m2m\",\"options\":null,\"display\":null,\"display_options\":null,\"readonly\":false,\"hidden\":false,\"sort\":7,\"width\":\"full\",\"translations\":[{\"language\":\"fr-FR\",\"translation\":\"Producteur\"}],\"note\":null,\"conditions\":null,\"required\":false,\"group\":null}', '{\"collection\":\"distribution\",\"field\":\"producer\",\"sort\":7,\"group\":null}', NULL),
(459, 463, 'directus_fields', '85', '{\"id\":85,\"collection\":\"distribution\",\"field\":\"association\",\"special\":null,\"interface\":\"select-dropdown-m2o\",\"options\":{\"template\":\"{{name}}\"},\"display\":\"related-values\",\"display_options\":{\"template\":\"{{name}}\"},\"readonly\":false,\"hidden\":false,\"sort\":8,\"width\":\"full\",\"translations\":null,\"note\":null,\"conditions\":null,\"required\":false,\"group\":null}', '{\"collection\":\"distribution\",\"field\":\"association\",\"sort\":8,\"group\":null}', NULL),
(460, 464, 'directus_fields', '103', '{\"id\":103,\"collection\":\"distribution\",\"field\":\"producer\",\"special\":[\"m2m\"],\"interface\":\"list-m2m\",\"options\":null,\"display\":null,\"display_options\":null,\"readonly\":false,\"hidden\":false,\"sort\":7,\"width\":\"full\",\"translations\":[{\"language\":\"fr-FR\",\"translation\":\"Producteur(s) présent\"}],\"note\":null,\"conditions\":null,\"required\":false,\"group\":null}', '{\"collection\":\"distribution\",\"field\":\"producer\",\"special\":[\"m2m\"],\"interface\":\"list-m2m\",\"options\":null,\"display\":null,\"display_options\":null,\"readonly\":false,\"hidden\":false,\"sort\":7,\"width\":\"full\",\"translations\":[{\"language\":\"fr-FR\",\"translation\":\"Producteur(s) présent\"}],\"note\":null,\"conditions\":null,\"required\":false,\"group\":null}', NULL),
(461, 465, 'directus_fields', '103', '{\"id\":103,\"collection\":\"distribution\",\"field\":\"producer\",\"special\":[\"m2m\"],\"interface\":\"list-m2m\",\"options\":{\"template\":\"{{producer_id.name}}\"},\"display\":\"related-values\",\"display_options\":{\"template\":\"{{producer_id.name}}\"},\"readonly\":false,\"hidden\":false,\"sort\":7,\"width\":\"full\",\"translations\":[{\"language\":\"fr-FR\",\"translation\":\"Producteur(s) présent\"}],\"note\":null,\"conditions\":null,\"required\":false,\"group\":null}', '{\"collection\":\"distribution\",\"field\":\"producer\",\"special\":[\"m2m\"],\"interface\":\"list-m2m\",\"options\":{\"template\":\"{{producer_id.name}}\"},\"display\":\"related-values\",\"display_options\":{\"template\":\"{{producer_id.name}}\"},\"readonly\":false,\"hidden\":false,\"sort\":7,\"width\":\"full\",\"translations\":[{\"language\":\"fr-FR\",\"translation\":\"Producteur(s) présent\"}],\"note\":null,\"conditions\":null,\"required\":false,\"group\":null}', NULL),
(462, 466, 'distribution_producer', '1', '{\"producer_id\":1,\"distribution_id\":1}', '{\"producer_id\":1,\"distribution_id\":1}', 464),
(463, 467, 'distribution_producer', '2', '{\"producer_id\":2,\"distribution_id\":1}', '{\"producer_id\":2,\"distribution_id\":1}', 464),
(464, 468, 'distribution', '1', '{\"status\":\"published\",\"date\":\"2021-12-12T20:40:00\",\"site\":1,\"producer\":[{\"producer_id\":1},{\"producer_id\":2}],\"association\":1}', '{\"status\":\"published\",\"date\":\"2021-12-12T20:40:00\",\"site\":1,\"producer\":[{\"producer_id\":1},{\"producer_id\":2}],\"association\":1}', NULL),
(465, 469, 'distribution_producer', '3', '{\"producer_id\":1,\"distribution_id\":2}', '{\"producer_id\":1,\"distribution_id\":2}', 466),
(466, 470, 'distribution', '2', '{\"date\":\"2021-12-12T20:40:00\",\"site\":2,\"producer\":[{\"producer_id\":1}],\"association\":2}', '{\"date\":\"2021-12-12T20:40:00\",\"site\":2,\"producer\":[{\"producer_id\":1}],\"association\":2}', NULL),
(467, 472, 'subscription', '6', '{\"status\":\"published\",\"member\":\"f17cb9ab-7646-4262-b01d-b0143ed21339\",\"subscription_date\":\"2021-12-13\",\"duration\":1,\"fee_amount\":30,\"fee_method\":\"check\",\"fee_date\":\"2021-12-13T17:48:00\",\"street\":\"5 bis\",\"city\":4,\"association\":1}', '{\"status\":\"published\",\"member\":\"f17cb9ab-7646-4262-b01d-b0143ed21339\",\"subscription_date\":\"2021-12-13\",\"duration\":1,\"fee_amount\":30,\"fee_method\":\"check\",\"fee_date\":\"2021-12-13T17:48:00\",\"street\":\"5 bis\",\"city\":4,\"association\":1}', NULL),
(468, 473, 'directus_fields', '107', '{\"hidden\":false,\"interface\":\"input\",\"display\":\"raw\",\"readonly\":false,\"translations\":[{\"language\":\"fr-FR\",\"translation\":\"Email\"}],\"collection\":\"producer\",\"field\":\"mail\"}', '{\"hidden\":false,\"interface\":\"input\",\"display\":\"raw\",\"readonly\":false,\"translations\":[{\"language\":\"fr-FR\",\"translation\":\"Email\"}],\"collection\":\"producer\",\"field\":\"mail\"}', NULL),
(469, 474, 'directus_fields', '108', '{\"hidden\":false,\"interface\":\"input\",\"display\":\"raw\",\"readonly\":false,\"translations\":[{\"language\":\"fr-FR\",\"translation\":\"Téléphone\"}],\"collection\":\"producer\",\"field\":\"phone\"}', '{\"hidden\":false,\"interface\":\"input\",\"display\":\"raw\",\"readonly\":false,\"translations\":[{\"language\":\"fr-FR\",\"translation\":\"Téléphone\"}],\"collection\":\"producer\",\"field\":\"phone\"}', NULL),
(470, 475, 'directus_fields', '107', '{\"id\":107,\"collection\":\"producer\",\"field\":\"mail\",\"special\":null,\"interface\":\"input\",\"options\":null,\"display\":\"raw\",\"display_options\":null,\"readonly\":false,\"hidden\":false,\"sort\":null,\"width\":\"half\",\"translations\":[{\"language\":\"fr-FR\",\"translation\":\"Email\"}],\"note\":null,\"conditions\":null,\"required\":false,\"group\":null}', '{\"collection\":\"producer\",\"field\":\"mail\",\"width\":\"half\"}', NULL),
(471, 476, 'directus_fields', '108', '{\"id\":108,\"collection\":\"producer\",\"field\":\"phone\",\"special\":null,\"interface\":\"input\",\"options\":null,\"display\":\"raw\",\"display_options\":null,\"readonly\":false,\"hidden\":false,\"sort\":null,\"width\":\"half\",\"translations\":[{\"language\":\"fr-FR\",\"translation\":\"Téléphone\"}],\"note\":null,\"conditions\":null,\"required\":false,\"group\":null}', '{\"collection\":\"producer\",\"field\":\"phone\",\"width\":\"half\"}', NULL),
(472, 477, 'directus_fields', '15', '{\"id\":15,\"collection\":\"producer\",\"field\":\"id\",\"special\":null,\"interface\":\"input\",\"options\":null,\"display\":null,\"display_options\":null,\"readonly\":true,\"hidden\":true,\"sort\":1,\"width\":\"full\",\"translations\":null,\"note\":null,\"conditions\":null,\"required\":false,\"group\":null}', '{\"collection\":\"producer\",\"field\":\"id\",\"sort\":1,\"group\":null}', NULL),
(473, 478, 'directus_fields', '16', '{\"id\":16,\"collection\":\"producer\",\"field\":\"status\",\"special\":null,\"interface\":\"select-dropdown\",\"options\":{\"choices\":[{\"text\":\"$t:published\",\"value\":\"published\"},{\"text\":\"$t:draft\",\"value\":\"draft\"},{\"text\":\"$t:archived\",\"value\":\"archived\"}]},\"display\":\"labels\",\"display_options\":{\"showAsDot\":true,\"choices\":[{\"background\":\"#00C897\",\"value\":\"published\"},{\"background\":\"#D3DAE4\",\"value\":\"draft\"},{\"background\":\"#F7971C\",\"value\":\"archived\"}]},\"readonly\":false,\"hidden\":false,\"sort\":2,\"width\":\"full\",\"translations\":null,\"note\":null,\"conditions\":null,\"required\":false,\"group\":null}', '{\"collection\":\"producer\",\"field\":\"status\",\"sort\":2,\"group\":null}', NULL),
(474, 479, 'directus_fields', '17', '{\"id\":17,\"collection\":\"producer\",\"field\":\"date_created\",\"special\":[\"date-created\"],\"interface\":\"datetime\",\"options\":null,\"display\":\"datetime\",\"display_options\":{\"relative\":true},\"readonly\":true,\"hidden\":true,\"sort\":3,\"width\":\"half\",\"translations\":null,\"note\":null,\"conditions\":null,\"required\":false,\"group\":null}', '{\"collection\":\"producer\",\"field\":\"date_created\",\"sort\":3,\"group\":null}', NULL),
(475, 480, 'directus_fields', '18', '{\"id\":18,\"collection\":\"producer\",\"field\":\"date_updated\",\"special\":[\"date-updated\"],\"interface\":\"datetime\",\"options\":null,\"display\":\"datetime\",\"display_options\":{\"relative\":true},\"readonly\":true,\"hidden\":true,\"sort\":4,\"width\":\"half\",\"translations\":null,\"note\":null,\"conditions\":null,\"required\":false,\"group\":null}', '{\"collection\":\"producer\",\"field\":\"date_updated\",\"sort\":4,\"group\":null}', NULL),
(476, 481, 'directus_fields', '19', '{\"id\":19,\"collection\":\"producer\",\"field\":\"legal_status\",\"special\":null,\"interface\":\"select-dropdown\",\"options\":{\"choices\":[{\"text\":\"Auto entreprise\",\"value\":\"auto\"},{\"text\":\"SAS\",\"value\":\"sas\"},{\"text\":\"EIRL\",\"value\":\"eirl\"},{\"text\":\"EARL\",\"value\":\"earl\"}]},\"display\":\"raw\",\"display_options\":null,\"readonly\":false,\"hidden\":false,\"sort\":5,\"width\":\"half\",\"translations\":[{\"language\":\"fr-FR\",\"translation\":\"Status Juridique\"}],\"note\":null,\"conditions\":null,\"required\":false,\"group\":null}', '{\"collection\":\"producer\",\"field\":\"legal_status\",\"sort\":5,\"group\":null}', NULL),
(477, 482, 'directus_fields', '20', '{\"id\":20,\"collection\":\"producer\",\"field\":\"name\",\"special\":null,\"interface\":\"input\",\"options\":null,\"display\":\"raw\",\"display_options\":null,\"readonly\":false,\"hidden\":false,\"sort\":6,\"width\":\"half\",\"translations\":[{\"language\":\"fr-FR\",\"translation\":\"Nom de l\'entreprise\"}],\"note\":null,\"conditions\":null,\"required\":false,\"group\":null}', '{\"collection\":\"producer\",\"field\":\"name\",\"sort\":6,\"group\":null}', NULL),
(478, 483, 'directus_fields', '21', '{\"id\":21,\"collection\":\"producer\",\"field\":\"date\",\"special\":null,\"interface\":\"datetime\",\"options\":null,\"display\":\"datetime\",\"display_options\":null,\"readonly\":false,\"hidden\":false,\"sort\":7,\"width\":\"full\",\"translations\":[{\"language\":\"fr-FR\",\"translation\":\"Date de l\'inscription\"}],\"note\":null,\"conditions\":null,\"required\":false,\"group\":null}', '{\"collection\":\"producer\",\"field\":\"date\",\"sort\":7,\"group\":null}', NULL),
(479, 484, 'directus_fields', '23', '{\"id\":23,\"collection\":\"producer\",\"field\":\"street\",\"special\":null,\"interface\":\"input\",\"options\":null,\"display\":\"raw\",\"display_options\":null,\"readonly\":false,\"hidden\":false,\"sort\":8,\"width\":\"half\",\"translations\":[{\"language\":\"fr-FR\",\"translation\":\"Adresse (rue)\"}],\"note\":null,\"conditions\":null,\"required\":false,\"group\":null}', '{\"collection\":\"producer\",\"field\":\"street\",\"sort\":8,\"group\":null}', NULL),
(480, 485, 'directus_fields', '76', '{\"id\":76,\"collection\":\"producer\",\"field\":\"city\",\"special\":null,\"interface\":\"select-dropdown-m2o\",\"options\":{\"template\":\"{{postal_code}} - {{name}}\"},\"display\":\"related-values\",\"display_options\":{\"template\":\"{{postal_code}}- {{name}}\"},\"readonly\":false,\"hidden\":false,\"sort\":9,\"width\":\"half\",\"translations\":[{\"language\":\"fr-FR\",\"translation\":\"Adresse (ville)\"}],\"note\":null,\"conditions\":null,\"required\":false,\"group\":null}', '{\"collection\":\"producer\",\"field\":\"city\",\"sort\":9,\"group\":null}', NULL),
(481, 486, 'directus_fields', '107', '{\"id\":107,\"collection\":\"producer\",\"field\":\"mail\",\"special\":null,\"interface\":\"input\",\"options\":null,\"display\":\"raw\",\"display_options\":null,\"readonly\":false,\"hidden\":false,\"sort\":10,\"width\":\"half\",\"translations\":[{\"language\":\"fr-FR\",\"translation\":\"Email\"}],\"note\":null,\"conditions\":null,\"required\":false,\"group\":null}', '{\"collection\":\"producer\",\"field\":\"mail\",\"sort\":10,\"group\":null}', NULL),
(482, 487, 'directus_fields', '108', '{\"id\":108,\"collection\":\"producer\",\"field\":\"phone\",\"special\":null,\"interface\":\"input\",\"options\":null,\"display\":\"raw\",\"display_options\":null,\"readonly\":false,\"hidden\":false,\"sort\":11,\"width\":\"half\",\"translations\":[{\"language\":\"fr-FR\",\"translation\":\"Téléphone\"}],\"note\":null,\"conditions\":null,\"required\":false,\"group\":null}', '{\"collection\":\"producer\",\"field\":\"phone\",\"sort\":11,\"group\":null}', NULL),
(483, 488, 'directus_fields', '22', '{\"id\":22,\"collection\":\"producer\",\"field\":\"image\",\"special\":null,\"interface\":\"file-image\",\"options\":null,\"display\":\"image\",\"display_options\":null,\"readonly\":false,\"hidden\":false,\"sort\":12,\"width\":\"full\",\"translations\":[{\"language\":\"fr-FR\",\"translation\":\"Logo de l\'entreprise\"}],\"note\":null,\"conditions\":null,\"required\":false,\"group\":null}', '{\"collection\":\"producer\",\"field\":\"image\",\"sort\":12,\"group\":null}', NULL),
(484, 489, 'distribution_producer', '4', '{\"producer_id\":1,\"distribution_id\":3}', '{\"producer_id\":1,\"distribution_id\":3}', 486),
(485, 490, 'distribution_producer', '5', '{\"producer_id\":2,\"distribution_id\":3}', '{\"producer_id\":2,\"distribution_id\":3}', 486),
(486, 491, 'distribution', '3', '{\"date\":\"2021-12-13T17:52:00\",\"site\":1,\"producer\":[{\"producer_id\":1},{\"producer_id\":2}],\"association\":1}', '{\"date\":\"2021-12-13T17:52:00\",\"site\":1,\"producer\":[{\"producer_id\":1},{\"producer_id\":2}],\"association\":1}', NULL),
(487, 492, 'distribution', '3', '{\"id\":3,\"status\":\"published\",\"date_created\":\"2021-12-13T16:52:57.000Z\",\"date_updated\":\"2021-12-13T16:53:16.000Z\",\"date\":\"2021-12-13T17:52:00\",\"site\":1,\"association\":1,\"producer\":[4,5]}', '{\"status\":\"published\",\"date_updated\":\"2021-12-13T16:53:16.404Z\"}', NULL),
(488, 494, 'directus_permissions', '1', '{\"role\":null,\"collection\":\"directus_files\",\"action\":\"read\",\"fields\":[\"*\"],\"permissions\":{},\"validation\":{}}', '{\"role\":null,\"collection\":\"directus_files\",\"action\":\"read\",\"fields\":[\"*\"],\"permissions\":{},\"validation\":{}}', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `directus_roles`
--

CREATE TABLE `directus_roles` (
  `id` char(36) NOT NULL,
  `name` varchar(100) NOT NULL,
  `icon` varchar(30) NOT NULL DEFAULT 'supervised_user_circle',
  `description` text DEFAULT NULL,
  `ip_access` text DEFAULT NULL,
  `enforce_tfa` tinyint(1) NOT NULL DEFAULT 0,
  `admin_access` tinyint(1) NOT NULL DEFAULT 0,
  `app_access` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `directus_roles`
--

INSERT INTO `directus_roles` (`id`, `name`, `icon`, `description`, `ip_access`, `enforce_tfa`, `admin_access`, `app_access`) VALUES
('fdcaa9db-c186-4905-8c1f-14a378416a0c', 'Admin', 'supervised_user_circle', NULL, NULL, 0, 1, 1);

-- --------------------------------------------------------

--
-- Structure de la table `directus_sessions`
--

CREATE TABLE `directus_sessions` (
  `token` varchar(64) NOT NULL,
  `user` char(36) DEFAULT NULL,
  `expires` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `ip` varchar(255) DEFAULT NULL,
  `user_agent` varchar(255) DEFAULT NULL,
  `share` char(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `directus_sessions`
--

INSERT INTO `directus_sessions` (`token`, `user`, `expires`, `ip`, `user_agent`, `share`) VALUES
('GFPFlIvamf5OD-3MWKblrJe5l_BVdyFoI0dWNepVsxySTNPfAkYlF28BRS3Gi9Mi', '109171df-772a-4bf8-8f98-1fcbf802f710', '2022-01-11 17:12:01', '172.20.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `directus_settings`
--

CREATE TABLE `directus_settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `project_name` varchar(100) NOT NULL DEFAULT 'Directus',
  `project_url` varchar(255) DEFAULT NULL,
  `project_color` varchar(10) DEFAULT '#00C897',
  `project_logo` char(36) DEFAULT NULL,
  `public_foreground` char(36) DEFAULT NULL,
  `public_background` char(36) DEFAULT NULL,
  `public_note` text DEFAULT NULL,
  `auth_login_attempts` int(10) UNSIGNED DEFAULT 25,
  `auth_password_policy` varchar(100) DEFAULT NULL,
  `storage_asset_transform` varchar(7) DEFAULT 'all',
  `storage_asset_presets` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`storage_asset_presets`)),
  `custom_css` text DEFAULT NULL,
  `storage_default_folder` char(36) DEFAULT NULL,
  `basemaps` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`basemaps`)),
  `mapbox_key` varchar(255) DEFAULT NULL,
  `module_bar` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`module_bar`)),
  `project_descriptor` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `directus_shares`
--

CREATE TABLE `directus_shares` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `collection` varchar(64) DEFAULT NULL,
  `item` varchar(255) DEFAULT NULL,
  `role` char(36) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `user_created` char(36) DEFAULT NULL,
  `date_created` timestamp NOT NULL DEFAULT current_timestamp(),
  `date_start` timestamp NULL DEFAULT NULL,
  `date_end` timestamp NULL DEFAULT NULL,
  `times_used` int(11) DEFAULT 0,
  `max_uses` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `directus_users`
--

CREATE TABLE `directus_users` (
  `id` char(36) NOT NULL,
  `first_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `email` varchar(128) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `title` varchar(50) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `tags` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`tags`)),
  `avatar` char(36) DEFAULT NULL,
  `language` varchar(8) DEFAULT 'en-US',
  `theme` varchar(20) DEFAULT 'auto',
  `tfa_secret` varchar(255) DEFAULT NULL,
  `status` varchar(16) NOT NULL DEFAULT 'active',
  `role` char(36) DEFAULT NULL,
  `token` varchar(255) DEFAULT NULL,
  `last_access` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `last_page` varchar(255) DEFAULT NULL,
  `provider` varchar(128) NOT NULL DEFAULT 'default',
  `external_identifier` varchar(255) DEFAULT NULL,
  `auth_data` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`auth_data`)),
  `email_notifications` tinyint(1) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `directus_users`
--

INSERT INTO `directus_users` (`id`, `first_name`, `last_name`, `email`, `password`, `location`, `title`, `description`, `tags`, `avatar`, `language`, `theme`, `tfa_secret`, `status`, `role`, `token`, `last_access`, `last_page`, `provider`, `external_identifier`, `auth_data`, `email_notifications`) VALUES
('109171df-772a-4bf8-8f98-1fcbf802f710', 'Fabien', 'Perrichon', 'fatoon.dev@gmail.com', '$argon2i$v=19$m=4096,t=3,p=1$fSDDmiM74pju0chIoylkiQ$5NtE6PV5XroyJWSBn/EWP7pOW7xcRImGbHe8A9HMUjw', NULL, NULL, NULL, NULL, '07ee7a26-5600-4ada-9823-42d652cb557a', 'fr-FR', 'auto', NULL, 'active', 'fdcaa9db-c186-4905-8c1f-14a378416a0c', NULL, '2022-01-04 17:12:03', '/users', 'default', NULL, NULL, 1),
('396cbc17-2191-4eea-aba5-afaf2d710a13', 'Armand', 'Laurent', 'test3@gmail.com', '$argon2i$v=19$m=4096,t=3,p=1$z8RtlTfTghifD7L3IX/bTg$xNCwNWfiTK7kyJW7WhTf0q9d/qqP8wkbVLrcoRLJylo', NULL, NULL, NULL, NULL, '8c287c2a-0902-43be-ac32-09a025d001a0', 'en-US', 'auto', NULL, 'active', NULL, NULL, '2021-12-12 19:30:28', NULL, 'default', NULL, NULL, 1),
('a03a6aba-e836-47e1-8f32-da94deef4ce8', 'Anastasie', 'Lanoie', 'test4@gmail.com', '$argon2i$v=19$m=4096,t=3,p=1$K6Z7Ph/NsU4sdnQhinUcmg$1HYxWFS28wvXlzpXzkQSYsHSGsWeRynEs7WG9xjAr6w', NULL, NULL, NULL, NULL, '0ce3f020-808a-4a94-8356-1c957e468bd6', 'en-US', 'auto', NULL, 'active', NULL, NULL, '2021-12-12 19:31:00', NULL, 'default', NULL, NULL, 1),
('ea769905-90c0-452f-9c2f-c8c0bf3538e8', 'Denis', 'Tanguay', 'test1@gmail.com', '$argon2i$v=19$m=4096,t=3,p=1$99mg1Gr7+kYFINjFmJEeUQ$ZCvH+Q/AnKgm8IlD7hcLrJaqFBNSpa9PIHdUv1AGT9s', NULL, NULL, NULL, NULL, '8c287c2a-0902-43be-ac32-09a025d001a0', 'en-US', 'auto', NULL, 'active', NULL, NULL, '2021-12-12 19:28:54', NULL, 'default', NULL, NULL, 1),
('f17cb9ab-7646-4262-b01d-b0143ed21339', 'Dianne', 'Datz', 'test2@gmail.com', '$argon2i$v=19$m=4096,t=3,p=1$6z+S2U2gSlV073I6V6zXJg$evJWDAb2RJnSjyU+jn+P3DK24D3pZ7BC1kRAeVOJ5+Q', NULL, NULL, NULL, NULL, '8713c1fe-89aa-48d0-91eb-10497d1b2e27', 'en-US', 'auto', NULL, 'active', NULL, NULL, '2021-12-12 19:29:55', NULL, 'default', NULL, NULL, 1);

-- --------------------------------------------------------

--
-- Structure de la table `directus_webhooks`
--

CREATE TABLE `directus_webhooks` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `method` varchar(10) NOT NULL DEFAULT 'POST',
  `url` text NOT NULL,
  `status` varchar(10) NOT NULL DEFAULT 'active',
  `data` tinyint(1) NOT NULL DEFAULT 1,
  `actions` varchar(100) NOT NULL,
  `collections` text NOT NULL,
  `headers` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`headers`))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `distribution`
--

CREATE TABLE `distribution` (
  `id` int(10) UNSIGNED NOT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'draft',
  `date_created` timestamp NULL DEFAULT NULL,
  `date_updated` timestamp NULL DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `site` int(10) UNSIGNED DEFAULT NULL,
  `association` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `distribution`
--

INSERT INTO `distribution` (`id`, `status`, `date_created`, `date_updated`, `date`, `site`, `association`) VALUES
(1, 'published', '2021-12-12 19:40:37', NULL, '2021-12-12 20:40:00', 1, 1),
(2, 'draft', '2021-12-12 19:40:59', NULL, '2021-12-12 20:40:00', 2, 2),
(3, 'published', '2021-12-13 16:52:57', '2021-12-13 16:53:16', '2021-12-13 17:52:00', 1, 1);

-- --------------------------------------------------------

--
-- Structure de la table `distribution_producer`
--

CREATE TABLE `distribution_producer` (
  `id` int(10) UNSIGNED NOT NULL,
  `distribution_id` int(10) UNSIGNED DEFAULT NULL,
  `producer_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `distribution_producer`
--

INSERT INTO `distribution_producer` (`id`, `distribution_id`, `producer_id`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 2, 1),
(4, 3, 1),
(5, 3, 2);

-- --------------------------------------------------------

--
-- Structure de la table `distribution_site`
--

CREATE TABLE `distribution_site` (
  `id` int(10) UNSIGNED NOT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'draft',
  `date_created` timestamp NULL DEFAULT NULL,
  `date_updated` timestamp NULL DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `street` varchar(255) DEFAULT NULL,
  `city` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `distribution_site`
--

INSERT INTO `distribution_site` (`id`, `status`, `date_created`, `date_updated`, `name`, `street`, `city`) VALUES
(1, 'published', '2021-12-12 19:38:18', '2021-12-12 19:38:46', 'Lieu 1', '1 rue de la chance', 1),
(2, 'published', '2021-12-12 19:38:33', '2021-12-12 19:38:49', 'Lieu 2', '2 rue de la veine', 2);

-- --------------------------------------------------------

--
-- Structure de la table `order`
--

CREATE TABLE `order` (
  `id` int(10) UNSIGNED NOT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'draft',
  `date_created` timestamp NULL DEFAULT NULL,
  `date_updated` timestamp NULL DEFAULT NULL,
  `ditribution` int(10) UNSIGNED DEFAULT NULL,
  `member` char(36) DEFAULT NULL,
  `cart` int(10) UNSIGNED DEFAULT NULL,
  `total` decimal(10,5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `order_product`
--

CREATE TABLE `order_product` (
  `id` int(10) UNSIGNED NOT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'draft',
  `date_created` timestamp NULL DEFAULT NULL,
  `date_updated` timestamp NULL DEFAULT NULL,
  `product` int(10) UNSIGNED DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `total` decimal(10,5) DEFAULT NULL,
  `tva` decimal(10,5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `producer`
--

CREATE TABLE `producer` (
  `id` int(10) UNSIGNED NOT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'draft',
  `date_created` timestamp NULL DEFAULT NULL,
  `date_updated` timestamp NULL DEFAULT NULL,
  `legal_status` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `image` char(36) DEFAULT NULL,
  `street` varchar(255) DEFAULT NULL,
  `city` int(10) UNSIGNED DEFAULT NULL,
  `mail` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `producer`
--

INSERT INTO `producer` (`id`, `status`, `date_created`, `date_updated`, `legal_status`, `name`, `date`, `image`, `street`, `city`, `mail`, `phone`) VALUES
(1, 'published', '2021-12-11 19:18:16', NULL, 'earl', 'Lescoat', '2021-12-11 20:17:00', NULL, 'LESCOAT MORIZUR', 3, NULL, NULL),
(2, 'published', '2021-12-11 19:20:13', '2021-12-11 19:20:18', 'earl', 'Les Landes celtes', '2021-12-11 20:19:00', NULL, 'LE BOURG', 4, NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `products`
--

CREATE TABLE `products` (
  `id` int(10) UNSIGNED NOT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'draft',
  `sort` int(11) DEFAULT NULL,
  `date_created` timestamp NULL DEFAULT NULL,
  `date_updated` timestamp NULL DEFAULT NULL,
  `image` char(36) DEFAULT NULL,
  `price` decimal(10,5) DEFAULT NULL,
  `unit` varchar(255) DEFAULT NULL,
  `stock` int(11) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `reference` varchar(255) DEFAULT NULL,
  `weight` decimal(10,5) DEFAULT NULL,
  `variable_price` tinyint(1) NOT NULL DEFAULT 0,
  `category` int(10) UNSIGNED DEFAULT NULL,
  `certification` int(10) UNSIGNED DEFAULT NULL,
  `producer` int(10) UNSIGNED DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `tva` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `subscription`
--

CREATE TABLE `subscription` (
  `id` int(10) UNSIGNED NOT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'draft',
  `sort` int(11) DEFAULT NULL,
  `user_created` char(36) DEFAULT NULL,
  `date_created` timestamp NULL DEFAULT NULL,
  `user_updated` char(36) DEFAULT NULL,
  `date_updated` timestamp NULL DEFAULT NULL,
  `duration` int(11) DEFAULT NULL,
  `fee_amount` decimal(10,5) DEFAULT NULL,
  `fee_date` datetime DEFAULT NULL,
  `fee_method` varchar(255) DEFAULT NULL,
  `member` char(36) DEFAULT NULL,
  `subscription_date` date DEFAULT NULL,
  `association` int(10) UNSIGNED DEFAULT NULL,
  `street` varchar(255) DEFAULT NULL,
  `city` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `subscription`
--

INSERT INTO `subscription` (`id`, `status`, `sort`, `user_created`, `date_created`, `user_updated`, `date_updated`, `duration`, `fee_amount`, `fee_date`, `fee_method`, `member`, `subscription_date`, `association`, `street`, `city`) VALUES
(1, 'published', NULL, '109171df-772a-4bf8-8f98-1fcbf802f710', '2021-12-11 17:04:08', NULL, NULL, 1, '20.00000', '2021-12-11 18:04:00', 'cash', '109171df-772a-4bf8-8f98-1fcbf802f710', '2021-12-11', NULL, NULL, NULL),
(2, 'published', NULL, '109171df-772a-4bf8-8f98-1fcbf802f710', '2021-12-12 19:33:39', NULL, NULL, 1, '10.00000', '2021-12-12 20:33:00', 'bank_transfer', 'ea769905-90c0-452f-9c2f-c8c0bf3538e8', '2021-12-12', 1, '2 rue de la gare', 3),
(4, 'draft', NULL, '109171df-772a-4bf8-8f98-1fcbf802f710', '2021-12-12 19:35:23', NULL, NULL, 1, '20.00000', '2020-12-12 20:35:00', 'cash', '396cbc17-2191-4eea-aba5-afaf2d710a13', '2020-12-12', 2, '2 rue annulé', 3),
(5, 'published', NULL, '109171df-772a-4bf8-8f98-1fcbf802f710', '2021-12-12 19:36:16', '109171df-772a-4bf8-8f98-1fcbf802f710', '2021-12-12 19:36:22', 3, '30.00000', '2021-12-12 20:35:00', 'check', 'a03a6aba-e836-47e1-8f32-da94deef4ce8', '2021-12-12', 2, '5 rue du paiement', 3),
(6, 'published', NULL, '109171df-772a-4bf8-8f98-1fcbf802f710', '2021-12-13 16:49:03', NULL, NULL, 1, '30.00000', '2021-12-13 17:48:00', 'check', 'f17cb9ab-7646-4262-b01d-b0143ed21339', '2021-12-13', 1, '5 bis', 4);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `association`
--
ALTER TABLE `association`
  ADD PRIMARY KEY (`id`),
  ADD KEY `association_city_foreign` (`city`);

--
-- Index pour la table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `certification`
--
ALTER TABLE `certification`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `city`
--
ALTER TABLE `city`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `directus_activity`
--
ALTER TABLE `directus_activity`
  ADD PRIMARY KEY (`id`),
  ADD KEY `directus_activity_collection_foreign` (`collection`);

--
-- Index pour la table `directus_collections`
--
ALTER TABLE `directus_collections`
  ADD PRIMARY KEY (`collection`),
  ADD KEY `directus_collections_group_foreign` (`group`);

--
-- Index pour la table `directus_dashboards`
--
ALTER TABLE `directus_dashboards`
  ADD PRIMARY KEY (`id`),
  ADD KEY `directus_dashboards_user_created_foreign` (`user_created`);

--
-- Index pour la table `directus_fields`
--
ALTER TABLE `directus_fields`
  ADD PRIMARY KEY (`id`),
  ADD KEY `directus_fields_collection_foreign` (`collection`);

--
-- Index pour la table `directus_files`
--
ALTER TABLE `directus_files`
  ADD PRIMARY KEY (`id`),
  ADD KEY `directus_files_uploaded_by_foreign` (`uploaded_by`),
  ADD KEY `directus_files_modified_by_foreign` (`modified_by`),
  ADD KEY `directus_files_folder_foreign` (`folder`);

--
-- Index pour la table `directus_folders`
--
ALTER TABLE `directus_folders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `directus_folders_parent_foreign` (`parent`);

--
-- Index pour la table `directus_migrations`
--
ALTER TABLE `directus_migrations`
  ADD PRIMARY KEY (`version`);

--
-- Index pour la table `directus_notifications`
--
ALTER TABLE `directus_notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `directus_notifications_recipient_foreign` (`recipient`),
  ADD KEY `directus_notifications_sender_foreign` (`sender`);

--
-- Index pour la table `directus_panels`
--
ALTER TABLE `directus_panels`
  ADD PRIMARY KEY (`id`),
  ADD KEY `directus_panels_dashboard_foreign` (`dashboard`),
  ADD KEY `directus_panels_user_created_foreign` (`user_created`);

--
-- Index pour la table `directus_permissions`
--
ALTER TABLE `directus_permissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `directus_permissions_collection_foreign` (`collection`),
  ADD KEY `directus_permissions_role_foreign` (`role`);

--
-- Index pour la table `directus_presets`
--
ALTER TABLE `directus_presets`
  ADD PRIMARY KEY (`id`),
  ADD KEY `directus_presets_collection_foreign` (`collection`),
  ADD KEY `directus_presets_user_foreign` (`user`),
  ADD KEY `directus_presets_role_foreign` (`role`);

--
-- Index pour la table `directus_relations`
--
ALTER TABLE `directus_relations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `directus_relations_many_collection_foreign` (`many_collection`),
  ADD KEY `directus_relations_one_collection_foreign` (`one_collection`);

--
-- Index pour la table `directus_revisions`
--
ALTER TABLE `directus_revisions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `directus_revisions_collection_foreign` (`collection`),
  ADD KEY `directus_revisions_parent_foreign` (`parent`),
  ADD KEY `directus_revisions_activity_foreign` (`activity`);

--
-- Index pour la table `directus_roles`
--
ALTER TABLE `directus_roles`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `directus_sessions`
--
ALTER TABLE `directus_sessions`
  ADD PRIMARY KEY (`token`),
  ADD KEY `directus_sessions_user_foreign` (`user`),
  ADD KEY `directus_sessions_share_foreign` (`share`);

--
-- Index pour la table `directus_settings`
--
ALTER TABLE `directus_settings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `directus_settings_project_logo_foreign` (`project_logo`),
  ADD KEY `directus_settings_public_foreground_foreign` (`public_foreground`),
  ADD KEY `directus_settings_public_background_foreign` (`public_background`),
  ADD KEY `directus_settings_storage_default_folder_foreign` (`storage_default_folder`);

--
-- Index pour la table `directus_shares`
--
ALTER TABLE `directus_shares`
  ADD PRIMARY KEY (`id`),
  ADD KEY `directus_shares_collection_foreign` (`collection`),
  ADD KEY `directus_shares_role_foreign` (`role`),
  ADD KEY `directus_shares_user_created_foreign` (`user_created`);

--
-- Index pour la table `directus_users`
--
ALTER TABLE `directus_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `directus_users_external_identifier_unique` (`external_identifier`),
  ADD UNIQUE KEY `directus_users_email_unique` (`email`),
  ADD UNIQUE KEY `directus_users_token_unique` (`token`),
  ADD KEY `directus_users_role_foreign` (`role`);

--
-- Index pour la table `directus_webhooks`
--
ALTER TABLE `directus_webhooks`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `distribution`
--
ALTER TABLE `distribution`
  ADD PRIMARY KEY (`id`),
  ADD KEY `distribution_site_foreign` (`site`),
  ADD KEY `distribution_association_foreign` (`association`);

--
-- Index pour la table `distribution_producer`
--
ALTER TABLE `distribution_producer`
  ADD PRIMARY KEY (`id`),
  ADD KEY `distribution_producer_distribution_id_foreign` (`distribution_id`),
  ADD KEY `distribution_producer_producer_id_foreign` (`producer_id`);

--
-- Index pour la table `distribution_site`
--
ALTER TABLE `distribution_site`
  ADD PRIMARY KEY (`id`),
  ADD KEY `distribution_site_city_foreign` (`city`);

--
-- Index pour la table `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_ditribution_foreign` (`ditribution`),
  ADD KEY `order_member_foreign` (`member`),
  ADD KEY `order_cart_foreign` (`cart`);

--
-- Index pour la table `order_product`
--
ALTER TABLE `order_product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_product_product_foreign` (`product`);

--
-- Index pour la table `producer`
--
ALTER TABLE `producer`
  ADD PRIMARY KEY (`id`),
  ADD KEY `producer_image_foreign` (`image`),
  ADD KEY `producer_city_foreign` (`city`);

--
-- Index pour la table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_image_foreign` (`image`),
  ADD KEY `products_category_foreign` (`category`),
  ADD KEY `products_certification_foreign` (`certification`),
  ADD KEY `products_producer_foreign` (`producer`);

--
-- Index pour la table `subscription`
--
ALTER TABLE `subscription`
  ADD PRIMARY KEY (`id`),
  ADD KEY `subscription_user_created_foreign` (`user_created`),
  ADD KEY `subscription_user_updated_foreign` (`user_updated`),
  ADD KEY `subscription_association_foreign` (`association`),
  ADD KEY `subscription_city_foreign` (`city`),
  ADD KEY `subscription_member_foreign` (`member`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `association`
--
ALTER TABLE `association`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT pour la table `certification`
--
ALTER TABLE `certification`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `city`
--
ALTER TABLE `city`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `directus_activity`
--
ALTER TABLE `directus_activity`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=495;

--
-- AUTO_INCREMENT pour la table `directus_fields`
--
ALTER TABLE `directus_fields`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=109;

--
-- AUTO_INCREMENT pour la table `directus_notifications`
--
ALTER TABLE `directus_notifications`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `directus_permissions`
--
ALTER TABLE `directus_permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `directus_presets`
--
ALTER TABLE `directus_presets`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT pour la table `directus_relations`
--
ALTER TABLE `directus_relations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT pour la table `directus_revisions`
--
ALTER TABLE `directus_revisions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=489;

--
-- AUTO_INCREMENT pour la table `directus_settings`
--
ALTER TABLE `directus_settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `directus_webhooks`
--
ALTER TABLE `directus_webhooks`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `distribution`
--
ALTER TABLE `distribution`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `distribution_producer`
--
ALTER TABLE `distribution_producer`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pour la table `distribution_site`
--
ALTER TABLE `distribution_site`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `order`
--
ALTER TABLE `order`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `order_product`
--
ALTER TABLE `order_product`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `producer`
--
ALTER TABLE `producer`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `subscription`
--
ALTER TABLE `subscription`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `association`
--
ALTER TABLE `association`
  ADD CONSTRAINT `association_city_foreign` FOREIGN KEY (`city`) REFERENCES `city` (`id`) ON DELETE SET NULL;

--
-- Contraintes pour la table `directus_collections`
--
ALTER TABLE `directus_collections`
  ADD CONSTRAINT `directus_collections_group_foreign` FOREIGN KEY (`group`) REFERENCES `directus_collections` (`collection`);

--
-- Contraintes pour la table `directus_dashboards`
--
ALTER TABLE `directus_dashboards`
  ADD CONSTRAINT `directus_dashboards_user_created_foreign` FOREIGN KEY (`user_created`) REFERENCES `directus_users` (`id`) ON DELETE SET NULL;

--
-- Contraintes pour la table `directus_files`
--
ALTER TABLE `directus_files`
  ADD CONSTRAINT `directus_files_folder_foreign` FOREIGN KEY (`folder`) REFERENCES `directus_folders` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `directus_files_modified_by_foreign` FOREIGN KEY (`modified_by`) REFERENCES `directus_users` (`id`),
  ADD CONSTRAINT `directus_files_uploaded_by_foreign` FOREIGN KEY (`uploaded_by`) REFERENCES `directus_users` (`id`);

--
-- Contraintes pour la table `directus_folders`
--
ALTER TABLE `directus_folders`
  ADD CONSTRAINT `directus_folders_parent_foreign` FOREIGN KEY (`parent`) REFERENCES `directus_folders` (`id`);

--
-- Contraintes pour la table `directus_notifications`
--
ALTER TABLE `directus_notifications`
  ADD CONSTRAINT `directus_notifications_recipient_foreign` FOREIGN KEY (`recipient`) REFERENCES `directus_users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `directus_notifications_sender_foreign` FOREIGN KEY (`sender`) REFERENCES `directus_users` (`id`);

--
-- Contraintes pour la table `directus_panels`
--
ALTER TABLE `directus_panels`
  ADD CONSTRAINT `directus_panels_dashboard_foreign` FOREIGN KEY (`dashboard`) REFERENCES `directus_dashboards` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `directus_panels_user_created_foreign` FOREIGN KEY (`user_created`) REFERENCES `directus_users` (`id`) ON DELETE SET NULL;

--
-- Contraintes pour la table `directus_permissions`
--
ALTER TABLE `directus_permissions`
  ADD CONSTRAINT `directus_permissions_role_foreign` FOREIGN KEY (`role`) REFERENCES `directus_roles` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `directus_presets`
--
ALTER TABLE `directus_presets`
  ADD CONSTRAINT `directus_presets_role_foreign` FOREIGN KEY (`role`) REFERENCES `directus_roles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `directus_presets_user_foreign` FOREIGN KEY (`user`) REFERENCES `directus_users` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `directus_revisions`
--
ALTER TABLE `directus_revisions`
  ADD CONSTRAINT `directus_revisions_activity_foreign` FOREIGN KEY (`activity`) REFERENCES `directus_activity` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `directus_revisions_parent_foreign` FOREIGN KEY (`parent`) REFERENCES `directus_revisions` (`id`);

--
-- Contraintes pour la table `directus_sessions`
--
ALTER TABLE `directus_sessions`
  ADD CONSTRAINT `directus_sessions_share_foreign` FOREIGN KEY (`share`) REFERENCES `directus_shares` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `directus_sessions_user_foreign` FOREIGN KEY (`user`) REFERENCES `directus_users` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `directus_settings`
--
ALTER TABLE `directus_settings`
  ADD CONSTRAINT `directus_settings_project_logo_foreign` FOREIGN KEY (`project_logo`) REFERENCES `directus_files` (`id`),
  ADD CONSTRAINT `directus_settings_public_background_foreign` FOREIGN KEY (`public_background`) REFERENCES `directus_files` (`id`),
  ADD CONSTRAINT `directus_settings_public_foreground_foreign` FOREIGN KEY (`public_foreground`) REFERENCES `directus_files` (`id`),
  ADD CONSTRAINT `directus_settings_storage_default_folder_foreign` FOREIGN KEY (`storage_default_folder`) REFERENCES `directus_folders` (`id`) ON DELETE SET NULL;

--
-- Contraintes pour la table `directus_shares`
--
ALTER TABLE `directus_shares`
  ADD CONSTRAINT `directus_shares_collection_foreign` FOREIGN KEY (`collection`) REFERENCES `directus_collections` (`collection`) ON DELETE CASCADE,
  ADD CONSTRAINT `directus_shares_role_foreign` FOREIGN KEY (`role`) REFERENCES `directus_roles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `directus_shares_user_created_foreign` FOREIGN KEY (`user_created`) REFERENCES `directus_users` (`id`) ON DELETE SET NULL;

--
-- Contraintes pour la table `directus_users`
--
ALTER TABLE `directus_users`
  ADD CONSTRAINT `directus_users_role_foreign` FOREIGN KEY (`role`) REFERENCES `directus_roles` (`id`) ON DELETE SET NULL;

--
-- Contraintes pour la table `distribution`
--
ALTER TABLE `distribution`
  ADD CONSTRAINT `distribution_association_foreign` FOREIGN KEY (`association`) REFERENCES `association` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `distribution_site_foreign` FOREIGN KEY (`site`) REFERENCES `distribution_site` (`id`) ON DELETE SET NULL;

--
-- Contraintes pour la table `distribution_producer`
--
ALTER TABLE `distribution_producer`
  ADD CONSTRAINT `distribution_producer_distribution_id_foreign` FOREIGN KEY (`distribution_id`) REFERENCES `distribution` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `distribution_producer_producer_id_foreign` FOREIGN KEY (`producer_id`) REFERENCES `producer` (`id`) ON DELETE SET NULL;

--
-- Contraintes pour la table `distribution_site`
--
ALTER TABLE `distribution_site`
  ADD CONSTRAINT `distribution_site_city_foreign` FOREIGN KEY (`city`) REFERENCES `city` (`id`) ON DELETE SET NULL;

--
-- Contraintes pour la table `order`
--
ALTER TABLE `order`
  ADD CONSTRAINT `order_cart_foreign` FOREIGN KEY (`cart`) REFERENCES `order_product` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `order_ditribution_foreign` FOREIGN KEY (`ditribution`) REFERENCES `distribution` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `order_member_foreign` FOREIGN KEY (`member`) REFERENCES `directus_users` (`id`) ON DELETE SET NULL;

--
-- Contraintes pour la table `order_product`
--
ALTER TABLE `order_product`
  ADD CONSTRAINT `order_product_product_foreign` FOREIGN KEY (`product`) REFERENCES `products` (`id`) ON DELETE SET NULL;

--
-- Contraintes pour la table `producer`
--
ALTER TABLE `producer`
  ADD CONSTRAINT `producer_city_foreign` FOREIGN KEY (`city`) REFERENCES `city` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `producer_image_foreign` FOREIGN KEY (`image`) REFERENCES `directus_files` (`id`);

--
-- Contraintes pour la table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_category_foreign` FOREIGN KEY (`category`) REFERENCES `category` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `products_certification_foreign` FOREIGN KEY (`certification`) REFERENCES `certification` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `products_image_foreign` FOREIGN KEY (`image`) REFERENCES `directus_files` (`id`),
  ADD CONSTRAINT `products_producer_foreign` FOREIGN KEY (`producer`) REFERENCES `producer` (`id`) ON DELETE SET NULL;

--
-- Contraintes pour la table `subscription`
--
ALTER TABLE `subscription`
  ADD CONSTRAINT `subscription_association_foreign` FOREIGN KEY (`association`) REFERENCES `association` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `subscription_city_foreign` FOREIGN KEY (`city`) REFERENCES `city` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `subscription_member_foreign` FOREIGN KEY (`member`) REFERENCES `directus_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `subscription_user_created_foreign` FOREIGN KEY (`user_created`) REFERENCES `directus_users` (`id`),
  ADD CONSTRAINT `subscription_user_updated_foreign` FOREIGN KEY (`user_updated`) REFERENCES `directus_users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
