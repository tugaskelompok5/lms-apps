-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 29, 2025 at 12:21 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `larlearninga`
--

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `no_telp` varchar(255) DEFAULT NULL,
  `nuptk` varchar(255) DEFAULT NULL,
  `nik` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`user_id`, `no_telp`, `nuptk`, `nik`, `created_at`, `updated_at`) VALUES
(1, NULL, NULL, NULL, '2025-01-30 23:36:52', '2025-01-30 23:36:52'),
(2, '089123456789', NULL, NULL, '2025-01-31 00:42:09', '2025-01-31 00:45:17'),
(3, '089123456123', NULL, NULL, '2025-01-31 01:02:21', '2025-01-31 01:02:21'),
(4, '089123456456', NULL, '12345890', '2025-07-29 08:23:34', '2025-07-29 08:23:34');

-- --------------------------------------------------------

--
-- Table structure for table `data_siswas`
--

CREATE TABLE `data_siswas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `kelas_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `nis` varchar(255) NOT NULL,
  `punya_akun` bigint(20) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `data_siswas`
--

INSERT INTO `data_siswas` (`id`, `name`, `kelas_id`, `user_id`, `nis`, `punya_akun`, `created_at`, `updated_at`) VALUES
(1, 'Siswa 01', 1, 3, '0001', 1, '2025-01-31 00:44:53', '2025-01-31 01:02:21');

-- --------------------------------------------------------

--
-- Table structure for table `diskusis`
--

CREATE TABLE `diskusis` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `kelas_mapel_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `content` longtext NOT NULL,
  `isHidden` bigint(20) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `diskusis`
--

INSERT INTO `diskusis` (`id`, `kelas_mapel_id`, `name`, `content`, `isHidden`, `created_at`, `updated_at`) VALUES
(1, 1, 'Matematika', '<p>Diskusi Matematika</p>', 0, '2025-01-31 00:55:55', '2025-01-31 00:55:55');

-- --------------------------------------------------------

--
-- Table structure for table `editor_accesses`
--

CREATE TABLE `editor_accesses` (
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `kelas_mapel_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `editor_accesses`
--

INSERT INTO `editor_accesses` (`user_id`, `kelas_mapel_id`, `created_at`, `updated_at`) VALUES
(2, 1, '2025-01-31 00:45:14', '2025-01-31 00:45:14');

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
-- Table structure for table `kelas`
--

CREATE TABLE `kelas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `kelas`
--

INSERT INTO `kelas` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'X7', '2025-01-31 00:44:39', '2025-01-31 00:44:39');

-- --------------------------------------------------------

--
-- Table structure for table `kelas_mapels`
--

CREATE TABLE `kelas_mapels` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `kelas_id` bigint(20) UNSIGNED NOT NULL,
  `mapel_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `kelas_mapels`
--

