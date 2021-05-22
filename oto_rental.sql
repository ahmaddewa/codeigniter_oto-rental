-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 22, 2021 at 09:38 AM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 7.4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `oto_rental`
--

-- --------------------------------------------------------

--
-- Table structure for table `mobil`
--

CREATE TABLE `mobil` (
  `id` int(11) NOT NULL,
  `nama_mobil` varchar(20) NOT NULL,
  `nopol` varchar(10) NOT NULL,
  `warna` varchar(20) NOT NULL,
  `jumlah_kursi` int(11) NOT NULL,
  `tahun` int(11) NOT NULL,
  `merk` varchar(20) NOT NULL,
  `gambar` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `mobil`
--

INSERT INTO `mobil` (`id`, `nama_mobil`, `nopol`, `warna`, `jumlah_kursi`, `tahun`, `merk`, `gambar`) VALUES
(23, 'Taruna', 'N 1678 SU', 'Silver', 7, 1999, 'Daihatsu', 'taruna_1.jpg'),
(24, 'Avanza', 'N 1789 SK', 'Hitam', 7, 2020, 'Toyota', 'avanza.jpg'),
(25, 'Xenia', 'N 2020 SO', 'Silver', 7, 2020, 'Daihatsu', 'xenia.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `pegawai`
--

CREATE TABLE `pegawai` (
  `id_pegawai` int(11) NOT NULL,
  `username` varchar(16) NOT NULL,
  `password` varchar(50) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pegawai`
--

INSERT INTO `pegawai` (`id_pegawai`, `username`, `password`, `nama`, `email`) VALUES
(2, 'dewa', '3b31aae2787818ba209950b2edb35e01', 'Ahmad Dewa Fitrah', 'ahmaddewa@otorental.com'),
(7, 'ju4n', 'e10adc3949ba59abbe56e057f20f883e', 'Ahmad Juandika', 'ahmadjuandika@otorental.com'),
(8, 'r1ski', 'e10adc3949ba59abbe56e057f20f883e', 'Ahmad Riski', 'ahmadriski@otorental.com'),
(9, 'edit', 'e10adc3949ba59abbe56e057f20f883e', 'Editia', 'edit@otorental.com'),
(10, 'admin', '21232f297a57a5a743894a0e4a801fc3', 'admin', 'admin@otorental.com'),
(11, 'rava', '427a803782fbe50f42d2c335f95a59ce', 'ravaj', 'ravaj@otorental.com');

-- --------------------------------------------------------

--
-- Table structure for table `penyewa`
--

CREATE TABLE `penyewa` (
  `id_penyewa` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `no_hp` varchar(15) NOT NULL,
  `jenis_kelamin` enum('Laki','Perempuan') NOT NULL,
  `alamat_penyewa` varchar(200) NOT NULL,
  `mobil` varchar(20) NOT NULL,
  `perjalanan` varchar(100) NOT NULL,
  `jenis_bayar` enum('Cash','Kredit') NOT NULL,
  `harga` int(11) NOT NULL,
  `foto_ktp` varchar(200) NOT NULL,
  `tgl_pinjam` date NOT NULL,
  `tgl_kembali` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `penyewa`
--

INSERT INTO `penyewa` (`id_penyewa`, `nama`, `no_hp`, `jenis_kelamin`, `alamat_penyewa`, `mobil`, `perjalanan`, `jenis_bayar`, `harga`, `foto_ktp`, `tgl_pinjam`, `tgl_kembali`) VALUES
(14, 'Safila Cahaya Restia', '0812783126583', 'Perempuan', 'Jl Geneng, Prigen, Pasuruan', 'Taruna', 'Malang - Denpasar', 'Cash', 2000000, 'mqdefault.jpg', '2021-05-22', '2021-05-23'),
(15, 'Rava Julian', '08123217512', 'Laki', 'Jl Pabrik Es Kasri, Pandaan, Pasuruan', 'Avanza', 'Malang - Banyuwangi', 'Kredit', 2000000, 'download.jpg', '2021-05-24', '2021-05-25');

-- --------------------------------------------------------

--
-- Table structure for table `sopir`
--

CREATE TABLE `sopir` (
  `id` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `no_hp` varchar(20) NOT NULL,
  `jenis_kelamin` enum('Laki','Perempuan') NOT NULL,
  `alamat` varchar(200) NOT NULL,
  `pengalaman` varchar(200) NOT NULL,
  `foto` varchar(200) NOT NULL,
  `no_ktp` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sopir`
--

INSERT INTO `sopir` (`id`, `nama`, `no_hp`, `jenis_kelamin`, `alamat`, `pengalaman`, `foto`, `no_ktp`) VALUES
(3, 'Rojali', '08123871283', 'Laki', 'Buduran, Sidoarjo', '2 Tahun', 'download.png', '350101011');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `mobil`
--
ALTER TABLE `mobil`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pegawai`
--
ALTER TABLE `pegawai`
  ADD PRIMARY KEY (`id_pegawai`);

--
-- Indexes for table `penyewa`
--
ALTER TABLE `penyewa`
  ADD PRIMARY KEY (`id_penyewa`);

--
-- Indexes for table `sopir`
--
ALTER TABLE `sopir`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `mobil`
--
ALTER TABLE `mobil`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `pegawai`
--
ALTER TABLE `pegawai`
  MODIFY `id_pegawai` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `penyewa`
--
ALTER TABLE `penyewa`
  MODIFY `id_penyewa` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `sopir`
--
ALTER TABLE `sopir`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
