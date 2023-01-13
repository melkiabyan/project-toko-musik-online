-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 13, 2023 at 12:56 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kintan_ci`
--

-- --------------------------------------------------------

--
-- Table structure for table `detail_penjualan`
--

CREATE TABLE `detail_penjualan` (
  `no_penjualan` varchar(50) NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_music` int(11) NOT NULL,
  `jumlah` int(100) NOT NULL,
  `total` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `detail_penjualan`
--

INSERT INTO `detail_penjualan` (`no_penjualan`, `id_user`, `id_music`, `jumlah`, `total`) VALUES
('PJ1658083289', 7, 17, 1, 500000),
('PJ1658084630', 8, 27, 1, 4000000),
('PJ1658090627', 7, 7, 1, 500000),
('PJ1658105056', 9, 25, 1, 4800000),
('PJ1658105166', 10, 18, 1, 1000000),
('PJ1658114610', 11, 9, 1, 1000000),
('PJ1658116198', 8, 7, 1, 500000),
('PJ1658117838', 7, 17, 1, 500000),
('PJ1671630051', 12, 17, 1, 500000),
('PJ1673610186', 12, 26, 2, 19600000);

-- --------------------------------------------------------

--
-- Table structure for table `keranjang`
--

CREATE TABLE `keranjang` (
  `id` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_music` int(11) NOT NULL,
  `jumlah` int(100) NOT NULL,
  `tanggal` varchar(100) NOT NULL,
  `total` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `music`
--

CREATE TABLE `music` (
  `id` int(11) NOT NULL,
  `merk` varchar(100) NOT NULL,
  `jenis` varchar(100) NOT NULL,
  `stok` int(50) NOT NULL,
  `harga` int(50) NOT NULL,
  `gambar` varchar(100) NOT NULL DEFAULT 'default.jpg'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `music`
--

INSERT INTO `music` (`id`, `merk`, `jenis`, `stok`, `harga`, `gambar`) VALUES
(7, 'Yamaha', 'Guitar', 22, 500000, 'yamaha3.jpg'),
(9, 'Pearl', 'Drum', 17, 1000000, 'drumm.jpg'),
(17, 'Cecilio', 'Violin', 17, 500000, 'Biola3.jpeg'),
(18, 'Yamaha', 'Piano', 29, 1000000, 'Piano1.jpeg'),
(19, 'Yamaha', 'Harp', 11, 900000, 'Harfa1.jpeg'),
(20, 'Yamaha', 'Saxophone', 20, 800000, 'Saksofon1.jpeg'),
(25, 'Sonor', 'Drum', 10, 4800000, 'drum.jpg'),
(26, 'Roy Benson', 'Saxophone', 4, 9800000, 'saxophone.jpg'),
(27, 'Artone', 'Harp', 12, 4000000, 'harpa.jpg'),
(28, 'Casio', 'Piano', 5, 15000000, 'piano.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `penjualan`
--

CREATE TABLE `penjualan` (
  `id` int(11) NOT NULL,
  `no_penjualan` varchar(55) NOT NULL,
  `id_user` int(11) NOT NULL,
  `total_bayar` int(100) NOT NULL,
  `tanggal` varchar(100) NOT NULL,
  `alamat` varchar(100) NOT NULL,
  `pembayaran` varchar(100) NOT NULL,
  `gambar` varchar(100) NOT NULL,
  `keterangan` varchar(100) NOT NULL,
  `status` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `penjualan`
--

INSERT INTO `penjualan` (`id`, `no_penjualan`, `id_user`, `total_bayar`, `tanggal`, `alamat`, `pembayaran`, `gambar`, `keterangan`, `status`) VALUES
(26, 'PJ1658083289', 7, 500000, '17/07/2022', 'umbansari atas', 'BNI', '', '-', 'Proses Pengiriman'),
(27, 'PJ1658084630', 8, 4000000, '17/07/2022', 'RUMBAI', 'BRI', 'drum.jpg', '-', 'Diterima'),
(28, 'PJ1658090627', 7, 500000, '17/07/2022', 'umbansari atas', 'BNI', 'drum1.jpg', '-', 'Gagal'),
(29, 'PJ1658105056', 9, 4800000, '18/07/2022', 'PatriaSari', 'BRI', 'violin2.jpg', '-', 'Diterima'),
(30, 'PJ1658105166', 10, 1000000, '18/07/2022', 'RUMBAI', 'MANDIRI', 'gitar.jpg', '-', 'Pengemasan'),
(31, 'PJ1658114610', 11, 1000000, '18/07/2022', 'Perawang', 'BRI', 'harpa.jpg', '-', 'Diterima'),
(32, 'PJ1658116198', 8, 500000, '18/07/2022', 'RUMBAI', 'MANDIRI', 'foto_kintan.jpg', 'jgi', 'Diterima'),
(33, 'PJ1658117838', 7, 500000, '18/07/2022', 'umbansari atas', 'BNI', 'drum2.jpg', '-', 'Diterima'),
(34, 'PJ1671630051', 12, 500000, '21/12/2022', 'umbansari atas', 'MANDIRI', '', 'qq', 'Gagal'),
(35, 'PJ1673610186', 12, 19600000, '13/01/2023', 'asd', '', '', '333', 'Dikirm');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `gambar` varchar(100) NOT NULL,
  `role` varchar(100) NOT NULL,
  `date_created` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `nama`, `email`, `password`, `gambar`, `role`, `date_created`) VALUES
(2, 'Abyan', 'abyan@gmail.com', '21232f297a57a5a743894a0e4a801fc3', 'default.jpg', 'Admin', 0),
(4, 'Anyndia', 'anyndia@gmail.com', '$2y$10$XcjYNeKEbzhy81C0ohv6cOqH5a/kFBhONkG0bPoAxZrnbETmNPT0e', 'default.jpg', 'Admin', 1650666076),
(7, 'Rizma', 'rizma@gmail.com', '$2y$10$Qt5QD3gyPpDxTNx6UlYrE.LxwOFxvxyfLwUGF1DaaysZ8DOg34gpi', 'default.jpg', 'User', 1658069849),
(8, 'wanda', 'wanda@gmail.com', '$2y$10$hwhYW/rFRGir2B6ezP98xe4mnkPzk/Cud/IFMcOpwzZUMk5uxtdrC', 'default.jpg', 'User', 1658084566),
(9, 'Raja', 'raja@gmail.com', '$2y$10$xu7i4B4GCcnZNZLFhAoSluwAJ6WwPFwwQwxbZs1ZGZMXG7YtrHfye', 'default.jpg', 'User', 1658105025),
(10, 'Mario', 'mario@gmail.com', '$2y$10$KNVs43yWk7OGcjaQRIv0kepHUdm3nnT6KRh5wvn5icfmxbduOii92', 'default.jpg', 'User', 1658105139),
(11, 'dimas', 'dimas@gmail.com', '$2y$10$k/UniLH6Tbpk5iKv7jLt6uqFg7kXpkHxxJQWy9p2qDi39pEmhBUCG', 'default.jpg', 'User', 1658114584),
(12, 'Kintan', 'kintan@gmail.com', '$2y$10$/KdLgKITBdwh5roFmQJy2u931lAMppaCKfwGt6s/4D0FFb3oLXb56', 'default.jpg', 'User', 1658117626);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `detail_penjualan`
--
ALTER TABLE `detail_penjualan`
  ADD KEY `id_user2` (`id_user`),
  ADD KEY `id_music2` (`id_music`);

--
-- Indexes for table `keranjang`
--
ALTER TABLE `keranjang`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_user` (`id_user`),
  ADD KEY `id_music` (`id_music`);

--
-- Indexes for table `music`
--
ALTER TABLE `music`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `penjualan`
--
ALTER TABLE `penjualan`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_user1` (`id_user`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `keranjang`
--
ALTER TABLE `keranjang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT for table `music`
--
ALTER TABLE `music`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `penjualan`
--
ALTER TABLE `penjualan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `detail_penjualan`
--
ALTER TABLE `detail_penjualan`
  ADD CONSTRAINT `id_music2` FOREIGN KEY (`id_music`) REFERENCES `music` (`id`),
  ADD CONSTRAINT `id_user2` FOREIGN KEY (`id_user`) REFERENCES `user` (`id`);

--
-- Constraints for table `keranjang`
--
ALTER TABLE `keranjang`
  ADD CONSTRAINT `id_music` FOREIGN KEY (`id_music`) REFERENCES `music` (`id`),
  ADD CONSTRAINT `id_user` FOREIGN KEY (`id_user`) REFERENCES `user` (`id`);

--
-- Constraints for table `penjualan`
--
ALTER TABLE `penjualan`
  ADD CONSTRAINT `id_user1` FOREIGN KEY (`id_user`) REFERENCES `user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
