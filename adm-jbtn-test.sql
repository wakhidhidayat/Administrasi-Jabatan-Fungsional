-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Dec 04, 2019 at 10:09 AM
-- Server version: 10.4.8-MariaDB
-- PHP Version: 7.3.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `adm-jbtn-test`
--

-- --------------------------------------------------------

--
-- Table structure for table `dosen`
--

CREATE TABLE `dosen` (
  `nip` varchar(20) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `no_hp` varchar(100) NOT NULL,
  `foto` varchar(255) NOT NULL,
  `id_jabatan` int(11) NOT NULL,
  `id_golongan` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `dosen`
--

INSERT INTO `dosen` (`nip`, `nama`, `email`, `no_hp`, `foto`, `id_jabatan`, `id_golongan`) VALUES
('196305121989011001', 'Muhammad Munir, M. Pd.', 'munir@uny.ac.id', '087838976653', 'uploads/MUnir.jpg', 3, 3),
('19670608199303100', 'Dr.Eko Marpanji,M.T.', 'eko@uny.ac.id', '087653892108', 'uploads/EKO_0.jpg', 2, 2),
('196709301993031005', 'Drs. Totok Sukardiyono, M. T.', 'totoks@uny.ac.id', '085771356040', 'uploads/totok.jpg', 2, 1),
('197212282005011001', 'Adi Dewanto, S.T.,M.Kom.', 'adi@uny.ac.id', '085639482792', 'uploads/adi.jpeg', 2, 2),
('19791214201012200', 'Dessy Irmawati,M.T.', 'dessy.irmawati@uny.ac.id', '081328015688', 'uploads/dessy.jpg', 3, 2);

-- --------------------------------------------------------

--
-- Table structure for table `golongan`
--

CREATE TABLE `golongan` (
  `id_golongan` int(11) NOT NULL,
  `nama_golongan` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `golongan`
--

INSERT INTO `golongan` (`id_golongan`, `nama_golongan`) VALUES
(1, 'III/a'),
(2, 'III/b'),
(3, 'III/c'),
(4, 'III/d'),
(5, 'IV/a'),
(6, 'IV/b'),
(7, 'IV/c'),
(8, 'IV/d'),
(9, 'IV/e');

-- --------------------------------------------------------

--
-- Table structure for table `jabatan`
--

CREATE TABLE `jabatan` (
  `id_jabatan` int(11) NOT NULL,
  `nama_jabatan` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `jabatan`
--

INSERT INTO `jabatan` (`id_jabatan`, `nama_jabatan`) VALUES
(1, 'Lektor Kepala'),
(2, 'Asisten Ahli'),
(3, 'Lektor'),
(4, 'Guru Besar');

-- --------------------------------------------------------

--
-- Table structure for table `jenjang`
--

CREATE TABLE `jenjang` (
  `id_jenjang` int(11) NOT NULL,
  `nama_jenjang` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `jenjang`
--

INSERT INTO `jenjang` (`id_jenjang`, `nama_jenjang`) VALUES
(1, 'S1'),
(2, 'S2'),
(3, 'S3'),
(4, 'D3');

-- --------------------------------------------------------

--
-- Table structure for table `jurusan`
--

CREATE TABLE `jurusan` (
  `id_jurusan` int(11) NOT NULL,
  `nama_jurusan` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `jurusan`
--

INSERT INTO `jurusan` (`id_jurusan`, `nama_jurusan`) VALUES
(1, 'Teknik Informatika'),
(2, 'Ilmu Komputer'),
(3, 'Pendidikan Teknik Elektronika'),
(5, 'Sistem Informasi'),
(6, 'Teknik Elektronika'),
(7, 'Pendidikan Teknik Informatika'),
(9, 'Teknik Elektro'),
(10, 'Pendidikan Teknologi Dan Kejuruan'),
(11, 'Sistem Komputer'),
(12, 'Teknik Mesin');

-- --------------------------------------------------------

--
-- Table structure for table `keahlian`
--

CREATE TABLE `keahlian` (
  `id_keahlian` int(11) NOT NULL,
  `nama_keahlian` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `keahlian`
--

INSERT INTO `keahlian` (`id_keahlian`, `nama_keahlian`) VALUES
(1, 'Mobile Programming'),
(2, 'Website Development'),
(3, 'Jaringan Komputer'),
(4, 'Elektronika'),
(5, 'Pendidikan Teknologi'),
(6, 'Komunikasi Data'),
(7, 'Sistem Informasi'),
(8, 'Pemrosesan Sinyal');

-- --------------------------------------------------------

--
-- Table structure for table `keahlian_dosen`
--

CREATE TABLE `keahlian_dosen` (
  `nip` varchar(20) NOT NULL,
  `id_keahlian` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `keahlian_dosen`
--

INSERT INTO `keahlian_dosen` (`nip`, `id_keahlian`) VALUES
('19670608199303100', 3),
('19670608199303100', 6),
('19791214201012200', 8),
('196709301993031005', 3),
('196709301993031005', 4),
('197212282005011001', 7),
('196305121989011001', 5),
('196305121989011001', 4);

-- --------------------------------------------------------

--
-- Table structure for table `kegiatan_profesional`
--

CREATE TABLE `kegiatan_profesional` (
  `id_kegiatan` int(11) NOT NULL,
  `nama_kegiatan` varchar(200) NOT NULL,
  `tempat` varchar(200) NOT NULL,
  `tahun` year(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `kegiatan_profesional`
--

INSERT INTO `kegiatan_profesional` (`id_kegiatan`, `nama_kegiatan`, `tempat`, `tahun`) VALUES
(1, 'Penyuluhan perawatan peralatan elektronika', 'Keluruhan Argomulyo Cangkringan Sleman', 1990),
(2, 'Kursus elektronika (sei.perlengkapan)', 'Pus PPM IKIP Yk', 1989),
(3, 'Desa binaan Kepuharjo tahap III; program pembinaan bengkel motor, radio, dan instalasi listrik (anggota pelaksana)', 'Pemuda Desa Kepuharja Sleman', 1992),
(4, 'Penyuluhan Pemanfaatan Komputer Sebagai Alat Bantu Dalam Perancangan Rangkaian Elektronika', 'SMK Prambanan', 1993),
(5, 'Seminar dan Lokakarya Penulisan Karya Tulis Ilmiah', 'SMPN 1 Semanu', 1994),
(6, 'Workshop Pengajaran Bengkel Elektronika Bagi guru-guru Ketrampilan Elektronika di DIY', 'Jurusan Elektronika FT UNY', 1997),
(7, 'Pelatihan Penggunaan Perangkat Lunak Electronics Workbench (EWB) dalam Pembelajaran Bagi Guru-guru SMP dan SMK Se-Kabupaten Gunung Kidul', 'SMK Muhammadiyah Pathuk Kab. Gunung Kidul', 2005),
(8, 'Juri bidang Desain Web pada pelaksanaan LKS SMK se Daerah Istimewa Yogyakarta', 'BLPT Yogyakarta', 2006),
(9, 'Pelatihan dan Pendampingan Pengembangan Web Pembelajaran Interaktif Bagi Guru SMK Menuju Sekolah Berstandar Internasional', 'SMK SMTI', 2012),
(10, 'Workshop Penyusunan GBPP dan RPP', 'Sekolah Tinggi Teknologi Nuklir (STTN) BATAN Yogyakarta', 2010),
(11, 'Workshop Peningkatan Kualitas Pendidikan Menggunakan Teknologi Internet', 'SMK YPKK Gamping, Sleman, Yogyakarta', 2010);

-- --------------------------------------------------------

--
-- Table structure for table `kegiatan_profesional_dosen`
--

CREATE TABLE `kegiatan_profesional_dosen` (
  `nip` varchar(20) NOT NULL,
  `id_kegiatan` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `kegiatan_profesional_dosen`
--

INSERT INTO `kegiatan_profesional_dosen` (`nip`, `id_kegiatan`) VALUES
('196305121989011001', 1),
('196305121989011001', 2),
('196305121989011001', 3),
('196709301993031005', 4),
('196709301993031005', 5),
('196709301993031005', 6),
('197212282005011001', 7),
('197212282005011001', 8),
('19791214201012200', 9),
('19670608199303100', 10),
('19670608199303100', 11);

-- --------------------------------------------------------

--
-- Table structure for table `mata_kuliah`
--

CREATE TABLE `mata_kuliah` (
  `kode_makul` varchar(20) NOT NULL,
  `nama_makul` varchar(200) NOT NULL,
  `tahun` year(4) NOT NULL,
  `id_jenjang` int(11) NOT NULL,
  `nip` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `mata_kuliah`
--

INSERT INTO `mata_kuliah` (`kode_makul`, `nama_makul`, `tahun`, `id_jenjang`, `nip`) VALUES
('EKA5205', 'Gambar Elektronika', 1990, 1, '196305121989011001'),
('EKA5216', 'Komunikasi Data', 2007, 4, '196709301993031005'),
('EKA5236', 'Jaringan Komputer', 2010, 4, '19670608199303100'),
('EKA6205', 'Gambar Teknik', 1990, 1, '196305121989011001'),
('KTF6206', 'Fisika', 2018, 1, '19670608199303100'),
('PTI6202', 'Pemrograman 1', 2011, 1, '196709301993031005'),
('PTI6212', 'Algoritma Pemrograman', 2010, 1, '197212282005011001'),
('PTI6216', 'Desain Web', 2007, 1, '196305121989011001'),
('PTI6221', 'Struktur Data', 2010, 1, '197212282005011001'),
('PTI6223', 'Basis Data', 2007, 1, '197212282005011001'),
('PTI6239', 'Pembelajaran Berbasis Multimedia', 2002, 1, '19670608199303100'),
('PTK9972', 'ICT', 2007, 2, '196709301993031005');

-- --------------------------------------------------------

--
-- Table structure for table `mata_kuliah_jurusan`
--

CREATE TABLE `mata_kuliah_jurusan` (
  `kode_makul` varchar(20) NOT NULL,
  `id_jurusan` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `mata_kuliah_jurusan`
--

INSERT INTO `mata_kuliah_jurusan` (`kode_makul`, `id_jurusan`) VALUES
('EKA5205', 3),
('EKA6205', 6),
('PTI6216', 7),
('KTF6206', 7),
('EKA5236', 6),
('PTI6239', 7),
('PTK9972', 10),
('PTI6202', 7),
('EKA5216', 6),
('PTI6212', 7),
('PTI6221', 7),
('PTI6223', 7);

-- --------------------------------------------------------

--
-- Table structure for table `pendidikan`
--

CREATE TABLE `pendidikan` (
  `id_pendidikan` int(11) NOT NULL,
  `tahun_lulus` year(4) NOT NULL,
  `id_jurusan` int(11) NOT NULL,
  `id_universitas` int(11) NOT NULL,
  `id_jenjang` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pendidikan`
--

INSERT INTO `pendidikan` (`id_pendidikan`, `tahun_lulus`, `id_jurusan`, `id_universitas`, `id_jenjang`) VALUES
(1, 1988, 3, 2, 1),
(2, 2007, 10, 2, 2),
(3, 1990, 3, 2, 1),
(4, 1999, 9, 6, 2),
(5, 2009, 9, 6, 3),
(6, 2001, 9, 1, 2),
(7, 1999, 12, 4, 1),
(8, 2004, 2, 1, 2),
(9, 2002, 9, 5, 1),
(10, 2005, 9, 1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `pendidikan_dosen`
--

CREATE TABLE `pendidikan_dosen` (
  `nip` varchar(20) NOT NULL,
  `id_pendidikan` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pendidikan_dosen`
--

INSERT INTO `pendidikan_dosen` (`nip`, `id_pendidikan`) VALUES
('19791214201012200', 9),
('19791214201012200', 10),
('196305121989011001', 1),
('196305121989011001', 2),
('19670608199303100', 4),
('19670608199303100', 5),
('19670608199303100', 3),
('196709301993031005', 3),
('196709301993031005', 6),
('197212282005011001', 7),
('197212282005011001', 8);

-- --------------------------------------------------------

--
-- Table structure for table `penelitian`
--

CREATE TABLE `penelitian` (
  `id_penelitian` int(11) NOT NULL,
  `judul` varchar(100) NOT NULL,
  `tahun` year(4) NOT NULL,
  `id_sumber_dana` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `penelitian`
--

INSERT INTO `penelitian` (`id_penelitian`, `judul`, `tahun`, `id_sumber_dana`) VALUES
(1, 'Pengaruh TID terhadap prestasi mahasiswa FPTK IKIP Yogyakarta', 1989, 3),
(2, 'Media Pembelajaran Praktik Elektronika Digital Model Briefcase Terpadu', 2008, 4),
(3, 'Pemanfaatan Tenaga Surya Dalam Proses Pembuatan PCB Sistem Afdruk', 1994, 1),
(4, 'Uji Coba Pengiriman File Dalam Komunikasi Data Melalui PSTN', 1995, 1),
(5, 'Digital Library Sebagai Penyedia Informasi Berbasis Web', 2002, 3),
(6, 'Sistem Informasi Kearsipan', 2012, 4);

-- --------------------------------------------------------

--
-- Table structure for table `penelitian_dosen`
--

CREATE TABLE `penelitian_dosen` (
  `nip` varchar(20) NOT NULL,
  `id_penelitian` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `penelitian_dosen`
--

INSERT INTO `penelitian_dosen` (`nip`, `id_penelitian`) VALUES
('196305121989011001', 1),
('196305121989011001', 2),
('19670608199303100', 3),
('196709301993031005', 3),
('196709301993031005', 4),
('197212282005011001', 5),
('19791214201012200', 6);

-- --------------------------------------------------------

--
-- Table structure for table `sumber_dana`
--

CREATE TABLE `sumber_dana` (
  `id_sumber_dana` int(11) NOT NULL,
  `nama_sumber_dana` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sumber_dana`
--

INSERT INTO `sumber_dana` (`id_sumber_dana`, `nama_sumber_dana`) VALUES
(1, 'DIKTI'),
(2, 'Dinas Pendidikan DIY'),
(3, 'OPF'),
(4, 'DIPA UNY'),
(5, 'Fakultas Teknik UNY');

-- --------------------------------------------------------

--
-- Table structure for table `universitas`
--

CREATE TABLE `universitas` (
  `id_universitas` int(11) NOT NULL,
  `nama_universitas` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `universitas`
--

INSERT INTO `universitas` (`id_universitas`, `nama_universitas`) VALUES
(1, 'Universitas Gadjah Mada'),
(2, 'Universitas Negeri Yogyakarta'),
(3, 'Universitas Indonesia'),
(4, 'Institut Teknologi Nasional Malang'),
(5, 'Universitas Wangsa Manggala Yogyakarta'),
(6, 'Institut Teknologi Bandung');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `dosen`
--
ALTER TABLE `dosen`
  ADD PRIMARY KEY (`nip`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `no_hp` (`no_hp`),
  ADD KEY `id_posisi` (`id_jabatan`),
  ADD KEY `id_golongan` (`id_golongan`);

--
-- Indexes for table `golongan`
--
ALTER TABLE `golongan`
  ADD PRIMARY KEY (`id_golongan`);

--
-- Indexes for table `jabatan`
--
ALTER TABLE `jabatan`
  ADD PRIMARY KEY (`id_jabatan`);

--
-- Indexes for table `jenjang`
--
ALTER TABLE `jenjang`
  ADD PRIMARY KEY (`id_jenjang`);

--
-- Indexes for table `jurusan`
--
ALTER TABLE `jurusan`
  ADD PRIMARY KEY (`id_jurusan`);

--
-- Indexes for table `keahlian`
--
ALTER TABLE `keahlian`
  ADD PRIMARY KEY (`id_keahlian`);

--
-- Indexes for table `keahlian_dosen`
--
ALTER TABLE `keahlian_dosen`
  ADD KEY `nip` (`nip`),
  ADD KEY `id_keahlian` (`id_keahlian`);

--
-- Indexes for table `kegiatan_profesional`
--
ALTER TABLE `kegiatan_profesional`
  ADD PRIMARY KEY (`id_kegiatan`);

--
-- Indexes for table `kegiatan_profesional_dosen`
--
ALTER TABLE `kegiatan_profesional_dosen`
  ADD KEY `nip` (`nip`),
  ADD KEY `id_kegiatan` (`id_kegiatan`);

--
-- Indexes for table `mata_kuliah`
--
ALTER TABLE `mata_kuliah`
  ADD PRIMARY KEY (`kode_makul`),
  ADD KEY `id_jenjang` (`id_jenjang`),
  ADD KEY `nip` (`nip`);

--
-- Indexes for table `mata_kuliah_jurusan`
--
ALTER TABLE `mata_kuliah_jurusan`
  ADD KEY `kode_makul` (`kode_makul`),
  ADD KEY `id_jurusan` (`id_jurusan`);

--
-- Indexes for table `pendidikan`
--
ALTER TABLE `pendidikan`
  ADD PRIMARY KEY (`id_pendidikan`),
  ADD KEY `id_jurusan` (`id_jurusan`),
  ADD KEY `id_universitas` (`id_universitas`),
  ADD KEY `id_jenjang` (`id_jenjang`);

--
-- Indexes for table `pendidikan_dosen`
--
ALTER TABLE `pendidikan_dosen`
  ADD KEY `id_pendidikan` (`id_pendidikan`),
  ADD KEY `pendidikan_dosen_ibfk_2` (`nip`);

--
-- Indexes for table `penelitian`
--
ALTER TABLE `penelitian`
  ADD PRIMARY KEY (`id_penelitian`),
  ADD KEY `id_sumber_dana` (`id_sumber_dana`);

--
-- Indexes for table `penelitian_dosen`
--
ALTER TABLE `penelitian_dosen`
  ADD KEY `nip` (`nip`),
  ADD KEY `id_penelitian` (`id_penelitian`);

--
-- Indexes for table `sumber_dana`
--
ALTER TABLE `sumber_dana`
  ADD PRIMARY KEY (`id_sumber_dana`);

--
-- Indexes for table `universitas`
--
ALTER TABLE `universitas`
  ADD PRIMARY KEY (`id_universitas`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `golongan`
--
ALTER TABLE `golongan`
  MODIFY `id_golongan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `jabatan`
--
ALTER TABLE `jabatan`
  MODIFY `id_jabatan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `jenjang`
--
ALTER TABLE `jenjang`
  MODIFY `id_jenjang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `jurusan`
--
ALTER TABLE `jurusan`
  MODIFY `id_jurusan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `keahlian`
--
ALTER TABLE `keahlian`
  MODIFY `id_keahlian` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `kegiatan_profesional`
--
ALTER TABLE `kegiatan_profesional`
  MODIFY `id_kegiatan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `pendidikan`
--
ALTER TABLE `pendidikan`
  MODIFY `id_pendidikan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `penelitian`
--
ALTER TABLE `penelitian`
  MODIFY `id_penelitian` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `sumber_dana`
--
ALTER TABLE `sumber_dana`
  MODIFY `id_sumber_dana` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `universitas`
--
ALTER TABLE `universitas`
  MODIFY `id_universitas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `dosen`
--
ALTER TABLE `dosen`
  ADD CONSTRAINT `dosen_ibfk_1` FOREIGN KEY (`id_jabatan`) REFERENCES `jabatan` (`id_jabatan`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `dosen_ibfk_2` FOREIGN KEY (`id_golongan`) REFERENCES `golongan` (`id_golongan`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `keahlian_dosen`
--
ALTER TABLE `keahlian_dosen`
  ADD CONSTRAINT `keahlian_dosen_ibfk_1` FOREIGN KEY (`nip`) REFERENCES `dosen` (`nip`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `keahlian_dosen_ibfk_2` FOREIGN KEY (`id_keahlian`) REFERENCES `keahlian` (`id_keahlian`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `kegiatan_profesional_dosen`
--
ALTER TABLE `kegiatan_profesional_dosen`
  ADD CONSTRAINT `kegiatan_profesional_dosen_ibfk_1` FOREIGN KEY (`nip`) REFERENCES `dosen` (`nip`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `kegiatan_profesional_dosen_ibfk_2` FOREIGN KEY (`id_kegiatan`) REFERENCES `kegiatan_profesional` (`id_kegiatan`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mata_kuliah`
--
ALTER TABLE `mata_kuliah`
  ADD CONSTRAINT `mata_kuliah_ibfk_1` FOREIGN KEY (`id_jenjang`) REFERENCES `jenjang` (`id_jenjang`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `mata_kuliah_ibfk_2` FOREIGN KEY (`nip`) REFERENCES `dosen` (`nip`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mata_kuliah_jurusan`
--
ALTER TABLE `mata_kuliah_jurusan`
  ADD CONSTRAINT `mata_kuliah_jurusan_ibfk_1` FOREIGN KEY (`kode_makul`) REFERENCES `mata_kuliah` (`kode_makul`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `mata_kuliah_jurusan_ibfk_2` FOREIGN KEY (`id_jurusan`) REFERENCES `jurusan` (`id_jurusan`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `pendidikan`
--
ALTER TABLE `pendidikan`
  ADD CONSTRAINT `pendidikan_ibfk_1` FOREIGN KEY (`id_jurusan`) REFERENCES `jurusan` (`id_jurusan`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `pendidikan_ibfk_2` FOREIGN KEY (`id_universitas`) REFERENCES `universitas` (`id_universitas`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `pendidikan_ibfk_3` FOREIGN KEY (`id_jenjang`) REFERENCES `jenjang` (`id_jenjang`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `pendidikan_dosen`
--
ALTER TABLE `pendidikan_dosen`
  ADD CONSTRAINT `pendidikan_dosen_ibfk_1` FOREIGN KEY (`id_pendidikan`) REFERENCES `pendidikan` (`id_pendidikan`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `pendidikan_dosen_ibfk_2` FOREIGN KEY (`nip`) REFERENCES `dosen` (`nip`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `penelitian`
--
ALTER TABLE `penelitian`
  ADD CONSTRAINT `penelitian_ibfk_1` FOREIGN KEY (`id_sumber_dana`) REFERENCES `sumber_dana` (`id_sumber_dana`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `penelitian_dosen`
--
ALTER TABLE `penelitian_dosen`
  ADD CONSTRAINT `penelitian_dosen_ibfk_1` FOREIGN KEY (`nip`) REFERENCES `dosen` (`nip`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `penelitian_dosen_ibfk_2` FOREIGN KEY (`nip`) REFERENCES `dosen` (`nip`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `penelitian_dosen_ibfk_3` FOREIGN KEY (`id_penelitian`) REFERENCES `penelitian` (`id_penelitian`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `penelitian_dosen_ibfk_4` FOREIGN KEY (`nip`) REFERENCES `dosen` (`nip`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
