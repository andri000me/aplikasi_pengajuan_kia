-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 04, 2020 at 07:06 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.2.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ayu`
--

-- --------------------------------------------------------

--
-- Table structure for table `data_agama`
--

CREATE TABLE `data_agama` (
  `id_agama` int(11) NOT NULL,
  `agama` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `data_agama`
--

INSERT INTO `data_agama` (`id_agama`, `agama`) VALUES
(1, 'islam'),
(2, 'kristen'),
(3, 'budha'),
(4, 'hindu'),
(5, 'konghucu');

-- --------------------------------------------------------

--
-- Table structure for table `data_anak`
--

CREATE TABLE `data_anak` (
  `id_anak` int(11) NOT NULL,
  `id_dokter` int(11) NOT NULL,
  `nama_klinik` varchar(100) NOT NULL,
  `nama_anak` varchar(100) NOT NULL,
  `tempat_lahir` varchar(50) NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `jenis_kelamin` enum('pria','wanita') NOT NULL,
  `usia` int(11) NOT NULL,
  `kode_unik` varchar(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `data_anak`
--

INSERT INTO `data_anak` (`id_anak`, `id_dokter`, `nama_klinik`, `nama_anak`, `tempat_lahir`, `tanggal_lahir`, `jenis_kelamin`, `usia`, `kode_unik`) VALUES
(3, 2, 'klinik cahaya', 'muhammad riki utama', 'jakarta', '2020-01-01', 'pria', 1, '9612696'),
(4, 3, 'dukun beranak', 'riantoro', 'jakarta', '2020-01-11', 'wanita', 6, '7687985');

-- --------------------------------------------------------

--
-- Table structure for table `data_darah`
--

CREATE TABLE `data_darah` (
  `id_darah` int(11) NOT NULL,
  `golongan_darah` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `data_darah`
--

INSERT INTO `data_darah` (`id_darah`, `golongan_darah`) VALUES
(1, 'A'),
(2, 'B'),
(3, 'AB'),
(4, 'O'),
(5, 'Tidak Mengetahui');

-- --------------------------------------------------------

--
-- Table structure for table `data_dokter`
--

CREATE TABLE `data_dokter` (
  `id_dokter` int(11) NOT NULL,
  `nama_dokter` varchar(100) NOT NULL,
  `nip_dokter` varchar(16) NOT NULL,
  `jenis_kelamin` enum('pria','wanita') NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `alamat` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `data_dokter`
--

INSERT INTO `data_dokter` (`id_dokter`, `nama_dokter`, `nip_dokter`, `jenis_kelamin`, `tanggal_lahir`, `alamat`) VALUES
(1, 'muhammad romadhon', '1234567891234567', 'pria', '2020-01-11', 'jalan mutiara raya'),
(2, 'cherry citra', '1234567890987654', 'pria', '2020-01-08', 'jalan raden'),
(3, 'rohman', '1234567890123456', 'pria', '2020-01-11', 'wdewdwd');

-- --------------------------------------------------------

--
-- Table structure for table `data_kia`
--

CREATE TABLE `data_kia` (
  `id_kis` int(11) NOT NULL,
  `email` varchar(100) NOT NULL,
  `kode_anak` varchar(8) NOT NULL,
  `id_orangtua` int(16) NOT NULL,
  `nik_bayi` varchar(100) NOT NULL,
  `agama` varchar(20) NOT NULL,
  `gol_darah` varchar(2) NOT NULL,
  `usia` int(11) NOT NULL,
  `photo_anak` varchar(250) NOT NULL,
  `photo_kk` varchar(250) NOT NULL,
  `photo_akta_kelahiran` varchar(250) NOT NULL,
  `photo_ktp_ayah` varchar(250) NOT NULL,
  `photo_ktp_ibu` varchar(250) NOT NULL,
  `tanggal_pengajuan` date NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `data_kia`
--

INSERT INTO `data_kia` (`id_kis`, `email`, `kode_anak`, `id_orangtua`, `nik_bayi`, `agama`, `gol_darah`, `usia`, `photo_anak`, `photo_kk`, `photo_akta_kelahiran`, `photo_ktp_ayah`, `photo_ktp_ibu`, `tanggal_pengajuan`, `status`) VALUES
(6, 'jonoganteng@gmail.com', '7687985', 4, '2321432536457657', 'budha', 'AB', 1, 'WIN_20200203_23_45_50_Pro.jpg', 'WIN_20200203_23_45_50_Pro.jpg', 'WIN_20200203_23_45_50_Pro1.jpg', 'WIN_20200203_23_45_50_Pro2.jpg', 'WIN_20200203_23_45_50_Pro3.jpg', '0000-00-00', 0);

-- --------------------------------------------------------

--
-- Table structure for table `data_orangtua`
--

CREATE TABLE `data_orangtua` (
  `id_orangtua` int(255) NOT NULL,
  `email` varchar(100) NOT NULL,
  `nik_ayah` varchar(16) NOT NULL,
  `nama_ayah` varchar(50) NOT NULL,
  `nik_ibu` varchar(16) NOT NULL,
  `nama_ibu` varchar(50) NOT NULL,
  `alamat_lengkap` text NOT NULL,
  `pekerjaan` varchar(255) NOT NULL,
  `agama` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `data_orangtua`
--

INSERT INTO `data_orangtua` (`id_orangtua`, `email`, `nik_ayah`, `nama_ayah`, `nik_ibu`, `nama_ibu`, `alamat_lengkap`, `pekerjaan`, `agama`) VALUES
(3, 'anjani@gmail.com', '1234567890123465', 'soparjo', '1234567890987654', 'anah', 'cilacap', 'buruh', 'islam'),
(4, 'jonoganteng@gmail.com', '7654324152637489', 'indra wibowo', '8475648392837465', 'intan mutiara', 'jakrta tebet', 'karyawan swasta', 'islam');

-- --------------------------------------------------------

--
-- Table structure for table `data_users`
--

CREATE TABLE `data_users` (
  `id_user` int(255) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `ktp` varchar(16) NOT NULL,
  `email` varchar(100) NOT NULL,
  `username` varchar(32) NOT NULL,
  `password` varchar(64) NOT NULL,
  `whatsapp` varchar(14) NOT NULL,
  `akses_level` int(20) NOT NULL,
  `tanggal_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `data_users`
