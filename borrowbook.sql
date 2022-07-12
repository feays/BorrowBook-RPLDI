-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 12, 2022 at 04:04 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `borrowbook`
--

-- --------------------------------------------------------

--
-- Table structure for table `data_buku`
--

CREATE TABLE `data_buku` (
  `id_buku` int(11) NOT NULL,
  `nama_buku` varchar(50) NOT NULL,
  `kategori` varchar(20) NOT NULL,
  `pengarang` varchar(20) NOT NULL,
  `tahun` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `data_buku`
--

INSERT INTO `data_buku` (`id_buku`, `nama_buku`, `kategori`, `pengarang`, `tahun`) VALUES
(1, 'Akuntansi Pengantar 1', 'Ekonomi', 'Supardi', '2009'),
(2, 'Kesehjateraan Sosial', 'Soshum', 'Isbandi Rukminto Adi', '2015'),
(3, 'Kuasa Wanita Jawa', 'Umum', 'Christina S Handayan', '2011');

-- --------------------------------------------------------

--
-- Table structure for table `data_kembali`
--

CREATE TABLE `data_kembali` (
  `id_kembali` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `kategori` varchar(250) NOT NULL,
  `kode_buku` int(250) NOT NULL,
  `judul_buku` varchar(500) NOT NULL,
  `tanggal_kembali` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `data_kembali`
--

INSERT INTO `data_kembali` (`id_kembali`, `username`, `kategori`, `kode_buku`, `judul_buku`, `tanggal_kembali`) VALUES
(1, 'daun', 'Umum', 3, 'Kuasa Wanita Jawa', '2022-11-05');

-- --------------------------------------------------------

--
-- Table structure for table `data_pinjam`
--

CREATE TABLE `data_pinjam` (
  `id_pinjam` int(250) NOT NULL,
  `username` varchar(100) NOT NULL,
  `kategori` varchar(100) NOT NULL,
  `kode_buku` int(100) NOT NULL,
  `judul_buku` varchar(100) NOT NULL,
  `tgl` date NOT NULL,
  `durasi` int(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `data_pinjam`
--

INSERT INTO `data_pinjam` (`id_pinjam`, `username`, `kategori`, `kode_buku`, `judul_buku`, `tgl`, `durasi`) VALUES
(1, 'daun', 'Umum', 3, 'Kuasa Wanita Jawa', '2022-11-01', 7),
(2, 'larasati', 'Ekonomi', 1, 'Akuntansi Pengantar 1', '2022-10-04', 20);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id_user` int(11) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `id_card` varchar(16) NOT NULL,
  `email` varchar(50) NOT NULL,
  `no_hp` varchar(20) NOT NULL,
  `jenis_anggota` varchar(16) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id_user`, `username`, `password`, `nama`, `id_card`, `email`, `no_hp`, `jenis_anggota`) VALUES
(1, 'daun', 'jeruk', 'Daun', '1234321', 'daun@test.com', '081234321', 'Manager'),
(2, 'larasati', 'laras', 'Larasati', '1301180098', 'laras@test.com', '082302406770', 'Manager'),
(3, 'febri', '123456', 'Febriyananda Pratama Herawan', '1301180027', 'febri@test.com', '0812345643', 'Manager'),
(4, 'visit', 'visitor', 'Visitor', '1212121', 'vst@test.com', '082302406123', 'Pengunjung');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `data_buku`
--
ALTER TABLE `data_buku`
  ADD PRIMARY KEY (`id_buku`);

--
-- Indexes for table `data_kembali`
--
ALTER TABLE `data_kembali`
  ADD PRIMARY KEY (`id_kembali`);

--
-- Indexes for table `data_pinjam`
--
ALTER TABLE `data_pinjam`
  ADD PRIMARY KEY (`id_pinjam`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id_user`),
  ADD UNIQUE KEY `id_card` (`id_card`),
  ADD KEY `nama` (`nama`),
  ADD KEY `email` (`email`),
  ADD KEY `no_hp` (`no_hp`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `data_buku`
--
ALTER TABLE `data_buku`
  MODIFY `id_buku` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `data_kembali`
--
ALTER TABLE `data_kembali`
  MODIFY `id_kembali` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `data_pinjam`
--
ALTER TABLE `data_pinjam`
  MODIFY `id_pinjam` int(250) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
