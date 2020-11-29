-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 29 Nov 2020 pada 23.42
-- Versi server: 10.4.6-MariaDB
-- Versi PHP: 7.2.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `materi_uts`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `artikel`
--

CREATE TABLE `artikel` (
  `id` int(11) NOT NULL,
  `judul` varchar(255) NOT NULL,
  `penulis` varchar(255) NOT NULL,
  `isi` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `artikel`
--

INSERT INTO `artikel` (`id`, `judul`, `penulis`, `isi`, `created_at`, `updated_at`) VALUES
(2, 'Nikmati Pesona Desa Cemoro Lawang, Gerbang Menuju Gunung Bromo Paling Cantik', 'Muhammad adi', 'Salah satu tempat wisata di Jawa Timur yang sekarang ini sedang naik daun dan terdapat di empat kawasan sekaligus yaitu berada di wilayah Probolinggo, Pasuruan, Malang dan Lumajang adalah Gunung Bromo. Pesona alam terindah dapat Anda saksikan disini dengan segudang pesona keindahan yang tak ada gantinya. Gunung Bromo memang menjadi sebuah gunung yang sangat cantik dimana tak hanya gunung ini saja yang cantik sepanjang perjalanan menuju Gunung Bromo juga menawarkan keindahan legendaris yang sempurna.', '2020-11-29 06:30:39', '2020-11-29 08:13:16'),
(3, 'Ternate Tidore Negeri tujuan para penjelajah', 'Nurlaila sari', 'Ternate Tidore sejak jaman pertengahan sudah menjadi tujuan utama para penjelajah dari Eropa karena rempah rempahnya, dan sejak saat itu Ternate selalu menjadi tujuan utama para perjelajah, bedanya kalau dulu tujuan utamanya adalah penguasaan, sekarang beralih karena keindahan alam dan adat budaya dari efek penjelajahan masa lalu.Setelah perjalanan dari Kei kecil di ujung Selatan Maluku kami lansung melanjutkan perjalanan ke ujung Utara maluku yaitu Ternate – Tidore, di Ternate Tidore ini kami ditemani oleh teman yang tinggal di Ternate dan kami putuskan menyewa mobil untuk explore ternate dan tidore dengan harga 600 rb/hari include bbm.', '2020-11-29 07:31:20', '2020-11-29 08:14:21');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kategori`
--

CREATE TABLE `kategori` (
  `id` int(11) NOT NULL,
  `nama` int(225) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `update_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `komentar`
--

CREATE TABLE `komentar` (
  `id` int(11) NOT NULL,
  `id_blog` int(11) NOT NULL,
  `nama` varchar(225) NOT NULL,
  `email` varchar(225) NOT NULL,
  `isi` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `komentar`
--

INSERT INTO `komentar` (`id`, `id_blog`, `nama`, `email`, `isi`, `created_at`, `updated_at`) VALUES
(1, 2, 'Riri andriani', 'riri@gmail.com', 'cukup menarik dan menginspirasi', '2020-11-29 08:11:30', '2020-11-29 08:11:30');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `nama` varchar(225) NOT NULL,
  `username` varchar(225) NOT NULL,
  `email` varchar(225) NOT NULL,
  `password` varchar(225) NOT NULL,
  `remember_token` varchar(225) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `nama`, `username`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(10, 'Tiana Adela Pratiwi', 'Tiana', 'tiana@gmail.com', '$2y$10$tTyYtnxknGMgpyA68OkczuRJdNQp8JNyN84.WT3i6HQ4gesAjVWdy', NULL, '2020-11-26 13:33:11', '2020-11-26 06:33:11'),
(12, 'Tiana Adela Pratiwi', 'Adel', 'adel@gmail.com', '$2y$10$0uhq0nFZlbp66TFPhdNpGu9COG/6j9W.PrdBq9oTFkjtKncSvnJFe', NULL, '2020-11-25 15:23:13', '2020-11-25 08:23:13'),
(13, 'Tiana Adela Pratiwi', 'Tiwi', 'tiwi@gmail.com', '$2y$10$1DjhSIn.HAgBIOzR54QzGe5hjmgYqrF47hZCJFzMeAG/urZA/QRte', NULL, '2020-11-25 08:22:10', '2020-11-25 08:22:10');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user_detail`
--

CREATE TABLE `user_detail` (
  `id` int(11) NOT NULL,
  `id_user` int(11) DEFAULT NULL,
  `no_handphone` varchar(15) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `user_detail`
--

INSERT INTO `user_detail` (`id`, `id_user`, `no_handphone`, `created_at`, `updated_at`) VALUES
(2, 10, '+6285349466908', '2020-11-25 05:46:47', '2020-11-25 05:46:47'),
(4, 12, '+6282187111818', '2020-11-25 08:18:31', '2020-11-25 08:18:31'),
(5, 13, '+6282127222299', '2020-11-25 08:22:10', '2020-11-25 08:22:10');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `artikel`
--
ALTER TABLE `artikel`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `komentar`
--
ALTER TABLE `komentar`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `user_detail`
--
ALTER TABLE `user_detail`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `artikel`
--
ALTER TABLE `artikel`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `komentar`
--
ALTER TABLE `komentar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT untuk tabel `user_detail`
--
ALTER TABLE `user_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
