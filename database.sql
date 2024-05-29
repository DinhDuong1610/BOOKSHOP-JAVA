-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               10.4.32-MariaDB - mariadb.org binary distribution
-- Server OS:                    Win64
-- HeidiSQL Version:             12.6.0.6765
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

-- Dumping structure for table bookshop.account
CREATE TABLE IF NOT EXISTS `account` (
  `username` varchar(255) NOT NULL,
  `password` varchar(355) DEFAULT NULL,
  `maNhanVien` int(11) DEFAULT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Data exporting was unselected.

-- Dumping structure for table bookshop.account_admin
CREATE TABLE IF NOT EXISTS `account_admin` (
  `username` varchar(255) NOT NULL,
  `password` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Data exporting was unselected.

-- Dumping structure for table bookshop.donmua
CREATE TABLE IF NOT EXISTS `donmua` (
  `MaDonMua` int(11) NOT NULL AUTO_INCREMENT,
  `MaKhachHang` int(11) DEFAULT NULL,
  `MaSach` int(11) DEFAULT NULL,
  `SoLuong` int(11) DEFAULT NULL,
  `NgayMua` date DEFAULT NULL,
  PRIMARY KEY (`MaDonMua`),
  KEY `FK_donmua_khachhang` (`MaKhachHang`),
  KEY `FK_donmua_sach` (`MaSach`),
  CONSTRAINT `FK_donmua_khachhang` FOREIGN KEY (`MaKhachHang`) REFERENCES `khachhang` (`MaKhachHang`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_donmua_sach` FOREIGN KEY (`MaSach`) REFERENCES `sach` (`MaSach`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=73 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Data exporting was unselected.

-- Dumping structure for table bookshop.khachhang
CREATE TABLE IF NOT EXISTS `khachhang` (
  `MaKhachHang` int(11) NOT NULL AUTO_INCREMENT,
  `Ten` varchar(255) DEFAULT NULL,
  `SDT` varchar(10) DEFAULT NULL,
  `TongChi` int(11) DEFAULT NULL,
  `DiemTichLuy` int(11) DEFAULT NULL,
  `HangThanhVien` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`MaKhachHang`)
) ENGINE=InnoDB AUTO_INCREMENT=1013 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Data exporting was unselected.

-- Dumping structure for table bookshop.nhanvien
CREATE TABLE IF NOT EXISTS `nhanvien` (
  `MaNhanVien` int(11) NOT NULL AUTO_INCREMENT,
  `Ten` varchar(255) DEFAULT NULL,
  `CCCD` varchar(255) DEFAULT NULL,
  `GioiTinh` varchar(255) DEFAULT NULL,
  `NgaySinh` date DEFAULT NULL,
  `SDT` varchar(10) DEFAULT NULL,
  `ChucVu` varchar(10) DEFAULT NULL,
  `Luong` int(11) DEFAULT NULL,
  PRIMARY KEY (`MaNhanVien`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Data exporting was unselected.

-- Dumping structure for table bookshop.sach
CREATE TABLE IF NOT EXISTS `sach` (
  `MaSach` int(11) NOT NULL AUTO_INCREMENT,
  `Ten` text DEFAULT NULL,
  `theLoai` varchar(255) DEFAULT NULL,
  `TacGia` varchar(255) DEFAULT NULL,
  `SLTonKho` int(11) DEFAULT NULL,
  `SLDaBan` int(11) DEFAULT NULL,
  `DonGia` int(11) DEFAULT NULL,
  `HinhAnh` longblob DEFAULT NULL,
  PRIMARY KEY (`MaSach`),
  KEY `FK_sach_theloai` (`theLoai`(50)) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Data exporting was unselected.

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
