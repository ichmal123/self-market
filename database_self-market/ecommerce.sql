-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 07 Jan 2022 pada 17.52
-- Versi server: 10.4.17-MariaDB
-- Versi PHP: 8.0.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ecommerce`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `carts`
--

CREATE TABLE `carts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `quantity` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `carts`
--

INSERT INTO `carts` (`id`, `name`, `phone`, `address`, `product_title`, `image`, `quantity`, `price`, `created_at`, `updated_at`) VALUES
(6, 'ichmal123', '082284901844', 'Padang', 'Chitato', '1637936883.jpg', '1', '10000', '2022-01-07 08:17:34', '2022-01-07 08:17:34');

-- --------------------------------------------------------

--
-- Struktur dari tabel `failed_jobs`
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
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2014_10_12_200000_add_two_factor_columns_to_users_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2021_10_07_130254_create_sessions_table', 1),
(7, '2021_11_19_112750_create_products_table', 2),
(8, '2021_12_24_181459_create_carts_table', 3),
(9, '2022_01_07_135639_create_orders_table', 4);

-- --------------------------------------------------------

--
-- Struktur dari tabel `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `quantity` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `orders`
--

INSERT INTO `orders` (`id`, `name`, `phone`, `address`, `product_name`, `quantity`, `price`, `status`, `created_at`, `updated_at`) VALUES
(1, 'user', '1029012039', 'sdashd', 'Lays', '1', '10000', 'delivered', '2022-01-07 07:22:36', '2022-01-07 07:46:28'),
(2, 'user', '1029012039', 'sdashd', 'Chitato', '1', '10000', 'not delivered', '2022-01-07 07:22:36', '2022-01-07 07:22:36'),
(3, 'user', '1029012039', 'sdashd', 'Lays', '1', '10000', 'not delivered', '2022-01-07 07:22:36', '2022-01-07 07:22:36'),
(4, 'user', '1029012039', 'sdashd', 'Potato', '10', '8000', 'not delivered', '2022-01-07 07:22:36', '2022-01-07 07:22:36'),
(5, 'user', '1029012039', 'sdashd', 'Lays', '1', '8000', 'not delivered', '2022-01-07 08:58:41', '2022-01-07 08:58:41');

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('muhammadichmalgumanof@gmail.com', '$2y$10$PT9YJNGihNBAO3ItT0ChY.KBwYaDKoUSOBqBkokTHtnsuaw8nLwQe', '2021-11-26 08:45:16');

-- --------------------------------------------------------

--
-- Struktur dari tabel `personal_access_tokens`
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

-- --------------------------------------------------------

--
-- Struktur dari tabel `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `quantity` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `products`
--

INSERT INTO `products` (`id`, `title`, `price`, `description`, `quantity`, `image`, `created_at`, `updated_at`) VALUES
(9, 'Chitato', '10000', 'Rasa Ayam Bumbu 75gr', '125', '1637936883.jpg', '2021-11-26 07:28:03', '2021-11-29 10:53:28'),
(10, 'Lays', '8000', 'Rasa Rumput Laut 35gr', '75', '1637936936.jpg', '2021-11-26 07:28:56', '2021-11-26 07:28:56'),
(11, 'Cheetos', '2000', 'Rasa Jagung Bakar 15gr', '110', '1637936987.jpg', '2021-11-26 07:29:47', '2021-11-29 10:58:54'),
(12, 'Chiki Balls', '3000', 'Rasa Ayam Bakar 30gr', '50', '1637937041.jpg', '2021-11-26 07:30:41', '2021-11-26 07:30:41'),
(13, 'French Fries 2000', '5000', 'Kentang Goreng dengan Saus Sambal 68gr', '60', '1641573604.jpg', '2021-11-26 07:31:55', '2022-01-07 09:40:04'),
(15, 'Tehbotol Sosro', '10100', 'Kotak 1 L', '100', '1641573794.jfif', '2022-01-07 09:43:14', '2022-01-07 09:43:14'),
(16, 'Paseo Tissue Basah', '60100', 'Anti Bacterial 25 sheets', '50', '1641573837.jfif', '2022-01-07 09:43:57', '2022-01-07 09:43:57'),
(17, 'Sunlight', '16000', 'Sabun Cuci Piring Jeruk Nipis 755 mL', '70', '1641573866.jfif', '2022-01-07 09:44:26', '2022-01-07 09:50:38'),
(18, 'Nice Tissue Wajah', '43400', 'Kiloan 900 gr', '80', '1641573907.jfif', '2022-01-07 09:45:07', '2022-01-07 09:45:07'),
(19, 'Gulaku', '37000', 'Sugar Pillow Pack Premium 200 gr', '70', '1641573938.jfif', '2022-01-07 09:45:38', '2022-01-07 09:45:38'),
(20, 'Bango Kecap Manis', '11500', 'Pouch Flatpack 210 mL', '50', '1641573959.jfif', '2022-01-07 09:45:59', '2022-01-07 09:45:59'),
(21, 'Sania', '21500', 'Premium Cooking Oil Pouch 1 L', '100', '1641573983.jfif', '2022-01-07 09:46:23', '2022-01-07 09:46:23'),
(22, 'Indofood Sambal Pedas', '11100', 'Botol 275 mL', '20', '1641574010.jfif', '2022-01-07 09:46:50', '2022-01-07 09:46:50'),
(23, 'Swallow Globe', '9400', 'Agar-Agar Hijau 2 x 7 gr', '20', '1641574039.jfif', '2022-01-07 09:47:19', '2022-01-07 09:50:26'),
(24, 'HYDRASHOOTHE', '65000', 'SUNSCREEN GEL SPF45 PA++++', '30', '1641574069.jfif', '2022-01-07 09:47:49', '2022-01-07 09:47:49'),
(25, 'Lifebuoy Lemon Fresh', '42000', 'Body Wash 850 mL', '50', '1641574108.jfif', '2022-01-07 09:48:28', '2022-01-07 09:48:28'),
(26, 'Vaseline Lip Theraphy', '34500', 'Jar Rosy 7 gr', '20', '1641574127.jfif', '2022-01-07 09:48:47', '2022-01-07 09:48:47');

