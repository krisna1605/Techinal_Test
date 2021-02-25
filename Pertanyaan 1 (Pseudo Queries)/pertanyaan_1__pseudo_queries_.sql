-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 25 Feb 2021 pada 19.59
-- Versi server: 10.1.40-MariaDB
-- Versi PHP: 7.3.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pertanyaan_1_(pseudo_queries)`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `biaya jasa pengiriman`
--

CREATE TABLE `biaya jasa pengiriman` (
  `Kode Jasa Pengiriman` varchar(10) NOT NULL DEFAULT 'P00',
  `Dari Kota` varchar(30) NOT NULL,
  `Ke Kota` varchar(30) NOT NULL,
  `Harga Pengiriman` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `biaya jasa pengiriman`
--

INSERT INTO `biaya jasa pengiriman` (`Kode Jasa Pengiriman`, `Dari Kota`, `Ke Kota`, `Harga Pengiriman`) VALUES
('P001', 'Jakarta', 'Jakarta', 10000),
('P001', 'Bandung', 'Bandung', 10000),
('P001', 'Semarang', 'Semarang', 10000),
('P001', 'Yogyakarta', 'Yogyakarta', 10000),
('P001', 'Jakarta', 'Bandung', 12000),
('P001', 'Jakarta', 'Semarang', 14000),
('P001', 'Jakarta', 'Yogyakarta', 14000),
('P001', 'Bandung', 'Jakarta', 12000),
('P001', 'Bandung', 'Semarang', 10000),
('P001', 'Bandung', 'Yogyakarta', 14000),
('P001', 'Semarang', 'Jakarta', 14000),
('P001', 'Semarang', 'Bandung', 10000),
('P001', 'Semarang', 'Yogyakarta', 10000),
('P001', 'Yogyakarta', 'Jakarta', 14000),
('P001', 'Yogyakarta', 'Bandung', 14000),
('P001', 'Yogyakarta', 'Semarang', 10000),
('P002', 'Jakarta', 'Jakarta', 9000),
('P002', 'Bandung', 'Bandung', 9000),
('P002', 'Semarang', 'Semarang', 9000),
('P002', 'Yogyakarta', 'Yogyakarta', 9000),
('P002', 'Jakarta', 'Bandung', 10000),
('P002', 'Jakarta', 'Semarang', 12000),
('P002', 'Jakarta', 'Yogyakarta', 12000),
('P002', 'Bandung', 'Jakarta', 10000),
('P002', 'Bandung', 'Semarang', 12000),
('P002', 'Bandung', 'Yogyakarta', 12000),
('P002', 'Semarang', 'Jakarta', 12000),
('P002', 'Semarang', 'Bandung', 12000),
('P002', 'Semarang', 'Yogyakarta', 10000),
('P002', 'Yogyakarta', 'Jakarta', 12000),
('P002', 'Yogyakarta', 'Bandung', 12000),
('P002', 'Yogyakarta', 'Semarang', 12000),
('P003', 'Jakarta', 'Jakarta', 11000),
('P003', 'Bandung', 'Bandung', 11000),
('P003', 'Semarang', 'Semarang', 11000),
('P003', 'Yogyakarta', 'Yogyakarta', 11000),
('P003', 'Jakarta', 'Bandung', 11000),
('P003', 'Jakarta', 'Semarang', 12000),
('P003', 'Jakarta', 'Yogyakarta', 12000),
('P003', 'Bandung', 'Jakarta', 11000),
('P003', 'Bandung', 'Semarang', 13000),
('P003', 'Bandung', 'Yogyakarta', 13000),
('P003', 'Semarang', 'Jakarta', 12000),
('P003', 'Semarang', 'Bandung', 13000),
('P003', 'Semarang', 'Yogyakarta', 10000),
('P003', 'Yogyakarta', 'Jakarta', 12000),
('P003', 'Yogyakarta', 'Bandung', 13000),
('P003', 'Yogyakarta', 'Semarang', 10000);

-- --------------------------------------------------------

--
-- Struktur dari tabel `jasa pengiriman`
--

CREATE TABLE `jasa pengiriman` (
  `Kode Jasa Pengiriman` varchar(10) NOT NULL DEFAULT 'P00',
  `Nama Jasa Pengiriman` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `jasa pengiriman`
--

INSERT INTO `jasa pengiriman` (`Kode Jasa Pengiriman`, `Nama Jasa Pengiriman`) VALUES
('P001', 'Pos Indonesia'),
('P002', 'JNE'),
('P003', 'Tiki');

-- --------------------------------------------------------

--
-- Struktur dari tabel `keranjang`
--

CREATE TABLE `keranjang` (
  `Kode Keranjang` varchar(10) NOT NULL DEFAULT 'C0',
  `ID Pelanggan` varchar(10) NOT NULL DEFAULT '000',
  `Kode Produk` varchar(10) NOT NULL DEFAULT '000',
  `Kuantitas` int(10) NOT NULL,
  `Kode Jasa Pengiriman` varchar(30) NOT NULL DEFAULT 'P00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `keranjang`
--

INSERT INTO `keranjang` (`Kode Keranjang`, `ID Pelanggan`, `Kode Produk`, `Kuantitas`, `Kode Jasa Pengiriman`) VALUES
('C01', '0001', '0015', 1, 'P001'),
('C02', '0001', '0016', 2, 'P001'),
('C03', '0001', '0014', 5, 'P001'),
('C04', '0002', '0001', 2, 'P003'),
('C05', '0002', '0004', 1, 'P003'),
('C06', '0003', '0002', 1, 'P003'),
('C07', '0004', '0008', 1, 'P003'),
('C08', '0005', '0005', 1, 'P002'),
('C09', '0005', '0013', 7, 'P002'),
('C10', '0005', '0003', 2, 'P002'),
('C11', '0006', '0002', 1, 'P002'),
('C12', '0006', '0006', 1, 'P002'),
('C13', '0007', '0007', 1, 'P001'),
('C14', '0007', '0008', 1, 'P001'),
('C15', '0008', '0009', 1, 'P001'),
('C16', '0008', '0011', 1, 'P001');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pelanggan`
--

