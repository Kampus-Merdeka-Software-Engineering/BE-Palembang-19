-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 05 Okt 2023 pada 08.23
-- Versi server: 10.4.28-MariaDB
-- Versi PHP: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_project19`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `akuns`
--

CREATE TABLE `akuns` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` varchar(255) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `akuns`
--

INSERT INTO `akuns` (`id`, `username`, `password`, `role`, `createdAt`, `updatedAt`) VALUES
(1, 'kusmala', 'mala123', 'admin', '2023-10-04 07:20:42', '2023-10-04 07:20:42'),
(2, 'kusmala', 'mala123', 'admin', '2023-10-04 08:03:30', '2023-10-04 08:03:30'),
(3, 'kusmala', 'mala123', 'admin', '2023-10-04 12:18:27', '2023-10-04 12:18:27'),
(4, 'kusmala', 'mala123', 'admin', '2023-10-04 12:24:15', '2023-10-04 12:24:15'),
(5, 'kusmala', 'mala123', 'admin', '2023-10-04 13:06:07', '2023-10-04 13:06:07'),
(6, 'kusmala', 'mala123', 'admin', '2023-10-04 13:12:01', '2023-10-04 13:12:01'),
(7, 'kusmala', 'mala123', 'admin', '2023-10-04 13:14:28', '2023-10-04 13:14:28'),
(8, 'clarissa', 'clarissa11', 'klien', '2023-10-04 16:47:50', '2023-10-04 16:47:50');

-- --------------------------------------------------------

--
-- Struktur dari tabel `layanans`
--