--

INSERT INTO `data_users` (`id_user`, `nama`, `ktp`, `email`, `username`, `password`, `whatsapp`, `akses_level`, `tanggal_update`) VALUES
(4, 'superadmin', '', 'superadmin@gmail.com', 'superadmin', '17c4520f6cfd1ab53d8745e84681eb49', '', 1, '2020-01-14 17:00:00'),
(5, 'Perugas Rumah sakit', '', 'petugasrumahsakit@gmail.com', 'petugas rumah sakit', 'ebed0917750034bb033f4fc2321dbc2d', '', 2, '2020-01-14 20:19:12'),
(6, 'perugas kelurahan', '', 'petugaskelurahan@gmail.com', 'petugas kelurahan', '56f6189cf064a8736e3af760c8f061ce', '', 3, '2020-01-14 20:20:21'),
(7, 'diskupcapil', '', 'diskupcapil@gmail.com', 'diskupcapil', '3afdffb666a8d51d72143255227ef9d2', '', 4, '2020-01-14 20:21:19'),
(8, 'user', '', 'user@gmail.com', 'user', 'b5b73fae0d87d8b4e2573105f8fbe7bc', '', 5, '2020-01-14 20:22:24'),
(9, 'jono', '7654324152637489', 'jonoganteng@gmail.com', 'jonoganteng', '4e704957c887599668f1b1c9d897c40f', '', 5, '2020-02-04 17:17:45'),
(10, 'jini', '7364746486383684', 'jinicantik@gmail.com', 'jinicantik', '250aea522cb5889e7c4a7a9c421eafcb', '081217388495', 5, '2020-01-24 19:01:31'),
(11, 'rinjani amalia', '8347328957248574', 'rinjanicantik@gmail.com', 'rinjanicantik', '82a15bdb6dc9f3c7abb54aa6a7403029', '0817326454757', 5, '2020-01-24 19:24:05'),
(12, 'anjani', '8237198347329524', 'anjani@gmail.com', 'anjani', '15dcb3093711564b7b7e6e9be95a9968', '0939483948', 5, '2020-01-24 19:28:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `data_agama`
--
ALTER TABLE `data_agama`
  ADD PRIMARY KEY (`id_agama`);

--
-- Indexes for table `data_anak`
--
ALTER TABLE `data_anak`
  ADD PRIMARY KEY (`id_anak`);

--
-- Indexes for table `data_darah`
--
ALTER TABLE `data_darah`
  ADD PRIMARY KEY (`id_darah`);

--
-- Indexes for table `data_dokter`
--
ALTER TABLE `data_dokter`
  ADD PRIMARY KEY (`id_dokter`);

--
-- Indexes for table `data_kia`
--
ALTER TABLE `data_kia`
  ADD PRIMARY KEY (`id_kis`);

--
-- Indexes for table `data_orangtua`
--
ALTER TABLE `data_orangtua`
  ADD PRIMARY KEY (`id_orangtua`);

--
-- Indexes for table `data_users`
--
ALTER TABLE `data_users`
  ADD PRIMARY KEY (`id_user`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `data_agama`
--
ALTER TABLE `data_agama`
  MODIFY `id_agama` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `data_anak`
--
ALTER TABLE `data_anak`
  MODIFY `id_anak` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `data_darah`
--
ALTER TABLE `data_darah`
  MODIFY `id_darah` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `data_dokter`
--
ALTER TABLE `data_dokter`
  MODIFY `id_dokter` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `data_kia`
--
ALTER TABLE `data_kia`
  MODIFY `id_kis` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `data_orangtua`
--
ALTER TABLE `data_orangtua`
  MODIFY `id_orangtua` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `data_users`
--
ALTER TABLE `data_users`
  MODIFY `id_user` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
