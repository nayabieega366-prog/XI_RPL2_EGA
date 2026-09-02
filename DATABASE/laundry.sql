-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 02, 2026 at 02:40 AM
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
-- Database: `laundry`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(20) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `hak_akses` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `hak_akses`) VALUES
(1, 'admin', '123', 1),
(2, 'admin1', '202cb962ac59075b964b07152d234b70', 2),
(3, 'admin2', '81dc9bdb52d04dc20036dbd8313ed055', 1);

-- --------------------------------------------------------

--
-- Table structure for table `harga`
--

CREATE TABLE `harga` (
  `harga_per_kilo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `harga`
--

INSERT INTO `harga` (`harga_per_kilo`) VALUES
(8000);

-- --------------------------------------------------------

--
-- Table structure for table `pakaian`
--

CREATE TABLE `pakaian` (
  `pakaian_id` int(11) NOT NULL,
  `transaksi_id` int(11) NOT NULL,
  `pakaian_jenis` varchar(255) NOT NULL,
  `pakaian_jumlah` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pakaian`
--

INSERT INTO `pakaian` (`pakaian_id`, `transaksi_id`, `pakaian_jenis`, `pakaian_jumlah`) VALUES
(1, 6, 'baju', 5),
(2, 1, 'celana', 6),
(3, 2, 'jersey', 1),
(4, 3, 'kaos kaki', 2),
(5, 4, 'sarung tangan', 6),
(6, 5, 'masker wajah', 3),
(7, 7, 'selendang', 6),
(8, 10, 'syal', 12),
(9, 8, 'bandana', 15),
(10, 9, 'topi', 6),
(11, 11, 'kemeja panjang', 8),
(12, 12, 'kemeja', 9),
(13, 13, 'celana pendek', 10),
(14, 14, 'sweeter', 3),
(15, 15, 'jaket', 20),
(16, 7, 'baju tidur', 9),
(17, 2, 'kaos panjang', 10),
(18, 3, 'kaos', 5),
(19, 2, 'jeans', 7),
(20, 1, 'rompi', 7);

-- --------------------------------------------------------

--
-- Table structure for table `pelanggan`
--

CREATE TABLE `pelanggan` (
  `pelanggan_id` int(11) NOT NULL,
  `pelanggan_nama` varchar(255) NOT NULL,
  `pelanggan_hp` varchar(20) NOT NULL,
  `pelanggan_alamat` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pelanggan`
--

INSERT INTO `pelanggan` (`pelanggan_id`, `pelanggan_nama`, `pelanggan_hp`, `pelanggan_alamat`) VALUES
(1, 'gilang', '0879', 'sasak'),
(2, 'radit', '019298', 'boja'),
(3, 'abdul', '05674', 'limbangan'),
(4, 'hapis', '0452332', 'meteseh'),
(5, 'fatah', '09875', 'campurejo'),
(6, 'ahmat', '096423', 'cangkiran'),
(7, 'zaki', '0973256', 'semarang'),
(8, 'satria', '025417', 'salamsari'),
(9, 'ega', '05463', 'ngabean'),
(10, 'choirul', '03415', 'trayu');

-- --------------------------------------------------------

--
-- Table structure for table `transaksi`
--

CREATE TABLE `transaksi` (
  `transaksi_id` int(11) NOT NULL,
  `transaksi_tgl` date NOT NULL,
  `pelanggan_id` int(11) NOT NULL,
  `transaksi_harga` int(11) NOT NULL,
  `transaksi_berat` int(11) NOT NULL,
  `transaksi_tgl_selesai` date NOT NULL,
  `transaksi_status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `transaksi`
--

INSERT INTO `transaksi` (`transaksi_id`, `transaksi_tgl`, `pelanggan_id`, `transaksi_harga`, `transaksi_berat`, `transaksi_tgl_selesai`, `transaksi_status`) VALUES
(1, '2016-09-01', 1, 8000, 1, '2026-09-02', 1),
(2, '2026-09-02', 2, 32000, 4, '2026-09-03', 2),
(3, '2026-09-03', 3, 40000, 5, '2026-09-04', 0),
(4, '2026-09-04', 4, 24000, 3, '2026-09-08', 2),
(5, '2026-09-02', 5, 24000, 3, '2026-09-04', 2),
(6, '2026-09-15', 6, 8000, 1, '2026-09-18', 1),
(7, '2026-09-05', 7, 16000, 2, '2026-09-07', 1),
(8, '2026-09-01', 8, 32000, 4, '2026-09-06', 1),
(9, '2026-09-03', 9, 40000, 5, '2026-09-05', 2),
(10, '2026-09-02', 10, 8000, 1, '2026-09-15', 0),
(11, '2026-09-02', 11, 16000, 2, '2026-09-03', 0),
(12, '2026-09-02', 12, 24000, 3, '2026-09-03', 0),
(13, '2026-09-10', 13, 40000, 5, '2026-09-17', 2),
(14, '2026-09-08', 14, 32000, 4, '2026-09-07', 2),
(15, '2026-09-10', 15, 8000, 1, '2026-09-11', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pakaian`
--
ALTER TABLE `pakaian`
  ADD PRIMARY KEY (`pakaian_id`);

--
-- Indexes for table `pelanggan`
--
ALTER TABLE `pelanggan`
  ADD PRIMARY KEY (`pelanggan_id`);

--
-- Indexes for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`transaksi_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `pakaian`
--
ALTER TABLE `pakaian`
  MODIFY `pakaian_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `pelanggan`
--
ALTER TABLE `pelanggan`
  MODIFY `pelanggan_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `transaksi`
--
ALTER TABLE `transaksi`
  MODIFY `transaksi_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
