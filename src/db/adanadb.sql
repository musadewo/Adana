-- phpMyAdmin SQL Dump
-- version 5.3.0-dev+20220607.1684aa8b89
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 15 Jun 2022 pada 03.08
-- Versi server: 10.4.24-MariaDB
-- Versi PHP: 8.1.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `adanadb`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `admin`
--

CREATE TABLE `admin` (
  `ID` int(11) NOT NULL,
  `Username` varchar(100) NOT NULL,
  `Password` varchar(100) NOT NULL,
  `Status` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `admin`
--

INSERT INTO `admin` (`ID`, `Username`, `Password`, `Status`) VALUES
(1, 'superadmin', 'superadmin', 'Admin'),
(2, 'Rayi', '12345', 'Products'),
(3, 'Aqsha', '12345', 'Category'),
(4, 'Ali', '12345', 'Supplier'),
(5, 'Yusuf', '12345', 'DataCustomer'),
(6, 'Rendi', '12345', 'UpdateAdmin');

-- --------------------------------------------------------

--
-- Struktur dari tabel `category`
--

CREATE TABLE `category` (
  `CatID` int(11) NOT NULL,
  `CatName` varchar(100) NOT NULL,
  `Description` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `category`
--

INSERT INTO `category` (`CatID`, `CatName`, `Description`) VALUES
(1, 'Meat', 'All Kinds of Meats'),
(2, 'Snack', 'All Kinds of Snacks'),
(3, 'Beverage', 'All Kinds of Beverages'),
(4, 'Diary', 'Milk and Dairy Products');

-- --------------------------------------------------------

--
-- Struktur dari tabel `datacustomer`
--

CREATE TABLE `datacustomer` (
  `ID` int(11) NOT NULL,
  `Name` varchar(100) NOT NULL,
  `Gender` varchar(10) NOT NULL,
  `Phone` varchar(20) NOT NULL,
  `Email` varchar(255) NOT NULL,
  `Address` varchar(255) NOT NULL,
  `Username` varchar(100) NOT NULL,
  `Password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `datacustomer`
--

INSERT INTO `datacustomer` (`ID`, `Name`, `Gender`, `Phone`, `Email`, `Address`, `Username`, `Password`) VALUES
(1, 'Muhammad Sadewo Wicaksono', 'MALE', '081218272772', '2010501025@mahasiswa.upnvj.ac.id', 'Jl. Batu Sari No.53 RT15/RW02', 'sadewo', '12345'),
(2, 'Haical Kholikirrojik', 'MALE', '08124124123', '2010501021@mahasiswa.upnvj.ac.id', 'Jl. Tanah Baru 3 No.22 RT13/RW04', 'haical', '12345'),
(3, 'Tiara Iffatunadia', 'FEMALE', '082418294124', '2010501052@mahasiswa.upnvj.ac.id', 'Jl. Utara Raya No.52 RT09/RW06', 'tiara', '12345');

-- --------------------------------------------------------

--
-- Struktur dari tabel `payment`
--

CREATE TABLE `payment` (
  `ID` int(11) NOT NULL,
  `Name` varchar(100) NOT NULL,
  `PayMethod` varchar(10) NOT NULL,
  `NoAccount` bigint(20) NOT NULL,
  `Total` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `payment`
--

INSERT INTO `payment` (`ID`, `Name`, `PayMethod`, `NoAccount`, `Total`) VALUES
(1, 'Muhammad Sadewo Wicaksono', 'E-Wallet', 123123123, '21850.0'),
(5, 'Muhammad Sadewo Wicaksono', 'E-Wallet', 123512832, '435100.0');

-- --------------------------------------------------------

--
-- Struktur dari tabel `product`
--

CREATE TABLE `product` (
  `ProID` int(11) NOT NULL,
  `ProName` varchar(100) NOT NULL,
  `Category` varchar(100) NOT NULL,
  `Quantity` int(11) NOT NULL,
  `Price` bigint(20) NOT NULL,
  `Supplier` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `product`
--

INSERT INTO `product` (`ProID`, `ProName`, `Category`, `Quantity`, `Price`, `Supplier`) VALUES
(1, 'Chiki', 'Snack', 996, 2000, 'IndoFood'),
(2, 'IndoMilk', 'Diary', 1000, 5000, 'IndoFood'),
(3, 'Ichi Ocha', 'Beverage', 1000, 4500, 'IndoFood'),
(4, 'Ribs', 'Meat', 795, 90000, 'IndoMeat'),
(5, 'Brisket', 'Meat', 795, 95000, 'IndoMeat'),
(6, 'Sirloin', 'Meat', 810, 100000, 'IndoMeat'),
(7, 'Cap Enaak', 'Diary', 990, 12000, 'IndoFood'),
(8, 'Chitato', 'Snack', 1000, 8500, 'IndoFood'),
(9, 'Frutamin', 'Beverage', 980, 10000, 'IndoFood');

-- --------------------------------------------------------

--
-- Struktur dari tabel `supplier`
--

CREATE TABLE `supplier` (
  `SupID` int(11) NOT NULL,
  `SupName` varchar(100) NOT NULL,
  `SupPhone` varchar(20) NOT NULL,
  `SupCom` varchar(100) NOT NULL,
  `Category` varchar(100) NOT NULL,
  `SupAddress` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `supplier`
--

INSERT INTO `supplier` (`SupID`, `SupName`, `SupPhone`, `SupCom`, `Category`, `SupAddress`) VALUES
(1, 'Bagas', '0811900801', 'IndoMeat', 'Meat', 'Jl. Komodor Halim Perdana Kusuma Gg. Seruni No.Kel, RT.8/RW.1, Kb. Pala, Kec. Makasar, Kota Jakarta Timur, Daerah Khusus Ibukota Jakarta 13650'),
(2, 'Rizky', '02157958822', 'IndoFood', 'Snack', 'Indofood Tower, Sudirman Plaza, Jl. Jenderal Sudirman, Daerah Khusus Ibukota Jakarta 12910'),
(3, 'Rizky', '02157958822', 'IndoFood', 'Diary', 'Indofood Tower, Sudirman Plaza, Jl. Jenderal Sudirman, Daerah Khusus Ibukota Jakarta 12910'),
(4, 'Rizky', '02157958822', 'IndoFood', 'Beverage', 'Indofood Tower, Sudirman Plaza, Jl. Jenderal Sudirman, Daerah Khusus Ibukota Jakarta 12910');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`ID`);

--
-- Indeks untuk tabel `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`CatID`),
  ADD KEY `CatName` (`CatName`);

--
-- Indeks untuk tabel `datacustomer`
--
ALTER TABLE `datacustomer`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `Name` (`Name`);

--
-- Indeks untuk tabel `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `Name` (`Name`);

--
-- Indeks untuk tabel `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`ProID`),
  ADD KEY `Category` (`Category`,`Supplier`),
  ADD KEY `Supplier` (`Supplier`);

--
-- Indeks untuk tabel `supplier`
--
ALTER TABLE `supplier`
  ADD PRIMARY KEY (`SupID`),
  ADD KEY `SupCom` (`SupCom`,`Category`),
  ADD KEY `Category` (`Category`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `admin`
--
ALTER TABLE `admin`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `category`
--
ALTER TABLE `category`
  MODIFY `CatID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `datacustomer`
--
ALTER TABLE `datacustomer`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `payment`
--
ALTER TABLE `payment`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `product`
--
ALTER TABLE `product`
  MODIFY `ProID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `supplier`
--
ALTER TABLE `supplier`
  MODIFY `SupID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `product_ibfk_1` FOREIGN KEY (`Category`) REFERENCES `category` (`CatName`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `product_ibfk_2` FOREIGN KEY (`Supplier`) REFERENCES `supplier` (`SupCom`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Ketidakleluasaan untuk tabel `supplier`
--
ALTER TABLE `supplier`
  ADD CONSTRAINT `supplier_ibfk_1` FOREIGN KEY (`Category`) REFERENCES `category` (`CatName`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;



