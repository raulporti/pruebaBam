-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 26-08-2021 a las 01:17:44
-- Versión del servidor: 10.4.20-MariaDB
-- Versión de PHP: 7.4.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `seexamen2021`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2016_06_01_000001_create_oauth_auth_codes_table', 1),
(4, '2016_06_01_000002_create_oauth_access_tokens_table', 1),
(5, '2016_06_01_000003_create_oauth_refresh_tokens_table', 1),
(6, '2016_06_01_000004_create_oauth_clients_table', 1),
(7, '2016_06_01_000005_create_oauth_personal_access_clients_table', 1),
(8, '2019_08_19_000000_create_failed_jobs_table', 1),
(9, '2019_12_14_000001_create_personal_access_tokens_table', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `oauth_clients`
--

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `provider`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Laravel Personal Access Client', '0Dtd0vCNNgDKvKcbmJhKRl3Ya0yeNUPWSwuk6e9D', NULL, 'http://localhost', 1, 0, 0, '2021-08-26 00:49:15', '2021-08-26 00:49:15'),
(2, NULL, 'Laravel Password Grant Client', 'LSFkGyiKsWLT8zDYK39yJhdj8Ab5lSkNffsmyi2z', 'users', 'http://localhost', 0, 1, 0, '2021-08-26 00:49:15', '2021-08-26 00:49:15'),
(3, 1, 'raul', 'lk75hgNXyvwvPVqPeu76C4OzTMzgJq45YDBBLgrj', NULL, 'http://localhost/auth/callback', 0, 0, 0, '2021-08-26 02:28:33', '2021-08-26 02:28:33');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `oauth_personal_access_clients`
--

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2021-08-26 00:49:15', '2021-08-26 00:49:15');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `created_at`, `updated_at`) VALUES
(1, 'App\\Models\\User', 1, '1234567989', '3e17c1ab9d628317f4f082ae79627ad3d8204ad0019371f53f69e674871e77c3', '[\"*\"]', NULL, '2021-08-26 02:04:22', '2021-08-26 02:04:22'),
(2, 'App\\Models\\User', 1, '1234567989', '0071c7cd473760ba2584545e8e65a00510462d3d0c25b5767d03185e3b2fc681', '[\"*\"]', NULL, '2021-08-26 02:06:44', '2021-08-26 02:06:44'),
(3, 'App\\Models\\User', 1, '1234567989', '198924e2854a5812cd156c2413933106cc394d2b189cfe5b3f94751cc3373269', '[\"*\"]', NULL, '2021-08-26 02:07:15', '2021-08-26 02:07:15'),
(4, 'App\\Models\\User', 1, '1234567989', '08ee39880bcc83ee8aea7392ecbd1d6a57025686c4c08be9135e46d8650b7f88', '[\"*\"]', NULL, '2021-08-26 02:07:50', '2021-08-26 02:07:50'),
(5, 'App\\Models\\User', 1, '1234567989', 'b4ba647e3aeae2a98a0acfba9e13905159b7590efe7d4035234c80182e19ea34', '[\"*\"]', NULL, '2021-08-26 02:08:14', '2021-08-26 02:08:14'),
(6, 'App\\Models\\User', 1, '1234567989', 'a82d9c92c1a532ce5b8f950b76ea910f49adca98e89d96bc76540131e93dcfb0', '[\"*\"]', NULL, '2021-08-26 02:10:18', '2021-08-26 02:10:18'),
(7, 'App\\Models\\User', 1, '1234567989', '0c6ceb6a91a04f7389b62ef6f62fa4d61f6d27adb6e937f0304bd8c7e59f8caa', '[\"*\"]', NULL, '2021-08-26 02:10:35', '2021-08-26 02:10:35'),
(8, 'App\\Models\\User', 1, '1234567989', 'c43619c7ef8525c81eba401bfd64ab6bbd8c83bdada76be850af102956bae045', '[\"*\"]', NULL, '2021-08-26 02:10:39', '2021-08-26 02:10:39'),
(9, 'App\\Models\\User', 1, '1234567989', '1ffdddf18afd47f9301eab84de0552dba4c658a4693e83b1f51e3cc40017dd2f', '[\"*\"]', NULL, '2021-08-26 02:10:49', '2021-08-26 02:10:49'),
(10, 'App\\Models\\User', 1, '1234567989', '8e53e201d201b2e1aafec4ab089a761a856375706e4f95ddf0f9d21cf3124195', '[\"*\"]', NULL, '2021-08-26 02:12:58', '2021-08-26 02:12:58'),
(11, 'App\\Models\\User', 1, '1234567989', '6d19b8d457f700759e65051672216c7bf46e250851c0635949c7ca35cd505e0a', '[\"*\"]', NULL, '2021-08-26 02:25:11', '2021-08-26 02:25:11'),
(12, 'App\\Models\\User', 1, '1234567989', 'c92e8417952141c4033833840ebac49847e9910a3c05e9c202318bc95301dc51', '[\"*\"]', NULL, '2021-08-26 02:28:48', '2021-08-26 02:28:48'),
(13, 'App\\Models\\User', 1, '1234567989', 'e79eec71ef2d03adc680b921ba510dfdbc8ac615c9bc82b69cc34420e4934a28', '[\"*\"]', NULL, '2021-08-26 02:29:19', '2021-08-26 02:29:19'),
(14, 'App\\Models\\User', 1, '1234567989', 'f38e85d8a6d9765f7f7ad04cf613a5e64bf19ff27034ca9a37bed273d6298f4f', '[\"*\"]', NULL, '2021-08-26 02:39:33', '2021-08-26 02:39:33'),
(15, 'App\\Models\\User', 1, '1234567989', 'acb0317a79312d3141805d74055fba7c73636e4c6ef359a1d7459eb726d56575', '[\"*\"]', NULL, '2021-08-26 02:45:23', '2021-08-26 02:45:23'),
(16, 'App\\Models\\User', 1, '1234567989', '73f86925868f46502a306d081f6ea853032e19efe28bd9471a4b4deb3d4ed25e', '[\"*\"]', NULL, '2021-08-26 02:47:47', '2021-08-26 02:47:47'),
(17, 'App\\Models\\User', 1, '1234567989', 'ea997f49766065a677007f659b1a63e4a3160ba3ac81f06a15b30f233654996a', '[\"*\"]', NULL, '2021-08-26 02:49:32', '2021-08-26 02:49:32'),
(18, 'App\\Models\\User', 1, '1234567989', 'c0c6f4c36930dc72284dce1cc08330ac904dbf5eccb0935db0c18ee4de973b6a', '[\"*\"]', NULL, '2021-08-26 02:50:08', '2021-08-26 02:50:08'),
(19, 'App\\Models\\User', 1, '1234567989', '6051709b57e9254c945cc9f6d750b7a8dc6fd2c0db007eb66a450b4299beda05', '[\"*\"]', NULL, '2021-08-26 02:51:18', '2021-08-26 02:51:18'),
(20, 'App\\Models\\User', 1, '1234567989', 'f9cad275b9c136ad6e052b9db7285c277b20d680230263e7cd7e1bdad55b0f0f', '[\"*\"]', NULL, '2021-08-26 02:53:10', '2021-08-26 02:53:10'),
(21, 'App\\Models\\User', 1, '1234567989', '20bfd0e2d5bdae66943484ec795475875d7e8e2675c3461268fb053570fe06d1', '[\"*\"]', NULL, '2021-08-26 02:53:43', '2021-08-26 02:53:43'),
(22, 'App\\Models\\User', 1, '1234567989', '55f07e98588f03ba13643e994002ce7556c45881929b377613793086c10d5dbf', '[\"*\"]', NULL, '2021-08-26 02:54:26', '2021-08-26 02:54:26'),
(23, 'App\\Models\\User', 1, '1234567989', '39872c212ca241a52ec82d959bcc69c15af007928528e802a5771ba296205c7c', '[\"*\"]', NULL, '2021-08-26 02:54:59', '2021-08-26 02:54:59'),
(24, 'App\\Models\\User', 1, '1234567989', 'b2256705385a455a7bf2d9b80bb3f021feac9086eb3b26231fb019d319316bae', '[\"*\"]', NULL, '2021-08-26 02:58:48', '2021-08-26 02:58:48'),
(25, 'App\\Models\\User', 1, '1234567989', '3a39192cf09f602686fa549bf05608f045eafc578189e3e38428fb7b0f1fc6f7', '[\"*\"]', NULL, '2021-08-26 03:08:33', '2021-08-26 03:08:33'),
(26, 'App\\Models\\User', 1, '1234567989', '98d1432f9f09777032e006fb93db89056346abe385a4e13c1934031cdae74cbb', '[\"*\"]', NULL, '2021-08-26 03:15:31', '2021-08-26 03:15:31'),
(27, 'App\\Models\\User', 1, '1234567989', 'd622b9122fc172261f83d62ded4fe512acd612e8af765a729ca45bd139e29010', '[\"*\"]', NULL, '2021-08-26 03:19:03', '2021-08-26 03:19:03'),
(28, 'App\\Models\\User', 1, '1234567989', '489140243fe2c6cacabaf5c9e8f2f5f3d7ea1d6b72ab4ba5ac318c248d73d41d', '[\"*\"]', NULL, '2021-08-26 03:19:08', '2021-08-26 03:19:08'),
(29, 'App\\Models\\User', 1, '1234567989', 'aa8a4318ee33bc0ea42b5622436221e77bd26bb3342dc223bd75467b18d00044', '[\"*\"]', NULL, '2021-08-26 03:21:44', '2021-08-26 03:21:44'),
(30, 'App\\Models\\User', 1, '1234567989', '2577d571f5ea8108e4d966ef2e5edce159dbc1e7f1aefa06799d9d696703f789', '[\"*\"]', NULL, '2021-08-26 03:22:50', '2021-08-26 03:22:50'),
(31, 'App\\Models\\User', 1, '1234567989', '5c5b20c2ed72480b6c2bb15184a6167305ef1c9fdcb5f22d955b8689c52ca252', '[\"*\"]', NULL, '2021-08-26 03:36:33', '2021-08-26 03:36:33'),
(32, 'App\\Models\\User', 1, '1234567989', '52288d081e6203ae5536687b0d6a0fe51effe74aa7c26c749fb26d16cc384d94', '[\"*\"]', NULL, '2021-08-26 03:38:36', '2021-08-26 03:38:36'),
(33, 'App\\Models\\User', 1, '1234567989', 'c3bfada9c76960f8a3536695cb82a34a5d36b8966647913bdc38884e264a9319', '[\"*\"]', NULL, '2021-08-26 03:40:21', '2021-08-26 03:40:21'),
(34, 'App\\Models\\User', 1, '1234567989', '7162af792b707e48a01b0ff4c35b8a6236b73f5475d87abbfe8297ecd455f561', '[\"*\"]', NULL, '2021-08-26 03:47:08', '2021-08-26 03:47:08'),
(35, 'App\\Models\\User', 1, '1234567989', '6a1c672c6c2627b2d8b1f41e0d0b152f7a4828f76563074ef8ed1ed71264c670', '[\"*\"]', NULL, '2021-08-26 03:47:11', '2021-08-26 03:47:11'),
(36, 'App\\Models\\User', 1, '1234567989', '7c7ea0c1d98337eb5c526f6b9c01aeb9470ab9dd8a90cf93e2d06c15894701b3', '[\"*\"]', NULL, '2021-08-26 03:47:12', '2021-08-26 03:47:12'),
(37, 'App\\Models\\User', 1, '1234567989', '9f120cb76c7c700643072145ab630c74a667a46f7b34f9f9f3c8fb96de03cc7e', '[\"*\"]', NULL, '2021-08-26 03:47:50', '2021-08-26 03:47:50'),
(38, 'App\\Models\\User', 1, '1234567989', 'f861226a3c6fa9b34aa6edea3270d9fd82cf22c117924dc026fefd76d4872313', '[\"*\"]', NULL, '2021-08-26 03:49:18', '2021-08-26 03:49:18'),
(39, 'App\\Models\\User', 1, '1234567989', '819dab8e015d6d0aca1b2c41dec9c620399f7fb43fef2c405565cd939e58320a', '[\"*\"]', NULL, '2021-08-26 03:49:20', '2021-08-26 03:49:20'),
(40, 'App\\Models\\User', 1, '1234567989', 'ac847c94523b168f36b36f8826aa7d06c4b82dffbadc624c1553c1b6c7093c0a', '[\"*\"]', NULL, '2021-08-26 03:55:22', '2021-08-26 03:55:22'),
(41, 'App\\Models\\User', 1, '1234567989', 'c3acaf239b27ee919c37ee247db6023be31fcb3c97c4806e322958b66cc0043a', '[\"*\"]', NULL, '2021-08-26 04:10:13', '2021-08-26 04:10:13'),
(42, 'App\\Models\\User', 1, '1234567989', 'ba37d1662ad4267525c0bd84b200001d2568085575dbef88679f960304637d06', '[\"*\"]', NULL, '2021-08-26 04:15:20', '2021-08-26 04:15:20'),
(43, 'App\\Models\\User', 1, '1234567989', 'd9a5fcacde815fa1f867938cc6b101ef9005685a4666cf32edf4adad10c98a1f', '[\"*\"]', NULL, '2021-08-26 04:31:47', '2021-08-26 04:31:47');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `te_clientes`
--

CREATE TABLE `te_clientes` (
  `cli_codigo_cliente` int(11) NOT NULL,
  `cli_nombre1` varchar(40) NOT NULL,
  `cli_nombre2` varchar(40) DEFAULT NULL,
  `cli_apellido1` varchar(40) NOT NULL,
  `cli_apellido2` varchar(40) DEFAULT NULL,
  `cli_apellido_casada` varchar(40) DEFAULT NULL,
  `cli_direccion` varchar(120) NOT NULL,
  `cli_telefono1` int(11) NOT NULL DEFAULT 0,
  `cli_telefono2` int(11) NOT NULL DEFAULT 0,
  `cli_identificacion` varchar(25) NOT NULL,
  `cli_fecha` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `te_clientes`
--

INSERT INTO `te_clientes` (`cli_codigo_cliente`, `cli_nombre1`, `cli_nombre2`, `cli_apellido1`, `cli_apellido2`, `cli_apellido_casada`, `cli_direccion`, `cli_telefono1`, `cli_telefono2`, `cli_identificacion`, `cli_fecha`) VALUES
(1, 'raul', 'antonio', 'portillo', 'aguilar', NULL, 'Villa nueva', 12345678, 0, '12345678907694', '2021-08-12 00:00:00'),
(2, 'jose', 'antonio', 'aguilar', 'casados', NULL, 'barcenas', 1234567, 3930340, '403940394033430', '2021-08-25 00:00:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'raulp', 'raulportillo@gmail.com', NULL, '$2y$10$h3OpYpYzzYSaGtGX1Z/lee7dw7JAKseDZXoLfb1PtUMKVuZrrl3xa', NULL, '2021-08-26 01:48:32', '2021-08-26 01:48:32');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_access_tokens_user_id_index` (`user_id`);

--
-- Indices de la tabla `oauth_auth_codes`
--
ALTER TABLE `oauth_auth_codes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_auth_codes_user_id_index` (`user_id`);

--
-- Indices de la tabla `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_clients_user_id_index` (`user_id`);

--
-- Indices de la tabla `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`);

--
-- Indices de la tabla `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indices de la tabla `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indices de la tabla `te_clientes`
--
ALTER TABLE `te_clientes`
  ADD UNIQUE KEY `cli_cliente` (`cli_codigo_cliente`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT de la tabla `te_clientes`
--
ALTER TABLE `te_clientes`
  MODIFY `cli_codigo_cliente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
