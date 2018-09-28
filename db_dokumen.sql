-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 28, 2018 at 08:22 AM
-- Server version: 10.1.34-MariaDB
-- PHP Version: 5.6.37

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_dokumen`
--

-- --------------------------------------------------------

--
-- Table structure for table `bagian`
--

CREATE TABLE `bagian` (
  `id_bagian` int(12) NOT NULL,
  `nama_bagian` varchar(100) COLLATE latin1_general_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `bagian`
--

INSERT INTO `bagian` (`id_bagian`, `nama_bagian`) VALUES
(1, 'BAHAN BAKAR'),
(2, 'COMPONENT ANALYST'),
(3, 'CONDITION BASED MANTENANCE (CBM)'),
(4, 'GENERAL MANAJER'),
(5, 'GUDANG'),
(6, 'INVENTORY CONTROL'),
(7, 'KEUANGAN'),
(8, 'KIMIA & LABORATORIUM'),
(9, 'KONTROL & INSTRUMEN'),
(10, 'LISTRIK'),
(11, 'LK3'),
(12, 'LOGISTIK & PENGADAAN'),
(13, 'MANAJEMEN OUTAGE'),
(14, 'MANAJER ADMINISTRASI'),
(15, 'MANAJER OPERASI'),
(16, 'MANAJER PEMELIHARAAN'),
(17, 'MESIN 1'),
(18, 'MESIN 2'),
(19, 'PENGADAAN'),
(20, 'PH MANAJER ENJINIRING'),
(21, 'PRODUKSI A'),
(22, 'PRODUKSI B'),
(23, 'PRODUKSI C'),
(24, 'PRODUKSI D'),
(25, 'QUALITY & RISK MANAGEMENT (QRM)'),
(26, 'RENDAL HAR'),
(27, 'RENDAL OP'),
(28, 'SDM'),
(29, 'SEKERTARIAT'),
(30, 'SEKRETARIAT & UMUM'),
(31, 'SO BOILER'),
(32, 'SO COMMON'),
(33, 'SO TURBIN'),
(34, '-');

-- --------------------------------------------------------

--
-- Table structure for table `bidang`
--

CREATE TABLE `bidang` (
  `id_bidang` int(12) NOT NULL,
  `nama_bidang` varchar(100) COLLATE latin1_general_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `bidang`
--

INSERT INTO `bidang` (`id_bidang`, `nama_bidang`) VALUES
(1, 'OPERASI'),
(2, 'PEMELIHARAAN'),
(3, 'ADMINISTRASI'),
(4, 'ENJINIRING'),
(5, '-');

-- --------------------------------------------------------

--
-- Table structure for table `daftar_isi`
--

CREATE TABLE `daftar_isi` (
  `id_menu` int(11) NOT NULL,
  `parent_id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `menu_order` int(11) NOT NULL,
  `standart` int(2) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `daftar_isi`
--

INSERT INTO `daftar_isi` (`id_menu`, `parent_id`, `title`, `menu_order`, `standart`) VALUES
(1, 0, 'SCOPE', 1, 4),
(2, 0, 'NORMATIVE REFERENCES', 2, 4),
(3, 0, 'CONTEXT OF THE ORGANIZATION', 4, 4),
(4, 0, 'TERM AND DEFINITIONS IMS', 3, 4),
(5, 3, 'Understanding The Organization & Its Context', 1, 4),
(6, 3, 'Understanding The Needs and Expectations of Interested Parties', 2, 4),
(7, 3, 'Determining The Scope Of The Integrated Management System', 3, 4),
(8, 3, 'Integrated Management System', 4, 4),
(9, 0, 'LEADERSHIP', 5, 4),
(10, 9, 'Leadership & Commitment', 1, 4),
(11, 9, 'Policy', 2, 4),
(12, 9, 'Organization Roles. Responsibilities and Authorities', 3, 4),
(13, 0, 'PLANNING', 6, 4),
(14, 13, 'Action To Address Risk and Opportunities', 1, 4),
(15, 13, 'Integrated Management System Objectives and Planning Tp Archieve Them', 2, 4),
(16, 0, 'SUPPORT', 7, 4),
(17, 16, 'Resources', 1, 4),
(18, 16, 'Competence', 2, 4),
(19, 16, 'Awareness', 3, 4),
(20, 16, 'Communication', 4, 4),
(21, 16, 'Documented Information', 5, 4),
(22, 16, 'General ', 6, 4),
(23, 16, 'Creating and Updating ', 7, 4),
(24, 16, 'Control of Documented Information ', 8, 4),
(25, 0, 'OPERATION', 8, 4),
(26, 25, 'Operational Planning and Control', 1, 4),
(27, 0, 'PERFORMANCE EVALUATION', 9, 4),
(28, 27, 'Monitoring Measurement Analysis and Evaluation', 1, 4),
(29, 27, 'Internal Audit', 2, 4),
(30, 27, 'Management Review', 3, 4),
(31, 0, 'IMPROVEMENT', 1, 4),
(32, 31, 'Nonconformity and Corrective Action', 1, 4),
(33, 31, 'Continual Improvement', 2, 4),
(34, 0, 'MENU', 1, 14);

