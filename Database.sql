-- --------------------------------------------------------
-- Хост:                         127.0.0.1
-- Версия сервера:               5.6.41 - MySQL Community Server (GPL)
-- Операционная система:         Win32
-- HeidiSQL Версия:              9.5.0.5196
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Дамп структуры базы данных computershop
CREATE DATABASE IF NOT EXISTS `computershop` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `computershop`;

-- Дамп структуры для таблица computershop.category
CREATE TABLE IF NOT EXISTS `category` (
  `IdCategory` int(11) NOT NULL AUTO_INCREMENT,
  `CategoryName` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`IdCategory`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- Дамп данных таблицы computershop.category: ~6 rows (приблизительно)
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` (`IdCategory`, `CategoryName`) VALUES
	(1, 'Процессор'),
	(2, 'Видеокарта'),
	(3, 'Материнская плата'),
	(4, 'Оперативная память'),
	(5, 'Блок питания'),
	(6, 'Корпус'),
	(7, 'Накопитель');
/*!40000 ALTER TABLE `category` ENABLE KEYS */;

-- Дамп структуры для таблица computershop.product
CREATE TABLE IF NOT EXISTS `product` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `IMG` varchar(200) CHARACTER SET utf8 DEFAULT NULL,
  `Name` varchar(200) CHARACTER SET utf8 DEFAULT NULL,
  `Description` varchar(200) CHARACTER SET utf8 DEFAULT NULL,
  `Price` int(11) DEFAULT NULL,
  `IdCategory` int(11) DEFAULT NULL,
  `Specifications` varchar(500) COLLATE utf8_general_mysql500_ci DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_product_category` (`IdCategory`),
  CONSTRAINT `FK_product_category` FOREIGN KEY (`IdCategory`) REFERENCES `category` (`IdCategory`)
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=utf8 COLLATE=utf8_general_mysql500_ci;

-- Дамп данных таблицы computershop.product: ~55 rows (приблизительно)
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` (`ID`, `IMG`, `Name`, `Description`, `Price`, `IdCategory`, `Specifications`) VALUES
	(1, 'i3.jpg', 'Intel Core i3', '9100F<br>\r\nOEM', 5990, 1, 'LGA 1151-v2, 4 x 3600 МГц,<br>\r\n L2 - 1 МБ, L3 - 6 МБ,<br>\r\n 2хDDR4-2400 МГц, TDP 65 Вт]'),
	(2, 'i9.png', 'Intel Core i9', '9900<br>\r\nBOX', 35690, 1, 'LGA 1151-v2, 8 x 3100 МГц, <br>\r\nL2 - 2 МБ, L3 - 16 Мб, 2хDDR4-2666 МГц,<br>\r\n Intel UHD Graphics 630, TDP 65 Вт'),
	(3, 'ryzen-3.png', 'AMD Ryzen 3 ', '3200G <br> BOX', 7890, 1, 'AM4, 4 x 3600 МГц,<br>\r\n L2 - 2 МБ, L3 - 4 МБ, 2хDDR4-2933 МГц, <br>\r\nRadeon Vega 8, TDP 65 Вт, кулер'),
	(4, 'ryzen-5.png', 'AMD Ryzen 5 ', '3600<br> BOX', 14590, 1, 'AM4, 6 x 3600 МГц, <br>\r\nL2 - 3 Мб, L3 - 32 МБ,<br>\r\n 2хDDR4-3200 МГц, TDP 65 Вт'),
	(5, 'Intel-Core-i5-7400.jpg', 'Intel Core i5', '7400<br> OEM', 12890, 1, 'LGA 1151, 4 x 3000 МГц, <br>\r\nL2 - 1 МБ, L3 - 6 МБ, 2хDDR4, DDR3L-2400 МГц, <br>\r\nIntel HD Graphics 630, TDP 65 Вт'),
	(6, '1500X-BOX.png', 'AMD Ryzen 5 ', '1500X<br> BOX', 8990, 1, 'AM4, 4 x 3500 МГц,<br>\r\n L2 - 2 МБ, L3 - 16 Мб, 2хDDR4-2667 МГц,<br>\r\n TDP 65 Вт, кулер'),
	(7, 'AMD-Ryzen-5-2600.jpg', 'AMD Ryzen 5', '2600<br> OEM', 9390, 1, 'AM4, 6 x 3400 МГц,<br>\r\n L2 - 3 Мб, L3 - 16 Мб,<br>\r\n 2хDDR4-2933 МГц, TDP 65 Вт'),
	(8, 'ryzen-threadripper.png', 'AMD Ryzen ', 'Threadripper 1920X<br> BOX', 22990, 1, 'TR4, 12 x 3500 МГц,<br>\r\n L2 - 6 МБ, L3 - 32 МБ,<br>\r\n 4хDDR4-2667 МГц, TDP 180 Вт'),
	(9, 'i7-9700.jpg', 'Intel Core i7', ' 9700<br> OEM', 26990, 1, 'LGA 1151-v2, 8 x 3000 МГц,<br>\r\nL2 - 2 МБ, L3 - 12 Мб, 2хDDR4-2666 МГц,<br>\r\n Intel UHD Graphics 630, TDP 65 Вт'),
	(10, 'gigabyte-radeon-rx-5500-xt.png', 'GIGABYTE AMD', 'Radeon RX 5500XT OC<br> [GV-R55XTOC-4GD]', 13990, 2, 'PCI-E 4.0, 4 ГБ GDDR6, <br>128 бит, 1717 МГц - 1845 МГц, <br>HDMI, DisplayPort (3 шт)'),
	(11, 'powercolor.png', 'PowerColor AMD', 'Radeon RX 570 Red Dragon OC <br>[AXRX 570 8GBD5-DHDV2/OC]', 13590, 2, 'PCI-E 3.0, 8 ГБ GDDR5,<br> 256 бит, 1168 МГц - 1250 МГц,<br> HDMI, DisplayPort, DVI-D'),
	(12, 'Asus-rog.png', 'ASUS ROG GeForce', 'GTX 1650 STRIX<br> [ROG-STRIX-GTX1650-4G]', 13990, 2, 'PCI-E 3.0, 4 ГБ GDDR5, <br>128 бит, 1485 МГц - 1695 МГц,<br>DisplayPort (2 шт), HDMI (2 шт)'),
	(13, 'TUF3-GTX1660TI-O6G-GAMING.png', 'ASUS TUF Gaming', 'GeForce GTX 1660 OC<br> [TUF-GTX1660-O6G-GAMING]', 17990, 2, 'PCI-E 3.0, 6 ГБ GDDR5,<br> 192 бит, 1500 МГц - 1845 МГц,<br> DVI-D, DisplayPort, HDMI'),
	(14, '5500XT.png', 'Sapphire AMD', 'Radeon RX 5500 XT NITRO+<br> [11295-05-20G] ', 17990, 2, 'PCI-E 4.0, 8 ГБ GDDR6,<br> 128 бит, 1670 МГц - 1845 МГц, <br>HDMI (2 шт), DisplayPort (2 шт)'),
	(15, '1660-SUPER.png', 'GIGABYTE GeForce', ' GTX 1660 SUPER Gaming OC<br> [GV-N166SGAMING OC-6GD]', 20990, 2, 'PCI-E 3.0, 6 ГБ GDDR6, <br>192 бит, 1530 МГц - 1860 МГц,<br> DisplayPort (3 шт), HDMI'),
	(16, 'Palit.png', 'Palit GeForce ', 'RTX 2060 Dual<br> [NE62060018J9-1160A]', 25990, 2, 'PCI-E 3.0, 6 ГБ GDDR6, <br>192 бит, 1365 МГц - 1680 МГц,<br> DVI-D, DisplayPort, HDMI'),
	(17, '2070.png', 'GIGABYTE GeForce', ' RTX 2080 SUPER AORUS<br>[GV-N208SAORUS-8GC]', 68590, 2, 'PCI-E 3.0, 8 ГБ GDDR6, <br>256 бит, 1650 МГц - 1860 МГц,<br> DisplayPort (3 шт), HDMI (3 шт), USB-C'),
	(18, 'RTX-2080.png', 'GIGABYTE GeForce', ' RTX 2070 Super AORUS <br>[GV-N207SAORUS-8GC]', 49490, 2, 'PCI-E 3.0, 8 ГБ GDDR6,<br> 256 бит, 1605 МГц - 1905 МГц, <br>DisplayPort (3 шт), HDMI (3 шт), USB-C'),
	(19, 'viper.png', 'Patriot ', 'Viper Elite<br> [PVE416G266C6GY]<br> 2x8 ГБ', 6300, 4, 'DDR4, 8 ГБx2 шт,<br> 2400 МГц, PC19200,<br> 16-16-16-39'),
	(20, 'hyperx.png', 'Kingston ', 'HyperX Predator RGB<br> [HX429C15PB3A/8]<br> 2x8 ГБ', 7990, 4, 'DDR4, 8 ГБx1 шт,<br> 3200 МГц, PC25600, <br>16-18-18-32'),
	(21, 'Corsair.png', 'Corsair ', 'Value Select<br> [CMV8GX4M1A2400C16]<br> 8 ГБ', 3290, 4, 'DDR4, 8 ГБx1 шт,<br> 2400 МГц, PC19200, <br>16-16-16-39'),
	(22, 'ball.png', 'Crucial ', 'Ballistix RGB Black<br> [BL16G36C16U4BL] <br>2x16 ГБ', 13990, 4, 'DDR4, 16 ГБx2  шт, <br>3600 МГц, PC28800, <br>16-18-18-38'),
	(23, 'hyper.png', 'Kingston ', 'HyperX FURY White Series <br> [HX318C10FW/4] <br>4 ГБ', 1990, 4, 'DDR3, 4 ГБx1 шт,<br> 1600 МГц, PC12800,<br> 10-10-10-37.5'),
	(24, 'cor.png', 'Corsair ', 'Vengeance LPX <br>[CMK8GX4M2A2400C14R] <br>2х4 ГБ', 4590, 4, 'DDR4, 4 ГБx2 шт,<br> 2400 МГц, PC19200,<br> 14-16-16-31'),
	(25, 'XMS3.png', 'Corsair ', 'XMS3<br> [CMX8GX3M2A1600C9]<br> 4x4 ГБ', 8490, 4, 'DDR3, 4 ГБx4 шт,<br> 1600 МГц, PC12800,<br> 9-9-9-24'),
	(26, 'gigabyte_ga_a320m_s2h_v2_1.png', 'GIGABYTE ', 'GA-A320M-S2H V2<br> Сокет: AM4', 3990, 3, 'AM4, AMD B350, 2xDDR4-3200 МГц,<br> 1xPCI-Ex16, аудио 7.1,<br> Micro-ATX'),
	(27, '1151.png', 'GIGABYTE ', 'H310M S2H 2.0<br> Сокет: LGA 1151', 4090, 3, 'LGA 1151-v2, Intel H310,<br> 2xDDR4-2666 МГц, 1xPCI-Ex16,<br> аудио 7.1, Micro-ATX'),
	(28, 'asus_prime.png', 'ASUS ', 'PRIME B365M-K<br> Сокет: LGA 1151', 5590, 3, 'LGA 1151-v2, Intel B365,<br> 2xDDR4-2666 МГц, 1xPCI-Ex16, аудио 7.1, Micro-ATX'),
	(29, 'J4105M(M1).png', 'ASROCK', 'J4105M<br> Сокет: LGA FCBGA1090', 5790, 3, 'FCBGA1090, Intel Celeron J4105 4x1.5 ГГц,<br> 2xDDR4-2400 МГц, 1xPCI-Ex16, <br>аудио 7.1, Micro-ATX'),
	(30, 'gaming.png', 'GIGABYTE ', 'B450M GAMING <br> Сокет: AM4', 6390, 3, 'AM4, AMD B450,<br> 2xDDR4-2933 МГц, 1xPCI-Ex16<br>, аудио 7.1, Micro-ATX'),
	(31, 'msi_gaming.png', 'MSI ', 'B450 GAMING PLUS MAX<br> Сокет: AM4', 8990, 3, 'AM4, AMD B450,<br> 4xDDR4-4133 МГц, 2xPCI-Ex16,<br> аудио 7.1, Standard-ATX'),
	(32, 'cougar.png', 'Cougar ', 'VTE400 <br>[CGR BS-400]', 3190, 5, '400 Вт, 80+ Bronze, <br>EPS12V, APFC, 20+4 pin, 1x 4+4 pin CPU, <br>4 шт SATA, 1x 6+2 pin PCI-E'),
	(33, 'chief.png', 'Chieftec', 'Element 500W<br> [ELP-500S]', 3690, 5, '500 Вт, 80+ Bronze,<br> APFC, 20+4 pin, 1x 4 pin CPU, <br>3 шт SATA, 1x 6+2 pin PCI-E'),
	(34, 'CoolerMaster.png', 'CoolerMaster', 'MWE 700 WHITE - V2<br> [MPE-7001-ACABW]', 4190, 5, '700 Вт, EPS12V, <br>APFC, 20+4 pin, 1x 8 pin, 1x 4+4 pin CPU,<br> 6 шт SATA, 4x 6+2 pin PCI-E'),
	(35, 'CP-9020133-EU-TX550M_01.png', 'Corsair', 'TX550M<br> [CP-9020133-EU]', 6390, 5, '550 Вт, 80+ Gold, <br>EPS12V, APFC, 20+4 pin, 1x 4+4 pin CPU,<br> 5 шт SATA, 2x 6+2 pin PCI-E'),
	(36, 'MOCKBA.png', 'Thermaltake', 'МОСКВА 850W<br> [W0428RE]', 9590, 5, '850 Вт, 80+ Gold, <br>EPS12V, APFC, 20+4 pin, 1x 4+4 pin, 1x 8 pin CPU,<br> 12 шт SATA, 6x 6+2 pin PCI-E'),
	(37, 'xcilence.png', 'Xilence', 'Performance X XN074 850W<br> [XP850MR9]', 9990, 5, '850 Вт, 80+ Gold,<br> EPS12V, APFC, 20+4 pin, 1x 4+4 pin CPU,<br> 8 шт SATA, 4x 6+2 pin PCI-E'),
	(38, 'aerocool.png', 'AeroCool ', 'Cylon Mini<br> черный', 2490, 6, 'Mid-Tower, Micro-ATX,<br> Mini-ITX, Standard-ATX, боковое окно,<br> 1x USB 3.0, 2x USB 2.0'),
	(39, 'scale-dec-294x294.png', 'Aerocool', 'Bolt <br>[ACCM-PV15012.11] черный', 2690, 6, 'Mid-Tower, Micro-ATX,<br>Mini-ITX, Standard-ATX, боковое окно, <br>1x USB 3.0, 2x USB 2.0'),
	(40, 'elite110-380x380-3-hover.png', 'CoolerMaster ', 'Elite 110<br> черный', 3690, 6, 'Mini-Tower,<br> Mini-ITX, <br>2x USB 3.0'),
	(41, 'small.png', 'SilverStone ', 'Redline RL07W <br>[SST-RL07W-G] черный', 7590, 6, 'Mid-Tower, Micro-ATX, Standard-ATX,<br> боковое окно, <br>2x USB 2.0, 2x USB 3.0'),
	(42, 'sync.png', 'ABKONCORE ', 'Cronos 710S<br> [ABCRO710] черный', 3990, 6, 'Mid-Tower, Standard-ATX, Mini-ITX,<br> Micro-ATX, боковое окно, <br>2x USB 3.0, 2x USB 2.0'),
	(43, 'MSI-case.png', 'MSI', 'MAG FORGE 100R<br> [306-7G03R21-809] черный', 4490, 6, 'Mid-Tower, Standard-ATX, Mini-ITX,<br> Micro-ATX, боковое окно,<br> 2x USB 3.2'),
	(44, 'seagate.png', 'Seagate', '7200 BarraCuda<br> [ST1000DM010] HDD 1 ТБ', 3490, 7, 'SATA III, 6 Гбит/с,<br> 7200 об/мин, кэш память - 64 МБ'),
	(45, '500gb_blue2_1.png', 'WD', 'Blue [WD5000AZLX]<br> HDD 500 ГБ', 2390, 7, 'SATA III, 6 Гбит/с,<br> 7200 об/мин, кэш память - 32 МБ'),
	(46, 'toshiba.png', 'Toshiba', 'V300 [HDWU110UZSVA]<br> HDD 1 ТБ', 3490, 7, 'SATA III, 6 Гбит/с, <br>5700 об/мин, кэш память - 64 МБ'),
	(47, 'wd-green-ssd-120gb-left.png.thumb.1280.1280.png', 'WD ', 'Green [WDS480G2G0A]<br> SATA III SSD 120 ГБ', 1990, 7, 'SATA III, чтение - 545 Мбайт/сек,<br> Silicon Motion SM2258XT, TLC 3D NAND'),
	(48, 'wd-green-sata-ssd-M2-front-240GB.png', 'WD', 'Green [WDS240G2G0B]<br> M2 SSD 240 ГБ', 2790, 7, 'PCI-E 3.0 x4, чтение - 2100 Мбайт/сек,<br> запись - 1500 Мбайт/сек, Realtek RTS5763DL,<br> TLC 3D NAND, NVM Express'),
	(49, 'wd-red.png', 'WD ', 'Red SA500 [WDS500G1R0B]<br> M2 SSD 500 ГБ', 6390, 7, 'PCI-E 3.0 x2, чтение - 1580 Мбайт/сек,<br> запись - 950 Мбайт/сек, Phison PS5008-E8, <br>TLC 3D NAND, NVM Express'),
	(50, 'kingston.png', 'Kingston ', 'A400 [SA400S37/480G]<br> SATA III SSD 480 ГБ', 4990, 7, 'SATA III, чтение - 500 Мбайт/сек, запись - 450 Мбайт/сек,<br> Phison PS3111-S11, TLC'),
	(51, 'crucial.png', 'Crucial ', 'BX500 [CT960BX500SSD1] <br>SATA III SSD 960 ГБ', 8750, 7, 'SATA III, чтение - 540 Мбайт/сек, запись - 500 Мбайт/сек,<br> Silicon Motion SM2258XT, TLC 3D NAND'),
	(52, 'ssdgiga.png', 'GIGABYTE ', 'NVMe [GP-GSM2NE3100TNTD]<br> M2 SSD 1000 ГБ', 10990, 7, 'PCI-E 3.0 x4, чтение - 2500 Мбайт/сек,<br> запись - 2100 Мбайт/сек, TLC 3D NAND, NVM Express'),
	(53, 't-force.png', 'Team Group', 'T-FORCE DELTA MAX RGB<br> [T302] SATA III SSD 500 ГБ', 9890, 7, 'SATA III, чтение - 560 Мбайт/сек, запись - 510 Мбайт/сек,<br> Silicon Motion SM2258, TLC 3D NAND'),
	(54, 'samsung.png', 'Samsung ', '970 EVO [MZ-V7E250BW] <br>M2 SSD 970 ГБ', 5790, 7, 'PCI-E 3.0 x4, чтение - 3400 Мбайт/сек, запись - 1500 Мбайт/сек,<br> Samsung Phoenix, TLC, NVM Express'),
	(55, 'purple.png', 'WD ', 'Purple [WD30PURZ] <br>SATA III HDD 3 ТБ', 7090, 7, 'SATA III, 6 Гбит/с,<br> 5400 об/мин, кэш память - 64 МБ, RAID Edition');
/*!40000 ALTER TABLE `product` ENABLE KEYS */;

-- Дамп структуры для таблица computershop.users
CREATE TABLE IF NOT EXISTS `users` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(50) NOT NULL DEFAULT '0',
  `Surname` varchar(50) NOT NULL DEFAULT '0',
  `Gender` varchar(7) NOT NULL DEFAULT '0',
  `Email` varchar(100) NOT NULL DEFAULT '0',
  `Password` varchar(60) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- Дамп данных таблицы computershop.users: ~4 rows (приблизительно)
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` (`ID`, `Name`, `Surname`, `Gender`, `Email`, `Password`) VALUES
	(1, 'Даниил', 'Туманов', 'Мужской', 'd@gmail.com', '$2y$10$VTam.eQ9UWq21uWbepbrwuUwsrFB2cdcygLzBrdiE16xaGa44K696');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
