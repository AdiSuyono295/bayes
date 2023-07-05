-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 03 Jul 2023 pada 10.30
-- Versi server: 10.1.38-MariaDB
-- Versi PHP: 5.6.40

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_jhoni`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `login`
--

CREATE TABLE `login` (
  `username` varchar(50) NOT NULL DEFAULT '',
  `password` varchar(50) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `login`
--

INSERT INTO `login` (`username`, `password`) VALUES
('admin', 'admin');

-- --------------------------------------------------------

--
-- Struktur dari tabel `nilai_probabilitas_p`
--

CREATE TABLE `nilai_probabilitas_p` (
  `kd_penyakit` varchar(4) NOT NULL,
  `nilai` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `nilai_probabilitas_p`
--

INSERT INTO `nilai_probabilitas_p` (`kd_penyakit`, `nilai`) VALUES
('P001', 0.3),
('P002', 0.25),
('P003', 0.35),
('P004', 0.2),
('P005', 0.4);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbgejala`
--

CREATE TABLE `tbgejala` (
  `kd_gejala` char(4) NOT NULL,
  `gejala` varchar(100) NOT NULL,
  `kd_penyakit` varchar(4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbgejala`
--

INSERT INTO `tbgejala` (`kd_gejala`, `gejala`, `kd_penyakit`) VALUES
('G009', 'Penampakan urat daun yang semakin jelas', ''),
('G008', 'Polong yang kurang berkembang dan pertumbuhan terhambat', ''),
('G007', 'Daun muda yang berbintik kuning yang diselingi daerah berwarna hijau', ''),
('G006', 'Daun akan menjadi kering dan mati', ''),
('G005', 'Permukaan daun batang dan polong yang tertutup yang berwarna putih', ''),
('G004', 'Biji polong yang menjadi kriput', ''),
('G003', 'Bercak daun yang berwarna kemerahan yang berbentuk bulat', ''),
('G002', 'Bercak bulat berwarna coklat, kuning, pada permukaan daun', ''),
('G001', 'Bercak bulat berwarna coklat, kuning, atau putih menjalar kebagian batang', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbhasil`
--

CREATE TABLE `tbhasil` (
  `idhasil` int(4) NOT NULL,
  `idpasien` int(4) NOT NULL,
  `kd_penyakit` varchar(4) NOT NULL,
  `bobotpenyakit` double NOT NULL,
  `tanggal_diagnosa` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbhasil`
--

INSERT INTO `tbhasil` (`idhasil`, `idpasien`, `kd_penyakit`, `bobotpenyakit`, `tanggal_diagnosa`) VALUES
(56, 34, 'P001', 1, '2023-06-11 15:46:47'),
(55, 34, 'P002', 2, '2023-06-11 15:46:47'),
(54, 33, 'P001', 1, '2023-06-11 15:44:57'),
(53, 33, 'P002', 2, '2023-06-11 15:44:57'),
(52, 33, 'P001', 1, '2023-06-11 15:44:38'),
(51, 33, 'P002', 2, '2023-06-11 15:44:38'),
(50, 33, 'P001', 1, '2023-06-11 15:44:14'),
(49, 33, 'P002', 2, '2023-06-11 15:44:14'),
(48, 33, 'P001', 1, '2023-06-11 15:43:29'),
(47, 33, 'P002', 2, '2023-06-11 15:43:29'),
(46, 33, 'P001', 1, '2023-06-11 15:42:57'),
(45, 33, 'P002', 2, '2023-06-11 15:42:57'),
(44, 33, 'P001', 1, '2023-06-11 15:42:35'),
(43, 33, 'P002', 2, '2023-06-11 15:42:35'),
(42, 33, 'P001', 1, '2023-06-11 15:41:28'),
(41, 33, 'P002', 2, '2023-06-11 15:41:28'),
(40, 33, 'P001', 1, '2023-06-11 15:40:53'),
(39, 33, 'P002', 2, '2023-06-11 15:40:53'),
(38, 32, 'P001', 1, '2023-06-10 19:35:49'),
(37, 32, 'P002', 2, '2023-06-10 19:35:49'),
(57, 38, 'P001', 2, '2023-07-03 13:07:42'),
(58, 38, 'P001', 2, '2023-07-03 13:18:40'),
(59, 39, 'P002', 2, '2023-07-03 13:52:28'),
(60, 39, 'P002', 2, '2023-07-03 14:41:40'),
(61, 39, 'P002', 2, '2023-07-03 14:42:14'),
(62, 39, 'P002', 2, '2023-07-03 14:42:41'),
(63, 39, 'P002', 2, '2023-07-03 14:43:13'),
(64, 39, 'P002', 2, '2023-07-03 14:43:34'),
(65, 39, 'P002', 2, '2023-07-03 14:43:47'),
(66, 39, 'P002', 2, '2023-07-03 14:44:18'),
(67, 39, 'P002', 2, '2023-07-03 14:45:05'),
(68, 39, 'P002', 2, '2023-07-03 14:48:40'),
(69, 39, 'P002', 2, '2023-07-03 14:49:43'),
(70, 40, 'P001', 1, '2023-07-03 14:55:45'),
(71, 40, 'P002', 1, '2023-07-03 14:55:45'),
(72, 40, 'P003', 1, '2023-07-03 14:55:45'),
(73, 41, 'P002', 1, '2023-07-03 14:56:38'),
(74, 41, 'P003', 1, '2023-07-03 14:56:38'),
(75, 42, 'P001', 1.333, '2023-07-03 15:25:23'),
(76, 42, 'P003', 0.388, '2023-07-03 15:25:23'),
(77, 42, 'P002', 0.277, '2023-07-03 15:25:23');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbpasien`
--

CREATE TABLE `tbpasien` (
  `idpasien` int(10) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `alamat` varchar(50) NOT NULL,
  `tanggal` date NOT NULL,
  `email` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbpasien`
--

INSERT INTO `tbpasien` (`idpasien`, `nama`, `alamat`, `tanggal`, `email`) VALUES
(34, 'Jhoni', 'Tandun', '2023-06-11', 'jhoni123@gmail.com'),
(38, 'abcd', 'abcde', '2023-07-03', 'abcd@gmail.com'),
(39, 'afasf', 'dssd', '2023-07-03', 'sfs@gmail.com'),
(40, 'dsvdsv', 'dsvdv', '2023-07-03', 'dvdv@gmail.com'),
(41, 'sfdsf', 'dfdf', '2023-07-03', 'dvdvdvdvd@gmail.com'),
(42, 'dsds', 'fedg', '2023-07-03', 'fsgrer@gmail.com');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbpenyakit`
--

CREATE TABLE `tbpenyakit` (
  `kd_penyakit` char(4) NOT NULL,
  `nama_penyakit` varchar(30) DEFAULT NULL,
  `definisi` text,
  `solusi` text
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbpenyakit`
--

INSERT INTO `tbpenyakit` (`kd_penyakit`, `nama_penyakit`, `definisi`, `solusi`) VALUES
('P001', 'Penyakit Bercak Daun Cercospor', 'Penyakit bercak daun cercospora disebabkan oleh cendawan cercospora canescens. Cendawan ini memiliki konidium seperti jarum atau gada terbalik, hialin tidak berwarna, berujung runcing, dan terdiri atas banyak sekat.', 'Penyakit bercak daun cercospora dapat dikendalikan dengan cara Penerapan pergiliran tanaman dan Penggunaan fungisida yang sesuai dengan anjuran.'),
('P003', 'Penyakit Embun Tepung', 'Penyekit embun tepung ini disebabkan oleh cendawan oidium sp', 'Penyakit embun tepung dapat dikendalikan dengan penanaman dengan varietas yang tahan terhadap penyakit ini, pembakaran tanaman yang terserang berat, penyemprotan dengan fungisida'),
('P004', 'Penyakit Bercak Sclerotium', 'Penyakit bercak sclerotium disebabkan oleh cendawan sclerotium rolfsii', 'Penyakit ini dapat dikendalikan dengan pembakaran tanaman yang sakit dan penerapan rotasi tanaman, pengendalian secara kimia dengan penggunaan fungisida'),
('P005', 'Penyakit Mosaik Kuning', 'Disebabkan oleh mungbean yellow mosaik virus (MYMV) penularan terjadi secara mekanis, melalui benih, serta vektor bemisia tabaci genn', 'dapat dikendalikan dengan cara penanaman dengan varietas tahan penyakit virus mosaik kuning ini, pembakaran tanaman yang terserang, penyemprotan dengan insektisida yang efektif'),
('P002', 'Penyakit Kudis (Scab)', 'Penyakit kudis(scab) disebabkan oleh cendawan aisinoe glycines jenkins atau elsinoe iwatae.', 'Penyakit kudis(scab) dapat dikendalikan dengan cara penanaman dengan varietas tahan penyakit ini, pembakaran tanaman yang terserang berat, pengendalian secara kimia dilakukan dengan menyemprotkan fungisida yang sesuai dengan dosis yang sesuai');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbrule`
--

CREATE TABLE `tbrule` (
  `id_rule` int(4) NOT NULL,
  `kd_gejala` char(4) NOT NULL,
  `kd_penyakit` char(4) NOT NULL,
  `bobot` double NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbrule`
--

INSERT INTO `tbrule` (`id_rule`, `kd_gejala`, `kd_penyakit`, `bobot`) VALUES
(80, 'G009', 'P005', 0.7),
(79, 'G008', 'P005', 0.7),
(78, 'G007', 'P005', 0.8),
(77, 'G006', 'P004', 0.6),
(76, 'G005', 'P004', 0.7),
(75, 'G004', 'P003', 0.8),
(74, 'G001', 'P003', 0.8),
(73, 'G003', 'P002', 0.6),
(72, 'G001', 'P002', 0.8),
(71, 'G002', 'P001', 0.7),
(70, 'G001', 'P001', 0.8);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tmp_analisa`
--

CREATE TABLE `tmp_analisa` (
  `kd_proses` varchar(10) NOT NULL,
  `kd_penyakit` varchar(4) NOT NULL,
  `kd_gejala` varchar(4) NOT NULL,
  `nilaiPH` double NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tmp_analisa`
--

INSERT INTO `tmp_analisa` (`kd_proses`, `kd_penyakit`, `kd_gejala`, `nilaiPH`) VALUES
('Proses2', 'P001', 'G002', 0.21),
('Proses2', 'P002', 'G002', 0),
('Proses2', 'P003', 'G002', 0),
('Proses2', 'P004', 'G002', 0),
('Proses2', 'P005', 'G002', 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tmp_gejala`
--

CREATE TABLE `tmp_gejala` (
  `noip` int(3) NOT NULL,
  `kd_gejala` char(4) NOT NULL,
  `bobot` int(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tmp_gejala`
--

INSERT INTO `tmp_gejala` (`noip`, `kd_gejala`, `bobot`) VALUES
(130965, 'G001', 0),
(130966, 'G002', 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tmp_penyakit`
--

CREATE TABLE `tmp_penyakit` (
  `kd_penyakit` varchar(4) NOT NULL,
  `kd_gejala` varchar(4) NOT NULL,
  `nilai` double NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tmp_penyakit`
--

INSERT INTO `tmp_penyakit` (`kd_penyakit`, `kd_gejala`, `nilai`) VALUES
('P001', 'G001', 0.72),
('P001', 'G002', 0.21),
('P002', 'G001', 0.72),
('P002', 'G002', 0.21),
('P003', 'G001', 0.72),
('P003', 'G002', 0.21),
('P004', 'G001', 0.72),
('P004', 'G002', 0.21),
('P005', 'G001', 0.72),
('P005', 'G002', 0.21);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tmp_totalbayes`
--

CREATE TABLE `tmp_totalbayes` (
  `kd_penyakit` varchar(4) NOT NULL,
  `kd_gejala` varchar(4) NOT NULL,
  `totalbayes` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tmp_totalbayes`
--

INSERT INTO `tmp_totalbayes` (`kd_penyakit`, `kd_gejala`, `totalbayes`) VALUES
('P001', 'G001', 0.33333333333333),
('P001', 'G002', 1),
('P002', 'G001', 0.27777777777778),
('P002', 'G002', 0),
('P003', 'G001', 0.38888888888889),
('P003', 'G002', 0),
('P004', 'G001', 0),
('P004', 'G002', 0),
('P005', 'G001', 0),
('P005', 'G002', 0);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`username`);

--
-- Indeks untuk tabel `tbgejala`
--
ALTER TABLE `tbgejala`
  ADD PRIMARY KEY (`kd_gejala`);

--
-- Indeks untuk tabel `tbhasil`
--
ALTER TABLE `tbhasil`
  ADD PRIMARY KEY (`idhasil`);

--
-- Indeks untuk tabel `tbpasien`
--
ALTER TABLE `tbpasien`
  ADD PRIMARY KEY (`idpasien`);

--
-- Indeks untuk tabel `tbpenyakit`
--
ALTER TABLE `tbpenyakit`
  ADD PRIMARY KEY (`kd_penyakit`);

--
-- Indeks untuk tabel `tbrule`
--
ALTER TABLE `tbrule`
  ADD PRIMARY KEY (`id_rule`);

--
-- Indeks untuk tabel `tmp_gejala`
--
ALTER TABLE `tmp_gejala`
  ADD PRIMARY KEY (`noip`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `tbhasil`
--
ALTER TABLE `tbhasil`
  MODIFY `idhasil` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=78;

--
-- AUTO_INCREMENT untuk tabel `tbpasien`
--
ALTER TABLE `tbpasien`
  MODIFY `idpasien` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT untuk tabel `tbrule`
--
ALTER TABLE `tbrule`
  MODIFY `id_rule` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;

--
-- AUTO_INCREMENT untuk tabel `tmp_gejala`
--
ALTER TABLE `tmp_gejala`
  MODIFY `noip` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=130967;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
