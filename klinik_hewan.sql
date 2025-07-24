-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 14, 2024 at 08:51 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `klinik_hewan`
--

-- --------------------------------------------------------

--
-- Table structure for table `dokter`
--

CREATE TABLE `dokter` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(255) NOT NULL,
  `NIP` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `dokter`
--

INSERT INTO `dokter` (`id`, `nama`, `NIP`, `created_at`, `updated_at`) VALUES
(1, 'Dr.Nicholas Saputra', '12345678', '2024-12-14 00:45:41', '2024-12-14 00:45:41'),
(2, 'Dr.Nicholas Saputra', '12345679', '2024-12-14 00:45:55', '2024-12-14 00:45:55'),
(3, 'Dr. Dian Sastro', '12345670', '2024-12-14 00:46:13', '2024-12-14 00:46:13');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `hewan`
--

CREATE TABLE `hewan` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama_hewan` varchar(255) NOT NULL,
  `jenis` varchar(255) NOT NULL,
  `pemilik` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `hewan`
--

INSERT INTO `hewan` (`id`, `nama_hewan`, `jenis`, `pemilik`, `created_at`, `updated_at`) VALUES
(11, 'Kimmy', 'Anjing', 'Fayola Carani', '2024-12-11 17:04:38', '2024-12-11 18:04:49'),
(12, 'Ihsan Kenes Siregar', 'Kucing', 'Gara Gunawan', '2024-12-11 17:04:38', '2024-12-11 17:04:38'),
(13, 'Lala Endah Purwanti', 'Kucing', 'Edi Daliman Napitupulu', '2024-12-11 17:04:38', '2024-12-11 17:04:38'),
(14, 'Raden Setiawan', 'Anjing', 'Icha Nuraini S.Pd', '2024-12-11 17:04:38', '2024-12-11 17:04:38'),
(15, 'Irnanto Mangunsong', 'Anjing', 'Melinda Maria Rahmawati S.Pt', '2024-12-11 17:04:38', '2024-12-11 17:04:38'),
(16, 'Elon Hasta Gunarto S.Farm', 'Anjing', 'Jasmani Suryono', '2024-12-11 17:04:38', '2024-12-11 17:04:38'),
(18, 'Artanto Tampubolon', 'Anjing', 'Ajimin Sihombing', '2024-12-11 17:04:38', '2024-12-11 17:04:38'),
(19, 'Malik Teddy Siregar S.Kom', 'Anjing', 'Hani Permata S.Psi', '2024-12-11 17:04:38', '2024-12-11 17:04:38'),
(20, 'Eka Sabar Prakasa', 'Anjing', 'Padma Haryanti S.IP', '2024-12-11 17:04:38', '2024-12-11 17:04:38'),
(21, 'Binasaurus', 'Kucing', 'M Bimo Amarulloh', '2024-12-11 17:42:07', '2024-12-11 17:42:07'),
(22, 'Binalong', 'Anjing', 'Naila Sahda Aulya', '2024-12-11 17:55:42', '2024-12-11 17:55:42'),
(23, 'Binalong', 'Anjing', 'Naila Sahda Aulya', '2024-12-11 18:15:58', '2024-12-11 18:15:58');

-- --------------------------------------------------------

--
-- Table structure for table `kesehatan`
--

CREATE TABLE `kesehatan` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `hewan_id` bigint(20) UNSIGNED NOT NULL,
  `tanggal` date NOT NULL,
  `gejala` varchar(255) NOT NULL,
  `diagnosis` varchar(255) NOT NULL,
  `tindakan` varchar(255) NOT NULL,
  `catatan` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `kesehatan`
--

INSERT INTO `kesehatan` (`id`, `hewan_id`, `tanggal`, `gejala`, `diagnosis`, `tindakan`, `catatan`, `created_at`, `updated_at`) VALUES
(1, 11, '2024-12-14', 'Muntah-Muntah', 'Permasalahan pada Lambung ', 'Diberikan vitamin', 'Minum vitamin 3x Sehari', NULL, NULL),
(2, 18, '2024-12-14', 'Kulit Gatal', 'Terkena Kutu ', 'Diberikan vitamin pada kulit dan bulu', 'Tubuh jangan dalam kondisi lembab', NULL, NULL),
(3, 21, '2024-12-14', 'Perut Kembung', 'Pencernaan Kurang Lancar', 'Diberikan obat diare', 'Makan makanan bergizi', NULL, NULL),
(4, 12, '2024-12-14', 'Mata Merah', 'Sakit Mata', 'Mata dibersihkan', 'Hindari cahaya matahari dan debu', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2024_12_11_233413_create_hewans_table', 1),
(6, '2024_12_13_141617_create_kesehatans_table', 2),
(7, '2024_12_14_060140_create_perkembangans_table', 3),
(8, '2024_12_14_070423_create_obats_table', 4),
(9, '2024_12_14_072416_create_dokters_table', 5),
(10, '2024_12_14_073527_create_dokter_table', 6);

-- --------------------------------------------------------

--
-- Table structure for table `obat`
--

CREATE TABLE `obat` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama_obat` varchar(255) NOT NULL,
  `deskripsi` text DEFAULT NULL,
  `harga` decimal(10,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `obat`
--

INSERT INTO `obat` (`id`, `nama_obat`, `deskripsi`, `harga`, `created_at`, `updated_at`) VALUES
(1, 'Paracetamol', 'Obat untuk meredakan demam dan nyeri ringan hingga sedang.', 2000.00, '2024-12-14 00:12:59', '2024-12-14 00:12:59'),
(3, 'Ketamine', 'Ketamine digunakan sebagai bius total (anestesiumum) pada pasien yang akan menjalani prosedur operasi.', 500000.00, '2024-12-14 00:21:25', '2024-12-14 00:23:23');

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `perkembangan`
--

CREATE TABLE `perkembangan` (
  `id_perkembangan` bigint(20) UNSIGNED NOT NULL,
  `hewan_id` bigint(20) UNSIGNED NOT NULL,
  `tanggal` date NOT NULL,
  `berat_badan` decimal(8,2) NOT NULL,
  `tinggi` decimal(8,2) NOT NULL,
  `foto` varchar(255) DEFAULT NULL,
  `catatan` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `perkembangan`
--

INSERT INTO `perkembangan` (`id_perkembangan`, `hewan_id`, `tanggal`, `berat_badan`, `tinggi`, `foto`, `catatan`, `created_at`, `updated_at`) VALUES
(1, 22, '2024-12-14', 5.60, 35.20, 'https://th.bing.com/th?id=OSK.HEROP2jglqu0MdC5-xO-bjZc8jMKDK42l08GIxNwIEcqi7I&w=312&h=200&c=15&rs=2&o=6&oif=webp&dpr=1.3&pid=SANGAM', 'Berwarna Putih dan Memiliki 2 Mata', '2024-12-13 23:40:03', '2024-12-13 23:58:51'),
(2, 18, '2024-12-13', 6.40, 40.50, 'images/Anjing.jpg', 'Berwarna Putih dan Memiliki 2 Mata', '2024-12-14 00:00:54', '2024-12-14 00:00:54');

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `dokter`
--
ALTER TABLE `dokter`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `dokter_nip_unique` (`NIP`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `hewan`
--
ALTER TABLE `hewan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kesehatan`
--
ALTER TABLE `kesehatan`
  ADD PRIMARY KEY (`id`),
  ADD KEY `kesehatan_hewan_id_foreign` (`hewan_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `obat`
--
ALTER TABLE `obat`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `perkembangan`
--
ALTER TABLE `perkembangan`
  ADD PRIMARY KEY (`id_perkembangan`),
  ADD KEY `perkembangan_hewan_id_foreign` (`hewan_id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `dokter`
--
ALTER TABLE `dokter`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `hewan`
--
ALTER TABLE `hewan`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `kesehatan`
--
ALTER TABLE `kesehatan`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `obat`
--
ALTER TABLE `obat`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `perkembangan`
--
ALTER TABLE `perkembangan`
  MODIFY `id_perkembangan` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `kesehatan`
--
ALTER TABLE `kesehatan`
  ADD CONSTRAINT `kesehatan_hewan_id_foreign` FOREIGN KEY (`hewan_id`) REFERENCES `hewan` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `perkembangan`
--
ALTER TABLE `perkembangan`
  ADD CONSTRAINT `perkembangan_hewan_id_foreign` FOREIGN KEY (`hewan_id`) REFERENCES `hewan` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
