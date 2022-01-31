-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 24 Okt 2020 pada 17.48
-- Versi Server: 5.6.21
-- PHP Version: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `dblaptopwp`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
  `username` varchar(30) DEFAULT NULL,
  `password` varchar(30) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `admin`
--

INSERT INTO `admin` (`username`, `password`) VALUES
('admin', 'admin');

-- --------------------------------------------------------

--
-- Struktur dari tabel `hasil`
--

CREATE TABLE IF NOT EXISTS `hasil` (
  `kdlaptop` varchar(5) NOT NULL,
  `vi` decimal(10,2) DEFAULT '0.00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `hasil`
--

INSERT INTO `hasil` (`kdlaptop`, `vi`) VALUES
('L0001', '0.32'),
('L0002', '0.34'),
('L0003', '0.34');

-- --------------------------------------------------------

--
-- Struktur dari tabel `laptop`
--

CREATE TABLE IF NOT EXISTS `laptop` (
  `kdlaptop` varchar(5) NOT NULL,
  `tipe` varchar(30) DEFAULT NULL,
  `kdmerk` varchar(3) DEFAULT NULL,
  `hdd` int(5) DEFAULT NULL,
  `harga` double DEFAULT NULL,
  `ram` int(2) DEFAULT NULL,
  `procesor` varchar(20) DEFAULT NULL,
  `layar` double DEFAULT NULL,
  `spesifikasi` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `laptop`
--

INSERT INTO `laptop` (`kdlaptop`, `tipe`, `kdmerk`, `hdd`, `harga`, `ram`, `procesor`, `layar`, `spesifikasi`) VALUES
('L0001', 'E402YA', 'M01', 1000, 3599000, 4, 'AMD DUAL CORE', 14, ' Processor: AMD Dual Core E2-7015 <br>\r\n RAM: 4GB <br>\r\n        HDD: 1TB <br>\r\n        Grafik: AMD Radeon R2 <br>\r\n        Konektivitas: Wifi + Bluetooth <br>\r\n        Ukuran layar: 14 Inch HD <br>\r\n        Sistem Operasi: Windows 10 Home <br>\r\n\r\n           '),
('L0002', 'A409MA', 'M01', 1000, 4299000, 4, 'INTEL CELERON', 14, '        Processor: Intel Celeron N4020 <br>\r\n        RAM: 4GB DDR4<br>\r\n        HDD: 1TB<br>\r\n        VGA: Integrated<br>\r\n        Ukuran layar: 14 Inch<br>\r\n        Konektivitas: Wifi + Bluetooth<br>\r\n        Sistem Operasi: Windows 10 Home<br>\r\n\r\n                  '),
('L0003', 'TP203NAH', 'M01', 1000, 5000000, 4, 'INTEL DUAL CORE', 11.6, '- Intel Pentium N4200 2.3GHz up to 2.5Ghz (2MB Cache) <br>\r\n- 4GB RAM DDR3L, 500GB HDD<br>\r\n- Intel HD Graphics<br>\r\n- Windows 10 Home 64bit<br>\r\n- 11.6inch HD LED Display (1366x768) Touck Screen<br>\r\n- Audio Powered by SonicMaster Lite Technology<br>\r\n- HD Webcam, Micro SD Reader, WiFi 802.11AC, Micro HDMI<br>\r\n- Bluetooth V4.1, Headphone, Microphone,Volume up/down,micro SD card<br>\r\n- USB 2.0 x 1, USB 3.0 x 1 & USB Type C 3.1 x 1<br>\r\n- Weight : 1.3 kg included 3 Cells 42 Whrs Polymer Battery<br>\r\n- Garansi Resmi PT. ASUS Indonesia 1 Tahun<br>\r\n'),
('L0004', ' A409JP', 'M01', 1000, 8299000, 4, 'INTEL CORE', 14, '-Layar TFT LCD dengan LED backlight 14 inci resolusi Full HD 1920 x 1080 piksel Asus Splendid Asus Eye Care NanoEdge Display 178Â° wide-view<br>\r\nProsesor Intel Core i5-1035G1 quad-core (8 thread) 1GHz TurboBoost 36GHz<br>\r\nChipset Intel<br>\r\nGrafis Intel UHD Graphics G1 dan Nvidia GeForce <br>\r\nMX330 VRAM 2GB GDDR5<br>\r\nMemori RAM 4GB DDR4-2666MHz, upgradeable to 16GB DDR4<br>\r\nStorage hard disk 1TB 5400rpm SATA III<br>\r\nKonektifitas WiFi 802.11ac (2x2) , Bluetooth 4.2 Combo, Port USB 31 Gen 1Port USB 31 Gen 1 Type-CPort USB 20 Port HDMI card reader combo audio jack<br>\r\nDual Speaker stereo ICEpower SonicMaster Audio<br>\r\nKamera webcam dengan resolusi HD<br>\r\nBaterai 3 Cell 42WHr lithium-ion Battery fast charging 60% dalam 49 menit<br>\r\nSistem Operasi Microsoft Windows 10 Home x64 Asli\r\nDimensi 327 x 224.75 x 176 mm berat 14 kilogram<br>\r\nWarna Transparent Silver (EK501T) dan Slate Grey (EK502T) <br>                            '),
('L0005', 'A490JA', 'M01', 1000, 7299000, 4, 'INTEL CORE i3', 14, 'Layar TFT LCD dengan LED backlight 14 inci resolusi HD 1366 x 768 piksel, Asus Splendid, Asus Eye Care, NanoEdge Display, 178Â° wide-view<br>\r\nProsesor Intel Core i3-1005G1 dual-core (4 thread) 1,2GHz TurboBoost 3,4GHz<br>\r\nChipset Intel<br>\r\nGrafis Intel UHD Graphics G1<br>\r\nMemori RAM 4GB DDR4-2666MHz, upgradeable to 16GB DDR4<br>\r\nStorage SSD 512GB PCIe M.2<br>\r\nKonektifitas WiFi 802.11ac, Bluetooth 4.2, Port USB 3.1 Gen 1, Port USB 3.1 Gen 1 Type-C, Port USB 2.0, Port HDMI, card reader, combo audio jack<br>\r\n2 x 2W dual speaker stereo, ICEpower, SonicMaster Audio<br>\r\nKamera webcam dengan resolusi VGA<br>\r\nBaterai 3 Cell 42WHr lithium-ion Battery, fast charging 60% dalam 49 menit<br>\r\nSistem Operasi Microsoft Windows 10 Home x64 Asli<br>\r\nDimensi 325 x 216 x 22.9 mm berat 1,4 kilogram<br>      '),
('L0006', ' E203MAH', 'M01', 500, 3000000, 4, 'INTEL DUAL CORE ', 116, '- CPU Celeron Dual Core<br>\r\n-Model Prosesor	Celeron N4000<br>\r\n-Kecepatan Prosesor	11 GHz<br>\r\n-CPU Cache	4MB<br>\r\n-Kecepatan Turboboost	26 GHz<br>\r\n-Chipset	Integrated Intel CPU<br>\r\n-Model GPU	Integrated Intel UHD Graphics 600<br>            \r\n-RAM 2GB , 4GB<br>\r\n-HDD	500GB<br>\r\n-Kecepatan Rotasi 5400 rpm<br>\r\n-Ukuran Layar 116 inches<br>\r\n-Resolusi	HD 1366 x 768<br>\r\n-Tipe Panel LED-backlit 60Hz Panel with 45% NTSC\r\nWith ASUS Splendid<br>\r\n-Network	WiFi	80211 AC<br>\r\n-Konektifitas	Konektifitas	HDMI USB30 Bluetooth  <br>'),
('L0007', 'M409DA', 'M01', 1000, 7699000, 4, 'AMD DUAL CORE Ryzen', 14, 'Ukuran: 14 Inch FHD (1920x1080) Anti-Glare<br>\r\nResolusi: Full HD (1920x1080)<br>\r\nProsesor: AMD Dual Core R3-3200U Processor 26 <br>\r\nGHz (1M Cache up to 35 GHz)<br>\r\nRAM: 4GB on board up to 12GB<br>\r\nMemory: SATA 1TB 5400RPM 25 Inch HDD<br>\r\nTipe Grafis: AMD Radeon R3 graphics<br>\r\nSistem Operasi: Windows 10<br>      '),
('L0008', 'X441BA', 'M01', 1000, 4450000, 4, 'AMD A4-9125', 14, '- Display : 140 HD<br>\r\n-Processor : AMD Dual Core A4-9125<br>\r\n-Memory : 4GB DDR4<br>\r\n-Storage : 1TB HDD<br>\r\n-Graphics : AMD RadeonTM R3 Graphics<br>\r\n-Optical Drive : Super-Multi DVD (On selected models)<br>\r\n-Operating System :Windows 10<br>\r\n-Camera : VGA Web Camera<br>\r\n-Audio : ASUS SonicMaster Technology<br>'),
('L0009', 'A311', 'M02', 500, 4100000, 4, 'INTEL DUAL CORE ', 116, ' â˜‘ Intel Celeron DualCore N4000-110Ghz up 260Ghz<br>\r\nâ˜‘ RAM 4GB<br>\r\nâ˜‘ HDD 500GB<br>\r\nâ˜‘ VGA Intel UHD 600 Graphics<br>\r\nâ˜‘ Screen 116<br>\r\nâ˜‘ Windows 10<br>'),
('L0010', ' AN515 43', 'M02', 1000, 10950000, 8, 'AMD RYZEN', 156, '- Operating System : Windows 10 Home<br>\r\n-Display : 156 Inch IPS Full HD<br>\r\n-Processor : AMD Ryzen 5 3550H up to 37Ghz<br>\r\n-Memory : 8 GB DDR4 <br>\r\n-Hard Drive : 1TB HDD<br>\r\n-Graphics : AMD Radeon RX560X 4GB<br>            '),
('L0012', 'A315 42 R8SM', 'M02', 1000, 7950000, 8, 'AMD RYZEN', 156, 'Ukuran Layar: 156 Inch<br>\r\nResolusi Layar: 1366 x 768 pixels<br>\r\nProsesor: AMD RYZENâ„¢ 5 3500U<br>\r\nMemori RAM:  2 x 4GB DDR4<br>\r\nPenyimpanan: 1TB HDD<br>\r\nKartu Grafis: AMD Radeonâ„¢ Vega 8 Mobile Graphics<br>\r\nSistem Operasi: Windows 10<br>            '),
('L0013', 'A409UJ', 'M01', 1000, 7600000, 4, 'INTEL CORE i3', 14, '-Intel Core i3-7020U<br>\r\n-4 GB DDR4<br>\r\n-512 GB SSD<br>\r\n-WiFi  Bluetooth Webcam<br>\r\n-Nvidia GeForce MX230 2 GB<br>\r\n-140-inch HD<br>\r\n-Windows 10 Home<br>       '),
('L0014', ' A451LN', 'M01', 1000, 7910000, 4, 'Intel Core i5-4200U', 14, '-Ukuran Layar	14 inch<br>\r\n-Resolusi Layar	1366 x 768 Pixel<br>\r\n-Nomor Prosesor	4200u Core	Dual Core<br>\r\n-Kecepatan Prosesor	16 GHz<br>\r\n-Tipe Prosesor	Core i5<br>\r\n-Memory RAM	4 GB<br>\r\n-Kecepatan RAM	1600 MHz<br>\r\n-Tipe Memori	DDR3<br>\r\n-Storage Speed	5400 RPM<br>\r\n-Storage Interface	SATA<br>\r\n-Kartu Grafis	NVIDIA<br>\r\n-Tipe Kartu Grafis	GeForce<br>\r\n-Weight	22 kg<br>\r\n-Dimensions	348 x 257 x 369 mm<br>'),
('L0015', 'A314-32', 'M02', 1000, 4650000, 4, 'INTEL DUAL CORE N400', 14, '-Grafis Intel UHD Graphics 600<br>\r\n-Memori RAM 4GB DDR4-2133MHz<br>\r\n-Storage hard disk 1TB 5400rpm<br>\r\n-Konektifitas LAN  WiFi,Bluetooth Port USB 30 Port USB 20 Port HDMI<br>\r\n-Stereo speaker dengan Acer TrueHarmony<br>\r\n-Kamera depan HD webcam<br>\r\n-Baterai 2-cell 4810 mAh Li-Polymer  penggunaan hingga 8 jam<br>\r\n-Sistem Operasi Microsoft Windows 10 Home x64<br>\r\nDimensi 343 mm x 245 mm x 1995 mm berat 165kg<br>            '),
('L0016', ' A314', 'M02', 1000, 3990000, 4, 'INTEL GEMINI LAKE N4', 14, 'Processor dual core<br>\r\nMemory RAM<br>\r\n4 GB<br>\r\nPenyimpanan 1TB<br>\r\nUkuran Layar 14<br>\r\nResolusi 1366x768<br>      '),
('L0017', 'A514-52', 'M02', 1000, 4989000, 4, 'Intel Core i3-6006U', 14, 'IntelÂ® Coreâ„¢ i5-8265U	IntelÂ® Coreâ„¢ i7-8565U\r\nOS	Windows 10	Windows 10<br>\r\nStorage	1 TB HDD<br>\r\nMemory	4GB DDR4 RAM	8GB DDR4 RAM<br>\r\nGraphic	NVIDIAÂ® GeForceÂ® MX250 2GB	NVIDIAÂ®<br> GeForceÂ® MX250 2GB<br>\r\nConnection	 BluetoothÂ® 50 + WiFi<br>\r\nWiFi 80211 ac MU-MIMOB luetoothÂ® 50 + WiFi<br>\r\n'),
('L0018', 'Nitro 5 AN515-54-54YU', 'M02', 1000, 11499000, 8, 'INTEL CORE i5-9300', 156, '- Ukuran Layar: 156 Inch display with IPS (In-Plane Switching) technology<br>\r\n-Resolusi Layar: Full HD 1920 x 1080 pixels<br>\r\n-Tipe Processor: IntelÂ® Coreâ„¢ i5-9300H processor (26 GHz up to 410 GHz)<br>\r\n-Memori: 1x8GB DDR4<br>\r\n-Penyimpanan: 1TB HDD<br>\r\n-Kartu Grafis: NVIDIAÂ® GeForceÂ® GTX 1050<br>\r\n-Sistem Operasi: Windows 10 Home (64 bit)<br>\r\n-Refresh Rate: 60Hz<br>'),
('L0019', 'A514-51', 'M02', 1000, 6500000, 4, 'INTEL CORE i3-7020U', 14, 'Processor : Intel Core i3 7020u <br>\r\nOperating System : Windows 10 home<br>\r\nGrafik card : Nvidia Geforce MX230 2 Gb GDDR5<br>\r\nLayar : 14  HD LED ( 1366 x 768 )<br>\r\nMemory : 4 Gb DDR4<br>\r\nHarddisk : 1 TB SATA HDD<br>\r\nOptical drive : DVD-Writer<br>      '),
('L0020', 'A314-41-A9-9420', 'M02', 1000, 3899000, 4, 'AMD A-Series dual-co', 14, '- AMD A-Series dual-core processor A9-9420 <br>\r\n- Windows 10 Home<br>\r\n- 14 HD 1366 x 768 resolution<br>\r\n- 4GB DDR4 RAM<br>\r\n- 1TB Harddisk<br>\r\n- AMD RadeonTM R5 Graphics<br>\r\n- Bluetooth<br>\r\n- HDMIÂ® with HDCP support<br>\r\n- DVD-RW<br>\r\n- SDâ„¢ Card reader<br>      '),
('L0021', 'Aspire ES1-421-410V', 'M02', 500, 3699000, 2, 'AMD APU A4-6210 quad', 14, 'Grafis AMD Radeon R3\r\nMemori RAM 2GB DDR3\r\nStorage hard disk 500GB\r\nKonektifitas WiFi, Bluetooth\r\nKamera depan tersedia\r\nBaterai diklaim hingga 4 jam\r\nSistem Operasi DOS'),
('L0022', '14s CF2004TX', 'M03', 1000, 8750000, 4, 'Intel Core i5-10210U', 14, '- Intel Core i5-10210U quad-core 16GHz TurboBoost 42GHz <br>\r\n- 4GB DDR4 2400MHz  upgradeable max 16GB<br>\r\n- HDD 1TB<br>\r\n- Intel UHD Graphics 620 dan Radeon R530 VRAM 2GB GDDR5<br>\r\n- 14 Full HD 1366 x 768 piksel micro edge  IPS LCD BrightView WLED backlight<br>\r\n- Microsoft Windows 10 Home Edition x64<br>\r\n- Dual B&O speaker HP Audio Boost<br>\r\n- Kamera HP TrueVision HD Webcam<br>\r\n- Baterai 3-cell (41 WHr) Li-ion<br>\r\n- External ports 1 USB 31 Gen 1 Type-Câ„¢ (Data Transfer Only 5 Gb/s signaling rate)\r\n2 USB 31 Gen 1 Type-A (Data Transfer Only)\r\n1 RJ-45<br>\r\n1 AC smart pin  1 HDMI<br>\r\n1 headphone/microphone combo<br>'),
('L0023', '11-X360', 'M03', 500, 4800000, 4, 'Intel Dual Core', 116, ' Layar sentuh TFT LCD dengan WLED BrightView 11 inci resolusi 1366 x 768 piksel Anti Glare <br>\r\nProsesor Intel Celeron N3050 dual-core 16GHz TurboBoost 216GHz<br>\r\nChipset Intel<br>\r\nGrafis Intel HD Graphics<br>\r\nMemori RAM 4GB DDR3L 1600MHz<br>\r\nStorage hard disk 500GB 5400rpm<br>\r\nKonektifitas WiFi Port USB 0 Port USB 30VGA port Port HDMI Dual Speaker dengan B&O PLAY<br>\r\nKamera HP TrueVision HD Webcam<br>\r\nBaterai 2-cell 32 Whrs<br>\r\nSistem Operasi Windows <br>\r\nDimensi 306 x 208 x 225 cm  berat 146kg<br>      '),
('L0024', '14S-DK0073', 'M02', 1000, 4150000, 4, 'AMD A4-9125', 14, '- AMD DUAL CORE A4-9125 23GHZ <br>\r\n- DDR4 4GB  <br>\r\n- HDD 1TB/1000GB  <br>\r\n-VGA ATI RADEON R3 GAMING SERIES  <br>\r\n-Backlit Keyboard  <br>\r\n- Wifi | Card Reader | Lan  <br>\r\n-Bluetooth | Usb 20 |usb 30 <br>\r\n- Layar 14  | webcam <br>'),
('L0025', '14-DK0073(A9)', 'M02', 1000, 4999000, 4, 'AMD A9-9425', 14, ' Ukuran Layar 14 inch<br>\r\nResolusi Layar 1366 x 768 Pixel<br>\r\nProcessor Brand	AMD A4-9125<br>\r\nJumlah Core	Dual Core<br>\r\nKecepatan Prosesor	23 GHz<br>\r\nCache	1 MB<br>\r\nTipe Prosesor	A-Series Memory<br>\r\nRAM	4 GB<br>\r\nKecepatan RAM	1866 MHz<br>\r\nSlot Memori	1 slot(s)<br>\r\nTipe Memori	DDR4<br>\r\nKapasitas HDD	1 TB<br>\r\nStorage Speed	5400 RPM<br>\r\nTipe Kartu Grafis	Radeon R3 Grap<br>'),
('L0026', '14-DK0008AX', 'M03', 1000, 5750000, 4, 'AMD A9-9425', 14, 'AMD A9-9425 Dual-Core Processor <br>\r\n14 diagonal HD SVA BrightView WLED-backlit (1366 x 768) <br>\r\n1 TB 5400 rpm SATA RAM 4 GB DDR4-1866 SDRAM (1 x 4 GB)  <br>\r\nAMD Radeonâ„¢ 530 Graphics (2 GB GDDR5 dedicated) <br>\r\nWindows 10 Home Single Language 64 <br>'),
('L0027', '14s DK0073AU', 'M03', 1000, 4150000, 4, 'AMD A4-9125', 14, 'Processor AMD A4-9125 Dual-Core<br>\r\nGraphics (integrated)AMD Radeonâ„¢ R3 Graphics<br>\r\nMemory4 GB DDR4-1866 SDRAM (1 x 4 GB) <br>\r\nInternal Storage1 TB 5400 rpm SATA <br>\r\nBattery type3-cell 41 Wh Li-ion<br>\r\nWindows 10 Home Single Language 64 <br>\r\n'),
('L0028', '14-CM0068AU', 'M03', 1000, 4999000, 8, 'AMD A9-9425 ', 14, ' HP Notebook - 14-cm0067au Microprocessor<br>\r\n8GB DDR4-1866 SDRAM<br>\r\nLayar TFT LCD dengan HD BrightView WLED backlight 14 inci resolusi 1366 x 768 piksel<br>\r\nProsesor AMD A9-9425 dual- <br>\r\nChipset AMD<br>\r\nGrafis AMD Radeon R5 Graphics<br>\r\nMemori RAM 4GB DDR4 1866MHz  upgradeable<br>\r\nStorage hard disk 1TB 5400rpm<br>\r\nKonektifitas WiFi Bluetooth LAN Port USB 31 Gen 1 Port USB 20 VGA port  Port HDMI card reader\r\nAudio dual speaker<br>\r\nKamera HP TrueVision HD Camera with integrated digital microphone<br>\r\nBaterai 3-cell (41 WHr) Li-ion<br>\r\nSistem Microsoft Windows 10 Home x64 original<br>\r\nDimensi 335 x 234 x 199 cm berat 1,47kg<br>'),
('L0029', '14s-cf0130TU', 'M03', 1000, 6142000, 4, 'Intel Core i3-8130u', 14, 'IntelÂ® Coreâ„¢ i3-8130U <br>\r\n14â€³ Diagonal HD brightview LED BackLit (1366Ã—768) <br>\r\nHD + Camera 03MP<br>\r\n4GB DDR4 RAM 1 TB HDD<br>\r\nIntel HD Graphics 520 Backlit Keyboard<br>\r\nWiFi Bluetooth Windows 10 Home<br>'),
('L0030', '14s-cf2017TU', 'M03', 1000, 4599000, 4, 'Intel Celeron', 14, ' Layar TFT LCD SVA dengan HD BrightView WLED backlight 14 inci resolusi 1366 x 768 piksel MicroEdge bezel<br>\r\nProsesor Intel Celeron 4205U dual-core 18GHz<br>\r\nChipset Intel<br>\r\nGrafis Intel UHD Graphics 610<br>\r\nMemori RAM 4GB DDR4 2133MHz upgradeable<br>\r\nStorage Hard Disk 1TB 5400rpm SATA<br>\r\nKonektifitas LAN WiFi Bluetooth Port USB 3 1 Gen1 Port USB 3 1 Gen1 Type-C (Data transfer only 5 Gb/s signaling rate) Port HDMI  card reader<br>\r\nAudio dual speaker<br>\r\nKamera HP TrueVision HD Camera with integrated digital microphone<br>\r\nBaterai 3-cell (45 WHr) Li-ion<br>\r\nSistem Microsoft Windows 10 Home x64 original<br>\r\nDimensi 324 x 2259 x 199 cm berat 143kg<br>'),
('L0031', '14S DK1003AU', 'M03', 1000, 5299000, 4, 'AMD Athlon Gold 3150', 14, '-  AMD Athlonâ„¢ Gold 3150U (24 GHz base clock  up to 33 GHz max boost clock 1 MB L2 cache 2 cores)<br>\r\n-14  diagonal HD SVA BrightView WLED-backlit (1366 x 768)<br>\r\n-1TB4GB<br>\r\n-AMD Radeonâ„¢ Vega 3 Graphics<br>\r\n-Windows 10 Home Single Language 64<br>'),
('L0032', ' 14s-dk1001AX', 'M03', 1000, 5799000, 4, 'AMD Athlon Gold 3150', 14, 'Layar IPS LCD dengan BrightView WLED backlight 14 inci resolusi HD 1366 x 768 piksel  MicroEdge bezel<br>\r\nProsesor AMD Athlon Gold 3150U dual-core dengan kecepatan 24GHz Turbo maksimal 33GHz<br>\r\nChipset AMD<br>\r\nGrafis AMD Radeon RX Vega 3 iGPU dan AMD <br>\r\nRadeon 530 VRAM 2GB GDDR5<br>\r\nMemori RAM 4GB DDR4 2400MHz upgradeable<br>\r\nStorage Hard Disk 1TB 5400rpm SATA<br>\r\nKonektifitas LAN 10/100/1000 GbE, WiFi 80211ac <br>\r\n(1x1) Bluetooth 42 Port USB 31 Gen1 Port USB 31 <br>\r\nGen1 Type-C (Data transfer only 5 Gb/s signaling rate) Port HDMI card reader port combo audio\r\nAudio dual speaker<br>\r\nKamera HP TrueVision HD Camera with integrated digital microphone<br>\r\nBaterai 3-cell (41 WHr) Li-ion<br>\r\nSistem Microsoft Windows 10 Home x64 original + Microsoft Office Home & Student 2019<br>\r\nDimensi 324 x 2259 x 199 cm berat 147kg<br>'),
('L0033', '14s-cf0045tx', 'M03', 1000, 8499000, 4, 'Intel Core i5-8250U', 14, ' Ukuran	Dimensi: 324 x 2259 x 199 Cm<br>\r\nBobot: 143 Kg<br>\r\nLayar	14 inch HD (1366 x 768 piksel)<br>\r\nOS Windows 10<br>\r\nProsesor Intel Core i5-8250U<br>\r\nRAM	4GB DDR4<br>\r\nStorage	HDD 1TB<br>\r\nVGA	AMD Radeon<br>      '),
('L0034', 'Ideapad 330-14AST', 'M04', 1000, 3899000, 4, 'AMD A9-9425', 14, ' Sistem Operasi: Windows 10 Home<br>\r\nProsesor: 7th Generation AMD A9-9425 APU<br>\r\nGPU: AMD Radeon 530<br>\r\nMemori Internal: 8 GB/4 GB on-board DDR4<br>\r\nJenis dan Ukuran Layar: IPS 14 inci<br>\r\nResolusi Layar: Full HD 1920 x 1080 piksel<br>\r\nDaya Baterai: 2 Cell 30WHr daya tahan 4 jam pemakaian normal<br>\r\n HDMI  RJ-45 LAN<br>\r\nDimensi: 338 x 249 x 22 mm<br>\r\nBerat: 21 kilogram (kg)<br>'),
('L0035', 'IdeaPad 320 ', 'M04', 500, 3900000, 4, 'AMD A4-9120', 14, 'SKU : 80XU0043ID<br>\r\nTipe Prosesor : AMD A4-9120<br>\r\nRam : 4 GB<br>\r\nHardisk : 500 GB <br>\r\nVideo graphics : Integreted VGA<br>\r\nDisplay : 14 Inch<br>\r\nOperating system : windows 10<br>'),
('L0036', '  Ideapad 110', 'M04', 2, 3450000, 500, 'Intel Quad Core n316', 14, ' Layar TFT LCD dengan LED backlight 14 inci resolusi 1366 x 768 piksel<br>\r\nProsesor Intel Celeron N3160 quad-core 16GHz TurboBoost 224GHz<br>\r\nChipset Intel<br>\r\nGrafis Intel HD Graphics<br>\r\nMemori RAM 2GB DDR3L upgradeable to 8GB DDR3L<br>\r\nStorage hard disk 500GB atau 1TB 5400rpm<br>\r\nKonektifitas LAN WiFi Port USB 30 port USB 20 Port HDMI DVDRW<br>\r\nKamera depan tersedia<br>\r\nBaterai 24WHr  hingga 3 jam Video Playback <br>\r\nSistem Operasi DOS atau Windows 10 Home<br>\r\nDimensi 340 x 245 x 229 mm berat<br>      '),
('L0037', 'IdeaPad 510', 'M04', 1000, 1150000, 8, 'Intel Core i7', 156, 'Screen: 156-inch IPS HD 1920 x 1080 px<br>\r\nCPU: 27 GHz Intel Core i7<br>\r\nGPU: Nvidia GeForce 940MX<br>\r\nRAM: 8 GB DDR4<br>\r\nMemory: 1 TB<br>'),
('L0038', 'IdeaPad 310S', 'M04', 500, 2800000, 2, 'Intel N3350 Dual-cor', 116, '-layar 116 inc<br>\r\n-Intel N3350 Dual-core<br>\r\n-kartu grafis Intel HD Graphics<br>\r\n- RAM berukuran 2GB<br>\r\n-Harddisk 500GB <br>\r\n'),
('L0039', 'Yoga 310-11IAP-80U200-35ID', 'M04', 1000, 4444000, 4, ' Intel Celeron N3350', 116, '-layar 116 inci <br>\r\n-prosesor Intel Celeron N3350<br>\r\n-RAM  4GB<br>\r\n-Harddisk berukuran 1TB<br>'),
('L0040', 'Ideapad G40-30', 'M04', 500, 3400000, 2, 'Intel Celeron Dual C', 14, '- layar berukuran 14 inci dengan resolusi 1366 x 768 piksel<br>\r\n-prosesor Intel Celeron Dual Core N2840<br>\r\n-VGA Intel HD Graphics<br>\r\n-Harddisk 500GB<br>\r\n-memori RAM DDR3 berukuran 2GB<br>'),
('L0041', 'deaPad 320-14IKBN', 'M04', 1000, 7100000, 4, 'Intel Core i5-7200U', 14, '-  layar 14 inci<br>\r\n-prosesor Intel Core i5-7200U<br>\r\n-RAM 4GB <br>\r\n- Harddisk berkapasitas 1TB <br>'),
('L0042', 'IdeaPad S145-14IWL-P3ID', 'M04', 1000, 3900000, 4, 'core i3', 14, 'Ukuran Layar	14 inch<br>\r\nResolusi Layar	3271 x 241 x 199 Pixel<br>\r\nProcessor Brand	Intel Core	Dual Core<br>\r\nCache	4 MB<br>\r\nTipe Prosesor	Core i3<br>\r\nUSB Port	USB 20 USB 31<br>\r\nMemory RAM 4 GB<br>\r\nSlot Memori	2 slot(s)<br>\r\nTipe Memori	DDR4<br>\r\nStorage Kapasitas HDD	1 TB<br>\r\nTipe Penyimpanan	HDD GPU<br>\r\nKartu Grafis	Intel<br>\r\nTipe Kartu Grafis	HD Graphics Port<br>\r\nWeight	164 kg<br>\r\nDimensions	3271 x 241 x 199 mm<br>      '),
('L0043', 'ThinkPad X240 ', 'M04', 500, 3099000, 8, 'ThinkPad X240 ', 14, '  - Processor Intel Core i5 4200U<br>\r\n\r\n- Ram 8GB DDR3<br>\r\n\r\n- Hardisk 500GB<br>\r\n\r\n- Intel HD Graphics 4400<br>\r\n\r\n- AudioJack<br>\r\n\r\n- Kamera<br>\r\n\r\n- Wifi<br>\r\n\r\n- Port<br>'),
('L0044', ' Inspiron 14 5482', 'M05', 1000, 8820000, 4, 'Intel Core i3-8145U', 14, 'Katalog:	DELL Inpiron 5482 14<br>\r\nBrand:Dell<br>\r\nKapasitas Hardisk:1TB<br>\r\nKapasitas Memory:4Gb<br>\r\nScreen Size	:13-14<br>'),
('L0045', 'Inspiron 13-5378', 'M05', 1000, 8280000, 4, 'Intel Core i3-7100U', 133, '133-inch (1920 x 1080) IPS Display<br>\r\nIntel Core i3-7100U Processor <br>\r\n4GB DDR4 System Memory<br>\r\n1TB (5400RPM) SATA Hard Disk Drive (HDD)<br>\r\nIntegrated Intel HD Graphics<br>\r\nBacklit Standard Keyboard and Touchpad\r\n1MP Webcam and Integrated Microphone<br>\r\n10/100/1000 Gigabit Ethernet 80211AACBGN and Bluetooth 41<br>\r\n3-cell Lithium-Ion Battery<br>\r\nMicrosoft Windows 10 Home Operating System<br>\r\nEnergy Star Compliant<br>'),
('L0046', 'Inspiron 13 5379', 'M05', 1000, 11050000, 8, 'Intel Core i5-8250U', 133, 'Processor : 8th Generation Intel Core i5-8250U <br>\r\nVideo Card : Intel UHD graphics 620 with shared graphics memory<br>\r\nScreen Size : 133-inch FHD (1920 x 1080) IPS Truelife LED-Backlit Touch Display with Wide Viewing Angles-IR Camera<br>\r\nMemory : 8GB DDR4 Memory<br>\r\nHard Drive : 1TB 5400 rpm Hard Drive<br>'),
('L0047', 'Inspiron N4050 ', 'M05', 500, 4770000, 2, 'Core i3-2350M', 14, 'Ukuran Layar	 14 inch<br>\r\nResolusi Layar 1366 x 768 Pixel<br>\r\nProcessor Brand	Intel<br>\r\nNomor Prosesor	2350M<br>\r\nJumlah Core	Dual Core<br>\r\nTipe Prosesor Core i3<br>\r\nRAM 2 GB<br>\r\nKecepatan RAM	1333 MHz<br>\r\nSlot Memori	2 slot(s)<br>\r\nTipe Memori	DDR3<br>\r\nKapasitas HDD	500 GB<br>\r\nStorage Speed	5400 RPM<br>\r\nStorage Interface	SATA<br>\r\nTipe Penyimpanan	HDD<br>'),
('L0048', ' Inspiron 15-3558', 'M05', 500, 4929000, 4, 'INTEL CORE i3', 14, 'Intel Core i3 5005U-20Ghz<br>\r\nRAM 4GB<br>\r\nHDD 500GB<br>\r\nDVD/RW<br>\r\nVGA Intel HD 5500<br>\r\nScreen 14<br> '),
('L0049', 'Vostro 14-3480', 'M05', 1000, 8650000, 8, ' Core i5-8265U', 14, 'Ukuran Layar	14 inch<br>\r\nResolusi Layar	1366 x 768 Pixel<br>\r\nProcessor Brand	Intel<br>\r\nNomor Prosesor	8265U<br>\r\nJumlah Core	Quad Core<br>\r\nRAM 8 GB<br>\r\nKecepatan RAM	1600 MHz<br>\r\nSlot Memori	2 slot(s)<br>\r\nTipe Memori	DDR4L<br>\r\napasitas HDD	1 TB<br>\r\nStorage Speed	5400 RPM<br>'),
('L0050', 'Inspiron 3162', 'M05', 500, 3000000, 2, 'Intel Celeron N3060', 116, 'Ukuran Layar	116 inch<br>\r\nResolusi Layar 366 x 768 Pixel<br>\r\nProcessor Brand	Intel<br>\r\nNomor Prosesor	N3060<br>\r\nJumlah Core	Dual Core<br>\r\nTipe Prosesor Celeron<br>\r\nRAM 2 GB<br>\r\nKecepatan RAM	1600 MHz<br>\r\nSlot Memori	1 slot(s)<br>\r\nTipe Memori	DDR3<br>\r\nStorage Number of Hard Drive	1 Hard Drive(s)<br>\r\nKapasitas HDD	500 GB<br>\r\nTipe Penyimpanan	HDD<br>'),
('L0051', 'Dell Inspiron 3473', 'M05', 500, 3900000, 4, 'Intel Celeron N4000', 14, '  Ukuran Layar	14 inch<br>\r\nResolusi Layar	1366 x 768 Pixel<br>\r\nProcessor Brand	Intel<br>\r\nTipe Prosesor	Celeron<br>\r\nRAM	4 GB<br>\r\nKecepatan RAM	2400 MHz<br>\r\nTipe Memori	DDR4<br>\r\nKapasitas HDD	500 GB<br>\r\nStorage Speed	5400 RPM<br>\r\nTipe Penyimpanan	HDD<br>\r\nKartu Grafis	Intel<br>\r\nTipe Kartu Grafis	Intel UHD Graphics 600<br>'),
('L0052', 'Inspiron 14-3467', 'M05', 1000, 5200000, 4, 'Intel Core i3-6006U', 14, 'Layar TFT LCD Truelife dengan LED backlight 14 inci resolusi 1366 x 768 piksel<br>\r\n Prosesor Intel Core i3-6006U dual-core 2GHz<br>\r\nChipset Intel<br>\r\nGrafis Intel HD Graphics 520<br>\r\nMemori RAM 4GB DDR4 2400MHz Upgradeable to 16GB<br>\r\nStorage hard disk 1TB 5400rpm    <br>'),
('L0053', 'Vostro 3468', 'M05', 1000, 5600000, 4, 'Intel Core i3-7100U', 14, ' Ukuran Layar	14 inch<br>\r\nResolusi Layar	1366 x 768 Pixel<br>\r\nProcessor Brand	Intel<br>\r\nNomor Prosesor	7100U<br>\r\nJumlah Core	Dual Core<br>\r\nKecepatan Prosesor	24 GHz<br>\r\nTipe Prosesor	Core i3<br>\r\nRAM	4 GB<br>\r\nKecepatan RAM	2133 MHz<br>\r\nSlot Memori	2 slot(s)<br>\r\nTipe Memori	DDR4<br>\r\nNumber of Hard Drive	1 Hard Drive(s)<br>\r\nKapasitas HDD	1 TB<br>\r\nStorage Speed	5400 RPM<br>');

-- --------------------------------------------------------

--
-- Struktur dari tabel `merk`
--

CREATE TABLE IF NOT EXISTS `merk` (
  `kdmerk` varchar(3) NOT NULL,
  `merk` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `merk`
--

INSERT INTO `merk` (`kdmerk`, `merk`) VALUES
('M01', 'Asus'),
('M02', 'Acer'),
('M03', 'HP'),
('M04', 'Lenovo'),
('M05', 'Dell');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `hasil`
--
ALTER TABLE `hasil`
 ADD PRIMARY KEY (`kdlaptop`);

--
-- Indexes for table `laptop`
--
ALTER TABLE `laptop`
 ADD PRIMARY KEY (`kdlaptop`);

--
-- Indexes for table `merk`
--
ALTER TABLE `merk`
 ADD PRIMARY KEY (`kdmerk`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
