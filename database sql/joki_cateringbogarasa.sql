-- phpMyAdmin SQL Dump
-- version 6.0.0-dev+20240413.a6c56e6e0e
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 20, 2024 at 10:46 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `joki_cateringbogarasa`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id_admin` int(11) NOT NULL,
  `username` varchar(25) NOT NULL,
  `password` varchar(25) NOT NULL,
  `name` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id_admin`, `username`, `password`, `name`) VALUES
(1, 'admin', 'admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `keranjang`
--

CREATE TABLE `keranjang` (
  `id_keranjang` int(11) NOT NULL,
  `id_produk` varchar(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `total` int(55) NOT NULL,
  `riwayat` varchar(55) NOT NULL,
  `tanggal` varchar(55) NOT NULL,
  `waktu` varchar(55) NOT NULL,
  `bukti_transfer` varchar(55) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `keranjang`
--

INSERT INTO `keranjang` (`id_keranjang`, `id_produk`, `id_user`, `jumlah`, `total`, `riwayat`, `tanggal`, `waktu`, `bukti_transfer`) VALUES
(72, '64klj', 3, 1, 2500, 'Pembayaran Diterima', '10-07-2024', '18:41', 'f1720611807.jpg'),
(74, '463ek', 3, 1, 20000, 'menunggu pembayaran', '10-07-2024', '18:41', ''),
(75, '463ek', 5, 3, 60000, 'menunggu pembayaran', '12-07-2024', '08:07', ''),
(76, '64klj', 5, 3, 67500, 'menunggu pembayaran', '12-07-2024', '08:37', ''),
(77, '64klj', 5, 2, 45000, 'menunggu pembayaran', '19-07-2024', '13:53', ''),
(78, 'i5176', 5, 2, 50000, 'menunggu pembayaran', '20-07-2024', '15:41', '');

-- --------------------------------------------------------

--
-- Table structure for table `kritik_saran`
--

CREATE TABLE `kritik_saran` (
  `id_kritik_saran` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `nama` varchar(111) NOT NULL,
  `tanggal` varchar(55) NOT NULL,
  `isi_kritik_saran` varchar(1000) NOT NULL,
  `balasan` varchar(1111) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `kritik_saran`
--

INSERT INTO `kritik_saran` (`id_kritik_saran`, `id_user`, `nama`, `tanggal`, `isi_kritik_saran`, `balasan`) VALUES
(5, 3, 'elhamsah', '26-06-2024', 'kok gitu', 'yooaaiii');

-- --------------------------------------------------------

--
-- Table structure for table `produk`
--

CREATE TABLE `produk` (
  `id` int(11) NOT NULL,
  `id_produk` varchar(11) NOT NULL,
  `nama_produk` varchar(55) NOT NULL,
  `gambar` varchar(55) NOT NULL,
  `harga` varchar(55) NOT NULL,
  `deskripsi` varchar(1000) NOT NULL,
  `menu_hari` varchar(111) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `produk`
--

INSERT INTO `produk` (`id`, `id_produk`, `nama_produk`, `gambar`, `harga`, `deskripsi`, `menu_hari`) VALUES
(23, '0k67j', 'BISTIK AYAM', 'f1721463563.jpg', '25000', 'box 500ml', 'Senin'),
(24, 'i5176', 'SOP BAKSO (AYAM) LOHOA', 'f1721463610.jpg', '25000', 'box 500ml', 'Senin'),
(25, 'e76c6', 'TUMIS TELUR TAHU KECAP PEDAS', 'f1721463638.jpg', '20000', 'box 500ml', 'Senin'),
(26, 'hf69e', 'TUMIS BUNCIS TEMPE', 'f1721463667.jpg', '18000', 'box 500ml', 'Senin'),
(27, 'gf115', 'KWETIAU GORENG AYAM', 'f1721463724.jpg', '18000', 'box 500ml', 'Senin'),
(28, 'g5lcl', 'MENDOAN PEDAS', 'f1721463753.jpg', '2500', 'pcs', 'Senin'),
(29, '9k631', 'SOTO BETAWI', 'f1721463802.jpg', '25.000', 'box 500ml', 'Selasa'),
(30, '3f9j1', 'MANGUT AYAM', 'f1721463828.jpg', '25.00', '/box 500ml', 'Selasa'),
(31, 'b0hjd', 'TERONG BALADO', 'f1721463863.jpg', '18.000', 'box 500ml', 'Selasa'),
(32, '2be2l', 'PATIN ASAM PEDAS', 'f1721463889.jpg', '18000', 'cup 300ml', 'Selasa'),
(33, 'lj42l', 'TUMIS TEMPE TERI PAKE PETE', 'f1721463914.jpg', '20000', 'box 500ml', 'Selasa'),
(34, '6f0c5', 'SPRINGROLL TAPE', 'f1721463961.jpg', '2000', 'pcs', 'Selasa'),
(35, 'jj1am', 'SOTO MIE', 'f1721464020.jpg', '20000', 'box 500ml', 'Rabu'),
(36, 'ld8ja', 'PEPES IKAN MAS', 'f1721464049.jpg', '20000', 'bks', 'Rabu'),
(37, '9da27', 'TUMIS PARE TERI', 'f1721464092.jpg', '18.000', 'box 500ml', 'Rabu'),
(38, '87b4a', 'SOP AYAM', 'f1721464122.jpg', '20000', 'box 500ml', 'Rabu'),
(39, 'k1ea0', 'SOSIS MASAK TERIYAKI', 'f1721464147.jpg', '20000', 'box 500ml', 'Rabu'),
(40, 'f3651', 'TUMIS DAGING KECAP', 'f1721464170.jpg', '30000', 'cup 300ml', 'Rabu'),
(41, 'jial4', 'AYAM MASAK TERIYAKI', 'f1721464255.jpg', '18000', 'ekor', 'Kamis'),
(42, 'gmhal', 'SOP IGA', 'f1721464298.jpg', '30000', 'box 500ml', 'Kamis'),
(43, 'eh9ma', 'TAHU TEMPE BACEM', 'f1721464320.jpg', '3000', 'pcs', 'Kamis'),
(44, 'fkb3j', ' TUMIS TERONG TERI', 'f1721464352.jpg', '18.000', 'box 500ml', 'Kamis'),
(45, 'a7lmj', 'ASEM ASEM DAGING', 'f1721464386.jpg', '20.000', 'box 500ml', 'Jumat'),
(46, '72acc', 'SEAFOOD SAUS PADANG', 'f1721464424.jpg', '35000', 'box 750ml', 'Jumat'),
(47, 'd25lj', 'DENDENG BALADO', 'f1721464463.jpg', '30000', 'cup 300ml', 'Jumat'),
(48, 'egki9', 'TUMIS DAUN SINGKONG TERI', 'f1721464491.jpg', '18.000', 'box 500ml', 'Jumat'),
(49, 'cb88m', 'SAMBAL TERI PETE', 'f1721464521.jpg', '15.000', 'cup 200ml', 'Jumat'),
(50, 'a3e1b', 'AYAM PENYET SAMBAL IJO', 'f1721464598.jpg', '20000', 'ptg', 'Sabtu'),
(51, '2l958', 'TUMIS TAUGE JAMBAL', 'f1721464622.jpg', '18000', 'box 500ml', 'Sabtu'),
(52, '730mj', 'GURAME  ASAM MANIS', 'f1721464653.jpg', '60.000', 'ekor', 'Sabtu'),
(53, 'ibem9', 'PARU BALADO', 'f1721464683.jpg', '25000', 'cup 300ml', 'Sabtu'),
(54, 'f8d2c', 'SAYUR BOBOR', 'f1721464720.jpg', '18000', 'box 500ml', 'Sabtu'),
(55, 'i4jkh', 'TUMIS TAUGE JAMBAL', 'f1721464751.jpg', '18000', 'box 500ml', 'Sabtu');

-- --------------------------------------------------------

--
-- Table structure for table `promosi`
--

CREATE TABLE `promosi` (
  `id_promosi_produk` int(11) NOT NULL,
  `id_produk` varchar(55) NOT NULL,
  `promo_lama` varchar(55) NOT NULL,
  `promo_baru` varchar(55) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `promosi`
--

INSERT INTO `promosi` (`id_promosi_produk`, `id_produk`, `promo_lama`, `promo_baru`) VALUES
(26, '64klj', '10', '90'),
(27, '463ek', '0', '0'),
(28, 'hj65l', '0', '0'),
(29, 'aald0', '0', '0'),
(30, '0k67j', '0', '0'),
(31, 'i5176', '0', '0'),
(32, 'e76c6', '0', '0'),
(33, 'hf69e', '0', '0'),
(34, 'gf115', '0', '0'),
(35, 'g5lcl', '0', '0'),
(36, '9k631', '0', '0'),
(37, '3f9j1', '0', '0'),
(38, 'b0hjd', '0', '0'),
(39, '2be2l', '0', '0'),
(40, 'lj42l', '0', '0'),
(41, '6f0c5', '0', '0'),
(42, 'jj1am', '0', '0'),
(43, 'ld8ja', '0', '0'),
(44, '9da27', '0', '0'),
(45, '87b4a', '0', '0'),
(46, 'k1ea0', '0', '0'),
(47, 'f3651', '0', '0'),
(48, 'jial4', '0', '0'),
(49, 'gmhal', '0', '0'),
(50, 'eh9ma', '0', '0'),
(51, 'fkb3j', '0', '0'),
(52, 'a7lmj', '0', '0'),
(53, '72acc', '0', '0'),
(54, 'd25lj', '0', '0'),
(55, 'egki9', '0', '0'),
(56, 'cb88m', '0', '0'),
(57, 'a3e1b', '0', '0'),
(58, '2l958', '0', '0'),
(59, '730mj', '0', '0'),
(60, 'ibem9', '0', '0'),
(61, 'f8d2c', '0', '0'),
(62, 'i4jkh', '0', '0');

-- --------------------------------------------------------

--
-- Table structure for table `transaksi`
--

CREATE TABLE `transaksi` (
  `id_transaksi` int(11) NOT NULL,
  `nama` varchar(111) NOT NULL,
  `produk` varchar(111) NOT NULL,
  `tanggal` varchar(55) NOT NULL,
  `waktu` varchar(55) NOT NULL,
  `promo` varchar(11) NOT NULL,
  `status` varchar(111) NOT NULL,
  `id_produk` varchar(11) NOT NULL,
  `id_user` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `transaksi`
--

INSERT INTO `transaksi` (`id_transaksi`, `nama`, `produk`, `tanggal`, `waktu`, `promo`, `status`, `id_produk`, `id_user`) VALUES
(28, 'ratu', 'Red Velvet', '30-06-2024', '16:48', '10', 'menunggu pembayaran', '', 0),
(29, 'ratu', 'Strawberry', '01-07-2024', '14:28', '10', 'menunggu pembayaran', '', 0),
(30, 'josua', 'Taro', '01-07-2024', '17:15', '0', 'menunggu pembayaran', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id_user` int(11) NOT NULL,
  `nama` varchar(111) NOT NULL,
  `no_hp` varchar(55) NOT NULL,
  `email` varchar(55) NOT NULL,
  `password` varchar(55) NOT NULL,
  `frekuensi` int(11) NOT NULL,
  `status` varchar(111) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id_user`, `nama`, `no_hp`, `email`, `password`, `frekuensi`, `status`) VALUES
(3, 'josua', '231131', 'josua@gmail.com', 'josua', 1, 'Pelanggan Baru'),
(4, 'king', '089809231', 'king@gmail.com', 'king', 0, 'Pelanggan Baru'),
(5, 'ratu', '08351673134', 'ratu@gmail.com', 'ratu', 10, 'Pelanggan Lama');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id_admin`);

--
-- Indexes for table `keranjang`
--
ALTER TABLE `keranjang`
  ADD PRIMARY KEY (`id_keranjang`);

--
-- Indexes for table `kritik_saran`
--
ALTER TABLE `kritik_saran`
  ADD PRIMARY KEY (`id_kritik_saran`);

--
-- Indexes for table `produk`
--
ALTER TABLE `produk`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `promosi`
--
ALTER TABLE `promosi`
  ADD PRIMARY KEY (`id_promosi_produk`);

--
-- Indexes for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`id_transaksi`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id_admin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `keranjang`
--
ALTER TABLE `keranjang`
  MODIFY `id_keranjang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=79;

--
-- AUTO_INCREMENT for table `kritik_saran`
--
ALTER TABLE `kritik_saran`
  MODIFY `id_kritik_saran` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `produk`
--
ALTER TABLE `produk`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT for table `promosi`
--
ALTER TABLE `promosi`
  MODIFY `id_promosi_produk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT for table `transaksi`
--
ALTER TABLE `transaksi`
  MODIFY `id_transaksi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
