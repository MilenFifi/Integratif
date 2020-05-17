-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 17 Bulan Mei 2020 pada 15.19
-- Versi server: 10.4.11-MariaDB
-- Versi PHP: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `easintegratif`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `jenis_sumbangan`
--

CREATE TABLE `jenis_sumbangan` (
  `id` int(50) NOT NULL,
  `barang` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `jenis_sumbangan`
--

INSERT INTO `jenis_sumbangan` (`id`, `barang`) VALUES
(23, 'Beras'),
(25, 'Mie Instan'),
(24, 'Mie Instant'),
(26, 'Minyak Goreng');

-- --------------------------------------------------------

--
-- Struktur dari tabel `penyumbang`
--

CREATE TABLE `penyumbang` (
  `id` int(50) NOT NULL,
  `name` varchar(255) NOT NULL,
  `gender` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `penyumbang`
--

INSERT INTO `penyumbang` (`id`, `name`, `gender`) VALUES
(40, 'Milenia Ulwan Zafira', 0),
(41, 'Milenia Ulwan Zafira', 0),
(42, 'Salsa', 0),
(43, 'AHMAD', 1),
(44, 'AHMAD', 1),
(45, 'AHMAD', 1),
(46, 'Milenia Ulwan Zafira', 0),
(47, 'Milenia Ulwan Zafira', 0),
(48, 'NANA', 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `sumbangan`
--

CREATE TABLE `sumbangan` (
  `s_id` int(50) NOT NULL,
  `p_id` int(50) DEFAULT NULL,
  `j_id` int(50) DEFAULT NULL,
  `jumlah` int(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `sumbangan`
--

INSERT INTO `sumbangan` (`s_id`, `p_id`, `j_id`, `jumlah`) VALUES
(24, 41, 23, 1),
(25, 42, 23, 2),
(28, 45, 23, 10),
(29, 45, 24, 5),
(30, 46, 23, 12),
(32, 47, 23, 12),
(33, 47, 24, 2),
(34, 48, 24, 5),
(35, 48, 26, 2);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `jenis_sumbangan`
--
ALTER TABLE `jenis_sumbangan`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `barang` (`barang`);

--
-- Indeks untuk tabel `penyumbang`
--
ALTER TABLE `penyumbang`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Indeks untuk tabel `sumbangan`
--
ALTER TABLE `sumbangan`
  ADD PRIMARY KEY (`s_id`),
  ADD KEY `p_id` (`p_id`),
  ADD KEY `j_id` (`j_id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `jenis_sumbangan`
--
ALTER TABLE `jenis_sumbangan`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT untuk tabel `penyumbang`
--
ALTER TABLE `penyumbang`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT untuk tabel `sumbangan`
--
ALTER TABLE `sumbangan`
  MODIFY `s_id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `sumbangan`
--
ALTER TABLE `sumbangan`
  ADD CONSTRAINT `sumbangan_ibfk_1` FOREIGN KEY (`p_id`) REFERENCES `penyumbang` (`id`),
  ADD CONSTRAINT `sumbangan_ibfk_2` FOREIGN KEY (`j_id`) REFERENCES `jenis_sumbangan` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
