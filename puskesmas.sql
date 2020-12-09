-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 13, 2020 at 07:24 AM
-- Server version: 10.4.6-MariaDB
-- PHP Version: 7.3.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `puskesmas`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_bidang`
--

CREATE TABLE `tbl_bidang` (
  `id_bidang` int(3) NOT NULL,
  `nama_bidang` varchar(35) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_bidang`
--

INSERT INTO `tbl_bidang` (`id_bidang`, `nama_bidang`) VALUES
(1, 'Paramedis'),
(2, 'Apotek'),
(3, 'Administrasi'),
(5, 'Bendahara');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_dokter`
--

CREATE TABLE `tbl_dokter` (
  `kode_dokter` varchar(4) NOT NULL,
  `nama_dokter` varchar(30) NOT NULL,
  `jenis_kelamin` varchar(15) NOT NULL,
  `nomor_induk_dokter` varchar(20) NOT NULL,
  `tempat_lahir` varchar(30) NOT NULL,
  `tgl_lahir` varchar(10) NOT NULL,
  `alamat` varchar(50) NOT NULL,
  `id_poli` varchar(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_dokter`
--

INSERT INTO `tbl_dokter` (`kode_dokter`, `nama_dokter`, `jenis_kelamin`, `nomor_induk_dokter`, `tempat_lahir`, `tgl_lahir`, `alamat`, `id_poli`) VALUES
('A-01', 'Fitri', 'Laki-Laki', '4929029033291', 'Cirebon', '03-12-1989', 'Kalimalang', '4'),
('K-02', 'Sunarya', 'Laki-Laki', '71816828738790', 'Majalengka', '12-07-1977', 'Sukaluyu', '2'),
('K-12', 'Karsa', 'Laki-Laki', '71816838738718', 'Sidoarjo', '15-06-1982', 'Adiarsa', '1'),
('S-23', 'Samsul', 'Laki-Laki', '48916838738757', 'CIimahi', '26-11-1993', 'Ciraos', '1'),
('S-24', 'Maryudi', 'Laki-Laki', '71816838888718', 'Bandung', '06-12-1982', 'Santiong', '2');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_hak_akses`
--

CREATE TABLE `tbl_hak_akses` (
  `id` int(2) NOT NULL,
  `id_user_level` int(11) NOT NULL,
  `id_menu` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_hak_akses`
--

INSERT INTO `tbl_hak_akses` (`id`, `id_user_level`, `id_menu`) VALUES
(19, 1, 3),
(30, 1, 2),
(31, 1, 10),
(32, 1, 11),
(33, 1, 12),
(34, 1, 13),
(35, 1, 14),
(36, 1, 15),
(37, 1, 16),
(38, 1, 17),
(39, 1, 18),
(40, 1, 19),
(41, 1, 20),
(42, 1, 21),
(43, 1, 1),
(44, 1, 22),
(45, 1, 23),
(46, 1, 24),
(47, 1, 9),
(48, 1, 25),
(49, 1, 26),
(50, 1, 27),
(51, 1, 28),
(52, 1, 29),
(53, 1, 30),
(54, 1, 31),
(55, 1, 32),
(56, 1, 33),
(57, 1, 34),
(58, 1, 35),
(59, 1, 36),
(60, 1, 40),
(61, 1, 37),
(62, 1, 38),
(63, 1, 39),
(64, 1, 41),
(65, 1, 42),
(66, 1, 43),
(67, 1, 44),
(68, 1, 46),
(72, 2, 21),
(74, 2, 23),
(76, 1, 47),
(77, 1, 48),
(78, 1, 49),
(79, 3, 33),
(80, 3, 36),
(81, 1, 50),
(82, 3, 50),
(87, 5, 29),
(88, 3, 1),
(89, 3, 29),
(90, 3, 31),
(91, 3, 27);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_jabatan`
--

CREATE TABLE `tbl_jabatan` (
  `id_jabatan` int(2) NOT NULL,
  `nama_jabatan` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_jabatan`
--

