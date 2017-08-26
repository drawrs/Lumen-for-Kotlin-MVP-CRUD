-- phpMyAdmin SQL Dump
-- version 4.5.2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Aug 26, 2017 at 06:44 PM
-- Server version: 10.1.19-MariaDB
-- PHP Version: 5.6.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_sekolah_api`
--

-- --------------------------------------------------------

--
-- Table structure for table `pelanggaran`
--

CREATE TABLE `pelanggaran` (
  `id` int(11) NOT NULL,
  `siswa_id` int(10) NOT NULL,
  `keterangan` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pelanggaran`
--

INSERT INTO `pelanggaran` (`id`, `siswa_id`, `keterangan`) VALUES
(1, 582, 'Makan Berdiri'),
(2, 2, 'Minum Lewat hidung'),
(3, 1, 'Makan pakai tangan orang'),
(4, 3, 'Mencuri Pulpen'),
(5, 4, 'Nonton Anime'),
(6, 3, 'Hampir Pacaran (ga jadi)'),
(7, 6, 'Mainan Hp di ruang Guru');

-- --------------------------------------------------------

--
-- Table structure for table `siswa`
--

CREATE TABLE `siswa` (
  `id` int(11) NOT NULL,
  `nis` int(50) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `status` enum('0','1') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `siswa`
--

INSERT INTO `siswa` (`id`, `nis`, `nama`, `status`) VALUES
(582, 12345968, 'Maulana Rizal Hilman', '0'),
(583, 6651613, 'Sisca Regina', '1'),
(584, 54919716, 'Doni Saputra', '1'),
(585, 65121355, 'Abdul Qomar', '0'),
(586, 2135, 'Sanjaya Adi', '1'),
(587, 153649184, 'Rizal Khilman', '1'),
(589, 55191875, 'Efi Fitria', '1'),
(590, 4919166, 'Geri', '1'),
(591, 3663, 'Asep', '1');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pelanggaran`
--
ALTER TABLE `pelanggaran`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `siswa`
--
ALTER TABLE `siswa`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `nis` (`nis`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pelanggaran`
--
ALTER TABLE `pelanggaran`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `siswa`
--
ALTER TABLE `siswa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=594;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
