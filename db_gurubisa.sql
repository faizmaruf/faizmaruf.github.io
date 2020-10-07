-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Oct 07, 2020 at 03:34 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_gurubisa`
--

-- --------------------------------------------------------

--
-- Table structure for table `daftar`
--

CREATE TABLE `daftar` (
  `id_daftar` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_kelas` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `daftar`
--

INSERT INTO `daftar` (`id_daftar`, `id_user`, `id_kelas`) VALUES
(5, 1, 4),
(6, 2, 3);

-- --------------------------------------------------------

--
-- Table structure for table `kelas`
--

CREATE TABLE `kelas` (
  `id_kelas` int(11) NOT NULL,
  `nama_kelas` varchar(255) NOT NULL,
  `deskripsi_kelas` varchar(255) NOT NULL,
  `image_kelas` varchar(255) NOT NULL,
  `video_kelas` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `kelas`
--

INSERT INTO `kelas` (`id_kelas`, `nama_kelas`, `deskripsi_kelas`, `image_kelas`, `video_kelas`) VALUES
(3, 'Stragtegi Pembelajaran Daring', 'Bagaimanapun juga, pembelajaran secara daring dan jarak jauh membutuhkan bantuan teknologi yang mumpuni dan dapat diakses dengan mudah Serta menuntut tenaga pendidik untuk efektif dalam kegiatan belajar mengajar via daring.', '1.jpg', ''),
(4, 'Membuat Media Pembelajaran Interaktif', 'Media pembelajaran interaktif adalah media presentasi yang di dalamnya terdapat hiperteks, hipermedia, sumber daya multimedia dll. Dalam kelas ini kita akan mempelajari aspek penting dalam membangun suhu belajar yang interaktif', '2.jpg', ''),
(5, 'Microsoft Office Dasar', 'MS Office adalah program atau aplikasi kantoran yang dapat digunakan untuk mempemudah administrasi perkantorna contoh mencatat data anak dsb. ', '3.jpg', ''),
(6, 'Dasar dan Majemen Pendidikan', 'ciptakan suasana belajar yang bermutu dan menyenangkan dan yang lebih penting lagi adalah dapat menciptakan peserta didik belajar cara belajar (learning how to learn) yang terbaik bagi dirinya.', '4.jpg', ''),
(7, 'Strategi Belajar Mengajar SD', 'Pahami dasar-dasar strategi pembelajaran di sekolah dasar untuk menyusun rancangan strategi pembelajaran yang efektif di sekolah dasar.', '5.jpg', ''),
(8, 'Perkembangan Peserta Didik', 'Kajian dan penerapan psikologi perkembangan yang secara khusus mempelajarai aspek-aspek perkembangan individu yang berada pada tahap usia sekolah dan sekolah menengah.', '6.jpg', '');

-- --------------------------------------------------------

--
-- Table structure for table `materi`
--

CREATE TABLE `materi` (
  `id_materi` int(11) NOT NULL,
  `nama_materi` varchar(255) NOT NULL,
  `video_materi` varchar(255) NOT NULL,
  `id_kelas` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `materi`
--

INSERT INTO `materi` (`id_materi`, `nama_materi`, `video_materi`, `id_kelas`) VALUES
(10, 'Manajemen Waktu', '', 3),
(11, 'Persiapan Teknologi Yang Dibutuhkan', '', 3),
(14, 'Komunikasi Pengajar Dengan Murid ', '', 3),
(15, 'Pembelajaran Interaktif', '', 3),
(16, 'Kenali Potensi Yang Mengganggu Proses Pembelajaran', '', 3),
(17, 'Membuat Media Pembelajaran Yang Menarik', '', 3),
(18, 'Menentukan Jenis Multimedia Pembelajaran', '', 4),
(19, 'Menentukan Tema Mater Ajar', '', 4),
(20, 'Menyusun Alur Cerita', '', 4),
(21, 'Teknik ATM', '', 4),
(22, 'Mentapkan Target', '', 4),
(23, 'Menerapkan Resep Success Story', '', 4),
(24, 'Mengenal MS Word', '', 5),
(25, 'Dasar Pengaturan Paragraf', '', 5),
(26, 'Mengenal MS Powerpoint', '', 5),
(27, 'Dasar Membuat Slide Persentasi', '', 5),
(28, 'Mengenal MS Excel', '', 5),
(29, 'Dasar Manipulasi Data Spreadsheet', '', 5),
(30, 'Mengenal Mejemen Pendidikan', '', 6),
(31, 'Membuat Perencanaan Kerangka sistem', '', 6),
(32, 'Pengorganisasian Sistem ', '', 6),
(33, 'Pelaksanaan Menejemen Pendidikan', '', 6),
(34, 'Controlling Sistem', '', 6),
(35, 'Evaluasi Menejemen pendidikan', '', 6),
(36, 'Mengenal Strategi Pembelajaran', '', 7),
(37, 'Starategi Firing Line', '', 7),
(38, 'Observasi dan Memberikan Masukan Secara Aktif', '', 7),
(39, 'Bermain Yang Menyenangkan', '', 7),
(40, 'Memberi Contoh Cerita', '', 7),
(41, 'Demonstrasi Kecakapan', '', 7),
(42, 'Mengenal Perkembangan Anak', '', 8),
(43, 'Peran kematangan dan Belaar', '', 8),
(44, 'Pola Yanga Dapat Diramalkan', '', 8),
(45, 'Semua Individu Berbeda', '', 8),
(46, 'Membangun Perilaku Karakteristik', '', 8),
(47, 'Perkembangan Dengan Rangsanagan', '', 8);

-- --------------------------------------------------------

--
-- Table structure for table `mentor`
--

CREATE TABLE `mentor` (
  `id_mentor` int(11) NOT NULL,
  `nama_mentor` varchar(255) NOT NULL,
  `mentor_image` varchar(255) NOT NULL,
  `profesi_mentor` varchar(255) NOT NULL,
  `id_kelas` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `mentor`
--

INSERT INTO `mentor` (`id_mentor`, `nama_mentor`, `mentor_image`, `profesi_mentor`, `id_kelas`) VALUES
(3, 'Sri Wahyuni', '', 'Dosen Fakultas Pendidikan', 3),
(4, 'Arie Rahmat', '', 'Dosen Fakultas Pendidikan', 4),
(5, 'Faiz Alauddin Ma\'ruf', '', 'Programmer, Admin', 5),
(6, 'Aldiko Tisya', '', 'Dosen Fakultas Pedidikan', 6),
(7, 'Darmawan Abi Nugroho', '', 'Profesor Pendidikan', 7),
(8, 'Rofa Febrianti', '', 'Psikolog, Dosen Fakultas Psikologi', 8);

-- --------------------------------------------------------

--
-- Table structure for table `progres`
--

CREATE TABLE `progres` (
  `id_progres` int(11) NOT NULL,
  `id_daftar` int(255) NOT NULL,
  `id_materi` int(11) NOT NULL,
  `materi_progres` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `progres`
--

INSERT INTO `progres` (`id_progres`, `id_daftar`, `id_materi`, `materi_progres`) VALUES
(3, 5, 18, '1'),
(4, 5, 19, '1'),
(5, 5, 20, '1');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id_user` int(11) NOT NULL,
  `nama_user` varchar(255) NOT NULL,
  `email_user` varchar(255) NOT NULL,
  `password_user` varchar(255) NOT NULL,
  `nuptk_user` varchar(255) NOT NULL,
  `image_user` varchar(255) NOT NULL,
  `jk_user` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id_user`, `nama_user`, `email_user`, `password_user`, `nuptk_user`, `image_user`, `jk_user`) VALUES
(1, 'Faiz Alauddin Ma\'ruf', 'faiz.maruf8888@gmail.com', '123456', '09021181722078', '', 'laki-laki'),
(2, 'Ahmad Agus', 'ahmadagus@gmail.com', 'mrjh2010', '09021181722076', '', 'laki-laki');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `daftar`
--
ALTER TABLE `daftar`
  ADD PRIMARY KEY (`id_daftar`),
  ADD KEY `id_user` (`id_user`),
  ADD KEY `id_kelas` (`id_kelas`);

--
-- Indexes for table `kelas`
--
ALTER TABLE `kelas`
  ADD PRIMARY KEY (`id_kelas`);

--
-- Indexes for table `materi`
--
ALTER TABLE `materi`
  ADD PRIMARY KEY (`id_materi`),
  ADD KEY `id_kelas` (`id_kelas`);

--
-- Indexes for table `mentor`
--
ALTER TABLE `mentor`
  ADD PRIMARY KEY (`id_mentor`),
  ADD KEY `id_kelas` (`id_kelas`);

--
-- Indexes for table `progres`
--
ALTER TABLE `progres`
  ADD PRIMARY KEY (`id_progres`),
  ADD KEY `id_materi` (`id_materi`),
  ADD KEY `id_daftar` (`id_daftar`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `daftar`
--
ALTER TABLE `daftar`
  MODIFY `id_daftar` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `kelas`
--
ALTER TABLE `kelas`
  MODIFY `id_kelas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `materi`
--
ALTER TABLE `materi`
  MODIFY `id_materi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `mentor`
--
ALTER TABLE `mentor`
  MODIFY `id_mentor` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `progres`
--
ALTER TABLE `progres`
  MODIFY `id_progres` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `daftar`
--
ALTER TABLE `daftar`
  ADD CONSTRAINT `daftar_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `user` (`id_user`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `daftar_ibfk_2` FOREIGN KEY (`id_kelas`) REFERENCES `kelas` (`id_kelas`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `materi`
--
ALTER TABLE `materi`
  ADD CONSTRAINT `materi_ibfk_1` FOREIGN KEY (`id_kelas`) REFERENCES `kelas` (`id_kelas`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mentor`
--
ALTER TABLE `mentor`
  ADD CONSTRAINT `mentor_ibfk_1` FOREIGN KEY (`id_kelas`) REFERENCES `kelas` (`id_kelas`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `progres`
--
ALTER TABLE `progres`
  ADD CONSTRAINT `progres_ibfk_2` FOREIGN KEY (`id_materi`) REFERENCES `materi` (`id_materi`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `progres_ibfk_3` FOREIGN KEY (`id_daftar`) REFERENCES `daftar` (`id_daftar`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
