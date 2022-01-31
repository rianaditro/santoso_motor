-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 29 Jan 2022 pada 08.47
-- Versi Server: 10.1.9-MariaDB
-- PHP Version: 5.6.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_mobil_santoso`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `admin`
--

CREATE TABLE `admin` (
  `username` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `admin`
--

INSERT INTO `admin` (`username`, `password`) VALUES
('admin', 'admin');

-- --------------------------------------------------------

--
-- Struktur dari tabel `hasil`
--

CREATE TABLE `hasil` (
  `kdmobil` varchar(5) NOT NULL,
  `vi` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `hasil`
--

INSERT INTO `hasil` (`kdmobil`, `vi`) VALUES
('A0125', '1.00');

-- --------------------------------------------------------

--
-- Struktur dari tabel `merk`
--

CREATE TABLE `merk` (
  `kdmerk` varchar(30) NOT NULL,
  `merk` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `merk`
--

INSERT INTO `merk` (`kdmerk`, `merk`) VALUES
('M0002', 'DAIHATSU'),
('M0003', 'TOYOTA'),
('M0004', 'SUZUKI'),
('M0001', 'HONDA'),
('M0005', 'MITSUBISHI');

-- --------------------------------------------------------

--
-- Struktur dari tabel `mobil`
--

CREATE TABLE `mobil` (
  `kdmobil` varchar(5) NOT NULL,
  `kdmerk` varchar(10) NOT NULL,
  `tipe` varchar(30) NOT NULL,
  `transmisi` varchar(30) NOT NULL,
  `tahun_pembuatan` varchar(4) NOT NULL,
  `kapasitas_mesin` varchar(30) NOT NULL,
  `harga` double NOT NULL,
  `spesifikasi` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `mobil`
--

INSERT INTO `mobil` (`kdmobil`, `kdmerk`, `tipe`, `transmisi`, `tahun_pembuatan`, `kapasitas_mesin`, `harga`, `spesifikasi`) VALUES
('A0123', 'M0001', 'Jazz RS  1,5', '2', '2015', '1497', 181000000, 'STNK dan BPKB Asli dan Akur\r\nPajak 18 OKTOBER 2022\r\nPlat GENAP\r\nKilometer -/+ 56.130 Km\r\nInterior Original Fabric Model\r\nHead Unit Original\r\nVelg dan Ban Original\r\nKaki-kaki terawat\r\nBebas Banjir\r\nBebas Tabrak\r\nMobil rawatan bengkel resmi'),
('A0124', 'M0002', 'Terios 1,5 R', '1', '2019', '1497', 205000000, 'Free service 12 bulan\r\nSTNK dan BPKB Asli dan Akur (Atas Nama Pribadi)\r\nPajak Maret 2022 Nopol Ganji\r\nOdometer 34,988\r\nInterior Original\r\nHead Unit Terawat dan Responsif\r\nVelg dan Ban Original\r\nKaki - Kaki Terawat\r\nBebas Banjir dan Bebas Tabrak\r\nMobil Rawatan Bengkel Resmi Daihatsu      '),
('A0125', 'M0002', 'Xenia 1.3 X', '1', '2018', '1300', 115000000, 'Manual\r\nTahun Pembuatan 2018\r\nKilometer 55 Ribu ( Berjalan )\r\nWarna Silver Metalik\r\nNo Pol B\r\nPajak Bulan 10 - 2022\r\nFitur Unggulan antara lain :\r\nMesin 1300 cc DOHC Dual VVTi\r\nDual SRS Airbag\r\nJok 3 Baris, AC Double Blower\r\nFog Light\r\nSensor Parkir\r\nTalang air, Kaca film, Towing bar'),
('A0126', 'M0003', 'Innova 2.0 G', '2', '2014', '1500', 179000000, 'STNK dan BPKB Asli dan Akur\r\nPajak 31 Juli 2022\r\nPlat GANJIL\r\nKilometer 77,965\r\nInterior Original Fabric Model\r\nHead Unit Original\r\nVelg dan Ban Original\r\nKaki-kaki terawat\r\nBebas Banjir\r\nBebas Tabrak\r\nMobil rawatan bengkel resmi'),
('A0127', 'M0004', 'Suzuki Ertiga 1.4 GL', '2', '2014', '1500', 120000000, 'STNK dan BPKB Asli dan Akur\r\nPajak 10 Februari 2022\r\nPlat GENAP\r\nKilometer 91,085\r\nInterior Original Fabric Model\r\nHead Unit Original\r\nVelg dan Ban Original\r\nKaki-kaki terawat\r\nBebas Banjir\r\nBebas Tabrak\r\nMobil rawatan bengkel resmi'),
('A0128', 'M0003', 'Inove 2.4 G', '2', '2018', '2000', 280000000, 'Toyota\r\nI N N O V A\r\n2018\r\n tipe G \r\n Diesel / solar\r\n 2.4\r\n Putih\r\n Automatic Transmition \r\n Tangan pertama \r\n pajak panjang bulan 12 - 2022 \r\n ODOmeter 63.xxx'),
('A0129', 'M0001', 'Jazz Rs', '2', '2013', '1500', 160000000, 'Automatic Transmission\r\nWarna putih\r\nNik 2013\r\nKm 91 ribuan\r\nPajak bulan 09-2022\r\nTangan Pertama Dari Baru\r\nMobil Istimewa\r\nKonci Serep Lengkap\r\nManual Book Lengkap\r\nMatic Responsif\r\nKaki kaki Nyaman\r\nBody Mulus\r\nBebas Laka & Banjir\r\nSiap Pakai'),
('A0130', 'M0003', 'Rush A TRD Sportivo', '1', '2019', '1500', 240000000, 'Toyota Rush A/T 2019\r\nTipe TRD Sportivo ( Tipe Tertinggi )\r\nKm. 20 Ribuan\r\nBpkb Stnk Faktur Asli A/n Tangan Pertama\r\nPlat B Ganjil ( Jakarta Selatan)\r\nPajak Mei 2022\r\nInterior Full Original ( Bersih Rapih)\r\nExterior Cat 100% ( Original Bawaan Pabrik)\r\nBan 95 %\r\nElektrikal Normal Semua\r\nMesin Normal\r\nKaki2 Tidak ada Bunyi'),
('A0131', 'M0002', 'TERRIOS R DELUXE', '2', '2018', '1500', 253000000, 'AUTOMATIC\r\n- 1.500 CC\r\n- GARANSI MESIN\r\n- BAN DIBAWAH 50% DIGANTI BARU\r\n- TARIKAN MASIH OKE\r\n- PAJAK ON\r\n- KAKI KAKI AMAN\r\n- INTERIOR TERAWAT\r\n- MOBIL KAMI TERAWAT LUAR & DALAM'),
('A0132', 'M0001', 'MOBILIO E', '2', '2016', '1500', 145000000, 'Transmisi matic\r\nMesin halus kering, matic responsiv\r\nInterior rapi, bersih\r\nJok tercover, ori didalam\r\nAC dingin\r\nKaki2 senyap, empuk\r\nBody Kaleng, Lampu jernih bening\r\nBan depan tebal\r\nStir masih kenceng kasar'),
('A0133', 'M0003', 'Innova G 2.5', '1', '2013', '2000', 228000000, 'Mileage/ODO 102.+++ km\r\nSiap Pakai\r\nMesin sehat\r\nKaki-kaki Padat\r\nJok Asli (Sudah Balut Kulit)\r\nVelg Asli\r\nElectricity + Sensor aman\r\nSurat-surat lengkap\r\nDiesel'),
('A0134', 'M0005', 'Pajero Sport Dakar', '1', '2014', '2477', 300000000, 'Mileage/ODO 60.+++ km \r\nCat Original\r\nSiap Pakai\r\nMesin sehat\r\nKaki-kaki Padat\r\nJok Kulit Asli\r\nVelg Asli\r\nSunroof\r\nElectricity + Sensor aman\r\nSurat-surat lengkap\r\nDiesel'),
('A0135', 'M0001', 'MOBILIO E', '2', '2018', '1500', 156000000, 'Mileage/ODO 31.+++ km (RENDAH !!!)\r\nCat Original\r\nSiap Pakai\r\nMesin sehat\r\nKaki-kaki Padat\r\n Jok Asli (Sudah Balut Kulit)\r\nVelg Asli\r\nAC Digital\r\nElectricity + Sensor aman\r\nSurat-surat lengkap'),
('A0136', 'M0003', 'Agya TRD Sportivo', '1', '2017', '1197', 112000000, 'Manual\r\nPajak Panjang\r\nAtas nama pribadi\r\nJok kulit\r\nBan bagus\r\nService record\r\nMesin aman\r\nKaki kaki aman\r\nElectical aman'),
('A0137', 'M0001', 'JAZZ RS', '2', '2008', '1497', 121000000, '- Mesin tidak ada rembes tdk ada PR\r\n- Bebas tabrak\r\n- Bebas Banjir\r\n- Bergaransi\r\n- Cat mulus\r\n- Kaki" Empuk\r\n- Ban 90%\r\n- Pajak panjang');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `hasil`
--
ALTER TABLE `hasil`
  ADD PRIMARY KEY (`kdmobil`);

--
-- Indexes for table `mobil`
--
ALTER TABLE `mobil`
  ADD PRIMARY KEY (`kdmobil`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