INSERT INTO `tbl_jabatan` (`id_jabatan`, `nama_jabatan`) VALUES
(1, 'Staff Apotek'),
(2, 'Staff Administrasi'),
(3, 'Kepala Puskesmas'),
(4, 'Staff Paramedis');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_jadwal_praktek_dokter`
--

CREATE TABLE `tbl_jadwal_praktek_dokter` (
  `id_jadwal` int(2) NOT NULL,
  `kode_dokter` varchar(4) NOT NULL,
  `hari` varchar(13) NOT NULL,
  `jam_mulai` varchar(13) NOT NULL,
  `jam_selesai` varchar(13) NOT NULL,
  `id_poli` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_jadwal_praktek_dokter`
--

INSERT INTO `tbl_jadwal_praktek_dokter` (`id_jadwal`, `kode_dokter`, `hari`, `jam_mulai`, `jam_selesai`, `id_poli`) VALUES
(6, 'K-02', 'Rabu', '14.30', '16.30', 2),
(7, 'S-23', 'Senin', '07.30', '11.30', 1),
(8, 'S-24', 'Sabtu', '07.30', '11.00', 2),
(9, 'K-12', 'Kamis', '08.00', '11.00', 1),
(10, 'A-01', 'Jumat', '08.00', '11.00', 4);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_menu`
--

CREATE TABLE `tbl_menu` (
  `id_menu` int(3) NOT NULL,
  `title` varchar(50) NOT NULL,
  `url` varchar(30) NOT NULL,
  `icon` varchar(30) NOT NULL,
  `is_main_menu` int(3) NOT NULL,
  `is_aktif` enum('y','n') NOT NULL COMMENT 'y=yes,n=no'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_menu`
--

INSERT INTO `tbl_menu` (`id_menu`, `title`, `url`, `icon`, `is_main_menu`, `is_aktif`) VALUES
(1, 'DATA DOKTER', 'kelolamenu', 'fa fa-server', 0, 'n'),
(2, 'KELOLA PENGGUNA', 'user', 'fa fa-user-o', 0, 'y'),
(21, 'DATA PEGAWAI', 'pegawai', 'fa fa-user-circle', 0, 'y'),
(27, 'DATA DOKTER', 'dokter', 'fa fa-graduation-cap', 0, 'y'),
(29, 'JADWAL PRAKTEK DOKTER', 'jadwalpraktek', 'fa fa-calendar', 0, 'y'),
(31, 'DATA PASIEN', 'pasien', 'fa fa-user', 0, 'y');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_pasien`
--

CREATE TABLE `tbl_pasien` (
  `no_rekamedis` char(6) NOT NULL,
  `no_ktp` varchar(16) NOT NULL,
  `no_bpjs` varchar(20) NOT NULL,
  `nama_pasien` varchar(30) NOT NULL,
  `jenis_kelamin` enum('L','P') NOT NULL,
  `tempat_lahir` varchar(30) NOT NULL,
  `tanggal_lahir` varchar(10) NOT NULL,
  `alamat` text NOT NULL,
  `status_pasien` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_pasien`
--

INSERT INTO `tbl_pasien` (`no_rekamedis`, `no_ktp`, `no_bpjs`, `nama_pasien`, `jenis_kelamin`, `tempat_lahir`, `tanggal_lahir`, `alamat`, `status_pasien`) VALUES
('000001', '3215021831771822', '28287188196112', 'Niko Rahmad', 'L', 'Bandung', '29-03-1992', 'Serang', 'BPJS'),
('000004', '3215089831777722', '28287188196139', 'Yulia', 'P', 'Cicaheum', '06-07-1994', 'Serdang', 'BPJS'),
('000006', '3015021899271822', '28287134996145', 'Maulida Fitria', 'P', 'Karawang', '26-12-1984', 'Jatirasa', 'BPJS'),
('000007', '3218291973381903', '28287188096166', 'Rian', 'L', 'Kuningan', '18-07-1978', 'Kosambi', 'BPJS'),
('000008', '3349021991771822', '-', 'Maulana', 'L', 'Jakarta', '07-12-1996', 'Cigondewah', 'Umum');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_pegawai`
--

CREATE TABLE `tbl_pegawai` (
  `id_pegawai` varchar(20) NOT NULL,
  `nama_pegawai` varchar(50) NOT NULL,
  `jenis_kelamin` varchar(20) NOT NULL,
  `npwp` varchar(25) NOT NULL,
  `tempat_lahir` varchar(30) NOT NULL,
  `tanggal_lahir` varchar(10) NOT NULL,
  `id_jabatan` int(2) NOT NULL,
  `id_bidang` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_pegawai`
