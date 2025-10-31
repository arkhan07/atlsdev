-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Oct 31, 2025 at 07:56 AM
-- Server version: 5.7.44-log
-- PHP Version: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `atlsindonesia_db`
--

DELIMITER $$
--
-- Procedures
--
$$

$$

$$

$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Stand-in structure for view `active_galleries_view`
-- (See below for the actual view)
--
CREATE TABLE `active_galleries_view` (
`id` bigint(20) unsigned
,`title` varchar(255)
,`slug` varchar(255)
,`description` text
,`image` varchar(255)
,`category` varchar(100)
,`category_name` varchar(100)
,`category_color` varchar(7)
,`is_featured` tinyint(1)
,`sort_order` int(11)
,`created_at` timestamp
,`updated_at` timestamp
);

-- --------------------------------------------------------

--
-- Table structure for table `addons`
--

CREATE TABLE `addons` (
  `id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `features` varchar(255) DEFAULT NULL,
  `version` float DEFAULT NULL,
  `unique_identifier` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `purchase_code` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `amenities`
--

CREATE TABLE `amenities` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `identifier` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent` int(11) DEFAULT NULL,
  `rating` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `designation` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `time` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `appointments`
--

CREATE TABLE `appointments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `date` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `listing_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `aditional_information` longtext COLLATE utf8mb4_unicode_ci,
  `customer_id` int(11) NOT NULL,
  `agent_id` int(11) NOT NULL,
  `time` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `listing_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `zoom_link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `beauty_listings`
--

CREATE TABLE `beauty_listings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `visibility` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_keyword` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `og_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `og_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `og_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `canonical_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `json_id` longtext COLLATE utf8mb4_unicode_ci,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `area` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `postal_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Latitude` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Longitude` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `team` text COLLATE utf8mb4_unicode_ci,
  `service` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `video` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `opening_time` text COLLATE utf8mb4_unicode_ci,
  `user_id` int(11) NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_popular` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_claimed` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

CREATE TABLE `blogs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category` int(11) NOT NULL,
  `user_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL,
  `is_popular` int(11) DEFAULT NULL,
  `keyword` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `time` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blogs`
--

INSERT INTO `blogs` (`id`, `title`, `image`, `category`, `user_id`, `description`, `status`, `is_popular`, `keyword`, `time`, `created_at`, `updated_at`) VALUES
(1, 'Penanganan Pasien Multi Trauma Akibat Kecelakaan Lalu Lintas dengan Pendekatan ATLS dan BTCLS', '1761778761.png', 1, '1', '<p data-start=\"256\" data-end=\"693\">Kecelakaan lalu lintas masih menjadi salah satu penyebab kematian tertinggi di Indonesia, terutama pada kelompok usia produktif. Dalam menghadapi kasus trauma berat, tenaga medis di Instalasi Gawat Darurat (IGD) harus mampu bertindak cepat dan tepat sesuai standar internasional. Salah satu pedoman yang digunakan adalah <strong data-start=\"577\" data-end=\"616\">Advanced Trauma Life Support (ATLS)</strong>, dikombinasikan dengan <strong data-start=\"640\" data-end=\"690\">Basic Trauma and Critical Life Support (BTCLS)</strong>.</p><p data-start=\"695\" data-end=\"1118\">Dalam sebuah kasus yang dilaporkan oleh <em data-start=\"735\" data-end=\"749\">ProEmergency</em> (2025), seorang pria berusia 35 tahun mengalami kecelakaan sepeda motor dan tiba di IGD dalam kondisi tidak sadar. Pemeriksaan awal menunjukkan napas dangkal, tekanan darah menurun, dan perut membesar akibat perdarahan internal. Tim medis segera melakukan pendekatan ATLS — dimulai dari penilaian <strong data-start=\"1047\" data-end=\"1115\">airway, breathing, circulation, disability, dan exposure (ABCDE)</strong>.</p><p data-start=\"1120\" data-end=\"1406\">Pasien segera dilakukan pemasangan airway, diberikan oksigen, dan dilakukan resusitasi cairan. Pemeriksaan cepat (FAST) menemukan adanya perdarahan intraabdominal yang memerlukan tindakan operasi segera. Proses stabilisasi dan transfer ke ruang operasi dilakukan sesuai protokol ATLS.</p><p>\r\n\r\n\r\n</p><p data-start=\"1408\" data-end=\"1882\">Pendekatan sistematis ini terbukti meningkatkan peluang keselamatan pasien trauma berat. ATLS menuntun tenaga medis untuk berpikir cepat namun tetap terstruktur, meminimalkan kesalahan klinis, dan memprioritaskan intervensi yang menyelamatkan jiwa. Artikel ini menegaskan bahwa keberhasilan penanganan trauma tidak hanya bergantung pada keterampilan individu, tetapi juga pada <strong data-start=\"1785\" data-end=\"1821\">disiplin penerapan protokol ATLS</strong> secara konsisten di semua fasilitas pelayanan gawat darurat.</p>', 1, 1, 'atls', 1761778761, '2025-10-29 15:59:21', '2025-10-29 15:59:21'),
(2, 'Diklat RSPAU Gelar Pelatihan ATLS', '1761778844.png', 2, '1', '<p data-start=\"1937\" data-end=\"2267\">RSPAU dr. S. Hardjolukito Yogyakarta sebagai salah satu rumah sakit rujukan nasional bidang penerbangan dan militer menyelenggarakan pelatihan <strong data-start=\"2080\" data-end=\"2119\">Advanced Trauma Life Support (ATLS)</strong> pada Oktober 2024. Pelatihan ini diikuti oleh 34 peserta, terdiri atas dokter umum dan dokter gigi dari berbagai instansi kesehatan di Indonesia.</p><p data-start=\"2269\" data-end=\"2546\">Kegiatan ini bertujuan untuk meningkatkan kemampuan tenaga medis dalam menangani kasus trauma secara cepat, tepat, dan terukur. Menurut Kepala RSPAU, trauma merupakan penyebab kematian yang dapat dicegah apabila penanganan awal dilakukan sesuai pedoman standar internasional.</p><p data-start=\"2548\" data-end=\"2960\">Pelatihan berlangsung selama dua hari dan mencakup kombinasi teori, simulasi kasus, serta ujian praktik. Peserta dilatih untuk mengenali tanda-tanda bahaya pada pasien trauma, melakukan penilaian primer (ABCDE), serta menentukan prioritas tindakan penyelamatan jiwa. Instruktur pelatihan merupakan dokter spesialis bedah dan anestesi yang telah tersertifikasi oleh <strong data-start=\"2913\" data-end=\"2957\">Indonesian Trauma Life Support Committee</strong>.</p><p data-start=\"2962\" data-end=\"3292\">Kegiatan ini menjadi bukti bahwa kesadaran terhadap pentingnya pelatihan trauma semakin meningkat di Indonesia, termasuk di lingkungan militer. Dengan pelatihan yang rutin dan berstandar global, diharapkan tenaga medis dapat memberikan pelayanan cepat tanggap terhadap korban kecelakaan, bencana, maupun trauma akibat kekerasan.</p><p>\r\n\r\n\r\n\r\n</p><p data-start=\"3294\" data-end=\"3611\">Pelatihan ATLS bukan hanya meningkatkan kompetensi klinis, tetapi juga membangun budaya <strong data-start=\"3382\" data-end=\"3426\">kesigapan dan koordinasi antar tim medis</strong>, dua hal yang sangat penting dalam situasi darurat. Program seperti ini diharapkan terus diperluas ke berbagai daerah agar kualitas pelayanan gawat darurat di Indonesia semakin merata.</p>', 1, 1, 'atls', 1761778844, '2025-10-29 16:00:44', '2025-10-29 16:00:44'),
(3, 'Survey Penyebab Kematian Berdasarkan Prosedur ATLS pada Pasien Multiple Trauma di IGD RS Hasan Sadikin Bandung', '1761778914.png', 3, '1', '<p data-start=\"3743\" data-end=\"4170\">Sebuah penelitian yang diterbitkan dalam <em data-start=\"3784\" data-end=\"3806\">Jurnal Syifa’ Medika</em> (2018) oleh tim dari Fakultas Kedokteran Universitas Padjadjaran meneliti penerapan prosedur <strong data-start=\"3900\" data-end=\"3939\">Advanced Trauma Life Support (ATLS)</strong> pada pasien multiple trauma di IGD RS Hasan Sadikin Bandung. Penelitian ini menganalisis data pasien trauma berat selama periode Januari–Juli 2014 untuk mengetahui hubungan antara pelaksanaan prosedur ATLS dengan angka kematian.</p><p data-start=\"4172\" data-end=\"4639\">Hasil penelitian menunjukkan bahwa sebagian besar pasien yang datang ke IGD merupakan korban kecelakaan lalu lintas, dengan usia dominan 15–24 tahun. Banyak di antara mereka mengalami keterlambatan dalam penanganan awal atau transportasi yang tidak sesuai standar. Studi menemukan bahwa penerapan langkah-langkah ATLS secara lengkap, terutama pada tahap <strong data-start=\"4526\" data-end=\"4570\">airway management dan kontrol perdarahan</strong>, berpengaruh signifikan terhadap peningkatan survival rate pasien.</p><p data-start=\"4641\" data-end=\"4907\">Selain itu, penelitian menyoroti pentingnya pelatihan dan ketersediaan fasilitas pendukung seperti peralatan resusitasi, radiologi cepat, dan tim trauma multidisipliner. Kurangnya koordinasi antar unit menjadi salah satu faktor yang memperlambat penanganan pasien.</p><p>\r\n\r\n\r\n</p><p data-start=\"4909\" data-end=\"5286\">Kesimpulan dari studi ini menegaskan bahwa implementasi ATLS secara disiplin dapat mengurangi angka kematian akibat trauma. Rumah sakit pendidikan diharapkan menjadikan ATLS sebagai bagian wajib dalam kurikulum pelatihan dokter muda dan residen. Dengan demikian, sistem penanganan trauma di Indonesia dapat semakin cepat, terintegrasi, dan berorientasi pada keselamatan pasien.</p>', 1, 1, 'atls', 1761778914, '2025-10-29 16:01:54', '2025-10-29 16:01:54');

-- --------------------------------------------------------

--
-- Table structure for table `blog_categories`
--

CREATE TABLE `blog_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blog_categories`
--

INSERT INTO `blog_categories` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Kasus & Implementasi Klinis ATLS', '2025-10-29 15:56:41', '2025-10-29 15:56:41'),
(2, 'Pendidikan & Pelatihan ATLS', '2025-10-29 15:56:53', '2025-10-29 15:56:53'),
(3, 'Penelitian & Evaluasi ATLS', '2025-10-29 15:57:02', '2025-10-29 15:57:02');

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `car_listings`
--

CREATE TABLE `car_listings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sub_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `brand` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `year` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `car_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `transmission` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fuel_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `engine_size` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cylinder` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `interior_color` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `exterior_color` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `drive_train` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `trim` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mileage` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `vin` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` double DEFAULT NULL,
  `discount_price` double DEFAULT NULL,
  `visibility` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category` int(11) NOT NULL,
  `feature` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `specification` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_keyword` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `og_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `og_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `og_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `canonical_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `json_id` longtext COLLATE utf8mb4_unicode_ci,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `area` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `postal_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Latitude` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Longitude` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `stock` int(11) DEFAULT NULL,
  `is_popular` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cities`
--

CREATE TABLE `cities` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` bigint(20) NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cities`
--

INSERT INTO `cities` (`id`, `name`, `country`, `image`, `created_at`, `updated_at`) VALUES
(1, 'Surabaya', 99, '1757043381_logo.png', '2025-09-04 20:36:21', '2025-09-04 20:36:21'),
(2, 'Malang', 99, '1758857953_New Project (1).png', '2025-09-25 20:39:13', '2025-09-25 20:39:13'),
(3, 'Semarang', 99, '1758857978_New Project (1) (1).png', '2025-09-25 20:39:38', '2025-09-25 20:39:38'),
(4, 'Yogyakarta', 99, '1758858127_1756962488_logo.png', '2025-09-25 20:42:07', '2025-09-25 20:42:07'),
(5, 'Surakarta', 99, '1758858215_1756962488_logo.png', '2025-09-25 20:43:35', '2025-09-25 20:43:35'),
(6, 'Jakarta', 99, '1758858235_1756962488_logo.png', '2025-09-25 20:43:55', '2025-09-25 20:43:55'),
(7, 'Bandung', 99, '1758858252_1756962488_logo.png', '2025-09-25 20:44:12', '2025-09-25 20:44:12'),
(8, 'Bali', 99, '1758858270_1756962488_logo.png', '2025-09-25 20:44:30', '2025-09-25 20:44:30'),
(9, 'NTB/NTT', 99, '1758858286_1756962488_logo.png', '2025-09-25 20:44:46', '2025-09-25 20:44:46'),
(10, 'Lampung', 99, '1758858308_1756962488_logo.png', '2025-09-25 20:45:08', '2025-09-25 20:45:08');

-- --------------------------------------------------------

--
-- Table structure for table `claimed_listings`
--

CREATE TABLE `claimed_listings` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `listing_id` int(11) DEFAULT NULL,
  `listing_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_phone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `additional_info` longtext COLLATE utf8_unicode_ci,
  `status` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` int(21) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8_unicode_ci,
  `message` text COLLATE utf8_unicode_ci,
  `has_read` int(11) DEFAULT '0',
  `replied` int(11) DEFAULT '0',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dial_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `currency_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `thumbnail` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `currency_symbol` int(11) DEFAULT NULL,
  `currency_code` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`id`, `name`, `code`, `dial_code`, `currency_name`, `thumbnail`, `currency_symbol`, `currency_code`, `created_at`, `updated_at`) VALUES
(1, 'Afghanistan', 'AF', '+93', 'Afghan afghani', '1741687214.webp', 0, 0, NULL, '2025-03-11 04:00:14'),
(2, 'Aland Islands', 'AX', '+358', '', '1733385195.webp', 0, 0, NULL, '2024-12-05 01:53:15'),
(3, 'Albania', 'AL', '+355', 'Albanian lek', '1733569672.webp', 0, 0, NULL, '2024-12-07 05:07:52'),
(4, 'Algeria', 'DZ', '+213', 'Algerian dinar', NULL, 0, 0, NULL, NULL),
(5, 'AmericanSamoa', 'AS', '+1684', '', NULL, 0, 0, NULL, NULL),
(6, 'Andorra', 'AD', '+376', 'Euro', '1733569643.webp', 0, 0, NULL, '2024-12-07 05:07:23'),
(7, 'Angola', 'AO', '+244', 'Angolan kwanza', '1733392190.webp', 0, 0, NULL, '2024-12-05 03:49:50'),
(8, 'Anguilla', 'AI', '+1264', 'East Caribbean dolla', NULL, 0, 0, NULL, NULL),
(9, 'Antarctica', 'AQ', '+672', '', NULL, 0, 0, NULL, NULL),
(10, 'Antigua and Barbuda', 'AG', '+1268', 'East Caribbean dolla', NULL, 0, 0, NULL, NULL),
(11, 'Argentina', 'AR', '+54', 'Argentine peso', NULL, 0, 0, NULL, NULL),
(12, 'Armenia', 'AM', '+374', 'Armenian dram', NULL, 0, 0, NULL, NULL),
(13, 'Aruba', 'AW', '+297', 'Aruban florin', NULL, 0, 0, NULL, NULL),
(14, 'Australia', 'AU', '+61', 'Australian dollar', NULL, 0, 0, NULL, NULL),
(15, 'Austria', 'AT', '+43', 'Euro', NULL, 0, 0, NULL, NULL),
(16, 'Azerbaijan', 'AZ', '+994', 'Azerbaijani manat', NULL, 0, 0, NULL, NULL),
(17, 'Bahamas', 'BS', '+1242', '', NULL, 0, 0, NULL, NULL),
(18, 'Bahrain', 'BH', '+973', 'Bahraini dinar', '1727859648.webp', 0, 0, NULL, '2024-10-02 03:00:48'),
(19, 'Bangladesh', 'BD', '+880', 'Bangladeshi taka', '1733386184.webp', 0, 0, NULL, '2024-12-05 02:09:44'),
(20, 'Barbados', 'BB', '+1246', 'Barbadian dollar', NULL, 0, 0, NULL, NULL),
(21, 'Belarus', 'BY', '+375', 'Belarusian ruble', NULL, 0, 0, NULL, NULL),
(22, 'Belgium', 'BE', '+32', 'Euro', '1733569353.webp', 0, 0, NULL, '2024-12-07 05:02:34'),
(23, 'Belize', 'BZ', '+501', 'Belize dollar', NULL, 0, 0, NULL, NULL),
(24, 'Benin', 'BJ', '+229', 'West African CFA fra', NULL, 0, 0, NULL, NULL),
(25, 'Bermuda', 'BM', '+1441', 'Bermudian dollar', NULL, 0, 0, NULL, NULL),
(26, 'Bhutan', 'BT', '+975', 'Bhutanese ngultrum', NULL, 0, 0, NULL, NULL),
(27, 'Bolivia, Plurination', 'BO', '+591', '', NULL, 0, 0, NULL, NULL),
(28, 'Bosnia and Herzegovi', 'BA', '+387', '', NULL, 0, 0, NULL, NULL),
(29, 'Botswana', 'BW', '+267', 'Botswana pula', NULL, 0, 0, NULL, NULL),
(30, 'Brazil', 'BR', '+55', 'Brazilian real', NULL, 0, 0, NULL, NULL),
(31, 'British Indian Ocean', 'IO', '+246', '', NULL, 0, 0, NULL, NULL),
(32, 'Brunei Darussalam', 'BN', '+673', '', NULL, 0, 0, NULL, NULL),
(33, 'Bulgaria', 'BG', '+359', 'Bulgarian lev', NULL, 0, 0, NULL, NULL),
(34, 'Burkina Faso', 'BF', '+226', 'West African CFA fra', NULL, 0, 0, NULL, NULL),
(35, 'Burundi', 'BI', '+257', 'Burundian franc', NULL, 0, 0, NULL, NULL),
(36, 'Cambodia', 'KH', '+855', 'Cambodian riel', NULL, 0, 0, NULL, NULL),
(37, 'Cameroon', 'CM', '+237', 'Central African CFA ', NULL, 0, 0, NULL, NULL),
(38, 'Canada', 'CA', '+1', 'Canadian dollar', NULL, 0, 0, NULL, NULL),
(39, 'Cape Verde', 'CV', '+238', 'Cape Verdean escudo', NULL, 0, 0, NULL, NULL),
(40, 'Cayman Islands', 'KY', '+ 345', 'Cayman Islands dolla', NULL, 0, 0, NULL, NULL),
(41, 'Central African Repu', 'CF', '+236', '', NULL, 0, 0, NULL, NULL),
(42, 'Chad', 'TD', '+235', 'Central African CFA ', NULL, 0, 0, NULL, NULL),
(43, 'Chile', 'CL', '+56', 'Chilean peso', NULL, 0, 0, NULL, NULL),
(44, 'China', 'CN', '+86', 'Chinese yuan', NULL, 0, 0, NULL, NULL),
(45, 'Christmas Island', 'CX', '+61', '', NULL, 0, 0, NULL, NULL),
(46, 'Cocos (Keeling) Isla', 'CC', '+61', '', NULL, 0, 0, NULL, NULL),
(47, 'Colombia', 'CO', '+57', 'Colombian peso', NULL, 0, 0, NULL, NULL),
(48, 'Comoros', 'KM', '+269', 'Comorian franc', NULL, 0, 0, NULL, NULL),
(49, 'Congo', 'CG', '+242', '', NULL, 0, 0, NULL, NULL),
(50, 'Congo, The Democrati', 'CD', '+243', '', NULL, 0, 0, NULL, NULL),
(51, 'Cook Islands', 'CK', '+682', 'New Zealand dollar', NULL, 0, 0, NULL, NULL),
(52, 'Costa Rica', 'CR', '+506', 'Costa Rican colón', NULL, 0, 0, NULL, NULL),
(53, 'Cote d\'Ivoire', 'CI', '+225', 'West African CFA fra', NULL, 0, 0, NULL, NULL),
(54, 'Croatia', 'HR', '+385', 'Croatian kuna', NULL, 0, 0, NULL, NULL),
(55, 'Cuba', 'CU', '+53', 'Cuban convertible pe', NULL, 0, 0, NULL, NULL),
(56, 'Cyprus', 'CY', '+357', 'Euro', NULL, 0, 0, NULL, NULL),
(57, 'Czech Republic', 'CZ', '+420', 'Czech koruna', NULL, 0, 0, NULL, NULL),
(58, 'Denmark', 'DK', '+45', 'Danish krone', NULL, 0, 0, NULL, NULL),
(59, 'Djibouti', 'DJ', '+253', 'Djiboutian franc', NULL, 0, 0, NULL, NULL),
(60, 'Dominica', 'DM', '+1767', 'East Caribbean dolla', NULL, 0, 0, NULL, NULL),
(61, 'Dominican Republic', 'DO', '+1849', 'Dominican peso', NULL, 0, 0, NULL, NULL),
(62, 'Ecuador', 'EC', '+593', 'United States dollar', NULL, 0, 0, NULL, NULL),
(63, 'Egypt', 'EG', '+20', 'Egyptian pound', NULL, 0, 0, NULL, NULL),
(64, 'El Salvador', 'SV', '+503', 'United States dollar', NULL, 0, 0, NULL, NULL),
(65, 'Equatorial Guinea', 'GQ', '+240', 'Central African CFA ', NULL, 0, 0, NULL, NULL),
(66, 'Eritrea', 'ER', '+291', 'Eritrean nakfa', NULL, 0, 0, NULL, NULL),
(67, 'Estonia', 'EE', '+372', 'Euro', NULL, 0, 0, NULL, NULL),
(68, 'Ethiopia', 'ET', '+251', 'Ethiopian birr', NULL, 0, 0, NULL, NULL),
(69, 'Falkland Islands (Ma', 'FK', '+500', '', NULL, 0, 0, NULL, NULL),
(70, 'Faroe Islands', 'FO', '+298', 'Danish krone', NULL, 0, 0, NULL, NULL),
(71, 'Fiji', 'FJ', '+679', 'Fijian dollar', NULL, 0, 0, NULL, NULL),
(72, 'Finland', 'FI', '+358', 'Euro', NULL, 0, 0, NULL, NULL),
(73, 'France', 'FR', '+33', 'Euro', NULL, 0, 0, NULL, NULL),
(74, 'French Guiana', 'GF', '+594', '', NULL, 0, 0, NULL, NULL),
(75, 'French Polynesia', 'PF', '+689', 'CFP franc', NULL, 0, 0, NULL, NULL),
(76, 'Gabon', 'GA', '+241', 'Central African CFA ', NULL, 0, 0, NULL, NULL),
(77, 'Gambia', 'GM', '+220', '', NULL, 0, 0, NULL, NULL),
(78, 'Georgia', 'GE', '+995', 'Georgian lari', NULL, 0, 0, NULL, NULL),
(79, 'Germany', 'DE', '+49', 'Euro', NULL, 0, 0, NULL, NULL),
(80, 'Ghana', 'GH', '+233', 'Ghana cedi', NULL, 0, 0, NULL, NULL),
(81, 'Gibraltar', 'GI', '+350', 'Gibraltar pound', NULL, 0, 0, NULL, NULL),
(82, 'Greece', 'GR', '+30', 'Euro', NULL, 0, 0, NULL, NULL),
(83, 'Greenland', 'GL', '+299', '', NULL, 0, 0, NULL, NULL),
(84, 'Grenada', 'GD', '+1473', 'East Caribbean dolla', NULL, 0, 0, NULL, NULL),
(85, 'Guadeloupe', 'GP', '+590', '', NULL, 0, 0, NULL, NULL),
(86, 'Guam', 'GU', '+1671', '', NULL, 0, 0, NULL, NULL),
(87, 'Guatemala', 'GT', '+502', 'Guatemalan quetzal', NULL, 0, 0, NULL, NULL),
(88, 'Guernsey', 'GG', '+44', 'British pound', NULL, 0, 0, NULL, NULL),
(89, 'Guinea', 'GN', '+224', 'Guinean franc', NULL, 0, 0, NULL, NULL),
(90, 'Guinea-Bissau', 'GW', '+245', 'West African CFA fra', NULL, 0, 0, NULL, NULL),
(91, 'Guyana', 'GY', '+595', 'Guyanese dollar', NULL, 0, 0, NULL, NULL),
(92, 'Haiti', 'HT', '+509', 'Haitian gourde', NULL, 0, 0, NULL, NULL),
(93, 'Holy See (Vatican Ci', 'VA', '+379', '', NULL, 0, 0, NULL, NULL),
(94, 'Honduras', 'HN', '+504', 'Honduran lempira', NULL, 0, 0, NULL, NULL),
(95, 'Hong Kong', 'HK', '+852', 'Hong Kong dollar', NULL, 0, 0, NULL, NULL),
(96, 'Hungary', 'HU', '+36', 'Hungarian forint', NULL, 0, 0, NULL, NULL),
(97, 'Iceland', 'IS', '+354', 'Icelandic króna', NULL, 0, 0, NULL, NULL),
(98, 'India', 'IN', '+91', 'Indian rupee', '1733385975.webp', 0, 0, NULL, '2024-12-05 02:06:15'),
(99, 'Indonesia', 'ID', '+62', 'Indonesian rupiah', NULL, 0, 0, NULL, NULL),
(100, 'Iran, Islamic Republ', 'IR', '+98', '', NULL, 0, 0, NULL, NULL),
(101, 'Iraq', 'IQ', '+964', 'Iraqi dinar', NULL, 0, 0, NULL, NULL),
(102, 'Ireland', 'IE', '+353', 'Euro', NULL, 0, 0, NULL, NULL),
(103, 'Isle of Man', 'IM', '+44', 'British pound', NULL, 0, 0, NULL, NULL),
(104, 'Israel', 'IL', '+972', 'Israeli new shekel', NULL, 0, 0, NULL, NULL),
(105, 'Italy', 'IT', '+39', 'Euro', NULL, 0, 0, NULL, NULL),
(106, 'Jamaica', 'JM', '+1876', 'Jamaican dollar', NULL, 0, 0, NULL, NULL),
(107, 'Japan', 'JP', '+81', 'Japanese yen', NULL, 0, 0, NULL, NULL),
(108, 'Jersey', 'JE', '+44', 'British pound', NULL, 0, 0, NULL, NULL),
(109, 'Jordan', 'JO', '+962', 'Jordanian dinar', NULL, 0, 0, NULL, NULL),
(110, 'Kazakhstan', 'KZ', '+7 7', 'Kazakhstani tenge', NULL, 0, 0, NULL, NULL),
(111, 'Kenya', 'KE', '+254', 'Kenyan shilling', NULL, 0, 0, NULL, NULL),
(112, 'Kiribati', 'KI', '+686', 'Australian dollar', NULL, 0, 0, NULL, NULL),
(113, 'Korea, Democratic Pe', 'KP', '+850', '', NULL, 0, 0, NULL, NULL),
(114, 'Korea, Republic of S', 'KR', '+82', '', NULL, 0, 0, NULL, NULL),
(115, 'Kuwait', 'KW', '+965', 'Kuwaiti dinar', NULL, 0, 0, NULL, NULL),
(116, 'Kyrgyzstan', 'KG', '+996', 'Kyrgyzstani som', NULL, 0, 0, NULL, NULL),
(117, 'Laos', 'LA', '+856', 'Lao kip', NULL, 0, 0, NULL, NULL),
(118, 'Latvia', 'LV', '+371', 'Euro', NULL, 0, 0, NULL, NULL),
(119, 'Lebanon', 'LB', '+961', 'Lebanese pound', NULL, 0, 0, NULL, NULL),
(120, 'Lesotho', 'LS', '+266', 'Lesotho loti', NULL, 0, 0, NULL, NULL),
(121, 'Liberia', 'LR', '+231', 'Liberian dollar', NULL, 0, 0, NULL, NULL),
(122, 'Libyan Arab Jamahiri', 'LY', '+218', '', NULL, 0, 0, NULL, NULL),
(123, 'Liechtenstein', 'LI', '+423', 'Swiss franc', NULL, 0, 0, NULL, NULL),
(124, 'Lithuania', 'LT', '+370', 'Euro', NULL, 0, 0, NULL, NULL),
(125, 'Luxembourg', 'LU', '+352', 'Euro', NULL, 0, 0, NULL, NULL),
(126, 'Macao', 'MO', '+853', '', NULL, 0, 0, NULL, NULL),
(127, 'Macedonia', 'MK', '+389', '', NULL, 0, 0, NULL, NULL),
(128, 'Madagascar', 'MG', '+261', 'Malagasy ariary', NULL, 0, 0, NULL, NULL),
(129, 'Malawi', 'MW', '+265', 'Malawian kwacha', NULL, 0, 0, NULL, NULL),
(130, 'Malaysia', 'MY', '+60', 'Malaysian ringgit', NULL, 0, 0, NULL, NULL),
(131, 'Maldives', 'MV', '+960', 'Maldivian rufiyaa', NULL, 0, 0, NULL, NULL),
(132, 'Mali', 'ML', '+223', 'West African CFA fra', NULL, 0, 0, NULL, NULL),
(133, 'Malta', 'MT', '+356', 'Euro', NULL, 0, 0, NULL, NULL),
(134, 'Marshall Islands', 'MH', '+692', 'United States dollar', NULL, 0, 0, NULL, NULL),
(135, 'Martinique', 'MQ', '+596', '', NULL, 0, 0, NULL, NULL),
(136, 'Mauritania', 'MR', '+222', 'Mauritanian ouguiya', NULL, 0, 0, NULL, NULL),
(137, 'Mauritius', 'MU', '+230', 'Mauritian rupee', NULL, 0, 0, NULL, NULL),
(138, 'Mayotte', 'YT', '+262', '', NULL, 0, 0, NULL, NULL),
(139, 'Mexico', 'MX', '+52', 'Mexican peso', NULL, 0, 0, NULL, NULL),
(140, 'Micronesia, Federate', 'FM', '+691', '', NULL, 0, 0, NULL, NULL),
(141, 'Moldova', 'MD', '+373', 'Moldovan leu', NULL, 0, 0, NULL, NULL),
(142, 'Monaco', 'MC', '+377', 'Euro', NULL, 0, 0, NULL, NULL),
(143, 'Mongolia', 'MN', '+976', 'Mongolian tögrög', NULL, 0, 0, NULL, NULL),
(144, 'Montenegro', 'ME', '+382', 'Euro', NULL, 0, 0, NULL, NULL),
(145, 'Montserrat', 'MS', '+1664', 'East Caribbean dolla', NULL, 0, 0, NULL, NULL),
(146, 'Morocco', 'MA', '+212', 'Moroccan dirham', NULL, 0, 0, NULL, NULL),
(147, 'Mozambique', 'MZ', '+258', 'Mozambican metical', NULL, 0, 0, NULL, NULL),
(148, 'Myanmar', 'MM', '+95', 'Burmese kyat', NULL, 0, 0, NULL, NULL),
(149, 'Namibia', 'NA', '+264', 'Namibian dollar', NULL, 0, 0, NULL, NULL),
(150, 'Nauru', 'NR', '+674', 'Australian dollar', NULL, 0, 0, NULL, NULL),
(151, 'Nepal', 'NP', '+977', 'Nepalese rupee', NULL, 0, 0, NULL, NULL),
(152, 'Netherlands', 'NL', '+31', 'Euro', NULL, 0, 0, NULL, NULL),
(153, 'Netherlands Antilles', 'AN', '+599', '', NULL, 0, 0, NULL, NULL),
(154, 'New Caledonia', 'NC', '+687', 'CFP franc', NULL, 0, 0, NULL, NULL),
(155, 'New Zealand', 'NZ', '+64', 'New Zealand dollar', NULL, 0, 0, NULL, NULL),
(156, 'Nicaragua', 'NI', '+505', 'Nicaraguan córdoba', NULL, 0, 0, NULL, NULL),
(157, 'Niger', 'NE', '+227', 'West African CFA fra', NULL, 0, 0, NULL, NULL),
(158, 'Nigeria', 'NG', '+234', 'Nigerian naira', NULL, 0, 0, NULL, NULL),
(159, 'Niue', 'NU', '+683', 'New Zealand dollar', NULL, 0, 0, NULL, NULL),
(160, 'Norfolk Island', 'NF', '+672', '', NULL, 0, 0, NULL, NULL),
(161, 'Northern Mariana Isl', 'MP', '+1670', '', NULL, 0, 0, NULL, NULL),
(162, 'Norway', 'NO', '+47', 'Norwegian krone', NULL, 0, 0, NULL, NULL),
(163, 'Oman', 'OM', '+968', 'Omani rial', NULL, 0, 0, NULL, NULL),
(164, 'Pakistan', 'PK', '+92', 'Pakistani rupee', NULL, 0, 0, NULL, NULL),
(165, 'Palau', 'PW', '+680', 'Palauan dollar', NULL, 0, 0, NULL, NULL),
(166, 'Palestinian Territor', 'PS', '+970', '', NULL, 0, 0, NULL, NULL),
(167, 'Panama', 'PA', '+507', 'Panamanian balboa', NULL, 0, 0, NULL, NULL),
(168, 'Papua New Guinea', 'PG', '+675', 'Papua New Guinean ki', NULL, 0, 0, NULL, NULL),
(169, 'Paraguay', 'PY', '+595', 'Paraguayan guaraní', NULL, 0, 0, NULL, NULL),
(170, 'Peru', 'PE', '+51', 'Peruvian nuevo sol', NULL, 0, 0, NULL, NULL),
(171, 'Philippines', 'PH', '+63', 'Philippine peso', NULL, 0, 0, NULL, NULL),
(172, 'Pitcairn', 'PN', '+872', '', NULL, 0, 0, NULL, NULL),
(173, 'Poland', 'PL', '+48', 'Polish z?oty', NULL, 0, 0, NULL, NULL),
(174, 'Portugal', 'PT', '+351', 'Euro', NULL, 0, 0, NULL, NULL),
(175, 'Puerto Rico', 'PR', '+1939', '', NULL, 0, 0, NULL, NULL),
(176, 'Qatar', 'QA', '+974', 'Qatari riyal', NULL, 0, 0, NULL, NULL),
(177, 'Romania', 'RO', '+40', 'Romanian leu', NULL, 0, 0, NULL, NULL),
(178, 'Russia', 'RU', '+7', 'Russian ruble', NULL, 0, 0, NULL, NULL),
(179, 'Rwanda', 'RW', '+250', 'Rwandan franc', NULL, 0, 0, NULL, NULL),
(180, 'Reunion', 'RE', '+262', '', NULL, 0, 0, NULL, NULL),
(181, 'Saint Barthelemy', 'BL', '+590', '', NULL, 0, 0, NULL, NULL),
(182, 'Saint Helena, Ascens', 'SH', '+290', '', NULL, 0, 0, NULL, NULL),
(183, 'Saint Kitts and Nevi', 'KN', '+1869', '', NULL, 0, 0, NULL, NULL),
(184, 'Saint Lucia', 'LC', '+1758', 'East Caribbean dolla', NULL, 0, 0, NULL, NULL),
(185, 'Saint Martin', 'MF', '+590', '', NULL, 0, 0, NULL, NULL),
(186, 'Saint Pierre and Miq', 'PM', '+508', '', NULL, 0, 0, NULL, NULL),
(187, 'Saint Vincent and th', 'VC', '+1784', '', NULL, 0, 0, NULL, NULL),
(188, 'Samoa', 'WS', '+685', 'Samoan t?l?', NULL, 0, 0, NULL, NULL),
(189, 'San Marino', 'SM', '+378', 'Euro', NULL, 0, 0, NULL, NULL),
(190, 'Sao Tome and Princip', 'ST', '+239', '', NULL, 0, 0, NULL, NULL),
(191, 'Saudi Arabia', 'SA', '+966', 'Saudi riyal', NULL, 0, 0, NULL, NULL),
(192, 'Senegal', 'SN', '+221', 'West African CFA fra', NULL, 0, 0, NULL, NULL),
(193, 'Serbia', 'RS', '+381', 'Serbian dinar', NULL, 0, 0, NULL, NULL),
(194, 'Seychelles', 'SC', '+248', 'Seychellois rupee', NULL, 0, 0, NULL, NULL),
(195, 'Sierra Leone', 'SL', '+232', 'Sierra Leonean leone', NULL, 0, 0, NULL, NULL),
(196, 'Singapore', 'SG', '+65', 'Brunei dollar', NULL, 0, 0, NULL, NULL),
(197, 'Slovakia', 'SK', '+421', 'Euro', NULL, 0, 0, NULL, NULL),
(198, 'Slovenia', 'SI', '+386', 'Euro', NULL, 0, 0, NULL, NULL),
(199, 'Solomon Islands', 'SB', '+677', 'Solomon Islands doll', NULL, 0, 0, NULL, NULL),
(200, 'Somalia', 'SO', '+252', 'Somali shilling', NULL, 0, 0, NULL, NULL),
(201, 'South Africa', 'ZA', '+27', 'South African rand', NULL, 0, 0, NULL, NULL),
(202, 'South Georgia and th', 'GS', '+500', '', NULL, 0, 0, NULL, NULL),
(203, 'Spain', 'ES', '+34', 'Euro', NULL, 0, 0, NULL, NULL),
(204, 'Sri Lanka', 'LK', '+94', 'Sri Lankan rupee', NULL, 0, 0, NULL, NULL),
(205, 'Sudan', 'SD', '+249', 'Sudanese pound', NULL, 0, 0, NULL, NULL),
(206, 'Suriname', 'SR', '+597', 'Surinamese dollar', NULL, 0, 0, NULL, NULL),
(207, 'Svalbard and Jan May', 'SJ', '+47', '', NULL, 0, 0, NULL, NULL),
(208, 'Swaziland', 'SZ', '+268', 'Swazi lilangeni', NULL, 0, 0, NULL, NULL),
(209, 'Sweden', 'SE', '+46', 'Swedish krona', NULL, 0, 0, NULL, NULL),
(210, 'Switzerland', 'CH', '+41', 'Swiss franc', NULL, 0, 0, NULL, NULL),
(211, 'Syrian Arab Republic', 'SY', '+963', '', NULL, 0, 0, NULL, NULL),
(212, 'Taiwan', 'TW', '+886', 'New Taiwan dollar', NULL, 0, 0, NULL, NULL),
(213, 'Tajikistan', 'TJ', '+992', 'Tajikistani somoni', NULL, 0, 0, NULL, NULL),
(214, 'Tanzania, United Rep', 'TZ', '+255', '', NULL, 0, 0, NULL, NULL),
(215, 'Thailand', 'TH', '+66', 'Thai baht', NULL, 0, 0, NULL, NULL),
(216, 'Timor-Leste', 'TL', '+670', '', NULL, 0, 0, NULL, NULL),
(217, 'Togo', 'TG', '+228', 'West African CFA fra', NULL, 0, 0, NULL, NULL),
(218, 'Tokelau', 'TK', '+690', '', NULL, 0, 0, NULL, NULL),
(219, 'Tonga', 'TO', '+676', 'Tongan pa?anga', NULL, 0, 0, NULL, NULL),
(220, 'Trinidad and Tobago', 'TT', '+1868', 'Trinidad and Tobago ', NULL, 0, 0, NULL, NULL),
(221, 'Tunisia', 'TN', '+216', 'Tunisian dinar', NULL, 0, 0, NULL, NULL),
(222, 'Turkey', 'TR', '+90', 'Turkish lira', NULL, 0, 0, NULL, NULL),
(223, 'Turkmenistan', 'TM', '+993', 'Turkmenistan manat', NULL, 0, 0, NULL, NULL),
(224, 'Turks and Caicos Isl', 'TC', '+1649', '', NULL, 0, 0, NULL, NULL),
(225, 'Tuvalu', 'TV', '+688', 'Australian dollar', NULL, 0, 0, NULL, NULL),
(226, 'Uganda', 'UG', '+256', 'Ugandan shilling', NULL, 0, 0, NULL, NULL),
(227, 'Ukraine', 'UA', '+380', 'Ukrainian hryvnia', NULL, 0, 0, NULL, NULL),
(228, 'United Arab Emirates', 'AE', '+971', 'United Arab Emirates', NULL, 0, 0, NULL, NULL),
(229, 'United Kingdom', 'GB', '+44', 'British pound', NULL, 0, 0, NULL, NULL),
(230, 'United States', 'US', '+1', 'United States dollar', NULL, 0, 0, NULL, NULL),
(231, 'Uruguay', 'UY', '+598', 'Uruguayan peso', NULL, 0, 0, NULL, NULL),
(232, 'Uzbekistan', 'UZ', '+998', 'Uzbekistani som', NULL, 0, 0, NULL, NULL),
(233, 'Vanuatu', 'VU', '+678', 'Vanuatu vatu', NULL, 0, 0, NULL, NULL),
(234, 'Venezuela, Bolivaria', 'VE', '+58', '', NULL, 0, 0, NULL, NULL),
(235, 'Vietnam', 'VN', '+84', 'Vietnamese ??ng', NULL, 0, 0, NULL, NULL),
(236, 'Virgin Islands, Brit', 'VG', '+1284', '', NULL, 0, 0, NULL, NULL),
(237, 'Virgin Islands, U.S.', 'VI', '+1340', '', NULL, 0, 0, NULL, NULL),
(238, 'Wallis and Futuna', 'WF', '+681', 'CFP franc', NULL, 0, 0, NULL, NULL),
(239, 'Yemen', 'YE', '+967', 'Yemeni rial', NULL, 0, 0, NULL, NULL),
(240, 'Zambia', 'ZM', '+260', 'Zambian kwacha', NULL, 0, 0, NULL, NULL),
(241, 'Zimbabwe', 'ZW', '+263', 'Botswana pula', NULL, 0, 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `currencies`
--

CREATE TABLE `currencies` (
  `id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `code` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `symbol` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `paypal_supported` int(11) NOT NULL DEFAULT '0',
  `stripe_supported` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `currencies`
--

INSERT INTO `currencies` (`id`, `name`, `code`, `symbol`, `paypal_supported`, `stripe_supported`) VALUES
(1, 'Leke', 'ALL', 'Lek', 0, 1),
(2, 'Dollars', 'USD', '$', 1, 1),
(3, 'Afghanis', 'AFN', '؋', 0, 1),
(4, 'Pesos', 'ARS', '$', 0, 1),
(5, 'Guilders', 'AWG', 'ƒ', 0, 1),
(6, 'Dollars', 'AUD', '$', 1, 1),
(7, 'New Manats', 'AZN', 'ман', 0, 1),
(8, 'Dollars', 'BSD', '$', 0, 1),
(9, 'Dollars', 'BBD', '$', 0, 1),
(10, 'Rubles', 'BYR', 'p.', 0, 0),
(11, 'Euro', 'EUR', '€', 1, 1),
(12, 'Dollars', 'BZD', 'BZ$', 0, 1),
(13, 'Dollars', 'BMD', '$', 0, 1),
(14, 'Bolivianos', 'BOB', '$b', 0, 1),
(15, 'Convertible Marka', 'BAM', 'KM', 0, 1),
(16, 'Pula', 'BWP', 'P', 0, 1),
(17, 'Leva', 'BGN', 'лв', 0, 1),
(18, 'Reais', 'BRL', 'R$', 1, 1),
(19, 'Pounds', 'GBP', '£', 1, 1),
(20, 'Dollars', 'BND', '$', 0, 1),
(21, 'Riels', 'KHR', '៛', 0, 1),
(22, 'Dollars', 'CAD', '$', 1, 1),
(23, 'Dollars', 'KYD', '$', 0, 1),
(24, 'Pesos', 'CLP', '$', 0, 1),
(25, 'Yuan Renminbi', 'CNY', '¥', 0, 1),
(26, 'Pesos', 'COP', '$', 0, 1),
(27, 'Colón', 'CRC', '₡', 0, 1),
(28, 'Kuna', 'HRK', 'kn', 0, 1),
(29, 'Pesos', 'CUP', '₱', 0, 0),
(30, 'Koruny', 'CZK', 'Kč', 1, 1),
(31, 'Kroner', 'DKK', 'kr', 1, 1),
(32, 'Pesos', 'DOP ', 'RD$', 0, 1),
(33, 'Dollars', 'XCD', '$', 0, 1),
(34, 'Pounds', 'EGP', '£', 0, 1),
(35, 'Colones', 'SVC', '$', 0, 0),
(36, 'Pounds', 'FKP', '£', 0, 1),
(37, 'Dollars', 'FJD', '$', 0, 1),
(38, 'Cedis', 'GHC', '¢', 0, 0),
(39, 'Pounds', 'GIP', '£', 0, 1),
(40, 'Quetzales', 'GTQ', 'Q', 0, 1),
(41, 'Pounds', 'GGP', '£', 0, 0),
(42, 'Dollars', 'GYD', '$', 0, 1),
(43, 'Lempiras', 'HNL', 'L', 0, 1),
(44, 'Dollars', 'HKD', '$', 1, 1),
(45, 'Forint', 'HUF', 'Ft', 1, 1),
(46, 'Kronur', 'ISK', 'kr', 0, 1),
(47, 'Rupees', 'INR', 'Rp', 1, 1),
(48, 'Rupiahs', 'IDR', 'Rp', 0, 1),
(49, 'Rials', 'IRR', '﷼', 0, 0),
(50, 'Pounds', 'IMP', '£', 0, 0),
(51, 'New Shekels', 'ILS', '₪', 1, 1),
(52, 'Dollars', 'JMD', 'J$', 0, 1),
(53, 'Yen', 'JPY', '¥', 1, 1),
(54, 'Pounds', 'JEP', '£', 0, 0),
(55, 'Tenge', 'KZT', 'лв', 0, 1),
(56, 'Won', 'KPW', '₩', 0, 0),
(57, 'Won', 'KRW', '₩', 0, 1),
(58, 'Soms', 'KGS', 'лв', 0, 1),
(59, 'Kips', 'LAK', '₭', 0, 1),
(60, 'Lati', 'LVL', 'Ls', 0, 0),
(61, 'Pounds', 'LBP', '£', 0, 1),
(62, 'Dollars', 'LRD', '$', 0, 1),
(63, 'Switzerland Francs', 'CHF', 'CHF', 1, 1),
(64, 'Litai', 'LTL', 'Lt', 0, 0),
(65, 'Denars', 'MKD', 'ден', 0, 1),
(66, 'Ringgits', 'MYR', 'RM', 1, 1),
(67, 'Rupees', 'MUR', '₨', 0, 1),
(68, 'Pesos', 'MXN', '$', 1, 1),
(69, 'Tugriks', 'MNT', '₮', 0, 1),
(70, 'Meticais', 'MZN', 'MT', 0, 1),
(71, 'Dollars', 'NAD', '$', 0, 1),
(72, 'Rupees', 'NPR', '₨', 0, 1),
(73, 'Guilders', 'ANG', 'ƒ', 0, 1),
(74, 'Dollars', 'NZD', '$', 1, 1),
(75, 'Cordobas', 'NIO', 'C$', 0, 1),
(76, 'Nairas', 'NGN', '₦', 0, 1),
(77, 'Krone', 'NOK', 'kr', 1, 1),
(78, 'Rials', 'OMR', '﷼', 0, 0),
(79, 'Rupees', 'PKR', '₨', 0, 1),
(80, 'Balboa', 'PAB', 'B/.', 0, 1),
(81, 'Guarani', 'PYG', 'Gs', 0, 1),
(82, 'Nuevos Soles', 'PEN', 'S/.', 0, 1),
(83, 'Pesos', 'PHP', 'Php', 1, 1),
(84, 'Zlotych', 'PLN', 'zł', 1, 1),
(85, 'Rials', 'QAR', '﷼', 0, 1),
(86, 'New Lei', 'RON', 'lei', 0, 1),
(87, 'Rubles', 'RUB', 'руб', 0, 1),
(88, 'Pounds', 'SHP', '£', 0, 1),
(89, 'Riyals', 'SAR', '﷼', 0, 1),
(90, 'Dinars', 'RSD', 'Дин.', 0, 1),
(91, 'Rupees', 'SCR', '₨', 0, 1),
(92, 'Dollars', 'SGD', '$', 1, 1),
(93, 'Dollars', 'SBD', '$', 0, 1),
(94, 'Shillings', 'SOS', 'S', 0, 1),
(95, 'Rand', 'ZAR', 'R', 0, 1),
(96, 'Rupees', 'LKR', '₨', 0, 1),
(97, 'Kronor', 'SEK', 'kr', 1, 1),
(98, 'Dollars', 'SRD', '$', 0, 1),
(99, 'Pounds', 'SYP', '£', 0, 0),
(100, 'New Dollars', 'TWD', 'NT$', 1, 1),
(101, 'Baht', 'THB', '฿', 1, 1),
(102, 'Dollars', 'TTD', 'TT$', 0, 1),
(103, 'Lira', 'TRY', 'TL', 0, 1),
(104, 'Liras', 'TRL', '£', 0, 0),
(105, 'Dollars', 'TVD', '$', 0, 0),
(106, 'Hryvnia', 'UAH', '₴', 0, 1),
(107, 'Pesos', 'UYU', '$U', 0, 1),
(108, 'Sums', 'UZS', 'лв', 0, 1),
(109, 'Bolivares Fuertes', 'VEF', 'Bs', 0, 0),
(110, 'Dong', 'VND', '₫', 0, 1),
(111, 'Rials', 'YER', '﷼', 0, 1),
(112, 'Zimbabwe Dollars', 'ZWD', 'Z$', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
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
-- Stand-in structure for view `featured_galleries_view`
-- (See below for the actual view)
--
CREATE TABLE `featured_galleries_view` (
`id` bigint(20) unsigned
,`title` varchar(255)
,`slug` varchar(255)
,`image` varchar(255)
,`category` varchar(100)
,`category_name` varchar(100)
,`sort_order` int(11)
);

-- --------------------------------------------------------

--
-- Table structure for table `frontend_settings`
--

CREATE TABLE `frontend_settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `frontend_settings`
--

INSERT INTO `frontend_settings` (`id`, `key`, `value`, `created_at`, `updated_at`) VALUES
(1, 'map_position', 'top', '2024-07-16 04:41:17', '2025-10-19 23:39:44'),
(2, 'mother_homepage_banner', '[{\"id\":3,\"title\":\"Compassionate Healthcare You Can Trust\",\"description\":\"On the top advertising a Courses available business to online includes assembling  site on top advertising Courses includes\",\"image\":\"1730781703_6729a207eaf8e.webp\"}]', '2024-07-16 04:41:17', '2025-09-06 01:31:27'),
(3, 'light_logo', '1757147341_logo (1) (1).png', '2024-07-16 04:41:17', '2025-09-06 01:29:01'),
(4, 'favicon_logo', '1756962488_logo.png', '2024-07-16 04:41:17', '2025-09-03 22:08:08'),
(5, 'dark_logo', '1757147400_New Project (1) (1).png', '2024-07-16 04:41:17', '2025-09-06 01:30:00'),
(6, 'hotel', '1730786984_mh-category-banner1.webp', '2024-07-16 04:41:17', '2024-11-05 00:09:44'),
(7, 'doctors', '1730788214_mh-category-banner4.webp', '2024-07-16 04:41:17', '2024-11-05 00:30:14'),
(8, 'car', '1735639516_at-blog-banner2.webp', '2024-07-16 04:41:17', '2024-12-31 04:05:16'),
(9, 'beauty', '1730788243_mh-category-banner6.webp', '2024-07-16 04:41:17', '2024-11-05 00:30:43'),
(10, 'real_estate', '1730788041_mh-category-banner5.webp', '2024-07-16 04:41:17', '2024-11-05 00:27:21'),
(11, 'restaurent', '1730787972_mh-category-banner2.webp', '2024-07-16 04:41:17', '2024-11-05 00:26:12'),
(12, 'company_images', '[{\"id\":1,\"image\":\"1730793104_6729ce900f0f4.svg\"},{\"id\":2,\"image\":\"1730792894_6729cdbec33e3.svg\"},{\"id\":3,\"image\":\"1730792906_6729cdcabbd6c.svg\"},{\"id\":4,\"image\":\"1730792918_6729cdd6675fb.svg\"},{\"id\":5,\"image\":\"1730792928_6729cde093d49.svg\"},{\"id\":6,\"image\":\"1730792937_6729cde981ba1.svg\"},{\"id\":7,\"image\":\"1730792947_6729cdf31cbc8.svg\"},{\"id\":8,\"image\":\"1730792956_6729cdfc03d1c.svg\"}]', '2024-07-16 04:41:17', '2024-11-05 01:52:14'),
(13, 'menu', '[\"Real-Estate\",\"Hotel\",\"Beauty\",\"Restaurant\",\"Car\"]', '2024-07-16 04:41:17', '2024-12-26 05:49:34'),
(14, 'website_faqs', '{\"0\":{\"question\":\"How to create an accounts?\",\"answer\":\"Interactively procrastinate high-payoff content without backward-compatible data. Quickly to cultivate optimal processes and tactical architectures. For The Completely iterate covalent strategic.\"},\"2\":{\"question\":\"How long do you provide support?\",\"answer\":\"Interactively procrastinate high-payoff content without backward-compatible data. Quickly to cultivate optimal processes and tactical architectures. For The Completely iterate covalent strategic.\"}}', '2024-07-16 04:41:17', '2024-12-27 09:11:52'),
(15, 'about_us', '<div><p>ATLS Indonesia adalah lembaga resmi penyelenggara pelatihan Advanced Trauma Life Support (ATLS) di Indonesia. Kami berfokus pada peningkatan kapasitas tenaga medis, terutama dokter, dalam penanganan trauma secara cepat, tepat, dan sistematis sesuai dengan standar internasional dari American College of Surgeons (ACS).</p>\n<p>Dengan meningkatnya jumlah kasus trauma di Indonesia, pelatihan ATLS menjadi sangat penting untuk memastikan penanganan pasien dilakukan dengan benar sejak fase awal. ATLS Indonesia hadir sebagai solusi, menyediakan pelatihan intensif berbasis teori dan praktik, dipandu oleh instruktur bersertifikat dan berpengalaman di bidang kegawatdaruratan medis.</p>\n<p>Kami percaya bahwa intervensi yang cepat dan tepat dalam beberapa menit pertama setelah trauma dapat menyelamatkan nyawa dan mengurangi risiko kecacatan. Karena itu, kami berkomitmen untuk mencetak tenaga medis yang sigap, terlatih, dan profesional dalam situasi darurat.</p>\n<p><strong>Visi</strong></p>\n<p>Menjadi pusat pelatihan trauma life support terdepan di Indonesia yang berkontribusi nyata dalam menurunkan angka kematian dan kecacatan akibat trauma.</p>\n<p><strong>Misi</strong></p>\n<ul>\n<li>\n<p>Menyelenggarakan pelatihan ATLS yang berkualitas dan berstandar internasional.</p>\n</li>\n<li>\n<p>Meningkatkan kesiapsiagaan tenaga medis dalam menghadapi trauma.</p>\n</li>\n<li>\n<p>Menyebarkan pemahaman pentingnya penanganan trauma yang sistematis dan berbasis bukti.</p>\n</li>\n<li>\n<p>Menjalin kerja sama strategis dengan rumah sakit, institusi pendidikan, dan organisasi profesi.</p>\n</li>\n<li>\n<p>Mendorong adopsi standar ATLS di seluruh fasilitas layanan kesehatan di Indonesia.</p>\n</li>\n</ul>\n<p><strong>Apa yang Kami Tawarkan</strong></p>\n<ul>\n<li>\n<p>Program pelatihan ATLS resmi bersertifikat dari ACS.</p>\n</li>\n<li>\n<p>Instruktur profesional dan tersertifikasi secara internasional.</p>\n</li>\n<li>\n<p>Modul pelatihan berbasis simulasi dan studi kasus nyata.</p>\n</li>\n<li>\n<p>Komunitas alumni dan forum diskusi profesional.</p>\n</li>\n<li>\n<p>Pelatihan yang dapat disesuaikan dengan kebutuhan institusi atau wilayah tertentu.</p>\n</li>\n</ul>\n<p><strong>Komitmen Kami</strong></p>\n<p>ATLS Indonesia berkomitmen untuk terus memperluas akses pelatihan ke berbagai daerah, khususnya wilayah dengan keterbatasan sumber daya medis. Kami percaya bahwa setiap tenaga medis di Indonesia berhak mendapatkan pelatihan berkualitas yang dapat menyelamatkan nyawa.</p>\n<p>Dengan dukungan dari mitra strategis, institusi medis, dan para profesional kesehatan, kami terus bergerak maju untuk membangun budaya penanganan trauma yang lebih baik, lebih cepat, dan lebih terstandar.</p>\n<p>Untuk informasi lebih lanjut mengenai pelatihan, jadwal, atau kerja sama, silakan hubungi kami melalui halaman Kontak atau media sosial resmi ATLS Indonesia.</p></div>', '2024-07-16 04:41:17', '2025-10-19 23:39:44'),
(16, 'terms_and_condition', '<p><strong>Syarat dan Ketentuan – ATLS Indonesia</strong></p><p>Dengan mengakses dan menggunakan situs web, layanan, atau mendaftar pelatihan yang diselenggarakan oleh ATLS Indonesia, Anda dianggap telah membaca, memahami, dan menyetujui seluruh syarat dan ketentuan yang tercantum dalam dokumen ini. Jika Anda tidak menyetujui sebagian atau seluruh isi dari syarat dan ketentuan ini, mohon untuk tidak melanjutkan penggunaan layanan kami.</p><p><strong>1. Definisi</strong></p><ul>\n<li>\n<p>“Kami”, “ATLS Indonesia”, atau “Penyelenggara” mengacu pada lembaga yang mengelola dan menyelenggarakan pelatihan Advanced Trauma Life Support (ATLS) di Indonesia.</p>\n</li>\n<li>\n<p>“Pengguna” mengacu pada individu atau perwakilan institusi yang mengakses situs, menggunakan layanan, atau mendaftar untuk pelatihan.</p>\n</li>\n<li>\n<p>“Layanan” mencakup seluruh aktivitas pelatihan, komunikasi, sistem pendaftaran, dan konten digital yang disediakan oleh ATLS Indonesia.</p>\n</li>\n</ul><p><strong>2. Ketentuan Umum</strong></p><ul>\n<li>\n<p>Semua informasi yang disampaikan oleh pengguna saat mendaftar atau menggunakan layanan harus akurat, lengkap, dan terkini.</p>\n</li>\n<li>\n<p>Peserta pelatihan wajib mematuhi seluruh peraturan, jadwal, dan etika profesional yang berlaku selama proses pelatihan berlangsung.</p>\n</li>\n<li>\n<p>ATLS Indonesia berhak menolak pendaftaran atau menghentikan keikutsertaan peserta yang memberikan informasi palsu atau melanggar ketentuan.</p>\n</li>\n</ul><p><strong>3. Pembayaran dan Pembatalan</strong></p><ul>\n<li>\n<p>Pembayaran pelatihan harus dilakukan sesuai dengan instruksi dan tenggat waktu yang ditentukan.</p>\n</li>\n<li>\n<p>Biaya yang telah dibayarkan umumnya tidak dapat dikembalikan, kecuali dalam keadaan tertentu yang disetujui secara tertulis oleh penyelenggara.</p>\n</li>\n<li>\n<p>Peserta yang membatalkan keikutsertaan setelah batas waktu tertentu dapat dikenakan biaya pembatalan.</p>\n</li>\n</ul><p><strong>4. Sertifikat dan Kelayakan Peserta</strong></p><ul>\n<li>\n<p>Sertifikat ATLS hanya diberikan kepada peserta yang memenuhi seluruh persyaratan pelatihan, termasuk kehadiran penuh, keterlibatan aktif, dan kelulusan ujian praktik maupun teori.</p>\n</li>\n<li>\n<p>ATLS Indonesia berhak menolak penerbitan sertifikat jika peserta tidak memenuhi kriteria kelulusan.</p>\n</li>\n</ul><p><strong>5. Hak Kekayaan Intelektual</strong></p><ul>\n<li>\n<p>Seluruh materi pelatihan, termasuk modul, video, slide, dan dokumen lain, adalah milik ATLS Indonesia atau pemilik lisensi yang sah.</p>\n</li>\n<li>\n<p>Dilarang menggandakan, menyebarluaskan, atau menggunakan materi pelatihan untuk tujuan komersial tanpa izin tertulis dari ATLS Indonesia.</p>\n</li>\n</ul><p><strong>6. Batasan Tanggung Jawab</strong></p><ul>\n<li>\n<p>ATLS Indonesia tidak bertanggung jawab atas kerugian langsung maupun tidak langsung yang timbul akibat penggunaan layanan kami.</p>\n</li>\n<li>\n<p>Materi pelatihan disediakan untuk tujuan pendidikan. Penerapan dalam praktik medis menjadi tanggung jawab masing-masing tenaga profesional sesuai standar dan kebijakan institusinya.</p>\n</li>\n</ul><p><strong>7. Perubahan Syarat dan Ketentuan</strong></p><ul>\n<li>\n<p>ATLS Indonesia dapat mengubah isi Syarat dan Ketentuan ini sewaktu-waktu tanpa pemberitahuan terlebih dahulu.</p>\n</li>\n<li>\n<p>Perubahan akan berlaku segera setelah diperbarui dan ditayangkan di situs web resmi kami. Pengguna disarankan untuk secara berkala membaca halaman ini.</p>\n</li>\n</ul><p><strong>8. Hukum yang Berlaku</strong></p><p>Syarat dan Ketentuan ini tunduk dan ditafsirkan berdasarkan hukum yang berlaku di Republik Indonesia. Setiap sengketa yang timbul akan diselesaikan secara musyawarah atau melalui jalur hukum yang berlaku.</p><p><strong>9. Kontak</strong></p><p>Untuk pertanyaan atau klarifikasi lebih lanjut, silakan hubungi:</p><p>\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n</p><p>Email: <a>atlskontrasia@gmail.com</a><br>\nTelepon: (+62) 852-8270-5585<br>\nWebsite: <a>www.atlsindonesia.com<span></span></a></p><p></p>', '2024-07-16 04:41:17', '2025-10-19 23:39:44'),
(17, 'privacy_policy', '<p><strong>Kebijakan Privasi – ATLS Indonesia</strong></p><p>Privasi Anda sangat penting bagi kami. ATLS Indonesia berkomitmen untuk melindungi data pribadi Anda sesuai dengan peraturan yang berlaku, termasuk Undang-Undang Perlindungan Data Pribadi di Indonesia. Kebijakan ini menjelaskan bagaimana kami mengumpulkan, menggunakan, menyimpan, dan melindungi informasi pribadi Anda.</p><p><strong>1. Informasi yang Kami Kumpulkan</strong></p><p>Kami dapat mengumpulkan informasi pribadi Anda melalui formulir pendaftaran, komunikasi langsung, atau penggunaan layanan kami, termasuk:</p><ul>\n<li>\n<p>Nama lengkap</p>\n</li>\n<li>\n<p>Alamat email</p>\n</li>\n<li>\n<p>Nomor telepon</p>\n</li>\n<li>\n<p>Informasi profesi dan institusi</p>\n</li>\n<li>\n<p>Data pendaftaran pelatihan</p>\n</li>\n<li>\n<p>Informasi pembayaran atau transaksi (jika ada)</p>\n</li>\n<li>\n<p>Data lain yang relevan dengan layanan kami</p>\n</li>\n</ul><p><strong>2. Cara Kami Menggunakan Informasi Anda</strong></p><p>Informasi yang dikumpulkan digunakan untuk:</p><ul>\n<li>\n<p>Memproses pendaftaran pelatihan dan administrasi</p>\n</li>\n<li>\n<p>Mengirimkan informasi mengenai pelatihan, jadwal, dan sertifikat</p>\n</li>\n<li>\n<p>Memberikan layanan pelanggan</p>\n</li>\n<li>\n<p>Menyimpan data peserta dan alumni</p>\n</li>\n<li>\n<p>Mengirimkan update, pengumuman, dan informasi penting lainnya</p>\n</li>\n<li>\n<p>Meningkatkan kualitas dan efektivitas layanan kami</p>\n</li>\n</ul><p><strong>3. Keamanan Data</strong></p><p>Kami menjaga keamanan data pribadi Anda dengan sistem dan prosedur yang sesuai, untuk mencegah akses tidak sah, pengubahan, atau pengungkapan informasi. Hanya pihak internal dan mitra yang berwenang yang memiliki akses terbatas ke data tersebut.</p><p><strong>4. Pembagian Informasi kepada Pihak Ketiga</strong></p><p>Kami tidak menjual atau menyewakan data pribadi Anda. Informasi Anda hanya dapat dibagikan kepada pihak ketiga dalam kondisi berikut:</p><ul>\n<li>\n<p>Untuk keperluan pelatihan yang melibatkan mitra resmi</p>\n</li>\n<li>\n<p>Kepada penyedia layanan pihak ketiga (seperti sistem manajemen pelatihan atau pembayaran) yang tunduk pada kebijakan kerahasiaan</p>\n</li>\n<li>\n<p>Jika diwajibkan oleh hukum atau permintaan otoritas resmi</p>\n</li>\n</ul><p><strong>5. Hak Anda atas Data</strong></p><p>Sebagai pemilik data pribadi, Anda memiliki hak untuk:</p><ul>\n<li>\n<p>Mengakses data pribadi Anda</p>\n</li>\n<li>\n<p>Memperbarui atau memperbaiki informasi yang salah</p>\n</li>\n<li>\n<p>Menarik persetujuan atas penggunaan data</p>\n</li>\n<li>\n<p>Meminta penghapusan data tertentu sesuai ketentuan hukum</p>\n</li>\n</ul><p>Untuk menggunakan hak-hak tersebut, Anda dapat menghubungi kami melalui kontak resmi yang tersedia.</p><p><strong>6. Perubahan Kebijakan Privasi</strong></p><p>Kebijakan ini dapat diperbarui sewaktu-waktu. Perubahan signifikan akan diinformasikan melalui website resmi kami. Dengan terus menggunakan layanan kami, Anda dianggap telah menyetujui ketentuan terbaru dari kebijakan ini.</p><p><strong>7. Kontak Kami</strong></p><p>Jika Anda memiliki pertanyaan atau permintaan terkait Kebijakan Privasi, silakan hubungi:</p><p>Email: <a>atlskontrasia@gmail.com</a><br>\nTelepon: (+62) 852-8270-5585<br>\nWebsite: <a>www.atlsindonesia.com<span></span></a></p><p>\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n</p><p>Kami menghargai kepercayaan Anda dan berkomitmen untuk menjaga kerahasiaan data pribadi Anda.</p><p></p>', '2024-07-16 04:41:17', '2025-10-19 23:39:44'),
(18, 'refund_policy', '<strong>Kebijakan Pengembalian Dana – ATLS Indonesia</strong><strong><br></strong><p>Kebijakan pengembalian dana ini berlaku untuk seluruh peserta pelatihan yang mendaftar dan melakukan pembayaran kepada ATLS Indonesia. Dengan melakukan pendaftaran, Anda dianggap telah membaca, memahami, dan menyetujui ketentuan berikut.</p><p><strong>1. Umum</strong></p><p>ATLS Indonesia menyelenggarakan pelatihan secara profesional dan dengan jumlah peserta yang terbatas. Oleh karena itu, kebijakan pengembalian dana diberlakukan untuk menjaga keberlangsungan jadwal dan kualitas pelatihan.</p><p><strong>2. Permintaan Pengembalian Dana oleh Peserta</strong></p><p>Peserta yang ingin membatalkan keikutsertaan dalam pelatihan dapat mengajukan permintaan pengembalian dana dengan ketentuan sebagai berikut:</p><ul>\n<li>\n<p>Pembatalan lebih dari 30 hari sebelum tanggal pelatihan:<br>\nPengembalian dana sebesar 80% dari total biaya yang telah dibayarkan.</p>\n</li>\n<li>\n<p>Pembatalan 15–30 hari sebelum tanggal pelatihan:<br>\nPengembalian dana sebesar 50% dari total biaya.</p>\n</li>\n<li>\n<p>Pembatalan kurang dari 15 hari sebelum tanggal pelatihan:<br>\nTidak ada pengembalian dana, kecuali dalam kondisi luar biasa yang disetujui secara tertulis oleh pihak ATLS Indonesia.</p>\n</li>\n</ul><p><strong>3. Pengalihan Jadwal atau Pengganti Peserta</strong></p><p>Sebagai alternatif dari pengembalian dana, peserta dapat:</p><ul>\n<li>\n<p>Meminta pengalihan ke jadwal pelatihan berikutnya (maksimal satu kali)</p>\n</li>\n<li>\n<p>Menunjuk peserta pengganti dari institusi yang sama, dengan pemberitahuan minimal 7 hari sebelum pelatihan</p>\n</li>\n</ul><p>Permintaan ini harus diajukan secara tertulis dan akan dikonfirmasi oleh tim penyelenggara.</p><p><strong>4. Pembatalan oleh Penyelenggara</strong></p><p>Jika pelatihan dibatalkan oleh ATLS Indonesia karena alasan teknis, logistik, atau force majeure (bencana alam, pandemi, dan sebagainya), maka:</p><ul>\n<li>\n<p>Peserta berhak atas pengembalian dana penuh, atau</p>\n</li>\n<li>\n<p>Peserta dapat memilih untuk memindahkan jadwal ke pelatihan selanjutnya</p>\n</li>\n</ul><p>Pengembalian dana akan diproses maksimal dalam 14 hari kerja sejak permintaan disetujui.</p><p><strong>5. Prosedur Pengajuan Refund</strong></p><p>Peserta yang ingin mengajukan pengembalian dana harus mengirimkan permintaan tertulis melalui email resmi dengan menyertakan:</p><ul>\n<li>\n<p>Nama lengkap peserta</p>\n</li>\n<li>\n<p>Bukti pembayaran</p>\n</li>\n<li>\n<p>Alasan pembatalan</p>\n</li>\n<li>\n<p>Nomor rekening untuk pengembalian dana</p>\n</li>\n</ul><p>Permintaan dapat dikirimkan ke: <a>atlskontrasia@gmail.com</a></p><p><strong>6. Waktu Proses</strong></p><p>Pengembalian dana yang disetujui akan diproses dalam waktu maksimal 14 hari kerja sejak data lengkap diterima.</p><p><strong>7. Ketentuan Tambahan</strong></p><p>\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n</p><ul>\n<li>\n<p>Biaya administrasi bank atau sistem pembayaran (jika ada) akan dipotong dari total dana yang dikembalikan.</p>\n</li>\n<li>\n<p>ATLS Indonesia berhak meninjau dan memutuskan permintaan refund berdasarkan kebijakan internal dan kasus per kasus.</p></li></ul><p></p>', '2024-07-16 04:41:17', '2025-10-19 23:39:44');

-- --------------------------------------------------------

--
-- Table structure for table `galleries`
--

CREATE TABLE `galleries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_featured` tinyint(1) NOT NULL DEFAULT '0',
  `status` enum('active','inactive') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `sort_order` int(11) NOT NULL DEFAULT '0',
  `meta_data` json DEFAULT NULL,
  `created_by` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `galleries`
--

INSERT INTO `galleries` (`id`, `title`, `slug`, `description`, `image`, `category`, `is_featured`, `status`, `sort_order`, `meta_data`, `created_by`, `created_at`, `updated_at`) VALUES
(1, 'Modern Hotel Lobby Design', 'modern-hotel-lobby-design', 'Elegant and spacious hotel lobby with contemporary furniture and lighting. Perfect ambiance for luxury accommodation.', 'hotel_lobby_001.jpg', 'hotel', 1, 'active', 1, '{\"tags\": [\"hotel\", \"lobby\", \"modern\", \"luxury\"], \"alt_text\": \"Modern hotel lobby with elegant design\", \"photographer\": \"John Doe\", \"camera_settings\": \"Canon EOS R5, f/2.8, 1/60s\"}', 1, '2025-09-04 14:08:06', '2025-09-04 14:08:06'),
(2, 'Luxury Restaurant Interior', 'luxury-restaurant-interior', 'Fine dining restaurant with premium interior design, perfect lighting and comfortable seating arrangement.', 'restaurant_interior_001.jpg', 'restaurant', 1, 'active', 2, '{\"tags\": [\"restaurant\", \"interior\", \"luxury\", \"dining\"], \"alt_text\": \"Luxury restaurant interior design\", \"photographer\": \"Jane Smith\"}', 1, '2025-09-04 14:08:06', '2025-09-04 14:08:06'),
(3, 'Beauty Salon Modern Setup', 'beauty-salon-modern-setup', 'State-of-the-art beauty salon with modern equipment and stylish interior design for premium beauty services.', 'beauty_salon_001.jpg', 'beauty', 0, 'active', 3, '{\"tags\": [\"beauty\", \"salon\", \"modern\", \"equipment\"], \"alt_text\": \"Modern beauty salon setup\"}', 1, '2025-09-04 14:08:06', '2025-09-04 14:08:06'),
(4, 'Luxury Car Showroom', 'luxury-car-showroom', 'Premium car showroom displaying latest luxury vehicles with professional lighting and clean layout.', 'car_showroom_001.jpg', 'car', 1, 'active', 4, '{\"tags\": [\"car\", \"showroom\", \"luxury\", \"vehicles\"], \"alt_text\": \"Luxury car showroom interior\"}', 1, '2025-09-04 14:08:06', '2025-09-04 14:08:06'),
(5, 'Modern Real Estate Office', 'modern-real-estate-office', 'Contemporary real estate office with professional workspace and client meeting areas.', 'real_estate_office_001.jpg', 'real-estate', 0, 'active', 5, '{\"tags\": [\"real-estate\", \"office\", \"modern\", \"professional\"], \"alt_text\": \"Modern real estate office\"}', 1, '2025-09-04 14:08:06', '2025-09-04 14:08:06'),
(6, 'Medical Clinic Reception', 'medical-clinic-reception', 'Clean and welcoming medical clinic reception area with comfortable seating and modern facilities.', 'medical_clinic_001.jpg', 'doctor', 0, 'active', 6, '{\"tags\": [\"medical\", \"clinic\", \"reception\", \"healthcare\"], \"alt_text\": \"Medical clinic reception area\"}', 1, '2025-09-04 14:08:06', '2025-09-04 14:08:06'),
(7, 'Hotel Room Suite Deluxe', 'hotel-room-suite-deluxe', 'Spacious deluxe hotel suite with king-size bed, living area, and premium amenities for ultimate comfort.', 'hotel_suite_001.jpg', 'hotel', 1, 'active', 7, '{\"tags\": [\"hotel\", \"suite\", \"deluxe\", \"comfort\"], \"alt_text\": \"Deluxe hotel suite interior\"}', 1, '2025-09-04 14:08:06', '2025-09-04 14:08:06'),
(8, 'Restaurant Kitchen Professional', 'restaurant-kitchen-professional', 'Professional commercial kitchen with modern equipment and efficient workflow design for high-volume cooking.', 'restaurant_kitchen_001.jpg', 'restaurant', 0, 'active', 8, '{\"tags\": [\"restaurant\", \"kitchen\", \"professional\", \"commercial\"], \"alt_text\": \"Professional restaurant kitchen\"}', 1, '2025-09-04 14:08:06', '2025-09-04 14:08:06'),
(9, 'Beauty Treatment Room', 'beauty-treatment-room', 'Relaxing beauty treatment room with ambient lighting and premium equipment for spa services.', 'beauty_treatment_001.jpg', 'beauty', 1, 'active', 9, '{\"tags\": [\"beauty\", \"treatment\", \"spa\", \"relaxing\"], \"alt_text\": \"Beauty treatment room\"}', 1, '2025-09-04 14:08:06', '2025-09-04 14:08:06'),
(10, 'Classic Car Collection', 'classic-car-collection', 'Impressive collection of classic and vintage automobiles displayed in premium showroom environment.', 'classic_cars_001.jpg', 'car', 0, 'active', 10, '{\"tags\": [\"car\", \"classic\", \"vintage\", \"collection\"], \"alt_text\": \"Classic car collection display\"}', 1, '2025-09-04 14:08:06', '2025-09-04 14:08:06'),
(11, 'Luxury Villa Living Room', 'luxury-villa-living-room', 'Stunning living room of luxury villa with high-end furniture, panoramic windows, and elegant decor.', 'villa_living_001.jpg', 'real-estate', 1, 'active', 11, '{\"tags\": [\"real-estate\", \"villa\", \"luxury\", \"living-room\"], \"alt_text\": \"Luxury villa living room\"}', 1, '2025-09-04 14:08:06', '2025-09-04 14:08:06'),
(12, 'Modern Dental Office', 'modern-dental-office', 'Contemporary dental office with advanced equipment and comfortable patient areas designed for optimal care.', 'dental_office_001.jpg', 'doctor', 0, 'active', 12, '{\"tags\": [\"dental\", \"office\", \"modern\", \"healthcare\"], \"alt_text\": \"Modern dental office\"}', 1, '2025-09-04 14:08:06', '2025-09-04 14:08:06'),
(13, 'Corporate Event Setup', 'corporate-event-setup', 'Professional corporate event venue setup with modern AV equipment and elegant table arrangements.', 'corporate_event_001.jpg', 'event', 1, 'active', 13, '{\"tags\": [\"event\", \"corporate\", \"professional\", \"venue\"], \"alt_text\": \"Corporate event setup\"}', 1, '2025-09-04 14:08:06', '2025-09-04 14:08:06'),
(14, 'Outdoor Wedding Venue', 'outdoor-wedding-venue', 'Beautiful outdoor wedding venue with natural scenery and elegant decoration for memorable celebrations.', 'wedding_venue_001.jpg', 'event', 1, 'active', 14, '{\"tags\": [\"event\", \"wedding\", \"outdoor\", \"celebration\"], \"alt_text\": \"Outdoor wedding venue\"}', 1, '2025-09-04 14:08:06', '2025-09-04 14:08:06'),
(15, 'Modern Apartment Bedroom', 'modern-apartment-bedroom', 'Stylish modern apartment bedroom with minimalist design and comfortable furnishing.', 'apartment_bedroom_001.jpg', 'real-estate', 0, 'inactive', 15, '{\"tags\": [\"real-estate\", \"apartment\", \"bedroom\", \"modern\"], \"alt_text\": \"Modern apartment bedroom\"}', 1, '2025-09-04 14:08:06', '2025-09-04 14:08:06');

--
-- Triggers `galleries`
--
DELIMITER $$
CREATE TRIGGER `update_category_count_after_delete` AFTER DELETE ON `galleries` FOR EACH ROW BEGIN
    IF OLD.category IS NOT NULL THEN
        UPDATE gallery_categories 
        SET usage_count = (
            SELECT COUNT(*) FROM galleries 
            WHERE category = OLD.category AND status = 'active'
        )
        WHERE slug = OLD.category;
    END IF;
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `update_category_count_after_insert` AFTER INSERT ON `galleries` FOR EACH ROW BEGIN
    UPDATE gallery_categories 
    SET usage_count = (
        SELECT COUNT(*) FROM galleries 
        WHERE category = NEW.category AND status = 'active'
    )
    WHERE slug = NEW.category;
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `update_category_count_after_update` AFTER UPDATE ON `galleries` FOR EACH ROW BEGIN
    -- Update old category count
    IF OLD.category IS NOT NULL THEN
        UPDATE gallery_categories 
        SET usage_count = (
            SELECT COUNT(*) FROM galleries 
            WHERE category = OLD.category AND status = 'active'
        )
        WHERE slug = OLD.category;
    END IF;
    
    -- Update new category count
    IF NEW.category IS NOT NULL THEN
        UPDATE gallery_categories 
        SET usage_count = (
            SELECT COUNT(*) FROM galleries 
            WHERE category = NEW.category AND status = 'active'
        )
        WHERE slug = NEW.category;
    END IF;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `gallery_categories`
--

CREATE TABLE `gallery_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `icon` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(7) COLLATE utf8mb4_unicode_ci DEFAULT '#000000',
  `status` enum('active','inactive') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `sort_order` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `gallery_categories`
--

INSERT INTO `gallery_categories` (`id`, `name`, `slug`, `description`, `icon`, `color`, `status`, `sort_order`, `created_at`, `updated_at`) VALUES
(1, 'Hotel', 'hotel', 'Hotel and accommodation galleries', 'fi-rr-bed', '#2563eb', 'active', 1, '2025-09-04 14:08:06', '2025-09-04 14:08:06'),
(2, 'Restaurant', 'restaurant', 'Restaurant and dining galleries', 'fi-rr-utensils', '#dc2626', 'active', 2, '2025-09-04 14:08:06', '2025-09-04 14:08:06'),
(3, 'Beauty', 'beauty', 'Beauty salon and spa galleries', 'fi-rr-sparkles', '#ec4899', 'active', 3, '2025-09-04 14:08:06', '2025-09-04 14:08:06'),
(4, 'Car', 'car', 'Automotive and car galleries', 'fi-rr-car', '#059669', 'active', 4, '2025-09-04 14:08:06', '2025-09-04 14:08:06'),
(5, 'Real Estate', 'real-estate', 'Property and real estate galleries', 'fi-rr-home', '#7c3aed', 'active', 5, '2025-09-04 14:08:06', '2025-09-04 14:08:06'),
(6, 'Doctor', 'doctor', 'Medical and healthcare galleries', 'fi-rr-stethoscope', '#0891b2', 'active', 6, '2025-09-04 14:08:06', '2025-09-04 14:08:06'),
(7, 'Event', 'event', 'Event and celebration galleries', 'fi-rr-calendar', '#ea580c', 'active', 7, '2025-09-04 14:08:06', '2025-09-04 14:08:06'),
(8, 'Other', 'other', 'Miscellaneous galleries', 'fi-rr-apps', '#6b7280', 'active', 8, '2025-09-04 14:08:06', '2025-09-04 14:08:06');

-- --------------------------------------------------------

--
-- Table structure for table `gallery_tags`
--

CREATE TABLE `gallery_tags` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `usage_count` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `gallery_tags`
--

INSERT INTO `gallery_tags` (`id`, `name`, `slug`, `usage_count`, `created_at`, `updated_at`) VALUES
(1, 'Modern', 'modern', 8, '2025-09-04 14:08:06', '2025-09-04 14:08:06'),
(2, 'Luxury', 'luxury', 6, '2025-09-04 14:08:06', '2025-09-04 14:08:06'),
(3, 'Professional', 'professional', 4, '2025-09-04 14:08:06', '2025-09-04 14:08:06'),
(4, 'Interior', 'interior', 5, '2025-09-04 14:08:06', '2025-09-04 14:08:06'),
(5, 'Design', 'design', 3, '2025-09-04 14:08:06', '2025-09-04 14:08:06'),
(6, 'Equipment', 'equipment', 2, '2025-09-04 14:08:06', '2025-09-04 14:08:06'),
(7, 'Comfortable', 'comfortable', 3, '2025-09-04 14:08:06', '2025-09-04 14:08:06'),
(8, 'Elegant', 'elegant', 4, '2025-09-04 14:08:06', '2025-09-04 14:08:06'),
(9, 'Contemporary', 'contemporary', 2, '2025-09-04 14:08:06', '2025-09-04 14:08:06'),
(10, 'Premium', 'premium', 3, '2025-09-04 14:08:06', '2025-09-04 14:08:06');

-- --------------------------------------------------------

--
-- Table structure for table `gallery_tag_pivot`
--

CREATE TABLE `gallery_tag_pivot` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `gallery_id` bigint(20) UNSIGNED NOT NULL,
  `tag_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `home_page_settings`
--

CREATE TABLE `home_page_settings` (
  `id` int(11) NOT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `key` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value` longtext COLLATE utf8_unicode_ci,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `home_page_settings`
--

INSERT INTO `home_page_settings` (`id`, `type`, `key`, `value`, `created_at`, `updated_at`) VALUES
(9, 'BeautyFacial', 'BeautyFacial', '{\"title\":\"Exclusive Facial Deals\",\"description\":\"20% OFF\",\"image\":\"1731153406_bt-banner-card-bg1.webp\"}', '2024-11-09 05:56:46', '2024-11-09 06:05:57'),
(10, 'BeautyMassage', 'BeautyMassage', '{\"title\":\"Relax & Save\",\"description\":\"30% Off All PARLOUR\",\"image\":\"1731154110_bt-banner-card-bg2.webp\"}', '2024-11-09 06:08:30', '2024-11-09 06:10:05'),
(11, 'BeautyMotion', 'BeautyMotion', '{\"title\":\"Book Your Visit Online\",\"description\":\"SAVE UP TO 30 % OFF\",\"image\":\"1731155250_bt-discount-banner.webp\"}', '2024-11-09 06:27:30', '2024-11-10 06:04:29'),
(12, 'BeautyBanner', 'BeautyBanner', '{\"title\":\"The Power Of Healthy Skin\",\"description\":\"On the top advertising a Courses available business online includes assembling site on top advertising.\",\"video_url\":\"\",\"image\":\"1731159740_beauty-hero-banner.webp\"}', '2024-11-09 07:42:20', '2024-12-26 04:54:29'),
(13, 'CarBanner', 'CarBanner', '{\"title\":\"FIND YOUR CAR\",\"description\":\"On the top advertising a Courses available business to online includes assembling site on top advertising Courses includes .\",\"image\":\"1733034680_car-hero-car.webp\"}', '2024-12-01 00:31:20', '2024-12-01 00:31:20'),
(14, 'CarMotion', 'CarMotion', '{\"title\":\"EXCLUSIVE CARS FOR SELL\",\"description\":\"UP TO 30% OFF\",\"image\":\"1733035325_car-discount-banner.webp\"}', '2024-12-01 00:42:05', '2024-12-01 00:42:05'),
(15, 'HotelBanner', 'HotelBanner', '{\"title\":\"Stay with us feel like home\",\"description\":\"Awesome site. on the top advertising a Courses available business online includes assembling site on the advertising.\",\"video_url\":\"\",\"image\":\"1733381111_hotel-hero-banner.svg\"}', '2024-12-05 00:45:11', '2024-12-05 00:47:34'),
(16, 'HotelBooking', 'HotelBooking', '{\"title\":\"Book a room today\",\"image\":\"1733382195_book-room-banner.webp\"}', '2024-12-05 01:03:15', '2024-12-05 01:03:15'),
(17, 'HotelExclusive', 'HotelExclusive', '{\"title\":\"Exclusive Hotel Deals\",\"description\":\"Just For You -70%\",\"image\":\"1733383432_bg-card-banner1.webp\"}', '2024-12-05 01:23:52', '2024-12-05 01:24:42'),
(18, 'HotelSize', 'HotelSize', '{\"title\":\"Size the moment\",\"description\":\"Save 15% or more when you book and stay before 1 October 2024\",\"image\":\"1733383510_bg-card-banner2.webp\"}', '2024-12-05 01:25:10', '2024-12-05 01:25:10'),
(19, 'RealEstateBanner', 'RealEstateBanner', '{\"title\":\"Modern Living For Everyone\",\"description\":\"On the top advertising a Courses available business to online includes assembling site on top advertising includes .\",\"image\":\"1733810127_real-estate-banner.webp\"}', '2024-12-09 23:52:41', '2024-12-09 23:55:27'),
(20, 'RealEstateDiscount', 'RealEstateDiscount', '{\"title\":\"Save Up To 30%\",\"description\":\"Offer Ends On 24 June, 2024\",\"image\":\"1733810717_re-discount-banner.webp\"}', '2024-12-10 00:05:17', '2024-12-10 00:05:17'),
(21, 'RestaurantBanner', 'RestaurantBanner', '{\"title\":\"Be The Fastest In Delivering Your Food\",\"description\":\"Awesome site. on the top advertising a Courses available business online includes assembling site on the site on the top advertising\",\"image1\":\"1734850174_1_restaurant-banner-shape1.webp\",\"image2\":\"1734850164_2_restaurant-banner-shape2.webp\"}', '2024-12-22 00:49:24', '2024-12-22 00:49:34'),
(22, 'RestaurantExclusive', 'RestaurantExclusive', '{\"title\":\"Exclusive Restaurant Deals\",\"description\":\"Just For You -70%\",\"image\":\"1734850976_rt-deal-bg.webp\"}', '2024-12-22 01:02:29', '2024-12-22 01:02:56'),
(23, 'RestaurantDiscount', 'RestaurantDiscount', '{\"title\":\"Get up to\",\"description\":\"20% OFF\",\"image\":\"1734852834_dark-card-img.svg\"}', '2024-12-22 01:33:54', '2024-12-22 01:33:54');

-- --------------------------------------------------------

--
-- Table structure for table `hotels`
--

CREATE TABLE `hotels` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amenities` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_keyword` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `og_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `og_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `og_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `canonical_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `json_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `area` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `postal_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Latitude` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Longitude` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `hotel_listings`
--

CREATE TABLE `hotel_listings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `room` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bed` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bath` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `size` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` double DEFAULT NULL,
  `discount_price` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `visibility` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `feature` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_keyword` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `og_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `og_description` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `canonical_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `json_id` longtext COLLATE utf8mb4_unicode_ci,
  `country` bigint(20) NOT NULL,
  `city` bigint(20) NOT NULL,
  `area` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `postal_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Latitude` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Longitude` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dimension` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_popular` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` mediumtext COLLATE utf8mb4_unicode_ci,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `languages`
--

CREATE TABLE `languages` (
  `id` int(11) NOT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phrase` varchar(300) COLLATE utf8_unicode_ci DEFAULT NULL,
  `translated` varchar(300) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `languages`
--

INSERT INTO `languages` (`id`, `name`, `phrase`, `translated`, `created_at`, `updated_at`) VALUES
(61, 'english', 'Gibson', 'Gibson 1254', '2024-07-10 04:59:40', '2024-07-11 05:30:32'),
(63, 'english', 'Language Created Successfully', 'Language Created Successfully', '2024-07-10 10:59:40', '2024-07-11 05:30:31'),
(65, 'english', 'Success', 'Success', '2024-07-10 10:59:40', '2024-07-11 01:28:17'),
(67, 'english', 'System name', 'System name', '2024-07-10 11:02:34', '2024-07-11 01:28:17'),
(69, 'english', 'System Email', 'System Email', '2024-07-10 11:02:34', '2024-07-11 01:28:17'),
(71, 'english', 'System Currency', 'System Currency', '2024-07-10 11:02:34', '2024-07-11 01:28:17'),
(73, 'english', 'Currency Position', 'Currency Position', '2024-07-10 11:02:34', '2024-07-11 01:28:17'),
(75, 'english', 'Left', 'Left', '2024-07-10 11:02:34', '2024-07-11 01:28:17'),
(77, 'english', 'Right', 'Right', '2024-07-10 11:02:34', '2024-07-11 01:28:17'),
(79, 'english', 'Office \r\n                    Address', 'Office \r\n                    Address', '2024-07-10 11:02:34', '2024-07-11 01:28:17'),
(81, 'english', 'Phone Number', 'Phone Number', '2024-07-10 11:02:34', '2024-07-11 01:28:17'),
(83, 'english', 'System Language', 'System Language', '2024-07-10 11:02:34', '2024-07-11 01:28:17'),
(85, 'english', 'Select a system language', 'Select a system language', '2024-07-10 11:02:34', '2024-07-11 01:28:17'),
(87, 'english', 'English', 'English', '2024-07-10 11:02:34', '2024-07-11 01:28:17'),
(90, 'english', 'Country', 'Country', '2024-07-10 11:02:34', '2024-07-11 01:28:17'),
(92, 'english', 'Select a Country', 'Select a Country', '2024-07-10 11:02:34', '2024-07-11 01:28:17'),
(94, 'english', 'Afghanistan', 'Afghanistan', '2024-07-10 11:02:35', '2024-07-11 01:28:17'),
(96, 'english', 'Aland Islands', 'Aland Islands', '2024-07-10 11:02:35', '2024-07-11 01:28:17'),
(98, 'english', 'Albania', 'Albania', '2024-07-10 11:02:35', '2024-07-11 01:28:17'),
(100, 'english', 'Algeria', 'Algeria', '2024-07-10 11:02:35', '2024-07-11 01:28:17'),
(102, 'english', 'AmericanSamoa', 'AmericanSamoa', '2024-07-10 11:02:35', '2024-07-11 01:28:17'),
(104, 'english', 'Andorra', 'Andorra', '2024-07-10 11:02:35', '2024-07-11 01:28:17'),
(106, 'english', 'Angola', 'Angola', '2024-07-10 11:02:35', '2024-07-11 01:28:17'),
(108, 'english', 'Anguilla', 'Anguilla', '2024-07-10 11:02:35', '2024-07-11 01:28:17'),
(110, 'english', 'Antarctica', 'Antarctica', '2024-07-10 11:02:35', '2024-07-11 01:28:17'),
(112, 'english', 'Antigua and Barbuda', 'Antigua and Barbuda', '2024-07-10 11:02:35', '2024-07-11 01:28:17'),
(114, 'english', 'Argentina', 'Argentina', '2024-07-10 11:02:35', '2024-07-11 01:28:17'),
(116, 'english', 'Armenia', 'Armenia', '2024-07-10 11:02:35', '2024-07-11 01:28:17'),
(118, 'english', 'Aruba', 'Aruba', '2024-07-10 11:02:35', '2024-07-11 01:28:17'),
(120, 'english', 'Australia', 'Australia', '2024-07-10 11:02:35', '2024-07-11 01:28:17'),
(122, 'english', 'Austria', 'Austria', '2024-07-10 11:02:35', '2024-07-11 01:28:17'),
(124, 'english', 'Azerbaijan', 'Azerbaijan', '2024-07-10 11:02:35', '2024-07-11 01:28:17'),
(126, 'english', 'Bahamas', 'Bahamas', '2024-07-10 11:02:35', '2024-07-11 01:28:17'),
(128, 'english', 'Bahrain', 'Bahrain', '2024-07-10 11:02:35', '2024-07-11 01:28:17'),
(130, 'english', 'Bangladesh', 'Bangladesh', '2024-07-10 11:02:35', '2024-07-11 01:28:17'),
(132, 'english', 'Barbados', 'Barbados', '2024-07-10 11:02:35', '2024-07-11 01:28:17'),
(134, 'english', 'Belarus', 'Belarus', '2024-07-10 11:02:35', '2024-07-11 01:28:17'),
(136, 'english', 'Belgium', 'Belgium', '2024-07-10 11:02:35', '2024-07-11 01:28:17'),
(138, 'english', 'Belize', 'Belize', '2024-07-10 11:02:35', '2024-07-11 01:28:17'),
(140, 'english', 'Benin', 'Benin', '2024-07-10 11:02:35', '2024-07-11 01:28:17'),
(142, 'english', 'Bermuda', 'Bermuda', '2024-07-10 11:02:35', '2024-07-11 01:28:17'),
(144, 'english', 'Bhutan', 'Bhutan', '2024-07-10 11:02:35', '2024-07-11 01:28:17'),
(146, 'english', 'Bolivia, Plurination', 'Bolivia, Plurination', '2024-07-10 11:02:35', '2024-07-11 01:28:17'),
(148, 'english', 'Bosnia and Herzegovi', 'Bosnia and Herzegovi', '2024-07-10 11:02:35', '2024-07-11 01:28:17'),
(150, 'english', 'Botswana', 'Botswana', '2024-07-10 11:02:35', '2024-07-11 01:28:17'),
(152, 'english', 'Brazil', 'Brazil', '2024-07-10 11:02:35', '2024-07-11 01:28:17'),
(154, 'english', 'British Indian Ocean', 'British Indian Ocean', '2024-07-10 11:02:35', '2024-07-11 01:28:17'),
(156, 'english', 'Brunei Darussalam', 'Brunei Darussalam', '2024-07-10 11:02:35', '2024-07-11 01:28:17'),
(158, 'english', 'Bulgaria', 'Bulgaria', '2024-07-10 11:02:35', '2024-07-11 01:28:17'),
(160, 'english', 'Burkina Faso', 'Burkina Faso', '2024-07-10 11:02:35', '2024-07-11 01:28:17'),
(162, 'english', 'Burundi', 'Burundi', '2024-07-10 11:02:35', '2024-07-11 01:28:17'),
(164, 'english', 'Cambodia', 'Cambodia', '2024-07-10 11:02:35', '2024-07-11 01:28:17'),
(166, 'english', 'Cameroon', 'Cameroon', '2024-07-10 11:02:35', '2024-07-11 01:28:17'),
(168, 'english', 'Canada', 'Canada', '2024-07-10 11:02:35', '2024-07-11 01:28:17'),
(170, 'english', 'Cape Verde', 'Cape Verde', '2024-07-10 11:02:35', '2024-07-11 01:28:17'),
(172, 'english', 'Cayman Islands', 'Cayman Islands', '2024-07-10 11:02:35', '2024-07-11 01:28:17'),
(174, 'english', 'Central African Repu', 'Central African Repu', '2024-07-10 11:02:35', '2024-07-11 01:28:17'),
(176, 'english', 'Chad', 'Chad', '2024-07-10 11:02:35', '2024-07-11 01:28:17'),
(178, 'english', 'Chile', 'Chile', '2024-07-10 11:02:35', '2024-07-11 01:28:17'),
(180, 'english', 'China', 'China', '2024-07-10 11:02:35', '2024-07-11 01:28:17'),
(182, 'english', 'Christmas Island', 'Christmas Island', '2024-07-10 11:02:35', '2024-07-11 01:28:17'),
(184, 'english', 'Cocos (Keeling) Isla', 'Cocos (Keeling) Isla', '2024-07-10 11:02:35', '2024-07-11 01:28:17'),
(186, 'english', 'Colombia', 'Colombia', '2024-07-10 11:02:36', '2024-07-11 01:28:17'),
(188, 'english', 'Comoros', 'Comoros', '2024-07-10 11:02:36', '2024-07-11 01:28:17'),
(190, 'english', 'Congo', 'Congo', '2024-07-10 11:02:36', '2024-07-11 01:28:17'),
(192, 'english', 'Congo, The Democrati', 'Congo, The Democrati', '2024-07-10 11:02:36', '2024-07-11 01:28:17'),
(194, 'english', 'Cook Islands', 'Cook Islands', '2024-07-10 11:02:36', '2024-07-11 01:28:17'),
(196, 'english', 'Costa Rica', 'Costa Rica', '2024-07-10 11:02:36', '2024-07-11 01:28:17'),
(198, 'english', 'Cote d\'Ivoire', 'Cote d\'Ivoire', '2024-07-10 11:02:36', '2024-07-11 01:28:17'),
(200, 'english', 'Croatia', 'Croatia', '2024-07-10 11:02:36', '2024-07-11 01:28:17'),
(202, 'english', 'Cuba', 'Cuba', '2024-07-10 11:02:36', '2024-07-11 01:28:17'),
(204, 'english', 'Cyprus', 'Cyprus', '2024-07-10 11:02:36', '2024-07-11 01:28:17'),
(206, 'english', 'Czech Republic', 'Czech Republic', '2024-07-10 11:02:36', '2024-07-11 01:28:17'),
(208, 'english', 'Denmark', 'Denmark', '2024-07-10 11:02:36', '2024-07-11 01:28:17'),
(210, 'english', 'Djibouti', 'Djibouti', '2024-07-10 11:02:36', '2024-07-11 01:28:17'),
(212, 'english', 'Dominica', 'Dominica', '2024-07-10 11:02:36', '2024-07-11 01:28:17'),
(214, 'english', 'Dominican Republic', 'Dominican Republic', '2024-07-10 11:02:36', '2024-07-11 01:28:17'),
(216, 'english', 'Ecuador', 'Ecuador', '2024-07-10 11:02:36', '2024-07-11 01:28:17'),
(218, 'english', 'Egypt', 'Egypt', '2024-07-10 11:02:36', '2024-07-11 01:28:17'),
(220, 'english', 'El Salvador', 'El Salvador', '2024-07-10 11:02:36', '2024-07-11 01:28:17'),
(222, 'english', 'Equatorial Guinea', 'Equatorial Guinea', '2024-07-10 11:02:36', '2024-07-11 01:28:17'),
(224, 'english', 'Eritrea', 'Eritrea', '2024-07-10 11:02:36', '2024-07-11 01:28:17'),
(226, 'english', 'Estonia', 'Estonia', '2024-07-10 11:02:36', '2024-07-11 01:28:17'),
(228, 'english', 'Ethiopia', 'Ethiopia', '2024-07-10 11:02:36', '2024-07-11 01:28:17'),
(230, 'english', 'Falkland Islands (Ma', 'Falkland Islands (Ma', '2024-07-10 11:02:36', '2024-07-11 01:28:17'),
(232, 'english', 'Faroe Islands', 'Faroe Islands', '2024-07-10 11:02:36', '2024-07-11 01:28:17'),
(234, 'english', 'Fiji', 'Fiji', '2024-07-10 11:02:36', '2024-07-11 01:28:17'),
(236, 'english', 'Finland', 'Finland', '2024-07-10 11:02:36', '2024-07-11 01:28:17'),
(238, 'english', 'France', 'France', '2024-07-10 11:02:36', '2024-07-11 01:28:17'),
(240, 'english', 'French Guiana', 'French Guiana', '2024-07-10 11:02:36', '2024-07-11 01:28:17'),
(242, 'english', 'French Polynesia', 'French Polynesia', '2024-07-10 11:02:36', '2024-07-11 01:28:17'),
(244, 'english', 'Gabon', 'Gabon', '2024-07-10 11:02:36', '2024-07-11 01:28:17'),
(246, 'english', 'Gambia', 'Gambia', '2024-07-10 11:02:36', '2024-07-11 01:28:17'),
(248, 'english', 'Georgia', 'Georgia', '2024-07-10 11:02:36', '2024-07-11 01:28:17'),
(250, 'english', 'Germany', 'Germany', '2024-07-10 11:02:36', '2024-07-11 01:28:17'),
(252, 'english', 'Ghana', 'Ghana', '2024-07-10 11:02:36', '2024-07-11 01:28:17'),
(254, 'english', 'Gibraltar', 'Gibraltar', '2024-07-10 11:02:36', '2024-07-11 01:28:17'),
(256, 'english', 'Greece', 'Greece', '2024-07-10 11:02:36', '2024-07-11 01:28:17'),
(258, 'english', 'Greenland', 'Greenland', '2024-07-10 11:02:36', '2024-07-11 01:28:17'),
(260, 'english', 'Grenada', 'Grenada', '2024-07-10 11:02:36', '2024-07-11 01:28:17'),
(262, 'english', 'Guadeloupe', 'Guadeloupe', '2024-07-10 11:02:36', '2024-07-11 01:28:17'),
(264, 'english', 'Guam', 'Guam', '2024-07-10 11:02:36', '2024-07-11 01:28:17'),
(266, 'english', 'Guatemala', 'Guatemala', '2024-07-10 11:02:36', '2024-07-11 01:28:17'),
(268, 'english', 'Guernsey', 'Guernsey', '2024-07-10 11:02:36', '2024-07-11 01:28:17'),
(270, 'english', 'Guinea', 'Guinea', '2024-07-10 11:02:36', '2024-07-11 01:28:17'),
(272, 'english', 'Guinea-Bissau', 'Guinea-Bissau', '2024-07-10 11:02:36', '2024-07-11 01:28:17'),
(274, 'english', 'Guyana', 'Guyana', '2024-07-10 11:02:36', '2024-07-11 01:28:17'),
(276, 'english', 'Haiti', 'Haiti', '2024-07-10 11:02:36', '2024-07-11 01:28:17'),
(278, 'english', 'Holy See (Vatican Ci', 'Holy See (Vatican Ci', '2024-07-10 11:02:36', '2024-07-11 01:28:17'),
(280, 'english', 'Honduras', 'Honduras', '2024-07-10 11:02:36', '2024-07-11 01:28:17'),
(282, 'english', 'Hong Kong', 'Hong Kong', '2024-07-10 11:02:36', '2024-07-11 01:28:17'),
(284, 'english', 'Hungary', 'Hungary', '2024-07-10 11:02:36', '2024-07-11 01:28:17'),
(286, 'english', 'Iceland', 'Iceland', '2024-07-10 11:02:36', '2024-07-11 01:28:17'),
(288, 'english', 'India', 'India', '2024-07-10 11:02:36', '2024-07-11 01:28:17'),
(290, 'english', 'Indonesia', 'Indonesia', '2024-07-10 11:02:36', '2024-07-11 01:28:17'),
(292, 'english', 'Iran, Islamic Republ', 'Iran, Islamic Republ', '2024-07-10 11:02:36', '2024-07-11 01:28:17'),
(294, 'english', 'Iraq', 'Iraq', '2024-07-10 11:02:36', '2024-07-11 01:28:17'),
(296, 'english', 'Ireland', 'Ireland', '2024-07-10 11:02:36', '2024-07-11 01:28:17'),
(298, 'english', 'Isle of Man', 'Isle of Man', '2024-07-10 11:02:36', '2024-07-11 01:28:17'),
(300, 'english', 'Israel', 'Israel', '2024-07-10 11:02:36', '2024-07-11 01:28:17'),
(302, 'english', 'Italy', 'Italy', '2024-07-10 11:02:36', '2024-07-11 01:28:17'),
(304, 'english', 'Jamaica', 'Jamaica', '2024-07-10 11:02:36', '2024-07-11 01:28:17'),
(306, 'english', 'Japan', 'Japan', '2024-07-10 11:02:36', '2024-07-11 01:28:17'),
(308, 'english', 'Jersey', 'Jersey', '2024-07-10 11:02:36', '2024-07-11 01:28:17'),
(310, 'english', 'Jordan', 'Jordan', '2024-07-10 11:02:36', '2024-07-11 01:28:17'),
(312, 'english', 'Kazakhstan', 'Kazakhstan', '2024-07-10 11:02:36', '2024-07-11 01:28:17'),
(314, 'english', 'Kenya', 'Kenya', '2024-07-10 11:02:36', '2024-07-11 01:28:17'),
(316, 'english', 'Kiribati', 'Kiribati', '2024-07-10 11:02:36', '2024-07-11 01:28:17'),
(318, 'english', 'Korea, Democratic Pe', 'Korea, Democratic Pe', '2024-07-10 11:02:36', '2024-07-11 01:28:17'),
(320, 'english', 'Korea, Republic of S', 'Korea, Republic of S', '2024-07-10 11:02:36', '2024-07-11 01:28:17'),
(322, 'english', 'Kuwait', 'Kuwait', '2024-07-10 11:02:36', '2024-07-11 01:28:17'),
(324, 'english', 'Kyrgyzstan', 'Kyrgyzstan', '2024-07-10 11:02:36', '2024-07-11 01:28:17'),
(326, 'english', 'Laos', 'Laos', '2024-07-10 11:02:36', '2024-07-11 01:28:17'),
(328, 'english', 'Latvia', 'Latvia', '2024-07-10 11:02:36', '2024-07-11 01:28:17'),
(330, 'english', 'Lebanon', 'Lebanon', '2024-07-10 11:02:37', '2024-07-11 01:28:17'),
(332, 'english', 'Lesotho', 'Lesotho', '2024-07-10 11:02:37', '2024-07-11 01:28:17'),
(334, 'english', 'Liberia', 'Liberia', '2024-07-10 11:02:37', '2024-07-11 01:28:17'),
(336, 'english', 'Libyan Arab Jamahiri', 'Libyan Arab Jamahiri', '2024-07-10 11:02:37', '2024-07-11 01:28:17'),
(338, 'english', 'Liechtenstein', 'Liechtenstein', '2024-07-10 11:02:37', '2024-07-11 01:28:17'),
(340, 'english', 'Lithuania', 'Lithuania', '2024-07-10 11:02:37', '2024-07-11 01:28:17'),
(342, 'english', 'Luxembourg', 'Luxembourg', '2024-07-10 11:02:37', '2024-07-11 01:28:17'),
(344, 'english', 'Macao', 'Macao', '2024-07-10 11:02:37', '2024-07-11 01:28:17'),
(346, 'english', 'Macedonia', 'Macedonia', '2024-07-10 11:02:37', '2024-07-11 01:28:17'),
(348, 'english', 'Madagascar', 'Madagascar', '2024-07-10 11:02:37', '2024-07-11 01:28:17'),
(350, 'english', 'Malawi', 'Malawi', '2024-07-10 11:02:37', '2024-07-11 01:28:17'),
(352, 'english', 'Malaysia', 'Malaysia', '2024-07-10 11:02:37', '2024-07-11 01:28:17'),
(354, 'english', 'Maldives', 'Maldives', '2024-07-10 11:02:37', '2024-07-11 01:28:17'),
(356, 'english', 'Mali', 'Mali', '2024-07-10 11:02:37', '2024-07-11 01:28:17'),
(358, 'english', 'Malta', 'Malta', '2024-07-10 11:02:37', '2024-07-11 01:28:17'),
(360, 'english', 'Marshall Islands', 'Marshall Islands', '2024-07-10 11:02:37', '2024-07-11 01:28:17'),
(362, 'english', 'Martinique', 'Martinique', '2024-07-10 11:02:37', '2024-07-11 01:28:17'),
(364, 'english', 'Mauritania', 'Mauritania', '2024-07-10 11:02:37', '2024-07-11 01:28:17'),
(366, 'english', 'Mauritius', 'Mauritius', '2024-07-10 11:02:37', '2024-07-11 01:28:17'),
(368, 'english', 'Mayotte', 'Mayotte', '2024-07-10 11:02:37', '2024-07-11 01:28:17'),
(370, 'english', 'Mexico', 'Mexico', '2024-07-10 11:02:37', '2024-07-11 01:28:17'),
(372, 'english', 'Micronesia, Federate', 'Micronesia, Federate', '2024-07-10 11:02:37', '2024-07-11 01:28:17'),
(374, 'english', 'Moldova', 'Moldova', '2024-07-10 11:02:37', '2024-07-11 01:28:17'),
(376, 'english', 'Monaco', 'Monaco', '2024-07-10 11:02:37', '2024-07-11 01:28:17'),
(378, 'english', 'Mongolia', 'Mongolia', '2024-07-10 11:02:37', '2024-07-11 01:28:17'),
(380, 'english', 'Montenegro', 'Montenegro', '2024-07-10 11:02:37', '2024-07-11 01:28:17'),
(382, 'english', 'Montserrat', 'Montserrat', '2024-07-10 11:02:37', '2024-07-11 01:28:17'),
(384, 'english', 'Morocco', 'Morocco', '2024-07-10 11:02:37', '2024-07-11 01:28:17'),
(386, 'english', 'Mozambique', 'Mozambique', '2024-07-10 11:02:37', '2024-07-11 01:28:17'),
(388, 'english', 'Myanmar', 'Myanmar', '2024-07-10 11:02:37', '2024-07-11 01:28:17'),
(390, 'english', 'Namibia', 'Namibia', '2024-07-10 11:02:37', '2024-07-11 01:28:17'),
(392, 'english', 'Nauru', 'Nauru', '2024-07-10 11:02:37', '2024-07-11 01:28:17'),
(394, 'english', 'Nepal', 'Nepal', '2024-07-10 11:02:37', '2024-07-11 01:28:17'),
(396, 'english', 'Netherlands', 'Netherlands', '2024-07-10 11:02:37', '2024-07-11 01:28:17'),
(398, 'english', 'Netherlands Antilles', 'Netherlands Antilles', '2024-07-10 11:02:37', '2024-07-11 01:28:17'),
(400, 'english', 'New Caledonia', 'New Caledonia', '2024-07-10 11:02:37', '2024-07-11 01:28:17'),
(402, 'english', 'New Zealand', 'New Zealand', '2024-07-10 11:02:37', '2024-07-11 01:28:17'),
(404, 'english', 'Nicaragua', 'Nicaragua', '2024-07-10 11:02:37', '2024-07-11 01:28:17'),
(406, 'english', 'Niger', 'Niger', '2024-07-10 11:02:37', '2024-07-11 01:28:17'),
(408, 'english', 'Nigeria', 'Nigeria', '2024-07-10 11:02:37', '2024-07-11 01:28:17'),
(410, 'english', 'Niue', 'Niue', '2024-07-10 11:02:37', '2024-07-11 01:28:17'),
(412, 'english', 'Norfolk Island', 'Norfolk Island', '2024-07-10 11:02:37', '2024-07-11 01:28:17'),
(414, 'english', 'Northern Mariana Isl', 'Northern Mariana Isl', '2024-07-10 11:02:37', '2024-07-11 01:28:17'),
(416, 'english', 'Norway', 'Norway', '2024-07-10 11:02:37', '2024-07-11 01:28:17'),
(418, 'english', 'Oman', 'Oman', '2024-07-10 11:02:37', '2024-07-11 01:28:17'),
(420, 'english', 'Pakistan', 'Pakistan', '2024-07-10 11:02:37', '2024-07-11 01:28:17'),
(422, 'english', 'Palau', 'Palau', '2024-07-10 11:02:37', '2024-07-11 01:28:17'),
(424, 'english', 'Palestinian Territor', 'Palestinian Territor', '2024-07-10 11:02:37', '2024-07-11 01:28:17'),
(426, 'english', 'Panama', 'Panama', '2024-07-10 11:02:37', '2024-07-11 01:28:17'),
(428, 'english', 'Papua New Guinea', 'Papua New Guinea', '2024-07-10 11:02:37', '2024-07-11 01:28:17'),
(430, 'english', 'Paraguay', 'Paraguay', '2024-07-10 11:02:37', '2024-07-11 01:28:17'),
(432, 'english', 'Peru', 'Peru', '2024-07-10 11:02:37', '2024-07-11 01:28:17'),
(434, 'english', 'Philippines', 'Philippines', '2024-07-10 11:02:37', '2024-07-11 01:28:17'),
(436, 'english', 'Pitcairn', 'Pitcairn', '2024-07-10 11:02:37', '2024-07-11 01:28:17'),
(438, 'english', 'Poland', 'Poland', '2024-07-10 11:02:37', '2024-07-11 01:28:17'),
(440, 'english', 'Portugal', 'Portugal', '2024-07-10 11:02:37', '2024-07-11 01:28:17'),
(442, 'english', 'Puerto Rico', 'Puerto Rico', '2024-07-10 11:02:37', '2024-07-11 01:28:17'),
(444, 'english', 'Qatar', 'Qatar', '2024-07-10 11:02:37', '2024-07-11 01:28:17'),
(446, 'english', 'Romania', 'Romania', '2024-07-10 11:02:37', '2024-07-11 01:28:17'),
(448, 'english', 'Russia', 'Russia', '2024-07-10 11:02:37', '2024-07-11 01:28:17'),
(450, 'english', 'Rwanda', 'Rwanda', '2024-07-10 11:02:37', '2024-07-11 01:28:17'),
(452, 'english', 'Reunion', 'Reunion', '2024-07-10 11:02:37', '2024-07-11 01:28:17'),
(454, 'english', 'Saint Barthelemy', 'Saint Barthelemy', '2024-07-10 11:02:37', '2024-07-11 01:28:17'),
(456, 'english', 'Saint Helena, Ascens', 'Saint Helena, Ascens', '2024-07-10 11:02:37', '2024-07-11 01:28:17'),
(458, 'english', 'Saint Kitts and Nevi', 'Saint Kitts and Nevi', '2024-07-10 11:02:37', '2024-07-11 01:28:17'),
(460, 'english', 'Saint Lucia', 'Saint Lucia', '2024-07-10 11:02:37', '2024-07-11 01:28:17'),
(462, 'english', 'Saint Martin', 'Saint Martin', '2024-07-10 11:02:37', '2024-07-11 01:28:17'),
(464, 'english', 'Saint Pierre and Miq', 'Saint Pierre and Miq', '2024-07-10 11:02:38', '2024-07-11 01:28:17'),
(466, 'english', 'Saint Vincent and th', 'Saint Vincent and th', '2024-07-10 11:02:38', '2024-07-11 01:28:17'),
(468, 'english', 'Samoa', 'Samoa', '2024-07-10 11:02:38', '2024-07-11 01:28:17'),
(470, 'english', 'San Marino', 'San Marino', '2024-07-10 11:02:38', '2024-07-11 01:28:17'),
(472, 'english', 'Sao Tome and Princip', 'Sao Tome and Princip', '2024-07-10 11:02:38', '2024-07-11 01:28:17'),
(474, 'english', 'Saudi Arabia', 'Saudi Arabia', '2024-07-10 11:02:38', '2024-07-11 01:28:17'),
(476, 'english', 'Senegal', 'Senegal', '2024-07-10 11:02:38', '2024-07-11 01:28:17'),
(478, 'english', 'Serbia', 'Serbia', '2024-07-10 11:02:38', '2024-07-11 01:28:17'),
(480, 'english', 'Seychelles', 'Seychelles', '2024-07-10 11:02:38', '2024-07-11 01:28:17'),
(482, 'english', 'Sierra Leone', 'Sierra Leone', '2024-07-10 11:02:38', '2024-07-11 01:28:17'),
(484, 'english', 'Singapore', 'Singapore', '2024-07-10 11:02:38', '2024-07-11 01:28:17'),
(486, 'english', 'Slovakia', 'Slovakia', '2024-07-10 11:02:38', '2024-07-11 01:28:17'),
(488, 'english', 'Slovenia', 'Slovenia', '2024-07-10 11:02:38', '2024-07-11 01:28:17'),
(490, 'english', 'Solomon Islands', 'Solomon Islands', '2024-07-10 11:02:38', '2024-07-11 01:28:17'),
(492, 'english', 'Somalia', 'Somalia', '2024-07-10 11:02:38', '2024-07-11 01:28:17'),
(494, 'english', 'South Africa', 'South Africa', '2024-07-10 11:02:38', '2024-07-11 01:28:17'),
(496, 'english', 'South Georgia and th', 'South Georgia and th', '2024-07-10 11:02:38', '2024-07-11 01:28:17'),
(498, 'english', 'Spain', 'Spain', '2024-07-10 11:02:38', '2024-07-11 01:28:17'),
(500, 'english', 'Sri Lanka', 'Sri Lanka', '2024-07-10 11:02:38', '2024-07-11 01:28:17'),
(502, 'english', 'Sudan', 'Sudan', '2024-07-10 11:02:38', '2024-07-11 01:28:17'),
(504, 'english', 'Suriname', 'Suriname', '2024-07-10 11:02:38', '2024-07-11 01:28:17'),
(506, 'english', 'Svalbard and Jan May', 'Svalbard and Jan May', '2024-07-10 11:02:38', '2024-07-11 01:28:17'),
(508, 'english', 'Swaziland', 'Swaziland', '2024-07-10 11:02:38', '2024-07-11 01:28:17'),
(510, 'english', 'Sweden', 'Sweden', '2024-07-10 11:02:38', '2024-07-11 01:28:17'),
(512, 'english', 'Switzerland', 'Switzerland', '2024-07-10 11:02:38', '2024-07-11 01:28:17'),
(514, 'english', 'Syrian Arab Republic', 'Syrian Arab Republic', '2024-07-10 11:02:38', '2024-07-11 01:28:17'),
(516, 'english', 'Taiwan', 'Taiwan', '2024-07-10 11:02:38', '2024-07-11 01:28:17'),
(518, 'english', 'Tajikistan', 'Tajikistan', '2024-07-10 11:02:38', '2024-07-11 01:28:17'),
(520, 'english', 'Tanzania, United Rep', 'Tanzania, United Rep', '2024-07-10 11:02:38', '2024-07-11 01:28:17'),
(522, 'english', 'Thailand', 'Thailand', '2024-07-10 11:02:38', '2024-07-11 01:28:17'),
(524, 'english', 'Timor-Leste', 'Timor-Leste', '2024-07-10 11:02:38', '2024-07-11 01:28:17'),
(526, 'english', 'Togo', 'Togo', '2024-07-10 11:02:38', '2024-07-11 01:28:17'),
(528, 'english', 'Tokelau', 'Tokelau', '2024-07-10 11:02:38', '2024-07-11 01:28:17'),
(530, 'english', 'Tonga', 'Tonga', '2024-07-10 11:02:38', '2024-07-11 01:28:17'),
(532, 'english', 'Trinidad and Tobago', 'Trinidad and Tobago', '2024-07-10 11:02:38', '2024-07-11 01:28:17'),
(534, 'english', 'Tunisia', 'Tunisia', '2024-07-10 11:02:38', '2024-07-11 01:28:17'),
(536, 'english', 'Turkey', 'Turkey', '2024-07-10 11:02:38', '2024-07-11 01:28:17'),
(538, 'english', 'Turkmenistan', 'Turkmenistan', '2024-07-10 11:02:38', '2024-07-11 01:28:17'),
(540, 'english', 'Turks and Caicos Isl', 'Turks and Caicos Isl', '2024-07-10 11:02:38', '2024-07-11 01:28:17'),
(542, 'english', 'Tuvalu', 'Tuvalu', '2024-07-10 11:02:38', '2024-07-11 01:28:17'),
(544, 'english', 'Uganda', 'Uganda', '2024-07-10 11:02:38', '2024-07-11 01:28:17'),
(546, 'english', 'Ukraine', 'Ukraine', '2024-07-10 11:02:38', '2024-07-11 01:28:17'),
(548, 'english', 'United Arab Emirates', 'United Arab Emirates', '2024-07-10 11:02:38', '2024-07-11 01:28:17'),
(550, 'english', 'United Kingdom', 'United Kingdom', '2024-07-10 11:02:38', '2024-07-11 01:28:17'),
(552, 'english', 'United States', 'United States', '2024-07-10 11:02:38', '2024-07-11 01:28:17'),
(554, 'english', 'Uruguay', 'Uruguay', '2024-07-10 11:02:38', '2024-07-11 01:28:17'),
(556, 'english', 'Uzbekistan', 'Uzbekistan', '2024-07-10 11:02:38', '2024-07-11 01:28:17'),
(558, 'english', 'Vanuatu', 'Vanuatu', '2024-07-10 11:02:38', '2024-07-11 01:28:17'),
(560, 'english', 'Venezuela, Bolivaria', 'Venezuela, Bolivaria', '2024-07-10 11:02:38', '2024-07-11 01:28:17'),
(562, 'english', 'Vietnam', 'Vietnam', '2024-07-10 11:02:38', '2024-07-11 01:28:17'),
(564, 'english', 'Virgin Islands, Brit', 'Virgin Islands, Brit', '2024-07-10 11:02:38', '2024-07-11 01:28:17'),
(566, 'english', 'Virgin Islands, U.S.', 'Virgin Islands, U.S.', '2024-07-10 11:02:38', '2024-07-11 01:28:17'),
(568, 'english', 'Wallis and Futuna', 'Wallis and Futuna', '2024-07-10 11:02:38', '2024-07-11 01:28:17'),
(570, 'english', 'Yemen', 'Yemen', '2024-07-10 11:02:38', '2024-07-11 01:28:17'),
(572, 'english', 'Zambia', 'Zambia', '2024-07-10 11:02:38', '2024-07-11 01:28:17'),
(574, 'english', 'Zimbabwe', 'Zimbabwe', '2024-07-10 11:02:38', '2024-07-11 01:28:17'),
(576, 'english', 'Purchase Code', 'Purchase Code', '2024-07-10 11:02:38', '2024-07-11 01:28:17'),
(578, 'english', 'Email Verification', 'Email Verification', '2024-07-10 11:02:38', '2024-07-11 01:28:17'),
(580, 'english', 'Select email verification', 'Select email verification', '2024-07-10 11:02:38', '2024-07-11 01:28:17'),
(582, 'english', 'Enable', 'Enable', '2024-07-10 11:02:38', '2024-07-11 01:28:17'),
(584, 'english', 'Disable', 'Disable', '2024-07-10 11:02:38', '2024-07-11 01:28:17'),
(586, 'english', 'Map access token', 'Map access token', '2024-07-10 11:02:38', '2024-07-11 01:28:17'),
(588, 'english', 'Max zoom level', 'Max zoom level', '2024-07-10 11:02:38', '2024-07-11 01:28:17'),
(590, 'english', 'Default location', 'Default location', '2024-07-10 11:02:38', '2024-07-11 01:28:17'),
(592, 'english', 'Update', 'Update', '2024-07-10 11:02:38', '2024-07-11 01:28:17'),
(594, 'english', 'Facebook Link', 'Facebook Link', '2024-07-10 11:02:38', '2024-07-11 01:28:17'),
(596, 'english', 'Twitter Link', 'Twitter Link', '2024-07-10 11:02:39', '2024-07-11 01:28:17'),
(598, 'english', 'Linkedin Link', 'Linkedin Link', '2024-07-10 11:02:39', '2024-07-11 01:28:17'),
(600, 'english', 'Update File', 'Update File', '2024-07-10 11:02:39', '2024-07-11 01:28:17'),
(602, 'english', 'Setting update successfully!', 'Setting update successfully!', '2024-07-10 11:02:48', '2024-07-11 01:28:17'),
(603, 'english', 'System Settings', 'System Settings', '2024-07-10 11:02:48', '2024-07-11 01:28:17'),
(604, 'english', 'Dashboard', 'Dashboard', '2024-07-10 11:02:49', '2024-07-11 03:28:40'),
(605, 'english', 'Listing Categories', 'Listing Categories', '2024-07-10 11:02:49', '2024-07-11 01:28:17'),
(606, 'english', 'Doctor', 'Doctor', '2024-07-10 11:02:49', '2024-07-11 01:28:17'),
(607, 'english', 'Beauty', 'Beauty', '2024-07-10 11:02:49', '2024-07-11 01:28:17'),
(608, 'english', 'Car', 'Car', '2024-07-10 11:02:49', '2024-07-11 01:28:17'),
(609, 'english', 'Real Estate', 'Real Estate', '2024-07-10 11:02:49', '2024-07-11 01:28:17'),
(610, 'english', 'Hotel', 'Hotel', '2024-07-10 11:02:49', '2024-07-11 01:28:17'),
(611, 'english', 'Restaurant', 'Restaurant', '2024-07-10 11:02:49', '2024-07-11 01:28:17'),
(612, 'english', 'Cities', 'Cities', '2024-07-10 11:02:49', '2024-07-11 01:28:17'),
(613, 'english', 'Listing Amenities', 'Listing Amenities', '2024-07-10 11:02:49', '2024-07-11 01:28:17'),
(614, 'english', 'Directory Listings', 'Directory Listings', '2024-07-10 11:02:49', '2024-07-11 01:28:17'),
(615, 'english', 'All Listings', 'All Listings', '2024-07-10 11:02:49', '2024-07-11 01:28:17'),
(616, 'english', 'Add Listing', 'Add Listing', '2024-07-10 11:02:49', '2024-07-11 01:28:17'),
(617, 'english', 'Claimed Listings', 'Claimed Listings', '2024-07-10 11:02:49', '2024-07-11 01:28:17'),
(618, 'english', 'Reported Listing', 'Reported Listing', '2024-07-10 11:02:49', '2024-07-11 01:28:17'),
(619, 'english', 'Subscription History', 'Subscription History', '2024-07-10 11:02:49', '2024-07-11 01:28:17'),
(620, 'english', 'Pricing', 'Pricing', '2024-07-10 11:02:49', '2024-07-11 01:28:17'),
(621, 'english', 'Users', 'Users', '2024-07-10 11:02:49', '2024-07-11 01:28:17'),
(622, 'english', 'Add New', 'Add New', '2024-07-10 11:02:49', '2024-07-11 01:28:17'),
(623, 'english', 'All Doctors', 'All Doctors', '2024-07-10 11:02:49', '2024-07-11 01:28:17'),
(624, 'english', 'Agent', 'Agent', '2024-07-10 11:02:49', '2024-07-11 01:28:17'),
(625, 'english', 'All Agents', 'All Agents', '2024-07-10 11:02:50', '2024-07-11 01:28:17'),
(626, 'english', 'Customer', 'Customer', '2024-07-10 11:02:50', '2024-07-11 01:28:17'),
(627, 'english', 'All Customers', 'All Customers', '2024-07-10 11:02:50', '2024-07-11 01:28:17'),
(628, 'english', 'Newsletter', 'Newsletter', '2024-07-10 11:02:50', '2024-07-11 01:28:17'),
(629, 'english', 'Manage Newsletter', 'Manage Newsletter', '2024-07-10 11:02:50', '2024-07-11 01:28:17'),
(630, 'english', 'Subscribed User', 'Subscribed User', '2024-07-10 11:02:50', '2024-07-11 01:28:17'),
(631, 'english', 'Contacts', 'Contacts', '2024-07-10 11:02:50', '2024-07-11 01:28:17'),
(632, 'english', 'Blogs', 'Blogs', '2024-07-10 11:02:50', '2024-07-11 01:28:17'),
(633, 'english', 'All Blogs', 'All Blogs', '2024-07-10 11:02:50', '2024-07-11 01:28:17'),
(634, 'english', 'Pending Blogs', 'Pending Blogs', '2024-07-10 11:02:50', '2024-07-11 01:28:17'),
(635, 'english', 'Add Blogs', 'Add Blogs', '2024-07-10 11:02:50', '2024-07-11 01:28:17'),
(636, 'english', 'Blog Category', 'Blog Category', '2024-07-10 11:02:50', '2024-07-11 01:28:17'),
(637, 'english', 'Settings', 'Settings', '2024-07-10 11:02:50', '2024-07-11 01:28:17'),
(638, 'english', 'Website Settings', 'Website Settings', '2024-07-10 11:02:50', '2024-07-11 01:28:17'),
(639, 'english', 'Payment Settings', 'Payment Settings', '2024-07-10 11:02:50', '2024-07-11 01:28:17'),
(640, 'english', 'Language Settings', 'Language Settings', '2024-07-10 11:02:50', '2024-07-11 01:28:17'),
(641, 'english', 'Email Settings', 'Email Settings', '2024-07-10 11:02:50', '2024-07-11 01:28:17'),
(642, 'english', 'Manage Profile', 'Manage Profile', '2024-07-10 11:02:50', '2024-07-11 01:28:17'),
(643, 'english', 'Atlas Admin Panel', 'Atlas Admin Panel', '2024-07-10 11:02:50', '2024-07-11 01:28:17'),
(644, 'english', 'View site', 'View site', '2024-07-10 11:02:50', '2024-07-11 01:28:17'),
(645, 'english', 'Language', 'Language', '2024-07-10 11:02:50', '2024-07-11 01:28:17'),
(646, 'english', 'Admin', 'Admin', '2024-07-10 11:02:50', '2024-07-11 01:28:17'),
(647, 'english', 'My Profile', 'My Profile', '2024-07-10 11:02:50', '2024-07-11 01:28:17'),
(648, 'english', 'Sign Out', 'Sign Out', '2024-07-10 11:02:50', '2024-07-11 01:28:17'),
(649, 'english', 'Modal title', 'Modal title', '2024-07-10 11:02:50', '2024-07-11 01:28:17'),
(650, 'english', 'Are you sure!', 'Are you sure!', '2024-07-10 11:02:50', '2024-07-11 01:28:17'),
(651, 'english', 'If you this data then can\'t be undo', 'If you this data then can\'t be undo', '2024-07-10 11:02:50', '2024-07-11 01:28:17'),
(652, 'english', 'Close', 'Close', '2024-07-10 11:02:50', '2024-07-11 01:28:17'),
(653, 'english', 'Delete', 'Delete', '2024-07-10 11:02:50', '2024-07-11 01:28:17'),
(654, 'english', 'Add New Language', 'Add New Language', '2024-07-10 11:02:58', '2024-07-11 01:28:17'),
(655, 'english', 'ID', 'ID', '2024-07-10 11:02:58', '2024-07-11 01:28:17'),
(656, 'english', 'Language Name', 'Language Name', '2024-07-10 11:02:58', '2024-07-11 01:28:17'),
(657, 'english', 'Action', 'Action', '2024-07-10 11:02:58', '2024-07-11 01:28:17'),
(658, 'english', 'Update language', 'Update language', '2024-07-10 11:02:59', '2024-07-11 01:28:17'),
(659, 'english', 'Edit', 'Edit', '2024-07-10 11:02:59', '2024-07-11 01:28:17'),
(660, 'english', 'Language Deleted Successfully', 'Language Deleted Successfully', '2024-07-10 11:03:37', '2024-07-11 01:28:17'),
(661, 'english', 'Edit Phrase', 'Edit Phrase', '2024-07-10 11:33:03', '2024-07-11 01:28:17'),
(662, 'english', 'Enter language name', 'Enter language name', '2024-07-10 11:34:19', '2024-07-11 01:28:17'),
(663, 'english', 'Create', 'Create', '2024-07-10 11:34:19', '2024-07-11 01:28:17'),
(664, 'english', 'System settings updated successfully.', 'System settings updated successfully.', '2024-07-10 11:42:24', '2024-07-11 01:28:17'),
(665, 'english', 'Language updated successfully.', 'Language updated successfully.', '2024-07-10 11:43:25', '2024-07-11 01:28:17'),
(666, 'english', 'Gib124', 'Gib124', '2024-07-10 11:43:31', '2024-07-11 01:28:17'),
(667, 'english', 'Home Page', 'Home Page', '2024-07-11 06:40:02', '2024-07-11 01:28:17'),
(668, 'english', 'Admin Dashboard', 'Admin Dashboard', '2024-07-11 07:26:03', '2024-07-11 01:28:17'),
(669, 'english', 'Change Phrase', 'Change Phrase', '2024-07-11 07:31:20', '2024-07-11 07:31:20'),
(670, 'english', 'Language Phrase', 'Language Phrase', '2024-07-11 07:31:20', '2024-07-11 07:31:20'),
(671, 'english', 'Save', 'Save', '2024-07-11 07:37:18', '2024-07-11 07:37:18'),
(673, 'english', 'Bangla', 'Bangla', '2024-07-11 09:29:45', '2024-07-11 09:29:45'),
(1006, 'english', 'Protocol (smtp or ssmtp or mail)', 'Protocol (smtp or ssmtp or mail)', '2024-07-11 09:43:03', '2024-07-11 09:43:03'),
(1008, 'english', 'Protocol (smtp)', 'Protocol (smtp)', '2024-07-11 09:43:03', '2024-07-11 09:43:03'),
(1010, 'english', 'Smtp crypto (ssl or tls)', 'Smtp crypto (ssl or tls)', '2024-07-11 09:43:03', '2024-07-11 09:43:03'),
(1012, 'english', 'Crypto (ssl or tls)', 'Crypto (ssl or tls)', '2024-07-11 09:43:03', '2024-07-11 09:43:03'),
(1014, 'english', 'Smtp host', 'Smtp host', '2024-07-11 09:43:03', '2024-07-11 09:43:03'),
(1016, 'english', 'Smtp port', 'Smtp port', '2024-07-11 09:43:03', '2024-07-11 09:43:03'),
(1018, 'english', 'Smtp username', 'Smtp username', '2024-07-11 09:43:03', '2024-07-11 09:43:03'),
(1020, 'english', 'Smtp password', 'Smtp password', '2024-07-11 09:43:03', '2024-07-11 09:43:03'),
(1022, 'english', 'Add New Blog', 'Add New Blog', '2024-07-11 09:52:43', '2024-07-11 09:52:43'),
(1024, 'english', 'Image', 'Image', '2024-07-11 09:52:43', '2024-07-11 09:52:43'),
(1026, 'english', 'Title', 'Title', '2024-07-11 09:52:43', '2024-07-11 09:52:43'),
(1028, 'english', 'Category', 'Category', '2024-07-11 09:52:43', '2024-07-11 09:52:43'),
(1030, 'english', 'Status', 'Status', '2024-07-11 09:52:43', '2024-07-11 09:52:43'),
(1032, 'english', 'Active', 'Active', '2024-07-11 09:52:43', '2024-07-11 09:52:43'),
(1034, 'english', 'Change Status', 'Change Status', '2024-07-11 09:52:43', '2024-07-11 09:52:43'),
(1036, 'english', 'Profile', 'Profile', '2024-07-11 09:52:54', '2024-07-11 09:52:54'),
(1038, 'english', 'Profile Settings', 'Profile Settings', '2024-07-11 09:52:54', '2024-07-11 09:52:54'),
(1040, 'english', 'Profile Information', 'Profile Information', '2024-07-11 09:52:54', '2024-07-11 09:52:54'),
(1042, 'english', 'User Name', 'User Name', '2024-07-11 09:52:54', '2024-07-11 09:52:54'),
(1044, 'english', 'Enter user name', 'Enter user name', '2024-07-11 09:52:54', '2024-07-11 09:52:54'),
(1046, 'english', 'User Email', 'User Email', '2024-07-11 09:52:54', '2024-07-11 09:52:54'),
(1048, 'english', 'Enter user email', 'Enter user email', '2024-07-11 09:52:54', '2024-07-11 09:52:54'),
(1050, 'english', 'User Image', 'User Image', '2024-07-11 09:52:54', '2024-07-11 09:52:54'),
(1052, 'english', 'Password Update', 'Password Update', '2024-07-11 09:52:55', '2024-07-11 09:52:55'),
(1054, 'english', 'Current Password', 'Current Password', '2024-07-11 09:52:55', '2024-07-11 09:52:55'),
(1056, 'english', 'New Password', 'New Password', '2024-07-11 09:52:55', '2024-07-11 09:52:55'),
(1058, 'english', 'Confirm Password', 'Confirm Password', '2024-07-11 09:52:55', '2024-07-11 09:52:55'),
(1060, 'english', 'Info', 'Info', '2024-07-11 09:54:24', '2024-07-11 09:54:24'),
(1063, 'english', 'User Full Name *', 'User Full Name *', '2024-07-11 09:54:24', '2024-07-11 09:54:24'),
(1065, 'english', 'Enter name', 'Enter name', '2024-07-11 09:54:24', '2024-07-11 09:54:24'),
(1067, 'english', 'Email Address *', 'Email Address *', '2024-07-11 09:54:24', '2024-07-11 09:54:24'),
(1069, 'english', 'Enter email', 'Enter email', '2024-07-11 09:54:25', '2024-07-11 09:54:25'),
(1071, 'english', 'Phone Number *', 'Phone Number *', '2024-07-11 09:54:25', '2024-07-11 09:54:25'),
(1073, 'english', 'Enter phone', 'Enter phone', '2024-07-11 09:54:25', '2024-07-11 09:54:25'),
(1075, 'english', 'Gender *', 'Gender *', '2024-07-11 09:54:25', '2024-07-11 09:54:25'),
(1077, 'english', 'Select Gender', 'Select Gender', '2024-07-11 09:54:25', '2024-07-11 09:54:25'),
(1079, 'english', 'Male', 'Male', '2024-07-11 09:54:25', '2024-07-11 09:54:25'),
(1081, 'english', 'Female', 'Female', '2024-07-11 09:54:25', '2024-07-11 09:54:25'),
(1083, 'english', 'Country *', 'Country *', '2024-07-11 09:54:25', '2024-07-11 09:54:25'),
(1085, 'english', 'Select Country', 'Select Country', '2024-07-11 09:54:25', '2024-07-11 09:54:25'),
(1087, 'english', 'Enter facebook link', 'Enter facebook link', '2024-07-11 09:54:25', '2024-07-11 09:54:25'),
(1089, 'english', 'City *', 'City *', '2024-07-11 09:54:25', '2024-07-11 09:54:25'),
(1091, 'english', 'Select City', 'Select City', '2024-07-11 09:54:25', '2024-07-11 09:54:25'),
(1093, 'english', 'Enter linkedin link', 'Enter linkedin link', '2024-07-11 09:54:25', '2024-07-11 09:54:25'),
(1095, 'english', 'Enter twitter link', 'Enter twitter link', '2024-07-11 09:54:25', '2024-07-11 09:54:25'),
(1097, 'english', 'Password *', 'Password *', '2024-07-11 09:54:25', '2024-07-11 09:54:25'),
(1099, 'english', 'Enter password', 'Enter password', '2024-07-11 09:54:25', '2024-07-11 09:54:25'),
(1101, 'english', 'Confirm Password *', 'Confirm Password *', '2024-07-11 09:54:25', '2024-07-11 09:54:25'),
(1103, 'english', 'Appointments', 'Appointments', '2024-07-11 10:28:57', '2024-07-11 10:28:57'),
(1105, 'english', 'Manage Appointment', 'Manage Appointment', '2024-07-11 10:29:03', '2024-07-11 10:29:03'),
(1108, 'english', 'Create Listing', 'Create Listing', '2024-07-12 13:08:04', '2024-07-12 13:08:04'),
(1110, 'english', 'Listing Type', 'Listing Type', '2024-07-12 13:08:04', '2024-07-12 13:08:04'),
(1112, 'english', 'Select listing type', 'Select listing type', '2024-07-12 13:08:04', '2024-07-12 13:08:04'),
(1114, 'english', 'Beauty Listing', 'Beauty Listing', '2024-07-12 13:08:04', '2024-07-12 13:08:04'),
(1116, 'english', 'Car Listing', 'Car Listing', '2024-07-12 13:08:04', '2024-07-12 13:08:04'),
(1118, 'english', 'Real Estate Listing', 'Real Estate Listing', '2024-07-12 13:08:04', '2024-07-12 13:08:04'),
(1120, 'english', 'Hotel Listing', 'Hotel Listing', '2024-07-12 13:08:04', '2024-07-12 13:08:04'),
(1122, 'english', 'Restaurant Listing', 'Restaurant Listing', '2024-07-12 13:08:04', '2024-07-12 13:08:04'),
(1124, 'english', 'Listing Category', 'Listing Category', '2024-07-12 13:08:04', '2024-07-12 13:08:04'),
(1126, 'english', 'Select listing type first', 'Select listing type first', '2024-07-12 13:08:04', '2024-07-12 13:08:04'),
(1128, 'english', 'Select Listing type from dropdown.', 'Select Listing type from dropdown.', '2024-07-12 13:08:04', '2024-07-12 13:08:04'),
(1130, 'english', 'Select listing category', 'Select listing category', '2024-07-12 13:08:04', '2024-07-12 13:08:04'),
(1132, 'english', 'Basic Info', 'Basic Info', '2024-07-12 13:08:12', '2024-07-12 13:08:12'),
(1134, 'english', 'Address', 'Address', '2024-07-12 13:08:12', '2024-07-12 13:08:12'),
(1136, 'english', 'Seo', 'Seo', '2024-07-12 13:08:12', '2024-07-12 13:08:12'),
(1138, 'english', 'Media', 'Media', '2024-07-12 13:08:12', '2024-07-12 13:08:12'),
(1140, 'english', 'Listing title', 'Listing title', '2024-07-12 13:08:12', '2024-07-12 13:08:12'),
(1142, 'english', 'Enter listing title', 'Enter listing title', '2024-07-12 13:08:12', '2024-07-12 13:08:12'),
(1144, 'english', 'Brand', 'Brand', '2024-07-12 13:08:12', '2024-07-12 13:08:12'),
(1146, 'english', 'Select listing brand', 'Select listing brand', '2024-07-12 13:08:12', '2024-07-12 13:08:12'),
(1148, 'english', 'Model', 'Model', '2024-07-12 13:08:12', '2024-07-12 13:08:12'),
(1150, 'english', 'Select listing model', 'Select listing model', '2024-07-12 13:08:12', '2024-07-12 13:08:12'),
(1152, 'english', 'Year', 'Year', '2024-07-12 13:08:12', '2024-07-12 13:08:12'),
(1154, 'english', 'Select listing year', 'Select listing year', '2024-07-12 13:08:12', '2024-07-12 13:08:12'),
(1156, 'english', 'Car Type', 'Car Type', '2024-07-12 13:08:12', '2024-07-12 13:08:12'),
(1158, 'english', 'Select listing car type', 'Select listing car type', '2024-07-12 13:08:12', '2024-07-12 13:08:12'),
(1160, 'english', 'Transmission', 'Transmission', '2024-07-12 13:08:12', '2024-07-12 13:08:12'),
(1162, 'english', 'Select listing transmission', 'Select listing transmission', '2024-07-12 13:08:12', '2024-07-12 13:08:12'),
(1164, 'english', 'Fuel Type', 'Fuel Type', '2024-07-12 13:08:12', '2024-07-12 13:08:12'),
(1166, 'english', 'Select listing fuel_type', 'Select listing fuel_type', '2024-07-12 13:08:12', '2024-07-12 13:08:12'),
(1168, 'english', 'Cylinder', 'Cylinder', '2024-07-12 13:08:12', '2024-07-12 13:08:12'),
(1170, 'english', 'Select listing Cylinder', 'Select listing Cylinder', '2024-07-12 13:08:12', '2024-07-12 13:08:12'),
(1172, 'english', 'Interior Color', 'Interior Color', '2024-07-12 13:08:12', '2024-07-12 13:08:12'),
(1174, 'english', 'Select listing interior color', 'Select listing interior color', '2024-07-12 13:08:12', '2024-07-12 13:08:12'),
(1176, 'english', 'Exterior Color', 'Exterior Color', '2024-07-12 13:08:12', '2024-07-12 13:08:12'),
(1178, 'english', 'Select listing exterior color', 'Select listing exterior color', '2024-07-12 13:08:12', '2024-07-12 13:08:12'),
(1180, 'english', 'Drive Train', 'Drive Train', '2024-07-12 13:08:12', '2024-07-12 13:08:12'),
(1182, 'english', 'Select listing drive train', 'Select listing drive train', '2024-07-12 13:08:12', '2024-07-12 13:08:12'),
(1184, 'english', 'Trim', 'Trim', '2024-07-12 13:08:12', '2024-07-12 13:08:12'),
(1186, 'english', 'Select listing trim', 'Select listing trim', '2024-07-12 13:08:12', '2024-07-12 13:08:12'),
(1188, 'english', 'Engin_size', 'Engin_size', '2024-07-12 13:08:12', '2024-07-12 13:08:12'),
(1190, 'english', 'Mileage', 'Mileage', '2024-07-12 13:08:12', '2024-07-12 13:08:12'),
(1192, 'english', '00', '00', '2024-07-12 13:08:12', '2024-07-12 13:08:12'),
(1194, 'english', 'vin', 'vin', '2024-07-12 13:08:12', '2024-07-12 13:08:12'),
(1196, 'english', '4jh45ed4', '4jh45ed4', '2024-07-12 13:08:12', '2024-07-12 13:08:12'),
(1198, 'english', 'price', 'price', '2024-07-12 13:08:12', '2024-07-12 13:08:12'),
(1200, 'english', '00.00', '00.00', '2024-07-12 13:08:12', '2024-07-12 13:08:12'),
(1202, 'english', 'discount_price', 'discount_price', '2024-07-12 13:08:13', '2024-07-12 13:08:13'),
(1204, 'english', 'Visibility', 'Visibility', '2024-07-12 13:08:13', '2024-07-12 13:08:13'),
(1206, 'english', 'Select listing visibility', 'Select listing visibility', '2024-07-12 13:08:13', '2024-07-12 13:08:13'),
(1208, 'english', 'Visible', 'Visible', '2024-07-12 13:08:13', '2024-07-12 13:08:13'),
(1210, 'english', 'Hidden', 'Hidden', '2024-07-12 13:08:13', '2024-07-12 13:08:13'),
(1212, 'english', 'Description', 'Description', '2024-07-12 13:08:13', '2024-07-12 13:08:13'),
(1214, 'english', 'Enter listing description', 'Enter listing description', '2024-07-12 13:08:13', '2024-07-12 13:08:13'),
(1216, 'english', 'Select listing country', 'Select listing country', '2024-07-12 13:08:13', '2024-07-12 13:08:13'),
(1218, 'english', 'City', 'City', '2024-07-12 13:08:14', '2024-07-12 13:08:14'),
(1220, 'english', 'Select listing city', 'Select listing city', '2024-07-12 13:08:14', '2024-07-12 13:08:14'),
(1222, 'english', 'Address', 'Address', '2024-07-12 13:08:14', '2024-07-12 13:08:14'),
(1224, 'english', 'Enter listing address', 'Enter listing address', '2024-07-12 13:08:14', '2024-07-12 13:08:14'),
(1226, 'english', 'Post Code', 'Post Code', '2024-07-12 13:08:14', '2024-07-12 13:08:14'),
(1228, 'english', 'Enter post code', 'Enter post code', '2024-07-12 13:08:14', '2024-07-12 13:08:14'),
(1230, 'english', 'Latitude', 'Latitude', '2024-07-12 13:08:14', '2024-07-12 13:08:14'),
(1232, 'english', 'Enter Latitude code', 'Enter Latitude code', '2024-07-12 13:08:14', '2024-07-12 13:08:14'),
(1234, 'english', 'Longitude', 'Longitude', '2024-07-12 13:08:14', '2024-07-12 13:08:14'),
(1236, 'english', 'Enter longitude code', 'Enter longitude code', '2024-07-12 13:08:14', '2024-07-12 13:08:14'),
(1238, 'english', 'Meta Title', 'Meta Title', '2024-07-12 13:08:14', '2024-07-12 13:08:14'),
(1240, 'english', 'Enter meta title', 'Enter meta title', '2024-07-12 13:08:14', '2024-07-12 13:08:14'),
(1242, 'english', 'Meta keywords', 'Meta keywords', '2024-07-12 13:08:14', '2024-07-12 13:08:14'),
(1244, 'english', 'Keyword1; keyword2; keyword3;', 'Keyword1; keyword2; keyword3;', '2024-07-12 13:08:14', '2024-07-12 13:08:14'),
(1246, 'english', 'Meta Description', 'Meta Description', '2024-07-12 13:08:14', '2024-07-12 13:08:14'),
(1248, 'english', 'Enter meta description', 'Enter meta description', '2024-07-12 13:08:14', '2024-07-12 13:08:14'),
(1250, 'english', 'OG title', 'OG title', '2024-07-12 13:08:14', '2024-07-12 13:08:14'),
(1252, 'english', 'Enter og title', 'Enter og title', '2024-07-12 13:08:14', '2024-07-12 13:08:14'),
(1254, 'english', 'Canonical URL', 'Canonical URL', '2024-07-12 13:08:14', '2024-07-12 13:08:14'),
(1256, 'english', 'Enter canonical URL', 'Enter canonical URL', '2024-07-12 13:08:14', '2024-07-12 13:08:14'),
(1258, 'english', 'OG Description', 'OG Description', '2024-07-12 13:08:14', '2024-07-12 13:08:14'),
(1260, 'english', 'Json ID', 'Json ID', '2024-07-12 13:08:14', '2024-07-12 13:08:14'),
(1262, 'english', 'Enter json ID', 'Enter json ID', '2024-07-12 13:08:14', '2024-07-12 13:08:14'),
(1264, 'english', 'OG Image', 'OG Image', '2024-07-12 13:08:14', '2024-07-12 13:08:14'),
(1266, 'english', 'Listing Images', 'Listing Images', '2024-07-12 13:08:14', '2024-07-12 13:08:14'),
(1268, 'english', 'Click to upload SVG, PNG, JPG, or GIF', 'Click to upload SVG, PNG, JPG, or GIF', '2024-07-12 13:08:14', '2024-07-12 13:08:14'),
(1270, 'english', 'Visible', 'Visible', '2024-07-14 07:03:19', '2024-07-14 07:03:19'),
(1272, 'english', 'Preview Video', 'Preview Video', '2024-07-14 07:03:21', '2024-07-14 07:03:21'),
(1274, 'english', 'Enter youtube link', 'Enter youtube link', '2024-07-14 07:03:21', '2024-07-14 07:03:21'),
(1276, 'english', 'Beauty Listings', 'Beauty Listings', '2024-07-14 10:38:12', '2024-07-14 10:38:12'),
(1278, 'english', 'Listing', 'Listing', '2024-07-14 10:40:23', '2024-07-14 10:40:23'),
(1280, 'english', 'Car Listings', 'Car Listings', '2024-07-14 10:43:35', '2024-07-14 10:43:35'),
(1282, 'english', 'Hotel Listings', 'Hotel Listings', '2024-07-14 10:43:38', '2024-07-14 10:43:38'),
(1284, 'english', 'Real Estate Listings', 'Real Estate Listings', '2024-07-14 10:43:44', '2024-07-14 10:43:44'),
(1286, 'english', 'Restaurant Listings', 'Restaurant Listings', '2024-07-14 10:43:48', '2024-07-14 10:43:48'),
(1288, 'english', 'Listing List', 'Listing List', '2024-07-14 10:57:32', '2024-07-14 10:57:32'),
(1290, 'english', 'Lists', 'Lists', '2024-07-14 10:57:32', '2024-07-14 10:57:32'),
(1292, 'english', 'Add New Listing', 'Add New Listing', '2024-07-14 10:57:32', '2024-07-14 10:57:32'),
(1294, 'english', 'Change visibility', 'Change visibility', '2024-07-14 10:57:32', '2024-07-14 10:57:32'),
(1296, 'english', 'Update Listing', 'Update Listing', '2024-07-14 11:00:10', '2024-07-14 11:00:10'),
(1298, 'english', 'Listing Update', 'Listing Update', '2024-07-14 11:00:10', '2024-07-14 11:00:10'),
(1300, 'english', 'Services', 'Services', '2024-07-14 11:00:10', '2024-07-14 11:00:10'),
(1302, 'english', 'Opening Time', 'Opening Time', '2024-07-14 11:00:10', '2024-07-14 11:00:10'),
(1304, 'english', 'Team Members', 'Team Members', '2024-07-14 11:00:10', '2024-07-14 11:00:10'),
(1306, 'english', 'Add some listing service', 'Add some listing service', '2024-07-14 11:00:10', '2024-07-14 11:00:10'),
(1308, 'english', 'Add New Service', 'Add New Service', '2024-07-14 11:00:10', '2024-07-14 11:00:10'),
(1310, 'english', 'Add Service', 'Add Service', '2024-07-14 11:00:10', '2024-07-14 11:00:10'),
(1312, 'english', 'From', 'From', '2024-07-14 11:00:10', '2024-07-14 11:00:10'),
(1314, 'english', 'Opening', 'Opening', '2024-07-14 11:00:10', '2024-07-14 11:00:10'),
(1316, 'english', 'Closed', 'Closed', '2024-07-14 11:00:10', '2024-07-14 11:00:10'),
(1318, 'english', 'Select some team members', 'Select some team members', '2024-07-14 11:00:10', '2024-07-14 11:00:10'),
(1320, 'english', 'Add Team Member', 'Add Team Member', '2024-07-14 11:00:10', '2024-07-14 11:00:10'),
(1322, 'english', 'Add Team', 'Add Team', '2024-07-14 11:00:10', '2024-07-14 11:00:10'),
(1324, 'english', 'Amenities', 'Amenities', '2024-07-14 11:32:56', '2024-07-14 11:32:56'),
(1326, 'english', 'Add', 'Add', '2024-07-14 11:32:56', '2024-07-14 11:32:56'),
(1328, 'english', 'Cylinder', 'Cylinder', '2024-07-14 11:32:56', '2024-07-14 11:32:56'),
(1330, 'english', 'Engine Size', 'Engine Size', '2024-07-14 11:32:56', '2024-07-14 11:32:56'),
(1332, 'english', 'Amenities List', 'Amenities List', '2024-07-14 11:32:56', '2024-07-14 11:32:56'),
(1334, 'english', 'Name', 'Name', '2024-07-14 11:32:56', '2024-07-14 11:32:56'),
(1336, 'english', 'Icon', 'Icon', '2024-07-14 11:32:56', '2024-07-14 11:32:56'),
(1338, 'english', 'Update Amenities', 'Update Amenities', '2024-07-14 11:32:56', '2024-07-14 11:32:56'),
(1340, 'english', 'Location', 'Location', '2024-07-15 09:48:10', '2024-07-15 09:48:10'),
(1342, 'english', 'Map Position', 'Map Position', '2024-07-16 10:38:48', '2024-07-16 10:38:48'),
(1344, 'english', 'Right Sidebar', 'Right Sidebar', '2024-07-16 10:38:48', '2024-07-16 10:38:48'),
(1346, 'english', 'Top Header', 'Top Header', '2024-07-16 10:38:48', '2024-07-16 10:38:48'),
(1348, 'english', 'Showing', 'Showing', '2024-07-16 10:53:11', '2024-07-16 10:53:11'),
(1350, 'english', 'of', 'of', '2024-07-16 10:53:11', '2024-07-16 10:53:11'),
(1352, 'english', 'results', 'results', '2024-07-16 10:53:25', '2024-07-16 10:53:25'),
(1354, 'english', 'Map', 'Map', '2024-07-16 12:31:57', '2024-07-16 12:31:57'),
(1356, 'english', 'Features', 'Features', '2024-07-17 08:30:30', '2024-07-17 08:30:30'),
(1358, 'english', 'Specification', 'Specification', '2024-07-17 08:30:30', '2024-07-17 08:30:30'),
(1360, 'english', 'Add some listing features', 'Add some listing features', '2024-07-17 08:30:30', '2024-07-17 08:30:30'),
(1362, 'english', 'Add New Feature', 'Add New Feature', '2024-07-17 08:30:30', '2024-07-17 08:30:30'),
(1364, 'english', 'Add Feature', 'Add Feature', '2024-07-17 08:30:30', '2024-07-17 08:30:30'),
(1366, 'english', 'Update Feature', 'Update Feature', '2024-07-17 08:30:30', '2024-07-17 08:30:30'),
(1368, 'english', 'Add New Sub Feature', 'Add New Sub Feature', '2024-07-17 08:30:30', '2024-07-17 08:30:30'),
(1370, 'english', 'Add some listing specification', 'Add some listing specification', '2024-07-17 08:30:30', '2024-07-17 08:30:30'),
(1372, 'english', 'Add New Specification', 'Add New Specification', '2024-07-17 08:30:30', '2024-07-17 08:30:30'),
(1374, 'english', 'Add Specification', 'Add Specification', '2024-07-17 08:30:30', '2024-07-17 08:30:30'),
(1376, 'english', 'Enter listing sub title', 'Enter listing sub title', '2024-07-17 08:33:52', '2024-07-17 08:33:52'),
(1378, 'english', 'Listing Update successfully!', 'Listing Update successfully!', '2024-07-17 08:34:21', '2024-07-17 08:34:21'),
(1380, 'english', 'Update Specification', 'Update Specification', '2024-07-17 08:34:42', '2024-07-17 08:34:42'),
(1382, 'english', 'Add New Sub Specification', 'Add New Sub Specification', '2024-07-17 08:34:42', '2024-07-17 08:34:42'),
(1384, 'english', 'City Lists', 'City Lists', '2024-07-17 08:36:01', '2024-07-17 08:36:01'),
(1386, 'english', 'Add New City', 'Add New City', '2024-07-17 08:36:01', '2024-07-17 08:36:01'),
(1388, 'english', 'City Name', 'City Name', '2024-07-17 08:36:01', '2024-07-17 08:36:01'),
(1390, 'english', 'Edit City', 'Edit City', '2024-07-17 08:36:01', '2024-07-17 08:36:01');
INSERT INTO `languages` (`id`, `name`, `phrase`, `translated`, `created_at`, `updated_at`) VALUES
(1392, 'english', 'Listing price', 'Listing price', '2024-07-18 05:34:24', '2024-07-18 05:34:24'),
(1394, 'english', 'Enter listing price', 'Enter listing price', '2024-07-18 05:34:24', '2024-07-18 05:34:24'),
(1396, 'english', 'Bed number', 'Bed number', '2024-07-18 05:34:24', '2024-07-18 05:34:24'),
(1398, 'english', 'Enter bed number', 'Enter bed number', '2024-07-18 05:34:24', '2024-07-18 05:34:24'),
(1400, 'english', 'bath number', 'bath number', '2024-07-18 05:34:24', '2024-07-18 05:34:24'),
(1402, 'english', 'Enter bath number', 'Enter bath number', '2024-07-18 05:34:24', '2024-07-18 05:34:24'),
(1404, 'english', 'Floor Size', 'Floor Size', '2024-07-18 05:34:24', '2024-07-18 05:34:24'),
(1406, 'english', 'Enter floor size', 'Enter floor size', '2024-07-18 05:34:24', '2024-07-18 05:34:24'),
(1408, 'english', 'Dimension', 'Dimension', '2024-07-18 05:34:24', '2024-07-18 05:34:24'),
(1410, 'english', 'Enter property dimension', 'Enter property dimension', '2024-07-18 05:34:24', '2024-07-18 05:34:24'),
(1412, 'english', 'Write your description', 'Write your description', '2024-07-18 05:34:24', '2024-07-18 05:34:24'),
(1414, 'english', 'Listing Created successfully!', 'Listing Created successfully!', '2024-07-18 05:35:28', '2024-07-18 05:35:28'),
(1416, 'english', 'Rooms', 'Rooms', '2024-07-18 05:53:09', '2024-07-18 05:53:09'),
(1418, 'english', 'Garage', 'Garage', '2024-07-18 05:53:09', '2024-07-18 05:53:09'),
(1420, 'english', 'Add some listing feature', 'Add some listing feature', '2024-07-18 05:53:09', '2024-07-18 05:53:09'),
(1422, 'english', 'Add some room', 'Add some room', '2024-07-18 05:53:10', '2024-07-18 05:53:10'),
(1424, 'english', 'Add New Room', 'Add New Room', '2024-07-18 05:53:10', '2024-07-18 05:53:10'),
(1426, 'english', 'Add Room', 'Add Room', '2024-07-18 05:53:10', '2024-07-18 05:53:10'),
(1428, 'english', 'More', 'More', '2024-07-18 06:23:17', '2024-07-18 06:23:17'),
(1430, 'english', 'See Details', 'See Details', '2024-07-18 06:34:13', '2024-07-18 06:34:13'),
(1432, 'english', 'night', 'night', '2024-07-18 06:34:13', '2024-07-18 06:34:13'),
(1434, 'english', 'Listings on Map', 'Listings on Map', '2024-07-18 06:35:16', '2024-07-18 06:35:16'),
(1436, 'english', 'Bed', 'Bed', '2024-07-18 07:50:23', '2024-07-18 07:50:23'),
(1438, 'english', 'Bath', 'Bath', '2024-07-18 07:50:23', '2024-07-18 07:50:23'),
(1440, 'english', 'sqft', 'sqft', '2024-07-18 07:50:23', '2024-07-18 07:50:23'),
(1442, 'english', 'Restaurant Listings', 'Restaurant Listings', '2024-07-25 11:18:26', '2024-07-25 11:18:26'),
(1444, 'english', 'Add New Package', 'Add New Package', '2024-07-29 07:02:10', '2024-07-29 07:02:10'),
(1446, 'english', 'Period', 'Period', '2024-07-29 07:02:10', '2024-07-29 07:02:10'),
(1448, 'english', 'listing Amount', 'listing Amount', '2024-07-29 07:02:10', '2024-07-29 07:02:10'),
(1450, 'english', 'Category Amount', 'Category Amount', '2024-07-29 07:02:10', '2024-07-29 07:02:10'),
(1452, 'english', 'Feature', 'Feature', '2024-07-29 07:02:10', '2024-07-29 07:02:10'),
(1454, 'english', 'Contact', 'Contact', '2024-07-29 07:02:10', '2024-07-29 07:02:10'),
(1456, 'english', 'Video', 'Video', '2024-07-29 07:02:10', '2024-07-29 07:02:10'),
(1458, 'english', 'Choice', 'Choice', '2024-07-29 07:02:10', '2024-07-29 07:02:10'),
(1460, 'english', 'Update Package', 'Update Package', '2024-07-29 07:02:10', '2024-07-29 07:02:10'),
(1462, 'english', 'Best Choice', 'Best Choice', '2024-07-29 07:02:10', '2024-07-29 07:02:10'),
(1464, 'english', 'Menu', 'Menu', '2024-07-29 10:20:08', '2024-07-29 10:20:08'),
(1466, 'english', 'Add some menu for restaurant', 'Add some menu for restaurant', '2024-07-29 10:20:08', '2024-07-29 10:20:08'),
(1468, 'english', 'Add New Menu', 'Add New Menu', '2024-07-29 10:20:08', '2024-07-29 10:20:08'),
(1470, 'english', 'Add menu', 'Add menu', '2024-07-29 10:20:08', '2024-07-29 10:20:08'),
(1472, 'english', 'Update Menu', 'Update Menu', '2024-07-29 10:20:08', '2024-07-29 10:20:08'),
(1474, 'english', 'Menu title', 'Menu title', '2024-07-29 10:20:16', '2024-07-29 10:20:16'),
(1476, 'english', 'Enter menu title', 'Enter menu title', '2024-07-29 10:20:16', '2024-07-29 10:20:16'),
(1478, 'english', 'Menu Sub title', 'Menu Sub title', '2024-07-29 10:20:16', '2024-07-29 10:20:16'),
(1480, 'english', 'Enter sub title', 'Enter sub title', '2024-07-29 10:20:16', '2024-07-29 10:20:16'),
(1482, 'english', 'Menu price', 'Menu price', '2024-07-29 10:20:16', '2024-07-29 10:20:16'),
(1484, 'english', 'Enter menu price', 'Enter menu price', '2024-07-29 10:20:16', '2024-07-29 10:20:16'),
(1486, 'english', 'Menu discount price', 'Menu discount price', '2024-07-29 10:20:17', '2024-07-29 10:20:17'),
(1488, 'english', 'Enter menu discount price', 'Enter menu discount price', '2024-07-29 10:20:17', '2024-07-29 10:20:17'),
(1490, 'english', 'Specification value', 'Specification value', '2024-07-29 10:20:17', '2024-07-29 10:20:17'),
(1492, 'english', 'Listing menu create successful!', 'Listing menu create successful!', '2024-07-29 10:20:40', '2024-07-29 10:20:40'),
(1494, 'english', 'Amenities Create', 'Amenities Create', '2024-07-29 10:25:59', '2024-07-29 10:25:59'),
(1496, 'english', 'Amenities Name', 'Amenities Name', '2024-07-29 10:26:15', '2024-07-29 10:26:15'),
(1498, 'english', 'Amenities icon', 'Amenities icon', '2024-07-29 10:26:15', '2024-07-29 10:26:15'),
(1500, 'english', 'Pick an Icon', 'Pick an Icon', '2024-07-29 10:26:15', '2024-07-29 10:26:15'),
(1502, 'english', 'Amenities Created Successful!', 'Amenities Created Successful!', '2024-07-29 10:26:25', '2024-07-29 10:26:25'),
(1504, 'english', 'Add some feature for restaurant', 'Add some feature for restaurant', '2024-07-29 10:32:38', '2024-07-29 10:32:38'),
(1506, 'english', 'Sub Dimension', 'Sub Dimension', '2024-07-29 10:33:54', '2024-07-29 10:33:54'),
(1508, 'english', 'Enter property sub dimension', 'Enter property sub dimension', '2024-07-29 10:33:54', '2024-07-29 10:33:54'),
(1510, 'english', 'Add some feature', 'Add some feature', '2024-07-29 10:33:56', '2024-07-29 10:33:56'),
(1512, 'english', 'Floor Plan', 'Floor Plan', '2024-07-29 10:33:56', '2024-07-29 10:33:56'),
(1514, 'english', 'Listing feature create successful!', 'Listing feature create successful!', '2024-07-29 10:36:29', '2024-07-29 10:36:29'),
(1516, 'english', 'Categories', 'Categories', '2024-07-30 08:06:19', '2024-07-30 08:06:19'),
(1518, 'english', 'Category Create', 'Category Create', '2024-07-30 08:06:19', '2024-07-30 08:06:19'),
(1520, 'english', 'Add New Category', 'Add New Category', '2024-07-30 08:06:19', '2024-07-30 08:06:19'),
(1522, 'english', 'Parent', 'Parent', '2024-07-30 08:06:19', '2024-07-30 08:06:19'),
(1524, 'english', 'Type', 'Type', '2024-07-30 08:06:19', '2024-07-30 08:06:19'),
(1526, 'english', 'Edit Category', 'Edit Category', '2024-07-30 08:06:19', '2024-07-30 08:06:19'),
(1528, 'english', 'Add New agent', 'Add New agent', '2024-07-30 08:16:42', '2024-07-30 08:16:42'),
(1530, 'english', 'No data found', 'No data found', '2024-07-30 08:16:42', '2024-07-30 08:16:42'),
(1532, 'english', 'Pending', 'Pending', '2024-07-30 08:17:50', '2024-07-30 08:17:50'),
(1534, 'english', 'Add Blog', 'Add Blog', '2024-07-30 08:17:53', '2024-07-30 08:17:53'),
(1536, 'english', 'back', 'back', '2024-07-30 08:17:53', '2024-07-30 08:17:53'),
(1538, 'english', 'Blog Title', 'Blog Title', '2024-07-30 08:17:53', '2024-07-30 08:17:53'),
(1540, 'english', 'Enter blog title', 'Enter blog title', '2024-07-30 08:17:53', '2024-07-30 08:17:53'),
(1542, 'english', 'Select blog category', 'Select blog category', '2024-07-30 08:17:53', '2024-07-30 08:17:53'),
(1544, 'english', 'Blog Description', 'Blog Description', '2024-07-30 08:17:53', '2024-07-30 08:17:53'),
(1546, 'english', 'Blog Keyword', 'Blog Keyword', '2024-07-30 08:17:53', '2024-07-30 08:17:53'),
(1548, 'english', 'Keyword will be:- keyword1; keyword2; keyword3', 'Keyword will be:- keyword1; keyword2; keyword3', '2024-07-30 08:17:53', '2024-07-30 08:17:53'),
(1550, 'english', 'Blog Banner', 'Blog Banner', '2024-07-30 08:17:53', '2024-07-30 08:17:53'),
(1552, 'english', 'Write Blog description', 'Write Blog description', '2024-07-30 08:17:53', '2024-07-30 08:17:53'),
(1554, 'english', 'Doctor Listings', 'Doctor Listings', '2024-07-30 10:51:51', '2024-07-30 10:51:51'),
(1556, 'english', 'Categories par listing', 'Categories par listing', '2024-07-31 13:00:25', '2024-07-31 13:00:25'),
(1558, 'english', 'Contact Form', 'Contact Form', '2024-07-31 13:02:52', '2024-07-31 13:02:52'),
(1560, 'english', 'Listing Video', 'Listing Video', '2024-07-31 13:03:55', '2024-07-31 13:03:55'),
(1562, 'english', 'Blog Details', 'Blog Details', '2024-08-01 07:55:55', '2024-08-01 07:55:55'),
(1564, 'english', 'Update Blog', 'Update Blog', '2024-08-04 04:39:28', '2024-08-04 04:39:28'),
(1566, 'english', 'Blog Create successfully!', 'Blog Create successfully!', '2024-08-04 04:39:31', '2024-08-04 04:39:31'),
(1568, 'english', 'Status successful!', 'Status successful!', '2024-08-04 04:39:44', '2024-08-04 04:39:44'),
(1570, 'english', 'Read More', 'Read More', '2024-08-04 04:51:14', '2024-08-04 04:51:14'),
(1572, 'english', 'Search', 'Search', '2024-08-04 05:06:01', '2024-08-04 05:06:01'),
(1574, 'english', 'Resent Post', 'Resent Post', '2024-08-04 14:20:47', '2024-08-04 14:20:47'),
(1576, 'english', 'Listing Details', 'Listing Details', '2024-08-06 07:35:49', '2024-08-06 07:35:49'),
(1578, 'english', 'Related Property', 'Related Property', '2024-08-06 09:50:35', '2024-08-06 09:50:35'),
(1580, 'english', 'Hotel Home Page', 'Hotel Home Page', '2024-09-15 10:35:16', '2024-09-15 10:35:16'),
(1582, 'english', 'Home', 'Home', '2024-09-17 06:42:10', '2024-09-17 06:42:10'),
(1584, 'english', 'Office \n                    Address', 'Office \n                    Address', '2024-09-17 07:24:39', '2024-09-17 07:24:39'),
(1586, 'english', 'Category name', 'Category name', '2024-09-17 09:23:30', '2024-09-17 09:23:30'),
(1588, 'english', 'Category parent', 'Category parent', '2024-09-17 09:23:30', '2024-09-17 09:23:30'),
(1590, 'english', 'Select Category parent', 'Select Category parent', '2024-09-17 09:23:30', '2024-09-17 09:23:30'),
(1592, 'english', 'Enter City Name', 'Enter City Name', '2024-09-17 12:16:28', '2024-09-17 12:16:28'),
(1594, 'english', 'Country Name', 'Country Name', '2024-09-17 12:16:28', '2024-09-17 12:16:28'),
(1596, 'english', 'Select Country Name', 'Select Country Name', '2024-09-17 12:16:28', '2024-09-17 12:16:28'),
(1598, 'english', 'Customer Wishlist', 'Customer Wishlist', '2024-09-18 11:48:25', '2024-09-18 11:48:25'),
(1600, 'english', 'Add New customer', 'Add New customer', '2024-09-21 11:12:57', '2024-09-21 11:12:57'),
(1602, 'english', 'User Created successfully!', 'User Created successfully!', '2024-09-21 11:14:03', '2024-09-21 11:14:03'),
(1604, 'english', 'Email', 'Email', '2024-09-21 11:14:03', '2024-09-21 11:14:03'),
(1606, 'english', 'Edit User', 'Edit User', '2024-09-21 11:14:03', '2024-09-21 11:14:03'),
(1608, 'english', 'Inactive', 'Inactive', '2024-09-21 11:14:03', '2024-09-21 11:14:03'),
(1610, 'english', 'Blocked', 'Blocked', '2024-09-21 11:14:03', '2024-09-21 11:14:03'),
(1612, 'english', 'Enter Category Name', 'Enter Category Name', '2024-09-22 10:56:03', '2024-09-22 10:56:03'),
(1614, 'english', 'Category added successfully!', 'Category added successfully!', '2024-09-22 10:56:15', '2024-09-22 10:56:15'),
(1616, 'english', 'All Category', 'All Category', '2024-09-23 09:55:56', '2024-09-23 09:55:56'),
(1618, 'english', 'Atlas Login', 'Atlas Login', '2024-09-23 10:38:10', '2024-09-23 10:38:10'),
(1620, 'english', 'Password', 'Password', '2024-09-23 10:48:53', '2024-09-23 10:48:53'),
(1622, 'english', 'Forget your password', 'Forget your password', '2024-09-23 10:48:53', '2024-09-23 10:48:53'),
(1624, 'english', 'I agree to the', 'I agree to the', '2024-09-23 10:52:50', '2024-09-23 10:52:50'),
(1626, 'english', 'Terms & Policy', 'Terms & Policy', '2024-09-23 10:52:50', '2024-09-23 10:52:50'),
(1628, 'english', 'Login', 'Login', '2024-09-23 10:55:50', '2024-09-23 10:55:50'),
(1630, 'english', 'Don\'t an account', 'Don\'t an account', '2024-09-23 10:55:50', '2024-09-23 10:55:50'),
(1632, 'english', 'Sign up', 'Sign up', '2024-09-23 10:55:50', '2024-09-23 10:55:50'),
(1634, 'english', 'Get Started Now', 'Get Started Now', '2024-09-23 11:19:16', '2024-09-23 11:19:16'),
(1636, 'english', 'Enter your credentials to access your account', 'Enter your credentials to access your account', '2024-09-23 11:19:16', '2024-09-23 11:19:16'),
(1638, 'english', 'Register', 'Register', '2024-09-23 11:22:39', '2024-09-23 11:22:39'),
(1640, 'english', 'Logout', 'Logout', '2024-09-23 11:51:20', '2024-09-23 11:51:20'),
(1642, 'english', 'Forget Password', 'Forget Password', '2024-09-23 12:13:10', '2024-09-23 12:13:10'),
(1644, 'english', 'Enter your email address to receive a verification  code', 'Enter your email address to receive a verification  code', '2024-09-23 12:13:10', '2024-09-23 12:13:10'),
(1646, 'english', 'Send', 'Send', '2024-09-23 12:13:10', '2024-09-23 12:13:10'),
(1648, 'english', 'Member', 'Member', '2024-09-24 06:35:25', '2024-09-24 06:35:25'),
(1650, 'english', 'Team Member', 'Team Member', '2024-09-24 06:35:25', '2024-09-24 06:35:25'),
(1652, 'english', 'Service', 'Service', '2024-09-24 06:35:25', '2024-09-24 06:35:25'),
(1654, 'english', 'Designation', 'Designation', '2024-09-24 06:35:25', '2024-09-24 06:35:25'),
(1656, 'english', 'Rating', 'Rating', '2024-09-24 06:35:25', '2024-09-24 06:35:25'),
(1658, 'english', 'Enter team member name', 'Enter team member name', '2024-09-24 06:35:28', '2024-09-24 06:35:28'),
(1660, 'english', 'Enter team member designation', 'Enter team member designation', '2024-09-24 06:35:28', '2024-09-24 06:35:28'),
(1662, 'english', 'Select rating', 'Select rating', '2024-09-24 06:35:28', '2024-09-24 06:35:28'),
(1664, 'english', '1.0', '1.0', '2024-09-24 06:35:28', '2024-09-24 06:35:28'),
(1666, 'english', '2.0', '2.0', '2024-09-24 06:35:28', '2024-09-24 06:35:28'),
(1668, 'english', '3.0', '3.0', '2024-09-24 06:35:28', '2024-09-24 06:35:28'),
(1670, 'english', '4.0', '4.0', '2024-09-24 06:35:28', '2024-09-24 06:35:28'),
(1672, 'english', '5.0', '5.0', '2024-09-24 06:35:28', '2024-09-24 06:35:28'),
(1674, 'english', 'Price List', 'Price List', '2024-09-24 07:12:36', '2024-09-24 07:12:36'),
(1676, 'english', 'Package name', 'Package name', '2024-09-24 07:12:40', '2024-09-24 07:12:40'),
(1678, 'english', 'Enter package name', 'Enter package name', '2024-09-24 07:12:40', '2024-09-24 07:12:40'),
(1680, 'english', 'Package sub title', 'Package sub title', '2024-09-24 07:12:40', '2024-09-24 07:12:40'),
(1682, 'english', 'Package Price', 'Package Price', '2024-09-24 07:12:40', '2024-09-24 07:12:40'),
(1684, 'english', 'Enter price', 'Enter price', '2024-09-24 07:12:40', '2024-09-24 07:12:40'),
(1686, 'english', 'Package Period', 'Package Period', '2024-09-24 07:12:40', '2024-09-24 07:12:40'),
(1688, 'english', 'Monthly', 'Monthly', '2024-09-24 07:12:40', '2024-09-24 07:12:40'),
(1690, 'english', 'Semi Annually', 'Semi Annually', '2024-09-24 07:12:40', '2024-09-24 07:12:40'),
(1692, 'english', 'Annually', 'Annually', '2024-09-24 07:12:40', '2024-09-24 07:12:40'),
(1694, 'english', 'Listing Number', 'Listing Number', '2024-09-24 07:12:40', '2024-09-24 07:12:40'),
(1696, 'english', 'Enter listing number', 'Enter listing number', '2024-09-24 07:12:40', '2024-09-24 07:12:40'),
(1698, 'english', 'Category Number', 'Category Number', '2024-09-24 07:12:40', '2024-09-24 07:12:40'),
(1700, 'english', 'Enter category number', 'Enter category number', '2024-09-24 07:12:40', '2024-09-24 07:12:40'),
(1702, 'english', 'Featured Listings', 'Featured Listings', '2024-09-24 07:12:40', '2024-09-24 07:12:40'),
(1704, 'english', 'Unavailable', 'Unavailable', '2024-09-24 07:12:40', '2024-09-24 07:12:40'),
(1706, 'english', 'Available', 'Available', '2024-09-24 07:12:40', '2024-09-24 07:12:40'),
(1708, 'english', 'Listings Video', 'Listings Video', '2024-09-24 07:12:40', '2024-09-24 07:12:40'),
(1710, 'english', 'No', 'No', '2024-09-24 07:12:40', '2024-09-24 07:12:40'),
(1712, 'english', 'Yes', 'Yes', '2024-09-24 07:12:40', '2024-09-24 07:12:40'),
(1714, 'english', 'Package List', 'Package List', '2024-09-24 07:13:07', '2024-09-24 07:13:07'),
(1716, 'english', 'Add New doctor', 'Add New doctor', '2024-09-24 07:14:00', '2024-09-24 07:14:00'),
(1718, 'english', 'Blog Categories', 'Blog Categories', '2024-09-24 07:28:44', '2024-09-24 07:28:44'),
(1720, 'english', 'Blog Category Create', 'Blog Category Create', '2024-09-24 07:28:44', '2024-09-24 07:28:44'),
(1722, 'english', 'Number Blogs', 'Number Blogs', '2024-09-24 07:28:44', '2024-09-24 07:28:44'),
(1724, 'english', 'Total number of blogs : 0', 'Total number of blogs : 0', '2024-09-24 07:28:44', '2024-09-24 07:28:44'),
(1726, 'english', 'Profile Update successfully!', 'Profile Update successfully!', '2024-09-24 07:52:16', '2024-09-24 07:52:16'),
(1728, 'english', 'Customer Booking', 'Customer Booking', '2024-09-24 09:46:38', '2024-09-24 09:46:38'),
(1730, 'english', 'Agent Bookings', 'Agent Bookings', '2024-09-24 10:26:34', '2024-09-24 10:26:34'),
(1732, 'english', 'Agent Listings', 'Agent Listings', '2024-09-24 10:39:20', '2024-09-24 10:39:20'),
(1734, 'english', 'Subscriptions', 'Subscriptions', '2024-09-26 12:34:52', '2024-09-26 12:34:52'),
(1736, 'english', 'List of subscriptions', 'List of subscriptions', '2024-09-26 12:35:00', '2024-09-26 12:35:00'),
(1738, 'english', 'Buyer', 'Buyer', '2024-09-28 11:19:38', '2024-09-28 11:19:38'),
(1740, 'english', 'Package', 'Package', '2024-09-28 11:19:38', '2024-09-28 11:19:38'),
(1742, 'english', 'Amount Paid', 'Amount Paid', '2024-09-28 11:19:38', '2024-09-28 11:19:38'),
(1744, 'english', 'Reported Listings', 'Reported Listings', '2024-09-29 12:40:49', '2024-09-29 12:40:49'),
(1746, 'english', 'City Update successfully!', 'City Update successfully!', '2024-10-02 07:14:40', '2024-10-02 07:14:40'),
(1748, 'english', 'Edit Country', 'Edit Country', '2024-10-02 07:52:28', '2024-10-02 07:52:28'),
(1750, 'english', 'Choose country thumbnail', 'Choose country thumbnail', '2024-10-02 07:53:55', '2024-10-02 07:53:55'),
(1752, 'english', 'optional', 'optional', '2024-10-02 07:53:55', '2024-10-02 07:53:55'),
(1754, 'english', 'Country thumbnail update successfully!', 'Country thumbnail update successfully!', '2024-10-02 08:03:48', '2024-10-02 08:03:48'),
(1756, 'english', 'About', 'About', '2024-10-02 11:17:34', '2024-10-02 11:17:34'),
(1758, 'english', 'Not found', 'Not found', '2024-10-02 11:17:38', '2024-10-02 11:17:38'),
(1760, 'english', 'About This Application', 'About This Application', '2024-10-02 11:17:38', '2024-10-02 11:17:38'),
(1762, 'english', 'Software version', 'Software version', '2024-10-02 11:17:38', '2024-10-02 11:17:38'),
(1764, 'english', 'Laravel version', 'Laravel version', '2024-10-02 11:17:38', '2024-10-02 11:17:38'),
(1766, 'english', 'Check update', 'Check update', '2024-10-02 11:17:38', '2024-10-02 11:17:38'),
(1768, 'english', 'Php version', 'Php version', '2024-10-02 11:17:38', '2024-10-02 11:17:38'),
(1770, 'english', 'Curl enable', 'Curl enable', '2024-10-02 11:17:38', '2024-10-02 11:17:38'),
(1772, 'english', 'enabled', 'enabled', '2024-10-02 11:17:38', '2024-10-02 11:17:38'),
(1774, 'english', 'Product license', 'Product license', '2024-10-02 11:17:38', '2024-10-02 11:17:38'),
(1776, 'english', 'Enter valid purchase code', 'Enter valid purchase code', '2024-10-02 11:18:53', '2024-10-02 11:18:53'),
(1778, 'english', 'Customer support status', 'Customer support status', '2024-10-02 11:18:53', '2024-10-02 11:18:53'),
(1780, 'english', 'Support expiry date', 'Support expiry date', '2024-10-02 11:18:53', '2024-10-02 11:18:53'),
(1782, 'english', 'Customer name', 'Customer name', '2024-10-02 11:18:53', '2024-10-02 11:18:53'),
(1784, 'english', 'Get customer support', 'Get customer support', '2024-10-02 11:18:53', '2024-10-02 11:18:53'),
(1786, 'english', 'Customer support', 'Customer support', '2024-10-02 11:18:53', '2024-10-02 11:18:53'),
(1788, 'english', 'SEO Settings', 'SEO Settings', '2024-10-02 11:51:51', '2024-10-02 11:51:51'),
(1790, 'english', 'Manage SEO Settings', 'Manage SEO Settings', '2024-10-02 11:51:56', '2024-10-02 11:51:56'),
(1792, 'english', 'Writing your keyword and hit the enter', 'Writing your keyword and hit the enter', '2024-10-02 11:51:56', '2024-10-02 11:51:56'),
(1794, 'english', 'Meta Robot', 'Meta Robot', '2024-10-02 11:51:56', '2024-10-02 11:51:56'),
(1796, 'english', ' Canonical Url', ' Canonical Url', '2024-10-02 11:51:56', '2024-10-02 11:51:56'),
(1798, 'english', ' Custom Url', ' Custom Url', '2024-10-02 11:51:56', '2024-10-02 11:51:56'),
(1800, 'english', 'Submit', 'Submit', '2024-10-02 11:51:56', '2024-10-02 11:51:56'),
(1802, 'english', 'Enter your keywords', 'Enter your keywords', '2024-10-02 12:15:47', '2024-10-02 12:15:47'),
(1804, 'english', 'Amenities Updated Successful!', 'Amenities Updated Successful!', '2024-10-14 08:06:53', '2024-10-14 08:06:53'),
(1806, 'english', 'Listing sub title', 'Listing sub title', '2024-10-14 08:09:25', '2024-10-14 08:09:25'),
(1808, 'english', 'Payment', 'Payment', '2024-10-14 11:11:17', '2024-10-14 11:11:17'),
(1810, 'english', 'Payment Gateways List', 'Payment Gateways List', '2024-10-14 11:11:17', '2024-10-14 11:11:17'),
(1812, 'english', 'Currency', 'Currency', '2024-10-14 11:13:49', '2024-10-14 11:13:49'),
(1814, 'english', 'Change Status', 'Change Status', '2024-10-14 11:34:27', '2024-10-14 11:34:27'),
(1816, 'english', 'Status Changed successfully!', 'Status Changed successfully!', '2024-10-14 11:35:35', '2024-10-14 11:35:35'),
(1818, 'english', 'Credentials Update', 'Credentials Update', '2024-10-14 11:49:38', '2024-10-14 11:49:38'),
(1820, 'english', 'Payment currency', 'Payment currency', '2024-10-14 12:33:28', '2024-10-14 12:33:28'),
(1822, 'english', 'Public Key', 'Public Key', '2024-10-14 12:33:28', '2024-10-14 12:33:28'),
(1824, 'english', 'Secret Key', 'Secret Key', '2024-10-14 12:36:13', '2024-10-14 12:36:13'),
(1826, 'english', 'Public Live Key', 'Public Live Key', '2024-10-14 12:36:13', '2024-10-14 12:36:13'),
(1828, 'english', 'Package create successfully!', 'Package create successfully!', '2024-10-15 05:53:30', '2024-10-15 05:53:30'),
(1830, 'english', 'Listing Feature', 'Listing Feature', '2024-10-15 05:55:20', '2024-10-15 05:55:20'),
(1832, 'english', 'Package delete successfully!', 'Package delete successfully!', '2024-10-15 05:56:09', '2024-10-15 05:56:09'),
(1834, 'english', 'Payment credentials update successfully!', 'Payment credentials update successfully!', '2024-10-15 06:17:12', '2024-10-15 06:17:12'),
(1836, 'english', 'Try Now', 'Try Now', '2024-10-15 06:24:01', '2024-10-15 06:24:01'),
(1838, 'english', 'Order summary', 'Order summary', '2024-10-15 06:58:21', '2024-10-15 06:58:21'),
(1840, 'english', 'Cancel Payment', 'Cancel Payment', '2024-10-15 07:14:30', '2024-10-15 07:14:30'),
(1842, 'english', 'Select payment gateway', 'Select payment gateway', '2024-10-15 07:14:30', '2024-10-15 07:14:30'),
(1844, 'english', 'Item List', 'Item List', '2024-10-15 07:15:12', '2024-10-15 07:15:12'),
(1846, 'english', 'Total', 'Total', '2024-10-15 07:20:36', '2024-10-15 07:20:36'),
(1848, 'english', 'Grand Total', 'Grand Total', '2024-10-15 07:20:36', '2024-10-15 07:20:36'),
(1850, 'english', 'Package Details', 'Package Details', '2024-10-15 07:27:03', '2024-10-15 07:27:03'),
(1852, 'english', 'Subscription successfully!', 'Subscription successfully!', '2024-10-15 09:25:27', '2024-10-15 09:25:27'),
(1854, 'english', 'Current Package', 'Current Package', '2024-10-15 09:31:14', '2024-10-15 09:31:14'),
(1856, 'english', 'Become an agent', 'Become an agent', '2024-10-15 11:10:46', '2024-10-15 11:10:46'),
(1858, 'english', 'My Agent Panel', 'My Agent Panel', '2024-10-16 07:46:01', '2024-10-16 07:46:01'),
(1860, 'english', 'My Listing', 'My Listing', '2024-10-16 07:46:01', '2024-10-16 07:46:01'),
(1862, 'english', 'Listing Create Form', 'Listing Create Form', '2024-10-16 09:46:51', '2024-10-16 09:46:51'),
(1864, 'english', 'Hide', 'Hide', '2024-10-17 10:52:24', '2024-10-17 10:52:24'),
(1866, 'english', 'Edit Listing', 'Edit Listing', '2024-10-17 10:53:16', '2024-10-17 10:53:16'),
(1868, 'english', 'Remove Listing', 'Remove Listing', '2024-10-17 10:53:16', '2024-10-17 10:53:16'),
(1870, 'english', 'Upload Product Image', 'Upload Product Image', '2024-10-20 04:45:59', '2024-10-20 04:45:59'),
(1872, 'english', 'Listing deleted successfully!', 'Listing deleted successfully!', '2024-10-20 10:11:22', '2024-10-20 10:11:22'),
(1874, 'english', 'Open Time', 'Open Time', '2024-10-21 06:28:50', '2024-10-21 06:28:50'),
(1876, 'english', 'Feature title', 'Feature title', '2024-10-21 11:33:45', '2024-10-21 11:33:45'),
(1878, 'english', 'Enter title', 'Enter title', '2024-10-21 11:33:45', '2024-10-21 11:33:45'),
(1880, 'english', 'Listing feature add successful!', 'Listing feature add successful!', '2024-10-21 11:33:58', '2024-10-21 11:33:58'),
(1882, 'english', 'Specification title', 'Specification title', '2024-10-21 11:34:19', '2024-10-21 11:34:19'),
(1884, 'english', 'Listing specification add successful!', 'Listing specification add successful!', '2024-10-21 11:34:22', '2024-10-21 11:34:22'),
(1886, 'english', 'Listing sub feature add successful!', 'Listing sub feature add successful!', '2024-10-21 11:34:33', '2024-10-21 11:34:33'),
(1888, 'english', 'Enter specification title', 'Enter specification title', '2024-10-21 11:37:41', '2024-10-21 11:37:41'),
(1890, 'english', 'Enter specification value', 'Enter specification value', '2024-10-21 11:37:41', '2024-10-21 11:37:41'),
(1892, 'english', 'Listing feature delete successful!', 'Listing feature delete successful!', '2024-10-22 11:40:17', '2024-10-22 11:40:17'),
(1894, 'english', 'Listing feature update successful!', 'Listing feature update successful!', '2024-10-22 12:14:41', '2024-10-22 12:14:41'),
(1896, 'english', 'Listing specification update successful!', 'Listing specification update successful!', '2024-10-23 06:07:45', '2024-10-23 06:07:45'),
(1898, 'english', 'Listing specification delete successful!', 'Listing specification delete successful!', '2024-10-23 06:07:55', '2024-10-23 06:07:55'),
(1900, 'english', 'Update Sub Specification', 'Update Sub Specification', '2024-10-23 07:21:54', '2024-10-23 07:21:54'),
(1902, 'english', 'Room Title', 'Room Title', '2024-10-27 05:55:09', '2024-10-27 05:55:09'),
(1904, 'english', 'Enter room title', 'Enter room title', '2024-10-27 05:55:09', '2024-10-27 05:55:09'),
(1906, 'english', 'Number of persons', 'Number of persons', '2024-10-27 05:55:09', '2024-10-27 05:55:09'),
(1908, 'english', 'Enter number of person (2 adult, 1 Child)', 'Enter number of person (2 adult, 1 Child)', '2024-10-27 05:55:09', '2024-10-27 05:55:09'),
(1910, 'english', 'Room Price', 'Room Price', '2024-10-27 05:55:09', '2024-10-27 05:55:09'),
(1912, 'english', 'Enter room price', 'Enter room price', '2024-10-27 05:55:09', '2024-10-27 05:55:09'),
(1914, 'english', 'Room Images', 'Room Images', '2024-10-27 05:55:09', '2024-10-27 05:55:09'),
(1916, 'english', 'Hotel room create successful!', 'Hotel room create successful!', '2024-10-27 05:56:26', '2024-10-27 05:56:26'),
(1918, 'english', 'Update Room', 'Update Room', '2024-10-27 07:37:52', '2024-10-27 07:37:52'),
(1920, 'english', 'Listing room delete successful!', 'Listing room delete successful!', '2024-10-27 07:43:32', '2024-10-27 07:43:32'),
(1922, 'english', 'Subscription', 'Subscription', '2024-10-27 12:02:39', '2024-10-27 12:02:39'),
(1924, 'english', 'Listing menu delete successful!', 'Listing menu delete successful!', '2024-10-28 06:26:24', '2024-10-28 06:26:24'),
(1926, 'english', 'Listing menu update successful!', 'Listing menu update successful!', '2024-10-28 06:27:11', '2024-10-28 06:27:11'),
(1928, 'english', 'Expired Subscription', 'Expired Subscription', '2024-10-28 07:16:45', '2024-10-28 07:16:45'),
(1930, 'english', 'Your subscription has expired', 'Your subscription has expired', '2024-10-28 07:16:45', '2024-10-28 07:16:45'),
(1932, 'english', 'Your package has expired, please renew your package', 'Your package has expired, please renew your package', '2024-10-28 07:16:45', '2024-10-28 07:16:45'),
(1934, 'english', 'Renew Subscription', 'Renew Subscription', '2024-10-28 07:16:45', '2024-10-28 07:16:45'),
(1936, 'english', 'Payment Method', 'Payment Method', '2024-10-28 07:16:45', '2024-10-28 07:16:45'),
(1938, 'english', 'Invoicing', 'Invoicing', '2024-10-28 07:19:01', '2024-10-28 07:19:01'),
(1940, 'english', 'Last payment:', 'Last payment:', '2024-10-28 07:19:01', '2024-10-28 07:19:01'),
(1942, 'english', 'Modify Billing Information', 'Modify Billing Information', '2024-10-28 07:20:27', '2024-10-28 07:20:27'),
(1944, 'english', 'Billing History', 'Billing History', '2024-10-28 07:20:27', '2024-10-28 07:20:27'),
(1946, 'english', 'Reference', 'Reference', '2024-10-28 07:20:27', '2024-10-28 07:20:27'),
(1948, 'english', 'Date', 'Date', '2024-10-28 07:20:27', '2024-10-28 07:20:27'),
(1950, 'english', 'Download', 'Download', '2024-10-28 07:20:27', '2024-10-28 07:20:27'),
(1952, 'english', '6', '6', '2024-10-28 07:31:40', '2024-10-28 07:31:40'),
(1954, 'english', 'Naomi Black', 'Naomi Black', '2024-10-28 07:33:15', '2024-10-28 07:33:15'),
(1956, 'english', 'Account', 'Account', '2024-10-28 07:33:15', '2024-10-28 07:33:15'),
(1958, 'english', NULL, NULL, '2024-10-28 07:33:15', '2024-10-28 07:33:15'),
(1960, 'english', 'Plan', 'Plan', '2024-10-28 07:33:15', '2024-10-28 07:33:15'),
(1962, 'english', 'Your current package price is', 'Your current package price is', '2024-10-28 07:33:15', '2024-10-28 07:33:15'),
(1964, 'english', 'It will expired on ', 'It will expired on ', '2024-10-28 07:33:15', '2024-10-28 07:33:15'),
(1970, 'english', 'Agent Subscription', 'Agent Subscription', '2024-10-28 08:04:28', '2024-10-28 08:04:28'),
(1974, 'english', 'semiannually', 'semiannually', '2024-10-28 08:07:23', '2024-10-28 08:07:23'),
(1976, 'english', 'Subscription Renew', 'Subscription Renew', '2024-10-28 09:22:40', '2024-10-28 09:22:40'),
(1978, 'english', 'Billing Information', 'Billing Information', '2024-10-28 09:23:09', '2024-10-28 09:23:09'),
(1980, 'english', 'Lorem Ipsum available but the majority have suffered\r\n                              alteration', 'Lorem Ipsum available but the majority have suffered\r\n                              alteration', '2024-10-28 09:23:09', '2024-10-28 09:23:09'),
(1982, 'english', 'Billing Email', 'Billing Email', '2024-10-28 09:24:09', '2024-10-28 09:24:09'),
(1984, 'english', 'State', 'State', '2024-10-28 09:32:48', '2024-10-28 09:32:48'),
(1986, 'english', 'Save Changes', 'Save Changes', '2024-10-28 09:33:34', '2024-10-28 09:33:34'),
(1988, 'english', 'Panel', 'Panel', '2024-10-28 10:21:38', '2024-10-28 10:21:38'),
(1990, 'english', 'INVOICE', 'INVOICE', '2024-10-28 10:21:38', '2024-10-28 10:21:38'),
(1992, 'english', 'Dear', 'Dear', '2024-10-28 10:21:38', '2024-10-28 10:21:38'),
(1994, 'english', 'Please find below the invoice', 'Please find below the invoice', '2024-10-28 10:21:38', '2024-10-28 10:21:38'),
(1996, 'english', 'Billing Address', 'Billing Address', '2024-10-28 10:21:38', '2024-10-28 10:21:38'),
(1998, 'english', 'Address line', 'Address line', '2024-10-28 10:23:41', '2024-10-28 10:23:41'),
(2000, 'english', 'Paid', 'Paid', '2024-10-28 10:23:41', '2024-10-28 10:23:41'),
(2002, 'english', 'Invoice no', 'Invoice no', '2024-10-28 10:23:41', '2024-10-28 10:23:41'),
(2004, 'english', 'Total Amount', 'Total Amount', '2024-10-28 10:23:41', '2024-10-28 10:23:41'),
(2006, 'english', 'Paid Amount', 'Paid Amount', '2024-10-28 10:23:41', '2024-10-28 10:23:41'),
(2008, 'english', 'Subtotal', 'Subtotal', '2024-10-28 10:27:39', '2024-10-28 10:27:39'),
(2010, 'english', 'Lorem Ipsum available but the majority have suffered\r\n                                alteration', 'Lorem Ipsum available but the majority have suffered\r\n                                alteration', '2024-10-28 10:58:16', '2024-10-28 10:58:16'),
(2012, 'english', 'Profile update', 'Profile update', '2024-10-29 05:30:36', '2024-10-29 05:30:36'),
(2014, 'english', 'Full name', 'Full name', '2024-10-29 05:52:02', '2024-10-29 05:52:02'),
(2016, 'english', 'Phone', 'Phone', '2024-10-29 05:52:53', '2024-10-29 05:52:53'),
(2018, 'english', 'Facebook', 'Facebook', '2024-10-29 05:52:54', '2024-10-29 05:52:54'),
(2020, 'english', 'Twitter', 'Twitter', '2024-10-29 05:52:54', '2024-10-29 05:52:54'),
(2022, 'english', 'Linkedin', 'Linkedin', '2024-10-29 05:52:54', '2024-10-29 05:52:54'),
(2024, 'english', 'Website', 'Website', '2024-10-29 05:52:54', '2024-10-29 05:52:54'),
(2026, 'english', 'Gender', 'Gender', '2024-10-29 05:52:54', '2024-10-29 05:52:54'),
(2028, 'english', 'Other', 'Other', '2024-10-29 05:52:54', '2024-10-29 05:52:54'),
(2030, 'english', 'Bio', 'Bio', '2024-10-29 05:52:54', '2024-10-29 05:52:54'),
(2032, 'english', 'Profile Photo', 'Profile Photo', '2024-10-29 05:52:54', '2024-10-29 05:52:54'),
(2034, 'english', 'Company Logo (160 X 160)', 'Company Logo (160 X 160)', '2024-10-29 05:52:54', '2024-10-29 05:52:54'),
(2036, 'english', 'Old Password', 'Old Password', '2024-10-29 09:19:56', '2024-10-29 09:19:56'),
(2038, 'english', 'Appointment', 'Appointment', '2024-10-29 09:35:35', '2024-10-29 09:35:35'),
(2040, 'english', 'Agent Appontment', 'Agent Appontment', '2024-10-29 09:36:19', '2024-10-29 09:36:19'),
(2042, 'english', 'Agent Appointment', 'Agent Appointment', '2024-10-29 09:36:31', '2024-10-29 09:36:31'),
(2044, 'english', 'Not start yet', 'Not start yet', '2024-10-29 10:32:32', '2024-10-29 10:32:32'),
(2046, 'english', 'View Listing', 'View Listing', '2024-10-29 10:45:41', '2024-10-29 10:45:41'),
(2048, 'english', 'Email Address', 'Email Address', '2024-10-29 10:45:41', '2024-10-29 10:45:41'),
(2050, 'english', 'Remove', 'Remove', '2024-10-29 10:45:41', '2024-10-29 10:45:41'),
(2052, 'english', 'Successfully Ended', 'Successfully Ended', '2024-10-29 10:53:06', '2024-10-29 10:53:06'),
(2054, 'english', 'Number', 'Number', '2024-10-29 11:10:14', '2024-10-29 11:10:14'),
(2056, 'english', 'Customer Phone Number', 'Customer Phone Number', '2024-10-29 11:14:00', '2024-10-29 11:14:00'),
(2058, 'english', 'Customer Email Address', 'Customer Email Address', '2024-10-29 11:14:00', '2024-10-29 11:14:00'),
(2060, 'english', 'Meeting Link', 'Meeting Link', '2024-10-29 11:35:16', '2024-10-29 11:35:16'),
(2062, 'english', 'Enter Meeting link', 'Enter Meeting link', '2024-10-29 11:35:20', '2024-10-29 11:35:20'),
(2064, 'english', 'Blog', 'Blog', '2024-10-30 05:47:23', '2024-10-30 05:47:23'),
(2066, 'english', 'Booking', 'Booking', '2024-10-30 05:49:14', '2024-10-30 05:49:14'),
(2068, 'english', 'Create blog', 'Create blog', '2024-10-30 06:05:15', '2024-10-30 06:05:15'),
(2070, 'english', 'Create Blogs', 'Create Blogs', '2024-10-30 06:07:20', '2024-10-30 06:07:20'),
(2072, 'english', 'On Review', 'On Review', '2024-10-30 07:00:44', '2024-10-30 07:00:44'),
(2074, 'english', 'Keywords', 'Keywords', '2024-10-30 07:01:14', '2024-10-30 07:01:14'),
(2076, 'english', 'Remove blog', 'Remove blog', '2024-10-30 07:07:23', '2024-10-30 07:07:23'),
(2078, 'english', 'Blog deleted successfully!', 'Blog deleted successfully!', '2024-10-30 07:07:27', '2024-10-30 07:07:27'),
(2080, 'english', 'Update Blogs', 'Update Blogs', '2024-10-30 07:23:18', '2024-10-30 07:23:18'),
(2082, 'english', 'Customer Appointment', 'Customer Appointment', '2024-10-30 07:41:44', '2024-10-30 07:41:44'),
(2084, 'english', 'Details', 'Details', '2024-10-30 07:46:23', '2024-10-30 07:46:23'),
(2086, 'english', 'Link Update successfully!', 'Link Update successfully!', '2024-10-30 11:21:56', '2024-10-30 11:21:56'),
(2088, 'english', 'Message', 'Message', '2024-10-31 07:31:54', '2024-10-31 07:31:54'),
(2090, 'english', 'Messages', 'Messages', '2024-10-31 07:33:57', '2024-10-31 07:33:57'),
(2092, 'english', 'Frontend Settings', 'Frontend Settings', '2024-11-03 07:24:52', '2024-11-03 07:24:52'),
(2094, 'english', 'Motivational Speech', 'Motivational Speech', '2024-11-03 07:24:52', '2024-11-03 07:24:52'),
(2096, 'english', 'Website FAQS', 'Website FAQS', '2024-11-03 07:24:52', '2024-11-03 07:24:52'),
(2098, 'english', 'Contact Information', 'Contact Information', '2024-11-03 07:24:52', '2024-11-03 07:24:52'),
(2100, 'english', 'Logo & Images', 'Logo & Images', '2024-11-03 07:24:52', '2024-11-03 07:24:52'),
(2102, 'english', 'User Reviews', 'User Reviews', '2024-11-03 07:24:52', '2024-11-03 07:24:52'),
(2104, 'english', 'Update Settings', 'Update Settings', '2024-11-03 07:30:41', '2024-11-03 07:30:41'),
(2106, 'english', 'Restaurant', 'Restaurant', '2024-11-03 07:47:41', '2024-11-03 07:47:41'),
(2108, 'english', 'Mother Home Banner', 'Mother Home Banner', '2024-11-03 08:11:11', '2024-11-03 08:11:11'),
(2110, 'english', 'Mother Homepage Banner', 'Mother Homepage Banner', '2024-11-03 08:12:48', '2024-11-03 08:12:48'),
(2112, 'english', 'photo', 'photo', '2024-11-03 09:16:55', '2024-11-03 09:16:55'),
(2114, 'english', 'Setting updated successfully!', 'Setting updated successfully!', '2024-11-03 09:48:17', '2024-11-03 09:48:17'),
(2116, 'english', 'Add New Banner', 'Add New Banner', '2024-11-03 10:57:33', '2024-11-03 10:57:33'),
(2118, 'english', 'Update Banner', 'Update Banner', '2024-11-03 11:49:07', '2024-11-03 11:49:07'),
(2120, 'english', 'Banner updated successfully!', 'Banner updated successfully!', '2024-11-03 12:06:02', '2024-11-03 12:06:02'),
(2122, 'english', 'Banner deleted successfully!', 'Banner deleted successfully!', '2024-11-03 12:19:26', '2024-11-03 12:19:26'),
(2124, 'english', 'Upload light logo', 'Upload light logo', '2024-11-04 05:12:20', '2024-11-04 05:12:20'),
(2126, 'english', 'Save Change', 'Save Change', '2024-11-04 05:17:25', '2024-11-04 05:17:25'),
(2128, 'english', 'Upload Dark logo', 'Upload Dark logo', '2024-11-04 05:18:10', '2024-11-04 05:18:10'),
(2130, 'english', 'Upload favicon', 'Upload favicon', '2024-11-04 05:18:10', '2024-11-04 05:18:10'),
(2132, 'english', 'Lite Logo updated successfully!', 'Lite Logo updated successfully!', '2024-11-04 06:32:33', '2024-11-04 06:32:33'),
(2134, 'english', 'Light Logo updated successfully!', 'Light Logo updated successfully!', '2024-11-04 06:45:52', '2024-11-04 06:45:52'),
(2136, 'english', 'No file uploaded for Dark Logo!', 'No file uploaded for Dark Logo!', '2024-11-04 07:13:18', '2024-11-04 07:13:18'),
(2138, 'english', 'Error', 'Error', '2024-11-04 07:13:18', '2024-11-04 07:13:18'),
(2140, 'english', 'Dark Logo updated successfully!', 'Dark Logo updated successfully!', '2024-11-04 07:16:39', '2024-11-04 07:16:39'),
(2142, 'english', 'Favicon updated successfully!', 'Favicon updated successfully!', '2024-11-04 07:19:59', '2024-11-04 07:19:59'),
(2144, 'english', 'Review', 'Review', '2024-11-04 08:09:06', '2024-11-04 08:09:06'),
(2146, 'english', 'Add new Review', 'Add new Review', '2024-11-04 08:14:13', '2024-11-04 08:14:13'),
(2148, 'english', 'Add Review', 'Add Review', '2024-11-04 08:15:30', '2024-11-04 08:15:30'),
(2150, 'english', 'Select User', 'Select User', '2024-11-04 08:15:30', '2024-11-04 08:15:30'),
(2152, 'english', 'Select a category', 'Select a category', '2024-11-04 08:15:30', '2024-11-04 08:15:30'),
(2154, 'english', 'Select a Rating', 'Select a Rating', '2024-11-04 08:15:30', '2024-11-04 08:15:30'),
(2156, 'english', 'Review Add', 'Review Add', '2024-11-04 08:21:49', '2024-11-04 08:21:49'),
(2158, 'english', 'Select a User', 'Select a User', '2024-11-04 09:02:00', '2024-11-04 09:02:00'),
(2160, 'english', 'Review added successful!', 'Review added successful!', '2024-11-04 09:03:39', '2024-11-04 09:03:39'),
(2162, 'english', 'Options', 'Options', '2024-11-04 09:03:39', '2024-11-04 09:03:39'),
(2164, 'english', 'Edit Review', 'Edit Review', '2024-11-04 09:04:35', '2024-11-04 09:04:35'),
(2166, 'english', 'Update Review', 'Update Review', '2024-11-04 09:04:35', '2024-11-04 09:04:35'),
(2168, 'english', 'Review Update successful!', 'Review Update successful!', '2024-11-04 09:10:45', '2024-11-04 09:10:45'),
(2170, 'english', 'Review Delete successful!', 'Review Delete successful!', '2024-11-04 09:13:25', '2024-11-04 09:13:25'),
(2172, 'english', 'Browse Top Categories', 'Browse Top Categories', '2024-11-04 10:16:39', '2024-11-04 10:16:39'),
(2174, 'english', 'Large Image', 'Large Image', '2024-11-05 04:59:43', '2024-11-05 04:59:43'),
(2176, 'english', 'Small Image', 'Small Image', '2024-11-05 04:59:43', '2024-11-05 04:59:43'),
(2178, 'english', 'Add Type Image', 'Add Type Image', '2024-11-05 05:33:42', '2024-11-05 05:33:42'),
(2180, 'english', 'Category Type Image', 'Category Type Image', '2024-11-05 05:41:20', '2024-11-05 05:41:20'),
(2182, 'english', 'Upload Hotel type Image', 'Upload Hotel type Image', '2024-11-05 05:53:03', '2024-11-05 05:53:03'),
(2184, 'english', 'Hotel image updated successfully!', 'Hotel image updated successfully!', '2024-11-05 06:07:46', '2024-11-05 06:07:46'),
(2186, 'english', 'Upload doctors type Image', 'Upload doctors type Image', '2024-11-05 06:12:39', '2024-11-05 06:12:39'),
(2188, 'english', 'Upload Car type Image', 'Upload Car type Image', '2024-11-05 06:17:26', '2024-11-05 06:17:26'),
(2190, 'english', 'Upload beauty type Image', 'Upload beauty type Image', '2024-11-05 06:17:26', '2024-11-05 06:17:26'),
(2192, 'english', 'Upload Real Estate type Image', 'Upload Real Estate type Image', '2024-11-05 06:17:26', '2024-11-05 06:17:26'),
(2194, 'english', 'Upload Restaurant type Image', 'Upload Restaurant type Image', '2024-11-05 06:17:26', '2024-11-05 06:17:26'),
(2196, 'english', 'Upload Cars type Image', 'Upload Cars type Image', '2024-11-05 06:18:19', '2024-11-05 06:18:19'),
(2198, 'english', 'Restaurant image updated successfully!', 'Restaurant image updated successfully!', '2024-11-05 06:26:12', '2024-11-05 06:26:12'),
(2200, 'english', 'Real Estate image updated successfully!', 'Real Estate image updated successfully!', '2024-11-05 06:27:21', '2024-11-05 06:27:21'),
(2202, 'english', 'Doctors image updated successfully!', 'Doctors image updated successfully!', '2024-11-05 06:30:14', '2024-11-05 06:30:14'),
(2204, 'english', 'Car image updated successfully!', 'Car image updated successfully!', '2024-11-05 06:30:28', '2024-11-05 06:30:28'),
(2206, 'english', 'Beauty image updated successfully!', 'Beauty image updated successfully!', '2024-11-05 06:30:43', '2024-11-05 06:30:43'),
(2208, 'english', 'Restaurant', 'Restaurant', '2024-11-05 06:43:44', '2024-11-05 06:43:44'),
(2210, 'english', 'Doctors', 'Doctors', '2024-11-05 06:43:44', '2024-11-05 06:43:44'),
(2212, 'english', 'We Have Worked with ', 'We Have Worked with ', '2024-11-05 07:05:02', '2024-11-05 07:05:02'),
(2214, 'english', '10,000', '10,000', '2024-11-05 07:05:02', '2024-11-05 07:05:02'),
(2216, 'english', ' Trusted Companies', ' Trusted Companies', '2024-11-05 07:05:02', '2024-11-05 07:05:02'),
(2218, 'english', 'What the people Thinks About Us', 'What the people Thinks About Us', '2024-11-05 07:05:02', '2024-11-05 07:05:02'),
(2220, 'english', 'Trusted Companies', 'Trusted Companies', '2024-11-05 07:17:45', '2024-11-05 07:17:45'),
(2222, 'english', 'Add New Company Logo', 'Add New Company Logo', '2024-11-05 07:21:15', '2024-11-05 07:21:15'),
(2224, 'english', 'Company Logos updated successfully!', 'Company Logos updated successfully!', '2024-11-05 07:30:17', '2024-11-05 07:30:17'),
(2226, 'english', 'Update Company Logo', 'Update Company Logo', '2024-11-05 07:32:04', '2024-11-05 07:32:04'),
(2228, 'english', 'Logo', 'Logo', '2024-11-05 07:39:29', '2024-11-05 07:39:29'),
(2230, 'english', 'Company logo updated successfully!', 'Company logo updated successfully!', '2024-11-05 07:40:26', '2024-11-05 07:40:26'),
(2232, 'english', 'Company Logo Delete successfully!', 'Company Logo Delete successfully!', '2024-11-05 07:43:20', '2024-11-05 07:43:20'),
(2234, 'english', 'Trusted Company', 'Trusted Company', '2024-11-05 08:01:09', '2024-11-05 08:01:09'),
(2236, 'english', 'Pickup New Updates', 'Pickup New Updates', '2024-11-05 09:20:49', '2024-11-05 09:20:49'),
(2238, 'english', 'Info Update', 'Info Update', '2024-11-05 09:27:57', '2024-11-05 09:27:57'),
(2240, 'english', 'User updated successfully!', 'User updated successfully!', '2024-11-05 09:28:22', '2024-11-05 09:28:22'),
(2242, 'english', 'Do you want to mark it as popular', 'Do you want to mark it as popular', '2024-11-05 09:40:25', '2024-11-05 09:40:25'),
(2244, 'english', 'Mark as popular', 'Mark as popular', '2024-11-05 09:40:25', '2024-11-05 09:40:25'),
(2246, 'english', 'Blog deleted successful!', 'Blog deleted successful!', '2024-11-05 09:49:18', '2024-11-05 09:49:18'),
(2248, 'english', 'Blog Update successfully!', 'Blog Update successfully!', '2024-11-05 09:49:56', '2024-11-05 09:49:56'),
(2250, 'english', 'Category update successful!', 'Category update successful!', '2024-11-05 09:52:55', '2024-11-05 09:52:55'),
(2252, 'english', 'Sign up to our newsletter', 'Sign up to our newsletter', '2024-11-05 11:01:55', '2024-11-05 11:01:55'),
(2254, 'english', 'Stay up to date with the latest news, announcements, and articles.', 'Stay up to date with the latest news, announcements, and articles.', '2024-11-05 11:01:55', '2024-11-05 11:01:55'),
(2256, 'english', 'Enter your email Address', 'Enter your email Address', '2024-11-05 11:01:55', '2024-11-05 11:01:55'),
(2258, 'english', 'Subscribe', 'Subscribe', '2024-11-05 11:01:55', '2024-11-05 11:01:55'),
(2260, 'english', 'Footer Text', 'Footer Text', '2024-11-05 11:36:56', '2024-11-05 11:36:56'),
(2262, 'english', 'Lorem ipsum dolor sit amet, consectetur they adipiscing elit ut aliquam, purus sit amet luctus venenatis.', 'Lorem ipsum dolor sit amet, consectetur they adipiscing elit ut aliquam, purus sit amet luctus venenatis.', '2024-11-05 11:41:09', '2024-11-05 11:41:09'),
(2264, 'english', 'Our Latest Blog', 'Our Latest Blog', '2024-11-05 11:51:16', '2024-11-05 11:51:16'),
(2266, 'english', 'Browse Top Categories.', 'Browse Top Categories.', '2024-11-06 05:52:44', '2024-11-06 05:52:44'),
(2268, 'english', 'All', 'All', '2024-11-06 06:56:10', '2024-11-06 06:56:10'),
(2270, 'english', 'Sft', 'Sft', '2024-11-06 07:56:58', '2024-11-06 07:56:58'),
(2272, 'english', 'Massage', 'Massage', '2024-11-06 10:19:00', '2024-11-06 10:19:00'),
(2274, 'english', 'Open', 'Open', '2024-11-06 10:37:15', '2024-11-06 10:37:15'),
(2276, 'english', 'View More', 'View More', '2024-11-06 11:19:25', '2024-11-06 11:19:25'),
(2278, 'english', 'View details', 'View details', '2024-11-06 11:29:21', '2024-11-06 11:29:21'),
(2280, 'english', 'Dine in', 'Dine in', '2024-11-06 12:32:57', '2024-11-06 12:32:57'),
(2282, 'english', 'Takeaway', 'Takeaway', '2024-11-06 12:32:57', '2024-11-06 12:32:57'),
(2284, 'english', 'Delivery', 'Delivery', '2024-11-06 12:32:57', '2024-11-06 12:32:57'),
(2286, 'english', 'Our Happy Customer', 'Our Happy Customer', '2024-11-07 08:13:26', '2024-11-07 08:13:26'),
(2288, 'english', 'Latest Vehicles on Sale', 'Latest Vehicles on Sale', '2024-11-07 08:13:26', '2024-11-07 08:13:26'),
(2290, 'english', 'Beauty Banner Title', 'Beauty Banner Title', '2024-11-07 10:23:37', '2024-11-07 10:23:37'),
(2292, 'english', 'Beauty frontend Settings', 'Beauty frontend Settings', '2024-11-07 10:25:33', '2024-11-07 10:25:33'),
(2294, 'english', 'Beauty Title', 'Beauty Title', '2024-11-07 10:31:36', '2024-11-07 10:31:36'),
(2296, 'english', 'Beauty Description', 'Beauty Description', '2024-11-07 10:31:36', '2024-11-07 10:31:36'),
(2298, 'english', 'Upload Beauty Banner Image', 'Upload Beauty Banner Image', '2024-11-07 10:40:00', '2024-11-07 10:40:00'),
(2300, 'english', 'Beauty Banner', 'Beauty Banner', '2024-11-07 10:44:37', '2024-11-07 10:44:37'),
(2302, 'english', 'No file uploaded for Beauty!', 'No file uploaded for Beauty!', '2024-11-07 11:24:03', '2024-11-07 11:24:03'),
(2304, 'english', 'No image uploaded', 'No image uploaded', '2024-11-07 12:10:34', '2024-11-07 12:10:34'),
(2306, 'english', 'Beauty Video Url', 'Beauty Video Url', '2024-11-07 12:17:52', '2024-11-07 12:17:52'),
(2308, 'english', 'Beauty Facial Title', 'Beauty Facial Title', '2024-11-07 12:41:03', '2024-11-07 12:41:03'),
(2310, 'english', 'Beauty Discount', 'Beauty Discount', '2024-11-07 12:41:03', '2024-11-07 12:41:03'),
(2312, 'english', 'Beauty Facial Image', 'Beauty Facial Image', '2024-11-07 12:44:01', '2024-11-07 12:44:01'),
(2314, 'english', 'Beauty Massage Photo', 'Beauty Massage Photo', '2024-11-07 12:44:01', '2024-11-07 12:44:01'),
(2316, 'english', 'Beauty Banner Image', 'Beauty Banner Image', '2024-11-07 12:44:22', '2024-11-07 12:44:22'),
(2318, 'english', 'Beauty Facial Discount', 'Beauty Facial Discount', '2024-11-07 12:48:58', '2024-11-07 12:48:58'),
(2320, 'english', 'Beauty Massage Title', 'Beauty Massage Title', '2024-11-07 12:50:24', '2024-11-07 12:50:24'),
(2322, 'english', 'Beauty Massage Discount ', 'Beauty Massage Discount ', '2024-11-07 12:50:24', '2024-11-07 12:50:24'),
(2324, 'english', 'Beauty Massage Image', 'Beauty Massage Image', '2024-11-07 12:50:24', '2024-11-07 12:50:24'),
(2326, 'english', '10 word', '10 word', '2024-11-09 11:51:42', '2024-11-09 11:51:42'),
(2328, 'english', 'Upload Beauty Facial Image', 'Upload Beauty Facial Image', '2024-11-09 11:51:42', '2024-11-09 11:51:42'),
(2330, 'english', '10 words', '10 words', '2024-11-09 11:54:57', '2024-11-09 11:54:57'),
(2332, 'english', 'Upload Beauty Massage Image', 'Upload Beauty Massage Image', '2024-11-09 12:04:11', '2024-11-09 12:04:11'),
(2334, 'english', '2 words', '2 words', '2024-11-09 12:11:17', '2024-11-09 12:11:17'),
(2336, 'english', 'Beauty Another Image  Settings', 'Beauty Another Image  Settings', '2024-11-09 12:24:57', '2024-11-09 12:24:57'),
(2338, 'english', 'Beauty Motion Title', 'Beauty Motion Title', '2024-11-09 12:24:57', '2024-11-09 12:24:57'),
(2340, 'english', 'Beauty Motion Description', 'Beauty Motion Description', '2024-11-09 12:24:57', '2024-11-09 12:24:57'),
(2342, 'english', 'Beauty Motion Image', 'Beauty Motion Image', '2024-11-09 12:24:57', '2024-11-09 12:24:57'),
(2344, 'english', 'Book Now', 'Book Now', '2024-11-09 13:36:28', '2024-11-09 13:36:28'),
(2346, 'english', 'Explore Our Products', 'Explore Our Products', '2024-11-09 13:36:28', '2024-11-09 13:36:28'),
(2348, 'english', 'Organic Product', 'Organic Product', '2024-11-09 14:37:52', '2024-11-09 14:37:52'),
(2350, 'english', 'Product Preview', 'Product Preview', '2024-11-09 14:37:53', '2024-11-09 14:37:53'),
(2352, 'english', 'Market Experience', 'Market Experience', '2024-11-09 14:37:53', '2024-11-09 14:37:53'),
(2354, 'english', 'Hair Treatment', 'Hair Treatment', '2024-11-10 09:57:34', '2024-11-10 09:57:34');
INSERT INTO `languages` (`id`, `name`, `phrase`, `translated`, `created_at`, `updated_at`) VALUES
(2356, 'english', '&', '&', '2024-11-10 09:57:34', '2024-11-10 09:57:34'),
(2358, 'english', 'Repair', 'Repair', '2024-11-10 09:57:34', '2024-11-10 09:57:34'),
(2360, 'english', 'Get Discount Up To 20', 'Get Discount Up To 20', '2024-11-10 09:57:34', '2024-11-10 09:57:34'),
(2362, 'english', '%', '%', '2024-11-10 09:57:34', '2024-11-10 09:57:34'),
(2364, 'english', 'Best Massage', 'Best Massage', '2024-11-10 09:57:34', '2024-11-10 09:57:34'),
(2366, 'english', 'Explore More', 'Explore More', '2024-11-10 10:04:33', '2024-11-10 10:04:33'),
(2368, 'english', 'Popular', 'Popular', '2024-11-10 10:13:34', '2024-11-10 10:13:34'),
(2370, 'english', 'Best', 'Best', '2024-11-10 10:13:34', '2024-11-10 10:13:34'),
(2372, 'english', 'Wellness', 'Wellness', '2024-11-10 10:13:34', '2024-11-10 10:13:34'),
(2374, 'english', 'Select  type', 'Select  type', '2024-11-10 10:14:01', '2024-11-10 10:14:01'),
(2376, 'english', 'Select Type', 'Select Type', '2024-11-10 10:17:55', '2024-11-10 10:17:55'),
(2378, 'english', 'City added successfully!', 'City added successfully!', '2024-11-10 10:24:56', '2024-11-10 10:24:56'),
(2380, 'english', 'is_popular', 'is_popular', '2024-11-10 10:26:51', '2024-11-10 10:26:51'),
(2382, 'english', 'Popular Beauty Parlors', 'Popular Beauty Parlors', '2024-11-10 10:41:30', '2024-11-10 10:41:30'),
(2384, 'english', 'Beauty Salon', 'Beauty Salon', '2024-11-10 10:51:37', '2024-11-10 10:51:37'),
(2386, 'english', 'Find The Best Spa Here', 'Find The Best Spa Here', '2024-11-10 11:52:49', '2024-11-10 11:52:49'),
(2388, 'english', 'Complete wellness with massage', 'Complete wellness with massage', '2024-11-10 11:52:49', '2024-11-10 11:52:49'),
(2390, 'english', 'Booking Online', 'Booking Online', '2024-11-10 11:52:49', '2024-11-10 11:52:49'),
(2392, 'english', 'Beauty Details', 'Beauty Details', '2024-11-12 09:36:15', '2024-11-12 09:36:15'),
(2394, 'english', 'Back to listing', 'Back to listing', '2024-11-12 10:15:41', '2024-11-12 10:15:41'),
(2396, 'english', 'Time', 'Time', '2024-11-12 11:36:44', '2024-11-12 11:36:44'),
(2398, 'english', 'Edit Your Review', 'Edit Your Review', '2024-11-17 05:09:53', '2024-11-17 05:09:53'),
(2400, 'english', 'Select Rating', 'Select Rating', '2024-11-17 05:09:53', '2024-11-17 05:09:53'),
(2402, 'english', '1', '1', '2024-11-17 05:09:53', '2024-11-17 05:09:53'),
(2404, 'english', '2', '2', '2024-11-17 05:09:53', '2024-11-17 05:09:53'),
(2406, 'english', '3', '3', '2024-11-17 05:09:53', '2024-11-17 05:09:53'),
(2408, 'english', '4', '4', '2024-11-17 05:09:53', '2024-11-17 05:09:53'),
(2410, 'english', '5', '5', '2024-11-17 05:09:53', '2024-11-17 05:09:53'),
(2412, 'english', 'You have successfully Review Done!', 'You have successfully Review Done!', '2024-11-17 06:55:28', '2024-11-17 06:55:28'),
(2414, 'english', 'Your review was successfully submitted!', 'Your review was successfully submitted!', '2024-11-17 07:02:47', '2024-11-17 07:02:47'),
(2416, 'english', 'Please Login First!', 'Please Login First!', '2024-11-17 07:05:11', '2024-11-17 07:05:11'),
(2418, 'english', 'Add  Your Review', 'Add  Your Review', '2024-11-17 07:30:52', '2024-11-17 07:30:52'),
(2420, 'english', 'Add Your Review', 'Add Your Review', '2024-11-17 07:59:01', '2024-11-17 07:59:01'),
(2422, 'english', 'Your review was update successfully!', 'Your review was update successfully!', '2024-11-17 08:10:44', '2024-11-17 08:10:44'),
(2424, 'english', 'Update Reviews', 'Update Reviews', '2024-11-17 09:25:23', '2024-11-17 09:25:23'),
(2426, 'english', 'Add Reviews', 'Add Reviews', '2024-11-17 09:58:00', '2024-11-17 09:58:00'),
(2428, 'english', 'Reply', 'Reply', '2024-11-17 09:58:47', '2024-11-17 09:58:47'),
(2430, 'english', 'Log Out', 'Log Out', '2024-11-17 10:02:20', '2024-11-17 10:02:20'),
(2432, 'english', 'Review*', 'Review*', '2024-11-17 10:24:58', '2024-11-17 10:24:58'),
(2434, 'english', 'Reviews', 'Reviews', '2024-11-17 10:40:11', '2024-11-17 10:40:11'),
(2436, 'english', 'Reply Review', 'Reply Review', '2024-11-17 11:16:11', '2024-11-17 11:16:11'),
(2438, 'english', 'Your review was successfully updated!', 'Your review was successfully updated!', '2024-11-17 11:25:53', '2024-11-17 11:25:53'),
(2440, 'english', 'Review deleted successfully!', 'Review deleted successfully!', '2024-11-17 11:37:17', '2024-11-17 11:37:17'),
(2442, 'english', 'Empty Message', 'Empty Message', '2024-11-18 05:58:20', '2024-11-18 05:58:20'),
(2444, 'english', 'No Message Found', 'No Message Found', '2024-11-18 05:58:24', '2024-11-18 05:58:24'),
(2446, 'english', 'Write your message', 'Write your message', '2024-11-18 05:58:24', '2024-11-18 05:58:24'),
(2448, 'english', 'My Customer Panel', 'My Customer Panel', '2024-11-18 06:00:22', '2024-11-18 06:00:22'),
(2450, 'english', 'Wishlist', 'Wishlist', '2024-11-18 06:00:22', '2024-11-18 06:00:22'),
(2452, 'english', 'Following agent', 'Following agent', '2024-11-18 06:00:22', '2024-11-18 06:00:22'),
(2454, 'english', 'Wishlist added!', 'Wishlist added!', '2024-11-18 06:58:58', '2024-11-18 06:58:58'),
(2456, 'english', 'Wishlist removed', 'Wishlist removed', '2024-11-18 07:01:25', '2024-11-18 07:01:25'),
(2458, 'english', 'Agent Contact Details', 'Agent Contact Details', '2024-11-19 17:01:31', '2024-11-19 17:01:31'),
(2460, 'english', 'Follow', 'Follow', '2024-11-19 17:01:31', '2024-11-19 17:01:31'),
(2462, 'english', 'Listing by', 'Listing by', '2024-11-20 06:59:05', '2024-11-20 06:59:05'),
(2464, 'english', 'Phone:', 'Phone:', '2024-11-20 06:59:05', '2024-11-20 06:59:05'),
(2466, 'english', 'Email:', 'Email:', '2024-11-20 06:59:05', '2024-11-20 06:59:05'),
(2468, 'english', 'following', 'following', '2024-11-20 07:05:09', '2024-11-20 07:05:09'),
(2470, 'english', 'Unfollow', 'Unfollow', '2024-11-20 07:20:08', '2024-11-20 07:20:08'),
(2472, 'english', 'Message*', 'Message*', '2024-11-20 08:57:34', '2024-11-20 08:57:34'),
(2474, 'english', 'Book a Meeting', 'Book a Meeting', '2024-11-20 09:45:54', '2024-11-20 09:45:54'),
(2476, 'english', 'Select Date and Time', 'Select Date and Time', '2024-11-20 09:45:54', '2024-11-20 09:45:54'),
(2478, 'english', 'Submit Now', 'Submit Now', '2024-11-20 09:45:55', '2024-11-20 09:45:55'),
(2480, 'english', 'Service Title', 'Service Title', '2024-11-20 14:40:15', '2024-11-20 14:40:15'),
(2482, 'english', 'Enter service title', 'Enter service title', '2024-11-20 14:40:15', '2024-11-20 14:40:15'),
(2484, 'english', 'Service Time', 'Service Time', '2024-11-20 14:40:15', '2024-11-20 14:40:15'),
(2486, 'english', 'Enter service time', 'Enter service time', '2024-11-20 14:40:15', '2024-11-20 14:40:15'),
(2488, 'english', 'Service Price', 'Service Price', '2024-11-20 14:40:15', '2024-11-20 14:40:15'),
(2490, 'english', 'Enter service price', 'Enter service price', '2024-11-20 14:40:15', '2024-11-20 14:40:15'),
(2492, 'english', 'Show More', 'Show More', '2024-11-30 10:46:03', '2024-11-30 10:46:03'),
(2494, 'english', 'Filters', 'Filters', '2024-11-30 15:42:01', '2024-11-30 15:42:01'),
(2496, 'english', 'Clear', 'Clear', '2024-11-30 15:42:01', '2024-11-30 15:42:01'),
(2498, 'english', 'Car Frontend Settings', 'Car Frontend Settings', '2024-12-01 06:12:31', '2024-12-01 06:12:31'),
(2500, 'english', 'Banner', 'Banner', '2024-12-01 06:22:45', '2024-12-01 06:22:45'),
(2502, 'english', 'Upload  Banner Image', 'Upload  Banner Image', '2024-12-01 06:22:45', '2024-12-01 06:22:45'),
(2504, 'english', 'Motion Description', 'Motion Description', '2024-12-01 06:40:52', '2024-12-01 06:40:52'),
(2506, 'english', ' Motion Image', ' Motion Image', '2024-12-01 06:40:52', '2024-12-01 06:40:52'),
(2508, 'english', 'Car Title', 'Car Title', '2024-12-01 06:45:10', '2024-12-01 06:45:10'),
(2510, 'english', 'Car Description', 'Car Description', '2024-12-01 06:45:10', '2024-12-01 06:45:10'),
(2512, 'english', 'Car Banner', 'Car Banner', '2024-12-01 06:45:10', '2024-12-01 06:45:10'),
(2514, 'english', 'Car Motion Title', 'Car Motion Title', '2024-12-01 06:45:10', '2024-12-01 06:45:10'),
(2516, 'english', 'Car Motion Description', 'Car Motion Description', '2024-12-01 06:45:10', '2024-12-01 06:45:10'),
(2518, 'english', 'Car Motion Image', 'Car Motion Image', '2024-12-01 06:45:10', '2024-12-01 06:45:10'),
(2520, 'english', 'Car Banner Title', 'Car Banner Title', '2024-12-01 06:46:17', '2024-12-01 06:46:17'),
(2522, 'english', 'Car Banner Description', 'Car Banner Description', '2024-12-01 06:46:17', '2024-12-01 06:46:17'),
(2524, 'english', 'Car Banner Banner', 'Car Banner Banner', '2024-12-01 06:46:17', '2024-12-01 06:46:17'),
(2526, 'english', 'Upload  Image', 'Upload  Image', '2024-12-01 06:47:09', '2024-12-01 06:47:09'),
(2528, 'english', 'Upload Image', 'Upload Image', '2024-12-01 06:47:09', '2024-12-01 06:47:09'),
(2530, 'english', 'Car Home ', 'Car Home ', '2024-12-01 06:54:25', '2024-12-01 06:54:25'),
(2532, 'english', 'Beauty Home', 'Beauty Home', '2024-12-01 06:55:45', '2024-12-01 06:55:45'),
(2534, 'english', 'Featured', 'Featured', '2024-12-01 07:12:35', '2024-12-01 07:12:35'),
(2536, 'english', 'Top', 'Top', '2024-12-01 07:12:35', '2024-12-01 07:12:35'),
(2538, 'english', 'FEATURED VEHICLES', 'FEATURED VEHICLES', '2024-12-01 09:24:20', '2024-12-01 09:24:20'),
(2540, 'english', 'Top Cars', 'Top Cars', '2024-12-01 09:34:25', '2024-12-01 09:34:25'),
(2542, 'english', 'Category Updated successfully!', 'Category Updated successfully!', '2024-12-01 09:40:39', '2024-12-01 09:40:39'),
(2544, 'english', 'Car Listing Details', 'Car Listing Details', '2024-12-01 12:44:27', '2024-12-01 12:44:27'),
(2546, 'english', 'Car Details', 'Car Details', '2024-12-02 06:30:53', '2024-12-02 06:30:53'),
(2548, 'english', 'Beauty Listing Details', 'Beauty Listing Details', '2024-12-02 06:36:27', '2024-12-02 06:36:27'),
(2550, 'english', 'Overview', 'Overview', '2024-12-02 06:51:25', '2024-12-02 06:51:25'),
(2552, 'english', 'Information', 'Information', '2024-12-02 06:51:25', '2024-12-02 06:51:25'),
(2554, 'english', 'Condition', 'Condition', '2024-12-02 07:07:38', '2024-12-02 07:07:38'),
(2556, 'english', 'Fuel', 'Fuel', '2024-12-02 07:16:35', '2024-12-02 07:16:35'),
(2558, 'english', 'Seller information', 'Seller information', '2024-12-02 10:00:02', '2024-12-02 10:00:02'),
(2560, 'english', 'Phone :', 'Phone :', '2024-12-02 10:45:38', '2024-12-02 10:45:38'),
(2562, 'english', 'mail :', 'mail :', '2024-12-02 10:45:38', '2024-12-02 10:45:38'),
(2564, 'english', 'Address :', 'Address :', '2024-12-02 10:45:38', '2024-12-02 10:45:38'),
(2566, 'english', 'Update Your Review', 'Update Your Review', '2024-12-02 11:59:24', '2024-12-02 11:59:24'),
(2568, 'english', 'View all photos', 'View all photos', '2024-12-03 07:03:44', '2024-12-03 07:03:44'),
(2570, 'english', 'More cars from this seller', 'More cars from this seller', '2024-12-03 09:32:34', '2024-12-03 09:32:34'),
(2572, 'english', 'View all', 'View all', '2024-12-03 09:32:34', '2024-12-03 09:32:34'),
(2574, 'english', 'REVIEWS)', 'REVIEWS)', '2024-12-03 10:02:00', '2024-12-03 10:02:00'),
(2576, 'english', 'Stock', 'Stock', '2024-12-03 10:28:36', '2024-12-03 10:28:36'),
(2578, 'english', 'Book inspection', 'Book inspection', '2024-12-03 10:36:00', '2024-12-03 10:36:00'),
(2580, 'english', 'Select date & time', 'Select date & time', '2024-12-03 10:36:00', '2024-12-03 10:36:00'),
(2582, 'english', 'Your information', 'Your information', '2024-12-03 10:36:00', '2024-12-03 10:36:00'),
(2584, 'english', 'Replys', 'Replys', '2024-12-03 11:14:59', '2024-12-03 11:14:59'),
(2586, 'english', 'Contact Dealer', 'Contact Dealer', '2024-12-03 11:45:07', '2024-12-03 11:45:07'),
(2588, 'english', 'Car Dealer', 'Car Dealer', '2024-12-03 11:45:07', '2024-12-03 11:45:07'),
(2590, 'english', 'Message dealer', 'Message dealer', '2024-12-03 11:45:07', '2024-12-03 11:45:07'),
(2592, 'english', 'Years', 'Years', '2024-12-04 09:30:25', '2024-12-04 09:30:25'),
(2594, 'english', 'Colors', 'Colors', '2024-12-04 09:39:05', '2024-12-04 09:39:05'),
(2596, 'english', 'Brands', 'Brands', '2024-12-04 15:24:40', '2024-12-04 15:24:40'),
(2598, 'english', 'Search Cars', 'Search Cars', '2024-12-04 16:15:53', '2024-12-04 16:15:53'),
(2600, 'english', 'Hotel Frontend Settings', 'Hotel Frontend Settings', '2024-12-05 05:45:51', '2024-12-05 05:45:51'),
(2602, 'english', 'Hotel Banner Title', 'Hotel Banner Title', '2024-12-05 06:24:48', '2024-12-05 06:24:48'),
(2604, 'english', 'Hotel Banner Description', 'Hotel Banner Description', '2024-12-05 06:24:48', '2024-12-05 06:24:48'),
(2606, 'english', 'Hotel Video Url', 'Hotel Video Url', '2024-12-05 06:24:48', '2024-12-05 06:24:48'),
(2608, 'english', 'Hotel Banner Banner', 'Hotel Banner Banner', '2024-12-05 06:24:48', '2024-12-05 06:24:48'),
(2610, 'english', 'Booking Title', 'Booking Title', '2024-12-05 07:00:12', '2024-12-05 07:00:12'),
(2612, 'english', 'Booking Image', 'Booking Image', '2024-12-05 07:00:12', '2024-12-05 07:00:12'),
(2614, 'english', 'Hotel Banner', 'Hotel Banner', '2024-12-05 07:12:35', '2024-12-05 07:12:35'),
(2616, 'english', 'Exclusive Deals', 'Exclusive Deals', '2024-12-05 07:12:35', '2024-12-05 07:12:35'),
(2618, 'english', 'Exclusive Deals Discount', 'Exclusive Deals Discount', '2024-12-05 07:12:35', '2024-12-05 07:12:35'),
(2620, 'english', 'Exclusive Banner', 'Exclusive Banner', '2024-12-05 07:12:35', '2024-12-05 07:12:35'),
(2622, 'english', 'Size the moment', 'Size the moment', '2024-12-05 07:23:52', '2024-12-05 07:23:52'),
(2624, 'english', 'Size  Discount', 'Size  Discount', '2024-12-05 07:23:52', '2024-12-05 07:23:52'),
(2626, 'english', 'Size Banner', 'Size Banner', '2024-12-05 07:23:53', '2024-12-05 07:23:53'),
(2628, 'english', 'Learn More', 'Learn More', '2024-12-05 07:31:07', '2024-12-05 07:31:07'),
(2630, 'english', 'Take A Tour', 'Take A Tour', '2024-12-05 07:31:07', '2024-12-05 07:31:07'),
(2632, 'english', 'Find Gateway Deals', 'Find Gateway Deals', '2024-12-05 07:51:04', '2024-12-05 07:51:04'),
(2634, 'english', 'Explore Hotel', 'Explore Hotel', '2024-12-05 07:51:04', '2024-12-05 07:51:04'),
(2636, 'english', 'City deleted successfully!', 'City deleted successfully!', '2024-12-05 09:50:24', '2024-12-05 09:50:24'),
(2638, 'english', 'Top Hotels', 'Top Hotels', '2024-12-05 10:27:11', '2024-12-05 10:27:11'),
(2640, 'english', 'See all', 'See all', '2024-12-05 10:27:11', '2024-12-05 10:27:11'),
(2642, 'english', 'Popular Hotel', 'Popular Hotel', '2024-12-05 12:20:09', '2024-12-05 12:20:09'),
(2644, 'english', 'Flexible budget', 'Flexible budget', '2024-12-05 12:20:29', '2024-12-05 12:20:29'),
(2646, 'english', 'Peaceful place', 'Peaceful place', '2024-12-05 12:20:29', '2024-12-05 12:20:29'),
(2648, 'english', 'Well decorated', 'Well decorated', '2024-12-05 12:20:29', '2024-12-05 12:20:29'),
(2650, 'english', 'Get Started', 'Get Started', '2024-12-05 12:20:29', '2024-12-05 12:20:29'),
(2652, 'english', 'Contact Us', 'Contact Us', '2024-12-05 12:20:29', '2024-12-05 12:20:29'),
(2654, 'english', 'City Image', 'City Image', '2024-12-05 12:34:22', '2024-12-05 12:34:22'),
(2656, 'english', 'Hotel Listing Details', 'Hotel Listing Details', '2024-12-08 06:28:53', '2024-12-08 06:28:53'),
(2658, 'english', 'Hotel details', 'Hotel details', '2024-12-08 06:41:05', '2024-12-08 06:41:05'),
(2660, 'english', 'Total Price : ', 'Total Price : ', '2024-12-08 06:42:35', '2024-12-08 06:42:35'),
(2662, 'english', 'Select Status', 'Select Status', '2024-12-08 07:20:18', '2024-12-08 07:20:18'),
(2664, 'english', 'Rent', 'Rent', '2024-12-08 07:20:18', '2024-12-08 07:20:18'),
(2666, 'english', 'Sell', 'Sell', '2024-12-08 07:20:18', '2024-12-08 07:20:18'),
(2668, 'english', 'Published:', 'Published:', '2024-12-08 07:45:16', '2024-12-08 07:45:16'),
(2670, 'english', 'For', 'For', '2024-12-08 07:46:26', '2024-12-08 07:46:26'),
(2672, 'english', 'Room', 'Room', '2024-12-08 07:52:45', '2024-12-08 07:52:45'),
(2674, 'english', 'Number of Child', 'Number of Child', '2024-12-08 09:39:41', '2024-12-08 09:39:41'),
(2676, 'english', 'Persons', 'Persons', '2024-12-08 09:45:50', '2024-12-08 09:45:50'),
(2678, 'english', 'Child', 'Child', '2024-12-08 09:45:50', '2024-12-08 09:45:50'),
(2680, 'english', 'For 1 Night 1 Room', 'For 1 Night 1 Room', '2024-12-08 09:48:58', '2024-12-08 09:48:58'),
(2682, 'english', 'Select Room', 'Select Room', '2024-12-08 09:48:58', '2024-12-08 09:48:58'),
(2684, 'english', 'Refundable', 'Refundable', '2024-12-08 09:48:58', '2024-12-08 09:48:58'),
(2686, 'english', 'See all Amenities', 'See all Amenities', '2024-12-08 09:52:06', '2024-12-08 09:52:06'),
(2688, 'english', 'Get Direction', 'Get Direction', '2024-12-08 10:01:52', '2024-12-08 10:01:52'),
(2690, 'english', 'Related Hotels', 'Related Hotels', '2024-12-08 11:23:11', '2024-12-08 11:23:11'),
(2692, 'english', 'Proceed Booking', 'Proceed Booking', '2024-12-09 05:19:16', '2024-12-09 05:19:16'),
(2694, 'english', 'No Result Found', 'No Result Found', '2024-12-09 06:18:09', '2024-12-09 06:18:09'),
(2696, 'english', 'No products were found matching your selection.', 'No products were found matching your selection.', '2024-12-09 06:18:09', '2024-12-09 06:18:09'),
(2698, 'english', 'Go Back', 'Go Back', '2024-12-09 06:18:09', '2024-12-09 06:18:09'),
(2700, 'english', 'Bathroom', 'Bathroom', '2024-12-09 07:47:36', '2024-12-09 07:47:36'),
(2702, 'english', 'Bedroom', 'Bedroom', '2024-12-09 08:06:33', '2024-12-09 08:06:33'),
(2704, 'english', 'Select Category', 'Select Category', '2024-12-09 09:46:20', '2024-12-09 09:46:20'),
(2706, 'english', '', '', '2024-12-09 09:58:22', '2024-12-09 09:58:22'),
(2708, 'english', 'Real-Estate Home', 'Real-Estate Home', '2024-12-09 12:06:07', '2024-12-09 12:06:07'),
(2710, 'english', 'Real  Estate Frontend Settings', 'Real  Estate Frontend Settings', '2024-12-10 05:46:12', '2024-12-10 05:46:12'),
(2712, 'english', 'Real Estate Frontend Settings', 'Real Estate Frontend Settings', '2024-12-10 05:49:28', '2024-12-10 05:49:28'),
(2714, 'english', 'Real Estate  Title', 'Real Estate  Title', '2024-12-10 05:49:28', '2024-12-10 05:49:28'),
(2716, 'english', 'Real Estate Banner Description', 'Real Estate Banner Description', '2024-12-10 05:49:28', '2024-12-10 05:49:28'),
(2718, 'english', 'Real Estate Banner', 'Real Estate Banner', '2024-12-10 05:49:28', '2024-12-10 05:49:28'),
(2720, 'english', 'Real Estate Discount Title', 'Real Estate Discount Title', '2024-12-10 06:04:44', '2024-12-10 06:04:44'),
(2722, 'english', 'Real Estate Short Description', 'Real Estate Short Description', '2024-12-10 06:04:44', '2024-12-10 06:04:44'),
(2724, 'english', 'Discount Image', 'Discount Image', '2024-12-10 06:04:44', '2024-12-10 06:04:44'),
(2726, 'english', 'Discount', 'Discount', '2024-12-10 06:08:43', '2024-12-10 06:08:43'),
(2728, 'english', 'Listing Discount price', 'Listing Discount price', '2024-12-10 08:21:36', '2024-12-10 08:21:36'),
(2730, 'english', 'Enter discount price', 'Enter discount price', '2024-12-10 08:23:53', '2024-12-10 08:23:53'),
(2732, 'english', 'Real Estate Listing Details', 'Real Estate Listing Details', '2024-12-10 09:41:29', '2024-12-10 09:41:29'),
(2734, 'english', 'Real-Estate', 'Real-Estate', '2024-12-10 09:50:42', '2024-12-10 09:50:42'),
(2736, 'english', 'Property ID', 'Property ID', '2024-12-10 10:27:50', '2024-12-10 10:27:50'),
(2738, 'english', 'Apartment', 'Apartment', '2024-12-10 10:32:20', '2024-12-10 10:32:20'),
(2740, 'english', 'ID :', 'ID :', '2024-12-10 10:32:20', '2024-12-10 10:32:20'),
(2742, 'english', 'Property', 'Property', '2024-12-10 10:51:19', '2024-12-10 10:51:19'),
(2744, 'english', 'Property Size', 'Property Size', '2024-12-10 10:51:19', '2024-12-10 10:51:19'),
(2746, 'english', 'Bedrooms', 'Bedrooms', '2024-12-10 10:51:19', '2024-12-10 10:51:19'),
(2748, 'english', 'Bathrooms', 'Bathrooms', '2024-12-10 10:51:19', '2024-12-10 10:51:19'),
(2750, 'english', 'Year Build', 'Year Build', '2024-12-10 10:51:19', '2024-12-10 10:51:19'),
(2752, 'english', 'Property Agent', 'Property Agent', '2024-12-10 10:51:19', '2024-12-10 10:51:19'),
(2754, 'english', 'Floor Plans', 'Floor Plans', '2024-12-10 11:47:17', '2024-12-10 11:47:17'),
(2756, 'english', 'Choose Category', 'Choose Category', '2024-12-11 07:54:11', '2024-12-11 07:54:11'),
(2758, 'english', 'Choose City', 'Choose City', '2024-12-11 08:01:54', '2024-12-11 08:01:54'),
(2760, 'english', 'Choose your budget', 'Choose your budget', '2024-12-11 08:10:24', '2024-12-11 08:10:24'),
(2762, 'english', 'Tour Type', 'Tour Type', '2024-12-18 11:10:52', '2024-12-18 11:10:52'),
(2764, 'english', 'In Progress', 'In Progress', '2024-12-18 11:10:52', '2024-12-18 11:10:52'),
(2766, 'english', 'In Person', 'In Person', '2024-12-18 11:23:40', '2024-12-18 11:23:40'),
(2768, 'english', 'Nearby', 'Nearby', '2024-12-18 11:33:25', '2024-12-18 11:33:25'),
(2770, 'english', 'Nearby Location', 'Nearby Location', '2024-12-18 11:33:25', '2024-12-18 11:33:25'),
(2772, 'english', 'Add Nearby Location', 'Add Nearby Location', '2024-12-18 11:36:59', '2024-12-18 11:36:59'),
(2774, 'english', 'School', 'School', '2024-12-18 12:33:09', '2024-12-18 12:33:09'),
(2776, 'english', 'Hospital', 'Hospital', '2024-12-18 12:33:09', '2024-12-18 12:33:09'),
(2778, 'english', 'Shopping Center', 'Shopping Center', '2024-12-18 12:33:09', '2024-12-18 12:33:09'),
(2780, 'english', 'Enter discount price', 'Enter discount price', '2024-12-19 05:02:59', '2024-12-19 05:02:59'),
(2782, 'english', 'Save Nearby', 'Save Nearby', '2024-12-19 06:32:59', '2024-12-19 06:32:59'),
(2784, 'english', 'Add a Nearby Location', 'Add a Nearby Location', '2024-12-19 06:34:00', '2024-12-19 06:34:00'),
(2786, 'english', 'Select Location', 'Select Location', '2024-12-19 06:53:18', '2024-12-19 06:53:18'),
(2788, 'english', 'Your selected', 'Your selected', '2024-12-19 06:53:18', '2024-12-19 06:53:18'),
(2790, 'english', 'NearBy Location Add successful!', 'NearBy Location Add successful!', '2024-12-19 07:19:32', '2024-12-19 07:19:32'),
(2792, 'english', 'NearBy Location Update successful!', 'NearBy Location Update successful!', '2024-12-19 09:22:08', '2024-12-19 09:22:08'),
(2794, 'english', 'Location has been deleted', 'Location has been deleted', '2024-12-19 09:30:00', '2024-12-19 09:30:00'),
(2796, 'english', '3D Model', '3D Model', '2024-12-19 10:44:50', '2024-12-19 10:44:50'),
(2798, 'english', 'Upload 3D Model: ', 'Upload 3D Model: ', '2024-12-19 10:51:38', '2024-12-19 10:51:38'),
(2800, 'english', 'Upload A 3D Model', 'Upload A 3D Model', '2024-12-19 10:54:54', '2024-12-19 10:54:54'),
(2802, 'english', 'Upload 3D Model', 'Upload 3D Model', '2024-12-19 11:08:22', '2024-12-19 11:08:22'),
(2804, 'english', 'Choose Type', 'Choose Type', '2024-12-21 06:56:57', '2024-12-21 06:56:57'),
(2806, 'english', 'Choose Model', 'Choose Model', '2024-12-21 07:02:37', '2024-12-21 07:02:37'),
(2808, 'english', 'Choose Brand', 'Choose Brand', '2024-12-21 07:02:37', '2024-12-21 07:02:37'),
(2810, 'english', 'Choose Year', 'Choose Year', '2024-12-21 07:02:37', '2024-12-21 07:02:37'),
(2812, 'english', 'Best Properties', 'Best Properties', '2024-12-21 07:08:31', '2024-12-21 07:08:31'),
(2814, 'english', 'Explore All Properties', 'Explore All Properties', '2024-12-21 07:08:31', '2024-12-21 07:08:31'),
(2816, 'english', 'For Sell', 'For Sell', '2024-12-21 07:40:38', '2024-12-21 07:40:38'),
(2818, 'english', 'For Rent', 'For Rent', '2024-12-21 07:55:45', '2024-12-21 07:55:45'),
(2820, 'english', 'All Listing', 'All Listing', '2024-12-21 08:00:40', '2024-12-21 08:00:40'),
(2822, 'english', 'Footer Copyright Text', 'Footer Copyright Text', '2024-12-21 08:22:54', '2024-12-21 08:22:54'),
(2824, 'english', 'Restaurant Home', 'Restaurant Home', '2024-12-22 06:01:38', '2024-12-22 06:01:38'),
(2826, 'english', 'Restaurant Frontend Settings', 'Restaurant Frontend Settings', '2024-12-22 06:33:48', '2024-12-22 06:33:48'),
(2828, 'english', 'Restaurant Banner Title', 'Restaurant Banner Title', '2024-12-22 06:33:48', '2024-12-22 06:33:48'),
(2830, 'english', 'Restaurant Banner 1', 'Restaurant Banner 1', '2024-12-22 06:33:48', '2024-12-22 06:33:48'),
(2832, 'english', 'Restaurant Banner', 'Restaurant Banner', '2024-12-22 06:38:56', '2024-12-22 06:38:56'),
(2834, 'english', 'Discount Banner', 'Discount Banner', '2024-12-22 07:30:34', '2024-12-22 07:30:34'),
(2836, 'english', 'View Menu', 'View Menu', '2024-12-22 07:42:52', '2024-12-22 07:42:52'),
(2838, 'english', 'Book A Table', 'Book A Table', '2024-12-22 07:42:52', '2024-12-22 07:42:52'),
(2840, 'english', 'Trending', 'Trending', '2024-12-22 08:14:43', '2024-12-22 08:14:43'),
(2842, 'english', 'Popular Restaurant', 'Popular Restaurant', '2024-12-22 09:27:02', '2024-12-22 09:27:02'),
(2844, 'english', 'Trending Restaurant', 'Trending Restaurant', '2024-12-22 09:46:09', '2024-12-22 09:46:09'),
(2846, 'english', 'Explore Restaurant', 'Explore Restaurant', '2024-12-22 10:03:54', '2024-12-22 10:03:54'),
(2848, 'english', 'Restaurants', 'Restaurants', '2024-12-22 10:03:55', '2024-12-22 10:03:55'),
(2850, 'english', 'Restaurant details', 'Restaurant details', '2024-12-22 11:13:38', '2024-12-22 11:13:38'),
(2852, 'english', 'closing', 'closing', '2024-12-22 12:03:08', '2024-12-22 12:03:08'),
(2854, 'english', 'Remove Wishlist', 'Remove Wishlist', '2024-12-23 07:18:45', '2024-12-23 07:18:45'),
(2856, 'english', 'Discount Price', 'Discount Price', '2024-12-23 10:27:53', '2024-12-23 10:27:53'),
(2858, 'english', 'New', 'New', '2024-12-23 10:27:53', '2024-12-23 10:27:53'),
(2860, 'english', 'Used', 'Used', '2024-12-23 10:27:53', '2024-12-23 10:27:53'),
(2862, 'english', '0', '0', '2024-12-23 10:46:11', '2024-12-23 10:46:11'),
(2864, 'english', 'All Restaurant', 'All Restaurant', '2024-12-23 11:53:10', '2024-12-23 11:53:10'),
(2866, 'english', 'Guests', 'Guests', '2024-12-24 04:55:44', '2024-12-24 04:55:44'),
(2868, 'english', 'Adults', 'Adults', '2024-12-24 04:55:44', '2024-12-24 04:55:44'),
(2870, 'english', 'Children', 'Children', '2024-12-24 04:55:44', '2024-12-24 04:55:44'),
(2872, 'english', 'Lunch', 'Lunch', '2024-12-24 04:55:44', '2024-12-24 04:55:44'),
(2874, 'english', 'Dinner', 'Dinner', '2024-12-24 04:55:44', '2024-12-24 04:55:44'),
(2876, 'english', ' Adult Guests:', ' Adult Guests:', '2024-12-24 07:11:34', '2024-12-24 07:11:34'),
(2878, 'english', 'Child Guests:', 'Child Guests:', '2024-12-24 07:11:34', '2024-12-24 07:11:34'),
(2880, 'english', 'Time: ', 'Time: ', '2024-12-24 07:11:34', '2024-12-24 07:11:34'),
(2882, 'english', 'Select Time', 'Select Time', '2024-12-24 07:18:19', '2024-12-24 07:18:19'),
(2884, 'english', 'Quick links', 'Quick links', '2024-12-24 09:29:59', '2024-12-24 09:29:59'),
(2886, 'english', 'About Us', 'About Us', '2024-12-24 09:29:59', '2024-12-24 09:29:59'),
(2888, 'english', 'Privacy policy', 'Privacy policy', '2024-12-24 09:29:59', '2024-12-24 09:29:59'),
(2890, 'english', 'Terms and Condition', 'Terms and Condition', '2024-12-24 09:29:59', '2024-12-24 09:29:59'),
(2892, 'english', 'Links', 'Links', '2024-12-24 09:32:31', '2024-12-24 09:32:31'),
(2894, 'english', 'Popular Product', 'Popular Product', '2024-12-24 11:28:14', '2024-12-24 11:28:14'),
(2896, 'english', 'Best Product', 'Best Product', '2024-12-24 11:28:14', '2024-12-24 11:28:14'),
(2898, 'english', 'Wellness Product', 'Wellness Product', '2024-12-24 11:28:14', '2024-12-24 11:28:14'),
(2900, 'english', 'Agent Details', 'Agent Details', '2024-12-25 05:45:25', '2024-12-25 05:45:25'),
(2902, 'english', 'Facebook.com', 'Facebook.com', '2024-12-25 06:02:08', '2024-12-25 06:02:08'),
(2904, 'english', 'Twitter.com', 'Twitter.com', '2024-12-25 06:05:37', '2024-12-25 06:05:37'),
(2906, 'english', 'linkedin.com', 'linkedin.com', '2024-12-25 06:05:37', '2024-12-25 06:05:37'),
(2908, 'english', 'Listings', 'Listings', '2024-12-25 06:29:54', '2024-12-25 06:29:54'),
(2910, 'english', 'Send Email', 'Send Email', '2024-12-25 06:29:54', '2024-12-25 06:29:54'),
(2912, 'english', 'Call', 'Call', '2024-12-25 06:29:54', '2024-12-25 06:29:54'),
(2914, 'english', 'Our Happy Customers', 'Our Happy Customers', '2024-12-25 07:26:24', '2024-12-25 07:26:24'),
(2916, 'english', 'Hotels', 'Hotels', '2024-12-25 07:40:44', '2024-12-25 07:40:44'),
(2918, 'english', 'No Data were found matching your selection.', 'No Data were found matching your selection.', '2024-12-25 07:50:05', '2024-12-25 07:50:05'),
(2920, 'english', 'Share On :', 'Share On :', '2024-12-25 08:12:13', '2024-12-25 08:12:13'),
(2922, 'english', 'Tags :', 'Tags :', '2024-12-25 08:17:53', '2024-12-25 08:17:53'),
(2924, 'english', 'Related Blogs', 'Related Blogs', '2024-12-25 09:17:48', '2024-12-25 09:17:48'),
(2926, 'english', 'Newsletter Subscribe successfully', 'Newsletter Subscribe successfully', '2024-12-25 10:15:38', '2024-12-25 10:15:38'),
(2928, 'english', 'Subscribe User', 'Subscribe User', '2024-12-25 10:48:35', '2024-12-25 10:48:35'),
(2930, 'english', 'Add Newsletter', 'Add Newsletter', '2024-12-25 10:48:55', '2024-12-25 10:48:55'),
(2932, 'english', 'Newsletter', 'Newsletter', '2024-12-25 10:53:14', '2024-12-25 10:53:14'),
(2934, 'english', 'Subscribers', 'Subscribers', '2024-12-25 10:54:15', '2024-12-25 10:54:15'),
(2936, 'english', 'Export', 'Export', '2024-12-25 10:54:15', '2024-12-25 10:54:15'),
(2938, 'english', 'PDF', 'PDF', '2024-12-25 10:54:15', '2024-12-25 10:54:15'),
(2940, 'english', 'Print', 'Print', '2024-12-25 10:54:15', '2024-12-25 10:54:15'),
(2942, 'english', 'Search Email', 'Search Email', '2024-12-25 10:54:54', '2024-12-25 10:54:54'),
(2944, 'english', 'User status', 'User status', '2024-12-25 10:54:54', '2024-12-25 10:54:54'),
(2946, 'english', 'Actions', 'Actions', '2024-12-25 10:54:54', '2024-12-25 10:54:54'),
(2948, 'english', 'Not Registered', 'Not Registered', '2024-12-25 10:54:54', '2024-12-25 10:54:54'),
(2950, 'english', 'data', 'data', '2024-12-25 10:54:54', '2024-12-25 10:54:54'),
(2952, 'english', 'Subscriber', 'Subscriber', '2024-12-25 10:56:59', '2024-12-25 10:56:59'),
(2954, 'english', 'Registered User', 'Registered User', '2024-12-25 11:05:59', '2024-12-25 11:05:59'),
(2956, 'english', 'Data not found.', 'Data not found.', '2024-12-25 11:07:49', '2024-12-25 11:07:49'),
(2958, 'english', 'subscriber delete successfully!', 'subscriber delete successfully!', '2024-12-25 11:09:38', '2024-12-25 11:09:38'),
(2960, 'english', 'You are already subscribed', 'You are already subscribed', '2024-12-25 11:11:42', '2024-12-25 11:11:42'),
(2962, 'english', 'Warning', 'Warning', '2024-12-25 11:11:42', '2024-12-25 11:11:42'),
(2964, 'english', 'Newsletter Subscriber', 'Newsletter Subscriber', '2024-12-25 11:12:43', '2024-12-25 11:12:43'),
(2966, 'english', 'Subscription delete successfully!', 'Subscription delete successfully!', '2024-12-25 11:20:28', '2024-12-25 11:20:28'),
(2968, 'english', 'Subject', 'Subject', '2024-12-25 11:31:12', '2024-12-25 11:31:12'),
(2970, 'english', 'Write  description', 'Write  description', '2024-12-25 11:33:44', '2024-12-25 11:33:44'),
(2972, 'english', 'Newsletter created successfully!', 'Newsletter created successfully!', '2024-12-25 11:37:48', '2024-12-25 11:37:48'),
(2974, 'english', 'Send Newsletter', 'Send Newsletter', '2024-12-25 11:43:09', '2024-12-25 11:43:09'),
(2976, 'english', 'Newsletter deleted successfully.', 'Newsletter deleted successfully.', '2024-12-25 11:53:14', '2024-12-25 11:53:14'),
(2978, 'english', 'Update Newsletter', 'Update Newsletter', '2024-12-25 12:00:26', '2024-12-25 12:00:26'),
(2980, 'english', 'Newsletter updated successfully.', 'Newsletter updated successfully.', '2024-12-25 12:21:38', '2024-12-25 12:21:38'),
(2982, 'english', 'Send To', 'Send To', '2024-12-25 12:30:51', '2024-12-25 12:30:51'),
(2984, 'english', 'Selected user', 'Selected user', '2024-12-25 12:30:51', '2024-12-25 12:30:51'),
(2986, 'english', 'All user', 'All user', '2024-12-25 12:30:51', '2024-12-25 12:30:51'),
(2988, 'english', 'All student', 'All student', '2024-12-25 12:30:51', '2024-12-25 12:30:51'),
(2990, 'english', 'All instructor', 'All instructor', '2024-12-25 12:30:51', '2024-12-25 12:30:51'),
(2992, 'english', 'All subscriber', 'All subscriber', '2024-12-25 12:30:51', '2024-12-25 12:30:51'),
(2994, 'english', 'Non registered user', 'Non registered user', '2024-12-25 12:30:51', '2024-12-25 12:30:51'),
(2996, 'english', 'Email sent successfully', 'Email sent successfully', '2024-12-26 07:13:54', '2024-12-26 07:13:54'),
(2998, 'english', 'Please select a user', 'Please select a user', '2024-12-26 07:21:40', '2024-12-26 07:21:40'),
(3000, 'english', 'SMTP Settings', 'SMTP Settings', '2024-12-26 09:36:42', '2024-12-26 09:36:42'),
(3002, 'english', 'Menu Settings', 'Menu Settings', '2024-12-26 09:39:42', '2024-12-26 09:39:42'),
(3004, 'english', 'You can re-order the Menu by dragging and dropping each of the Menu!', 'You can re-order the Menu by dragging and dropping each of the Menu!', '2024-12-26 11:05:45', '2024-12-26 11:05:45'),
(3006, 'english', 'You can reorder the menu by dragging and dropping each item! The way you arrange them here will be reflected on the frontend as well.', 'You can reorder the menu by dragging and dropping each item! The way you arrange them here will be reflected on the frontend as well.', '2024-12-26 11:17:10', '2024-12-26 11:17:10'),
(3008, 'english', 'MAIN MENU', 'MAIN MENU', '2024-12-27 14:39:14', '2024-12-27 14:39:14'),
(3010, 'english', 'All Customer', 'All Customer', '2024-12-27 14:40:29', '2024-12-27 14:40:29'),
(3012, 'english', 'Website FAQ', 'Website FAQ', '2024-12-27 14:58:10', '2024-12-27 14:58:10'),
(3014, 'english', 'Question', 'Question', '2024-12-27 15:01:19', '2024-12-27 15:01:19'),
(3016, 'english', 'Write a question', 'Write a question', '2024-12-27 15:01:19', '2024-12-27 15:01:19'),
(3018, 'english', 'Answer', 'Answer', '2024-12-27 15:01:19', '2024-12-27 15:01:19'),
(3020, 'english', 'Write a question answer', 'Write a question answer', '2024-12-27 15:01:19', '2024-12-27 15:01:19'),
(3022, 'english', 'Website Faqs update successfully', 'Website Faqs update successfully', '2024-12-27 15:05:39', '2024-12-27 15:05:39'),
(3024, 'english', 'Frequently Asked Questions', 'Frequently Asked Questions', '2024-12-27 15:10:51', '2024-12-27 15:10:51'),
(3026, 'english', 'Privacy policy', 'Privacy policy', '2024-12-27 15:18:28', '2024-12-27 15:18:28'),
(3028, 'english', 'Refund policy', 'Refund policy', '2024-12-27 15:18:28', '2024-12-27 15:18:28'),
(3030, 'english', 'Write description', 'Write description', '2024-12-27 15:24:26', '2024-12-27 15:24:26'),
(3032, 'english', 'Privacy-policy', 'Privacy-policy', '2024-12-27 15:46:44', '2024-12-27 15:46:44'),
(3034, 'english', 'Another Links', 'Another Links', '2024-12-27 15:58:00', '2024-12-27 15:58:00'),
(3036, 'english', 'Pricing Plan for Becoming Agent', 'Pricing Plan for Becoming Agent', '2024-12-27 15:58:03', '2024-12-27 15:58:03'),
(3038, 'english', 'Get In Touch', 'Get In Touch', '2024-12-27 16:27:19', '2024-12-27 16:27:19'),
(3040, 'english', 'Awesome  site. on the top advertising a Courses available business online includes assembling  site on the site.', 'Awesome  site. on the top advertising a Courses available business online includes assembling  site on the site.', '2024-12-27 16:27:19', '2024-12-27 16:27:19'),
(3042, 'english', 'Company', 'Company', '2024-12-27 16:48:31', '2024-12-27 16:48:31'),
(3044, 'english', 'I am bound by the terms of the service I accept Privacy Policy', 'I am bound by the terms of the service I accept Privacy Policy', '2024-12-27 16:48:31', '2024-12-27 16:48:31'),
(3046, 'english', 'Send Message', 'Send Message', '2024-12-27 16:48:31', '2024-12-27 16:48:31'),
(3048, 'english', 'Contact successfully', 'Contact successfully', '2024-12-27 17:09:42', '2024-12-27 17:09:42'),
(3050, 'english', 'Search Contact', 'Search Contact', '2024-12-27 17:29:52', '2024-12-27 17:29:52'),
(3052, 'english', 'Contact delete successfully!', 'Contact delete successfully!', '2024-12-27 17:44:20', '2024-12-27 17:44:20'),
(3055, 'english', 'Tamil', 'Tamil', '2024-12-27 18:11:36', '2024-12-27 18:11:36'),
(3057, 'english', 'Send reply', 'Send reply', '2024-12-27 18:16:59', '2024-12-27 18:16:59'),
(3060, 'english', 'Atlas Sign Up', 'Atlas Sign Up', '2024-12-27 19:04:35', '2024-12-27 19:04:35'),
(3063, 'english', 'Atlas Forgot Password', 'Atlas Forgot Password', '2024-12-27 19:12:23', '2024-12-27 19:12:23'),
(3066, 'english', 'Forgot Password', 'Forgot Password', '2024-12-27 19:17:54', '2024-12-27 19:17:54'),
(3069, 'english', 'Email :', 'Email :', '2024-12-28 05:28:59', '2024-12-28 05:28:59'),
(3072, 'english', 'User Full Name *', 'User Full Name *', '2024-12-28 06:52:50', '2024-12-28 06:52:50'),
(3075, 'english', 'Engine size', 'Engine size', '2024-12-28 07:50:20', '2024-12-28 07:50:20'),
(3078, 'english', 'Filter', 'Filter', '2024-12-28 08:38:18', '2024-12-28 08:38:18'),
(3081, 'english', '404 not found', '404 not found', '2024-12-29 04:55:43', '2024-12-29 04:55:43'),
(3084, 'english', 'The page you requested could not be found', 'The page you requested could not be found', '2024-12-29 04:55:43', '2024-12-29 04:55:43'),
(3087, 'english', 'Please try the following', 'Please try the following', '2024-12-29 04:55:43', '2024-12-29 04:55:43'),
(3090, 'english', 'Check the spelling of the url', 'Check the spelling of the url', '2024-12-29 04:55:43', '2024-12-29 04:55:43'),
(3093, 'english', 'If you are still puzzled, click on the home link below', 'If you are still puzzled, click on the home link below', '2024-12-29 04:55:43', '2024-12-29 04:55:43'),
(3096, 'english', 'Back to home', 'Back to home', '2024-12-29 04:55:43', '2024-12-29 04:55:43'),
(3099, 'english', '500 not found', '500 not found', '2024-12-29 05:05:15', '2024-12-29 05:05:15'),
(3102, 'english', '500 error found', '500 error found', '2024-12-29 05:05:15', '2024-12-29 05:05:15'),
(3105, 'english', 'A technical error has occurred', 'A technical error has occurred', '2024-12-29 05:05:15', '2024-12-29 05:05:15'),
(3108, 'english', 'Please contact with site administrator', 'Please contact with site administrator', '2024-12-29 05:05:15', '2024-12-29 05:05:15'),
(3111, 'english', 'Contact Email', 'Contact Email', '2024-12-29 05:05:15', '2024-12-29 05:05:15'),
(3114, 'english', 'Atlas Reset Password', 'Atlas Reset Password', '2024-12-29 05:45:26', '2024-12-29 05:45:26'),
(3117, 'english', 'Reset Password', 'Reset Password', '2024-12-29 05:45:26', '2024-12-29 05:45:26'),
(3120, 'english', 'Submit your account email address.', 'Submit your account email address.', '2024-12-29 05:45:26', '2024-12-29 05:45:26'),
(3123, 'english', 'Your Email', 'Your Email', '2024-12-29 05:45:26', '2024-12-29 05:45:26'),
(3126, 'english', 'A confirmation email has been sent. Please check your inbox to confirm access to this account from this device.', 'A confirmation email has been sent. Please check your inbox to confirm access to this account from this device.', '2024-12-29 06:32:46', '2024-12-29 06:32:46'),
(3129, 'english', 'A confirmation email has been sent. Please check your inbox.', 'A confirmation email has been sent. Please check your inbox.', '2024-12-29 06:35:10', '2024-12-29 06:35:10'),
(3132, 'english', 'Password Reset Successfully', 'Password Reset Successfully', '2024-12-29 06:37:04', '2024-12-29 06:37:04'),
(3135, 'english', 'Login Successfully', 'Login Successfully', '2024-12-29 06:39:27', '2024-12-29 06:39:27'),
(3147, 'english', 'Back to login Page.', 'Back to login Page.', '2024-12-29 07:08:36', '2024-12-29 07:08:36'),
(3150, 'english', 'Back to login.', 'Back to login.', '2024-12-29 07:09:49', '2024-12-29 07:09:49'),
(3153, 'english', 'A verification link has been sent to your email address.', 'A verification link has been sent to your email address.', '2024-12-29 08:13:45', '2024-12-29 08:13:45'),
(3156, 'english', 'Registered successfully!', 'Registered successfully!', '2024-12-29 08:15:16', '2024-12-29 08:15:16'),
(3162, 'english', 'Atlas Verify  Email', 'Atlas Verify  Email', '2024-12-29 09:00:07', '2024-12-29 09:00:07'),
(3165, 'english', 'Enter Verification COde', 'Enter Verification COde', '2024-12-29 09:00:07', '2024-12-29 09:00:07'),
(3168, 'english', 'Thanks for signing up! Before getting started, could you verify your email address by clicking on the link we just emailed to you? If you didn\'t receive the email, we will gladly send you another.', 'Thanks for signing up! Before getting started, could you verify your email address by clicking on the link we just emailed to you? If you didn\'t receive the email, we will gladly send you another.', '2024-12-29 09:00:07', '2024-12-29 09:00:07'),
(3171, 'english', 'Resend Verification Email', 'Resend Verification Email', '2024-12-29 09:00:07', '2024-12-29 09:00:07'),
(3174, 'english', 'A new verification link has been sent to the email address you provided during registration.', 'A new verification link has been sent to the email address you provided during registration.', '2024-12-29 09:00:18', '2024-12-29 09:00:18'),
(3183, 'english', 'Send Verification Email', 'Send Verification Email', '2024-12-29 10:29:51', '2024-12-29 10:29:51'),
(3192, 'english', 'Click Verify Email', 'Click Verify Email', '2024-12-29 10:49:09', '2024-12-29 10:49:09'),
(3195, 'english', 'Package update successfully!', 'Package update successfully!', '2024-12-29 12:35:41', '2024-12-29 12:35:41'),
(3204, 'english', 'Pay by Stripe', 'Pay by Stripe', '2024-12-30 05:36:59', '2024-12-30 05:36:59'),
(3207, 'english', 'Purchasing', 'Purchasing', '2024-12-30 06:48:46', '2024-12-30 06:48:46'),
(3210, 'english', 'Payment not configured yet', 'Payment not configured yet', '2024-12-30 07:12:31', '2024-12-30 07:12:31'),
(3213, 'english', 'Payment not configured yet!', 'Payment not configured yet!', '2024-12-30 07:26:11', '2024-12-30 07:26:11'),
(3222, 'english', 'Melanie Vasquez 124', 'Melanie Vasquez 124', '2024-12-30 10:02:17', '2024-12-30 10:02:17'),
(3225, 'english', 'Aliquid sit maxime a', 'Aliquid sit maxime a', '2024-12-30 10:02:17', '2024-12-30 10:02:17'),
(3228, 'english', 'Pay by Razorpay', 'Pay by Razorpay', '2024-12-30 10:19:04', '2024-12-30 10:19:04'),
(3231, 'english', 'Pay', 'Pay', '2024-12-30 10:32:38', '2024-12-30 10:32:38'),
(3234, 'english', 'Payment failed! Please try again.', 'Payment failed! Please try again.', '2024-12-30 10:58:20', '2024-12-30 10:58:20'),
(3237, 'english', 'User information updated!', 'User information updated!', '2024-12-30 12:18:41', '2024-12-30 12:18:41'),
(3243, 'english', 'pay by paystack', 'pay by paystack', '2024-12-31 04:52:58', '2024-12-31 04:52:58'),
(3246, 'english', 'Total Listing', 'Total Listing', '2024-12-31 05:50:55', '2024-12-31 05:50:55'),
(3249, 'english', 'Real-Estate Listing', 'Real-Estate Listing', '2024-12-31 05:56:25', '2024-12-31 05:56:25'),
(3252, 'english', 'Total Subscription', 'Total Subscription', '2024-12-31 06:05:18', '2024-12-31 06:05:18'),
(3255, 'english', 'Monthly Earnings for', 'Monthly Earnings for', '2024-12-31 09:19:21', '2024-12-31 09:19:21'),
(3258, 'english', 'Visible Listings as Percentages', 'Visible Listings as Percentages', '2024-12-31 09:51:45', '2024-12-31 09:51:45'),
(3261, 'english', 'Language updated successfully!', 'Language updated successfully!', '2024-12-31 10:00:45', '2024-12-31 10:00:45'),
(3339, 'english', 'Cars', 'Cars', '2024-12-31 11:01:05', '2024-12-31 11:01:05'),
(3342, 'english', 'Terms-and-condition', 'Terms-and-condition', '2024-12-31 11:25:45', '2024-12-31 11:25:45'),
(3348, 'english', 'Video Chat', 'Video Chat', '2025-01-02 07:46:10', '2025-01-02 07:46:10'),
(3351, 'english', 'Website name', 'Website name', '2025-01-02 09:57:02', '2025-01-02 09:57:02'),
(3354, 'english', 'Website Email', 'Website Email', '2025-01-02 09:57:02', '2025-01-02 09:57:02'),
(3357, 'english', 'Website keywords', 'Website keywords', '2025-01-02 09:57:02', '2025-01-02 09:57:02'),
(3360, 'english', 'Website Description', 'Website Description', '2025-01-02 09:57:02', '2025-01-02 09:57:02'),
(3363, 'english', 'Author', 'Author', '2025-01-02 09:57:02', '2025-01-02 09:57:02'),
(3366, 'english', 'Install successfully!', 'Install successfully!', '2025-01-02 10:52:56', '2025-01-02 10:52:56'),
(3372, 'english', 'Are you sure?', 'Are you sure?', '2025-03-11 09:34:42', '2025-03-11 09:34:42'),
(3373, 'english', 'You can\'t bring it back!', 'You can\'t bring it back!', '2025-03-11 09:34:42', '2025-03-11 09:34:42'),
(3374, 'english', 'Cancel', 'Cancel', '2025-03-11 09:34:42', '2025-03-11 09:34:42'),
(3375, 'english', 'Confirm', 'Confirm', '2025-03-11 09:34:42', '2025-03-11 09:34:42'),
(3376, 'english', 'Just Now', 'Just Now', '2025-03-11 09:34:42', '2025-03-11 09:34:42'),
(3377, 'english', 'Success !', 'Success !', '2025-03-11 09:34:42', '2025-03-11 09:34:42'),
(3378, 'english', 'Attention !', 'Attention !', '2025-03-11 09:34:42', '2025-03-11 09:34:42'),
(3379, 'english', 'An Error Occurred !', 'An Error Occurred !', '2025-03-11 09:34:42', '2025-03-11 09:34:42'),
(3380, 'english', 'Real-Estate Directory Listing', 'Real-Estate Directory Listing', '2025-03-11 09:34:52', '2025-03-11 09:34:52'),
(3381, 'english', 'Budget', 'Budget', '2025-03-11 09:34:52', '2025-03-11 09:34:52'),
(3382, 'english', 'New Properties', 'New Properties', '2025-03-11 09:34:52', '2025-03-11 09:34:52'),
(3383, 'english', 'Home | Atlas Directory Listing', 'Home | Atlas Directory Listing', '2025-03-11 09:35:37', '2025-03-11 09:35:37'),
(3384, 'english', 'Car Grid', 'Car Grid', '2025-03-11 09:35:47', '2025-03-11 09:35:47'),
(3386, 'english', 'Listing Cities', 'Listing Cities', '2025-03-11 09:36:11', '2025-03-11 09:36:11'),
(3387, 'english', 'Agent Packages', 'Agent Packages', '2025-03-11 09:36:11', '2025-03-11 09:36:11'),
(3388, 'english', 'Admin Panel', 'Admin Panel', '2025-03-11 09:36:11', '2025-03-11 09:36:11'),
(3389, 'english', 'Tags:', 'Tags:', '2025-03-11 09:50:29', '2025-03-11 09:50:29'),
(3390, 'english', 'Recent Post', 'Recent Post', '2025-03-11 09:51:40', '2025-03-11 09:51:40'),
(3391, 'english', 'Hotel Directory Listing', 'Hotel Directory Listing', '2025-03-11 10:17:17', '2025-03-11 10:17:17'),
(3392, 'english', 'Beauty Directory Listings', 'Beauty Directory Listings', '2025-03-11 10:18:32', '2025-03-11 10:18:32'),
(3393, 'english', '11.10.0', '11.10.0', '2025-03-11 10:47:33', '2025-03-11 10:47:33'),
(3394, 'english', 'Hotel Grid', 'Hotel Grid', '2025-03-11 10:55:59', '2025-03-11 10:55:59'),
(3395, 'english', 'Beauty Grid', 'Beauty Grid', '2025-03-11 10:56:05', '2025-03-11 10:56:05'),
(3396, 'english', 'Restaurant Grid', 'Restaurant Grid', '2025-03-11 10:56:10', '2025-03-11 10:56:10'),
(3397, 'english', 'Car Directory Listing', 'Car Directory Listing', '2025-03-11 10:56:14', '2025-03-11 10:56:14'),
(3398, 'english', 'User deleted successfully!', 'User deleted successfully!', '2025-03-11 11:13:42', '2025-03-11 11:13:42'),
(3399, 'english', 'Amenities Image', 'Amenities Image', '2025-03-11 11:24:35', '2025-03-11 11:24:35'),
(3400, 'english', 'upload a image', 'upload a image', '2025-03-11 11:24:35', '2025-03-11 11:24:35'),
(3401, 'english', 'Category added successful!', 'Category added successful!', '2025-03-11 12:02:09', '2025-03-11 12:02:09'),
(3402, 'english', 'max 500 x 700px', 'max 500 x 700px', '2025-03-11 12:04:43', '2025-03-11 12:04:43'),
(3404, 'english', 'Back to login', 'Back to login', '2025-03-12 05:04:41', '2025-03-12 05:04:41'),
(3406, 'english', 'Footer  Text', 'Footer  Text', '2025-03-12 05:11:59', '2025-03-12 05:11:59'),
(3407, 'english', 'Timezone', 'Timezone', '2025-03-12 05:11:59', '2025-03-12 05:11:59'),
(3408, 'english', 'Update Service', 'Update Service', '2025-03-12 07:12:30', '2025-03-12 07:12:30'),
(3409, 'english', 'Listing team create successful!', 'Listing team create successful!', '2025-03-12 07:30:44', '2025-03-12 07:30:44'),
(3410, 'english', 'Listing service create successful!', 'Listing service create successful!', '2025-03-12 07:32:03', '2025-03-12 07:32:03'),
(3411, 'english', 'Add to Wishlist', 'Add to Wishlist', '2025-03-12 07:32:13', '2025-03-12 07:32:13'),
(3412, 'english', 'Copy link to share', 'Copy link to share', '2025-03-12 07:32:22', '2025-03-12 07:32:22'),
(3413, 'english', 'Select date', 'Select date', '2025-03-12 07:32:22', '2025-03-12 07:32:22'),
(3414, 'english', 'Remove from Wishlist', 'Remove from Wishlist', '2025-03-12 07:37:54', '2025-03-12 07:37:54'),
(3415, 'english', 'Beauty List', 'Beauty List', '2025-03-12 07:42:08', '2025-03-12 07:42:08'),
(3416, 'english', 'Inbox is Empty', 'Inbox is Empty', '2025-03-12 08:10:06', '2025-03-12 08:10:06'),
(3417, 'english', 'No Messages Yet.', 'No Messages Yet.', '2025-03-12 08:10:06', '2025-03-12 08:10:06'),
(3418, 'english', 'It seems you haven\'t start conversion', 'It seems you haven\'t start conversion', '2025-03-12 08:10:06', '2025-03-12 08:10:06'),
(3419, 'english', ' with any of our professionals yet!', ' with any of our professionals yet!', '2025-03-12 08:10:06', '2025-03-12 08:10:06'),
(3420, 'english', 'Chat', 'Chat', '2025-03-12 08:10:21', '2025-03-12 08:10:21'),
(3421, 'english', 'All Listing Type', 'All Listing Type', '2025-03-12 09:28:32', '2025-03-12 09:28:32'),
(3422, 'english', 'View Frontend', 'View Frontend', '2025-03-12 09:41:36', '2025-03-12 09:41:36'),
(3423, 'english', 'Select  City', 'Select  City', '2025-03-12 09:46:45', '2025-03-12 09:46:45'),
(3424, 'english', 'You can\'t book your own business!', 'You can\'t book your own business!', '2025-03-12 10:04:54', '2025-03-12 10:04:54'),
(3425, 'english', 'Approve', 'Approve', '2025-03-12 10:18:52', '2025-03-12 10:18:52'),
(3426, 'english', 'Claim Listing', 'Claim Listing', '2025-03-12 11:46:54', '2025-03-12 11:46:54'),
(3427, 'english', 'Claim this listing', 'Claim this listing', '2025-03-12 11:56:49', '2025-03-12 11:56:49'),
(3428, 'english', 'Additional Proof', 'Additional Proof', '2025-03-12 12:03:49', '2025-03-12 12:03:49'),
(3429, 'english', 'Additional Info', 'Additional Info', '2025-03-12 12:05:08', '2025-03-12 12:05:08'),
(3430, 'english', 'Appointment placed successfully!', 'Appointment placed successfully!', '2025-03-12 12:33:52', '2025-03-12 12:33:52'),
(3431, 'english', 'Already Claimed', 'Already Claimed', '2025-03-13 07:07:25', '2025-03-13 07:07:25'),
(3432, 'english', 'Report Listing', 'Report Listing', '2025-03-13 07:41:19', '2025-03-13 07:41:19'),
(3433, 'english', 'Listing Owener', 'Listing Owener', '2025-03-13 10:05:03', '2025-03-13 10:05:03'),
(3434, 'english', 'Additional information', 'Additional information', '2025-03-13 10:05:03', '2025-03-13 10:05:03'),
(3435, 'english', 'Listing Owner', 'Listing Owner', '2025-03-13 10:34:14', '2025-03-13 10:34:14'),
(3436, 'english', 'Listings Type', 'Listings Type', '2025-03-13 10:34:14', '2025-03-13 10:34:14'),
(3437, 'english', 'Claimed listing has been deleted successfully!', 'Claimed listing has been deleted successfully!', '2025-03-13 10:53:05', '2025-03-13 10:53:05'),
(3438, 'english', 'You can it back!', 'You can it back!', '2025-03-13 11:18:24', '2025-03-13 11:18:24');
INSERT INTO `languages` (`id`, `name`, `phrase`, `translated`, `created_at`, `updated_at`) VALUES
(3439, 'english', 'Once approved, this action cannot be reversed and will be finalized.', 'Once approved, this action cannot be reversed and will be finalized.', '2025-03-13 11:25:40', '2025-03-13 11:25:40'),
(3440, 'english', 'Listing not found.', 'Listing not found.', '2025-03-13 11:59:00', '2025-03-13 11:59:00'),
(3441, 'english', 'Listing has been approved successfully.', 'Listing has been approved successfully.', '2025-03-13 12:05:45', '2025-03-13 12:05:45'),
(3448, 'english', 'Hotel Category', 'Hotel Category', '2025-03-15 11:08:30', '2025-03-15 11:08:30'),
(3449, 'english', 'Hotels Category', 'Hotels Category', '2025-03-15 11:08:38', '2025-03-15 11:08:38'),
(3450, 'english', 'Real Estate Grid', 'Real Estate Grid', '2025-03-15 11:11:40', '2025-03-15 11:11:40'),
(3451, 'english', 'Restaurant Category', 'Restaurant Category', '2025-03-15 11:17:14', '2025-03-15 11:17:14'),
(3452, 'english', 'Real-estate Category', 'Real-estate Category', '2025-03-15 11:17:21', '2025-03-15 11:17:21'),
(3453, 'english', 'Claim', 'Claim', '2025-03-15 11:29:24', '2025-03-15 11:29:24'),
(3454, 'english', 'Claim Title', 'Claim Title', '2025-03-15 11:29:25', '2025-03-15 11:29:25'),
(3455, 'english', 'This directory is not yet verified !', 'This directory is not yet verified !', '2025-03-15 11:32:47', '2025-03-15 11:32:47'),
(3456, 'english', 'Provide Validity', 'Provide Validity', '2025-03-15 11:32:47', '2025-03-15 11:32:47'),
(3457, 'english', 'Enter Full Name', 'Enter Full Name', '2025-03-15 11:54:53', '2025-03-15 11:54:53'),
(3458, 'english', 'Enter Phonr Number', 'Enter Phonr Number', '2025-03-15 11:54:53', '2025-03-15 11:54:53'),
(3459, 'english', 'Enter Additional Info', 'Enter Additional Info', '2025-03-15 11:54:53', '2025-03-15 11:54:53'),
(3460, 'english', 'Enter Phone Number', 'Enter Phone Number', '2025-03-15 11:55:10', '2025-03-15 11:55:10'),
(3461, 'english', 'Listing has been Claimed successfully.', 'Listing has been Claimed successfully.', '2025-03-15 12:28:06', '2025-03-15 12:28:06'),
(3462, 'english', 'Remove verification Status', 'Remove verification Status', '2025-03-15 12:45:09', '2025-03-15 12:45:09'),
(3463, 'english', 'Claimed listing has been remove successfully!', 'Claimed listing has been remove successfully!', '2025-03-16 06:34:45', '2025-03-16 06:34:45'),
(3464, 'english', 'The claimed listing has been approved successfully!', 'The claimed listing has been approved successfully!', '2025-03-16 06:52:24', '2025-03-16 06:52:24'),
(3465, 'english', 'Engin Size', 'Engin Size', '2025-03-16 07:37:29', '2025-03-16 07:37:29'),
(3466, 'english', 'Welcome back ____', 'Welcome back ____', '2025-03-16 07:42:59', '2025-03-16 07:42:59'),
(3467, 'english', 'Car Category', 'Car Category', '2025-03-16 09:34:30', '2025-03-16 09:34:30'),
(3468, 'english', 'Beauty Category', 'Beauty Category', '2025-03-16 10:04:12', '2025-03-16 10:04:12'),
(3469, 'english', 'This listing is verified', 'This listing is verified', '2025-03-16 10:22:16', '2025-03-16 10:22:16'),
(3470, 'english', 'Car list', 'Car list', '2025-03-16 11:26:32', '2025-03-16 11:26:32'),
(3471, 'english', 'Enter number of person', 'Enter number of person', '2025-03-16 12:09:19', '2025-03-16 12:09:19'),
(3472, 'english', 'Enter number of child', 'Enter number of child', '2025-03-16 12:09:19', '2025-03-16 12:09:19'),
(3473, 'english', 'Update New Room', 'Update New Room', '2025-03-16 12:09:38', '2025-03-16 12:09:38'),
(3474, 'english', 'Hotel list', 'Hotel list', '2025-03-16 12:23:26', '2025-03-16 12:23:26'),
(3475, 'english', 'Restaurant Listing Details', 'Restaurant Listing Details', '2025-03-17 06:43:26', '2025-03-17 06:43:26'),
(3476, 'english', 'Enter year', 'Enter year', '2025-03-17 07:03:24', '2025-03-17 07:03:24'),
(3477, 'english', '3D Link', '3D Link', '2025-03-17 07:05:30', '2025-03-17 07:05:30'),
(3478, 'english', 'Report this listing', 'Report this listing', '2025-03-17 10:25:06', '2025-03-17 10:25:06'),
(3479, 'english', 'Report Type', 'Report Type', '2025-03-17 12:01:08', '2025-03-17 12:01:08'),
(3480, 'english', 'False Information', 'False Information', '2025-03-17 12:01:08', '2025-03-17 12:01:08'),
(3481, 'english', 'Spam / Fraud', 'Spam / Fraud', '2025-03-17 12:01:08', '2025-03-17 12:01:08'),
(3482, 'english', 'Inappropriate Content', 'Inappropriate Content', '2025-03-17 12:01:08', '2025-03-17 12:01:08'),
(3483, 'english', 'Others', 'Others', '2025-03-17 12:01:08', '2025-03-17 12:01:08'),
(3484, 'english', 'Already Reported', 'Already Reported', '2025-03-18 06:17:46', '2025-03-18 06:17:46'),
(3485, 'english', 'Report', 'Report', '2025-03-18 07:03:12', '2025-03-18 07:03:12'),
(3486, 'english', 'Owner:', 'Owner:', '2025-03-18 07:12:21', '2025-03-18 07:12:21'),
(3487, 'english', 'Listing Owner:', 'Listing Owner:', '2025-03-18 07:12:35', '2025-03-18 07:12:35'),
(3488, 'english', 'View Listing Frontend', 'View Listing Frontend', '2025-03-18 07:14:48', '2025-03-18 07:14:48'),
(3489, 'english', 'Report listing has been remove successfully!', 'Report listing has been remove successfully!', '2025-03-18 07:26:46', '2025-03-18 07:26:46'),
(3490, 'english', 'The Report listing has been approved successfully!', 'The Report listing has been approved successfully!', '2025-03-18 08:07:51', '2025-03-18 08:07:51'),
(3491, 'english', 'Reason', 'Reason', '2025-03-18 09:33:40', '2025-03-18 09:33:40'),
(3492, 'english', 'Reported by', 'Reported by', '2025-03-18 09:34:07', '2025-03-18 09:34:07'),
(3493, 'english', 'Report Delete', 'Report Delete', '2025-03-18 09:34:36', '2025-03-18 09:34:36'),
(3494, 'english', 'Listing Delete', 'Listing Delete', '2025-03-18 09:39:29', '2025-03-18 09:39:29'),
(3495, 'english', 'Listings Delete', 'Listings Delete', '2025-03-18 09:39:38', '2025-03-18 09:39:38'),
(3496, 'english', 'Select Report Type', 'Select Report Type', '2025-03-18 10:01:51', '2025-03-18 10:01:51'),
(3497, 'english', 'Report Type : ', 'Report Type : ', '2025-03-18 10:45:11', '2025-03-18 10:45:11'),
(3498, 'english', '360 X 360', '360 X 360', '2025-03-18 11:13:45', '2025-03-18 11:13:45'),
(3499, 'english', 'Addons', 'Addons', '2025-04-10 07:04:25', '2025-04-10 07:04:25'),
(3500, 'english', 'Renew support', 'Renew support', '2025-04-10 07:06:03', '2025-04-10 07:06:03'),
(3501, 'english', 'Update Product', 'Update Product', '2025-04-10 07:06:08', '2025-04-10 07:06:08'),
(3502, 'english', 'Version updated successfully!', 'Version updated successfully!', '2025-04-10 07:06:24', '2025-04-10 07:06:24'),
(3503, 'english', 'National ATLS Schedule', 'National ATLS Schedule', '2025-09-04 04:49:33', '2025-09-04 04:49:33'),
(3504, 'english', 'ATLS Regional XVI', 'ATLS Regional XVI', '2025-09-04 04:49:33', '2025-09-04 04:49:33'),
(3505, 'english', 'ACS', 'ACS', '2025-09-04 04:49:33', '2025-09-04 04:49:33'),
(3506, 'english', 'Your Full Name', 'Your Full Name', '2025-09-04 04:51:58', '2025-09-04 04:51:58'),
(3507, 'english', 'Your Email Address', 'Your Email Address', '2025-09-04 04:51:58', '2025-09-04 04:51:58'),
(3508, 'english', 'WhatsApp Number', 'WhatsApp Number', '2025-09-04 04:51:58', '2025-09-04 04:51:58'),
(3509, 'english', 'Example: 8123456789 (without +62 or 0)', 'Example: 8123456789 (without +62 or 0)', '2025-09-04 04:51:58', '2025-09-04 04:51:58'),
(3510, 'english', 'Minimum 8 characters', 'Minimum 8 characters', '2025-09-04 04:51:58', '2025-09-04 04:51:58'),
(3511, 'english', 'Already have account?', 'Already have account?', '2025-09-04 04:51:58', '2025-09-04 04:51:58'),
(3512, 'english', 'Phone number must be 8-13 digits', 'Phone number must be 8-13 digits', '2025-09-04 04:51:58', '2025-09-04 04:51:58'),
(3513, 'english', 'Passwords do not match', 'Passwords do not match', '2025-09-04 04:51:58', '2025-09-04 04:51:58'),
(3514, 'english', 'Please enter a valid WhatsApp number', 'Please enter a valid WhatsApp number', '2025-09-04 04:51:58', '2025-09-04 04:51:58'),
(3515, 'english', 'You must accept the terms and conditions', 'You must accept the terms and conditions', '2025-09-04 04:51:58', '2025-09-04 04:51:58'),
(3516, 'english', 'Registration successful', 'Registration successful', '2025-09-04 04:51:58', '2025-09-04 04:51:58'),
(3517, 'english', 'Something went wrong. Please try again.', 'Something went wrong. Please try again.', '2025-09-04 04:51:58', '2025-09-04 04:51:58'),
(3518, 'english', 'Network error. Please check your connection.', 'Network error. Please check your connection.', '2025-09-04 04:51:58', '2025-09-04 04:51:58'),
(3519, 'english', 'ATLS Details', 'ATLS Details', '2025-09-04 05:06:02', '2025-09-04 05:06:02'),
(3520, 'english', 'Gallery', 'Gallery', '2025-09-04 05:06:02', '2025-09-04 05:06:02'),
(3521, 'english', 'Team', 'Team', '2025-09-04 05:06:02', '2025-09-04 05:06:02'),
(3522, 'english', 'Regional Management', 'Regional Management', '2025-09-04 05:06:02', '2025-09-04 05:06:02'),
(3523, 'english', 'Regions', 'Regions', '2025-09-04 05:06:02', '2025-09-04 05:06:02'),
(3524, 'english', 'Region Members', 'Region Members', '2025-09-04 05:06:02', '2025-09-04 05:06:02'),
(3525, 'english', 'Riwayat Pendaftaran', 'Riwayat Pendaftaran', '2025-09-04 05:06:02', '2025-09-04 05:06:02'),
(3526, 'english', 'WhatsApp OTP', 'WhatsApp OTP', '2025-09-04 05:06:02', '2025-09-04 05:06:02'),
(3527, 'english', 'OTP Logs', 'OTP Logs', '2025-09-04 05:06:02', '2025-09-04 05:06:02'),
(3528, 'english', 'Team Management', 'Team Management', '2025-09-04 05:06:06', '2025-09-04 05:06:06'),
(3529, 'english', 'Add New Member', 'Add New Member', '2025-09-04 05:06:06', '2025-09-04 05:06:06'),
(3530, 'english', 'All Categories', 'All Categories', '2025-09-04 05:06:06', '2025-09-04 05:06:06'),
(3531, 'english', 'All Positions', 'All Positions', '2025-09-04 05:06:06', '2025-09-04 05:06:06'),
(3532, 'english', 'Search by name or position', 'Search by name or position', '2025-09-04 05:06:06', '2025-09-04 05:06:06'),
(3533, 'english', 'Position', 'Position', '2025-09-04 05:09:27', '2025-09-04 05:09:27'),
(3534, 'english', 'Select Position', 'Select Position', '2025-09-04 05:09:27', '2025-09-04 05:09:27'),
(3535, 'english', 'Order Number', 'Order Number', '2025-09-04 05:09:27', '2025-09-04 05:09:27'),
(3536, 'english', 'Lower numbers appear first', 'Lower numbers appear first', '2025-09-04 05:09:27', '2025-09-04 05:09:27'),
(3537, 'english', 'Member Photo', 'Member Photo', '2025-09-04 05:09:27', '2025-09-04 05:09:27'),
(3538, 'english', 'Max size: 2MB. Supported: JPG, PNG, GIF', 'Max size: 2MB. Supported: JPG, PNG, GIF', '2025-09-04 05:09:27', '2025-09-04 05:09:27'),
(3539, 'english', 'Social Media Links', 'Social Media Links', '2025-09-04 05:09:27', '2025-09-04 05:09:27'),
(3540, 'english', 'All social media links are optional', 'All social media links are optional', '2025-09-04 05:09:27', '2025-09-04 05:09:27'),
(3541, 'english', 'Save Member', 'Save Member', '2025-09-04 05:09:28', '2025-09-04 05:09:28'),
(3542, 'english', 'Reset', 'Reset', '2025-09-04 05:09:28', '2025-09-04 05:09:28'),
(3543, 'english', 'WhatsApp OTP Settings', 'WhatsApp OTP Settings', '2025-09-04 06:08:54', '2025-09-04 06:08:54'),
(3544, 'english', 'OneSender API Configuration', 'OneSender API Configuration', '2025-09-04 06:08:54', '2025-09-04 06:08:54'),
(3545, 'english', 'Configure your OneSender WhatsApp API settings', 'Configure your OneSender WhatsApp API settings', '2025-09-04 06:08:54', '2025-09-04 06:08:54'),
(3546, 'english', 'Enable WhatsApp OTP', 'Enable WhatsApp OTP', '2025-09-04 06:08:54', '2025-09-04 06:08:54'),
(3547, 'english', 'Enable WhatsApp OTP Login', 'Enable WhatsApp OTP Login', '2025-09-04 06:08:54', '2025-09-04 06:08:54'),
(3548, 'english', 'Connection Test', 'Connection Test', '2025-09-04 06:08:54', '2025-09-04 06:08:54'),
(3549, 'english', 'Test Connection', 'Test Connection', '2025-09-04 06:08:54', '2025-09-04 06:08:54'),
(3550, 'english', 'OneSender API URL', 'OneSender API URL', '2025-09-04 06:08:54', '2025-09-04 06:08:54'),
(3551, 'english', 'Your OneSender API endpoint URL', 'Your OneSender API endpoint URL', '2025-09-04 06:08:54', '2025-09-04 06:08:54'),
(3552, 'english', 'OneSender API Key', 'OneSender API Key', '2025-09-04 06:08:54', '2025-09-04 06:08:54'),
(3553, 'english', 'Your OneSender Bearer token', 'Your OneSender Bearer token', '2025-09-04 06:08:54', '2025-09-04 06:08:54'),
(3554, 'english', 'Message Templates', 'Message Templates', '2025-09-04 06:08:54', '2025-09-04 06:08:54'),
(3555, 'english', 'Customize your OTP and welcome messages. Use {app_name}, {otp_code}, {name} as placeholders.', 'Customize your OTP and welcome messages. Use {app_name}, {otp_code}, {name} as placeholders.', '2025-09-04 06:08:54', '2025-09-04 06:08:54'),
(3556, 'english', 'Login OTP Message', 'Login OTP Message', '2025-09-04 06:08:54', '2025-09-04 06:08:54'),
(3557, 'english', 'Login OTP message template', 'Login OTP message template', '2025-09-04 06:08:54', '2025-09-04 06:08:54'),
(3558, 'english', 'Available placeholders: {app_name}, {otp_code}', 'Available placeholders: {app_name}, {otp_code}', '2025-09-04 06:08:54', '2025-09-04 06:08:54'),
(3559, 'english', 'Registration OTP Message', 'Registration OTP Message', '2025-09-04 06:08:54', '2025-09-04 06:08:54'),
(3560, 'english', 'Registration OTP message template', 'Registration OTP message template', '2025-09-04 06:08:54', '2025-09-04 06:08:54'),
(3561, 'english', 'Welcome Message', 'Welcome Message', '2025-09-04 06:08:54', '2025-09-04 06:08:54'),
(3562, 'english', 'Welcome message template', 'Welcome message template', '2025-09-04 06:08:54', '2025-09-04 06:08:54'),
(3563, 'english', 'Available placeholders: {app_name}, {name}', 'Available placeholders: {app_name}, {name}', '2025-09-04 06:08:54', '2025-09-04 06:08:54'),
(3564, 'english', 'Save Settings', 'Save Settings', '2025-09-04 06:08:54', '2025-09-04 06:08:54'),
(3565, 'english', 'Setup Instructions', 'Setup Instructions', '2025-09-04 06:08:54', '2025-09-04 06:08:54'),
(3566, 'english', 'OneSender Setup:', 'OneSender Setup:', '2025-09-04 06:08:54', '2025-09-04 06:08:54'),
(3567, 'english', 'Visit OneSender website', 'Visit OneSender website', '2025-09-04 06:08:54', '2025-09-04 06:08:54'),
(3568, 'english', 'Create an account and WhatsApp instance', 'Create an account and WhatsApp instance', '2025-09-04 06:08:54', '2025-09-04 06:08:54'),
(3569, 'english', 'Get your API URL and API Key from dashboard', 'Get your API URL and API Key from dashboard', '2025-09-04 06:08:54', '2025-09-04 06:08:54'),
(3570, 'english', 'Enter the credentials above and test connection', 'Enter the credentials above and test connection', '2025-09-04 06:08:54', '2025-09-04 06:08:54'),
(3571, 'english', 'Usage:', 'Usage:', '2025-09-04 06:08:54', '2025-09-04 06:08:54'),
(3572, 'english', 'Users can login using WhatsApp OTP', 'Users can login using WhatsApp OTP', '2025-09-04 06:08:54', '2025-09-04 06:08:54'),
(3573, 'english', 'Registration requires WhatsApp verification', 'Registration requires WhatsApp verification', '2025-09-04 06:08:54', '2025-09-04 06:08:54'),
(3574, 'english', 'OTP expires after 5 minutes', 'OTP expires after 5 minutes', '2025-09-04 06:08:54', '2025-09-04 06:08:54'),
(3575, 'english', 'Rate limiting: 1 OTP per minute per number', 'Rate limiting: 1 OTP per minute per number', '2025-09-04 06:08:54', '2025-09-04 06:08:54'),
(3576, 'english', 'Testing...', 'Testing...', '2025-09-04 06:08:54', '2025-09-04 06:08:54'),
(3577, 'english', 'Connection test failed', 'Connection test failed', '2025-09-04 06:08:54', '2025-09-04 06:08:54'),
(3578, 'english', 'Promote your business and get discovered with ease — List your services on Listing Atlas, the smart directory solution.', 'Promote your business and get discovered with ease — List your services on Listing Atlas, the smart directory solution.', '2025-09-04 08:15:02', '2025-09-04 08:15:02'),
(3579, 'english', 'Add New Region', 'Add New Region', '2025-09-04 08:22:26', '2025-09-04 08:22:26'),
(3580, 'english', 'Back to List', 'Back to List', '2025-09-04 08:22:26', '2025-09-04 08:22:26'),
(3581, 'english', 'Basic Information', 'Basic Information', '2025-09-04 08:22:26', '2025-09-04 08:22:26'),
(3582, 'english', 'Region Name', 'Region Name', '2025-09-04 08:22:26', '2025-09-04 08:22:26'),
(3583, 'english', 'This will be used to generate the URL slug', 'This will be used to generate the URL slug', '2025-09-04 08:22:26', '2025-09-04 08:22:26'),
(3584, 'english', 'Please provide a valid region name', 'Please provide a valid region name', '2025-09-04 08:22:26', '2025-09-04 08:22:26'),
(3585, 'english', 'Format: 628xxxxxxxxxx (10-15 digits)', 'Format: 628xxxxxxxxxx (10-15 digits)', '2025-09-04 08:22:26', '2025-09-04 08:22:26'),
(3586, 'english', 'Please provide a valid WhatsApp number starting with 628', 'Please provide a valid WhatsApp number starting with 628', '2025-09-04 08:22:26', '2025-09-04 08:22:26'),
(3587, 'english', 'Used for sorting regions (0 = highest priority)', 'Used for sorting regions (0 = highest priority)', '2025-09-04 08:22:26', '2025-09-04 08:22:26'),
(3588, 'english', 'Active Region', 'Active Region', '2025-09-04 08:22:26', '2025-09-04 08:22:26'),
(3589, 'english', 'Inactive regions won\'t be displayed publicly', 'Inactive regions won\'t be displayed publicly', '2025-09-04 08:22:26', '2025-09-04 08:22:26'),
(3590, 'english', 'SEO Information', 'SEO Information', '2025-09-04 08:22:26', '2025-09-04 08:22:26'),
(3591, 'english', 'Recommended length: 50-60 characters', 'Recommended length: 50-60 characters', '2025-09-04 08:22:26', '2025-09-04 08:22:26'),
(3592, 'english', 'Recommended length: 150-160 characters', 'Recommended length: 150-160 characters', '2025-09-04 08:22:26', '2025-09-04 08:22:26'),
(3593, 'english', 'Page Content', 'Page Content', '2025-09-04 08:22:26', '2025-09-04 08:22:26'),
(3594, 'english', 'Content', 'Content', '2025-09-04 08:22:26', '2025-09-04 08:22:26'),
(3595, 'english', 'HTML content for the region page (optional - default content will be created)', 'HTML content for the region page (optional - default content will be created)', '2025-09-04 08:22:26', '2025-09-04 08:22:26'),
(3596, 'english', 'Images', 'Images', '2025-09-04 08:22:26', '2025-09-04 08:22:26'),
(3597, 'english', 'Region Icon', 'Region Icon', '2025-09-04 08:22:26', '2025-09-04 08:22:26'),
(3598, 'english', 'Format: JPG, PNG, GIF. Max: 2MB', 'Format: JPG, PNG, GIF. Max: 2MB', '2025-09-04 08:22:26', '2025-09-04 08:22:26'),
(3599, 'english', 'Please select an icon image', 'Please select an icon image', '2025-09-04 08:22:26', '2025-09-04 08:22:26'),
(3600, 'english', 'Page Banner', 'Page Banner', '2025-09-04 08:22:26', '2025-09-04 08:22:26'),
(3601, 'english', 'Please select a banner image', 'Please select a banner image', '2025-09-04 08:22:26', '2025-09-04 08:22:26'),
(3602, 'english', 'Preview Information', 'Preview Information', '2025-09-04 08:22:26', '2025-09-04 08:22:26'),
(3603, 'english', 'Generated URL', 'Generated URL', '2025-09-04 08:22:26', '2025-09-04 08:22:26'),
(3604, 'english', 'WhatsApp Link', 'WhatsApp Link', '2025-09-04 08:22:26', '2025-09-04 08:22:26'),
(3605, 'english', 'Create Region', 'Create Region', '2025-09-04 08:22:26', '2025-09-04 08:22:26'),
(3606, 'english', 'Preview', 'Preview', '2025-09-04 08:22:26', '2025-09-04 08:22:26'),
(3607, 'english', 'Region Preview', 'Region Preview', '2025-09-04 08:22:26', '2025-09-04 08:22:26'),
(3608, 'english', 'File size too large. Maximum 2MB allowed.', 'File size too large. Maximum 2MB allowed.', '2025-09-04 08:22:26', '2025-09-04 08:22:26'),
(3609, 'english', 'WhatsApp number must start with 628 and be 11-16 digits long', 'WhatsApp number must start with 628 and be 11-16 digits long', '2025-09-04 08:22:26', '2025-09-04 08:22:26'),
(3610, 'english', 'All Status', 'All Status', '2025-09-04 08:31:47', '2025-09-04 08:31:47'),
(3611, 'english', 'Created Date', 'Created Date', '2025-09-04 08:31:47', '2025-09-04 08:31:47'),
(3612, 'english', 'Search regions...', 'Search regions...', '2025-09-04 08:31:47', '2025-09-04 08:31:47'),
(3613, 'english', 'Order', 'Order', '2025-09-04 08:31:47', '2025-09-04 08:31:47'),
(3614, 'english', 'WhatsApp', 'WhatsApp', '2025-09-04 08:31:47', '2025-09-04 08:31:47'),
(3615, 'english', 'Created', 'Created', '2025-09-04 08:31:47', '2025-09-04 08:31:47'),
(3616, 'english', 'View', 'View', '2025-09-04 08:41:45', '2025-09-04 08:41:45'),
(3617, 'english', 'Deactivate', 'Deactivate', '2025-09-04 08:41:45', '2025-09-04 08:41:45'),
(3618, 'english', 'Enter region name', 'Enter region name', '2025-09-04 08:41:51', '2025-09-04 08:41:51'),
(3619, 'english', 'URL will be', 'URL will be', '2025-09-04 08:41:51', '2025-09-04 08:41:51'),
(3620, 'english', 'Icon Preview', 'Icon Preview', '2025-09-04 08:41:51', '2025-09-04 08:41:51'),
(3621, 'english', 'Banner Preview', 'Banner Preview', '2025-09-04 08:41:51', '2025-09-04 08:41:51'),
(3622, 'english', 'About-Us', 'About-Us', '2025-09-04 08:54:13', '2025-09-04 08:54:13'),
(3623, 'english', 'Our Regions', 'Our Regions', '2025-09-04 09:02:55', '2025-09-04 09:02:55'),
(3624, 'english', 'Explore Our Regions', 'Explore Our Regions', '2025-09-04 09:02:55', '2025-09-04 09:02:55'),
(3625, 'english', 'Discover businesses and services across different regions. Find the perfect location for your needs with our comprehensive regional directory.', 'Discover businesses and services across different regions. Find the perfect location for your needs with our comprehensive regional directory.', '2025-09-04 09:02:55', '2025-09-04 09:02:55'),
(3626, 'english', 'Total Regions', 'Total Regions', '2025-09-04 09:02:55', '2025-09-04 09:02:55'),
(3627, 'english', 'Active Regions', 'Active Regions', '2025-09-04 09:02:55', '2025-09-04 09:02:55'),
(3628, 'english', 'Listed Businesses', 'Listed Businesses', '2025-09-04 09:02:55', '2025-09-04 09:02:55'),
(3629, 'english', 'Verified Listings', 'Verified Listings', '2025-09-04 09:02:55', '2025-09-04 09:02:55'),
(3630, 'english', 'Service Categories', 'Service Categories', '2025-09-04 09:02:55', '2025-09-04 09:02:55'),
(3631, 'english', 'Popular Regions', 'Popular Regions', '2025-09-04 09:02:55', '2025-09-04 09:02:55'),
(3632, 'english', 'Region *', 'Region *', '2025-09-04 09:10:31', '2025-09-04 09:10:31'),
(3633, 'english', 'Select Region', 'Select Region', '2025-09-04 09:10:31', '2025-09-04 09:10:31'),
(3634, 'english', 'Max file size: 2MB. Supported formats: JPG, PNG, GIF', 'Max file size: 2MB. Supported formats: JPG, PNG, GIF', '2025-09-04 09:10:31', '2025-09-04 09:10:31'),
(3635, 'english', 'Gallery Management', 'Gallery Management', '2025-09-04 09:40:02', '2025-09-04 09:40:02'),
(3636, 'english', 'Search...', 'Search...', '2025-09-04 09:40:02', '2025-09-04 09:40:02'),
(3637, 'english', 'Delete Selected', 'Delete Selected', '2025-09-04 09:40:02', '2025-09-04 09:40:02'),
(3638, 'english', 'to', 'to', '2025-09-04 09:40:02', '2025-09-04 09:40:02'),
(3639, 'english', 'No gallery items found', 'No gallery items found', '2025-09-04 09:40:02', '2025-09-04 09:40:02'),
(3640, 'english', 'Start by adding your first gallery item', 'Start by adding your first gallery item', '2025-09-04 09:40:02', '2025-09-04 09:40:02'),
(3641, 'english', 'Add Gallery Item', 'Add Gallery Item', '2025-09-04 09:40:02', '2025-09-04 09:40:02'),
(3642, 'english', 'Please select items to delete', 'Please select items to delete', '2025-09-04 09:40:02', '2025-09-04 09:40:02'),
(3643, 'english', 'Are you sure you want to delete selected items?', 'Are you sure you want to delete selected items?', '2025-09-04 09:40:02', '2025-09-04 09:40:02'),
(3644, 'english', 'Are you sure you want to delete this item?', 'Are you sure you want to delete this item?', '2025-09-04 09:40:02', '2025-09-04 09:40:02'),
(3645, 'english', 'Add New Gallery', 'Add New Gallery', '2025-09-04 14:20:22', '2025-09-04 14:20:22'),
(3646, 'english', 'Search galleries...', 'Search galleries...', '2025-09-04 14:20:22', '2025-09-04 14:20:22'),
(3647, 'english', 'All Items', 'All Items', '2025-09-04 14:20:22', '2025-09-04 14:20:22'),
(3648, 'english', 'Featured Only', 'Featured Only', '2025-09-04 14:20:22', '2025-09-04 14:20:22'),
(3649, 'english', 'Non-Featured', 'Non-Featured', '2025-09-04 14:20:22', '2025-09-04 14:20:22'),
(3650, 'english', 'Activate Selected', 'Activate Selected', '2025-09-04 14:20:22', '2025-09-04 14:20:22'),
(3651, 'english', 'Deactivate Selected', 'Deactivate Selected', '2025-09-04 14:20:22', '2025-09-04 14:20:22'),
(3652, 'english', 'No Image', 'No Image', '2025-09-04 14:20:22', '2025-09-04 14:20:22'),
(3653, 'english', 'Toggle Featured', 'Toggle Featured', '2025-09-04 14:20:22', '2025-09-04 14:20:22'),
(3654, 'english', 'Drag to reorder', 'Drag to reorder', '2025-09-04 14:20:22', '2025-09-04 14:20:22'),
(3655, 'english', 'Something went wrong', 'Something went wrong', '2025-09-04 14:20:22', '2025-09-04 14:20:22'),
(3656, 'english', 'Failed to update featured status', 'Failed to update featured status', '2025-09-04 14:20:22', '2025-09-04 14:20:22'),
(3657, 'english', 'Status updated successfully', 'Status updated successfully', '2025-09-04 14:20:22', '2025-09-04 14:20:22'),
(3658, 'english', 'Failed to update status', 'Failed to update status', '2025-09-04 14:20:22', '2025-09-04 14:20:22'),
(3659, 'english', 'Failed to delete items', 'Failed to delete items', '2025-09-04 14:20:22', '2025-09-04 14:20:22'),
(3660, 'english', 'Please select items to update', 'Please select items to update', '2025-09-04 14:20:22', '2025-09-04 14:20:22'),
(3661, 'english', 'Failed to update sort order', 'Failed to update sort order', '2025-09-04 14:20:22', '2025-09-04 14:20:22'),
(3662, 'english', 'Remove Featured', 'Remove Featured', '2025-09-04 14:32:33', '2025-09-04 14:32:33'),
(3663, 'english', 'Make Featured', 'Make Featured', '2025-09-04 14:32:33', '2025-09-04 14:32:33'),
(3664, 'english', 'Activate', 'Activate', '2025-09-04 14:32:33', '2025-09-04 14:32:33'),
(3665, 'english', 'Edit Gallery Item', 'Edit Gallery Item', '2025-09-04 14:32:41', '2025-09-04 14:32:41'),
(3666, 'english', 'Back to Gallery', 'Back to Gallery', '2025-09-04 14:32:41', '2025-09-04 14:32:41'),
(3667, 'english', 'Enter gallery title', 'Enter gallery title', '2025-09-04 14:32:41', '2025-09-04 14:32:41'),
(3668, 'english', 'URL Slug', 'URL Slug', '2025-09-04 14:32:41', '2025-09-04 14:32:41'),
(3669, 'english', 'Permalink', 'Permalink', '2025-09-04 14:32:41', '2025-09-04 14:32:41'),
(3670, 'english', 'Enter description (optional)', 'Enter description (optional)', '2025-09-04 14:32:41', '2025-09-04 14:32:41'),
(3671, 'english', 'Replace Image', 'Replace Image', '2025-09-04 14:32:41', '2025-09-04 14:32:41'),
(3672, 'english', 'Click to upload or drag and drop', 'Click to upload or drag and drop', '2025-09-04 14:32:41', '2025-09-04 14:32:41'),
(3673, 'english', 'Supported formats: JPG, PNG, GIF. Max size: 5MB', 'Supported formats: JPG, PNG, GIF. Max size: 5MB', '2025-09-04 14:32:41', '2025-09-04 14:32:41'),
(3674, 'english', 'Leave empty to keep current image', 'Leave empty to keep current image', '2025-09-04 14:32:41', '2025-09-04 14:32:41'),
(3675, 'english', 'Change', 'Change', '2025-09-04 14:32:41', '2025-09-04 14:32:41'),
(3676, 'english', 'Advanced Options', 'Advanced Options', '2025-09-04 14:32:41', '2025-09-04 14:32:41'),
(3677, 'english', 'Alt Text', 'Alt Text', '2025-09-04 14:32:41', '2025-09-04 14:32:41'),
(3678, 'english', 'Alternative text for image', 'Alternative text for image', '2025-09-04 14:32:41', '2025-09-04 14:32:41'),
(3679, 'english', 'Tags', 'Tags', '2025-09-04 14:32:41', '2025-09-04 14:32:41'),
(3680, 'english', 'Enter tags separated by commas', 'Enter tags separated by commas', '2025-09-04 14:32:41', '2025-09-04 14:32:41'),
(3681, 'english', 'Photographer', 'Photographer', '2025-09-04 14:32:41', '2025-09-04 14:32:41'),
(3682, 'english', 'Photographer name', 'Photographer name', '2025-09-04 14:32:41', '2025-09-04 14:32:41'),
(3683, 'english', 'Camera Info', 'Camera Info', '2025-09-04 14:32:41', '2025-09-04 14:32:41'),
(3684, 'english', 'Camera model and settings', 'Camera model and settings', '2025-09-04 14:32:41', '2025-09-04 14:32:41'),
(3685, 'english', 'Gallery Settings', 'Gallery Settings', '2025-09-04 14:32:41', '2025-09-04 14:32:41'),
(3686, 'english', 'Sort Order', 'Sort Order', '2025-09-04 14:32:41', '2025-09-04 14:32:41'),
(3687, 'english', 'Mark as Featured', 'Mark as Featured', '2025-09-04 14:32:41', '2025-09-04 14:32:41'),
(3688, 'english', 'Featured items appear prominently', 'Featured items appear prominently', '2025-09-04 14:32:41', '2025-09-04 14:32:41'),
(3689, 'english', 'Publication Info', 'Publication Info', '2025-09-04 14:32:41', '2025-09-04 14:32:41'),
(3690, 'english', 'Created by', 'Created by', '2025-09-04 14:32:41', '2025-09-04 14:32:41'),
(3691, 'english', 'Quick Actions', 'Quick Actions', '2025-09-04 14:32:41', '2025-09-04 14:32:41'),
(3692, 'english', 'Delete Item', 'Delete Item', '2025-09-04 14:32:41', '2025-09-04 14:32:41'),
(3693, 'english', 'Save & Continue', 'Save & Continue', '2025-09-04 14:32:41', '2025-09-04 14:32:41'),
(3694, 'english', 'Save & Close', 'Save & Close', '2025-09-04 14:32:41', '2025-09-04 14:32:41'),
(3695, 'english', 'Please select a valid image file', 'Please select a valid image file', '2025-09-04 14:32:41', '2025-09-04 14:32:41'),
(3696, 'english', 'File size must be less than 5MB', 'File size must be less than 5MB', '2025-09-04 14:32:41', '2025-09-04 14:32:41'),
(3697, 'english', 'Gallery Details', 'Gallery Details', '2025-09-04 14:32:59', '2025-09-04 14:32:59'),
(3698, 'english', 'Edit Item', 'Edit Item', '2025-09-04 14:32:59', '2025-09-04 14:32:59'),
(3699, 'english', 'More Actions', 'More Actions', '2025-09-04 14:32:59', '2025-09-04 14:32:59'),
(3700, 'english', 'Duplicate', 'Duplicate', '2025-09-04 14:32:59', '2025-09-04 14:32:59'),
(3701, 'english', 'No image available', 'No image available', '2025-09-04 14:32:59', '2025-09-04 14:32:59'),
(3702, 'english', 'Public URL', 'Public URL', '2025-09-04 14:32:59', '2025-09-04 14:32:59'),
(3703, 'english', 'Copy', 'Copy', '2025-09-04 14:32:59', '2025-09-04 14:32:59'),
(3704, 'english', 'Technical Details', 'Technical Details', '2025-09-04 14:32:59', '2025-09-04 14:32:59'),
(3705, 'english', 'Related Items', 'Related Items', '2025-09-04 14:32:59', '2025-09-04 14:32:59'),
(3706, 'english', 'Duplicate Item', 'Duplicate Item', '2025-09-04 14:32:59', '2025-09-04 14:32:59'),
(3707, 'english', 'Gallery Information', 'Gallery Information', '2025-09-04 14:32:59', '2025-09-04 14:32:59'),
(3708, 'english', 'Unknown', 'Unknown', '2025-09-04 14:32:59', '2025-09-04 14:32:59'),
(3709, 'english', 'Navigation', 'Navigation', '2025-09-04 14:32:59', '2025-09-04 14:32:59'),
(3710, 'english', 'Previous Item', 'Previous Item', '2025-09-04 14:32:59', '2025-09-04 14:32:59'),
(3711, 'english', 'Next Item', 'Next Item', '2025-09-04 14:32:59', '2025-09-04 14:32:59'),
(3712, 'english', 'All Gallery Items', 'All Gallery Items', '2025-09-04 14:32:59', '2025-09-04 14:32:59'),
(3713, 'english', 'Statistics', 'Statistics', '2025-09-04 14:32:59', '2025-09-04 14:32:59'),
(3714, 'english', 'Views', 'Views', '2025-09-04 14:32:59', '2025-09-04 14:32:59'),
(3715, 'english', 'Likes', 'Likes', '2025-09-04 14:32:59', '2025-09-04 14:32:59'),
(3716, 'english', 'Downloads', 'Downloads', '2025-09-04 14:32:59', '2025-09-04 14:32:59'),
(3717, 'english', 'Statistics are updated in real-time', 'Statistics are updated in real-time', '2025-09-04 14:32:59', '2025-09-04 14:32:59'),
(3718, 'english', 'Open Original', 'Open Original', '2025-09-04 14:32:59', '2025-09-04 14:32:59'),
(3719, 'english', 'Create a duplicate of this gallery item?', 'Create a duplicate of this gallery item?', '2025-09-04 14:32:59', '2025-09-04 14:32:59'),
(3720, 'english', 'Duplication feature will be available soon', 'Duplication feature will be available soon', '2025-09-04 14:32:59', '2025-09-04 14:32:59'),
(3721, 'english', 'URL copied to clipboard', 'URL copied to clipboard', '2025-09-04 14:32:59', '2025-09-04 14:32:59'),
(3722, 'english', 'Add New Gallery Item', 'Add New Gallery Item', '2025-09-04 14:33:17', '2025-09-04 14:33:17'),
(3723, 'english', 'Gallery Image', 'Gallery Image', '2025-09-04 14:33:17', '2025-09-04 14:33:17'),
(3724, 'english', 'Publication', 'Publication', '2025-09-04 14:33:17', '2025-09-04 14:33:17'),
(3725, 'english', 'Save as Draft', 'Save as Draft', '2025-09-04 14:33:18', '2025-09-04 14:33:18'),
(3726, 'english', 'Save Gallery', 'Save Gallery', '2025-09-04 14:33:18', '2025-09-04 14:33:18'),
(3727, 'english', 'Edit Region', 'Edit Region', '2025-09-04 14:41:23', '2025-09-04 14:41:23'),
(3728, 'english', 'View Page', 'View Page', '2025-09-04 14:41:23', '2025-09-04 14:41:23'),
(3729, 'english', 'Changing this will update the URL slug', 'Changing this will update the URL slug', '2025-09-04 14:41:23', '2025-09-04 14:41:23'),
(3730, 'english', 'Current URL', 'Current URL', '2025-09-04 14:41:23', '2025-09-04 14:41:23'),
(3731, 'english', 'Current Icon', 'Current Icon', '2025-09-04 14:41:23', '2025-09-04 14:41:23'),
(3732, 'english', 'No icon uploaded', 'No icon uploaded', '2025-09-04 14:41:23', '2025-09-04 14:41:23'),
(3733, 'english', 'Current Banner', 'Current Banner', '2025-09-04 14:41:23', '2025-09-04 14:41:23'),
(3734, 'english', 'No banner uploaded', 'No banner uploaded', '2025-09-04 14:41:23', '2025-09-04 14:41:23'),
(3735, 'english', 'New Region Icon', 'New Region Icon', '2025-09-04 14:41:23', '2025-09-04 14:41:23'),
(3736, 'english', 'Format: JPG, PNG, GIF. Max: 2MB. Leave empty to keep current.', 'Format: JPG, PNG, GIF. Max: 2MB. Leave empty to keep current.', '2025-09-04 14:41:23', '2025-09-04 14:41:23'),
(3737, 'english', 'New Page Banner', 'New Page Banner', '2025-09-04 14:41:23', '2025-09-04 14:41:23'),
(3738, 'english', 'HTML content for the region page', 'HTML content for the region page', '2025-09-04 14:41:23', '2025-09-04 14:41:23'),
(3739, 'english', 'Update Region', 'Update Region', '2025-09-04 14:41:23', '2025-09-04 14:41:23'),
(3740, 'english', 'Duplicate Region', 'Duplicate Region', '2025-09-04 14:41:23', '2025-09-04 14:41:23'),
(3741, 'english', 'Delete Region', 'Delete Region', '2025-09-04 14:41:23', '2025-09-04 14:41:23'),
(3742, 'english', 'New Icon Preview', 'New Icon Preview', '2025-09-04 14:41:23', '2025-09-04 14:41:23'),
(3743, 'english', 'New Banner Preview', 'New Banner Preview', '2025-09-04 14:41:23', '2025-09-04 14:41:23'),
(3744, 'english', 'Are you sure you want to duplicate this region?', 'Are you sure you want to duplicate this region?', '2025-09-04 14:41:23', '2025-09-04 14:41:23'),
(3745, 'english', 'Duplicate functionality not yet implemented', 'Duplicate functionality not yet implemented', '2025-09-04 14:41:23', '2025-09-04 14:41:23'),
(3746, 'english', 'My Region Member', 'My Region Member', '2025-09-05 03:50:24', '2025-09-05 03:50:24'),
(3747, 'english', 'Show Less', 'Show Less', '2025-09-05 03:50:29', '2025-09-05 03:50:29'),
(3748, 'english', 'My User Member ATLS', 'My User Member ATLS', '2025-09-05 03:51:16', '2025-09-05 03:51:16'),
(3749, 'english', 'Following Region', 'Following Region', '2025-09-05 03:51:16', '2025-09-05 03:51:16'),
(3750, 'english', 'User Member ATLS', 'User Member ATLS', '2025-09-05 03:51:28', '2025-09-05 03:51:28'),
(3751, 'english', 'User ATLS', 'User ATLS', '2025-09-05 03:51:36', '2025-09-05 03:51:36'),
(3752, 'english', 'Create User', 'Create User', '2025-09-05 04:21:31', '2025-09-05 04:21:31'),
(3753, 'english', 'It looks like you are skipping a version', 'It looks like you are skipping a version', '2025-09-05 04:37:37', '2025-09-05 04:37:37'),
(3754, 'english', 'Please update version', 'Please update version', '2025-09-05 04:37:37', '2025-09-05 04:37:37'),
(3755, 'english', 'first', 'first', '2025-09-05 04:37:37', '2025-09-05 04:37:37'),
(3756, 'english', 'Refund-policy', 'Refund-policy', '2025-09-06 08:16:46', '2025-09-06 08:16:46'),
(3757, 'english', 'No file uploaded for Hotel!', 'No file uploaded for Hotel!', '2025-09-06 08:30:22', '2025-09-06 08:30:22'),
(3758, 'indonesia', 'Indonesia', 'Indonesia', '2025-09-06 01:32:06', '2025-09-06 01:32:12'),
(3759, 'english', 'View Region', 'View Region', '2025-09-08 04:24:24', '2025-09-08 04:24:24'),
(3760, 'indonesia', 'View Region', 'View Region', '2025-09-08 04:24:24', '2025-09-08 04:24:24'),
(3761, 'english', 'Region Details', 'Region Details', '2025-09-08 04:24:24', '2025-09-08 04:24:24'),
(3762, 'indonesia', 'Region Details', 'Region Details', '2025-09-08 04:24:24', '2025-09-08 04:24:24'),
(3763, 'english', 'Slug', 'Slug', '2025-09-08 04:24:24', '2025-09-08 04:24:24'),
(3764, 'indonesia', 'Slug', 'Slug', '2025-09-08 04:24:24', '2025-09-08 04:24:24'),
(3765, 'english', 'Page URL', 'Page URL', '2025-09-08 04:24:25', '2025-09-08 04:24:25'),
(3766, 'indonesia', 'Page URL', 'Page URL', '2025-09-08 04:24:25', '2025-09-08 04:24:25'),
(3767, 'english', 'Quick Stats', 'Quick Stats', '2025-09-08 04:24:25', '2025-09-08 04:24:25'),
(3768, 'indonesia', 'Quick Stats', 'Quick Stats', '2025-09-08 04:24:25', '2025-09-08 04:24:25'),
(3769, 'english', 'Updated', 'Updated', '2025-09-08 04:24:25', '2025-09-08 04:24:25'),
(3770, 'indonesia', 'Updated', 'Updated', '2025-09-08 04:24:25', '2025-09-08 04:24:25'),
(3771, 'english', 'View Public Page', 'View Public Page', '2025-09-08 04:24:25', '2025-09-08 04:24:25'),
(3772, 'indonesia', 'View Public Page', 'View Public Page', '2025-09-08 04:24:25', '2025-09-08 04:24:25'),
(3773, 'english', 'Copy URL', 'Copy URL', '2025-09-08 04:24:25', '2025-09-08 04:24:25'),
(3774, 'indonesia', 'Copy URL', 'Copy URL', '2025-09-08 04:24:25', '2025-09-08 04:24:25'),
(3775, 'english', 'WhatsApp Contact', 'WhatsApp Contact', '2025-09-08 04:24:25', '2025-09-08 04:24:25'),
(3776, 'indonesia', 'WhatsApp Contact', 'WhatsApp Contact', '2025-09-08 04:24:25', '2025-09-08 04:24:25'),
(3777, 'english', 'Open WhatsApp', 'Open WhatsApp', '2025-09-08 04:24:25', '2025-09-08 04:24:25'),
(3778, 'indonesia', 'Open WhatsApp', 'Open WhatsApp', '2025-09-08 04:24:25', '2025-09-08 04:24:25'),
(3779, 'english', 'SEO Preview', 'SEO Preview', '2025-09-08 04:24:25', '2025-09-08 04:24:25'),
(3780, 'indonesia', 'SEO Preview', 'SEO Preview', '2025-09-08 04:24:25', '2025-09-08 04:24:25'),
(3781, 'english', 'Image Preview', 'Image Preview', '2025-09-08 04:24:25', '2025-09-08 04:24:25'),
(3782, 'indonesia', 'Image Preview', 'Image Preview', '2025-09-08 04:24:25', '2025-09-08 04:24:25'),
(3783, 'english', 'URL copied to clipboard!', 'URL copied to clipboard!', '2025-09-08 04:24:25', '2025-09-08 04:24:25'),
(3784, 'indonesia', 'URL copied to clipboard!', 'URL copied to clipboard!', '2025-09-08 04:24:25', '2025-09-08 04:24:25'),
(3785, 'english', 'Basic', 'Basic', '2025-09-08 04:25:23', '2025-09-08 04:25:23'),
(3786, 'indonesia', 'Basic', 'Basic', '2025-09-08 04:25:23', '2025-09-08 04:25:23'),
(3787, 'english', 'Agen Basic', 'Agen Basic', '2025-09-08 04:25:23', '2025-09-08 04:25:23'),
(3788, 'indonesia', 'Agen Basic', 'Agen Basic', '2025-09-08 04:25:23', '2025-09-08 04:25:23'),
(3789, 'english', 'Start Date', 'Start Date', '2025-09-08 04:25:23', '2025-09-08 04:25:23'),
(3790, 'indonesia', 'Start Date', 'Start Date', '2025-09-08 04:25:23', '2025-09-08 04:25:23'),
(3791, 'english', 'End Date', 'End Date', '2025-09-08 04:25:23', '2025-09-08 04:25:23'),
(3792, 'indonesia', 'End Date', 'End Date', '2025-09-08 04:25:23', '2025-09-08 04:25:23'),
(3793, 'english', 'Amount', 'Amount', '2025-09-08 04:25:23', '2025-09-08 04:25:23'),
(3794, 'indonesia', 'Amount', 'Amount', '2025-09-08 04:25:23', '2025-09-08 04:25:23'),
(3795, 'english', 'Lorem Ipsum available but the majority have suffered alteration', 'Lorem Ipsum available but the majority have suffered alteration', '2025-09-08 04:25:29', '2025-09-08 04:25:29'),
(3796, 'indonesia', 'Lorem Ipsum available but the majority have suffered alteration', 'Lorem Ipsum available but the majority have suffered alteration', '2025-09-08 04:25:29', '2025-09-08 04:25:29'),
(3797, 'english', 'Add Event', 'Add Event', '2025-09-08 06:41:27', '2025-09-08 06:41:27'),
(3798, 'indonesia', 'Add Event', 'Add Event', '2025-09-08 06:41:27', '2025-09-08 06:41:27'),
(3799, 'english', 'Order Event', 'Order Event', '2025-09-08 06:41:27', '2025-09-08 06:41:27'),
(3800, 'indonesia', 'Order Event', 'Order Event', '2025-09-08 06:41:27', '2025-09-08 06:41:27'),
(3801, 'english', 'My Training', 'My Training', '2025-09-08 07:36:55', '2025-09-08 07:36:55'),
(3802, 'indonesia', 'My Training', 'My Training', '2025-09-08 07:36:55', '2025-09-08 07:36:55'),
(3803, 'english', 'Pricing Packages', 'Pricing Packages', '2025-09-08 07:36:55', '2025-09-08 07:36:55'),
(3804, 'indonesia', 'Pricing Packages', 'Pricing Packages', '2025-09-08 07:36:55', '2025-09-08 07:36:55'),
(3805, 'english', 'Home | ATLS Indonesia', 'Home | ATLS Indonesia', '2025-09-11 01:14:18', '2025-09-11 01:14:18'),
(3806, 'indonesia', 'Home | ATLS Indonesia', 'Home | ATLS Indonesia', '2025-09-11 01:14:18', '2025-09-11 01:14:18'),
(3807, 'english', 'National ATLS Schedules', 'National ATLS Schedules', '2025-09-11 01:14:18', '2025-09-11 01:14:18'),
(3808, 'indonesia', 'National ATLS Schedules', 'National ATLS Schedules', '2025-09-11 01:14:18', '2025-09-11 01:14:18'),
(3809, 'english', 'Click on the pin to see and register the schedule of activities in that sub division.', 'Click on the pin to see and register the schedule of activities in that sub division.', '2025-09-11 01:14:18', '2025-09-11 01:14:18'),
(3810, 'indonesia', 'Click on the pin to see and register the schedule of activities in that sub division.', 'Click on the pin to see and register the schedule of activities in that sub division.', '2025-09-11 01:14:18', '2025-09-11 01:14:18'),
(3811, 'english', 'Activity Schedule in - Kalimantan Timur', 'Activity Schedule in - Kalimantan Timur', '2025-09-11 01:14:18', '2025-09-11 01:14:18'),
(3812, 'indonesia', 'Activity Schedule in - Kalimantan Timur', 'Activity Schedule in - Kalimantan Timur', '2025-09-11 01:14:18', '2025-09-11 01:14:18'),
(3813, 'english', 'Refresh', 'Refresh', '2025-09-11 01:14:18', '2025-09-11 01:14:18'),
(3814, 'indonesia', 'Refresh', 'Refresh', '2025-09-11 01:14:18', '2025-09-11 01:14:18'),
(3815, 'english', 'Refresh Online ATLS Kontrasia Divisi Kalimantan Timur', 'Refresh Online ATLS Kontrasia Divisi Kalimantan Timur', '2025-09-11 01:14:18', '2025-09-11 01:14:18'),
(3816, 'indonesia', 'Refresh Online ATLS Kontrasia Divisi Kalimantan Timur', 'Refresh Online ATLS Kontrasia Divisi Kalimantan Timur', '2025-09-11 01:14:18', '2025-09-11 01:14:18'),
(3817, 'english', 'Day', 'Day', '2025-09-11 01:14:18', '2025-09-11 01:14:18'),
(3818, 'indonesia', 'Day', 'Day', '2025-09-11 01:14:18', '2025-09-11 01:14:18'),
(3819, 'english', 'Kamis', 'Kamis', '2025-09-11 01:14:18', '2025-09-11 01:14:18'),
(3820, 'indonesia', 'Kamis', 'Kamis', '2025-09-11 01:14:18', '2025-09-11 01:14:18'),
(3821, 'english', 'Selesai', 'Selesai', '2025-09-11 01:14:18', '2025-09-11 01:14:18'),
(3822, 'indonesia', 'Selesai', 'Selesai', '2025-09-11 01:14:18', '2025-09-11 01:14:18'),
(3823, 'english', 'Place', 'Place', '2025-09-11 01:14:18', '2025-09-11 01:14:18'),
(3824, 'indonesia', 'Place', 'Place', '2025-09-11 01:14:18', '2025-09-11 01:14:18'),
(3825, 'english', 'Teaching Center / KSM Bedah RSUD Abdul Wahab Sjahranie Samarinda', 'Teaching Center / KSM Bedah RSUD Abdul Wahab Sjahranie Samarinda', '2025-09-11 01:14:18', '2025-09-11 01:14:18'),
(3826, 'indonesia', 'Teaching Center / KSM Bedah RSUD Abdul Wahab Sjahranie Samarinda', 'Teaching Center / KSM Bedah RSUD Abdul Wahab Sjahranie Samarinda', '2025-09-11 01:14:18', '2025-09-11 01:14:18'),
(3827, 'english', 'Quota', 'Quota', '2025-09-11 01:14:18', '2025-09-11 01:14:18'),
(3828, 'indonesia', 'Quota', 'Quota', '2025-09-11 01:14:18', '2025-09-11 01:14:18'),
(3829, 'english', 'Participant', 'Participant', '2025-09-11 01:14:18', '2025-09-11 01:14:18'),
(3830, 'indonesia', 'Participant', 'Participant', '2025-09-11 01:14:18', '2025-09-11 01:14:18'),
(3831, 'english', 'Contact Person', 'Contact Person', '2025-09-11 01:14:18', '2025-09-11 01:14:18'),
(3832, 'indonesia', 'Contact Person', 'Contact Person', '2025-09-11 01:14:18', '2025-09-11 01:14:18'),
(3833, 'english', 'Registration Fee: Rp2.000.000,-', 'Registration Fee: Rp2.000.000,-', '2025-09-11 01:14:18', '2025-09-11 01:14:18'),
(3834, 'indonesia', 'Registration Fee: Rp2.000.000,-', 'Registration Fee: Rp2.000.000,-', '2025-09-11 01:14:18', '2025-09-11 01:14:18'),
(3835, 'english', 'Transfer: 021 (BNI)', 'Transfer: 021 (BNI)', '2025-09-11 01:14:18', '2025-09-11 01:14:18'),
(3836, 'indonesia', 'Transfer: 021 (BNI)', 'Transfer: 021 (BNI)', '2025-09-11 01:14:18', '2025-09-11 01:14:18'),
(3837, 'english', 'on behalf of 021', 'on behalf of 021', '2025-09-11 01:14:18', '2025-09-11 01:14:18'),
(3838, 'indonesia', 'on behalf of 021', 'on behalf of 021', '2025-09-11 01:14:18', '2025-09-11 01:14:18'),
(3839, 'english', 'Register Now', 'Register Now', '2025-09-11 01:14:18', '2025-09-11 01:14:18'),
(3840, 'indonesia', 'Register Now', 'Register Now', '2025-09-11 01:14:18', '2025-09-11 01:14:18'),
(3841, 'english', 'Advanced Trauma Life Support', 'Advanced Trauma Life Support', '2025-09-11 01:14:18', '2025-09-11 01:14:18'),
(3842, 'indonesia', 'Advanced Trauma Life Support', 'Advanced Trauma Life Support', '2025-09-11 01:14:18', '2025-09-11 01:14:18'),
(3843, 'english', 'Sub Division', 'Sub Division', '2025-09-11 01:14:18', '2025-09-11 01:14:18'),
(3844, 'indonesia', 'Sub Division', 'Sub Division', '2025-09-11 01:14:18', '2025-09-11 01:14:18'),
(3845, 'english', 'KONTRASIA is present in various regions in Indonesia. Select a region and get more information about activities in your area.', 'KONTRASIA is present in various regions in Indonesia. Select a region and get more information about activities in your area.', '2025-09-11 01:14:18', '2025-09-11 01:14:18'),
(3846, 'indonesia', 'KONTRASIA is present in various regions in Indonesia. Select a region and get more information about activities in your area.', 'KONTRASIA is present in various regions in Indonesia. Select a region and get more information about activities in your area.', '2025-09-11 01:14:18', '2025-09-11 01:14:18'),
(3847, 'english', 'Each region has different programs and activity schedules according to local needs. Find the nearest region and contact the regional coordinator for more information.', 'Each region has different programs and activity schedules according to local needs. Find the nearest region and contact the regional coordinator for more information.', '2025-09-11 01:14:18', '2025-09-11 01:14:18'),
(3848, 'indonesia', 'Each region has different programs and activity schedules according to local needs. Find the nearest region and contact the regional coordinator for more information.', 'Each region has different programs and activity schedules according to local needs. Find the nearest region and contact the regional coordinator for more information.', '2025-09-11 01:14:18', '2025-09-11 01:14:18'),
(3849, 'english', 'Medan', 'Medan', '2025-09-11 01:14:18', '2025-09-11 01:14:18'),
(3850, 'indonesia', 'Medan', 'Medan', '2025-09-11 01:14:18', '2025-09-11 01:14:18'),
(3851, 'english', 'Sumatera Utara Region', 'Sumatera Utara Region', '2025-09-11 01:14:18', '2025-09-11 01:14:18'),
(3852, 'indonesia', 'Sumatera Utara Region', 'Sumatera Utara Region', '2025-09-11 01:14:18', '2025-09-11 01:14:18'),
(3853, 'english', 'Nangro Aceh Darusalem', 'Nangro Aceh Darusalem', '2025-09-11 01:14:18', '2025-09-11 01:14:18'),
(3854, 'indonesia', 'Nangro Aceh Darusalem', 'Nangro Aceh Darusalem', '2025-09-11 01:14:18', '2025-09-11 01:14:18'),
(3855, 'english', 'Aceh Region', 'Aceh Region', '2025-09-11 01:14:18', '2025-09-11 01:14:18'),
(3856, 'indonesia', 'Aceh Region', 'Aceh Region', '2025-09-11 01:14:18', '2025-09-11 01:14:18'),
(3857, 'english', 'Nusa Tenggara', 'Nusa Tenggara', '2025-09-11 01:14:18', '2025-09-11 01:14:18'),
(3858, 'indonesia', 'Nusa Tenggara', 'Nusa Tenggara', '2025-09-11 01:14:18', '2025-09-11 01:14:18'),
(3859, 'english', 'Eastern Indonesia Region', 'Eastern Indonesia Region', '2025-09-11 01:14:18', '2025-09-11 01:14:18'),
(3860, 'indonesia', 'Eastern Indonesia Region', 'Eastern Indonesia Region', '2025-09-11 01:14:18', '2025-09-11 01:14:18'),
(3861, 'english', 'Instructor', 'Instructor', '2025-09-11 01:14:18', '2025-09-11 01:14:18'),
(3862, 'indonesia', 'Instructor', 'Instructor', '2025-09-11 01:14:18', '2025-09-11 01:14:18'),
(3863, 'english', 'Projects', 'Projects', '2025-09-11 01:14:18', '2025-09-11 01:14:18'),
(3864, 'indonesia', 'Projects', 'Projects', '2025-09-11 01:14:18', '2025-09-11 01:14:18'),
(3865, 'english', 'Hours of Support', 'Hours of Support', '2025-09-11 01:14:18', '2025-09-11 01:14:18'),
(3866, 'indonesia', 'Hours of Support', 'Hours of Support', '2025-09-11 01:14:18', '2025-09-11 01:14:18'),
(3867, 'english', 'ATLS ADVANCED TRAUMA LIFE SUPPORT', 'ATLS ADVANCED TRAUMA LIFE SUPPORT', '2025-09-11 01:14:18', '2025-09-11 01:14:18'),
(3868, 'indonesia', 'ATLS ADVANCED TRAUMA LIFE SUPPORT', 'ATLS ADVANCED TRAUMA LIFE SUPPORT', '2025-09-11 01:14:18', '2025-09-11 01:14:18'),
(3869, 'english', 'A Lifesaving Approach to Trauma Management.', 'A Lifesaving Approach to Trauma Management.', '2025-09-11 01:14:18', '2025-09-11 01:14:18'),
(3870, 'indonesia', 'A Lifesaving Approach to Trauma Management.', 'A Lifesaving Approach to Trauma Management.', '2025-09-11 01:14:18', '2025-09-11 01:14:18'),
(3871, 'english', 'Jakarta', 'Jakarta', '2025-09-11 01:35:07', '2025-09-11 01:35:07'),
(3872, 'indonesia', 'Jakarta', 'Jakarta', '2025-09-11 01:35:07', '2025-09-11 01:35:07'),
(3873, 'english', 'DKI Jakarta Region', 'DKI Jakarta Region', '2025-09-11 01:35:07', '2025-09-11 01:35:07'),
(3874, 'indonesia', 'DKI Jakarta Region', 'DKI Jakarta Region', '2025-09-11 01:35:07', '2025-09-11 01:35:07'),
(3875, 'english', 'Surabaya', 'Surabaya', '2025-09-11 01:35:07', '2025-09-11 01:35:07'),
(3876, 'indonesia', 'Surabaya', 'Surabaya', '2025-09-11 01:35:07', '2025-09-11 01:35:07'),
(3877, 'english', 'Jawa Timur Region', 'Jawa Timur Region', '2025-09-11 01:35:07', '2025-09-11 01:35:07'),
(3878, 'indonesia', 'Jawa Timur Region', 'Jawa Timur Region', '2025-09-11 01:35:07', '2025-09-11 01:35:07'),
(3879, 'english', 'Makassar', 'Makassar', '2025-09-11 01:35:07', '2025-09-11 01:35:07'),
(3880, 'indonesia', 'Makassar', 'Makassar', '2025-09-11 01:35:07', '2025-09-11 01:35:07'),
(3881, 'english', 'Sulawesi Selatan Region', 'Sulawesi Selatan Region', '2025-09-11 01:35:07', '2025-09-11 01:35:07'),
(3882, 'indonesia', 'Sulawesi Selatan Region', 'Sulawesi Selatan Region', '2025-09-11 01:35:07', '2025-09-11 01:35:07'),
(3883, 'english', 'Kalimantan Timur', 'Kalimantan Timur', '2025-09-11 01:35:07', '2025-09-11 01:35:07'),
(3884, 'indonesia', 'Kalimantan Timur', 'Kalimantan Timur', '2025-09-11 01:35:07', '2025-09-11 01:35:07');
INSERT INTO `languages` (`id`, `name`, `phrase`, `translated`, `created_at`, `updated_at`) VALUES
(3885, 'english', 'Kalimantan Region', 'Kalimantan Region', '2025-09-11 01:35:07', '2025-09-11 01:35:07'),
(3886, 'indonesia', 'Kalimantan Region', 'Kalimantan Region', '2025-09-11 01:35:07', '2025-09-11 01:35:07'),
(3887, 'english', 'Papua', 'Papua', '2025-09-11 01:35:07', '2025-09-11 01:35:07'),
(3888, 'indonesia', 'Papua', 'Papua', '2025-09-11 01:35:07', '2025-09-11 01:35:07'),
(3889, 'english', 'Papua Region', 'Papua Region', '2025-09-11 01:35:07', '2025-09-11 01:35:07'),
(3890, 'indonesia', 'Papua Region', 'Papua Region', '2025-09-11 01:35:07', '2025-09-11 01:35:07'),
(3891, 'english', 'Edit Team Member', 'Edit Team Member', '2025-10-29 16:59:16', '2025-10-29 16:59:16'),
(3892, 'indonesia', 'Edit Team Member', 'Edit Team Member', '2025-10-29 16:59:16', '2025-10-29 16:59:16'),
(3893, 'english', 'Current photo', 'Current photo', '2025-10-29 16:59:16', '2025-10-29 16:59:16'),
(3894, 'indonesia', 'Current photo', 'Current photo', '2025-10-29 16:59:16', '2025-10-29 16:59:16'),
(3895, 'english', 'Leave empty to keep current photo. Max size: 2MB.', 'Leave empty to keep current photo. Max size: 2MB.', '2025-10-29 16:59:16', '2025-10-29 16:59:16'),
(3896, 'indonesia', 'Leave empty to keep current photo. Max size: 2MB.', 'Leave empty to keep current photo. Max size: 2MB.', '2025-10-29 16:59:16', '2025-10-29 16:59:16'),
(3897, 'english', 'Active Status', 'Active Status', '2025-10-29 16:59:16', '2025-10-29 16:59:16'),
(3898, 'indonesia', 'Active Status', 'Active Status', '2025-10-29 16:59:16', '2025-10-29 16:59:16'),
(3899, 'english', 'Uncheck to hide this member from public display', 'Uncheck to hide this member from public display', '2025-10-29 16:59:16', '2025-10-29 16:59:16'),
(3900, 'indonesia', 'Uncheck to hide this member from public display', 'Uncheck to hide this member from public display', '2025-10-29 16:59:16', '2025-10-29 16:59:16'),
(3901, 'english', 'Update Member', 'Update Member', '2025-10-29 16:59:16', '2025-10-29 16:59:16'),
(3902, 'indonesia', 'Update Member', 'Update Member', '2025-10-29 16:59:16', '2025-10-29 16:59:16'),
(3903, 'english', 'New photo preview', 'New photo preview', '2025-10-29 16:59:16', '2025-10-29 16:59:16'),
(3904, 'indonesia', 'New photo preview', 'New photo preview', '2025-10-29 16:59:16', '2025-10-29 16:59:16'),
(3905, 'english', 'File', 'File', '2025-10-29 17:00:21', '2025-10-29 17:00:21'),
(3906, 'indonesia', 'File', 'File', '2025-10-29 17:00:21', '2025-10-29 17:00:21'),
(3907, 'english', 'Our Regional Network', 'Our Regional Network', '2025-10-29 17:35:48', '2025-10-29 17:35:48'),
(3908, 'indonesia', 'Our Regional Network', 'Our Regional Network', '2025-10-29 17:35:48', '2025-10-29 17:35:48'),
(3909, 'english', 'Connect with our regional offices across the country', 'Connect with our regional offices across the country', '2025-10-29 17:35:48', '2025-10-29 17:35:48'),
(3910, 'indonesia', 'Connect with our regional offices across the country', 'Connect with our regional offices across the country', '2025-10-29 17:35:48', '2025-10-29 17:35:48'),
(3911, 'english', 'Explore our collection of images', 'Explore our collection of images', '2025-10-30 00:47:48', '2025-10-30 00:47:48'),
(3912, 'indonesia', 'Explore our collection of images', 'Explore our collection of images', '2025-10-30 00:47:48', '2025-10-30 00:47:48'),
(3913, 'english', 'Search gallery...', 'Search gallery...', '2025-10-30 00:47:49', '2025-10-30 00:47:49'),
(3914, 'indonesia', 'Search gallery...', 'Search gallery...', '2025-10-30 00:47:49', '2025-10-30 00:47:49'),
(3915, 'english', 'View Image', 'View Image', '2025-10-30 00:47:49', '2025-10-30 00:47:49'),
(3916, 'indonesia', 'View Image', 'View Image', '2025-10-30 00:47:49', '2025-10-30 00:47:49'),
(3917, 'english', 'My Packages', 'My Packages', '2025-10-30 13:53:15', '2025-10-30 13:53:15'),
(3918, 'indonesia', 'My Packages', 'My Packages', '2025-10-30 13:53:15', '2025-10-30 13:53:15'),
(3919, 'english', 'My Packages ATLS', 'My Packages ATLS', '2025-10-30 13:53:22', '2025-10-30 13:53:22'),
(3920, 'indonesia', 'My Packages ATLS', 'My Packages ATLS', '2025-10-30 13:53:22', '2025-10-30 13:53:22'),
(3921, 'english', 'Packages', 'Packages', '2025-10-30 13:53:22', '2025-10-30 13:53:22'),
(3922, 'indonesia', 'Packages', 'Packages', '2025-10-30 13:53:22', '2025-10-30 13:53:22'),
(3923, 'english', 'All Packages', 'All Packages', '2025-10-30 13:53:22', '2025-10-30 13:53:22'),
(3924, 'indonesia', 'All Packages', 'All Packages', '2025-10-30 13:53:22', '2025-10-30 13:53:22'),
(3925, 'english', 'Add Package', 'Add Package', '2025-10-30 13:53:22', '2025-10-30 13:53:22'),
(3926, 'indonesia', 'Add Package', 'Add Package', '2025-10-30 13:53:22', '2025-10-30 13:53:22'),
(3927, 'english', 'No packages found', 'No packages found', '2025-10-30 13:53:22', '2025-10-30 13:53:22'),
(3928, 'indonesia', 'No packages found', 'No packages found', '2025-10-30 13:53:22', '2025-10-30 13:53:22'),
(3929, 'english', 'Create your first package to get started', 'Create your first package to get started', '2025-10-30 13:53:22', '2025-10-30 13:53:22'),
(3930, 'indonesia', 'Create your first package to get started', 'Create your first package to get started', '2025-10-30 13:53:22', '2025-10-30 13:53:22'),
(3931, 'english', 'Confirm Delete', 'Confirm Delete', '2025-10-30 13:53:22', '2025-10-30 13:53:22'),
(3932, 'indonesia', 'Confirm Delete', 'Confirm Delete', '2025-10-30 13:53:22', '2025-10-30 13:53:22'),
(3933, 'english', 'Are you sure you want to delete', 'Are you sure you want to delete', '2025-10-30 13:53:22', '2025-10-30 13:53:22'),
(3934, 'indonesia', 'Are you sure you want to delete', 'Are you sure you want to delete', '2025-10-30 13:53:22', '2025-10-30 13:53:22'),
(3935, 'english', 'Add New Package ATLS', 'Add New Package ATLS', '2025-10-30 13:53:25', '2025-10-30 13:53:25'),
(3936, 'indonesia', 'Add New Package ATLS', 'Add New Package ATLS', '2025-10-30 13:53:25', '2025-10-30 13:53:25'),
(3937, 'english', 'Region', 'Region', '2025-10-30 13:53:25', '2025-10-30 13:53:25'),
(3938, 'indonesia', 'Region', 'Region', '2025-10-30 13:53:25', '2025-10-30 13:53:25'),
(3939, 'english', 'Package Title', 'Package Title', '2025-10-30 13:53:25', '2025-10-30 13:53:25'),
(3940, 'indonesia', 'Package Title', 'Package Title', '2025-10-30 13:53:25', '2025-10-30 13:53:25'),
(3941, 'english', 'Date Range', 'Date Range', '2025-10-30 13:53:25', '2025-10-30 13:53:25'),
(3942, 'indonesia', 'Date Range', 'Date Range', '2025-10-30 13:53:25', '2025-10-30 13:53:25'),
(3943, 'english', 'Days', 'Days', '2025-10-30 13:53:25', '2025-10-30 13:53:25'),
(3944, 'indonesia', 'Days', 'Days', '2025-10-30 13:53:25', '2025-10-30 13:53:25'),
(3945, 'english', 'Google Maps Link', 'Google Maps Link', '2025-10-30 13:53:25', '2025-10-30 13:53:25'),
(3946, 'indonesia', 'Google Maps Link', 'Google Maps Link', '2025-10-30 13:53:25', '2025-10-30 13:53:25'),
(3947, 'english', 'Quota (Participants)', 'Quota (Participants)', '2025-10-30 13:53:25', '2025-10-30 13:53:25'),
(3948, 'indonesia', 'Quota (Participants)', 'Quota (Participants)', '2025-10-30 13:53:25', '2025-10-30 13:53:25'),
(3949, 'english', 'Price (Rp)', 'Price (Rp)', '2025-10-30 13:53:25', '2025-10-30 13:53:25'),
(3950, 'indonesia', 'Price (Rp)', 'Price (Rp)', '2025-10-30 13:53:25', '2025-10-30 13:53:25'),
(3951, 'english', 'Bank Name', 'Bank Name', '2025-10-30 13:53:25', '2025-10-30 13:53:25'),
(3952, 'indonesia', 'Bank Name', 'Bank Name', '2025-10-30 13:53:25', '2025-10-30 13:53:25'),
(3953, 'english', 'Account Number', 'Account Number', '2025-10-30 13:53:25', '2025-10-30 13:53:25'),
(3954, 'indonesia', 'Account Number', 'Account Number', '2025-10-30 13:53:25', '2025-10-30 13:53:25'),
(3955, 'english', 'Account Name', 'Account Name', '2025-10-30 13:53:25', '2025-10-30 13:53:25'),
(3956, 'indonesia', 'Account Name', 'Account Name', '2025-10-30 13:53:25', '2025-10-30 13:53:25'),
(3957, 'english', 'Contact Name', 'Contact Name', '2025-10-30 13:53:25', '2025-10-30 13:53:25'),
(3958, 'indonesia', 'Contact Name', 'Contact Name', '2025-10-30 13:53:25', '2025-10-30 13:53:25'),
(3959, 'english', 'Contact Phone', 'Contact Phone', '2025-10-30 13:53:25', '2025-10-30 13:53:25'),
(3960, 'indonesia', 'Contact Phone', 'Contact Phone', '2025-10-30 13:53:25', '2025-10-30 13:53:25'),
(3961, 'english', 'Package Image', 'Package Image', '2025-10-30 13:53:25', '2025-10-30 13:53:25'),
(3962, 'indonesia', 'Package Image', 'Package Image', '2025-10-30 13:53:25', '2025-10-30 13:53:25'),
(3963, 'english', 'Max size: 2MB. Format: JPG, PNG, GIF', 'Max size: 2MB. Format: JPG, PNG, GIF', '2025-10-30 13:53:25', '2025-10-30 13:53:25'),
(3964, 'indonesia', 'Max size: 2MB. Format: JPG, PNG, GIF', 'Max size: 2MB. Format: JPG, PNG, GIF', '2025-10-30 13:53:25', '2025-10-30 13:53:25'),
(3965, 'english', 'Create Package', 'Create Package', '2025-10-30 13:53:25', '2025-10-30 13:53:25'),
(3966, 'indonesia', 'Create Package', 'Create Package', '2025-10-30 13:53:25', '2025-10-30 13:53:25'),
(3967, 'english', 'Edit Package', 'Edit Package', '2025-10-30 13:58:26', '2025-10-30 13:58:26'),
(3968, 'indonesia', 'Edit Package', 'Edit Package', '2025-10-30 13:58:26', '2025-10-30 13:58:26'),
(3969, 'english', 'Leave empty to keep current image. Max size: 2MB. Format: JPG, PNG, GIF', 'Leave empty to keep current image. Max size: 2MB. Format: JPG, PNG, GIF', '2025-10-30 13:58:26', '2025-10-30 13:58:26'),
(3970, 'indonesia', 'Leave empty to keep current image. Max size: 2MB. Format: JPG, PNG, GIF', 'Leave empty to keep current image. Max size: 2MB. Format: JPG, PNG, GIF', '2025-10-30 13:58:26', '2025-10-30 13:58:26');

-- --------------------------------------------------------

--
-- Table structure for table `listing__features`
--

CREATE TABLE `listing__features` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `listing_id` int(11) NOT NULL,
  `feature_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `listing__specifications`
--

CREATE TABLE `listing__specifications` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `listing_id` int(11) NOT NULL,
  `specification_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sub_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` double NOT NULL,
  `listing_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dis_price` double DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `message_id` int(11) NOT NULL,
  `message_thread_code` longtext,
  `message` longtext,
  `sender` longtext,
  `read_status` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `message_thread`
--

CREATE TABLE `message_thread` (
  `message_thread_id` int(11) NOT NULL,
  `message_thread_code` longtext,
  `sender` bigint(20) UNSIGNED NOT NULL,
  `receiver` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2024_05_29_062523_create_categories_table', 1),
(5, '2024_06_03_103706_create_cities_table', 2),
(6, '2024_06_04_060707_create_blogs_table', 3),
(7, '2024_06_04_102457_create_blog_categories_table', 4),
(8, '2024_06_10_055010_create_car_listings_table', 5),
(9, '2024_06_10_061242_create_beauty_listings_table', 5),
(10, '2024_06_10_061308_create_real_estate_listings_table', 5),
(11, '2024_06_10_061343_create_hotel_listings_table', 5),
(12, '2024_06_10_061405_create_restaurant_listings_table', 5),
(13, '2024_06_10_074114_create_hotels_table', 5),
(14, '2024_06_10_074555_create_restaurants_table', 5),
(15, '2024_06_10_080627_create_amenities_table', 6),
(16, '2024_06_25_063412_create_listing__features_table', 7),
(17, '2024_06_25_095021_create_listing__specifications_table', 8),
(18, '2024_07_02_094655_create_rooms_table', 9),
(20, '2024_07_07_112000_create_menus_table', 10),
(21, '2024_07_09_053040_create_pricings_table', 11),
(22, '2024_07_16_103206_create_frontend_settings_table', 12),
(23, '2024_10_29_094121_create_appointments_table', 13),
(24, '2025_08_30_021028_create_otp_verifications_table', 14),
(25, '2025_01_20_000001_add_region_id_to_packages_table', 15);

-- --------------------------------------------------------

--
-- Table structure for table `nearby_location`
--

CREATE TABLE `nearby_location` (
  `id` int(11) NOT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `nearby_id` int(11) DEFAULT NULL,
  `latitude` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `longitude` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `listing_id` bigint(20) UNSIGNED NOT NULL,
  `listing_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `newsletters`
--

CREATE TABLE `newsletters` (
  `id` int(11) NOT NULL,
  `subject` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` mediumtext COLLATE utf8_unicode_ci,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `newsletter_subscribers`
--

CREATE TABLE `newsletter_subscribers` (
  `id` int(11) NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `otp_verifications`
--

CREATE TABLE `otp_verifications` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `packages`
--

CREATE TABLE `packages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `region_id` bigint(20) UNSIGNED DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_range` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `days` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `time` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `location` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `maps_link` text COLLATE utf8mb4_unicode_ci,
  `quota` int(11) NOT NULL,
  `price` decimal(15,2) NOT NULL,
  `bank_account` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bank_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `account_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_phone` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `status` enum('active','inactive') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `packages`
--

INSERT INTO `packages` (`id`, `user_id`, `region_id`, `title`, `date_range`, `days`, `time`, `location`, `maps_link`, `quota`, `price`, `bank_account`, `bank_name`, `account_name`, `contact_name`, `contact_phone`, `description`, `image`, `start_date`, `end_date`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, 'Workshop Digital Marketing Intensive', '18-19 April 2025', 'Sabtu - Minggu', '09.00 - 17.00 WIB', 'Hotel Santika Jakarta, Ruang Meeting Lt. 3', NULL, 50, '750000.00', '1234567890', 'BCA', 'John Doe', 'John Doe', '08123456789', 'Workshop intensif digital marketing untuk pemula hingga advance. Materi meliputi SEO, Social Media Marketing, Google Ads, dan Email Marketing.', NULL, '2025-04-18', '2025-04-19', 'active', '2025-09-08 07:28:26', '2025-09-08 07:28:26'),
(2, 2, 3, 'ATLS Event', '4 - 5 Oktober 2025', 'Sabtu - Minggu', '07.00 WIB - Selesai', 'Surabaya', 'https://s.id/1YVvs', 20, '200000.00', '00000000000', 'BCA', 'Jojo R', 'Jago Software', '081234567891', NULL, '1761865340_Gemini_Generated_Image_ijpgyxijpgyxijpg.png', '2025-10-30', '2025-11-03', 'active', '2025-10-30 06:58:04', '2025-10-30 16:02:20');

--
-- Triggers `packages`
--
DELIMITER $$
CREATE TRIGGER `package_status_log` AFTER UPDATE ON `packages` FOR EACH ROW BEGIN
  IF OLD.status != NEW.status THEN
    INSERT INTO activity_logs (
      table_name, record_id, action, old_value, new_value, 
      changed_by, created_at
    ) VALUES (
      'packages', NEW.id, 'status_change', 
      OLD.status, NEW.status, NEW.user_id, NOW()
    );
  END IF;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Stand-in structure for view `package_registrations`
-- (See below for the actual view)
--
CREATE TABLE `package_registrations` (
`package_id` bigint(20) unsigned
,`package_title` varchar(255)
,`quota` int(11)
,`registered_count` bigint(21)
,`remaining_quota` bigint(22)
,`fill_percentage` decimal(26,2)
,`paid_count` bigint(21)
,`pending_count` bigint(21)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `package_stats`
-- (See below for the actual view)
--
CREATE TABLE `package_stats` (
`user_id` bigint(20) unsigned
,`agent_name` varchar(255)
,`total_packages` bigint(21)
,`active_packages` bigint(21)
,`total_registrations` bigint(21)
,`paid_registrations` bigint(21)
,`total_revenue` decimal(37,2)
);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payment_geteways`
--

CREATE TABLE `payment_geteways` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `identifier` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `currency` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `keys` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `test_mode` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payment_geteways`
--

INSERT INTO `payment_geteways` (`id`, `identifier`, `currency`, `title`, `keys`, `model_name`, `test_mode`, `status`, `created_at`, `updated_at`) VALUES
(1, 'paypal', 'USD', 'Paypal', '{\"currency\":\"USD\",\"sandbox_client_id\":\"AfGaziKslex-scLAyYdDYXNFaz2aL5qGau-SbDgE_D2E80D3AFauLagP8e0kCq9au7W4IasmFbirUUYc\",\"sandbox_secret_key\":\"EMa5pCTuOpmHkhHaCGibGhVUcKg0yt5-C3CzJw-OWJCzaXXzTlyD17SICob_BkfM_0Nlk7TWnN42cbGz\",\"production_client_id\":\"123425447893328\",\"production_secret_key\":\"12345\"}', 'Paypal', '1', '0', '2023-03-28 00:32:45', '2025-09-04 20:42:34'),
(2, 'stripe', 'USD', 'Stripe', '{\"currency\":\"USD\",\"public_key\":\"pk_test_51MoMWZSDxTnaFTDaxC5wAXM9e0yB0ztZ9lrUZWFa1dHlcnTKs9Pr8n3P0uQqnoadBYuG7RL7qRxgLPkpVgr7ZNCx00Vei4c1LC\",\"secret_key\":\"sk_test_51MoMWZSDxTnaFTDavug9YfQGTryZc0xJ7t4TiJNYRlUwP0RaV1pWLl9mXjH6zWlX26M0XqJOxYtbYTR3y70uA4Bj00qMZ9ugFc\",\"public_live_key\":\"pk_live_xxxxxxxxxxxxxxxxxxxxxxxx\",\"secret_live_key\":\"sk_live_xxxxxxxxxxxxxxxxxxxxxxxx\"}', 'StripePay', '1', '0', '2023-03-28 00:32:45', '2025-09-06 01:04:24'),
(3, 'razorpay', 'INR', 'Razorpay', '{\"public_key\":\"rzp_test_J60bqBOi1z1aF5\",\"secret_key\":\"uk935K7p4j96UCJgHK8kAU4q\"}', 'Razorpay', '1', '0', '2023-03-28 00:32:45', '2025-09-04 20:42:40'),
(4, 'flutterwave', 'USD', 'Flutterwave', '{\"public_key\":\"FLWPUBK_TEST-48dfbeb50344ecd8bc075b4ffe9ba266-X\",\"secret_key\":\"FLWSECK_TEST-1691582e23bd6ee4fb04213ec0b862dd-X\"}', 'Flutterwave', '1', '0', '2023-03-28 00:32:45', '2025-09-04 20:42:43'),
(5, 'paystack', 'NGN', 'Paystack', '{\"secret_test_key\":\"sk_test_c746060e693dd50c6f397dffc6c3b2f655217c94\",\"public_test_key\":\"pk_test_0816abbed3c339b8473ff22f970c7da1c78cbe1b\",\"secret_live_key\":\"sk_live_xxxxxxxxxxxxxxxxxxxxxxxxx\",\"public_live_key\":\"pk_live_xxxxxxxxxxxxxxxxxxxxxxxxx\"}', 'Paystack', '1', '1', '2023-03-28 00:32:45', '2025-09-06 01:04:21');

-- --------------------------------------------------------

--
-- Table structure for table `pricings`
--

CREATE TABLE `pricings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sub_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int(11) NOT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `period` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `feature` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `listing` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `video` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `choice` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pricings`
--

INSERT INTO `pricings` (`id`, `name`, `sub_title`, `price`, `icon`, `period`, `feature`, `listing`, `category`, `contact`, `video`, `choice`, `created_at`, `updated_at`) VALUES
(2, 'Basic', 'Agen Basic', 200, 'bi-graph-up-arrow', 'annually', 'available', '1', '1', 'available', 'available', '1', '2025-09-04 20:45:54', '2025-09-04 20:45:54');

-- --------------------------------------------------------

--
-- Table structure for table `real_estate_listings`
--

CREATE TABLE `real_estate_listings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `property_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` double NOT NULL,
  `discount` double DEFAULT NULL,
  `bed` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bath` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `size` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dimension` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sub_dimension` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `year` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `floor_plan` longtext COLLATE utf8mb4_unicode_ci,
  `garage` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `video` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `visibility` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `feature` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `specification` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_keyword` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `og_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `og_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `og_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `canonical_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `json_id` longtext COLLATE utf8mb4_unicode_ci,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `area` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `postal_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Latitude` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Longitude` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `category` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `near_by` longtext COLLATE utf8mb4_unicode_ci,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `model` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `regions`
--

CREATE TABLE `regions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci,
  `icon_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `banner_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `whatsapp` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_num` int(11) NOT NULL DEFAULT '0',
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `regions`
--

INSERT INTO `regions` (`id`, `name`, `slug`, `meta_title`, `meta_description`, `icon_image`, `banner_image`, `whatsapp`, `order_num`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'Jakarta', 'jakarta', 'Pelatihan ATLS Jakarta | Workshop Resmi Berbadan Hukum', 'Ikuti pelatihan ATLS resmi di Jakarta. Workshop bersertifikat untuk dokter umum dan tenaga medis dalam penanganan trauma darurat.', 'regions/icons/ctb5tE3cH4A4LSUPmNn0Ib6W99hmlTHgwktTyUJ9.png', 'regions/banners/8310kBp8fnVuFdhDtc94bkzmzzJIMlcQZaUYEeUm.png', '6281281913274', 6, 1, '2025-09-04 04:53:49', '2025-09-23 20:21:16'),
(2, 'Bandung', 'bandung', 'Pelatihan ATLS Bandung | Workshop Resmi Berbadan Hukum', 'Ikuti pelatihan ATLS resmi di Bandung. Workshop bersertifikat untuk dokter umum dan tenaga medis dalam penanganan trauma darurat.', 'regions/icons/tfudPAVo4oovG1RKrtZy5BZPD02uw1BqKfN7b1b3.png', 'regions/banners/kXlQV6f08cCMlkJBT3PuzCyv4nVs6MP9Cv1qOgOY.png', '6281222070330', 7, 1, '2025-09-04 04:53:49', '2025-09-23 20:26:14'),
(3, 'Surabaya', 'surabaya', 'Pelatihan ATLS Surabaya | Workshop Resmi Berbadan Hukum', 'Ikuti pelatihan ATLS resmi di Surabaya. Workshop bersertifikat untuk dokter umum dan tenaga medis dalam penanganan trauma darurat.', 'regions/icons/gIt1KFyu7aSgcWfW0VDdIf1JjXl7SMcTfASJc5EG.png', 'regions/banners/V7aGEInsL1tgFeyQK1RrNwVCig4jetde8YXcIw8w.png', '6282139586024', 1, 1, '2025-09-04 04:53:49', '2025-09-23 19:56:21'),
(4, 'Malang', 'malang', 'Pelatihan ATLS Malang | Workshop Resmi Berbadan Hukum', 'Ikuti pelatihan ATLS resmi di Malang. Workshop bersertifikat untuk dokter umum dan tenaga medis dalam penanganan trauma darurat.', 'regions/icons/XXiEGmweJWco2gBG1qA4Hdkznuv08l9oj8aO1xtY.png', 'regions/banners/4fHyggu8eEBMFpQq6xMisVj1twzZOKsCaKILWNFg.png', '628123503029', 2, 1, '2025-09-23 19:56:04', '2025-09-23 19:56:04'),
(5, 'Semarang', 'semarang', 'Pelatihan ATLS Semarang | Workshop Resmi Berbadan Hukum', 'Ikuti pelatihan ATLS resmi di Semarang. Workshop bersertifikat untuk dokter umum dan tenaga medis dalam penanganan trauma darurat.', 'regions/icons/24n68QwCraLBxlTs7o3dKWC86FX044tqtbaGyAhv.png', 'regions/banners/fG6gBN9hpXLFeJ9HtytGWpXcTcfB28I2zE46cjf7.png', '628156646479', 3, 1, '2025-09-23 20:05:50', '2025-09-23 20:05:50'),
(6, 'Yogyakarta', 'yogyakarta', 'Pelatihan ATLS Yogyakarta | Workshop Resmi Berbadan Hukum', 'Ikuti pelatihan ATLS resmi di Yogyakarta. Workshop bersertifikat untuk dokter umum dan tenaga medis dalam penanganan trauma darurat.', 'regions/icons/e2FASz537yF7LVlTO0CnNjEN992T7uZ8bfftKeaP.png', 'regions/banners/2mdM9wnVQ9RBY4nISkmv6PDiL7GyqE5T0ElhGEgX.png', '6287839136163', 4, 1, '2025-09-23 20:13:11', '2025-09-23 20:13:11'),
(7, 'Surakarta', 'surakarta', 'Pelatihan ATLS Surakarta | Workshop Resmi Berbadan Hukum', 'Ikuti pelatihan ATLS resmi di Surakarta. Workshop bersertifikat untuk dokter umum dan tenaga medis dalam penanganan trauma darurat.', 'regions/icons/Rmr1gt1rPDnmmPfDHWhGUmt6gGPFJP38WFqAhX25.png', 'regions/banners/k10EVsb50xHeHHUGufcqNqrtyrThyNvvww1vRSzU.png', '628156717500', 5, 1, '2025-09-23 20:18:10', '2025-09-23 20:18:10'),
(8, 'Bali', 'bali', 'Pelatihan ATLS Bali | Workshop Resmi Berbadan Hukum', 'Ikuti pelatihan ATLS resmi di Bali. Workshop bersertifikat untuk dokter umum dan tenaga medis dalam penanganan trauma darurat.', 'regions/icons/LqS3ZNVXz6mwLu7X9PxZ1vpWMMmOEHtXnskwgkH8.png', 'regions/banners/3wNfkvr4dAwHVTm19dG5Tr6RlpwsxTIZaTUB3spi.png', '628123989813', 8, 1, '2025-09-23 20:31:55', '2025-09-23 20:31:55'),
(9, 'NTB/NTT', 'ntbntt', 'Pelatihan ATLS NTB/NTT | Workshop Resmi Berbadan Hukum', 'Ikuti pelatihan ATLS resmi di NTB/NTT. Workshop bersertifikat untuk dokter umum dan tenaga medis dalam penanganan trauma darurat.', 'regions/icons/OUkf1OFx0jQyTWThAqIUCeOrSbZFLSP9na1Ae5T8.png', 'regions/banners/sJRucWwePZ0OxDmx33K7v8Ay4mscFnzJNB0aD9er.png', '6281339197730', 9, 1, '2025-09-23 20:39:34', '2025-09-23 20:39:34'),
(10, 'Lampung', 'lampung', 'Pelatihan ATLS Lampung | Workshop Resmi Berbadan Hukum', 'Ikuti pelatihan ATLS resmi di Lampung. Workshop bersertifikat untuk dokter umum dan tenaga medis dalam penanganan trauma darurat.', 'regions/icons/JMyQGzYCdQb71udlNgKlhy8KmnZmEAc5eCO2CVBl.png', 'regions/banners/F6tlP4buyNYrHud1xQDYmViJnV9APoZnaw8GbLna.png', '6282178197344', 10, 1, '2025-09-23 20:44:57', '2025-09-23 20:44:57'),
(11, 'Padang', 'padang', 'Pelatihan ATLS Padang | Workshop Resmi Berbadan Hukum', 'Ikuti pelatihan ATLS resmi di Padang. Workshop bersertifikat untuk dokter umum dan tenaga medis dalam penanganan trauma darurat.', 'regions/icons/PwSVmyLNn9KcULXuPN1QvfFeaTeavCstWv88KgKW.png', 'regions/banners/4m5NMKNXAy87PBYEFxle6vJxw9aVjMSzjiEhM698.png', '6281374525270', 11, 1, '2025-09-23 20:56:33', '2025-09-23 20:56:33'),
(12, 'Palembang', 'palembang', 'Pelatihan ATLS Palembang | Workshop Resmi Berbadan Hukum', 'Ikuti pelatihan ATLS resmi di Palembang. Workshop bersertifikat untuk dokter umum dan tenaga medis dalam penanganan trauma darurat.', 'regions/icons/Vft747GL6WPe53I9ZUBd2JshZXEXilrBvvsvwcsi.png', 'regions/banners/8TvmQzWYpwp1uvrTzmAclVAcAK8ey5lNWkF7G03i.png', '6281367176567', 12, 1, '2025-09-23 21:02:24', '2025-09-23 21:02:24'),
(13, 'Jambi', 'jambi', 'Pelatihan ATLS Jambi | Workshop Resmi Berbadan Hukum', 'Ikuti pelatihan ATLS resmi di Jambi. Workshop bersertifikat untuk dokter umum dan tenaga medis dalam penanganan trauma darurat.', 'regions/icons/Hlm6YytEqHdjB8gGzPZvtpn3feiNVITqEK25LnS0.png', 'regions/banners/kQGaz4M39qTfplplr8yD5RiwFPCojj4kUwI09vd1.png', '6282281391720', 13, 1, '2025-09-23 21:09:46', '2025-09-23 21:09:46'),
(14, 'Pekanbaru', 'pekanbaru', 'Pelatihan ATLS Pekanbaru | Workshop Resmi Berbadan Hukum', 'Ikuti pelatihan ATLS resmi di Pekanbaru. Workshop bersertifikat untuk dokter umum dan tenaga medis dalam penanganan trauma darurat.', 'regions/icons/FO21plWf7HkWqKbczDeu7KgQ8FSJCeuqLxj9MRYS.png', 'regions/banners/KrjQ5pAQcNApi2ALfMrGJkmfybwZUzVYlIVoArrZ.png', '628127600608', 14, 1, '2025-09-23 21:21:54', '2025-09-23 21:21:54'),
(15, 'Medan', 'medan', 'Pelatihan ATLS Medan | Workshop Resmi Berbadan Hukum', 'Ikuti pelatihan ATLS resmi di Medan. Workshop bersertifikat untuk dokter umum dan tenaga medis dalam penanganan trauma darurat.', 'regions/icons/B8BCS6fECMJiCjB8n0TwZgScM1QJQTdKTp1ONAMo.png', 'regions/banners/KpRQDwg94C7yEfJFx7wpNHNh3F8a5GJjzECmKQWq.png', '6281376147736', 15, 1, '2025-09-23 21:26:46', '2025-09-23 21:26:46'),
(16, 'Nangro Aceh Darussalam', 'nangro-aceh-darussalam', 'Pelatihan ATLS Aceh | Workshop Resmi Berbadan Hukum', 'Ikuti pelatihan ATLS resmi di Nangro Aceh Darussalam. Workshop bersertifikat untuk dokter umum dan tenaga medis dalam penanganan trauma darurat.', 'regions/icons/rVPDyb0BIh2IrB6Ju5KrGc9Q1054wx07MUMtyfeK.png', 'regions/banners/NcJ4UYnqViL31csWavaWGLcmzLIxsPzCp0I17iyc.png', '6281278273567', 16, 1, '2025-09-23 21:32:39', '2025-09-23 21:32:39'),
(17, 'Makassar', 'makassar', 'Pelatihan ATLS Makassar | Workshop Resmi Berbadan Hukum', 'Ikuti pelatihan ATLS resmi di Makassar. Workshop bersertifikat untuk dokter umum dan tenaga medis dalam penanganan trauma darurat.', 'regions/icons/De2fEhY296YqQc88OFb9gvcx7FSAkc0QrGKlcjO9.png', 'regions/banners/36bNYjfl9bbBruNVod6qXPvmevVzCNSrN8OTz9qi.png', '6281241966267', 17, 1, '2025-09-23 21:37:23', '2025-09-23 21:37:23'),
(18, 'Manado', 'manado', 'Pelatihan ATLS Manado | Workshop Resmi Berbadan Hukum', 'Ikuti pelatihan ATLS resmi di Manado. Workshop bersertifikat untuk dokter umum dan tenaga medis dalam penanganan trauma darurat.', 'regions/icons/KjU1QsYXCeiQzSR3bfVgFW9zwYb1EVyvLMJCPakJ.png', 'regions/banners/DYOVoz0Yp2tBNOoPskEhBlC9BGRVaO9uCLcfBMoi.png', '6281241966267', 18, 1, '2025-09-23 21:42:39', '2025-09-23 21:42:39'),
(19, 'Kalimantan Tengah/Kalimantan Selatan', 'kalimantan-tengahkalimantan-selatan', 'Pelatihan ATLS Kateng/Kalsel | Workshop Resmi Berbadan Hukum', 'Ikuti pelatihan ATLS resmi di Kalimantan Tengah/Selatan. Workshop bersertifikat untuk dokter umum dan tenaga medis dalam penanganan trauma darurat.', 'regions/icons/qPWpDqmu1T58xI9EHuRhrI9eHideDcmokyb1ODI0.png', 'regions/banners/jPMGExMXEiwr3pANJbK3EarTX7SlSh65pj4GYRGU.png', '628876369998', 19, 1, '2025-09-23 22:02:03', '2025-09-23 22:02:03'),
(20, 'Kalimantan Barat', 'kalimantan-barat', 'Pelatihan ATLS Kalbar | Workshop Resmi Berbadan Hukum', 'Ikuti pelatihan ATLS resmi di Kalimantan Barat. Workshop bersertifikat untuk dokter umum dan tenaga medis dalam penanganan trauma darurat.', 'regions/icons/ijHuxfo2xyRIYKWWOAgIujwyXKIj7OWnQBpBEuPm.png', 'regions/banners/ebl2xOtlQQe2mNIHm23pkz4eSYhtYHtHJr4FUiTn.png', '6281258050291', 20, 1, '2025-09-23 22:06:18', '2025-09-23 22:06:18'),
(21, 'Papua', 'papua', 'Pelatihan ATLS Papua | Workshop Resmi Berbadan Hukum', 'Ikuti pelatihan ATLS resmi di Papua. Workshop bersertifikat untuk dokter umum dan tenaga medis dalam penanganan trauma darurat.', 'regions/icons/cH1bENjMbqzDzNEaCU7WPyuu83K9AhjxpzBOyVUX.png', 'regions/banners/T8xrZhGnsWQ1rphmTfVhpcldAwnmd9t3iIT70tUy.png', '6281227388269', 21, 1, '2025-09-23 22:10:59', '2025-09-23 22:10:59'),
(22, 'Maluku', 'maluku', 'Pelatihan ATLS Surabaya | Workshop Resmi Berbadan Hukum', 'Ikuti pelatihan ATLS resmi di Maluku. Workshop bersertifikat untuk dokter umum dan tenaga medis dalam penanganan trauma darurat.', 'regions/icons/xZ6NOQD9twaymdysEkRCo5ByGw85IZoIYhros1G6.png', 'regions/banners/5BTxRRZ7oPzGp6jRAkR3HtLTpCUJp7oWFfo3HNEZ.png', '6282213684488', 22, 1, '2025-09-23 22:15:09', '2025-09-23 22:15:09'),
(23, 'Bukittinggi', 'bukittinggi', 'Pelatihan ATLS Bukitttinggi | Workshop Resmi Berbadan Hukum', 'Ikuti pelatihan ATLS resmi di Bukittinggi. Workshop bersertifikat untuk dokter umum dan tenaga medis dalam penanganan trauma darurat.', 'regions/icons/gryotNA2Q7LXj0qhS0XYHjVHMQ5oJ7q3mquTBzwn.png', 'regions/banners/vQSX3BKVo11upspb95AQh0XkhYS3m0FBw40qXAbI.png', '6281270260317', 23, 1, '2025-09-23 22:25:12', '2025-09-23 22:25:12'),
(24, 'Samarinda', 'samarinda', 'Pelatihan ATLS Samarinda | Workshop Resmi Berbadan Hukum', 'Ikuti pelatihan ATLS resmi di Samarinda. Workshop bersertifikat untuk dokter umum dan tenaga medis dalam penanganan trauma darurat.', 'regions/icons/GSiQskKVmMHWfmBCbI66MbHF9Iey6vAnozwTecXR.png', 'regions/banners/QwSh7eShUokd27u5UDl4u7jqsUQqwOLrMZJ04wl0.png', '628115515980', 24, 1, '2025-09-23 22:31:49', '2025-09-23 22:31:49'),
(25, 'Balikpapan', 'balikpapan', 'Pelatihan ATLS Balikapapan | Workshop Resmi Berbadan Hukum', 'Ikuti pelatihan ATLS resmi di Balikpapan. Workshop bersertifikat untuk dokter umum dan tenaga medis dalam penanganan trauma darurat.', 'regions/icons/KxV6XuzxsnrPwRKfgm1GpUiDRVpj8yTwKyn9QMr5.png', 'regions/banners/icwkN7j5R3gM8IkvO52tBuQcReTQcZVHk1D0OIrj.png', '62816200238', 25, 1, '2025-09-23 22:36:48', '2025-09-23 22:36:48');

-- --------------------------------------------------------

--
-- Table structure for table `region_pages`
--

CREATE TABLE `region_pages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `region_id` bigint(20) UNSIGNED NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `region_pages`
--

INSERT INTO `region_pages` (`id`, `region_id`, `slug`, `title`, `content`, `created_at`, `updated_at`) VALUES
(1, 1, 'jakarta', 'Jakarta', '<div class=\"region-content\">\r\n    <h1>Wilayah Jakarta</h1>\r\n    <p>Selamat datang di wilayah Jakarta. Kami menyediakan layanan terbaik dengan tim profesional berpengalaman.</p>\r\n    <h3>Layanan Kami:</h3>\r\n    <ul>\r\n      <li>Konsultasi profesional</li>\r\n      <li>Pelayanan 24/7</li>\r\n      <li>Tim berpengalaman</li>\r\n    </ul>\r\n    <p>Silakan hubungi kami untuk informasi lebih lanjut.</p>\r\n  </div>', '2025-09-04 04:53:49', '2025-09-04 04:53:49'),
(2, 2, 'bandung', 'Bandung', '<div class=\"region-content\">\r\n    <h1>Wilayah Bandung</h1>\r\n    <p>Selamat datang di wilayah Bandung. Layanan terpercaya dengan pengalaman bertahun-tahun.</p>\r\n    <h3>Keunggulan Kami:</h3>\r\n    <ul>\r\n      <li>Pengalaman lebih dari 10 tahun</li>\r\n      <li>Tim ahli lokal</li>\r\n      <li>Harga kompetitif</li>\r\n    </ul>\r\n    <p>Hubungi kami sekarang untuk konsultasi gratis!</p>\r\n  </div>', '2025-09-04 04:53:49', '2025-09-04 04:53:49'),
(3, 3, 'surabaya', 'Surabaya', '<div class=\"region-content\">\r\n    <h1>Wilayah Surabaya</h1>\r\n    <p>Selamat datang di wilayah Surabaya. Solusi terdepan untuk semua kebutuhan Anda.</p>\r\n    <h3>Mengapa Pilih Kami:</h3>\r\n    <ul>\r\n      <li>Teknologi terkini</li>\r\n      <li>Respon cepat</li>\r\n      <li>Garansi kepuasan</li>\r\n    </ul>\r\n    <p>Dapatkan penawaran terbaik dengan menghubungi kami!</p>\r\n  </div>', '2025-09-04 04:53:49', '2025-09-04 04:53:49'),
(4, 4, 'malang', 'Malang', '\n                <div class=\'region-content\'>\n                    <h1>Wilayah Malang</h1>\n                    <p>Selamat datang di wilayah Malang. Silakan hubungi kami untuk informasi lebih lanjut.</p>\n                </div>\n            ', '2025-09-23 19:56:04', '2025-09-23 19:56:04'),
(5, 5, 'semarang', 'Semarang', '\n                <div class=\'region-content\'>\n                    <h1>Wilayah Semarang</h1>\n                    <p>Selamat datang di wilayah Semarang. Silakan hubungi kami untuk informasi lebih lanjut.</p>\n                </div>\n            ', '2025-09-23 20:05:50', '2025-09-23 20:05:50'),
(6, 6, 'yogyakarta', 'Yogyakarta', '\n                <div class=\'region-content\'>\n                    <h1>Wilayah Yogyakarta</h1>\n                    <p>Selamat datang di wilayah Yogyakarta. Silakan hubungi kami untuk informasi lebih lanjut.</p>\n                </div>\n            ', '2025-09-23 20:13:11', '2025-09-23 20:13:11'),
(7, 7, 'surakarta', 'Surakarta', '\n                <div class=\'region-content\'>\n                    <h1>Wilayah Surakarta</h1>\n                    <p>Selamat datang di wilayah Surakarta. Silakan hubungi kami untuk informasi lebih lanjut.</p>\n                </div>\n            ', '2025-09-23 20:18:10', '2025-09-23 20:18:10'),
(8, 8, 'bali', 'Bali', '\n                <div class=\'region-content\'>\n                    <h1>Wilayah Bali</h1>\n                    <p>Selamat datang di wilayah Bali. Silakan hubungi kami untuk informasi lebih lanjut.</p>\n                </div>\n            ', '2025-09-23 20:31:55', '2025-09-23 20:31:55'),
(9, 9, 'ntbntt', 'NTB/NTT', '\n                <div class=\'region-content\'>\n                    <h1>Wilayah NTB/NTT</h1>\n                    <p>Selamat datang di wilayah NTB/NTT. Silakan hubungi kami untuk informasi lebih lanjut.</p>\n                </div>\n            ', '2025-09-23 20:39:34', '2025-09-23 20:39:34'),
(10, 10, 'lampung', 'Lampung', '\n                <div class=\'region-content\'>\n                    <h1>Wilayah Lampung</h1>\n                    <p>Selamat datang di wilayah Lampung. Silakan hubungi kami untuk informasi lebih lanjut.</p>\n                </div>\n            ', '2025-09-23 20:44:57', '2025-09-23 20:44:57'),
(11, 11, 'padang', 'Padang', '\n                <div class=\'region-content\'>\n                    <h1>Wilayah Padang</h1>\n                    <p>Selamat datang di wilayah Padang. Silakan hubungi kami untuk informasi lebih lanjut.</p>\n                </div>\n            ', '2025-09-23 20:56:33', '2025-09-23 20:56:33'),
(12, 12, 'palembang', 'Palembang', '\n                <div class=\'region-content\'>\n                    <h1>Wilayah Palembang</h1>\n                    <p>Selamat datang di wilayah Palembang. Silakan hubungi kami untuk informasi lebih lanjut.</p>\n                </div>\n            ', '2025-09-23 21:02:24', '2025-09-23 21:02:24'),
(13, 13, 'jambi', 'Jambi', '\n                <div class=\'region-content\'>\n                    <h1>Wilayah Jambi</h1>\n                    <p>Selamat datang di wilayah Jambi. Silakan hubungi kami untuk informasi lebih lanjut.</p>\n                </div>\n            ', '2025-09-23 21:09:46', '2025-09-23 21:09:46'),
(14, 14, 'pekanbaru', 'Pekanbaru', '\n                <div class=\'region-content\'>\n                    <h1>Wilayah Pekanbaru</h1>\n                    <p>Selamat datang di wilayah Pekanbaru. Silakan hubungi kami untuk informasi lebih lanjut.</p>\n                </div>\n            ', '2025-09-23 21:21:54', '2025-09-23 21:21:54'),
(15, 15, 'medan', 'Medan', '\n                <div class=\'region-content\'>\n                    <h1>Wilayah Medan</h1>\n                    <p>Selamat datang di wilayah Medan. Silakan hubungi kami untuk informasi lebih lanjut.</p>\n                </div>\n            ', '2025-09-23 21:26:46', '2025-09-23 21:26:46'),
(16, 16, 'nangro-aceh-darussalam', 'Nangro Aceh Darussalam', '\n                <div class=\'region-content\'>\n                    <h1>Wilayah Nangro Aceh Darussalam</h1>\n                    <p>Selamat datang di wilayah Nangro Aceh Darussalam. Silakan hubungi kami untuk informasi lebih lanjut.</p>\n                </div>\n            ', '2025-09-23 21:32:39', '2025-09-23 21:32:39'),
(17, 17, 'makassar', 'Makassar', '\n                <div class=\'region-content\'>\n                    <h1>Wilayah Makassar</h1>\n                    <p>Selamat datang di wilayah Makassar. Silakan hubungi kami untuk informasi lebih lanjut.</p>\n                </div>\n            ', '2025-09-23 21:37:23', '2025-09-23 21:37:23'),
(18, 18, 'manado', 'Manado', '\n                <div class=\'region-content\'>\n                    <h1>Wilayah Manado</h1>\n                    <p>Selamat datang di wilayah Manado. Silakan hubungi kami untuk informasi lebih lanjut.</p>\n                </div>\n            ', '2025-09-23 21:42:39', '2025-09-23 21:42:39'),
(19, 19, 'kalimantan-tengahkalimantan-selatan', 'Kalimantan Tengah/Kalimantan Selatan', '\n                <div class=\'region-content\'>\n                    <h1>Wilayah Kalimantan Tengah/Kalimantan Selatan</h1>\n                    <p>Selamat datang di wilayah Kalimantan Tengah/Kalimantan Selatan. Silakan hubungi kami untuk informasi lebih lanjut.</p>\n                </div>\n            ', '2025-09-23 22:02:03', '2025-09-23 22:02:03'),
(20, 20, 'kalimantan-barat', 'Kalimantan Barat', '\n                <div class=\'region-content\'>\n                    <h1>Wilayah Kalimantan Barat</h1>\n                    <p>Selamat datang di wilayah Kalimantan Barat. Silakan hubungi kami untuk informasi lebih lanjut.</p>\n                </div>\n            ', '2025-09-23 22:06:18', '2025-09-23 22:06:18'),
(21, 21, 'papua', 'Papua', '\n                <div class=\'region-content\'>\n                    <h1>Wilayah Papua</h1>\n                    <p>Selamat datang di wilayah Papua. Silakan hubungi kami untuk informasi lebih lanjut.</p>\n                </div>\n            ', '2025-09-23 22:10:59', '2025-09-23 22:10:59'),
(22, 22, 'maluku', 'Maluku', '\n                <div class=\'region-content\'>\n                    <h1>Wilayah Maluku</h1>\n                    <p>Selamat datang di wilayah Maluku. Silakan hubungi kami untuk informasi lebih lanjut.</p>\n                </div>\n            ', '2025-09-23 22:15:09', '2025-09-23 22:15:09'),
(23, 23, 'bukittinggi', 'Bukittinggi', '\n                <div class=\'region-content\'>\n                    <h1>Wilayah Bukittinggi</h1>\n                    <p>Selamat datang di wilayah Bukittinggi. Silakan hubungi kami untuk informasi lebih lanjut.</p>\n                </div>\n            ', '2025-09-23 22:25:12', '2025-09-23 22:25:12'),
(24, 24, 'samarinda', 'Samarinda', '\n                <div class=\'region-content\'>\n                    <h1>Wilayah Samarinda</h1>\n                    <p>Selamat datang di wilayah Samarinda. Silakan hubungi kami untuk informasi lebih lanjut.</p>\n                </div>\n            ', '2025-09-23 22:31:49', '2025-09-23 22:31:49'),
(25, 25, 'balikpapan', 'Balikpapan', '\n                <div class=\'region-content\'>\n                    <h1>Wilayah Balikpapan</h1>\n                    <p>Selamat datang di wilayah Balikpapan. Silakan hubungi kami untuk informasi lebih lanjut.</p>\n                </div>\n            ', '2025-09-23 22:36:48', '2025-09-23 22:36:48');

-- --------------------------------------------------------

--
-- Table structure for table `registrations`
--

CREATE TABLE `registrations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `package_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` decimal(15,2) NOT NULL,
  `payment_status` enum('pending','paid','cancelled','refunded') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `payment_method` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_proof` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_reference` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `registration_date` date NOT NULL,
  `notes` text COLLATE utf8mb4_unicode_ci,
  `certificate_issued` tinyint(1) NOT NULL DEFAULT '0',
  `certificate_path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `attendance_status` enum('registered','attended','absent') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'registered',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `reported_listings`
--

CREATE TABLE `reported_listings` (
  `id` bigint(20) NOT NULL,
  `listing_id` int(11) DEFAULT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `reporter_id` int(11) DEFAULT NULL,
  `report` longtext COLLATE utf8_unicode_ci,
  `user_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_phone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `report_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `restaurants`
--

CREATE TABLE `restaurants` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amenities` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_keyword` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `og_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `og_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `og_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `canonical_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `json_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `area` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `postal_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Latitude` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Longitude` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `restaurant_listings`
--

CREATE TABLE `restaurant_listings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category` int(11) DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `visibility` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amenities` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `opening_time` text COLLATE utf8mb4_unicode_ci,
  `meta_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_keyword` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `og_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `og_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `canonical_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `json_id` longtext COLLATE utf8mb4_unicode_ci,
  `country` int(11) NOT NULL,
  `city` int(11) NOT NULL,
  `area` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `postal_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Latitude` int(11) NOT NULL,
  `Longitude` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `menu` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_popular` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `listing_id` int(11) DEFAULT NULL,
  `agent_id` int(11) DEFAULT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `reply_id` int(11) DEFAULT NULL,
  `rating` int(11) DEFAULT NULL,
  `review` longtext COLLATE utf8_unicode_ci,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `rooms`
--

CREATE TABLE `rooms` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `person` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `child` int(11) DEFAULT NULL,
  `listing_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `feature` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `seo_fields`
--

CREATE TABLE `seo_fields` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `course_id` int(11) DEFAULT NULL,
  `blog_id` int(11) DEFAULT NULL,
  `route` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name_route` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci,
  `meta_description` text COLLATE utf8mb4_unicode_ci,
  `meta_robot` text COLLATE utf8mb4_unicode_ci,
  `canonical_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `custom_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `json_ld` longtext COLLATE utf8mb4_unicode_ci,
  `og_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `og_description` text COLLATE utf8mb4_unicode_ci,
  `og_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `seo_fields`
--

INSERT INTO `seo_fields` (`id`, `course_id`, `blog_id`, `route`, `name_route`, `meta_title`, `meta_keywords`, `meta_description`, `meta_robot`, `canonical_url`, `custom_url`, `json_ld`, `og_title`, `og_description`, `og_image`, `created_at`, `updated_at`) VALUES
(1, NULL, NULL, 'Home', 'home', 'ATLS Indonesia | Kursus & Sertifikasi Trauma Terpercaya', '[{\"value\":\"ATLS Indonesia\"},{\"value\":\"Pelatihan ATLS\"},{\"value\":\"Advance Trauma Life Support Indonesia\"},{\"value\":\"Kursus ATLS\"},{\"value\":\"Sertifikasi ATLS Indonesia\"},{\"value\":\"ATLS resmi Indonesia\"},{\"value\":\"Pelatihan ATLS untuk dokter umum\"},{\"value\":\"Kursus ATLS bersertifikat resmi\"},{\"value\":\"Jadwal pelatihan ATLS Indonesia\"},{\"value\":\"Biaya pelatihan ATLS Indonesia\"},{\"value\":\"Tempat pelatihan ATLS di Indonesia\"},{\"value\":\"ATLS IDI terakreditasi\"},{\"value\":\"Pelatihan penanganan trauma untuk tenaga medis\"},{\"value\":\"ATLS online Indonesia\"},{\"value\":\"Daftar ATLS Indonesia\"},{\"value\":\"Apa itu ATLS\"},{\"value\":\"Cara ikut pelatihan ATLS\"},{\"value\":\"Syarat ikut kursus ATLS\"},{\"value\":\"ATLS untuk dokter jaga IGD\"}]', 'ATLS Indonesia menyediakan pelatihan dan sertifikasi resmi Advance Trauma Life Support bagi tenaga medis yang menangani kasus trauma darurat.', 'index, follow', 'atlsindonesia.com', 'https://yourdomain.com/home', '<script type=\"application/ld+json\">\r\n{\r\n  \"@context\": \"https://schema.org\",\r\n  \"@type\": \"WebSite\",\r\n  \"name\": \"ATLS Indonesia\",\r\n  \"url\": \"https://www.atlsindonesia.id\",\r\n  \"potentialAction\": {\r\n    \"@type\": \"SearchAction\",\r\n    \"target\": \"https://www.atlsindonesia.id/search?q={search_term_string}\",\r\n    \"query-input\": \"required name=search_term_string\"\r\n  }\r\n}\r\n</script>', 'ATLS Indonesia | Kursus & Sertifikasi Trauma Terpercaya', 'Tingkatkan kompetensi penanganan trauma dengan pelatihan ATLS resmi di Indonesia. Daftar sekarang untuk sertifikasi profesional.', '1-logo.png', '2025-03-22 16:04:31', '2025-03-22 16:04:31'),
(7, NULL, NULL, 'Beauty', 'beauty.home', 'Discover Your True Beauty Atlas Laravel', '[{\"value\":\"beauty tips\"},{\"value\":\"skincare\"},{\"value\":\"makeup\"},{\"value\":\"beauty products\"},{\"value\":\"beauty routines\"},{\"value\":\"natural beauty\"},{\"value\":\"beauty advice\"},{\"value\":\"self-care\"}]', 'Enhance your beauty with expert tips, top-rated products, and personalized routines. Uncover the secrets to glowing skin and flawless makeup today!', 'index, follow', 'https://yourdomain.com', 'https://yourdomain.com/home', '<script type=\"application/ld+json\"> {   \"@context\": \"http://schema.org\",   \"@type\": \"WebSite\",   \"name\": \"CodeCanyon\",   \"url\": \"https://codecanyon.net\" } </script>', 'Unleash Your Inner Glow with', 'Your one-stop destination for beauty tips, skincare routines, and makeup trends. Join us to look and feel your best every day!', '7-1731159740_beauty-hero-banner.webp', '2025-03-22 16:04:31', '2025-03-22 16:04:31'),
(8, NULL, NULL, 'Real-estate', 'real-estate.home', 'Discover Your Dream Home Atlas Laravel', '[{\"value\":\"real estate\"},{\"value\":\"homes for sale\"},{\"value\":\"property listings\"},{\"value\":\"buy houses\"},{\"value\":\"sell property\"},{\"value\":\"real estate deals\"},{\"value\":\"rental properties\"},{\"value\":\"luxury homes\"}]', 'Find your perfect home with our comprehensive real estate listings. Buy, sell, or rent properties with ease and explore the best deals today!', 'index, follow', 'https://yourdomain.com', 'https://yourdomain.com/home', '<script type=\"application/ld+json\"> {   \"@context\": \"http://schema.org\",   \"@type\": \"WebSite\",   \"name\": \"CodeCanyon\",   \"url\": \"https://codecanyon.net\" } </script>', 'Explore Top Real Estate Listings | Buy, Sell, or Rent', 'Browse our curated real estate listings for the best properties to buy, sell, or rent. Your dream home is just a click away!', '8-1733810127_real-estate-banner.webp', '2025-03-22 16:04:31', '2025-03-22 16:04:31'),
(9, NULL, NULL, 'Car', 'car.home', 'Explore the Best Cars for Sale – Affordable, Reliable, Stylish', '[{\"value\":\"cars for sale\"},{\"value\":\"buy a car\"},{\"value\":\"affordable cars\"},{\"value\":\"reliable cars\"},{\"value\":\"luxury cars\"},{\"value\":\"car deals\"}]', 'Discover a wide range of cars to suit your needs. Explore affordable and stylish options, perfect for any budget. Find your dream car today!', 'index, follow', 'https://yourdomain.com/cars', 'https://yourdomain.com/cars-home', '<script type=\"application/ld+json\"> {   \"@context\": \"http://schema.org\",   \"@type\": \"WebSite\",   \"name\": \"CodeCanyon\",   \"url\": \"https://codecanyon.net\" } </script>', 'Explore the Best Cars for Sale – Affordable, Reliable, Stylish', 'Find your perfect car with our diverse collection of affordable, stylish, and reliable vehicles. Start your journey with us today!', '9-1733034680_car-hero-car.webp', '2025-03-22 16:04:31', '2025-03-22 16:04:31'),
(10, NULL, NULL, 'Hotel', 'hotel.home', 'Luxury Hotels & Resorts – Book Your Stay Today', '[{\"value\":\"luxury hotels\"},{\"value\":\"premium resorts\"},{\"value\":\"hotel booking\"},{\"value\":\"top-rated hotels\"},{\"value\":\"vacation stays\"},{\"value\":\"holiday accommodations\"}]', 'Discover luxury hotels and premium resorts for your next vacation. Book your stay today and experience top-notch hospitality, comfort, and convenience.', 'index, follow', 'https://yourdomain.com', 'https://yourdomain.com/hotel', '<script type=\"application/ld+json\"> {   \"@context\": \"http://schema.org\",   \"@type\": \"WebSite\",   \"name\": \"CodeCanyon\",   \"url\": \"https://codecanyon.net\" } </script>', 'Luxury Hotels & Resorts – Your Ultimate Destination', 'Experience world-class hospitality at our luxury hotels and resorts. Perfect for vacations, business trips, and special occasions.', '10-1733381111_hotel-hero-banner.jpg', '2025-03-22 16:04:31', '2025-03-22 16:04:31'),
(11, NULL, NULL, 'Restaurant', 'restaurant.home', 'Discover the Best Dining Experiences Atlas Laravel', '[{\"value\":\"restaurant\"},{\"value\":\"fine dining\"},{\"value\":\"best restaurants\"},{\"value\":\"local cuisine\"},{\"value\":\"food delivery\"},{\"value\":\"dining near me\"},{\"value\":\"[Your City] restaurants\"}]', 'Experience the finest dining at [Restaurant Name]. Discover a variety of delicious cuisines, cozy ambiance, and top-notch service. Reserve your table today!', 'index, follow', 'https://yourdomain.com', 'https://yourdomain.com/restaurant', '<script type=\"application/ld+json\"> {   \"@context\": \"http://schema.org\",   \"@type\": \"WebSite\",   \"name\": \"CodeCanyon\",   \"url\": \"https://codecanyon.net\" } </script>', 'Welcome to [Restaurant Name] – A Culinary Journey', 'Indulge in a unique dining experience at [Restaurant Name]. From exquisite dishes to unmatched ambiance, we promise a memorable visit.', '11-1734850976_rt-deal-bg.webp', '2025-03-22 16:04:31', '2025-03-22 16:04:31'),
(12, NULL, NULL, 'Pricing', 'pricing', 'Pricing | Atlas Directory Listing', '[{\"value\":\"pricing plans\"},{\"value\":\"affordable pricing\"},{\"value\":\"[Your App Name] pricing\"},{\"value\":\"flexible plans\"},{\"value\":\"cost-effective solutions\"},{\"value\":\"Atlas Laravel pricing\"},{\"value\":\"subscription plans\"}]', 'Discover our affordable and flexible pricing plans designed to meet your needs. Choose the best plan for your business and get started with Atlas Laravel today.', 'index, follow', 'https://yourdomain.com', 'https://yourdomain.com/pricing', '<script type=\"application/ld+json\"> {   \"@context\": \"http://schema.org\",   \"@type\": \"WebSite\",   \"name\": \"CodeCanyon\",   \"url\": \"https://codecanyon.net\" } </script>', 'Affordable Pricing Plans for Atlas Laravel', 'Explore our tailored pricing plans to find the perfect solution for your business. Start your journey with Atlas Laravel at the right price today.', '12-1730781649_6729a1d10cc54.webp', '2025-03-22 16:04:31', '2025-03-22 16:04:31'),
(13, NULL, NULL, 'Blogs', 'blogs', 'Explore Inspiring Blogs and Latest Trends', '[{\"value\":\"blog\"},{\"value\":\"latest blogs\"},{\"value\":\"trending blogs\"},{\"value\":\"lifestyle tips\"},{\"value\":\"blogging ideas\"},{\"value\":\"tutorials\"},{\"value\":\"guides\"},{\"value\":\"inspiration\"}]', 'Discover engaging and informative blogs covering a wide range of topics, from lifestyle tips and tutorials to the latest trends and ideas. Dive into a world of inspiration today!', 'index, follow', 'https://yourdomain.com', 'https://yourdomain.com/blog', '<script type=\"application/ld+json\"> {   \"@context\": \"http://schema.org\",   \"@type\": \"WebSite\",   \"name\": \"CodeCanyon\",   \"url\": \"https://codecanyon.net\" } </script>', 'Discover Inspiring Blogs and Ideas', 'Stay updated with the latest blog posts, lifestyle tips, and trending ideas. Explore content that informs and inspires, all in one place.', '13-1730781649_6729a1d10cc54.webp', '2025-03-22 16:04:31', '2025-03-22 16:04:31'),
(14, NULL, NULL, 'contact-us', 'contact-us', 'Contact Us - Get in Touch with Atlas Laravel', '[{\"value\":\"contact us\"},{\"value\":\"get in touch\"},{\"value\":\"customer support\"},{\"value\":\"[Your Company Name]\"},{\"value\":\"inquiries\"},{\"value\":\"reach us\"},{\"value\":\"contact form\"}]', 'Have questions or need support? Contact us today at Atlas Laravel. We\'re here to help with any inquiries you may have.', 'index, follow', 'https://www.yourdomain.com/', 'https://www.yourdomain.com/contact-us', '<script type=\"application/ld+json\"> {   \"@context\": \"http://schema.org\",   \"@type\": \"WebSite\",   \"name\": \"CodeCanyon\",   \"url\": \"https://codecanyon.net\" } </script>', 'Contact Us Atlas Laravel', 'Reach out to us today for any questions or support. Our team at [Your Company Name] is ready to assist you.', '14-1730781649_6729a1d10cc54.webp', '2025-03-22 16:04:31', '2025-03-22 16:04:31');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('W1URiKl68UfUaJOjC41CFm2pDTDaukpjJvgwAL4f', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:133.0) Gecko/20100101 Firefox/133.0', 'YTo3OntzOjY6Il90b2tlbiI7czo0MDoiUnF3QUYwWkJ3akY5NVdRUkZERXkxYlZYYkRLSmtWdFFLSnBqUElLQyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTc6Imh0dHA6Ly9sb2NhbGhvc3QvYXRsYXNfbGFyYXZlbC9hdGxhcy9hZG1pbi9zeXN0ZW0tc2V0dGluZyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6MTU6ImFjdGl2ZV9sYW5ndWFnZSI7czo3OiJlbmdsaXNoIjtzOjM6InVybCI7YTowOnt9czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6MTtzOjg6Imxhbmd1YWdlIjtzOjc6ImVuZ2xpc2giO30=', 1735812190),
('xmPV3u1Xqqllls9qC0moYUI5TgSrD9XZNzbot1X0', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:133.0) Gecko/20100101 Firefox/133.0', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiZDR0cmFGUlg0N0JlT1dhTHVwZkhUSnlCWHFjMFUwcGk2dVFYOWJ5UyI7czoxNToiYWN0aXZlX2xhbmd1YWdlIjtzOjc6ImVuZ2xpc2giO3M6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjM2OiJodHRwOi8vbG9jYWxob3N0L2F0bGFzX2xhcmF2ZWwvYXRsYXMiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1735809623);

-- --------------------------------------------------------

--
-- Table structure for table `subscriptions`
--

CREATE TABLE `subscriptions` (
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `package_id` bigint(20) NOT NULL,
  `paid_amount` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `payment_method` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `transaction_keys` longtext COLLATE utf8_unicode_ci,
  `auto_subscription` int(11) DEFAULT NULL,
  `status` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `expire_date` int(11) DEFAULT NULL,
  `date_added` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `subscriptions`
--

INSERT INTO `subscriptions` (`id`, `user_id`, `package_id`, `paid_amount`, `payment_method`, `transaction_keys`, `auto_subscription`, `status`, `expire_date`, `date_added`, `created_at`, `updated_at`) VALUES
(1, 2, 2, '200', 'paystack', NULL, 0, '1', 1788681888, 1757145888, '2025-09-06 01:04:48', '2025-09-06 01:04:48');

-- --------------------------------------------------------

--
-- Table structure for table `system_settings`
--

CREATE TABLE `system_settings` (
  `id` int(11) NOT NULL,
  `key` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value` longtext COLLATE utf8_unicode_ci,
  `created_at` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `updated_at` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `system_settings`
--

INSERT INTO `system_settings` (`id`, `key`, `value`, `created_at`, `updated_at`) VALUES
(2, 'system_title', 'ATLS Indonesia', '', '2025-09-07 01:56:10'),
(4, 'system_email', 'atlskontrasia@gmail.com', '', '2025-09-07 01:56:10'),
(5, 'address', 'Ruko Mitra Matraman Blok A1 No.28 Kec. Matraman, Kota Jakarta Timur, Daerah Khusus Ibukota Jakarta 13320', '', '2025-09-07 01:56:10'),
(6, 'phone', '085282705585', '', '2025-09-07 01:56:10'),
(8, 'country_id', '99', '', '2025-09-07 01:56:10'),
(10, 'currency_position', 'left', '', '2025-09-07 01:56:10'),
(11, 'language', 'english', '', '2025-09-07 01:56:10'),
(12, 'purchase_code', 'cdefde21-c9f6-47f5-b500-e1ea1856c539', '', '2025-09-07 01:56:10'),
(13, 'timezone', 'Asia/Jakarta', '', '2025-09-07 01:56:10'),
(14, 'paypal', '{\"status\":\"0\",\"mode\":\"test\",\"test_client_id\":\"xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx\",\"test_secret_key\":\"xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx\",\"live_client_id\":\"pk_live_xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx\",\"live_secret_key\":\"sk_live_xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx\"}', '', ''),
(15, 'stripe', '{\"status\":\"1\",\"mode\":\"test\",\"test_key\":\"pk_test_xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx\",\"test_secret_key\":\"sk_test_xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx\",\"public_live_key\":\"pk_live_xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx\",\"secret_live_key\":\"sk_live_xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx\"}', '', ''),
(18, 'system_currency', '48', '', '2025-09-07 01:56:10'),
(23, 'smtp_protocol', 'smtp_protocol', '', '2025-01-02 11:37:13'),
(24, 'smtp_host', 'smtp_host', '', '2025-01-02 11:37:13'),
(25, 'smtp_port', 'smtp_port', '', '2025-01-02 11:37:13'),
(26, 'smtp_user', 'csscreative7@gmail.com', '', ''),
(27, 'smtp_pass', 'wegqskvpctybwvqm', '', ''),
(28, 'facebook', 'https://www.facebook.com', '', '2024-11-05 11:27:11'),
(30, 'term_and_condition', '', '', ''),
(31, 'privacy_policy', '', '', ''),
(35, 'footer_text', '© Copyright by ATLSIndonesia. All rights reserved.', '', '2025-09-07 01:56:10'),
(36, 'footer_link', 'http://Jagosoftware.id', '', ''),
(37, 'version', '1.2', '', ''),
(40, 'map_access_token', 'pk.eyJ1IjoicG9sbG9idGVzdGluZ3I3IiwiYSI6ImNrZmwybHFmYjFrdHoyeXMybDdxNjgxaWYifQ.Gp_boLx9d0F6eM4ju6phiQ', '', '2025-09-07 01:56:10'),
(41, 'max_zoom_level', '1', '', '2025-09-07 01:56:10'),
(44, 'default_location', '40.702210, -74.015880', '', '2025-09-07 01:56:10'),
(50, 'smtp_crypto', 'smtp_crypto', '', '2025-01-02 11:37:13'),
(52, 'signup_email_verification', '0', '', '2025-09-07 01:56:10'),
(57, 'smtp_from_email', 'smtp from email', '', ''),
(59, 'twitter', 'https://twitter.com', '', '2024-11-05 11:27:11'),
(60, 'linkedin', 'https://linkedin.com', '', '2024-11-05 11:27:11'),
(61, 'smtp_username', 'smtp_username', '2024-07-11 09:52:11', '2025-01-02 11:37:13'),
(62, 'smtp_password', 'smtp_password', '2024-07-11 09:52:11', '2025-01-02 11:37:13'),
(63, 'system_currency', '48', '2024-07-11 09:52:11', '2025-09-07 01:56:10'),
(64, 'footer_copyright_text', 'ATLS, or Advanced Trauma Life Support, is a globally recognized training program designed to equip healthcare professionals with the knowledge and skills to manage trauma patients effectively, especially in critical situations', '', '2025-09-07 01:56:10'),
(65, 'keyword', 'atls', '', '2025-09-07 01:56:10'),
(66, 'website_description', 'ATLS, or Advanced Trauma Life Support, is a globally recognized training program designed to equip healthcare professionals with the knowledge and skills to manage trauma patients effectively, especially in critical situations', '', '2025-09-07 01:56:10'),
(67, 'author', 'Jago Software', '', '2025-09-07 01:56:10'),
(69, 'timezone', 'Asia/Jakarta', '2025-01-02 10:52:55', '2025-09-07 01:56:10'),
(70, 'system_name', 'ATLS Indonesia', '2025-01-02 11:18:18', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `team_members`
--

CREATE TABLE `team_members` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `position` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `social_links` json DEFAULT NULL,
  `order_num` int(11) NOT NULL DEFAULT '0',
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `team_members`
--

INSERT INTO `team_members` (`id`, `name`, `position`, `category`, `image`, `social_links`, `order_num`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'Brigjen TNI Purn dr. Boediono Soehendro, SpB, Subsp.BD(K)', 'Penasehat', 'Penasehat', 'team/team_1760409385_XgwKf8eSzX.png', '\"[]\"', 1, 1, '2025-10-13 19:36:25', '2025-10-13 19:36:25'),
(2, 'Prof Dr. dr. Andi Asadul Islam, SpBS(K)', 'Penasehat', 'Penasehat', 'team/team_1760409455_25AlJWisLh.png', '\"[]\"', 2, 1, '2025-10-13 19:37:35', '2025-10-13 19:37:35'),
(3, 'Dr. dr. Nur Rachmat Lubis, SpOT(K)', 'Penasehat', 'Penasehat', 'team/team_1760409519_bN0nzC97zo.png', '\"[]\"', 3, 1, '2025-10-13 19:38:39', '2025-10-13 19:38:39'),
(4, 'dr. I Nengah Kuning Atmadjaya, SpB(K)', 'Ketua', 'Pengurus Pusat', 'team/team_1760410621_D9VVtvD1zs.png', '\"[]\"', 4, 1, '2025-10-13 19:57:01', '2025-10-13 19:57:01'),
(5, 'Brigjen TNI Purn dr. Abdul Hamid Rochanan, SpB, Subsp.BD(K), MKes', 'Wakil Ketua', 'Pengurus Pusat', 'team/team_1760410767_STuGeF6Cpd.png', '\"[]\"', 5, 1, '2025-10-13 19:59:27', '2025-10-13 19:59:27'),
(6, 'Kolonel Ckm dr. Aditya Wicaksana, SpBS', 'Sekretaris', 'Pengurus Pusat', 'team/team_1760410819_ZbEMh0lMla.png', '\"[]\"', 6, 1, '2025-10-13 20:00:19', '2025-10-13 20:00:19'),
(7, 'dr. I Gede Suwedagatha, SpB(K)', 'Bendahara', 'Pengurus Pusat', 'team/team_1760410883_MujbPtfo4F.png', '\"[]\"', 7, 1, '2025-10-13 20:01:23', '2025-10-13 20:01:23'),
(8, 'dr. Nurhayat Usman, SpB, Subsp.BD(K)', 'Departemen Bidang Traumatologi dan ATI', 'Unsur Staf', 'team/team_1760411287_ZdpVb78kx9.png', '\"[]\"', 8, 1, '2025-10-13 20:08:07', '2025-10-13 20:08:07'),
(9, 'Prof. Dr. dr. Sri Maliawan, SpBS(K)', 'Departemen Bidang Traumatologi dan ATI', 'Unsur Staf', 'team/team_1760411432_ad12dB331s.png', '\"[]\"', 9, 1, '2025-10-13 20:10:33', '2025-10-13 20:10:33'),
(10, 'Prof Dr. dr. Irfannuddin, SpKO, MPd.Ked', 'Departemen Bidang Traumatologi dan ATI', 'Unsur Staf', 'team/team_1760411642_aIzoXmA5vj.png', '\"[]\"', 10, 1, '2025-10-13 20:14:02', '2025-10-13 20:14:02'),
(11, 'Kolonel Ckm dr. Bayu Dewanto, SpBS', 'Departemen Bidang Traumatologi dan ATI', 'Unsur Staf', 'team/team_1760411669_8A9F6LJMyz.png', '\"[]\"', 11, 1, '2025-10-13 20:14:29', '2025-10-13 20:14:29'),
(12, 'Dr. dr. IGB Adria Hariastawa, SpB, SpBA(K)', 'Departemen Diklat, R & D', 'Unsur Staf', 'team/team_1760412091_MqOWqvYcEr.png', '\"[]\"', 12, 1, '2025-10-13 20:21:31', '2025-10-13 20:21:31');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `verification_code` longtext COLLATE utf8mb4_unicode_ci,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_agent` int(11) DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(125) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(125) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bio` longtext COLLATE utf8mb4_unicode_ci,
  `linkedin` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twitter` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `facebook` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gender` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) NOT NULL,
  `specialty` text COLLATE utf8mb4_unicode_ci,
  `treatment_areas` text COLLATE utf8mb4_unicode_ci,
  `education` text COLLATE utf8mb4_unicode_ci,
  `experience` text COLLATE utf8mb4_unicode_ci,
  `membership` text COLLATE utf8mb4_unicode_ci,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `addressline` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `following_agent` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `verification_code`, `password`, `role`, `is_agent`, `image`, `type`, `phone`, `address`, `bio`, `linkedin`, `twitter`, `facebook`, `gender`, `status`, `specialty`, `treatment_areas`, `education`, `experience`, `membership`, `remember_token`, `addressline`, `following_agent`, `created_at`, `updated_at`) VALUES
(1, 'Kontrasia Indonesia', 'csscreative7@gmail.com', '2025-09-03 22:05:55', NULL, '$2y$12$f80S/VQ0Iw.pV0uf2TStmeN/avGTzBxMXFUL0u8YXHPfCMB5DgymC', '1', NULL, '1760406951.png', 'admin', '087880044738', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-09-03 22:05:55', '2025-10-30 16:04:44'),
(2, 'Surabaya', 'adminsurabaya@atlsindonesia.com', NULL, NULL, '$2y$12$f80S/VQ0Iw.pV0uf2TStmeN/avGTzBxMXFUL0u8YXHPfCMB5DgymC', '2', 1, '1758874341.png', 'agent', '6282139586024', '{\"country\":\"99\",\"city\":\"1\"}', '', '', '', '', 'male', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-10-30 07:02:14'),
(3, 'Bima Aprilia', 'bimaaprilia@gmail.com', NULL, NULL, '$2y$12$r9dXUIUrZ2VdH7rLhPncNe3JthTo.t4DO9qu9/8av8wguzfbazE/2', '2', NULL, NULL, 'customer', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-09-15 19:07:29', '2025-09-15 19:07:29'),
(6, 'Admin Malang', 'adminmalang@atlsindonesia.com', NULL, NULL, '$2y$12$L9SrnQmTHRVWgkAkh39CxOTCc/ZC4N18kpX3sPzXB4r.q/BZ4gx0W', '2', NULL, '1758874176.png', 'agent', '628123503029', '{\"country\":\"99\",\"city\":\"2\"}', NULL, '', '', '', 'male', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(7, 'Admin Semarang', 'adminsemarang@atlsindonesia.com', NULL, NULL, '$2y$12$7vsEr76KS9IXtuRufT6OleMc4eLeQbMij98734wK6JPFflrAUkGNy', '2', NULL, '1758874490.png', 'agent', '628156646479', '{\"country\":\"99\",\"city\":\"3\"}', NULL, '', '', '', 'male', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10, 'Daud Habinsaran Gultom', 'daudgultom5@gmail.com', NULL, NULL, '$2y$12$G02RXtMwK12WylRIfAStSOc0K0fTgVxdccokLEsuy.xlGNQfo2GA6', '2', NULL, NULL, 'customer', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-09-26 02:52:36', '2025-09-26 02:52:36'),
(11, 'Admin Yogyakarta', 'adminyogyakarta@atlsindonesia.com', NULL, NULL, '$2y$12$CLrbGXaE6zOTOr7FGGHxKOfMaHn7YMAfTSMHwcd8.Aq5zDAwn26mW', '2', NULL, '1758942010.png', 'agent', '6287839136163', '{\"country\":\"99\",\"city\":\"4\"}', NULL, '', '', '', 'male', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(12, 'Admin Surakarta', 'adminsurakarta@atlsindonesia.com', NULL, NULL, '$2y$12$KyFdoCl0u12ZCjS/Rzt/XOafGI6bVwOiOEj6gr6YEaUWdBaVgjmKG', '2', NULL, '1758942064.png', 'agent', '628156717500', '{\"country\":\"99\",\"city\":\"5\"}', NULL, '', '', '', 'male', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(13, 'Admin Jakarta', 'adminjakarta@atlsindonesia.com', NULL, NULL, '$2y$12$c.4bVjByfvJwUKwlJw1cNu8pnpWXU.zgx6rgxkO6bLO111.PCYNQa', '2', NULL, '1758942188.png', 'agent', '6281281913274', '{\"country\":\"99\",\"city\":\"6\"}', NULL, '', '', '', 'male', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(14, 'Admin Bandung', 'adminbandung@atlsindonesia.com', NULL, NULL, '$2y$12$ShgTBXgm14oD2PquErAWx.DTzRxV2pZ1tvXiMgisLpY/p9ImfNvjG', '2', NULL, '1758943011.png', 'agent', '6281222070330', '{\"country\":\"99\",\"city\":\"7\"}', NULL, '', '', '', 'male', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(15, 'dr. Ika Dewi Ristiyati', 'dewiristiyatiika@gmail.com', NULL, NULL, '$2y$12$tgn/m/V6BkaBvyYePQMRHeP9eYrB4O53.M/z2jANDKhEUHvcQVAv.', '2', NULL, NULL, 'customer', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-09-27 16:21:47', '2025-09-27 16:21:47'),
(16, 'Jhon Erikson Tambunan', 'muhammadfurqon1022014@gmail.com', NULL, NULL, '$2y$12$aWs4MiQ/DRoT8ZeOjFKZJea6.ADk.b0D0lWik38avNJR9lRaRDkB2', '2', NULL, NULL, 'customer', '+6285964331055', NULL, '', '', '', '', 'male', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-09-28 18:10:43', '2025-09-28 18:13:16'),
(17, 'Admin Bali', 'adminbali@atlsindonesia.com', NULL, NULL, '$2y$12$iJ27vd6fZMoKRrfDJc3Cp.cwKzllcgsnzY6SDVMe4G0jiSlLWrPM6', '2', NULL, '1759118964.png', 'agent', '628123989813', '{\"country\":\"99\",\"city\":\"8\"}', NULL, '', '', '', 'male', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(18, 'Admin NTB/NTT', 'adminlombok@atlsindonesia.com', NULL, NULL, '$2y$12$3fNetcu8WP2M7N1WqrDqpOZS9C8LXGsDyzok/CRinMPn3kI8UryGW', '2', NULL, '1759119836.png', 'agent', '6281339197730', '{\"country\":\"99\",\"city\":\"9\"}', NULL, '', '', '', 'male', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(19, 'Admin Lampung', 'adminlampung@atlsindonesia.com', NULL, NULL, '$2y$12$m6HbAXT0EZbqq23C1yZFBeADvAuusQ.fjOM7GPZG4JXqC7Ib/Tdeu', '2', NULL, '1759120060.png', 'agent', '6282178197344', '{\"country\":\"99\",\"city\":\"10\"}', NULL, '', '', '', 'male', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(20, 'Zahra', 'zahra.shafanisa01@yahoo.com', NULL, NULL, '$2y$12$pOlPUIMZ5MwjRreVoeWkMe8dES0vYDAJmSTd6HJIeY6xbMI7KEwVq', '2', NULL, NULL, 'customer', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-09-29 07:21:03', '2025-09-29 07:21:03'),
(21, 'Arya Adi Bramasta', 'aryabrmst@icloud.com', NULL, NULL, '$2y$12$1q8ZNMz1a1lU/vltU1Y2gOPqAK7b1lfYxgssNCrurVmwiK8TUVoMO', '2', NULL, NULL, 'customer', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-10-02 17:29:40', '2025-10-02 17:29:40'),
(22, 'I Gusti Bagus Aditya Adi Pranajaya', 'adityaadipranajaya1122@gmail.com', NULL, NULL, '$2y$12$w.8xIDjA8OJm/WQbIhVOsuhtLuppTMC9fQnry.zhpXt/rDxGRdwau', '2', NULL, NULL, 'customer', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-10-03 22:19:48', '2025-10-03 22:19:48'),
(23, 'Muhammad Bayu Wirabuana', 'bayu.wirabuana13@gmail.com', NULL, NULL, '$2y$12$GJu8DsudnPHDgAhdxyg8OudZhO9YGxyofmsgmp6gyz/g2DzJ08W3e', '2', NULL, NULL, 'customer', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-10-04 14:04:01', '2025-10-04 14:04:01'),
(24, 'Isnani Nur Hidayah', 'isnani.md@gmail.com', NULL, NULL, '$2y$12$2qN337W.UalI4ScplIndCeTaqAEHFCty4fFQKS2zripoHenHf9Lbm', '2', NULL, NULL, 'customer', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-10-10 03:52:49', '2025-10-10 03:52:49'),
(25, 'Widaningrum Ayu Hapsari', 'widahapsa@gmail.com', NULL, NULL, '$2y$12$oSmYEkE6tT73vgs0BuosguATIxmVPQ4PcPNYMv.uqGiRZFr25/60q', '2', NULL, NULL, 'customer', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-10-16 06:30:20', '2025-10-16 06:30:20'),
(26, 'ni putu ayu indriyani', 'ayuindriyani237@gmail.com', NULL, NULL, '$2y$12$UHdcuw1HGvCSPeZuLaRBGOEl0TkvpBcuNOKiU3hIv.d01HEfPR.5q', '2', NULL, NULL, 'customer', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-10-17 01:05:14', '2025-10-17 01:05:14'),
(27, 'Mohamad Taufik Ramadhan', 'taufikrramadhan@gmail.com', NULL, NULL, '$2y$12$mD9WM.wxphIoE4.tFtCXce3RtHYRJEKy1PVqryLFmaEBmmghqgeFq', '2', NULL, NULL, 'customer', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-10-18 00:52:37', '2025-10-18 00:52:37'),
(28, 'Tommy Gunarko', 'tommy.gunarko20@gmail.com', NULL, NULL, '$2y$12$L6ye6a283lxUYQ9of2TQA.mjxSP8WCwHM2fbRlXRaScCE4M.MHkvW', '2', NULL, '1761542578.jpeg', 'customer', '+6281234067630', '{\"country\":\"99\",\"city\":\"6\"}', '', '', '', '', 'male', 1, NULL, NULL, NULL, NULL, NULL, NULL, 'Jl Banjarsari III no.14A Cilandak Jakarta Selatan', NULL, '2025-10-26 22:21:58', '2025-10-26 22:32:51');

-- --------------------------------------------------------

--
-- Table structure for table `wishlists`
--

CREATE TABLE `wishlists` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `listing_id` int(11) NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure for view `active_galleries_view`
--
DROP TABLE IF EXISTS `active_galleries_view`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `active_galleries_view`  AS SELECT `g`.`id` AS `id`, `g`.`title` AS `title`, `g`.`slug` AS `slug`, `g`.`description` AS `description`, `g`.`image` AS `image`, `g`.`category` AS `category`, `gc`.`name` AS `category_name`, `gc`.`color` AS `category_color`, `g`.`is_featured` AS `is_featured`, `g`.`sort_order` AS `sort_order`, `g`.`created_at` AS `created_at`, `g`.`updated_at` AS `updated_at` FROM (`galleries` `g` left join `gallery_categories` `gc` on((`g`.`category` = `gc`.`slug`))) WHERE (`g`.`status` = 'active') ORDER BY `g`.`sort_order` ASC, `g`.`created_at` DESC ;

-- --------------------------------------------------------

--
-- Structure for view `featured_galleries_view`
--
DROP TABLE IF EXISTS `featured_galleries_view`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `featured_galleries_view`  AS SELECT `g`.`id` AS `id`, `g`.`title` AS `title`, `g`.`slug` AS `slug`, `g`.`image` AS `image`, `g`.`category` AS `category`, `gc`.`name` AS `category_name`, `g`.`sort_order` AS `sort_order` FROM (`galleries` `g` left join `gallery_categories` `gc` on((`g`.`category` = `gc`.`slug`))) WHERE ((`g`.`status` = 'active') AND (`g`.`is_featured` = 1)) ORDER BY `g`.`sort_order` ASC ;

-- --------------------------------------------------------

--
-- Structure for view `package_registrations`
--
DROP TABLE IF EXISTS `package_registrations`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `package_registrations`  AS SELECT `p`.`id` AS `package_id`, `p`.`title` AS `package_title`, `p`.`quota` AS `quota`, count(`r`.`id`) AS `registered_count`, (`p`.`quota` - count(`r`.`id`)) AS `remaining_quota`, round(((count(`r`.`id`) / `p`.`quota`) * 100),2) AS `fill_percentage`, count((case when (`r`.`payment_status` = 'paid') then 1 end)) AS `paid_count`, count((case when (`r`.`payment_status` = 'pending') then 1 end)) AS `pending_count` FROM (`packages` `p` left join `registrations` `r` on((`p`.`id` = `r`.`package_id`))) GROUP BY `p`.`id`, `p`.`title`, `p`.`quota` ;

-- --------------------------------------------------------

--
-- Structure for view `package_stats`
--
DROP TABLE IF EXISTS `package_stats`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `package_stats`  AS SELECT `p`.`user_id` AS `user_id`, `u`.`name` AS `agent_name`, count(`p`.`id`) AS `total_packages`, count((case when (`p`.`status` = 'active') then 1 end)) AS `active_packages`, count(`r`.`id`) AS `total_registrations`, count((case when (`r`.`payment_status` = 'paid') then 1 end)) AS `paid_registrations`, coalesce(sum((case when (`r`.`payment_status` = 'paid') then `r`.`amount` end)),0) AS `total_revenue` FROM ((`packages` `p` left join `users` `u` on((`p`.`user_id` = `u`.`id`))) left join `registrations` `r` on((`p`.`id` = `r`.`package_id`))) GROUP BY `p`.`user_id`, `u`.`name` ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `addons`
--
ALTER TABLE `addons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `amenities`
--
ALTER TABLE `amenities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `appointments`
--
ALTER TABLE `appointments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `beauty_listings`
--
ALTER TABLE `beauty_listings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blog_categories`
--
ALTER TABLE `blog_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `car_listings`
--
ALTER TABLE `car_listings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cities`
--
ALTER TABLE `cities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `claimed_listings`
--
ALTER TABLE `claimed_listings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `countries_code_unique` (`code`);

--
-- Indexes for table `currencies`
--
ALTER TABLE `currencies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `frontend_settings`
--
ALTER TABLE `frontend_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `galleries`
--
ALTER TABLE `galleries`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `galleries_slug_unique` (`slug`),
  ADD KEY `galleries_status_index` (`status`),
  ADD KEY `galleries_category_index` (`category`),
  ADD KEY `galleries_is_featured_index` (`is_featured`),
  ADD KEY `galleries_sort_order_index` (`sort_order`),
  ADD KEY `galleries_created_by_index` (`created_by`),
  ADD KEY `galleries_created_at_index` (`created_at`),
  ADD KEY `galleries_status_featured_index` (`status`,`is_featured`),
  ADD KEY `galleries_category_status_index` (`category`,`status`),
  ADD KEY `galleries_sort_status_index` (`sort_order`,`status`);
ALTER TABLE `galleries` ADD FULLTEXT KEY `title` (`title`,`description`);

--
-- Indexes for table `gallery_categories`
--
ALTER TABLE `gallery_categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `gallery_categories_slug_unique` (`slug`),
  ADD KEY `gallery_categories_status_index` (`status`);

--
-- Indexes for table `gallery_tags`
--
ALTER TABLE `gallery_tags`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `gallery_tags_slug_unique` (`slug`),
  ADD KEY `gallery_tags_usage_count_index` (`usage_count`);

--
-- Indexes for table `gallery_tag_pivot`
--
ALTER TABLE `gallery_tag_pivot`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `gallery_tag_unique` (`gallery_id`,`tag_id`),
  ADD KEY `gallery_tag_pivot_gallery_id_index` (`gallery_id`),
  ADD KEY `gallery_tag_pivot_tag_id_index` (`tag_id`);

--
-- Indexes for table `home_page_settings`
--
ALTER TABLE `home_page_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hotels`
--
ALTER TABLE `hotels`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hotel_listings`
--
ALTER TABLE `hotel_listings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `listing__features`
--
ALTER TABLE `listing__features`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `listing__specifications`
--
ALTER TABLE `listing__specifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`message_id`);

--
-- Indexes for table `message_thread`
--
ALTER TABLE `message_thread`
  ADD PRIMARY KEY (`message_thread_id`),
  ADD KEY `message_thread_sender_foreign` (`sender`),
  ADD KEY `message_thread_receiver_foreign` (`receiver`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `nearby_location`
--
ALTER TABLE `nearby_location`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `newsletters`
--
ALTER TABLE `newsletters`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `newsletter_subscribers`
--
ALTER TABLE `newsletter_subscribers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `otp_verifications`
--
ALTER TABLE `otp_verifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `packages`
--
ALTER TABLE `packages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `packages_user_id_foreign` (`user_id`),
  ADD KEY `packages_user_id_status_index` (`user_id`,`status`),
  ADD KEY `packages_status_index` (`status`),
  ADD KEY `packages_start_date_index` (`start_date`),
  ADD KEY `packages_end_date_index` (`end_date`),
  ADD KEY `packages_title_index` (`title`),
  ADD KEY `packages_price_index` (`price`),
  ADD KEY `packages_location_index` (`location`),
  ADD KEY `packages_region_id_status_index` (`region_id`,`status`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `payment_geteways`
--
ALTER TABLE `payment_geteways`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pricings`
--
ALTER TABLE `pricings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `real_estate_listings`
--
ALTER TABLE `real_estate_listings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `regions`
--
ALTER TABLE `regions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `slug` (`slug`),
  ADD UNIQUE KEY `regions_slug_unique` (`slug`),
  ADD KEY `regions_order_num_index` (`order_num`),
  ADD KEY `regions_is_active_index` (`is_active`),
  ADD KEY `regions_name_index` (`name`),
  ADD KEY `regions_created_at_index` (`created_at`);

--
-- Indexes for table `region_pages`
--
ALTER TABLE `region_pages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `region_pages_region_id_foreign` (`region_id`),
  ADD KEY `region_pages_slug_index` (`slug`),
  ADD KEY `region_pages_title_index` (`title`);

--
-- Indexes for table `registrations`
--
ALTER TABLE `registrations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `registrations_package_id_foreign` (`package_id`),
  ADD KEY `registrations_user_id_foreign` (`user_id`),
  ADD KEY `registrations_package_id_payment_status_index` (`package_id`,`payment_status`),
  ADD KEY `registrations_payment_status_index` (`payment_status`),
  ADD KEY `registrations_registration_date_index` (`registration_date`),
  ADD KEY `registrations_email_index` (`email`),
  ADD KEY `registrations_name_index` (`name`),
  ADD KEY `registrations_phone_index` (`phone`);

--
-- Indexes for table `reported_listings`
--
ALTER TABLE `reported_listings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `restaurants`
--
ALTER TABLE `restaurants`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `restaurant_listings`
--
ALTER TABLE `restaurant_listings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rooms`
--
ALTER TABLE `rooms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `seo_fields`
--
ALTER TABLE `seo_fields`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `subscriptions`
--
ALTER TABLE `subscriptions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `system_settings`
--
ALTER TABLE `system_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `team_members`
--
ALTER TABLE `team_members`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `wishlists`
--
ALTER TABLE `wishlists`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `addons`
--
ALTER TABLE `addons`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `amenities`
--
ALTER TABLE `amenities`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `appointments`
--
ALTER TABLE `appointments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `beauty_listings`
--
ALTER TABLE `beauty_listings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `blog_categories`
--
ALTER TABLE `blog_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `car_listings`
--
ALTER TABLE `car_listings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cities`
--
ALTER TABLE `cities`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `claimed_listings`
--
ALTER TABLE `claimed_listings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` int(21) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=242;

--
-- AUTO_INCREMENT for table `currencies`
--
ALTER TABLE `currencies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=113;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `frontend_settings`
--
ALTER TABLE `frontend_settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `galleries`
--
ALTER TABLE `galleries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `gallery_categories`
--
ALTER TABLE `gallery_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `gallery_tags`
--
ALTER TABLE `gallery_tags`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `gallery_tag_pivot`
--
ALTER TABLE `gallery_tag_pivot`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `home_page_settings`
--
ALTER TABLE `home_page_settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `hotels`
--
ALTER TABLE `hotels`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `hotel_listings`
--
ALTER TABLE `hotel_listings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `languages`
--
ALTER TABLE `languages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3971;

--
-- AUTO_INCREMENT for table `listing__features`
--
ALTER TABLE `listing__features`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `listing__specifications`
--
ALTER TABLE `listing__specifications`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `message_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `message_thread`
--
ALTER TABLE `message_thread`
  MODIFY `message_thread_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `nearby_location`
--
ALTER TABLE `nearby_location`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `newsletters`
--
ALTER TABLE `newsletters`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `newsletter_subscribers`
--
ALTER TABLE `newsletter_subscribers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `otp_verifications`
--
ALTER TABLE `otp_verifications`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `packages`
--
ALTER TABLE `packages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `payment_geteways`
--
ALTER TABLE `payment_geteways`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `pricings`
--
ALTER TABLE `pricings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `real_estate_listings`
--
ALTER TABLE `real_estate_listings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `regions`
--
ALTER TABLE `regions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `region_pages`
--
ALTER TABLE `region_pages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `registrations`
--
ALTER TABLE `registrations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `reported_listings`
--
ALTER TABLE `reported_listings`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `restaurants`
--
ALTER TABLE `restaurants`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `restaurant_listings`
--
ALTER TABLE `restaurant_listings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `rooms`
--
ALTER TABLE `rooms`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `seo_fields`
--
ALTER TABLE `seo_fields`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `subscriptions`
--
ALTER TABLE `subscriptions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `system_settings`
--
ALTER TABLE `system_settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;

--
-- AUTO_INCREMENT for table `team_members`
--
ALTER TABLE `team_members`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `wishlists`
--
ALTER TABLE `wishlists`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `gallery_tag_pivot`
--
ALTER TABLE `gallery_tag_pivot`
  ADD CONSTRAINT `gallery_tag_pivot_gallery_id_foreign` FOREIGN KEY (`gallery_id`) REFERENCES `galleries` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `gallery_tag_pivot_tag_id_foreign` FOREIGN KEY (`tag_id`) REFERENCES `gallery_tags` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `packages`
--
ALTER TABLE `packages`
  ADD CONSTRAINT `packages_region_id_foreign` FOREIGN KEY (`region_id`) REFERENCES `regions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `packages_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `region_pages`
--
ALTER TABLE `region_pages`
  ADD CONSTRAINT `region_pages_region_id_foreign` FOREIGN KEY (`region_id`) REFERENCES `regions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `registrations`
--
ALTER TABLE `registrations`
  ADD CONSTRAINT `registrations_package_id_foreign` FOREIGN KEY (`package_id`) REFERENCES `packages` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `registrations_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
