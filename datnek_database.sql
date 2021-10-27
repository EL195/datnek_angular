-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost
-- Généré le : mer. 27 oct. 2021 à 12:45
-- Version du serveur :  8.0.22
-- Version de PHP : 7.4.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `datnek_database`
--

-- --------------------------------------------------------

--
-- Structure de la table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `langues`
--

CREATE TABLE `langues` (
  `id` bigint UNSIGNED NOT NULL,
  `titre` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code_court` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `comprehension` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ecrit` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `langues`
--

INSERT INTO `langues` (`id`, `titre`, `code_court`, `comprehension`, `parle`, `ecrit`, `created_at`, `updated_at`) VALUES
(18, 'iusto', 'voluptas', 'aliquid', 'voluptates', 'ea', '2021-10-23 13:03:54', '2021-10-23 13:03:54'),
(19, 'quidem', 'id', 'omnis', 'saepe', 'quo', '2021-10-23 13:03:54', '2021-10-23 13:03:54'),
(20, 'accusamus', 'est', 'non', 'omnis', 'ad', '2021-10-23 13:03:54', '2021-10-23 13:03:54'),
(21, 'mollitia', 'id', 'occaecati', 'veritatis', 'quidem', '2021-10-23 13:03:54', '2021-10-23 13:03:54'),
(22, 'suscipit', 'est', 'officiis', 'sint', 'sequi', '2021-10-23 13:03:54', '2021-10-23 13:03:54'),
(23, 'commodi', 'quo', 'alias', 'eos', 'aut', '2021-10-23 13:03:54', '2021-10-23 13:03:54'),
(24, 'et', 'libero', 'maxime', 'unde', 'laborum', '2021-10-23 13:03:54', '2021-10-23 13:03:54'),
(25, 'veritatis', 'ullam', 'dolor', 'voluptate', 'officia', '2021-10-23 13:03:54', '2021-10-23 13:03:54'),
(26, 'doloribus', 'voluptas', 'hic', 'nostrum', 'molestiae', '2021-10-23 13:03:54', '2021-10-23 13:03:54'),
(27, 'aspernatur', 'aspernatur', 'officiis', 'reiciendis', 'corporis', '2021-10-23 13:03:54', '2021-10-23 13:03:54'),
(28, 'pariatur', 'dicta', 'provident', 'perferendis', 'voluptatibus', '2021-10-23 13:03:54', '2021-10-23 13:03:54'),
(29, 'nobis', 'beatae', 'ut', 'ab', 'magni', '2021-10-23 13:03:54', '2021-10-23 13:03:54'),
(30, 'illo', 'et', 'nesciunt', 'esse', 'officiis', '2021-10-23 13:03:54', '2021-10-23 13:03:54'),
(31, 'qui', 'non', 'illo', 'eius', 'aut', '2021-10-23 13:03:54', '2021-10-23 13:03:54'),
(32, 'qui', 'quidem', 'id', 'doloremque', 'enim', '2021-10-23 13:03:54', '2021-10-23 13:03:54'),
(33, 'nisi', 'eius', 'dicta', 'dicta', 'aliquid', '2021-10-23 13:03:54', '2021-10-23 13:03:54'),
(34, 'autem', 'quisquam', 'enim', 'nihil', 'est', '2021-10-23 13:03:54', '2021-10-23 13:03:54'),
(35, 'qui', 'commodi', 'dignissimos', 'qui', 'sed', '2021-10-23 13:03:54', '2021-10-23 13:03:54'),
(36, 'inventore', 'odio', 'id', 'et', 'soluta', '2021-10-23 13:03:54', '2021-10-23 13:03:54'),
(37, 'doloremque', 'vitae', 'vero', 'magnam', 'rem', '2021-10-23 13:03:54', '2021-10-23 13:03:54'),
(38, 'quas', 'perferendis', 'non', 'aliquid', 'minima', '2021-10-23 13:03:54', '2021-10-23 13:03:54'),
(39, 'hic', 'deserunt', 'aliquid', 'nulla', 'dolorem', '2021-10-23 13:03:54', '2021-10-23 13:03:54'),
(40, 'fuga', 'nihil', 'ad', 'aut', 'unde', '2021-10-23 13:03:54', '2021-10-23 13:03:54'),
(41, 'ad', 'inventore', 'ullam', 'provident', 'veniam', '2021-10-23 13:03:54', '2021-10-23 13:03:54'),
(42, 'inventore', 'aut', 'ut', 'et', 'nemo', '2021-10-23 13:03:54', '2021-10-23 13:03:54'),
(43, 'pariatur', 'debitis', 'necessitatibus', 'modi', 'libero', '2021-10-23 13:03:54', '2021-10-23 13:03:54'),
(44, 'aut', 'ex', 'illo', 'sint', 'sint', '2021-10-23 13:03:54', '2021-10-23 13:03:54'),
(45, 'consequatur', 'rem', 'rerum', 'dolorem', 'ut', '2021-10-23 13:03:54', '2021-10-23 13:03:54'),
(46, 'quia', 'enim', 'quia', 'labore', 'qui', '2021-10-23 13:03:54', '2021-10-23 13:03:54'),
(47, 'eligendi', 'fugit', 'recusandae', 'dolorum', 'dolores', '2021-10-23 13:03:54', '2021-10-23 13:03:54'),
(48, 'voluptate', 'autem', 'vitae', 'molestiae', 'eos', '2021-10-23 13:03:54', '2021-10-23 13:03:54'),
(49, 'non', 'in', 'provident', 'dolore', 'eos', '2021-10-23 13:03:54', '2021-10-23 13:03:54'),
(50, 'eveniet', 'voluptatem', 'fuga', 'vitae', 'eius', '2021-10-23 13:03:54', '2021-10-23 13:03:54'),
(51, 'tt', 'tt', '35', 'tt', 'ttt', '2021-10-27 08:07:01', '2021-10-27 08:07:01'),
(52, 'eveniet', 'test', 'Intermédiare', 'Elementary', 'Intermédiare', '2021-10-27 08:08:57', '2021-10-27 08:08:57'),
(53, 'eveniet', 'test', 'Elementary', 'Elementary', 'Elementary', '2021-10-27 08:09:59', '2021-10-27 08:09:59'),
(54, 'eveniet', 'test', 'Intermédiare', 'Current', 'Intermédiare', '2021-10-27 08:20:54', '2021-10-27 08:20:54'),
(55, 'eveniet', 'test', 'Intermédiare', 'Current', 'Intermédiare', '2021-10-27 08:21:00', '2021-10-27 08:21:00'),
(56, 'eveniet', 'test', 'Elementary', 'Intermédiare', 'Intermédiare', '2021-10-27 08:21:44', '2021-10-27 08:21:44'),
(57, 'eveniet', 'test', 'Intermédiare', 'Intermédiare', 'Elementary', '2021-10-27 08:26:42', '2021-10-27 08:26:42'),
(58, 'eveniet', 'test', 'Intermédiare', 'Elementary', 'Intermédiare', '2021-10-27 08:30:04', '2021-10-27 08:30:04'),
(59, 'eveniet', 'test', 'Intermédiare', 'Intermédiare', 'Intermédiare', '2021-10-27 08:31:18', '2021-10-27 08:31:18'),
(60, 'eveniet', 'test', 'Intermédiare', 'Intermédiare', 'Intermédiare', '2021-10-27 08:39:47', '2021-10-27 08:39:47'),
(61, 'eveniet', 'test', 'Elementary', 'Intermédiare', 'Elementary', '2021-10-27 08:44:04', '2021-10-27 08:44:04');

-- --------------------------------------------------------

--
-- Structure de la table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2021_10_23_132123_create_langues_table', 1);

-- --------------------------------------------------------

--
-- Structure de la table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Index pour la table `langues`
--
ALTER TABLE `langues`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Index pour la table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `langues`
--
ALTER TABLE `langues`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT pour la table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pour la table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