CREATE TABLE `layanans` (
  `id_layanan` int(11) NOT NULL,
  `layanan` varchar(255) NOT NULL,
  `harga` int(11) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `payments`
--

CREATE TABLE `payments` (
  `id_payment` int(11) NOT NULL,
  `tipe_payment` varchar(255) NOT NULL,
  `status_payment` varchar(255) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `resi` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `pengirimans`
--

CREATE TABLE `pengirimans` (
  `resi` varchar(255) NOT NULL,
  `id_layanan` int(11) NOT NULL,
  `nama_pengirim` varchar(255) NOT NULL,
  `alamat_pengirim` varchar(255) NOT NULL,
  `nohp_pengirim` varchar(255) NOT NULL,
  `alamat_penerima` varchar(255) NOT NULL,
  `nohp_penerima` varchar(255) NOT NULL,
  `tipe_barang` varchar(255) NOT NULL,
  `berat_barang` int(11) NOT NULL,
  `total_bayar` int(11) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `nama_penerima` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `akuns`
--
ALTER TABLE `akuns`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `layanans`
--
ALTER TABLE `layanans`
  ADD PRIMARY KEY (`id_layanan`);

--
-- Indeks untuk tabel `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id_payment`),
  ADD KEY `resi` (`resi`);

--
-- Indeks untuk tabel `pengirimans`
--
ALTER TABLE `pengirimans`
  ADD PRIMARY KEY (`resi`),
  ADD KEY `id_layanan` (`id_layanan`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `akuns`
--
ALTER TABLE `akuns`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `layanans`
--
ALTER TABLE `layanans`
  MODIFY `id_layanan` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `payments`
--
ALTER TABLE `payments`
  MODIFY `id_payment` int(11) NOT NULL AUTO_INCREMENT;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `payments`
--
ALTER TABLE `payments`
  ADD CONSTRAINT `payments_ibfk_1` FOREIGN KEY (`resi`) REFERENCES `pengirimans` (`resi`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `payments_ibfk_10` FOREIGN KEY (`resi`) REFERENCES `pengirimans` (`resi`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `payments_ibfk_11` FOREIGN KEY (`resi`) REFERENCES `pengirimans` (`resi`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `payments_ibfk_12` FOREIGN KEY (`resi`) REFERENCES `pengirimans` (`resi`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `payments_ibfk_13` FOREIGN KEY (`resi`) REFERENCES `pengirimans` (`resi`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `payments_ibfk_14` FOREIGN KEY (`resi`) REFERENCES `pengirimans` (`resi`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `payments_ibfk_15` FOREIGN KEY (`resi`) REFERENCES `pengirimans` (`resi`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `payments_ibfk_16` FOREIGN KEY (`resi`) REFERENCES `pengirimans` (`resi`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `payments_ibfk_17` FOREIGN KEY (`resi`) REFERENCES `pengirimans` (`resi`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `payments_ibfk_18` FOREIGN KEY (`resi`) REFERENCES `pengirimans` (`resi`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `payments_ibfk_19` FOREIGN KEY (`resi`) REFERENCES `pengirimans` (`resi`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `payments_ibfk_2` FOREIGN KEY (`resi`) REFERENCES `pengirimans` (`resi`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `payments_ibfk_20` FOREIGN KEY (`resi`) REFERENCES `pengirimans` (`resi`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `payments_ibfk_21` FOREIGN KEY (`resi`) REFERENCES `pengirimans` (`resi`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `payments_ibfk_22` FOREIGN KEY (`resi`) REFERENCES `pengirimans` (`resi`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `payments_ibfk_23` FOREIGN KEY (`resi`) REFERENCES `pengirimans` (`resi`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `payments_ibfk_24` FOREIGN KEY (`resi`) REFERENCES `pengirimans` (`resi`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `payments_ibfk_25` FOREIGN KEY (`resi`) REFERENCES `pengirimans` (`resi`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `payments_ibfk_26` FOREIGN KEY (`resi`) REFERENCES `pengirimans` (`resi`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `payments_ibfk_27` FOREIGN KEY (`resi`) REFERENCES `pengirimans` (`resi`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `payments_ibfk_28` FOREIGN KEY (`resi`) REFERENCES `pengirimans` (`resi`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `payments_ibfk_29` FOREIGN KEY (`resi`) REFERENCES `pengirimans` (`resi`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `payments_ibfk_3` FOREIGN KEY (`resi`) REFERENCES `pengirimans` (`resi`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `payments_ibfk_30` FOREIGN KEY (`resi`) REFERENCES `pengirimans` (`resi`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `payments_ibfk_31` FOREIGN KEY (`resi`) REFERENCES `pengirimans` (`resi`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `payments_ibfk_32` FOREIGN KEY (`resi`) REFERENCES `pengirimans` (`resi`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `payments_ibfk_33` FOREIGN KEY (`resi`) REFERENCES `pengirimans` (`resi`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `payments_ibfk_34` FOREIGN KEY (`resi`) REFERENCES `pengirimans` (`resi`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `payments_ibfk_35` FOREIGN KEY (`resi`) REFERENCES `pengirimans` (`resi`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `payments_ibfk_36` FOREIGN KEY (`resi`) REFERENCES `pengirimans` (`resi`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `payments_ibfk_37` FOREIGN KEY (`resi`) REFERENCES `pengirimans` (`resi`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `payments_ibfk_38` FOREIGN KEY (`resi`) REFERENCES `pengirimans` (`resi`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `payments_ibfk_39` FOREIGN KEY (`resi`) REFERENCES `pengirimans` (`resi`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `payments_ibfk_4` FOREIGN KEY (`resi`) REFERENCES `pengirimans` (`resi`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `payments_ibfk_40` FOREIGN KEY (`resi`) REFERENCES `pengirimans` (`resi`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `payments_ibfk_41` FOREIGN KEY (`resi`) REFERENCES `pengirimans` (`resi`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `payments_ibfk_42` FOREIGN KEY (`resi`) REFERENCES `pengirimans` (`resi`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `payments_ibfk_43` FOREIGN KEY (`resi`) REFERENCES `pengirimans` (`resi`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `payments_ibfk_44` FOREIGN KEY (`resi`) REFERENCES `pengirimans` (`resi`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `payments_ibfk_45` FOREIGN KEY (`resi`) REFERENCES `pengirimans` (`resi`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `payments_ibfk_46` FOREIGN KEY (`resi`) REFERENCES `pengirimans` (`resi`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `payments_ibfk_47` FOREIGN KEY (`resi`) REFERENCES `pengirimans` (`resi`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `payments_ibfk_48` FOREIGN KEY (`resi`) REFERENCES `pengirimans` (`resi`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `payments_ibfk_49` FOREIGN KEY (`resi`) REFERENCES `pengirimans` (`resi`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `payments_ibfk_5` FOREIGN KEY (`resi`) REFERENCES `pengirimans` (`resi`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `payments_ibfk_50` FOREIGN KEY (`resi`) REFERENCES `pengirimans` (`resi`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `payments_ibfk_51` FOREIGN KEY (`resi`) REFERENCES `pengirimans` (`resi`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `payments_ibfk_52` FOREIGN KEY (`resi`) REFERENCES `pengirimans` (`resi`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `payments_ibfk_53` FOREIGN KEY (`resi`) REFERENCES `pengirimans` (`resi`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `payments_ibfk_6` FOREIGN KEY (`resi`) REFERENCES `pengirimans` (`resi`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `payments_ibfk_7` FOREIGN KEY (`resi`) REFERENCES `pengirimans` (`resi`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `payments_ibfk_8` FOREIGN KEY (`resi`) REFERENCES `pengirimans` (`resi`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `payments_ibfk_9` FOREIGN KEY (`resi`) REFERENCES `pengirimans` (`resi`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `pengirimans`
--
ALTER TABLE `pengirimans`
  ADD CONSTRAINT `pengirimans_ibfk_1` FOREIGN KEY (`id_layanan`) REFERENCES `layanans` (`id_layanan`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `pengirimans_ibfk_10` FOREIGN KEY (`id_layanan`) REFERENCES `layanans` (`id_layanan`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `pengirimans_ibfk_11` FOREIGN KEY (`id_layanan`) REFERENCES `layanans` (`id_layanan`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `pengirimans_ibfk_12` FOREIGN KEY (`id_layanan`) REFERENCES `layanans` (`id_layanan`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `pengirimans_ibfk_13` FOREIGN KEY (`id_layanan`) REFERENCES `layanans` (`id_layanan`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `pengirimans_ibfk_14` FOREIGN KEY (`id_layanan`) REFERENCES `layanans` (`id_layanan`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `pengirimans_ibfk_15` FOREIGN KEY (`id_layanan`) REFERENCES `layanans` (`id_layanan`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `pengirimans_ibfk_16` FOREIGN KEY (`id_layanan`) REFERENCES `layanans` (`id_layanan`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `pengirimans_ibfk_17` FOREIGN KEY (`id_layanan`) REFERENCES `layanans` (`id_layanan`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `pengirimans_ibfk_18` FOREIGN KEY (`id_layanan`) REFERENCES `layanans` (`id_layanan`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `pengirimans_ibfk_19` FOREIGN KEY (`id_layanan`) REFERENCES `layanans` (`id_layanan`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `pengirimans_ibfk_2` FOREIGN KEY (`id_layanan`) REFERENCES `layanans` (`id_layanan`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `pengirimans_ibfk_20` FOREIGN KEY (`id_layanan`) REFERENCES `layanans` (`id_layanan`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `pengirimans_ibfk_21` FOREIGN KEY (`id_layanan`) REFERENCES `layanans` (`id_layanan`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `pengirimans_ibfk_22` FOREIGN KEY (`id_layanan`) REFERENCES `layanans` (`id_layanan`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `pengirimans_ibfk_23` FOREIGN KEY (`id_layanan`) REFERENCES `layanans` (`id_layanan`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `pengirimans_ibfk_24` FOREIGN KEY (`id_layanan`) REFERENCES `layanans` (`id_layanan`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `pengirimans_ibfk_25` FOREIGN KEY (`id_layanan`) REFERENCES `layanans` (`id_layanan`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `pengirimans_ibfk_26` FOREIGN KEY (`id_layanan`) REFERENCES `layanans` (`id_layanan`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `pengirimans_ibfk_27` FOREIGN KEY (`id_layanan`) REFERENCES `layanans` (`id_layanan`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `pengirimans_ibfk_28` FOREIGN KEY (`id_layanan`) REFERENCES `layanans` (`id_layanan`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `pengirimans_ibfk_29` FOREIGN KEY (`id_layanan`) REFERENCES `layanans` (`id_layanan`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `pengirimans_ibfk_3` FOREIGN KEY (`id_layanan`) REFERENCES `layanans` (`id_layanan`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `pengirimans_ibfk_30` FOREIGN KEY (`id_layanan`) REFERENCES `layanans` (`id_layanan`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `pengirimans_ibfk_31` FOREIGN KEY (`id_layanan`) REFERENCES `layanans` (`id_layanan`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `pengirimans_ibfk_32` FOREIGN KEY (`id_layanan`) REFERENCES `layanans` (`id_layanan`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `pengirimans_ibfk_33` FOREIGN KEY (`id_layanan`) REFERENCES `layanans` (`id_layanan`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `pengirimans_ibfk_34` FOREIGN KEY (`id_layanan`) REFERENCES `layanans` (`id_layanan`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `pengirimans_ibfk_35` FOREIGN KEY (`id_layanan`) REFERENCES `layanans` (`id_layanan`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `pengirimans_ibfk_36` FOREIGN KEY (`id_layanan`) REFERENCES `layanans` (`id_layanan`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `pengirimans_ibfk_37` FOREIGN KEY (`id_layanan`) REFERENCES `layanans` (`id_layanan`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `pengirimans_ibfk_38` FOREIGN KEY (`id_layanan`) REFERENCES `layanans` (`id_layanan`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `pengirimans_ibfk_39` FOREIGN KEY (`id_layanan`) REFERENCES `layanans` (`id_layanan`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `pengirimans_ibfk_4` FOREIGN KEY (`id_layanan`) REFERENCES `layanans` (`id_layanan`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `pengirimans_ibfk_40` FOREIGN KEY (`id_layanan`) REFERENCES `layanans` (`id_layanan`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `pengirimans_ibfk_41` FOREIGN KEY (`id_layanan`) REFERENCES `layanans` (`id_layanan`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `pengirimans_ibfk_42` FOREIGN KEY (`id_layanan`) REFERENCES `layanans` (`id_layanan`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `pengirimans_ibfk_43` FOREIGN KEY (`id_layanan`) REFERENCES `layanans` (`id_layanan`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `pengirimans_ibfk_44` FOREIGN KEY (`id_layanan`) REFERENCES `layanans` (`id_layanan`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `pengirimans_ibfk_45` FOREIGN KEY (`id_layanan`) REFERENCES `layanans` (`id_layanan`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `pengirimans_ibfk_46` FOREIGN KEY (`id_layanan`) REFERENCES `layanans` (`id_layanan`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `pengirimans_ibfk_47` FOREIGN KEY (`id_layanan`) REFERENCES `layanans` (`id_layanan`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `pengirimans_ibfk_48` FOREIGN KEY (`id_layanan`) REFERENCES `layanans` (`id_layanan`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `pengirimans_ibfk_49` FOREIGN KEY (`id_layanan`) REFERENCES `layanans` (`id_layanan`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `pengirimans_ibfk_5` FOREIGN KEY (`id_layanan`) REFERENCES `layanans` (`id_layanan`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `pengirimans_ibfk_50` FOREIGN KEY (`id_layanan`) REFERENCES `layanans` (`id_layanan`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `pengirimans_ibfk_51` FOREIGN KEY (`id_layanan`) REFERENCES `layanans` (`id_layanan`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `pengirimans_ibfk_52` FOREIGN KEY (`id_layanan`) REFERENCES `layanans` (`id_layanan`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `pengirimans_ibfk_6` FOREIGN KEY (`id_layanan`) REFERENCES `layanans` (`id_layanan`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `pengirimans_ibfk_7` FOREIGN KEY (`id_layanan`) REFERENCES `layanans` (`id_layanan`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `pengirimans_ibfk_8` FOREIGN KEY (`id_layanan`) REFERENCES `layanans` (`id_layanan`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `pengirimans_ibfk_9` FOREIGN KEY (`id_layanan`) REFERENCES `layanans` (`id_layanan`) ON DELETE NO ACTION ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