CREATE TABLE `pelanggan` (
  `ID Pelanggan` varchar(10) NOT NULL DEFAULT '000',
  `Nama Pelanggan` varchar(30) NOT NULL,
  `Tabungan Elektronik` int(10) NOT NULL,
  `Alamat` text NOT NULL,
  `Kota` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `pelanggan`
--

INSERT INTO `pelanggan` (`ID Pelanggan`, `Nama Pelanggan`, `Tabungan Elektronik`, `Alamat`, `Kota`) VALUES
('0001', 'Aldo Wijanarko', 23000000, 'Jln. FFF no 5', 'Jakarta'),
('0002', 'Tobias Bunardi', 500000, 'Jln. DDD no 8', 'Semarang'),
('0003', 'Anna Kreshnia', 20000000, 'Jln. WWW no 12', 'Semarang'),
('0004', 'Kevin Aditia', 15000000, 'Jln. ZZZ no 3', 'Jakarta'),
('0005', 'Bobby Widjaja', 5000000, 'Jln. RRR no 4', 'Jakarta'),
('0006', 'Melinda Setiawati', 500000, 'Jln. GGG no 7', 'Yogyakarta'),
('0007', 'Fauzi Abdulah', 150000, 'Jln. EEE no 13', 'Bandung'),
('0008', 'Muhammad Riskan', 8500000, 'Jln. VVV no 143', 'Bandung');

-- --------------------------------------------------------

--
-- Struktur dari tabel `penjual`
--

CREATE TABLE `penjual` (
  `Nama Penjual` varchar(30) NOT NULL,
  `Alamat` text NOT NULL,
  `Kota` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `penjual`
--

INSERT INTO `penjual` (`Nama Penjual`, `Alamat`, `Kota`) VALUES
('Jagonya Handphone', 'Jln. YYY no 8 - 9', 'Bandung'),
('Office Works', 'Jln. CCC no 1 - 2', 'Jakarta'),
('Special Homeware', 'Jln. BBB no 4 - 5', 'Jakarta'),
('Stationary Xchange', 'Jln. AAA no 7', 'Yogyakarta'),
('Supreme Komputer', 'Jln. XXX no 9 – 10', 'Jakarta');

-- --------------------------------------------------------

--
-- Struktur dari tabel `produk`
--

CREATE TABLE `produk` (
  `Kode Produk` varchar(20) NOT NULL DEFAULT '000',
  `Nama Produk` varchar(30) NOT NULL,
  `Nama Kategori` enum('Peralatan Dapur','Elektronik','Komputer dan perlengkapan','Hand phone','Alat tulis','Peralatan Kantor') DEFAULT NULL,
  `Harga Produk` int(10) NOT NULL,
  `Stock Produk` int(10) NOT NULL,
  `Nama Penjual` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `produk`
--

INSERT INTO `produk` (`Kode Produk`, `Nama Produk`, `Nama Kategori`, `Harga Produk`, `Stock Produk`, `Nama Penjual`) VALUES
('0001', 'Panci', 'Peralatan Dapur', 60000, 12, 'Special Homeware'),
('0002', 'Sendok', 'Peralatan Dapur', 40000, 50, 'Special Homeware'),
('0003', 'Mesin Cuci', 'Elektronik', 2000000, 5, 'Special Homeware'),
('0004', 'Laptop', 'Komputer dan perlengkapan', 8000000, 10, 'Supreme Komputer'),
('0005', 'Printer', 'Komputer dan perlengkapan', 6000000, 5, 'Supreme Komputer'),
('0006', 'CPU Komputer', 'Komputer dan perlengkapan', 9000000, 7, 'Supreme Komputer'),
('0007', 'Monitor Komputer', 'Komputer dan perlengkapan', 1500000, 23, 'Supreme Komputer'),
('0008', 'Projector', 'Komputer dan perlengkapan', 2000000, 6, 'Supreme Komputer'),
('0009', 'Mouse ', 'Komputer dan perlengkapan', 250000, 3, 'Supreme Komputer'),
('0010', 'Samsung Galaxy', 'Hand phone', 10000000, 17, 'Jagonya Handphone'),
('0011', 'Iphone', 'Hand phone', 12000000, 14, 'Jagonya Handphone'),
('0012', 'Xiaomi', 'Hand phone', 5000000, 21, 'Jagonya Handphone'),
('0013', 'Pen', 'Alat tulis', 2000, 234, 'Stationary Xchange'),
('0014', 'Pensil', 'Alat tulis', 1000, 212, 'Stationary Xchange'),
('0015', 'Meja kerja', 'Peralatan Kantor', 2000000, 1, 'Office Works'),
('0016', 'Kursi kerja', 'Peralatan Kantor', 1200000, 5, 'Office Works');

-- --------------------------------------------------------

--
-- Struktur dari tabel `sejarah pembelian`
--

CREATE TABLE `sejarah pembelian` (
  `Kode Pembelian` varchar(10) NOT NULL DEFAULT 'PCH000',
  `Kode Keranjang` varchar(10) NOT NULL DEFAULT 'C0',
  `Metode Pembelian` enum('Cash','Tabungan Elektronik') NOT NULL,
  `Tanggal Pembelian` date NOT NULL,
  `Status` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `sejarah pembelian`
--

INSERT INTO `sejarah pembelian` (`Kode Pembelian`, `Kode Keranjang`, `Metode Pembelian`, `Tanggal Pembelian`, `Status`) VALUES
('PCH0001', 'C01', 'Cash', '2018-01-12', 'Lunas'),
('PCH0002', 'C02', 'Tabungan Elektronik', '2018-04-20', 'Lunas'),
('PCH0003', 'C03', 'Tabungan Elektronik', '2017-06-03', 'Lunas'),
('PCH0004', 'C04', 'Cash', '2017-06-02', 'Lunas'),
('PCH0005', 'C05', 'Cash', '2018-01-12', 'Lunas'),
('PCH0006', 'C06', 'Tabungan Elektronik', '2018-05-03', 'Lunas'),
('PCH0007', 'C07', 'Tabungan Elektronik', '2018-07-04', 'Lunas'),
('PCH0008', 'C08', 'Cash', '2017-08-07', 'Lunas'),
('PCH0009', 'C09', 'Tabungan Elektronik', '2017-02-08', 'Lunas'),
('PCH0010', 'C10', 'Cash', '2018-03-18', 'Lunas'),
('PCH0011', 'C11', 'Tabungan Elektronik', '2018-03-21', 'Lunas'),
('PCH0012', 'C12', 'Cash', '2017-01-23', 'Lunas'),
('PCH0013', 'C13', 'Tabungan Elektronik', '2018-06-11', 'Lunas'),
('PCH0014', 'C14', 'Tabungan Elektronik', '2018-06-07', 'Return'),
('PCH0015', 'C15', 'Cash', '2018-08-06', 'Lunas'),
('PCH0016', 'C16', 'Cash', '2017-06-04', 'Lunas');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `jasa pengiriman`
--
ALTER TABLE `jasa pengiriman`
  ADD PRIMARY KEY (`Kode Jasa Pengiriman`);

--
-- Indeks untuk tabel `keranjang`
--
ALTER TABLE `keranjang`
  ADD PRIMARY KEY (`Kode Keranjang`);

--
-- Indeks untuk tabel `pelanggan`
--
ALTER TABLE `pelanggan`
  ADD PRIMARY KEY (`ID Pelanggan`);

--
-- Indeks untuk tabel `penjual`
--
ALTER TABLE `penjual`
  ADD PRIMARY KEY (`Nama Penjual`);

--
-- Indeks untuk tabel `produk`
--
ALTER TABLE `produk`
  ADD PRIMARY KEY (`Kode Produk`);

--
-- Indeks untuk tabel `sejarah pembelian`
--
ALTER TABLE `sejarah pembelian`
  ADD PRIMARY KEY (`Kode Pembelian`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