-- --------------------------------------------------------

--
-- Table structure for table `dokumentevident`
--

CREATE TABLE `dokumentevident` (
  `id_dokumentevident` int(12) NOT NULL,
  `nama_dokumentevident` text COLLATE latin1_general_ci NOT NULL,
  `files` text COLLATE latin1_general_ci NOT NULL,
  `tahun` int(5) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `dokumentik`
--

CREATE TABLE `dokumentik` (
  `id_dokumentik` int(12) NOT NULL,
  `nomor_dokumentik` varchar(20) COLLATE latin1_general_ci NOT NULL,
  `nama_dokumentik` text COLLATE latin1_general_ci NOT NULL,
  `files` text COLLATE latin1_general_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `dokumentipm`
--

CREATE TABLE `dokumentipm` (
  `id_dokumentipm` int(12) NOT NULL,
  `nomor_dokumentipm` varchar(20) COLLATE latin1_general_ci NOT NULL,
  `nama_dokumentipm` text COLLATE latin1_general_ci NOT NULL,
  `files` text COLLATE latin1_general_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jabatan`
--

CREATE TABLE `jabatan` (
  `id_jabatan` int(12) NOT NULL,
  `nama_jabatan` varchar(200) COLLATE latin1_general_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `jabatan`
--

INSERT INTO `jabatan` (`id_jabatan`, `nama_jabatan`) VALUES
(1, 'FOREMAN COMMON UNIT PRODUKSI D'),
(2, 'FOREMAN KONTROL & INSTRUMEN BOILER'),
(3, 'FOREMAN KONTROL & INSTRUMEN TURBIN'),
(4, 'FOREMAN MAIN UNIT PRODUKSI C'),
(5, 'FOREMAN MAIN UNIT PRODUKSI D'),
(6, 'FOREMAN MESIN 1 BOILER '),
(7, 'FOREMAN MESIN 2 COAL & ASH HANDLING'),
(8, 'GENERAL MANAJER'),
(9, 'MANAJER ADMINISTRASI'),
(10, 'MANAJER OPERASI'),
(11, 'MANAJER PEMELIHARAAN'),
(12, 'OFFICER JUNIOR 2  BAHAN BAKAR'),
(13, 'OFFICER JUNIOR 2 CBM'),
(14, 'OFFICER JUNIOR 2 GUDANG'),
(15, 'OFFICER JUNIOR 2 INVENTORY CONTROL'),
(16, 'OFFICER JUNIOR 2 KEUANGAN'),
(17, 'OFFICER JUNIOR 2 KIMIA'),
(18, 'OFFICER JUNIOR 2 LK3'),
(19, 'OFFICER JUNIOR 2 MANAJEMEN OUTAGE'),
(20, 'OFFICER JUNIOR 2 PENGADAAN'),
(21, 'OFFICER JUNIOR 2 QRM'),
(22, 'OFFICER JUNIOR 2 RENDAL OP'),
(23, 'OFFICER JUNIOR 2 SEKRETARIAT'),
(24, 'OFFICER JUNIOR CBM'),
(25, 'OFFICER JUNIOR KIMIA & LABORATORIUM'),
(26, 'OFFICER JUNIOR MANAGEMENT OUTAGE'),
(27, 'OFFICER JUNIOR QRM'),
(28, 'OFFICER JUNIOR RENDAL HAR'),
(29, 'OFFICER JUNIOR SDM'),
(30, 'OFFICER JUNIOR SEKRETARIAT'),
(31, 'OFFICER JUNIOR SO BOILER'),
(32, 'OFFICER SENIOR CBM'),
(33, 'OFFICER SENIOR COMPONENT ANALYST'),
(34, 'OFFICER SENIOR INVENTORY CONTROL'),
(35, 'OFFICER SENIOR KIMIA'),
(36, 'OFFICER SENIOR LK3'),
(37, 'OFFICER SENIOR MANAGEMENT OUTAGE'),
(38, 'OFFICER SENIOR PENGADAAN'),
(39, 'OFFICER SENIOR QRM'),
(40, 'OFFICER SENIOR RENDAL HAR'),
(41, 'OFFICER SENIOR RENDAL OP'),
(42, 'OFFICER SENIOR SO BOILER'),
(43, 'OFFICER SENIOR SO COMMON'),
(44, 'OFFICER SENIOR SO TURBIN'),
(45, 'OJT OPERATOR PRODUKSI A'),
(46, 'OJT OPERATOR PRODUKSI B'),
(47, 'OJT OPERATOR PRODUKSI C'),
(48, 'OJT OPERATOR PRODUKSI D'),
(49, 'OPERATOR JUNIOR 2  PRODUKSI A'),
(50, 'OPERATOR JUNIOR 2 PRODUKSI A'),
(51, 'OPERATOR JUNIOR 2 PRODUKSI B'),
(52, 'OPERATOR JUNIOR 2 PRODUKSI C'),
(53, 'OPERATOR JUNIOR 2 PRODUKSI D'),
(54, 'OPERATOR JUNIOR PRODUKSI A'),
(55, 'OPERATOR JUNIOR PRODUKSI B'),
(56, 'OPERATOR JUNIOR PRODUKSI C'),
(57, 'OPERATOR JUNIOR PRODUKSI D'),
(58, 'OPERATOR SENIOR PRODUKSI A'),
(59, 'OPERATOR SENIOR PRODUKSI B'),
(60, 'OPERATOR SENIOR PRODUKSI C'),
(61, 'OPERATOR SENIOR PRODUKSI D'),
(62, 'MANAJER ENJINIRING'),
(63, 'PJS FOREMAN COMMMON UNIT PRODUKSI C`'),
(64, 'PJS FOREMAN COMMON UNIT PRODUKSI A'),
(65, 'PJS FOREMAN COMMON UNIT PRODUKSI B'),
(66, 'PJS FOREMAN LISTRIK ALAT-ALAT BANTU'),
(67, 'PJS FOREMAN LISTRIK BOILER TURBIN'),
(68, 'PJS FOREMAN MAIN UNIT PRODUKSI A'),
(69, 'PJS FOREMAN MAIN UNIT PRODUKSI B'),
(70, 'PJS FOREMAN MESIN 1 TURBIN'),
(71, 'PJS FOREMAN MESIN 2 ALAT-ALAT BERAT'),
(72, 'STAF JUNIOR BAHAN BAKAR'),
(73, 'STAF JUNIOR GUDANG'),
(74, 'STAF JUNIOR KEUANGAN'),
(75, 'STAF JUNIOR KIMIA'),
(76, 'STAF JUNIOR KIMIA & LABORATORIUM'),
(77, 'STAF JUNIOR LK3'),
(78, 'STAF JUNIOR MANAJEMEN OUTAGE'),
(79, 'STAF JUNIOR PENGADAAN'),
(80, 'STAF JUNIOR RENDAL HAR'),
(81, 'STAF JUNIOR RENDAL OP'),
(82, 'STAF JUNIOR SDM'),
(83, 'STAF JUNIOR SEKRETARIAT & UMUM'),
(84, 'STAF JUNIOR SO COMMON'),
(85, 'STAF OJT BAHAN BAKAR'),
(86, 'STAF OJT GUDANG'),
(87, 'STAF OJT KEUANGAN'),
(88, 'STAF OJT KIMIA'),
(89, 'STAF OJT LK3'),
(90, 'STAF OJT MANAJEMEN OUTAGE'),
(91, 'STAF OJT PENGADAAN'),
(92, 'STAF OJT RENDAL OPERASI'),
(93, 'STAF OJT SEKRETARIAT'),
(94, 'STAF SENIOR COMPONENT ANALYST'),
(95, 'STAF SENIOR CONDITION BASED MANTENANCE'),
(96, 'STAF SENIOR INVENTORY CONTROL'),
(97, 'STAF SENIOR RENDAL HAR'),
(98, 'STAF SENIOR RENDAL OP'),
(99, 'STAF SENIOR SO COMMON'),
(100, 'STAF SENIOR SO TURBIN'),
(101, 'SUPERVISOR SENIOR BAHAN BAKAR'),
(102, 'SUPERVISOR SENIOR COMPONENT ANALIST'),
(103, 'SUPERVISOR SENIOR CONDITION BASED MAINTENANCE '),
(104, 'SUPERVISOR SENIOR GUDANG'),
(105, 'SUPERVISOR SENIOR INVENTORY CONTROL  '),
(106, 'SUPERVISOR SENIOR KEUANGAN'),
(107, 'SUPERVISOR SENIOR KIMIA & LABORATORIUM'),
(108, 'SUPERVISOR SENIOR KONTROL & INSTRUMEN'),
(109, 'SUPERVISOR SENIOR LISTRIK'),
(110, 'SUPERVISOR SENIOR LK3'),
(111, 'SUPERVISOR SENIOR LOGISTIK & PENGADAAN'),
(112, 'SUPERVISOR SENIOR MANAJEMEN OUTAGE'),
(113, 'SUPERVISOR SENIOR MESIN 1 BOILER,TURBIN & AAB'),
(114, 'SUPERVISOR SENIOR MESIN 2 SISTEM BAHAN BAKAR&ABU'),
(115, 'SUPERVISOR SENIOR PRODUKSI A'),
(116, 'SUPERVISOR SENIOR PRODUKSI B '),
(117, 'SUPERVISOR SENIOR PRODUKSI C'),
(118, 'SUPERVISOR SENIOR PRODUKSI D'),
(119, 'SUPERVISOR SENIOR QUALITY & RISK MANAGEMENT '),
(120, 'SUPERVISOR SENIOR RENDAL HAR '),
(121, 'SUPERVISOR SENIOR RENDAL OP'),
(122, 'SUPERVISOR SENIOR SDM'),
(123, 'SUPERVISOR SENIOR SEKRETARIAT & UMUM'),
(124, 'SUPERVISOR SENIOR SO BOILER'),
(125, 'SUPERVISOR SENIOR SYSTEM OWNER COMMON'),
(126, 'SUPERVISOR SENIOR SYSTEM OWNER TURBINE & AUXILLIARY'),
(127, 'TEKNISI JUNIOR 2 KONTROL INSTRUMEN'),
(128, 'TEKNISI JUNIOR 2 LISTRIK'),
(129, 'TEKNISI JUNIOR 2 MESIN 1'),
(130, 'TEKNISI JUNIOR 2 MESIN 2'),
(131, 'TEKNISI JUNIOR 2 MESIN 2 '),
(132, 'TEKNISI JUNIOR II LISTRIK'),
(133, 'TEKNISI JUNIOR KONTROL & INSTRUMEN'),
(134, 'TEKNISI JUNIOR LISTRIK'),
(135, 'TEKNISI JUNIOR MESIN 1'),
(136, 'TEKNISI JUNIOR MESIN 2'),
(137, 'TEKNISI OJT KONTROL INSTRUMEN'),
(138, 'TEKNISI OJT LISTRIK'),
(139, 'TEKNISI OJT MESIN 1'),
(140, 'TEKNISI OJT MESIN 2'),
(141, 'TEKNISI SENIOR MESIN 2'),
(142, '-');

-- --------------------------------------------------------

--
-- Table structure for table `nilai_standart`
--

CREATE TABLE `nilai_standart` (
  `id_nilai_standart` int(5) NOT NULL,
  `id_standart` int(5) NOT NULL,
  `tahun` int(5) NOT NULL,
  `nilai` varchar(5) NOT NULL,
  `file_hasil` text NOT NULL,
  `catatan` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `nilai_standart`
--

INSERT INTO `nilai_standart` (`id_nilai_standart`, `id_standart`, `tahun`, `nilai`, `file_hasil`, `catatan`) VALUES
(8, 4, 2018, '96', '', 'd'),
(10, 4, 2017, '97', '', 'Bagus'),
(11, 7, 2008, '95', '', 'DSADA'),
(12, 1, 2018, '78', '', 'gOOD'),
(13, 2, 2019, '88', '', 'Good\r\n'),
(14, 44, 2017, '99', '', 'Good'),
(15, 1, 2002, '88', '', 'Good');

-- --------------------------------------------------------

--
-- Table structure for table `operator`
--

CREATE TABLE `operator` (
  `username` varchar(15) COLLATE latin1_general_ci NOT NULL,
  `password` varchar(130) COLLATE latin1_general_ci NOT NULL,
  `nama_lengkap` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `bidang` varchar(15) COLLATE latin1_general_ci NOT NULL,
  `bagian` varchar(15) COLLATE latin1_general_ci NOT NULL,
  `jabatan` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `atasan` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `level` varchar(20) COLLATE latin1_general_ci NOT NULL DEFAULT 'user',
  `blokir` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'N',
  `profil` varchar(100) COLLATE latin1_general_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `operator`
--

INSERT INTO `operator` (`username`, `password`, `nama_lengkap`, `bidang`, `bagian`, `jabatan`, `atasan`, `level`, `blokir`, `profil`) VALUES
('admin', '21232f297a57a5a743894a0e4a801fc3', 'AKHMAD SYAKIR', '4', '19', '18', '18', 'superadmin', 'N', 'adminpicture-2.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `standart`
--

CREATE TABLE `standart` (
  `id_standart` int(12) NOT NULL,
  `nama_standart` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `aktif` varchar(1) COLLATE latin1_general_ci DEFAULT 'Y'
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `standart`
--

INSERT INTO `standart` (`id_standart`, `nama_standart`, `aktif`) VALUES
(1, 'OHSAS 18001 : 2007', 'Y'),
(2, 'ISO 9001 : 2008', 'Y'),
(4, 'PJB IMS', 'Y'),
(14, 'ISO 14001 : 2004', 'Y'),
(5, '-', 'N'),
(6, 'ISO 50001 : 2011', 'Y'),
(7, 'ISO 17025 : 2005', 'Y'),
(8, 'SMK3 (SO/2012)', 'Y'),
(9, 'SMP (Perkap 24/2007)', 'Y'),
(10, 'ISO 22301 : 2012', 'Y'),
(11, 'ISO 55001 : 2004', 'Y'),
(12, 'PASS 55 : 2008', 'Y'),
(13, 'MALCOLM BALDRIGE', 'Y');

-- --------------------------------------------------------

--
-- Table structure for table `status_kinerja`
--

CREATE TABLE `status_kinerja` (
  `kode_status` varchar(15) NOT NULL,
  `nama_status` text NOT NULL,
  `blokir` varchar(1) NOT NULL DEFAULT 'N'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `status_kinerja`
--

INSERT INTO `status_kinerja` (`kode_status`, `nama_status`, `blokir`) VALUES
('333', '(FO3) Forced Outage Potponed', 'N'),
('331', '(FO1) Forced Outage Immediate', 'N'),
('322', '(ME) Maintenance Outage Extension', 'N'),
('332', '(FO3) Forced Outage Potponed', 'N'),
('321', '(MO) Maintenance Outage', 'N'),
('311', '(PO) Planned Outage', 'N'),
('241', '(MD) Operasi dg Maintenance Derating', 'N'),
('231', '(FD1) Forced Derating Immediate', 'N'),
('221', '(PD) Planned Derating', 'N');

-- --------------------------------------------------------

--
-- Table structure for table `tb_description_di`
--

CREATE TABLE `tb_description_di` (
  `id_description` int(10) NOT NULL,
  `id_daftar_isi` varchar(5) NOT NULL,
  `id_standart` varchar(5) NOT NULL,
  `files` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_description_di`
--

INSERT INTO `tb_description_di` (`id_description`, `id_daftar_isi`, `id_standart`, `files`) VALUES
(35, '34', '14', '34Tanggap-Darurat-dan-Pencegahan-Kebakaran-Pertemuan-8.pdf');

-- --------------------------------------------------------

--
-- Table structure for table `tb_evident_di`
--

CREATE TABLE `tb_evident_di` (
  `id_evident_di` int(10) NOT NULL,
  `id_daftar_isi` int(5) NOT NULL,
  `id_standart` int(5) NOT NULL,
  `id_evident` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tb_ik_di`
--

CREATE TABLE `tb_ik_di` (
  `id_ik_di` int(10) NOT NULL,
  `id_daftar_isi` int(5) NOT NULL,
  `id_standart` int(5) NOT NULL,
  `id_ik` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tb_ipm_di`
--

CREATE TABLE `tb_ipm_di` (
  `id_ipm_di` int(10) NOT NULL,
  `id_daftar_isi` int(5) NOT NULL,
  `id_standart` int(5) NOT NULL,
  `id_ipm` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tb_matrik_ims`
--

CREATE TABLE `tb_matrik_ims` (
  `id_matrik_ims` int(10) NOT NULL,
  `id_daftar_isi_ims` varchar(5) NOT NULL,
  `id_standart` varchar(5) NOT NULL,
  `id_menu` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_matrik_ims`
--

INSERT INTO `tb_matrik_ims` (`id_matrik_ims`, `id_daftar_isi_ims`, `id_standart`, `id_menu`) VALUES
(53, '34', '14', 1),
(54, '34', '14', 32);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bagian`
--
ALTER TABLE `bagian`
  ADD PRIMARY KEY (`id_bagian`);

--
-- Indexes for table `bidang`
--
ALTER TABLE `bidang`
  ADD PRIMARY KEY (`id_bidang`);

--
-- Indexes for table `daftar_isi`
--
ALTER TABLE `daftar_isi`
  ADD PRIMARY KEY (`id_menu`);

--
-- Indexes for table `dokumentevident`
--
ALTER TABLE `dokumentevident`
  ADD PRIMARY KEY (`id_dokumentevident`);

--
-- Indexes for table `dokumentik`
--
ALTER TABLE `dokumentik`
  ADD PRIMARY KEY (`id_dokumentik`);

--
-- Indexes for table `dokumentipm`
--
ALTER TABLE `dokumentipm`
  ADD PRIMARY KEY (`id_dokumentipm`);

--
-- Indexes for table `jabatan`
--
ALTER TABLE `jabatan`
  ADD PRIMARY KEY (`id_jabatan`);

--
-- Indexes for table `nilai_standart`
--
ALTER TABLE `nilai_standart`
  ADD PRIMARY KEY (`id_nilai_standart`);

--
-- Indexes for table `operator`
--
ALTER TABLE `operator`
  ADD PRIMARY KEY (`username`),
  ADD KEY `username` (`username`);

--
-- Indexes for table `standart`
--
ALTER TABLE `standart`
  ADD PRIMARY KEY (`id_standart`);

--
-- Indexes for table `tb_description_di`
--
ALTER TABLE `tb_description_di`
  ADD PRIMARY KEY (`id_description`);

--
-- Indexes for table `tb_evident_di`
--
ALTER TABLE `tb_evident_di`
  ADD PRIMARY KEY (`id_evident_di`);

--
-- Indexes for table `tb_ik_di`
--
ALTER TABLE `tb_ik_di`
  ADD PRIMARY KEY (`id_ik_di`);

--
-- Indexes for table `tb_ipm_di`
--
ALTER TABLE `tb_ipm_di`
  ADD PRIMARY KEY (`id_ipm_di`);

--
-- Indexes for table `tb_matrik_ims`
--
ALTER TABLE `tb_matrik_ims`
  ADD PRIMARY KEY (`id_matrik_ims`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bagian`
--
ALTER TABLE `bagian`
  MODIFY `id_bagian` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `bidang`
--
ALTER TABLE `bidang`
  MODIFY `id_bidang` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `daftar_isi`
--
ALTER TABLE `daftar_isi`
  MODIFY `id_menu` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `dokumentevident`
--
ALTER TABLE `dokumentevident`
  MODIFY `id_dokumentevident` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `dokumentik`
--
ALTER TABLE `dokumentik`
  MODIFY `id_dokumentik` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `dokumentipm`
--
ALTER TABLE `dokumentipm`
  MODIFY `id_dokumentipm` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `jabatan`
--
ALTER TABLE `jabatan`
  MODIFY `id_jabatan` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=147;

--
-- AUTO_INCREMENT for table `nilai_standart`
--
ALTER TABLE `nilai_standart`
  MODIFY `id_nilai_standart` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `standart`
--
ALTER TABLE `standart`
  MODIFY `id_standart` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `tb_description_di`
--
ALTER TABLE `tb_description_di`
  MODIFY `id_description` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `tb_evident_di`
--
ALTER TABLE `tb_evident_di`
  MODIFY `id_evident_di` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tb_ik_di`
--
ALTER TABLE `tb_ik_di`
  MODIFY `id_ik_di` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tb_ipm_di`
--
ALTER TABLE `tb_ipm_di`
  MODIFY `id_ipm_di` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tb_matrik_ims`
--
ALTER TABLE `tb_matrik_ims`
  MODIFY `id_matrik_ims` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
