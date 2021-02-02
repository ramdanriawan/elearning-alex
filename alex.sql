-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 02, 2021 at 06:55 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `alex`
--

-- --------------------------------------------------------

--
-- Table structure for table `field_tambahan`
--

CREATE TABLE `field_tambahan` (
  `id` varchar(255) NOT NULL,
  `nama` varchar(255) DEFAULT NULL,
  `value` longtext DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `field_tambahan`
--

INSERT INTO `field_tambahan` (`id`, `nama`, `value`) VALUES
('check-urgent-info', 'Check Urgent Info', '{\"info\":false,\"last_check\":\"2021-01-06 13:22:15\"}'),
('history-mengerjakan-1-1', 'History pengerjaan tugas', '{\"mulai\":\"2021-02-02 23:46:36\",\"uri_string\":\"tugas\\/kerjakan\\/1\",\"valid_route\":[\"\\/tugas\\/kerjakan\",\"\\/tugas\\/finish\",\"\\/tugas\\/submit_essay\",\"\\/tugas\\/submit_upload\"],\"tugas\":{\"id\":\"1\",\"mapel_id\":\"1\",\"pengajar_id\":\"1\",\"type_id\":\"1\",\"judul\":\"TES\",\"durasi\":null,\"info\":\"<p>UPLOAD TUGAS<\\/p>\\r\\n\",\"aktif\":\"1\",\"tgl_buat\":\"2021-01-06 13:40:10\",\"tampil_siswa\":\"1\"},\"unix_id\":\"c10736a3d032fd4246b2ae1431de267e825888\",\"ip\":\"::1\",\"agent_string\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64; rv:82.0) Gecko\\/20100101 Firefox\\/82.0\",\"file_name\":\"c10736a3d032fd4246b2ae1431de267e825888.docx\",\"tgl_submit\":\"2021-02-02 23:46:49\",\"nilai\":\"100\"}'),
('history-mengerjakan-1-2', 'History pengerjaan tugas', '{\"mulai\":\"2021-02-03 00:10:39\",\"selesai\":\"2021-02-03 00:30:39\",\"uri_string\":\"tugas\\/kerjakan\\/2\",\"valid_route\":[\"\\/tugas\\/kerjakan\",\"\\/tugas\\/finish\",\"\\/tugas\\/submit_essay\",\"\\/tugas\\/submit_upload\"],\"tugas\":{\"id\":\"2\",\"mapel_id\":\"1\",\"pengajar_id\":\"1\",\"type_id\":\"2\",\"judul\":\"TUGAS ESSAY\",\"durasi\":\"20\",\"info\":\"<p>TUGAS ESAY<\\/p>\\r\\n\",\"aktif\":\"1\",\"tgl_buat\":\"2021-01-06 13:40:28\",\"tampil_siswa\":\"1\"},\"unix_id\":\"10b4950f1941b963b7d6b9a5302140ea510836\",\"ip\":\"::1\",\"agent_string\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64; rv:82.0) Gecko\\/20100101 Firefox\\/82.0\",\"pertanyaan_id\":[\"1\"],\"jawaban\":{\"1\":\"\"},\"tgl_submit\":\"2021-02-03 00:10:58\",\"total_waktu\":\"19 detik\"}'),
('history-mengerjakan-1-3', 'History pengerjaan tugas', '{\"mulai\":\"2021-02-03 00:11:15\",\"selesai\":\"2021-02-03 00:31:15\",\"uri_string\":\"tugas\\/kerjakan\\/3\",\"valid_route\":[\"\\/tugas\\/kerjakan\",\"\\/tugas\\/finish\",\"\\/tugas\\/submit_essay\",\"\\/tugas\\/submit_upload\"],\"tugas\":{\"id\":\"3\",\"mapel_id\":\"1\",\"pengajar_id\":\"1\",\"type_id\":\"3\",\"judul\":\"TUGAS PILGAN\",\"durasi\":\"20\",\"info\":\"<p>TUGAS INI PILIHAN GANDA<\\/p>\\r\\n\",\"aktif\":\"1\",\"tgl_buat\":\"2021-01-06 13:41:02\",\"tampil_siswa\":\"1\"},\"unix_id\":\"42b47b9bef100dce99fa88010bc02f6c82960\",\"ip\":\"::1\",\"agent_string\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64; rv:82.0) Gecko\\/20100101 Firefox\\/82.0\",\"pertanyaan_id\":[\"2\"],\"jawaban\":{\"2\":\"1\"},\"nilai\":100,\"jml_benar\":1,\"jml_salah\":0,\"tgl_submit\":\"2021-02-03 00:11:20\",\"total_waktu\":\"5 detik\"}');

-- --------------------------------------------------------

--
-- Table structure for table `kelas`
--

CREATE TABLE `kelas` (
  `id` int(11) NOT NULL,
  `nama` varchar(45) NOT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `urutan` int(11) NOT NULL,
  `aktif` tinyint(1) NOT NULL DEFAULT 1 COMMENT '1=aktif 0=tidak'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `kelas`
--

INSERT INTO `kelas` (`id`, `nama`, `parent_id`, `urutan`, `aktif`) VALUES
(1, 'KELAS X', NULL, 1, 1),
(2, 'KELAS X - A', 1, 2, 1),
(3, 'KELAS X - B', 1, 3, 1),
(4, 'KELAS X - C', 1, 4, 1),
(5, 'KELAS X - D', 1, 5, 1),
(6, 'KELAS XI', NULL, 6, 1),
(7, 'KELAS XI - AZ', 6, 7, 1),
(8, 'KELAS XI - B', 6, 8, 1),
(9, 'KELAS XI - C', 6, 9, 1),
(10, 'KELAS XI - D', 6, 10, 1),
(11, 'KELAS XII', NULL, 11, 1),
(12, 'KELAS XII - A', 11, 12, 1),
(13, 'KELAS XII - B', 11, 13, 1),
(14, 'KELAS XII - C', 11, 14, 1),
(15, 'KELAS XII - D', 11, 15, 1);

-- --------------------------------------------------------

--
-- Table structure for table `kelas_siswa`
--

CREATE TABLE `kelas_siswa` (
  `id` int(11) NOT NULL,
  `kelas_id` int(11) NOT NULL,
  `siswa_id` int(11) NOT NULL,
  `aktif` tinyint(1) NOT NULL COMMENT '0 jika bukan, 1 jika ya'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `kelas_siswa`
--

INSERT INTO `kelas_siswa` (`id`, `kelas_id`, `siswa_id`, `aktif`) VALUES
(1, 2, 1, 1),
(2, 2, 2, 1),
(3, 4, 3, 1);

-- --------------------------------------------------------

--
-- Table structure for table `komentar`
--

CREATE TABLE `komentar` (
  `id` int(11) NOT NULL,
  `login_id` int(11) NOT NULL,
  `materi_id` int(11) NOT NULL,
  `tampil` tinyint(1) NOT NULL DEFAULT 1 COMMENT '0=tidak,1=tampil',
  `konten` text DEFAULT NULL,
  `tgl_posting` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `komentar`
--

INSERT INTO `komentar` (`id`, `login_id`, `materi_id`, `tampil`, `konten`, `tgl_posting`) VALUES
(1, 2, 1, 1, '<p>tes</p>\r\n', '2021-01-06 20:11:02');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `siswa_id` int(11) DEFAULT NULL,
  `pengajar_id` int(11) DEFAULT NULL,
  `is_admin` tinyint(1) NOT NULL COMMENT '0=tidak,1=ya',
  `reset_kode` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`id`, `username`, `password`, `siswa_id`, `pengajar_id`, `is_admin`, `reset_kode`) VALUES
(1, 'jamstech@qmail.id', '0192023a7bbd73250516f069df18b500', NULL, 1, 1, NULL),
(2, '1@gmail.com', '695ebed04dd1f67f67eb3f853f3be728', 1, NULL, 0, NULL),
(3, 'guru@gmail.com', 'c02850c7afe8288e4d2f28a19959d546', NULL, 2, 0, NULL),
(4, 'ramdanriawan3@gmail.com', 'a84b97b66143e25e5525587c6dcead4e', 2, NULL, 0, NULL),
(5, 'abcde@gmail.com', 'ab56b4d92b40713acc5af89985d4b786', 3, NULL, 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `login_log`
--

CREATE TABLE `login_log` (
  `id` int(11) NOT NULL,
  `login_id` int(11) NOT NULL,
  `lasttime` datetime NOT NULL,
  `agent` text NOT NULL,
  `last_activity` int(10) UNSIGNED DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `login_log`
--

INSERT INTO `login_log` (`id`, `login_id`, `lasttime`, `agent`, `last_activity`) VALUES
(1, 1, '2021-01-03 20:45:43', '{\"is_mobile\":0,\"browser\":\"Chrome 87.0.4280.88\",\"platform\":\"Unknown Windows OS\",\"agent_string\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/87.0.4280.88 Safari\\/537.36\",\"ip\":\"::1\"}', 1609681940),
(2, 1, '2021-01-03 20:54:33', '{\"is_mobile\":0,\"browser\":\"Chrome 87.0.4280.88\",\"platform\":\"Unknown Windows OS\",\"agent_string\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/87.0.4280.88 Safari\\/537.36 Edg\\/87.0.664.66\",\"ip\":\"::1\"}', 1609681969),
(3, 1, '2021-01-03 20:55:00', '{\"is_mobile\":0,\"browser\":\"Chrome 87.0.4280.88\",\"platform\":\"Unknown Windows OS\",\"agent_string\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/87.0.4280.88 Safari\\/537.36\",\"ip\":\"::1\"}', 1609682343),
(4, 1, '2021-01-03 21:01:57', '{\"is_mobile\":0,\"browser\":\"Chrome 87.0.4280.88\",\"platform\":\"Unknown Windows OS\",\"agent_string\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/87.0.4280.88 Safari\\/537.36\",\"ip\":\"::1\"}', 1609682558),
(5, 1, '2021-01-03 21:03:50', '{\"is_mobile\":1,\"browser\":\"Chrome 87.0.4280.88\",\"platform\":\"Linux\",\"agent_string\":\"Mozilla\\/5.0 (Linux; Android 6.0; Nexus 5 Build\\/MRA58N) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/87.0.4280.88 Mobile Safari\\/537.36\",\"ip\":\"::1\"}', 1609682836),
(6, 1, '2021-01-03 21:07:50', '{\"is_mobile\":0,\"browser\":\"Chrome 87.0.4280.88\",\"platform\":\"Unknown Windows OS\",\"agent_string\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/87.0.4280.88 Safari\\/537.36\",\"ip\":\"::1\"}', 1609683132),
(7, 1, '2021-01-03 21:14:15', '{\"is_mobile\":1,\"browser\":\"Chrome 87.0.4280.88\",\"platform\":\"Linux\",\"agent_string\":\"Mozilla\\/5.0 (Linux; Android 6.0; Nexus 5 Build\\/MRA58N) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/87.0.4280.88 Mobile Safari\\/537.36\",\"ip\":\"::1\"}', 1609684315),
(8, 1, '2021-01-03 21:38:39', '{\"is_mobile\":0,\"browser\":\"Chrome 87.0.4280.88\",\"platform\":\"Unknown Windows OS\",\"agent_string\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/87.0.4280.88 Safari\\/537.36\",\"ip\":\"::1\"}', 1609709229),
(9, 1, '2021-01-04 04:27:17', '{\"is_mobile\":0,\"browser\":\"Chrome 87.0.4280.88\",\"platform\":\"Unknown Windows OS\",\"agent_string\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/87.0.4280.88 Safari\\/537.36\",\"ip\":\"::1\"}', 1609709373),
(10, 1, '2021-01-04 04:33:48', '{\"is_mobile\":0,\"browser\":\"Chrome 87.0.4280.88\",\"platform\":\"Unknown Windows OS\",\"agent_string\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/87.0.4280.88 Safari\\/537.36\",\"ip\":\"::1\"}', 1609709878),
(11, 1, '2021-01-06 09:28:45', '{\"is_mobile\":0,\"browser\":\"Chrome 87.0.4280.88\",\"platform\":\"Unknown Windows OS\",\"agent_string\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/87.0.4280.88 Safari\\/537.36\",\"ip\":\"::1\"}', 1609901934),
(12, 1, '2021-01-06 10:13:31', '{\"is_mobile\":0,\"browser\":\"Chrome 87.0.4280.88\",\"platform\":\"Unknown Windows OS\",\"agent_string\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/87.0.4280.88 Safari\\/537.36\",\"ip\":\"::1\"}', 1609903073),
(13, 1, '2021-01-06 13:11:42', '{\"is_mobile\":0,\"browser\":\"Chrome 87.0.4280.88\",\"platform\":\"Unknown Windows OS\",\"agent_string\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/87.0.4280.88 Safari\\/537.36\",\"ip\":\"::1\"}', 1609913597),
(14, 1, '2021-01-06 13:13:25', '{\"is_mobile\":0,\"browser\":\"Chrome 87.0.4280.88\",\"platform\":\"Unknown Windows OS\",\"agent_string\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/87.0.4280.88 Safari\\/537.36\",\"ip\":\"::1\"}', 1609913611),
(15, 2, '2021-01-06 13:34:08', '{\"is_mobile\":0,\"browser\":\"Chrome 87.0.4280.88\",\"platform\":\"Unknown Windows OS\",\"agent_string\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/87.0.4280.88 Safari\\/537.36\",\"ip\":\"::1\"}', 1609915010),
(16, 1, '2021-01-06 13:39:17', '{\"is_mobile\":0,\"browser\":\"Chrome 87.0.4280.88\",\"platform\":\"Unknown Windows OS\",\"agent_string\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/87.0.4280.88 Safari\\/537.36\",\"ip\":\"::1\"}', 1609915255),
(17, 2, '2021-01-06 13:43:00', '{\"is_mobile\":0,\"browser\":\"Chrome 87.0.4280.88\",\"platform\":\"Unknown Windows OS\",\"agent_string\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/87.0.4280.88 Safari\\/537.36\",\"ip\":\"::1\"}', 1609915373),
(18, 1, '2021-01-06 13:45:00', '{\"is_mobile\":0,\"browser\":\"Chrome 87.0.4280.88\",\"platform\":\"Unknown Windows OS\",\"agent_string\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/87.0.4280.88 Safari\\/537.36\",\"ip\":\"::1\"}', 1609915405),
(19, 2, '2021-01-06 13:45:30', '{\"is_mobile\":0,\"browser\":\"Chrome 87.0.4280.88\",\"platform\":\"Unknown Windows OS\",\"agent_string\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/87.0.4280.88 Safari\\/537.36\",\"ip\":\"::1\"}', 1609916028),
(20, 1, '2021-01-06 13:56:00', '{\"is_mobile\":0,\"browser\":\"Chrome 87.0.4280.88\",\"platform\":\"Unknown Windows OS\",\"agent_string\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/87.0.4280.88 Safari\\/537.36\",\"ip\":\"::1\"}', 1609916590),
(21, 2, '2021-01-06 14:05:18', '{\"is_mobile\":0,\"browser\":\"Chrome 87.0.4280.88\",\"platform\":\"Unknown Windows OS\",\"agent_string\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/87.0.4280.88 Safari\\/537.36\",\"ip\":\"::1\"}', 1609916631),
(22, 1, '2021-01-06 14:06:02', '{\"is_mobile\":0,\"browser\":\"Chrome 87.0.4280.88\",\"platform\":\"Unknown Windows OS\",\"agent_string\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/87.0.4280.88 Safari\\/537.36\",\"ip\":\"::1\"}', 1609938365),
(23, 1, '2021-01-06 20:06:36', '{\"is_mobile\":0,\"browser\":\"Chrome 87.0.4280.88\",\"platform\":\"Unknown Windows OS\",\"agent_string\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/87.0.4280.88 Safari\\/537.36\",\"ip\":\"::1\"}', 1609938381),
(24, 2, '2021-01-06 20:08:32', '{\"is_mobile\":0,\"browser\":\"Chrome 87.0.4280.88\",\"platform\":\"Unknown Windows OS\",\"agent_string\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/87.0.4280.88 Safari\\/537.36\",\"ip\":\"::1\"}', 1609938650),
(25, 1, '2021-01-06 20:13:11', '{\"is_mobile\":0,\"browser\":\"Chrome 87.0.4280.88\",\"platform\":\"Unknown Windows OS\",\"agent_string\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/87.0.4280.88 Safari\\/537.36\",\"ip\":\"::1\"}', 1609938791),
(26, 3, '2021-01-06 20:15:17', '{\"is_mobile\":0,\"browser\":\"Chrome 87.0.4280.88\",\"platform\":\"Unknown Windows OS\",\"agent_string\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/87.0.4280.88 Safari\\/537.36\",\"ip\":\"::1\"}', 1609938914),
(27, 2, '2021-01-06 20:17:23', '{\"is_mobile\":0,\"browser\":\"Chrome 87.0.4280.88\",\"platform\":\"Unknown Windows OS\",\"agent_string\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/87.0.4280.88 Safari\\/537.36\",\"ip\":\"::1\"}', 1609938935),
(28, 1, '2021-01-06 20:17:43', '{\"is_mobile\":0,\"browser\":\"Chrome 87.0.4280.88\",\"platform\":\"Unknown Windows OS\",\"agent_string\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/87.0.4280.88 Safari\\/537.36\",\"ip\":\"::1\"}', 1609938991),
(29, 2, '2021-01-06 20:18:38', '{\"is_mobile\":0,\"browser\":\"Chrome 87.0.4280.88\",\"platform\":\"Unknown Windows OS\",\"agent_string\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/87.0.4280.88 Safari\\/537.36\",\"ip\":\"::1\"}', 1609939187),
(30, 1, '2021-01-13 09:34:14', '{\"is_mobile\":0,\"browser\":\"Chrome 87.0.4280.141\",\"platform\":\"Unknown Windows OS\",\"agent_string\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/87.0.4280.141 Safari\\/537.36\",\"ip\":\"::1\"}', 1610505145),
(31, 1, '2021-01-13 09:41:55', '{\"is_mobile\":0,\"browser\":\"Chrome 87.0.4280.141\",\"platform\":\"Unknown Windows OS\",\"agent_string\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/87.0.4280.141 Safari\\/537.36 Edg\\/87.0.664.75\",\"ip\":\"::1\"}', 1610506016),
(32, 1, '2021-01-13 09:49:55', '{\"is_mobile\":0,\"browser\":\"Chrome 87.0.4280.141\",\"platform\":\"Unknown Windows OS\",\"agent_string\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/87.0.4280.141 Safari\\/537.36 Edg\\/87.0.664.75\",\"ip\":\"::1\"}', 1610506192),
(33, 1, '2021-01-13 09:51:57', '{\"is_mobile\":0,\"browser\":\"Chrome 87.0.4280.141\",\"platform\":\"Unknown Windows OS\",\"agent_string\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/87.0.4280.141 Safari\\/537.36 Edg\\/87.0.664.75\",\"ip\":\"::1\"}', 1610506201),
(34, 1, '2021-01-13 09:52:11', '{\"is_mobile\":0,\"browser\":\"Chrome 87.0.4280.141\",\"platform\":\"Unknown Windows OS\",\"agent_string\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/87.0.4280.141 Safari\\/537.36 Edg\\/87.0.664.75\",\"ip\":\"::1\"}', 1610506353),
(35, 1, '2021-02-02 21:55:47', '{\"is_mobile\":0,\"browser\":\"Firefox 82.0\",\"platform\":\"Unknown Windows OS\",\"agent_string\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64; rv:82.0) Gecko\\/20100101 Firefox\\/82.0\",\"ip\":\"::1\"}', 1612277726),
(36, 1, '2021-02-02 21:58:33', '{\"is_mobile\":0,\"browser\":\"Firefox 82.0\",\"platform\":\"Unknown Windows OS\",\"agent_string\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64; rv:82.0) Gecko\\/20100101 Firefox\\/82.0\",\"ip\":\"::1\"}', 1612277978),
(37, 4, '2021-02-02 22:01:45', '{\"is_mobile\":0,\"browser\":\"Firefox 82.0\",\"platform\":\"Unknown Windows OS\",\"agent_string\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64; rv:82.0) Gecko\\/20100101 Firefox\\/82.0\",\"ip\":\"::1\"}', 1612279870),
(38, 2, '2021-02-02 23:40:54', '{\"is_mobile\":0,\"browser\":\"Firefox 82.0\",\"platform\":\"Unknown Windows OS\",\"agent_string\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64; rv:82.0) Gecko\\/20100101 Firefox\\/82.0\",\"ip\":\"::1\"}', 1612283955),
(39, 2, '2021-02-02 23:45:49', '{\"is_mobile\":0,\"browser\":\"Firefox 82.0\",\"platform\":\"Unknown Windows OS\",\"agent_string\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64; rv:82.0) Gecko\\/20100101 Firefox\\/82.0\",\"ip\":\"::1\"}', 1612284306),
(40, 1, '2021-02-02 23:48:15', '{\"is_mobile\":0,\"browser\":\"Firefox 82.0\",\"platform\":\"Unknown Windows OS\",\"agent_string\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64; rv:82.0) Gecko\\/20100101 Firefox\\/82.0\",\"ip\":\"::1\"}', 1612284954),
(41, 2, '2021-02-02 23:58:05', '{\"is_mobile\":0,\"browser\":\"Firefox 82.0\",\"platform\":\"Unknown Windows OS\",\"agent_string\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64; rv:82.0) Gecko\\/20100101 Firefox\\/82.0\",\"ip\":\"::1\"}', 1612285080),
(42, 1, '2021-02-03 00:00:14', '{\"is_mobile\":0,\"browser\":\"Firefox 82.0\",\"platform\":\"Unknown Windows OS\",\"agent_string\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64; rv:82.0) Gecko\\/20100101 Firefox\\/82.0\",\"ip\":\"::1\"}', 1612285651),
(43, 2, '2021-02-03 00:09:41', '{\"is_mobile\":0,\"browser\":\"Firefox 82.0\",\"platform\":\"Unknown Windows OS\",\"agent_string\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64; rv:82.0) Gecko\\/20100101 Firefox\\/82.0\",\"ip\":\"::1\"}', 1612286570),
(44, 2, '2021-02-03 00:25:44', '{\"is_mobile\":0,\"browser\":\"Firefox 82.0\",\"platform\":\"Unknown Windows OS\",\"agent_string\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64; rv:82.0) Gecko\\/20100101 Firefox\\/82.0\",\"ip\":\"::1\"}', 1612287046),
(45, 2, '2021-02-03 00:32:57', '{\"is_mobile\":0,\"browser\":\"Firefox 82.0\",\"platform\":\"Unknown Windows OS\",\"agent_string\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64; rv:82.0) Gecko\\/20100101 Firefox\\/82.0\",\"ip\":\"::1\"}', 1612287765),
(46, 1, '2021-02-03 00:44:52', '{\"is_mobile\":0,\"browser\":\"Firefox 82.0\",\"platform\":\"Unknown Windows OS\",\"agent_string\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64; rv:82.0) Gecko\\/20100101 Firefox\\/82.0\",\"ip\":\"::1\"}', 1612288244),
(47, 5, '2021-02-03 00:53:38', '{\"is_mobile\":0,\"browser\":\"Firefox 82.0\",\"platform\":\"Unknown Windows OS\",\"agent_string\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64; rv:82.0) Gecko\\/20100101 Firefox\\/82.0\",\"ip\":\"::1\"}', 1612288351),
(48, 5, '2021-02-03 00:54:43', '{\"is_mobile\":0,\"browser\":\"Firefox 82.0\",\"platform\":\"Unknown Windows OS\",\"agent_string\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64; rv:82.0) Gecko\\/20100101 Firefox\\/82.0\",\"ip\":\"::1\"}', 1612288367),
(49, 5, '2021-02-03 00:55:00', '{\"is_mobile\":0,\"browser\":\"Firefox 82.0\",\"platform\":\"Unknown Windows OS\",\"agent_string\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64; rv:82.0) Gecko\\/20100101 Firefox\\/82.0\",\"ip\":\"::1\"}', 1612288513);

-- --------------------------------------------------------

--
-- Table structure for table `mapel`
--

CREATE TABLE `mapel` (
  `id` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `info` text DEFAULT NULL,
  `aktif` tinyint(1) NOT NULL DEFAULT 1 COMMENT '1 = ya, 0 = tidak'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `mapel`
--

INSERT INTO `mapel` (`id`, `nama`, `info`, `aktif`) VALUES
(1, 'Bahasa Indonesia', NULL, 1),
(2, 'Bahasa Inggris', NULL, 1),
(3, 'Matematika', NULL, 1),
(4, 'Ekonomi', NULL, 1),
(5, 'Geografi', NULL, 1),
(6, 'Biologi', NULL, 1),
(7, 'Penjas', NULL, 1),
(8, 'Agama', NULL, 1),
(9, 'Fisika', NULL, 1),
(10, 'Kimia', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `mapel_ajar`
--

CREATE TABLE `mapel_ajar` (
  `id` int(11) NOT NULL,
  `hari_id` tinyint(1) NOT NULL COMMENT '1=senin,2=selasa,3=rabu,4=kamis,5=jum''at,6=sabtu,7=minggu',
  `jam_mulai` time NOT NULL,
  `jam_selesai` time NOT NULL,
  `pengajar_id` int(11) NOT NULL,
  `mapel_kelas_id` int(11) NOT NULL,
  `aktif` tinyint(1) NOT NULL DEFAULT 1 COMMENT '1 = aktif 0 = tidak'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `mapel_ajar`
--

INSERT INTO `mapel_ajar` (`id`, `hari_id`, `jam_mulai`, `jam_selesai`, `pengajar_id`, `mapel_kelas_id`, `aktif`) VALUES
(1, 1, '08:30:00', '10:00:00', 1, 1, 1),
(2, 1, '00:00:08', '10:00:00', 2, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `mapel_kelas`
--

CREATE TABLE `mapel_kelas` (
  `id` int(11) NOT NULL,
  `kelas_id` int(11) NOT NULL,
  `mapel_id` int(11) NOT NULL,
  `aktif` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `mapel_kelas`
--

INSERT INTO `mapel_kelas` (`id`, `kelas_id`, `mapel_id`, `aktif`) VALUES
(1, 2, 1, 1),
(2, 2, 2, 1),
(3, 2, 3, 1),
(4, 2, 4, 1),
(5, 2, 5, 1),
(6, 2, 6, 1),
(7, 2, 7, 1),
(8, 2, 8, 1),
(9, 2, 9, 1),
(10, 2, 10, 1);

-- --------------------------------------------------------

--
-- Table structure for table `materi`
--

CREATE TABLE `materi` (
  `id` int(11) NOT NULL,
  `mapel_id` int(11) NOT NULL,
  `pengajar_id` int(11) DEFAULT NULL,
  `siswa_id` int(11) DEFAULT NULL,
  `judul` varchar(255) NOT NULL,
  `konten` text DEFAULT NULL,
  `file` text DEFAULT NULL,
  `tgl_posting` datetime NOT NULL,
  `publish` tinyint(1) NOT NULL DEFAULT 0,
  `views` int(11) NOT NULL DEFAULT 1
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `materi`
--

INSERT INTO `materi` (`id`, `mapel_id`, `pengajar_id`, `siswa_id`, `judul`, `konten`, `file`, `tgl_posting`, `publish`, `views`) VALUES
(1, 1, 1, NULL, 'lan', NULL, 'tete_1609681911.docx', '2021-01-06 13:42:22', 1, 1),
(2, 1, 1, NULL, 'MATERI TERTULIS', '<p>MATERI</p>\r\n', NULL, '2021-01-06 13:42:38', 1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `materi_kelas`
--

CREATE TABLE `materi_kelas` (
  `id` int(11) NOT NULL,
  `materi_id` int(11) NOT NULL,
  `kelas_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `materi_kelas`
--

INSERT INTO `materi_kelas` (`id`, `materi_id`, `kelas_id`) VALUES
(1, 1, 1),
(2, 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` int(11) NOT NULL,
  `type_id` tinyint(1) NOT NULL COMMENT '1=inbox,2=outbox',
  `content` text NOT NULL,
  `owner_id` int(11) NOT NULL,
  `sender_receiver_id` int(11) NOT NULL,
  `date` datetime NOT NULL,
  `opened` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0=belum,1=sudah'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`id`, `type_id`, `content`, `owner_id`, `sender_receiver_id`, `date`, `opened`) VALUES
(1, 2, '<p>tess</p>\r\n', 1, 2, '2021-01-06 13:33:57', 1),
(2, 1, '<p>tess</p>\r\n', 2, 1, '2021-01-06 13:33:57', 1),
(3, 2, '<p>kenapa pakk</p>\r\n', 2, 1, '2021-01-06 13:34:16', 1),
(4, 1, '<p>kenapa pakk</p>\r\n', 1, 2, '2021-01-06 13:34:16', 0);

-- --------------------------------------------------------

--
-- Table structure for table `nilai_tugas`
--

CREATE TABLE `nilai_tugas` (
  `id` int(11) NOT NULL,
  `nilai` float NOT NULL,
  `tugas_id` int(11) NOT NULL,
  `siswa_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `pengajar`
--

CREATE TABLE `pengajar` (
  `id` int(11) NOT NULL,
  `nip` varchar(45) DEFAULT NULL,
  `nama` varchar(100) NOT NULL,
  `jenis_kelamin` varchar(9) NOT NULL,
  `tempat_lahir` varchar(45) NOT NULL,
  `tgl_lahir` date DEFAULT NULL,
  `alamat` varchar(255) NOT NULL,
  `foto` text DEFAULT NULL,
  `status_id` tinyint(1) NOT NULL COMMENT '0=pending, 1=aktif, 2=blok'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `pengajar`
--

INSERT INTO `pengajar` (`id`, `nip`, `nama`, `jenis_kelamin`, `tempat_lahir`, `tgl_lahir`, `alamat`, `foto`, `status_id`) VALUES
(1, '8020160022', 'admin', 'Laki-laki', 'jambi', '1998-12-08', 'Jl. Gajah Mada kelurahan No.mor 31, RT.35, Jelutung, Kec. Jelutung, Kota Jambi, Jambi 36136', NULL, 1),
(2, '123456', 'guru', 'Laki-laki', 'jambi', '1998-02-01', 'jambi', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `pengaturan`
--

CREATE TABLE `pengaturan` (
  `id` varchar(255) NOT NULL,
  `nama` varchar(255) DEFAULT NULL,
  `value` text DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `pengaturan`
--

INSERT INTO `pengaturan` (`id`, `nama`, `value`) VALUES
('email-server', 'Email server', 'no-reply@domain.com'),
('email-template-approve-pengajar', 'Approve pengajar (email pengajar)', '{\"subject\":\"Pengaktifan Akun\",\"body\":\"<p>Hai {$nama},<\\/p>\\n<p>Anda telah diterima sebagai pengajar pada {$nama_sekolah}, berikut informasi data diri anda:<\\/p>\\n<p>{$tabel_profil}<\\/p>\\n<p>Anda dapat login ke sistem E-Learning menggunakan username dan password yang telah anda buat saat pendaftaran, login pada url berikut : {$url_login}<\\/p>\"}'),
('email-template-approve-siswa', 'Approve siswa (email siswa)', '{\"subject\":\"Pengaktifan Akun\",\"body\":\"<p>Hai {$nama},<\\/p>\\n<p>Anda telah diterima sebagai siswa pada {$nama_sekolah}, berikut informasi data diri anda:<\\/p>\\n<p>{$tabel_profil}<\\/p>\\n<p>Anda dapat login ke sistem E-Learning menggunakan username dan password yang telah anda buat saat pendaftaran, login pada url berikut : {$url_login}<\\/p>\"}'),
('email-template-link-reset', 'Link Reset Password', '{\"subject\":\"Reset Password\",\"body\":\"<p>Hai,<\\/p>\\n<p>Anda mengirimkan permintaan untuk reset password anda, klik link berikut untuk memulai reset password : {$link_reset}<\\/p>\"}'),
('email-template-register-pengajar', 'Register pengajar (email pengajar)', '{\"subject\":\"Registrasi Berhasil\",\"body\":\"<p>Hai {$nama},<\\/p>\\n<p>Terimakasih telah melakukan pendaftaran sebagai pengajar di E-Learning {$nama_sekolah}. Akun anda akan segera diaktifkan oleh admin.<\\/p>\"}'),
('email-template-register-siswa', 'Register siswa (email siswa)', '{\"subject\":\"Registrasi Berhasil\",\"body\":\"<p>Hai {$nama},<\\/p>\\n<p>Terimakasih telah melakukan pendaftaran sebagai siswa di E-Learning {$nama_sekolah}. Akun anda akan segera diaktifkan oleh admin.<\\/p>\"}'),
('info-registrasi', 'Info Registrasi', '<p>Silakan mendaftar sebagai siswa atau pengajar (jika anda sebagai pengajar) dengan memilih sesuai tab berikut :</p>'),
('peraturan-elearning', 'Peraturan E-learning', ''),
('registrasi-pengajar', 'Registrasi Pengajar', '1'),
('registrasi-siswa', 'Registrasi Siswa', '1'),
('versi', 'Versi', '2.0'),
('jenjang', 'jenjang', 'SMA'),
('nama-sekolah', 'nama-sekolah', 'SMK DB 1 KOTA JAMBI'),
('alamat', 'alamat', 'Jl. Untung Suropati No.87, RT.32, Jelutung, Kec. Jelutung, Kota Jambi, Jambi 36124'),
('telp', 'telp', ''),
('install-success', 'install-success', '1');

-- --------------------------------------------------------

--
-- Table structure for table `pengumuman`
--

CREATE TABLE `pengumuman` (
  `id` int(11) NOT NULL,
  `judul` varchar(255) NOT NULL,
  `konten` text NOT NULL,
  `tgl_tampil` date NOT NULL,
  `tgl_tutup` date NOT NULL,
  `tampil_siswa` tinyint(1) NOT NULL DEFAULT 1,
  `tampil_pengajar` tinyint(1) NOT NULL DEFAULT 1,
  `pengajar_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `pengumuman`
--

INSERT INTO `pengumuman` (`id`, `judul`, `konten`, `tgl_tampil`, `tgl_tutup`, `tampil_siswa`, `tampil_pengajar`, `pengajar_id`) VALUES
(2, 'LIBUR COVI', '<p>COVID SEKOLAH LIBUR</p>\r\n', '2021-01-06', '2021-01-12', 1, 1, 1),
(3, 'UJIAN', '<p>tes oi</p>\r\n', '2021-01-06', '2021-01-09', 1, 0, 2);

-- --------------------------------------------------------

--
-- Table structure for table `pilihan`
--

CREATE TABLE `pilihan` (
  `id` int(11) NOT NULL,
  `pertanyaan_id` int(11) NOT NULL,
  `konten` text NOT NULL,
  `kunci` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0=tidak',
  `urutan` int(11) NOT NULL,
  `aktif` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `pilihan`
--

INSERT INTO `pilihan` (`id`, `pertanyaan_id`, `konten`, `kunci`, `urutan`, `aktif`) VALUES
(1, 2, '<p>lan</p>\r\n', 1, 1, 1),
(2, 2, '<p>wan</p>\r\n', 0, 2, 1),
(3, 2, '<p>man</p>\r\n', 0, 3, 1),
(4, 2, '<p>rj45</p>\r\n', 0, 4, 1);

-- --------------------------------------------------------

--
-- Table structure for table `siswa`
--

CREATE TABLE `siswa` (
  `id` int(11) NOT NULL,
  `nis` varchar(45) DEFAULT NULL,
  `nama` varchar(100) NOT NULL,
  `jenis_kelamin` varchar(9) NOT NULL COMMENT 'Laki-laki dan Perempuan',
  `tempat_lahir` varchar(45) NOT NULL,
  `tgl_lahir` date DEFAULT NULL,
  `agama` char(7) DEFAULT NULL,
  `alamat` varchar(255) NOT NULL,
  `tahun_masuk` year(4) NOT NULL,
  `foto` text DEFAULT NULL,
  `status_id` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0=pending, 1=aktif, 2=blok, 3=alumni, 4=deleted',
  `username_ortu` varchar(30) NOT NULL,
  `password_ortu` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `siswa`
--

INSERT INTO `siswa` (`id`, `nis`, `nama`, `jenis_kelamin`, `tempat_lahir`, `tgl_lahir`, `agama`, `alamat`, `tahun_masuk`, `foto`, `status_id`, `username_ortu`, `password_ortu`) VALUES
(1, '123123', 'test', 'Laki-laki', 'jambi', '1998-12-09', 'ISLAM', 'Jl. Gajah Mada kelurahan No.mor 31, RT.35, Jelutung, Kec. Jelutung, Kota Jambi, Jambi 36136', 2021, NULL, 1, 'ortu1@gmail.com', '93acfca3c037014aa05f7975661c09de'),
(3, '2342352', 'sdfsfdsf', 'Laki-laki', 'sdfsdf', NULL, 'KRISTEN', 'sdfsdfdsf', 2020, 'siswa-sdfsfdsf-2342352.png', 1, 'abcde@gmail.com', '469eb28221c8e6d092ddafacb87799bf');

-- --------------------------------------------------------

--
-- Table structure for table `tugas`
--

CREATE TABLE `tugas` (
  `id` int(11) NOT NULL,
  `mapel_id` int(11) NOT NULL,
  `pengajar_id` int(11) NOT NULL,
  `type_id` tinyint(1) NOT NULL COMMENT '1=upload,2=essay,3=ganda',
  `judul` varchar(255) NOT NULL,
  `durasi` int(11) DEFAULT NULL COMMENT 'lama pengerjaan dalam menit',
  `info` text DEFAULT NULL,
  `aktif` tinyint(1) NOT NULL DEFAULT 0,
  `tgl_buat` datetime DEFAULT NULL,
  `tampil_siswa` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0=tidak tampil di siswa, 1=tampil siswa'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tugas`
--

INSERT INTO `tugas` (`id`, `mapel_id`, `pengajar_id`, `type_id`, `judul`, `durasi`, `info`, `aktif`, `tgl_buat`, `tampil_siswa`) VALUES
(1, 1, 1, 1, 'TES', NULL, '<p>UPLOAD TUGAS</p>\r\n', 1, '2021-01-06 13:40:10', 1),
(2, 1, 1, 2, 'TUGAS ESSAY', 20, '<p>TUGAS ESAY</p>\r\n', 1, '2021-01-06 13:40:28', 1),
(3, 1, 1, 3, 'TUGAS PILGAN', 20, '<p>TUGAS INI PILIHAN GANDA</p>\r\n', 1, '2021-01-06 13:41:02', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tugas_kelas`
--

CREATE TABLE `tugas_kelas` (
  `id` int(11) NOT NULL,
  `tugas_id` int(11) NOT NULL,
  `kelas_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tugas_kelas`
--

INSERT INTO `tugas_kelas` (`id`, `tugas_id`, `kelas_id`) VALUES
(1, 1, 2),
(2, 2, 2),
(3, 3, 2);

-- --------------------------------------------------------

--
-- Table structure for table `tugas_pertanyaan`
--

CREATE TABLE `tugas_pertanyaan` (
  `id` int(11) NOT NULL,
  `pertanyaan` text NOT NULL,
  `urutan` int(11) NOT NULL,
  `tugas_id` int(11) NOT NULL,
  `aktif` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tugas_pertanyaan`
--

INSERT INTO `tugas_pertanyaan` (`id`, `pertanyaan`, `urutan`, `tugas_id`, `aktif`) VALUES
(1, '<p>tugas 1</p>\r\n', 1, 2, 1),
(2, '<p>apa itu lan</p>\r\n', 1, 3, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `field_tambahan`
--
ALTER TABLE `field_tambahan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kelas`
--
ALTER TABLE `kelas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `parent_id` (`parent_id`),
  ADD KEY `parent_id_2` (`parent_id`);

--
-- Indexes for table `kelas_siswa`
--
ALTER TABLE `kelas_siswa`
  ADD PRIMARY KEY (`id`),
  ADD KEY `kelas_id` (`kelas_id`,`siswa_id`),
  ADD KEY `kelas_id_2` (`kelas_id`,`siswa_id`);

--
-- Indexes for table `komentar`
--
ALTER TABLE `komentar`
  ADD PRIMARY KEY (`id`),
  ADD KEY `login_id` (`login_id`,`materi_id`),
  ADD KEY `login_id_2` (`login_id`,`materi_id`),
  ADD KEY `login_id_3` (`login_id`,`materi_id`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`siswa_id`,`pengajar_id`),
  ADD KEY `username_2` (`username`,`siswa_id`,`pengajar_id`);

--
-- Indexes for table `login_log`
--
ALTER TABLE `login_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `login_id` (`login_id`),
  ADD KEY `login_id_2` (`login_id`),
  ADD KEY `login_id_3` (`login_id`);

--
-- Indexes for table `mapel`
--
ALTER TABLE `mapel`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mapel_ajar`
--
ALTER TABLE `mapel_ajar`
  ADD PRIMARY KEY (`id`),
  ADD KEY `hari_id` (`hari_id`,`pengajar_id`,`mapel_kelas_id`),
  ADD KEY `hari_id_2` (`hari_id`,`pengajar_id`,`mapel_kelas_id`);

--
-- Indexes for table `mapel_kelas`
--
ALTER TABLE `mapel_kelas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `kelas_id` (`kelas_id`,`mapel_id`),
  ADD KEY `kelas_id_2` (`kelas_id`,`mapel_id`);

--
-- Indexes for table `materi`
--
ALTER TABLE `materi`
  ADD PRIMARY KEY (`id`),
  ADD KEY `mapel_id` (`mapel_id`,`pengajar_id`,`siswa_id`),
  ADD KEY `mapel_id_2` (`mapel_id`,`pengajar_id`,`siswa_id`);

--
-- Indexes for table `materi_kelas`
--
ALTER TABLE `materi_kelas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `materi_id` (`materi_id`,`kelas_id`),
  ADD KEY `materi_id_2` (`materi_id`,`kelas_id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `type_id` (`type_id`,`owner_id`,`sender_receiver_id`),
  ADD KEY `type_id_2` (`type_id`,`owner_id`,`sender_receiver_id`);

--
-- Indexes for table `nilai_tugas`
--
ALTER TABLE `nilai_tugas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tugas_id` (`tugas_id`,`siswa_id`),
  ADD KEY `tugas_id_2` (`tugas_id`,`siswa_id`);

--
-- Indexes for table `pengajar`
--
ALTER TABLE `pengajar`
  ADD PRIMARY KEY (`id`),
  ADD KEY `nip` (`nip`),
  ADD KEY `nip_2` (`nip`);

--
-- Indexes for table `pengaturan`
--
ALTER TABLE `pengaturan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pengumuman`
--
ALTER TABLE `pengumuman`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pengajar_id` (`pengajar_id`),
  ADD KEY `pengajar_id_2` (`pengajar_id`),
  ADD KEY `pengajar_id_3` (`pengajar_id`);

--
-- Indexes for table `pilihan`
--
ALTER TABLE `pilihan`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pertanyaan_id` (`pertanyaan_id`),
  ADD KEY `pertanyaan_id_2` (`pertanyaan_id`,`kunci`);

--
-- Indexes for table `siswa`
--
ALTER TABLE `siswa`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username_ortu` (`username_ortu`),
  ADD KEY `nis` (`nis`,`nama`,`status_id`),
  ADD KEY `nis_2` (`nis`,`nama`,`status_id`);

--
-- Indexes for table `tugas`
--
ALTER TABLE `tugas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `mapel_id` (`mapel_id`,`pengajar_id`,`type_id`),
  ADD KEY `mapel_id_2` (`mapel_id`,`pengajar_id`,`type_id`);

--
-- Indexes for table `tugas_kelas`
--
ALTER TABLE `tugas_kelas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tugas_id` (`tugas_id`,`kelas_id`),
  ADD KEY `tugas_id_2` (`tugas_id`,`kelas_id`);

--
-- Indexes for table `tugas_pertanyaan`
--
ALTER TABLE `tugas_pertanyaan`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tugas_id` (`tugas_id`),
  ADD KEY `tugas_id_2` (`tugas_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `kelas`
--
ALTER TABLE `kelas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `kelas_siswa`
--
ALTER TABLE `kelas_siswa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `komentar`
--
ALTER TABLE `komentar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `login_log`
--
ALTER TABLE `login_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `mapel`
--
ALTER TABLE `mapel`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `mapel_ajar`
--
ALTER TABLE `mapel_ajar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `mapel_kelas`
--
ALTER TABLE `mapel_kelas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `materi`
--
ALTER TABLE `materi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `materi_kelas`
--
ALTER TABLE `materi_kelas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `nilai_tugas`
--
ALTER TABLE `nilai_tugas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `pengajar`
--
ALTER TABLE `pengajar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `pengumuman`
--
ALTER TABLE `pengumuman`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `pilihan`
--
ALTER TABLE `pilihan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `siswa`
--
ALTER TABLE `siswa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tugas`
--
ALTER TABLE `tugas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tugas_kelas`
--
ALTER TABLE `tugas_kelas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tugas_pertanyaan`
--
ALTER TABLE `tugas_pertanyaan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
