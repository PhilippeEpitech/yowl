-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost:8889
-- Généré le : mar. 20 sep. 2022 à 12:52
-- Version du serveur :  5.7.34
-- Version de PHP : 7.4.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `laravel`
--

-- --------------------------------------------------------

--
-- Structure de la table `articles`
--

CREATE TABLE `articles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `articles`
--

INSERT INTO `articles` (`id`, `title`, `content`, `url`, `user_id`, `created_at`, `updated_at`) VALUES
(2, 'Beatae et aut maxime officiis in minus est.', 'Amet quia atque non et natus corrupti. Sit voluptatem minima omnis est velit. Magni est voluptatem et ut.\n\nDicta nesciunt corporis delectus debitis. Quae cum et rerum omnis distinctio sint sint. Officia non est labore explicabo quo ea labore. Et doloremque tenetur omnis cumque delectus impedit odit voluptas.\n\nAt aut maxime earum autem nesciunt labore. Et quis veniam temporibus quasi iusto quasi.', 'http://www.runte.com/fugiat-nisi-quam-praesentium-et', 1, '2022-08-12 11:25:06', '2022-08-12 11:25:06'),
(3, 'Quas vel ratione nostrum qui eius.', 'Omnis voluptatem numquam expedita voluptatem consectetur illo. Laudantium recusandae iste sit perferendis nihil cumque. Soluta non vel reprehenderit qui est dolorem qui.\n\nIn ut sint dolor minima. Animi quisquam eaque perspiciatis rerum. Provident quidem qui vel harum vitae nihil velit. Iste sunt dolores velit eligendi corporis aut illum.\n\nFacilis distinctio molestiae dolore optio omnis deleniti. Ex autem dignissimos soluta repellendus voluptatum quidem eos commodi. Consectetur aut suscipit adipisci neque tempore quam. Eligendi est libero veniam optio et sed nisi qui.', 'http://medhurst.com/', 1, '2022-08-12 11:25:06', '2022-08-12 11:25:06'),
(4, 'Soluta laborum expedita et aliquid accusantium suscipit.', 'Nobis animi ea voluptatem cumque rerum. Aut est ratione est culpa voluptate sequi nemo. Aperiam eligendi occaecati minus impedit ut cupiditate laudantium explicabo.\n\nMolestiae fugiat consequatur est sunt. Non iusto tempora id voluptate voluptatem.\n\nDebitis eum rerum aspernatur at voluptatem ut. Vel veritatis hic est libero pariatur laudantium.', 'http://bosco.net/quibusdam-dolores-voluptates-enim-quo', 2, '2022-08-12 11:25:06', '2022-08-12 11:25:06'),
(6, 'Maxime consequatur enim nisi rerum nihil quas.', 'Vel ratione sunt quos nam rem sed. Suscipit et iure magnam quia vel consectetur. Et velit incidunt quae voluptatum quo.\n\nNostrum rerum dignissimos et maxime odio ea perspiciatis. Nobis quas eos in at deleniti autem. Unde minima voluptatem dolore quae sit eum iste dolorem.\n\nUllam voluptatibus maxime laudantium. Sed vitae id illo. Error ea culpa doloremque asperiores cumque sapiente. Deserunt aperiam dolorem assumenda repudiandae molestiae nisi totam delectus. Sapiente hic officia at ipsam ipsa in.', 'https://boyle.com/ullam-qui-dolores-recusandae-ea-odit-et-velit.html', 2, '2022-08-12 11:25:06', '2022-08-12 11:25:06'),
(7, 'Commodi eius illo labore ullam pariatur dolore.', 'Iste enim mollitia consectetur aut reiciendis praesentium rerum. Voluptatum tempora reiciendis voluptate exercitationem sit. Est maiores ratione est vero suscipit amet cupiditate.\n\nQuas eos atque sunt. Velit harum atque earum et. Quaerat perferendis omnis qui voluptate est. Qui doloremque vitae odio delectus nihil.\n\nRerum optio voluptatem qui excepturi. Dolorem dolorum et omnis voluptatem illum tempore. Ut nostrum ut aliquam quaerat.', 'http://schumm.com/dolorum-unde-inventore-odit-ipsum-quam-vitae', 3, '2022-08-12 11:25:06', '2022-08-12 11:25:06'),
(8, 'Autem assumenda aliquam ut iure praesentium commodi numquam.', 'Qui debitis nostrum corporis libero. Autem culpa qui sit ut. Eum harum voluptatem optio.\n\nLaboriosam sed maxime sint dolorum est sed hic. Libero architecto repellendus voluptatem.\n\nVelit ducimus repudiandae tempore minus repellat. Repudiandae qui ut minima ea. Id illo rerum voluptas.', 'http://dickinson.info/voluptatum-et-ipsam-ratione-sit-sint', 3, '2022-08-12 11:25:06', '2022-08-12 11:25:06'),
(9, 'Quo corrupti ipsum repellendus corporis quia porro.', 'Veniam excepturi aut quod quis minima. Aliquid praesentium aspernatur ea quia porro. Eos libero culpa labore. Quam eligendi maiores voluptatibus quo. Est id esse consequatur repudiandae aut.\n\nImpedit eligendi aliquam eveniet aut pariatur in sit non. Rem quia ut dicta illum. Non voluptas id quasi non porro.\n\nEst sunt voluptatem exercitationem corporis nesciunt dolorem itaque. Dolores numquam enim ad cumque in minima. Alias qui sapiente illo qui aliquam quidem ipsum.', 'http://www.grimes.com/qui-perferendis-velit-eveniet-omnis', 3, '2022-08-12 11:25:06', '2022-08-12 11:25:06');

-- --------------------------------------------------------

--
-- Structure de la table `comments`
--

CREATE TABLE `comments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `comment` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `article_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `comments`
--

INSERT INTO `comments` (`id`, `comment`, `article_id`, `user_id`, `created_at`, `updated_at`) VALUES
(2, 'ceci est mon avis personnel', 7, 2, '2022-08-12 13:26:20', '2022-08-12 13:26:20');

-- --------------------------------------------------------

--
-- Structure de la table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_08_07_141320_create_articles_table', 1),
(6, '2022_08_08_140424_create_comments_table', 1);

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
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `is_admin` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id`, `is_admin`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 0, 'Miss Eryn Walter', 'igusikowski@example.net', '2022-08-12 11:25:06', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'obPNXyXsF9', '2022-08-12 11:25:06', '2022-08-12 11:25:06'),
(2, 1, 'Virginia Gerhold DDS', 'titus44@example.net', '2022-08-12 11:25:06', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'pOlm4lOkSnl2QZkWwEmmF1CJ285ZyOQKtklWHfqujahgFKp1f6ldHV0CtIAt', '2022-08-12 11:25:06', '2022-08-12 11:25:06'),
(3, 0, 'Prof. Rusty Mueller PhD', 'autumn85@example.org', '2022-08-12 11:25:06', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'bO2dftCvAJ', '2022-08-12 11:25:06', '2022-08-12 11:25:06'),
(4, 0, 'test', 'test@test.com', NULL, '$2y$10$PgyXjeOC30Db.uNOuj3WAubH7q.zqDFmUNXlvZc9m7E1HPIS3zqXG', NULL, '2022-09-14 07:18:10', '2022-09-14 07:18:10');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `articles_user_id_foreign` (`user_id`);

--
-- Index pour la table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `comments_article_id_foreign` (`article_id`),
  ADD KEY `comments_user_id_foreign` (`user_id`);

--
-- Index pour la table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

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
-- AUTO_INCREMENT pour la table `articles`
--
ALTER TABLE `articles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT pour la table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT pour la table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `articles`
--
ALTER TABLE `articles`
  ADD CONSTRAINT `articles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_article_id_foreign` FOREIGN KEY (`article_id`) REFERENCES `articles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `comments_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