-- --------------------------------------------------------

--
-- Struktur dari tabel `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payload` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('uc3VBS339ipsvkKQYMGQPLKKSVZMUfOcanNPSo9V', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36 Edg/96.0.1054.62', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiVjdxanlneWVraVVPSE9kdU9mYmlHNlNUNnpxd1p6Ump2ZGdac2NKTiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjk6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC8/cGFnZT0xIjt9fQ==', 1641574268),
('vXDskRNqUCghv2BP6hoKJia89cTAmFMZlODlhjXs', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoiZ1RXTzREVTFqRUVGNG9kV3BYYk00dGt6Z3pxOU9VeVJ2cDAxaWRiNyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjk6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9oaXN0b3J5Ijt9czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6MTtzOjE3OiJwYXNzd29yZF9oYXNoX3dlYiI7czo2MDoiJDJ5JDEwJGJYd3BvQUtrWktsenR5OThzLlJ4Sy5CekdHR3BYMHJkcm5hQkxRNkRHMVdMdFoucWNwMWJLIjt9', 1641569356);

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `usertype` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `two_factor_secret` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `two_factor_recovery_codes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `current_team_id` bigint(20) UNSIGNED DEFAULT NULL,
  `profile_photo_path` varchar(2048) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `usertype`, `phone`, `address`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `remember_token`, `current_team_id`, `profile_photo_path`, `created_at`, `updated_at`) VALUES
(1, 'user', 'user@gmail.com', '0', '1029012039', 'sdashd', NULL, '$2y$10$bXwpoAKkZKlzty98s.RxK.BzGGGpX0rdrnaBLQ6DG1WLtZ.qcp1bK', NULL, NULL, NULL, NULL, NULL, '2021-11-29 10:14:46', '2021-11-29 10:14:46'),
(2, 'admin', 'admin@gmail.com', '1', '12381728', 'shdjahsjk', NULL, '$2y$10$2VghHKoaYoq0TMQyAYDZVenEZC03/4Epo.mpx4aZAjJF.tt6CddUe', NULL, NULL, NULL, NULL, NULL, '2021-11-29 10:15:28', '2021-11-29 10:15:28'),
(3, 'ichmal123', 'ichmal123@gmail.com', '0', '082284901844', 'Padang', NULL, '$2y$10$Pg/fVQrXWqr4.xDuSJur0.yU2SVzNrfeYUtYSvWgidTGQlFu9/kSm', NULL, NULL, NULL, NULL, NULL, '2022-01-07 08:17:13', '2022-01-07 08:17:13'),
(4, 'ofi', 'ofi@gmail.com', '0', '082268179560', 'Padang', NULL, '$2y$10$/cxBl3/jgYP0gMe89ujwz.P.caQSPUMIMoCbmNwpMZkOGNh2XWDo.', NULL, NULL, NULL, NULL, NULL, '2022-01-07 09:22:59', '2022-01-07 09:22:59');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `carts`
--
ALTER TABLE `carts`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indeks untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indeks untuk tabel `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `carts`
--
ALTER TABLE `carts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
