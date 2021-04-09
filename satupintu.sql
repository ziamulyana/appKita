-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 03, 2021 at 08:53 AM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `satupintu`
--

-- --------------------------------------------------------

--
-- Table structure for table `anggaran`
--

CREATE TABLE `anggaran` (
  `namaAnggaran` int(11) NOT NULL,
  `uraianKegiatan` int(11) NOT NULL,
  `divisi` int(11) NOT NULL,
  `mak` int(11) NOT NULL,
  `kode` int(11) NOT NULL,
  `pagu` int(11) NOT NULL,
  `realisasi` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `closedcapa`
--

CREATE TABLE `closedcapa` (
  `noSuratCapa` int(11) NOT NULL,
  `tanggal` date NOT NULL,
  `perihal` varchar(255) NOT NULL,
  `idFeedback` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `noSuratPeringatan` int(11) NOT NULL,
  `tanggal_feedback` int(11) NOT NULL,
  `closed` int(11) DEFAULT NULL,
  `noSuratFeedback` int(11) NOT NULL,
  `jenisFeedback` int(11) DEFAULT NULL,
  `idFeedback` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `kendaraan`
--

CREATE TABLE `kendaraan` (
  `idKendaraan` int(11) NOT NULL,
  `namaKendaraan` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `kota`
--

CREATE TABLE `kota` (
  `idKota` int(11) NOT NULL,
  `namaKota` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `lhk`
--

CREATE TABLE `lhk` (
  `noSuratTugas` int(11) NOT NULL,
  `anggaran` int(11) NOT NULL,
  `kota` int(11) NOT NULL,
  `jlhSaranaDiperiksaOleh` int(11) NOT NULL,
  `sppdDisahkanOleh` int(11) NOT NULL,
  `kwitansiDisahkanOleh` int(11) NOT NULL,
  `form8JamDisahkanOleh` int(11) NOT NULL,
  `urutanSarana` int(11) NOT NULL,
  `namaSarana` int(11) NOT NULL,
  `tglPemeriksaan` int(11) NOT NULL,
  `keterangan` int(11) NOT NULL,
  `alasanTidakDiperiksa` int(11) NOT NULL,
  `isMk` int(11) DEFAULT NULL,
  `idSarana` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `pegawai`
--

CREATE TABLE `pegawai` (
  `idPegawai` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `jabatan` varchar(100) NOT NULL,
  `nip` int(11) NOT NULL,
  `pangkat` varchar(100) NOT NULL,
  `golongan` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `peringatan`
--

CREATE TABLE `peringatan` (
  `namaSarana` int(11) NOT NULL,
  `tglPeringatan` int(11) NOT NULL,
  `noSuratPeringatan` int(11) NOT NULL,
  `perihal` int(11) NOT NULL,
  `tanggal` date NOT NULL,
  `noTl` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `pj`
--

CREATE TABLE `pj` (
  `noSuratTugas` int(11) NOT NULL,
  `noKwitansi` int(11) NOT NULL,
  `namaPetugas` int(11) NOT NULL,
  `terbilang` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `rekomendasidinkes`
--

CREATE TABLE `rekomendasidinkes` (
  `idRekomendasi` int(11) NOT NULL,
  `perihal` int(11) NOT NULL,
  `noSuratPeringatan` int(11) NOT NULL,
  `idFeedback` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `rincianbiaya`
--

CREATE TABLE `rincianbiaya` (
  `noKwitansi` int(11) NOT NULL,
  `uraianBiaya` int(11) NOT NULL,
  `jenisBiaya` int(11) NOT NULL,
  `nominalBiaya` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `sarana`
--

CREATE TABLE `sarana` (
  `idSarana` int(11) NOT NULL,
  `namaSarana` int(11) NOT NULL,
  `alamatSarana` int(11) NOT NULL,
  `pemilik` int(11) NOT NULL,
  `noIzinSarana` int(11) NOT NULL,
  `penanggungJawab` int(11) NOT NULL,
  `noIzinPj` int(11) NOT NULL,
  `kategoriSarana` int(11) DEFAULT NULL,
  `jenisSarana` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `surattl`
--

CREATE TABLE `surattl` (
  `noTl` int(11) NOT NULL,
  `jenisTl` int(11) NOT NULL,
  `noSuratTugas` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `surattugas`
--

CREATE TABLE `surattugas` (
  `noSuratTugas` int(11) NOT NULL,
  `tglMulai` int(11) NOT NULL,
  `bebanBiaya` int(11) NOT NULL,
  `kendaraan` int(11) NOT NULL,
  `kota` int(11) NOT NULL,
  `namaAnggaran` int(11) NOT NULL,
  `tglSelesai` int(11) NOT NULL,
  `maksud` int(11) NOT NULL,
  `namaPenandatangan` int(11) NOT NULL,
  `jabatanPenandatangan` int(11) NOT NULL,
  `idPetugas` int(11) NOT NULL,
  `namaPetugas` varchar(250) NOT NULL,
  `idPegawai` int(11) NOT NULL,
  `idKota` int(11) NOT NULL,
  `idKendaraan` int(11) NOT NULL,
  `mak` int(11) NOT NULL,
  `noKwitansi` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tabel`
--

CREATE TABLE `tabel` (
  `id_user` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `level` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `anggaran`
--
ALTER TABLE `anggaran`
  ADD PRIMARY KEY (`mak`),
  ADD UNIQUE KEY `kode` (`kode`);

--
-- Indexes for table `closedcapa`
--
ALTER TABLE `closedcapa`
  ADD KEY `idFeedback` (`idFeedback`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`idFeedback`),
  ADD KEY `noSuratPeringatan` (`noSuratPeringatan`);

--
-- Indexes for table `kendaraan`
--
ALTER TABLE `kendaraan`
  ADD PRIMARY KEY (`idKendaraan`);

--
-- Indexes for table `kota`
--
ALTER TABLE `kota`
  ADD PRIMARY KEY (`idKota`);

--
-- Indexes for table `lhk`
--
ALTER TABLE `lhk`
  ADD PRIMARY KEY (`noSuratTugas`),
  ADD KEY `idSarana` (`idSarana`);

--
-- Indexes for table `pegawai`
--
ALTER TABLE `pegawai`
  ADD PRIMARY KEY (`idPegawai`),
  ADD UNIQUE KEY `nip` (`nip`);

--
-- Indexes for table `peringatan`
--
ALTER TABLE `peringatan`
  ADD PRIMARY KEY (`noSuratPeringatan`),
  ADD KEY `noTl` (`noTl`);

--
-- Indexes for table `pj`
--
ALTER TABLE `pj`
  ADD PRIMARY KEY (`noKwitansi`);

--
-- Indexes for table `rekomendasidinkes`
--
ALTER TABLE `rekomendasidinkes`
  ADD PRIMARY KEY (`idRekomendasi`),
  ADD KEY `noSuratPeringatan` (`noSuratPeringatan`),
  ADD KEY `idFeedback` (`idFeedback`);

--
-- Indexes for table `rincianbiaya`
--
ALTER TABLE `rincianbiaya`
  ADD PRIMARY KEY (`noKwitansi`);

--
-- Indexes for table `sarana`
--
ALTER TABLE `sarana`
  ADD PRIMARY KEY (`idSarana`),
  ADD UNIQUE KEY `noIzinSarana` (`noIzinSarana`);

--
-- Indexes for table `surattl`
--
ALTER TABLE `surattl`
  ADD PRIMARY KEY (`noTl`),
  ADD KEY `noSuratTugas` (`noSuratTugas`);

--
-- Indexes for table `surattugas`
--
ALTER TABLE `surattugas`
  ADD PRIMARY KEY (`noSuratTugas`),
  ADD UNIQUE KEY `namaAnggaran` (`namaAnggaran`),
  ADD UNIQUE KEY `idPetugas` (`idPetugas`),
  ADD KEY `idPegawai` (`idPegawai`),
  ADD KEY `idKota` (`idKota`),
  ADD KEY `idKendaraan` (`idKendaraan`),
  ADD KEY `mak` (`mak`),
  ADD KEY `noKwitansi` (`noKwitansi`);

--
-- Indexes for table `tabel`
--
ALTER TABLE `tabel`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tabel`
--
ALTER TABLE `tabel`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `closedcapa`
--
ALTER TABLE `closedcapa`
  ADD CONSTRAINT `closedcapa_ibfk_1` FOREIGN KEY (`idFeedback`) REFERENCES `feedback` (`idFeedback`);

--
-- Constraints for table `feedback`
--
ALTER TABLE `feedback`
  ADD CONSTRAINT `feedback_ibfk_1` FOREIGN KEY (`noSuratPeringatan`) REFERENCES `peringatan` (`noSuratPeringatan`);

--
-- Constraints for table `lhk`
--
ALTER TABLE `lhk`
  ADD CONSTRAINT `lhk_ibfk_1` FOREIGN KEY (`noSuratTugas`) REFERENCES `surattugas` (`noSuratTugas`),
  ADD CONSTRAINT `lhk_ibfk_2` FOREIGN KEY (`idSarana`) REFERENCES `sarana` (`idSarana`);

--
-- Constraints for table `peringatan`
--
ALTER TABLE `peringatan`
  ADD CONSTRAINT `peringatan_ibfk_1` FOREIGN KEY (`noTl`) REFERENCES `surattl` (`noTl`);

--
-- Constraints for table `rekomendasidinkes`
--
ALTER TABLE `rekomendasidinkes`
  ADD CONSTRAINT `rekomendasidinkes_ibfk_1` FOREIGN KEY (`noSuratPeringatan`) REFERENCES `peringatan` (`noSuratPeringatan`),
  ADD CONSTRAINT `rekomendasidinkes_ibfk_2` FOREIGN KEY (`idFeedback`) REFERENCES `feedback` (`idFeedback`);

--
-- Constraints for table `rincianbiaya`
--
ALTER TABLE `rincianbiaya`
  ADD CONSTRAINT `rincianbiaya_ibfk_1` FOREIGN KEY (`noKwitansi`) REFERENCES `pj` (`noKwitansi`);

--
-- Constraints for table `surattl`
--
ALTER TABLE `surattl`
  ADD CONSTRAINT `surattl_ibfk_1` FOREIGN KEY (`noSuratTugas`) REFERENCES `lhk` (`noSuratTugas`);

--
-- Constraints for table `surattugas`
--
ALTER TABLE `surattugas`
  ADD CONSTRAINT `surattugas_ibfk_1` FOREIGN KEY (`idPegawai`) REFERENCES `pegawai` (`idPegawai`),
  ADD CONSTRAINT `surattugas_ibfk_2` FOREIGN KEY (`idKota`) REFERENCES `kota` (`idKota`),
  ADD CONSTRAINT `surattugas_ibfk_3` FOREIGN KEY (`idKendaraan`) REFERENCES `kendaraan` (`idKendaraan`),
  ADD CONSTRAINT `surattugas_ibfk_4` FOREIGN KEY (`mak`) REFERENCES `anggaran` (`mak`),
  ADD CONSTRAINT `surattugas_ibfk_5` FOREIGN KEY (`noKwitansi`) REFERENCES `pj` (`noKwitansi`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