INSERT INTO `kelas_mapels` (`id`, `kelas_id`, `mapel_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '2025-01-31 00:44:39', '2025-01-31 00:44:39');

-- --------------------------------------------------------

--
-- Table structure for table `komentars`
--

CREATE TABLE `komentars` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `diskusi_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `pesan` longtext NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `komentars`
--

INSERT INTO `komentars` (`id`, `diskusi_id`, `user_id`, `pesan`, `created_at`, `updated_at`) VALUES
(1, 1, 2, 'ini diskusi', '2025-01-31 00:56:09', '2025-01-31 00:56:09'),
(2, 1, 3, 'baik bu', '2025-01-31 01:03:51', '2025-01-31 01:03:51');

-- --------------------------------------------------------

--
-- Table structure for table `mapels`
--

CREATE TABLE `mapels` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `gambar` varchar(255) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `deskripsi` varchar(255) DEFAULT '-',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `mapels`
--

INSERT INTO `mapels` (`id`, `gambar`, `name`, `deskripsi`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Matematika', 'Hanya Matematika', '2025-01-31 00:43:10', '2025-01-31 00:43:10');

-- --------------------------------------------------------

--
-- Table structure for table `materis`
--

CREATE TABLE `materis` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `kelas_mapel_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `content` longtext NOT NULL,
  `isHidden` bigint(20) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `materis`
--

INSERT INTO `materis` (`id`, `kelas_mapel_id`, `name`, `content`, `isHidden`, `created_at`, `updated_at`) VALUES
(1, 1, 'Matematika', '<p><iframe src=\"https://www.youtube.com/embed/0hPRfqPFtt8?si=xPbGBtXA3y7pZi56\" width=\"560\" height=\"314\" allowfullscreen=\"allowfullscreen\"></iframe></p>\r\n<p>Belajar bilang pecahan</p>', 0, '2025-01-31 00:53:37', '2025-01-31 00:53:37');

-- --------------------------------------------------------

--
-- Table structure for table `materi_files`
--

CREATE TABLE `materi_files` (
  `materi_id` bigint(20) UNSIGNED NOT NULL,
  `file` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `materi_files`
--

INSERT INTO `materi_files` (`materi_id`, `file`, `created_at`, `updated_at`) VALUES
(1, 'F195_Laporan Skripsi_124-141.pdf', '2025-01-31 00:53:38', '2025-01-31 00:53:38');

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `from_user_id` bigint(20) UNSIGNED NOT NULL,
  `to_user_id` bigint(20) UNSIGNED NOT NULL,
  `message` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_read` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `message`, `created_at`, `updated_at`, `is_read`) VALUES
(1, 2, 1, 'halo', '2025-01-31 00:54:44', '2025-01-31 01:04:18', 1),
(2, 3, 1, 'hai', '2025-01-31 01:02:42', '2025-01-31 01:04:19', 1),
(3, 3, 2, 'hai', '2025-01-31 01:02:51', '2025-01-31 01:02:51', 0);

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
(5, '2023_07_25_041907_create_roles_table', 1),
(6, '2023_07_25_042035_create_contacts_table', 1),
(7, '2023_07_26_053307_create_editor_accesses_table', 1),
(8, '2023_07_26_053827_create_kelas_table', 1),
(9, '2023_07_27_035622_create_kelas_mapels_table', 1),
(10, '2023_07_27_035814_create_mapels_table', 1),
(11, '2023_07_27_040148_create_materis_table', 1),
(12, '2023_07_27_040505_create_tugas_table', 1),
(13, '2023_07_28_030945_create_data_siswas_table', 1),
(14, '2023_09_21_072741_create_user_tugas_table', 1),
(15, '2023_09_21_073253_create_tugas_files_table', 1),
(16, '2023_09_21_101031_create_user_tugas_files_table', 1),
(17, '2023_09_21_130038_create_materi_files_table', 1),
(18, '2023_09_21_130309_create_user_materis_table', 1),
(19, '2023_10_03_013636_create_ujians_table', 1),
(20, '2023_10_03_013659_create_user_ujians_table', 1),
(21, '2023_10_03_013725_create_soal_ujian_multiples_table', 1),
(22, '2023_10_03_013740_create_soal_ujian_essays_table', 1),
(23, '2023_10_03_013755_create_user_jawabans_table', 1),
(24, '2023_10_13_011650_create_user_commits_table', 1),
(25, '2024_06_05_074717_create_rekomendasis_table', 1),
(26, '2024_06_05_091951_create_rekomendasi_files_table', 1),
(27, '2024_06_05_104058_create_pengumuman_table', 1),
(28, '2024_06_05_173407_create_messages_table', 1),
(29, '2024_06_05_213147_add_is_read_to_messages_table', 1),
(30, '2024_06_06_071017_create_diskusis_table', 1),
(31, '2024_06_06_071326_create_komentars_table', 1),
(32, '2024_06_07_054852_create_surveys_table', 1),
(33, '2024_06_07_060439_create_survey_questions_table', 1),
(34, '2024_06_07_061912_create_survey_responses_table', 1);

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
-- Table structure for table `pengumumen`
--

CREATE TABLE `pengumumen` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `kelas_mapel_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `content` longtext NOT NULL,
  `isHidden` bigint(20) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pengumumen`
--

INSERT INTO `pengumumen` (`id`, `kelas_mapel_id`, `name`, `content`, `isHidden`, `created_at`, `updated_at`) VALUES
(1, 1, 'Pengumuman', '<p>Pengumuman</p>', 0, '2025-01-31 00:55:32', '2025-01-31 00:55:32');

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
-- Table structure for table `rekomendasis`
--

CREATE TABLE `rekomendasis` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `kelas_mapel_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `content` longtext NOT NULL,
  `isHidden` bigint(20) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `rekomendasi_files`
--

CREATE TABLE `rekomendasi_files` (
  `rekomendasi_id` bigint(20) UNSIGNED NOT NULL,
  `file` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Admin', '2025-01-30 23:36:00', '2025-01-30 23:36:00'),
(2, 'Pengajar', '2025-01-30 23:36:00', '2025-01-30 23:36:00'),
(3, 'Siswa', '2025-01-30 23:36:00', '2025-01-30 23:36:00'),
(4, 'Kepala Sekolah', '2025-07-29 08:01:17', '2025-07-29 08:01:17');

-- --------------------------------------------------------

--
-- Table structure for table `soal_ujian_essays`
--

CREATE TABLE `soal_ujian_essays` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ujian_id` bigint(20) UNSIGNED NOT NULL,
  `soal` longtext NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `soal_ujian_multiples`
--

CREATE TABLE `soal_ujian_multiples` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ujian_id` bigint(20) UNSIGNED NOT NULL,
  `soal` longtext NOT NULL,
  `a` longtext NOT NULL,
  `b` longtext NOT NULL,
  `c` longtext NOT NULL,
  `d` longtext DEFAULT NULL,
  `e` longtext DEFAULT NULL,
  `jawaban` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `surveys`
--

CREATE TABLE `surveys` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `kelas_id` bigint(20) UNSIGNED NOT NULL,
  `status` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `survey_questions`
--

CREATE TABLE `survey_questions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `question` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `survey_questions`
--

INSERT INTO `survey_questions` (`id`, `question`, `created_at`, `updated_at`) VALUES
(1, 'Guru menyampaikan materi pelajaran dengan contoh dalam kehidupan sehari-hari.', NULL, NULL),
(2, 'Guru memberikan motivasi kepada siswa untuk belajar dengan sungguh-sungguh.', NULL, NULL),
(3, 'Guru memberikan contoh saat memulai yang berhubungan dengan kehidupan atau permasalahan yang dihadapi siswa.', NULL, NULL),
(4, 'Guru menjawab pertanyaan dengan jelas.', NULL, NULL),
(5, 'Guru mengajak siswa berdiskusi tentang pelajaran yang sedang diajarkan.', NULL, NULL),
(6, 'Guru membimbing kegiatan yang akan dilakukan selama pembelajaran.', NULL, NULL),
(7, 'Guru menyampaikan materi pelajaran secara menarik dan mudah dimengerti.', NULL, NULL),
(8, 'Guru memberikan motivasi kepada siswa untuk memahami materi pelajaran dan menerapkannya dalam kehidupan sehari-hari.', NULL, NULL),
(9, 'Guru mengajar dengan cara yang bervariasi misalnya diskusi, demonstrasi, tanya jawab, ceramah, dll.', NULL, NULL),
(10, 'Guru berbicara dengan teles ketika menyampaikan materi pelajaran agar dapat dipahami oleh semua siswa.', NULL, NULL),
(11, 'Guru meminta belajar secara berkelompok.', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `survey_responses`
--

CREATE TABLE `survey_responses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `survey_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `question_id` bigint(20) UNSIGNED NOT NULL,
  `response` enum('Tidak Pernah','Kadang-kadang','Sering') NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tugas`
--

CREATE TABLE `tugas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `kelas_mapel_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `content` longtext NOT NULL,
  `due` datetime DEFAULT NULL,
  `isHidden` bigint(20) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tugas`
--

INSERT INTO `tugas` (`id`, `kelas_mapel_id`, `name`, `content`, `due`, `isHidden`, `created_at`, `updated_at`) VALUES
(1, 1, 'Tugas', '<p>Harus kirim file nya</p>', '2025-02-01 07:56:00', 0, '2025-01-31 00:56:47', '2025-01-31 00:56:47');

-- --------------------------------------------------------

--
-- Table structure for table `tugas_files`
--

CREATE TABLE `tugas_files` (
  `tugas_id` bigint(20) UNSIGNED NOT NULL,
  `file` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ujians`
--

CREATE TABLE `ujians` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `kelas_mapel_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `isHidden` bigint(20) NOT NULL DEFAULT 0,
  `tipe` varchar(255) NOT NULL,
  `due` datetime NOT NULL,
  `time` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `roles_id` bigint(20) UNSIGNED NOT NULL,
  `kelas_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `gambar` varchar(255) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `deskripsi` varchar(255) DEFAULT '-',
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `roles_id`, `kelas_id`, `name`, `gambar`, `email`, `email_verified_at`, `password`, `deskripsi`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, 'Admin', NULL, 'admin@gmail.com', NULL, '$2y$10$cIMgj/nqS9VpPwys8Z.7We7yzCW2DdIwIggShYfi4HMLuIzN27TqK', '-', NULL, '2025-01-30 23:36:52', '2025-01-30 23:36:52'),
(2, 2, NULL, 'Guru 01', NULL, 'guru@gmail.com', NULL, '$2y$10$tMsS1KKrxC79NupHbW0Ft.LIBlgyeR9QipGyVWGD9sJ.jv2Xnr8Nu', '-', NULL, '2025-01-31 00:42:09', '2025-01-31 00:45:17'),
(3, 3, 1, 'Siswa 01', NULL, 'siswa@gmail.com', NULL, '$2y$10$H2GHY5GaE1XXu2Ccv.Rt9uhFL0PtBxDC3TUCIEDODE0HmMiwJJqxa', '-', NULL, '2025-01-31 01:02:21', '2025-01-31 01:02:21'),
(4, 4, NULL, 'Kepala Sekolah', NULL, 'kepsek@gmail.com', NULL, '$2y$10$LZCnLB62Ztb2D.gaaE4DC.z4Nv0AHDtMOhzn8B4pFv5VEs0jQ2kWG', '-', NULL, '2025-07-29 08:23:34', '2025-07-29 08:23:34');

-- --------------------------------------------------------

--
-- Table structure for table `user_commits`
--

CREATE TABLE `user_commits` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `ujian_id` bigint(20) UNSIGNED NOT NULL,
  `start_time` datetime NOT NULL,
  `end_time` datetime NOT NULL,
  `due` datetime NOT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_jawabans`
--

CREATE TABLE `user_jawabans` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `multiple_id` bigint(20) UNSIGNED DEFAULT NULL,
  `essay_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `user_jawaban` varchar(255) DEFAULT NULL,
  `nilai` double DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_materis`
--

CREATE TABLE `user_materis` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `materi_id` varchar(255) NOT NULL,
  `user_materi` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_tugas`
--

CREATE TABLE `user_tugas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tugas_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'Belum Mengerjakan',
  `nilai` bigint(20) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_tugas`
--

INSERT INTO `user_tugas` (`id`, `tugas_id`, `user_id`, `status`, `nilai`, `created_at`, `updated_at`) VALUES
(1, 1, 3, 'Selesai', NULL, '2025-01-31 01:03:27', '2025-01-31 01:03:27');

-- --------------------------------------------------------

--
-- Table structure for table `user_tugas_files`
--

CREATE TABLE `user_tugas_files` (
  `user_tugas_id` bigint(20) UNSIGNED NOT NULL,
  `file` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_tugas_files`
--

INSERT INTO `user_tugas_files` (`user_tugas_id`, `file`, `created_at`, `updated_at`) VALUES
(1, 'F357_Laporan Skripsi_124-141.pdf', '2025-01-31 01:03:27', '2025-01-31 01:03:27');

-- --------------------------------------------------------

--
-- Table structure for table `user_ujians`
--

CREATE TABLE `user_ujians` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ujian_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `status` varchar(255) NOT NULL,
  `nilai` bigint(20) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `data_siswas`
--
ALTER TABLE `data_siswas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `diskusis`
--
ALTER TABLE `diskusis`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `kelas`
--
ALTER TABLE `kelas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kelas_mapels`
--
ALTER TABLE `kelas_mapels`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `komentars`
--
ALTER TABLE `komentars`
  ADD PRIMARY KEY (`id`),
  ADD KEY `komentars_diskusi_id_foreign` (`diskusi_id`),
  ADD KEY `komentars_user_id_foreign` (`user_id`);

--
-- Indexes for table `mapels`
--
ALTER TABLE `mapels`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `materis`
--
ALTER TABLE `materis`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `messages_from_user_id_foreign` (`from_user_id`),
  ADD KEY `messages_to_user_id_foreign` (`to_user_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `pengumumen`
--
ALTER TABLE `pengumumen`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `rekomendasis`
--
ALTER TABLE `rekomendasis`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `soal_ujian_essays`
--
ALTER TABLE `soal_ujian_essays`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `soal_ujian_multiples`
--
ALTER TABLE `soal_ujian_multiples`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `surveys`
--
ALTER TABLE `surveys`
  ADD PRIMARY KEY (`id`),
  ADD KEY `surveys_user_id_foreign` (`user_id`),
  ADD KEY `surveys_kelas_id_foreign` (`kelas_id`);

--
-- Indexes for table `survey_questions`
--
ALTER TABLE `survey_questions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `survey_responses`
--
ALTER TABLE `survey_responses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `survey_responses_survey_id_foreign` (`survey_id`),
  ADD KEY `survey_responses_user_id_foreign` (`user_id`),
  ADD KEY `survey_responses_question_id_foreign` (`question_id`);

--
-- Indexes for table `tugas`
--
ALTER TABLE `tugas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ujians`
--
ALTER TABLE `ujians`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `user_commits`
--
ALTER TABLE `user_commits`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_jawabans`
--
ALTER TABLE `user_jawabans`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_materis`
--
ALTER TABLE `user_materis`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_tugas`
--
ALTER TABLE `user_tugas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_ujians`
--
ALTER TABLE `user_ujians`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `data_siswas`
--
ALTER TABLE `data_siswas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `diskusis`
--
ALTER TABLE `diskusis`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `kelas`
--
ALTER TABLE `kelas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `kelas_mapels`
--
ALTER TABLE `kelas_mapels`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `komentars`
--
ALTER TABLE `komentars`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `mapels`
--
ALTER TABLE `mapels`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `materis`
--
ALTER TABLE `materis`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `pengumumen`
--
ALTER TABLE `pengumumen`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `rekomendasis`
--
ALTER TABLE `rekomendasis`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `soal_ujian_essays`
--
ALTER TABLE `soal_ujian_essays`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `soal_ujian_multiples`
--
ALTER TABLE `soal_ujian_multiples`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `surveys`
--
ALTER TABLE `surveys`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `survey_questions`
--
ALTER TABLE `survey_questions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `survey_responses`
--
ALTER TABLE `survey_responses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tugas`
--
ALTER TABLE `tugas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `ujians`
--
ALTER TABLE `ujians`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `user_commits`
--
ALTER TABLE `user_commits`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_jawabans`
--
ALTER TABLE `user_jawabans`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_materis`
--
ALTER TABLE `user_materis`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_tugas`
--
ALTER TABLE `user_tugas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `user_ujians`
--
ALTER TABLE `user_ujians`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `komentars`
--
ALTER TABLE `komentars`
  ADD CONSTRAINT `komentars_diskusi_id_foreign` FOREIGN KEY (`diskusi_id`) REFERENCES `diskusis` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `komentars_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `messages`
--
ALTER TABLE `messages`
  ADD CONSTRAINT `messages_from_user_id_foreign` FOREIGN KEY (`from_user_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `messages_to_user_id_foreign` FOREIGN KEY (`to_user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `surveys`
--
ALTER TABLE `surveys`
  ADD CONSTRAINT `surveys_kelas_id_foreign` FOREIGN KEY (`kelas_id`) REFERENCES `kelas` (`id`),
  ADD CONSTRAINT `surveys_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `survey_responses`
--
ALTER TABLE `survey_responses`
  ADD CONSTRAINT `survey_responses_question_id_foreign` FOREIGN KEY (`question_id`) REFERENCES `survey_questions` (`id`),
  ADD CONSTRAINT `survey_responses_survey_id_foreign` FOREIGN KEY (`survey_id`) REFERENCES `surveys` (`id`),
  ADD CONSTRAINT `survey_responses_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