--

INSERT INTO `tbl_pegawai` (`id_pegawai`, `nama_pegawai`, `jenis_kelamin`, `npwp`, `tempat_lahir`, `tanggal_lahir`, `id_jabatan`, `id_bidang`) VALUES
('2838938338', 'Asop', 'Laki-Laki', '389389111834', 'Karawang', '14-07-1993', 2, 3),
('2838938393', 'Suhandi', 'Laki-Laki', '822872181136', 'Majalengka', '04-12-1988', 1, 2),
('2893894890', 'Fathrial Muhamad Hamdani', 'Laki-Laki', '889076212345', 'Majalengka', '07-12-2000', 3, 1),
('3838918917', 'Tati Herawati', 'Perempuan', '958593882899', 'Bandung', '02-12-1985', 2, 3);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_pendaftaran`
--

CREATE TABLE `tbl_pendaftaran` (
  `no_registrasi` varchar(4) NOT NULL,
  `no_rawat` varchar(18) NOT NULL,
  `no_rekamedis` varchar(6) NOT NULL,
  `tanggal_daftar` date NOT NULL,
  `kode_dokter_penanggung_jawab` varchar(4) NOT NULL,
  `id_poli` varchar(2) NOT NULL,
  `nama_penanggung_jawab` varchar(30) NOT NULL,
  `hubungan_dengan_penanggung_jawab` varchar(30) NOT NULL,
  `alamat_penanggung_jawab` text NOT NULL,
  `status_pasien` varchar(10) NOT NULL,
  `no_bpjs` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_pendaftaran`
--

INSERT INTO `tbl_pendaftaran` (`no_registrasi`, `no_rawat`, `no_rekamedis`, `tanggal_daftar`, `kode_dokter_penanggung_jawab`, `id_poli`, `nama_penanggung_jawab`, `hubungan_dengan_penanggung_jawab`, `alamat_penanggung_jawab`, `status_pasien`, `no_bpjs`) VALUES
('0001', '2018-07-27-0001', '000002', '2018-07-27', 'S-23', '1', 'Suarez', 'Orang Tua', 'Barcelona', 'Umum', '-'),
('0002', '2018-07-27-0002', '000004', '2018-07-27', 'K-12', '2', 'Michelle', 'Saudara Kandung', 'Adiarsa', 'BPJS', '28287188196139'),
('0001', '2018-07-30-0001', '000005', '2018-07-30', 'K-12', '4', 'Arif', 'Saudara Kandung', 'Teljam', 'BPJS', '28287188196145');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_poli`
--

CREATE TABLE `tbl_poli` (
  `id_poli` int(2) NOT NULL,
  `nama_poli` varchar(40) NOT NULL,
  `ruang_poli` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_poli`
--

INSERT INTO `tbl_poli` (`id_poli`, `nama_poli`, `ruang_poli`) VALUES
(1, 'POLI GIGI', 'RUANG POLI GIGI'),
(2, 'POLI UMUM', 'RUANG POLI UMUM'),
(4, 'POLI KIA', 'RUANG POLI KIA');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_setting`
--

CREATE TABLE `tbl_setting` (
  `id_setting` int(11) NOT NULL,
  `nama_setting` varchar(50) NOT NULL,
  `value` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_setting`
--

