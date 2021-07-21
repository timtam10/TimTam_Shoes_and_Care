-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 26, 2018 at 05:07 AM
-- Server version: 10.1.26-MariaDB
-- PHP Version: 7.1.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
--
-- --------------------------------------------------------
--
-- Table structure for table `tbl_ambil`
--

CREATE TABLE tbl_ambil (
  no_antrian int(11) NOT NULL,
  nama varchar(50) NOT NULL,
  no_telp varchar(13) NOT NULL,
  alamat varchar(50) NOT NULL,
  j_pewangi varchar(50) NOT NULL,
  jumlah int(11) NOT NULL,
  harga int(11) NOT NULL,
  tanggal date NOT NULL,
  total int(11) NOT NULL,
  bayar int(11) NOT NULL,
  kembali int(11) NOT NULL
);

--
-- Dumping data for table `tbl_ambil`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_login`
--

CREATE TABLE tbl_login (
  user varchar(20) NOT NULL,
  pass varchar(20) NOT NULL
);

--
-- Dumping data for table `tbl_login`
--

INSERT INTO tbl_login (user, pass) VALUES
('lutfir', 'rahman'),
('kevin', 'dua'),
('instal_ulang', 'laptop'),
('bitersweet', 'bysasa'),
('tiara', 'idol');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_pesan`
--

CREATE TABLE tbl_pesan (
  no_antrian int(11) NOT NULL,
  nama varchar(50) NOT NULL,
  no_telp varchar(13) NOT NULL,
  alamat text NOT NULL,
  j_pewangi varchar(50) NOT NULL,
  jumlah int(11) NOT NULL,
  harga int(11) NOT NULL,
  tanggal date NOT NULL
);

--
-- Dumping data for table `tbl_pesan`
--
--
-- Indexes for dumped tables
--
-- Indexes for table `tbl_pesan`
--
ALTER TABLE tbl_pesan
  ADD PRIMARY KEY (no_antrian);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_pesan`
--
ALTER TABLE tbl_pesan
  MODIFY no_antrian int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
