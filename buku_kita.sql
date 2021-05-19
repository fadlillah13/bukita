-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 19, 2021 at 07:11 PM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 5.6.40

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `buku_kita`
--

-- --------------------------------------------------------

--
-- Table structure for table `buku`
--

CREATE TABLE `buku` (
  `id` int(11) NOT NULL,
  `judul` varchar(100) NOT NULL,
  `penerbit` varchar(50) DEFAULT NULL,
  `pengarang` varchar(50) DEFAULT NULL,
  `tahun` varchar(4) DEFAULT NULL,
  `kategori_id` int(11) DEFAULT NULL,
  `harga` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `buku`
--

INSERT INTO `buku` (`id`, `judul`, `penerbit`, `pengarang`, `tahun`, `kategori_id`, `harga`) VALUES
(4, 'Firebase Membangun Aplikasi Berbasis Android', 'Andi Pabliser', 'Rosyana Fitria Purnomo, Onno W. Purbo Dan RZ. Abd.', '2020', 64, 57000),
(5, 'Cloud Computing, Manajemen dan Perencanaan Kapasitas', 'Andi Pabliser', 'Riko Herwanto, Onno W. Purbo & RZ. Abd. Aziz', '2020', 59, 57000),
(6, 'IPv6 Fondasi Internet Masa Depan', 'Andi Pabliser', 'Onno W Purbo, Raharjo & Sarujih', '2016', 59, 79500),
(7, 'Bongkar Rahasia OpenBTS Untuk Jaringan Operator Seluler', 'Andi Pabliser', 'Onno W Purbo', '2013', 59, 66500),
(8, 'Text Mining, Analisis MedSos, Kekuatan Brand Dan Intelijen Di Internet', 'Andi Pabliser', 'Onno W Purbo', '2019', 64, 52000),
(9, 'Sistem Operasi, Konsep Dan Membuat Linux OpenWRT Dan ROM Android', 'Andi Pabliser', 'Onno W Purbo', '2019', 64, 118000),
(10, 'IPv6 Untuk Mendukung Operasi Jaringan Dan Domain Name System', 'Andi Pabliser', 'Onno W Purbo', '2019', 59, 90000),
(11, 'Internet-TCPp Dan Implementasi', 'Andi Pabliser', 'Onno W Purbo', '2018', 59, 97500),
(12, 'Buku pintar internet teknologi e-learning berbasis php dan mysql ', 'Elexmedia komputindo', 'Onno W Purbo', '2002', 64, 50000),
(13, 'Keamanan jaringan internet', 'Elexmedia komputindo', 'Onno W Purbo', '2000', 60, 45500),
(14, 'Hacking Streaming', 'Elexmedia komputindo', 'Jordan Andrean Onno W. Purbo Andri Johandri ', '2015', 60, 24500),
(15, 'Linux Redhad : Praktis dan mudah untuk dipelajari', 'Elexmedia komputindo', 'Onno W Purbo', '2000', 65, 45000),
(16, 'pegangan internet wireless dan hotspot  ', 'Elexmedia komputindo', 'Onno W Purbo', '2006', 59, 25000);

-- --------------------------------------------------------

--
-- Table structure for table `kategori`
--

CREATE TABLE `kategori` (
  `id` int(11) NOT NULL,
  `nama_kategori` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kategori`
--

INSERT INTO `kategori` (`id`, `nama_kategori`) VALUES
(59, 'Jaringan'),
(60, 'Keamanan Siber'),
(61, 'Web Developer'),
(62, 'Web Design'),
(63, 'Multimedia'),
(64, 'Program'),
(65, 'Komputer');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `nama` varchar(50) DEFAULT NULL,
  `username` varchar(25) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `nama`, `username`, `password`) VALUES
(1, 'Fadlillah', 'admin', '21232f297a57a5a743894a0e4a801fc3');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `buku`
--
ALTER TABLE `buku`
  ADD PRIMARY KEY (`id`),
  ADD KEY `kategori_id` (`kategori_id`);

--
-- Indexes for table `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `buku`
--
ALTER TABLE `buku`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `buku`
--
ALTER TABLE `buku`
  ADD CONSTRAINT `buku_ibfk_1` FOREIGN KEY (`kategori_id`) REFERENCES `kategori` (`id`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