INSERT INTO `tbl_setting` (`id_setting`, `nama_setting`, `value`) VALUES
(1, 'Tampil Menu', 'ya');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE `tbl_user` (
  `id_users` int(2) NOT NULL,
  `full_name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `images` text NOT NULL,
  `id_user_level` int(11) NOT NULL,
  `is_aktif` enum('y','n') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`id_users`, `full_name`, `email`, `password`, `images`, `id_user_level`, `is_aktif`) VALUES
(13, 'Fathrial muhamad hamdani', 'fathrialmuhamad@gmail.com', '$2y$04$5xXNEcrju9k9u4v0lvqZceWKLxYNw1T96ypzlE8IapowRJxdn3KuS', 'IMG_2113.JPG', 1, 'y'),
(14, 'admin', 'admin.puskesmas@gmail.com', '$2y$04$9hUhJPF5oTclexle/ZRIg.YuNnu2HkFYGLEeug8ggxd1nHNszgCEy', 'sample-pict-300x300-1.png', 1, 'y'),
(15, 'Dokter', 'dokter.puskesmas@gmail.com', '$2y$04$A7tGaincwSWGEyoDTR/agupAQrgR4IUbDQRCLmsodh9M0XqC.kKS6', 'sample-pict-300x300-11.png', 3, 'y'),
(16, 'Apoteker', 'apotek.puskesmas@gmail.com', '$2y$04$CAXqHDvbnje9BVarC2NmNOcbtRVdsxABqwAMCJBiYGoROHlZNTbtq', '', 4, 'y'),
(17, 'Pasien', 'pasien.puskesmas@gmail.com', '$2y$04$ELtYLVWYvHOCgrGoiKpiSegwmK.ZpNFd8XebYl/.tqWjnflskt2we', 'username-icon-png-and-vector-for-free-download-pngtree-username-png-512_512.png', 5, 'y');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user_level`
--

CREATE TABLE `tbl_user_level` (
  `id_user_level` int(2) NOT NULL,
  `nama_level` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_user_level`
--

INSERT INTO `tbl_user_level` (`id_user_level`, `nama_level`) VALUES
(1, 'Admin'),
(3, 'Dokter'),
(5, 'Pendaftaran');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_bidang`
--
ALTER TABLE `tbl_bidang`
  ADD PRIMARY KEY (`id_bidang`);

--
-- Indexes for table `tbl_dokter`
--
ALTER TABLE `tbl_dokter`
  ADD PRIMARY KEY (`kode_dokter`);

--
-- Indexes for table `tbl_hak_akses`
--
ALTER TABLE `tbl_hak_akses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_jabatan`
--
ALTER TABLE `tbl_jabatan`
  ADD PRIMARY KEY (`id_jabatan`);

--
-- Indexes for table `tbl_jadwal_praktek_dokter`
--
ALTER TABLE `tbl_jadwal_praktek_dokter`
  ADD PRIMARY KEY (`id_jadwal`);

--
-- Indexes for table `tbl_menu`
--
ALTER TABLE `tbl_menu`
  ADD PRIMARY KEY (`id_menu`);

--
-- Indexes for table `tbl_pasien`
--
ALTER TABLE `tbl_pasien`
  ADD PRIMARY KEY (`no_rekamedis`);

--
-- Indexes for table `tbl_pegawai`
--
ALTER TABLE `tbl_pegawai`
  ADD PRIMARY KEY (`id_pegawai`),
  ADD KEY `id_bidang` (`id_bidang`),
  ADD KEY `id_jabatan` (`id_jabatan`);

--
-- Indexes for table `tbl_pendaftaran`
--
ALTER TABLE `tbl_pendaftaran`
  ADD PRIMARY KEY (`no_rawat`);

--
-- Indexes for table `tbl_poli`
--
ALTER TABLE `tbl_poli`
  ADD PRIMARY KEY (`id_poli`);

--
-- Indexes for table `tbl_setting`
--
ALTER TABLE `tbl_setting`
  ADD PRIMARY KEY (`id_setting`);

--
-- Indexes for table `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`id_users`);

--
-- Indexes for table `tbl_user_level`
--
ALTER TABLE `tbl_user_level`
  ADD PRIMARY KEY (`id_user_level`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_bidang`
--
ALTER TABLE `tbl_bidang`
  MODIFY `id_bidang` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tbl_hak_akses`
--
ALTER TABLE `tbl_hak_akses`
  MODIFY `id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=92;

--
-- AUTO_INCREMENT for table `tbl_jabatan`
--
ALTER TABLE `tbl_jabatan`
  MODIFY `id_jabatan` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_jadwal_praktek_dokter`
--
ALTER TABLE `tbl_jadwal_praktek_dokter`
  MODIFY `id_jadwal` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tbl_menu`
--
ALTER TABLE `tbl_menu`
  MODIFY `id_menu` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `tbl_poli`
--
ALTER TABLE `tbl_poli`
  MODIFY `id_poli` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_setting`
--
ALTER TABLE `tbl_setting`
  MODIFY `id_setting` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `id_users` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `tbl_user_level`
--
ALTER TABLE `tbl_user_level`
  MODIFY `id_user_level` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
